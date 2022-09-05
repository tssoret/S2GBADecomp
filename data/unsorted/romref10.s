	.section .rodata

    .global ROMREF_09FBD898
    .global ROMREF_09FBD8D4
    .global ROMREF_09FBD914
    .global ROMREF_09FBD918
    .global ROMREF_09FBD940
    .global ROMREF_09FBD950
    .global ROMREF_09FBD958
    .global ROMREF_09FBD960
    .global ROMREF_09FBD968
    .global ROMREF_09FBD970
    .global ROMREF_09FBF388
    .global ROMREF_09FC10D8
    .global ROMREF_09FC1418
    .global ROMREF_09FC1430
    .global ROMREF_09FC1434
    .global ROMREF_09FC1438
    .global ROMREF_09FC143C
    .global ROMREF_09FC144C
    .global ROMREF_09FC1450
    .global ROMREF_09FC148C
    .global ROMREF_09FC1918
    .global ModuleTable
    .global ROMREF_09FC1E84
    .global ROMREF_09FC1E88
    .global ROMREF_09FC1E96
    .global LanguagePointers
    .global ROMREF_09FC1EBC
    .global ROMREF_09FC1EC4
    .global ROMREF_09FC1EC8


ROMREF_09FBD898:
    .incbin "baserom.gba", 0x01FBD898, 0x3C
ROMREF_09FBD8D4:
    .incbin "baserom.gba", 0x01FBD8D4, 0x40
ROMREF_09FBD914:
    .incbin "baserom.gba", 0x01FBD914, 0x4
ROMREF_09FBD918:
    .incbin "baserom.gba", 0x01FBD918, 0x28
ROMREF_09FBD940:
    .incbin "baserom.gba", 0x01FBD940, 0x10
ROMREF_09FBD950:
    .incbin "baserom.gba", 0x01FBD950, 0x8
ROMREF_09FBD958:
    .incbin "baserom.gba", 0x01FBD958, 0x8
ROMREF_09FBD960:
    .incbin "baserom.gba", 0x01FBD960, 0x8
ROMREF_09FBD968:
    .incbin "baserom.gba", 0x01FBD968, 0x8
ROMREF_09FBD970:
    .incbin "baserom.gba", 0x01FBD970, 0x1A18

@ Those seem to be some kinda animation stuff????
@ First one for Females, second one for Males.
ROMREF_09FBF388:
    .incbin "baserom.gba", 0x01FBF388, 0x1D50
ROMREF_09FC10D8:
    .incbin "baserom.gba", 0x01FC10D8, 0x340

@ Some Pointers.
ROMREF_09FC1418:
    .4byte 0x0808DD88 @ ROMREF_0808DD88
    .4byte 0x0808DD8C @ ROMREF_0808DD8C
    .4byte 0x0808DD90 @ ROMREF_0808DD90
    .4byte 0x0808DD94 @ ROMREF_0808DD94
    .4byte 0x0808DD98 @ ROMREF_0808DD98
    .4byte 0x0808DD9C @ ROMREF_0808DD9C

@ Some Palettes ushort pointers?
ROMREF_09FC1430:
    .4byte 0x09B1CD2C @ ROMREF_09B1CD2C
ROMREF_09FC1434:
    .4byte 0x09AE59B0 @ ROMREF_09AE59B0
ROMREF_09FC1438:
    .4byte 0x09AE59D0 @ ROMREF_09AE59D0

@ Something X & Y Pos.
ROMREF_09FC143C:
    .4byte 0x63, 0x54
    .4byte 0x9F, 0x54

ROMREF_09FC144C:
    .4byte 0x0808EFA0 @ROMREF_0808EFA0


