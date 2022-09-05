#include "gba.h"
#include "flash_internal.h"

static const u16 MX512kMaxTime[] = {
	  10, 65469, TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_256CLK,
	  10, 65469, TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_256CLK,
	2000, 65469, TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_256CLK,
	2000, 65469, TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_256CLK,
};

static const u16 PAMaxTime[] = {
	  10, 65469, TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_256CLK,
	  10, 65469, TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_256CLK,
	 500, 65469, TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_256CLK,
	 500, 65469, TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_256CLK,
};

const struct FlashSetupInfo MX29L512 = {
	.ProgramFlashSector = ProgramFlashSector_MX,
	.EraseFlashChip     = EraseFlashChip_LE,
	.EraseFlashSector   = EraseFlashSector_LE,
	.WaitForFlashWrite  = WaitForFlashWrite512K_Common,
	.MaxTime            = MX512kMaxTime,
	.Type               = {
		.ROMSize = 65536,
		.Sector  = {
			.Size  = 4096, // Sector size.
			.Shift = 12,   // Bit shift to multiply by sector size (4096 == 1 << 12).
			.Count = 16,   // Number of sectors.
			.Top   = 0     // Appears to be unused.
		},
		.Wait = { 3, 1 },      // Wait state setup data.
		.IDs  = { 0xC2, 0x1C } // Macronix.
	}
};

const struct FlashSetupInfo MN63F805MNP = {
	.ProgramFlashSector = ProgramFlashSector_MX,
	.EraseFlashChip     = EraseFlashChip_LE,
	.EraseFlashSector   = EraseFlashSector_LE,
	.WaitForFlashWrite  = WaitForFlashWrite512K_Common,
	.MaxTime            = PAMaxTime,
	.Type               = {
		.ROMSize = 65536,
		.Sector  = {
			.Size  = 4096, // Sector size.
			.Shift = 12,   // Bit shift to multiply by sector size (4096 == 1 << 12).
			.Count = 16,   // Number of sectors.
			.Top   = 0     // Appears to be unused.
		},
		.Wait = { 0, 2 },      // Wait state setup data.
		.IDs  = { 0x32, 0x1B } // Panasonic.
	}
};


/*
	Writes the new data from src to a Sector.

	u16 sectorNum: The sector to write to.
	void *src:     The data to write.

	Returns 0 if everything went successfully.
*/
u16 ProgramFlashSector_MX(u16 sectorNum, void *src) {
	u16 result;
	u8 *dest;
	u16 readFlash1Buffer[0x20];

		
	if (sectorNum >= gFlash->Sector.Count) return 0x80FF;

	result = EraseFlashSector_LE(sectorNum);

	if (result != 0) return result;

	SetReadFlash1(readFlash1Buffer);

	REG_WAITCNT             = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | gFlash->Wait[0];
	gFlashNumRemainingBytes = gFlash->Sector.Size;
	dest                    = FLASH_BASE + (sectorNum << gFlash->Sector.Shift);

	while (gFlashNumRemainingBytes > 0) {
		result = ProgramByte(src, dest);

		if (result != 0) break;

		gFlashNumRemainingBytes--;
		src++, dest++;
	}

	REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | 3;
	return result;
}