.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_08029344
FUN_08029344: @ 0x08029344
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r5, #0
	ldr r6, _08029388 @ => 0x08063764
_0802934C:
	lsls r4, r5, #2
	adds r0, r4, r6
	ldr r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	ldr r2, _0802938C @ => 0x08063754
	movs r3, #0
	bl FUN_0802D6FC
	ldr r0, _08029390 @ => 0x03004790
	adds r4, r4, r0
	ldr r0, [r4]
	movs r1, #1
	movs r2, #2
	movs r3, #0
	bl FUN_08029394
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _0802934C
	movs r0, #1
	bl FUN_08029470
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08029388: .4byte ROMREF_08063764
_0802938C: .4byte ROMREF_08063754
_08029390: .4byte gUnk_03004790

	thumb_func_start FUN_08029394
FUN_08029394: @ 0x08029394
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r3, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r0, #0x19
	str r0, [r5, #0xc]
	adds r6, r5, #0
	adds r6, #0xa9
	movs r0, #3
	ands r2, r0
	lsls r2, r2, #2
	ldrb r3, [r6]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	lsls r1, r1, #4
	movs r2, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r6]
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08001FB0
	adds r0, r5, #0
	movs r1, #0xb
	bl FUN_08001F84
	lsls r4, r4, #4
	ldr r0, _080293F0 @ => 0x08063754
	adds r4, r4, r0
	ldr r0, [r4, #8]
	ldrb r1, [r6]
	lsrs r1, r1, #4
	lsls r1, r1, #4
	movs r2, #0x10
	bl FUN_0801579C
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080293F0: .4byte ROMREF_08063754

	thumb_func_start FUN_080293F4
FUN_080293F4: @ 0x080293F4
	push {lr}
	sub sp, #4
	movs r0, #0
	bl FUN_08029470
	ldr r0, _0802941C @ => 0x0300436C
	ldr r1, _08029420 @ => 0x030042B0
	ldrh r1, [r1, #6]
	str r1, [sp]
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl FUN_08024A88
	movs r0, #1
	bl FUN_08029470
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0802941C: .4byte gUnk_0300436C
_08029420: .4byte gUnk_030042B0

	thumb_func_start FUN_08029424
FUN_08029424: @ 0x08029424
	push {r4, lr}
	ldr r4, _08029444 @ => 0x0300436C
	ldr r0, [r4]
	cmp r0, #0
	beq _0802943E
	bl FUN_0802ADBC
	ldr r1, [r4]
	subs r1, #1
	movs r0, #0x18
	movs r2, #0
	bl FUN_0802CED4
_0802943E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08029444: .4byte gUnk_0300436C

	thumb_func_start FUN_08029448
FUN_08029448: @ 0x08029448
	push {r4, lr}
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #1
	movs r1, #0
	bl FUN_0801FEA0
	movs r4, #0
_08029458:
	adds r0, r4, #0
	bl FUN_08029260
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08029458
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08029470
FUN_08029470: @ 0x08029470
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r0, #0
	movs r5, #0
	cmp r2, #1
	bne _08029480
	movs r5, #1
_08029480:
	ldr r1, _080294AC @ => 0x03004790
	ldr r4, _080294B0 @ => 0x0300436C
	ldr r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r2, #0
	bl FUN_08000E44
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #1
	adds r1, r5, #0
	bl FUN_0801FEA0
	ldr r0, [r4]
	bl FUN_08029260
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080294AC: .4byte gUnk_03004790
_080294B0: .4byte gUnk_0300436C

	thumb_func_start FUN_080294B4
FUN_080294B4: @ 0x080294B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	mov r3, sp
	ldr r2, _08029560 @ => 0x08063794
	ldr r1, _08029564 @ => 0x03003DF0
	adds r1, #0x34
	ldrb r0, [r1]
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #4]
	strb r0, [r3]
	movs r3, #1
	ldrb r0, [r1]
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r1, [r0, #5]
	cmp r1, #0x31
	beq _080294E8
	mov r0, sp
	adds r0, #1
	strb r1, [r0]
	movs r3, #2
_080294E8:
	mov r8, r3
	movs r7, #0
	movs r4, #0
	cmp r7, r8
	bhs _0802954C
	add r0, sp, #4
	mov sb, r0
_080294F6:
	mov r1, sp
	adds r0, r1, r4
	ldrb r0, [r0]
	add r1, sp, #4
	bl FUN_08029794
	lsls r0, r0, #0x18
	movs r2, #0
	lsrs r0, r0, #0x18
	adds r4, #1
	mov sl, r4
	cmp r2, r0
	bhs _08029542
	mov r4, sb
	ldr r5, _08029568 @ => 0x0807281C
	movs r6, #8
	adds r6, r6, r5
	mov ip, r6
	adds r3, r0, #0
_0802951C:
	lsls r0, r2, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #2
	adds r0, r1, r5
	ldrb r0, [r0, #0x10]
	cmp r0, #4
	beq _08029538
	mov r6, ip
	adds r0, r1, r6
	ldr r0, [r0]
	adds r7, r7, r0
_08029538:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r3
	blo _0802951C
_08029542:
	mov r1, sl
	lsls r0, r1, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r8
	blo _080294F6
_0802954C:
	adds r0, r7, #0
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08029560: .4byte ROMREF_08063794
_08029564: .4byte gUnk_03003DF0
_08029568: .4byte ItemInfoData

	thumb_func_start FUN_0802956C
FUN_0802956C: @ 0x0802956C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov r3, sp
	ldr r2, _080295D4 @ => 0x08063794
	ldr r4, _080295D8 @ => 0x03003DF0
	adds r1, r4, #0
	adds r1, #0x34
	ldrb r0, [r1]
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #4]
	strb r0, [r3]
	movs r3, #1
	ldrb r0, [r1]
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r1, [r0, #5]
	cmp r1, #0x31
	beq _080295A0
	mov r0, sp
	adds r0, #1
	strb r1, [r0]
	movs r3, #2
_080295A0:
	mov r8, r3
	movs r6, #0
	movs r2, #0
	cmp r6, r8
	bhs _080295CA
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r3, _080295DC @ => 0x00000784
	ldr r1, [r0]
_080295B4:
	mov r4, sp
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r3
	adds r4, r1, r0
	ldrb r0, [r4, #1]
	adds r6, r6, r0
	adds r2, #1
	cmp r2, r8
	blo _080295B4
_080295CA:
	cmp r6, #0
	bne _080295E0
	movs r0, #0
	b _08029636
	.align 2, 0
_080295D4: .4byte ROMREF_08063794
_080295D8: .4byte gUnk_03003DF0
_080295DC: .4byte 0x00000784
_080295E0:
	movs r2, #0
	cmp r2, r8
	bhs _08029634
	ldr r0, _08029644 @ => 0x03003FD0
	mov sb, r0
_080295EA:
	mov r1, sp
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r3, _08029648 @ => 0x00000784
	adds r0, r0, r3
	mov r4, sb
	ldr r1, [r4]
	adds r4, r1, r0
	movs r5, #0
	adds r7, r2, #1
	ldrb r0, [r4, #1]
	cmp r5, r0
	bhs _0802962E
	ldr r3, _08029644 @ => 0x03003FD0
_08029608:
	ldr r2, [r3]
	ldrb r1, [r4]
	adds r1, r1, r5
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	ldrh r0, [r2, #4]
	str r3, [sp, #4]
	bl FUN_0802981C
	ldr r3, [sp, #4]
	cmp r0, #0
	bne _08029626
	subs r6, #1
_08029626:
	adds r5, #1
	ldrb r1, [r4, #1]
	cmp r5, r1
	blo _08029608
_0802962E:
	adds r2, r7, #0
	cmp r2, r8
	blo _080295EA
_08029634:
	adds r0, r6, #0
_08029636:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08029644: .4byte gUnk_03003FD0
_08029648: .4byte 0x00000784

	thumb_func_start FUN_0802964C
FUN_0802964C: @ 0x0802964C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r3, sp
	ldr r2, _080296F4 @ => 0x08063794
	ldr r4, _080296F8 @ => 0x03003DF0
	adds r1, r4, #0
	adds r1, #0x34
	ldrb r0, [r1]
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #4]
	strb r0, [r3]
	movs r3, #1
	ldrb r0, [r1]
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r1, [r0, #5]
	cmp r1, #0x31
	beq _0802967E
	mov r0, sp
	adds r0, #1
	strb r1, [r0]
	movs r3, #2
_0802967E:
	mov r8, r3
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r4, r4, r0
_08029686:
	movs r0, #0
	mov r1, r8
	subs r1, #1
	bl FUN_080424F8
	mov r1, sp
	adds r7, r1, r0
	ldrb r0, [r7]
	lsls r0, r0, #2
	ldr r1, _080296FC @ => 0x00000784
	adds r0, r0, r1
	ldr r1, [r4]
	adds r5, r1, r0
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _08029686
	ldrb r1, [r5, #1]
	subs r1, #1
	movs r0, #0
	bl FUN_080424F8
	adds r6, r0, #0
	ldr r2, [r4]
	ldrb r1, [r5]
	adds r1, r1, r6
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	ldrh r0, [r2, #4]
	bl FUN_0802981C
	cmp r0, #0
	beq _08029686
	movs r4, #0
	ldrb r0, [r5, #1]
	cmp r4, r0
	bhs _080296E8
_080296D2:
	cmp r4, r6
	bne _080296E0
	ldrb r1, [r7]
	ldr r0, _08029700 @ => 0x03003E48
	adds r2, r4, #0
	bl FUN_08025AFC
_080296E0:
	adds r4, #1
	ldrb r1, [r5, #1]
	cmp r4, r1
	blo _080296D2
_080296E8:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080296F4: .4byte ROMREF_08063794
_080296F8: .4byte gUnk_03003DF0
_080296FC: .4byte 0x00000784
_08029700: .4byte gUnk_03003E48

	thumb_func_start FUN_08029704
FUN_08029704: @ 0x08029704
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start FUN_0802970C
FUN_0802970C: @ 0x0802970C
	push {lr}
	movs r1, #1
	bl FUN_080441DC
	pop {r0}
	bx r0

	thumb_func_start FUN_08029718
FUN_08029718: @ 0x08029718
	push {lr}
	movs r1, #1
	bl FUN_08044054
	pop {r0}
	bx r0

	thumb_func_start FUN_08029724
FUN_08029724: @ 0x08029724
	push {lr}
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	ldr r1, _08029744 @ => 0x08063794
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r1, r0, r1
	ldrb r0, [r1, #4]
	cmp r0, r2
	beq _0802973E
	ldrb r0, [r1, #5]
	cmp r0, r2
	bne _08029748
_0802973E:
	movs r0, #1
	b _0802974A
	.align 2, 0
_08029744: .4byte ROMREF_08063794
_08029748:
	movs r0, #0
_0802974A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08029750
FUN_08029750: @ 0x08029750
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, _08029780 @ => 0x08063794
	ldr r1, _08029784 @ => 0x03003DF0
	adds r1, #0x34
	ldrb r0, [r1]
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #4]
	strb r0, [r3]
	movs r4, #1
	ldrb r0, [r1]
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #5]
	cmp r0, #0x31
	beq _08029776
	strb r0, [r3, #1]
	movs r4, #2
_08029776:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08029780: .4byte ROMREF_08063794
_08029784: .4byte gUnk_03003DF0

	thumb_func_start FUN_08029788
FUN_08029788: @ 0x08029788
	push {lr}
	bl FUN_080294B4
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08029794
FUN_08029794: @ 0x08029794
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r4, #0
	ldr r0, _080297C8 @ => 0x030043A0
	ldr r0, [r0]
	cmp r1, r0
	bne _080297D0
	ldr r0, _080297CC @ => 0x03005B90
	ldr r1, [r0]
	cmp r1, #0
	beq _0802980C
_080297AE:
	ldr r2, [r1]
	lsls r0, r4, #1
	adds r0, r0, r6
	ldrh r1, [r1, #8]
	strh r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r1, r2, #0
	cmp r1, #0
	bne _080297AE
	b _0802980C
	.align 2, 0
_080297C8: .4byte gUnk_030043A0
_080297CC: .4byte gUnk_03005B90
_080297D0:
	ldr r0, _08029814 @ => 0x03003DF0
	movs r3, #0xf0
	lsls r3, r3, #1
	adds r2, r0, r3
	lsls r0, r1, #2
	ldr r1, _08029818 @ => 0x00000784
	adds r0, r0, r1
	ldr r1, [r2]
	adds r5, r1, r0
	ldrb r3, [r5, #1]
	cmp r4, r3
	bhs _0802980C
	adds r7, r2, #0
_080297EA:
	lsls r3, r4, #1
	adds r3, r3, r6
	ldr r2, [r7]
	ldrb r1, [r5]
	adds r1, r1, r4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	ldrh r0, [r2, #4]
	strh r0, [r3]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _080297EA
_0802980C:
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08029814: .4byte gUnk_03003DF0
_08029818: .4byte 0x00000784

	thumb_func_start FUN_0802981C
FUN_0802981C: @ 0x0802981C
	ldr r2, _0802982C @ => 0x08073A54
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r2, #0x28
	adds r1, r1, r2
	ldr r0, [r1]
	bx lr
	.align 2, 0
_0802982C: .4byte ROMREF_08073A54
