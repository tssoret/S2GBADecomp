.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_0803803C
FUN_0803803C: @ 0x0803803C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	bl FUN_080012FC
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_08009B04
	adds r4, r0, #0
	movs r0, #4
	ldrsh r1, [r4, r0]
	lsls r1, r1, #0x10
	movs r0, #6
	ldrsh r2, [r4, r0]
	lsls r2, r2, #0x10
	adds r0, r6, #0
	bl FUN_08001728
	ldr r0, [r4]
	strh r0, [r6, #8]
	ldr r0, _08038110 @ => 0x00060404
	str r0, [r6, #0xc]
	ldrb r1, [r4, #8]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r6, r2
	strb r1, [r0]
	ldrb r0, [r4, #9]
	adds r2, #1
	adds r1, r6, r2
	strb r0, [r1]
	ldrb r0, [r4, #0xa]
	adds r2, #1
	adds r1, r6, r2
	strb r0, [r1]
	ldrb r0, [r4, #0xb]
	adds r2, #1
	adds r1, r6, r2
	strb r0, [r1]
	ldrb r0, [r4, #0xc]
	strb r0, [r6, #0x12]
	adds r0, r6, #0
	movs r1, #0
	bl FUN_08001FB0
	adds r2, r6, #0
	adds r2, #0xa5
	ldrb r1, [r2]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	adds r2, #4
	ldrb r0, [r2]
	movs r1, #0xc
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08038114 @ => 0x0808DD9C
	adds r0, r6, #0
	bl FUN_08048E24
	adds r1, r0, #0
	adds r0, r6, #0
	bl FUN_0803EF14
	adds r1, r6, #0
	adds r1, #0x94
	ldr r0, _08038118 @ => FUN_08014FA0
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #0x7c
	movs r1, #0xec
	strb r1, [r0]
	adds r0, #2
	strb r1, [r0]
	adds r1, r6, #0
	adds r1, #0x7d
	movs r0, #0x14
	strb r0, [r1]
	adds r1, #2
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x80
	movs r1, #1
	strb r1, [r0]
	subs r0, #5
	strb r1, [r0]
	ldr r0, _0803811C @ => FUN_08038120
	str r0, [r6, #0x50]
	adds r0, r6, #0
	bl FUN_0803977C
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08038110: .4byte 0x00060404
_08038114: .4byte ROMREF_0808DD9C
_08038118: .4byte FUN_08014FA0
_0803811C: .4byte FUN_08038120

	thumb_func_start FUN_08038120
FUN_08038120: @ 0x08038120
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r3, r4, r1
	ldrb r0, [r3]
	cmp r0, #1
	beq _0803819C
	cmp r0, #1
	ble _080381A2
	cmp r0, #3
	beq _0803813E
	cmp r0, #4
	beq _08038146
	b _080381A2
_0803813E:
	adds r0, r4, #0
	bl FUN_080381A8
	b _080381A2
_08038146:
	ldr r0, _0803817C @ => 0x03004750
	ldr r5, [r0, #0xc]
	cmp r5, #1
	bne _0803818C
	ldr r1, _08038180 @ => 0x03004228
	ldr r2, _08038184 @ => 0x00000131
	adds r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0x18
	movs r2, #0
	bl FUN_0802CED4
	ldr r0, _08038188 @ => 0x03003DF0
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4]
	lsls r5, r4
	ldrb r1, [r0]
	orrs r5, r1
	strb r5, [r0]
	b _080381A2
	.align 2, 0
_0803817C: .4byte gUnk_03004750
_08038180: .4byte gUnk_03004228
_08038184: .4byte 0x00000131
_08038188: .4byte gUnk_03003DF0
_0803818C:
	ldr r0, [r4, #0x58]
	adds r0, r0, r1
	movs r2, #0
	movs r1, #0xd
	strb r1, [r0]
	str r2, [r4, #0x58]
	strb r2, [r3]
	b _080381A2
_0803819C:
	adds r0, r4, #0
	bl FUN_080040DC
_080381A2:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_080381A8
FUN_080381A8: @ 0x080381A8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x24
	mov r8, r0
	ldr r0, _080382D0 @ => 0x0805B1C8
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	str r1, [sp, #0x20]
	movs r0, #0
	mov sb, r0
	movs r4, #0
	movs r7, #0x98
	lsls r7, r7, #1
	add r7, r8
	ldrb r1, [r7, #2]
	lsls r1, r1, #0x10
	ldr r2, _080382D4 @ => 0xFF00FFFF
	ldr r0, [sp, #0x14]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x14]
	ldrb r1, [r7, #3]
	lsls r1, r1, #0x10
	ldr r0, [sp, #0x1c]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x1c]
	ldr r2, _080382D8 @ => 0x03003DF0
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r0, r2, r1
	ldrb r0, [r0]
	ldrb r1, [r7]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08038206
	ldr r1, _080382DC @ => 0x03005C60
	ldr r0, _080382E0 @ => 0x00000739
	strh r0, [r1]
	movs r4, #1
_08038206:
	cmp r4, #0
	bne _0803826C
	add r5, sp, #0x14
	add r6, sp, #0x1c
	adds r0, r5, #0
	adds r1, r6, #0
	movs r3, #6
	bl FUN_08014408
	cmp r0, #0
	bne _0803824E
	ldr r1, _080382DC @ => 0x03005C60
	ldr r0, _080382E4 @ => 0x0000073A
	strh r0, [r1]
	ldrb r0, [r7, #2]
	strb r0, [r5, #2]
	ldr r4, _080382E8 @ => 0x00000766
	adds r0, r5, #0
	mov r1, sp
	adds r2, r4, #0
	bl FUN_08013FDC
	mov r0, sp
	bl FUN_08020344
	ldrb r0, [r7, #3]
	strb r0, [r6, #2]
	adds r0, r6, #0
	mov r1, sp
	adds r2, r4, #0
	bl FUN_08013FDC
	mov r0, sp
	bl FUN_0802036C
	movs r4, #1
_0803824E:
	cmp r4, #0
	bne _0803826C
	movs r0, #1
	mov sb, r0
	ldr r1, _080382DC @ => 0x03005C60
	movs r0, #0xe7
	lsls r0, r0, #3
	strh r0, [r1]
	adds r0, #0x40
	strh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #4]
	ldr r0, _080382EC @ => 0x03005C90
	mov r1, sb
	strb r1, [r0, #3]
_0803826C:
	ldr r1, _080382EC @ => 0x03005C90
	movs r0, #0
	strb r0, [r1, #4]
	movs r0, #3
	strb r0, [r1, #1]
	movs r4, #4
	strb r4, [r1, #2]
	movs r0, #0x98
	lsls r0, r0, #1
	add r0, r8
	ldrb r0, [r0]
	ldr r1, _080382F0 @ => 0x0000074D
	adds r0, r0, r1
	bl FUN_08050820
	bl FUN_08020320
	movs r0, #2
	bl FUN_0802CEC4
	mov r0, sb
	cmp r0, #0
	bne _080382B8
	mov r1, r8
	ldr r0, [r1, #0x58]
	movs r1, #4
	bl FUN_08001FF0
	mov r1, r8
	ldr r0, [r1, #0x58]
	movs r1, #0x81
	bl FUN_08001F20
	mov r1, r8
	ldr r0, [r1, #0x58]
	movs r1, #0x36
	bl FUN_08001F84
_080382B8:
	movs r0, #0x8e
	lsls r0, r0, #1
	add r0, r8
	strb r4, [r0]
	add sp, #0x24
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080382D0: .4byte ROMREF_0805B1C8
_080382D4: .4byte 0xFF00FFFF
_080382D8: .4byte gUnk_03003DF0
_080382DC: .4byte gChoiceIDs
_080382E0: .4byte 0x00000739
_080382E4: .4byte 0x0000073A
_080382E8: .4byte 0x00000766
_080382EC: .4byte gUnk_03005C90
_080382F0: .4byte 0x0000074D

	thumb_func_start FUN_080382F4
FUN_080382F4: @ 0x080382F4
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl FUN_08009B2C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08038308
FUN_08038308: @ 0x08038308
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, _08038384 @ => 0x03003DF0
	ldr r5, _08038388 @ => 0x00000361
	adds r1, r0, r5
	adds r1, r4, r1
	ldrb r1, [r1]
	subs r1, #1
	adds r5, r0, #0
	cmp r1, r2
	bne _08038390
	cmp r2, #4
	beq _08038390
	cmp r4, #2
	blo _08038334
	cmp r4, #3
	bls _08038330
	cmp r4, #5
	bne _08038334
_08038330:
	cmp r3, #0
	beq _08038390
_08038334:
	ldr r3, _0803838C @ => 0x08069980
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r2, r1, r0
	adds r0, r3, #4
	adds r0, r2, r0
	adds r4, r5, #0
	adds r4, #0x28
	ldr r0, [r0]
	adds r0, r0, r4
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #8
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r1, r0
	blo _08038390
	adds r0, r3, #0
	adds r0, #0xc
	adds r0, r2, r0
	ldr r0, [r0]
	adds r0, r0, r4
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x10
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r1, r0
	blo _08038390
	adds r0, r2, r3
	ldr r0, [r0]
	cmp r6, r0
	blo _08038390
	movs r0, #1
	b _08038392
	.align 2, 0
_08038384: .4byte gUnk_03003DF0
_08038388: .4byte 0x00000361
_0803838C: .4byte MinigameUnlockTable
_08038390:
	movs r0, #0
_08038392:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_08038398
FUN_08038398: @ 0x08038398
	push {lr}
	ldr r0, _080383A8 @ => 0x03004151
	movs r1, #8
	bl FUN_08044558
	pop {r0}
	bx r0
	.align 2, 0
_080383A8: .4byte gMinigame_Levels

	thumb_func_start FUN_080383AC
FUN_080383AC: @ 0x080383AC
	push {lr}
	ldr r0, _080383BC @ => 0x03004151
	movs r1, #8
	bl FUN_08044644
	pop {r0}
	bx r0
	.align 2, 0
_080383BC: .4byte gMinigame_Levels

	thumb_func_start FUN_080383C0
FUN_080383C0: @ 0x080383C0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080383F0 @ => 0x03003DF0
	ldr r1, _080383F4 @ => 0x00000361
	adds r0, r0, r1
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _080383E8
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl FUN_080384B0
	cmp r0, #0
	bne _080383E8
	adds r0, r4, #0
	movs r1, #1
	bl FUN_080384C4
_080383E8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080383F0: .4byte gUnk_03003DF0
_080383F4: .4byte 0x00000361

	thumb_func_start FUN_080383F8
FUN_080383F8: @ 0x080383F8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08038428 @ => 0x03003DF0
	ldr r1, _0803842C @ => 0x00000361
	adds r0, r0, r1
	adds r4, r5, r0
	ldrb r0, [r4]
	cmp r0, #5
	bhi _08038420
	adds r0, #1
	strb r0, [r4]
	adds r0, r5, #0
	bl FUN_080384B0
	ldrb r1, [r4]
	cmp r0, r1
	bhs _08038420
	adds r0, r5, #0
	bl FUN_080384C4
_08038420:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08038428: .4byte gUnk_03003DF0
_0803842C: .4byte 0x00000361

	thumb_func_start FUN_08038430
FUN_08038430: @ 0x08038430
	push {lr}
	adds r2, r0, #0
	cmp r1, #0
	bne _0803843E
	bl FUN_080384B0
	b _08038448
_0803843E:
	ldr r0, _08038450 @ => 0x03003DF0
	ldr r1, _08038454 @ => 0x00000361
	adds r0, r0, r1
	adds r0, r2, r0
	ldrb r0, [r0]
_08038448:
	subs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_08038450: .4byte gUnk_03003DF0
_08038454: .4byte 0x00000361

	thumb_func_start FUN_08038458
FUN_08038458: @ 0x08038458
	lsls r0, r0, #2
	lsrs r1, r0
	movs r0, #0xf
	ands r0, r1
	subs r0, #1
	bx lr

	thumb_func_start FUN_08038464
FUN_08038464: @ 0x08038464
	push {lr}
	adds r2, r0, #0
	cmp r1, #0
	beq _08038488
	ldr r0, _08038480 @ => 0x03003DF0
	ldr r1, _08038484 @ => 0x00000361
	adds r0, r0, r1
	adds r0, r2, r0
	ldrb r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	b _08038494
	.align 2, 0
_08038480: .4byte gUnk_03003DF0
_08038484: .4byte 0x00000361
_08038488:
	adds r0, r2, #0
	bl FUN_080384B0
	cmp r0, #0
	beq _08038494
	movs r0, #1
_08038494:
	pop {r1}
	bx r1

	thumb_func_start FUN_08038498
FUN_08038498: @ 0x08038498
	push {lr}
	lsls r0, r0, #2
	lsrs r1, r0
	movs r0, #0xf
	ands r1, r0
	cmp r1, #0
	beq _080384A8
	movs r1, #1
_080384A8:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_080384B0
FUN_080384B0: @ 0x080384B0
	adds r1, r0, #0
	ldr r0, _080384C0 @ => 0x03005E20
	lsls r1, r1, #2
	ldr r0, [r0, #0x10]
	lsrs r0, r1
	movs r1, #0xf
	ands r0, r1
	bx lr
	.align 2, 0
_080384C0: .4byte gUnk_03005E20

	thumb_func_start FUN_080384C4
FUN_080384C4: @ 0x080384C4
	push {r4, r5, lr}
	ldr r5, _080384F0 @ => 0x03005E20
	lsls r0, r0, #2
	movs r4, #0xf
	adds r2, r4, #0
	lsls r2, r0
	ldr r3, [r5, #0x10]
	bics r3, r2
	ands r1, r4
	lsls r1, r0
	orrs r3, r1
	str r3, [r5, #0x10]
	bl FUN_0804DF78
	bl FUN_080443E0
	bl FUN_0804DF84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080384F0: .4byte gUnk_03005E20
