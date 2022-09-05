	.section .rodata

	.global ROMREF_08069C28
    .global ROMREF_08069C30
    .global ROMREF_08069C40
    .global ROMREF_08069C50
    .global ROMREF_08069C60
    .global ROMREF_08069CE0
    .global ROMREF_08069CE4
    .global ROMREF_0806A2D8
    .global ROMREF_0806A2DC

ROMREF_08069C28:
    .byte 4, 5, 6, 7, 0, 1, 2, 3

ROMREF_08069C30:
    .incbin "baserom.gba", 0x00069C30, 0x10

ROMREF_08069C40:
    .incbin "baserom.gba", 0x00069C40, 0x10

ROMREF_08069C50:
    .incbin "baserom.gba", 0x00069C50, 0x10

ROMREF_08069C60:
    .incbin "baserom.gba", 0x00069C60, 0x80

ROMREF_08069CE0:
    .4byte 0x09000E00

ROMREF_08069CE4:
    .incbin "baserom.gba", 0x00069CE4, 0x5F4

ROMREF_0806A2D8:
    .4byte 0x09023F30

ROMREF_0806A2DC:
    .incbin "baserom.gba", 0x0006A2DC, 0x7968
