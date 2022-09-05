#include "gba.h"
#include "flash_internal.h"

static const char AgbLibFlash512KVersion[]           = "FLASH512_V131";
const struct FlashSetupInfo *const gSetup512KInfos[] = {
	&LE39FW512,
	&MN63F805MNP,
	&MX29L512, 
	&DefaultFlash512K
};


/*
	Tries to identify the Flash Device that is installed on the GamePak.

	Returns 0 when it successfully found a proper Flash Device, or 1 if not.
*/
u16 IdentifyFlash(void) {
	u16 result;
	u16 flashID;

	const struct FlashSetupInfo *const *flashInfo;

	REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

	flashID   = ReadFlashID();
	flashInfo = gSetup512KInfos;
	result    = 1;

	/* Look for a proper Flash Device. */
	while(1) {
		if ((*flashInfo)->Type.IDs.Separate.MakerID == 0)
			break;

		if (flashID == (*flashInfo)->Type.IDs.Full) {
			result = 0;
			break;
		}

		flashInfo++;
	}

	/* Now setup the Flash global variables. */
	gProgramFlashSector =  (*flashInfo)->ProgramFlashSector;
	gEraseFlashChip     =  (*flashInfo)->EraseFlashChip;
	gEraseFlashSector   =  (*flashInfo)->EraseFlashSector;
	gWaitForFlashWrite  =  (*flashInfo)->WaitForFlashWrite;
	gFlashMaxTime       =  (*flashInfo)->MaxTime;
	gFlash              = &(*flashInfo)->Type;

	return result;
}


/*
	The function that waits for a Flash write and checks for time-out's.

	u8 phase:    The write phase for the Timer.
	u8 *addr:    The source to the Flash data to check.
	u8 lastData: The actual data needs to be verified that it got written to the Flash memory.

	Returns 0, if it successfully wrote the data.
*/
u16 WaitForFlashWrite512K_Common(u8 phase, u8 *addr, u8 lastData) {
	u16 result = 0;
	u8  status;

	StartFlashTimer(phase);

	while ((status = gPollFlashStatus(addr)) != lastData) {
		if (gFlashTimeoutFlag) {
			if (gPollFlashStatus(addr) == lastData) break;

			/* Macronix Flash Devices need a command send to terminate an erase / write. */
			if (gFlash->IDs.Separate.MakerID == 0xC2) FLASH_WRITE(0x5555, 0xF0);

			result = phase | 0xC000;
			break;
		}
	}

	StopFlashTimer();
	return result;
}