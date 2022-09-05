#ifndef _IO_REG_H
#define _IO_REG_H

/* TODO: Likely structure the file better. */

#define REG_BASE 0x4000000 // I/O register base address.

/* I/O register offsets. */
#define REG_OFFSET_DISPSTAT    0x4

#define REG_OFFSET_TMCNT       0x100
#define REG_OFFSET_TMCNT_L     0x100
#define REG_OFFSET_TMCNT_H     0x102
#define REG_OFFSET_TM0CNT      0x100
#define REG_OFFSET_TM0CNT_L    0x100
#define REG_OFFSET_TM0CNT_H    0x102
#define REG_OFFSET_TM1CNT      0x104
#define REG_OFFSET_TM1CNT_L    0x104
#define REG_OFFSET_TM1CNT_H    0x106
#define REG_OFFSET_TM2CNT      0x108
#define REG_OFFSET_TM2CNT_L    0x108
#define REG_OFFSET_TM2CNT_H    0x10A
#define REG_OFFSET_TM3CNT      0x10C
#define REG_OFFSET_TM3CNT_L    0x10C
#define REG_OFFSET_TM3CNT_H    0x10E

#define REG_OFFSET_KEYINPUT    0x130
#define REG_OFFSET_KEYCNT      0x132

#define REG_OFFSET_IME         0x208
#define REG_OFFSET_IE          0x200
#define REG_OFFSET_IF          0x202

#define REG_OFFSET_WAITCNT     0x204

/* I/O register addresses. */
#define REG_ADDR_DISPSTAT    (REG_BASE + REG_OFFSET_DISPSTAT)

#define REG_ADDR_TMCNT       (REG_BASE + REG_OFFSET_TMCNT)
#define REG_ADDR_TMCNT_L     (REG_BASE + REG_OFFSET_TMCNT_L)
#define REG_ADDR_TMCNT_H     (REG_BASE + REG_OFFSET_TMCNT_H)
#define REG_ADDR_TM0CNT      (REG_BASE + REG_OFFSET_TM0CNT)
#define REG_ADDR_TM0CNT_L    (REG_BASE + REG_OFFSET_TM0CNT_L)
#define REG_ADDR_TM0CNT_H    (REG_BASE + REG_OFFSET_TM0CNT_H)
#define REG_ADDR_TM1CNT      (REG_BASE + REG_OFFSET_TM1CNT)
#define REG_ADDR_TM1CNT_L    (REG_BASE + REG_OFFSET_TM1CNT_L)
#define REG_ADDR_TM1CNT_H    (REG_BASE + REG_OFFSET_TM1CNT_H)
#define REG_ADDR_TM2CNT      (REG_BASE + REG_OFFSET_TM2CNT)
#define REG_ADDR_TM2CNT_L    (REG_BASE + REG_OFFSET_TM2CNT_L)
#define REG_ADDR_TM2CNT_H    (REG_BASE + REG_OFFSET_TM2CNT_H)
#define REG_ADDR_TM3CNT      (REG_BASE + REG_OFFSET_TM3CNT)
#define REG_ADDR_TM3CNT_L    (REG_BASE + REG_OFFSET_TM3CNT_L)
#define REG_ADDR_TM3CNT_H    (REG_BASE + REG_OFFSET_TM3CNT_H)

#define REG_ADDR_KEYINPUT    (REG_BASE + REG_OFFSET_KEYINPUT)
#define REG_ADDR_KEYCNT      (REG_BASE + REG_OFFSET_KEYCNT)

#define REG_ADDR_IME         (REG_BASE + REG_OFFSET_IME)
#define REG_ADDR_IE          (REG_BASE + REG_OFFSET_IE)
#define REG_ADDR_IF          (REG_BASE + REG_OFFSET_IF)

#define REG_ADDR_WAITCNT     (REG_BASE + REG_OFFSET_WAITCNT)

/* I/O registers. */
#define REG_DISPSTAT    (*(vu16 *)REG_ADDR_DISPSTAT)

#define REG_TMCNT(n)    (*(vu16 *)(REG_ADDR_TMCNT + ((n) * 4)))
#define REG_TMCNT_L(n)  (*(vu16 *)(REG_ADDR_TMCNT_L + ((n) * 4)))
#define REG_TMCNT_H(n)  (*(vu16 *)(REG_ADDR_TMCNT_H + ((n) * 4)))
#define REG_TM0CNT      (*(vu32 *)REG_ADDR_TM0CNT)
#define REG_TM0CNT_L    (*(vu16 *)REG_ADDR_TM0CNT_L)
#define REG_TM0CNT_H    (*(vu16 *)REG_ADDR_TM0CNT_H)
#define REG_TM1CNT      (*(vu32 *)REG_ADDR_TM1CNT)
#define REG_TM1CNT_L    (*(vu16 *)REG_ADDR_TM1CNT_L)
#define REG_TM1CNT_H    (*(vu16 *)REG_ADDR_TM1CNT_H)
#define REG_TM2CNT      (*(vu32 *)REG_ADDR_TM2CNT)
#define REG_TM2CNT_L    (*(vu16 *)REG_ADDR_TM2CNT_L)
#define REG_TM2CNT_H    (*(vu16 *)REG_ADDR_TM2CNT_H)
#define REG_TM3CNT      (*(vu32 *)REG_ADDR_TM3CNT)
#define REG_TM3CNT_L    (*(vu16 *)REG_ADDR_TM3CNT_L)
#define REG_TM3CNT_H    (*(vu16 *)REG_ADDR_TM3CNT_H)

