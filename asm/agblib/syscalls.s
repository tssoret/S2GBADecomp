@ This file contains the BIOS System Calls (SVC), The Sims 2 Game Boy Advance makes use of.
.include "asm/macros/funcdef.inc"

    thumb_func_start SVC_ArcTan2
SVC_ArcTan2: @ 08057500
	svc 0xA
	bx  r14

	thumb_func_start SVC_CpuFastSet
SVC_CpuFastSet: @ 08057504
	svc 0xC
	bx  r14

	thumb_func_start SVC_CpuSet
SVC_CpuSet: @ 08057508
	svc 0xB
	bx  r14

	thumb_func_start SVC_Div
SVC_Div: @ 0805750C
	svc 0x6
	bx  r14

	thumb_func_start SVC_DivRem
SVC_DivRem: @ 08057510
	svc 0x6
	add r0, r1, #0x0
	bx  r14
	.align 2, 0

	thumb_func_start SVC_HuffUnComp
SVC_HuffUnComp: @ 08057518
	svc 0x13
	bx  r14

	thumb_func_start SVC_LZ77UnCompVRAM
SVC_LZ77UnCompVRAM: @ 0805751C
	svc 0x12
	bx  r14

	thumb_func_start SVC_LZ77UnCompWRAM
SVC_LZ77UnCompWRAM: @ 08057520
	svc 0x11
	bx  r14

	thumb_func_start SVC_ObjAffineSet
SVC_ObjAffineSet: @ 08057524
	svc 0xF
	bx  r14

	thumb_func_start SVC_RLUnCompVRAM
SVC_RLUnCompVRAM: @ 08057528
	svc 0x15
	bx  r14

	thumb_func_start SVC_RLUnCompWRAM
SVC_RLUnCompWRAM: @ 0805752C
	svc 0x14
	bx  r14

	thumb_func_start SVC_Sqrt
SVC_Sqrt: @ 08057530
	svc 0x8
	bx  r14

	thumb_func_start SVC_VBlankIntrWait
SVC_VBlankIntrWait: @ 08057534
	mov r2, #0x0
	svc #0x5
	bx  r14
	.align 2, 0
	