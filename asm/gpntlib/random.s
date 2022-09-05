@ This file contains the Mersenne Twister random engine part used in Griptonite's Games.
.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_080422D0
FUN_080422D0: @ 0x080422D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _08042400 @ => 0x030026EC
	ldr r4, [r2]
	movs r0, #8
	adds r0, r0, r4
	mov ip, r0
	ldr r1, _08042404 @ => 0x00000634
	adds r7, r4, r1
	ldr r0, _08042408 @ => 0x030026F4
	ldr r3, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	mov sl, r2
	adds r2, r0, #0
	ldr r6, _0804240C @ => 0x030026F0
	cmp r3, r1
	bge _08042318
	ldr r0, _08042410 @ => 0x03002704
	ldr r1, [r0]
	movs r0, #1
	orrs r1, r0
	movs r0, #0
	str r0, [r2]
	adds r3, r4, #0
	stm r3!, {r1}
	ldr r0, _08042414 @ => 0x0000026F
	ldr r5, _08042418 @ => 0x00010DCD
_0804230E:
	muls r1, r5, r1
	stm r3!, {r1}
	subs r0, #1
	cmp r0, #0
	bne _0804230E
_08042318:
	ldr r0, _08042414 @ => 0x0000026F
	str r0, [r2]
	mov r1, sl
	ldr r0, [r1]
	adds r1, r0, #4
	str r1, [r6]
	ldr r3, [r0]
	ldr r2, [r0, #4]
	movs r5, #0xe3
	movs r0, #0x80
	lsls r0, r0, #0x18
	mov r8, r0
	ldr r6, _0804241C @ => 0x7FFFFFFF
_08042332:
	mov r1, r8
	ands r3, r1
	adds r0, r2, #0
	ands r0, r6
	orrs r0, r3
	lsrs r0, r0, #1
	ldm r7!, {r1}
	adds r3, r4, #0
	adds r4, #4
	eors r1, r0
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08042352
	ldr r0, _08042420 @ => 0x9908B0DF
	eors r1, r0
_08042352:
	str r1, [r3]
	adds r3, r2, #0
	mov r0, ip
	adds r0, #4
	mov ip, r0
	subs r0, #4
	ldm r0!, {r2}
	subs r5, #1
	cmp r5, #0
	bne _08042332
	mov r1, sl
	ldr r7, [r1]
	movs r5, #0xc6
	lsls r5, r5, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	mov sb, r0
	ldr r1, _0804241C @ => 0x7FFFFFFF
	mov r8, r1
_08042378:
	mov r0, sb
	ands r3, r0
	adds r0, r2, #0
	mov r1, r8
	ands r0, r1
	orrs r0, r3
	lsrs r0, r0, #1
	ldm r7!, {r1}
	adds r3, r4, #0
	adds r4, #4
	eors r1, r0
	movs r6, #1
	adds r0, r2, #0
	ands r0, r6
	cmp r0, #0
	beq _0804239C
	ldr r0, _08042420 @ => 0x9908B0DF
	eors r1, r0
_0804239C:
	str r1, [r3]
	adds r3, r2, #0
	mov r0, ip
	adds r0, #4
	mov ip, r0
	subs r0, #4
	ldm r0!, {r2}
	subs r5, #1
	cmp r5, #0
	bne _08042378
	mov r1, sl
	ldr r0, [r1]
	ldr r2, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x18
	ands r1, r3
	ldr r0, _0804241C @ => 0x7FFFFFFF
	ands r0, r2
	orrs r0, r1
	lsrs r0, r0, #1
	ldr r1, [r7]
	eors r1, r0
	str r1, [r4]
	adds r0, r2, #0
	ands r0, r6
	cmp r0, #0
	beq _080423D8
	ldr r0, _08042420 @ => 0x9908B0DF
	eors r1, r0
	str r1, [r4]
_080423D8:
	lsrs r0, r2, #0xb
	eors r2, r0
	lsls r0, r2, #7
	ldr r1, _08042424 @ => 0x9D2C5680
	ands r0, r1
	eors r2, r0
	lsls r0, r2, #0xf
	ldr r1, _08042428 @ => 0xEFC60000
	ands r0, r1
	eors r2, r0
	lsrs r0, r2, #0x12
	eors r2, r0
	adds r0, r2, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08042400: .4byte gUnk_030026EC
_08042404: .4byte 0x00000634
_08042408: .4byte gUnk_030026F4
_0804240C: .4byte gUnk_030026F0
_08042410: .4byte gUnk_03002704
_08042414: .4byte 0x0000026F
_08042418: .4byte 0x00010DCD
_0804241C: .4byte 0x7FFFFFFF
_08042420: .4byte 0x9908B0DF
_08042424: .4byte 0x9D2C5680
_08042428: .4byte 0xEFC60000

	thumb_func_start FUN_0804242C
FUN_0804242C: @ 0x0804242C
	push {r4, lr}
	ldr r4, _08042440 @ => 0x030026EC
	ldr r0, _08042444 @ => 0x000009C4
	bl FUN_0802C95C
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08042440: .4byte gUnk_030026EC
_08042444: .4byte 0x000009C4

	thumb_func_start FUN_08042448
FUN_08042448: @ 0x08042448
	push {r4, r5, r6, lr}
	ldr r0, _080424A8 @ => 0x030026F4
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	ldr r0, _080424AC @ => 0x030026FC
	str r1, [r0]
	ldr r4, _080424B0 @ => 0x03002704
	ldr r5, _080424B4 @ => 0x030042E0
	ldr r0, [r5]
	ldr r1, [r0, #0x1c]
	lsls r1, r1, #4
	ldr r6, _080424B8 @ => 0x030042B0
	ldrh r0, [r6, #8]
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	cmp r0, #0
	bne _08042480
	bl FUN_08042674
	ldr r1, _080424BC @ => 0x000FFF1F
	bl __umodsi3
	adds r0, #1
	str r0, [r4]
_08042480:
	ldr r0, _080424C0 @ => 0x03002700
	ldr r2, [r0]
	adds r2, #1
	str r2, [r0]
	ldr r0, [r4]
	lsls r0, r0, #8
	ldr r1, [r5]
	ldr r1, [r1, #0x1c]
	lsls r1, r1, #6
	adds r0, r0, r1
	lsls r2, r2, #4
	adds r0, r0, r2
	ldrh r1, [r6, #8]
	orrs r0, r1
	str r0, [r4]
	bl FUN_0804263C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080424A8: .4byte gUnk_030026F4
_080424AC: .4byte gUnk_030026FC
_080424B0: .4byte gUnk_03002704
_080424B4: .4byte gUnk_030042E0
_080424B8: .4byte gUnk_030042B0
_080424BC: .4byte 0x000FFF1F
_080424C0: .4byte gUnk_03002700

	thumb_func_start FUN_080424C4
FUN_080424C4: @ 0x080424C4
	push {lr}
	ldr r1, _080424E4 @ => 0x03002704
	str r0, [r1]
	bl FUN_0804263C
	ldr r1, _080424E8 @ => 0x030026F4
	ldr r0, _080424EC @ => 0x0000026F
	str r0, [r1]
	ldr r1, _080424F0 @ => 0x030026F0
	ldr r0, _080424F4 @ => 0x030026EC
	ldr r0, [r0]
	adds r0, #4
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080424E4: .4byte gUnk_03002704
_080424E8: .4byte gUnk_030026F4
_080424EC: .4byte 0x0000026F
_080424F0: .4byte gUnk_030026F0
_080424F4: .4byte gUnk_030026EC

	thumb_func_start FUN_080424F8
FUN_080424F8: @ 0x080424F8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	cmp r4, r5
	beq _0804251C
	bl FUN_08042674
	ldr r1, _08042518 @ => 0x00007FFF
	ands r1, r0
	subs r0, r5, r4
	adds r0, #1
	muls r0, r1, r0
	asrs r0, r0, #0xf
	adds r0, r4, r0
	b _0804251E
	.align 2, 0
_08042518: .4byte 0x00007FFF
_0804251C:
	adds r0, r4, #0
_0804251E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start FUN_08042524
FUN_08042524: @ 0x08042524
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_080426C4
	ldr r1, _08042548 @ => 0x00007FFF
	ands r1, r0
	subs r4, r4, r5
	adds r4, #1
	adds r0, r1, #0
	muls r0, r4, r0
	asrs r0, r0, #0xf
	adds r5, r5, r0
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08042548: .4byte 0x00007FFF

	thumb_func_start FUN_0804254C
FUN_0804254C: @ 0x0804254C
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl FUN_08042674
	ldr r1, _0804256C @ => 0x00007FFF
	ands r0, r1
	adds r4, #1
	muls r0, r4, r0
	lsls r0, r0, #1
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804256C: .4byte 0x00007FFF

	thumb_func_start FUN_08042570
FUN_08042570: @ 0x08042570
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl FUN_080426C4
	ldr r1, _08042590 @ => 0x00007FFF
	ands r0, r1
	adds r4, #1
	muls r0, r4, r0
	lsls r0, r0, #1
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08042590: .4byte 0x00007FFF

	thumb_func_start FUN_08042594
FUN_08042594: @ 0x08042594
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl FUN_08042674
	ldr r1, _080425B8 @ => 0x00007FFF
	ands r1, r0
	lsls r0, r4, #1
	adds r0, #1
	muls r0, r1, r0
	lsrs r0, r0, #0xf
	subs r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080425B8: .4byte 0x00007FFF

	thumb_func_start FUN_080425BC
FUN_080425BC: @ 0x080425BC
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl FUN_080426C4
	ldr r1, _080425E0 @ => 0x00007FFF
	ands r1, r0
	lsls r0, r4, #1
	adds r0, #1
	muls r0, r1, r0
	lsrs r0, r0, #0xf
	subs r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080425E0: .4byte 0x00007FFF

	thumb_func_start FUN_080425E4
FUN_080425E4: @ 0x080425E4
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl FUN_08042674
	ldr r1, _08042604 @ => 0x00007FFF
	ands r1, r0
	movs r0, #0x65
	muls r0, r1, r0
	lsrs r0, r0, #0xf
	cmp r4, r0
	blo _08042608
	movs r0, #1
	b _0804260A
	.align 2, 0
_08042604: .4byte 0x00007FFF
_08042608:
	movs r0, #0
_0804260A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_08042610
FUN_08042610: @ 0x08042610
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl FUN_080426C4
	ldr r1, _08042630 @ => 0x00007FFF
	ands r1, r0
	movs r0, #0x65
	muls r0, r1, r0
	lsrs r0, r0, #0xf
	cmp r4, r0
	blo _08042634
	movs r0, #1
	b _08042636
	.align 2, 0
_08042630: .4byte 0x00007FFF
_08042634:
	movs r0, #0
_08042636:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_0804263C
FUN_0804263C: @ 0x0804263C
	push {lr}
	adds r2, r0, #0
	movs r0, #1
	orrs r2, r0
	ldr r0, _08042664 @ => 0x030026EC
	ldr r3, [r0]
	ldr r1, _08042668 @ => 0x030026F4
	movs r0, #0
	str r0, [r1]
	stm r3!, {r2}
	ldr r0, _0804266C @ => 0x0000026F
	ldr r1, _08042670 @ => 0x00010DCD
_08042654:
	muls r2, r1, r2
	stm r3!, {r2}
	subs r0, #1
	cmp r0, #0
	bne _08042654
	pop {r0}
	bx r0
	.align 2, 0
_08042664: .4byte gUnk_030026EC
_08042668: .4byte gUnk_030026F4
_0804266C: .4byte 0x0000026F
_08042670: .4byte 0x00010DCD

	thumb_func_start FUN_08042674
FUN_08042674: @ 0x08042674
	push {lr}
	ldr r1, _080426A8 @ => 0x030026F4
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	blt _080426BC
	ldr r2, _080426AC @ => 0x030026F0
	ldr r0, [r2]
	ldm r0!, {r1}
	str r0, [r2]
	lsrs r0, r1, #0xb
	eors r1, r0
	lsls r0, r1, #7
	ldr r2, _080426B0 @ => 0x9D2C5680
	ands r0, r2
	eors r1, r0
	lsls r0, r1, #0xf
	ldr r2, _080426B4 @ => 0xEFC60000
	ands r0, r2
	eors r1, r0
	ldr r2, _080426B8 @ => 0x03005C9C
	lsrs r0, r1, #0x12
	eors r0, r1
	strb r0, [r2]
	b _080426C0
	.align 2, 0
_080426A8: .4byte gUnk_030026F4
_080426AC: .4byte gUnk_030026F0
_080426B0: .4byte 0x9D2C5680
_080426B4: .4byte 0xEFC60000
_080426B8: .4byte gUnk_03005C9C
_080426BC:
	bl FUN_080422D0
_080426C0:
	pop {r1}
	bx r1

	thumb_func_start FUN_080426C4
FUN_080426C4: @ 0x080426C4
	push {lr}
	ldr r1, _08042704 @ => 0x030026FC
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	ldr r2, _08042708 @ => 0x030026F8
	cmp r0, #0
	bge _080426E0
	ldr r0, _0804270C @ => 0x0000026F
	str r0, [r1]
	ldr r0, _08042710 @ => 0x030026EC
	ldr r0, [r0]
	adds r0, #4
	str r0, [r2]
_080426E0:
	ldr r1, [r2]
	ldm r1!, {r0}
	str r1, [r2]
	lsrs r1, r0, #0xb
	eors r0, r1
	lsls r1, r0, #7
	ldr r2, _08042714 @ => 0x9D2C5680
	ands r1, r2
	eors r0, r1
	lsls r1, r0, #0xf
	ldr r2, _08042718 @ => 0xEFC60000
	ands r1, r2
	eors r0, r1
	lsrs r1, r0, #0x12
	eors r0, r1
	pop {r1}
	bx r1
	.align 2, 0
_08042704: .4byte gUnk_030026FC
_08042708: .4byte gUnk_030026F8
_0804270C: .4byte 0x0000026F
_08042710: .4byte gUnk_030026EC
_08042714: .4byte 0x9D2C5680
_08042718: .4byte 0xEFC60000

@ Unsure if the next functions are part of random too or not, they do call the random functions,
@ but don't exactly seem to be related to it???
