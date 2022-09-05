.include "asm/constants.s"
.include "asm/macros.s"
.include "data/lists/sounds.inc"

.syntax unified

	thumb_func_start KingChugChug_Init
KingChugChug_Init: @ 0x080340AC
	push {r4, r5, r6, lr}
	sub sp, #0x20
	bl FUN_08042448
	ldr r3, _0803417C @ => 0x030022C0
	movs r4, #0
	str r4, [r3, #0x14]
	str r4, [r3, #0x20]
	adds r1, r3, #0
	adds r1, #0x30
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #2
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	str r4, [r3, #0x24]
	adds r0, r3, #0
	adds r0, #0x33
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	str r4, [r3, #0xc]
	movs r0, #0x96
	lsls r0, r0, #3
	str r0, [r3, #0x18]
	ldr r0, _08034180 @ => 0x000005DC
	str r0, [r3, #0x1c]
	str r4, [r3, #0x2c]
	adds r0, r3, #0
	adds r0, #0x35
	strb r4, [r0]
	ldr r2, _08034184 @ => 0x08068B84
	ldr r0, _08034188 @ => 0x030047F0
	ldr r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r3, #0x28]
	add r0, sp, #0x18
	strh r4, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _0803418C @ => 0x01008000
	bl SVC_CpuSet
	movs r0, #0
	bl FUN_0805273C
	movs r0, #0
	bl FUN_0800C558
	movs r0, #0x80
	lsls r0, r0, #5
	bl FUN_0800C5EC
	ldr r0, _08034190 @ => 0x08068190
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C418
	movs r0, #0x80
	lsls r0, r0, #9
	bl FUN_08034BE8
	movs r5, #0
	movs r6, #0
	ldr r2, _08034194 @ => 0x08E831F4
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r6, [sp, #0x10]
	str r4, [sp, #0x14]
	add r0, sp, #0x1c
	movs r1, #3
	movs r3, #0
	bl FUN_0800D83C
	movs r0, SOUNDTRACK_CHUG_CHUG_COLA
	bl FUN_0804DE84
	bl FUN_08034300
	bl FUN_08034A1C
	bl FUN_08034A58
	bl FUN_08034538
	ldr r0, _08034198 @ => 0x03004720
	str r4, [r0, #0x14]
	movs r0, #0x3f
	movs r1, #0
	bl FUN_080457F4
	add sp, #0x20
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803417C: .4byte gUnk_030022C0
_08034180: .4byte 0x000005DC
_08034184: .4byte ROMREF_08068B84
_08034188: .4byte gUnk_030047F0
_0803418C: .4byte 0x01008000
_08034190: .4byte ROMREF_08068190
_08034194: .4byte ROMREF_08E831F4
_08034198: .4byte gUnk_03004720

	thumb_func_start KingChugChug_Handler
KingChugChug_Handler: @ 0x0803419C
	push {r4, lr}
	ldr r0, _080341B0 @ => 0x03004720
	ldr r4, [r0, #0x14]
	cmp r4, #1
	beq _080341F8
	cmp r4, #1
	blo _080341B4
	cmp r4, #2
	beq _08034218
	b _0803426C
	.align 2, 0
_080341B0: .4byte gUnk_03004720
_080341B4:
	ldr r4, _080341EC @ => 0x030022C0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _080341E2
	subs r0, #1
	str r0, [r4, #0x28]
	cmp r0, #0
	bne _080341E2
	ldr r1, [r4, #0x2c]
	adds r1, #1
	str r1, [r4, #0x2c]
	ldr r3, _080341F0 @ => 0x08068B84
	lsls r1, r1, #3
	ldr r0, _080341F4 @ => 0x030047F0
	ldr r2, [r0]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r3, #4
	adds r1, r1, r3
	ldr r0, [r1]
	str r0, [r4, #0x28]
_080341E2:
	bl FUN_08034C44
	bl FUN_080345A8
	b _0803426C
	.align 2, 0
_080341EC: .4byte gUnk_030022C0
_080341F0: .4byte ROMREF_08068B84
_080341F4: .4byte gUnk_030047F0
_080341F8:
	ldr r1, _08034210 @ => 0x030022C0
	ldr r0, [r1, #0x20]
	ldr r2, _08034214 @ => 0xFFFF8000
	adds r0, r0, r2
	str r0, [r1, #0x20]
	cmp r0, #0
	bge _0803420A
	movs r0, #0
	str r0, [r1, #0x20]
_0803420A:
	bl FUN_080348AC
	b _0803426C
	.align 2, 0
_08034210: .4byte gUnk_030022C0
_08034214: .4byte 0xFFFF8000
_08034218:
	bl FUN_0800B66C
	ldr r3, _08034248 @ => 0x030022C0
	ldr r2, [r3]
	cmp r2, #0
	beq _08034238
	ldr r1, [r2, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08034238
	orrs r1, r4
	str r1, [r2, #0xc]
	movs r0, #0
	str r0, [r3]
_08034238:
	ldr r2, _0803424C @ => 0x03004720
	ldr r0, [r2, #0x18]
	cmp r0, #0
	beq _08034250
	subs r0, #1
	str r0, [r2, #0x18]
	b _0803426C
	.align 2, 0
_08034248: .4byte gUnk_030022C0
_0803424C: .4byte gUnk_03004720
_08034250:
	ldr r0, _08034274 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0803426C
	ldr r1, [r2, #4]
	ldr r0, _08034278 @ => 0x030022C0
	ldr r2, [r0, #0x14]
	lsrs r2, r2, #5
	movs r0, #0x19
	movs r3, #0
	bl FUN_0802CEF8
_0803426C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08034274: .4byte gUnk_030042B0
_08034278: .4byte gUnk_030022C0

	thumb_func_start FUN_0803427C
FUN_0803427C: @ 0x0803427C
	push {lr}
	bl FUN_08035580
	cmp r0, #1
	beq _080342B2
	ldr r3, _080342F8 @ => 0x03003DF0
	movs r2, #0
	movs r1, #1
	strb r1, [r3, #0x1c]
	strb r2, [r3, #0x1d]
	strb r1, [r3, #0x1e]
	strb r2, [r3, #0x1f]
	adds r0, r3, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, #1
	strb r1, [r0]
_080342B2:
	ldr r2, _080342FC @ => 0x030022C0
	movs r1, #0
	ldr r3, _080342F8 @ => 0x03003DF0
	ldrb r0, [r3, #0x1c]
	cmp r0, #0
	bne _080342C0
	movs r1, #1
_080342C0:
	adds r0, r2, #0
	adds r0, #0x36
	strb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x24
	ldrb r0, [r0]
	movs r1, #6
	cmp r0, #0
	bne _080342D4
	movs r1, #5
_080342D4:
	adds r0, r2, #0
	adds r0, #0x37
	strb r1, [r0]
	ldrb r1, [r3, #0x1e]
	movs r0, #3
	ands r0, r1
	adds r1, r2, #0
	adds r1, #0x38
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x1c
	movs r1, #6
	movs r2, #7
	bl FUN_08048CB4
	pop {r0}
	bx r0
	.align 2, 0
_080342F8: .4byte gUnk_03003DF0
_080342FC: .4byte gUnk_030022C0

	thumb_func_start FUN_08034300
FUN_08034300: @ 0x08034300
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	bl FUN_0803427C
	ldr r7, _08034434 @ => 0x030022C0
	ldr r0, _08034438 @ => 0x030022F6
	ldrb r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #7
	adds r1, r7, #0
	adds r1, #0x37
	ldrb r2, [r1]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #4
	ldr r2, _0803443C @ => 0x08068284
	mov r8, r2
	add r1, r8
	adds r0, r0, r1
	movs r1, #1
	mov sl, r1
	str r1, [sp]
	movs r1, #0x78
	movs r2, #0x78
	movs r3, #0xf
	bl FUN_0802D680
	str r0, [r7]
	adds r3, r0, #0
	adds r3, #0xa9
	ldrb r2, [r3]
	movs r5, #0xf
	adds r1, r5, #0
	ands r1, r2
	movs r2, #0x60
	orrs r1, r2
	strb r1, [r3]
	movs r1, #0
	mov sb, r1
	mov r2, sb
	strh r2, [r0, #8]
	ldr r1, [r0, #0xc]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #0xc]
	adds r0, #0x94
	ldr r1, _08034440 @ => FUN_08034C0C
	str r1, [r0]
	ldr r0, _08034438 @ => 0x030022F6
	ldrb r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #7
	movs r1, #0xfc
	lsls r1, r1, #2
	add r1, r8
	adds r0, r0, r1
	mov r1, sl
	str r1, [sp]
	movs r1, #0x78
	movs r2, #0x78
	movs r3, #0xf
	bl FUN_0802D680
	adds r6, r0, #0
	ldr r0, [r7]
	str r6, [r0, #0x58]
	adds r2, r6, #0
	adds r2, #0xa9
	ldrb r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	movs r1, #0x70
	orrs r0, r1
	strb r0, [r2]
	mov r2, sb
	strh r2, [r6, #8]
	ldr r0, [r7]
	str r0, [r6, #0x5c]
	ldr r0, _08034438 @ => 0x030022F6
	ldrb r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #7
	adds r1, r7, #0
	adds r1, #0x38
	ldrb r2, [r1]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #4
	add r1, r8
	adds r0, r0, r1
	mov r1, sl
	str r1, [sp]
	movs r1, #0x78
	movs r2, #0x78
	movs r3, #0xf
	bl FUN_0802D680
	adds r4, r0, #0
	str r4, [r6, #0x58]
	adds r1, r4, #0
	adds r1, #0xa9
	ldrb r0, [r1]
	ands r5, r0
	movs r2, #0x60
	orrs r5, r2
	strb r5, [r1]
	mov r0, sb
	strh r0, [r4, #8]
	ldr r0, [r7]
	str r0, [r4, #0x5c]
	ldr r2, _08034438 @ => 0x030022F6
	ldrb r1, [r2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #7
	movs r1, #0x90
	lsls r1, r1, #2
	add r8, r1
	add r0, r8
	mov r2, sl
	str r2, [sp]
	movs r1, #0x78
	movs r2, #0x78
	movs r3, #8
	bl FUN_0802D680
	str r0, [r4, #0x58]
	mov r1, sb
	strh r1, [r0, #8]
	ldr r1, [r0, #0xc]
	movs r2, #0x80
	lsls r2, r2, #0xd
	orrs r1, r2
	str r1, [r0, #0xc]
	ldr r1, [r7]
	str r1, [r0, #0x5c]
	movs r0, #0
	bl FUN_08034444
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034434: .4byte gUnk_030022C0
_08034438: .4byte gUnk_030022F6
_0803443C: .4byte ROMREF_08068284
_08034440: .4byte FUN_08034C0C

	thumb_func_start FUN_08034444
FUN_08034444: @ 0x08034444
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, _0803451C @ => 0x030022C0
	mov r8, r0
	ldr r7, [r0]
	ldr r1, _08034520 @ => 0x030022F0
	ldrb r0, [r1]
	cmp r0, r5
	beq _0803450C
	movs r2, #0x36
	add r2, r8
	mov sl, r2
	ldrb r0, [r2]
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #7
	mov r0, r8
	adds r0, #0x37
	ldrb r2, [r0]
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #4
	ldr r2, _08034524 @ => 0x08068284
	mov sb, r2
	add r0, sb
	adds r1, r1, r0
	lsls r6, r5, #4
	adds r1, r1, r6
	ldr r0, _08034528 @ => 0x09FB65BC
	lsls r4, r5, #2
	adds r4, r4, r0
	ldr r2, [r4]
	adds r0, r7, #0
	movs r3, #0
	bl FUN_0800192C
	ldr r7, [r7, #0x58]
	mov r1, sl
	ldrb r0, [r1]
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #7
	movs r0, #0xfc
	lsls r0, r0, #2
	add r0, sb
	adds r1, r1, r0
	adds r1, r1, r6
	ldr r2, [r4]
	adds r0, r7, #0
	movs r3, #0
	bl FUN_0800192C
	ldr r7, [r7, #0x58]
	mov r2, sl
	ldrb r0, [r2]
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #7
	mov r0, r8
	adds r0, #0x38
	ldrb r2, [r0]
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #4
	add r0, sb
	adds r1, r1, r0
	adds r1, r1, r6
	ldr r2, [r4]
	adds r0, r7, #0
	movs r3, #0
	bl FUN_0800192C
	ldr r7, [r7, #0x58]
	mov r1, sl
	ldrb r0, [r1]
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #7
	ldr r2, _0803452C @ => 0x080684C4
	adds r1, r1, r2
	adds r1, r1, r6
	ldr r2, [r4]
	adds r0, r7, #0
	movs r3, #0
	bl FUN_0800192C
	ldr r0, _08034520 @ => 0x030022F0
	strb r5, [r0]
	cmp r5, #6
	bne _0803450C
	mov r1, r8
	ldr r0, [r1]
	ldr r1, _08034530 @ => 0xFFFC0000
	str r1, [r0, #0x2c]
	ldr r1, _08034534 @ => 0x0000547A
	str r1, [r0, #0x34]
_0803450C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803451C: .4byte gUnk_030022C0
_08034520: .4byte gUnk_030022F0
_08034524: .4byte ROMREF_08068284
_08034528: .4byte ROMREF_09FB65BC
_0803452C: .4byte ROMREF_080684C4
_08034530: .4byte 0xFFFC0000
_08034534: .4byte 0x0000547A

	thumb_func_start FUN_08034538
FUN_08034538: @ 0x08034538
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, _08034598 @ => 0x030022C0
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	bl FUN_080424F8
	adds r3, r0, #0
	ldr r0, [r5, #0x18]
	adds r1, r0, #0
	subs r1, #0x1e
	ldr r0, _0803459C @ => 0x0000018F
	cmp r1, r0
	bls _0803455C
	str r1, [r5, #0x18]
	ldr r0, [r5, #0x1c]
	subs r0, #0x1e
	str r0, [r5, #0x1c]
_0803455C:
	ldr r2, [r5, #0xc]
	cmp r2, #0
	beq _0803456A
	ldr r0, [r2, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0xc]
_0803456A:
	ldr r0, _080345A0 @ => 0x08068194
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	movs r4, #2
	str r4, [sp]
	movs r2, #0x80
	movs r3, #5
	bl FUN_0802D680
	str r0, [r5, #0xc]
	strh r4, [r0, #8]
	ldr r2, [r5, #0xc]
	ldr r0, [r2, #0xc]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #0xc]
	ldr r0, _080345A4 @ => FUN_08034BD0
	str r0, [r2, #0x50]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08034598: .4byte gUnk_030022C0
_0803459C: .4byte 0x0000018F
_080345A0: .4byte ROMREF_08068194
_080345A4: .4byte FUN_08034BD0

	thumb_func_start FUN_080345A8
FUN_080345A8: @ 0x080345A8
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	ldr r0, _080345C4 @ => 0x030022C0
	adds r0, #0x33
	ldrb r0, [r0]
	cmp r0, #4
	bls _080345B8
	b _080346E6
_080345B8:
	lsls r0, r0, #2
	ldr r1, _080345C8 @ =_080345CC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080345C4: .4byte gUnk_030022C0
_080345C8: .4byte _080345CC
_080345CC: @ jump table
	.4byte _080345E0 @ case 0
	.4byte _0803465C @ case 1
	.4byte _08034680 @ case 2
	.4byte _080346B4 @ case 3
	.4byte _080346E6 @ case 4
_080345E0:
	ldr r0, _08034604 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803460C
	movs r0, #0x8b
	lsls r0, r0, #1
	bl FUN_0804DE0C
	ldr r0, _08034608 @ => 0x030022C0
	adds r0, #0x33
	movs r1, #1
	strb r1, [r0]
	movs r0, #3
	bl FUN_08034444
	b _08034628
	.align 2, 0
_08034604: .4byte gUnk_030042B0
_08034608: .4byte gUnk_030022C0
_0803460C:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08034628
	movs r0, #0x71
	bl FUN_0804DE0C
	ldr r0, _0803464C @ => 0x030022C0
	adds r0, #0x33
	movs r1, #2
	strb r1, [r0]
	movs r0, #6
	bl FUN_08034444
_08034628:
	ldr r0, _08034650 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08034654
	ldr r1, _0803464C @ => 0x030022C0
	ldr r0, [r1, #0x20]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	str r0, [r1, #0x20]
	movs r2, #0x80
	lsls r2, r2, #0xc
	cmp r0, r2
	ble _080346E6
	str r2, [r1, #0x20]
	b _080346E6
	.align 2, 0
_0803464C: .4byte gUnk_030022C0
_08034650: .4byte gUnk_030042B0
_08034654:
	ldr r7, _08034658 @ => 0x00002666
	b _080346EC
	.align 2, 0
_08034658: .4byte 0x00002666
_0803465C:
	ldr r7, _08034674 @ => 0x00002666
	ldr r2, _08034678 @ => 0x030022C0
	ldr r0, [r2, #0x24]
	ldr r1, _0803467C @ => 0xFFE00000
	adds r0, r0, r1
	str r0, [r2, #0x24]
	cmp r0, #0
	bge _080346CA
	movs r0, #0
	str r0, [r2, #0x24]
	b _080346CA
	.align 2, 0
_08034674: .4byte 0x00002666
_08034678: .4byte gUnk_030022C0
_0803467C: .4byte 0xFFE00000
_08034680:
	ldr r5, _080346AC @ => 0x030022C0
	ldr r2, [r5]
	ldr r1, [r2, #0x1c]
	ldr r0, _080346B0 @ => 0x0077FFFF
	cmp r1, r0
	ble _080346E6
	movs r4, #0
	str r4, [r2, #0x2c]
	str r4, [r2, #0x34]
	adds r0, r2, #0
	movs r1, #0x78
	movs r2, #0x78
	movs r3, #3
	bl FUN_08001810
	adds r0, r5, #0
	adds r0, #0x33
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x30
	b _080346E2
	.align 2, 0
_080346AC: .4byte gUnk_030022C0
_080346B0: .4byte 0x0077FFFF
_080346B4:
	ldr r2, _08034770 @ => 0x030022C0
	ldr r0, [r2, #0x20]
	ldr r1, _08034774 @ => 0xFFFFC667
	adds r0, r0, r1
	str r0, [r2, #0x20]
	ldr r1, _08034778 @ => 0x0000FFFF
	cmp r0, r1
	bgt _080346CA
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r2, #0x20]
_080346CA:
	ldr r0, [r2]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080346E6
	adds r1, r2, #0
	adds r1, #0x33
	movs r0, #0
	strb r0, [r1]
	subs r1, #3
_080346E2:
	movs r0, #0xff
	strb r0, [r1]
_080346E6:
	ldr r6, _08034770 @ => 0x030022C0
	cmp r7, #0
	beq _08034702
_080346EC:
	ldr r0, _08034770 @ => 0x030022C0
	ldr r1, [r0, #0x20]
	subs r1, r1, r7
	str r1, [r0, #0x20]
	ldr r2, _08034778 @ => 0x0000FFFF
	adds r6, r0, #0
	cmp r1, r2
	bgt _08034702
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r6, #0x20]
_08034702:
	ldr r0, [r6, #0x20]
	cmp r0, #0
	bge _0803470A
	adds r0, #7
_0803470A:
	asrs r0, r0, #3
	ldr r1, [r6, #0x24]
	adds r1, r1, r0
	str r1, [r6, #0x24]
	ldr r0, _0803477C @ => 0x0117FFFF
	cmp r1, r0
	ble _08034790
	adds r5, r6, #0
	adds r5, #0x33
	ldrb r0, [r5]
	cmp r0, #2
	beq _08034790
	ldr r0, _08034780 @ => 0x00000117
	bl FUN_0804DE0C
	movs r4, #0
	str r4, [r6, #0x20]
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl FUN_0800CE60
	ldr r0, [r6, #0xc]
	cmp r0, #0
	beq _0803473E
	str r4, [r0, #0x28]
_0803473E:
	adds r4, r6, #0
	adds r4, #0x32
	ldrb r0, [r4]
	cmp r0, #7
	beq _0803475C
	ldr r0, [r6, #8]
	ldr r1, _08034784 @ => 0x080681F4
	adds r1, #0x70
	ldr r2, _08034788 @ => 0x09FB65B8
	ldr r2, [r2]
	movs r3, #0
	bl FUN_0800192C
	movs r0, #7
	strb r0, [r4]
_0803475C:
	movs r0, #4
	strb r0, [r5]
	movs r0, #7
	bl FUN_08034444
	ldr r1, _0803478C @ => 0x03004720
	movs r0, #1
	str r0, [r1, #0x14]
	b _080347EC
	.align 2, 0
_08034770: .4byte gUnk_030022C0
_08034774: .4byte 0xFFFFC667
_08034778: .4byte 0x0000FFFF
_0803477C: .4byte 0x0117FFFF
_08034780: .4byte 0x00000117
_08034784: .4byte ROMREF_080681F4
_08034788: .4byte ROMREF_09FB65B8
_0803478C: .4byte gUnk_03004720
_08034790:
	adds r5, r6, #0
	ldr r0, [r5, #0x24]
	ldr r1, _080347C4 @ => 0x002EAAAA
	bl __divsi3
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _080347A4
	movs r4, #7
_080347A4:
	adds r0, r5, #0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, r4
	beq _080347E8
	cmp r4, #7
	bne _080347D0
	ldr r0, [r5, #8]
	ldr r1, _080347C8 @ => 0x080681F4
	adds r1, #0x70
	ldr r2, _080347CC @ => 0x09FB65B8
	ldr r2, [r2]
	movs r3, #0
	bl FUN_0800192C
	b _080347E2
	.align 2, 0
_080347C4: .4byte 0x002EAAAA
_080347C8: .4byte ROMREF_080681F4
_080347CC: .4byte ROMREF_09FB65B8
_080347D0:
	ldr r0, [r6, #8]
	lsls r1, r4, #4
	ldr r2, _080347F8 @ => 0x080681F4
	adds r1, r1, r2
	ldr r2, _080347FC @ => 0x09FB65B4
	ldr r2, [r2]
	movs r3, #0
	bl FUN_0800192C
_080347E2:
	ldr r0, _08034800 @ => 0x030022C0
	adds r0, #0x32
	strb r4, [r0]
_080347E8:
	bl FUN_08034804
_080347EC:
	bl FUN_080348AC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080347F8: .4byte ROMREF_080681F4
_080347FC: .4byte ROMREF_09FB65B4
_08034800: .4byte gUnk_030022C0

	thumb_func_start FUN_08034804
FUN_08034804: @ 0x08034804
	push {r4, r5, lr}
	ldr r5, _08034860 @ => 0x030022C0
	ldr r4, [r5, #0x20]
	movs r0, #3
	adds r1, r4, #0
	movs r2, #0
	bl FUN_0800CE60
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _0803481E
	rsbs r0, r4, #0
	str r0, [r1, #0x28]
_0803481E:
	adds r0, r5, #0
	adds r0, #0x33
	ldrb r0, [r0]
	cmp r0, #0
	bne _080348A2
	ldr r3, [r5, #0x20]
	lsls r0, r3, #1
	adds r0, r0, r3
	cmp r0, #0
	bge _08034836
	ldr r1, _08034864 @ => 0x0007FFFF
	adds r0, r0, r1
_08034836:
	asrs r0, r0, #0x13
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bne _08034842
	movs r2, #2
_08034842:
	cmp r2, #2
	bhi _0803489C
	adds r1, r5, #0
	adds r1, #0x30
	ldrb r0, [r1]
	cmp r0, #2
	bhi _0803489C
	adds r1, r0, #0
	adds r0, r1, #1
	cmp r2, r0
	bne _0803486C
	ldr r0, _08034868 @ => 0xFFFF0000
	adds r1, r3, r0
	b _0803487C
	.align 2, 0
_08034860: .4byte gUnk_030022C0
_08034864: .4byte 0x0007FFFF
_08034868: .4byte 0xFFFF0000
_0803486C:
	subs r0, r1, #1
	cmp r2, r0
	bne _0803487A
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r3, r0
	b _0803487C
_0803487A:
	movs r1, #0
_0803487C:
	cmp r1, #0
	beq _0803489C
	lsls r0, r1, #1
	adds r0, r0, r1
	cmp r0, #0
	bge _0803488C
	ldr r1, _080348A8 @ => 0x0007FFFF
	adds r0, r0, r1
_0803488C:
	asrs r0, r0, #0x13
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bne _08034898
	movs r0, #2
_08034898:
	cmp r0, r2
	beq _080348A2
_0803489C:
	adds r0, r2, #0
	bl FUN_08034444
_080348A2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080348A8: .4byte 0x0007FFFF

	thumb_func_start FUN_080348AC
FUN_080348AC: @ 0x080348AC
	push {r4, r5, r6, r7, lr}
	ldr r5, _080348D0 @ => 0x030022C0
	adds r6, r5, #0
	adds r6, #0x35
	ldrb r0, [r6]
	adds r4, r5, #0
	cmp r0, #0
	beq _080348C0
	subs r0, #1
	strb r0, [r6]
_080348C0:
	adds r7, r5, #0
	adds r7, #0x34
	ldrb r0, [r7]
	cmp r0, #0
	beq _080348D4
	cmp r0, #1
	beq _0803499C
	b _08034A0E
	.align 2, 0
_080348D0: .4byte gUnk_030022C0
_080348D4:
	ldr r2, [r5, #0xc]
	cmp r2, #0
	beq _08034940
	ldrb r0, [r6]
	cmp r0, #0
	bne _08034940
	ldr r1, [r5, #4]
	ldr r0, [r2, #0x18]
	ldr r1, [r1, #0x18]
	subs r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xe
	cmp r0, r1
	bgt _08034940
	movs r0, #0x71
	bl FUN_0804DE0C
	movs r0, #1
	strb r0, [r7]
	adds r4, r5, #0
	adds r4, #0x31
	ldrb r0, [r4]
	cmp r0, #2
	beq _08034918
	ldr r0, [r5, #4]
	ldr r1, _08034930 @ => 0x080681B4
	adds r1, #0x20
	ldr r2, _08034934 @ => 0x09FB65A4
	ldr r2, [r2, #8]
	movs r3, #0
	bl FUN_0800192C
	movs r0, #2
	strb r0, [r4]
_08034918:
	ldr r0, [r5, #4]
	movs r1, #0
	movs r2, #0
	bl FUN_08001744
	ldr r1, [r5, #4]
	ldr r0, _08034938 @ => 0xFFFC0000
	str r0, [r1, #0x2c]
	ldr r0, _0803493C @ => 0x0000547A
	str r0, [r1, #0x34]
	b _08034A0E
	.align 2, 0
_08034930: .4byte ROMREF_080681B4
_08034934: .4byte ROMREF_09FB65A4
_08034938: .4byte 0xFFFC0000
_0803493C: .4byte 0x0000547A
_08034940:
	ldr r3, _0803498C @ => 0x08068B84
	ldr r1, [r4, #0x2c]
	lsls r1, r1, #3
	ldr r0, _08034990 @ => 0x030047F0
	ldr r2, [r0]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, r1, r3
	ldr r2, [r4, #0x20]
	ldr r0, [r1]
	subs r0, r2, r0
	cmp r0, #0
	bge _08034960
	adds r0, #7
_08034960:
	asrs r0, r0, #3
	rsbs r2, r0, #0
	ldr r0, [r4, #4]
	ldr r1, [r0, #0x18]
	ldr r0, _08034994 @ => 0xFFC00000
	cmp r1, r0
	bgt _08034974
	cmp r2, #0
	bge _08034974
	movs r2, #0
_08034974:
	ldr r0, _08034998 @ => 0x03004720
	ldr r0, [r0, #0x14]
	cmp r0, #1
	bne _08034980
	movs r2, #0x80
	lsls r2, r2, #0xc
_08034980:
	ldr r0, [r4, #4]
	adds r1, r2, #0
	movs r2, #0
	bl FUN_08001744
	b _08034A0E
	.align 2, 0
_0803498C: .4byte ROMREF_08068B84
_08034990: .4byte gUnk_030047F0
_08034994: .4byte 0xFFC00000
_08034998: .4byte gUnk_03004720
_0803499C:
	ldr r3, [r5, #4]
	ldr r1, [r3, #0x1c]
	ldr r0, _080349D8 @ => 0x0077FFFF
	cmp r1, r0
	ble _080349E4
	movs r4, #0
	str r4, [r3, #0x2c]
	str r4, [r3, #0x34]
	ldr r1, [r3, #0x18]
	movs r2, #0xf0
	lsls r2, r2, #0xf
	adds r0, r3, #0
	movs r3, #3
	bl FUN_08001800
	movs r0, #0x2d
	strb r0, [r6]
	strb r4, [r7]
	adds r4, r5, #0
	adds r4, #0x31
	ldrb r0, [r4]
	cmp r0, #3
	beq _08034A0E
	ldr r0, [r5, #4]
	ldr r1, _080349DC @ => 0x080681B4
	adds r1, #0x30
	ldr r2, _080349E0 @ => 0x09FB65A4
	ldr r2, [r2, #0xc]
	b _08034A04
	.align 2, 0
_080349D8: .4byte 0x0077FFFF
_080349DC: .4byte ROMREF_080681B4
_080349E0: .4byte ROMREF_09FB65A4
_080349E4:
	ldr r0, [r3, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08034A0E
	adds r4, r5, #0
	adds r4, #0x31
	ldrb r0, [r4]
	cmp r0, #3
	beq _08034A0E
	ldr r1, _08034A14 @ => 0x080681B4
	adds r1, #0x30
	ldr r0, _08034A18 @ => 0x09FB65A4
	ldr r2, [r0, #0xc]
	adds r0, r3, #0
_08034A04:
	movs r3, #0
	bl FUN_0800192C
	movs r0, #3
	strb r0, [r4]
_08034A0E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034A14: .4byte ROMREF_080681B4
_08034A18: .4byte ROMREF_09FB65A4

	thumb_func_start FUN_08034A1C
FUN_08034A1C: @ 0x08034A1C
	push {r4, lr}
	sub sp, #4
	ldr r0, _08034A4C @ => 0x080681E4
	movs r4, #1
	str r4, [sp]
	movs r1, #0x10
	movs r2, #0x78
	movs r3, #1
	bl FUN_0802D680
	ldr r1, _08034A50 @ => 0x030022C0
	str r0, [r1, #4]
	strh r4, [r0, #8]
	ldr r1, [r1, #4]
	ldr r0, _08034A54 @ => FUN_08034B0C
	str r0, [r1, #0x50]
	movs r0, #3
	bl FUN_08034AD0
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08034A4C: .4byte ROMREF_080681E4
_08034A50: .4byte gUnk_030022C0
_08034A54: .4byte FUN_08034B0C

	thumb_func_start FUN_08034A58
FUN_08034A58: @ 0x08034A58
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _08034ABC @ => 0x08068274
	movs r6, #1
	str r6, [sp]
	movs r1, #0xc8
	movs r2, #8
	movs r3, #2
	bl FUN_0802D680
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	movs r0, #0
	bl FUN_080203A8
	ldr r0, _08034AC0 @ => 0x00000762
	bl FUN_08050820
	str r0, [sp, #4]
	add r0, sp, #4
	bl FUN_08050940
	ldr r5, _08034AC4 @ => 0x030022C0
	str r0, [r5, #0x10]
	movs r1, #0xd6
	movs r2, #0xc
	bl FUN_08050BDC
	ldr r4, _08034AC8 @ => 0x080681F4
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0xa0
	movs r2, #5
	movs r3, #3
	bl FUN_0802D680
	str r0, [r5, #8]
	ldr r1, _08034ACC @ => 0x09FB65B4
	ldr r2, [r1]
	adds r1, r4, #0
	movs r3, #0
	bl FUN_0800192C
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08034ABC: .4byte ROMREF_08068274
_08034AC0: .4byte 0x00000762
_08034AC4: .4byte gUnk_030022C0
_08034AC8: .4byte ROMREF_080681F4
_08034ACC: .4byte ROMREF_09FB65B4

	thumb_func_start FUN_08034AD0
FUN_08034AD0: @ 0x08034AD0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _08034B00 @ => 0x030022C0
	adds r5, r1, #0
	adds r5, #0x31
	ldrb r0, [r5]
	cmp r0, r4
	beq _08034AF8
	ldr r0, [r1, #4]
	lsls r1, r4, #4
	ldr r2, _08034B04 @ => 0x080681B4
	adds r1, r1, r2
	ldr r3, _08034B08 @ => 0x09FB65A4
	lsls r2, r4, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl FUN_0800192C
	strb r4, [r5]
_08034AF8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08034B00: .4byte gUnk_030022C0
_08034B04: .4byte ROMREF_080681B4
_08034B08: .4byte ROMREF_09FB65A4

	thumb_func_start FUN_08034B0C
FUN_08034B0C: @ 0x08034B0C
	push {r4, r5, lr}
	adds r1, r0, #0
	ldr r0, _08034B74 @ => 0x03004720
	ldr r0, [r0, #0x14]
	cmp r0, #2
	beq _08034B6C
	ldr r4, _08034B78 @ => 0x030022C0
	adds r0, r4, #0
	adds r0, #0x33
	ldrb r0, [r0]
	cmp r0, #2
	beq _08034B6C
	adds r0, r4, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #1
	beq _08034B6C
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	ldr r1, [r1, #0x18]
	subs r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xe
	cmp r0, r1
	bgt _08034B6C
	movs r0, #4
	bl FUN_08034444
	adds r5, r4, #0
	adds r5, #0x31
	ldrb r0, [r5]
	cmp r0, #1
	beq _08034B62
	ldr r0, [r4, #4]
	ldr r1, _08034B7C @ => 0x080681B4
	adds r1, #0x10
	ldr r2, _08034B80 @ => 0x09FB65A4
	ldr r2, [r2, #4]
	movs r3, #0
	bl FUN_0800192C
	movs r0, #1
	strb r0, [r5]
_08034B62:
	movs r0, #0x24
	bl FUN_0804DE0C
	bl FUN_08034B84
_08034B6C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08034B74: .4byte gUnk_03004720
_08034B78: .4byte gUnk_030022C0
_08034B7C: .4byte ROMREF_080681B4
_08034B80: .4byte ROMREF_09FB65A4

	thumb_func_start FUN_08034B84
FUN_08034B84: @ 0x08034B84
	push {r4, lr}
	sub sp, #0xc
	ldr r0, _08034BC4 @ => 0x030022C0
	ldr r0, [r0, #4]
	movs r1, #0
	movs r2, #0
	bl FUN_08001744
	movs r0, #0
	bl FUN_08034BE8
	ldr r0, _08034BC8 @ => 0x00000622
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #4
	str r1, [sp]
	movs r4, #2
	str r4, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	movs r1, #0x78
	movs r2, #0x58
	bl FUN_0800B984
	ldr r1, _08034BCC @ => 0x03004720
	str r4, [r1, #0x14]
	movs r0, #0x1e
	str r0, [r1, #0x18]
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08034BC4: .4byte gUnk_030022C0
_08034BC8: .4byte 0x00000622
_08034BCC: .4byte gUnk_03004720

	thumb_func_start FUN_08034BD0
FUN_08034BD0: @ 0x08034BD0
	push {lr}
	ldr r1, [r0, #0x18]
	ldr r0, _08034BE4 @ => 0xFFC00000
	cmp r1, r0
	bgt _08034BDE
	bl FUN_08034538
_08034BDE:
	pop {r0}
	bx r0
	.align 2, 0
_08034BE4: .4byte 0xFFC00000

	thumb_func_start FUN_08034BE8
FUN_08034BE8: @ 0x08034BE8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #3
	adds r1, r4, #0
	movs r2, #0
	bl FUN_0800CE60
	ldr r0, _08034C08 @ => 0x030022C0
	ldr r1, [r0, #0xc]
	cmp r1, #0
	beq _08034C02
	rsbs r0, r4, #0
	str r0, [r1, #0x28]
_08034C02:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08034C08: .4byte gUnk_030022C0

	thumb_func_start FUN_08034C0C
FUN_08034C0C: @ 0x08034C0C
	push {r4, lr}
	ldrh r0, [r1, #8]
	cmp r0, #2
	bne _08034C36
	ldr r0, _08034C3C @ => 0x03004720
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _08034C36
	ldr r4, _08034C40 @ => 0x030022C0
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #6
	beq _08034C36
	movs r0, #5
	bl FUN_08034444
	adds r1, r4, #0
	adds r1, #0x33
	movs r0, #3
	strb r0, [r1]
_08034C36:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08034C3C: .4byte gUnk_03004720
_08034C40: .4byte gUnk_030022C0

	thumb_func_start FUN_08034C44
FUN_08034C44: @ 0x08034C44
	push {r4, lr}
	ldr r4, _08034C80 @ => 0x030022C0
	ldr r0, [r4, #0x14]
	adds r0, #1
	str r0, [r4, #0x14]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, [r4, #0x14]
	lsrs r0, r0, #5
	bl FUN_080203A8
	ldr r0, _08034C84 @ => 0x00000762
	bl FUN_08050820
	adds r1, r0, #0
	ldr r0, [r4, #0x10]
	bl FUN_08050BC8
	ldr r0, [r4, #0x10]
	movs r1, #0xd6
	movs r2, #0xc
	bl FUN_08050BDC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08034C80: .4byte gUnk_030022C0
_08034C84: .4byte 0x00000762

	thumb_func_start KingChugChug_Terminate
KingChugChug_Terminate: @ 0x08034C88
	push {lr}
	movs r0, #0x3f
	movs r1, #0
	bl FUN_0804582C
	bl FUN_0800B9D0
	ldr r0, _08034CA0 @ => 0x03002C40
	bl FUN_08000BF8
	pop {r0}
	bx r0
	.align 2, 0
_08034CA0: .4byte gUnk_03002C40
