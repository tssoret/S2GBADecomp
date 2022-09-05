.include "asm/constants.s"
.include "asm/macros.s"
.include "data/lists/sounds.inc"

.syntax unified

	thumb_func_start FUN_08013E40
FUN_08013E40: @ 0x08013E40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r2, r0, #0
	adds r3, r1, #0
	movs r6, #0
	ldrb r0, [r3, #5]
	ldrb r4, [r2, #5]
	adds r1, r0, r4
	strb r1, [r2, #5]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08013E86
	movs r4, #1
_08013E62:
	ldrb r1, [r2, #5]
	adds r1, #0x1e
	strb r1, [r2, #5]
	ldrb r0, [r2, #4]
	subs r0, #1
	strb r0, [r2, #4]
	orrs r6, r4
	lsls r1, r1, #0x18
	cmp r1, #0
	blt _08013E62
	ldrb r7, [r3, #4]
	ldrb r0, [r3, #3]
	mov r8, r0
	ldrb r1, [r3, #2]
	mov sb, r1
	ldrh r3, [r3]
	mov sl, r3
	b _08013EBA
_08013E86:
	ldrb r7, [r3, #4]
	ldrb r4, [r3, #3]
	mov r8, r4
	ldrb r4, [r3, #2]
	mov sb, r4
	ldrh r3, [r3]
	mov sl, r3
	cmp r0, #0x1d
	ble _08013EBA
	movs r0, #1
	mov ip, r0
	adds r5, r1, #0
	ldrb r4, [r2, #4]
_08013EA0:
	adds r1, r5, #0
	subs r1, #0x1e
	adds r5, r1, #0
	adds r3, r4, #1
	adds r4, r3, #0
	mov r0, ip
	orrs r6, r0
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1d
	bgt _08013EA0
	strb r3, [r2, #4]
	strb r1, [r2, #5]
_08013EBA:
	cmp r7, #0
	beq _08013EC8
	ldrb r1, [r2, #4]
	adds r0, r7, r1
	strb r0, [r2, #4]
	movs r0, #1
	orrs r6, r0
_08013EC8:
	movs r0, #4
	ldrsb r0, [r2, r0]
	adds r3, r0, #0
	cmp r0, #0
	bge _08013EEC
	movs r4, #2
_08013ED4:
	adds r1, r3, #0
	adds r1, #0x3c
	strb r1, [r2, #4]
	ldrb r0, [r2, #3]
	subs r0, #1
	strb r0, [r2, #3]
	orrs r6, r4
	adds r3, r1, #0
	lsls r1, r1, #0x18
	cmp r1, #0
	blt _08013ED4
	b _08013F0E
_08013EEC:
	cmp r0, #0x3b
	ble _08013F0E
	movs r7, #2
	adds r5, r3, #0
	ldrb r4, [r2, #3]
_08013EF6:
	adds r3, r5, #0
	subs r3, #0x3c
	adds r5, r3, #0
	adds r1, r4, #1
	adds r4, r1, #0
	orrs r6, r7
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x3b
	bgt _08013EF6
	strb r1, [r2, #3]
	strb r3, [r2, #4]
_08013F0E:
	mov r4, r8
	cmp r4, #0
	beq _08013F1E
	ldrb r0, [r2, #3]
	add r0, r8
	strb r0, [r2, #3]
	movs r0, #2
	orrs r6, r0
_08013F1E:
	movs r0, #3
	ldrsb r0, [r2, r0]
	adds r3, r0, #0
	cmp r0, #0
	bge _08013F42
	movs r4, #4
_08013F2A:
	adds r1, r3, #0
	adds r1, #0x3c
	strb r1, [r2, #3]
	ldrb r0, [r2, #2]
	subs r0, #1
	strb r0, [r2, #2]
	orrs r6, r4
	adds r3, r1, #0
	lsls r1, r1, #0x18
	cmp r1, #0
	blt _08013F2A
	b _08013F64
_08013F42:
	cmp r0, #0x3b
	ble _08013F64
	movs r7, #4
	adds r5, r3, #0
	ldrb r4, [r2, #2]
_08013F4C:
	adds r3, r5, #0
	subs r3, #0x3c
	adds r5, r3, #0
	adds r1, r4, #1
	adds r4, r1, #0
	orrs r6, r7
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x3b
	bgt _08013F4C
	strb r1, [r2, #2]
	strb r3, [r2, #3]
_08013F64:
	mov r0, sb
	cmp r0, #0
	beq _08013F74
	ldrb r0, [r2, #2]
	add r0, sb
	strb r0, [r2, #2]
	movs r0, #4
	orrs r6, r0
_08013F74:
	movs r0, #2
	ldrsb r0, [r2, r0]
	adds r3, r0, #0
	cmp r0, #0
	bge _08013F98
	movs r4, #8
_08013F80:
	adds r1, r3, #0
	adds r1, #0x18
	strb r1, [r2, #2]
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	orrs r6, r4
	adds r3, r1, #0
	lsls r1, r1, #0x18
	cmp r1, #0
	blt _08013F80
	b _08013FBA
_08013F98:
	cmp r0, #0x17
	ble _08013FBA
	movs r7, #8
	adds r5, r3, #0
	ldrh r4, [r2]
_08013FA2:
	adds r3, r5, #0
	subs r3, #0x18
	adds r5, r3, #0
	adds r1, r4, #1
	adds r4, r1, #0
	orrs r6, r7
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x17
	bgt _08013FA2
	strh r1, [r2]
	strb r3, [r2, #2]
_08013FBA:
	mov r1, sl
	cmp r1, #0
	beq _08013FCA
	ldrh r0, [r2]
	add r0, sl
	strh r0, [r2]
	movs r0, #8
	orrs r6, r0
_08013FCA:
	adds r0, r6, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08013FDC
FUN_08013FDC: @ 0x08013FDC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r5, r1, #0
	mov sb, r2
	ldr r0, _08014000 @ => 0x03005E20
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _08014008
	ldr r0, _08014004 @ => 0x00000766
	cmp sb, r0
	bne _08014008
	adds r0, #2
	b _0801400A
	.align 2, 0
_08014000: .4byte gUnk_03005E20
_08014004: .4byte 0x00000766
_08014008:
	mov r0, sb
_0801400A:
	bl FUN_08050820
	adds r6, r0, #0
	mov r8, r6
	movs r0, #0
	mov sl, r0
	ldrb r1, [r6]
	b _0801401E
_0801401A:
	movs r2, #1
	add r8, r2
_0801401E:
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #0
	beq _0801403E
	cmp r0, #0x40
	bne _0801401A
	movs r0, #1
	add r8, r0
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #0x61
	beq _0801403A
	cmp r0, #0x41
	bne _0801401A
_0801403A:
	movs r0, #1
	mov sl, r0
_0801403E:
	mov r8, r5
	adds r0, r1, #0
	cmp r0, #0
	bne _08014048
	b _08014280
_08014048:
	cmp r0, #0x40
	beq _0801404E
	b _08014272
_0801404E:
	adds r6, #1
	ldrb r0, [r6]
	subs r0, #0x41
	cmp r0, #0x32
	bls _0801405A
	b _08014260
_0801405A:
	lsls r0, r0, #2
	ldr r1, _08014064 @ =_08014068
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08014064: .4byte _08014068
_08014068: @ jump table
	.4byte _08014192 @ case 0
	.4byte _08014260 @ case 1
	.4byte _08014260 @ case 2
	.4byte _08014134 @ case 3
	.4byte _08014260 @ case 4
	.4byte _08014260 @ case 5
	.4byte _08014260 @ case 6
	.4byte _080141A2 @ case 7
	.4byte _08014260 @ case 8
	.4byte _08014260 @ case 9
	.4byte _08014260 @ case 10
	.4byte _08014234 @ case 11
	.4byte _08014204 @ case 12
	.4byte _08014260 @ case 13
	.4byte _08014260 @ case 14
	.4byte _08014260 @ case 15
	.4byte _08014260 @ case 16
	.4byte _08014260 @ case 17
	.4byte _0801421C @ case 18
	.4byte _08014260 @ case 19
	.4byte _08014260 @ case 20
	.4byte _08014260 @ case 21
	.4byte _08014260 @ case 22
	.4byte _08014260 @ case 23
	.4byte _08014260 @ case 24
	.4byte _08014260 @ case 25
	.4byte _08014260 @ case 26
	.4byte _08014260 @ case 27
	.4byte _08014260 @ case 28
	.4byte _08014260 @ case 29
	.4byte _08014260 @ case 30
	.4byte _08014260 @ case 31
	.4byte _08014182 @ case 32
	.4byte _08014260 @ case 33
	.4byte _08014260 @ case 34
	.4byte _08014260 @ case 35
	.4byte _08014260 @ case 36
	.4byte _08014260 @ case 37
	.4byte _08014260 @ case 38
	.4byte _080141A2 @ case 39
	.4byte _08014260 @ case 40
	.4byte _08014260 @ case 41
	.4byte _08014260 @ case 42
	.4byte _08014234 @ case 43
	.4byte _08014204 @ case 44
	.4byte _08014260 @ case 45
	.4byte _08014260 @ case 46
	.4byte _08014260 @ case 47
	.4byte _08014260 @ case 48
	.4byte _08014260 @ case 49
	.4byte _0801421C @ case 50
_08014134:
	movs r1, #0
	ldrsh r0, [r7, r1]
	cmp r0, #0x63
	ble _0801414E
	movs r1, #0x64
	bl SVC_Div
	movs r1, #0xa
	bl SVC_DivRem
	adds r0, #0x30
	strb r0, [r5]
	adds r5, #1
_0801414E:
	movs r1, #0
	ldrsh r0, [r7, r1]
	cmp r0, #9
	ble _08014168
	movs r1, #0xa
	bl SVC_Div
	movs r1, #0xa
	bl SVC_DivRem
	adds r0, #0x30
	strb r0, [r5]
	adds r5, #1
_08014168:
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r1, #0xa
	bl SVC_DivRem
	adds r0, #0x30
	strb r0, [r5]
	adds r5, #1
	ldrb r0, [r6, #1]
	cmp r0, #0x44
	bne _08014260
	adds r6, #1
	b _08014260
_08014182:
	movs r0, #2
	ldrsb r0, [r7, r0]
	cmp r0, #0xb
	bgt _0801418E
	movs r0, #0x61
	b _0801425C
_0801418E:
	movs r0, #0x70
	b _0801425C
_08014192:
	movs r0, #2
	ldrsb r0, [r7, r0]
	cmp r0, #0xb
	bgt _0801419E
	movs r0, #0x41
	b _0801425C
_0801419E:
	movs r0, #0x50
	b _0801425C
_080141A2:
	mov r2, sl
	cmp r2, #0
	beq _080141E0
	movs r0, #2
	ldrsb r0, [r7, r0]
	cmp r0, #0xc
	ble _080141C6
	cmp r0, #0x15
	ble _080141B8
	movs r0, #0x31
	b _080141BA
_080141B8:
	movs r0, #0x20
_080141BA:
	strb r0, [r5]
	adds r5, #1
	movs r0, #2
	ldrsb r0, [r7, r0]
	subs r0, #0xc
	b _080141F4
_080141C6:
	cmp r0, #0
	ble _080141D6
	cmp r0, #9
	ble _080141D2
	movs r0, #0x31
	b _080141EC
_080141D2:
	movs r0, #0x20
	b _080141EC
_080141D6:
	movs r0, #0x31
	strb r0, [r5]
	adds r5, #1
	movs r0, #0x32
	b _080141FC
_080141E0:
	movs r0, #2
	ldrsb r0, [r7, r0]
	movs r1, #0xa
	bl SVC_Div
	adds r0, #0x30
_080141EC:
	strb r0, [r5]
	adds r5, #1
	movs r0, #2
	ldrsb r0, [r7, r0]
_080141F4:
	movs r1, #0xa
	bl SVC_DivRem
	adds r0, #0x30
_080141FC:
	strb r0, [r5]
	adds r5, #1
	adds r6, #1
	b _08014260
_08014204:
	movs r0, #3
	ldrsb r0, [r7, r0]
	movs r1, #0xa
	bl SVC_Div
	adds r0, #0x30
	strb r0, [r5]
	adds r5, #1
	adds r6, #1
	movs r0, #3
	ldrsb r0, [r7, r0]
	b _08014254
_0801421C:
	movs r0, #4
	ldrsb r0, [r7, r0]
	movs r1, #0xa
	bl SVC_Div
	adds r0, #0x30
	strb r0, [r5]
	adds r5, #1
	adds r6, #1
	movs r0, #4
	ldrsb r0, [r7, r0]
	b _08014254
_08014234:
	movs r1, #5
	ldrsb r1, [r7, r1]
	lsls r0, r1, #5
	adds r0, r0, r1
	movs r1, #0xa
	bl __divsi3
	adds r4, r0, #0
	movs r1, #0xa
	bl SVC_Div
	adds r0, #0x30
	strb r0, [r5]
	adds r5, #1
	adds r6, #1
	adds r0, r4, #0
_08014254:
	movs r1, #0xa
	bl SVC_DivRem
	adds r0, #0x30
_0801425C:
	strb r0, [r5]
	adds r5, #1
_08014260:
	ldr r0, _08014294 @ => 0x03005E20
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	bne _08014276
	movs r0, #0xed
	lsls r0, r0, #3
	cmp sb, r0
	bne _08014276
	ldrb r0, [r6]
_08014272:
	strb r0, [r5]
	adds r5, #1
_08014276:
	adds r6, #1
	ldrb r0, [r6]
	cmp r0, #0
	beq _08014280
	b _08014048
_08014280:
	movs r0, #0
	strb r0, [r5]
	mov r0, r8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08014294: .4byte gUnk_03005E20

	thumb_func_start FUN_08014298
FUN_08014298: @ 0x08014298
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _080142B6
	movs r0, #0
	ldrsh r3, [r4, r0]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r3, r0
	beq _080142B6
_080142B0:
	cmp r3, r0
	blt _0801430C
	b _08014310
_080142B6:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _080142CA
	movs r3, #2
	ldrsb r3, [r4, r3]
	movs r0, #2
	ldrsb r0, [r1, r0]
	cmp r3, r0
	bne _080142B0
_080142CA:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080142DE
	movs r3, #3
	ldrsb r3, [r4, r3]
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r3, r0
	bne _080142B0
_080142DE:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080142F2
	movs r3, #4
	ldrsb r3, [r4, r3]
	movs r0, #4
	ldrsb r0, [r1, r0]
	cmp r3, r0
	bne _080142B0
_080142F2:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08014314
	movs r0, #5
	ldrsb r0, [r4, r0]
	ldrb r1, [r1, #5]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	beq _08014314
	cmp r0, r1
	bge _08014310
_0801430C:
	movs r0, #1
	b _08014316
_08014310:
	movs r0, #2
	b _08014316
_08014314:
	movs r0, #0
_08014316:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start FUN_0801431C
FUN_0801431C: @ 0x0801431C
	push {lr}
	movs r1, #0
	movs r2, #8
	bl FUN_0802CB40
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0801432C
FUN_0801432C: @ 0x0801432C
	ldr r2, [r1, #4]
	ldr r1, [r1]
	str r1, [r0]
	str r2, [r0, #4]
	bx lr
	.align 2, 0

	thumb_func_start FUN_08014338
FUN_08014338: @ 0x08014338
	push {r4, lr}
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r3, [r2]
	str r4, [r2, #4]
	adds r0, r2, #0
	bl FUN_08013E40
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08014350
FUN_08014350: @ 0x08014350
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	movs r5, #1
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0801436E
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r6, #0
	ldrsh r0, [r4, r6]
	cmp r1, r0
	beq _0801436E
	movs r5, #0
_0801436E:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08014384
	movs r1, #2
	ldrsb r1, [r3, r1]
	movs r0, #2
	ldrsb r0, [r4, r0]
	cmp r1, r0
	beq _08014384
	movs r5, #0
_08014384:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0801439A
	movs r1, #3
	ldrsb r1, [r3, r1]
	movs r0, #3
	ldrsb r0, [r4, r0]
	cmp r1, r0
	beq _0801439A
	movs r5, #0
_0801439A:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080143B0
	movs r1, #4
	ldrsb r1, [r3, r1]
	movs r0, #4
	ldrsb r0, [r4, r0]
	cmp r1, r0
	beq _080143B0
	movs r5, #0
_080143B0:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080143C6
	movs r1, #5
	ldrsb r1, [r3, r1]
	movs r0, #5
	ldrsb r0, [r4, r0]
	cmp r1, r0
	beq _080143C6
	movs r5, #0
_080143C6:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_080143D0
FUN_080143D0: @ 0x080143D0
	push {lr}
	movs r1, #2
	ldrsb r1, [r0, r1]
	movs r0, #3
	cmp r1, #5
	ble _080143F0
	movs r0, #0
	cmp r1, #9
	ble _080143F0
	movs r0, #1
	cmp r1, #0x10
	ble _080143F0
	movs r0, #3
	cmp r1, #0x13
	bgt _080143F0
	movs r0, #2
_080143F0:
	pop {r1}
	bx r1

	thumb_func_start FUN_080143F4
FUN_080143F4: @ 0x080143F4
	push {lr}
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #7
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1

	thumb_func_start FUN_08014408
FUN_08014408: @ 0x08014408
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	mov r8, r1
	adds r5, r2, #0
	adds r4, r3, #0
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl FUN_08014298
	adds r7, r0, #0
	adds r0, r5, #0
	mov r1, r8
	adds r2, r4, #0
	bl FUN_08014298
	adds r5, r0, #0
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl FUN_08014298
	cmp r0, #1
	bne _08014444
	cmp r7, #1
	beq _08014450
	cmp r5, #2
	beq _08014450
_08014444:
	cmp r0, #2
	bne _08014454
	cmp r7, #1
	bne _08014454
	cmp r5, #2
	bne _08014454
_08014450:
	movs r0, #0
	b _08014456
_08014454:
	movs r0, #1
_08014456:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_08014460
FUN_08014460: @ 0x08014460
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08009B04
	adds r7, r0, #0
	bl FUN_080012FC
	adds r5, r0, #0
	ldr r0, [r7]
	strh r0, [r5, #8]
	ldrb r0, [r7, #8]
	strh r0, [r5, #0xa]
	ldrb r0, [r7, #9]
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r6, r5, r1
	strb r0, [r6]
	ldrh r0, [r5, #0xa]
	cmp r0, #0x63
	bne _080144A8
	ldr r0, _080144A4 @ => 0x03003DF0
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r0, r0, r2
	ldrh r4, [r0]
	ldrb r6, [r6]
	asrs r4, r6
	movs r0, #1
	ands r4, r0
	b _080144EE
	.align 2, 0
_080144A4: .4byte gUnk_03003DF0
_080144A8:
	ldrb r0, [r6]
	bl FUN_0801489C
	cmp r0, #0
	beq _080144C0
	ldrb r0, [r6]
	bl FUN_080148CC
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	b _080144EE
_080144C0:
	ldr r1, _080144DC @ => 0x0805B1D8
	ldrh r0, [r5, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl FUN_080425E4
	cmp r0, #1
	bne _080144E0
	ldrb r0, [r6]
	bl FUN_0801492C
	movs r4, #1
	b _080144E2
	.align 2, 0
_080144DC: .4byte ROMREF_0805B1D8
_080144E0:
	movs r4, #0
_080144E2:
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	bl FUN_080148FC
_080144EE:
	cmp r4, #1
	bne _080145A4
	movs r2, #4
	ldrsh r1, [r7, r2]
	lsls r1, r1, #0x10
	movs r0, #6
	ldrsh r2, [r7, r0]
	lsls r2, r2, #0x10
	adds r0, r5, #0
	bl FUN_08001728
	ldr r0, _08014548 @ => 0x000E0415
	str r0, [r5, #0xc]
	ldr r0, _0801454C @ => FUN_0801463C
	str r0, [r5, #0x50]
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08001FB0
	ldr r1, _08014550 @ => 0x0000011D
	adds r0, r5, r1
	movs r1, #0
	strb r4, [r0]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	ldrh r0, [r5, #0xa]
	cmp r0, #0x63
	bne _0801455C
	ldr r1, _08014554 @ => 0x0805B21C
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r0, _08014558 @ => 0x09FB6244
	ldr r1, [r0]
	adds r0, r5, #0
	bl FUN_08048E24
	adds r1, r0, #0
	adds r0, r5, #0
	bl FUN_0803EF14
	b _08014582
	.align 2, 0
_08014548: .4byte 0x000E0415
_0801454C: .4byte FUN_0801463C
_08014550: .4byte 0x0000011D
_08014554: .4byte ROMREF_0805B21C
_08014558: .4byte ROMREF_09FB6244
_0801455C:
	ldrh r1, [r5, #0xa]
	lsls r1, r1, #4
	ldr r0, _08014598 @ => 0x0805B1DC
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, _0801459C @ => 0x09FB6234
	ldrh r0, [r5, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl FUN_08048E24
	adds r1, r0, #0
	adds r0, r5, #0
	bl FUN_0803EF14
_08014582:
	adds r2, r5, #0
	adds r2, #0xa9
	ldrb r0, [r2]
	movs r1, #0xc
	orrs r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x94
	ldr r0, _080145A0 @ => FUN_08015220
	str r0, [r1]
	b _080145AE
	.align 2, 0
_08014598: .4byte ROMREF_0805B1DC
_0801459C: .4byte ROMREF_09FB6234
_080145A0: .4byte FUN_08015220
_080145A4:
	ldr r0, [r5, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0xc]
	movs r5, #0
_080145AE:
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_080145B8
FUN_080145B8: @ 0x080145B8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r6, _080145FC @ => 0x03003DF0
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r6, r2
	adds r4, r5, r0
	ldrb r0, [r4]
	cmp r0, #0x63
	bhi _08014636
	adds r7, r0, #0
	adds r0, r7, r1
	movs r1, #0
	movs r2, #0x64
	bl FUN_0802C644
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x64
	bne _08014636
	cmp r0, r7
	beq _08014636
	cmp r5, #1
	beq _0801461C
	cmp r5, #1
	blo _08014600
	cmp r5, #2
	beq _0801460E
	cmp r5, #3
	beq _0801462A
	b _08014636
	.align 2, 0
_080145FC: .4byte gUnk_03003DF0
_08014600:
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r6, r1
	movs r1, #0x14
	bl FUN_0801DDC0
	b _08014636
_0801460E:
	movs r2, #0xa3
	lsls r2, r2, #2
	adds r0, r6, r2
	movs r1, #0x15
	bl FUN_0801DDC0
	b _08014636
_0801461C:
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r6, r1
	movs r1, #0x16
	bl FUN_0801DDC0
	b _08014636
_0801462A:
	movs r2, #0xa3
	lsls r2, r2, #2
	adds r0, r6, r2
	movs r1, #0x17
	bl FUN_0801DDC0
_08014636:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_0801463C
FUN_0801463C: @ 0x0801463C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _08014658
	cmp r0, #1
	bgt _08014652
	b _080147F2
_08014652:
	cmp r0, #0xf
	beq _08014660
	b _080147F2
_08014658:
	adds r0, r5, #0
	bl FUN_080040DC
	b _080147F2
_08014660:
	ldr r1, _08014674 @ => 0x0000011D
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _0801473C
	cmp r0, #0xe
	bgt _08014678
	cmp r0, #0
	beq _08014680
	b _080147F2
	.align 2, 0
_08014674: .4byte 0x0000011D
_08014678:
	cmp r0, #0xf
	bne _0801467E
	b _0801478C
_0801467E:
	b _080147F2
_08014680:
	bl FUN_08023680
	cmp r0, #1
	bne _080146CC
	movs r0, #0x98
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, [r4]
	bl FUN_08001848
	ldr r0, [r4]
	movs r1, #0
	bl FUN_08001FB0
	ldr r0, [r4]
	adds r1, r5, #0
	bl FUN_08001BF4
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r4]
	bl FUN_08001FF0
	ldr r0, [r4]
	movs r1, #0x42
	bl FUN_08001F20
	adds r0, r5, #0
	movs r1, #0xe
	bl FUN_08001F84
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #8
	strh r0, [r1]
	b _080147F2
_080146CC:
	ldrh r0, [r5, #0xa]
	cmp r0, #0x63
	bne _080146DA
	adds r0, r5, #0
	bl FUN_0801498C
	b _0801470E
_080146DA:
	ldr r4, _080146F8 @ => 0x03003E48
	ldrh r1, [r5, #0xa]
	adds r0, r4, #0
	movs r2, #1
	bl FUN_080262AC
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0x1f
	bhi _080146FC
	adds r1, #0x6c
	adds r2, r4, r1
	b _08014704
	.align 2, 0
_080146F8: .4byte gUnk_03003E48
_080146FC:
	movs r1, #0xd2
	lsls r1, r1, #1
	adds r2, r4, r1
	subs r0, #0x20
_08014704:
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_0801470E:
	adds r0, r5, #0
	movs r1, #1
	bl FUN_08001FB0
	adds r0, r5, #0
	movs r1, #2
	bl FUN_08002038
	movs r0, #0xbc
	bl FUN_0804DE0C
	movs r0, #0x98
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, [r4]
	movs r1, #0xd
	bl FUN_08001FB0
	ldr r0, [r4]
	movs r1, #4
	bl FUN_08001F20
	b _080147F2
_0801473C:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08014760 @ => 0xFFFF0000
	cmp r1, r0
	bne _080147F2
	ldrh r0, [r5, #0xa]
	cmp r0, #0x63
	bne _08014764
	adds r0, r5, #0
	bl FUN_0801498C
	b _08014776
	.align 2, 0
_08014760: .4byte 0xFFFF0000
_08014764:
	ldr r0, _08014788 @ => 0x03003E48
	ldrh r1, [r5, #0xa]
	movs r2, #1
	bl FUN_080262AC
	adds r0, r5, #0
	movs r1, #1
	bl FUN_08002040
_08014776:
	movs r0, #0xbc
	bl FUN_0804DE0C
	adds r0, r5, #0
	movs r1, #0xf
	bl FUN_08001F84
	b _080147F2
	.align 2, 0
_08014788: .4byte gUnk_03003E48
_0801478C:
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080147F2
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0x1f
	bhi _080147B8
	ldr r2, _080147B4 @ => 0x03003DF0
	adds r1, #0xc4
	adds r2, r2, r1
	b _080147C2
	.align 2, 0
_080147B4: .4byte gUnk_03003DF0
_080147B8:
	ldr r2, _080147F8 @ => 0x03003DF0
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r2, r2, r1
	subs r0, #0x20
_080147C2:
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	adds r0, r5, #0
	movs r1, #1
	bl FUN_08001FB0
	adds r0, r5, #0
	movs r1, #2
	bl FUN_08002038
	movs r0, #0x98
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, [r4]
	movs r1, #0xd
	bl FUN_08001FB0
	ldr r0, [r4]
	movs r1, #4
	bl FUN_08001F20
_080147F2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080147F8: .4byte gUnk_03003DF0

	thumb_func_start FUN_080147FC
FUN_080147FC: @ 0x080147FC
	ldr r2, _08014820 @ => 0x03003DF0
	movs r1, #0xf8
	lsls r1, r1, #1
	adds r0, r2, r1
	movs r1, #0
	str r1, [r0]
	movs r3, #0xfa
	lsls r3, r3, #1
	adds r0, r2, r3
	str r1, [r0]
	adds r3, #4
	adds r0, r2, r3
	str r1, [r0]
	adds r3, #4
	adds r0, r2, r3
	str r1, [r0]
	bx lr
	.align 2, 0
_08014820: .4byte gUnk_03003DF0

	thumb_func_start FUN_08014824
FUN_08014824: @ 0x08014824
	push {r4, lr}
	ldr r4, _0801485C @ => 0x03003FE0
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08044558
	adds r0, r4, #4
	movs r1, #4
	bl FUN_08044558
	adds r0, r4, #0
	adds r0, #8
	movs r1, #4
	bl FUN_08044558
	adds r0, r4, #0
	adds r0, #0xc
	movs r1, #4
	bl FUN_08044558
	adds r4, #0x10
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08044558
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801485C: .4byte gUnk_03003FE0

	thumb_func_start FUN_08014860
FUN_08014860: @ 0x08014860
	push {r4, lr}
	ldr r4, _08014898 @ => 0x03003FE0
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08044644
	adds r0, r4, #4
	movs r1, #4
	bl FUN_08044644
	adds r0, r4, #0
	adds r0, #8
	movs r1, #4
	bl FUN_08044644
	adds r0, r4, #0
	adds r0, #0xc
	movs r1, #4
	bl FUN_08044644
	adds r4, #0x10
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08044644
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08014898: .4byte gUnk_03003FE0

	thumb_func_start FUN_0801489C
FUN_0801489C: @ 0x0801489C
	push {lr}
	adds r2, r0, #0
	cmp r2, #0x1f
	bls _080148B4
	ldr r0, _080148B0 @ => 0x03003DF0
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	subs r2, #0x20
	b _080148BC
	.align 2, 0
_080148B0: .4byte gUnk_03003DF0
_080148B4:
	ldr r0, _080148C8 @ => 0x03003DF0
	movs r1, #0xf8
	lsls r1, r1, #1
	adds r0, r0, r1
_080148BC:
	movs r1, #1
	lsls r1, r2
	ldr r0, [r0]
	ands r0, r1
	pop {r1}
	bx r1
	.align 2, 0
_080148C8: .4byte gUnk_03003DF0

	thumb_func_start FUN_080148CC
FUN_080148CC: @ 0x080148CC
	push {lr}
	adds r2, r0, #0
	cmp r2, #0x1f
	bls _080148E4
	ldr r0, _080148E0 @ => 0x03003DF0
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r0, r1
	subs r2, #0x20
	b _080148EC
	.align 2, 0
_080148E0: .4byte gUnk_03003DF0
_080148E4:
	ldr r0, _080148F8 @ => 0x03003DF0
	movs r1, #0xfc
	lsls r1, r1, #1
	adds r0, r0, r1
_080148EC:
	movs r1, #1
	lsls r1, r2
	ldr r0, [r0]
	ands r0, r1
	pop {r1}
	bx r1
	.align 2, 0
_080148F8: .4byte gUnk_03003DF0

	thumb_func_start FUN_080148FC
FUN_080148FC: @ 0x080148FC
	push {lr}
	cmp r0, #0x1f
	bhi _08014910
	ldr r2, _0801490C @ => 0x03003DF0
	movs r1, #0xf8
	lsls r1, r1, #1
	adds r2, r2, r1
	b _0801491A
	.align 2, 0
_0801490C: .4byte gUnk_03003DF0
_08014910:
	ldr r2, _08014928 @ => 0x03003DF0
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r2, r2, r1
	subs r0, #0x20
_0801491A:
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08014928: .4byte gUnk_03003DF0

	thumb_func_start FUN_0801492C
FUN_0801492C: @ 0x0801492C
	push {lr}
	cmp r0, #0x1f
	bhi _08014940
	ldr r2, _0801493C @ => 0x03003DF0
	movs r1, #0xfc
	lsls r1, r1, #1
	adds r2, r2, r1
	b _0801494A
	.align 2, 0
_0801493C: .4byte gUnk_03003DF0
_08014940:
	ldr r2, _08014958 @ => 0x03003DF0
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r2, r2, r1
	subs r0, #0x20
_0801494A:
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08014958: .4byte gUnk_03003DF0

	thumb_func_start FUN_0801495C
FUN_0801495C: @ 0x0801495C
	push {lr}
	cmp r0, #0x1f
	bhi _08014970
	ldr r2, _0801496C @ => 0x03003DF0
	movs r1, #0xfc
	lsls r1, r1, #1
	adds r2, r2, r1
	b _0801497A
	.align 2, 0
_0801496C: .4byte gUnk_03003DF0
_08014970:
	ldr r2, _08014988 @ => 0x03003DF0
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r2, r2, r1
	subs r0, #0x20
_0801497A:
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08014988: .4byte gUnk_03003DF0

	thumb_func_start FUN_0801498C
FUN_0801498C: @ 0x0801498C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080149C8 @ => 0x03003E48
	adds r0, r4, #0
	movs r1, #3
	movs r2, #3
	bl FUN_080262AC
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r2, r4, r0
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r5, r5, r0
	movs r1, #1
	ldrb r5, [r5]
	lsls r1, r5
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
	movs r0, #0x8d
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r0, r4, #0
	movs r1, #0x3a
	bl FUN_0801DC1C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080149C8: .4byte gUnk_03003E48

	thumb_func_start FUN_080149CC
FUN_080149CC: @ 0x080149CC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r6, #0
	ldrh r0, [r5, #8]
	cmp r0, #0
	bne _080149E6
	ldr r0, _08014A68 @ => 0x03003DF0
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	movs r1, #1
	str r1, [r0]
_080149E6:
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08014AD0
	movs r7, #0
	ldrh r0, [r4, #0xa]
	cmp r0, #1
	bne _080149FC
	movs r7, #1
_080149FC:
	ldrh r0, [r5, #8]
	cmp r0, #0
	bne _08014A1C
	bl FUN_08021780
	cmp r0, #1
	bne _08014A1C
	movs r6, #1
	cmp r7, #0
	beq _08014A1C
	ldr r0, _08014A6C @ => 0x030042B0
	ldrb r1, [r4, #0x13]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrh r0, [r1, #0x14]
	ands r6, r0
_08014A1C:
	cmp r6, #1
	bne _08014AD0
	ldr r0, _08014A68 @ => 0x03003DF0
	ldr r2, _08014A70 @ => 0x00000404
	adds r1, r0, r2
	ldrb r1, [r1]
	adds r3, r0, #0
	cmp r1, #2
	beq _08014A3C
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #0xb
	bls _08014A3C
	movs r6, #0
_08014A3C:
	cmp r6, #1
	bne _08014AD0
	ldrh r0, [r4, #8]
	cmp r0, #0x12
	bne _08014A96
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08014A96
	ldr r1, _08014A74 @ => 0x00000133
	adds r0, r4, r1
	ldrb r1, [r0]
	ldrb r2, [r2]
	cmp r1, r2
	bhs _08014A78
	movs r0, #2
	ldrsb r0, [r3, r0]
	cmp r0, r1
	blt _08014A84
	b _08014A80
	.align 2, 0
_08014A68: .4byte gUnk_03003DF0
_08014A6C: .4byte gUnk_030042B0
_08014A70: .4byte 0x00000404
_08014A74: .4byte 0x00000133
_08014A78:
	movs r0, #2
	ldrsb r0, [r3, r0]
	cmp r0, r1
	bge _08014A96
_08014A80:
	cmp r0, r2
	blt _08014A96
_08014A84:
	movs r6, #0
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r1, r5, r0
	strb r6, [r1]
	adds r0, r4, r0
	movs r1, #3
	strb r1, [r0]
	str r5, [r4, #0x58]
_08014A96:
	cmp r6, #1
	bne _08014AD0
	ldr r1, _08014AD8 @ => 0x03004228
	movs r2, #0x99
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, _08014ADC @ => 0x03004200
	ldr r0, _08014AE0 @ => 0x030042B0
	ldrh r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r1, r5, #0
	adds r1, #0xd8
	ldrh r1, [r1]
	strb r1, [r0, #0x10]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r2, [r0]
	movs r0, #1
	movs r1, #0
	bl FUN_0802CED4
	bl FUN_08024900
_08014AD0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08014AD8: .4byte gUnk_03004228
_08014ADC: .4byte gUnk_03004200
_08014AE0: .4byte gUnk_030042B0

	thumb_func_start FUN_08014AE4
FUN_08014AE4: @ 0x08014AE4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	ldrh r0, [r6, #8]
	cmp r0, #0
	bne _08014B9E
	ldr r0, _08014BAC @ => 0x03003DF0
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	movs r2, #1
	mov r8, r2
	str r2, [r0]
	ldrh r0, [r6, #8]
	cmp r0, #0
	bne _08014B9E
	movs r3, #0x8e
	lsls r3, r3, #1
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _08014B9E
	ldr r0, _08014BB0 @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08014B9E
	ldr r7, _08014BB4 @ => 0x03005BCC
	ldr r0, [r7]
	movs r2, #0x1a
	ldrsh r1, [r5, r2]
	adds r2, r5, #0
	adds r2, #0x7c
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r3, r5, #0
	adds r3, #0x7d
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r2, r2, r3
	lsrs r3, r2, #0x1f
	adds r2, r2, r3
	asrs r2, r2, #1
	adds r1, r1, r2
	movs r3, #0x1e
	ldrsh r2, [r5, r3]
	adds r3, r5, #0
	adds r3, #0x7e
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r4, r5, #0
	adds r4, #0x7f
	ldrb r4, [r4]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	adds r3, r3, r4
	lsrs r4, r3, #0x1f
	adds r3, r3, r4
	asrs r3, r3, #1
	adds r2, r2, r3
	subs r2, #0x3c
	movs r3, #0x1e
	str r3, [sp]
	movs r3, #1
	bl FUN_0803E4F4
	ldr r1, _08014BB8 @ => 0x030042B0
	ldrb r0, [r5, #0x13]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #0x14]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _08014B9E
	adds r0, r5, #0
	movs r1, #3
	bl FUN_08001FB0
	str r6, [r5, #0x58]
	ldr r0, [r7]
	bl FUN_0803E54C
	bl FUN_08024900
_08014B9E:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08014BAC: .4byte gUnk_03003DF0
_08014BB0: .4byte gUnk_03004374
_08014BB4: .4byte gUnk_03005BCC
_08014BB8: .4byte gUnk_030042B0

	thumb_func_start FUN_08014BBC
FUN_08014BBC: @ 0x08014BBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	mov ip, r0
	mov r8, r1
	ldr r6, [r0, #0x20]
	ldr r7, [r0, #0x24]
	asrs r0, r7, #0x10
	mov sb, r0
	mov r0, ip
	adds r0, #0x8c
	movs r1, #0
	ldrsh r0, [r0, r1]
	add r0, sb
	str r0, [sp, #8]
	mov r0, ip
	adds r0, #0x8e
	movs r1, #0
	ldrsh r0, [r0, r1]
	add r0, sb
	str r0, [sp, #0x10]
	mov r0, ip
	adds r0, #0xa7
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08014C12
	asrs r1, r6, #0x10
	mov r0, ip
	adds r0, #0x8a
	movs r6, #0
	ldrsh r0, [r0, r6]
	subs r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, ip
	adds r0, #0x88
	movs r7, #0
	ldrsh r0, [r0, r7]
	subs r1, r1, r0
	b _08014C2A
_08014C12:
	asrs r1, r6, #0x10
	mov r0, ip
	adds r0, #0x88
	movs r6, #0
	ldrsh r0, [r0, r6]
	adds r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, ip
	adds r0, #0x8a
	movs r7, #0
	ldrsh r0, [r0, r7]
	adds r1, r1, r0
_08014C2A:
	str r1, [sp, #0x14]
	mov r0, r8
	ldr r6, [r0, #0x20]
	ldr r7, [r0, #0x24]
	asrs r1, r7, #0x10
	mov sb, r1
	adds r0, #0x8c
	movs r1, #0
	ldrsh r0, [r0, r1]
	add r0, sb
	mov ip, r0
	mov r0, r8
	adds r0, #0x8e
	movs r1, #0
	ldrsh r0, [r0, r1]
	add sb, r0
	mov r0, r8
	adds r0, #0xa7
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08014C6E
	asrs r1, r6, #0x10
	mov r0, r8
	adds r0, #0x8a
	movs r6, #0
	ldrsh r0, [r0, r6]
	subs r6, r1, r0
	mov r0, r8
	adds r0, #0x88
	movs r7, #0
	ldrsh r0, [r0, r7]
	subs r7, r1, r0
	b _08014C84
_08014C6E:
	asrs r1, r6, #0x10
	mov r0, r8
	adds r0, #0x88
	movs r6, #0
	ldrsh r0, [r0, r6]
	adds r6, r1, r0
	mov r0, r8
	adds r0, #0x8a
	movs r7, #0
	ldrsh r0, [r0, r7]
	adds r7, r1, r0
_08014C84:
	mov r0, r8
	ldrb r0, [r0, #0x12]
	str r0, [sp, #0x1c]
	cmp r0, #7
	bhi _08014D26
	lsls r0, r0, #2
	ldr r1, _08014C98 @ =_08014C9C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08014C98: .4byte _08014C9C
_08014C9C: @ jump table
	.4byte _08014CBC @ case 0
	.4byte _08014CC6 @ case 1
	.4byte _08014CD8 @ case 2
	.4byte _08014CDE @ case 3
	.4byte _08014CEA @ case 4
	.4byte _08014CF4 @ case 5
	.4byte _08014D0A @ case 6
	.4byte _08014D14 @ case 7
_08014CBC:
	adds r2, r6, #0
	mov r3, ip
	adds r4, r7, #0
	mov r5, ip
	b _08014D26
_08014CC6:
	subs r0, r7, r6
	asrs r0, r0, #1
	adds r2, r6, r0
	mov r3, ip
	adds r4, r7, #0
	mov r1, sb
	subs r1, r1, r3
	asrs r0, r1, #1
	b _08014D24
_08014CD8:
	adds r2, r7, #0
	mov r3, ip
	b _08014CEE
_08014CDE:
	subs r0, r7, r6
	asrs r0, r0, #1
	adds r2, r6, r0
	mov r3, sb
	adds r4, r7, #0
	b _08014CFE
_08014CEA:
	adds r2, r6, #0
	mov r3, sb
_08014CEE:
	adds r4, r7, #0
	mov r5, sb
	b _08014D26
_08014CF4:
	subs r0, r7, r6
	asrs r0, r0, #1
	adds r2, r6, r0
	mov r3, sb
	adds r4, r6, #0
_08014CFE:
	mov r0, sb
	mov r1, ip
	subs r0, r0, r1
	asrs r0, r0, #1
	adds r5, r1, r0
	b _08014D26
_08014D0A:
	adds r2, r6, #0
	mov r3, ip
	adds r4, r6, #0
	mov r5, sb
	b _08014D26
_08014D14:
	subs r0, r7, r6
	asrs r0, r0, #1
	adds r2, r6, r0
	mov r3, ip
	adds r4, r6, #0
	mov r0, sb
	subs r0, r0, r3
	asrs r0, r0, #1
_08014D24:
	adds r5, r3, r0
_08014D26:
	movs r1, #0
	mov sl, r1
	ldr r0, [sp, #0xc]
	cmp r2, r0
	blt _08014D46
	ldr r1, [sp, #0x14]
	cmp r2, r1
	bgt _08014D46
	ldr r0, [sp, #8]
	cmp r3, r0
	blt _08014D46
	ldr r1, [sp, #0x10]
	cmp r3, r1
	bgt _08014D46
	movs r2, #1
	mov sl, r2
_08014D46:
	movs r0, #0
	str r0, [sp, #0x18]
	ldr r1, [sp, #0xc]
	cmp r4, r1
	blt _08014D66
	ldr r2, [sp, #0x14]
	cmp r4, r2
	bgt _08014D66
	ldr r0, [sp, #8]
	cmp r5, r0
	blt _08014D66
	ldr r1, [sp, #0x10]
	cmp r5, r1
	bgt _08014D66
	movs r2, #1
	str r2, [sp, #0x18]
_08014D66:
	mov r0, sl
	cmp r0, #0
	bne _08014D72
	ldr r1, [sp, #0x18]
	cmp r1, #0
	beq _08014E18
_08014D72:
	movs r0, #1
	ldr r2, [sp, #0x1c]
	ands r0, r2
	cmp r0, #0
	beq _08014D96
	mov r6, sl
	cmp r6, #0
	beq _08014D88
	mov r7, r8
	ldr r0, [r7, #0x1c]
	str r0, [r7, #0x24]
_08014D88:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _08014E6C
	mov r1, r8
	ldr r0, [r1, #0x18]
	str r0, [r1, #0x20]
	b _08014E6C
_08014D96:
	str r0, [sp]
	str r0, [sp, #4]
	mov r2, sl
	cmp r2, #0
	beq _08014DCA
	ldr r6, [sp, #0x1c]
	cmp r6, #0
	beq _08014DAA
	cmp r6, #4
	bne _08014DB4
_08014DAA:
	mov r7, r8
	ldr r0, [r7, #0x14]
	asrs r0, r0, #3
	str r0, [sp]
	b _08014DBC
_08014DB4:
	mov r1, r8
	ldr r0, [r1, #0x14]
	asrs r0, r0, #3
	str r0, [sp, #4]
_08014DBC:
	mov r0, r8
	adds r0, #0x18
	mov r2, r8
	adds r2, #0x20
	mov r1, sp
	bl FUN_0802C3AC
_08014DCA:
	ldr r2, [sp, #0x18]
	cmp r2, #0
	beq _08014DFE
	ldr r6, [sp, #0x1c]
	cmp r6, #0
	beq _08014DDA
	cmp r6, #4
	bne _08014DE6
_08014DDA:
	mov r7, r8
	ldr r0, [r7, #0x14]
	rsbs r0, r0, #0
	asrs r0, r0, #3
	str r0, [sp]
	b _08014DF0
_08014DE6:
	mov r1, r8
	ldr r0, [r1, #0x14]
	rsbs r0, r0, #0
	asrs r0, r0, #3
	str r0, [sp, #4]
_08014DF0:
	mov r0, r8
	adds r0, #0x18
	mov r2, r8
	adds r2, #0x20
	mov r1, sp
	bl FUN_0802C3AC
_08014DFE:
	mov r2, sl
	cmp r2, #0
	beq _08014E6C
	ldr r6, [sp, #0x18]
	cmp r6, #0
	beq _08014E6C
	mov r7, r8
	ldr r0, [r7, #0x18]
	ldr r1, [r7, #0x1c]
	mov r2, r8
	str r0, [r2, #0x20]
	str r1, [r2, #0x24]
	b _08014E6C
_08014E18:
	movs r0, #1
	mov sl, r0
	ldr r1, [sp, #0x14]
	cmp r1, r6
	bge _08014E28
	movs r2, #0
	mov sl, r2
	b _08014E4A
_08014E28:
	ldr r6, [sp, #0xc]
	cmp r6, r7
	ble _08014E34
	movs r7, #0
	mov sl, r7
	b _08014E4A
_08014E34:
	ldr r0, [sp, #8]
	cmp r0, sb
	ble _08014E40
	movs r1, #0
	mov sl, r1
	b _08014E4A
_08014E40:
	ldr r2, [sp, #0x10]
	cmp r2, ip
	bge _08014E4A
	movs r6, #0
	mov sl, r6
_08014E4A:
	mov r7, sl
	cmp r7, #1
	bne _08014E6C
	mov r2, r8
	ldr r0, [r2, #0x18]
	ldr r1, [r2, #0x1c]
	mov r6, r8
	str r0, [r6, #0x20]
	str r1, [r6, #0x24]
	movs r0, #0
	str r0, [r6, #0x2c]
	str r0, [r6, #0x28]
	adds r2, #0x78
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2]
_08014E6C:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_08014E7C
FUN_08014E7C: @ 0x08014E7C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	mov ip, r1
	ldr r2, [r1, #0x20]
	ldr r3, [r1, #0x24]
	asrs r1, r3, #0x10
	mov r0, ip
	adds r0, #0x8c
	movs r4, #0
	ldrsh r0, [r0, r4]
	adds r0, r1, r0
	str r0, [sp]
	mov r0, ip
	adds r0, #0x8e
	movs r4, #0
	ldrsh r0, [r0, r4]
	adds r1, r1, r0
	str r1, [sp, #4]
	mov r0, ip
	adds r0, #0xa7
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08014ED4
	asrs r1, r2, #0x10
	mov r0, ip
	adds r0, #0x8a
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r0, r1, r0
	mov sl, r0
	mov r0, ip
	adds r0, #0x88
	movs r4, #0
	ldrsh r0, [r0, r4]
	subs r1, r1, r0
	b _08014EEC
_08014ED0:
	movs r0, #1
	b _08014F8E
_08014ED4:
	asrs r1, r2, #0x10
	mov r0, ip
	adds r0, #0x88
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, r0, r1
	mov sl, r0
	mov r0, ip
	adds r0, #0x8a
	movs r4, #0
	ldrsh r0, [r0, r4]
	adds r1, r1, r0
_08014EEC:
	mov sb, r1
	movs r0, #0
	mov r8, r0
	adds r0, r5, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	cmp r8, r0
	bhs _08014F8C
	str r0, [sp, #8]
	adds r4, r5, #0
	adds r4, #0x7c
	movs r7, #0
_08014F04:
	adds r0, r5, #0
	adds r0, #0x80
	adds r0, r0, r7
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08014F7E
	ldr r2, [r5, #0x20]
	ldr r3, [r5, #0x24]
	asrs r1, r3, #0x10
	adds r0, r5, #0
	adds r0, #0x7e
	adds r0, r0, r7
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	mov ip, r0
	adds r0, r5, #0
	adds r0, #0x7f
	adds r0, r0, r7
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r1, r0
	adds r0, r5, #0
	adds r0, #0xa7
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08014F54
	asrs r0, r2, #0x10
	movs r1, #1
	ldrsb r1, [r4, r1]
	subs r2, r0, r1
	movs r1, #0
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	b _08014F62
_08014F54:
	asrs r0, r2, #0x10
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r2, r0, r1
	movs r1, #1
	ldrsb r1, [r4, r1]
	adds r0, r0, r1
_08014F62:
	movs r1, #1
	cmp sb, r2
	blt _08014F7E
	cmp sl, r0
	bgt _08014F7E
	ldr r2, [sp]
	cmp r2, r6
	bgt _08014F7E
	ldr r0, [sp, #4]
	cmp r0, ip
	bge _08014F7A
	movs r1, #0
_08014F7A:
	cmp r1, #0
	bne _08014ED0
_08014F7E:
	adds r4, #6
	adds r7, #6
	movs r2, #1
	add r8, r2
	ldr r0, [sp, #8]
	cmp r8, r0
	blo _08014F04
_08014F8C:
	movs r0, #0
_08014F8E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08014FA0
FUN_08014FA0: @ 0x08014FA0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldrh r0, [r4, #8]
	cmp r0, #0
	bne _08015008
	ldr r0, _08015010 @ => 0x03003DF0
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	movs r2, #1
	str r2, [r0]
	ldrh r0, [r4, #8]
	cmp r0, #0
	bne _08015008
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08015008
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _08015008
	ldr r0, _08015014 @ => 0x03004374
	ldr r0, [r0]
	adds r1, #0xe4
	ands r0, r1
	cmp r0, #0
	bne _08015008
	ldr r0, _08015018 @ => 0x030042B0
	ldrh r1, [r0, #0x14]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08015008
	bl FUN_08023680
	cmp r0, #1
	bne _08015008
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001FB0
	adds r0, r5, #0
	movs r1, #3
	bl FUN_08001FB0
	str r4, [r5, #0x58]
	bl FUN_08024900
_08015008:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08015010: .4byte gUnk_03003DF0
_08015014: .4byte gUnk_03004374
_08015018: .4byte gUnk_030042B0

	thumb_func_start FUN_0801501C
FUN_0801501C: @ 0x0801501C
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldrh r0, [r2, #8]
	cmp r0, #0
	bne _0801505A
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _0801505A
	ldr r1, _08015060 @ => 0x030042B0
	ldrb r0, [r2, #0x13]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801505A
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r2, [r0]
	movs r0, #0x10
	movs r1, #0
	bl FUN_0802CED4
	bl FUN_08024900
_0801505A:
	pop {r0}
	bx r0
	.align 2, 0
_08015060: .4byte gUnk_030042B0

	thumb_func_start FUN_08015064
FUN_08015064: @ 0x08015064
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r0, #0x7a
	ldrb r4, [r0]
	lsls r4, r4, #0x10
	ldr r0, [r6, #0x20]
	ldr r1, [r6, #0x24]
	ldr r2, [r5, #0x20]
	ldr r3, [r5, #0x24]
	bl FUN_0802C538
	cmp r0, r4
	bhi _08015096
	movs r0, #0
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	str r0, [r5, #0x20]
	str r1, [r5, #0x24]
	adds r0, r6, #0
	adds r1, r5, #0
	bl FUN_08014BBC
_08015096:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start FUN_0801509C
FUN_0801509C: @ 0x0801509C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_08021780
	cmp r0, #0
	beq _0801511E
	ldr r6, _08015124 @ => 0x03003DF0
	ldr r1, _08015128 @ => 0x00000404
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _0801511E
	bl FUN_08021738
	cmp r0, #0
	bne _0801511E
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _0801511E
	ldrh r0, [r4, #8]
	cmp r0, #0
	bne _0801511E
	ldr r1, _0801512C @ => 0x030042B0
	ldrb r0, [r4, #0x13]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801511E
	ldrh r0, [r5, #0xa]
	cmp r0, #0xc
	bls _0801511E
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _0801511E
	adds r0, r4, #0
	bl FUN_08001848
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08001F20
	str r5, [r4, #0x58]
	bl FUN_08024900
	movs r0, #0xb6
	bl FUN_0804DE0C
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001FB0
	adds r0, r5, #0
	movs r1, #0x35
	bl FUN_08001FB0
_0801511E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08015124: .4byte gUnk_03003DF0
_08015128: .4byte 0x00000404
_0801512C: .4byte gUnk_030042B0

	thumb_func_start FUN_08015130
FUN_08015130: @ 0x08015130
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	movs r2, #0
	ldrh r0, [r3, #8]
	cmp r0, #0
	bne _08015196
	ldr r1, _0801517C @ => 0x030042B0
	ldrb r0, [r3, #0x13]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08015196
	ldrh r0, [r4, #0xa]
	cmp r0, #2
	bls _08015196
	cmp r0, #6
	bhi _08015196
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _08015196
	ldrh r0, [r4, #0xa]
	cmp r0, #4
	beq _08015180
	cmp r0, #4
	ble _0801518A
	cmp r0, #5
	beq _08015184
	cmp r0, #6
	beq _08015188
	b _0801518A
	.align 2, 0
_0801517C: .4byte gUnk_030042B0
_08015180:
	movs r2, #1
	b _0801518A
_08015184:
	movs r2, #3
	b _0801518A
_08015188:
	movs r2, #2
_0801518A:
	movs r0, #0x10
	movs r1, #0
	bl FUN_0802CED4
	bl FUN_08024900
_08015196:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_0801519C
FUN_0801519C: @ 0x0801519C
	push {r4, lr}
	adds r4, r1, #0
	bl FUN_08039844
	adds r0, r4, #0
	bl FUN_08039844
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_080151B0
FUN_080151B0: @ 0x080151B0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl FUN_08039844
	adds r0, r5, #0
	bl FUN_08039844
	adds r0, r4, #0
	movs r1, #7
	bl FUN_08001F84
	movs r0, #0x90
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r0, #0x3c
	strh r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_080151D8
FUN_080151D8: @ 0x080151D8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl FUN_08039844
	adds r0, r5, #0
	bl FUN_08039844
	ldrh r0, [r5, #8]
	cmp r0, #0
	bne _0801521A
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_080010C0
	cmp r0, #0
	beq _0801521A
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08002040
	adds r0, r4, #0
	movs r1, #5
	bl FUN_08001F84
	adds r0, r5, #0
	movs r1, #0x91
	bl FUN_08001F20
	adds r0, r5, #0
	movs r1, #0x17
	bl FUN_08001F84
_0801521A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_08015220
FUN_08015220: @ 0x08015220
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	ldrh r0, [r6, #8]
	cmp r0, #0
	bne _0801529E
	ldr r0, _080152A8 @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0801529E
	subs r1, #0xe4
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _0801529E
	adds r0, r6, #0
	adds r1, r5, #0
	bl FUN_080010C0
	cmp r0, #1
	bne _08015276
	ldr r0, _080152AC @ => 0x03005BCC
	ldr r0, [r0]
	movs r2, #0x1a
	ldrsh r1, [r5, r2]
	movs r3, #0x1e
	ldrsh r2, [r5, r3]
	adds r3, r5, #0
	adds r3, #0xa9
	ldrb r3, [r3]
	lsls r3, r3, #0x1c
	lsrs r3, r3, #0x1e
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r4, #0x1e
	str r4, [sp]
	bl FUN_0803E4F4
_08015276:
	ldr r0, _080152B0 @ => 0x030042B0
	ldrh r1, [r0, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801529E
	adds r0, r5, #0
	movs r1, #0xf
	bl FUN_08001FB0
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r5, r1
	str r6, [r0]
	ldr r0, _080152AC @ => 0x03005BCC
	ldr r0, [r0]
	bl FUN_0803E54C
	bl FUN_08024900
_0801529E:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080152A8: .4byte gUnk_03004374
_080152AC: .4byte gUnk_03005BCC
_080152B0: .4byte gUnk_030042B0

	thumb_func_start FUN_080152B4
FUN_080152B4: @ 0x080152B4
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r1, #8]
	cmp r0, #0
	bne _080152F2
	movs r3, #0x8e
	lsls r3, r3, #1
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _080152F2
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _080152F2
	ldrh r1, [r2, #0xa]
	cmp r1, #1
	bne _080152E6
	ldr r0, _080152F8 @ => 0x030042B0
	ldrh r0, [r0, #0xc]
	ands r1, r0
	cmp r1, #0
	beq _080152F2
_080152E6:
	adds r0, r2, #0
	movs r1, #3
	bl FUN_08001FB0
	bl FUN_08024900
_080152F2:
	pop {r0}
	bx r0
	.align 2, 0
_080152F8: .4byte gUnk_030042B0

	thumb_func_start FUN_080152FC
FUN_080152FC: @ 0x080152FC
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldrh r0, [r2, #8]
	cmp r0, #0
	bne _08015326
	ldr r1, _0801532C @ => 0x030042B0
	ldrb r0, [r2, #0x13]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08015326
	adds r0, r3, #0
	movs r1, #4
	bl FUN_08001F84
	bl FUN_08024900
_08015326:
	pop {r0}
	bx r0
	.align 2, 0
_0801532C: .4byte gUnk_030042B0

	thumb_func_start FUN_08015330
FUN_08015330: @ 0x08015330
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	ldrh r0, [r5, #8]
	cmp r0, #0
	bne _08015390
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _08015390
	ldr r0, _08015398 @ => 0x03004374
	ldr r0, [r0]
	adds r1, #0xe4
	ands r0, r1
	cmp r0, #0
	bne _08015390
	ldr r6, _0801539C @ => 0x03005BCC
	ldr r0, [r6]
	movs r2, #0x1a
	ldrsh r1, [r4, r2]
	movs r3, #0x1e
	ldrsh r2, [r4, r3]
	subs r2, #0x3c
	movs r3, #0x1e
	str r3, [sp]
	movs r3, #1
	bl FUN_0803E4F4
	ldr r1, _080153A0 @ => 0x030042B0
	ldrb r0, [r4, #0x13]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08015390
	adds r0, r4, #0
	movs r1, #3
	bl FUN_08001FB0
	str r5, [r4, #0x58]
	ldr r0, [r6]
	bl FUN_0803E54C
_08015390:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08015398: .4byte gUnk_03004374
_0801539C: .4byte gUnk_03005BCC
_080153A0: .4byte gUnk_030042B0

	thumb_func_start FUN_080153A4
FUN_080153A4: @ 0x080153A4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	ldrh r0, [r6, #8]
	cmp r0, #0
	bne _0801542A
	ldr r0, _08015434 @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0801542A
	subs r1, #0xe4
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _0801542A
	adds r0, r6, #0
	adds r1, r5, #0
	bl FUN_080010C0
	cmp r0, #1
	bne _080153FA
	ldr r0, _08015438 @ => 0x03005BCC
	ldr r0, [r0]
	movs r2, #0x1a
	ldrsh r1, [r5, r2]
	movs r3, #0x1e
	ldrsh r2, [r5, r3]
	adds r3, r5, #0
	adds r3, #0xa9
	ldrb r3, [r3]
	lsls r3, r3, #0x1c
	lsrs r3, r3, #0x1e
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r4, #0x1e
	str r4, [sp]
	bl FUN_0803E4F4
_080153FA:
	ldr r0, _0801543C @ => 0x030042B0
	ldrh r1, [r0, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801542A
	adds r0, r5, #0
	movs r1, #0xf
	bl FUN_08001FB0
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08001F84
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r5, r1
	str r6, [r0]
	ldr r0, _08015438 @ => 0x03005BCC
	ldr r0, [r0]
	bl FUN_0803E54C
	bl FUN_08024900
_0801542A:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08015434: .4byte gUnk_03004374
_08015438: .4byte gUnk_03005BCC
_0801543C: .4byte gUnk_030042B0

	thumb_func_start FUN_08015440
FUN_08015440: @ 0x08015440
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	adds r0, #0xa9
	ldrb r1, [r0]
	movs r3, #0xc
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0xc
	beq _08015462
	adds r0, r4, #0
	adds r0, #0xa9
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0xc
	bne _0801547A
_08015462:
	ldr r1, [r2, #0x1c]
	ldr r0, [r4, #0x1c]
	cmp r1, r0
	bge _0801547A
	adds r0, r2, #0
	movs r1, #3
	bl FUN_080017B8
	adds r0, r4, #0
	movs r1, #3
	bl FUN_080017B8
_0801547A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_08015480
FUN_08015480: @ 0x08015480
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, _080154C0 @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0xd
	beq _080154BA
	ldr r1, _080154C4 @ => 0x0805F984
	ldrb r0, [r4, #0x12]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0x12]
	adds r0, r4, #0
	movs r1, #0xd
	bl FUN_08001F84
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x14
	strh r0, [r1]
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r2, r4, r1
	ldrb r1, [r2]
	movs r0, #0x12
	orrs r0, r1
	strb r0, [r2]
_080154BA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080154C0: .4byte 0x0000011D
_080154C4: .4byte ROMREF_0805F984

	thumb_func_start FUN_080154C8
FUN_080154C8: @ 0x080154C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r3, r0, #0
	movs r2, #0
	ldrh r0, [r3]
	cmp r2, r0
	bge _08015530
	mov sl, r2
	ldr r1, _08015540 @ => 0x03003630
	mov sb, r1
	adds r7, r3, #4
_080154E6:
	ldrb r4, [r7]
	ldrb r5, [r7, #1]
	ldrb r0, [r7, #2]
	mov r8, r0
	ldrb r6, [r7, #3]
	str r2, [sp]
	str r3, [sp, #4]
	bl FUN_08015C10
	lsls r0, r0, #3
	ldr r1, _08015544 @ => 0x03003640
	adds r0, r0, r1
	strb r6, [r0]
	mov r1, r8
	strb r1, [r0, #1]
	mov r1, sl
	strb r1, [r0, #2]
	strb r4, [r0, #3]
	strb r4, [r0, #4]
	adds r4, r4, r5
	subs r4, #1
	strb r4, [r0, #5]
	strb r5, [r0, #6]
	strb r5, [r0, #7]
	movs r1, #1
	ldr r2, [sp]
	lsls r1, r2
	mov r4, sb
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
	adds r7, #4
	adds r2, #1
	ldr r3, [sp, #4]
	ldrh r0, [r3]
	cmp r2, r0
	blt _080154E6
_08015530:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015540: .4byte gUnk_03003630
_08015544: .4byte gUnk_03003640

	thumb_func_start FUN_08015548
FUN_08015548: @ 0x08015548
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsrs r7, r2, #1
	movs r6, #0
	cmp r6, r7
	bhs _080155D2
	movs r2, #0x1f
	mov sl, r2
	movs r3, #0xf8
	lsls r3, r3, #2
	mov sb, r3
	movs r2, #0xf8
	lsls r2, r2, #7
	mov r8, r2
	adds r5, r0, #0
	adds r4, r1, #0
_0801556E:
	ldrh r2, [r4]
	mov r0, sl
	ands r0, r2
	mov r1, sb
	ands r1, r2
	lsrs r1, r1, #5
	adds r0, r0, r1
	mov r1, r8
	ands r1, r2
	lsrs r1, r1, #0xa
	adds r0, r0, r1
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _080155E0 @ => 0x03001AF4
	ldr r0, [r0]
	cmp r0, #1
	bne _0801559E
	ldr r1, _080155E4 @ => 0x0805B230
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r2, [r0]
_0801559E:
	ldr r0, _080155E8 @ => 0x03001AF0
	ldrb r0, [r0]
	adds r0, r2, r0
	movs r1, #0
	movs r2, #0x1f
	bl FUN_0802C644
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, r2, #0
	mov r3, sl
	ands r1, r3
	lsls r0, r2, #5
	mov r3, sb
	ands r0, r3
	orrs r1, r0
	lsls r0, r2, #0xa
	mov r2, r8
	ands r0, r2
	orrs r1, r0
	strh r1, [r5]
	adds r5, #2
	adds r4, #2
	adds r6, #1
	cmp r6, r7
	blo _0801556E
_080155D2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080155E0: .4byte gUnk_03001AF4
_080155E4: .4byte ROMREF_0805B230
_080155E8: .4byte gUnk_03001AF0

	thumb_func_start FUN_080155EC
FUN_080155EC: @ 0x080155EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsrs r2, r2, #1
	str r2, [sp, #4]
	movs r2, #0
	str r2, [sp]
	ldr r3, [sp, #4]
	cmp r2, r3
	bhs _08015682
	mov sl, r0
	adds r7, r1, #0
_0801560A:
	ldrh r0, [r7]
	movs r6, #0x1f
	ands r6, r0
	movs r4, #0xf8
	lsls r4, r4, #2
	ands r4, r0
	lsls r4, r4, #0xb
	lsrs r1, r4, #0x10
	mov sb, r1
	movs r2, #0xf8
	lsls r2, r2, #7
	mov r8, r2
	mov r3, r8
	ands r3, r0
	lsrs r3, r3, #0xa
	mov r8, r3
	adds r0, r6, #0
	movs r1, #3
	bl __udivsi3
	adds r5, r0, #0
	adds r0, r6, #0
	movs r1, #5
	bl __udivsi3
	adds r5, r5, r0
	movs r0, #0x1f
	ands r5, r0
	lsrs r4, r4, #0x11
	mov r0, sb
	movs r1, #5
	bl __udivsi3
	adds r4, r4, r0
	lsls r4, r4, #5
	movs r1, #0xf8
	lsls r1, r1, #2
	ands r4, r1
	orrs r4, r5
	mov r0, r8
	adds r0, #5
	cmp r0, #0x1f
	ble _08015662
	movs r0, #0x1f
_08015662:
	lsls r0, r0, #0xa
	movs r2, #0xf8
	lsls r2, r2, #7
	ands r0, r2
	orrs r4, r0
	mov r3, sl
	strh r4, [r3]
	movs r0, #2
	add sl, r0
	adds r7, #2
	ldr r1, [sp]
	adds r1, #1
	str r1, [sp]
	ldr r2, [sp, #4]
	cmp r1, r2
	blo _0801560A
_08015682:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08015694
FUN_08015694: @ 0x08015694
	push {r4, lr}
	ldr r4, _080156C4 @ => 0x03001AF8
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r0, r4, #0
	bl FUN_08015BB0
	adds r4, #8
	ldr r1, _080156C8 @ => 0x05000200
	adds r0, r4, #0
	bl FUN_08015BB0
	bl FUN_08015834
	ldr r1, _080156CC @ => 0x03001AF0
	movs r0, #3
	strb r0, [r1]
	ldr r1, _080156D0 @ => 0x03001AF4
	movs r0, #1
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080156C4: .4byte gUnk_03001AF8
_080156C8: .4byte 0x05000200
_080156CC: .4byte gUnk_03001AF0
_080156D0: .4byte gUnk_03001AF4

	thumb_func_start FUN_080156D4
FUN_080156D4: @ 0x080156D4
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r6, r2, #0
	lsls r1, r1, #1
	movs r0, #0xa0
	lsls r0, r0, #0x13
	adds r5, r1, r0
	adds r3, r3, r1
	ldr r4, _08015714 @ => 0x04000004
	ldrh r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080156FE
	adds r2, r4, #0
	movs r4, #2
_080156F4:
	ldrh r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080156F4
_080156FE:
	ldr r0, _08015718 @ => 0x040000D4
	str r3, [r0]
	str r5, [r0, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r1, r6
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08015714: .4byte 0x04000004
_08015718: .4byte 0x040000D4

	thumb_func_start FUN_0801571C
FUN_0801571C: @ 0x0801571C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r2, #0
	lsls r1, r1, #1
	movs r0, #0xa0
	lsls r0, r0, #0x13
	adds r4, r1, r0
	ldr r3, _08015758 @ => 0x04000004
	ldrh r1, [r3]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08015742
	movs r2, #2
_08015738:
	ldrh r1, [r3]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08015738
_08015742:
	ldr r0, _0801575C @ => 0x040000D4
	str r5, [r0]
	str r4, [r0, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r1, r6
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08015758: .4byte 0x04000004
_0801575C: .4byte 0x040000D4

	thumb_func_start FUN_08015760
FUN_08015760: @ 0x08015760
	push {lr}
	ldr r3, _0801576C @ => 0x03001AF8
	bl FUN_08015BC8
	pop {r0}
	bx r0
	.align 2, 0
_0801576C: .4byte gUnk_03001AF8

	thumb_func_start FUN_08015770
FUN_08015770: @ 0x08015770
	push {r4, lr}
	adds r4, r3, #0
	adds r0, r0, r1
	ldr r3, _08015788 @ => 0x03001AF8
	adds r1, r2, #0
	adds r2, r4, #0
	bl FUN_08015BC8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08015788: .4byte gUnk_03001AF8

	thumb_func_start FUN_0801578C
FUN_0801578C: @ 0x0801578C
	push {lr}
	ldr r3, _08015798 @ => 0x03001AF8
	bl FUN_08015BC8
	pop {r0}
	bx r0
	.align 2, 0
_08015798: .4byte gUnk_03001AF8

	thumb_func_start FUN_0801579C
FUN_0801579C: @ 0x0801579C
	push {lr}
	ldr r3, _080157A8 @ => 0x03001B00
	bl FUN_08015BC8
	pop {r0}
	bx r0
	.align 2, 0
_080157A8: .4byte gUnk_03001B00

	thumb_func_start FUN_080157AC
FUN_080157AC: @ 0x080157AC
	push {r4, lr}
	adds r4, r3, #0
	adds r0, r0, r1
	ldr r3, _080157C4 @ => 0x03001B00
	adds r1, r2, #0
	adds r2, r4, #0
	bl FUN_08015BC8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080157C4: .4byte gUnk_03001B00

	thumb_func_start FUN_080157C8
FUN_080157C8: @ 0x080157C8
	push {lr}
	ldr r3, _080157D4 @ => 0x03001B00
	bl FUN_08015BC8
	pop {r0}
	bx r0
	.align 2, 0
_080157D4: .4byte gUnk_03001B00

	thumb_func_start FUN_080157D8
FUN_080157D8: @ 0x080157D8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r3, _08015804 @ => 0x030034B0
	mov r8, r3
	ldr r5, [r3]
	ldr r6, _08015808 @ => 0x030035B0
	lsls r4, r5, #3
	adds r3, r6, #4
	adds r3, r4, r3
	str r0, [r3]
	adds r4, r4, r6
	strh r1, [r4]
	strh r2, [r4, #2]
	adds r5, #1
	mov r0, r8
	str r5, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08015804: .4byte gUnk_030034B0
_08015808: .4byte gUnk_030035B0

	thumb_func_start FUN_0801580C
FUN_0801580C: @ 0x0801580C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, _08015830 @ => 0x03001AF8
	ldr r0, [r4, #8]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r1, r6, #0
	adds r2, r5, #0
	bl FUN_0802CBAC
	ldr r0, [r4, #0xc]
	adds r1, r6, #0
	adds r2, r5, #0
	bl FUN_0802CBAC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08015830: .4byte gUnk_03001AF8

	thumb_func_start FUN_08015834
FUN_08015834: @ 0x08015834
	push {lr}
	bl FUN_08015C20
	bl FUN_08015DD0
	ldr r1, _08015848 @ => 0x030034B0
	movs r0, #0
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08015848: .4byte gUnk_030034B0

	thumb_func_start FUN_0801584C
FUN_0801584C: @ 0x0801584C
	push {lr}
	bl FUN_08015C48
	bl FUN_08015E18
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0801585C
FUN_0801585C: @ 0x0801585C
	push {r4, r5, lr}
	movs r4, #0
_08015860:
	lsls r1, r4, #3
	ldr r0, _080158A4 @ => 0x03003640
	adds r2, r1, r0
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08015876
	adds r0, r2, #0
	bl FUN_08015CE8
_08015876:
	adds r4, #1
	cmp r4, #0xb
	bls _08015860
	movs r5, #0
	movs r4, #0
_08015880:
	ldr r0, _080158A8 @ => 0x030034C0
	adds r2, r4, r0
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08015894
	adds r0, r2, #0
	bl FUN_08015FF4
_08015894:
	adds r4, #0x14
	adds r5, #1
	cmp r5, #0xb
	bls _08015880
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080158A4: .4byte gUnk_03003640
_080158A8: .4byte gUnk_030034C0

	thumb_func_start FUN_080158AC
FUN_080158AC: @ 0x080158AC
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r0, _080158E8 @ => 0x030034B0
	ldr r0, [r0]
	cmp r5, r0
	bhs _080158DA
	ldr r4, _080158EC @ => 0x030035B0
	adds r6, r4, #0
_080158BC:
	lsls r0, r5, #3
	adds r1, r6, #4
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	ldr r3, _080158F0 @ => 0x03001B00
	bl FUN_08015BC8
	adds r4, #8
	adds r5, #1
	ldr r0, _080158E8 @ => 0x030034B0
	ldr r0, [r0]
	cmp r5, r0
	blo _080158BC
_080158DA:
	ldr r1, _080158E8 @ => 0x030034B0
	movs r0, #0
	str r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080158E8: .4byte gUnk_030034B0
_080158EC: .4byte gUnk_030035B0
_080158F0: .4byte gUnk_03001B00

	thumb_func_start FUN_080158F4
FUN_080158F4: @ 0x080158F4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x15
	ldr r1, _08015904 @ => 0x03003640
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	bx lr
	.align 2, 0
_08015904: .4byte gUnk_03003640

	thumb_func_start FUN_08015908
FUN_08015908: @ 0x08015908
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r2, r0, #3
	ldr r1, _08015928 @ => 0x03003640
	adds r2, r2, r1
	ldrb r3, [r2]
	movs r1, #1
	orrs r1, r3
	strb r1, [r2]
	ldr r2, _0801592C @ => 0x03003630
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_08015928: .4byte gUnk_03003640
_0801592C: .4byte gUnk_03003630

	thumb_func_start FUN_08015930
FUN_08015930: @ 0x08015930
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r2, _08015968 @ => 0x03003640
	adds r4, r3, r2
	ldrb r3, [r4]
	movs r2, #0xfe
	ands r2, r3
	strb r2, [r4]
	ldr r3, _0801596C @ => 0x03003630
	movs r2, #1
	lsls r2, r0
	ldr r0, [r3]
	bics r0, r2
	str r0, [r3]
	cmp r1, #0
	beq _08015960
	ldrb r0, [r4, #3]
	strb r0, [r4, #4]
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
_08015960:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08015968: .4byte gUnk_03003640
_0801596C: .4byte gUnk_03003630

	thumb_func_start FUN_08015970
FUN_08015970: @ 0x08015970
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	adds r6, r3, #0
	bl FUN_08015C10
	lsls r1, r0, #3
	ldr r2, _080159AC @ => 0x03003640
	adds r1, r1, r2
	movs r2, #0
	strb r6, [r1]
	mov r3, r8
	strb r3, [r1, #1]
	strb r2, [r1, #2]
	strb r4, [r1, #3]
	strb r4, [r1, #4]
	adds r4, r4, r5
	subs r4, #1
	strb r4, [r1, #5]
	strb r5, [r1, #6]
	strb r5, [r1, #7]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080159AC: .4byte gUnk_03003640

	thumb_func_start FUN_080159B0
FUN_080159B0: @ 0x080159B0
	push {lr}
	adds r3, r1, #0
	lsls r0, r0, #3
	ldr r1, _080159CC @ => 0x03003640
	adds r1, r0, r1
	strb r2, [r1]
	strb r3, [r1, #1]
	ldrb r0, [r1, #2]
	cmp r0, r3
	bls _080159C6
	strb r3, [r1, #2]
_080159C6:
	pop {r0}
	bx r0
	.align 2, 0
_080159CC: .4byte gUnk_03003640

	thumb_func_start FUN_080159D0
FUN_080159D0: @ 0x080159D0
	push {lr}
	movs r1, #0
	movs r2, #8
	bl FUN_0802CB40
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080159E0
FUN_080159E0: @ 0x080159E0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	ldr r6, [sp, #0x28]
	str r4, [sp]
	str r5, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	bl FUN_08015A00
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_08015A00
FUN_08015A00: @ 0x08015A00
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	ldr r6, [sp, #0x28]
	ldr r7, [sp, #0x2c]
	str r4, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	bl FUN_08015A80
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r2, _08015A2C @ => 0x030034C0
	adds r1, r1, r2
	strb r7, [r1, #8]
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08015A2C: .4byte gUnk_030034C0

	thumb_func_start FUN_08015A30
FUN_08015A30: @ 0x08015A30
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r2, #0
	ldrb r4, [r0, #4]
	ldrb r5, [r0, #5]
	ldrb r2, [r0, #6]
	ldrb r3, [r0, #7]
	str r1, [sp]
	ldr r0, [r0]
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_08015A64
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r2, _08015A60 @ => 0x030034C0
	adds r1, r1, r2
	strb r6, [r1, #8]
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08015A60: .4byte gUnk_030034C0

	thumb_func_start FUN_08015A64
FUN_08015A64: @ 0x08015A64
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	str r4, [sp]
	str r5, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	bl FUN_08015A80
	add sp, #0xc
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start FUN_08015A80
FUN_08015A80: @ 0x08015A80
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	mov sb, r1
	adds r6, r2, #0
	mov r8, r3
	ldr r7, [sp, #0x1c]
	ldr r5, [sp, #0x20]
	bl FUN_08015D90
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r2, _08015AD4 @ => 0x030034C0
	adds r1, r1, r2
	movs r2, #0
	strh r7, [r1]
	strb r6, [r1, #2]
	strb r6, [r1, #3]
	mov r3, r8
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	strb r4, [r1, #6]
	add r4, sb
	subs r4, #1
	strb r4, [r1, #7]
	mov r3, sb
	strh r3, [r1, #0xa]
	strb r2, [r1, #8]
	strb r2, [r1, #9]
	ldr r2, [sp, #0x24]
	adds r5, r5, r2
	str r5, [r1, #0xc]
	str r5, [r1, #0x10]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08015AD4: .4byte gUnk_030034C0

	thumb_func_start FUN_08015AD8
FUN_08015AD8: @ 0x08015AD8
	push {lr}
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08015AF0 @ => 0x030034C0
	adds r0, r0, r1
	bl FUN_08015DF8
	pop {r0}
	bx r0
	.align 2, 0
_08015AF0: .4byte gUnk_030034C0

	thumb_func_start FUN_08015AF4
FUN_08015AF4: @ 0x08015AF4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r6, r1, #1
	ldr r5, _08015B1C @ => 0x03001AF8
	lsls r4, r4, #1
	ldr r0, [r5, #8]
	adds r0, r0, r4
	movs r1, #0
	adds r2, r6, #0
	bl FUN_0802CB40
	ldr r0, [r5, #0xc]
	adds r0, r0, r4
	movs r1, #0
	adds r2, r6, #0
	bl FUN_0802CB40
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08015B1C: .4byte gUnk_03001AF8

	thumb_func_start FUN_08015B20
FUN_08015B20: @ 0x08015B20
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r6, _08015B4C @ => 0x03001AF8
	lsls r4, r4, #1
	ldr r1, [r6]
	adds r1, r1, r4
	lsls r5, r5, #1
	adds r0, r1, #0
	adds r2, r5, #0
	bl FUN_08015548
	ldr r1, [r6, #4]
	adds r1, r1, r4
	adds r0, r1, #0
	adds r2, r5, #0
	bl FUN_08015548
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08015B4C: .4byte gUnk_03001AF8

	thumb_func_start FUN_08015B50
FUN_08015B50: @ 0x08015B50
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r6, _08015B7C @ => 0x03001AF8
	lsls r4, r4, #1
	ldr r1, [r6, #8]
	adds r1, r1, r4
	lsls r5, r5, #1
	adds r0, r1, #0
	adds r2, r5, #0
	bl FUN_08015548
	ldr r1, [r6, #0xc]
	adds r1, r1, r4
	adds r0, r1, #0
	adds r2, r5, #0
	bl FUN_08015548
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08015B7C: .4byte gUnk_03001AF8

	thumb_func_start FUN_08015B80
FUN_08015B80: @ 0x08015B80
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r6, _08015BAC @ => 0x03001AF8
	lsls r4, r4, #1
	ldr r1, [r6]
	adds r1, r1, r4
	lsls r5, r5, #1
	adds r0, r1, #0
	adds r2, r5, #0
	bl FUN_080155EC
	ldr r1, [r6, #4]
	adds r1, r1, r4
	adds r0, r1, #0
	adds r2, r5, #0
	bl FUN_080155EC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08015BAC: .4byte gUnk_03001AF8

	thumb_func_start FUN_08015BB0
FUN_08015BB0: @ 0x08015BB0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0x80
	lsls r0, r0, #2
	bl FUN_0802C9DC
	str r0, [r4]
	str r5, [r4, #4]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_08015BC8
FUN_08015BC8: @ 0x08015BC8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r5, r1, #0
	adds r4, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #1
	lsls r5, r5, #1
	ldr r0, [r6]
	adds r7, r0, r5
	adds r0, r7, #0
	mov r1, r8
	adds r2, r4, #0
	bl FUN_0802CBAC
	adds r2, r7, #0
	ldr r0, [r6, #4]
	adds r7, r0, r5
	ldr r1, _08015C0C @ => 0x040000D4
	str r2, [r1]
	str r7, [r1, #4]
	lsrs r4, r4, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r4, r0
	str r4, [r1, #8]
	ldr r0, [r1, #8]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015C0C: .4byte 0x040000D4

	thumb_func_start FUN_08015C10
FUN_08015C10: @ 0x08015C10
	ldr r1, _08015C1C @ => 0x030034B4
	ldr r2, [r1]
	adds r0, r2, #0
	adds r2, #1
	str r2, [r1]
	bx lr
	.align 2, 0
_08015C1C: .4byte gUnk_030034B4

	thumb_func_start FUN_08015C20
FUN_08015C20: @ 0x08015C20
	push {r4, r5, lr}
	ldr r1, _08015C40 @ => 0x030034B4
	movs r0, #0
	str r0, [r1]
	movs r5, #0
	ldr r4, _08015C44 @ => 0x03003640
_08015C2C:
	adds r0, r4, #0
	bl FUN_080159D0
	adds r4, #8
	adds r5, #1
	cmp r5, #0xb
	bls _08015C2C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08015C40: .4byte gUnk_030034B4
_08015C44: .4byte gUnk_03003640

	thumb_func_start FUN_08015C48
FUN_08015C48: @ 0x08015C48
	push {r4, lr}
	movs r4, #0
_08015C4C:
	lsls r1, r4, #3
	ldr r0, _08015C70 @ => 0x03003640
	adds r2, r1, r0
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08015C62
	adds r0, r2, #0
	bl FUN_08015C74
_08015C62:
	adds r4, #1
	cmp r4, #0xb
	bls _08015C4C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08015C70: .4byte gUnk_03003640

	thumb_func_start FUN_08015C74
FUN_08015C74: @ 0x08015C74
	push {r4, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #2]
	cmp r0, #0
	bne _08015CDC
	ldrb r1, [r2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08015C98
	ldrb r0, [r2, #4]
	ldrb r1, [r2, #3]
	cmp r0, r1
	bne _08015C94
	ldrb r0, [r2, #5]
	b _08015CA6
_08015C94:
	subs r0, #1
	b _08015CA6
_08015C98:
	ldrb r0, [r2, #4]
	ldrb r4, [r2, #5]
	cmp r0, r4
	bne _08015CA4
	ldrb r0, [r2, #3]
	b _08015CA6
_08015CA4:
	adds r0, #1
_08015CA6:
	strb r0, [r2, #4]
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08015CD0
	movs r3, #0x20
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08015CC2
	ldrb r0, [r2, #4]
	ldrb r4, [r2, #3]
	b _08015CC6
_08015CC2:
	ldrb r0, [r2, #4]
	ldrb r4, [r2, #5]
_08015CC6:
	cmp r0, r4
	bne _08015CD0
	adds r0, r1, #0
	eors r0, r3
	strb r0, [r2]
_08015CD0:
	ldrb r0, [r2]
	movs r1, #2
	orrs r1, r0
	strb r1, [r2]
	ldrb r0, [r2, #1]
	b _08015CDE
_08015CDC:
	subs r0, #1
_08015CDE:
	strb r0, [r2, #2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08015CE8
FUN_08015CE8: @ 0x08015CE8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r2, [r6]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08015D84
	movs r1, #0xfd
	ands r1, r2
	strb r1, [r6]
	movs r0, #4
	ands r0, r1
	ldr r3, _08015D34 @ => 0x03001AF8
	cmp r0, #0
	beq _08015D08
	adds r3, #8
_08015D08:
	ldrb r0, [r6, #4]
	ldrb r1, [r6, #3]
	cmp r0, r1
	bne _08015D3C
	ldr r2, _08015D38 @ => 0x040000D4
	ldrb r1, [r6, #3]
	lsls r1, r1, #1
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r2]
	ldrb r1, [r6, #3]
	lsls r1, r1, #1
	ldr r0, [r3, #4]
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrb r0, [r6, #6]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	b _08015D82
	.align 2, 0
_08015D34: .4byte gUnk_03001AF8
_08015D38: .4byte 0x040000D4
_08015D3C:
	ldrb r0, [r6, #5]
	ldrb r1, [r6, #4]
	subs r0, r0, r1
	adds r1, r0, #1
	ldr r2, _08015D8C @ => 0x040000D4
	ldrb r0, [r6, #3]
	lsls r0, r0, #1
	ldr r4, [r3]
	adds r0, r4, r0
	str r0, [r2]
	ldrb r0, [r6, #4]
	lsls r0, r0, #1
	ldr r3, [r3, #4]
	adds r0, r3, r0
	str r0, [r2, #4]
	movs r5, #0x80
	lsls r5, r5, #0x18
	orrs r1, r5
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	ldrb r1, [r6, #4]
	ldrb r0, [r6, #3]
	subs r1, r1, r0
	ldrb r0, [r6, #5]
	subs r0, r0, r1
	adds r0, #1
	lsls r0, r0, #1
	adds r4, r4, r0
	str r4, [r2]
	ldrb r0, [r6, #3]
	lsls r0, r0, #1
	adds r3, r3, r0
	str r3, [r2, #4]
	orrs r1, r5
	str r1, [r2, #8]
_08015D82:
	ldr r0, [r2, #8]
_08015D84:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08015D8C: .4byte 0x040000D4

	thumb_func_start FUN_08015D90
FUN_08015D90: @ 0x08015D90
	push {lr}
	movs r3, #0
	ldr r2, _08015D9C @ => 0x030034C0
	ldrh r1, [r2]
	b _08015DB4
	.align 2, 0
_08015D9C: .4byte gUnk_030034C0
_08015DA0:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xb
	bhi _08015DC4
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r0]
_08015DB4:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08015DA0
	ldr r1, _08015DCC @ => 0x030036A0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08015DC4:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0
_08015DCC: .4byte gUnk_030036A0

	thumb_func_start FUN_08015DD0
FUN_08015DD0: @ 0x08015DD0
	push {r4, r5, lr}
	ldr r1, _08015DF0 @ => 0x030036A0
	movs r0, #0
	str r0, [r1]
	movs r5, #0
	ldr r4, _08015DF4 @ => 0x030034C0
_08015DDC:
	adds r0, r4, #0
	bl FUN_08015DF8
	adds r4, #0x14
	adds r5, #1
	cmp r5, #0xb
	bls _08015DDC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08015DF0: .4byte gUnk_030036A0
_08015DF4: .4byte gUnk_030034C0

	thumb_func_start FUN_08015DF8
FUN_08015DF8: @ 0x08015DF8
	push {lr}
	movs r1, #0
	movs r2, #0x14
	bl FUN_0802CB40
	ldr r1, _08015E14 @ => 0x030036A0
	ldr r0, [r1]
	cmp r0, #0
	beq _08015E0E
	subs r0, #1
	str r0, [r1]
_08015E0E:
	pop {r0}
	bx r0
	.align 2, 0
_08015E14: .4byte gUnk_030036A0

	thumb_func_start FUN_08015E18
FUN_08015E18: @ 0x08015E18
	push {r4, r5, r6, lr}
	movs r4, #0
	movs r6, #0
	ldr r0, _08015E58 @ => 0x030036A0
	ldr r0, [r0]
	cmp r4, r0
	bhi _08015E52
	movs r5, #0
_08015E28:
	ldr r0, _08015E5C @ => 0x030034C0
	adds r2, r5, r0
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08015E42
	adds r0, r2, #0
	bl FUN_08015E60
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08015E42:
	adds r5, #0x14
	adds r6, #1
	cmp r6, #0xb
	bhi _08015E52
	ldr r0, _08015E58 @ => 0x030036A0
	ldr r0, [r0]
	cmp r4, r0
	bls _08015E28
_08015E52:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08015E58: .4byte gUnk_030036A0
_08015E5C: .4byte gUnk_030034C0

	thumb_func_start FUN_08015E60
FUN_08015E60: @ 0x08015E60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r2, r0, #0
	ldrh r1, [r2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08015E92
	ldrb r0, [r2, #4]
	subs r0, #1
	strb r0, [r2, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08015E8E
	movs r1, #1
	ldrb r0, [r2, #5]
	strb r0, [r2, #4]
	b _08015E94
_08015E8E:
	movs r1, #0
	b _08015E94
_08015E92:
	movs r1, #1
_08015E94:
	ldrb r3, [r2, #3]
	cmp r3, #0
	bne _08015EF0
	ldrh r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08015EC6
	ldrb r0, [r2, #9]
	adds r0, #1
	strb r0, [r2, #9]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r2, #8]
	cmp r0, r1
	blo _08015EB6
	strb r3, [r2, #9]
_08015EB6:
	ldrb r0, [r2, #2]
	strb r0, [r2, #3]
	ldrb r1, [r2, #9]
	lsls r1, r1, #5
	ldr r0, [r2, #0xc]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	b _08015FE4
_08015EC6:
	ldr r0, _08015EE8 @ => 0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	adds r0, r2, #0
	movs r1, #0
	movs r2, #0x14
	bl FUN_0802CB40
	ldr r1, _08015EEC @ => 0x030036A0
	ldr r0, [r1]
	cmp r0, #0
	bne _08015EE0
	b _08015FE4
_08015EE0:
	subs r0, #1
	str r0, [r1]
	b _08015FE4
	.align 2, 0
_08015EE8: .4byte 0x0000FFFE
_08015EEC: .4byte gUnk_030036A0
_08015EF0:
	cmp r1, #0
	beq _08015FE4
	ldrh r1, [r2]
	movs r0, #4
	ands r0, r1
	adds r4, r1, #0
	cmp r0, #0
	beq _08015F0C
	ldr r0, _08015F08 @ => 0x03001AF8
	ldr r0, [r0, #8]
	b _08015F10
	.align 2, 0
_08015F08: .4byte gUnk_03001AF8
_08015F0C:
	ldr r0, _08015F2C @ => 0x03001AF8
	ldr r0, [r0]
_08015F10:
	mov sb, r0
	ldrb r1, [r2, #6]
	lsls r3, r1, #1
	add sb, r3
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _08015F30
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #1
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	b _08015F34
	.align 2, 0
_08015F2C: .4byte gUnk_03001AF8
_08015F30:
	ldr r0, [r2, #0x10]
	adds r0, r0, r3
_08015F34:
	str r0, [sp]
	ldrh r0, [r2, #0xa]
	mov sl, r0
	cmp r0, #0
	beq _08015FD6
_08015F3E:
	mov r1, sb
	ldrh r7, [r1]
	ldr r0, [sp]
	ldrh r3, [r0]
	cmp r7, r3
	beq _08015FC2
	movs r6, #0x1f
	ands r6, r7
	movs r0, #0x1f
	ands r0, r3
	subs r0, r0, r6
	ldrb r1, [r2, #3]
	mov r8, r1
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl __divsi3
	adds r6, r6, r0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	movs r5, #0xf8
	lsls r5, r5, #2
	ands r5, r7
	lsrs r5, r5, #5
	movs r0, #0xf8
	lsls r0, r0, #2
	ldr r3, [sp, #8]
	ands r0, r3
	lsrs r0, r0, #5
	subs r0, r0, r5
	mov r1, r8
	bl __divsi3
	adds r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r4, #0xf8
	lsls r4, r4, #7
	ands r4, r7
	lsrs r4, r4, #0xa
	movs r0, #0xf8
	lsls r0, r0, #7
	ldr r3, [sp, #8]
	ands r0, r3
	lsrs r0, r0, #0xa
	subs r0, r0, r4
	mov r1, r8
	bl __divsi3
	adds r4, r4, r0
	lsls r4, r4, #0x10
	movs r0, #0x1f
	ands r6, r0
	lsls r5, r5, #5
	movs r1, #0xf8
	lsls r1, r1, #2
	ands r5, r1
	orrs r6, r5
	lsrs r4, r4, #6
	movs r0, #0xf8
	lsls r0, r0, #7
	ands r4, r0
	orrs r6, r4
	mov r1, sb
	strh r6, [r1]
	ldr r2, [sp, #4]
_08015FC2:
	movs r0, #2
	add sb, r0
	ldr r1, [sp]
	adds r1, #2
	str r1, [sp]
	subs r0, #3
	add sl, r0
	mov r1, sl
	cmp r1, #0
	bne _08015F3E
_08015FD6:
	ldrh r0, [r2]
	movs r1, #2
	orrs r1, r0
	strh r1, [r2]
	ldrb r0, [r2, #3]
	subs r0, #1
	strb r0, [r2, #3]
_08015FE4:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_08015FF4
FUN_08015FF4: @ 0x08015FF4
	push {r4, lr}
	adds r3, r0, #0
	ldrh r2, [r3]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08016036
	ldr r1, _0801603C @ => 0x0000FFFD
	ands r1, r2
	strh r1, [r3]
	movs r0, #4
	ands r0, r1
	ldr r4, _08016040 @ => 0x03001AF8
	cmp r0, #0
	beq _08016014
	adds r4, #8
_08016014:
	ldr r2, _08016044 @ => 0x040000D4
	ldrb r1, [r3, #6]
	lsls r1, r1, #1
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r2]
	ldrb r1, [r3, #6]
	lsls r1, r1, #1
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrh r0, [r3, #0xa]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_08016036:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801603C: .4byte 0x0000FFFD
_08016040: .4byte gUnk_03001AF8
_08016044: .4byte 0x040000D4

	thumb_func_start FUN_08016048
FUN_08016048: @ 0x08016048
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	ldrb r0, [r4, #4]
	ldrb r1, [r4, #5]
	bl FUN_08009B4C
	mov r8, r0
	cmp r0, #0
	beq _080160FC
	movs r6, #0
	ldr r0, _08016098 @ => 0x030042B0
	ldrh r0, [r0, #4]
	cmp r6, r0
	bhs _080160FC
	ldr r0, _0801609C @ => 0x03003460
	movs r1, #0x20
	adds r1, r1, r0
	mov sl, r1
	movs r7, #0
	adds r5, r0, #0
	movs r2, #0
	mov sb, r2
_0801607C:
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	movs r0, #5
	bl FUN_08011024
	ldr r0, _080160A0 @ => 0x03004200
	add r0, sb
	ldr r1, [r0]
	mov r2, r8
	ldrh r0, [r2, #8]
	cmp r0, #0
	bne _080160A4
	str r1, [r5]
	b _080160A8
	.align 2, 0
_08016098: .4byte gUnk_030042B0
_0801609C: .4byte gUnk_03003460
_080160A0: .4byte gUnk_03004200
_080160A4:
	mov r0, r8
	str r0, [r5]
_080160A8:
	movs r1, #6
	ldrsh r0, [r4, r1]
	bl FUN_0802C628
	ldr r2, _080160D0 @ => 0x03003460
	adds r1, r2, #0
	adds r1, #0xc
	adds r1, r7, r1
	str r0, [r1]
	adds r1, r7, r2
	ldrh r0, [r4, #8]
	movs r3, #0
	strh r0, [r1, #0x14]
	cmp r6, #0
	bne _080160D4
	ldrb r0, [r4, #0xa]
	strb r0, [r2, #0x1d]
	ldrb r0, [r4, #0xb]
	strb r0, [r2, #0x1e]
	b _080160D8
	.align 2, 0
_080160D0: .4byte gUnk_03003460
_080160D4:
	strb r3, [r1, #0x1d]
	strb r3, [r1, #0x1e]
_080160D8:
	movs r0, #1
	strb r0, [r5, #0x1f]
	movs r2, #0
	strh r2, [r5, #0x16]
	movs r1, #0
	mov r0, sl
	strb r1, [r0]
	movs r2, #0x24
	add sl, r2
	adds r7, #0x24
	adds r5, #0x24
	movs r0, #0x14
	add sb, r0
	adds r6, #1
	ldr r0, _0801610C @ => 0x030042B0
	ldrh r0, [r0, #4]
	cmp r6, r0
	blo _0801607C
_080160FC:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801610C: .4byte gUnk_030042B0

	thumb_func_start FUN_08016110
FUN_08016110: @ 0x08016110
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	movs r6, #0
	ldr r0, _08016178 @ => 0x030042B0
	ldrh r0, [r0, #4]
	cmp r6, r0
	bhs _08016194
	ldr r4, _0801617C @ => 0x03003460
	mov r8, r6
	adds r7, r4, #0
	adds r7, #0x18
_0801612A:
	movs r0, #5
	adds r1, r6, #0
	bl FUN_08011024
	lsls r0, r6, #3
	adds r0, r0, r6
	lsls r3, r0, #2
	adds r1, r4, #0
	adds r1, #0xc
	adds r1, r3, r1
	movs r2, #6
	ldrsh r0, [r5, r2]
	lsls r0, r0, #0x10
	str r0, [r1]
	adds r2, r4, #0
	adds r2, #0x10
	adds r2, r3, r2
	ldrh r1, [r5, #4]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	str r0, [r2]
	adds r1, r3, r4
	movs r0, #3
	strb r0, [r1, #0x1f]
	mov r0, r8
	strh r0, [r1, #0x14]
	ldrb r0, [r5, #8]
	strb r0, [r1, #0x1d]
	ldrb r0, [r5, #9]
	strb r0, [r1, #0x1e]
	ldr r0, [r2]
	cmp r0, #0
	bne _08016180
	adds r1, r3, r7
	movs r0, #1
	str r0, [r1]
	b _08016186
	.align 2, 0
_08016178: .4byte gUnk_030042B0
_0801617C: .4byte gUnk_03003460
_08016180:
	adds r0, r3, r7
	mov r1, r8
	str r1, [r0]
_08016186:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _080161A0 @ => 0x030042B0
	ldrh r0, [r0, #4]
	cmp r6, r0
	blo _0801612A
_08016194:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080161A0: .4byte gUnk_030042B0

	thumb_func_start FUN_080161A4
FUN_080161A4: @ 0x080161A4
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0x12
	bl FUN_080014C4
	movs r0, #0
	bl FUN_0801EFAC
	adds r5, r0, #0
	ldrh r0, [r4, #4]
	movs r2, #0x9b
	lsls r2, r2, #1
	adds r1, r5, r2
	strh r0, [r1]
	ldrh r1, [r4, #6]
	adds r2, #2
	adds r0, r5, r2
	strh r1, [r0]
	ldrb r0, [r4, #9]
	adds r2, #2
	adds r1, r5, r2
	strb r0, [r1]
	ldrb r0, [r4, #0xa]
	adds r2, #1
	adds r1, r5, r2
	strb r0, [r1]
	ldrb r1, [r4, #8]
	subs r2, #0x1b
	adds r0, r5, r2
	strh r1, [r0]
	adds r0, r5, #0
	movs r1, #3
	bl FUN_08001FB0
	ldrb r1, [r4, #0xb]
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r0, r5, r2
	strb r1, [r0]
	ldrb r0, [r4, #0xc]
	adds r2, #1
	adds r1, r5, r2
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08016204
FUN_08016204: @ 0x08016204
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	ldrb r1, [r4, #9]
	bl FUN_08009B4C
	adds r2, r0, #0
	cmp r2, #0
	beq _080162B6
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r3, #4
	ldrsh r0, [r4, r3]
	str r0, [r1]
	movs r5, #0x9c
	lsls r5, r5, #1
	adds r1, r2, r5
	movs r3, #6
	ldrsh r0, [r4, r3]
	str r0, [r1]
	ldrb r1, [r4, #0xc]
	adds r5, #0xc
	adds r0, r2, r5
	movs r3, #0
	strb r1, [r0]
	ldrb r0, [r4, #0xa]
	adds r5, #1
	adds r1, r2, r5
	strb r0, [r1]
	ldrb r0, [r4, #0xb]
	movs r4, #0xa3
	lsls r4, r4, #1
	adds r1, r2, r4
	strb r0, [r1]
	adds r5, #3
	adds r0, r2, r5
	str r3, [r0]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _080162AE
	subs r4, #6
	adds r1, r2, r4
	str r3, [r1]
	ldr r0, [r2, #0xc]
	movs r3, #4
	ands r0, r3
	cmp r0, #0
	beq _0801626E
	str r3, [r1]
_0801626E:
	ldr r0, [r2, #0xc]
	movs r3, #0x80
	lsls r3, r3, #2
	ands r0, r3
	cmp r0, #0
	beq _08016280
	ldr r0, [r1]
	orrs r0, r3
	str r0, [r1]
_08016280:
	ldr r0, [r2, #0xc]
	movs r3, #0x40
	ands r0, r3
	cmp r0, #0
	beq _08016290
	ldr r0, [r1]
	orrs r0, r3
	str r0, [r1]
_08016290:
	ldr r0, [r2, #0xc]
	movs r3, #0x80
	lsls r3, r3, #9
	ands r0, r3
	cmp r0, #0
	beq _080162A2
	ldr r0, [r1]
	orrs r0, r3
	str r0, [r1]
_080162A2:
	ldr r0, [r2, #0xc]
	ldr r1, _080162BC @ => 0xFFFEFDBB
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	str r0, [r2, #0xc]
_080162AE:
	adds r0, r2, #0
	movs r1, #0xa
	bl FUN_08001FB0
_080162B6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080162BC: .4byte 0xFFFEFDBB

	thumb_func_start FUN_080162C0
FUN_080162C0: @ 0x080162C0
	push {r4, r5, lr}
	ldrb r0, [r0, #4]
	cmp r0, #1
	bne _0801631C
	ldr r5, _08016314 @ => 0x03004200
	ldr r4, _08016318 @ => 0x030042B0
	ldrh r1, [r4, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0xd
	bl FUN_08001FB0
	ldrh r1, [r4, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r2, #0x91
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r0, #0xd
	strb r0, [r1]
	ldrh r1, [r4, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0x81
	lsls r1, r1, #2
	bl FUN_08002038
	bl FUN_08024A10
	movs r0, #0
	bl FUN_080410BC
	b _0801636E
	.align 2, 0
_08016314: .4byte gUnk_03004200
_08016318: .4byte gUnk_030042B0
_0801631C:
	ldr r5, _08016374 @ => 0x03004200
	ldr r4, _08016378 @ => 0x030042B0
	ldrh r1, [r4, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl FUN_08001FB0
	ldrh r1, [r4, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r2, #0x91
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	bl FUN_080410BC
	bl FUN_08024A1C
	ldr r0, _0801637C @ => 0x03003DF0
	ldr r1, _08016380 @ => 0x00000404
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801636E
	ldrh r0, [r4, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl FUN_0800883C
_0801636E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08016374: .4byte gUnk_03004200
_08016378: .4byte gUnk_030042B0
_0801637C: .4byte gUnk_03003DF0
_08016380: .4byte 0x00000404

	thumb_func_start FUN_08016384
FUN_08016384: @ 0x08016384
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	ldrb r1, [r4, #9]
	bl FUN_08009B4C
	adds r2, r0, #0
	cmp r2, #0
	beq _0801644A
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r3, #4
	ldrsh r0, [r4, r3]
	str r0, [r1]
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r3, #6
	ldrsh r0, [r4, r3]
	str r0, [r1]
	ldrb r1, [r4, #0xc]
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r0, r2, r3
	strb r1, [r0]
	ldrb r0, [r4, #0xa]
	adds r3, #1
	adds r1, r2, r3
	strb r0, [r1]
	ldrb r0, [r4, #0xb]
	adds r3, #1
	adds r1, r2, r3
	strb r0, [r1]
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #1
	str r0, [r1]
	subs r3, #0xa
	adds r1, r2, r3
	ldr r0, [r2, #0x14]
	str r0, [r1]
	ldr r1, [r2, #0x14]
	lsls r0, r1, #1
	adds r0, r0, r1
	str r0, [r2, #0x14]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _08016442
	adds r3, #4
	adds r1, r2, r3
	movs r0, #0
	str r0, [r1]
	ldr r0, [r2, #0xc]
	movs r3, #4
	ands r0, r3
	cmp r0, #0
	beq _08016402
	str r3, [r1]
_08016402:
	ldr r0, [r2, #0xc]
	movs r3, #0x80
	lsls r3, r3, #2
	ands r0, r3
	cmp r0, #0
	beq _08016414
	ldr r0, [r1]
	orrs r0, r3
	str r0, [r1]
_08016414:
	ldr r0, [r2, #0xc]
	movs r3, #0x40
	ands r0, r3
	cmp r0, #0
	beq _08016424
	ldr r0, [r1]
	orrs r0, r3
	str r0, [r1]
_08016424:
	ldr r0, [r2, #0xc]
	movs r3, #0x80
	lsls r3, r3, #9
	ands r0, r3
	cmp r0, #0
	beq _08016436
	ldr r0, [r1]
	orrs r0, r3
	str r0, [r1]
_08016436:
	ldr r0, [r2, #0xc]
	ldr r1, _08016450 @ => 0xFFFEFDBB
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	str r0, [r2, #0xc]
_08016442:
	adds r0, r2, #0
	movs r1, #0xa
	bl FUN_08001FB0
_0801644A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08016450: .4byte 0xFFFEFDBB

	thumb_func_start FUN_08016454
FUN_08016454: @ 0x08016454
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #4]
	ldrb r1, [r4, #5]
	bl FUN_08009B4C
	adds r2, r0, #0
	cmp r2, #0
	beq _080164EE
	ldrb r1, [r4, #6]
	movs r3, #0x9c
	lsls r3, r3, #1
	adds r0, r2, r3
	movs r3, #0
	strb r1, [r0]
	ldr r5, _080164F4 @ => 0x00000139
	adds r0, r2, r5
	strb r3, [r0]
	ldrb r1, [r4, #7]
	adds r5, #3
	adds r0, r2, r5
	strb r1, [r0]
	ldrb r0, [r4, #8]
	ldr r4, _080164F8 @ => 0x0000013D
	adds r1, r2, r4
	strb r0, [r1]
	subs r5, #0x20
	adds r0, r2, r5
	ldrb r0, [r0]
	cmp r0, #0x4c
	beq _080164E6
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r1, r2, r0
	str r3, [r1]
	ldr r0, [r2, #0xc]
	movs r3, #4
	ands r0, r3
	cmp r0, #0
	beq _080164A6
	str r3, [r1]
_080164A6:
	ldr r0, [r2, #0xc]
	movs r3, #0x80
	lsls r3, r3, #2
	ands r0, r3
	cmp r0, #0
	beq _080164B8
	ldr r0, [r1]
	orrs r0, r3
	str r0, [r1]
_080164B8:
	ldr r0, [r2, #0xc]
	movs r3, #0x40
	ands r0, r3
	cmp r0, #0
	beq _080164C8
	ldr r0, [r1]
	orrs r0, r3
	str r0, [r1]
_080164C8:
	ldr r0, [r2, #0xc]
	movs r3, #0x80
	lsls r3, r3, #9
	ands r0, r3
	cmp r0, #0
	beq _080164DA
	ldr r0, [r1]
	orrs r0, r3
	str r0, [r1]
_080164DA:
	ldr r0, [r2, #0xc]
	ldr r1, _080164FC @ => 0xFFFEFDBB
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	str r0, [r2, #0xc]
_080164E6:
	adds r0, r2, #0
	movs r1, #0x4c
	bl FUN_08001FB0
_080164EE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080164F4: .4byte 0x00000139
_080164F8: .4byte 0x0000013D
_080164FC: .4byte 0xFFFEFDBB

	thumb_func_start FUN_08016500
FUN_08016500: @ 0x08016500
	push {r4, lr}
	ldrb r2, [r0, #4]
	ldrb r1, [r0, #5]
	adds r0, r2, #0
	bl FUN_08009B4C
	adds r4, r0, #0
	cmp r4, #0
	beq _08016520
	movs r1, #1
	bl FUN_08001FB0
	ldr r0, [r4, #0xc]
	movs r1, #8
	orrs r0, r1
	str r0, [r4, #0xc]
_08016520:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08016528
FUN_08016528: @ 0x08016528
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #4]
	ldrb r1, [r4, #5]
	bl FUN_08009B4C
	adds r5, r0, #0
	cmp r5, #0
	beq _08016552
	movs r1, #6
	ldrsh r0, [r4, r1]
	bl FUN_0802C628
	str r0, [r5, #0x14]
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r2, r5, r0
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
_08016552:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_08016558
FUN_08016558: @ 0x08016558
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #4]
	ldrb r1, [r4, #5]
	bl FUN_08009B4C
	cmp r0, #0
	beq _08016570
	ldrb r1, [r4, #6]
	ldrb r2, [r4, #7]
	bl FUN_0801713C
_08016570:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08016578
FUN_08016578: @ 0x08016578
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r7, [r5, #4]
	adds r0, r7, #0
	bl FUN_08009A30
	cmp r0, #0
	bne _080165B4
	adds r0, r7, #0
	bl FUN_08009A98
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r4, #0
	cmp r4, r6
	bhs _080165B4
_08016598:
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	adds r0, r7, #0
	bl FUN_08009B4C
	cmp r0, #0
	beq _080165AE
	ldrb r1, [r5, #5]
	ldrb r2, [r5, #6]
	bl FUN_0801713C
_080165AE:
	adds r4, #1
	cmp r4, r6
	blo _08016598
_080165B4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080165BC
FUN_080165BC: @ 0x080165BC
	push {lr}
	bl FUN_0804E094
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080165C8
FUN_080165C8: @ 0x080165C8
	push {lr}
	bl FUN_0804E0C4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080165D4
FUN_080165D4: @ 0x080165D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08016600 @ => 0x03006528
	ldrb r2, [r1, #6]
	movs r0, #8
	ldrb r3, [r1, #6]
	orrs r0, r2
	strb r0, [r1, #6]
	ldr r0, _08016604 @ => 0x03003DF0
	ldr r1, _08016608 @ => 0x000003F6
	adds r2, r0, r1
	ldrb r1, [r4, #4]
	ldrb r0, [r2]
	cmp r0, r1
	beq _080165FA
	strb r1, [r2]
	ldrb r0, [r4, #4]
	bl FUN_0804DE84
_080165FA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08016600: .4byte gUnk_03006528
_08016604: .4byte gUnk_03003DF0
_08016608: .4byte 0x000003F6

	thumb_func_start FUN_0801660C
FUN_0801660C: @ 0x0801660C
	push {lr}
	ldrb r0, [r0, #4]
	bl FUN_0804DE0C
	pop {r0}
	bx r0

	thumb_func_start FUN_08016618
FUN_08016618: @ 0x08016618
	push {lr}
	ldrb r0, [r0, #4]
	bl FUN_0804DFD0
	pop {r0}
	bx r0

	thumb_func_start FUN_08016224
FUN_08016224: @ 0x08016624
	push {lr}
	ldrb r0, [r0, #4]
	bl FUN_0804DFB4
	pop {r0}
	bx r0

	thumb_func_start FUN_08016630
FUN_08016630: @ 0x08016630
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	bl FUN_0801EFAC
	adds r2, r0, #0
	ldrh r1, [r4, #4]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r2, r3
	strh r1, [r0]
	ldrb r1, [r4, #6]
	adds r3, #0x1c
	adds r0, r2, r3
	strb r1, [r0]
	ldrb r0, [r4, #7]
	adds r3, #1
	adds r1, r2, r3
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_0801665C
FUN_0801665C: @ 0x0801665C
	push {lr}
	ldrb r2, [r0, #4]
	ldrb r1, [r0, #5]
	adds r0, r2, #0
	bl FUN_08009B4C
	cmp r0, #0
	beq _08016672
	movs r1, #3
	bl FUN_08001FB0
_08016672:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08016678
FUN_08016678: @ 0x08016678
	push {r4, lr}
	adds r3, r0, #0
	movs r2, #0
	ldr r4, _080166AC @ => 0x03004228
_08016680:
	adds r1, r2, r4
	ldrb r0, [r3, #5]
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _08016680
	ldrb r2, [r3, #4]
	movs r0, #1
	movs r1, #0
	bl FUN_0802CED4
	ldr r2, _080166B0 @ => 0x03004374
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080166AC: .4byte gUnk_03004228
_080166B0: .4byte gUnk_03004374

	thumb_func_start FUN_080166B4
FUN_080166B4: @ 0x080166B4
	push {r4, r5, lr}
	movs r1, #0
	ldr r2, _080166E8 @ => 0x030042B0
	ldr r5, _080166EC @ => 0x030036A4
	ldrh r0, [r2, #4]
	cmp r1, r0
	bhs _080166DC
	ldr r4, _080166F0 @ => 0x03003460
	movs r3, #0
_080166C6:
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	strb r3, [r0, #0x1f]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldrh r0, [r2, #4]
	cmp r1, r0
	blo _080166C6
_080166DC:
	ldr r0, [r5]
	bl FUN_0804E03C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080166E8: .4byte gUnk_030042B0
_080166EC: .4byte gUnk_030036A4
_080166F0: .4byte gUnk_03003460

	thumb_func_start FUN_080166F4
FUN_080166F4: @ 0x080166F4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	ldrb r1, [r4, #9]
	bl FUN_08009B4C
	adds r5, r0, #0
	cmp r5, #0
	beq _0801672A
	movs r0, #4
	ldrsh r1, [r4, r0]
	lsls r1, r1, #0x10
	movs r0, #6
	ldrsh r2, [r4, r0]
	lsls r2, r2, #0x10
	adds r0, r5, #0
	bl FUN_08001728
	ldrb r0, [r4, #0xa]
	strb r0, [r5, #0x12]
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r2, r5, r0
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
_0801672A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_08016730
FUN_08016730: @ 0x08016730
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #4]
	ldrb r1, [r5, #5]
	bl FUN_08009B4C
	adds r6, r0, #0
	cmp r6, #0
	beq _08016768
	ldrb r0, [r5, #7]
	strb r0, [r6, #0x12]
	ldrb r4, [r5, #7]
	ldrb r5, [r5, #6]
	adds r0, r6, #0
	bl FUN_08001848
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_08001FF0
	adds r0, r6, #0
	movs r1, #0
	bl FUN_08001FB0
	adds r0, r6, #0
	adds r1, r5, #0
	bl FUN_08001F20
_08016768:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08016770
FUN_08016770: @ 0x08016770
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #4]
	subs r0, #0x25
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080167B0
	ldr r0, _080167A8 @ => 0x03004200
	ldr r0, [r0]
	movs r1, #0xd
	bl FUN_08001FB0
	ldr r2, _080167AC @ => 0x03004230
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r2, #4]
	ldrb r0, [r4, #4]
	str r0, [r2, #8]
	ldrb r0, [r4, #5]
	str r0, [r2, #0xc]
	b _080167BA
	.align 2, 0
_080167A8: .4byte gUnk_03004200
_080167AC: .4byte gUnk_03004230
_080167B0:
	ldrb r0, [r4, #4]
	ldrb r1, [r4, #5]
	ldrb r2, [r4, #6]
	bl FUN_0802CED4
_080167BA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_080167C0
FUN_080167C0: @ 0x080167C0
	push {r4, r5, r6, r7, lr}
	ldrb r7, [r0, #4]
	adds r0, r7, #0
	bl FUN_08009A30
	cmp r0, #0
	bne _08016804
	adds r0, r7, #0
	bl FUN_08009A98
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r5, #0
	cmp r5, r6
	bhs _08016804
_080167DE:
	adds r0, r7, #0
	adds r1, r5, #0
	bl FUN_08009B4C
	adds r4, r0, #0
	cmp r4, #0
	beq _080167FA
	movs r1, #1
	bl FUN_08001FB0
	ldr r0, [r4, #0xc]
	movs r1, #8
	orrs r0, r1
	str r0, [r4, #0xc]
_080167FA:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r6
	blo _080167DE
_08016804:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080168C0
FUN_080168C0: @ 0x0801680C
	push {lr}
	ldr r2, _0801681C @ => 0x0300407C
	ldrb r1, [r0, #4]
	adds r0, r2, #0
	bl FUN_0801DDC0
	pop {r0}
	bx r0
	.align 2, 0
_0801681C: .4byte gEpisode_Data

	thumb_func_start FUN_08016820
FUN_08016820: @ 0x08016820
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0801683C @ => 0x0300407C
	ldrb r1, [r4, #4]
	bl FUN_0801DDD4
	cmp r0, #0
	beq _08016840
	ldrb r0, [r4, #5]
	ldrb r1, [r4, #6]
	bl FUN_080099A8
	b _08016848
	.align 2, 0
_0801683C: .4byte gEpisode_Data
_08016840:
	ldrb r0, [r4, #7]
	ldrb r1, [r4, #8]
	bl FUN_080099A8
_08016848:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08016850
FUN_08016850: @ 0x08016850
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0801686C @ => 0x0300407C
	ldrb r1, [r4, #4]
	bl FUN_0801DE18
	cmp r0, #1
	bne _08016870
	ldrb r0, [r4, #5]
	ldrb r1, [r4, #6]
	bl FUN_080099A8
	b _08016878
	.align 2, 0
_0801686C: .4byte gEpisode_Data
_08016870:
	ldrb r0, [r4, #7]
	ldrb r1, [r4, #8]
	bl FUN_080099A8
_08016878:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08016880
FUN_08016880: @ 0x08016880
	push {lr}
	ldr r2, _08016890 @ => 0x0300407C
	ldrh r1, [r0, #4]
	adds r0, r2, #0
	bl FUN_0801DE70
	pop {r0}
	bx r0
	.align 2, 0
_08016890: .4byte gEpisode_Data

	thumb_func_start FUN_08016894
FUN_08016894: @ 0x08016894
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080168B0 @ => 0x0300407C
	ldrh r1, [r4, #4]
	bl FUN_0801DEE0
	cmp r0, #0
	beq _080168B4
	ldrb r0, [r4, #6]
	ldrb r1, [r4, #7]
	bl FUN_080099A8
	b _080168BC
	.align 2, 0
_080168B0: .4byte gEpisode_Data
_080168B4:
	ldrb r0, [r4, #8]
	ldrb r1, [r4, #9]
	bl FUN_080099A8
_080168BC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080168C4
FUN_080168C4: @ 0x080168C4
	push {lr}
	ldr r2, _080168D4 @ => 0x0300407C
	ldrh r1, [r0, #4]
	adds r0, r2, #0
	bl FUN_0801DEA8
	pop {r0}
	bx r0
	.align 2, 0
_080168D4: .4byte gEpisode_Data

	thumb_func_start FUN_080168D8
FUN_080168D8: @ 0x080168D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080168F4 @ => 0x0300407C
	ldrh r1, [r4, #4]
	bl FUN_0801DF10
	cmp r0, #0
	beq _080168F8
	ldrb r0, [r4, #6]
	ldrb r1, [r4, #7]
	bl FUN_080099A8
	b _08016900
	.align 2, 0
_080168F4: .4byte gEpisode_Data
_080168F8:
	ldrb r0, [r4, #8]
	ldrb r1, [r4, #9]
	bl FUN_080099A8
_08016900:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08016908
FUN_08016908: @ 0x08016908
	push {lr}
	ldrb r2, [r0, #4]
	ldrb r1, [r0, #5]
	adds r0, r2, #0
	bl FUN_08009B4C
	cmp r0, #0
	beq _08016928
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08016928
	movs r0, #1
	str r0, [r1, #0x4c]
_08016928:
	pop {r0}
	bx r0

	thumb_func_start FUN_0801692C
FUN_0801692C: @ 0x0801692C
	push {r4, lr}
	ldrb r2, [r0, #4]
	ldrb r1, [r0, #5]
	adds r0, r2, #0
	bl FUN_08009B4C
	adds r4, r0, #0
	cmp r4, #0
	beq _0801694E
	movs r1, #0x2c
	bl FUN_08001FB0
	movs r0, #0x91
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x2c
	strb r0, [r1]
_0801694E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_08016954
FUN_08016954: @ 0x08016954
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r0, _080169B0 @ => 0x0805B1C8
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldrb r1, [r4, #4]
	lsls r1, r1, #0x10
	ldr r3, _080169B4 @ => 0xFF00FFFF
	ldr r0, [sp]
	ands r0, r3
	orrs r0, r1
	ldrb r1, [r4, #5]
	lsls r1, r1, #0x18
	ldr r2, _080169B8 @ => 0x00FFFFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	ldrb r1, [r4, #6]
	lsls r1, r1, #0x10
	ldr r0, [sp, #8]
	ands r0, r3
	orrs r0, r1
	ldrb r1, [r4, #7]
	lsls r1, r1, #0x18
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #8]
	add r1, sp, #8
	ldr r2, _080169BC @ => 0x03003DF0
	mov r0, sp
	movs r3, #6
	bl FUN_08014408
	cmp r0, #0
	beq _080169C0
	ldrb r0, [r4, #8]
	ldrb r1, [r4, #9]
	bl FUN_080099A8
	b _080169C8
	.align 2, 0
_080169B0: .4byte ROMREF_0805B1C8
_080169B4: .4byte 0xFF00FFFF
_080169B8: .4byte 0x00FFFFFF
_080169BC: .4byte gUnk_03003DF0
_080169C0:
	ldrb r0, [r4, #0xa]
	ldrb r1, [r4, #0xb]
	bl FUN_080099A8
_080169C8:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_080169D0
FUN_080169D0: @ 0x080169D0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #4]
	bl FUN_0803A8F8
	ldrb r0, [r4, #5]
	ldrb r1, [r4, #6]
	bl FUN_080099A8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_080169E8
FUN_080169E8: @ 0x080169E8
	push {r4, lr}
	ldrb r2, [r0, #4]
	ldrb r1, [r0, #5]
	adds r0, r2, #0
	bl FUN_08009B4C
	adds r4, r0, #0
	cmp r4, #0
	beq _08016A0A
	movs r1, #0x28
	bl FUN_08001FB0
	movs r0, #0x91
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0
	strb r0, [r1]
_08016A0A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_08016A10
FUN_08016A10: @ 0x08016A10
	push {r4, lr}
	ldrb r2, [r0, #4]
	ldrb r1, [r0, #5]
	adds r0, r2, #0
	bl FUN_08009B4C
	adds r4, r0, #0
	ldrh r0, [r4, #0xa]
	bl FUN_0803AF64
	ldrh r2, [r4, #0xa]
	movs r0, #0xd
	movs r1, #0
	bl FUN_0802CED4
	movs r0, SOUNDTRACK_FRIENDSHIP
	bl FUN_0804DE84
	ldr r2, _08016A4C @ => 0x03004200
	ldr r0, _08016A50 @ => 0x030042B0
	ldrh r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r4, [r0, #0x58]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08016A4C: .4byte gUnk_03004200
_08016A50: .4byte gUnk_030042B0

	thumb_func_start FUN_08016A54
FUN_08016A54: @ 0x08016A54
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08016A74 @ => 0x03003DF0
	ldr r0, [r0, #0x68]
	ldrh r1, [r4, #4]
	bl FUN_08026230
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08016A78
	ldrb r0, [r4, #6]
	ldrb r1, [r4, #7]
	bl FUN_080099A8
	b _08016A80
	.align 2, 0
_08016A74: .4byte gUnk_03003DF0
_08016A78:
	ldrb r0, [r4, #8]
	ldrb r1, [r4, #9]
	bl FUN_080099A8
_08016A80:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08016A88
FUN_08016A88: @ 0x08016A88
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08016AA4 @ => 0x03003E18
	ldrb r1, [r4, #4]
	bl FUN_0804ACD4
	ldrb r1, [r4, #5]
	cmp r0, r1
	blo _08016AA8
	ldrb r0, [r4, #6]
	ldrb r1, [r4, #7]
	bl FUN_080099A8
	b _08016AB0
	.align 2, 0
_08016AA4: .4byte gUnk_03003E18
_08016AA8:
	ldrb r0, [r4, #8]
	ldrb r1, [r4, #9]
	bl FUN_080099A8
_08016AB0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08016AB8
FUN_08016AB8: @ 0x08016AB8
	ldr r3, _08016ACC @ => 0x03004200
	ldr r1, _08016AD0 @ => 0x030042B0
	ldrh r2, [r1, #6]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrb r0, [r0, #4]
	strb r0, [r1, #0x10]
	bx lr
	.align 2, 0
_08016ACC: .4byte gUnk_03004200
_08016AD0: .4byte gUnk_030042B0

	thumb_func_start FUN_08016AD4
FUN_08016AD4: @ 0x08016AD4
	push {lr}
	ldrb r2, [r0, #4]
	ldrb r1, [r0, #5]
	adds r0, r2, #0
	bl FUN_08009B4C
	cmp r0, #0
	beq _08016AEA
	movs r1, #4
	bl FUN_08001FB0
_08016AEA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08016AF0
FUN_08016AF0: @ 0x08016AF0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #4]
	ldrb r1, [r4, #5]
	bl FUN_08009B4C
	cmp r0, #0
	beq _08016B06
	ldrb r1, [r4, #6]
	bl FUN_0803BC7C
_08016B06:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_08016B0C
FUN_08016B0C: @ 0x08016B0C
	push {lr}
	adds r1, r0, #0
	ldr r0, _08016B24 @ => 0x03003DF0
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	bne _08016B28
	ldrb r0, [r1, #4]
	ldrb r1, [r1, #5]
	bl FUN_080099A8
	b _08016B30
	.align 2, 0
_08016B24: .4byte gUnk_03003DF0
_08016B28:
	ldrb r0, [r1, #6]
	ldrb r1, [r1, #7]
	bl FUN_080099A8
_08016B30:
	pop {r0}
	bx r0

	thumb_func_start FUN_08016B34
FUN_08016B34: @ 0x08016B34
	push {lr}
	ldrb r2, [r0, #4]
	ldrb r1, [r0, #5]
	adds r0, r2, #0
	bl FUN_08009B4C
	adds r1, r0, #0
	cmp r1, #0
	beq _08016B58
	movs r0, #0x91
	lsls r0, r0, #1
	adds r2, r1, r0
	movs r0, #0x20
	strb r0, [r2]
	adds r0, r1, #0
	movs r1, #0x20
	bl FUN_08001FB0
_08016B58:
	pop {r0}
	bx r0

	thumb_func_start FUN_08016B5C
FUN_08016B5C: @ 0x08016B5C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #4]
	ldrb r1, [r4, #5]
	bl FUN_08009B4C
	adds r1, r0, #0
	cmp r1, #0
	beq _08016B78
	ldrb r0, [r4, #6]
	ldrb r2, [r4, #7]
	ldrb r3, [r4, #8]
	bl FUN_08003C4C
_08016B78:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08016B80
FUN_08016B80: @ 0x08016B80
	push {lr}
	ldrh r2, [r0, #4]
	ldrb r1, [r0, #6]
	adds r0, r2, #0
	bl FUN_080213A4
	pop {r0}
	bx r0

	thumb_func_start FUN_08016B90
FUN_08016B90: @ 0x08016B90
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	bl FUN_080213F8
	cmp r0, #0
	beq _08016BA8
	ldrb r0, [r4, #6]
	ldrb r1, [r4, #7]
	bl FUN_080099A8
	b _08016BB0
_08016BA8:
	ldrb r0, [r4, #8]
	ldrb r1, [r4, #9]
	bl FUN_080099A8
_08016BB0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08016BB8
FUN_08016BB8: @ 0x08016BB8
	push {r4, lr}
	sub sp, #8
	movs r1, #4
	ldrsh r2, [r0, r1]
	movs r4, #6
	ldrsh r3, [r0, r4]
	movs r4, #8
	ldrsh r1, [r0, r4]
	str r1, [sp]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #1
	bl FUN_08011330
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_08016BE0
FUN_08016BE0: @ 0x08016BE0
	push {lr}
	ldrh r3, [r0, #4]
	ldrb r1, [r0, #6]
	ldrb r2, [r0, #7]
	adds r0, r3, #0
	bl FUN_0802B2E0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08016BF4
FUN_08016BF4: @ 0x08016BF4
	push {lr}
	ldr r2, _08016C04 @ => 0x03003E28
	ldrb r1, [r0, #4]
	adds r0, r2, #0
	bl FUN_08038B84
	pop {r0}
	bx r0
	.align 2, 0
_08016C04: .4byte gUnk_03003E28

	thumb_func_start FUN_08016C08
FUN_08016C08: @ 0x08016C08
	push {r4, r5, lr}
	sub sp, #8
	ldrb r5, [r0, #0xa]
	ldrh r1, [r0, #4]
	ldrh r2, [r0, #6]
	ldrh r3, [r0, #8]
	ldrb r4, [r0, #0xb]
	str r4, [sp]
	ldrb r0, [r0, #0xc]
	str r0, [sp, #4]
	adds r0, r5, #0
	bl FUN_0803B174
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08016C2C
FUN_08016C2C: @ 0x08016C2C
	push {lr}
	ldr r0, _08016C3C @ => 0x03003E28
	movs r1, #0x64
	bl FUN_08038A84
	pop {r0}
	bx r0
	.align 2, 0
_08016C3C: .4byte gUnk_03003E28

	thumb_func_start FUN_08016C40
FUN_08016C40: @ 0x08016C40
	push {lr}
	ldrb r2, [r0, #4]
	ldrb r1, [r0, #5]
	adds r0, r2, #0
	bl FUN_080099A8
	pop {r0}
	bx r0

	thumb_func_start FUN_08016C50
FUN_08016C50: @ 0x08016C50
	push {lr}
	ldrb r0, [r0, #4]
	bl FUN_0803B4CC
	pop {r0}
	bx r0

	thumb_func_start FUN_08016C5C
FUN_08016C5C: @ 0x08016C5C
	push {lr}
	ldr r2, _08016C6C @ => 0x0300407C
	ldrh r1, [r0, #4]
	adds r0, r2, #0
	bl FUN_0801DC1C
	pop {r0}
	bx r0
	.align 2, 0
_08016C6C: .4byte gEpisode_Data

	thumb_func_start FUN_08016C70
FUN_08016C70: @ 0x08016C70
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #4]
	bl FUN_0803AE1C
	ldrb r1, [r4, #5]
	cmp r0, r1
	bne _08016C96
	ldrb r0, [r4, #4]
	bl FUN_0803AE50
	ldrb r1, [r4, #6]
	cmp r0, r1
	blo _08016C96
	ldrb r0, [r4, #7]
	ldrb r1, [r4, #8]
	bl FUN_080099A8
	b _08016C9E
_08016C96:
	ldrb r0, [r4, #9]
	ldrb r1, [r4, #0xa]
	bl FUN_080099A8
_08016C9E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_08016CA4
FUN_08016CA4: @ 0x08016CA4
	push {r4, lr}
	ldrb r2, [r0, #4]
	ldrb r1, [r0, #5]
	adds r0, r2, #0
	bl FUN_08009B4C
	adds r4, r0, #0
	cmp r4, #0
	beq _08016CC6
	ldr r0, _08016CCC @ => 0x08062C08
	ldr r1, [r0]
	ldr r2, [r0, #4]
	ldr r0, _08016CD0 @ => 0x030042B0
	ldrb r3, [r0, #6]
	adds r0, r4, #0
	bl FUN_0801119C
_08016CC6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08016CCC: .4byte ROMREF_08062C08
_08016CD0: .4byte gUnk_030042B0

	thumb_func_start FUN_08016CD4
FUN_08016CD4: @ 0x08016CD4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08016CEC @ => 0x0300407C
	bl FUN_0801E004
	cmp r0, #1
	bne _08016CF0
	ldrb r0, [r4, #5]
	ldrb r1, [r4, #6]
	bl FUN_080099A8
	b _08016CF8
	.align 2, 0
_08016CEC: .4byte gEpisode_Data
_08016CF0:
	ldrb r0, [r4, #7]
	ldrb r1, [r4, #8]
	bl FUN_080099A8
_08016CF8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08016D00
FUN_08016D00: @ 0x08016D00
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08016D18 @ => 0x0300407C
	bl FUN_0801E028
	cmp r0, #1
	bne _08016D1C
	ldrb r0, [r4, #5]
	ldrb r1, [r4, #6]
	bl FUN_080099A8
	b _08016D24
	.align 2, 0
_08016D18: .4byte gEpisode_Data
_08016D1C:
	ldrb r0, [r4, #7]
	ldrb r1, [r4, #8]
	bl FUN_080099A8
_08016D24:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08016D2C
FUN_08016D2C: @ 0x08016D2C
	push {lr}
	ldr r0, _08016D38 @ => 0x0300407C
	bl FUN_0801DFB0
	pop {r0}
	bx r0
	.align 2, 0
_08016D38: .4byte gEpisode_Data

	thumb_func_start FUN_08016D3C
FUN_08016D3C: @ 0x08016D3C
	push {lr}
	ldr r0, _08016D48 @ => 0x0300407C
	bl FUN_0801DFC8
	pop {r0}
	bx r0
	.align 2, 0
_08016D48: .4byte gEpisode_Data

	thumb_func_start FUN_08016D4C
FUN_08016D4C: @ 0x08016D4C
	push {lr}
	ldrh r3, [r0, #4]
	ldrh r1, [r0, #6]
	ldrb r2, [r0, #8]
	adds r0, r3, #0
	bl FUN_08041038
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08016D60
FUN_08016D60: @ 0x08016D60
	push {r4, lr}
	ldr r0, _08016D84 @ => 0x03004200
	ldr r4, [r0]
	adds r0, r4, #0
	movs r1, #0x72
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #0x29
	bl FUN_08001FB0
	adds r0, r4, #0
	movs r1, #0x27
	bl FUN_08001F84
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08016D84: .4byte gUnk_03004200

	thumb_func_start FUN_08016D88
FUN_08016D88: @ 0x08016D88
	push {r4, lr}
	ldrb r2, [r0, #4]
	ldrb r1, [r0, #5]
	adds r0, r2, #0
	bl FUN_08009B4C
	adds r4, r0, #0
	cmp r4, #0
	beq _08016DAA
	movs r1, #0x2a
	bl FUN_08001FB0
	movs r0, #0x91
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x2a
	strb r0, [r1]
_08016DAA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_08016DB0
FUN_08016DB0: @ 0x08016DB0
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #5]
	cmp r0, #1
	bne _08016DC4
	ldrb r0, [r1, #4]
	movs r1, #6
	bl FUN_0803B584
	b _08016DCC
_08016DC4:
	ldrb r0, [r1, #4]
	movs r1, #6
	bl FUN_0803B570
_08016DCC:
	pop {r0}
	bx r0

	thumb_func_start FUN_08016DD0
FUN_08016DD0: @ 0x08016DD0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08016DF0 @ => 0x0300407C
	ldrh r1, [r4, #4]
	bl FUN_0801E0A4
	ldrb r1, [r4, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	bne _08016DF4
	ldrb r0, [r4, #7]
	ldrb r1, [r4, #8]
	bl FUN_080099A8
	b _08016DFC
	.align 2, 0
_08016DF0: .4byte gEpisode_Data
_08016DF4:
	ldrb r0, [r4, #9]
	ldrb r1, [r4, #0xa]
	bl FUN_080099A8
_08016DFC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08016E04
FUN_08016E04: @ 0x08016E04
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08016E2C @ => 0x03003DF0
	ldr r0, [r5, #0x68]
	ldrh r1, [r4, #4]
	movs r2, #0
	movs r3, #0
	bl FUN_080261BC
	cmp r0, #1
	bne _08016E34
	ldrb r1, [r4, #6]
	movs r0, #0
	bl FUN_080099A8
	ldr r0, _08016E30 @ => 0x000003F7
	adds r1, r5, r0
	movs r0, #0xe
	strb r0, [r1]
	b _08016E3C
	.align 2, 0
_08016E2C: .4byte gUnk_03003DF0
_08016E30: .4byte 0x000003F7
_08016E34:
	ldrb r1, [r4, #7]
	movs r0, #0
	bl FUN_080099A8
_08016E3C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08016E44
FUN_08016E44: @ 0x08016E44
	push {lr}
	ldrb r3, [r0, #4]
	ldrb r1, [r0, #5]
	ldrb r2, [r0, #6]
	adds r0, r3, #0
	bl FUN_0803AE30
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08016E58
FUN_08016E58: @ 0x08016E58
	push {lr}
	ldrb r3, [r0, #8]
	ldr r1, [r0, #4]
	ldrb r2, [r0, #9]
	adds r0, r3, #0
	bl FUN_0803B2A0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08016E6C
FUN_08016E6C: @ 0x08016E6C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #4]
	ldrb r1, [r4, #5]
	bl FUN_08009B4C
	cmp r0, #0
	beq _08016E82
	ldrb r1, [r4, #6]
	bl FUN_08001FF0
_08016E82:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_08016E88
FUN_08016E88: @ 0x08016E88
	push {lr}
	adds r1, r0, #0
	ldr r0, _08016EA0 @ => 0x03003DF0
	ldrb r2, [r1, #4]
	adds r1, r0, #0
	adds r1, #0x64
	strb r2, [r1]
	adds r0, #0x58
	bl FUN_08026184
	pop {r0}
	bx r0
	.align 2, 0
_08016EA0: .4byte gUnk_03003DF0

	thumb_func_start FUN_08016EA4
FUN_08016EA4: @ 0x08016EA4
	push {lr}
	ldrb r3, [r0, #6]
	ldrb r1, [r0, #7]
	ldrh r2, [r0, #4]
	adds r0, r3, #0
	bl FUN_08024444
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08016EB8
FUN_08016EB8: @ 0x08016EB8
	push {lr}
	bl FUN_080244A0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08016EC4
FUN_08016EC4: @ 0x08016EC4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08016F00 @ => 0x03004228
	ldrb r0, [r4, #5]
	strb r0, [r1]
	ldr r1, _08016F04 @ => 0x030043A0
	ldrb r0, [r4, #6]
	str r0, [r1]
	ldrb r1, [r4, #4]
	movs r0, #0x18
	movs r2, #0
	bl FUN_0802CED4
	ldr r2, _08016F08 @ => 0x03003DF0
	movs r0, #0xd8
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r3, #1
	adds r0, r3, #0
	ldrb r4, [r4, #4]
	lsls r0, r4
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08016F0C @ => 0x030047F4
	str r3, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08016F00: .4byte gUnk_03004228
_08016F04: .4byte gUnk_030043A0
_08016F08: .4byte gUnk_03003DF0
_08016F0C: .4byte gUnk_030047F4

	thumb_func_start FUN_08016F10
FUN_08016F10: @ 0x08016F10
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08016F38 @ => 0x03003DF0
	ldr r0, [r5, #0x68]
	ldrh r1, [r4, #4]
	bl FUN_08026230
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08016F3C
	ldr r0, [r5, #0x68]
	movs r2, #1
	bl FUN_08026260
	ldrb r0, [r4, #6]
	bl FUN_080099D8
	b _08016F42
	.align 2, 0
_08016F38: .4byte gUnk_03003DF0
_08016F3C:
	ldrb r0, [r4, #7]
	bl FUN_080099D8
_08016F42:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_08016F48
FUN_08016F48: @ 0x08016F48
	push {lr}
	adds r1, r0, #0
	ldr r0, _08016F60 @ => 0x03003DF0
	ldr r0, [r0, #0x6c]
	ldrh r1, [r1, #4]
	movs r2, #0
	movs r3, #0
	bl FUN_080261BC
	pop {r0}
	bx r0
	.align 2, 0
_08016F60: .4byte gUnk_03003DF0

	thumb_func_start FUN_08016F64
FUN_08016F64: @ 0x08016F64
	push {r4, lr}
	ldrb r4, [r0, #8]
	ldr r1, [r0, #4]
	ldrb r2, [r0, #9]
	ldrb r3, [r0, #0xa]
	adds r0, r4, #0
	bl FUN_0803B318
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08016F7C
FUN_08016F7C: @ 0x08016F7C
	push {lr}
	ldrb r0, [r0, #4]
	cmp r0, #1
	beq _08016FA8
	cmp r0, #1
	bgt _08016F8E
	cmp r0, #0
	beq _08016F98
	b _08016FB8
_08016F8E:
	cmp r0, #2
	beq _08016FAE
	cmp r0, #3
	beq _08016FB4
	b _08016FB8
_08016F98:
	ldr r0, _08016FA4 @ => 0x03004200
	ldr r0, [r0]
	movs r1, #0x46
	bl FUN_08001FB0
	b _08016FB8
	.align 2, 0
_08016FA4: .4byte gUnk_03004200
_08016FA8:
	bl FUN_0803A188
	b _08016FB8
_08016FAE:
	bl FUN_0802B334
	b _08016FB8
_08016FB4:
	bl FUN_0802B37C
_08016FB8:
	pop {r0}
	bx r0

	thumb_func_start FUN_08016FBC
FUN_08016FBC: @ 0x08016FBC
	push {lr}
	sub sp, #8
	movs r2, #0
	ldrb r1, [r0, #4]
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x18
	lsls r1, r1, #0x10
	orrs r1, r0
	str r1, [sp]
	str r2, [sp, #4]
	ldr r0, _08016FE4 @ => 0x03003DF0
	mov r1, sp
	bl FUN_0801432C
	bl FUN_08021024
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_08016FE4: .4byte gUnk_03003DF0

	thumb_func_start FUN_08016FE8
FUN_08016FE8: @ 0x08016FE8
	push {lr}
	ldr r0, _0801700C @ => 0x03004200
	ldr r0, [r0]
	movs r1, #0xd
	bl FUN_08001FB0
	ldr r2, _08017010 @ => 0x03004230
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2, #4]
	pop {r0}
	bx r0
	.align 2, 0
_0801700C: .4byte gUnk_03004200
_08017010: .4byte gUnk_03004230

	thumb_func_start FUN_08017014
FUN_08017014: @ 0x08017014
	push {lr}
	ldrb r0, [r0, #4]
	bl FUN_0802174C
	pop {r0}
	bx r0

	thumb_func_start FUN_08017020
FUN_08017020: @ 0x08017020
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _0801703E
	movs r0, #2
	bl FUN_080212A0
	movs r2, #4
	ldrsh r1, [r4, r2]
	cmn r0, r1
	bge _08017042
	movs r0, #0
	b _0801704A
_0801703E:
	movs r0, #4
	ldrsh r1, [r4, r0]
_08017042:
	movs r0, #2
	bl FUN_08020DB0
	movs r0, #1
_0801704A:
	cmp r0, #1
	bne _08017056
	ldrb r0, [r4, #6]
	bl FUN_080099D8
	b _0801705C
_08017056:
	ldrb r0, [r4, #7]
	bl FUN_080099D8
_0801705C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08017064
FUN_08017064: @ 0x08017064
	push {lr}
	ldrb r0, [r0, #4]
	bl FUN_0804E120
	pop {r0}
	bx r0

	thumb_func_start FUN_08017070
FUN_08017070: @ 0x08017070
	push {lr}
	ldrb r0, [r0, #4]
	cmp r0, #1
	bne _08017088
	ldr r0, _08017084 @ => 0x03003E28
	movs r1, #1
	bl FUN_08038BB8
	b _08017090
	.align 2, 0
_08017084: .4byte gUnk_03003E28
_08017088:
	ldr r0, _08017094 @ => 0x03003E28
	movs r1, #0
	bl FUN_08038BB8
_08017090:
	pop {r0}
	bx r0
	.align 2, 0
_08017094: .4byte gUnk_03003E28

	thumb_func_start FUN_08017098
FUN_08017098: @ 0x08017098
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080170D0 @ => 0x03004200
	ldr r0, [r4]
	movs r1, #0x4b
	bl FUN_08001FB0
	ldr r0, [r4]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r1, [r5, #4]
	str r1, [r0]
	ldr r0, [r4]
	ldrb r1, [r5, #7]
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r0, r0, r2
	strb r1, [r0]
	ldr r0, [r4]
	ldrb r1, [r5, #6]
	adds r2, #1
	adds r0, r0, r2
	strb r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080170D0: .4byte gUnk_03004200

	thumb_func_start FUN_080170D4
FUN_080170D4: @ 0x080170D4
	push {lr}
	bl FUN_0804E058
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080170E0
FUN_080170E0: @ 0x080170E0
	push {lr}
	ldr r0, _08017100 @ => 0x03003DF0
	ldr r1, _08017104 @ => 0x000003FA
	adds r0, r0, r1
	movs r2, #0
	movs r1, #3
	strb r1, [r0]
	ldr r0, _08017108 @ => 0x03003180
	str r2, [r0]
	ldr r0, _0801710C @ => 0x03004200
	ldr r0, [r0]
	movs r1, #0x22
	bl FUN_08001FB0
	pop {r0}
	bx r0
	.align 2, 0
_08017100: .4byte gUnk_03003DF0
_08017104: .4byte 0x000003FA
_08017108: .4byte gUnk_03003180
_0801710C: .4byte gUnk_03004200

	thumb_func_start FUN_08017110
FUN_08017110: @ 0x08017110
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #4]
	ldrb r1, [r4, #5]
	bl FUN_08009B4C
	adds r1, r0, #0
	cmp r1, #0
	beq _08017132
	ldrb r0, [r4, #6]
	ldr r3, _08017138 @ => 0x00000131
	adds r2, r1, r3
	strb r0, [r2]
	adds r0, r1, #0
	movs r1, #0x4f
	bl FUN_08001FB0
_08017132:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08017138: .4byte 0x00000131

	thumb_func_start FUN_0801713C
FUN_0801713C: @ 0x0801713C
	push {lr}
	adds r3, r0, #0
	cmp r1, #5
	bhi _080171CA
	lsls r0, r1, #2
	ldr r1, _08017150 @ =_08017154
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08017150: .4byte _08017154
_08017154: @ jump table
	.4byte _080171CA @ case 0
	.4byte _0801716C @ case 1
	.4byte _08017184 @ case 2
	.4byte _080171CA @ case 3
	.4byte _0801719C @ case 4
	.4byte _080171BC @ case 5
_0801716C:
	cmp r2, #1
	bne _0801717A
	adds r0, r3, #0
	movs r1, #1
	bl FUN_08002038
	b _080171CA
_0801717A:
	adds r0, r3, #0
	movs r1, #1
	bl FUN_08002040
	b _080171CA
_08017184:
	cmp r2, #1
	bne _08017192
	adds r0, r3, #0
	movs r1, #4
	bl FUN_08002038
	b _080171CA
_08017192:
	adds r0, r3, #0
	movs r1, #4
	bl FUN_08002040
	b _080171CA
_0801719C:
	cmp r2, #1
	bne _080171AE
	adds r2, r3, #0
	adds r2, #0xdb
	ldrb r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2]
	b _080171CA
_080171AE:
	adds r2, r3, #0
	adds r2, #0xdb
	ldrb r1, [r2]
	movs r0, #0xdf
	ands r0, r1
	strb r0, [r2]
	b _080171CA
_080171BC:
	cmp r2, #1
	bne _080171CA
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r0, [r0]
	str r2, [r0, #0x48]
_080171CA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080171D0
FUN_080171D0: @ 0x080171D0
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	movs r7, #1
	ldrh r0, [r5, #6]
	cmp r0, #0x10
	beq _080172D0
	cmp r0, #0x10
	bgt _080171F0
	cmp r0, #0
	beq _080171FA
	cmp r0, #1
	bne _080171EE
	b _080172FE
_080171EE:
	b _08017312
_080171F0:
	cmp r0, #0x35
	beq _08017254
	cmp r0, #0x36
	beq _08017280
	b _08017312
_080171FA:
	ldr r0, [r5]
	bl FUN_08001848
	ldr r2, [r5]
	ldr r1, _08017250 @ => 0x0805EB00
	ldr r0, [r6, #0x34]
	ldrb r0, [r0, #0x12]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0x12]
	ldr r0, [r6, #0x34]
	ldrb r0, [r0, #0x12]
	cmp r0, #3
	beq _0801721C
	cmp r0, #5
	bne _08017226
_0801721C:
	ldr r0, [r5]
	adds r1, r6, #0
	movs r2, #1
	bl FUN_08006DFC
_08017226:
	ldr r0, [r5]
	ldrb r2, [r0, #0x12]
	movs r3, #0x8d
	lsls r3, r3, #1
	movs r0, #6
	str r0, [sp]
	movs r0, #0x1d
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl FUN_0803DB6C
	ldr r0, [r5]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0x5a
	strh r1, [r0]
	movs r0, #0x35
	strh r0, [r5, #6]
	b _08017312
	.align 2, 0
_08017250: .4byte ROMREF_0805EB00
_08017254:
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08017312
	movs r0, #0x5e
	bl FUN_0804DE0C
	ldr r0, [r5]
	bl FUN_08001F78
	movs r0, #0xa9
	bl FUN_0804DE0C
	adds r1, r6, #0
	adds r1, #0xe0
	str r0, [r1]
	movs r0, #0x36
	strh r0, [r5, #6]
	b _08017312
_08017280:
	ldrh r0, [r5, #8]
	cmp r0, #0
	beq _080172A4
	subs r0, #1
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080172A4
	ldr r4, _080172C8 @ => 0x03003E28
	ldrh r0, [r6, #8]
	bl FUN_0803DCFC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl FUN_08038B24
_080172A4:
	ldr r0, _080172CC @ => 0x03004200
	ldr r1, [r5]
	ldr r0, [r0]
	cmp r1, r0
	bne _080172B4
	movs r0, #1
	bl FUN_0804A870
_080172B4:
	ldr r0, [r5, #0xc]
	cmp r0, #1
	bne _08017312
	ldr r0, [r5]
	movs r1, #0x1e
	bl FUN_08001F20
	movs r0, #0x10
	strh r0, [r5, #6]
	b _08017312
	.align 2, 0
_080172C8: .4byte gUnk_03003E28
_080172CC: .4byte gUnk_03004200
_080172D0:
	ldr r2, [r5]
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08017312
	adds r0, r2, #0
	movs r1, #0xa
	bl FUN_08001F20
	ldr r0, [r5]
	adds r1, r6, #0
	adds r1, #0x54
	adds r2, r5, #0
	adds r2, #0x10
	movs r3, #0
	str r3, [sp]
	movs r3, #2
	bl FUN_08043BB8
	strh r7, [r5, #6]
	b _08017312
_080172FE:
	ldr r1, [r5]
	ldr r0, _0801731C @ => FUN_08001EBC
	str r0, [r1, #0x64]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #6
	movs r3, #4
	bl FUN_0803DC54
	movs r7, #2
_08017312:
	adds r0, r7, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801731C: .4byte FUN_08001EBC

	thumb_func_start FUN_08017320
FUN_08017320: @ 0x08017320
	movs r0, #1
	bx lr

	thumb_func_start FUN_08017324
FUN_08017324: @ 0x08017324
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	bl FUN_08001D8C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801733C
	ldr r0, [r5, #0x40]
	cmp r0, #1
	beq _08017346
_0801733C:
	ldrh r0, [r4, #8]
	cmp r0, #0
	bne _08017346
	movs r0, #1
	b _08017348
_08017346:
	movs r0, #0
_08017348:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08017350
FUN_08017350: @ 0x08017350
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r6, #0
	bl FUN_0803D868
	cmp r0, #1
	bne _08017372
	adds r0, r5, #0
	movs r1, #1
	bl FUN_0803D888
	ldrh r0, [r0, #4]
	cmp r0, #0x23
	bne _08017372
	movs r0, #0
	b _0801738A
_08017372:
	adds r0, r5, #0
	bl FUN_0803D868
	cmp r0, #1
	beq _08017386
	adds r0, r5, #0
	bl FUN_0803D868
	cmp r0, #0
	bne _0801738C
_08017386:
	orrs r4, r6
	movs r0, #0x22
_0801738A:
	strb r0, [r4]
_0801738C:
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_08017394
FUN_08017394: @ 0x08017394
	push {r4, lr}
	adds r4, r1, #0
	cmp r2, #0x22
	beq _080173A2
	cmp r2, #0x23
	beq _080173C2
	b _080173D8
_080173A2:
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _080173D8
	ldrb r0, [r4, #0xa]
	movs r1, #0x5b
	bl FUN_0803A10C
	cmp r0, #1
	bne _080173D4
	ldrb r0, [r4, #0xa]
	movs r1, #0x5c
	bl FUN_0803A10C
	cmp r0, #1
	beq _080173D8
	b _080173D4
_080173C2:
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _080173D8
	ldrb r0, [r4, #0xa]
	movs r1, #0x1d
	bl FUN_0803A10C
	cmp r0, #0
	bne _080173D8
_080173D4:
	movs r0, #0
	b _080173DA
_080173D8:
	movs r0, #1
_080173DA:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_080173E0
FUN_080173E0: @ 0x080173E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r7, r1, #0
	adds r4, r2, #0
	movs r1, #1
	bl FUN_0803D888
	adds r0, r5, #0
	adds r1, r7, #0
	bl FUN_0803D1F0
	adds r6, r0, #0
	cmp r6, #0
	beq _08017440
	strh r4, [r6, #4]
	cmp r4, #0x22
	beq _0801740C
	cmp r4, #0x23
	bne _08017410
	movs r2, #0
	b _08017414
_0801740C:
	movs r2, #1
	b _08017414
_08017410:
	movs r0, #0
	b _08017442
_08017414:
	ldr r0, [r7, #0x18]
	ldr r1, [r7, #0x1c]
	str r0, [r5, #0x54]
	str r1, [r5, #0x58]
	ldr r0, [r5, #0x34]
	adds r1, r2, #0
	add r2, sp, #4
	bl FUN_08001A84
	adds r2, r6, #0
	adds r2, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, r7, #0
	add r1, sp, #4
	movs r3, #4
	bl FUN_08043BB8
	adds r0, r7, #0
	movs r1, #0xa
	bl FUN_08001F20
_08017440:
	adds r0, r6, #0
_08017442:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0801744C
FUN_0801744C: @ 0x0801744C
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0803D8C8
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	cmp r0, #0x22
	beq _08017464
	cmp r0, #0x23
	beq _0801746E
	movs r0, #0
	b _08017474
_08017464:
	adds r0, r4, #0
	movs r2, #1
	bl FUN_0803CE88
	b _08017474
_0801746E:
	adds r0, r4, #0
	bl FUN_080171D0
_08017474:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0801747C
FUN_0801747C: @ 0x0801747C
	bx lr
	.align 2, 0

	thumb_func_start FUN_08017480
FUN_08017480: @ 0x08017480
	movs r0, #1
	bx lr

	thumb_func_start FUN_08017484
FUN_08017484: @ 0x08017484
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl FUN_08001D8C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801749E
	ldr r0, [r4, #0x40]
	cmp r0, #1
	bne _0801749E
	movs r0, #0
	b _080174A0
_0801749E:
	movs r0, #1
_080174A0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_080174A8
FUN_080174A8: @ 0x080174A8
	movs r0, #0x22
	strb r0, [r1]
	movs r0, #1
	bx lr

	thumb_func_start FUN_080174B0
FUN_080174B0: @ 0x080174B0
	push {r4, lr}
	adds r4, r1, #0
	cmp r2, #0x22
	bne _080174DA
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _080174DA
	ldrb r0, [r4, #0xa]
	movs r1, #0x5b
	bl FUN_0803A10C
	cmp r0, #1
	bne _080174D6
	ldrb r0, [r4, #0xa]
	movs r1, #0x5c
	bl FUN_0803A10C
	cmp r0, #1
	beq _080174DA
_080174D6:
	movs r0, #0
	b _080174DC
_080174DA:
	movs r0, #1
_080174DC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_080174E4
FUN_080174E4: @ 0x080174E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	bl FUN_0803D1F0
	adds r4, r0, #0
	cmp r4, #0
	bne _080174FC
	movs r0, #0
	b _0801752C
_080174FC:
	strh r7, [r4, #4]
	ldr r0, [r6, #0x18]
	ldr r1, [r6, #0x1c]
	str r0, [r5, #0x54]
	str r1, [r5, #0x58]
	ldr r0, [r5, #0x34]
	movs r1, #0
	add r2, sp, #4
	bl FUN_08001A84
	adds r2, r4, #0
	adds r2, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, r6, #0
	add r1, sp, #4
	movs r3, #0
	bl FUN_08043BB8
	adds r0, r6, #0
	movs r1, #0xa
	bl FUN_08001F20
	movs r0, #1
_0801752C:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_08017534
FUN_08017534: @ 0x08017534
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0803D8C8
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	cmp r0, #0x22
	bne _0801754E
	adds r0, r4, #0
	movs r2, #4
	bl FUN_0803CE88
	b _08017550
_0801754E:
	movs r0, #0
_08017550:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08017558
FUN_08017558: @ 0x08017558
	bx lr
	.align 2, 0

	thumb_func_start FUN_0801755C
FUN_0801755C: @ 0x0801755C
	push {r4, r5, r6, r7, lr}
	movs r4, #0
	subs r1, #1
	movs r2, #1
	rsbs r2, r2, #0
	cmp r1, r2
	beq _08017596
	movs r7, #1
	movs r6, #0x8c
	mov ip, r2
_08017570:
	ldrb r2, [r0]
	movs r3, #0
	subs r5, r1, #1
	adds r1, r0, #1
_08017578:
	adds r0, r4, #0
	eors r0, r2
	ands r0, r7
	lsrs r2, r2, #1
	lsrs r4, r4, #1
	cmp r0, #0
	beq _08017588
	eors r4, r6
_08017588:
	adds r3, #1
	cmp r3, #7
	bls _08017578
	adds r0, r1, #0
	adds r1, r5, #0
	cmp r1, ip
	bne _08017570
_08017596:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_080175A0
FUN_080175A0: @ 0x080175A0
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r1, #0
	movs r3, #2
	movs r6, #0x80
	lsls r6, r6, #1
	movs r0, #0xcc
	mov ip, r0
	movs r7, #0xcd
_080175B4:
	movs r2, #0x80
	lsrs r5, r4, #8
	subs r3, #1
_080175BA:
	lsls r1, r1, #1
	adds r0, r4, #0
	ands r0, r2
	cmp r0, #0
	beq _080175D6
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	beq _080175D2
	mov r0, ip
	eors r1, r0
	b _080175E0
_080175D2:
	adds r1, #1
	b _080175E0
_080175D6:
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	beq _080175E0
	eors r1, r7
_080175E0:
	lsrs r2, r2, #1
	cmp r2, #0
	bne _080175BA
	adds r4, r5, #0
	cmp r3, #0
	bne _080175B4
	movs r4, #0x80
	lsls r4, r4, #1
	movs r2, #0xcd
_080175F2:
	lsls r1, r1, #1
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	beq _080175FE
	eors r1, r2
_080175FE:
	adds r3, #1
	cmp r3, #7
	bls _080175F2
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08017610
FUN_08017610: @ 0x08017610
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r6, r1, #0
	mov r8, r2
	adds r4, r3, #0
	ldr r5, [sp, #0x1c]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	movs r0, #7
	bl FUN_080012D8
	adds r7, r0, #0
	lsls r4, r4, #0x10
	lsls r5, r5, #0x10
	adds r1, r4, #0
	adds r2, r5, #0
	bl FUN_08001728
	mov r1, sb
	strh r1, [r7, #0xa]
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r0, r7, r1
	mov r1, sb
	strh r1, [r0]
	strb r6, [r7, #0x12]
	ldr r4, _080176F8 @ => 0x0805F410
	ldrh r1, [r7, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r7, #0xc]
	mov r0, r8
	strb r0, [r7, #0x13]
	adds r0, r7, #0
	movs r1, #0
	bl FUN_08018DE0
	ldrh r1, [r7, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r7, #0
	bl _call_via_r1
	ldr r0, _080176FC @ => FUN_08017704
	str r0, [r7, #0x50]
	adds r2, r7, #0
	adds r2, #0xa5
	ldrb r1, [r2]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldrh r1, [r7, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r4, #0xc
	adds r0, r0, r4
	ldr r0, [r0]
	str r0, [r7, #0x14]
	adds r0, r1, #0
	cmp r0, #0
	beq _080176C4
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #2
	strb r0, [r1]
_080176C4:
	adds r0, r7, #0
	bl FUN_0803977C
	adds r0, r7, #0
	movs r1, #4
	bl FUN_080017D4
	ldrh r1, [r7, #0xa]
	lsls r1, r1, #2
	ldr r0, _08017700 @ => 0x0805F3E0
	adds r1, r1, r0
	adds r0, r7, #0
	bl FUN_08048E24
	adds r1, r0, #0
	adds r0, r7, #0
	bl FUN_0803EF14
	adds r0, r7, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080176F8: .4byte ROMREF_0805F410
_080176FC: .4byte FUN_08017704
_08017700: .4byte ROMREF_0805F3E0

	thumb_func_start FUN_08017704
FUN_08017704: @ 0x08017704
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0x48
	bls _08017716
	b _08017AEA
_08017716:
	lsls r0, r0, #2
	ldr r1, _08017720 @ =_08017724
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08017720: .4byte _08017724
_08017724: @ jump table
	.4byte _08017AF0 @ case 0
	.4byte _080178A8 @ case 1
	.4byte _08017AEA @ case 2
	.4byte _08017884 @ case 3
	.4byte _08017AEA @ case 4
	.4byte _08017AEA @ case 5
	.4byte _08017AEA @ case 6
	.4byte _08017AEA @ case 7
	.4byte _08017AEA @ case 8
	.4byte _08017AEA @ case 9
	.4byte _08017AE2 @ case 10
	.4byte _08017AEA @ case 11
	.4byte _08017AEA @ case 12
	.4byte _08017AEA @ case 13
	.4byte _08017AEA @ case 14
	.4byte _080178A0 @ case 15
	.4byte _08017AEA @ case 16
	.4byte _08017AEA @ case 17
	.4byte _08017AEA @ case 18
	.4byte _08017AEA @ case 19
	.4byte _08017AEA @ case 20
	.4byte _08017AEA @ case 21
	.4byte _08017AEA @ case 22
	.4byte _08017AEA @ case 23
	.4byte _08017AEA @ case 24
	.4byte _08017AEA @ case 25
	.4byte _08017AEA @ case 26
	.4byte _08017AEA @ case 27
	.4byte _08017AEA @ case 28
	.4byte _08017AEA @ case 29
	.4byte _08017AEA @ case 30
	.4byte _08017AEA @ case 31
	.4byte _08017AEA @ case 32
	.4byte _08017AEA @ case 33
	.4byte _08017AEA @ case 34
	.4byte _08017AEA @ case 35
	.4byte _08017AEA @ case 36
	.4byte _08017AEA @ case 37
	.4byte _08017AEA @ case 38
	.4byte _08017AEA @ case 39
	.4byte _08017AEA @ case 40
	.4byte _08017AEA @ case 41
	.4byte _08017AEA @ case 42
	.4byte _08017AEA @ case 43
	.4byte _08017848 @ case 44
	.4byte _08017AEA @ case 45
	.4byte _08017AEA @ case 46
	.4byte _08017AEA @ case 47
	.4byte _08017AEA @ case 48
	.4byte _080178B8 @ case 49
	.4byte _08017AEA @ case 50
	.4byte _08017AEA @ case 51
	.4byte _08017AEA @ case 52
	.4byte _08017AEA @ case 53
	.4byte _08017AEA @ case 54
	.4byte _08017AEA @ case 55
	.4byte _08017AEA @ case 56
	.4byte _08017AEA @ case 57
	.4byte _080178C0 @ case 58
	.4byte _080178C8 @ case 59
	.4byte _08017AEA @ case 60
	.4byte _08017AEA @ case 61
	.4byte _08017AEA @ case 62
	.4byte _080178D0 @ case 63
	.4byte _080178F0 @ case 64
	.4byte _080178D8 @ case 65
	.4byte _080178E0 @ case 66
	.4byte _08017AF0 @ case 67
	.4byte _08017AEA @ case 68
	.4byte _08017AEA @ case 69
	.4byte _08017AEA @ case 70
	.4byte _08017AEA @ case 71
	.4byte _080178E8 @ case 72
_08017848:
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _0801787C @ => 0x0805F200
	adds r4, r4, r0
	ldr r1, _08017880 @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08001FB0
	b _08017AF0
	.align 2, 0
_0801787C: .4byte ROMREF_0805F200
_08017880: .4byte ROMREF_0805A270
_08017884:
	ldr r2, _0801789C @ => 0x0805F410
	ldrh r1, [r5, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	b _08017AF0
	.align 2, 0
_0801789C: .4byte ROMREF_0805F410
_080178A0:
	adds r0, r5, #0
	bl FUN_08017B58
	b _08017AF0
_080178A8:
	ldr r0, [r5, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x82
	orrs r0, r1
	str r0, [r5, #0xc]
	b _08017AF0
_080178B8:
	adds r0, r5, #0
	bl FUN_08017CC8
	b _08017AF0
_080178C0:
	adds r0, r5, #0
	bl FUN_08018184
	b _08017AF0
_080178C8:
	adds r0, r5, #0
	bl FUN_08017FB8
	b _08017AF0
_080178D0:
	adds r0, r5, #0
	bl FUN_080186A8
	b _08017AF0
_080178D8:
	adds r0, r5, #0
	bl FUN_08018FF0
	b _08017AF0
_080178E0:
	adds r0, r5, #0
	bl FUN_08017E70
	b _08017AF0
_080178E8:
	adds r0, r5, #0
	bl FUN_08018B14
	b _08017AF0
_080178F0:
	ldr r2, _08017904 @ => 0x0000011D
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08017908
	cmp r0, #0xb
	bne _08017900
	b _08017ACC
_08017900:
	b _08017AF0
	.align 2, 0
_08017904: .4byte 0x0000011D
_08017908:
	ldrh r0, [r5, #0xa]
	cmp r0, #0xa
	bne _08017994
	ldrb r0, [r5, #0x13]
	bl FUN_08021620
	movs r0, #0xb
	strh r0, [r5, #0xa]
	adds r0, r5, #0
	bl FUN_0803EF3C
	ldrh r1, [r5, #0xa]
	lsls r1, r1, #2
	ldr r0, _08017984 @ => 0x0805F3E0
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_0803EF14
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _08017988 @ => 0x0805F200
	adds r4, r4, r0
	ldr r1, _0801798C @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	ldr r2, _08017990 @ => 0x00000131
	adds r1, r5, r2
	ldrb r1, [r1]
	bl FUN_080099A8
	movs r1, #0x91
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	bl FUN_08001FB0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #1
	bl FUN_0802064C
	b _08017AF0
	.align 2, 0
_08017984: .4byte ROMREF_0805F3E0
_08017988: .4byte ROMREF_0805F200
_0801798C: .4byte ROMREF_0805A270
_08017990: .4byte 0x00000131
_08017994:
	cmp r0, #1
	bne _080179CC
	movs r0, #0x80
	lsls r0, r0, #1
	bl FUN_080213F8
	cmp r0, #0
	bne _080179CC
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #1
	bl FUN_0802064C
	movs r2, #0x91
	lsls r2, r2, #1
	adds r0, r5, r2
	ldrb r1, [r0]
	adds r0, r5, #0
	bl FUN_08001FB0
	ldr r0, _080179C8 @ => 0x0000010F
	movs r1, #1
	bl FUN_080213A4
	b _08017AF0
	.align 2, 0
_080179C8: .4byte 0x0000010F
_080179CC:
	ldrh r0, [r5, #0xa]
	cmp r0, #2
	bne _080179F6
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #1
	bl FUN_0802064C
	movs r1, #0x91
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	bl FUN_08001FB0
	adds r0, r5, #0
	movs r1, #8
	bl FUN_08001F84
	b _08017AF0
_080179F6:
	cmp r0, #0xb
	bne _08017A0A
	movs r2, #0x91
	lsls r2, r2, #1
	adds r0, r5, r2
	ldrb r1, [r0]
	adds r0, r5, #0
	bl FUN_08001FB0
	b _08017AF0
_08017A0A:
	ldrb r0, [r5, #0x13]
	bl FUN_08021620
	adds r0, r5, #0
	movs r1, #8
	bl FUN_08002038
	ldr r0, _08017AB8 @ => 0x03004200
	ldr r1, [r0]
	adds r0, r5, #0
	bl FUN_08001BF4
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl FUN_08001FF0
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _08017ABC @ => 0x0805F200
	adds r4, r4, r0
	adds r4, #0x20
	ldr r1, _08017AC0 @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	adds r0, r5, #0
	movs r1, #0xb
	bl FUN_08001F84
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #1
	bl FUN_0802064C
	movs r1, #0x17
	bl FUN_080208A0
	ldr r4, _08017AC4 @ => 0x0805F410
	ldrh r1, [r5, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r2, r0, r4
	ldrh r1, [r2, #0x14]
	movs r0, #0x8d
	lsls r0, r0, #1
	cmp r1, r0
	beq _08017A90
	adds r0, r1, #0
	bl FUN_0804DE0C
_08017A90:
	ldrh r1, [r5, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _08017AF0
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	ldr r2, _08017AC8 @ => 0x00000131
	adds r1, r5, r2
	ldrb r1, [r1]
	bl FUN_080099A8
	b _08017AF0
	.align 2, 0
_08017AB8: .4byte gUnk_03004200
_08017ABC: .4byte ROMREF_0805F200
_08017AC0: .4byte ROMREF_0805A270
_08017AC4: .4byte ROMREF_0805F410
_08017AC8: .4byte 0x00000131
_08017ACC:
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08017AF0
	adds r0, r5, #0
	movs r1, #1
	bl FUN_08001FB0
	b _08017AF0
_08017AE2:
	adds r0, r5, #0
	bl FUN_08018C54
	b _08017AF0
_08017AEA:
	adds r0, r5, #0
	bl FUN_080040DC
_08017AF0:
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r4, r5, r0
	ldrb r1, [r4]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08017B06
	adds r0, r5, #0
	bl FUN_08001824
_08017B06:
	ldrb r1, [r4]
	movs r0, #0x12
	ands r0, r1
	cmp r0, #0
	beq _08017B42
	ldr r1, _08017B30 @ => 0x0000011D
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #3
	beq _08017B26
	cmp r0, #9
	beq _08017B26
	cmp r0, #4
	beq _08017B26
	cmp r0, #0x19
	bne _08017B34
_08017B26:
	adds r0, r5, #0
	bl FUN_08001824
	b _08017B3A
	.align 2, 0
_08017B30: .4byte 0x0000011D
_08017B34:
	adds r0, r5, #0
	bl FUN_08001848
_08017B3A:
	adds r0, r5, #0
	movs r1, #4
	bl FUN_080017D4
_08017B42:
	movs r2, #0x8f
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	bl FUN_0803977C
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_08017B58
FUN_08017B58: @ 0x08017B58
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x98
	lsls r0, r0, #1
	adds r5, r4, r0
	ldr r0, [r5]
	bl FUN_08001848
	movs r6, #0
	ldr r1, _08017B80 @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _08017C24
	cmp r0, #0xe
	bgt _08017B84
	cmp r0, #0
	beq _08017B90
	b _08017CA0
	.align 2, 0
_08017B80: .4byte 0x0000011D
_08017B84:
	cmp r0, #0xf
	bne _08017B8A
	b _08017C80
_08017B8A:
	cmp r0, #0x37
	beq _08017BCC
	b _08017CA0
_08017B90:
	ldr r2, _08017BC0 @ => 0x03005C60
	movs r1, #0
	ldr r0, _08017BC4 @ => 0x000009B1
	strh r0, [r2]
	ldr r0, _08017BC8 @ => 0x03005C90
	strb r1, [r0, #4]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	ldr r0, [r5]
	bl FUN_08001848
	ldr r0, [r5]
	movs r1, #0
	bl FUN_08001FB0
	movs r0, #2
	bl FUN_0802CEC4
	adds r0, r4, #0
	movs r1, #0x37
	bl FUN_08001F84
	b _08017CA0
	.align 2, 0
_08017BC0: .4byte gChoiceIDs
_08017BC4: .4byte 0x000009B1
_08017BC8: .4byte gUnk_03005C90
_08017BCC:
	ldr r0, _08017C00 @ => 0x03004750
	ldr r1, [r0, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08017C08
	ldr r0, _08017C04 @ => 0x03003DF0
	ldr r0, [r0, #0x68]
	bl FUN_08026328
	cmp r0, #0
	beq _08017C40
	ldr r0, [r5]
	movs r1, #0x42
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #0xe
	bl FUN_08001F84
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #8
	strh r0, [r1]
	b _08017CA0
	.align 2, 0
_08017C00: .4byte gUnk_03004750
_08017C04: .4byte gUnk_03003DF0
_08017C08:
	ldr r2, _08017C20 @ => 0x0805F410
	ldrh r1, [r4, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	b _08017C9E
	.align 2, 0
_08017C20: .4byte ROMREF_0805F410
_08017C24:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08017C70 @ => 0xFFFF0000
	cmp r1, r0
	bne _08017CA0
	adds r0, r4, #0
	movs r1, #0xf
	bl FUN_08001F84
_08017C40:
	ldr r2, _08017C74 @ => 0x0805F410
	ldrh r1, [r4, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	movs r6, #1
	ldr r2, _08017C78 @ => 0x03004230
	ldr r0, _08017C7C @ => 0x030042B0
	ldrh r1, [r0, #6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #4
	adds r0, r0, r2
	ldr r1, [r0]
	movs r2, #8
	orrs r1, r2
	str r1, [r0]
	b _08017CA0
	.align 2, 0
_08017C70: .4byte 0xFFFF0000
_08017C74: .4byte ROMREF_0805F410
_08017C78: .4byte gUnk_03004230
_08017C7C: .4byte gUnk_030042B0
_08017C80:
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08017CA0
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08001FB0
	adds r0, r4, #0
	movs r1, #2
	bl FUN_08002038
_08017C9E:
	movs r6, #1
_08017CA0:
	cmp r6, #1
	bne _08017CC2
	movs r0, #0x98
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r0, [r4]
	movs r1, #0xd
	bl FUN_08001FB0
	ldr r0, [r4]
	movs r1, #2
	bl FUN_08001F84
	ldr r0, [r4]
	movs r1, #4
	bl FUN_08001F20
_08017CC2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start FUN_08017CC8
FUN_08017CC8: @ 0x08017CC8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _08017CE0 @ => 0x0000011D
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #7
	beq _08017D2C
	cmp r0, #7
	bgt _08017CE4
	cmp r0, #0
	beq _08017CF0
	b _08017E64
	.align 2, 0
_08017CE0: .4byte 0x0000011D
_08017CE4:
	cmp r0, #9
	bne _08017CEA
	b _08017E48
_08017CEA:
	cmp r0, #0xc
	beq _08017DAC
	b _08017E64
_08017CF0:
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _08017D24 @ => 0x0805F200
	adds r4, r4, r0
	ldr r1, _08017D28 @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	adds r0, r5, #0
	movs r1, #7
	bl FUN_08001F84
	b _08017E64
	.align 2, 0
_08017D24: .4byte ROMREF_0805F200
_08017D28: .4byte ROMREF_0805A270
_08017D2C:
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08017D3A
	b _08017E64
_08017D3A:
	movs r0, #1
	movs r1, #0x64
	bl FUN_080424F8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x21
	bhi _08017D5C
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _08017D58 @ => 0x0805F200
	adds r4, r4, r0
	b _08017D82
	.align 2, 0
_08017D58: .4byte ROMREF_0805F200
_08017D5C:
	cmp r0, #0x42
	bhi _08017D74
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _08017D70 @ => 0x0805F200
	adds r4, r4, r0
	adds r4, #8
	b _08017D82
	.align 2, 0
_08017D70: .4byte ROMREF_0805F200
_08017D74:
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _08017DA4 @ => 0x0805F200
	adds r4, r4, r0
	adds r4, #0x10
_08017D82:
	ldr r1, _08017DA8 @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	b _08017E64
	.align 2, 0
_08017DA4: .4byte ROMREF_0805F200
_08017DA8: .4byte ROMREF_0805A270
_08017DAC:
	ldr r1, [r5, #0x58]
	adds r0, r5, #0
	bl FUN_08001CB8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl FUN_08001FF0
	ldrb r0, [r5, #0x12]
	cmp r0, #2
	bne _08017DCA
	movs r0, #3
	strb r0, [r5, #0x12]
_08017DCA:
	ldrb r0, [r5, #0x12]
	cmp r0, #6
	bne _08017DD4
	movs r0, #7
	strb r0, [r5, #0x12]
_08017DD4:
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _08017E3C @ => 0x0805F200
	adds r4, r4, r0
	adds r4, #0x18
	ldr r1, _08017E40 @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	adds r0, r5, #0
	movs r1, #4
	bl FUN_080017D4
	adds r0, r5, #0
	movs r1, #9
	bl FUN_08001F84
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r5, #0x14]
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r3, r5, r0
	ldrb r1, [r3]
	movs r0, #8
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _08017E44 @ => 0xFFFF999A
	str r0, [r5, #0x34]
	str r2, [r5, #0x30]
	adds r0, r5, #0
	movs r1, #8
	bl FUN_08002038
	movs r0, #0x89
	bl FUN_0804DE0C
	b _08017E64
	.align 2, 0
_08017E3C: .4byte ROMREF_0805F200
_08017E40: .4byte ROMREF_0805A270
_08017E44: .4byte 0xFFFF999A
_08017E48:
	ldr r0, [r5, #0x14]
	ldr r1, _08017E6C @ => 0x00003333
	adds r0, r0, r1
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0x17
	ands r0, r1
	cmp r0, #0
	bne _08017E64
	adds r0, r5, #0
	movs r1, #2
	bl FUN_08002038
_08017E64:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017E6C: .4byte 0x00003333

	thumb_func_start FUN_08017E70
FUN_08017E70: @ 0x08017E70
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, _08017E88 @ => 0x0000011D
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #7
	beq _08017EE0
	cmp r0, #7
	bgt _08017E8C
	cmp r0, #0
	beq _08017E92
	b _08017FA4
	.align 2, 0
_08017E88: .4byte 0x0000011D
_08017E8C:
	cmp r0, #0x19
	beq _08017F54
	b _08017FA4
_08017E92:
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _08017ED8 @ => 0x0805F200
	adds r4, r4, r0
	ldr r1, _08017EDC @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	adds r0, r5, #0
	movs r1, #7
	bl FUN_08001F84
	movs r0, #0x3c
	movs r1, #0x78
	bl FUN_080424F8
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r5, r2
	strh r0, [r1]
	b _08017FA4
	.align 2, 0
_08017ED8: .4byte ROMREF_0805F200
_08017EDC: .4byte ROMREF_0805A270
_08017EE0:
	movs r0, #0x90
	lsls r0, r0, #1
	adds r6, r5, r0
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	ldr r1, _08017F48 @ => 0xFFFF0000
	cmp r0, r1
	bne _08017FA4
	movs r0, #0
	movs r1, #7
	bl FUN_080424F8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl FUN_08001FF0
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _08017F4C @ => 0x0805F200
	adds r4, r4, r0
	adds r4, #8
	ldr r1, _08017F50 @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	movs r0, #0x1e
	movs r1, #0x3c
	bl FUN_080424F8
	strh r0, [r6]
	adds r0, r5, #0
	movs r1, #0x19
	bl FUN_08001F84
	b _08017FA4
	.align 2, 0
_08017F48: .4byte 0xFFFF0000
_08017F4C: .4byte ROMREF_0805F200
_08017F50: .4byte ROMREF_0805A270
_08017F54:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r6, r5, r1
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	ldr r1, _08017FAC @ => 0xFFFF0000
	cmp r0, r1
	bne _08017FA4
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _08017FB0 @ => 0x0805F200
	adds r4, r4, r0
	ldr r1, _08017FB4 @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	adds r0, r5, #0
	movs r1, #7
	bl FUN_08001F84
	movs r0, #0x3c
	movs r1, #0x78
	bl FUN_080424F8
	strh r0, [r6]
_08017FA4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08017FAC: .4byte 0xFFFF0000
_08017FB0: .4byte ROMREF_0805F200
_08017FB4: .4byte ROMREF_0805A270

	thumb_func_start FUN_08017FB8
FUN_08017FB8: @ 0x08017FB8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _08017FD4 @ => 0x0000011D
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0xb
	bls _08017FC8
	b _0801817E
_08017FC8:
	lsls r0, r0, #2
	ldr r1, _08017FD8 @ =_08017FDC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08017FD4: .4byte 0x0000011D
_08017FD8: .4byte _08017FDC
_08017FDC: @ jump table
	.4byte _0801800C @ case 0
	.4byte _0801817E @ case 1
	.4byte _0801817E @ case 2
	.4byte _0801817E @ case 3
	.4byte _080180BC @ case 4
	.4byte _0801817E @ case 5
	.4byte _0801817E @ case 6
	.4byte _0801817E @ case 7
	.4byte _08018050 @ case 8
	.4byte _0801817E @ case 9
	.4byte _0801817E @ case 10
	.4byte _08018158 @ case 11
_0801800C:
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _08018048 @ => 0x0805F200
	adds r4, r4, r0
	ldr r1, _0801804C @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	adds r0, r5, #0
	movs r1, #7
	bl FUN_08001F84
	adds r0, r5, #0
	bl FUN_08001848
	b _0801817E
	.align 2, 0
_08018048: .4byte ROMREF_0805F200
_0801804C: .4byte ROMREF_0805A270
_08018050:
	adds r0, r5, #0
	bl FUN_08001848
	ldr r0, _080180AC @ => 0x0000010D
	bl FUN_080213F8
	cmp r0, #0
	bne _08018118
	ldr r0, _080180B0 @ => 0x03004200
	ldr r1, [r0]
	adds r0, r5, #0
	bl FUN_08001BF4
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl FUN_08001FF0
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _080180B4 @ => 0x0805F200
	adds r4, r4, r0
	adds r4, #0x18
	ldr r1, _080180B8 @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	adds r0, r5, #0
	movs r1, #4
	bl FUN_08001F84
	b _0801817E
	.align 2, 0
_080180AC: .4byte 0x0000010D
_080180B0: .4byte gUnk_03004200
_080180B4: .4byte ROMREF_0805F200
_080180B8: .4byte ROMREF_0805A270
_080180BC:
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0801817E
	movs r4, #0x85
	lsls r4, r4, #1
	adds r0, r4, #0
	bl FUN_080213F8
	cmp r0, #0
	beq _080180FC
	ldr r4, _08018110 @ => 0x0000010B
	adds r0, r4, #0
	bl FUN_080213F8
	cmp r0, #0
	beq _080180FC
	movs r4, #0x86
	lsls r4, r4, #1
	adds r0, r4, #0
	bl FUN_080213F8
	cmp r0, #0
	beq _080180FC
	ldr r4, _08018114 @ => 0x0000010D
	adds r0, r4, #0
	bl FUN_080213F8
	cmp r0, #0
	bne _08018118
_080180FC:
	adds r0, r4, #0
	movs r1, #1
	bl FUN_080213A4
	adds r0, r5, #0
	movs r1, #7
	bl FUN_08001F84
	b _0801817E
	.align 2, 0
_08018110: .4byte 0x0000010B
_08018114: .4byte 0x0000010D
_08018118:
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _08018150 @ => 0x0805F200
	adds r4, r4, r0
	adds r4, #0x20
	ldr r1, _08018154 @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	adds r0, r5, #0
	movs r1, #0xb
	bl FUN_08001F84
	b _0801817E
	.align 2, 0
_08018150: .4byte ROMREF_0805F200
_08018154: .4byte ROMREF_0805A270
_08018158:
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0801817E
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r5, r2
	ldrb r0, [r0]
	adds r2, #1
	adds r1, r5, r2
	ldrb r1, [r1]
	bl FUN_080099A8
	adds r0, r5, #0
	movs r1, #1
	bl FUN_08001FB0
_0801817E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_08018184
FUN_08018184: @ 0x08018184
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r0, _080181AC @ => 0x03004200
	ldr r7, [r0]
	movs r0, #0
	mov r8, r0
	ldr r1, _080181B0 @ => 0x0000011D
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0x19
	bls _080181A0
	b _08018576
_080181A0:
	lsls r0, r0, #2
	ldr r1, _080181B4 @ =_080181B8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080181AC: .4byte gUnk_03004200
_080181B0: .4byte 0x0000011D
_080181B4: .4byte _080181B8
_080181B8: @ jump table
	.4byte _08018220 @ case 0
	.4byte _08018576 @ case 1
	.4byte _08018226 @ case 2
	.4byte _08018576 @ case 3
	.4byte _080184FC @ case 4
	.4byte _08018576 @ case 5
	.4byte _08018576 @ case 6
	.4byte _08018274 @ case 7
	.4byte _08018576 @ case 8
	.4byte _08018576 @ case 9
	.4byte _08018434 @ case 10
	.4byte _08018576 @ case 11
	.4byte _08018576 @ case 12
	.4byte _08018576 @ case 13
	.4byte _08018576 @ case 14
	.4byte _08018576 @ case 15
	.4byte _08018576 @ case 16
	.4byte _08018576 @ case 17
	.4byte _08018576 @ case 18
	.4byte _08018576 @ case 19
	.4byte _08018576 @ case 20
	.4byte _08018576 @ case 21
	.4byte _08018576 @ case 22
	.4byte _08018576 @ case 23
	.4byte _08018576 @ case 24
	.4byte _08018346 @ case 25
_08018220:
	adds r0, r5, #0
	bl FUN_08007DA4
_08018226:
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _0801826C @ => 0x0805F200
	adds r4, r4, r0
	ldr r1, _08018270 @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	adds r0, r5, #0
	movs r1, #7
	bl FUN_08001F84
	movs r0, #0
	movs r1, #0x5a
	bl FUN_080424F8
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r5, r2
	strh r0, [r1]
	b _08018576
	.align 2, 0
_0801826C: .4byte ROMREF_0805F200
_08018270: .4byte ROMREF_0805A270
_08018274:
	movs r0, #0x90
	lsls r0, r0, #1
	adds r6, r5, r0
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	ldr r1, _080182C8 @ => 0xFFFF0000
	cmp r0, r1
	bne _080182D4
	adds r0, r5, #0
	movs r1, #0x19
	bl FUN_08001F84
	adds r0, r5, #0
	bl FUN_08007DA4
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _080182CC @ => 0x0805F200
	adds r4, r4, r0
	adds r4, #8
	ldr r1, _080182D0 @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	movs r0, #0
	movs r1, #0x1e
	b _08018558
	.align 2, 0
_080182C8: .4byte 0xFFFF0000
_080182CC: .4byte ROMREF_0805F200
_080182D0: .4byte ROMREF_0805A270
_080182D4:
	ldr r0, _0801832C @ => 0x00000225
	bl FUN_080213F8
	cmp r0, #0
	bne _08018340
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldr r2, [r7, #0x18]
	ldr r3, [r7, #0x1c]
	bl FUN_0802C538
	ldr r1, _08018330 @ => 0x0059FFFF
	cmp r0, r1
	bhi _08018340
	adds r0, r5, #0
	movs r1, #0xa
	bl FUN_08001F84
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _08018334 @ => 0x0805F200
	adds r4, r4, r0
	adds r4, #8
	ldr r1, _08018338 @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	ldr r0, _0801833C @ => 0x00000115
	bl FUN_0804DE0C
	b _08018576
	.align 2, 0
_0801832C: .4byte 0x00000225
_08018330: .4byte 0x0059FFFF
_08018334: .4byte ROMREF_0805F200
_08018338: .4byte ROMREF_0805A270
_0801833C: .4byte 0x00000115
_08018340:
	movs r1, #1
	mov r8, r1
	b _08018576
_08018346:
	adds r2, r5, #0
	adds r2, #0x78
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08018368
	ldr r0, _08018364 @ => 0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08001F84
	b _08018602
	.align 2, 0
_08018364: .4byte 0x0000FFFE
_08018368:
	movs r2, #0x90
	lsls r2, r2, #1
	adds r6, r5, r2
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	ldr r1, _080183BC @ => 0xFFFF0000
	cmp r0, r1
	bne _080183C8
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _080183C0 @ => 0x0805F200
	adds r4, r4, r0
	ldr r1, _080183C4 @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	adds r0, r5, #0
	movs r1, #7
	bl FUN_08001F84
	movs r0, #0
	movs r1, #0x5a
	bl FUN_080424F8
	strh r0, [r6]
	b _080183CE
	.align 2, 0
_080183BC: .4byte 0xFFFF0000
_080183C0: .4byte ROMREF_0805F200
_080183C4: .4byte ROMREF_0805A270
_080183C8:
	adds r0, r5, #0
	bl FUN_08001824
_080183CE:
	ldr r0, _08018424 @ => 0x00000225
	bl FUN_080213F8
	cmp r0, #0
	beq _080183DA
	b _080184EE
_080183DA:
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldr r2, [r7, #0x18]
	ldr r3, [r7, #0x1c]
	bl FUN_0802C538
	ldr r1, _08018428 @ => 0x0059FFFF
	cmp r0, r1
	bls _080183EE
	b _080184EE
_080183EE:
	adds r0, r5, #0
	movs r1, #0xa
	bl FUN_08001F84
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _0801842C @ => 0x0805F200
	adds r4, r4, r0
	adds r4, #8
	ldr r1, _08018430 @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	b _08018576
	.align 2, 0
_08018424: .4byte 0x00000225
_08018428: .4byte 0x0059FFFF
_0801842C: .4byte ROMREF_0805F200
_08018430: .4byte ROMREF_0805A270
_08018434:
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldr r2, [r7, #0x18]
	ldr r3, [r7, #0x1c]
	bl FUN_0802C538
	ldr r1, _080184A0 @ => 0x0059FFFF
	cmp r0, r1
	bhi _080184AC
	adds r0, r5, #0
	adds r1, r7, #0
	bl FUN_08001BF4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r5, #0x12]
	cmp r0, r1
	beq _08018498
	adds r0, r5, #0
	adds r1, r7, #0
	bl FUN_08001BF4
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl FUN_08001FF0
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _080184A4 @ => 0x0805F200
	adds r4, r4, r0
	adds r4, #8
	ldr r1, _080184A8 @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
_08018498:
	adds r0, r5, #0
	bl FUN_08001824
	b _080184EE
	.align 2, 0
_080184A0: .4byte 0x0059FFFF
_080184A4: .4byte ROMREF_0805F200
_080184A8: .4byte ROMREF_0805A270
_080184AC:
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _080184F4 @ => 0x0805F200
	adds r4, r4, r0
	ldr r1, _080184F8 @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	adds r0, r5, #0
	movs r1, #7
	bl FUN_08001F84
	movs r0, #0
	movs r1, #0x5a
	bl FUN_080424F8
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r5, r2
	strh r0, [r1]
_080184EE:
	movs r0, #1
	mov r8, r0
	b _08018576
	.align 2, 0
_080184F4: .4byte ROMREF_0805F200
_080184F8: .4byte ROMREF_0805A270
_080184FC:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r6, r5, r1
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	ldr r1, _08018560 @ => 0xFFFF0000
	cmp r0, r1
	bne _08018570
	ldr r2, _08018564 @ => 0x0805F410
	ldrh r1, [r5, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r5, #0x14]
	adds r0, r1, #0
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _08018568 @ => 0x0805F200
	adds r4, r4, r0
	ldr r1, _0801856C @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	adds r0, r5, #0
	movs r1, #7
	bl FUN_08001F84
	movs r0, #0
	movs r1, #0x5a
_08018558:
	bl FUN_080424F8
	strh r0, [r6]
	b _08018576
	.align 2, 0
_08018560: .4byte 0xFFFF0000
_08018564: .4byte ROMREF_0805F410
_08018568: .4byte ROMREF_0805F200
_0801856C: .4byte ROMREF_0805A270
_08018570:
	adds r0, r5, #0
	bl FUN_08001824
_08018576:
	mov r2, r8
	cmp r2, #1
	bne _08018602
	ldr r0, _0801860C @ => 0x00000225
	bl FUN_080213F8
	cmp r0, #0
	bne _08018602
	movs r0, #0x80
	lsls r0, r0, #1
	bl FUN_080213F8
	cmp r0, #1
	bne _08018602
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldr r2, [r7, #0x18]
	ldr r3, [r7, #0x1c]
	bl FUN_0802C538
	ldr r1, _08018610 @ => 0x003BFFFF
	cmp r0, r1
	bhi _08018602
	adds r0, r5, #0
	adds r1, r7, #0
	bl FUN_08001BF4
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl FUN_08001FF0
	ldr r0, [r5, #0x14]
	lsls r0, r0, #1
	str r0, [r5, #0x14]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0x1e
	strh r0, [r1]
	adds r0, #0xf6
	bl FUN_0804DE0C
	adds r0, r5, #0
	movs r1, #4
	bl FUN_08001F84
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _08018614 @ => 0x0805F200
	adds r4, r4, r0
	adds r4, #0x10
	ldr r1, _08018618 @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
_08018602:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801860C: .4byte 0x00000225
_08018610: .4byte 0x003BFFFF
_08018614: .4byte ROMREF_0805F200
_08018618: .4byte ROMREF_0805A270

	thumb_func_start FUN_0801861C
FUN_0801861C: @ 0x0801861C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldrh r0, [r4, #8]
	cmp r0, #0
	bne _08018690
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _08018690
	adds r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #4
	bne _08018690
	ldr r0, _08018698 @ => 0x03003E28
	movs r1, #3
	bl FUN_08038A98
	ldr r2, _0801869C @ => 0x03004200
	ldr r0, _080186A0 @ => 0x030042B0
	ldrh r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r0, r2
	ldrh r1, [r2, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08018690
	ldr r0, _080186A4 @ => 0x0000FEFF
	ands r0, r1
	strh r0, [r2, #8]
	adds r0, r4, #0
	movs r1, #0x72
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #0x34
	bl FUN_08001FB0
	adds r0, r4, #0
	movs r1, #0x27
	bl FUN_08001F84
	adds r0, r5, #0
	movs r1, #7
	bl FUN_08001F84
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0xff
	strh r0, [r1]
_08018690:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08018698: .4byte gUnk_03003E28
_0801869C: .4byte gUnk_03004200
_080186A0: .4byte gUnk_030042B0
_080186A4: .4byte 0x0000FEFF

	thumb_func_start FUN_080186A8
FUN_080186A8: @ 0x080186A8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _08018774 @ => 0x03004200
	ldr r7, [r0]
	adds r2, r5, #0
	adds r2, #0x78
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801875E
	ldr r0, _08018778 @ => 0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	adds r0, r5, #0
	movs r1, #0x3f
	bl FUN_08001FB0
	adds r0, r5, #0
	bl FUN_08001848
	movs r0, #0x91
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0x3f
	strb r0, [r1]
	adds r3, r5, #0
	adds r3, #0x94
	ldr r2, _0801877C @ => 0x0805F410
	ldrh r1, [r5, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	adds r3, #4
	ldrh r1, [r5, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldrh r1, [r5, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r5, #0x14]
	adds r0, r5, #0
	bl FUN_08007DA4
	adds r0, r5, #0
	bl FUN_08007DA4
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _08018780 @ => 0x0805F200
	adds r4, r4, r0
	ldr r1, _08018784 @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	adds r0, r5, #0
	movs r1, #0xb
	bl FUN_08001F84
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r0, #0xf
	strh r0, [r1]
_0801875E:
	ldr r1, _08018788 @ => 0x0000011D
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0x19
	bls _0801876A
	b _08018AFE
_0801876A:
	lsls r0, r0, #2
	ldr r1, _0801878C @ =_08018790
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08018774: .4byte gUnk_03004200
_08018778: .4byte 0x0000FFFE
_0801877C: .4byte ROMREF_0805F410
_08018780: .4byte ROMREF_0805F200
_08018784: .4byte ROMREF_0805A270
_08018788: .4byte 0x0000011D
_0801878C: .4byte _08018790
_08018790: @ jump table
	.4byte _080187F8 @ case 0
	.4byte _08018AFE @ case 1
	.4byte _08018AFE @ case 2
	.4byte _08018AFE @ case 3
	.4byte _08018A98 @ case 4
	.4byte _08018AFE @ case 5
	.4byte _08018AFE @ case 6
	.4byte _08018860 @ case 7
	.4byte _08018AFE @ case 8
	.4byte _08018A2C @ case 9
	.4byte _08018AFE @ case 10
	.4byte _08018844 @ case 11
	.4byte _0801895C @ case 12
	.4byte _08018AFE @ case 13
	.4byte _08018AFE @ case 14
	.4byte _08018AFE @ case 15
	.4byte _08018AFE @ case 16
	.4byte _08018AFE @ case 17
	.4byte _08018AFE @ case 18
	.4byte _08018AFE @ case 19
	.4byte _08018AFE @ case 20
	.4byte _08018AFE @ case 21
	.4byte _08018AFE @ case 22
	.4byte _08018AFE @ case 23
	.4byte _08018AFE @ case 24
	.4byte _080188F4 @ case 25
_080187F8:
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _0801883C @ => 0x0805F200
	adds r4, r4, r0
	ldr r1, _08018840 @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	adds r0, r5, #0
	movs r1, #7
	bl FUN_08001F84
	movs r0, #0
	movs r1, #0x5a
	bl FUN_080424F8
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r5, r2
	strh r0, [r1]
	b _08018AFE
	.align 2, 0
_0801883C: .4byte ROMREF_0805F200
_08018840: .4byte ROMREF_0805A270
_08018844:
	movs r0, #0x90
	lsls r0, r0, #1
	adds r6, r5, r0
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	ldr r1, _0801885C @ => 0xFFFF0000
	cmp r0, r1
	beq _0801885A
	b _08018AFE
_0801885A:
	b _08018908
	.align 2, 0
_0801885C: .4byte 0xFFFF0000
_08018860:
	adds r0, r5, #0
	bl FUN_08001848
	movs r0, #0xf3
	bl FUN_080213F8
	cmp r0, #0
	bne _08018890
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldr r2, [r7, #0x18]
	ldr r3, [r7, #0x1c]
	bl FUN_0802C538
	ldr r1, _0801888C @ => 0x0031FFFF
	cmp r0, r1
	bhi _08018890
	adds r0, r5, #0
	movs r1, #0xc
	bl FUN_08001F84
	b _08018AFE
	.align 2, 0
_0801888C: .4byte 0x0031FFFF
_08018890:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r6, r5, r1
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	ldr r1, _080188E8 @ => 0xFFFF0000
	cmp r0, r1
	beq _080188A6
	b _08018AFE
_080188A6:
	adds r0, r5, #0
	bl FUN_08007DA4
	adds r0, r5, #0
	movs r1, #0x19
	bl FUN_08001F84
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _080188EC @ => 0x0805F200
	adds r4, r4, r0
	adds r4, #8
	ldr r1, _080188F0 @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	movs r0, #0
	movs r1, #0x1e
	b _0801893E
	.align 2, 0
_080188E8: .4byte 0xFFFF0000
_080188EC: .4byte ROMREF_0805F200
_080188F0: .4byte ROMREF_0805A270
_080188F4:
	movs r2, #0x90
	lsls r2, r2, #1
	adds r6, r5, r2
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	ldr r1, _08018948 @ => 0xFFFF0000
	cmp r0, r1
	bne _08018954
_08018908:
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _0801894C @ => 0x0805F200
	adds r4, r4, r0
	ldr r1, _08018950 @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	adds r0, r5, #0
	movs r1, #7
	bl FUN_08001F84
	movs r0, #0
	movs r1, #0x5a
_0801893E:
	bl FUN_080424F8
	strh r0, [r6]
	b _08018AFE
	.align 2, 0
_08018948: .4byte 0xFFFF0000
_0801894C: .4byte ROMREF_0805F200
_08018950: .4byte ROMREF_0805A270
_08018954:
	adds r0, r5, #0
	bl FUN_08001824
	b _08018AFE
_0801895C:
	ldr r0, [r5, #0x14]
	lsls r0, r0, #1
	str r0, [r5, #0x14]
	movs r0, #0x14
	bl FUN_080425E4
	cmp r0, #1
	bne _080189D0
	adds r0, r5, #0
	bl FUN_08001848
	adds r0, r5, #0
	adds r1, r7, #0
	bl FUN_08001BF4
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl FUN_08001FF0
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _080189C8 @ => 0x0805F200
	adds r4, r4, r0
	adds r4, #0x18
	ldr r1, _080189CC @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0x3c
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #4
	bl FUN_08001F84
	b _08018AFE
	.align 2, 0
_080189C8: .4byte ROMREF_0805F200
_080189CC: .4byte ROMREF_0805A270
_080189D0:
	adds r0, r5, #0
	adds r1, r7, #0
	bl FUN_08001CB8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl FUN_08001FF0
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _08018A24 @ => 0x0805F200
	adds r4, r4, r0
	adds r4, #0x10
	ldr r1, _08018A28 @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r0, #0x5a
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #9
	bl FUN_08001F84
	b _08018AFE
	.align 2, 0
_08018A24: .4byte ROMREF_0805F200
_08018A28: .4byte ROMREF_0805A270
_08018A2C:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08018B04 @ => 0xFFFF0000
	cmp r1, r0
	bne _08018A98
	adds r0, r5, #0
	movs r1, #0x3f
	bl FUN_08001FB0
	adds r0, r5, #0
	bl FUN_08001848
	movs r2, #0x91
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r0, #0x3f
	strb r0, [r1]
	adds r3, r5, #0
	adds r3, #0x94
	ldr r2, _08018B08 @ => 0x0805F410
	ldrh r1, [r5, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	adds r3, #4
	ldrh r1, [r5, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldrh r1, [r5, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r5, #0x14]
	adds r0, r5, #0
	bl FUN_08007DA4
_08018A98:
	movs r0, #0x90
	lsls r0, r0, #1
	adds r6, r5, r0
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	ldr r1, _08018B04 @ => 0xFFFF0000
	cmp r0, r1
	bne _08018AFE
	adds r0, r5, #0
	adds r1, r7, #0
	bl FUN_08001CB8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl FUN_08001FF0
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _08018B0C @ => 0x0805F200
	adds r4, r4, r0
	adds r4, #0x10
	ldr r1, _08018B10 @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	ldr r0, [r5, #0x14]
	lsls r0, r0, #1
	str r0, [r5, #0x14]
	movs r0, #0x5a
	strh r0, [r6]
	adds r0, r5, #0
	movs r1, #9
	bl FUN_08001F84
_08018AFE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018B04: .4byte 0xFFFF0000
_08018B08: .4byte ROMREF_0805F410
_08018B0C: .4byte ROMREF_0805F200
_08018B10: .4byte ROMREF_0805A270

	thumb_func_start FUN_08018B14
FUN_08018B14: @ 0x08018B14
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, _08018B2C @ => 0x0000011D
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _08018B3A
	cmp r0, #2
	bgt _08018B30
	cmp r0, #0
	beq _08018B3A
	b _08018C4E
	.align 2, 0
_08018B2C: .4byte 0x0000011D
_08018B30:
	cmp r0, #7
	beq _08018B88
	cmp r0, #0x19
	beq _08018BE8
	b _08018C4E
_08018B3A:
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _08018B80 @ => 0x0805F200
	adds r4, r4, r0
	ldr r1, _08018B84 @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	adds r0, r5, #0
	movs r1, #7
	bl FUN_08001F84
	movs r0, #0
	movs r1, #0x78
	bl FUN_080424F8
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r5, r2
	strh r0, [r1]
	b _08018C4E
	.align 2, 0
_08018B80: .4byte ROMREF_0805F200
_08018B84: .4byte ROMREF_0805A270
_08018B88:
	movs r0, #0x90
	lsls r0, r0, #1
	adds r6, r5, r0
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	ldr r1, _08018BDC @ => 0xFFFF0000
	cmp r0, r1
	bne _08018C4E
	adds r0, r5, #0
	bl FUN_08007DA4
	adds r0, r5, #0
	movs r1, #0x19
	bl FUN_08001F84
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _08018BE0 @ => 0x0805F200
	adds r4, r4, r0
	adds r4, #8
	ldr r1, _08018BE4 @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	movs r0, #0
	movs r1, #0x1e
	b _08018C32
	.align 2, 0
_08018BDC: .4byte 0xFFFF0000
_08018BE0: .4byte ROMREF_0805F200
_08018BE4: .4byte ROMREF_0805A270
_08018BE8:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r6, r5, r1
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	ldr r1, _08018C3C @ => 0xFFFF0000
	cmp r0, r1
	bne _08018C48
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _08018C40 @ => 0x0805F200
	adds r4, r4, r0
	ldr r1, _08018C44 @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	adds r0, r5, #0
	movs r1, #7
	bl FUN_08001F84
	movs r0, #0
	movs r1, #0x78
_08018C32:
	bl FUN_080424F8
	strh r0, [r6]
	b _08018C4E
	.align 2, 0
_08018C3C: .4byte 0xFFFF0000
_08018C40: .4byte ROMREF_0805F200
_08018C44: .4byte ROMREF_0805A270
_08018C48:
	adds r0, r5, #0
	bl FUN_08001824
_08018C4E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start FUN_08018C54
FUN_08018C54: @ 0x08018C54
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _08018C68 @ => 0x0000011D
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08018C6C
	cmp r0, #3
	beq _08018CC4
	b _08018D44
	.align 2, 0
_08018C68: .4byte 0x0000011D
_08018C6C:
	adds r0, r5, #0
	movs r1, #3
	bl FUN_08001F84
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _08018CBC @ => 0x0805F200
	adds r4, r4, r0
	adds r4, #8
	ldr r1, _08018CC0 @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	lsls r0, r0, #0x10
	str r0, [r5, #0x38]
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	lsls r0, r0, #0x10
	str r0, [r5, #0x3c]
	b _08018D44
	.align 2, 0
_08018CBC: .4byte ROMREF_0805F200
_08018CC0: .4byte ROMREF_0805A270
_08018CC4:
	adds r0, r5, #0
	bl FUN_080081B4
	cmp r0, #1
	bne _08018D08
	movs r2, #0x91
	lsls r2, r2, #1
	adds r0, r5, r2
	ldrb r1, [r0]
	adds r0, r5, #0
	bl FUN_08001FB0
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	bl FUN_08001FF0
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r0, [r5, #0xc]
	ldr r1, [r1]
	orrs r0, r1
	str r0, [r5, #0xc]
	ldr r1, _08018D4C @ => 0x00000145
	adds r0, r5, r1
	ldrb r0, [r0]
	adds r2, #6
	adds r1, r5, r2
	ldrb r1, [r1]
	bl FUN_080099A8
_08018D08:
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08018D44
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _08018D50 @ => 0x0805F200
	adds r4, r4, r0
	adds r4, #8
	ldr r1, _08018D54 @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
_08018D44:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08018D4C: .4byte 0x00000145
_08018D50: .4byte ROMREF_0805F200
_08018D54: .4byte ROMREF_0805A270

	thumb_func_start FUN_08018D58
FUN_08018D58: @ 0x08018D58
	push {r4, r5, r6, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08009B04
	adds r4, r0, #0
	ldrb r5, [r4, #8]
	ldrb r0, [r4, #0xa]
	bl FUN_08021654
	cmp r0, #1
	bne _08018D90
	bl FUN_08021320
	cmp r0, #0x14
	bne _08018D86
	cmp r5, #3
	bne _08018D86
	movs r5, #4
	b _08018D90
_08018D86:
	cmp r5, #0xa
	beq _08018D8E
	movs r0, #0
	b _08018DCE
_08018D8E:
	movs r5, #0xb
_08018D90:
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #0xa]
	movs r0, #4
	ldrsh r3, [r4, r0]
	movs r6, #6
	ldrsh r0, [r4, r6]
	str r0, [sp]
	adds r0, r5, #0
	bl FUN_08017610
	adds r3, r0, #0
	ldr r2, _08018DD8 @ => 0x0805F410
	ldrh r1, [r3, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0x18
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #1
	bne _08018DCC
	ldrb r0, [r4, #0xb]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r1, r3, r2
	strb r0, [r1]
	ldrb r0, [r4, #0xc]
	ldr r6, _08018DDC @ => 0x00000131
	adds r1, r3, r6
	strb r0, [r1]
_08018DCC:
	adds r0, r3, #0
_08018DCE:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08018DD8: .4byte ROMREF_0805F410
_08018DDC: .4byte 0x00000131

	thumb_func_start FUN_08018DE0
FUN_08018DE0: @ 0x08018DE0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _08018E18 @ => 0x0805F200
	adds r4, r4, r0
	lsls r1, r1, #3
	adds r4, r4, r1
	ldr r1, _08018E1C @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08018E18: .4byte ROMREF_0805F200
_08018E1C: .4byte ROMREF_0805A270

	thumb_func_start FUN_08018E20
FUN_08018E20: @ 0x08018E20
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x3a
	bl FUN_08001FB0
	movs r0, #0x91
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x3a
	strb r0, [r1]
	adds r3, r4, #0
	adds r3, #0x94
	ldr r2, _08018E74 @ => 0x0805F410
	ldrh r1, [r4, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	adds r3, #4
	ldrh r1, [r4, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldrh r1, [r4, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r4, #0x14]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08018E74: .4byte ROMREF_0805F410

	thumb_func_start FUN_08018E78
FUN_08018E78: @ 0x08018E78
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r1, #8]
	cmp r0, #0
	bne _08018ECA
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _08018ECA
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0x3a
	bne _08018ECA
	ldr r0, _08018ED0 @ => 0x03003E28
	movs r1, #3
	bl FUN_08038A98
	ldr r2, _08018ED4 @ => 0x03004200
	ldr r0, _08018ED8 @ => 0x030042B0
	ldrh r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08018ECA
	adds r0, r4, #0
	movs r1, #7
	bl FUN_08001F84
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0xff
	strh r0, [r1]
_08018ECA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08018ED0: .4byte gUnk_03003E28
_08018ED4: .4byte gUnk_03004200
_08018ED8: .4byte gUnk_030042B0

	thumb_func_start FUN_08018EDC
FUN_08018EDC: @ 0x08018EDC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x3b
	bl FUN_08001FB0
	movs r0, #0x91
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x3b
	strb r0, [r1]
	adds r3, r4, #0
	adds r3, #0x94
	ldr r2, _08018F30 @ => 0x0805F410
	ldrh r1, [r4, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	adds r3, #4
	ldrh r1, [r4, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldrh r1, [r4, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r4, #0x14]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08018F30: .4byte ROMREF_0805F410

	thumb_func_start FUN_08018F34
FUN_08018F34: @ 0x08018F34
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r1, #8]
	cmp r0, #0
	bne _08018F86
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _08018F86
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0x3b
	bne _08018F86
	ldr r0, _08018F8C @ => 0x03003E28
	movs r1, #3
	bl FUN_08038A98
	ldr r2, _08018F90 @ => 0x03004200
	ldr r0, _08018F94 @ => 0x030042B0
	ldrh r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08018F86
	adds r0, r4, #0
	movs r1, #7
	bl FUN_08001F84
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0xff
	strh r0, [r1]
_08018F86:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08018F8C: .4byte gUnk_03003E28
_08018F90: .4byte gUnk_03004200
_08018F94: .4byte gUnk_030042B0

	thumb_func_start FUN_08018F98
FUN_08018F98: @ 0x08018F98
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x41
	bl FUN_08001FB0
	movs r0, #0x91
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x41
	strb r0, [r1]
	adds r3, r4, #0
	adds r3, #0x94
	ldr r2, _08018FEC @ => 0x0805F410
	ldrh r1, [r4, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	adds r3, #4
	ldrh r1, [r4, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldrh r1, [r4, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r4, #0x14]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08018FEC: .4byte ROMREF_0805F410

	thumb_func_start FUN_08018FF0
FUN_08018FF0: @ 0x08018FF0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _08019038 @ => 0x0000011D
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08019030
	ldrh r0, [r5, #0xa]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _0801903C @ => 0x0805F200
	adds r4, r4, r0
	ldr r1, _08019040 @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	adds r0, r5, #0
	movs r1, #7
	bl FUN_08001F84
_08019030:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08019038: .4byte 0x0000011D
_0801903C: .4byte ROMREF_0805F200
_08019040: .4byte ROMREF_0805A270

	thumb_func_start FUN_08019044
FUN_08019044: @ 0x08019044
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x42
	bl FUN_08001FB0
	movs r0, #0x91
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x42
	strb r0, [r1]
	adds r3, r4, #0
	adds r3, #0x94
	ldr r2, _08019098 @ => 0x0805F410
	ldrh r1, [r4, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	adds r3, #4
	ldrh r1, [r4, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldrh r1, [r4, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r4, #0x14]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08019098: .4byte ROMREF_0805F410

	thumb_func_start FUN_0801909C
FUN_0801909C: @ 0x0801909C
	push {lr}
	movs r1, #0x43
	bl FUN_08001FB0
	pop {r0}
	bx r0

	thumb_func_start FUN_080190A8
FUN_080190A8: @ 0x080190A8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x31
	bl FUN_08001FB0
	adds r3, r4, #0
	adds r3, #0x94
	ldr r2, _080190F4 @ => 0x0805F410
	ldrh r1, [r4, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	adds r3, #4
	ldrh r1, [r4, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldrh r1, [r4, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r4, #0x14]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080190F4: .4byte ROMREF_0805F410

	thumb_func_start FUN_080190F8
FUN_080190F8: @ 0x080190F8
	push {lr}
	adds r2, r0, #0
	ldr r3, _08019114 @ => 0x0000011D
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #7
	bne _08019110
	str r1, [r2, #0x58]
	adds r0, r2, #0
	movs r1, #0xc
	bl FUN_08001F84
_08019110:
	pop {r0}
	bx r0
	.align 2, 0
_08019114: .4byte 0x0000011D

	thumb_func_start FUN_08019118
FUN_08019118: @ 0x08019118
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x3f
	bl FUN_08001FB0
	adds r0, r4, #0
	bl FUN_08001848
	movs r0, #0x91
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x3f
	strb r0, [r1]
	adds r3, r4, #0
	adds r3, #0x94
	ldr r2, _08019178 @ => 0x0805F410
	ldrh r1, [r4, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	adds r3, #4
	ldrh r1, [r4, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldrh r1, [r4, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r4, #0x14]
	adds r0, r4, #0
	bl FUN_08007DA4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08019178: .4byte ROMREF_0805F410

	thumb_func_start FUN_0801917C
FUN_0801917C: @ 0x0801917C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x48
	bl FUN_08001FB0
	movs r0, #0x91
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x48
	strb r0, [r1]
	adds r3, r4, #0
	adds r3, #0x94
	ldr r2, _080191D0 @ => 0x0805F410
	ldrh r1, [r4, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	adds r3, #4
	ldrh r1, [r4, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldrh r1, [r4, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r4, #0x14]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080191D0: .4byte ROMREF_0805F410
