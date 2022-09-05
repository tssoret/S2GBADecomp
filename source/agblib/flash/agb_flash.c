#include "gba.h"
#include "flash_internal.h"
#include "agb_flash.h"

static u8    sTimerNum;
static u16   sTimerCount;
static vu16 *sTimerReg;
static u16   sSavedIme;


#define DELAY(delay) {            \
	vu16 i;                       \
	for (i = delay; i != 0; i--); \
}


void SetReadFlash1(u16 *dest);


/*
	Switches the Flash banks.

	u8 bankNum: The bank number to switch to.
*/
void SwitchFlashBank(u8 bankNum) {
	FLASH_WRITE(0x5555, 0xAA);
	FLASH_WRITE(0x2AAA, 0x55);
	FLASH_WRITE(0x5555, 0xB0);
	FLASH_WRITE(0x0000, bankNum);
}


/*
	Reads the Maker and Device ID from the Flash.

	Returns a u16 with:
	- u8 MakerID
	- u8 DeviceID
*/
u16 ReadFlashID(void) {
	u16  flashID;
	u16  readFlash1Buffer[0x20];
	u8 (*readFlash1)(u8 *);

	SetReadFlash1(readFlash1Buffer);
	readFlash1 = (u8 (*)(u8 *))((s32)readFlash1Buffer + 1);

	/* Enter ID mode. */
	FLASH_WRITE(0x5555, 0xAA);
	FLASH_WRITE(0x2AAA, 0x55);
	FLASH_WRITE(0x5555, 0x90);
	DELAY(20000);

	/* Get the Maker ID and the Device ID. */
	flashID  = readFlash1(FLASH_BASE + 1) << 8;
	flashID |= readFlash1(FLASH_BASE);

	/* Leave ID mode. */
	FLASH_WRITE(0x5555, 0xAA);
	FLASH_WRITE(0x2AAA, 0x55);
	FLASH_WRITE(0x5555, 0xF0);
	FLASH_WRITE(0x5555, 0xF0);
	DELAY(20000);

	return flashID;
}


/*
	The Flash timer routine that handles time-outs.
*/
void FlashTimerIntr(void) {
	if (sTimerCount != 0 && --sTimerCount == 0) gFlashTimeoutFlag = 1;
}


/*
	Sets the Interrupt for the Flash timer to handle time-outs.

	u8 timerNum:             The timer register index that will be used ( 0 - 3 ).
	void (**intrFunc)(void): Pointer of the Timer interrupt from the INTR_VECTOR table.

	Returns 0 if good, 1 if the timer Number is larger than 4.
*/
u16 SetFlashTimerIntr(u8 timerNum, void (**intrFunc)(void)) {
	if (timerNum >= 4) return 1;

	sTimerNum = timerNum;
	sTimerReg = &REG_TMCNT(sTimerNum);
	*intrFunc = FlashTimerIntr;

	return 0;
}


/*
	Starts the Flash timer.

	u8 phase: The phase of the Flash timer.
*/
void StartFlashTimer(u8 phase) {
	const u16 *maxTime = &gFlashMaxTime[phase * 3];

	sSavedIme         = REG_IME;
	REG_IME           = 0;
	sTimerReg[1]      = 0;
	REG_IE           |= (INTR_FLAG_TIMER0 << sTimerNum);

	gFlashTimeoutFlag = 0;
	sTimerCount       = *maxTime++;
	*sTimerReg++      = *maxTime++;
	*sTimerReg--      = *maxTime++;

	REG_IF            = (INTR_FLAG_TIMER0 << sTimerNum);
	REG_IME           = 1;
}


/*
	Stops the Flash timer.
*/
void StopFlashTimer(void) {
	REG_IME      = 0;

	*sTimerReg++ = 0;
	*sTimerReg-- = 0;

	REG_IE      &= ~(INTR_FLAG_TIMER0 << sTimerNum);
	REG_IME      = sSavedIme;
}


