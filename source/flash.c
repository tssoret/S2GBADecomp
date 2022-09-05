#include "agb_flash.h"
#include "flash.h"
#include "gba.h"


/* Dispstat Backup for FLASH. */
static u16 DispstatBackup;


/* Declare some helper macros. */
#define FLASH_SEC_SIZE  0x1000 // Sector size.
#define FLASH_SEC_SHIFT 0xC    // (1 << 0xC == 0x1000), the game does shifting operations with this.   


/*
	Check if a proper Flash Device is installed on the GamePak.

	I actually expected that the game does more than this, but looks like it doesn't even store the result if it succeeded.
*/
void Flash_CheckForFlashMemory() {
	IdentifyFlash();
}


/*
	Might have been a removed function or a debug function related to:
	- Flash_CheckForFlashMemory()
	- Flash_ReadFlashSector()
	- Flash_HandleProgramSectorWrite()

	Or so?
*/
static void Flash_DoNothing() { }


/*
	Read something from the Flash Memory.

	u16 secOffs: The offset of the Sector.
	u32 secSize: The size to read.
	u8 *data:    Where to write the read data to.

	Returns 1 at success, 0 on fail.
*/
bool8 Flash_ReadFlashSector(u32 secOffs, u32 secSize, void *data) {
	u32 sectorSize;
	u32 sectorID;

	if (!Flash_InitFlashTimer()) return false; // The timer failed.
	else {
		sectorID = secOffs >> FLASH_SEC_SHIFT;

		/* Only do this when the Sector size is NOT 0. */
		if (secSize != 0) {
			do {
				sectorSize = (secSize > FLASH_SEC_SIZE ? FLASH_SEC_SIZE : secSize);
				ReadFlash(sectorID, 0, data, sectorSize);

				data    += sectorSize;
				secSize -= sectorSize;

				sectorID++;
			} while(secSize != 0);
		}

		Flash_RestoreDispstat();
		return true;
	}

	return false;
}


/*
	Write something to the Flash Memory.

	u32 secOffs: The offset of the data.
	u32 secSize: The size of the data.
	void *data:  The data to write.

	Returns 1 on success, 0 on fail.
*/
bool8 Flash_HandleProgramSectorWrite(u32 secOffs, u32 secSize, void *data) {
	bool8 res;
	u16   result;
	u32   sectors;
	u32   attempts;
	u32   sectorID;
	u32   canStillAttempt;

	/* Get the SectorID and the amount of sectors. */
    sectorID = secOffs >> FLASH_SEC_SHIFT;
    sectors  = secSize >> FLASH_SEC_SHIFT;

    if (result = Flash_InitFlashTimer(), !result) res = false; // The timer failed.
    else {
		if (sectors != 0) {
			do {
				attempts = 3; // 3 attempts for the write process.
			
				/* Try to write the data to the sector. */
				do {
					result = gProgramFlashSector((u16)sectorID, data);
					if (result == 0) break;
				} while (canStillAttempt = attempts--, canStillAttempt);

				sectorID++;
				data += FLASH_SEC_SIZE;
			} while (--sectors != 0);
		}

        Flash_RestoreDispstat();
        res = false;

		/* If that's 0, then the write process succeeded. */
        if (result == 0) res = true;
    }

    return res;
}


/*
	Start the Flash Timer and backup Dispstat.
	Also set the Flash Timer Interrupt to the Timer Interrupt table.
*/
u32 Flash_InitFlashTimer() {
	DispstatBackup = REG_DISPSTAT;
	REG_IF         = 0x3FFF; // Set all used IF Requests to 1?
	REG_DISPSTAT   = 0;
	
	/* TODO: Replace 0x03004308 by the Timer Interrupt from the Interrupt Table. */
	if (((u16)SetFlashTimerIntr(2, (void *)0x03004308)) != 0) return 0;
	return 1;
}


/*
	Restores the Dispstat Backup to Dispstat, which got set to 0 through Flash_InitFlashTimer.
*/
void Flash_RestoreDispstat() {
	REG_DISPSTAT = DispstatBackup;
}