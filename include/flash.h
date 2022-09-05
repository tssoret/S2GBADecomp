#ifndef _FLASH_H
#define _FLASH_H

#include "types.h"

void  Flash_CheckForFlashMemory();
bool8 Flash_ReadFlashSector(u32 secOffs, u32 secSize, void *data);
bool8 Flash_HandleProgramSectorWrite(u32 secOffs, u32 secSize, void *data);
u32   Flash_InitFlashTimer();
void  Flash_RestoreDispstat();

#endif