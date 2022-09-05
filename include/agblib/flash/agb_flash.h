#ifndef _AGB_FLASH_H
#define _AGB_FLASH_H

#include "types.h"

/* The common functions that agb_flash had. */
u16    IdentifyFlash(void);
u16    SetFlashTimerIntr(u8 timerNum, void (**intrFunc)(void));
void   ReadFlash(u16 sectorNum, u32 offset, void *dest, u32 size);
u32    VerifyFlashSector(u16 sectorNum, u8 *src);
/* These are global functions set by IdentifyFlash(). */
u16  (*gEraseFlashChip)(void);
u16  (*gEraseFlashSector)(u16);
u16  (*gProgramFlashSector)(u16, void *);

#endif