#define REG_KEYINPUT    (*(vu16 *)REG_ADDR_KEYINPUT)
#define REG_KEYCNT      (*(vu16 *)REG_ADDR_KEYCNT)

#define REG_IME         (*(vu16 *)REG_ADDR_IME)
#define REG_IE          (*(vu16 *)REG_ADDR_IE)
#define REG_IF          (*(vu16 *)REG_ADDR_IF)

#define REG_WAITCNT     (*(vu16 *)REG_ADDR_WAITCNT)


/* DISPSTAT. */
#define DISPSTAT_VBLANK      0x0001 // in V-Blank.
#define DISPSTAT_HBLANK      0x0002 // in H-Blank.
#define DISPSTAT_VCOUNT      0x0004 // V-Count match.
#define DISPSTAT_VBLANK_INTR 0x0008 // V-Blank interrupt enabled.
#define DISPSTAT_HBLANK_INTR 0x0010 // H-Blank interrupt enabled.
#define DISPSTAT_VCOUNT_INTR 0x0020 // V-Count interrupt enabled.

/* Timer. */
#define TIMER_1CLK        0x00
#define TIMER_64CLK       0x01
#define TIMER_256CLK      0x02
#define TIMER_1024CLK     0x03
#define TIMER_INTR_ENABLE 0x40
#define TIMER_ENABLE      0x80

/* Key Inputs. */
#define KEY_A      0x001
#define KEY_B      0x002
#define KEY_SELECT 0x004
#define KEY_START  0x008
#define KEY_RIGHT  0x010
#define KEY_LEFT   0x020
#define KEY_UP     0x040
#define KEY_DOWN   0x080
#define KEY_R      0x100
#define KEY_L      0x200
#define KEY_MASK   0x3FF

/* Interrupt flags. */
#define INTR_FLAG_VBLANK  (1 <<  0)
#define INTR_FLAG_HBLANK  (1 <<  1)
#define INTR_FLAG_VCOUNT  (1 <<  2)
#define INTR_FLAG_TIMER0  (1 <<  3)
#define INTR_FLAG_TIMER1  (1 <<  4)
#define INTR_FLAG_TIMER2  (1 <<  5)
#define INTR_FLAG_TIMER3  (1 <<  6)
#define INTR_FLAG_SERIAL  (1 <<  7)
#define INTR_FLAG_DMA0    (1 <<  8)
#define INTR_FLAG_DMA1    (1 <<  9)
#define INTR_FLAG_DMA2    (1 << 10)
#define INTR_FLAG_DMA3    (1 << 11)
#define INTR_FLAG_KEYPAD  (1 << 12)
#define INTR_FLAG_GAMEPAK (1 << 13)

/* WAITCNT. */
#define WAITCNT_SRAM_4          (0 << 0)
#define WAITCNT_SRAM_3          (1 << 0)
#define WAITCNT_SRAM_2          (2 << 0)
#define WAITCNT_SRAM_8          (3 << 0)
#define WAITCNT_SRAM_MASK       (3 << 0)

#define WAITCNT_WS0_N_4         (0 << 2)
#define WAITCNT_WS0_N_3         (1 << 2)
#define WAITCNT_WS0_N_2         (2 << 2)
#define WAITCNT_WS0_N_8         (3 << 2)
#define WAITCNT_WS0_N_MASK      (3 << 2)

#define WAITCNT_WS0_S_2         (0 << 4)
#define WAITCNT_WS0_S_1         (1 << 4)

#define WAITCNT_WS1_N_4         (0 << 5)
#define WAITCNT_WS1_N_3         (1 << 5)
#define WAITCNT_WS1_N_2         (2 << 5)
#define WAITCNT_WS1_N_8         (3 << 5)
#define WAITCNT_WS1_N_MASK      (3 << 5)

#define WAITCNT_WS1_S_4         (0 << 7)
#define WAITCNT_WS1_S_1         (1 << 7)

#define WAITCNT_WS2_N_4         (0 << 8)
#define WAITCNT_WS2_N_3         (1 << 8)
#define WAITCNT_WS2_N_2         (2 << 8)
#define WAITCNT_WS2_N_8         (3 << 8)
#define WAITCNT_WS2_N_MASK      (3 << 8)

#define WAITCNT_WS2_S_8         (0 << 10)
#define WAITCNT_WS2_S_1         (1 << 10)

#define WAITCNT_PHI_OUT_NONE    (0 << 11)
#define WAITCNT_PHI_OUT_4MHZ    (1 << 11)
#define WAITCNT_PHI_OUT_8MHZ    (2 << 11)
#define WAITCNT_PHI_OUT_16MHZ   (3 << 11)
#define WAITCNT_PHI_OUT_MASK    (3 << 11)

#define WAITCNT_PREFETCH_ENABLE (1 << 14)

#define WAITCNT_AGB (0 << 15)
#define WAITCNT_CGB (1 << 15)

#endif