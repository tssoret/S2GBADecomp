	.section .rodata

    .global ROMREF_08072810
    .global ROMREF_08072814

ROMREF_08072810:
    .incbin "baserom.gba", 0x00072810, 0x4

ROMREF_08072814:
    .incbin "baserom.gba", 0x00072814, 0x8
