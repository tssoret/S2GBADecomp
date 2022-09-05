#ifndef _KBD_DATA_H
#define _KBD_DATA_H

#include "types.h"

/* Define all Keys here. */
#define KBDKEY_A                  0x9D1
#define KBDKEY_B                  0x9D2
#define KBDKEY_C                  0x9D3
#define KBDKEY_D                  0x9D4
#define KBDKEY_E                  0x9D5
#define KBDKEY_F                  0x9D6
#define KBDKEY_G                  0x9D7
#define KBDKEY_H                  0x9D8
#define KBDKEY_I                  0x9D9
#define KBDKEY_J                  0x9DA
#define KBDKEY_K                  0x9DB
#define KBDKEY_L                  0x9DC
#define KBDKEY_M                  0x9DD
#define KBDKEY_N                  0x9DE
#define KBDKEY_O                  0x9DF
#define KBDKEY_P                  0x9E0
#define KBDKEY_Q                  0x9E1
#define KBDKEY_R                  0x9E2
#define KBDKEY_S                  0x9E3
#define KBDKEY_T                  0x9E4
#define KBDKEY_U                  0x9E5
#define KBDKEY_V                  0x9E6
#define KBDKEY_W                  0x9E7
#define KBDKEY_X                  0x9E8
#define KBDKEY_Y                  0x9E9
#define KBDKEY_Z                  0x9EA
#define KBDKEY_0                  0x9EB
#define KBDKEY_1                  0x9EC
#define KBDKEY_2                  0x9ED
#define KBDKEY_3                  0x9EE
#define KBDKEY_4                  0x9EF
#define KBDKEY_5                  0x9F0
#define KBDKEY_6                  0x9F1
#define KBDKEY_7                  0x9F2
#define KBDKEY_8                  0x9F3
#define KBDKEY_9                  0x9F4
#define KBDKEY_a                  0x9F5
#define KBDKEY_b                  0x9F6
#define KBDKEY_c                  0x9F7
#define KBDKEY_d                  0x9F8
#define KBDKEY_e                  0x9F9
#define KBDKEY_f                  0x9FA
#define KBDKEY_g                  0x9FB
#define KBDKEY_h                  0x9FC
#define KBDKEY_i                  0x9FD
#define KBDKEY_j                  0x9FE
#define KBDKEY_k                  0x9FF
#define KBDKEY_l                  0xA00
#define KBDKEY_m                  0xA01
#define KBDKEY_n                  0xA02
#define KBDKEY_o                  0xA03
#define KBDKEY_p                  0xA04
#define KBDKEY_q                  0xA05
#define KBDKEY_r                  0xA06
#define KBDKEY_s                  0xA07
#define KBDKEY_t                  0xA08
#define KBDKEY_u                  0xA09
#define KBDKEY_v                  0xA0A
#define KBDKEY_w                  0xA0B
#define KBDKEY_x                  0xA0C
#define KBDKEY_y                  0xA0D
#define KBDKEY_z                  0xA0E
#define KBDKEY_EXCLAMATION_MARK   0xA29
#define KBDKEY_PLUS_SIGN          0xA2A
#define KBDKEY_HASH               0xA2B
#define KBDKEY_DOLLAR_SIGN        0xA2C
#define KBDKEY_PERCENT_SIGN       0xA2D
#define KBDKEY_AMPERSAND          0xA2E
#define KBDKEY_UNDERSCORE         0xA2F
#define KBDKEY_ASTERISK           0xA30
#define KBDKEY_OPEN_PARENTHESIS   0xA31
#define KBDKEY_CLOSED_PARENTHESIS 0xA32
#define KBDKEY_DONE               0xA33

#define KBD_KEYCOUNT              37 // 37 Keys per layout.
#define KBD_ROWS                  6


struct KBDColData {
	u8  Start;
	u8  End;
};

struct KBDKey {
	s16 XPos;
	s16 YPos;
	u8  MaxW;
	u8  Type;
	u16 StringID;
};


extern const struct KBDColData KBD_ColumnData[];
extern const u8                KBD_YPositions[];
extern const u16               KBD_SelectorXPosTable1[];
extern const u16               KBD_SelectorXPosTable2[];
extern const struct KBDKey     KBD_CapsLayout[];
extern const struct KBDKey     KBD_NoCapsLayout[];
extern const u32               KBD_KeyStringIDs[];

#endif