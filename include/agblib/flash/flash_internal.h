#ifndef _FLASH_INTERNAL_H
#define _FLASH_INTERNAL_H

#define FLASH_BASE ((u8 *)0x0E000000)

#define FLASH_WRITE(addr, data) ((*(vu8 *)(FLASH_BASE + (addr))) = (data))

#define FLASH_ROM_SIZE_1M 131072 // 1 megabit ROM.
#define SECTORS_PER_BANK  16     // 16 Sectors exist in the Flash Memory.

struct FlashSector {
    u32 Size;
    u8  Shift;
    u16 Count;
    u16 Top;
};

struct FlashType {
    u32                ROMSize;
    struct FlashSector Sector;
    u16                Wait[2]; // gamepak bus read/write wait.
    union {
        struct {
            u8 MakerID;
            u8 DeviceID;
        } Separate;
        u16 Full;
    } IDs;
};

struct FlashSetupInfo {
    u16            (*ProgramFlashSector)(u16, void *);
    u16            (*EraseFlashChip)(void);
    u16            (*EraseFlashSector)(u16);
    u16            (*WaitForFlashWrite)(u8, u8 *, u8);
    const u16       *MaxTime;
    struct FlashType Type;
};


/* Globals variables. */
extern u16                     gFlashNumRemainingBytes;
extern const u16              *gFlashMaxTime;
extern const struct FlashType *gFlash;
extern u8                      gFlashTimeoutFlag;

/* Global Function Pointers. */
extern u16 (*gProgramFlashSector)(u16, void *);
extern u16 (*gEraseFlashChip)(void);
extern u16 (*gEraseFlashSector)(u16);
extern u16 (*gWaitForFlashWrite)(u8, u8 *, u8);
extern u8  (*gPollFlashStatus)(u8 *);

/* All Flash Setup Informations. */
extern const struct FlashSetupInfo LE39FW512;
extern const struct FlashSetupInfo MN63F805MNP;
extern const struct FlashSetupInfo MX29L512;
extern const struct FlashSetupInfo DefaultFlash512K;


/* agb_flash.c functions. */
void SwitchFlashBank(u8 bankNum);
u16  ReadFlashID(void);
void StartFlashTimer(u8 phase);
void SetReadFlash1(u16 *dest);
void StopFlashTimer(void);
u16  SetFlashTimerIntr(u8 timerNum, void (**intrFunc)(void));
u32  ProgramFlashSectorAndVerify(u16 sectorNum, u8 *src);
void ReadFlash(u16 sectorNum, u32 offset, void *dest, u32 size);
u32  ProgramFlashSectorAndVerifyNBytes(u16 sectorNum, void *dataSrc, u32 n);

/* agb_flash_512k.c functions. */
u16 WaitForFlashWrite512K_Common(u8 phase, u8 *addr, u8 lastData);
u16 IdentifyFlash(void);

/* agb_flash_ke_512k.c functions. */
u16 ProgramByte(u8 *src, u8 *dest);
u16 EraseFlashChip_LE(void);
u16 EraseFlashSector_LE(u16 sectorNum);
u16 ProgramFlashSector_LE(u16 sectorNum, void *src);

/* agb_flash_mx_512k.c functions. */
u16 ProgramFlashSector_MX(u16 sectorNum, void *src);

#endif