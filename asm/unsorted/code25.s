.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_0802D068
FUN_0802D068: @ 0x0802D068
	push {r4, r5, lr}
	ldr r0, _0802D0E4 @ => 0x03002070
	ldr r2, [r0]
	adds r5, r0, #0
	cmp r2, #0
	beq _0802D112
	ldr r1, [r5, #4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r4, r0, #2
	adds r0, r2, #0
	adds r0, #0x10
	adds r0, r0, r4
	ldr r3, [r0]
	ldr r0, _0802D0E8 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802D098
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	bne _0802D0F6
_0802D098:
	adds r0, r2, #0
	adds r0, #0x14
	adds r0, r0, r4
	ldr r3, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802D0B0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	bne _0802D0F6
_0802D0B0:
	adds r0, r2, #0
	adds r0, #0x18
	adds r0, r0, r4
	ldr r3, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0802D0C8
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	bne _0802D0F6
_0802D0C8:
	adds r0, r2, #0
	adds r0, #0x1c
	adds r0, r0, r4
	ldr r3, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802D112
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	bne _0802D0F6
	b _0802D112
	.align 2, 0
_0802D0E4: .4byte gUnk_03002070
_0802D0E8: .4byte gUnk_030042B0
_0802D0EC:
	adds r0, r2, #0
	bl FUN_0802D228
	movs r0, #1
	b _0802D114
_0802D0F6:
	movs r2, #0
	ldr r0, [r5]
	ldr r1, [r0]
	cmp r2, r1
	bhs _0802D112
	adds r4, r1, #0
	adds r1, r0, #4
_0802D104:
	ldr r0, [r1]
	cmp r0, r3
	beq _0802D0EC
	adds r1, #0x1c
	adds r2, #1
	cmp r2, r4
	blo _0802D104
_0802D112:
	movs r0, #0
_0802D114:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0802D11C
FUN_0802D11C: @ 0x0802D11C
	push {r4, lr}
	ldr r4, _0802D138 @ => 0x03002070
	str r0, [r4]
	adds r0, r1, #0
	bl FUN_0802D1F4
	str r0, [r4, #4]
	str r0, [r4, #8]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802D138: .4byte gUnk_03002070

	thumb_func_start FUN_0802D13C
FUN_0802D13C: @ 0x0802D13C
	ldr r0, _0802D150 @ => 0x03002070
	ldr r1, [r0]
	ldr r2, [r0, #4]
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r1, #4
	adds r1, r1, r0
	ldr r0, [r1]
	bx lr
	.align 2, 0
_0802D150: .4byte gUnk_03002070

	thumb_func_start FUN_0802D154
FUN_0802D154: @ 0x0802D154
	ldr r0, _0802D168 @ => 0x03002070
	ldr r1, [r0]
	ldr r2, [r0, #8]
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r1, #4
	adds r1, r1, r0
	ldr r0, [r1]
	bx lr
	.align 2, 0
_0802D168: .4byte gUnk_03002070

	thumb_func_start FUN_0802D16C
FUN_0802D16C: @ 0x0802D16C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r2, #0
	ldr r0, _0802D194 @ => 0x03002070
	ldr r1, [r0]
	ldr r1, [r1]
	adds r5, r0, #0
	cmp r2, r1
	bhs _0802D1A2
	movs r3, #0
_0802D180:
	ldr r1, [r5]
	adds r0, r1, #4
	adds r0, r0, r3
	ldr r0, [r0]
	cmp r0, r4
	bne _0802D198
	adds r0, r2, #0
	bl FUN_0802D228
	b _0802D1A2
	.align 2, 0
_0802D194: .4byte gUnk_03002070
_0802D198:
	adds r3, #0x1c
	adds r2, #1
	ldr r0, [r1]
	cmp r2, r0
	blo _0802D180
_0802D1A2:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_0802D1A8
FUN_0802D1A8: @ 0x0802D1A8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r7, _0802D1C0 @ => 0x03002070
	ldr r0, [r7]
	cmp r0, #0
	bne _0802D1C4
	movs r2, #0
	movs r3, #0
	str r2, [r6]
	str r3, [r6, #4]
	b _0802D1DE
	.align 2, 0
_0802D1C0: .4byte gUnk_03002070
_0802D1C4:
	adds r0, r1, #0
	bl FUN_0802D1F4
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, #4
	ldr r0, [r7]
	adds r0, r0, r1
	ldr r4, [r0, #4]
	ldr r5, [r0, #8]
	str r4, [r6]
	str r5, [r6, #4]
_0802D1DE:
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r2}
	bx r2
	.align 2, 0

	thumb_func_start FUN_0802D1E8
FUN_0802D1E8: @ 0x0802D1E8
	ldr r1, _0802D1F0 @ => 0x03002070
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_0802D1F0: .4byte gUnk_03002070

	thumb_func_start FUN_0802D1F4
FUN_0802D1F4: @ 0x0802D1F4
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0
	ldr r0, _0802D214 @ => 0x03002070
	ldr r0, [r0]
	ldr r1, [r0]
	cmp r2, r1
	bhs _0802D220
	adds r3, r1, #0
	adds r1, r0, #4
_0802D208:
	ldr r0, [r1]
	cmp r0, r4
	bne _0802D218
	adds r0, r2, #0
	b _0802D222
	.align 2, 0
_0802D214: .4byte gUnk_03002070
_0802D218:
	adds r1, #0x1c
	adds r2, #1
	cmp r2, r3
	blo _0802D208
_0802D220:
	movs r0, #0
_0802D222:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_0802D228
FUN_0802D228: @ 0x0802D228
	push {lr}
	ldr r2, _0802D23C @ => 0x03002070
	ldr r1, [r2, #4]
	cmp r1, r0
	beq _0802D236
	str r1, [r2, #8]
	str r0, [r2, #4]
_0802D236:
	pop {r0}
	bx r0
	.align 2, 0
_0802D23C: .4byte gUnk_03002070

	thumb_func_start FUN_0802D240
FUN_0802D240: @ 0x0802D240
	bx lr
	.align 2, 0

	thumb_func_start FUN_0802D244
FUN_0802D244: @ 0x0802D244
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	mov r8, r3
	ldr r3, _0802D33C @ => 0x08065164
	lsls r1, r1, #3
	adds r1, r1, r3
	lsls r0, r0, #3
	adds r4, r0, r3
	ldrh r3, [r1]
	ldrh r0, [r4]
	subs r3, r3, r0
	lsls r3, r3, #0x10
	ldrh r0, [r1, #2]
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	mov r1, sb
	orrs r1, r0
	mov sb, r1
	subs r5, r2, #1
	cmp r5, #0
	blt _0802D32C
	adds r6, r4, #0
_0802D27E:
	bl FUN_080012FC
	adds r4, r0, #0
	mov r2, sl
	strh r2, [r4, #8]
	mov r0, r8
	strh r0, [r4, #0xa]
	movs r0, #0x19
	str r0, [r4, #0xc]
	adds r3, r4, #0
	adds r3, #0xa9
	movs r0, #3
	ldr r2, [sp, #0x24]
	ands r2, r0
	lsls r2, r2, #2
	mov ip, r2
	ldrb r0, [r3]
	movs r2, #0xd
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	mov r1, ip
	orrs r0, r1
	ldr r1, [sp, #0x20]
	lsls r2, r1, #4
	movs r1, #0xf
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	ldr r0, _0802D340 @ => FUN_0802D34C
	str r0, [r4, #0x50]
	adds r0, r4, #0
	movs r1, #0xb
	bl FUN_08001FB0
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001F84
	movs r2, #0
	ldrsh r1, [r6, r2]
	lsls r1, r1, #0x10
	movs r0, #2
	ldrsh r2, [r6, r0]
	lsls r2, r2, #0x10
	adds r0, r4, #0
	bl FUN_08001728
	ldr r0, _0802D344 @ => 0x00000101
	cmp r8, r0
	beq _0802D2F2
	mov r1, r8
	lsls r2, r1, #4
	ldr r1, _0802D348 @ => 0x080657DC
	adds r0, r4, #0
	adds r1, r2, r1
	bl FUN_080015B8
_0802D2F2:
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r5, r1
	ldrh r0, [r6]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	asrs r0, r2, #0x10
	muls r0, r5, r0
	ldrh r2, [r6, #2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r7, r1, #0x10
	orrs r7, r0
	lsls r1, r7, #0x10
	asrs r2, r7, #0x10
	lsls r2, r2, #0x10
	adds r0, r4, #0
	bl FUN_08001728
	ldr r0, [r4, #0xc]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0xc]
	subs r5, #1
	cmp r5, #0
	bge _0802D27E
_0802D32C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D33C: .4byte ROMREF_08065164
_0802D340: .4byte FUN_0802D34C
_0802D344: .4byte 0x00000101
_0802D348: .4byte ROMREF_080657DC

	thumb_func_start FUN_0802D34C
FUN_0802D34C: @ 0x0802D34C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrh r4, [r5, #8]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _0802D360
	b _0802D5D4
_0802D360:
	cmp r0, #1
	bgt _0802D366
	b _0802D5E2
_0802D366:
	cmp r0, #7
	bne _0802D36C
	b _0802D5BC
_0802D36C:
	cmp r0, #0xb
	beq _0802D372
	b _0802D5E2
_0802D372:
	ldr r2, _0802D388 @ => 0x0000011D
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0x3a
	bls _0802D37E
	b _0802D5E2
_0802D37E:
	lsls r0, r0, #2
	ldr r1, _0802D38C @ =_0802D390
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802D388: .4byte 0x0000011D
_0802D38C: .4byte _0802D390
_0802D390: @ jump table
	.4byte _0802D47C @ case 0
	.4byte _0802D5E2 @ case 1
	.4byte _0802D5E2 @ case 2
	.4byte _0802D518 @ case 3
	.4byte _0802D5E2 @ case 4
	.4byte _0802D5E2 @ case 5
	.4byte _0802D5E2 @ case 6
	.4byte _0802D5E2 @ case 7
	.4byte _0802D5E2 @ case 8
	.4byte _0802D5E2 @ case 9
	.4byte _0802D5E2 @ case 10
	.4byte _0802D5E2 @ case 11
	.4byte _0802D5E2 @ case 12
	.4byte _0802D5E2 @ case 13
	.4byte _0802D5E2 @ case 14
	.4byte _0802D5E2 @ case 15
	.4byte _0802D5E2 @ case 16
	.4byte _0802D5E2 @ case 17
	.4byte _0802D5E2 @ case 18
	.4byte _0802D5E2 @ case 19
	.4byte _0802D5E2 @ case 20
	.4byte _0802D5E2 @ case 21
	.4byte _0802D5E2 @ case 22
	.4byte _0802D5E2 @ case 23
	.4byte _0802D5E2 @ case 24
	.4byte _0802D5E2 @ case 25
	.4byte _0802D5E2 @ case 26
	.4byte _0802D5E2 @ case 27
	.4byte _0802D5E2 @ case 28
	.4byte _0802D5E2 @ case 29
	.4byte _0802D5E2 @ case 30
	.4byte _0802D5E2 @ case 31
	.4byte _0802D5E2 @ case 32
	.4byte _0802D5E2 @ case 33
	.4byte _0802D5E2 @ case 34
	.4byte _0802D5E2 @ case 35
	.4byte _0802D5E2 @ case 36
	.4byte _0802D5E2 @ case 37
	.4byte _0802D5E2 @ case 38
	.4byte _0802D5E2 @ case 39
	.4byte _0802D5E2 @ case 40
	.4byte _0802D5E2 @ case 41
	.4byte _0802D5E2 @ case 42
	.4byte _0802D5E2 @ case 43
	.4byte _0802D5E2 @ case 44
	.4byte _0802D5E2 @ case 45
	.4byte _0802D5E2 @ case 46
	.4byte _0802D5E2 @ case 47
	.4byte _0802D5E2 @ case 48
	.4byte _0802D5E2 @ case 49
	.4byte _0802D5E2 @ case 50
	.4byte _0802D5E2 @ case 51
	.4byte _0802D5E2 @ case 52
	.4byte _0802D5E2 @ case 53
	.4byte _0802D5E2 @ case 54
	.4byte _0802D5E2 @ case 55
	.4byte _0802D49C @ case 56
	.4byte _0802D524 @ case 57
	.4byte _0802D59C @ case 58
_0802D47C:
	ldr r1, _0802D498 @ => 0x08065164
	lsls r0, r4, #3
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r1, r1, #0x10
	movs r3, #2
	ldrsh r2, [r0, r3]
	lsls r2, r2, #0x10
	adds r0, r5, #0
	bl FUN_08001728
	b _0802D5C6
	.align 2, 0
_0802D498: .4byte ROMREF_08065164
_0802D49C:
	ldrh r1, [r5, #0xa]
	ldr r0, _0802D4C0 @ => 0x0000010B
	cmp r1, r0
	beq _0802D4C8
	ldr r0, _0802D4C4 @ => 0x08065164
	lsls r4, r4, #3
	adds r0, r4, r0
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r1, r1, #0x10
	movs r3, #2
	ldrsh r2, [r0, r3]
	lsls r2, r2, #0x10
	adds r0, r5, #0
	bl FUN_08001728
	b _0802D4DC
	.align 2, 0
_0802D4C0: .4byte 0x0000010B
_0802D4C4: .4byte ROMREF_08065164
_0802D4C8:
	ldr r0, _0802D514 @ => 0x08065164
	lsls r4, r4, #3
	adds r0, r4, r0
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r3, #2
	ldrsh r2, [r0, r3]
	adds r0, r5, #0
	bl FUN_08050BDC
_0802D4DC:
	ldr r0, _0802D514 @ => 0x08065164
	adds r0, r4, r0
	movs r2, #4
	ldrsh r1, [r0, r2]
	lsls r1, r1, #0x10
	movs r3, #6
	ldrsh r2, [r0, r3]
	lsls r2, r2, #0x10
	movs r3, #0x93
	lsls r3, r3, #1
	adds r0, r5, r3
	ldrh r3, [r0]
	adds r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r5, #0
	bl FUN_08003C0C
	adds r0, r5, #0
	bl FUN_08003B70
	adds r0, r5, #0
	movs r1, #3
	bl FUN_08001F84
	ldr r0, [r5, #0xc]
	movs r1, #1
	b _0802D5DE
	.align 2, 0
_0802D514: .4byte ROMREF_08065164
_0802D518:
	adds r0, r5, #0
	bl FUN_08003B70
	cmp r0, #1
	bne _0802D5E2
	b _0802D5C6
_0802D524:
	ldrh r1, [r5, #0xa]
	ldr r0, _0802D548 @ => 0x0000010B
	cmp r1, r0
	beq _0802D550
	ldr r0, _0802D54C @ => 0x08065164
	lsls r4, r4, #3
	adds r0, r4, r0
	movs r2, #4
	ldrsh r1, [r0, r2]
	lsls r1, r1, #0x10
	movs r3, #6
	ldrsh r2, [r0, r3]
	lsls r2, r2, #0x10
	adds r0, r5, #0
	bl FUN_08001728
	b _0802D564
	.align 2, 0
_0802D548: .4byte 0x0000010B
_0802D54C: .4byte ROMREF_08065164
_0802D550:
	ldr r0, _0802D598 @ => 0x08065164
	lsls r4, r4, #3
	adds r0, r4, r0
	movs r2, #4
	ldrsh r1, [r0, r2]
	movs r3, #6
	ldrsh r2, [r0, r3]
	adds r0, r5, #0
	bl FUN_08050BDC
_0802D564:
	ldr r0, _0802D598 @ => 0x08065164
	adds r0, r4, r0
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r1, r1, #0x10
	movs r3, #2
	ldrsh r2, [r0, r3]
	lsls r2, r2, #0x10
	movs r3, #0x93
	lsls r3, r3, #1
	adds r0, r5, r3
	ldrh r3, [r0]
	adds r0, r5, #0
	bl FUN_08003C0C
	adds r0, r5, #0
	bl FUN_08003B70
	adds r0, r5, #0
	movs r1, #3
	bl FUN_08001F84
	ldr r0, [r5, #0xc]
	movs r1, #1
	b _0802D5DE
	.align 2, 0
_0802D598: .4byte ROMREF_08065164
_0802D59C:
	ldr r1, _0802D5B8 @ => 0x08065164
	lsls r0, r4, #3
	adds r0, r0, r1
	movs r2, #4
	ldrsh r1, [r0, r2]
	lsls r1, r1, #0x10
	movs r3, #6
	ldrsh r2, [r0, r3]
	lsls r2, r2, #0x10
	adds r0, r5, #0
	bl FUN_08001728
	b _0802D5C6
	.align 2, 0
_0802D5B8: .4byte ROMREF_08065164
_0802D5BC:
	ldr r1, _0802D5D0 @ => 0x0000011D
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802D5E2
_0802D5C6:
	adds r0, r5, #0
	movs r1, #0xb
	bl FUN_08001F84
	b _0802D5E2
	.align 2, 0
_0802D5D0: .4byte 0x0000011D
_0802D5D4:
	ldr r0, [r5, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x82
_0802D5DE:
	orrs r0, r1
	str r0, [r5, #0xc]
_0802D5E2:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_0802D5E8
FUN_0802D5E8: @ 0x0802D5E8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	mov r8, r1
	adds r6, r2, #0
	adds r4, r3, #0
	bl FUN_080012FC
	adds r7, r0, #0
	strh r5, [r7, #8]
	mov r0, r8
	strh r0, [r7, #0xa]
	movs r0, #0x19
	str r0, [r7, #0xc]
	adds r2, r7, #0
	adds r2, #0xa9
	movs r0, #3
	ands r4, r0
	lsls r4, r4, #2
	ldrb r1, [r2]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	lsls r6, r6, #4
	movs r1, #0xf
	ands r0, r1
	orrs r0, r6
	strb r0, [r2]
	ldr r0, _0802D670 @ => FUN_0802D34C
	str r0, [r7, #0x50]
	adds r0, r7, #0
	movs r1, #0xb
	bl FUN_08001FB0
	adds r0, r7, #0
	movs r1, #0
	bl FUN_08001F84
	ldr r0, _0802D674 @ => 0x08065164
	lsls r5, r5, #3
	adds r5, r5, r0
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r1, r1, #0x10
	movs r0, #2
	ldrsh r2, [r5, r0]
	lsls r2, r2, #0x10
	adds r0, r7, #0
	bl FUN_08001728
	ldr r0, _0802D678 @ => 0x00000101
	cmp r8, r0
	beq _0802D664
	mov r0, r8
	lsls r1, r0, #4
	ldr r0, _0802D67C @ => 0x080657DC
	adds r1, r1, r0
	adds r0, r7, #0
	bl FUN_080015B8
_0802D664:
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802D670: .4byte FUN_0802D34C
_0802D674: .4byte ROMREF_08065164
_0802D678: .4byte 0x00000101
_0802D67C: .4byte ROMREF_080657DC

	thumb_func_start FUN_0802D680
FUN_0802D680: @ 0x0802D680
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov sb, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	ldr r2, [sp, #0x1c]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r0, #0x32
	str r2, [sp]
	bl FUN_080012D8
	mov r8, r0
	movs r0, #0x19
	mov r1, r8
	str r0, [r1, #0xc]
	mov r3, r8
	adds r3, #0xa9
	movs r0, #3
	ldr r2, [sp]
	ands r2, r0
	lsls r2, r2, #2
	ldrb r1, [r3]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	lsls r4, r4, #4
	movs r1, #0xf
	ands r0, r1
	orrs r0, r4
	strb r0, [r3]
	movs r0, #0
	mov r1, r8
	str r0, [r1, #0x50]
	lsls r5, r5, #0x10
	lsls r6, r6, #0x10
	mov r0, r8
	adds r1, r5, #0
	adds r2, r6, #0
	bl FUN_08001728
	mov r0, r8
	mov r1, sb
	bl FUN_080015B8
	mov r0, r8
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_0802D6FC
FUN_0802D6FC: @ 0x0802D6FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	mov r8, r3
	movs r0, #0x32
	bl FUN_080012D8
	adds r6, r0, #0
	ldr r1, _0802D750 @ => 0x03004790
	lsls r0, r4, #2
	adds r0, r0, r1
	str r6, [r0]
	strh r4, [r6, #0xa]
	str r5, [r6, #0x50]
	cmp r5, #0
	bne _0802D726
	ldr r0, _0802D754 @ => FUN_0802D34C
	str r0, [r6, #0x50]
_0802D726:
	ldr r0, _0802D758 @ => FUN_0802D880
	str r0, [r6, #0x54]
	ldr r0, [sp, #0x18]
	lsls r1, r0, #0x10
	asrs r2, r0, #0x10
	lsls r2, r2, #0x10
	adds r0, r6, #0
	bl FUN_08001728
	mov r0, r8
	cmp r0, #0
	bne _0802D75C
	ldrb r0, [r7, #0xc]
	adds r1, r6, #0
	adds r1, #0xb9
	strb r0, [r1]
	adds r0, r6, #0
	adds r1, r7, #0
	bl FUN_080016FC
	b _0802D768
	.align 2, 0
_0802D750: .4byte gUnk_03004790
_0802D754: .4byte FUN_0802D34C
_0802D758: .4byte FUN_0802D880
_0802D75C:
	adds r0, r6, #0
	adds r1, r7, #0
	mov r2, r8
	movs r3, #0
	bl FUN_0800192C
_0802D768:
	adds r0, r6, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_0802D774
FUN_0802D774: @ 0x0802D774
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	movs r2, #0xc
	ldrsh r1, [r0, r2]
	mov r8, r1
	movs r2, #0x10
	ldrsh r1, [r0, r2]
	mov sb, r1
	ldrb r6, [r0, #0x14]
	ldr r1, [r0]
	mov sl, r1
	ldr r4, [r0, #0x18]
	movs r0, #0x32
	bl FUN_080012D8
	adds r5, r0, #0
	movs r0, #0x19
	str r0, [r5, #0xc]
	adds r2, r5, #0
	adds r2, #0xa9
	movs r0, #3
	ands r4, r0
	lsls r4, r4, #2
	ldrb r1, [r2]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	lsls r6, r6, #4
	movs r1, #0xf
	ands r0, r1
	orrs r0, r6
	strb r0, [r2]
	movs r0, #0
	str r0, [r5, #0x50]
	mov r2, r8
	lsls r2, r2, #0x10
	mov r8, r2
	mov r0, sb
	lsls r0, r0, #0x10
	mov sb, r0
	adds r0, r5, #0
	mov r1, r8
	mov r2, sb
	bl FUN_08001728
	adds r0, r5, #0
	mov r1, sl
	bl FUN_080015B8
	adds r0, r5, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0802D7F0
FUN_0802D7F0: @ 0x0802D7F0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	bl FUN_08050940
	adds r4, r0, #0
	adds r0, r5, #0
	subs r0, #0x97
	cmp r0, #1
	bhi _0802D80E
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r4, #0xc]
_0802D80E:
	ldr r0, _0802D83C @ => FUN_0802D34C
	str r0, [r4, #0x50]
	ldr r0, _0802D840 @ => 0x0000010B
	strh r0, [r4, #0xa]
	strh r5, [r4, #8]
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001F84
	ldr r1, _0802D844 @ => 0x08065164
	lsls r0, r5, #3
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r3, #2
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	bl FUN_08050BDC
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802D83C: .4byte FUN_0802D34C
_0802D840: .4byte 0x0000010B
_0802D844: .4byte ROMREF_08065164

	thumb_func_start FUN_0802D848
FUN_0802D848: @ 0x0802D848
	push {lr}
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #4
	ldr r2, _0802D85C @ => 0x080657DC
	adds r1, r1, r2
	bl FUN_080015B8
	pop {r0}
	bx r0
	.align 2, 0
_0802D85C: .4byte ROMREF_080657DC

	thumb_func_start FUN_0802D860
FUN_0802D860: @ 0x0802D860
	push {lr}
	ldr r1, _0802D87C @ => 0x03004790
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _0802D876
	ldr r0, [r2, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0xc]
_0802D876:
	pop {r0}
	bx r0
	.align 2, 0
_0802D87C: .4byte gUnk_03004790

	thumb_func_start FUN_0802D880
FUN_0802D880: @ 0x0802D880
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0xa]
	cmp r1, #0x15
	bhi _0802D89E
	ldr r0, _0802D8A4 @ => 0x03004790
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r2, r0
	bne _0802D89E
	ldr r0, [r2, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0xc]
_0802D89E:
	pop {r0}
	bx r0
	.align 2, 0
_0802D8A4: .4byte gUnk_03004790

	thumb_func_start FUN_0802D8A8
FUN_0802D8A8: @ 0x0802D8A8
	push {lr}
	movs r0, #0
	movs r1, #0
	ldr r2, _0802D8BC @ => 0x03004790
_0802D8B0:
	stm r2!, {r1}
	adds r0, #1
	cmp r0, #0x15
	bls _0802D8B0
	pop {r0}
	bx r0
	.align 2, 0
_0802D8BC: .4byte gUnk_03004790

	thumb_func_start FUN_0802D8C0
FUN_0802D8C0: @ 0x0802D8C0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	mov sb, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r0, #0x18
	bl FUN_080012D8
	adds r4, r0, #0
	ldr r2, _0802D964 @ => 0x03004230
	ldr r0, _0802D968 @ => 0x030042B0
	ldrh r1, [r0, #6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #4
	adds r0, r0, r2
	ldr r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	str r1, [r0]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl FUN_08001728
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #0xa]
	strb r1, [r4, #0x12]
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001FB0
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001F84
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r4, r1
	strh r5, [r0]
	adds r1, #2
	adds r0, r4, r1
	strb r6, [r0]
	adds r1, #1
	adds r0, r4, r1
	mov r1, r8
	strb r1, [r0]
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r4, r1
	mov r1, sb
	str r1, [r0]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0xe6
	str r0, [r1]
	ldr r0, _0802D96C @ => FUN_0802DA50
	str r0, [r4, #0x50]
	ldr r0, _0802D970 @ => 0x00022008
	str r0, [r4, #0xc]
	adds r0, r4, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0802D964: .4byte gUnk_03004230
_0802D968: .4byte gUnk_030042B0
_0802D96C: .4byte FUN_0802DA50
_0802D970: .4byte 0x00022008

	thumb_func_start FUN_0802D974
FUN_0802D974: @ 0x0802D974
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0802D988 @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802D98C
	cmp r0, #0xb
	beq _0802D9DC
	b _0802DA10
	.align 2, 0
_0802D988: .4byte 0x0000011D
_0802D98C:
	ldr r2, _0802D9D0 @ => 0x03005C60
	ldr r1, _0802D9D4 @ => 0x080668B4
	movs r3, #0x9a
	lsls r3, r3, #1
	adds r0, r4, r3
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	strh r0, [r2]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r2, [r0]
	cmp r2, #0xe6
	beq _0802D9C2
	ldr r1, _0802D9D8 @ => 0x0807281C
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	bl FUN_08050820
	bl FUN_08020320
_0802D9C2:
	bl FUN_08041BF0
	adds r0, r4, #0
	movs r1, #0xb
	bl FUN_08001F84
	b _0802DA10
	.align 2, 0
_0802D9D0: .4byte gChoiceIDs
_0802D9D4: .4byte ROMREF_080668B4
_0802D9D8: .4byte ItemInfoData
_0802D9DC:
	movs r2, #0x9b
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrb r0, [r0]
	ldr r3, _0802DA04 @ => 0x00000137
	adds r1, r4, r3
	ldrb r1, [r1]
	bl FUN_080099A8
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _0802DA08
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08001FB0
	b _0802DA10
	.align 2, 0
_0802DA04: .4byte 0x00000137
_0802DA08:
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001FB0
_0802DA10:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0802DA18
FUN_0802DA18: @ 0x0802DA18
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08009B04
	ldrb r4, [r0, #8]
	ldrb r1, [r0, #9]
	ldrb r2, [r0, #0xa]
	ldrb r3, [r0, #0xb]
	adds r0, r4, #0
	bl FUN_0802D8C0
	ldr r1, [r0, #0xc]
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r1, r2
	str r1, [r0, #0xc]
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_0802DA44
FUN_0802DA44: @ 0x0802DA44
	push {lr}
	movs r1, #3
	bl FUN_08001FB0
	pop {r0}
	bx r0

	thumb_func_start FUN_0802DA50
FUN_0802DA50: @ 0x0802DA50
	push {lr}
	adds r1, r0, #0
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	beq _0802DA80
	cmp r0, #1
	ble _0802DA86
	cmp r0, #3
	beq _0802DA6E
	cmp r0, #9
	beq _0802DA78
	b _0802DA86
_0802DA6E:
	adds r0, r1, #0
	movs r1, #9
	bl FUN_08001FB0
	b _0802DA86
_0802DA78:
	adds r0, r1, #0
	bl FUN_0802D974
	b _0802DA86
_0802DA80:
	adds r0, r1, #0
	bl FUN_080040DC
_0802DA86:
	pop {r0}
	bx r0
	.align 2, 0