@ Some kinda pointer-pointer table.
ROMREF_09FC1450:
    .4byte 0x0808E45C @ROMREF_0808E45C
    .4byte 0x0808E440 @ROMREF_0808E440
    .4byte 0x0808E478 @ROMREF_0808E478
    .4byte 0x0808E494 @ROMREF_0808E494
    .4byte 0x0808E4B0 @ROMREF_0808E4B0
    .4byte 0x0808E4CC @ROMREF_0808E4CC
    .4byte 0x0808E4E8 @ROMREF_0808E4E8
    .4byte 0x0808E520 @ROMREF_0808E520
    .4byte 0x0808E504 @ROMREF_0808E504
    .4byte 0x0808E53C @ROMREF_0808E53C
    .4byte 0x0808E558 @ROMREF_0808E558
    .4byte 0x0808E574 @ROMREF_0808E574
    .4byte 0x0808E590 @ROMREF_0808E590
    .4byte 0x0808E5AC @ROMREF_0808E5AC
    .4byte 0x0808E5C8 @ROMREF_0808E5C8


@ Also something to do with Sample Play.
ROMREF_09FC148C:
    .incbin "baserom.gba", 0x01FC148C, 0x48C

@ Has a table of a struct with 2 ushort's that are related to playing a Sample.
ROMREF_09FC1918:
    .incbin "baserom.gba", 0x01FC1918, 0x464

@ Modules Table with a pointer to the module and the mode.
@ 1 -> Loop
@ 2 -> Normal Song
@ 4 -> Jingle
ModuleTable:
    .4byte mod_Strangetown,           0x1
    .4byte mod_StrangetownEdit,       0x1
    .4byte mod_StrangetownEdit2,      0x1
    .4byte mod_Credits,               0x1
    .4byte mod_Boardroom,             0x1
    .4byte mod_StrangeDay,            0x1
    .4byte mod_StrangeNight,          0x1
    .4byte mod_DustyHoggBlues,        0x1
    .4byte mod_EdgeOfTown,            0x1
    .4byte mod_Intimidate,            0x1
    .4byte mod_Aliens,                0x1
    .4byte mod_Calmness,              0x1
    .4byte mod_TheGoons,              0x1
    .4byte mod_TranceMode,            0x1
    .4byte mod_HeavyMetal,            0x1
    .4byte mod_SpeedMetal,            0x1
    .4byte mod_Romance,               0x1
    .4byte mod_Friendship,            0x1
    .4byte mod_Sweetness,             0x1
    .4byte mod_Bloom,                 0x1
    .4byte mod_Investigate,           0x1
    .4byte mod_GoalComplete,          0x4
    .4byte mod_StrangetownBreak,      0x4
    .4byte mod_StrangetownReturn,     0x4
    .4byte mod_AlienSting,            0x4
    .4byte mod_DesperationSting,      0x4
    .4byte mod_StrangetownIntroLong,  0x2
    .4byte mod_StrangetownIntroShort, 0x2
    .4byte mod_MissionComplete,       0x4
    .4byte mod_BigfootLoveChickens,   0x1
    .4byte mod_KeelhaulinCardsJingle, 0x2
    .4byte mod_KeelhaulinCards,       0x1
    .4byte mod_ChugChugCola,          0x1

ROMREF_09FC1E84:
    .4byte 0x09B3E084 @ROMREF_09B3E084
    @.incbin "baserom.gba", 0x01FC1E84, 0x4

@ The 2 below are some kind of TV Sound Effect IDs.
ROMREF_09FC1E88:
    .2byte 0x72, 0x7F, 0xA7, 0x107, 0x91, 0x1E, 0x20
ROMREF_09FC1E96:
    .2byte 0xDA, 0xE3, 0x8, 0xFE, 0xD, 0xE, 0x3C

@ Language String Pointers.
LanguagePointers:
    .4byte EnglishStrings
    .4byte DutchStrings
    .4byte FrenchStrings
    .4byte GermanStrings
    .4byte ItalianStrings
    .4byte SpanishStrings
    
ROMREF_09FC1EBC:
    .4byte ROMREF_0808DD98
    .4byte 0x08090178 @ ROMREF_08090178
ROMREF_09FC1EC4:
    .4byte 0x08D2A130 @ROMREF_08D2A130
ROMREF_09FC1EC8:
    .4byte 0x08D2A140 @ROMREF_08D2A140
