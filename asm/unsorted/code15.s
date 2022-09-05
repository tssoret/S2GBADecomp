.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_08022E2C
FUN_08022E2C: @ 0x08022E2C
	push {r4, lr}
	ldr r4, _08022E54 @ => 0x03001E10
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xc
	bl FUN_0802CB40
	movs r0, #0x90
	lsls r0, r0, #5
	bl FUN_0802C95C
	str r0, [r4]
	movs r1, #0x80
	movs r2, #0x24
	bl FUN_08028F70
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08022E54: .4byte gUnk_03001E10

	thumb_func_start FUN_08022E58
FUN_08022E58: @ 0x08022E58
	push {r4, lr}
	ldr r4, _08022E70 @ => 0x03001E10
	ldr r0, [r4]
	bl FUN_0802CA80
	movs r0, #0
	str r0, [r4]
	str r0, [r4, #8]
	str r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08022E70: .4byte gUnk_03001E10

	thumb_func_start FUN_08022E74
FUN_08022E74: @ 0x08022E74
	push {lr}
	ldr r0, _08022E84 @ => 0x03001E18
	subs r1, r0, #4
	movs r2, #0x24
	bl FUN_08028FA8
	pop {r1}
	bx r1
	.align 2, 0
_08022E84: .4byte gUnk_03001E18

	thumb_func_start FUN_08022E88
FUN_08022E88: @ 0x08022E88
	bx lr
	.align 2, 0

	thumb_func_start FUN_08022E8C
FUN_08022E8C: @ 0x08022E8C
	bx lr
	.align 2, 0

	thumb_func_start FUN_08022E90
FUN_08022E90: @ 0x08022E90
	bx lr
	.align 2, 0

	thumb_func_start FUN_08022E94
FUN_08022E94: @ 0x08022E94
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r0, #0
	bl FUN_080012D8
	adds r7, r0, #0
	ldr r1, _08022EC8 @ => 0x1004025D
	str r1, [r7, #0xc]
	ldr r0, _08022ECC @ => 0x03003DF0
	ldr r2, _08022ED0 @ => 0x00000404
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #2
	bne _08022ED8
	movs r5, #1
	movs r0, #4
	mov sb, r0
	ldr r6, _08022ED4 @ => 0x0805A270
	b _08022EE8
	.align 2, 0
_08022EC8: .4byte 0x1004025D
_08022ECC: .4byte gUnk_03003DF0
_08022ED0: .4byte 0x00000404
_08022ED4: .4byte ROMREF_0805A270
_08022ED8:
	movs r5, #2
	movs r2, #8
	mov sb, r2
	movs r0, #0x80
	lsls r0, r0, #0x16
	orrs r0, r1
	str r0, [r7, #0xc]
	ldr r6, _08022F18 @ => 0x0805A278
_08022EE8:
	ldr r0, _08022F1C @ => 0x03004228
	mov r2, r8
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08022F20
	mov r1, r8
	bl FUN_08009AB0
	adds r4, r0, #0
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #0x10
	movs r0, #2
	ldrsh r2, [r4, r0]
	lsls r2, r2, #0x10
	adds r0, r7, #0
	bl FUN_08001728
	ldrb r0, [r4, #6]
	adds r1, r5, #0
	muls r1, r0, r1
	adds r0, r1, #0
	b _08022F36
	.align 2, 0
_08022F18: .4byte ROMREF_0805A278
_08022F1C: .4byte gUnk_03004228
_08022F20:
	ldr r4, _08022F6C @ => 0x03004200
	movs r2, #0xc
	ldrsh r1, [r4, r2]
	lsls r1, r1, #0x10
	movs r0, #0xe
	ldrsh r2, [r4, r0]
	lsls r2, r2, #0x10
	adds r0, r7, #0
	bl FUN_08001728
	ldrb r0, [r4, #0xb]
_08022F36:
	strb r0, [r7, #0x12]
	movs r2, #0x91
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #0xd
	strb r0, [r1]
	ldr r2, _08022F70 @ => 0x08062C10
	ldr r0, _08022F74 @ => 0x03003DF0
	ldrb r1, [r0, #0x1c]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r7, #0x14]
	adds r0, r7, #0
	mov r1, r8
	bl FUN_08023218
	movs r0, #0xf3
	bl FUN_080213F8
	cmp r0, #1
	bne _08022F78
	movs r4, #0xe
	movs r5, #1
	b _08022FA4
	.align 2, 0
_08022F6C: .4byte gUnk_03004200
_08022F70: .4byte ROMREF_08062C10
_08022F74: .4byte gUnk_03003DF0
_08022F78:
	movs r0, #0xf6
	lsls r0, r0, #1
	bl FUN_080213F8
	cmp r0, #1
	bne _08022F8A
	movs r4, #0x14
	movs r5, #1
	b _08022FA4
_08022F8A:
	ldr r0, _08022F9C @ => 0x00000225
	bl FUN_080213F8
	cmp r0, #1
	bne _08022FA0
	movs r4, #0x26
	movs r5, #1
	b _08022FA4
	.align 2, 0
_08022F9C: .4byte 0x00000225
_08022FA0:
	movs r4, #0x27
	movs r5, #0
_08022FA4:
	bl FUN_08023680
	cmp r0, #1
	bne _08023034
	adds r0, r7, #0
	bl FUN_08001628
	ldr r4, _08022FE4 @ => 0x03003E0C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl FUN_08048CB4
	adds r0, r7, #0
	adds r1, r4, #0
	bl FUN_08048B6C
	adds r5, r7, #0
	adds r5, #0xd8
	ldrb r1, [r5]
	ldrb r0, [r7, #0x12]
	adds r0, r6, r0
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r7, #0
	bl FUN_080015DC
	ldrb r0, [r4]
	cmp r0, #1
	bne _08022FEC
	ldr r0, _08022FE8 @ => 0x09FBF388
	b _08022FEE
	.align 2, 0
_08022FE4: .4byte gUnk_03003E0C
_08022FE8: .4byte ROMREF_09FBF388
_08022FEC:
	ldr r0, _08023030 @ => 0x09FC10D8
_08022FEE:
	ldrh r1, [r5]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r7, #0
	movs r2, #0
	bl FUN_080018F4
	adds r0, r7, #0
	movs r1, #0
	movs r2, #4
	bl FUN_080018B0
	adds r0, r7, #0
	movs r1, #1
	movs r2, #5
	bl FUN_080018B0
	adds r0, r7, #0
	movs r1, #2
	movs r2, #6
	bl FUN_080018B0
	adds r0, r7, #0
	movs r1, #3
	movs r2, #7
	bl FUN_080018B0
	adds r0, r7, #0
	movs r1, #0
	bl FUN_080018C4
	b _08023072
	.align 2, 0
_08023030: .4byte ROMREF_09FC10D8
_08023034:
	cmp r5, #1
	bne _08023072
	add r3, sp, #4
	adds r0, r4, #0
	movs r1, #4
	mov r2, sp
	bl FUN_0803A07C
	ldr r1, _080230FC @ => 0x0805A270
	ldrb r0, [r7, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [sp]
	adds r1, r1, r0
	adds r0, r7, #0
	bl FUN_080015B8
	ldr r1, [sp, #4]
	adds r0, r7, #0
	movs r2, #0
	bl FUN_080018F4
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	ldr r0, _08023100 @ => 0x08071E40
	adds r1, r1, r0
	adds r0, r7, #0
	bl FUN_0803EF14
_08023072:
	adds r1, r7, #0
	adds r1, #0x7a
	movs r6, #0
	movs r0, #8
	strb r0, [r1]
	ldr r4, _08023104 @ => 0x03004200
	mov r1, r8
	lsls r0, r1, #2
	add r0, r8
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0]
	adds r0, r7, #0
	mov r1, sb
	bl FUN_080017D4
	adds r1, r7, #0
	adds r1, #0x94
	ldr r0, _08023108 @ => FUN_08015064
	str r0, [r1]
	ldr r0, _0802310C @ => FUN_08001EBC
	str r0, [r7, #0x64]
	movs r2, #0x96
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r5, _08023110 @ => 0x03003E18
	str r5, [r0]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #3
	strb r0, [r1]
	adds r0, r7, #0
	bl FUN_0803977C
	ldr r0, _08023114 @ => 0x030042B0
	ldrh r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, #4
	adds r0, r0, r4
	str r6, [r0]
	adds r0, r7, #0
	bl FUN_08023584
	ldr r1, _08023118 @ => 0x00000342
	adds r5, r5, r1
	ldrh r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080230EA
	ldr r0, _0802311C @ => 0x0000FFFD
	ands r0, r1
	strh r0, [r5]
	adds r0, r7, #0
	movs r1, #0x36
	bl FUN_08001FB0
_080230EA:
	adds r0, r7, #0
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080230FC: .4byte ROMREF_0805A270
_08023100: .4byte CastAnimTable + 4
_08023104: .4byte gUnk_03004200
_08023108: .4byte FUN_08015064
_0802310C: .4byte FUN_08001EBC
_08023110: .4byte gUnk_03003E18
_08023114: .4byte gUnk_030042B0
_08023118: .4byte 0x00000342
_0802311C: .4byte 0x0000FFFD

	thumb_func_start FUN_08023120
FUN_08023120: @ 0x08023120
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_080040DC
	adds r0, r4, #0
	bl FUN_0802333C
	adds r0, r4, #0
	bl FUN_08023584
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08023154 @ => 0x03003DF0
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r1, [r0]
	adds r0, r4, #0
	bl FUN_0803977C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08023154: .4byte gUnk_03003DF0

	thumb_func_start FUN_08023158
FUN_08023158: @ 0x08023158
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl FUN_080040DC
	ldrb r6, [r4, #0x12]
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r5, [r0]
	movs r0, #8
	ands r0, r5
	cmp r0, #0
	beq _08023180
	adds r0, r4, #0
	adds r0, #0x28
	ldr r1, [r4, #0xc]
	ldr r3, [r4, #0x14]
	adds r2, r6, #0
	bl FUN_08001030
_08023180:
	movs r0, #4
	ands r0, r5
	cmp r0, #0
	beq _08023198
	ldr r0, _080231CC @ => 0x0805A270
	adds r0, r6, r0
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r4, #0
	movs r1, #4
	bl FUN_080015DC
_08023198:
	movs r0, #0x12
	ands r5, r0
	cmp r5, #0
	beq _080231EA
	ldr r1, _080231D0 @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _080231D4
	ldr r0, _080231CC @ => 0x0805A270
	adds r0, r6, r0
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r4, #0
	movs r1, #0xa
	bl FUN_080015DC
	adds r0, r4, #0
	adds r0, #0x28
	ldr r1, [r4, #0xc]
	ldr r3, [r4, #0x14]
	adds r2, r6, #0
	bl FUN_08001030
	b _080231EA
	.align 2, 0
_080231CC: .4byte ROMREF_0805A270
_080231D0: .4byte 0x0000011D
_080231D4:
	ldr r0, _08023214 @ => 0x0805A270
	adds r0, r6, r0
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r4, #0
	movs r1, #4
	bl FUN_080015DC
	movs r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
_080231EA:
	adds r0, r4, #0
	movs r1, #4
	bl FUN_080017D4
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08023204
	adds r0, r4, #0
	bl FUN_0803977C
_08023204:
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0
	strb r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08023214: .4byte ROMREF_0805A270

	thumb_func_start FUN_08023218
FUN_08023218: @ 0x08023218
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08023258 @ => FUN_08023120
	str r0, [r4, #0x50]
	strb r1, [r4, #0x13]
	ldr r2, _0802325C @ => 0x03004200
	ldr r0, _08023260 @ => 0x030042B0
	ldrh r0, [r0, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r2, [r1, #8]
	ldr r0, _08023264 @ => 0x0000FFFE
	ands r0, r2
	strh r0, [r1, #8]
	ldr r0, [r4, #0xc]
	movs r1, #0x81
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, _08023268 @ => 0x03003DF0
	ldr r1, _0802326C @ => 0x00000404
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08023270
	adds r0, r4, #0
	movs r1, #0x18
	bl FUN_08001FB0
	b _08023286
	.align 2, 0
_08023258: .4byte FUN_08023120
_0802325C: .4byte gUnk_03004200
_08023260: .4byte gUnk_030042B0
_08023264: .4byte 0x0000FFFE
_08023268: .4byte gUnk_03003DF0
_0802326C: .4byte 0x00000404
_08023270:
	cmp r0, #1
	bne _0802327E
	adds r0, r4, #0
	movs r1, #0x2f
	bl FUN_08001FB0
	b _08023286
_0802327E:
	adds r0, r4, #0
	movs r1, #0xd
	bl FUN_08001FB0
_08023286:
	ldr r2, _080232A4 @ => 0x03004200
	ldr r0, _080232A8 @ => 0x030042B0
	ldrh r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r0, r2
	ldrb r0, [r1, #0x10]
	cmp r0, #0xd0
	bne _080232AC
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08001F20
	b _080232B4
	.align 2, 0
_080232A4: .4byte gUnk_03004200
_080232A8: .4byte gUnk_030042B0
_080232AC:
	ldrb r1, [r1, #0x10]
	adds r0, r4, #0
	bl FUN_08001F20
_080232B4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080232BC
FUN_080232BC: @ 0x080232BC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_08021738
	cmp r0, #1
	bne _080232D4
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl FUN_080236B4
	b _080232E4
_080232D4:
	bl FUN_08021738
	cmp r0, #2
	bne _080232E8
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl FUN_08023710
_080232E4:
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_080232E8:
	adds r0, r5, #0
	adds r0, #0xd8
	adds r6, r0, #0
	ldrh r0, [r6]
	cmp r4, r0
	beq _0802332E
	cmp r4, #4
	bne _0802330E
	ldr r0, _08023334 @ => 0x030043A0
	ldr r0, [r0]
	cmp r0, #0xf
	bne _0802330E
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	bl FUN_0801AA5C
	cmp r0, #1
	bne _0802330E
	movs r4, #0x21
_0802330E:
	strh r4, [r6]
	ldr r0, [r5, #0xc]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5, #0xc]
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r2, r5, r0
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r5, #0xc]
	ldr r1, _08023338 @ => 0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #0xc]
_0802332E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08023334: .4byte gUnk_030043A0
_08023338: .4byte 0xFFBFFFFF

	thumb_func_start FUN_0802333C
FUN_0802333C: @ 0x0802333C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0x16
	ands r0, r1
	cmp r0, #0
	beq _08023360
	ldr r7, _0802335C @ => 0x0805A278
	movs r0, #8
	mov sb, r0
	b _08023366
	.align 2, 0
_0802335C: .4byte ROMREF_0805A278
_08023360:
	ldr r7, _080233AC @ => 0x0805A270
	movs r1, #4
	mov sb, r1
_08023366:
	ldr r6, _080233B0 @ => 0x03004200
	ldr r4, _080233B4 @ => 0x030042B0
	ldrh r1, [r4, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r0, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802339A
	ldr r0, _080233B8 @ => 0x03003E0C
	movs r1, #0
	movs r2, #1
	bl FUN_08048CB4
	ldrh r0, [r4, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r2, [r1, #8]
	ldr r0, _080233BC @ => 0x0000FFBF
	ands r0, r2
	strh r0, [r1, #8]
_0802339A:
	movs r0, #0xf3
	bl FUN_080213F8
	cmp r0, #1
	bne _080233C0
	movs r4, #0xe
	movs r6, #1
	b _080233EC
	.align 2, 0
_080233AC: .4byte ROMREF_0805A270
_080233B0: .4byte gUnk_03004200
_080233B4: .4byte gUnk_030042B0
_080233B8: .4byte gUnk_03003E0C
_080233BC: .4byte 0x0000FFBF
_080233C0:
	movs r0, #0xf6
	lsls r0, r0, #1
	bl FUN_080213F8
	cmp r0, #1
	bne _080233D2
	movs r4, #0x14
	movs r6, #1
	b _080233EC
_080233D2:
	ldr r0, _080233E4 @ => 0x00000225
	bl FUN_080213F8
	cmp r0, #1
	bne _080233E8
	movs r4, #0x26
	movs r6, #1
	b _080233EC
	.align 2, 0
_080233E4: .4byte 0x00000225
_080233E8:
	movs r4, #0x27
	movs r6, #0
_080233EC:
	bl FUN_08023680
	cmp r0, #1
	bne _08023494
	adds r0, r5, #0
	adds r0, #0xdb
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08023430
	adds r0, r5, #0
	bl FUN_08001628
	ldr r4, _08023474 @ => 0x03003E0C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl FUN_08048CB4
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_08048B6C
	adds r0, r5, #0
	adds r0, #0xd8
	ldrb r1, [r0]
	ldrb r0, [r5, #0x12]
	adds r0, r7, r0
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r5, #0
	bl FUN_080015DC
_08023430:
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #0x16
	ands r0, r1
	cmp r0, #0
	bne _08023442
	b _08023560
_08023442:
	movs r0, #0x14
	ands r0, r1
	cmp r0, #0
	bne _0802344C
	b _08023560
_0802344C:
	ldr r4, _08023474 @ => 0x03003E0C
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_08048B6C
	adds r6, r5, #0
	adds r6, #0xd8
	ldrb r1, [r6]
	ldrb r0, [r5, #0x12]
	adds r0, r7, r0
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r5, #0
	bl FUN_080015DC
	ldrb r0, [r4]
	cmp r0, #0
	beq _0802347C
	ldr r0, _08023478 @ => 0x09FBF388
	b _0802347E
	.align 2, 0
_08023474: .4byte gUnk_03003E0C
_08023478: .4byte ROMREF_09FBF388
_0802347C:
	ldr r0, _08023490 @ => 0x09FC10D8
_0802347E:
	ldrh r1, [r6]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	b _08023560
	.align 2, 0
_08023490: .4byte ROMREF_09FC10D8
_08023494:
	cmp r6, #1
	bne _08023560
	adds r0, r5, #0
	adds r0, #0xdb
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080234BC
	adds r0, r5, #0
	bl FUN_08001684
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	ldr r0, _08023578 @ => 0x08071E40
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_0803EF14
_080234BC:
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r0, r0, r5
	mov r8, r0
	ldrb r1, [r0]
	movs r0, #0x16
	ands r0, r1
	cmp r0, #0
	beq _08023540
	movs r0, #0x14
	ands r0, r1
	cmp r0, #0
	beq _08023538
	adds r7, r4, #0
	adds r4, r5, #0
	adds r4, #0xd8
	ldrb r1, [r4]
	add r6, sp, #4
	adds r0, r7, #0
	mov r2, sp
	adds r3, r6, #0
	bl FUN_0803A07C
	cmp r0, #0
	bne _08023502
	adds r0, r5, #0
	movs r1, #4
	bl FUN_08001F20
	ldrb r1, [r4]
	adds r0, r7, #0
	mov r2, sp
	adds r3, r6, #0
	bl FUN_0803A07C
_08023502:
	ldr r1, _0802357C @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [sp]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [sp, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	ldr r0, [r5, #0xc]
	movs r1, #0x10
	orrs r0, r1
	ldr r1, _08023580 @ => 0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #0xc]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0xfb
	ands r0, r1
	mov r1, r8
	strb r0, [r1]
_08023538:
	adds r0, r5, #0
	mov r1, sb
	bl FUN_080017D4
_08023540:
	adds r0, r5, #0
	adds r0, #0x7c
	movs r1, #0xf8
	strb r1, [r0]
	adds r0, #2
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x7d
	movs r0, #8
	strb r0, [r1]
	adds r1, #2
	movs r0, #7
	strb r0, [r1]
	adds r1, #1
	movs r0, #1
	strb r0, [r1]
_08023560:
	adds r0, r5, #0
	mov r1, sb
	bl FUN_080017D4
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023578: .4byte CastAnimTable + 4
_0802357C: .4byte ROMREF_0805A270
_08023580: .4byte 0xFFBFFFFF

	thumb_func_start FUN_08023584
FUN_08023584: @ 0x08023584
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	ldr r0, _0802360C @ => 0x03004720
	ldr r0, [r0]
	cmp r0, #1
	bne _08023604
	ldr r0, _08023610 @ => 0x03003E28
	bl FUN_08038B80
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r2, _08023614 @ => 0x03004200
	ldr r6, _08023618 @ => 0x030042B0
	ldrh r1, [r6, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r5, r2, #4
	adds r0, r0, r5
	ldr r1, [r0]
	cmp r1, #0
	beq _080235D0
	ldrh r0, [r1, #0xa]
	subs r0, #1
	cmp r0, r4
	beq _080235D0
	adds r0, r1, #0
	movs r1, #1
	bl FUN_08001FB0
	ldrh r0, [r6, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r5
	movs r0, #0
	str r0, [r1]
_080235D0:
	cmp r4, #7
	beq _08023604
	ldr r2, _08023614 @ => 0x03004200
	ldr r6, _08023618 @ => 0x030042B0
	ldrh r1, [r6, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r5, r2, #4
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	bne _08023604
	adds r1, r4, #1
	str r0, [sp]
	adds r0, r7, #0
	movs r2, #0
	movs r3, #0
	bl FUN_0800B4BC
	ldrh r2, [r6, #6]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r5
	str r0, [r1]
_08023604:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802360C: .4byte gUnk_03004720
_08023610: .4byte gUnk_03003E28
_08023614: .4byte gUnk_03004200
_08023618: .4byte gUnk_030042B0

	thumb_func_start FUN_0802361C
FUN_0802361C: @ 0x0802361C
	ldr r1, _08023638 @ => FUN_08023158
	str r1, [r0, #0x50]
	ldr r2, _0802363C @ => 0x03004200
	ldr r0, _08023640 @ => 0x030042B0
	ldrh r0, [r0, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r2, [r1, #8]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #8]
	bx lr
	.align 2, 0
_08023638: .4byte FUN_08023158
_0802363C: .4byte gUnk_03004200
_08023640: .4byte gUnk_030042B0

	thumb_func_start FUN_08023644
FUN_08023644: @ 0x08023644
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl FUN_08023680
	cmp r0, #1
	bne _0802366E
	cmp r5, #0
	bne _08023660
	adds r0, r4, #0
	movs r1, #4
	bl FUN_080232BC
	b _08023678
_08023660:
	adds r0, r4, #0
	adds r0, #0xd8
	ldrh r1, [r0]
	adds r0, r4, #0
	bl FUN_080232BC
	b _08023678
_0802366E:
	cmp r5, #0
	beq _08023678
	movs r0, #0
	bl FUN_0802174C
_08023678:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08023680
FUN_08023680: @ 0x08023680
	push {lr}
	movs r0, #0xf3
	bl FUN_080213F8
	cmp r0, #0
	bne _080236A2
	movs r0, #0xf6
	lsls r0, r0, #1
	bl FUN_080213F8
	cmp r0, #0
	bne _080236A2
	ldr r0, _080236A8 @ => 0x00000225
	bl FUN_080213F8
	cmp r0, #0
	beq _080236AC
_080236A2:
	movs r0, #0
	b _080236AE
	.align 2, 0
_080236A8: .4byte 0x00000225
_080236AC:
	movs r0, #1
_080236AE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_080236B4
FUN_080236B4: @ 0x080236B4
	push {lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	subs r0, r2, #4
	cmp r0, #0xa
	bhi _08023708
	lsls r0, r0, #2
	ldr r1, _080236CC @ =_080236D0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080236CC: .4byte _080236D0
_080236D0: @ jump table
	.4byte _08023704 @ case 0
	.4byte _08023704 @ case 1
	.4byte _08023704 @ case 2
	.4byte _08023704 @ case 3
	.4byte _08023700 @ case 4
	.4byte _08023708 @ case 5
	.4byte _080236FC @ case 6
	.4byte _08023708 @ case 7
	.4byte _080236FC @ case 8
	.4byte _08023700 @ case 9
	.4byte _08023704 @ case 10
_080236FC:
	movs r0, #0x93
	b _0802370A
_08023700:
	movs r0, #0x94
	b _0802370A
_08023704:
	movs r0, #0x92
	b _0802370A
_08023708:
	adds r0, r2, #0
_0802370A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08023710
FUN_08023710: @ 0x08023710
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	beq _08023740
	cmp r0, #0xa
	bgt _0802372C
	cmp r0, #4
	blt _0802374A
	cmp r0, #7
	ble _08023748
	cmp r0, #8
	beq _08023744
	b _0802374A
_0802372C:
	cmp r0, #0x93
	beq _08023740
	cmp r0, #0x93
	bgt _0802373A
	cmp r0, #0x92
	beq _08023748
	b _0802374A
_0802373A:
	cmp r0, #0x94
	beq _08023744
	b _0802374A
_08023740:
	movs r0, #0xc
	b _0802374A
_08023744:
	movs r0, #0xd
	b _0802374A
_08023748:
	movs r0, #0xe
_0802374A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08023750
FUN_08023750: @ 0x08023750
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r7, r0, #0
	str r1, [sp, #0x1c]
	ldr r0, _0802380C @ => 0x03004230
	mov sb, r0
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #3
	mov r8, r0
	add r0, sb
	adds r0, #0x34
	movs r3, #0
	movs r1, #2
	strb r1, [r0]
	ldr r1, _08023810 @ => 0x030042A0
	movs r0, #0xc
	str r0, [r1]
	ldr r0, _08023814 @ => 0x03004720
	ldr r1, [r0]
	cmp r1, #1
	beq _08023786
	b _0802388C
_08023786:
	ldr r0, _08023818 @ => 0x030042B0
	ldrh r0, [r0, #6]
	cmp r7, r0
	bne _08023884
	movs r4, #0
	movs r5, #0
	ldr r2, _0802381C @ => 0x081569EC
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r4, [sp, #0xc]
	str r5, [sp, #0x10]
	str r1, [sp, #0x14]
	add r0, sp, #0x18
	movs r1, #3
	movs r3, #0xc0
	bl FUN_0800D83C
	ldr r0, _08023820 @ => 0x08CDACF4
	movs r1, #0
	movs r2, #0x10
	bl FUN_08015760
	movs r6, #0
	movs r1, #0x1c
	add r1, sb
	mov sl, r1
	mov r0, r8
	adds r0, #8
	add r0, sl
	mov sb, r0
_080237C4:
	movs r0, #0x32
	bl FUN_080012D8
	lsls r4, r6, #2
	mov r2, r8
	adds r1, r4, r2
	mov r3, sl
	adds r5, r1, r3
	str r0, [r5]
	adds r0, #0xa9
	ldrb r1, [r0]
	movs r3, #0xd
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	strb r1, [r0]
	ldr r0, [r5]
	ldr r1, _08023824 @ => 0x08062CB8
	adds r1, r6, r1
	ldrb r1, [r1]
	movs r2, #2
	bl FUN_08001734
	cmp r6, #2
	bne _08023830
	mov r1, sb
	ldr r0, [r1]
	ldr r1, _08023828 @ => 0x08062C70
	bl FUN_080015B8
	mov r2, sb
	ldr r0, [r2]
	ldr r1, _0802382C @ => 0x09FB6340
	bl FUN_0803EF14
	b _08023840
	.align 2, 0
_0802380C: .4byte gUnk_03004230
_08023810: .4byte gUnk_030042A0
_08023814: .4byte gUnk_03004720
_08023818: .4byte gUnk_030042B0
_0802381C: .4byte ROMREF_081569EC
_08023820: .4byte ROMREF_08CDACF4
_08023824: .4byte ROMREF_08062CB8
_08023828: .4byte ROMREF_08062C70
_0802382C: .4byte ROMREF_09FB6340
_08023830:
	ldr r0, [r5]
	ldr r1, _080238C0 @ => 0x08062C60
	bl FUN_080015B8
	ldr r0, [r5]
	ldr r1, _080238C4 @ => 0x09FB6340
	bl FUN_0803EF14
_08023840:
	mov r3, r8
	adds r0, r4, r3
	mov r1, sl
	adds r4, r0, r1
	ldr r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #0xe
	str r0, [r1, #0xc]
	ldr r0, _080238C8 @ => 0x00000297
	bl FUN_080213F8
	adds r2, r0, #0
	cmp r2, #1
	bne _08023864
	ldr r1, [r4]
	ldr r0, [r1, #0xc]
	orrs r0, r2
	str r0, [r1, #0xc]
_08023864:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _080237C4
	ldr r1, _080238CC @ => 0x03004230
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r1, r2
	str r1, [r0]
_08023884:
	ldr r0, _080238D0 @ => 0x080637EC
	ldr r0, [r0]
	bl FUN_0801FE58
_0802388C:
	ldr r3, _080238CC @ => 0x03004230
	lsls r2, r7, #3
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _080238A2
	subs r0, r2, r7
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
_080238A2:
	subs r0, r2, r7
	lsls r0, r0, #3
	adds r0, r0, r3
	ldr r1, [r0]
	movs r2, #3
	orrs r1, r2
	str r1, [r0]
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080238C0: .4byte ROMREF_08062C60
_080238C4: .4byte ROMREF_09FB6340
_080238C8: .4byte 0x00000297
_080238CC: .4byte gUnk_03004230
_080238D0: .4byte ROMREF_080637EC

	thumb_func_start FUN_080238D4
FUN_080238D4: @ 0x080238D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r0, #0
	bl FUN_08023C38
	ldr r0, _080239E8 @ => 0x030042B0
	ldrh r0, [r0, #6]
	cmp r5, r0
	bne _080238EA
	bl FUN_08023F34
_080238EA:
	ldr r0, _080239EC @ => 0x03004720
	ldr r6, [r0]
	lsls r7, r5, #3
	cmp r6, #1
	bne _080239BA
	ldr r0, _080239F0 @ => 0x03004230
	subs r1, r7, r5
	lsls r1, r1, #3
	adds r4, r1, r0
	ldr r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08023962
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4]
	movs r0, #0x14
	str r0, [sp]
	movs r0, #6
	str r0, [sp, #4]
	movs r0, #0x12
	str r0, [sp, #8]
	movs r0, #3
	movs r1, #5
	movs r2, #2
	movs r3, #0x19
	bl FUN_0800CAA4
	ldr r0, _080239F4 @ => 0x080637EC
	ldr r0, [r0]
	bl FUN_0801FE58
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #0
	movs r1, #0
	bl FUN_0801FEA0
	ldr r0, _080239F8 @ => 0x03003DF0
	ldr r0, [r0, #8]
	add r1, sp, #0xc
	bl FUN_080504E4
	add r0, sp, #0xc
	bl FUN_08020320
	movs r0, #0xec
	lsls r0, r0, #3
	bl FUN_08050820
	adds r3, r0, #0
	movs r0, #0x93
	lsls r0, r0, #1
	str r6, [sp]
	movs r1, #0x44
	movs r2, #0x94
	bl FUN_0801F8B8
_08023962:
	ldr r1, [r4]
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	beq _080239BA
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4]
	movs r0, #0x14
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0x12
	str r0, [sp, #8]
	movs r0, #3
	movs r1, #6
	movs r2, #2
	movs r3, #0x13
	bl FUN_0800CAA4
	ldr r0, _080239F4 @ => 0x080637EC
	ldr r0, [r0]
	bl FUN_0801FE58
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #0
	movs r1, #0
	bl FUN_0801FEA0
	ldr r0, _080239F8 @ => 0x03003DF0
	ldr r2, _080239FC @ => 0x00000766
	add r1, sp, #0xc
	bl FUN_08013FDC
	movs r0, #0x8d
	lsls r0, r0, #1
	str r6, [sp]
	movs r1, #0x18
	movs r2, #0x94
	add r3, sp, #0xc
	bl FUN_0801F8B8
_080239BA:
	ldr r1, _080239F0 @ => 0x03004230
	subs r0, r7, r5
	lsls r0, r0, #3
	adds r1, #4
	adds r2, r0, r1
	ldr r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08023A00
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	str r0, [r2]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08023A16
	movs r0, #1
	bl FUN_08024000
	b _08023A16
	.align 2, 0
_080239E8: .4byte gUnk_030042B0
_080239EC: .4byte gUnk_03004720
_080239F0: .4byte gUnk_03004230
_080239F4: .4byte ROMREF_080637EC
_080239F8: .4byte gUnk_03003DF0
_080239FC: .4byte 0x00000766
_08023A00:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08023A16
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r2]
	movs r0, #0
	bl FUN_08024000
_08023A16:
	ldr r2, _08023A70 @ => 0x03004200
	ldr r0, _08023A74 @ => 0x030042B0
	ldrh r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r1, #0
	subs r0, #0xd
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08023A40
	cmp r1, #0x3e
	beq _08023A40
	b _08023B72
_08023A40:
	ldr r0, _08023A78 @ => 0x03003460
	adds r1, r7, r5
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #0x1f]
	cmp r0, #1
	bne _08023A50
	b _08023B72
_08023A50:
	ldr r1, _08023A7C @ => 0x03004230
	subs r0, r7, r5
	lsls r3, r0, #3
	adds r0, r1, #4
	adds r4, r3, r0
	ldr r2, [r4]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08023A80
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r4]
	b _08023B64
	.align 2, 0
_08023A70: .4byte gUnk_03004200
_08023A74: .4byte gUnk_030042B0
_08023A78: .4byte gUnk_03003460
_08023A7C: .4byte gUnk_03004230
_08023A80:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08023A9C
	ldr r0, _08023A98 @ => 0x000007C9
	bl FUN_080243B0
	ldr r0, [r4]
	movs r1, #0x11
	rsbs r1, r1, #0
	b _08023AD0
	.align 2, 0
_08023A98: .4byte 0x000007C9
_08023A9C:
	ldr r0, _08023AAC @ => 0x00003206
	ands r0, r2
	cmp r0, #0
	beq _08023AB0
	adds r0, r5, #0
	bl FUN_08023D3C
	b _08023B64
	.align 2, 0
_08023AAC: .4byte 0x00003206
_08023AB0:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08023AE0
	ldr r0, _08023AD8 @ => 0x03003DF0
	ldr r1, _08023ADC @ => 0x000003F7
	adds r0, r0, r1
	movs r1, #0xe
	strb r1, [r0]
	movs r0, #0x87
	lsls r0, r0, #4
	bl FUN_080243B0
	ldr r0, [r4]
	movs r1, #9
	rsbs r1, r1, #0
_08023AD0:
	ands r0, r1
	str r0, [r4]
	b _08023B64
	.align 2, 0
_08023AD8: .4byte gUnk_03003DF0
_08023ADC: .4byte 0x000003F7
_08023AE0:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08023AFC
	ldr r0, _08023AF8 @ => 0xFFFFF7FF
	ands r2, r0
	str r2, [r4]
	movs r0, #1
	bl FUN_0802409C
	b _08023B64
	.align 2, 0
_08023AF8: .4byte 0xFFFFF7FF
_08023AFC:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	beq _08023B18
	ldr r0, _08023B14 @ => 0xFFFFFBFF
	ands r2, r0
	str r2, [r4]
	movs r0, #0
	bl FUN_0801E04C
	b _08023B64
	.align 2, 0
_08023B14: .4byte 0xFFFFFBFF
_08023B18:
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r2
	cmp r0, #0
	beq _08023B44
	ldr r0, _08023B40 @ => 0xFFFFBFFF
	ands r2, r0
	str r2, [r4]
	adds r0, r1, #0
	adds r0, #8
	adds r0, r3, r0
	ldr r0, [r0]
	adds r1, #0xc
	adds r1, r3, r1
	ldr r1, [r1]
	movs r2, #0
	bl FUN_0802CED4
	b _08023B64
	.align 2, 0
_08023B40: .4byte 0xFFFFBFFF
_08023B44:
	ldr r0, _08023B7C @ => 0x03003DF0
	ldr r1, _08023B80 @ => 0x000003FB
	adds r5, r0, r1
	ldrb r0, [r5]
	cmp r0, #0
	beq _08023B64
	ldr r0, _08023B84 @ => 0x03005C60
	movs r4, #0
	ldr r1, _08023B88 @ => 0x0000087E
	strh r1, [r0]
	movs r0, #0x1b
	bl FUN_0804E120
	bl FUN_08041BF0
	strb r4, [r5]
_08023B64:
	ldr r0, _08023B8C @ => 0x00000297
	bl FUN_080213F8
	cmp r0, #1
	bne _08023B72
	bl FUN_08024170
_08023B72:
	add sp, #0x20
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023B7C: .4byte gUnk_03003DF0
_08023B80: .4byte 0x000003FB
_08023B84: .4byte gChoiceIDs
_08023B88: .4byte 0x0000087E
_08023B8C: .4byte 0x00000297

	thumb_func_start FUN_08023B90
FUN_08023B90: @ 0x08023B90
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08023C20 @ => 0x03004720
	ldr r0, [r0]
	cmp r0, #1
	bne _08023C14
	movs r5, #0
	ldr r7, _08023C24 @ => 0x030042B0
	ldr r6, _08023C28 @ => 0x0300424C
_08023BA4:
	lsls r4, r5, #2
	ldrh r1, [r7, #6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r4, r0
	adds r0, r0, r6
	ldr r0, [r0]
	bl FUN_08024548
	ldrh r1, [r7, #6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r4, r4, r0
	adds r4, r4, r6
	movs r0, #0
	mov r8, r0
	str r0, [r4]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08023BA4
	ldr r0, _08023C2C @ => 0x03003DF0
	ldr r1, _08023C30 @ => 0x0000036A
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08023BEA
	movs r0, #0
	bl FUN_08024000
_08023BEA:
	ldr r2, _08023C34 @ => 0x03004230
	ldr r5, _08023C24 @ => 0x030042B0
	ldrh r1, [r5, #6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r4, r2, #0
	adds r4, #0x18
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _08023C14
	bl FUN_08024548
	ldrh r1, [r5, #6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	mov r1, r8
	str r1, [r0]
_08023C14:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023C20: .4byte gUnk_03004720
_08023C24: .4byte gUnk_030042B0
_08023C28: .4byte gUnk_0300424C
_08023C2C: .4byte gUnk_03003DF0
_08023C30: .4byte 0x0000036A
_08023C34: .4byte gUnk_03004230

	thumb_func_start FUN_08023C38
FUN_08023C38: @ 0x08023C38
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	bl FUN_080244D4
	adds r5, r0, #0
	bl FUN_08024514
	adds r6, r0, #0
	movs r0, #1
	mov sb, r0
	ldr r0, _08023C64 @ => 0x03004720
	ldr r0, [r0]
	cmp r0, #0xd
	beq _08023C72
	cmp r0, #0xd
	bhi _08023C68
	cmp r0, #1
	beq _08023C6C
	b _08023C72
	.align 2, 0
_08023C64: .4byte gUnk_03004720
_08023C68:
	cmp r0, #0x16
	bne _08023C72
_08023C6C:
	movs r0, #0xf
	movs r1, #0x1d
	b _08023C76
_08023C72:
	movs r0, #6
	movs r1, #0x14
_08023C76:
	mov r8, r1
	adds r4, r0, #0
	cmp r4, r8
	bgt _08023D2E
	movs r7, #0x12
_08023C80:
	cmp r6, #0
	bgt _08023CA2
	cmp r4, r8
	bne _08023C8C
	movs r0, #0x1c
	b _08023C8E
_08023C8C:
	movs r0, #0x18
_08023C8E:
	str r0, [sp]
	str r4, [sp, #4]
	str r7, [sp, #8]
	movs r0, #3
	movs r1, #1
	movs r2, #2
	movs r3, #0
	bl FUN_0800CAA4
	b _08023D24
_08023CA2:
	cmp r6, #7
	bgt _08023CD2
	movs r3, #0
	cmp r5, #0
	blt _08023CB4
	adds r3, r5, #1
	cmp r5, #0
	bne _08023CB4
	movs r3, #1
_08023CB4:
	cmp r4, r8
	bne _08023CBE
	adds r3, #1
	movs r0, #0x1c
	b _08023CC0
_08023CBE:
	movs r0, #0x1a
_08023CC0:
	str r0, [sp]
	str r4, [sp, #4]
	str r7, [sp, #8]
	movs r0, #3
	movs r1, #1
	movs r2, #2
	bl FUN_0800CAA4
	b _08023D24
_08023CD2:
	mov r0, sb
	cmp r0, #0
	beq _08023CFE
	movs r3, #0
	cmp r5, #0
	ble _08023CE6
	movs r3, #8
	cmp r5, #7
	bgt _08023CE6
	adds r3, r5, #0
_08023CE6:
	movs r0, #0x14
	str r0, [sp]
	str r4, [sp, #4]
	str r7, [sp, #8]
	movs r0, #3
	movs r1, #1
	movs r2, #2
	bl FUN_0800CAA4
	movs r1, #0
	mov sb, r1
	b _08023D24
_08023CFE:
	movs r3, #0
	cmp r5, #0
	blt _08023D12
	movs r3, #1
	cmp r5, #0
	beq _08023D12
	movs r3, #9
	cmp r5, #7
	bgt _08023D12
	adds r3, r5, #1
_08023D12:
	movs r0, #0x16
	str r0, [sp]
	str r4, [sp, #4]
	str r7, [sp, #8]
	movs r0, #3
	movs r1, #1
	movs r2, #2
	bl FUN_0800CAA4
_08023D24:
	subs r5, #8
	subs r6, #8
	adds r4, #1
	cmp r4, r8
	ble _08023C80
_08023D2E:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_08023D3C
FUN_08023D3C: @ 0x08023D3C
	push {lr}
	adds r2, r0, #0
	ldr r0, _08023D88 @ => 0x03004374
	ldr r0, [r0]
	movs r3, #0x80
	lsls r3, r3, #2
	ands r0, r3
	cmp r0, #0
	beq _08023D50
	b _08023E7A
_08023D50:
	ldr r1, _08023D8C @ => 0x03004230
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r1, #4
	adds r2, r0, r1
	ldr r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08023DA0
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r2]
	ldr r0, _08023D90 @ => 0x03003DF0
	ldr r1, _08023D94 @ => 0x000003F7
	adds r0, r0, r1
	movs r1, #0xb
	strb r1, [r0]
	ldr r1, _08023D98 @ => 0x03005C60
	ldr r0, _08023D9C @ => 0x00000869
	strh r0, [r1]
	movs r0, #0x15
	bl FUN_0804E120
	b _08023E66
	.align 2, 0
_08023D88: .4byte gUnk_03004374
_08023D8C: .4byte gUnk_03004230
_08023D90: .4byte gUnk_03003DF0
_08023D94: .4byte 0x000003F7
_08023D98: .4byte gChoiceIDs
_08023D9C: .4byte 0x00000869
_08023DA0:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08023DDC
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r2]
	ldr r0, _08023DCC @ => 0x03003DF0
	ldr r1, _08023DD0 @ => 0x000003F7
	adds r0, r0, r1
	movs r1, #0xb
	strb r1, [r0]
	ldr r1, _08023DD4 @ => 0x03005C60
	ldr r0, _08023DD8 @ => 0x00000868
	strh r0, [r1]
	movs r0, #0x8c
	lsls r0, r0, #1
	bl FUN_0804DE0C
	b _08023E66
	.align 2, 0
_08023DCC: .4byte gUnk_03003DF0
_08023DD0: .4byte 0x000003F7
_08023DD4: .4byte gChoiceIDs
_08023DD8: .4byte 0x00000868
_08023DDC:
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _08023E04
	ldr r0, _08023DF8 @ => 0xFFFFFDFF
	ands r1, r0
	str r1, [r2]
	ldr r1, _08023DFC @ => 0x03005C60
	ldr r0, _08023E00 @ => 0x0000086B
	strh r0, [r1]
	movs r0, #0x1c
	bl FUN_0804E120
	b _08023E66
	.align 2, 0
_08023DF8: .4byte 0xFFFFFDFF
_08023DFC: .4byte gChoiceIDs
_08023E00: .4byte 0x0000086B
_08023E04:
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08023E40
	ldr r0, _08023E2C @ => 0xFFFFEFFF
	ands r1, r0
	str r1, [r2]
	ldr r0, _08023E30 @ => 0x03003DF0
	ldr r1, _08023E34 @ => 0x000003F7
	adds r0, r0, r1
	movs r1, #0xb
	strb r1, [r0]
	ldr r1, _08023E38 @ => 0x03005C60
	ldr r0, _08023E3C @ => 0x0000086D
	strh r0, [r1]
	movs r0, #0xc1
	bl FUN_0804DE0C
	b _08023E66
	.align 2, 0
_08023E2C: .4byte 0xFFFFEFFF
_08023E30: .4byte gUnk_03003DF0
_08023E34: .4byte 0x000003F7
_08023E38: .4byte gChoiceIDs
_08023E3C: .4byte 0x0000086D
_08023E40:
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	beq _08023E66
	ldr r0, _08023E80 @ => 0xFFFFDFFF
	ands r1, r0
	str r1, [r2]
	ldr r0, _08023E84 @ => 0x03003DF0
	ldr r1, _08023E88 @ => 0x000003F7
	adds r0, r0, r1
	movs r1, #0xe
	strb r1, [r0]
	ldr r1, _08023E8C @ => 0x03005C60
	ldr r0, _08023E90 @ => 0x0000086C
	strh r0, [r1]
	movs r0, #0x15
	bl FUN_0804E120
_08023E66:
	ldr r1, _08023E94 @ => 0x03005C90
	movs r0, #1
	strb r0, [r1, #4]
	movs r0, #0x78
	movs r1, #0x48
	bl FUN_08041C28
	movs r0, #2
	bl FUN_0802CEC4
_08023E7A:
	pop {r0}
	bx r0
	.align 2, 0
_08023E80: .4byte 0xFFFFDFFF
_08023E84: .4byte gUnk_03003DF0
_08023E88: .4byte 0x000003F7
_08023E8C: .4byte gChoiceIDs
_08023E90: .4byte 0x0000086C
_08023E94: .4byte gUnk_03005C90

	thumb_func_start FUN_08023E98
FUN_08023E98: @ 0x08023E98
	push {r4, r5, r6, lr}
	ldr r6, _08023F18 @ => 0x03003E28
	adds r0, r6, #0
	bl FUN_08038A80
	adds r4, r0, #0
	bl FUN_08024514
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r5, #0x73
	muls r0, r5, r0
	muls r4, r0, r4
	movs r0, #7
	ldrsb r0, [r6, r0]
	muls r0, r5, r0
	movs r1, #0x64
	bl __divsi3
	adds r1, r0, #0
	adds r0, r4, #0
	bl __divsi3
	movs r1, #0x64
	bl __divsi3
	adds r4, r0, #0
	adds r0, r6, #0
	bl FUN_08038A2C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r0, r5, r0
	movs r1, #0x64
	bl __divsi3
	movs r1, #0
	cmp r0, #3
	ble _08023EF0
	movs r2, #3
_08023EE8:
	adds r2, #8
	adds r1, #1
	cmp r2, r0
	blt _08023EE8
_08023EF0:
	lsls r1, r1, #3
	adds r1, #3
	movs r0, #0x64
	muls r0, r4, r0
	bl __divsi3
	adds r2, r0, #0
	movs r1, #0
	ldr r0, _08023F1C @ => 0x08062C80
	adds r4, r0, #4
	adds r3, r0, #0
_08023F06:
	ldr r0, [r3]
	cmp r2, r0
	blt _08023F20
	ldr r0, [r4]
	cmp r2, r0
	bgt _08023F20
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	b _08023F2C
	.align 2, 0
_08023F18: .4byte gUnk_03003E28
_08023F1C: .4byte ROMREF_08062C80
_08023F20:
	adds r4, #0x1c
	adds r3, #0x1c
	adds r1, #1
	cmp r1, #1
	ble _08023F06
	movs r0, #2
_08023F2C:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08023F34
FUN_08023F34: @ 0x08023F34
	push {r4, r5, lr}
	sub sp, #0x10
	bl FUN_08023E98
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r2, _08023F84 @ => 0x03004230
	ldr r0, _08023F88 @ => 0x030042B0
	ldrh r1, [r0, #6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #2
	bne _08023F90
	ldr r4, _08023F8C @ => 0x08062C80
	lsls r3, r5, #3
	subs r3, r3, r5
	lsls r3, r3, #2
	adds r0, r4, #0
	adds r0, #8
	adds r0, r3, r0
	ldr r0, [r0]
	adds r1, r4, #0
	adds r1, #0xc
	adds r1, r3, r1
	ldr r1, [r1]
	adds r2, r4, #0
	adds r2, #0x14
	adds r2, r3, r2
	ldr r2, [r2]
	adds r4, #0x18
	adds r3, r3, r4
	ldr r3, [r3]
	bl FUN_08015770
	b _08023FD4
	.align 2, 0
_08023F84: .4byte gUnk_03004230
_08023F88: .4byte gUnk_030042B0
_08023F8C: .4byte ROMREF_08062C80
_08023F90:
	cmp r5, r0
	beq _08023FD4
	ldr r4, _08023FF0 @ => 0x08062C80
	lsls r3, r5, #3
	subs r3, r3, r5
	lsls r3, r3, #2
	adds r0, r4, #0
	adds r0, #0x14
	adds r0, r3, r0
	ldr r0, [r0]
	adds r1, r4, #0
	adds r1, #0x18
	adds r1, r3, r1
	ldr r1, [r1]
	movs r2, #1
	str r2, [sp]
	adds r2, r4, #0
	adds r2, #8
	adds r2, r3, r2
	ldr r2, [r2]
	str r2, [sp, #4]
	adds r2, r4, #0
	adds r2, #0x10
	adds r3, r3, r2
	ldr r2, [r3]
	str r2, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	movs r2, #5
	movs r3, #0x1e
	bl FUN_08015A00
	ldr r1, _08023FF4 @ => 0x030042A0
	str r0, [r1]
_08023FD4:
	ldr r2, _08023FF8 @ => 0x03004230
	ldr r0, _08023FFC @ => 0x030042B0
	ldrh r1, [r0, #6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r0, #0x34
	strb r5, [r0]
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023FF0: .4byte ROMREF_08062C80
_08023FF4: .4byte gUnk_030042A0
_08023FF8: .4byte gUnk_03004230
_08023FFC: .4byte gUnk_030042B0

	thumb_func_start FUN_08024000
FUN_08024000: @ 0x08024000
	push {r4, r5, r6, lr}
	cmp r0, #1
	bne _08024078
	movs r0, #0x62
	bl FUN_0804DE0C
	ldr r6, _08024060 @ => 0x03004230
	str r0, [r6, #0x30]
	ldr r5, [r6, #0x14]
	cmp r5, #0
	bne _08024090
	bl FUN_080012FC
	adds r4, r0, #0
	movs r0, #0
	strh r5, [r4, #8]
	strh r5, [r4, #0xa]
	ldr r2, _08024064 @ => 0x0000011F
	adds r1, r4, r2
	strb r0, [r1]
	ldr r0, _08024068 @ => 0x00200011
	str r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl FUN_08001734
	ldr r1, _0802406C @ => 0x08062C40
	adds r0, r4, #0
	bl FUN_080015B8
	ldr r0, _08024070 @ => 0x03003DF0
	ldrb r1, [r0, #0x1d]
	lsls r1, r1, #2
	ldr r0, _08024074 @ => 0x09FB6344
	adds r1, r1, r0
	adds r0, r4, #0
	bl FUN_0803EF14
	str r5, [r4, #0x50]
	str r5, [r4, #0x54]
	adds r0, r4, #0
	movs r1, #1
	bl FUN_080017B8
	str r4, [r6, #0x14]
	b _08024090
	.align 2, 0
_08024060: .4byte gUnk_03004230
_08024064: .4byte 0x0000011F
_08024068: .4byte 0x00200011
_0802406C: .4byte ROMREF_08062C40
_08024070: .4byte gUnk_03003DF0
_08024074: .4byte ROMREF_09FB6344
_08024078:
	ldr r4, _08024098 @ => 0x03004230
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _08024090
	ldr r0, [r4, #0x30]
	bl FUN_0804E03C
	ldr r0, [r4, #0x14]
	bl FUN_08024548
	movs r0, #0
	str r0, [r4, #0x14]
_08024090:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08024098: .4byte gUnk_03004230

	thumb_func_start FUN_0802409C
FUN_0802409C: @ 0x0802409C
	push {r4, r5, r6, lr}
	cmp r0, #1
	bne _08024158
	ldr r6, _08024100 @ => 0x03004230
	ldr r5, [r6, #0x18]
	cmp r5, #0
	bne _0802411C
	bl FUN_080012FC
	adds r4, r0, #0
	movs r0, #0
	strh r5, [r4, #8]
	strh r5, [r4, #0xa]
	ldr r2, _08024104 @ => 0x0000011F
	adds r1, r4, r2
	strb r0, [r1]
	ldr r0, _08024108 @ => 0x00200001
	str r0, [r4, #0xc]
	movs r1, #0x8c
	lsls r1, r1, #0x11
	adds r0, r4, #0
	movs r2, #0
	bl FUN_08001728
	ldr r1, _0802410C @ => 0x08062C50
	adds r0, r4, #0
	bl FUN_080015B8
	ldr r0, _08024110 @ => 0x03003DF0
	ldrb r1, [r0, #0x1d]
	lsls r1, r1, #2
	ldr r0, _08024114 @ => 0x09FB6344
	adds r1, r1, r0
	adds r0, r4, #0
	bl FUN_0803EF14
	ldr r0, _08024118 @ => FUN_0802421C
	str r0, [r4, #0x50]
	str r5, [r4, #0x54]
	adds r0, r4, #0
	movs r1, #1
	bl FUN_080017B8
	adds r0, r4, #0
	movs r1, #0x32
	bl FUN_08001FB0
	str r4, [r6, #0x18]
	b _08024124
	.align 2, 0
_08024100: .4byte gUnk_03004230
_08024104: .4byte 0x0000011F
_08024108: .4byte 0x00200001
_0802410C: .4byte ROMREF_08062C50
_08024110: .4byte gUnk_03003DF0
_08024114: .4byte ROMREF_09FB6344
_08024118: .4byte FUN_0802421C
_0802411C:
	adds r0, r5, #0
	movs r1, #3
	bl FUN_08001FB0
_08024124:
	ldr r0, _08024148 @ => 0x03003DF0
	ldr r1, _0802414C @ => 0x00000405
	adds r0, r0, r1
	ldrb r4, [r0]
	cmp r4, #1
	bne _0802413C
	ldr r0, _08024150 @ => 0x0000026E
	bl FUN_080213F8
	cmp r0, #1
	bne _0802413C
	movs r4, #3
_0802413C:
	ldr r0, _08024154 @ => 0x03004230
	ldr r0, [r0, #0x18]
	adds r1, r4, #0
	bl FUN_08000E44
	b _08024164
	.align 2, 0
_08024148: .4byte gUnk_03003DF0
_0802414C: .4byte 0x00000405
_08024150: .4byte 0x0000026E
_08024154: .4byte gUnk_03004230
_08024158:
	ldr r4, _0802416C @ => 0x03004230
	ldr r0, [r4, #0x18]
	bl FUN_08024548
	movs r0, #0
	str r0, [r4, #0x18]
_08024164:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802416C: .4byte gUnk_03004230

	thumb_func_start FUN_08024170
FUN_08024170: @ 0x08024170
	push {r4, r5, lr}
	ldr r5, _0802420C @ => 0x03004124
	adds r0, r5, #0
	bl FUN_0801BD54
	ldr r0, [r5, #0x10]
	cmp r0, #1
	beq _0802418E
	ldr r0, _08024210 @ => 0x03004230
	ldr r0, [r0, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080241F0
_0802418E:
	ldr r4, _08024210 @ => 0x03004230
	ldr r0, [r4, #4]
	ldr r1, _08024214 @ => 0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #4]
	movs r0, #2
	ldrsb r0, [r5, r0]
	movs r1, #0xa
	bl __divsi3
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r4, #0x1c]
	bl FUN_08000E44
	movs r0, #2
	ldrsb r0, [r5, r0]
	movs r1, #0xa
	bl __modsi3
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r4, #0x20]
	bl FUN_08000E44
	movs r0, #3
	ldrsb r0, [r5, r0]
	movs r1, #0xa
	bl __divsi3
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r4, #0x28]
	bl FUN_08000E44
	movs r0, #3
	ldrsb r0, [r5, r0]
	movs r1, #0xa
	bl __modsi3
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r4, #0x2c]
	bl FUN_08000E44
_080241F0:
	adds r0, r5, #0
	bl FUN_0801BE40
	cmp r0, #1
	bne _08024206
	ldrh r0, [r5]
	movs r1, #1
	bl FUN_080213A4
	ldr r0, _08024218 @ => 0x000002AB
	strh r0, [r5]
_08024206:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802420C: .4byte gUnk_03004124
_08024210: .4byte gUnk_03004230
_08024214: .4byte 0xFFFFFEFF
_08024218: .4byte 0x000002AB

	thumb_func_start FUN_0802421C
FUN_0802421C: @ 0x0802421C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	subs r0, #1
	cmp r0, #0x31
	bls _08024230
	b _080243AA
_08024230:
	lsls r0, r0, #2
	ldr r1, _0802423C @ =_08024240
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802423C: .4byte _08024240
_08024240: @ jump table
	.4byte _08024382 @ case 0
	.4byte _08024338 @ case 1
	.4byte _08024398 @ case 2
	.4byte _0802435C @ case 3
	.4byte _080243AA @ case 4
	.4byte _080243AA @ case 5
	.4byte _080243AA @ case 6
	.4byte _080243AA @ case 7
	.4byte _080243AA @ case 8
	.4byte _080243AA @ case 9
	.4byte _080243AA @ case 10
	.4byte _080243AA @ case 11
	.4byte _080243AA @ case 12
	.4byte _080243AA @ case 13
	.4byte _080243AA @ case 14
	.4byte _080243AA @ case 15
	.4byte _080243AA @ case 16
	.4byte _080243AA @ case 17
	.4byte _080243AA @ case 18
	.4byte _080243AA @ case 19
	.4byte _080243AA @ case 20
	.4byte _080243AA @ case 21
	.4byte _080243AA @ case 22
	.4byte _080243AA @ case 23
	.4byte _080243AA @ case 24
	.4byte _080243AA @ case 25
	.4byte _080243AA @ case 26
	.4byte _080243AA @ case 27
	.4byte _080243AA @ case 28
	.4byte _080243AA @ case 29
	.4byte _080243AA @ case 30
	.4byte _080243AA @ case 31
	.4byte _080243AA @ case 32
	.4byte _080243AA @ case 33
	.4byte _080243AA @ case 34
	.4byte _080243AA @ case 35
	.4byte _080243AA @ case 36
	.4byte _080243AA @ case 37
	.4byte _080243AA @ case 38
	.4byte _080243AA @ case 39
	.4byte _080243AA @ case 40
	.4byte _080243AA @ case 41
	.4byte _080243AA @ case 42
	.4byte _080243AA @ case 43
	.4byte _080243AA @ case 44
	.4byte _080243AA @ case 45
	.4byte _080243AA @ case 46
	.4byte _080243AA @ case 47
	.4byte _080243AA @ case 48
	.4byte _08024308 @ case 49
_08024308:
	ldr r0, [r4, #0x18]
	ldr r2, _08024334 @ => 0xFFFB0000
	adds r1, r0, r2
	movs r2, #0xef
	lsls r2, r2, #0x10
	cmp r1, r2
	bgt _0802436A
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x5a
	strh r0, [r1]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r2, #0
	bl FUN_08001728
	adds r0, r4, #0
	movs r1, #2
	bl FUN_08001FB0
	b _080243AA
	.align 2, 0
_08024334: .4byte 0xFFFB0000
_08024338:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08024358 @ => 0xFFFF0000
	cmp r1, r0
	bne _080243AA
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08001FB0
	b _080243AA
	.align 2, 0
_08024358: .4byte 0xFFFF0000
_0802435C:
	ldr r1, [r4, #0x18]
	ldr r0, _08024374 @ => 0x0117FFFF
	cmp r1, r0
	bgt _08024378
	movs r2, #0xa0
	lsls r2, r2, #0xb
	adds r1, r1, r2
_0802436A:
	adds r0, r4, #0
	movs r2, #0
	bl FUN_08001728
	b _080243AA
	.align 2, 0
_08024374: .4byte 0x0117FFFF
_08024378:
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08001FB0
	b _080243AA
_08024382:
	ldr r0, [r4, #0xc]
	movs r1, #0x82
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r1, _08024394 @ => 0x03004230
	movs r0, #0
	str r0, [r1, #0x18]
	b _080243AA
	.align 2, 0
_08024394: .4byte gUnk_03004230
_08024398:
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x5a
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0x32
	bl FUN_08001FB0
_080243AA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_080243B0
FUN_080243B0: @ 0x080243B0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _080243F0 @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080243EA
	movs r0, #0xbe
	bl FUN_0804DE0C
	ldr r0, _080243F4 @ => 0x03005C60
	movs r4, #0
	strh r5, [r0]
	movs r0, #3
	movs r1, #1
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _080243F8 @ => 0x03005C90
	strb r4, [r0, #4]
	movs r0, #0x78
	movs r1, #0x48
	bl FUN_08041C28
	movs r0, #2
	bl FUN_0802CEC4
_080243EA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080243F0: .4byte gUnk_03004374
_080243F4: .4byte gChoiceIDs
_080243F8: .4byte gUnk_03005C90

	thumb_func_start FUN_080243FC
FUN_080243FC: @ 0x080243FC
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _08024438 @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08024430
	ldr r0, _0802443C @ => 0x03005C60
	movs r4, #0
	strh r2, [r0]
	movs r0, #3
	movs r1, #1
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _08024440 @ => 0x03005C90
	strb r4, [r0, #4]
	movs r0, #0x78
	movs r1, #0x48
	bl FUN_08041C28
	movs r0, #2
	bl FUN_0802CEC4
_08024430:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024438: .4byte gUnk_03004374
_0802443C: .4byte gChoiceIDs
_08024440: .4byte gUnk_03005C90

	thumb_func_start FUN_08024444
FUN_08024444: @ 0x08024444
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	ldr r0, _08024494 @ => 0x00000297
	movs r1, #1
	bl FUN_080213A4
	ldr r6, _08024498 @ => 0x03004124
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #1
	bl FUN_0801BDF8
	mov r0, r8
	strh r0, [r6]
	movs r2, #0
	ldr r0, _0802449C @ => 0x03004230
	movs r3, #1
	adds r4, r0, #0
	adds r4, #0x1c
_0802447C:
	ldm r4!, {r1}
	ldr r0, [r1, #0xc]
	orrs r0, r3
	str r0, [r1, #0xc]
	adds r2, #1
	cmp r2, #4
	bls _0802447C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08024494: .4byte 0x00000297
_08024498: .4byte gUnk_03004124
_0802449C: .4byte gUnk_03004230

	thumb_func_start FUN_080244A0
FUN_080244A0: @ 0x080244A0
	push {r4, lr}
	ldr r0, _080244CC @ => 0x00000297
	movs r1, #0
	bl FUN_080213A4
	movs r2, #0
	ldr r0, _080244D0 @ => 0x03004230
	movs r3, #2
	rsbs r3, r3, #0
	adds r4, r0, #0
	adds r4, #0x1c
_080244B6:
	ldm r4!, {r1}
	ldr r0, [r1, #0xc]
	ands r0, r3
	str r0, [r1, #0xc]
	adds r2, #1
	cmp r2, #4
	bls _080244B6
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080244CC: .4byte 0x00000297
_080244D0: .4byte gUnk_03004230

	thumb_func_start FUN_080244D4
FUN_080244D4: @ 0x080244D4
	push {r4, r5, lr}
	ldr r5, _08024510 @ => 0x03003E28
	adds r0, r5, #0
	bl FUN_08038A80
	adds r4, r0, #0
	bl FUN_08024514
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r1, #0x73
	muls r0, r1, r0
	muls r4, r0, r4
	movs r0, #7
	ldrsb r0, [r5, r0]
	muls r0, r1, r0
	movs r1, #0x64
	bl __divsi3
	adds r1, r0, #0
	adds r0, r4, #0
	bl __divsi3
	movs r1, #0x64
	bl __divsi3
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08024510: .4byte gUnk_03003E28

	thumb_func_start FUN_08024514
FUN_08024514: @ 0x08024514
	push {lr}
	ldr r0, _08024544 @ => 0x03003E28
	bl FUN_08038A2C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x73
	muls r0, r1, r0
	movs r1, #0x64
	bl __divsi3
	movs r2, #0
	cmp r0, #3
	ble _0802453A
	movs r1, #3
_08024532:
	adds r1, #8
	adds r2, #1
	cmp r1, r0
	blt _08024532
_0802453A:
	lsls r0, r2, #3
	adds r0, #3
	pop {r1}
	bx r1
	.align 2, 0
_08024544: .4byte gUnk_03003E28

	thumb_func_start FUN_08024548
FUN_08024548: @ 0x08024548
	ldr r1, [r0, #0xc]
	movs r2, #2
	orrs r1, r2
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start FUN_08024554
FUN_08024554: @ 0x08024554
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	mov sb, r1
	str r2, [sp]
	movs r0, #0
	mov ip, r0
	mov r8, r0
	ldr r0, _08024578 @ => gStringInternal_LocStartOffs
	ldr r3, [r0]
	cmp r3, #0
	bne _08024580
	movs r0, #1
	b _08024634
	.align 2, 0
_08024578: .4byte gStringInternal_LocStartOffs
_0802457C:
	movs r0, #2
	b _08024634
_08024580:
	ldr r0, _080245B8 @ => gStringInternal_LocStringIDStart
	ldr r1, [r0]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r2, r3, r0
	movs r6, #0
	movs r4, #0
	ldrb r7, [r2]
	adds r2, #1
	ldr r1, _080245BC @ => 0xFFFFFC00
	mov sl, r1
_08024598:
	movs r3, #0x80
	lsls r3, r3, #1
	adds r5, r6, #1
_0802459E:
	adds r0, r7, #0
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080245C4
	ldr r0, _080245C0 @ => gStringInternal_LocCharTable
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	add r0, sl
	ldrh r3, [r0, #2]
	b _080245D0
	.align 2, 0
_080245B8: .4byte gStringInternal_LocStringIDStart
_080245BC: .4byte 0xFFFFFC00
_080245C0: .4byte gStringInternal_LocCharTable
_080245C4:
	ldr r0, _08024600 @ => gStringInternal_LocCharTable
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	add r0, sl
	ldrh r3, [r0]
_080245D0:
	adds r4, #1
	cmp r4, #8
	bne _080245DC
	movs r4, #0
	ldrb r7, [r2]
	adds r2, #1
_080245DC:
	cmp r3, #0xff
	bhi _0802459E
	mov r1, sb
	adds r0, r1, r6
	strb r3, [r0]
	adds r6, r5, #0
	lsls r0, r3, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xef
	bls _08024604
	mov r3, r8
	cmp r3, #0
	bne _0802460A
	lsls r1, r1, #8
	mov ip, r1
	movs r0, #1
	mov r8, r0
	b _0802461A
	.align 2, 0
_08024600: .4byte gStringInternal_LocCharTable
_08024604:
	mov r3, r8
	cmp r3, #0
	beq _08024618
_0802460A:
	lsrs r0, r0, #0x18
	mov r1, ip
	orrs r1, r0
	mov ip, r1
	movs r3, #0
	mov r8, r3
	b _0802461A
_08024618:
	mov ip, r1
_0802461A:
	mov r1, sb
	adds r0, r6, r1
	subs r0, #1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802462C
	ldr r3, [sp]
	cmp r6, r3
	beq _0802457C
_0802462C:
	mov r0, ip
	cmp r0, #0
	bne _08024598
	movs r0, #0
_08024634:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_08024644
FUN_08024644: @ 0x08024644
	ldr r1, _0802465C @ => gStringInternal_LocStartOffs
	str r0, [r1]
	adds r2, r0, #0
	ldm r2!, {r3}
	ldr r1, _08024660 @ => gStringInternal_LocCharTable
	str r2, [r1]
	ldr r1, _08024664 @ => gStringInternal_LocStringIDStart
	adds r0, r0, r3
	str r0, [r1]
	movs r0, #0
	bx lr
	.align 2, 0
_0802465C: .4byte gStringInternal_LocStartOffs
_08024660: .4byte gStringInternal_LocCharTable
_08024664: .4byte gStringInternal_LocStringIDStart

	thumb_func_start FUN_08024668
FUN_08024668: @ 0x08024668
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	mov r8, r2
	movs r4, #0
	movs r7, #0
	ldrh r0, [r0]
	lsls r3, r0, #2
	movs r0, #4
	add ip, r0
	movs r6, #0
	movs r2, #0x80
	lsls r2, r2, #1
	mov sb, r2
	mov r0, ip
	adds r5, r0, r3
	mov sl, r1
	mov r2, r8
	asrs r2, r2, #1
	mov r8, r2
	cmp r4, r8
	bge _080246EE
	mov r2, sl
	mov r7, r8
_0802469E:
	movs r4, #0
_080246A0:
	subs r6, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	bne _080246B2
	ldrh r3, [r5]
	adds r5, #2
	movs r6, #0xf
	b _080246B4
_080246B2:
	asrs r3, r3, #1
_080246B4:
	movs r1, #1
	ands r1, r3
	lsls r1, r1, #1
	lsls r0, r4, #2
	add r0, ip
	adds r0, r0, r1
	ldrh r4, [r0]
	cmp r4, #0xff
	ble _080246D0
	ldr r0, _080246CC @ => 0xFFFFFF00
	adds r4, r4, r0
	b _080246A0
	.align 2, 0
_080246CC: .4byte 0xFFFFFF00
_080246D0:
	movs r1, #0x80
	lsls r1, r1, #1
	cmp sb, r1
	beq _080246E6
	lsls r0, r4, #8
	add r0, sb
	strh r0, [r2]
	adds r2, #2
	subs r7, #1
	mov sb, r1
	b _080246E8
_080246E6:
	mov sb, r4
_080246E8:
	cmp r7, #0
	bne _0802469E
	mov r7, r8
_080246EE:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp sb, r0
	beq _080246FC
	lsls r0, r7, #1
	add r0, sl
	strb r4, [r0]
_080246FC:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0802470C
FUN_0802470C: @ 0x0802470C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r1
	adds r6, r2, #0
	ldr r1, _08024774 @ => 0xFFFFFC02
	adds r1, r1, r3
	mov r8, r1
	movs r7, #0x80
	lsls r7, r7, #1
	mov ip, r7
	asrs r6, r6, #1
	movs r1, #0xf
	adds r2, r0, #0
	ands r2, r1
	subs r4, r1, r2
	lsrs r0, r0, #3
	subs r1, #0x11
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x14
	adds r5, r0, r1
	ldrh r3, [r5]
	ldr r7, _08024778 @ => 0x08000002
	adds r5, r0, r7
	lsrs r3, r2
	cmp r6, #0
	ble _080247A2
	movs r0, #1
	mov sb, r0
	movs r2, #1
	rsbs r2, r2, #0
_08024750:
	movs r0, #0x80
	lsls r0, r0, #1
_08024754:
	adds r1, r3, #0
	mov r7, sb
	ands r1, r7
	lsls r1, r1, #1
	lsls r0, r0, #2
	add r0, r8
	adds r1, r1, r0
	ldrh r0, [r1]
	subs r4, #1
	cmp r4, r2
	bne _0802477C
	ldrh r3, [r5]
	adds r5, #2
	movs r4, #0xf
	b _0802477E
	.align 2, 0
_08024774: .4byte 0xFFFFFC02
_08024778: .4byte 0x08000002 @ Not sure why they use that.
_0802477C:
	lsrs r3, r3, #1
_0802477E:
	cmp r0, #0xff
	bhi _08024754
	movs r1, #0x80
	lsls r1, r1, #1
	cmp ip, r1
	beq _0802479C
	lsls r0, r0, #8
	add r0, ip
	mov r7, sl
	strh r0, [r7]
	movs r0, #2
	add sl, r0
	subs r6, #1
	mov ip, r1
	b _0802479E
_0802479C:
	mov ip, r0
_0802479E:
	cmp r6, #0
	bgt _08024750
_080247A2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_080247B0
FUN_080247B0: @ 0x080247B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	mov sb, r1
	mov r8, r2
	movs r1, #0xf8
	lsls r1, r1, #0x18
	adds r0, r4, r1
	lsls r0, r0, #3
	str r0, [sp]
	mov sl, r0
	movs r2, #0
	movs r5, #0
	movs r1, #0x20
	ldr r7, _08024840 @ => 0xFFFFFC00
	add sb, r7
	cmp r3, #0
	beq _08024830
	movs r6, #0
_080247DE:
	subs r3, #1
	str r3, [sp, #4]
	movs r0, #4
	add r0, r8
	mov ip, r0
_080247E8:
	movs r0, #0x80
	lsls r0, r0, #1
	subs r3, r1, #1
_080247EE:
	cmp r2, #0
	bne _080247FA
	adds r6, #0x10
	ldrh r5, [r4]
	adds r4, #2
	movs r2, #0x10
_080247FA:
	adds r1, r5, #0
	movs r7, #1
	ands r1, r7
	lsls r1, r1, #1
	lsls r0, r0, #2
	add r0, sb
	adds r1, r1, r0
	ldrh r0, [r1]
	lsrs r5, r5, #1
	subs r2, #1
	cmp r0, #0xff
	bhi _080247EE
	adds r1, r3, #0
	cmp r1, #0
	bne _080247E8
	movs r1, #0x20
	ldr r3, [sp, #4]
	mov r0, sl
	mov r7, r8
	str r0, [r7]
	mov r8, ip
	subs r0, r6, r2
	ldr r7, [sp]
	adds r0, r0, r7
	mov sl, r0
	cmp r3, #0
	bne _080247DE
_08024830:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024840: .4byte 0xFFFFFC00

	thumb_func_start FUN_08024844
FUN_08024844: @ 0x08024844
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov ip, r1
	adds r6, r2, #0
	adds r7, r3, #0
	movs r1, #0x80
	lsls r1, r1, #1
	mov r8, r1
	asrs r6, r6, #1
	movs r1, #0xf
	adds r2, r0, #0
	ands r2, r1
	subs r4, r1, r2
	lsrs r0, r0, #3
	subs r1, #0x11
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x14
	adds r5, r0, r1
	ldrh r3, [r5]
	adds r1, #2
	adds r5, r0, r1
	lsrs r3, r2
	cmp r6, #0
	ble _080248F0
	str r7, [sp, #8]
	adds r2, r7, #0
	adds r2, #0x12
	str r2, [sp]
	adds r7, #0x24
	str r7, [sp, #4]
	movs r0, #1
	mov sl, r0
	movs r1, #1
	rsbs r1, r1, #0
	mov sb, r1
_08024894:
	movs r2, #0
	movs r1, #0
_08024898:
	lsls r0, r1, #1
	adds r1, r3, #0
	mov r7, sl
	ands r1, r7
	adds r1, r0, r1
	ldr r7, [sp, #8]
	adds r0, r7, r2
	ldrb r0, [r0]
	subs r4, #1
	cmp r4, sb
	bne _080248B6
	ldrh r3, [r5]
	adds r5, #2
	movs r4, #0xf
	b _080248B8
_080248B6:
	lsrs r3, r3, #1
_080248B8:
	cmp r1, r0
	blt _080248C2
	subs r1, r1, r0
	adds r2, #1
	b _08024898
_080248C2:
	ldr r7, [sp]
	adds r0, r7, r2
	ldrb r0, [r0]
	adds r0, r0, r1
	ldr r1, [sp, #4]
	adds r0, r1, r0
	ldrb r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r8, r1
	beq _080248EA
	lsls r0, r0, #8
	add r0, r8
	mov r2, ip
	strh r0, [r2]
	movs r7, #2
	add ip, r7
	subs r6, #1
	mov r8, r1
	b _080248EC
_080248EA:
	mov r8, r0
_080248EC:
	cmp r6, #0
	bgt _08024894
_080248F0:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
