.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start PlotPointsMenu_Init
PlotPointsMenu_Init: @ 0x08022398
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	movs r0, #0
	bl FUN_0800C558
	movs r0, #0x80
	lsls r0, r0, #5
	bl FUN_0800C5EC
	ldr r0, _08022504 @ => 0x08062B38
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C418
	ldr r0, _08022508 @ => 0x08062B34
	ldr r1, [r0]
	movs r0, #2
	bl FUN_0800C418
	ldr r0, _0802250C @ => 0x08062B30
	ldr r4, [r0]
	movs r0, #1
	adds r1, r4, #0
	bl FUN_0800C418
	ldr r0, _08022510 @ => 0x08062B2C
	ldr r1, [r0]
	movs r0, #0
	bl FUN_0800C418
	movs r0, #1
	movs r1, #0
	bl FUN_0800C61C
	movs r0, #0
	movs r1, #0
	bl FUN_0800C61C
	adds r0, r4, #0
	bl FUN_0801FE58
	ldr r0, _08022514 @ => 0x03001DD8
	movs r6, #0
	str r6, [r0, #4]
	str r6, [r0, #8]
	movs r0, #3
	movs r1, #1
	bl FUN_08048284
	movs r5, #0
	movs r7, #0
	ldr r2, _08022518 @ => 0x08CDC058
	ldr r3, _0802251C @ => 0x00000191
	str r6, [sp]
	str r6, [sp, #4]
	movs r4, #0x10
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r7, [sp, #0x10]
	str r6, [sp, #0x14]
	add r0, sp, #0x18
	movs r1, #2
	bl FUN_0800D83C
	movs r0, #0
	ldr r2, _08022520 @ => 0x08CDC854
	movs r5, #0xf0
	str r5, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp, #0x14]
	add r0, sp, #0x1c
	movs r1, #0
	movs r3, #1
	bl FUN_0800D83C
	movs r1, #0x80
	lsls r1, r1, #0xa
	movs r0, #0
	ldr r2, _08022524 @ => 0x08CDC8E4
	str r5, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _08022528 @ => 0x00000101
	str r0, [sp, #0x14]
	add r0, sp, #0x20
	movs r1, #0
	movs r3, #5
	bl FUN_0800D83C
	movs r0, #1
	movs r1, #5
	movs r2, #2
	movs r3, #2
	bl FUN_08021428
	subs r7, #1
	movs r0, #2
	movs r1, #0
	adds r2, r7, #0
	bl FUN_0801FEA0
	movs r0, #0xe6
	lsls r0, r0, #3
	bl FUN_08050820
	adds r3, r0, #0
	str r6, [sp]
	movs r0, #9
	movs r1, #0x31
	movs r2, #0xa
	bl FUN_0801F8B8
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0
	adds r2, r7, #0
	bl FUN_0801FEA0
	bl FUN_08021320
	ldr r1, _0802252C @ => 0x000006FB
	adds r0, r0, r1
	bl FUN_08050820
	adds r3, r0, #0
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0xc
	movs r2, #0x1d
	bl FUN_0801F8B8
	adds r4, r0, #0
	bl FUN_080226B8
	adds r4, r0, #0
	ldr r5, _08022530 @ => 0x0300407C
	adds r0, r5, #0
	bl FUN_0801E138
	cmp r0, #0
	beq _08022562
	adds r0, r5, #0
	bl FUN_0801E028
	cmp r0, #1
	bne _08022538
	movs r0, #0
	movs r1, #0
	adds r2, r7, #0
	bl FUN_0801FEA0
	bl FUN_08021320
	ldr r1, _08022534 @ => 0x00000636
	adds r0, r0, r1
	bl FUN_08050820
	str r0, [sp]
	str r6, [sp, #4]
	adds r0, r4, #0
	movs r1, #0x28
	movs r2, #0x86
	movs r3, #0xbd
	bl FUN_08020098
	movs r0, #0x18
	movs r1, #0x86
	movs r2, #1
	bl FUN_080227A4
	b _08022562
	.align 2, 0
_08022504: .4byte ROMREF_08062B38
_08022508: .4byte ROMREF_08062B34
_0802250C: .4byte ROMREF_08062B30
_08022510: .4byte ROMREF_08062B2C
_08022514: .4byte gUnk_03001DD8
_08022518: .4byte ROMREF_08CDC058
_0802251C: .4byte 0x00000191
_08022520: .4byte ROMREF_08CDC854
_08022524: .4byte ROMREF_08CDC8E4
_08022528: .4byte 0x00000101
_0802252C: .4byte 0x000006FB
_08022530: .4byte gEpisode_Data
_08022534: .4byte 0x00000636
_08022538:
	movs r0, #0
	movs r1, #0
	adds r2, r7, #0
	bl FUN_0801FEA0
	ldr r0, _080225E0 @ => 0x00000635
	bl FUN_08050820
	str r0, [sp]
	str r6, [sp, #4]
	adds r0, r4, #0
	movs r1, #0x28
	movs r2, #0x86
	movs r3, #0xbd
	bl FUN_08020098
	movs r0, #0x18
	movs r1, #0x86
	movs r2, #0
	bl FUN_080227A4
_08022562:
	movs r0, #0
	movs r1, #0x3f
	movs r2, #0x3e
	bl FUN_080534D8
	movs r1, #0x80
	lsls r1, r1, #0xd
	movs r2, #0xc0
	lsls r2, r2, #0xe
	movs r3, #0xe8
	lsls r3, r3, #0x10
	movs r0, #0xf2
	lsls r0, r0, #0xf
	str r0, [sp]
	movs r0, #0
	bl FUN_08053548
	movs r0, #0x5c
	movs r1, #0xe0
	movs r2, #1
	movs r3, #1
	bl FUN_0802D5E8
	ldr r5, _080225E4 @ => 0x03004790
	str r0, [r5]
	ldr r1, [r0, #0xc]
	movs r4, #1
	orrs r1, r4
	str r1, [r0, #0xc]
	movs r0, #0x5d
	movs r1, #0xe1
	movs r2, #1
	movs r3, #1
	bl FUN_0802D5E8
	str r0, [r5, #4]
	ldr r1, [r0, #0xc]
	orrs r1, r4
	str r1, [r0, #0xc]
	ldr r0, _080225E8 @ => 0x08062B3C
	movs r1, #0
	str r1, [sp]
	movs r1, #6
	movs r2, #0x30
	movs r3, #0xf
	bl FUN_0802D680
	ldr r1, _080225EC @ => 0x03001DD8
	str r0, [r1]
	bl FUN_0802283C
	movs r0, #0x3f
	movs r1, #0
	bl FUN_080457F4
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080225E0: .4byte 0x00000635
_080225E4: .4byte gUnk_03004790
_080225E8: .4byte ROMREF_08062B3C
_080225EC: .4byte gUnk_03001DD8

	thumb_func_start PlotPointsMenu_Handler
PlotPointsMenu_Handler: @ 0x080225F0
	push {lr}
	ldr r1, _08022610 @ => 0x030042B0
	ldrh r2, [r1, #0xc]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0802261C
	ldr r0, _08022614 @ => 0x03003DF0
	ldr r1, _08022618 @ => 0x000003F7
	adds r0, r0, r1
	movs r1, #0xc
	strb r1, [r0]
	movs r0, #0xc
	b _08022632
	.align 2, 0
_08022610: .4byte gUnk_030042B0
_08022614: .4byte gUnk_03003DF0
_08022618: .4byte 0x000003F7
_0802261C:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08022648
	ldr r0, _08022640 @ => 0x03003DF0
	ldr r1, _08022644 @ => 0x000003F7
	adds r0, r0, r1
	movs r1, #0x23
	strb r1, [r0]
	movs r0, #0x23
_08022632:
	bl FUN_0802CEC4
	movs r0, #0xc2
	bl FUN_0804DE0C
	b _080226AE
	.align 2, 0
_08022640: .4byte gUnk_03003DF0
_08022644: .4byte 0x000003F7
_08022648:
	ldrh r1, [r1, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08022668
	ldr r1, _08022664 @ => 0x03001DD8
	ldr r0, [r1, #8]
	cmp r0, #1
	ble _0802265E
	subs r0, #3
	str r0, [r1, #8]
_0802265E:
	ldr r2, [r1, #8]
	b _08022682
	.align 2, 0
_08022664: .4byte gUnk_03001DD8
_08022668:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08022694
	ldr r2, _08022690 @ => 0x03001DD8
	ldr r0, [r2, #0xc]
	subs r0, #0x80
	ldr r1, [r2, #8]
	cmp r1, r0
	bge _08022680
	adds r0, r1, #3
	str r0, [r2, #8]
_08022680:
	ldr r2, [r2, #8]
_08022682:
	movs r0, #0
	movs r1, #0
	bl FUN_0800CCCC
	bl FUN_0802283C
	b _080226AE
	.align 2, 0
_08022690: .4byte gUnk_03001DD8
_08022694:
	movs r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _080226AE
	ldr r0, _080226B4 @ => 0x030043A0
	ldr r2, [r0]
	movs r0, #1
	movs r1, #2
	bl FUN_0802CED4
	movs r0, #0xb1
	bl FUN_0804DE0C
_080226AE:
	pop {r0}
	bx r0
	.align 2, 0
_080226B4: .4byte gUnk_030043A0

	thumb_func_start FUN_080226B8
FUN_080226B8: @ 0x080226B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r6, r0, #0
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #0
	movs r1, #0
	bl FUN_0801FEA0
	ldr r0, _08022768 @ => 0x08062B2C
	ldr r0, [r0]
	bl FUN_0801FE58
	bl FUN_08021320
	add r2, sp, #0xc
	add r1, sp, #8
	bl FUN_0801DF40
	movs r0, #0x30
	str r0, [sp, #0x10]
	ldr r5, [sp, #8]
	ldr r0, [sp, #0xc]
	cmp r5, r0
	bhi _08022738
	ldr r7, _0802276C @ => 0x0300407C
_080226EC:
	adds r0, r7, #0
	adds r1, r5, #0
	bl FUN_0801DEE0
	cmp r0, #1
	bne _08022730
	ldr r4, [sp, #0x10]
	lsrs r4, r4, #3
	adds r0, r7, #0
	adds r1, r5, #0
	bl FUN_0801DF10
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_08022810
	adds r0, r5, #0
	bl FUN_0801DF64
	bl FUN_08050820
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r1, #0x28
	add r2, sp, #0x10
	movs r3, #0xbd
	bl FUN_080200E8
	adds r6, r0, #0
	ldr r0, [sp, #0x10]
	adds r0, #8
	str r0, [sp, #0x10]
_08022730:
	adds r5, #1
	ldr r0, [sp, #0xc]
	cmp r5, r0
	bls _080226EC
_08022738:
	ldr r1, _08022770 @ => 0x03001DD8
	ldr r0, [sp, #0x10]
	str r0, [r1, #0xc]
	subs r0, #0x80
	str r0, [r1, #8]
	cmp r0, #0
	bge _0802274A
	movs r0, #0
	str r0, [r1, #8]
_0802274A:
	ldr r2, [r1, #8]
	movs r0, #0
	movs r1, #0
	bl FUN_0800CCCC
	ldr r0, _08022774 @ => 0x08062B30
	ldr r0, [r0]
	bl FUN_0801FE58
	adds r0, r6, #0
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08022768: .4byte ROMREF_08062B2C
_0802276C: .4byte gEpisode_Data
_08022770: .4byte gUnk_03001DD8
_08022774: .4byte ROMREF_08062B30

	thumb_func_start PlotPointsMenu_Terminate
PlotPointsMenu_Terminate: @ 0x08022778
	push {lr}
	movs r0, #0x3f
	movs r1, #0
	bl FUN_0804582C
	movs r0, #0
	bl FUN_080534A8
	ldr r0, _080227A0 @ => 0x03002C40
	bl FUN_08000BF8
	bl FUN_0800CB20
	bl FUN_08015834
	bl FUN_0802D8A8
	pop {r0}
	bx r0
	.align 2, 0
_080227A0: .4byte gUnk_03002C40
