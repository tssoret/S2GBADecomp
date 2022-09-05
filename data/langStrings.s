	.section .rodata

	.global EnglishStrings
	.global DutchStrings
	.global FrenchStrings
	.global GermanStrings
	.global ItalianStrings
	.global SpanishStrings

EnglishStrings:
	.incbin "baserom.gba", 0x019B4990, 0x22DF4
DutchStrings:
	.incbin "baserom.gba", 0x019D7784, 0x23818
FrenchStrings:
	.incbin "baserom.gba", 0x019FAF9C, 0x24844
GermanStrings:
	.incbin "baserom.gba", 0x01A1F7E0, 0x268C0
ItalianStrings:
	.incbin "baserom.gba", 0x01A460A0, 0x23720
SpanishStrings:
	.incbin "baserom.gba", 0x01A697C0, 0x24750
