.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_08035534
FUN_08035534: @ 0x08035534
	push {r4, lr}
	ldr r4, _0803556C @ => 0x030047F4
	ldr r0, [r4]
	cmp r0, #1
	bne _08035554
	ldr r0, _08035570 @ => 0x00000299
	movs r1, #1
	bl FUN_080213A4
	ldr r0, _08035574 @ => 0x0000029A
	ldr r1, _08035578 @ => 0x03002300
	ldr r1, [r1, #0x2c]
	bl FUN_080213A4
	movs r0, #0
	str r0, [r4]
_08035554:
	ldr r0, _08035578 @ => 0x03002300
	adds r0, #0x34
	ldrb r0, [r0]
	ldr r1, _0803557C @ => 0x030043A0
	ldr r2, [r1]
	movs r1, #0
	bl FUN_0802CED4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803556C: .4byte gUnk_030047F4
_08035570: .4byte 0x00000299
_08035574: .4byte 0x0000029A
_08035578: .4byte gUnk_03002300
_0803557C: .4byte gUnk_030043A0

	thumb_func_start FUN_08035580
FUN_08035580: @ 0x08035580
	ldr r0, _08035588 @ => 0x03002300
	adds r0, #0x34
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08035588: .4byte gUnk_03002300

	thumb_func_start FUN_0803558C
FUN_0803558C: @ 0x0803558C
	ldr r1, _08035594 @ => 0x03002300
	str r0, [r1, #0x2c]
	bx lr
	.align 2, 0
_08035594: .4byte gUnk_03002300

	thumb_func_start FUN_08035598
FUN_08035598: @ 0x08035598
	push {r4, lr}
	movs r4, #0
	b _080355CA
_0803559E:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x10
	subs r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl FUN_080455AC
	ldr r3, _080355D8 @ => 0x04000004
	ldrh r1, [r3]
	movs r0, #2
	ands r0, r1
	adds r2, r4, #2
	cmp r0, #0
	bne _080355C8
	movs r4, #2
_080355BE:
	ldrh r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080355BE
_080355C8:
	adds r4, r2, #0
_080355CA:
	ldr r0, _080355DC @ => 0x03004720
	ldr r0, [r0, #0x18]
	cmp r4, r0
	ble _0803559E
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080355D8: .4byte 0x04000004
_080355DC: .4byte gUnk_03004720

	thumb_func_start FUN_080355E0
FUN_080355E0: @ 0x080355E0
	push {r4, lr}
	ldr r0, _08035624 @ => 0x03004720
	ldr r1, [r0, #0x18]
	movs r0, #0x10
	subs r4, r0, r1
	cmp r4, #0x10
	bgt _0803561E
_080355EE:
	movs r0, #0x10
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	bl FUN_080455AC
	ldr r3, _08035628 @ => 0x04000004
	ldrh r1, [r3]
	movs r0, #2
	ands r0, r1
	adds r2, r4, #2
	cmp r0, #0
	bne _08035618
	movs r4, #2
_0803560E:
	ldrh r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0803560E
_08035618:
	adds r4, r2, #0
	cmp r4, #0x10
	ble _080355EE
_0803561E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08035624: .4byte gUnk_03004720
_08035628: .4byte 0x04000004
