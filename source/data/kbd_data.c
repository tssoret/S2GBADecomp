#include "kbd_data.h"


const struct KBDColData KBD_ColumnData[7] = {
    {
        .Start = 0,
        .End   = 6
    },

    {
        .Start = 0,
        .End   = 5
    },

    {
        .Start = 0,
        .End   = 5
    },

    {
        .Start = 0,
        .End   = 6
    },

    {
        .Start = 1,
        .End   = 5
    },

    {
        .Start = 1,
        .End   = 5
    },

    {
        .Start = 0,
        .End   = 1
    }
};

const u8 KBD_YPositions[8] = {
	0x3C,
	0x48,
	0x54,
	0x60,
	0x6C,
	0x78,
	0x84,
	0x00
};


const u16 KBD_SelectorXPosTable1[7] = {
	0x92, 0x9E, 0xAA, 0xB6, 0xC2, 0xCE, 0xDA
};


const u16 KBD_SelectorXPosTable2[7] = {
	0x98, 0xA4, 0xB0, 0xBC, 0xC8, 0xD4, 0xE0
};

const struct KBDKey KBD_CapsLayout[KBD_KEYCOUNT] = {
    {
        .XPos     = 153,
        .YPos     = 62,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_A
    },

    {
        .XPos     = 165,
        .YPos     = 62,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_B
    },

    {
        .XPos     = 177,
        .YPos     = 62,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_C
    },

    {
        .XPos     = 189,
        .YPos     = 62,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_D
    },

    {
        .XPos     = 201,
        .YPos     = 62,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_E
    },

    {
        .XPos     = 213,
        .YPos     = 62,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_F
    },

    {
        .XPos     = 225,
        .YPos     = 62,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_G
    },

    {
        .XPos     = 159,
        .YPos     = 74,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_H
    },

    {
        .XPos     = 171,
        .YPos     = 74,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_I
    },

    {
        .XPos     = 183,
        .YPos     = 74,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_J
    },

    {
        .XPos     = 195,
        .YPos     = 74,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_K
    },

    {
        .XPos     = 207,
        .YPos     = 74,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_L
    },

    {
        .XPos     = 219,
        .YPos     = 74,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_M
    },

    {
        .XPos     = 159,
        .YPos     = 86,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_N
    },

    {
        .XPos     = 171,
        .YPos     = 86,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_O
    },

    {
        .XPos     = 183,
        .YPos     = 86,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_P
    },

    {
        .XPos     = 195,
        .YPos     = 86,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_Q
    },

    {
        .XPos     = 207,
        .YPos     = 86,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_R
    },

    {
        .XPos     = 219,
        .YPos     = 86,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_S
    },

    {
        .XPos     = 153,
        .YPos     = 98,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_T
    },

    {
        .XPos     = 165,
        .YPos     = 98,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_U
    },

    {
        .XPos     = 177,
        .YPos     = 98,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_V
    },

    {
        .XPos     = 189,
        .YPos     = 98,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_W
    },

    {
        .XPos     = 201,
        .YPos     = 98,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_X
    },

    {
        .XPos     = 213,
        .YPos     = 98,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_Y
    },

    {
        .XPos     = 225,
        .YPos     = 98,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_Z
    },

    {
        .XPos     = 165,
        .YPos     = 110,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_0
    },

    {
        .XPos     = 177,
        .YPos     = 110,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_1
    },

    {
        .XPos     = 189,
        .YPos     = 110,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_2
    },

    {
        .XPos     = 201,
        .YPos     = 110,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_3
    },

    {
        .XPos     = 213,
        .YPos     = 110,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_4
    },

    {
        .XPos     = 165,
        .YPos     = 122,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_5
    },

    {
        .XPos     = 177,
        .YPos     = 122,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_6
    },

    {
        .XPos     = 189,
        .YPos     = 122,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_7
    },

    {
        .XPos     = 201,
        .YPos     = 122,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_8
    },

    {
        .XPos     = 213,
        .YPos     = 122,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_9
    },

    {
        .XPos     = 189,
        .YPos     = 132,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_DONE
    }
};

