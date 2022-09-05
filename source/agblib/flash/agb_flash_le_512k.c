#include "gba.h"
#include "flash_internal.h"

static const u16 LE512kMaxTime[] = {
	  10, 65469, TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_256CLK,
	  10, 65469, TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_256CLK,
	  40, 65469, TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_256CLK,
	 200, 65469, TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_256CLK,
};


const struct FlashSetupInfo DefaultFlash512K = {
	.ProgramFlashSector = ProgramFlashSector_LE,
	.EraseFlashChip     = EraseFlashChip_LE,
	.EraseFlashSector   = EraseFlashSector_LE,
	.WaitForFlashWrite  = WaitForFlashWrite512K_Common,
	.MaxTime            = LE512kMaxTime,
	.Type               = {
		.ROMSize = 65536,
		.Sector  = {
			.Size  = 4096, // sector size.
			.Shift = 12,   // bit shift to multiply by sector size (4096 == 1 << 12).
			.Count = 16,   // number of sectors.
			.Top   = 0     // appears to be unused.
		},
		.Wait = { 3, 3 }, // wait state setup data.
		.IDs  = { 0, 0 }  // IDs.
	}
};

const struct FlashSetupInfo LE39FW512 = {
	.ProgramFlashSector = ProgramFlashSector_LE,
	.EraseFlashChip     = EraseFlashChip_LE,
	.EraseFlashSector   = EraseFlashSector_LE,
	.WaitForFlashWrite  = WaitForFlashWrite512K_Common,
	.MaxTime            = LE512kMaxTime,
	.Type               = {
		.ROMSize = 65536, // ROM Size.
		.Sector  = {
			.Size  = 4096, // sector size.
			.Shift = 12,   // bit shift to multiply by sector size (4096 == 1 << 12).
			.Count = 16,   // number of sectors.
			.Top   = 0     // appears to be unused.
		},
		.Wait = { 1, 2 },      // wait state setup data.
		.IDs  = { 0xBF, 0xD4 } // SST.
	}
};


/*
	Erases the Flash Chip on Little Endian Devices.

	Returns 0, if everything went successfully.
*/
u16 EraseFlashChip_LE(void) {
	u16 result;
	u16 readFlash1Buffer[0x20];

	REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | gFlash->Wait[0];

	FLASH_WRITE(0x5555, 0xAA);
	FLASH_WRITE(0x2AAA, 0x55);
	FLASH_WRITE(0x5555, 0x80);
	FLASH_WRITE(0x5555, 0xAA);
	FLASH_WRITE(0x2AAA, 0x55);
	FLASH_WRITE(0x5555, 0x10);

	SetReadFlash1(readFlash1Buffer);

	result      = gWaitForFlashWrite(3, FLASH_BASE, 0xFF);
	REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

	return result;
}


/*
	Erases a Flash Sector on Little Endian Devices.

	u16 sectorNum: The sector to erase.

	Returns 0 if everything went successfully.
*/
u16 EraseFlashSector_LE(u16 sectorNum) {
	u16 result;
	u8 *addr;
	u16 readFlash1Buffer[0x20];

	if (sectorNum >= SECTORS_PER_BANK) return 0x80FF;
	

	REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | gFlash->Wait[0];
	addr        = FLASH_BASE + (sectorNum << gFlash->Sector.Shift);

	FLASH_WRITE(0x5555, 0xAA);
	FLASH_WRITE(0x2AAA, 0x55);
	FLASH_WRITE(0x5555, 0x80);
	FLASH_WRITE(0x5555, 0xAA);
	FLASH_WRITE(0x2AAA, 0x55);
	*addr = 0x30;

	SetReadFlash1(readFlash1Buffer);

	result      = gWaitForFlashWrite(2, addr, 0xFF);
	REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

	return result;
}

/*
	Writes a byte from src (Data) to dest (Flash Memory).

	u8 *src:  The data to write.
	u8 *dest: Pointer to the Flash Memory.

	Returns 0 if everything went successfully.
*/
u16 ProgramByte(u8 *src, u8 *dest) {
	FLASH_WRITE(0x5555, 0xAA);
	FLASH_WRITE(0x2AAA, 0x55);
	FLASH_WRITE(0x5555, 0xA0);
	*dest = *src;

	return gWaitForFlashWrite(1, dest, *src);
}


