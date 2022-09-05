	.section .rodata

	.global ROMREF_09FC3494

@ Looks to be zero filled with 0x454.
ZeroFilled:
	.space 0x454
	@.incbin "baserom.gba", 0x01FC3040, 0x454

@ EWRAM Krawall Init Data. Not exactly zero filled, there are 3 0x80's inside it, not sure what that is.
ROMREF_09FC3494:
	.incbin "baserom.gba", 0x01FC3494, 0x28AC
	