const struct KBDKey KBD_NoCapsLayout[KBD_KEYCOUNT] = {
    {
        .XPos     = 153,
        .YPos     = 62,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_a
    },

    {
        .XPos     = 165,
        .YPos     = 62,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_b
    },

    {
        .XPos     = 177,
        .YPos     = 62,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_c
    },

    {
        .XPos     = 189,
        .YPos     = 62,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_d
    },

    {
        .XPos     = 201,
        .YPos     = 62,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_e
    },

    {
        .XPos     = 213,
        .YPos     = 62,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_f
    },

    {
        .XPos     = 225,
        .YPos     = 62,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_g
    },

    {
        .XPos     = 159,
        .YPos     = 74,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_h
    },

    {
        .XPos     = 171,
        .YPos     = 74,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_i
    },

    {
        .XPos     = 183,
        .YPos     = 74,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_j
    },

    {
        .XPos     = 195,
        .YPos     = 74,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_k
    },

    {
        .XPos     = 207,
        .YPos     = 74,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_l
    },

    {
        .XPos     = 219,
        .YPos     = 74,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_m
    },

    {
        .XPos     = 159,
        .YPos     = 86,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_n
    },

    {
        .XPos     = 171,
        .YPos     = 86,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_o
    },

    {
        .XPos     = 183,
        .YPos     = 86,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_p
    },

    {
        .XPos     = 195,
        .YPos     = 86,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_q
    },

    {
        .XPos     = 207,
        .YPos     = 86,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_r
    },

    {
        .XPos     = 219,
        .YPos     = 86,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_s
    },

    {
        .XPos     = 153,
        .YPos     = 98,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_t
    },

    {
        .XPos     = 165,
        .YPos     = 98,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_u
    },

    {
        .XPos     = 177,
        .YPos     = 98,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_v
    },

    {
        .XPos     = 189,
        .YPos     = 98,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_w
    },

    {
        .XPos     = 201,
        .YPos     = 98,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_x
    },

    {
        .XPos     = 213,
        .YPos     = 98,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_y
    },

    {
        .XPos     = 225,
        .YPos     = 98,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_z
    },

    {
        .XPos     = 165,
        .YPos     = 110,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_EXCLAMATION_MARK
    },

    {
        .XPos     = 177,
        .YPos     = 110,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_PLUS_SIGN
    },

    {
        .XPos     = 189,
        .YPos     = 110,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_HASH
    },

    {
        .XPos     = 201,
        .YPos     = 110,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_DOLLAR_SIGN
    },

    {
        .XPos     = 213,
        .YPos     = 110,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_PERCENT_SIGN
    },

    {
        .XPos     = 165,
        .YPos     = 122,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_AMPERSAND
    },

    {
        .XPos     = 177,
        .YPos     = 122,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_UNDERSCORE
    },

    {
        .XPos     = 189,
        .YPos     = 122,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_ASTERISK
    },

    {
        .XPos     = 201,
        .YPos     = 122,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_OPEN_PARENTHESIS
    },

    {
        .XPos     = 213,
        .YPos     = 122,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_CLOSED_PARENTHESIS
    },

    {
        .XPos     = 189,
        .YPos     = 132,
        .MaxW     = 0,
        .Type     = 1,
        .StringID = KBDKEY_DONE
    }
};

const u32 KBD_KeyStringIDs[6 * 14] = {
	KBDKEY_A, KBDKEY_B, KBDKEY_C, KBDKEY_D, KBDKEY_E, KBDKEY_F,
	KBDKEY_G, KBDKEY_H, KBDKEY_I, KBDKEY_J, KBDKEY_K, KBDKEY_L,
	KBDKEY_M, KBDKEY_M, KBDKEY_N, KBDKEY_O, KBDKEY_P, KBDKEY_Q,
	KBDKEY_R, KBDKEY_S, KBDKEY_S, KBDKEY_T, KBDKEY_U, KBDKEY_V,
	KBDKEY_W, KBDKEY_X, KBDKEY_Y, KBDKEY_Z, KBDKEY_0, KBDKEY_0,
	KBDKEY_1, KBDKEY_2, KBDKEY_3, KBDKEY_4, KBDKEY_4, KBDKEY_5,
	KBDKEY_5, KBDKEY_6, KBDKEY_7, KBDKEY_8, KBDKEY_9, KBDKEY_9,
	KBDKEY_a, KBDKEY_b, KBDKEY_c, KBDKEY_d, KBDKEY_e, KBDKEY_f,
	KBDKEY_g, KBDKEY_h, KBDKEY_i, KBDKEY_j, KBDKEY_k, KBDKEY_l,
	KBDKEY_m, KBDKEY_m, KBDKEY_n, KBDKEY_o, KBDKEY_p, KBDKEY_q,
	KBDKEY_r, KBDKEY_s, KBDKEY_s, KBDKEY_t, KBDKEY_u, KBDKEY_v,
	KBDKEY_w, KBDKEY_x, KBDKEY_y, KBDKEY_z, KBDKEY_EXCLAMATION_MARK, KBDKEY_EXCLAMATION_MARK,
	KBDKEY_PLUS_SIGN, KBDKEY_HASH, KBDKEY_DOLLAR_SIGN, KBDKEY_PERCENT_SIGN, KBDKEY_PERCENT_SIGN, KBDKEY_AMPERSAND,
	KBDKEY_AMPERSAND, KBDKEY_UNDERSCORE, KBDKEY_ASTERISK, KBDKEY_OPEN_PARENTHESIS, KBDKEY_CLOSED_PARENTHESIS, KBDKEY_CLOSED_PARENTHESIS
};