/* Forward declare those functions. */
static u32 VerifyEraseSector_Core(u8 *dest);
static u16 VerifyEraseSector(u8 *dest, u8 *src);


/*
	Erases a sector first, then writes the new data from src in.

	u16 sectorNum: The sector to erase and write.
	void *src:     The data to write.
*/
u16 ProgramFlashSector_LE(u16 sectorNum, void *src) {
	u16  result;
	u8  *dest;
	u16  VerifyEraseSector_Core_Buffer[0x30];
	u16 *funcSrc;
	u16 *funcDest;
	u16  funcSize;
	u8   tryNum;
	u8   erasesToTry;
	u8   eraseTries;

	if (sectorNum >= SECTORS_PER_BANK) return 0x80FF; // Sectors goes out of scope.

	if (gFlash->Sector.Count == FLASH_ROM_SIZE_1M) {
		SwitchFlashBank(sectorNum / SECTORS_PER_BANK);
		sectorNum %= SECTORS_PER_BANK;
	}

	/* Set the destination of the Sector and the VerifyEraseSector_Core source + destination. */
	dest     = FLASH_BASE + (sectorNum << gFlash->Sector.Shift);
	funcSrc  = (u16 *)((s32)VerifyEraseSector_Core & ~1);
	funcDest = VerifyEraseSector_Core_Buffer;

	/* Get the size of the VerifyEraseSector_Core function. */
	funcSize = ((s32)VerifyEraseSector - (s32)VerifyEraseSector_Core);

	while (funcSize != 0) {
		*funcDest++ = *funcSrc++;
		funcSize   -= 2;
	}

	/* Try 81 times to erase the Flash Sector and verify it, if that fails 81 times, we can't write our new data. */
	tryNum = 0;
	while ((result = EraseFlashSector_LE(sectorNum)) || (result = VerifyEraseSector(dest, (u8 *)((s32)&VerifyEraseSector_Core_Buffer + 1)))) {
		tryNum++;

		if (tryNum == 81) return result;
	}
	
	/* Set the amount of tries to erase the Sector. */
	erasesToTry = 1;
	if (tryNum != 0) erasesToTry = 6;
	
	for (eraseTries = 1; eraseTries <= erasesToTry; eraseTries++) EraseFlashSector_LE(sectorNum);
	
	/* Now here we handle the byte writes to the Sector. */
	SetReadFlash1(VerifyEraseSector_Core_Buffer);

	REG_WAITCNT             = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | gFlash->Wait[0];
	gFlashNumRemainingBytes = gFlash->Sector.Size;

	while (gFlashNumRemainingBytes && (result = ProgramByte(src, dest), result == 0)) {
		gFlashNumRemainingBytes--;
		src++, dest++;
	}

	REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | 3;
	return result;
}


/*
	The core function to verify an erased Sector.

	u8 *dest: The data to the Flash Memory data to check if it got erased.

	Returns 0 if everything went successfully, otherwise the amount of bytes that didn't got verified because the last one was not 0xFF.
*/
static u32 VerifyEraseSector_Core(u8 *dest) {
	u32 toVerify;
	u8  src;

	for (toVerify = gFlash->Sector.Size; toVerify != 0; toVerify--) {
		src = *dest++;
		
		if (src != 0xFF) break; // The erase writes 0xFF's, so if it's not that, that byte did not erase.
	}

	return toVerify;
}


/*
	Verified the erase Flash Sector.

	u8 *dest:     The data to verify.
	u8 *funcSrc:  A pointer to VerifyEraseSector_Core.

	Returns 0 if everything went successfully, otherwise 0x8004.
*/
static u16 VerifyEraseSector(u8 *dest, u8 *funcSrc) {
	u32 result;

	/* call VerifyEraseSector_Core. */
	result = ((u32 (*)(u8*))((s32)funcSrc))(dest);

	if (result != 0) return 0x8004;

	return 0;
}