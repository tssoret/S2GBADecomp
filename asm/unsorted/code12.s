.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_0801E848
FUN_0801E848: @ 0x0801E848
	push {r4, lr}
	sub sp, #4
	ldr r0, _0801E88C @ => 0x08060560
	ldr r0, [r0]
	bl FUN_0801FE58
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #3
	movs r1, #0
	bl FUN_0801FEA0
	ldr r0, _0801E890 @ => 0x0000078B
	bl FUN_08050820
	adds r3, r0, #0
	ldr r0, _0801E894 @ => 0x08060568
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r4, #2
	ldrsh r2, [r0, r4]
	movs r0, #1
	str r0, [sp]
	bl FUN_0801F8B8
	ldr r0, _0801E898 @ => 0x03003D60
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl FUN_0801E53C
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801E88C: .4byte ROMREF_08060560
_0801E890: .4byte 0x0000078B
_0801E894: .4byte ROMREF_08060568
_0801E898: .4byte gEpisodeSelect_Index

	thumb_func_start FUN_0801E89C
FUN_0801E89C: @ 0x0801E89C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r0, [sp, #0x20]
	ldr r4, [sp, #0x24]
	bl FUN_08050820
	str r0, [sp]
	str r4, [sp, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	mov r2, r8
	mov r3, sb
	bl FUN_08020098
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start FUN_0801E8D4
FUN_0801E8D4: @ 0x0801E8D4
	push {r4, r5, lr}
	sub sp, #4
	ldr r4, _0801E91C @ => 0x03003D60
	ldr r5, [r4]
	ldr r0, _0801E920 @ => 0x030042B0
	ldrh r0, [r0, #6]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl FUN_08024A88
	ldr r1, [r4, #4]
	lsls r1, r1, #3
	ldr r0, [r4]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0x18
	bne _0801E904
	str r5, [r4]
_0801E904:
	ldr r0, [r4]
	cmp r5, r0
	beq _0801E912
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl FUN_0801E53C
_0801E912:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E91C: .4byte gEpisodeSelect_Index
_0801E920: .4byte gUnk_030042B0

	thumb_func_start FUN_0801E924
FUN_0801E924: @ 0x0801E924
	push {r4, r5, lr}
	sub sp, #4
	ldr r4, _0801E950 @ => 0x03003D60
	ldr r5, [r4, #4]
	adds r0, r4, #4
	ldr r1, _0801E954 @ => 0x030042B0
	ldrh r1, [r1, #6]
	str r1, [sp]
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl FUN_08024B30
	ldr r0, [r4, #4]
	cmp r5, r0
	beq _0801E948
	bl FUN_0801E75C
_0801E948:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E950: .4byte gEpisodeSelect_Index
_0801E954: .4byte gUnk_030042B0

	thumb_func_start FUN_0801E958
FUN_0801E958: @ 0x0801E958
	push {lr}
	ldr r2, _0801E978 @ => 0x03003D60
	ldr r3, [r2, #4]
	ldr r0, _0801E97C @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801E980
	movs r0, #0
	cmp r3, #0
	ble _0801E988
	subs r0, r3, #1
	b _0801E988
	.align 2, 0
_0801E978: .4byte gEpisodeSelect_Index
_0801E97C: .4byte gUnk_030042B0
_0801E980:
	movs r0, #2
	cmp r3, #1
	bgt _0801E988
	adds r0, r3, #1
_0801E988:
	str r0, [r2, #4]
	ldr r0, [r2, #4]
	cmp r3, r0
	beq _0801E994
	bl FUN_0801E75C
_0801E994:
	pop {r0}
	bx r0

	thumb_func_start FUN_0801E998
FUN_0801E998: @ 0x0801E998
	push {r4, lr}
	sub sp, #4
	cmp r0, #0
	bne _0801E9C8
	ldr r1, _0801E9B8 @ => 0x03004720
	movs r0, #1
	str r0, [r1, #4]
	ldr r0, _0801E9BC @ => 0x03003D84
	ldr r1, _0801E9C0 @ => 0x0000073B
	ldr r2, _0801E9C4 @ => 0x00000211
	movs r3, #0x1e
	str r3, [sp]
	movs r3, #0
	bl FUN_0804139C
	b _0801E9D8
	.align 2, 0
_0801E9B8: .4byte gUnk_03004720
_0801E9BC: .4byte gUnk_03003D84
_0801E9C0: .4byte 0x0000073B
_0801E9C4: .4byte 0x00000211
_0801E9C8:
	ldr r0, _0801EA24 @ => 0x03003D84
	ldr r2, _0801EA28 @ => 0x00000211
	movs r1, #0x1e
	str r1, [sp]
	movs r1, #0
	movs r3, #0
	bl FUN_0804139C
_0801E9D8:
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #3
	movs r1, #0
	bl FUN_0801FEA0
	ldr r0, _0801EA2C @ => 0x08060564
	ldr r0, [r0]
	bl FUN_0801FE58
	ldr r2, _0801EA30 @ => 0x00000207
	movs r0, #0
	movs r1, #0
	movs r3, #0
	bl FUN_080410E8
	ldr r4, _0801EA24 @ => 0x03003D84
	movs r0, #8
	adds r1, r4, #0
	bl FUN_08041150
	subs r4, #0x24
	ldr r0, [r4, #0x28]
	ldr r2, [r4, #0x34]
	adds r2, #1
	lsls r2, r2, #3
	adds r2, #3
	ldr r3, [r4, #0x24]
	movs r1, #1
	str r1, [sp]
	movs r1, #0x78
	bl FUN_0801F8B8
	str r0, [r4, #0x28]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801EA24: .4byte gUnk_03003D84
_0801EA28: .4byte 0x00000211
_0801EA2C: .4byte ROMREF_08060564
_0801EA30: .4byte 0x00000207

	thumb_func_start FUN_0801EA34
FUN_0801EA34: @ 0x0801EA34
	push {r4, lr}
	ldr r0, _0801EA68 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r4, #1
	ands r4, r1
	cmp r4, #0
	beq _0801EA74
	movs r0, #0
	movs r1, #0
	bl FUN_0800C61C
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #1
	movs r1, #0
	bl FUN_0801FEA0
	ldr r0, _0801EA6C @ => 0x08060560
	ldr r0, [r0]
	bl FUN_0801FE58
	ldr r1, _0801EA70 @ => 0x03004720
	movs r0, #0
	str r0, [r1, #4]
	b _0801EA9C
	.align 2, 0
_0801EA68: .4byte gUnk_030042B0
_0801EA6C: .4byte ROMREF_08060560
_0801EA70: .4byte gUnk_03004720
_0801EA74:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801EA9C
	movs r0, #0
	movs r1, #0
	bl FUN_0800C61C
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #1
	movs r1, #0
	bl FUN_0801FEA0
	ldr r0, _0801EAA4 @ => 0x08060560
	ldr r0, [r0]
	bl FUN_0801FE58
	ldr r0, _0801EAA8 @ => 0x03004720
	str r4, [r0, #4]
_0801EA9C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801EAA4: .4byte ROMREF_08060560
_0801EAA8: .4byte gUnk_03004720

	thumb_func_start FUN_0801EAAC
FUN_0801EAAC: @ 0x0801EAAC
	push {r4, lr}
	sub sp, #4
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _0801EAF0 @ => 0x000006F7
	bl FUN_08050820
	str r0, [sp]
	mov r0, sp
	bl FUN_08050940
	ldr r2, _0801EAF4 @ => 0x03003D60
	str r0, [r2, #8]
	ldr r4, _0801EAF8 @ => 0x08060568
	movs r3, #0x14
	ldrsh r1, [r4, r3]
	ldr r3, [r2, #4]
	lsls r2, r3, #3
	adds r2, r2, r3
	lsls r2, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #0x10
	movs r3, #0x16
	ldrsh r2, [r4, r3]
	lsls r2, r2, #0x10
	bl FUN_08001728
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801EAF0: .4byte 0x000006F7
_0801EAF4: .4byte gEpisodeSelect_Index
_0801EAF8: .4byte ROMREF_08060568

	thumb_func_start FUN_0801EAFC
FUN_0801EAFC: @ 0x0801EAFC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl FUN_08021320
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_0801ECB4
	adds r2, r0, #0
	cmp r2, #0
	beq _0801EB54
	ldr r0, _0801EB28 @ => 0x03001BA8
	adds r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #1
	beq _0801EB3C
	cmp r0, #1
	bgt _0801EB2C
	cmp r0, #0
	beq _0801EB32
	b _0801EB54
	.align 2, 0
_0801EB28: .4byte gUnk_03001BA8
_0801EB2C:
	cmp r0, #2
	beq _0801EB50
	b _0801EB54
_0801EB32:
	ldrb r0, [r2, #0xa]
	cmp r0, r4
	bne _0801EB54
	movs r0, #1
	b _0801EB56
_0801EB3C:
	ldrb r0, [r2, #0xa]
	cmp r0, r4
	bne _0801EB46
	movs r0, #3
	b _0801EB56
_0801EB46:
	ldrh r0, [r2, #6]
	cmp r0, r4
	bne _0801EB54
	movs r0, #2
	b _0801EB56
_0801EB50:
	movs r0, #4
	b _0801EB56
_0801EB54:
	movs r0, #0
_0801EB56:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start FUN_0801EB5C
FUN_0801EB5C: @ 0x0801EB5C
	push {lr}
	bl FUN_0801ECB4
	cmp r0, #0
	beq _0801EB6C
	ldrh r0, [r0, #2]
	bl FUN_0801B914
_0801EB6C:
	pop {r0}
	bx r0

	thumb_func_start FUN_0801EB70
FUN_0801EB70: @ 0x0801EB70
	push {lr}
	bl FUN_0801ECB4
	cmp r0, #0
	beq _0801EB80
	ldrh r0, [r0, #6]
	bl FUN_0801B914
_0801EB80:
	pop {r0}
	bx r0

	thumb_func_start FUN_0801EB84
FUN_0801EB84: @ 0x0801EB84
	push {lr}
	bl FUN_0801ECB4
	cmp r0, #0
	beq _0801EB94
	ldrh r0, [r0, #8]
	bl FUN_0801B914
_0801EB94:
	pop {r0}
	bx r0

	thumb_func_start FUN_0801EB98
FUN_0801EB98: @ 0x0801EB98
	push {lr}
	bl FUN_0801ECB4
	cmp r0, #0
	beq _0801EBA8
	ldrh r0, [r0, #4]
	bl FUN_0801B914
_0801EBA8:
	pop {r0}
	bx r0

	thumb_func_start FUN_0801EBAC
FUN_0801EBAC: @ 0x0801EBAC
	push {lr}
	bl FUN_0801ECB4
	cmp r0, #0
	bne _0801EBBA
	movs r0, #0xe6
	b _0801EBBC
_0801EBBA:
	ldrh r0, [r0]
_0801EBBC:
	pop {r1}
	bx r1

	thumb_func_start FUN_0801EBC0
FUN_0801EBC0: @ 0x0801EBC0
	push {r4, lr}
	adds r4, r1, #0
	bl FUN_0801ECB4
	bl FUN_08021320
	ldr r0, _0801EBE4 @ => 0x03001BA8
	adds r4, r4, r0
	movs r0, #1
	strb r0, [r4]
	ldr r0, _0801EBE8 @ => 0x03003DF0
	ldr r1, _0801EBEC @ => 0x000003F7
	adds r0, r0, r1
	movs r1, #0xe
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801EBE4: .4byte gUnk_03001BA8
_0801EBE8: .4byte gUnk_03003DF0
_0801EBEC: .4byte 0x000003F7

	thumb_func_start FUN_0801EBF0
FUN_0801EBF0: @ 0x0801EBF0
	push {r4, lr}
	adds r4, r1, #0
	bl FUN_0801ECB4
	bl FUN_08021320
	ldr r0, _0801EC14 @ => 0x03001BA8
	adds r4, r4, r0
	movs r0, #2
	strb r0, [r4]
	ldr r0, _0801EC18 @ => 0x03003DF0
	ldr r1, _0801EC1C @ => 0x000003F7
	adds r0, r0, r1
	movs r1, #0xe
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801EC14: .4byte gUnk_03001BA8
_0801EC18: .4byte gUnk_03003DF0
_0801EC1C: .4byte 0x000003F7

	thumb_func_start FUN_0801EC20
FUN_0801EC20: @ 0x0801EC20
	push {lr}
	movs r1, #0
	ldr r3, _0801EC38 @ => 0x03001BA8
	movs r2, #0
_0801EC28:
	adds r0, r1, r3
	strb r2, [r0]
	adds r1, #1
	cmp r1, #0
	beq _0801EC28
	pop {r0}
	bx r0
	.align 2, 0
_0801EC38: .4byte gUnk_03001BA8

	thumb_func_start FUN_0801EC3C
FUN_0801EC3C: @ 0x0801EC3C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	bl FUN_08021320
	movs r4, #0
	b _0801EC50
_0801EC4A:
	adds r4, #1
	cmp r4, #0
	bne _0801EC5E
_0801EC50:
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0801ECB4
	adds r1, r0, #0
	cmp r1, #0
	beq _0801EC4A
_0801EC5E:
	cmp r1, #0
	beq _0801EC84
	ldr r0, _0801EC80 @ => 0x03001BA8
	ldrb r2, [r1, #0xc]
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801EC84
	ldrh r0, [r1]
	cmp r0, r6
	bne _0801EC84
	ldrb r0, [r1, #0xb]
	cmp r0, r5
	bne _0801EC84
	adds r0, r2, #0
	b _0801EC86
	.align 2, 0
_0801EC80: .4byte gUnk_03001BA8
_0801EC84:
	movs r0, #1
_0801EC86:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_0801EC8C
FUN_0801EC8C: @ 0x0801EC8C
	push {lr}
	ldr r0, _0801EC9C @ => 0x03001BA8
	movs r1, #4
	bl FUN_08044644
	pop {r0}
	bx r0
	.align 2, 0
_0801EC9C: .4byte gUnk_03001BA8

	thumb_func_start FUN_0801ECA0
FUN_0801ECA0: @ 0x0801ECA0
	push {lr}
	ldr r0, _0801ECB0 @ => 0x03001BA8
	movs r1, #4
	bl FUN_08044558
	pop {r0}
	bx r0
	.align 2, 0
_0801ECB0: .4byte gUnk_03001BA8

	thumb_func_start FUN_0801ECB4
FUN_0801ECB4: @ 0x0801ECB4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_08021320
	ldr r1, _0801ECDC @ => 0x08060740
	lsls r4, r4, #2
	lsls r0, r0, #3
	adds r4, r4, r0
	adds r4, r4, r1
	ldr r4, [r4]
	ldrb r0, [r4, #0xa]
	cmp r0, r5
	beq _0801ECD6
	ldrb r0, [r4, #0xb]
	cmp r0, r5
	bne _0801ECE0
_0801ECD6:
	adds r0, r4, #0
	b _0801ECE2
	.align 2, 0
_0801ECDC: .4byte ROMREF_08060740
_0801ECE0:
	movs r0, #0
_0801ECE2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start FUN_0801ECE8
FUN_0801ECE8: @ 0x0801ECE8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r2, _0801ED1C @ => 0x03004200
	ldr r0, _0801ED20 @ => 0x030042B0
	ldrh r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	mov r8, r0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #5
	bls _0801ED10
	b _0801EE98
_0801ED10:
	lsls r0, r0, #2
	ldr r1, _0801ED24 @ =_0801ED28
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801ED1C: .4byte gUnk_03004200
_0801ED20: .4byte gUnk_030042B0
_0801ED24: .4byte _0801ED28
_0801ED28: @ jump table
	.4byte _0801ED40 @ case 0
	.4byte _0801ED7C @ case 1
	.4byte _0801ED86 @ case 2
	.4byte _0801EDAC @ case 3
	.4byte _0801EE10 @ case 4
	.4byte _0801EE68 @ case 5
_0801ED40:
	movs r2, #0x93
	lsls r2, r2, #1
	adds r1, r5, r2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	ldr r1, _0801ED74 @ => 0xFFFF0000
	cmp r0, r1
	beq _0801ED56
	b _0801EE98
_0801ED56:
	ldr r0, _0801ED78 @ => 0x08079070
	adds r2, #0x14
	adds r1, r5, r2
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	movs r0, #0x3f
	bl _call_via_r1
	adds r0, r5, #0
	movs r1, #1
	bl FUN_08001FB0
	b _0801EE98
	.align 2, 0
_0801ED74: .4byte 0xFFFF0000
_0801ED78: .4byte ROMREF_08079070
_0801ED7C:
	ldr r0, [r5, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0xc]
	b _0801EE98
_0801ED86:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _0801EDA8 @ => 0xFFFF0000
	cmp r1, r0
	beq _0801ED9C
	b _0801EE98
_0801ED9C:
	adds r0, r5, #0
	movs r1, #4
	bl FUN_08001FB0
	b _0801EE98
	.align 2, 0
_0801EDA8: .4byte 0xFFFF0000
_0801EDAC:
	ldr r1, _0801EE04 @ => 0x080790A8
	movs r2, #0x9d
	lsls r2, r2, #1
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0x3f
	bl _call_via_r1
	movs r1, #0x9b
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r0, [r0]
	lsls r6, r0, #0x10
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r0, r5, r2
	ldrh r0, [r0]
	lsls r7, r0, #0x10
	ldr r4, _0801EE08 @ => 0x030042B0
	ldrb r1, [r4, #6]
	movs r0, #1
	bl FUN_08011024
	ldrb r2, [r4, #6]
	adds r1, r7, #0
	adds r0, r6, #0
	bl FUN_080110C4
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	ldr r2, _0801EE0C @ => 0x0000013D
	adds r1, r5, r2
	ldrb r1, [r1]
	bl FUN_080099A8
	adds r0, r5, #0
	movs r1, #5
	b _0801EE48
	.align 2, 0
_0801EE04: .4byte ROMREF_080790A8
_0801EE08: .4byte gUnk_030042B0
_0801EE0C: .4byte 0x0000013D
_0801EE10:
	ldr r1, _0801EE58 @ => 0x080790A8
	ldr r2, _0801EE5C @ => 0x0000013B
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0x3f
	bl _call_via_r1
	movs r0, #0x80
	lsls r0, r0, #0x12
	bl FUN_080014E4
	ldr r4, _0801EE60 @ => 0x030042B0
	ldrb r1, [r4, #6]
	movs r0, #0
	bl FUN_08011024
	ldr r0, _0801EE64 @ => 0x08062C08
	ldr r1, [r0]
	ldr r2, [r0, #4]
	ldrb r3, [r4, #6]
	mov r0, r8
	bl FUN_0801119C
	adds r0, r5, #0
	movs r1, #0
_0801EE48:
	bl FUN_08001FB0
	movs r0, #0x93
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #1
	strh r0, [r1]
	b _0801EE98
	.align 2, 0
_0801EE58: .4byte ROMREF_080790A8
_0801EE5C: .4byte 0x0000013B
_0801EE60: .4byte gUnk_030042B0
_0801EE64: .4byte ROMREF_08062C08
_0801EE68:
	movs r2, #0x93
	lsls r2, r2, #1
	adds r1, r5, r2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	ldr r1, _0801EEAC @ => 0xFFFF0000
	cmp r0, r1
	bne _0801EE98
	ldr r0, _0801EEB0 @ => 0x08079070
	adds r2, #0x15
	adds r1, r5, r2
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	movs r0, #0x3f
	bl _call_via_r1
	adds r0, r5, #0
	movs r1, #2
	bl FUN_08001FB0
_0801EE98:
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801EEAC: .4byte 0xFFFF0000
_0801EEB0: .4byte ROMREF_08079070

	thumb_func_start FUN_0801EEB4
FUN_0801EEB4: @ 0x0801EEB4
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _0801EF10
	cmp r0, #1
	bgt _0801EECE
	cmp r0, #0
	beq _0801EED4
	b _0801EF92
_0801EECE:
	cmp r0, #2
	beq _0801EF2C
	b _0801EF92
_0801EED4:
	movs r2, #0x90
	lsls r2, r2, #1
	adds r5, r4, r2
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	ldr r1, _0801EF08 @ => 0xFFFF0000
	cmp r0, r1
	bne _0801EF92
	movs r0, #0x9f
	lsls r0, r0, #1
	adds r3, r4, r0
	ldrb r1, [r3]
	adds r2, #0x14
	adds r0, r4, r2
	ldrh r0, [r0]
	cmp r1, r0
	beq _0801EF54
	adds r0, r1, #1
	strb r0, [r3]
	ldr r0, _0801EF0C @ => 0x0000013F
	adds r2, r4, r0
	ldrb r0, [r2]
	subs r0, #1
	b _0801EF70
	.align 2, 0
_0801EF08: .4byte 0xFFFF0000
_0801EF0C: .4byte 0x0000013F
_0801EF10:
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrb r0, [r0]
	adds r2, #1
	adds r1, r4, r2
	ldrb r1, [r1]
	bl FUN_080099A8
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	b _0801EF92
_0801EF2C:
	movs r0, #0x90
	lsls r0, r0, #1
	adds r5, r4, r0
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	ldr r1, _0801EF60 @ => 0xFFFF0000
	cmp r0, r1
	bne _0801EF92
	movs r1, #0x9f
	lsls r1, r1, #1
	adds r3, r4, r1
	ldrb r1, [r3]
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrh r0, [r0]
	cmp r1, r0
	bne _0801EF64
_0801EF54:
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08001FB0
	b _0801EF92
	.align 2, 0
_0801EF60: .4byte 0xFFFF0000
_0801EF64:
	subs r0, r1, #1
	strb r0, [r3]
	ldr r0, _0801EFA4 @ => 0x0000013F
	adds r2, r4, r0
	ldrb r0, [r2]
	adds r0, #1
_0801EF70:
	strb r0, [r2]
	ldr r0, _0801EFA8 @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xd
	ands r0, r1
	cmp r0, #0
	bne _0801EF88
	ldrb r0, [r3]
	ldrb r1, [r2]
	bl FUN_080455AC
_0801EF88:
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	strh r0, [r5]
_0801EF92:
	movs r2, #0x8f
	lsls r2, r2, #1
	adds r1, r4, r2
	movs r0, #0
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801EFA4: .4byte 0x0000013F
_0801EFA8: .4byte gUnk_03004374

	thumb_func_start FUN_0801EFAC
FUN_0801EFAC: @ 0x0801EFAC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl FUN_080012FC
	adds r5, r0, #0
	movs r0, #0x2c
	strh r0, [r5, #8]
	ldr r0, _0801EFE0 @ => 0x00002008
	str r0, [r5, #0xc]
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r0, r5, r1
	strh r4, [r0]
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08001FB0
	ldr r0, _0801EFE4 @ => 0x08060800
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r0, [r4]
	str r0, [r5, #0x50]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0801EFE0: .4byte 0x00002008
_0801EFE4: .4byte ROMREF_08060800

	thumb_func_start FUN_0801EFE8
FUN_0801EFE8: @ 0x0801EFE8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801EFFE
	cmp r0, #1
	beq _0801F020
	b _0801F03A
_0801EFFE:
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _0801F01C @ => 0xFFFF0000
	cmp r1, r0
	bne _0801F03A
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08001FB0
	b _0801F03A
	.align 2, 0
_0801F01C: .4byte 0xFFFF0000
_0801F020:
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	ldr r2, _0801F04C @ => 0x0000013D
	adds r1, r4, r2
	ldrb r1, [r1]
	bl FUN_080099A8
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
_0801F03A:
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F04C: .4byte 0x0000013D

	thumb_func_start FUN_0801F050
FUN_0801F050: @ 0x0801F050
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r4, _0801F0A8 @ => 0x03001BB0
	mov r8, r4
	ldr r4, [r4]
	ldr r6, _0801F0AC @ => 0x03001BAC
	ldr r5, [r6]
	lsls r4, r4, #3
	adds r4, r4, r5
	movs r5, #0
	strb r0, [r4]
	mov r4, r8
	ldr r0, [r4]
	ldr r4, [r6]
	lsls r0, r0, #3
	adds r0, r0, r4
	strb r5, [r0, #1]
	mov r5, r8
	ldr r0, [r5]
	ldr r4, [r6]
	lsls r0, r0, #3
	adds r0, r0, r4
	movs r4, #1
	strb r4, [r0, #2]
	ldr r0, [r5]
	ldr r4, [r6]
	lsls r0, r0, #3
	adds r0, r0, r4
	strb r3, [r0, #3]
	ldr r3, [r5]
	ldr r4, [r6]
	lsls r0, r3, #3
	adds r0, r0, r4
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	adds r3, #1
	str r3, [r5]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801F0A8: .4byte gUnk_03001BB0
_0801F0AC: .4byte gUnk_03001BAC

	thumb_func_start FUN_0801F0B0
FUN_0801F0B0: @ 0x0801F0B0
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r0, _0801F0F8 @ => 0x03001BB0
	ldr r0, [r0]
	cmp r5, r0
	bhs _0801F0F0
	ldr r6, _0801F0FC @ => 0x03001BAC
_0801F0BE:
	ldr r0, [r6]
	lsls r4, r5, #3
	adds r2, r4, r0
	ldrb r3, [r2, #2]
	cmp r3, #0
	beq _0801F0E6
	ldrb r1, [r2, #3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801F0E6
	subs r0, r3, #1
	strb r0, [r2, #2]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F0E6
	ldr r0, [r6]
	adds r0, r0, r4
	bl FUN_0801F100
_0801F0E6:
	adds r5, #1
	ldr r0, _0801F0F8 @ => 0x03001BB0
	ldr r0, [r0]
	cmp r5, r0
	blo _0801F0BE
_0801F0F0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801F0F8: .4byte gUnk_03001BB0
_0801F0FC: .4byte gUnk_03001BAC

	thumb_func_start FUN_0801F100
FUN_0801F100: @ 0x0801F100
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #1]
	bl FUN_0801F5B4
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0801F12A
	movs r0, #0
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	adds r0, r4, #0
	bl FUN_0801F5B4
	strb r0, [r4, #2]
	adds r0, r4, #0
	bl FUN_0801F100
	b _0801F146
_0801F12A:
	cmp r0, #0xfe
	bne _0801F138
	ldrb r0, [r4, #3]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #3]
	b _0801F146
_0801F138:
	ldrb r1, [r4, #1]
	adds r0, r4, #0
	bl FUN_0801F14C
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
_0801F146:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_0801F14C
FUN_0801F14C: @ 0x0801F14C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0xc]
	bl FUN_0801F598
	str r0, [sp, #0x10]
	adds r0, r7, #0
	ldr r1, [sp, #0xc]
	bl FUN_0801F5D0
	str r0, [sp, #0x14]
	mov r4, sp
	adds r4, #6
	str r4, [sp]
	adds r0, r7, #0
	ldr r1, [sp, #0xc]
	movs r2, #0
	add r3, sp, #4
	bl FUN_0801F5EC
	movs r6, #0
	ldr r0, [sp, #0x10]
	cmp r6, r0
	bhs _0801F23A
	add r1, sp, #8
	mov sb, r1
	movs r2, #0xa
	add r2, sp
	mov r8, r2
_0801F194:
	mov r3, r8
	str r3, [sp]
	adds r0, r7, #0
	ldr r1, [sp, #0xc]
	adds r2, r6, #0
	mov r3, sb
	bl FUN_0801F5EC
	mov r0, sb
	ldrh r1, [r0]
	add r0, sp, #4
	ldrh r0, [r0]
	subs r1, r1, r0
	mov sl, r1
	mov r2, r8
	ldrh r1, [r2]
	mov r3, sp
	ldrh r0, [r3, #6]
	subs r1, r1, r0
	str r1, [sp, #0x18]
	movs r5, #0
	adds r6, #1
_0801F1C0:
	movs r0, #1
	lsls r0, r5
	ldr r1, [sp, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _0801F1FC
	mov r2, sb
	ldrh r0, [r2]
	mov r3, r8
	ldrh r1, [r3]
	lsls r4, r5, #0x18
	lsrs r4, r4, #0x18
	adds r2, r4, #0
	bl FUN_08047324
	adds r2, r0, #0
	ldrh r0, [r7, #4]
	add r0, sl
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r7, #6]
	ldr r3, [sp, #0x18]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r3, r4, #0
	bl FUN_08046DEC
_0801F1FC:
	adds r5, #1
	cmp r5, #2
	bls _0801F1C0
	movs r0, #8
	ldr r1, [sp, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _0801F234
	mov r2, sb
	ldrh r0, [r2]
	mov r3, r8
	ldrh r1, [r3]
	bl FUN_08039748
	adds r2, r0, #0
	ldrh r0, [r7, #4]
	add r0, sl
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r7, #6]
	ldr r3, [sp, #0x18]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl FUN_0803970C
_0801F234:
	ldr r0, [sp, #0x10]
	cmp r6, r0
	blo _0801F194
_0801F23A:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0801F24C
FUN_0801F24C: @ 0x0801F24C
	push {r4, lr}
	ldr r4, _0801F268 @ => 0x03001BAC
	movs r0, #0x80
	lsls r0, r0, #1
	bl FUN_0802C9DC
	str r0, [r4]
	ldr r1, _0801F26C @ => 0x03001BB0
	movs r0, #0
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F268: .4byte gUnk_03001BAC
_0801F26C: .4byte gUnk_03001BB0

	thumb_func_start FUN_0801F270
FUN_0801F270: @ 0x0801F270
	push {lr}
	ldr r0, _0801F28C @ => 0x03001BAC
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl FUN_0802CB40
	ldr r1, _0801F290 @ => 0x03001BB0
	movs r0, #0
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0801F28C: .4byte gUnk_03001BAC
_0801F290: .4byte gUnk_03001BB0

	thumb_func_start FUN_0801F294
FUN_0801F294: @ 0x0801F294
	push {r4, lr}
	bl FUN_0801F3BC
	adds r4, r0, #0
	ldrb r1, [r4, #3]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r4, #3]
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0801F2CE
	adds r0, #1
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	adds r0, r4, #0
	bl FUN_0801F5B4
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0801F2CE
	movs r0, #0
	strb r0, [r4, #1]
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0801F5B4
	strb r0, [r4, #2]
_0801F2CE:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_0801F2D4
FUN_0801F2D4: @ 0x0801F2D4
	push {lr}
	bl FUN_0801F3BC
	ldrb r2, [r0, #3]
	movs r1, #1
	orrs r1, r2
	strb r1, [r0, #3]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0801F2E8
FUN_0801F2E8: @ 0x0801F2E8
	push {r4, r5, lr}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r5, _0801F328 @ => 0xFFFFFF00
	ldr r4, [sp]
	ands r4, r5
	orrs r4, r0
	ldr r0, _0801F32C @ => 0xFFFF00FF
	ands r4, r0
	ldr r0, _0801F330 @ => 0xFF00FFFF
	ands r4, r0
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r4, r0
	lsls r3, r3, #0x18
	ldr r0, _0801F334 @ => 0x00FFFFFF
	ands r4, r0
	orrs r4, r3
	str r4, [sp]
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r1, r1, #0x10
	orrs r1, r2
	str r1, [sp, #4]
	mov r0, sp
	bl FUN_0801F100
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801F328: .4byte 0xFFFFFF00
_0801F32C: .4byte 0xFFFF00FF
_0801F330: .4byte 0xFF00FFFF
_0801F334: .4byte 0x00FFFFFF

	thumb_func_start FUN_0801F338
FUN_0801F338: @ 0x0801F338
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08009B04
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_080012D8
	adds r5, r0, #0
	ldrb r0, [r4, #8]
	strh r0, [r5, #0xa]
	movs r0, #4
	ldrsh r1, [r4, r0]
	lsls r1, r1, #0x10
	movs r3, #6
	ldrsh r2, [r4, r3]
	lsls r2, r2, #0x10
	adds r0, r5, #0
	bl FUN_08001728
	movs r0, #0xc
	str r0, [r5, #0xc]
	ldrb r0, [r4, #8]
	movs r2, #4
	ldrsh r1, [r4, r2]
	movs r3, #6
	ldrsh r2, [r4, r3]
	movs r3, #0
	bl FUN_0801F050
	ldrb r6, [r4, #9]
	cmp r6, #0
	bne _0801F396
	movs r1, #4
	ldrsh r0, [r4, r1]
	movs r2, #6
	ldrsh r1, [r4, r2]
	bl FUN_0801F2D4
	movs r3, #0x98
	lsls r3, r3, #1
	adds r0, r5, r3
	str r6, [r0]
	b _0801F3AC
_0801F396:
	movs r1, #4
	ldrsh r0, [r4, r1]
	movs r2, #6
	ldrsh r1, [r4, r2]
	bl FUN_0801F294
	movs r3, #0x98
	lsls r3, r3, #1
	adds r1, r5, r3
	movs r0, #1
	str r0, [r1]
_0801F3AC:
	ldr r0, _0801F3B8 @ => FUN_0801F620
	str r0, [r5, #0x50]
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0801F3B8: .4byte FUN_0801F620

	thumb_func_start FUN_0801F3BC
FUN_0801F3BC: @ 0x0801F3BC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r1, #0
	ldr r0, _0801F3E8 @ => 0x03001BB0
	ldr r2, [r0]
	cmp r1, r2
	bhs _0801F3FA
	ldr r0, _0801F3EC @ => 0x03001BAC
	ldr r0, [r0]
	adds r4, r2, #0
	adds r2, r0, #4
	adds r3, r0, #0
_0801F3D6:
	ldrh r0, [r2]
	cmp r0, r6
	bne _0801F3F0
	ldrh r0, [r2, #2]
	cmp r0, r5
	bne _0801F3F0
	adds r0, r3, #0
	b _0801F3FC
	.align 2, 0
_0801F3E8: .4byte gUnk_03001BB0
_0801F3EC: .4byte gUnk_03001BAC
_0801F3F0:
	adds r2, #8
	adds r3, #8
	adds r1, #1
	cmp r1, r4
	blo _0801F3D6
_0801F3FA:
	movs r0, #0
_0801F3FC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0801F404
FUN_0801F404: @ 0x0801F404
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #1]
	cmp r0, #0
	beq _0801F436
	subs r0, #1
	lsls r4, r0, #0x18
	b _0801F41A
_0801F414:
	movs r0, #0xff
	lsls r0, r0, #0x18
	adds r4, r1, r0
_0801F41A:
	lsrs r5, r4, #0x18
	adds r0, r6, #0
	adds r1, r5, #0
	bl FUN_0801F5B4
	adds r1, r4, #0
	cmp r0, #0xfe
	beq _0801F414
	adds r0, r6, #0
	adds r1, r5, #0
	bl FUN_0801F14C
	movs r0, #1
	b _0801F438
_0801F436:
	movs r0, #0
_0801F438:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0801F440
FUN_0801F440: @ 0x0801F440
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #1]
	cmp r0, #0
	bne _0801F44E
	movs r0, #0
	b _0801F46C
_0801F44E:
	ldr r1, _0801F470 @ => 0x08062594
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0]
	subs r0, #2
	strb r0, [r2, #1]
	movs r0, #1
	strb r0, [r2, #2]
	ldrb r1, [r2, #3]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2, #3]
	movs r0, #1
_0801F46C:
	pop {r1}
	bx r1
	.align 2, 0
_0801F470: .4byte ROMREF_08062594

	thumb_func_start FUN_0801F474
FUN_0801F474: @ 0x0801F474
	push {r4, r5, lr}
	movs r4, #0
	ldr r0, _0801F4A4 @ => 0x03001BB0
	ldr r0, [r0]
	cmp r4, r0
	bhs _0801F49E
	ldr r5, _0801F4A8 @ => 0x03001BAC
_0801F482:
	lsls r0, r4, #3
	ldr r1, [r5]
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _0801F494
	adds r0, r1, #0
	bl FUN_0801F404
_0801F494:
	adds r4, #1
	ldr r0, _0801F4A4 @ => 0x03001BB0
	ldr r0, [r0]
	cmp r4, r0
	blo _0801F482
_0801F49E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801F4A4: .4byte gUnk_03001BB0
_0801F4A8: .4byte gUnk_03001BAC

	thumb_func_start FUN_0801F4AC
FUN_0801F4AC: @ 0x0801F4AC
	push {lr}
	ldrh r0, [r0, #0xa]
	subs r0, #1
	cmp r0, #0x2d
	bhi _0801F592
	lsls r0, r0, #2
	ldr r1, _0801F4C0 @ =_0801F4C4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801F4C0: .4byte _0801F4C4
_0801F4C4: @ jump table
	.4byte _0801F57C @ case 0
	.4byte _0801F57C @ case 1
	.4byte _0801F57C @ case 2
	.4byte _0801F57C @ case 3
	.4byte _0801F57C @ case 4
	.4byte _0801F57C @ case 5
	.4byte _0801F57C @ case 6
	.4byte _0801F57C @ case 7
	.4byte _0801F592 @ case 8
	.4byte _0801F57C @ case 9
	.4byte _0801F584 @ case 10
	.4byte _0801F57C @ case 11
	.4byte _0801F592 @ case 12
	.4byte _0801F592 @ case 13
	.4byte _0801F592 @ case 14
	.4byte _0801F57C @ case 15
	.4byte _0801F57C @ case 16
	.4byte _0801F57C @ case 17
	.4byte _0801F592 @ case 18
	.4byte _0801F57C @ case 19
	.4byte _0801F592 @ case 20
	.4byte _0801F592 @ case 21
	.4byte _0801F592 @ case 22
	.4byte _0801F592 @ case 23
	.4byte _0801F592 @ case 24
	.4byte _0801F592 @ case 25
	.4byte _0801F592 @ case 26
	.4byte _0801F592 @ case 27
	.4byte _0801F592 @ case 28
	.4byte _0801F592 @ case 29
	.4byte _0801F57C @ case 30
	.4byte _0801F57C @ case 31
	.4byte _0801F584 @ case 32
	.4byte _0801F592 @ case 33
	.4byte _0801F592 @ case 34
	.4byte _0801F592 @ case 35
	.4byte _0801F592 @ case 36
	.4byte _0801F592 @ case 37
	.4byte _0801F592 @ case 38
	.4byte _0801F57C @ case 39
	.4byte _0801F592 @ case 40
	.4byte _0801F592 @ case 41
	.4byte _0801F592 @ case 42
	.4byte _0801F592 @ case 43
	.4byte _0801F57C @ case 44
	.4byte _0801F58C @ case 45
_0801F57C:
	movs r0, #0x68
	bl FUN_0804DE0C
	b _0801F592
_0801F584:
	movs r0, #0x67
	bl FUN_0804DE0C
	b _0801F592
_0801F58C:
	movs r0, #0x72
	bl FUN_0804DE0C
_0801F592:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0801F598
FUN_0801F598: @ 0x0801F598
	lsls r1, r1, #0x18
	ldr r2, _0801F5B0 @ => 0x08062594
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	lsrs r1, r1, #0x16
	adds r0, #4
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_0801F5B0: .4byte ROMREF_08062594

	thumb_func_start FUN_0801F5B4
FUN_0801F5B4: @ 0x0801F5B4
	lsls r1, r1, #0x18
	ldr r2, _0801F5CC @ => 0x08062594
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	lsrs r1, r1, #0x16
	adds r0, #4
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	bx lr
	.align 2, 0
_0801F5CC: .4byte ROMREF_08062594

	thumb_func_start FUN_0801F5D0
FUN_0801F5D0: @ 0x0801F5D0
	lsls r1, r1, #0x18
	ldr r2, _0801F5E8 @ => 0x08062594
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	lsrs r1, r1, #0x16
	adds r0, #4
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	bx lr
	.align 2, 0
_0801F5E8: .4byte ROMREF_08062594

	thumb_func_start FUN_0801F5EC
FUN_0801F5EC: @ 0x0801F5EC
	push {r4, r5, lr}
	ldr r5, [sp, #0xc]
	lsls r1, r1, #0x18
	ldr r4, _0801F61C @ => 0x08062594
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	lsrs r1, r1, #0x16
	adds r0, #4
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #4
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrh r0, [r2]
	lsls r0, r0, #5
	strh r0, [r3]
	ldrh r0, [r2, #2]
	lsls r0, r0, #5
	strh r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801F61C: .4byte ROMREF_08062594

	thumb_func_start FUN_0801F620
FUN_0801F620: @ 0x0801F620
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #4
	bhi _0801F6AC
	lsls r0, r0, #2
	ldr r1, _0801F63C @ =_0801F640
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801F63C: .4byte _0801F640
_0801F640: @ jump table
	.4byte _0801F6AC @ case 0
	.4byte _0801F654 @ case 1
	.4byte _0801F65E @ case 2
	.4byte _0801F668 @ case 3
	.4byte _0801F68E @ case 4
_0801F654:
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	b _0801F6AC
_0801F65E:
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001FB0
	b _0801F6AC
_0801F668:
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	movs r2, #0x1e
	ldrsh r1, [r4, r2]
	bl FUN_0801F294
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001FB0
	adds r0, r4, #0
	bl FUN_0801F4AC
	b _0801F6AC
_0801F68E:
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	movs r2, #0x1e
	ldrsh r1, [r4, r2]
	bl FUN_0801F2D4
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001FB0
_0801F6AC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0801F6B4
FUN_0801F6B4: @ 0x0801F6B4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	movs r0, #0x2e
	bl FUN_080012D8
	adds r5, r0, #0
	str r4, [r5, #0x58]
	ldr r1, [r4, #0x18]
	ldr r0, _0801F728 @ => 0xFFF90000
	adds r1, r1, r0
	ldr r2, [r4, #0x1c]
	ldr r0, _0801F72C @ => 0xFFCF0000
	adds r2, r2, r0
	adds r0, r5, #0
	bl FUN_08001728
	movs r0, #9
	str r0, [r5, #0xc]
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r0, r5, r1
	strh r6, [r0]
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08001FB0
	lsls r1, r6, #4
	ldr r0, _0801F730 @ => 0x0806269C
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r0, _0801F734 @ => 0x09FB6324
	lsls r6, r6, #2
	adds r6, r6, r0
	ldr r1, [r6]
	adds r0, r5, #0
	bl FUN_0803EF14
	ldr r0, _0801F738 @ => FUN_0801F780
	str r0, [r5, #0x50]
	adds r2, r5, #0
	adds r2, #0xa9
	ldrb r1, [r2]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0801F73C @ => FUN_08001EBC
	str r0, [r5, #0x64]
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0801F728: .4byte 0xFFF90000
_0801F72C: .4byte 0xFFCF0000
_0801F730: .4byte ROMREF_0806269C
_0801F734: .4byte ROMREF_09FB6324
_0801F738: .4byte FUN_0801F780
_0801F73C: .4byte FUN_08001EBC

	thumb_func_start FUN_0801F740
FUN_0801F740: @ 0x0801F740
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x18
	lsrs r4, r4, #0x18
	bl FUN_08001AE0
	ldrh r1, [r0, #6]
	subs r1, #1
	movs r0, #0x64
	bl __divsi3
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r0, r5, #0
	adds r0, #0xba
	ldrb r0, [r0]
	cmp r1, r0
	beq _0801F776
	adds r0, r5, #0
	bl FUN_08000E44
_0801F776:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_0801F77C
FUN_0801F77C: @ 0x0801F77C
	bx lr
	.align 2, 0

	thumb_func_start FUN_0801F780
FUN_0801F780: @ 0x0801F780
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x58]
	ldr r1, [r0, #0x18]
	ldr r2, _0801F7B8 @ => 0xFFF90000
	adds r1, r1, r2
	ldr r2, [r0, #0x1c]
	ldr r0, _0801F7BC @ => 0xFFCF0000
	adds r2, r2, r0
	adds r0, r4, #0
	bl FUN_08001728
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801F7B0
	cmp r0, #1
	bne _0801F7B0
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
_0801F7B0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F7B8: .4byte 0xFFF90000
_0801F7BC: .4byte 0xFFCF0000

	thumb_func_start FUN_0801F7C0
FUN_0801F7C0: @ 0x0801F7C0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	mov r8, r1
	movs r3, #0
	mov sb, r3
	movs r2, #0
	ldrb r0, [r5]
	cmp r0, #0
	beq _0801F896
	cmp r3, r8
	bgt _0801F890
	b _0801F88A
_0801F7E0:
	ldrb r0, [r5]
	cmp r0, #0x40
	bne _0801F856
	adds r5, #1
	ldrb r0, [r5]
	lsls r0, r0, #6
	ldr r1, _0801F818 @ => 0x03001080
	adds r4, r0, r1
	movs r6, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0801F84A
	ldr r7, _0801F81C @ => 0x03001C80
_0801F7FA:
	cmp r0, #0x40
	bne _0801F820
	adds r4, #1
	ldrb r0, [r4]
	lsls r0, r0, #6
	ldr r1, _0801F818 @ => 0x03001080
	adds r0, r0, r1
	str r2, [sp]
	str r3, [sp, #4]
	bl FUN_0801FF60
	adds r6, r6, r0
	ldr r2, [sp]
	ldr r3, [sp, #4]
	b _0801F842
	.align 2, 0
_0801F818: .4byte gUnk_03001080
_0801F81C: .4byte gUnk_03001C80
_0801F820:
	ldrb r1, [r4]
	cmp r1, #0xef
	bls _0801F832
	lsls r0, r1, #8
	adds r4, #1
	ldrb r1, [r4]
	orrs r1, r0
	ldr r0, [r7, #4]
	b _0801F834
_0801F832:
	ldr r0, [r7]
_0801F834:
	str r2, [sp]
	str r3, [sp, #4]
	bl FUN_080205F4
	adds r6, r6, r0
	ldr r3, [sp, #4]
	ldr r2, [sp]
_0801F842:
	adds r4, #1
	ldrb r0, [r4]
	cmp r0, #0
	bne _0801F7FA
_0801F84A:
	adds r2, r2, r6
	cmp r2, r8
	blt _0801F87E
	subs r3, r5, #1
	adds r5, r3, #0
	b _0801F890
_0801F856:
	ldrb r4, [r5]
	cmp r4, #0x20
	bne _0801F85E
	adds r3, r5, #0
_0801F85E:
	ldr r0, _0801F8B4 @ => 0x03001C80
	ldr r0, [r0]
	adds r1, r4, #0
	str r2, [sp]
	str r3, [sp, #4]
	bl FUN_080205F4
	ldr r2, [sp]
	adds r2, r2, r0
	ldr r3, [sp, #4]
	cmp r2, r8
	bgt _0801F87E
	cmp r4, #0x2d
	bne _0801F87E
	adds r0, r5, #1
	mov sb, r0
_0801F87E:
	adds r5, #1
	ldrb r0, [r5]
	cmp r0, #0
	beq _0801F896
	cmp r2, r8
	bgt _0801F890
_0801F88A:
	cmp r0, #0xa
	bne _0801F7E0
	adds r3, r5, #0
_0801F890:
	ldrb r0, [r5]
	cmp r0, #0
	bne _0801F89C
_0801F896:
	cmp r2, r8
	bgt _0801F89C
	adds r3, r5, #0
_0801F89C:
	cmp r3, #0
	bne _0801F8A2
	mov r3, sb
_0801F8A2:
	adds r0, r3, #0
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801F8B4: .4byte gUnk_03001C80

	thumb_func_start FUN_0801F8B8
FUN_0801F8B8: @ 0x0801F8B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	adds r6, r3, #0
	mov r8, r1
	mov sb, r2
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _0801F92C
	adds r4, r6, #0
	movs r5, #0
	ldrb r0, [r6]
	cmp r0, #0
	beq _0801F91E
	ldr r7, _0801F8F4 @ => 0x03001C80
_0801F8DC:
	ldrb r0, [r4]
	cmp r0, #0x40
	bne _0801F8FC
	adds r4, #1
	ldrb r0, [r4]
	lsls r0, r0, #6
	ldr r1, _0801F8F8 @ => 0x03001080
	adds r0, r0, r1
	bl FUN_0801FF60
	b _0801F914
	.align 2, 0
_0801F8F4: .4byte gUnk_03001C80
_0801F8F8: .4byte gUnk_03001080
_0801F8FC:
	ldrb r1, [r4]
	cmp r1, #0xef
	bls _0801F90E
	lsls r0, r1, #8
	adds r4, #1
	ldrb r1, [r4]
	orrs r1, r0
	ldr r0, [r7, #4]
	b _0801F910
_0801F90E:
	ldr r0, [r7]
_0801F910:
	bl FUN_080205F4
_0801F914:
	adds r5, r5, r0
	adds r4, #1
	ldrb r0, [r4]
	cmp r0, #0
	bne _0801F8DC
_0801F91E:
	adds r0, r5, #1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	mov r1, r8
	subs r1, r1, r0
	b _0801F982
_0801F92C:
	ldr r0, [sp, #0x20]
	cmp r0, #2
	bne _0801F984
	adds r4, r6, #0
	movs r5, #0
	ldrb r0, [r6]
	cmp r0, #0
	beq _0801F97E
	ldr r7, _0801F954 @ => 0x03001C80
_0801F93E:
	ldrb r0, [r4]
	cmp r0, #0x40
	bne _0801F95C
	adds r4, #1
	ldrb r0, [r4]
	lsls r0, r0, #6
	ldr r1, _0801F958 @ => 0x03001080
	adds r0, r0, r1
	bl FUN_0801FF60
	b _0801F974
	.align 2, 0
_0801F954: .4byte gUnk_03001C80
_0801F958: .4byte gUnk_03001080
_0801F95C:
	ldrb r1, [r4]
	cmp r1, #0xef
	bls _0801F96E
	lsls r0, r1, #8
	adds r4, #1
	ldrb r1, [r4]
	orrs r1, r0
	ldr r0, [r7, #4]
	b _0801F970
_0801F96E:
	ldr r0, [r7]
_0801F970:
	bl FUN_080205F4
_0801F974:
	adds r5, r5, r0
	adds r4, #1
	ldrb r0, [r4]
	cmp r0, #0
	bne _0801F93E
_0801F97E:
	mov r1, r8
	subs r1, r1, r5
_0801F982:
	mov r8, r1
_0801F984:
	ldr r0, [sp, #0x20]
	cmp r0, #4
	bne _0801F9A8
	movs r1, #0
	ldrb r0, [r6]
	cmp r0, #0
	beq _0801F998
	ldr r0, _0801F9A4 @ => 0x03001C80
	ldr r0, [r0]
	ldrb r1, [r0]
_0801F998:
	adds r0, r1, #1
	asrs r0, r0, #1
	mov r1, sb
	subs r1, r1, r0
	mov sb, r1
	b _0801F9C2
	.align 2, 0
_0801F9A4: .4byte gUnk_03001C80
_0801F9A8:
	ldr r0, [sp, #0x20]
	cmp r0, #8
	bne _0801F9C2
	movs r1, #0
	ldrb r0, [r6]
	cmp r0, #0
	beq _0801F9BC
	ldr r0, _0801F9DC @ => 0x03001C80
	ldr r0, [r0]
	ldrb r1, [r0]
_0801F9BC:
	mov r0, sb
	subs r0, r0, r1
	mov sb, r0
_0801F9C2:
	mov r0, sl
	mov r1, r8
	mov r2, sb
	adds r3, r6, #0
	bl FUN_0801F9E0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801F9DC: .4byte gUnk_03001C80

	thumb_func_start FUN_0801F9E0
FUN_0801F9E0: @ 0x0801F9E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x13c
	adds r6, r1, #0
	str r2, [sp, #0x104]
	adds r5, r3, #0
	str r0, [sp, #0x12c]
	movs r0, #0
	mov sb, r0
	ldr r4, _0801FA48 @ => 0x03001C80
	ldr r0, [r4, #0x18]
	bl FUN_080205D0
	str r0, [sp, #0x110]
	ldr r1, [r4, #0x20]
	str r1, [sp, #0x114]
	ldr r0, [r4, #8]
	mov sl, r0
	ldr r7, [r4]
	ldr r1, [r4, #4]
	str r1, [sp, #0x118]
	str r7, [sp, #0x11c]
	movs r0, #7
	ands r6, r0
	ldr r1, [sp, #0x104]
	ands r1, r0
	str r1, [sp, #0x104]
	adds r1, r7, #0
	ldrb r0, [r1]
	ldr r1, [sp, #0x104]
	adds r0, r1, r0
	adds r0, #7
	asrs r0, r0, #3
	str r0, [sp, #0x128]
	mov r0, sp
	adds r0, #4
	str r0, [sp, #0x124]
	ldr r2, [r4, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _0801FA4C
	add r0, sp, #4
	ldr r1, [sp, #0x128]
	ldr r2, [sp, #0x110]
	ldr r3, [sp, #0x114]
	bl FUN_08020454
	b _0801FA54
	.align 2, 0
_0801FA48: .4byte gUnk_03001C80
_0801FA4C:
	add r0, sp, #4
	ldr r1, [sp, #0x128]
	bl FUN_08020404
_0801FA54:
	adds r3, r5, #0
	str r3, [sp, #0x108]
	movs r1, #0
	str r1, [sp, #0x10c]
	b _0801FC62
_0801FA5E:
	ldr r0, [sp, #0x10c]
	cmp r0, #0
	bne _0801FA8C
_0801FA64:
	ldrb r0, [r3]
	cmp r0, #0x40
	bne _0801FA8C
	adds r3, #1
	str r3, [sp, #0x108]
	ldrb r0, [r3]
	lsls r0, r0, #6
	ldr r1, _0801FAA0 @ => 0x03001080
	adds r1, r0, r1
	ldrb r0, [r1]
	adds r3, #1
	cmp r0, #0
	bne _0801FA80
	b _0801FC62
_0801FA80:
	adds r3, r1, #0
	movs r1, #1
	str r1, [sp, #0x10c]
	ldr r0, [sp, #0x108]
	adds r0, #1
	str r0, [sp, #0x108]
_0801FA8C:
	ldrb r0, [r3]
	cmp r0, #0xef
	bls _0801FAA4
	lsls r0, r0, #8
	adds r3, #1
	ldrb r1, [r3]
	orrs r1, r0
	ldr r7, [sp, #0x118]
	b _0801FAA8
	.align 2, 0
_0801FAA0: .4byte gUnk_03001080
_0801FAA4:
	ldr r7, [sp, #0x11c]
	ldrb r1, [r3]
_0801FAA8:
	ldrh r0, [r7, #2]
	subs r2, r1, r0
	cmp r2, #0
	blt _0801FABA
	ldrh r0, [r7, #4]
	ldrh r1, [r7, #2]
	subs r0, r0, r1
	cmp r2, r0
	ble _0801FABC
_0801FABA:
	movs r2, #1
_0801FABC:
	ldr r1, [r7, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, [r7, #0x10]
	adds r5, r0, r1
	movs r1, #0
	str r1, [sp, #0x120]
	ldr r0, [r7, #0xc]
	adds r0, r0, r2
	ldrb r0, [r0]
	mov r8, r0
	subs r1, #1
	add r8, r1
	adds r3, #1
	str r3, [sp, #0x134]
	cmp r0, #0
	bne _0801FAE2
	b _0801FC60
_0801FAE2:
	ldr r0, _0801FB3C @ => 0x03001C80
	ldr r0, [r0, #0x28]
	cmp r0, #1
	bne _0801FB64
	ldr r1, [sp, #0x104]
	lsls r0, r1, #3
	add r0, sp
	adds r0, #4
	adds r4, r0, r6
	ldrb r3, [r7]
	adds r0, r3, #0
	subs r3, #1
	mov r1, r8
	subs r1, #1
	str r1, [sp, #0x138]
	adds r6, #1
	str r6, [sp, #0x130]
	cmp r0, #0
	bne _0801FB0A
	b _0801FC0A
_0801FB0A:
	ldr r6, [sp, #0x120]
	cmp r6, #8
	bne _0801FB16
	movs r0, #0
	str r0, [sp, #0x120]
	adds r5, #1
_0801FB16:
	ldrb r1, [r5]
	ldr r6, [sp, #0x120]
	asrs r1, r6
	movs r0, #0xf
	ands r1, r0
	movs r2, #0
	cmp r1, #0
	beq _0801FB52
	ldr r6, _0801FB3C @ => 0x03001C80
	ldr r0, [r6, #0x38]
	cmp r0, #1
	beq _0801FB40
	cmp r0, #1
	blo _0801FB48
	cmp r0, #2
	bne _0801FB4C
	movs r0, #0
	mov sb, r0
	b _0801FB4A
	.align 2, 0
_0801FB3C: .4byte gUnk_03001C80
_0801FB40:
	movs r6, #3
	mov sb, r6
	cmp r1, #3
	beq _0801FB4C
_0801FB48:
	mov sb, r1
_0801FB4A:
	mov r2, sl
_0801FB4C:
	mov r1, sb
	adds r0, r1, r2
	strb r0, [r4]
_0801FB52:
	adds r4, #8
	ldr r6, [sp, #0x120]
	adds r6, #4
	str r6, [sp, #0x120]
	adds r0, r3, #0
	subs r3, #1
	cmp r0, #0
	bne _0801FB0A
	b _0801FC0A
_0801FB64:
	ldr r1, [sp, #0x104]
	lsls r0, r1, #3
	adds r0, r0, r6
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	mov r4, sp
	adds r4, r4, r0
	adds r4, #4
	ldrb r3, [r7]
	adds r0, r3, #0
	subs r3, #1
	mov r1, r8
	subs r1, #1
	str r1, [sp, #0x138]
	adds r1, r6, #1
	str r1, [sp, #0x130]
	cmp r0, #0
	beq _0801FC0A
	movs r0, #1
	mov ip, r0
	mov r1, ip
	ands r1, r6
	mov ip, r1
_0801FB94:
	ldr r6, [sp, #0x120]
	cmp r6, #8
	bne _0801FBA0
	movs r0, #0
	str r0, [sp, #0x120]
	adds r5, #1
_0801FBA0:
	ldrb r1, [r5]
	ldr r6, [sp, #0x120]
	asrs r1, r6
	movs r0, #0xf
	ands r1, r0
	movs r2, #0
	cmp r1, #0
	beq _0801FBFA
	ldr r6, _0801FBC8 @ => 0x03001C80
	ldr r0, [r6, #0x38]
	cmp r0, #1
	beq _0801FBCC
	cmp r0, #1
	blo _0801FBD4
	cmp r0, #2
	bne _0801FBD8
	movs r0, #0
	mov sb, r0
	b _0801FBD6
	.align 2, 0
_0801FBC8: .4byte gUnk_03001C80
_0801FBCC:
	movs r6, #3
	mov sb, r6
	cmp r1, #3
	beq _0801FBD8
_0801FBD4:
	mov sb, r1
_0801FBD6:
	mov r2, sl
_0801FBD8:
	mov r0, ip
	cmp r0, #0
	bne _0801FBEA
	ldrb r0, [r4]
	movs r1, #0xf0
	ands r1, r0
	mov r6, sb
	adds r0, r6, r2
	b _0801FBF6
_0801FBEA:
	ldrb r0, [r4]
	movs r1, #0xf
	ands r1, r0
	mov r6, sb
	adds r0, r6, r2
	lsls r0, r0, #4
_0801FBF6:
	orrs r1, r0
	strb r1, [r4]
_0801FBFA:
	adds r4, #4
	ldr r0, [sp, #0x120]
	adds r0, #4
	str r0, [sp, #0x120]
	adds r0, r3, #0
	subs r3, #1
	cmp r0, #0
	bne _0801FB94
_0801FC0A:
	ldr r6, [sp, #0x130]
	cmp r6, #8
	bne _0801FC54
	movs r6, #0
	ldr r1, [sp, #0x12c]
	str r1, [sp]
	ldr r0, [sp, #0x124]
	ldr r1, [sp, #0x128]
	ldr r2, [sp, #0x110]
	ldr r3, [sp, #0x114]
	bl FUN_0802050C
	ldr r0, [sp, #0x12c]
	ldr r1, [sp, #0x128]
	adds r0, r0, r1
	str r0, [sp, #0x12c]
	ldr r0, [sp, #0x110]
	adds r0, #2
	str r0, [sp, #0x110]
	ldr r0, _0801FC48 @ => 0x03001C80
	ldr r2, [r0, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _0801FC4C
	ldr r0, [sp, #0x124]
	ldr r2, [sp, #0x110]
	ldr r3, [sp, #0x114]
	bl FUN_08020454
	b _0801FC54
	.align 2, 0
_0801FC48: .4byte gUnk_03001C80
_0801FC4C:
	ldr r0, [sp, #0x124]
	ldr r1, [sp, #0x128]
	bl FUN_08020404
_0801FC54:
	mov r0, r8
	ldr r1, [sp, #0x138]
	mov r8, r1
	cmp r0, #0
	beq _0801FC60
	b _0801FAE2
_0801FC60:
	ldr r3, [sp, #0x134]
_0801FC62:
	ldrb r0, [r3]
	cmp r0, #0
	bne _0801FC6E
	ldr r1, [sp, #0x10c]
	cmp r1, #0
	beq _0801FC8A
_0801FC6E:
	ldr r1, [sp, #0x10c]
	cmp r1, #0
	bne _0801FC76
	b _0801FA64
_0801FC76:
	cmp r0, #0
	beq _0801FC7C
	b _0801FA5E
_0801FC7C:
	ldr r3, [sp, #0x108]
	movs r0, #0
	str r0, [sp, #0x10c]
	ldrb r0, [r3]
	cmp r0, #0
	beq _0801FC8A
	b _0801FA5E
_0801FC8A:
	cmp r6, #0
	ble _0801FCA6
	ldr r1, [sp, #0x12c]
	str r1, [sp]
	ldr r0, [sp, #0x124]
	ldr r1, [sp, #0x128]
	ldr r2, [sp, #0x110]
	ldr r3, [sp, #0x114]
	bl FUN_0802050C
	ldr r6, [sp, #0x12c]
	ldr r0, [sp, #0x128]
	adds r6, r6, r0
	str r6, [sp, #0x12c]
_0801FCA6:
	ldr r1, _0801FCC0 @ => 0x03001C80
	movs r0, #1
	str r0, [r1, #0x34]
	ldr r0, [sp, #0x12c]
	add sp, #0x13c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801FCC0: .4byte gUnk_03001C80

	thumb_func_start FUN_0801FCC4
FUN_0801FCC4: @ 0x0801FCC4
	push {r4, r5, lr}
	ldr r4, _0801FD20 @ => 0x080626DC
	lsls r5, r0, #3
	adds r2, r5, r4
	ldr r2, [r2]
	lsls r3, r0, #2
	adds r3, r3, r0
	lsls r3, r3, #3
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0801FD24 @ => 0x03001BB8
	adds r0, r0, r1
	adds r3, r3, r0
	ldrh r0, [r2]
	strh r0, [r3, #2]
	ldrh r0, [r2, #2]
	strh r0, [r3, #4]
	ldrb r0, [r2, #4]
	strb r0, [r3]
	adds r4, #4
	adds r5, r5, r4
	ldr r0, [r5]
	strb r0, [r3, #6]
	ldrb r0, [r2, #6]
	lsls r0, r0, #8
	ldrb r1, [r2, #7]
	adds r0, r0, r1
	adds r0, r2, r0
	str r0, [r3, #8]
	ldrb r0, [r2, #0xa]
	lsls r0, r0, #8
	ldrb r1, [r2, #0xb]
	adds r0, r0, r1
	adds r0, r2, r0
	str r0, [r3, #0xc]
	ldrb r0, [r2, #0xe]
	lsls r0, r0, #8
	ldrb r1, [r2, #0xf]
	adds r0, r0, r1
	adds r2, r2, r0
	str r2, [r3, #0x10]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801FD20: .4byte ROMREF_080626DC
_0801FD24: .4byte gUnk_03001BB8

	thumb_func_start FUN_0801FD28
FUN_0801FD28: @ 0x0801FD28
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r0, _0801FD58 @ => 0x03001C80
	ldr r0, [r0, #0x28]
	cmp r0, #1
	bne _0801FD5C
	movs r0, #8
_0801FD36:
	adds r4, r3, #7
	movs r5, #4
	subs r6, r0, #1
_0801FD3C:
	ldrb r1, [r3]
	ldrb r0, [r4]
	strb r0, [r3]
	strb r1, [r4]
	adds r3, #1
	subs r4, #1
	subs r5, #1
	cmp r5, #0
	bgt _0801FD3C
	adds r3, #4
	adds r0, r6, #0
	cmp r0, #0
	bgt _0801FD36
	b _0801FD8A
	.align 2, 0
_0801FD58: .4byte gUnk_03001C80
_0801FD5C:
	movs r0, #8
_0801FD5E:
	adds r4, r3, #3
	movs r5, #2
	subs r6, r0, #1
_0801FD64:
	ldrb r0, [r3]
	lsrs r2, r0, #4
	lsls r0, r0, #4
	orrs r2, r0
	ldrb r0, [r4]
	lsrs r1, r0, #4
	lsls r0, r0, #4
	orrs r1, r0
	strb r1, [r3]
	strb r2, [r4]
	adds r3, #1
	subs r4, #1
	subs r5, #1
	cmp r5, #0
	bgt _0801FD64
	adds r3, #2
	adds r0, r6, #0
	cmp r0, #0
	bgt _0801FD5E
_0801FD8A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start FUN_0801FD90
FUN_0801FD90: @ 0x0801FD90
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r7, #0
	bl FUN_08050820
	mov sb, r0
	movs r1, #0x40
	bl strchr
	cmp r0, #0
	beq _0801FE1A
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801FE1A
_0801FDB2:
	mov r1, sb
	adds r0, r1, r7
	ldrb r0, [r0]
	cmp r0, #0x40
	bne _0801FE08
	adds r7, #1
	adds r0, r1, r7
	ldrb r6, [r0]
	lsls r6, r6, #6
	ldr r0, _0801FE04 @ => 0x03001080
	adds r6, r6, r0
	adds r0, r6, #0
	bl strlen
	mov r8, r0
	adds r7, #1
	adds r4, r7, r0
	subs r4, #2
	add r4, sb
	mov r0, sb
	adds r5, r0, r7
	adds r0, r5, #0
	bl strlen
	adds r2, r0, #0
	adds r2, #1
	adds r0, r4, #0
	adds r1, r5, #0
	bl memmove
	subs r5, #2
	adds r0, r5, #0
	adds r1, r6, #0
	mov r2, r8
	bl memcpy
	subs r0, r7, #2
	mov r1, r8
	adds r7, r0, r1
	b _0801FE10
	.align 2, 0
_0801FE04: .4byte gUnk_03001080
_0801FE08:
	cmp r0, #0xef
	bls _0801FE0E
	adds r7, #1
_0801FE0E:
	adds r7, #1
_0801FE10:
	mov r1, sb
	adds r0, r1, r7
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801FDB2
_0801FE1A:
	mov r0, sb
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_0801FE28
FUN_0801FE28: @ 0x0801FE28
	push {r4, lr}
	movs r4, #0
_0801FE2C:
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0801FCC4
	adds r4, #1
	cmp r4, #4
	bls _0801FE2C
	ldr r0, _0801FE50 @ => 0x03001C80
	movs r1, #0
	movs r2, #0x3c
	bl FUN_0802CB40
	ldr r1, _0801FE54 @ => 0x03001DC0
	movs r0, #0
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801FE50: .4byte gUnk_03001C80
_0801FE54: .4byte gUnk_03001DC0

	thumb_func_start FUN_0801FE58
FUN_0801FE58: @ 0x0801FE58
	lsls r2, r0, #0x13
	lsrs r2, r2, #0x1b
	lsls r2, r2, #0xb
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r2, r2, r3
	lsls r1, r0, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xe
	adds r1, r1, r3
	ldr r3, _0801FE84 @ => 0x03001C80
	str r2, [r3, #0x18]
	str r2, [r3, #0x1c]
	str r1, [r3, #0x20]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x1f
	adds r1, #1
	lsls r1, r1, #5
	str r1, [r3, #0x24]
	lsrs r0, r0, #0x1f
	str r0, [r3, #0x28]
	bx lr
	.align 2, 0
_0801FE84: .4byte gUnk_03001C80

	thumb_func_start FUN_0801FE88
FUN_0801FE88: @ 0x0801FE88
	ldr r3, _0801FE9C @ => 0x03001C80
	str r0, [r3, #0x18]
	str r0, [r3, #0x1c]
	str r1, [r3, #0x20]
	adds r0, r2, #1
	lsls r0, r0, #5
	str r0, [r3, #0x24]
	str r2, [r3, #0x28]
	bx lr
	.align 2, 0
_0801FE9C: .4byte gUnk_03001C80

	thumb_func_start FUN_0801FEA0
FUN_0801FEA0: @ 0x0801FEA0
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r2, _0801FECC @ => 0x03001C80
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _0801FED0 @ => 0x03001BB8
	adds r3, r1, r0
	str r3, [r2]
	adds r0, #0x14
	adds r1, r1, r0
	str r1, [r2, #4]
	ldrb r0, [r3, #6]
	str r0, [r2, #0x14]
	ldr r0, [r2, #0x28]
	cmp r0, #1
	bne _0801FED4
	str r4, [r2, #8]
	movs r0, #0
	b _0801FEDE
	.align 2, 0
_0801FECC: .4byte gUnk_03001C80
_0801FED0: .4byte gUnk_03001BB8
_0801FED4:
	movs r0, #0xf
	ands r0, r4
	str r0, [r2, #8]
	asrs r0, r4, #4
	lsls r0, r0, #0xc
_0801FEDE:
	str r0, [r2, #0x10]
	str r5, [r2, #0xc]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_0801FEE8
FUN_0801FEE8: @ 0x0801FEE8
	ldr r1, _0801FEF0 @ => 0x03001C80
	str r0, [r1, #0x14]
	bx lr
	.align 2, 0
_0801FEF0: .4byte gUnk_03001C80

	thumb_func_start FUN_0801FEF4
FUN_0801FEF4: @ 0x0801FEF4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r6, #0
	ldrb r1, [r4]
	cmp r1, #0
	beq _0801FF52
	ldr r7, _0801FF34 @ => 0x03001080
_0801FF04:
	adds r0, r1, #0
	cmp r0, #0x40
	bne _0801FF38
	adds r4, #1
	ldrb r1, [r4]
	lsls r1, r1, #6
	adds r1, r1, r7
	adds r0, r5, #0
	bl strcpy
	ldrb r0, [r4]
	lsls r0, r0, #6
	adds r0, r0, r7
	bl strlen
	adds r6, r6, r0
	ldrb r0, [r4]
	lsls r0, r0, #6
	adds r0, r0, r7
	bl strlen
	adds r5, r5, r0
	adds r4, #1
	b _0801FF4C
	.align 2, 0
_0801FF34: .4byte gUnk_03001080
_0801FF38:
	strb r1, [r5]
	cmp r0, #0xef
	bls _0801FF46
	adds r5, #1
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r5]
_0801FF46:
	adds r5, #1
	adds r4, #1
	adds r6, #1
_0801FF4C:
	ldrb r1, [r4]
	cmp r1, #0
	bne _0801FF04
_0801FF52:
	movs r0, #0
	strb r0, [r5]
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0801FF60
FUN_0801FF60: @ 0x0801FF60
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0801FFAE
	ldr r6, _0801FF84 @ => 0x03001C80
_0801FF6E:
	cmp r0, #0x40
	bne _0801FF8C
	adds r4, #1
	ldrb r0, [r4]
	lsls r0, r0, #6
	ldr r1, _0801FF88 @ => 0x03001080
	adds r0, r0, r1
	bl FUN_0801FF60
	b _0801FFA4
	.align 2, 0
_0801FF84: .4byte gUnk_03001C80
_0801FF88: .4byte gUnk_03001080
_0801FF8C:
	ldrb r1, [r4]
	cmp r1, #0xef
	bls _0801FF9E
	lsls r0, r1, #8
	adds r4, #1
	ldrb r1, [r4]
	orrs r1, r0
	ldr r0, [r6, #4]
	b _0801FFA0
_0801FF9E:
	ldr r0, [r6]
_0801FFA0:
	bl FUN_080205F4
_0801FFA4:
	adds r5, r5, r0
	adds r4, #1
	ldrb r0, [r4]
	cmp r0, #0
	bne _0801FF6E
_0801FFAE:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0801FFB8
FUN_0801FFB8: @ 0x0801FFB8
	push {lr}
	movs r1, #0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801FFC8
	ldr r0, _0801FFD0 @ => 0x03001C80
	ldr r0, [r0]
	ldrb r1, [r0]
_0801FFC8:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0801FFD0: .4byte gUnk_03001C80

	thumb_func_start FUN_0801FFD4
FUN_0801FFD4: @ 0x0801FFD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	mov sl, r1
	adds r4, r2, #0
	mov sb, r3
	ldr r5, [sp, #0x30]
	ldr r7, [sp, #0x34]
	ldr r0, [sp, #0x3c]
	mov r8, r0
	ldr r0, _0802004C @ => 0x7FFFFFFF
	str r0, [sp, #0xc]
	ldr r0, [r7]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08020038
	ldr r0, _08020050 @ => 0x03001C80
	ldr r0, [r0, #0x14]
	cmp r5, r0
	blt _08020038
_08020004:
	str r7, [sp]
	ldr r0, [sp, #0x38]
	str r0, [sp, #4]
	add r0, sp, #0xc
	str r0, [sp, #8]
	adds r0, r6, #0
	mov r1, sl
	adds r2, r4, #0
	mov r3, sb
	bl FUN_080201CC
	adds r6, r0, #0
	ldr r0, _08020050 @ => 0x03001C80
	ldr r1, [r0, #0x14]
	adds r4, r4, r1
	cmp r4, r8
	blt _0802002A
	mov r0, r8
	subs r4, r4, r0
_0802002A:
	subs r5, r5, r1
	ldr r0, [r7]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08020038
	cmp r5, r1
	bge _08020004
_08020038:
	adds r0, r6, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802004C: .4byte 0x7FFFFFFF
_08020050: .4byte gUnk_03001C80

	thumb_func_start FUN_08020054
FUN_08020054: @ 0x08020054
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r2, [sp, #0x20]
	ldr r0, [r2]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08020088
	ldr r0, _08020094 @ => 0x03001C80
	ldr r1, [r0, #0x14]
	ldr r0, [sp, #0x1c]
	cmp r0, r1
	blt _08020088
	str r2, [sp]
	ldr r0, [sp, #0x24]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl FUN_080201CC
	adds r4, r0, #0
_08020088:
	adds r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08020094: .4byte gUnk_03001C80

	thumb_func_start FUN_08020098
FUN_08020098: @ 0x08020098
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r7, r1, #0
	adds r4, r2, #0
	adds r6, r3, #0
	ldr r0, _080200AC @ => 0x7FFFFFFF
	str r0, [sp, #0xc]
	b _080200D0
	.align 2, 0
_080200AC: .4byte 0x7FFFFFFF
_080200B0:
	add r0, sp, #0x24
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	add r0, sp, #0xc
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	adds r3, r6, #0
	bl FUN_080201CC
	adds r5, r0, #0
	ldr r0, _080200E4 @ => 0x03001C80
	ldr r0, [r0, #0x14]
	adds r4, r4, r0
_080200D0:
	ldr r0, [sp, #0x24]
	ldrb r0, [r0]
	cmp r0, #0
	bne _080200B0
	adds r0, r5, #0
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080200E4: .4byte gUnk_03001C80

	thumb_func_start FUN_080200E8
FUN_080200E8: @ 0x080200E8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r5, r0, #0
	adds r7, r1, #0
	adds r4, r2, #0
	adds r6, r3, #0
	ldr r0, _08020144 @ => 0x7FFFFFFF
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08020134
	ldr r0, _08020148 @ => 0x03001C80
	mov r8, r0
_08020108:
	ldr r2, [r4]
	add r0, sp, #0x28
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #4]
	add r0, sp, #0xc
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r1, r7, #0
	adds r3, r6, #0
	bl FUN_080201CC
	adds r5, r0, #0
	ldr r0, [r4]
	mov r2, r8
	ldr r1, [r2, #0x14]
	adds r0, r0, r1
	str r0, [r4]
	ldr r0, [sp, #0x28]
	ldrb r0, [r0]
	cmp r0, #0
	bne _08020108
_08020134:
	adds r0, r5, #0
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08020144: .4byte 0x7FFFFFFF
_08020148: .4byte gUnk_03001C80

	thumb_func_start FUN_0802014C
FUN_0802014C: @ 0x0802014C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r4, #0
	b _080201B6
_08020156:
	adds r0, r1, #0
	cmp r0, #0x40
	bne _080201A0
	adds r5, #1
	ldrb r0, [r5]
	lsls r0, r0, #6
	ldr r1, _0802019C @ => 0x03001080
	adds r3, r0, r1
	adds r5, #1
	ldrb r1, [r3]
	cmp r1, #0
	beq _080201B6
	cmp r2, #0
	beq _080201B6
_08020172:
	adds r0, r1, #0
	cmp r0, #0x40
	beq _0802018E
	cmp r0, #0xef
	bls _08020184
	strb r1, [r4]
	adds r3, #1
	adds r4, #1
	subs r2, #1
_08020184:
	ldrb r0, [r3]
	strb r0, [r4]
	adds r3, #1
	adds r4, #1
	subs r2, #1
_0802018E:
	ldrb r1, [r3]
	cmp r1, #0
	beq _080201B6
	cmp r2, #0
	bne _08020172
	b _080201B6
	.align 2, 0
_0802019C: .4byte gUnk_03001080
_080201A0:
	cmp r0, #0xef
	bls _080201AC
	strb r1, [r4]
	adds r5, #1
	adds r4, #1
	subs r2, #1
_080201AC:
	ldrb r0, [r5]
	strb r0, [r4]
	adds r5, #1
	adds r4, #1
	subs r2, #1
_080201B6:
	ldrb r1, [r5]
	cmp r1, #0
	beq _080201C0
	cmp r2, #0
	bne _08020156
_080201C0:
	movs r0, #0
	strb r0, [r4]
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_080201CC
FUN_080201CC: @ 0x080201CC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x64
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	adds r1, r3, #0
	ldr r4, [sp, #0x7c]
	ldr r5, [sp, #0x84]
	ldr r2, [r4]
	adds r0, r2, #0
	bl FUN_0801F7C0
	adds r3, r0, #0
	cmp r3, #0
	beq _08020258
	add r1, sp, #4
	ldr r2, [r4]
	cmp r2, r3
	beq _0802021E
	ldr r0, [r5]
	cmp r0, #0
	beq _0802021E
_080201FC:
	ldrb r0, [r2]
	cmp r0, #0x40
	bne _08020208
	strb r0, [r1]
	adds r2, #1
	adds r1, #1
_08020208:
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, #1
	adds r1, #1
	ldr r0, [r5]
	subs r0, #1
	str r0, [r5]
	cmp r2, r3
	beq _0802021E
	cmp r0, #0
	bne _080201FC
_0802021E:
	movs r0, #0
	strb r0, [r1]
	str r2, [r4]
	ldr r0, [sp, #0x80]
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	mov r2, r8
	add r3, sp, #4
	bl FUN_0801F8B8
	adds r6, r0, #0
	ldr r1, [r4]
	ldrb r0, [r1]
	cmp r0, #0xa
	bne _08020242
	adds r0, r1, #1
	str r0, [r4]
_08020242:
	ldr r2, [r4]
	ldrb r0, [r2]
	cmp r0, #0x20
	bne _08020258
_0802024A:
	adds r1, r2, #0
	adds r0, r1, #1
	str r0, [r4]
	adds r2, r0, #0
	ldrb r0, [r1, #1]
	cmp r0, #0x20
	beq _0802024A
_08020258:
	adds r0, r6, #0
	add sp, #0x64
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08020268
FUN_08020268: @ 0x08020268
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, r1, #0
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	cmp r4, r2
	bgt _080202A0
	ldr r1, _080202A8 @ => 0x03001C80
	lsls r0, r0, #5
	adds r0, r0, r4
	lsls r0, r0, #1
	ldr r3, [r1, #0x18]
	adds r3, r3, r0
	subs r0, r2, r4
	adds r0, #1
	lsls r0, r0, #1
	mov r1, sp
	strh r5, [r1]
	ldr r2, _080202AC @ => 0x040000D4
	str r1, [r2]
	str r3, [r2, #4]
	asrs r0, r0, #1
	movs r1, #0x81
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_080202A0:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080202A8: .4byte gUnk_03001C80
_080202AC: .4byte 0x040000D4

	thumb_func_start FUN_080202B0
FUN_080202B0: @ 0x080202B0
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, r1, #0
	cmp r4, r2
	bgt _080202E8
	ldr r1, _080202F0 @ => 0x03001C80
	lsls r0, r0, #5
	adds r0, r0, r4
	lsls r0, r0, #1
	ldr r3, [r1, #0x18]
	adds r3, r3, r0
	subs r0, r2, r4
	adds r0, #1
	lsls r0, r0, #1
	mov r2, sp
	movs r1, #0
	strh r1, [r2]
	ldr r2, _080202F4 @ => 0x040000D4
	mov r1, sp
	str r1, [r2]
	str r3, [r2, #4]
	asrs r0, r0, #1
	movs r1, #0x81
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_080202E8:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080202F0: .4byte gUnk_03001C80
_080202F4: .4byte 0x040000D4

	thumb_func_start FUN_080202F8
FUN_080202F8: @ 0x080202F8
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #6
	ldr r0, _08020308 @ => 0x03001CC0
	adds r1, r1, r0
	cmp r2, #0
	beq _08020318
	b _08020312
	.align 2, 0
_08020308: .4byte gStringArgs
_0802030C:
	strb r0, [r1]
	adds r2, #1
	adds r1, #1
_08020312:
	ldrb r0, [r2]
	cmp r0, #0
	bne _0802030C
_08020318:
	movs r0, #0
	strb r0, [r1]
	pop {r0}
	bx r0

	thumb_func_start FUN_08020320
FUN_08020320: @ 0x08020320
	push {lr}
	ldr r2, _0802032C @ => 0x03001CC0
	cmp r0, #0
	beq _0802033C
	b _08020336
	.align 2, 0
_0802032C: .4byte gStringArgs
_08020330:
	strb r1, [r2]
	adds r0, #1
	adds r2, #1
_08020336:
	ldrb r1, [r0]
	cmp r1, #0
	bne _08020330
_0802033C:
	movs r0, #0
	strb r0, [r2]
	pop {r0}
	bx r0

	thumb_func_start FUN_08020344
FUN_08020344: @ 0x08020344
	push {lr}
	adds r1, r0, #0
	ldr r0, _08020354 @ => 0x03001CC0
	adds r2, r0, #0
	adds r2, #0x40
	cmp r1, #0
	beq _08020364
	b _0802035E
	.align 2, 0
_08020354: .4byte gStringArgs
_08020358:
	strb r0, [r2]
	adds r1, #1
	adds r2, #1
_0802035E:
	ldrb r0, [r1]
	cmp r0, #0
	bne _08020358
_08020364:
	movs r0, #0
	strb r0, [r2]
	pop {r0}
	bx r0

	thumb_func_start FUN_0802036C
FUN_0802036C: @ 0x0802036C
	push {lr}
	adds r1, r0, #0
	ldr r0, _0802037C @ => 0x03001CC0
	adds r2, r0, #0
	adds r2, #0x80
	cmp r1, #0
	beq _0802038C
	b _08020386
	.align 2, 0
_0802037C: .4byte gStringArgs
_08020380:
	strb r0, [r2]
	adds r1, #1
	adds r2, #1
_08020386:
	ldrb r0, [r1]
	cmp r0, #0
	bne _08020380
_0802038C:
	movs r0, #0
	strb r0, [r2]
	pop {r0}
	bx r0

	thumb_func_start FUN_08020394
FUN_08020394: @ 0x08020394
	push {lr}
	lsls r1, r1, #6
	ldr r2, _080203A4 @ => 0x03001CC0
	adds r1, r1, r2
	bl FUN_080504E4
	pop {r0}
	bx r0
	.align 2, 0
_080203A4: .4byte gStringArgs

	thumb_func_start FUN_080203A8
FUN_080203A8: @ 0x080203A8
	push {lr}
	ldr r1, _080203B4 @ => 0x03001CC0
	bl FUN_080504E4
	pop {r0}
	bx r0
	.align 2, 0
_080203B4: .4byte gStringArgs

	thumb_func_start FUN_080203B8
FUN_080203B8: @ 0x080203B8
	push {lr}
	ldr r1, _080203C8 @ => 0x03001CC0
	adds r1, #0x40
	bl FUN_080504E4
	pop {r0}
	bx r0
	.align 2, 0
_080203C8: .4byte gStringArgs

	thumb_func_start FUN_080203CC
FUN_080203CC: @ 0x080203CC
	push {lr}
	ldr r1, _080203DC @ => 0x03001CC0
	adds r1, #0x80
	bl FUN_080504E4
	pop {r0}
	bx r0
	.align 2, 0
_080203DC: .4byte gStringArgs

	thumb_func_start FUN_080203E0
FUN_080203E0: @ 0x080203E0
	ldr r0, _080203E8 @ => 0x03001C80
	ldr r0, [r0, #0x14]
	bx lr
	.align 2, 0
_080203E8: .4byte gUnk_03001C80

	thumb_func_start FUN_080203EC
FUN_080203EC: @ 0x080203EC
	ldr r1, _080203F4 @ => 0x03001C80
	str r0, [r1, #0x38]
	bx lr
	.align 2, 0
_080203F4: .4byte gUnk_03001C80

	thumb_func_start FUN_080203F8
FUN_080203F8: @ 0x080203F8
	ldr r1, _08020400 @ => 0x03001DC0
	str r0, [r1]
	bx lr
	.align 2, 0
_08020400: .4byte gUnk_03001DC0

	thumb_func_start FUN_08020404
FUN_08020404: @ 0x08020404
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldr r0, _08020424 @ => 0x03001C80
	ldr r0, [r0, #0x28]
	cmp r0, #1
	bne _08020428
	lsls r0, r2, #0x18
	lsls r1, r2, #0x10
	adds r0, r0, r1
	lsls r1, r2, #8
	adds r0, r0, r1
	adds r2, r2, r0
	lsls r1, r3, #4
	b _0802043A
	.align 2, 0
_08020424: .4byte gUnk_03001C80
_08020428:
	movs r0, #0xf
	ands r2, r0
	lsls r0, r2, #4
	adds r2, r2, r0
	lsls r0, r2, #8
	adds r2, r2, r0
	lsls r0, r2, #0x10
	adds r2, r2, r0
	lsls r1, r3, #3
_0802043A:
	subs r1, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0802044C
_08020444:
	stm r4!, {r2}
	subs r1, #1
	cmp r1, r0
	bne _08020444
_0802044C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08020454
FUN_08020454: @ 0x08020454
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	mov sl, r3
	subs r4, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _080204FC
	mov sb, r0
_08020474:
	ldrh r3, [r5]
	ldr r0, _080204E4 @ => 0x000003FF
	adds r1, r0, #0
	ands r1, r3
	ldr r0, _080204E8 @ => 0x03001C80
	ldr r2, [r0, #0x24]
	adds r0, r1, #0
	muls r0, r2, r0
	mov r1, sl
	adds r6, r1, r0
	lsrs r2, r2, #2
	subs r2, #1
	subs r4, #1
	str r4, [sp]
	adds r4, r5, #0
	adds r4, #0x40
	cmp r2, sb
	beq _080204AE
	movs r1, #1
	rsbs r1, r1, #0
_0802049C:
	ldm r6!, {r0}
	mov r7, r8
	adds r7, #4
	mov r8, r7
	subs r7, #4
	stm r7!, {r0}
	subs r2, #1
	cmp r2, r1
	bne _0802049C
_080204AE:
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080204C6
	ldr r7, _080204E8 @ => 0x03001C80
	ldr r0, [r7, #0x24]
	mov r1, r8
	subs r0, r1, r0
	bl FUN_0801FD28
_080204C6:
	ldr r0, _080204EC @ => 0x03001DC0
	ldr r0, [r0]
	cmp r0, #0
	beq _080204F4
	ldr r2, _080204F0 @ => 0xFFFFF800
	adds r1, r2, #0
	ands r1, r5
	adds r5, r4, #0
	adds r0, r4, #0
	ands r0, r2
	cmp r1, r0
	beq _080204F6
	adds r5, r4, r2
	b _080204F6
	.align 2, 0
_080204E4: .4byte 0x000003FF
_080204E8: .4byte gUnk_03001C80
_080204EC: .4byte gUnk_03001DC0
_080204F0: .4byte 0xFFFFF800
_080204F4:
	adds r5, r4, #0
_080204F6:
	ldr r4, [sp]
	cmp r4, sb
	bne _08020474
_080204FC:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_0802050C
FUN_0802050C: @ 0x0802050C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	adds r4, r1, #0
	str r3, [sp]
	ldr r3, [sp, #0x28]
	subs r4, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _080205BE
	mov r8, r0
	ldr r0, _08020574 @ => 0x03001C80
	mov sl, r0
_08020530:
	ldr r5, _08020574 @ => 0x03001C80
	ldr r1, [r5, #0x24]
	adds r0, r3, #0
	muls r0, r1, r0
	ldr r7, [sp]
	adds r6, r7, r0
	lsrs r1, r1, #2
	subs r1, #1
	subs r4, #1
	mov ip, r4
	adds r4, r2, #0
	adds r4, #0x40
	adds r0, r3, #1
	str r0, [sp, #4]
	cmp r1, r8
	beq _08020566
	movs r5, #1
	rsbs r5, r5, #0
_08020554:
	mov r7, sb
	adds r7, #4
	mov sb, r7
	subs r7, #4
	ldm r7!, {r0}
	stm r6!, {r0}
	subs r1, #1
	cmp r1, r5
	bne _08020554
_08020566:
	mov r1, sl
	ldr r0, [r1, #0x28]
	cmp r0, #1
	bne _08020578
	strh r3, [r2]
	b _08020590
	.align 2, 0
_08020574: .4byte gUnk_03001C80
_08020578:
	ldr r0, [r1, #0xc]
	cmp r0, r8
	bne _08020588
	ldrh r1, [r2]
	movs r0, #0xf0
	lsls r0, r0, #8
	ands r0, r1
	b _0802058C
_08020588:
	mov r1, sl
	ldr r0, [r1, #0x10]
_0802058C:
	orrs r0, r3
	strh r0, [r2]
_08020590:
	ldr r3, _080205AC @ => 0x03001DC0
	ldr r0, [r3]
	cmp r0, #0
	beq _080205B4
	ldr r1, _080205B0 @ => 0xFFFFF800
	ands r1, r2
	adds r2, r4, #0
	adds r0, r4, #0
	ldr r5, _080205B0 @ => 0xFFFFF800
	ands r0, r5
	cmp r1, r0
	beq _080205B6
	adds r2, r4, r5
	b _080205B6
	.align 2, 0
_080205AC: .4byte gUnk_03001DC0
_080205B0: .4byte 0xFFFFF800
_080205B4:
	adds r2, r4, #0
_080205B6:
	ldr r3, [sp, #4]
	mov r4, ip
	cmp r4, r8
	bne _08020530
_080205BE:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080205D0
FUN_080205D0: @ 0x080205D0
	push {lr}
	adds r3, r0, #0
	adds r0, r2, #0
	cmp r2, #0
	bge _080205DC
	adds r0, r2, #7
_080205DC:
	asrs r2, r0, #3
	adds r0, r1, #0
	cmp r1, #0
	bge _080205E6
	adds r0, r1, #7
_080205E6:
	asrs r1, r0, #3
	lsls r0, r2, #5
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r3, r0
	pop {r1}
	bx r1

	thumb_func_start FUN_080205F4
FUN_080205F4: @ 0x080205F4
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0
	cmp r1, #0
	beq _0802061E
	ldrh r3, [r2, #2]
	subs r1, r1, r3
	cmp r1, #0
	blt _0802061A
	ldrh r0, [r2, #4]
	subs r0, r0, r3
	cmp r1, r0
	bgt _0802061A
	ldr r0, [r2, #0xc]
	adds r0, r0, r1
	ldrb r0, [r0]
	b _0802061E
_0802061A:
	ldr r0, [r2, #0xc]
	ldrb r0, [r0, #1]
_0802061E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08020624
FUN_08020624: @ 0x08020624
	push {lr}
	adds r1, r0, #0
	ldr r0, _08020634 @ => 0x03001CC0
	adds r2, r0, #0
	adds r2, #0xc0
	cmp r1, #0
	beq _08020644
	b _0802063E
	.align 2, 0
_08020634: .4byte gStringArgs
_08020638:
	strb r0, [r2]
	adds r1, #1
	adds r2, #1
_0802063E:
	ldrb r0, [r1]
	cmp r0, #0
	bne _08020638
_08020644:
	movs r0, #0
	strb r0, [r2]
	pop {r0}
	bx r0

	thumb_func_start FUN_0802064C
FUN_0802064C: @ 0x0802064C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov r8, r0
	mov sb, r2
	adds r6, r3, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	adds r5, r4, #0
	cmp r2, #0x1e
	beq _08020672
	movs r0, #0x30
	bl FUN_080012D8
	adds r7, r0, #0
	cmp r7, #0
	bne _08020676
_08020672:
	movs r0, #0
	b _080207DC
_08020676:
	mov r0, r8
	ldrh r1, [r0, #8]
	subs r0, r1, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08020690
	mov r0, r8
	adds r1, r4, #0
	mov r2, sp
	bl FUN_08001A84
	b _080206A6
_08020690:
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _080206A4
	mov r0, r8
	movs r1, #1
	adds r2, r5, #0
	mov r3, sp
	bl FUN_08001AB0
	b _080206A6
_080206A4:
	movs r0, #0
_080206A6:
	cmp r0, #1
	bne _080206B6
	ldr r1, [sp]
	ldr r2, [sp, #4]
	adds r0, r7, #0
	bl FUN_08001728
	b _080206C2
_080206B6:
	mov r2, r8
	ldr r1, [r2, #0x18]
	ldr r2, [r2, #0x1c]
	adds r0, r7, #0
	bl FUN_08001728
_080206C2:
	movs r1, #0
	str r1, [r7, #0x64]
	mov r2, r8
	ldr r0, [r2, #0x70]
	subs r0, #1
	str r0, [r7, #0x70]
	str r0, [r7, #0x68]
	ldr r0, [r2, #0x74]
	adds r0, #1
	str r0, [r7, #0x74]
	str r0, [r7, #0x6c]
	ldr r0, _08020744 @ => 0x00040019
	str r0, [r7, #0xc]
	mov r0, sb
	strh r0, [r7, #0xa]
	movs r2, #0xb2
	lsls r2, r2, #1
	adds r0, r7, r2
	mov r2, sb
	strh r2, [r0]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r7, r2
	mov r2, r8
	str r2, [r0]
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r0, r7, r2
	str r6, [r0]
	adds r2, #4
	adds r0, r7, r2
	str r1, [r0]
	subs r2, #8
	adds r0, r7, r2
	str r1, [r0]
	adds r0, r7, #0
	bl FUN_08001FB0
	mov r0, sb
	lsls r6, r0, #3
	subs r5, r6, r0
	lsls r5, r5, #2
	ldr r4, _08020748 @ => 0x0806274C
	adds r1, r5, r4
	adds r0, r7, #0
	bl FUN_080015B8
	adds r4, #0x10
	adds r5, r5, r4
	ldr r1, [r5]
	adds r0, r7, #0
	movs r2, #0
	bl FUN_080018F4
	ldrh r0, [r7, #0xa]
	cmp r0, #0x10
	bne _08020770
	movs r0, #0x80
	lsls r0, r0, #1
	bl FUN_080213F8
	cmp r0, #1
	bne _08020750
	ldr r1, _0802074C @ => 0x08062730
	b _08020764
	.align 2, 0
_08020744: .4byte 0x00040019
_08020748: .4byte ROMREF_0806274C
_0802074C: .4byte ROMREF_08062730
_08020750:
	ldrh r0, [r7, #0xa]
	cmp r0, #0x10
	bne _08020770
	movs r0, #0x92
	lsls r0, r0, #2
	bl FUN_080213F8
	cmp r0, #1
	bne _08020770
	ldr r1, _0802076C @ => 0x0806272C
_08020764:
	adds r0, r7, #0
	bl FUN_0803EF14
	b _0802078C
	.align 2, 0
_0802076C: .4byte ROMREF_0806272C
_08020770:
	ldr r1, _080207EC @ => 0x0806274C
	mov r2, sb
	subs r0, r6, r2
	lsls r0, r0, #2
	adds r1, #0x14
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r7, #0
	bl FUN_08048E24
	adds r1, r0, #0
	adds r0, r7, #0
	bl FUN_0803EF14
_0802078C:
	ldr r0, _080207F0 @ => FUN_080207F4
	str r0, [r7, #0x50]
	mov r0, r8
	adds r0, #0xa9
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	adds r0, r7, #0
	bl FUN_080017B8
	mov r0, sb
	cmp r0, #3
	bhi _080207B6
	cmp r0, #1
	blo _080207B6
	adds r2, r7, #0
	adds r2, #0xdb
	ldrb r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2]
_080207B6:
	ldr r0, _080207EC @ => 0x0806274C
	mov r2, sb
	subs r1, r6, r2
	lsls r1, r1, #2
	adds r0, #0x18
	adds r1, r1, r0
	ldr r1, [r1]
	movs r0, #0x8c
	lsls r0, r0, #1
	cmp r1, r0
	bhi _080207DA
	adds r0, r1, #0
	bl FUN_0804DE0C
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r1, r7, r2
	str r0, [r1]
_080207DA:
	adds r0, r7, #0
_080207DC:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080207EC: .4byte ROMREF_0806274C
_080207F0: .4byte FUN_080207F4

	thumb_func_start FUN_080207F4
FUN_080207F4: @ 0x080207F4
	push {lr}
	adds r2, r0, #0
	movs r3, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _08020870
	cmp r0, #1
	bgt _08020810
	cmp r0, #0
	beq _08020816
	b _0802089A
_08020810:
	cmp r0, #4
	beq _08020886
	b _0802089A
_08020816:
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _08020836
	subs r1, #8
	adds r0, r2, r1
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08020862
	b _08020860
_08020836:
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08020860
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _08020862
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08020862
_08020860:
	movs r3, #1
_08020862:
	cmp r3, #1
	bne _0802089A
	adds r0, r2, #0
	movs r1, #1
	bl FUN_08001FB0
	b _0802089A
_08020870:
	ldr r0, [r2, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0xc]
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	bl FUN_0804E03C
	b _0802089A
_08020886:
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0802089A
	adds r0, r2, #0
	movs r1, #1
	bl FUN_08001FB0
_0802089A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080208A0
FUN_080208A0: @ 0x080208A0
	adds r3, r0, #0
	movs r0, #0xa0
	lsls r0, r0, #1
	adds r2, r3, r0
	movs r0, #1
	str r0, [r2]
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r0, r3, r2
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start FUN_080208B8
FUN_080208B8: @ 0x080208B8
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08009B04
	adds r5, r0, #0
	bl FUN_080012FC
	adds r4, r0, #0
	cmp r4, #0
	beq _08020944
	ldr r0, [r5]
	strh r0, [r4, #8]
	ldrb r0, [r5, #0xa]
	strh r0, [r4, #0xa]
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrb r0, [r5, #0xb]
	str r0, [r1]
	movs r2, #0
	ldrh r0, [r5, #8]
	cmp r0, #0
	beq _080208F6
	ldrb r0, [r5, #8]
	ldrb r1, [r5, #9]
	bl FUN_08009B4C
	adds r2, r0, #0
_080208F6:
	cmp r2, #0
	beq _08020914
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	str r2, [r0]
	ldr r1, [r2, #0x18]
	ldr r2, [r2, #0x1c]
	adds r0, r4, #0
	bl FUN_08001728
	adds r0, r4, #0
	bl FUN_0803977C
	b _0802091C
_08020914:
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	str r2, [r0]
_0802091C:
	movs r0, #4
	ldrsh r1, [r5, r0]
	movs r0, #6
	ldrsh r2, [r5, r0]
	adds r0, r4, #0
	bl FUN_08001734
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001FB0
	ldr r0, _0802094C @ => FUN_08020954
	str r0, [r4, #0x50]
	adds r0, r4, #0
	bl FUN_0803977C
	ldr r1, _08020950 @ => 0x80062008
	adds r0, r4, #0
	bl FUN_08002038
_08020944:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802094C: .4byte FUN_08020954
_08020950: .4byte 0x80062008

	thumb_func_start FUN_08020954
FUN_08020954: @ 0x08020954
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _080209DE
	cmp r0, #1
	bgt _0802096E
	cmp r0, #0
	beq _08020974
	b _080209E4
_0802096E:
	cmp r0, #3
	beq _080209BA
	b _080209E4
_08020974:
	movs r0, #0x98
	lsls r0, r0, #1
	adds r5, r4, r0
	ldr r2, [r5]
	cmp r2, #0
	beq _080209E4
	ldr r0, [r2, #0xc]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08020994
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08001FB0
	b _080209E4
_08020994:
	ldr r1, [r2, #0x18]
	ldr r2, [r2, #0x1c]
	adds r0, r4, #0
	bl FUN_08001728
	adds r0, r4, #0
	bl FUN_0803977C
	ldr r0, [r5]
	ldr r0, [r0, #0x70]
	subs r0, #1
	str r0, [r4, #0x70]
	str r0, [r4, #0x68]
	ldr r0, [r5]
	ldr r0, [r0, #0x74]
	adds r0, #1
	str r0, [r4, #0x74]
	str r0, [r4, #0x6c]
	b _080209E4
_080209BA:
	ldrh r2, [r4, #0xa]
	movs r3, #0
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _080209CC
	movs r3, #1
_080209CC:
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0802064C
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001FB0
	b _080209E4
_080209DE:
	adds r0, r4, #0
	bl FUN_080040DC
_080209E4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080209EC
FUN_080209EC: @ 0x080209EC
	push {lr}
	movs r1, #3
	bl FUN_08001FB0
	pop {r0}
	bx r0

	thumb_func_start FUN_080209F8
FUN_080209F8: @ 0x080209F8
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r4, _08020A70 @ => 0x03003E0C
	mov r0, sp
	adds r1, r4, #0
	movs r2, #0xc
	bl FUN_0802CBAC
	adds r0, r4, #0
	subs r0, #0x1c
	movs r2, #0x81
	lsls r2, r2, #3
	movs r1, #0
	bl FUN_0802CB40
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0xc
	bl FUN_0802CBAC
	adds r0, r4, #0
	adds r0, #0x3c
	bl FUN_08025FE0
	ldr r5, _08020A74 @ => 0x03004200
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x28
	bl FUN_0802CB40
	ldr r2, _08020A78 @ => 0x030042B0
	ldrh r1, [r2, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	movs r1, #0xd0
	strb r1, [r0, #0x10]
	movs r0, #1
	strh r0, [r2, #4]
	ldr r1, _08020A7C @ => 0x030043A0
	movs r0, #0x31
	str r0, [r1]
	movs r0, #2
	movs r1, #0
	bl FUN_0802123C
	adds r0, r4, #0
	subs r0, #0x10
	movs r1, #0
	movs r2, #0x10
	bl FUN_0802CB40
	ldr r0, _08020A80 @ => 0x08062AA0
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08020A70: .4byte gUnk_03003E0C
_08020A74: .4byte gUnk_03004200
_08020A78: .4byte gUnk_030042B0
_08020A7C: .4byte gUnk_030043A0
_08020A80: .4byte ROMREF_08062AA0

	thumb_func_start FUN_08020A84
FUN_08020A84: @ 0x08020A84
	push {r4, r5, lr}
	ldr r5, _08020BFC @ => 0x03003DF0
	ldr r0, _08020C00 @ => 0x000003F7
	adds r1, r5, r0
	movs r0, #0xb
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #6
	bl FUN_08044558
	adds r0, r5, #0
	adds r0, #8
	movs r1, #3
	bl FUN_08044558
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08020AB6
	movs r0, #0xff
	lsls r0, r0, #0x18
	orrs r1, r0
	str r1, [r5, #8]
_08020AB6:
	movs r1, #0xcc
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #1
	bl FUN_08044558
	ldr r1, _08020C04 @ => 0x00000372
	adds r0, r5, r1
	movs r1, #2
	bl FUN_08044558
	movs r1, #0xd7
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #1
	bl FUN_08044558
	adds r0, r5, #0
	adds r0, #0xc
	bl FUN_08040A04
	adds r0, r5, #0
	adds r0, #0x58
	bl FUN_080254E4
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl FUN_0801E170
	ldr r1, _08020C08 @ => 0x03004228
	movs r0, #0xff
	strb r0, [r1]
	ldr r4, _08020C0C @ => 0x0300420B
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08044558
	adds r0, r4, #1
	movs r1, #2
	bl FUN_08044558
	adds r4, #3
	adds r0, r4, #0
	movs r1, #2
	bl FUN_08044558
	ldr r1, _08020C10 @ => 0x000003F6
	adds r0, r5, r1
	movs r1, #1
	bl FUN_08044558
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #1
	bl FUN_08044558
	ldr r1, _08020C14 @ => 0x000003FA
	adds r0, r5, r1
	movs r1, #1
	bl FUN_08044598
	movs r1, #0xdb
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #4
	bl FUN_08044558
	movs r1, #0xcd
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #0x14
	bl FUN_08044558
	movs r1, #0xd6
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #2
	bl FUN_08044558
	bl FUN_0800D268
	bl FUN_08051D5C
	bl FUN_08038398
	bl FUN_080410A8
	ldr r1, _08020C18 @ => 0x00000404
	adds r0, r5, r1
	movs r1, #1
	bl FUN_08044558
	bl FUN_08044A3C
	bl FUN_0803B530
	bl FUN_08047890
	bl FUN_08014824
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r5, r1
	bl FUN_0804C43C
	bl FUN_0803AB24
	bl FUN_0801ECA0
	movs r1, #0xfe
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #1
	bl FUN_08044558
	ldr r1, _08020C1C @ => 0x00000405
	adds r0, r5, r1
	movs r1, #1
	bl FUN_08044558
	ldr r1, _08020C20 @ => 0x0000036A
	adds r0, r5, r1
	movs r1, #1
	bl FUN_08044558
	ldr r1, _08020C24 @ => 0x00000376
	adds r0, r5, r1
	movs r1, #0x80
	bl FUN_08044558
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #8
	bl FUN_08044558
	movs r1, #0xd3
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #4
	bl FUN_08044558
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #4
	bl FUN_08044558
	ldr r1, _08020C28 @ => 0x0000035A
	adds r0, r5, r1
	movs r1, #1
	bl FUN_08044558
	ldr r0, _08020C2C @ => 0x000003F9
	adds r1, r5, r0
	movs r0, #0x27
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08020BFC: .4byte gUnk_03003DF0
_08020C00: .4byte 0x000003F7
_08020C04: .4byte 0x00000372
_08020C08: .4byte gUnk_03004228
_08020C0C: .4byte gUnk_0300420B
_08020C10: .4byte 0x000003F6
_08020C14: .4byte 0x000003FA
_08020C18: .4byte 0x00000404
_08020C1C: .4byte 0x00000405
_08020C20: .4byte 0x0000036A
_08020C24: .4byte 0x00000376
_08020C28: .4byte 0x0000035A
_08020C2C: .4byte 0x000003F9

	thumb_func_start FUN_08020C30
FUN_08020C30: @ 0x08020C30
	push {r4, r5, lr}
	ldr r5, _08020D84 @ => 0x03003DF0
	adds r0, r5, #0
	movs r1, #6
	bl FUN_08044644
	adds r0, r5, #0
	adds r0, #8
	movs r1, #3
	bl FUN_08044644
	movs r1, #0xcc
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #1
	bl FUN_08044644
	ldr r2, _08020D88 @ => 0x00000372
	adds r0, r5, r2
	movs r1, #2
	bl FUN_08044644
	movs r1, #0xd7
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #1
	bl FUN_08044644
	adds r0, r5, #0
	adds r0, #0xc
	bl FUN_08040A40
	adds r0, r5, #0
	adds r0, #0x58
	bl FUN_08025634
	movs r2, #0xa3
	lsls r2, r2, #2
	adds r0, r5, r2
	bl FUN_0801E164
	ldr r4, _08020D8C @ => 0x0300420B
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08044644
	adds r0, r4, #1
	movs r1, #2
	bl FUN_08044644
	adds r4, #3
	adds r0, r4, #0
	movs r1, #2
	bl FUN_08044644
	ldr r1, _08020D90 @ => 0x000003F6
	adds r0, r5, r1
	movs r1, #1
	bl FUN_08044644
	movs r2, #0xd8
	lsls r2, r2, #2
	adds r0, r5, r2
	movs r1, #1
	bl FUN_08044644
	ldr r1, _08020D94 @ => 0x000003FA
	adds r0, r5, r1
	movs r1, #1
	bl FUN_08044308
	movs r2, #0xdb
	lsls r2, r2, #2
	adds r0, r5, r2
	movs r1, #4
	bl FUN_08044644
	movs r1, #0xcd
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #0x14
	bl FUN_08044644
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r0, r5, r2
	movs r1, #2
	bl FUN_08044644
	bl FUN_0800D238
	bl FUN_08051D70
	bl FUN_080383AC
	bl FUN_08041094
	ldr r1, _08020D98 @ => 0x00000404
	adds r0, r5, r1
	movs r1, #1
	bl FUN_08044644
	bl FUN_08044A88
	bl FUN_0803B4F0
	bl FUN_080478B0
	bl FUN_08014860
	movs r2, #0x85
	lsls r2, r2, #2
	adds r0, r5, r2
	bl FUN_0804C430
	bl FUN_0803AAA0
	bl FUN_0801EC8C
	movs r1, #0xfe
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #1
	bl FUN_08044644
	ldr r2, _08020D9C @ => 0x00000405
	adds r0, r5, r2
	movs r1, #1
	bl FUN_08044558
	ldr r1, _08020DA0 @ => 0x0000036A
	adds r0, r5, r1
	movs r1, #1
	bl FUN_08044644
	ldr r2, _08020DA4 @ => 0x00000376
	adds r0, r5, r2
	movs r1, #0x80
	bl FUN_08044644
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #8
	bl FUN_08044644
	movs r2, #0xd3
	lsls r2, r2, #2
	adds r0, r5, r2
	movs r1, #4
	bl FUN_08044644
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #4
	bl FUN_08044644
	ldr r0, _08020DA8 @ => 0x030043A0
	ldr r1, [r0]
	ldr r2, _08020DAC @ => 0x0000035A
	adds r0, r5, r2
	strb r1, [r0]
	movs r1, #1
	bl FUN_08044644
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08020D84: .4byte gUnk_03003DF0
_08020D88: .4byte 0x00000372
_08020D8C: .4byte gUnk_0300420B
_08020D90: .4byte 0x000003F6
_08020D94: .4byte 0x000003FA
_08020D98: .4byte 0x00000404
_08020D9C: .4byte 0x00000405
_08020DA0: .4byte 0x0000036A
_08020DA4: .4byte 0x00000376
_08020DA8: .4byte gUnk_030043A0
_08020DAC: .4byte 0x0000035A

	thumb_func_start FUN_08020DB0
FUN_08020DB0: @ 0x08020DB0
	push {r4, r5, lr}
	cmp r0, #1
	beq _08020DFC
	cmp r0, #1
	blo _08020DC2
	cmp r0, #2
	beq _08020E36
	movs r2, #0
	b _08020E74
_08020DC2:
	ldr r0, _08020DDC @ => 0x03003DF0
	ldr r2, _08020DE0 @ => 0x0000020E
	adds r3, r0, r2
	ldrh r2, [r3]
	adds r1, r2, r1
	ldr r4, _08020DE4 @ => 0x0000FFFF
	adds r5, r0, #0
	cmp r1, r4
	ble _08020DE8
	orrs r2, r4
	strh r2, [r3]
	b _08020DF4
	.align 2, 0
_08020DDC: .4byte gUnk_03003DF0
_08020DE0: .4byte 0x0000020E
_08020DE4: .4byte 0x0000FFFF
_08020DE8:
	cmp r1, #0
	bge _08020DF2
	movs r0, #0
	strh r0, [r3]
	b _08020DF4
_08020DF2:
	strh r1, [r3]
_08020DF4:
	ldr r1, _08020DF8 @ => 0x0000020E
	b _08020E30
	.align 2, 0
_08020DF8: .4byte 0x0000020E
_08020DFC:
	ldr r0, _08020E18 @ => 0x03003DF0
	movs r2, #0x83
	lsls r2, r2, #2
	adds r3, r0, r2
	ldrh r2, [r3]
	adds r1, r2, r1
	ldr r4, _08020E1C @ => 0x0000FFFF
	adds r5, r0, #0
	cmp r1, r4
	ble _08020E20
	orrs r2, r4
	strh r2, [r3]
	b _08020E2C
	.align 2, 0
_08020E18: .4byte gUnk_03003DF0
_08020E1C: .4byte 0x0000FFFF
_08020E20:
	cmp r1, #0
	bge _08020E2A
	movs r0, #0
	strh r0, [r3]
	b _08020E2C
_08020E2A:
	strh r1, [r3]
_08020E2C:
	movs r1, #0x83
	lsls r1, r1, #2
_08020E30:
	adds r0, r5, r1
	ldrh r2, [r0]
	b _08020E74
_08020E36:
	ldr r0, _08020E48 @ => 0x03003DF0
	ldr r2, [r0, #8]
	adds r1, r2, r1
	ldr r2, _08020E4C @ => 0x000F423F
	adds r5, r0, #0
	cmp r1, r2
	ble _08020E50
	str r2, [r5, #8]
	b _08020E5C
	.align 2, 0
_08020E48: .4byte gUnk_03003DF0
_08020E4C: .4byte 0x000F423F
_08020E50:
	cmp r1, #0
	bge _08020E5A
	movs r0, #0
	str r0, [r5, #8]
	b _08020E5C
_08020E5A:
	str r1, [r5, #8]
_08020E5C:
	ldr r2, _08020E7C @ => 0x03004230
	ldr r0, _08020E80 @ => 0x030042B0
	ldrh r1, [r0, #6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r1, [r0]
	movs r2, #2
	orrs r1, r2
	str r1, [r0]
	ldr r2, [r5, #8]
_08020E74:
	adds r0, r2, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08020E7C: .4byte gUnk_03004230
_08020E80: .4byte gUnk_030042B0

	thumb_func_start FUN_08020E84
FUN_08020E84: @ 0x08020E84
	push {r4, r5, r6, lr}
	ldr r6, _08020F18 @ => 0x03003DF0
	ldr r0, _08020F1C @ => 0x000003F6
	adds r1, r6, r0
	movs r5, #0
	movs r0, #0x21
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x64
	strb r5, [r0]
	subs r0, #0xc
	bl FUN_08026184
	bl FUN_080147FC
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r6, r2
	ldr r0, _08020F20 @ => 0x0000FFFF
	strh r0, [r1]
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r6, r1
	movs r1, #0
	movs r2, #4
	bl FUN_0802CB40
	movs r2, #0xd3
	lsls r2, r2, #2
	adds r0, r6, r2
	movs r1, #0
	movs r2, #4
	bl FUN_0802CB40
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r6, r1
	movs r1, #0
	movs r2, #8
	bl FUN_0802CB40
	movs r2, #0xd8
	lsls r2, r2, #2
	adds r0, r6, r2
	strb r5, [r0]
	ldr r1, _08020F24 @ => 0x08062AAC
	adds r0, r6, #0
	bl FUN_0801432C
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r4, r6, r0
	adds r0, r4, #0
	bl FUN_0801E138
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_0801DC80
	bl FUN_0803B0FC
	bl FUN_08040F38
	bl FUN_0801EC20
	ldr r1, _08020F28 @ => 0x0000020E
	adds r0, r6, r1
	strh r5, [r0]
	movs r2, #0x83
	lsls r2, r2, #2
	adds r0, r6, r2
	strh r5, [r0]
	adds r4, r6, #0
	b _08020F36
	.align 2, 0
_08020F18: .4byte gUnk_03003DF0
_08020F1C: .4byte 0x000003F6
_08020F20: .4byte 0x0000FFFF
_08020F24: .4byte ROMREF_08062AAC
_08020F28: .4byte 0x0000020E
_08020F2C:
	ldr r0, [r4, #0x6c]
	movs r1, #0
	movs r2, #1
	bl FUN_08026260
_08020F36:
	ldr r0, [r4, #0x6c]
	bl FUN_08026300
	cmp r0, #0
	beq _08020F2C
	ldr r4, _08020FB0 @ => 0x03004004
	adds r0, r4, #0
	bl FUN_0804C55C
	ldr r0, _08020FB4 @ => 0xFFFFFDEC
	adds r5, r4, r0
	movs r1, #0xf8
	lsls r1, r1, #1
	adds r2, r4, r1
	movs r1, #0
	movs r0, #2
	strb r0, [r2]
	ldr r2, _08020FB8 @ => 0x000001F1
	adds r0, r4, r2
	strb r1, [r0]
	subs r0, r4, #4
	strb r1, [r0]
	subs r0, r4, #3
	strb r1, [r0]
	movs r0, #0xac
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r0, #2
	rsbs r0, r0, #0
	str r0, [r4]
	ldr r2, _08020FBC @ => 0x03004200
	ldr r0, _08020FC0 @ => 0x030042B0
	ldrh r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #4
	strb r1, [r0, #0x10]
	bl FUN_0803AFF0
	ldr r0, [r5, #0x68]
	ldrb r0, [r0]
	subs r4, r0, #1
	cmp r4, #0
	blt _08020FDE
_08020F92:
	ldr r0, _08020FC4 @ => 0x03003DF0
	ldr r2, [r0, #0x68]
	ldr r1, [r2, #4]
	lsls r0, r4, #2
	adds r1, r0, r1
	ldrh r0, [r1]
	subs r0, #0x6e
	cmp r0, #0x66
	bhi _08020FC8
	adds r0, r2, #0
	adds r1, r4, #0
	movs r2, #1
	bl FUN_08026260
	b _08020FD8
	.align 2, 0
_08020FB0: .4byte gSocialMove_Data
_08020FB4: .4byte 0xFFFFFDEC
_08020FB8: .4byte 0x000001F1
_08020FBC: .4byte gUnk_03004200
_08020FC0: .4byte gUnk_030042B0
_08020FC4: .4byte gUnk_03003DF0
_08020FC8:
	ldrb r0, [r1, #2]
	cmp r0, #4
	bne _08020FD8
	adds r0, r2, #0
	adds r1, r4, #0
	movs r2, #1
	bl FUN_08026260
_08020FD8:
	subs r4, #1
	cmp r4, #0
	bge _08020F92
_08020FDE:
	ldr r0, _08021010 @ => 0x03004230
	movs r5, #0
	str r5, [r0]
	ldr r4, _08021014 @ => 0x03003E28
	adds r0, r4, #0
	bl FUN_080389BC
	bl FUN_08024A10
	ldr r0, _08021018 @ => 0x03004740
	str r5, [r0]
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08038BB8
	ldr r1, _0802101C @ => 0x00000332
	adds r4, r4, r1
	ldrh r1, [r4]
	ldr r0, _08021020 @ => 0x0000FFF9
	ands r0, r1
	strh r0, [r4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08021010: .4byte gUnk_03004230
_08021014: .4byte gUnk_03003E28
_08021018: .4byte gUnk_03004740
_0802101C: .4byte 0x00000332
_08021020: .4byte 0x0000FFF9

	thumb_func_start FUN_08021024
FUN_08021024: @ 0x08021024
	push {r4, lr}
	bl FUN_080147FC
	ldr r4, _08021064 @ => 0x03003E48
	adds r0, r4, #0
	bl FUN_08026184
	adds r0, r4, #0
	bl FUN_0802636C
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0
	strb r0, [r1]
	bl FUN_0803AC1C
	ldr r0, _08021068 @ => 0x0000032E
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0802106C @ => 0x00000312
	adds r4, r4, r0
	ldrh r1, [r4]
	ldr r0, _08021070 @ => 0x0000FFF7
	ands r0, r1
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08021064: .4byte gUnk_03003E48
_08021068: .4byte 0x0000032E
_0802106C: .4byte 0x00000312
_08021070: .4byte 0x0000FFF7

	thumb_func_start FUN_08021074
FUN_08021074: @ 0x08021074
	push {r4, r5, r6, lr}
	ldr r6, _08021160 @ => 0x03003DF0
	ldr r0, _08021164 @ => 0x000003F7
	adds r1, r6, r0
	movs r5, #0
	movs r0, #0xb
	strb r0, [r1]
	movs r1, #0xcd
	lsls r1, r1, #2
	adds r0, r6, r1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl FUN_0801BDF8
	ldr r1, _08021168 @ => 0x08062AAC
	adds r0, r6, #0
	bl FUN_0801432C
	adds r0, r6, #0
	adds r0, #0xc
	bl FUN_080409EC
	movs r4, #0x85
	lsls r4, r4, #2
	adds r0, r6, r4
	bl FUN_0804C3D4
	bl FUN_0803AA48
	bl FUN_0803B0FC
	adds r0, r6, #0
	adds r0, #0x58
	bl FUN_08026048
	bl FUN_08040F38
	bl FUN_08051D20
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r4, r6, r0
	adds r0, r4, #0
	bl FUN_0801DDB0
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0801DE38
	movs r1, #0xdb
	lsls r1, r1, #2
	adds r3, r6, r1
	movs r2, #2
	rsbs r2, r2, #0
	ldr r4, _0802116C @ => 0x000003FD
	adds r0, r6, r4
	strb r5, [r0]
	movs r0, #0xf6
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #0x31
	strb r0, [r1]
	ldr r1, _08021170 @ => 0x000001ED
	adds r0, r6, r1
	strb r5, [r0]
	adds r4, #7
	adds r1, r6, r4
	movs r0, #2
	strb r0, [r1]
	ldr r1, _08021174 @ => 0x00000405
	adds r0, r6, r1
	strb r5, [r0]
	subs r4, #0xa8
	adds r0, r6, r4
	str r5, [r0]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r6, r0
	ldr r0, _08021178 @ => 0x0000FFFF
	strh r0, [r1]
	movs r1, #0xfe
	lsls r1, r1, #2
	adds r0, r6, r1
	movs r1, #0x27
	strb r1, [r0]
	adds r4, #0x9d
	adds r0, r6, r4
	strb r1, [r0]
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r6, r1
	strb r5, [r0]
	ldr r4, _0802117C @ => 0x00000211
	adds r0, r6, r4
	strb r5, [r0]
	str r2, [r3]
	movs r1, #0
	ldr r3, _08021180 @ => 0x03004228
	movs r2, #0
_0802113C:
	adds r0, r1, r3
	strb r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #1
	bls _0802113C
	ldr r0, _08021160 @ => 0x03003DF0
	ldr r1, _08021184 @ => 0x0000036A
	adds r0, r0, r1
	ldrh r2, [r0]
	movs r1, #1
	orrs r1, r2
	strh r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08021160: .4byte gUnk_03003DF0
_08021164: .4byte 0x000003F7
_08021168: .4byte ROMREF_08062AAC
_0802116C: .4byte 0x000003FD
_08021170: .4byte 0x000001ED
_08021174: .4byte 0x00000405
_08021178: .4byte 0x0000FFFF
_0802117C: .4byte 0x00000211
_08021180: .4byte gUnk_03004228
_08021184: .4byte 0x0000036A

	thumb_func_start FUN_08021188
FUN_08021188: @ 0x08021188
	push {lr}
	bl FUN_0801F24C
	bl FUN_08039E5C
	bl FUN_0803B3A0
	bl FUN_0803D6E8
	bl FUN_0804A804
	bl FUN_0804A2E0
	bl FUN_08008EF4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080211AC
FUN_080211AC: @ 0x080211AC
	push {lr}
	bl FUN_08021074
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080211B8
FUN_080211B8: @ 0x080211B8
	push {lr}
	bl FUN_08021074
	ldr r0, _080211CC @ => 0x03003DFC
	ldr r1, _080211D0 @ => 0x08062AB4
	movs r2, #0x10
	bl strncpy
	pop {r0}
	bx r0
	.align 2, 0
_080211CC: .4byte gSlotName
_080211D0: .4byte ROMREF_08062AB4

	thumb_func_start FUN_080211D4
FUN_080211D4: @ 0x080211D4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #6
	bl FUN_08044558
	adds r0, r4, #0
	adds r0, #8
	movs r1, #3
	bl FUN_08044558
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080211FC
	movs r0, #0xff
	lsls r0, r0, #0x18
	orrs r1, r0
	str r1, [r4, #8]
_080211FC:
	adds r0, r4, #0
	adds r0, #0xc
	movs r1, #1
	bl FUN_08044558
	adds r0, r4, #0
	adds r0, #0xe
	movs r1, #2
	bl FUN_08044558
	adds r0, r4, #0
	adds r0, #0x10
	movs r1, #1
	bl FUN_08044558
	adds r0, r4, #0
	adds r0, #0x14
	movs r1, #0x10
	bl FUN_08044558
	adds r0, r4, #0
	adds r0, #0x24
	bl FUN_08040960
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08021234
FUN_08021234: @ 0x08021234
	bx lr
	.align 2, 0

	thumb_func_start FUN_08021238
FUN_08021238: @ 0x08021238
	bx lr
	.align 2, 0

	thumb_func_start FUN_0802123C
FUN_0802123C: @ 0x0802123C
	push {lr}
	cmp r0, #1
	beq _0802125C
	cmp r0, #1
	blo _0802124C
	cmp r0, #2
	beq _0802126C
	b _08021270
_0802124C:
	ldr r0, _08021254 @ => 0x03003DF0
	ldr r2, _08021258 @ => 0x0000020E
	b _08021262
	.align 2, 0
_08021254: .4byte gUnk_03003DF0
_08021258: .4byte 0x0000020E
_0802125C:
	ldr r0, _08021268 @ => 0x03003DF0
	movs r2, #0x83
	lsls r2, r2, #2
_08021262:
	adds r0, r0, r2
	strh r1, [r0]
	b _08021270
	.align 2, 0
_08021268: .4byte gUnk_03003DF0
_0802126C:
	ldr r0, _08021278 @ => 0x03003DF0
	str r1, [r0, #8]
_08021270:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_08021278: .4byte gUnk_03003DF0

	thumb_func_start FUN_0802127C
FUN_0802127C: @ 0x0802127C
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0
	ble _0802128C
	movs r0, #0xbf
	bl FUN_0804DE0C
	b _08021292
_0802128C:
	movs r0, #0xb0
	bl FUN_0804DE0C
_08021292:
	movs r0, #2
	adds r1, r4, #0
	bl FUN_08020DB0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_080212A0
FUN_080212A0: @ 0x080212A0
	push {lr}
	cmp r0, #1
	beq _080212C0
	cmp r0, #1
	blo _080212B2
	cmp r0, #2
	beq _080212D0
	movs r0, #0
	b _080212D4
_080212B2:
	ldr r0, _080212B8 @ => 0x03003DF0
	ldr r1, _080212BC @ => 0x0000020E
	b _080212C6
	.align 2, 0
_080212B8: .4byte gUnk_03003DF0
_080212BC: .4byte 0x0000020E
_080212C0:
	ldr r0, _080212CC @ => 0x03003DF0
	movs r1, #0x83
	lsls r1, r1, #2
_080212C6:
	adds r0, r0, r1
	ldrh r0, [r0]
	b _080212D4
	.align 2, 0
_080212CC: .4byte gUnk_03003DF0
_080212D0:
	ldr r0, _080212D8 @ => 0x03003DF0
	ldr r0, [r0, #8]
_080212D4:
	pop {r1}
	bx r1
	.align 2, 0
_080212D8: .4byte gUnk_03003DF0

	thumb_func_start FUN_080212DC
FUN_080212DC: @ 0x080212DC
	push {lr}
	cmp r0, #1
	beq _080212FC
	cmp r0, #1
	blo _080212EC
	cmp r0, #2
	beq _08021310
	b _08021316
_080212EC:
	ldr r0, _080212F4 @ => 0x03003DF0
	ldr r1, _080212F8 @ => 0x0000020E
	b _08021302
	.align 2, 0
_080212F4: .4byte gUnk_03003DF0
_080212F8: .4byte 0x0000020E
_080212FC:
	ldr r0, _0802130C @ => 0x03003DF0
	movs r1, #0x83
	lsls r1, r1, #2
_08021302:
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
	b _08021316
	.align 2, 0
_0802130C: .4byte gUnk_03003DF0
_08021310:
	ldr r1, _0802131C @ => 0x03003DF0
	movs r0, #0
	str r0, [r1, #8]
_08021316:
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_0802131C: .4byte gUnk_03003DF0

	thumb_func_start FUN_08021320
FUN_08021320: @ 0x08021320
	push {lr}
	ldr r0, _0802132C @ => 0x0300407C
	bl FUN_0801E138
	pop {r1}
	bx r1
	.align 2, 0
_0802132C: .4byte gEpisode_Data

	thumb_func_start FUN_08021330
FUN_08021330: @ 0x08021330
	push {lr}
	ldr r0, _08021344 @ => 0x03003DF0
	movs r1, #0xcc
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08021348
	movs r0, #1
	b _0802134A
	.align 2, 0
_08021344: .4byte gUnk_03003DF0
_08021348:
	movs r0, #0
_0802134A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08021350
FUN_08021350: @ 0x08021350
	ldr r3, _08021364 @ => 0x03003DF0
	lsls r2, r0, #2
	adds r2, r2, r0
	adds r1, r1, r2
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r3, r3, r0
	adds r1, r1, r3
	ldrb r0, [r1]
	bx lr
	.align 2, 0
_08021364: .4byte gUnk_03003DF0

	thumb_func_start FUN_08021368
FUN_08021368: @ 0x08021368
	push {r4, r5, lr}
	movs r4, #0
	movs r3, #0
	ldr r2, _08021390 @ => 0x03003DF0
	lsls r1, r0, #2
	movs r5, #0xa3
	lsls r5, r5, #2
	adds r0, r0, r5
	adds r1, r1, r0
	adds r1, r1, r2
_0802137C:
	ldrb r0, [r1]
	adds r4, r4, r0
	adds r1, #1
	adds r3, #1
	cmp r3, #3
	bls _0802137C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08021390: .4byte gUnk_03003DF0

	thumb_func_start FUN_08021394
FUN_08021394: @ 0x08021394
	ldr r0, _080213A0 @ => 0x03003DF0
	movs r1, #0xdd
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_080213A0: .4byte gUnk_03003DF0

	thumb_func_start FUN_080213A4
FUN_080213A4: @ 0x080213A4
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r0, _080213CC @ => 0x000002AB
	cmp r2, r0
	beq _080213EA
	lsrs r1, r2, #3
	movs r4, #7
	ands r4, r2
	cmp r3, #1
	bne _080213D8
	ldr r0, _080213D0 @ => 0x03003DF0
	ldr r2, _080213D4 @ => 0x00000376
	adds r0, r0, r2
	adds r0, r1, r0
	lsls r3, r4
	ldrb r1, [r0]
	orrs r3, r1
	strb r3, [r0]
	b _080213EA
	.align 2, 0
_080213CC: .4byte 0x000002AB
_080213D0: .4byte gUnk_03003DF0
_080213D4: .4byte 0x00000376
_080213D8:
	ldr r2, _080213F0 @ => 0x03003DF0
	ldr r0, _080213F4 @ => 0x00000376
	adds r2, r2, r0
	adds r2, r1, r2
	movs r1, #1
	lsls r1, r4
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
_080213EA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080213F0: .4byte gUnk_03003DF0
_080213F4: .4byte 0x00000376

	thumb_func_start FUN_080213F8
FUN_080213F8: @ 0x080213F8
	push {lr}
	lsrs r1, r0, #3
	movs r2, #7
	ands r2, r0
	ldr r0, _08021418 @ => 0x03003DF0
	ldr r3, _0802141C @ => 0x00000376
	adds r0, r0, r3
	adds r1, r1, r0
	ldrb r0, [r1]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08021420
	movs r0, #0
	b _08021422
	.align 2, 0
_08021418: .4byte gUnk_03003DF0
_0802141C: .4byte 0x00000376
_08021420:
	movs r0, #1
_08021422:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08021428
FUN_08021428: @ 0x08021428
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r0, _0802144C @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08021454
	ldr r0, _08021450 @ => 0x08CDACF4
	movs r1, #0
	movs r2, #0x10
	bl FUN_08015760
	b _08021460
	.align 2, 0
_0802144C: .4byte gUnk_03004374
_08021450: .4byte ROMREF_08CDACF4
_08021454:
	ldr r0, _08021478 @ => 0x08CDACF4
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x10
	bl FUN_08015770
_08021460:
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl FUN_0802147C
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021478: .4byte ROMREF_08CDACF4

	thumb_func_start FUN_0802147C
FUN_0802147C: @ 0x0802147C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r6, [sp, #0x18]
	movs r0, #1
	bl FUN_080203EC
	cmp r4, #6
	beq _080214A0
	adds r0, r4, #0
	movs r1, #0
	adds r2, r6, #0
	bl FUN_080214D4
_080214A0:
	cmp r5, #6
	beq _080214AE
	adds r0, r5, #0
	movs r1, #1
	adds r2, r6, #0
	bl FUN_080214D4
_080214AE:
	cmp r7, #6
	beq _080214BC
	adds r0, r7, #0
	movs r1, #2
	adds r2, r6, #0
	bl FUN_080214D4
_080214BC:
	mov r0, r8
	cmp r0, #6
	beq _080214CA
	movs r1, #3
	adds r2, r6, #0
	bl FUN_080214D4
_080214CA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_080214D4
FUN_080214D4: @ 0x080214D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r6, r2, #0
	movs r5, #0
	cmp r4, #2
	bls _080214E6
	movs r5, #1
	subs r4, #3
_080214E6:
	cmp r6, #0
	beq _08021530
	ldr r6, _08021528 @ => 0x08CDACF4
	lsls r1, r4, #1
	adds r0, r6, #0
	adds r2, r4, #0
	movs r3, #1
	bl FUN_080157AC
	cmp r5, #1
	bne _08021518
	adds r0, r4, #1
	movs r1, #0x19
	str r1, [sp]
	ldr r1, _0802152C @ => 0x08CDAEF4
	str r1, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	movs r1, #2
	str r1, [sp, #0xc]
	movs r1, #1
	movs r2, #0xa
	movs r3, #0
	bl FUN_08015A00
_08021518:
	adds r0, r6, #0
	movs r1, #6
	movs r2, #3
	movs r3, #1
	bl FUN_080157AC
	b _0802156A
	.align 2, 0
_08021528: .4byte ROMREF_08CDACF4
_0802152C: .4byte ROMREF_08CDAEF4
_08021530:
	ldr r7, _08021574 @ => 0x08CDACF4
	adds r4, #1
	lsls r1, r4, #1
	adds r0, r7, #0
	adds r2, r4, #0
	movs r3, #1
	bl FUN_08015770
	cmp r5, #1
	bne _0802155E
	movs r0, #0x19
	str r0, [sp]
	ldr r0, _08021578 @ => 0x08CDAEF4
	str r0, [sp, #4]
	str r6, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0xa
	movs r3, #0
	bl FUN_08015A00
_0802155E:
	adds r0, r7, #0
	movs r1, #6
	movs r2, #3
	movs r3, #1
	bl FUN_08015770
_0802156A:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021574: .4byte ROMREF_08CDACF4
_08021578: .4byte ROMREF_08CDAEF4

	thumb_func_start FUN_0802157C
FUN_0802157C: @ 0x0802157C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r2, #0
	adds r4, r1, #0
	ldr r0, _080215CC @ => 0x030042B0
	ldrb r1, [r0, #6]
	mov r0, sp
	bl FUN_080111FC
	ldr r2, [sp]
	ldr r3, [sp, #4]
	adds r1, r5, #0
	adds r0, r4, #0
	bl FUN_0802C538
	ldr r1, _080215D0 @ => 0xFFCE0000
	adds r0, r0, r1
	ldr r1, _080215D4 @ => 0x000015D8
	bl FUN_0802C314
	asrs r0, r0, #0x10
	bl __floatsidf
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, _080215D8 @ => 0x40500000
	ldr r1, _080215DC @ => 0x00000000
	bl __subdf3
	bl __fixdfsi
	adds r1, r0, #0
	adds r0, r6, #0
	bl FUN_0804E19C
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080215CC: .4byte gUnk_030042B0
_080215D0: .4byte 0xFFCE0000
_080215D4: .4byte 0x000015D8
_080215D8: .4byte 0x40500000
_080215DC: .4byte 0x00000000

	thumb_func_start FUN_080215E0
FUN_080215E0: @ 0x080215E0
	ldr r0, _080215EC @ => 0x03003DF0
	ldr r1, _080215F0 @ => 0x00000372
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_080215EC: .4byte gUnk_03003DF0
_080215F0: .4byte 0x00000372

	thumb_func_start FUN_080215F4
FUN_080215F4: @ 0x080215F4
	push {r4, lr}
	adds r1, r0, #0
	ldr r4, _08021614 @ => 0x03003DF0
	ldr r0, _08021618 @ => 0x00000372
	adds r4, r4, r0
	ldrh r0, [r4]
	adds r0, r0, r1
	ldr r2, _0802161C @ => 0x0000FFFF
	movs r1, #0
	bl FUN_0802C644
	strh r0, [r4]
	ldrh r0, [r4]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08021614: .4byte gUnk_03003DF0
_08021618: .4byte 0x00000372
_0802161C: .4byte 0x0000FFFF

	thumb_func_start FUN_08021620
FUN_08021620: @ 0x08021620
	push {lr}
	cmp r0, #0
	beq _0802164C
	cmp r0, #0x1f
	bhi _08021638
	ldr r2, _08021634 @ => 0x03003DF0
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r2, r2, r1
	b _08021642
	.align 2, 0
_08021634: .4byte gUnk_03003DF0
_08021638:
	ldr r2, _08021650 @ => 0x03003DF0
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r2, r2, r1
	subs r0, #0x20
_08021642:
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
_0802164C:
	pop {r0}
	bx r0
	.align 2, 0
_08021650: .4byte gUnk_03003DF0

	thumb_func_start FUN_08021654
FUN_08021654: @ 0x08021654
	push {lr}
	adds r2, r0, #0
	cmp r2, #0
	beq _08021686
	cmp r2, #0x1f
	bhi _08021670
	ldr r0, _0802166C @ => 0x03003DF0
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r0, r1
	b _0802167A
	.align 2, 0
_0802166C: .4byte gUnk_03003DF0
_08021670:
	ldr r0, _0802168C @ => 0x03003DF0
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r0, r1
	subs r2, #0x20
_0802167A:
	movs r1, #1
	lsls r1, r2
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _08021690
_08021686:
	movs r0, #0
	b _08021692
	.align 2, 0
_0802168C: .4byte gUnk_03003DF0
_08021690:
	movs r0, #1
_08021692:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08021698
FUN_08021698: @ 0x08021698
	push {r4, lr}
	ldr r4, _080216C4 @ => 0x03004138
	adds r0, r4, #0
	movs r1, #0
	movs r2, #4
	bl FUN_0802CB40
	adds r0, r4, #4
	movs r1, #0
	movs r2, #4
	bl FUN_0802CB40
	adds r4, #8
	adds r0, r4, #0
	movs r1, #0
	movs r2, #8
	bl FUN_0802CB40
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080216C4: .4byte gUnk_03004138

	thumb_func_start FUN_080216C8
FUN_080216C8: @ 0x080216C8
	push {r4, r5, lr}
	ldr r4, _08021730 @ => 0x03003DF0
	ldr r1, _08021734 @ => 0x00000405
	adds r0, r4, r1
	ldrb r0, [r0]
	adds r0, #1
	movs r1, #0
	movs r2, #2
	bl FUN_0802C670
	adds r5, r0, #0
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r0, r4, #0
	bl FUN_0801E138
	adds r4, r0, #0
	cmp r5, #1
	bne _08021700
	cmp r4, #1
	bhi _08021700
	movs r0, #2
	movs r1, #0
	movs r2, #2
	bl FUN_0802C670
	adds r5, r0, #0
_08021700:
	cmp r5, #2
	bne _08021722
	cmp r4, #0
	beq _08021716
	cmp r4, #1
	bne _08021722
	movs r0, #0x30
	bl FUN_080213F8
	cmp r0, #0
	bne _08021722
_08021716:
	movs r0, #3
	movs r1, #0
	movs r2, #2
	bl FUN_0802C670
	adds r5, r0, #0
_08021722:
	adds r0, r5, #0
	bl FUN_0802174C
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08021730: .4byte gUnk_03003DF0
_08021734: .4byte 0x00000405

	thumb_func_start FUN_08021738
FUN_08021738: @ 0x08021738
	ldr r0, _08021744 @ => 0x03003DF0
	ldr r1, _08021748 @ => 0x00000405
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08021744: .4byte gUnk_03003DF0
_08021748: .4byte 0x00000405

	thumb_func_start FUN_0802174C
FUN_0802174C: @ 0x0802174C
	push {lr}
	adds r1, r0, #0
	ldr r0, _08021770 @ => 0x03003DF0
	ldr r2, _08021774 @ => 0x00000405
	adds r0, r0, r2
	strb r1, [r0]
	ldr r0, _08021778 @ => 0x03004200
	ldr r0, [r0]
	bl FUN_08023644
	ldr r2, _0802177C @ => 0x03004230
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r2, #4]
	pop {r0}
	bx r0
	.align 2, 0
_08021770: .4byte gUnk_03003DF0
_08021774: .4byte 0x00000405
_08021778: .4byte gUnk_03004200
_0802177C: .4byte gUnk_03004230

	thumb_func_start FUN_08021780
FUN_08021780: @ 0x08021780
	push {lr}
	ldr r0, _080217B0 @ => 0x03004200
	ldr r1, [r0]
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0xd
	beq _0802179E
	ldr r0, _080217B4 @ => 0x03003DF0
	ldr r2, _080217B8 @ => 0x00000404
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #2
	beq _080217C0
_0802179E:
	ldr r2, _080217BC @ => 0x0000011D
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #5
	beq _080217C0
	cmp r0, #0x36
	beq _080217C0
	movs r0, #1
	b _080217C2
	.align 2, 0
_080217B0: .4byte gUnk_03004200
_080217B4: .4byte gUnk_03003DF0
_080217B8: .4byte 0x00000404
_080217BC: .4byte 0x0000011D
_080217C0:
	movs r0, #0
_080217C2:
	pop {r1}
	bx r1
	.align 2, 0