/*
	Reads a byte from the Flash memory.

	u8 *addr: The address to read a byte from.
*/
u8 ReadFlash1(u8 *addr) {
	return *addr;
}


/*
	Sets the ReadFlash1 function to funcBuff's buffer.

	u16 *funcBuff: A pointer to the buffer to where to set the ReadFlash1 data.
*/
void SetReadFlash1(u16 *funcBuff) {
	u16 *src;
	u16  funcSize;

	gPollFlashStatus = (u8 (*)(u8 *))((s32)funcBuff + 1);

	src = (u16 *)ReadFlash1;
	src = (u16 *)((s32)src & ~1);

	funcSize = ((s32)SetReadFlash1 - (s32)ReadFlash1) >> 1;

	while (1) {
		if (funcSize == 0) break;

		*funcBuff++ = *src++;
		funcSize--;
	}
}


/*
	The core function to read from the Flash memory.

	u8 *src:  The source to the Flash memory to read from.
	u8 *dest: The destination to write from the Flash memory.
	u32 size: The size to read.
*/
void ReadFlash_Core(u8 *src, u8 *dest, u32 size) {
	while (size-- != 0) *dest++ = *src++;
}


/*
	The actual function that should be used to read from the Flash memory.

	u16 sectorNum: The sector number to read from.
	u32 offset:    The offset in the sector to read from.
	void *dest:    The destination to store the read content.
	u32 size:      The size to read.
*/
void ReadFlash(u16 sectorNum, u32 offset, void *dest, u32 size) {
	u8    *src;
	u16    funcSize;
	u16    readFlash_Core_Buffer[0x40];
	u16   *funcSrc;
	u16   *funcDest;
	void (*readFlash_Core)(u8 *, u8 *, u32);

	REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

	if (gFlash->ROMSize == FLASH_ROM_SIZE_1M) {
		SwitchFlashBank(sectorNum / SECTORS_PER_BANK);
		sectorNum %= SECTORS_PER_BANK;
	}

	funcSrc  = (u16 *)ReadFlash_Core;
	funcSrc  = (u16 *)((s32)funcSrc & ~1);
	funcDest = readFlash_Core_Buffer;

	funcSize = ((s32)ReadFlash - (s32)ReadFlash_Core) >> 1;

	while (funcSize != 0) {
		*funcDest++ = *funcSrc++;
		funcSize--;
	}

	readFlash_Core = (void (*)(u8 *, u8 *, u32))((s32)readFlash_Core_Buffer + 1);
	src            = FLASH_BASE + (sectorNum << gFlash->Sector.Shift) + offset;

	readFlash_Core(src, dest, size);
}


/*
	The core function to verify the read content from a Sector.

	u8 *src:    The source to the data you've read before which you want to verify.
	u8 *target: The address to the sector that you want to verify src with.
	u32 size:   The size to verify.

	Returns 0 if verification went successfully.
*/
u32 VerifyFlashSector_Core(u8 *src, u8 *target, u32 size) {
	while (size-- != 0) {
		if (*target++ != *src++) return (u32)(target - 1);
	}

	return 0;
}


/*
	The actual function you should use to verify the read content from a Sector.

	u16 sectorNum: The sector you want to verify.
	u8 *src:       The source to the data you've read before which you want to verify.

	Returns 0 if verification went successfully.
*/
u32 VerifyFlashSector(u16 sectorNum, u8 *src) {
	u16   funcSize;
	u16   verifyFlashSector_Core_Buffer[0x80];
	u16  *funcSrc;
	u16  *funcDest;
	u8   *target;
	u16   verifySize;
	u32 (*verifyFlashSector_Core)(u8 *, u8 *, u32);

	REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

	if (gFlash->ROMSize == FLASH_ROM_SIZE_1M) {
		SwitchFlashBank(sectorNum / SECTORS_PER_BANK);
		sectorNum %= SECTORS_PER_BANK;
	}

	funcSrc  = (u16 *)VerifyFlashSector_Core;
	funcSrc  = (u16 *)((s32)funcSrc & ~1);
	funcDest = verifyFlashSector_Core_Buffer;

	funcSize = ((s32)VerifyFlashSector - (s32)VerifyFlashSector_Core) >> 1;

	while (funcSize != 0) {
		*funcDest++ = *funcSrc++;
		funcSize--;
	}

	verifyFlashSector_Core = (u32 (*)(u8 *, u8 *, u32))((s32)verifyFlashSector_Core_Buffer + 1);

	target     = FLASH_BASE + (sectorNum << gFlash->Sector.Shift);
	verifySize = gFlash->Sector.Size;

	return verifyFlashSector_Core(src, target, verifySize);
}


