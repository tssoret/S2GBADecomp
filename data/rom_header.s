@ Most fields get set by MakeGBAHeader.js, such as title, gamecode, makercode etc.
StartFunc:
    b IntrVector @ The start function to where we branch (See crt0.s for more).

CartridgeHeaderNintendoLogo:
	.space 0x9C

CartridgeHeaderGameTitle:
	.space 0xC

CartridgeHeaderGameCode:
	.4byte 0x0

CartridgeHeaderMakerCode:
	.2byte 0x0

CartridgeHeaderMagic:
	.byte 0x96

CartridgeHeaderMainUnitCode:
	.byte 0x0

CartridgeHeaderDeviceType:
	.byte 0x0

CartridgeHeaderReserved1:
	.space 0x7

CartridgeHeaderSoftwareVersion:
	.byte 0x0

CartridgeHeaderChecksum:
	.byte 0

CartridgeHeaderReserved2:
	.space 0x2
