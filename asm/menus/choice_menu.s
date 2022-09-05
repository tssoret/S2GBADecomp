.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start ChoiceMenu_Init
ChoiceMenu_Init: @ 0x080415D8
	push {r4, r5, r6, lr}
	sub sp, #8
	movs r3, #0
	ldr r1, _080416CC @ => 0x03005C60
	ldrh r0, [r1]
	add r6, sp, #4
	cmp r0, #0
	beq _080415FE
	ldr r2, _080416D0 @ => 0x03005C90
_080415EA:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r1, #2
	adds r3, #1
	cmp r3, #4
	bhi _080415FE
	ldrh r0, [r1]
	cmp r0, #0
	bne _080415EA
_080415FE:
	movs r0, #0x80
	lsls r0, r0, #0x12
	bl FUN_080014C4
	ldr r2, _080416D0 @ => 0x03005C90
	ldrb r1, [r2, #1]
	adds r1, #1
	lsls r1, r1, #1
	movs r0, #0x1f
	subs r0, r0, r1
	lsls r4, r0, #3
	ldrb r0, [r2, #4]
	cmp r0, #0
	bne _08041632
	ldr r5, _080416D4 @ => 0x03004720
	movs r3, #0
	ldrb r1, [r2, #3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08041630
	ldrb r0, [r2]
	cmp r0, #1
	bls _08041630
	movs r3, #1
_08041630:
	str r3, [r5, #8]
_08041632:
	ldr r1, _080416D4 @ => 0x03004720
	movs r0, #0
	str r0, [r1, #0xc]
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	mov r1, sp
	adds r2, r6, #0
	bl FUN_08041A88
	ldr r4, _080416D8 @ => 0x030026E8
	ldr r0, [sp]
	adds r0, #7
	lsrs r1, r0, #3
	adds r0, r1, #2
	strb r0, [r4]
	ldr r5, _080416D0 @ => 0x03005C90
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _08041666
	adds r0, r1, #6
	strb r0, [r4]
_08041666:
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08041674
	adds r0, r1, #1
	strb r0, [r4]
_08041674:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _08041688
	ldrb r0, [r4]
	movs r1, #0x1e
	subs r1, r1, r0
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	strb r1, [r5, #1]
_08041688:
	ldr r1, [sp, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #7
	lsrs r0, r0, #3
	adds r0, #2
	strb r0, [r4, #1]
	ldr r2, [r5, #8]
	cmp r1, #1
	bne _080416A6
	cmp r2, #0
	beq _08041704
	movs r0, #5
	strb r0, [r4, #1]
_080416A6:
	cmp r2, #0
	beq _08041704
	ldrb r0, [r4, #1]
	cmp r0, #5
	bne _080416DC
	ldrb r0, [r5, #1]
	lsls r0, r0, #0x13
	movs r1, #0x98
	lsls r1, r1, #0xd
	adds r3, r0, r1
	ldrb r0, [r5, #2]
	lsls r0, r0, #3
	ldrb r1, [r4, #1]
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, #2
	lsls r2, r0, #0x10
	b _080416F2
	.align 2, 0
_080416CC: .4byte gChoiceIDs
_080416D0: .4byte gUnk_03005C90
_080416D4: .4byte gUnk_03004720
_080416D8: .4byte gUnk_030026E8
_080416DC:
	ldrb r0, [r5, #1]
	lsls r0, r0, #0x13
	movs r1, #0x98
	lsls r1, r1, #0xd
	adds r3, r0, r1
	ldrb r1, [r5, #2]
	lsls r1, r1, #3
	ldrb r0, [r4, #1]
	lsls r0, r0, #2
	adds r1, r1, r0
	lsls r2, r1, #0x10
_080416F2:
	ldr r0, _08041714 @ => 0xFFF80000
	adds r3, r3, r0
	ldr r1, _08041718 @ => 0xFFF40000
	adds r2, r2, r1
	ldr r0, _0804171C @ => 0x03005C90
	ldr r0, [r0, #8]
	adds r1, r3, #0
	bl FUN_08001728
_08041704:
	ldr r1, _08041720 @ => 0x03004720
	movs r0, #0
	str r0, [r1, #0x14]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08041714: .4byte 0xFFF80000
_08041718: .4byte 0xFFF40000
_0804171C: .4byte gUnk_03005C90
_08041720: .4byte gUnk_03004720

	thumb_func_start ChoiceMenu_Handler
ChoiceMenu_Handler: @ 0x08041724
	push {r4, r5, lr}
	sub sp, #8
	movs r4, #0
	ldr r0, _08041740 @ => 0x03004720
	ldr r1, [r0, #0x14]
	adds r2, r0, #0
	cmp r1, #5
	bls _08041736
	b _0804197A
_08041736:
	lsls r0, r1, #2
	ldr r1, _08041744 @ =_08041748
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08041740: .4byte gUnk_03004720
_08041744: .4byte _08041748
_08041748: @ jump table
	.4byte _08041760 @ case 0
	.4byte _0804179C @ case 1
	.4byte _080417D4 @ case 2
	.4byte _08041828 @ case 3
	.4byte _08041868 @ case 4
	.4byte _0804196C @ case 5
_08041760:
	movs r0, #0x3f
	movs r1, #0x37
	movs r2, #0x3f
	bl FUN_08053640
	ldr r1, _08041790 @ => 0x03005C90
	ldrb r4, [r1, #1]
	lsls r0, r4, #0x13
	ldrb r5, [r1, #2]
	lsls r1, r5, #0x13
	ldr r3, _08041794 @ => 0x030026E8
	ldrb r2, [r3]
	adds r2, r2, r4
	lsls r2, r2, #0x13
	ldrb r3, [r3, #1]
	adds r3, r3, r5
	lsls r3, r3, #0x13
	bl FUN_08053668
	ldr r1, _08041798 @ => 0x03004720
	movs r0, #1
	str r0, [r1, #0x14]
	b _0804197A
	.align 2, 0
_08041790: .4byte gUnk_03005C90
_08041794: .4byte gUnk_030026E8
_08041798: .4byte gUnk_03004720
_0804179C:
	ldr r1, _080417C8 @ => 0x03005C90
	ldrb r0, [r1, #1]
	ldrb r1, [r1, #2]
	ldr r3, _080417CC @ => 0x030026E8
	ldrb r2, [r3]
	ldrb r3, [r3, #1]
	bl FUN_08041234
	movs r0, #0xb9
	bl FUN_0804DE0C
	bl FUN_08041988
	movs r0, #0xa
	bl FUN_08053378
	ldr r1, _080417D0 @ => 0x03004720
	movs r0, #2
	str r0, [r1, #0x14]
	movs r0, #0xa
	str r0, [r1, #0x18]
	b _0804197A
	.align 2, 0
_080417C8: .4byte gUnk_03005C90
_080417CC: .4byte gUnk_030026E8
_080417D0: .4byte gUnk_03004720
_080417D4:
	ldr r0, [r2, #0x18]
	subs r0, #1
	str r0, [r2, #0x18]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080417E4
	b _0804197A
_080417E4:
	ldr r0, _0804181C @ => 0x03005C90
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _08041814
	ldr r0, [r2, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0xc]
	ldr r1, _08041820 @ => 0x0000011F
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08041814
	adds r0, r2, #0
	adds r0, #0xa9
	ldrb r0, [r0]
	lsrs r0, r0, #4
	lsls r0, r0, #4
	adds r0, #1
	movs r1, #0xf
	bl FUN_08015AF4
_08041814:
	ldr r1, _08041824 @ => 0x03004720
	movs r0, #4
	str r0, [r1, #0x14]
	b _0804197A
	.align 2, 0
_0804181C: .4byte gUnk_03005C90
_08041820: .4byte 0x0000011F
_08041824: .4byte gUnk_03004720
_08041828:
	ldr r0, [r2, #0x18]
	subs r0, #1
	str r0, [r2, #0x18]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08041838
	b _0804197A
_08041838:
	ldr r0, _0804185C @ => 0x03005C90
	ldrb r1, [r0, #1]
	ldrb r2, [r0, #2]
	ldr r0, _08041860 @ => 0x030026E8
	ldrb r3, [r0]
	ldrb r0, [r0, #1]
	str r0, [sp]
	movs r0, #0xc0
	str r0, [sp, #4]
	movs r0, #3
	bl FUN_0800C7A8
	ldr r0, _08041864 @ => 0x03004750
	ldr r0, [r0]
	bl FUN_0802CEC4
	b _0804197A
	.align 2, 0
_0804185C: .4byte gUnk_03005C90
_08041860: .4byte gUnk_030026E8
_08041864: .4byte gUnk_03004750
_08041868:
	bl FUN_08021780
	cmp r0, #1
	bne _080418BA
	ldr r2, _0804188C @ => 0x030042B0
	ldrh r1, [r2, #0xc]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0804189C
	ldr r0, _08041890 @ => 0x03004394
	ldr r1, _08041894 @ => 0x03003DF0
	ldr r2, _08041898 @ => 0x000003F7
	adds r1, r1, r2
	ldrb r1, [r1]
	str r1, [r0]
	b _080418B8
	.align 2, 0
_0804188C: .4byte gUnk_030042B0
_08041890: .4byte gUnk_03004394
_08041894: .4byte gUnk_03003DF0
_08041898: .4byte 0x000003F7
_0804189C:
	ldrh r1, [r2, #0x14]
	movs r3, #4
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _080418B2
	ldrh r1, [r2, #0x1c]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080418BA
_080418B2:
	ldr r1, _080418E4 @ => 0x03004394
	movs r0, #9
	str r0, [r1]
_080418B8:
	movs r4, #1
_080418BA:
	ldr r1, _080418E8 @ => 0x030042B0
	ldrh r2, [r1, #0xc]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r2
	adds r5, r1, #0
	cmp r0, #0
	bne _080418CE
	cmp r4, #1
	bne _080418F4
_080418CE:
	bl FUN_08041C78
	ldr r0, _080418EC @ => 0x03005C90
	ldrb r0, [r0, #4]
	cmp r0, #1
	beq _08041900
	ldr r1, _080418F0 @ => 0x03004720
	ldr r0, [r1, #8]
	str r0, [r1, #0xc]
	b _0804197A
	.align 2, 0
_080418E4: .4byte gUnk_03004394
_080418E8: .4byte gUnk_030042B0
_080418EC: .4byte gUnk_03005C90
_080418F0: .4byte gUnk_03004720
_080418F4:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08041910
	bl FUN_08041C78
_08041900:
	ldr r1, _0804190C @ => 0x03004720
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1, #0xc]
	b _0804197A
	.align 2, 0
_0804190C: .4byte gUnk_03004720
_08041910:
	movs r0, #0xf0
	ands r0, r2
	cmp r0, #0
	beq _0804197A
	ldr r0, _08041948 @ => 0x03005C90
	ldrb r1, [r0, #4]
	adds r2, r0, #0
	cmp r1, #0
	bne _08041962
	ldrb r1, [r2, #3]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08041950
	ldrb r0, [r2]
	cmp r0, #1
	bls _08041950
	ldr r0, _0804194C @ => 0x03004728
	ldrb r2, [r2]
	subs r2, #1
	ldrh r1, [r5, #6]
	str r1, [sp]
	movs r1, #1
	movs r3, #1
	bl FUN_08024A88
	b _08041962
	.align 2, 0
_08041948: .4byte gUnk_03005C90
_0804194C: .4byte gUnk_03004728
_08041950:
	ldr r0, _08041968 @ => 0x03004728
	ldrb r2, [r2]
	subs r2, #1
	ldrh r1, [r5, #6]
	str r1, [sp]
	movs r1, #0
	movs r3, #1
	bl FUN_08024A88
_08041962:
	bl FUN_08041988
	b _0804197A
	.align 2, 0
_08041968: .4byte gUnk_03004728
_0804196C:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0xc]
	ldr r0, _08041984 @ => 0x03004750
	ldr r0, [r0]
	bl FUN_0802CEC4
_0804197A:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08041984: .4byte gUnk_03004750


	thumb_func_start FUN_08041988
FUN_08041988: @ 0x08041988
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	movs r3, #0xb9
	lsls r3, r3, #1
	ldr r5, _08041A34 @ => 0x03005C90
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	mov r8, r0
	movs r0, #8
	add r0, r8
	mov sb, r0
	ldrb r0, [r5, #2]
	lsls r2, r0, #3
	ldr r0, _08041A38 @ => 0x7FFFFFFF
	str r0, [sp, #0x10]
	ldr r4, _08041A3C @ => 0x030026E8
	ldrb r1, [r4, #1]
	movs r0, #1
	ands r0, r1
	adds r7, r2, #0
	adds r7, #0xb
	cmp r0, #0
	beq _080419C0
	subs r7, #1
_080419C0:
	ldrb r0, [r4]
	subs r0, #2
	lsls r6, r0, #3
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _080419D4
	movs r1, #0x28
	add r1, r8
	mov sb, r1
	subs r6, #0x20
_080419D4:
	movs r4, #0
	ldrb r2, [r5]
	cmp r4, r2
	bhs _08041A72
_080419DC:
	movs r1, #0
	ldr r2, _08041A34 @ => 0x03005C90
	ldrb r0, [r2, #4]
	cmp r0, #0
	bne _080419F0
	ldr r0, _08041A40 @ => 0x03004720
	ldr r0, [r0, #8]
	cmp r0, r4
	bne _080419F0
	movs r1, #1
_080419F0:
	movs r0, #3
	movs r2, #1
	rsbs r2, r2, #0
	str r3, [sp, #0x14]
	bl FUN_0801FEA0
	ldr r1, _08041A44 @ => 0x03005C60
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl FUN_0801FD90
	str r0, [sp, #0xc]
	ldrb r0, [r0]
	adds r4, #1
	mov sl, r4
	ldr r3, [sp, #0x14]
	cmp r0, #0
	beq _08041A68
	add r5, sp, #0xc
	add r4, sp, #0x10
	lsrs r0, r6, #1
	mov r8, r0
_08041A1E:
	ldr r1, _08041A34 @ => 0x03005C90
	ldrb r0, [r1, #1]
	subs r2, r7, #1
	cmp r0, #0
	bne _08041A48
	str r5, [sp]
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r3, #0
	mov r1, sb
	b _08041A56
	.align 2, 0
_08041A34: .4byte gUnk_03005C90
_08041A38: .4byte 0x7FFFFFFF
_08041A3C: .4byte gUnk_030026E8
_08041A40: .4byte gUnk_03004720
_08041A44: .4byte gChoiceIDs
_08041A48:
	str r5, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r3, #0
	mov r1, sb
	add r1, r8
_08041A56:
	adds r3, r6, #0
	bl FUN_080201CC
	adds r3, r0, #0
	adds r7, #0xc
	ldr r0, [sp, #0xc]
	ldrb r0, [r0]
	cmp r0, #0
	bne _08041A1E
_08041A68:
	mov r4, sl
	ldr r2, _08041A84 @ => 0x03005C90
	ldrb r2, [r2]
	cmp r4, r2
	blo _080419DC
_08041A72:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08041A84: .4byte gUnk_03005C90

	thumb_func_start FUN_08041A88
FUN_08041A88: @ 0x08041A88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x80
	str r1, [sp, #0x78]
	mov r8, r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r0, #0
	str r0, [sp, #0x7c]
	str r0, [r2]
	ldr r0, _08041B60 @ => 0x03005C90
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _08041AB2
	adds r0, r7, #0
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08041AB2:
	adds r0, r7, #0
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r4, #0
	ldr r1, _08041B64 @ => 0x03005C60
	ldrh r0, [r1]
	cmp r0, #0
	beq _08041B4A
_08041AC4:
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl FUN_08050820
	adds r6, r0, #0
	ldrb r0, [r6]
	adds r4, #1
	mov sl, r4
	cmp r0, #0
	beq _08041B3C
	movs r1, #0
	mov sb, r1
_08041ADE:
	adds r0, r6, #0
	adds r1, r7, #0
	bl FUN_0801F7C0
	adds r5, r0, #0
	cmp r5, r6
	beq _08041AF0
	cmp r5, #0
	bne _08041B00
_08041AF0:
	adds r5, r6, #0
	ldrb r0, [r6]
	cmp r0, #0
	beq _08041B00
_08041AF8:
	adds r5, #1
	ldrb r0, [r5]
	cmp r0, #0
	bne _08041AF8
_08041B00:
	subs r4, r5, r6
	mov r0, sp
	adds r1, r6, #0
	adds r2, r4, #0
	bl FUN_0802CBAC
	mov r1, sp
	adds r0, r1, r4
	mov r1, sb
	strb r1, [r0]
	adds r4, #1
	mov r1, sp
	adds r0, r1, r4
	mov r1, sb
	strb r1, [r0]
	mov r0, sp
	bl FUN_0801FF60
	ldr r1, [sp, #0x7c]
	cmp r0, r1
	bls _08041B2C
	str r0, [sp, #0x7c]
_08041B2C:
	mov r1, r8
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	adds r6, r5, #0
	ldrb r0, [r6]
	cmp r0, #0
	bne _08041ADE
_08041B3C:
	mov r4, sl
	ldr r1, _08041B64 @ => 0x03005C60
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _08041AC4
_08041B4A:
	ldr r0, [sp, #0x7c]
	ldr r1, [sp, #0x78]
	str r0, [r1]
	add sp, #0x80
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08041B60: .4byte gUnk_03005C90
_08041B64: .4byte gChoiceIDs

	thumb_func_start ChoiceMenu_Terminate
ChoiceMenu_Terminate: @ 0x08041B68
	push {lr}
	ldr r3, _08041BAC @ => 0x03005C90
	ldr r2, [r3, #8]
	cmp r2, #0
	beq _08041B7A
	ldr r0, [r2, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0xc]
_08041B7A:
	adds r0, r3, #0
	movs r1, #0
	movs r2, #0xc
	bl FUN_0802CB40
	ldr r0, _08041BB0 @ => 0x03005C60
	movs r1, #0
	movs r2, #0xa
	bl FUN_0802CB40
	ldr r0, _08041BB4 @ => 0x03004720
	ldr r0, [r0, #0x14]
	cmp r0, #5
	beq _08041B9A
	bl FUN_08053630
_08041B9A:
	bl FUN_0802CEB4
	cmp r0, #1
	bne _08041BB8
	movs r0, #0x80
	lsls r0, r0, #0x12
	bl FUN_080014E4
	b _08041BE0
	.align 2, 0
_08041BAC: .4byte gUnk_03005C90
_08041BB0: .4byte gChoiceIDs
_08041BB4: .4byte gUnk_03004720
_08041BB8:
	movs r0, #0x3f
	movs r1, #0
	bl FUN_0804582C
	bl FUN_0802B214
	bl FUN_0803FDB8
	bl FUN_0803FE00
	movs r0, #0
	bl FUN_08001580
	bl FUN_08015834
	bl FUN_0800CB20
	ldr r0, _08041BEC @ => FUN_08025038
	bl FUN_08024F40
_08041BE0:
	movs r0, #0xa
	bl FUN_08024C78
	pop {r0}
	bx r0
	.align 2, 0
_08041BEC: .4byte FUN_08025038