/*
	The same as VerifyFlashSector, but with an optional option to verify for n bytes.

	u16 sectorNum: The sector you want to verify.
	u8 *src:       The source to the data you've read before which you want to verify.
	u32 n:         The size in bytes you want to verify.

	Returns 0 if verification went successfully.
*/
u32 VerifyFlashSectorNBytes(u16 sectorNum, u8 *src, u32 n) {
	u16   funcSize;
	u16   verifyFlashSector_Core_Buffer[0x80];
	u16  *funcSrc;
	u16  *funcDest;
	u8   *target;
	u32 (*verifyFlashSector_Core)(u8 *, u8 *, u32);

	if (gFlash->ROMSize == FLASH_ROM_SIZE_1M) {
		SwitchFlashBank(sectorNum / SECTORS_PER_BANK);
		sectorNum %= SECTORS_PER_BANK;
	}

	REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

	funcSrc  = (u16 *)VerifyFlashSector_Core;
	funcSrc  = (u16 *)((s32)funcSrc & ~1);
	funcDest = verifyFlashSector_Core_Buffer;

	funcSize = ((s32)VerifyFlashSector - (s32)VerifyFlashSector_Core) >> 1;

	while (funcSize != 0) {
		*funcDest++ = *funcSrc++;
		funcSize--;
	}

	verifyFlashSector_Core = (u32 (*)(u8 *, u8 *, u32))((s32)verifyFlashSector_Core_Buffer + 1);
	target                 = FLASH_BASE + (sectorNum << gFlash->Sector.Shift);

	return verifyFlashSector_Core(src, target, n);
}


/*
	Write a Sector from the src to the Flash memory and verify it.

	u16 sectorNum: The sector number where to write to.
	u8 *src:       The source to the data you want to write.

	There are 3 attempts to try to write the data, it'll return 0 if everything went successfully and is verified.
*/
u32 ProgramFlashSectorAndVerify(u16 sectorNum, u8 *src) {
	u8  attempts;
	u32 result;

	for (attempts = 0; attempts < 3; attempts++) {
		result = gProgramFlashSector(sectorNum, src);
		if (result != 0) continue;

		result = VerifyFlashSector(sectorNum, src);
		if (result == 0) break;
	}

	return result; // return 0 if verified and programmed.
}


/*
	The same as ProgramFlashSectorAndVerify, but with an option to verify n bytes instead of the full sector.

	u16 sectorNum: The sector number where to write to.
	u8 *src:       The source to the data you want to write.
	u32 n:         The size in bytes you want to verify.

	There are 3 attempts to try to write the data, it'll return 0 if everything went successfully and is verified.
*/
u32 ProgramFlashSectorAndVerifyNBytes(u16 sectorNum, void *dataSrc, u32 n) {
	u8  attempts;
	u32 result;

	for (attempts = 0; attempts < 3; attempts++) {
		result = gProgramFlashSector(sectorNum, dataSrc);
		if (result != 0) continue;

		result = VerifyFlashSectorNBytes(sectorNum, dataSrc, n);
		if (result == 0) break;
	}

	return result; // return 0 if verified and programmed.
}