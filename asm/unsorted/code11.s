.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_0801D9B0
FUN_0801D9B0: @ 0x0801D9B0
	push {r4, lr}
	ldr r2, _0801D9E0 @ => 0x03001B90
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _0801D9EC
	ldr r2, _0801D9E4 @ => 0x04000004
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801D9D2
	movs r3, #2
_0801D9C8:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0801D9C8
_0801D9D2:
	ldr r0, _0801D9E8 @ => 0x0000FFFF
	adds r1, r0, #0
	movs r0, #0xa0
	lsls r0, r0, #0x13
	strh r1, [r0]
	b _0801DA18
	.align 2, 0
_0801D9E0: .4byte gUnk_03001B90
_0801D9E4: .4byte 0x04000004
_0801D9E8: .4byte 0x0000FFFF
_0801D9EC:
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r0, [r2]
	ldrh r1, [r1]
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r2, _0801DA20 @ => 0x04000004
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801DA12
	movs r3, #2
_0801DA08:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0801DA08
_0801DA12:
	movs r0, #0x80
	lsls r0, r0, #0x13
	strh r4, [r0]
_0801DA18:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801DA20: .4byte 0x04000004

	thumb_func_start FUN_0801DA24
FUN_0801DA24: @ 0x0801DA24
	push {r4, r5, lr}
	ldr r0, _0801DA4C @ => 0x03001B90
	ldr r1, [r0, #8]
	adds r5, r0, #0
	cmp r1, #0
	beq _0801DA54
	ldr r2, _0801DA50 @ => 0x04000004
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801DA7C
	movs r3, #2
_0801DA3E:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0801DA3E
	b _0801DA7C
	.align 2, 0
_0801DA4C: .4byte gUnk_03001B90
_0801DA50: .4byte 0x04000004
_0801DA54:
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	ldr r2, _0801DA90 @ => 0x0000F0FF
	ands r2, r0
	ldr r3, _0801DA94 @ => 0x04000004
	ldrh r1, [r3]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801DA76
	movs r4, #2
_0801DA6C:
	ldrh r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0801DA6C
_0801DA76:
	movs r0, #0x80
	lsls r0, r0, #0x13
	strh r2, [r0]
_0801DA7C:
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r0, #0
	strh r0, [r1]
	movs r0, #1
	str r0, [r5, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801DA90: .4byte 0x0000F0FF
_0801DA94: .4byte 0x04000004

	thumb_func_start FUN_0801DA98
FUN_0801DA98: @ 0x0801DA98
	ldr r1, _0801DAA0 @ => 0x03001B90
	movs r0, #0
	str r0, [r1, #4]
	bx lr
	.align 2, 0
_0801DAA0: .4byte gUnk_03001B90

	thumb_func_start FUN_0801DAA4
FUN_0801DAA4: @ 0x0801DAA4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	adds r5, r1, #0
	lsls r0, r5, #2
	adds r0, r0, r5
	mov r1, ip
	adds r1, #4
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #2
	orrs r0, r2
	strb r0, [r1]
	mov r0, ip
	adds r0, #0xa0
	movs r1, #0x19
	strb r1, [r0]
	cmp r5, #0
	bne _0801DAD8
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	b _0801DAE4
_0801DAD8:
	cmp r5, #8
	bne _0801DAE6
	mov r0, ip
	adds r0, #0xa1
	strb r1, [r0]
	adds r0, #2
_0801DAE4:
	strb r1, [r0]
_0801DAE6:
	ldr r1, _0801DB48 @ => 0x03003DF0
	movs r0, #0xdd
	lsls r0, r0, #2
	adds r2, r1, r0
	movs r0, #0
	strh r0, [r2]
	movs r6, #0
	lsls r0, r5, #2
	mov r8, r1
	adds r7, r2, #0
	adds r0, r0, r5
	mov r1, ip
	adds r3, r0, r1
	mov r2, ip
	adds r2, #0xa0
_0801DB04:
	ldrb r4, [r2]
	ldrb r0, [r3]
	cmp r4, r0
	bls _0801DB1A
	ldrb r0, [r2]
	ldrb r1, [r3]
	subs r0, r0, r1
	ldrh r1, [r7]
	adds r0, r0, r1
	strh r0, [r7]
	strb r4, [r3]
_0801DB1A:
	adds r3, #1
	adds r2, #1
	adds r6, #1
	cmp r6, #3
	bls _0801DB04
	ldr r1, _0801DB4C @ => 0x00000372
	add r1, r8
	movs r0, #0xdd
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	cmp r5, #0
	bne _0801DB50
	mov r0, ip
	ldrb r1, [r0, #9]
	movs r0, #1
	orrs r0, r1
	mov r1, ip
	strb r0, [r1, #9]
	b _0801DB8C
	.align 2, 0
_0801DB48: .4byte gUnk_03003DF0
_0801DB4C: .4byte 0x00000372
_0801DB50:
	cmp r5, #1
	bne _0801DB8C
	mov r2, ip
	ldrb r0, [r2, #9]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #9]
	ldrb r0, [r2, #0x13]
	orrs r0, r1
	strb r0, [r2, #0x13]
	adds r2, #0x22
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x14
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
	subs r2, #0xa
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x19
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
	mov r2, ip
	ldrb r0, [r2, #0x1d]
	orrs r1, r0
	strb r1, [r2, #0x1d]
_0801DB8C:
	mov r0, ip
	ldrb r1, [r0, #9]
	movs r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0801DC12
	mov r0, ip
	ldrb r1, [r0, #0x13]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0801DC12
	mov r0, ip
	adds r0, #0x27
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0801DC12
	mov r0, ip
	adds r0, #0x22
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0801DC12
	mov r0, ip
	adds r0, #0x36
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0801DC12
	mov r0, ip
	adds r0, #0x2c
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0801DC12
	mov r0, ip
	adds r0, #0x4f
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0801DC12
	mov r0, ip
	adds r0, #0x45
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0801DC12
	mov r0, ip
	ldrb r1, [r0, #0x1d]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0801DC12
	mov r2, ip
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
_0801DC12:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_0801DC1C
FUN_0801DC1C: @ 0x0801DC1C
	push {r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r1, #0
	add r2, sp, #4
	adds r0, r4, #0
	mov r1, sp
	bl FUN_0801E17C
	ldr r0, [sp, #4]
	lsls r0, r0, #1
	adds r1, r5, #0
	adds r1, #0x79
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801DC48
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801DC4C
_0801DC48:
	movs r0, #0
	b _0801DC74
_0801DC4C:
	add r1, sp, #8
	add r2, sp, #0xc
	adds r0, r4, #0
	bl FUN_0801E17C
	ldr r0, [sp, #0xc]
	lsls r0, r0, #1
	adds r1, r5, #0
	adds r1, #0x78
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	ldr r2, _0801DC7C @ => 0x03004230
	ldr r0, [r2, #4]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #4]
	movs r0, #1
_0801DC74:
	add sp, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0801DC7C: .4byte gUnk_03004230

	thumb_func_start FUN_0801DC80
FUN_0801DC80: @ 0x0801DC80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	adds r7, r1, #0
	lsls r0, r7, #2
	adds r0, r0, r7
	mov r2, r8
	adds r2, #4
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0xf7
	ands r0, r1
	strb r0, [r2]
	mov r0, r8
	adds r0, #0x78
	movs r1, #0
	movs r2, #0x28
	bl FUN_0802CB40
	movs r3, #0
	ldr r2, _0801DD80 @ => 0x08060394
	lsls r5, r7, #4
	adds r0, r2, #0
	adds r0, #8
	adds r0, r5, r0
	ldr r0, [r0]
	ldrh r0, [r0]
	ldr r1, _0801DD84 @ => 0x00000D86
	cmp r0, r1
	beq _0801DCF4
	mov sb, r2
	mov sl, r1
	movs r6, #0
_0801DCCE:
	mov r4, sb
	adds r4, #8
	adds r4, r5, r4
	ldr r0, [r4]
	adds r0, r6, r0
	ldrb r2, [r0, #2]
	mov r0, r8
	adds r1, r3, #0
	str r3, [sp]
	bl FUN_0801E1B8
	adds r6, #4
	ldr r3, [sp]
	adds r3, #1
	ldr r0, [r4]
	adds r0, r6, r0
	ldrh r0, [r0]
	cmp r0, sl
	bne _0801DCCE
_0801DCF4:
	ldr r0, _0801DD88 @ => 0x08060524
	lsls r1, r7, #1
	adds r1, r1, r0
	ldrh r4, [r1]
	adds r1, r7, #1
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r4, r0
	bhs _0801DD18
	adds r5, r0, #0
_0801DD0A:
	adds r0, r4, #0
	movs r1, #0
	bl FUN_080213A4
	adds r4, #1
	cmp r4, r5
	blo _0801DD0A
_0801DD18:
	ldr r0, _0801DD8C @ => 0x00000297
	movs r1, #0
	bl FUN_080213A4
	ldr r0, _0801DD90 @ => 0x00000299
	movs r1, #0
	bl FUN_080213A4
	ldr r0, _0801DD94 @ => 0x0000029A
	movs r1, #0
	bl FUN_080213A4
	ldr r0, _0801DD98 @ => 0x0000029B
	movs r1, #0
	bl FUN_080213A4
	movs r0, #0xa7
	lsls r0, r0, #2
	movs r1, #0
	bl FUN_080213A4
	ldr r0, _0801DD9C @ => 0x0000029D
	movs r1, #0
	bl FUN_080213A4
	ldr r0, _0801DDA0 @ => 0x0000029F
	movs r1, #0
	bl FUN_080213A4
	movs r0, #0xa8
	lsls r0, r0, #2
	movs r1, #0
	bl FUN_080213A4
	bl FUN_08024A10
	ldr r1, _0801DDA4 @ => 0x03003DF0
	ldr r0, _0801DDA8 @ => 0x0000036A
	adds r1, r1, r0
	ldrh r2, [r1]
	ldr r0, _0801DDAC @ => 0x0000FFF9
	ands r0, r2
	strh r0, [r1]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801DD80: .4byte ROMREF_08060394
_0801DD84: .4byte 0x00000D86
_0801DD88: .4byte ROMREF_08060524
_0801DD8C: .4byte 0x00000297
_0801DD90: .4byte 0x00000299
_0801DD94: .4byte 0x0000029A
_0801DD98: .4byte 0x0000029B
_0801DD9C: .4byte 0x0000029D
_0801DDA0: .4byte 0x0000029F
_0801DDA4: .4byte gUnk_03003DF0
_0801DDA8: .4byte 0x0000036A
_0801DDAC: .4byte 0x0000FFF9

	thumb_func_start FUN_0801DDB0
FUN_0801DDB0: @ 0x0801DDB0
	push {lr}
	movs r1, #0
	movs r2, #4
	bl FUN_0802CB40
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0801DDC0
FUN_0801DDC0: @ 0x0801DDC0
	lsls r2, r1, #2
	adds r2, r2, r1
	adds r0, #4
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r1, #1
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start FUN_0801DDD4
FUN_0801DDD4: @ 0x0801DDD4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	cmp r4, #0x15
	bne _0801DDF6
	ldr r0, _0801DE0C @ => 0x03005E20
	ldrh r1, [r0, #0xc]
	lsls r1, r1, #0x11
	lsrs r1, r1, #0x11
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801DDF6
	adds r0, r5, #0
	movs r1, #0x15
	bl FUN_0801DDC0
_0801DDF6:
	lsls r1, r4, #2
	adds r1, r1, r4
	adds r0, r5, #4
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801DE10
	movs r0, #0
	b _0801DE12
	.align 2, 0
_0801DE0C: .4byte gUnk_03005E20
_0801DE10:
	movs r0, #1
_0801DE12:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start FUN_0801DE18
FUN_0801DE18: @ 0x0801DE18
	push {lr}
	lsls r2, r1, #2
	adds r2, r2, r1
	adds r0, #4
	adds r0, r0, r2
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801DE30
	movs r0, #0
	b _0801DE32
_0801DE30:
	movs r0, #1
_0801DE32:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0801DE38
FUN_0801DE38: @ 0x0801DE38
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, #0xa4
	movs r6, #0
	strb r5, [r0]
	bl FUN_08020E84
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_0801DDC0
	adds r4, #0xa0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #4
	bl FUN_0802CB40
	ldr r0, _0801DE6C @ => 0x03003DF0
	movs r1, #0xdd
	lsls r1, r1, #2
	adds r0, r0, r1
	strh r6, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801DE6C: .4byte gUnk_03003DF0

	thumb_func_start FUN_0801DE70
FUN_0801DE70: @ 0x0801DE70
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r0, r1, #0
	add r2, sp, #4
	mov r1, sp
	bl FUN_0801E17C
	ldr r0, [sp, #4]
	lsls r0, r0, #1
	adds r4, #0x78
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #1
	orrs r0, r1
	strb r0, [r4]
	ldr r2, _0801DEA4 @ => 0x03004230
	ldr r0, [r2, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #4]
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801DEA4: .4byte gUnk_03004230

	thumb_func_start FUN_0801DEA8
FUN_0801DEA8: @ 0x0801DEA8
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r0, r1, #0
	add r2, sp, #4
	mov r1, sp
	bl FUN_0801E17C
	ldr r0, [sp, #4]
	lsls r0, r0, #1
	adds r4, #0x78
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #2
	orrs r0, r1
	strb r0, [r4]
	ldr r2, _0801DEDC @ => 0x03004230
	ldr r0, [r2, #4]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #4]
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801DEDC: .4byte gUnk_03004230

	thumb_func_start FUN_0801DEE0
FUN_0801DEE0: @ 0x0801DEE0
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r0, r1, #0
	add r2, sp, #4
	mov r1, sp
	bl FUN_0801E17C
	ldr r0, [sp, #4]
	lsls r0, r0, #1
	adds r4, #0x78
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801DF06
	movs r0, #0
	b _0801DF08
_0801DF06:
	movs r0, #1
_0801DF08:
	add sp, #8
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_0801DF10
FUN_0801DF10: @ 0x0801DF10
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r0, r1, #0
	add r2, sp, #4
	mov r1, sp
	bl FUN_0801E17C
	ldr r0, [sp, #4]
	lsls r0, r0, #1
	adds r4, #0x78
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801DF36
	movs r0, #0
	b _0801DF38
_0801DF36:
	movs r0, #1
_0801DF38:
	add sp, #8
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_0801DF40
FUN_0801DF40: @ 0x0801DF40
	push {r4, lr}
	ldr r4, _0801DF60 @ => 0x08060394
	lsls r3, r0, #4
	adds r3, r3, r4
	ldrh r3, [r3, #2]
	str r3, [r1]
	adds r0, #1
	lsls r0, r0, #4
	adds r0, r0, r4
	ldrh r0, [r0, #2]
	subs r0, #1
	str r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801DF60: .4byte ROMREF_08060394

	thumb_func_start FUN_0801DF64
FUN_0801DF64: @ 0x0801DF64
	push {lr}
	sub sp, #8
	add r2, sp, #4
	mov r1, sp
	bl FUN_0801E17C
	ldr r0, _0801DF8C @ => 0x08060394
	ldr r1, [sp]
	lsls r1, r1, #4
	adds r0, #8
	adds r1, r1, r0
	ldr r0, [sp, #4]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	add sp, #8
	pop {r1}
	bx r1
	.align 2, 0
_0801DF8C: .4byte ROMREF_08060394

	thumb_func_start FUN_0801DF90
FUN_0801DF90: @ 0x0801DF90
	ldr r1, _0801DF9C @ => 0x08060394
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0, #0xc]
	bx lr
	.align 2, 0
_0801DF9C: .4byte ROMREF_08060394

	thumb_func_start FUN_0801DFA0
FUN_0801DFA0: @ 0x0801DFA0
	ldr r1, _0801DFAC @ => 0x08060394
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0, #0xd]
	bx lr
	.align 2, 0
_0801DFAC: .4byte ROMREF_08060394

	thumb_func_start FUN_0801DFB0
FUN_0801DFB0: @ 0x0801DFB0
	adds r1, r0, #0
	adds r1, #0xa4
	ldrb r2, [r1]
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r0, #4
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r1, #4
	orrs r1, r2
	strb r1, [r0]
	bx lr

	thumb_func_start FUN_0801DFC8
FUN_0801DFC8: @ 0x0801DFC8
	push {lr}
	adds r2, r0, #0
	adds r0, #0xa4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r1, r2, #4
	adds r1, r1, r0
	ldrb r3, [r1]
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _0801DFFC
	movs r0, #8
	orrs r0, r3
	strb r0, [r1]
	adds r1, r2, #0
	adds r1, #0xa2
	movs r0, #0x19
	strb r0, [r1]
	ldr r2, _0801E000 @ => 0x03004230
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2, #4]
_0801DFFC:
	pop {r0}
	bx r0
	.align 2, 0
_0801E000: .4byte gUnk_03004230

	thumb_func_start FUN_0801E004
FUN_0801E004: @ 0x0801E004
	push {lr}
	adds r1, r0, #0
	adds r1, #0xa4
	ldrb r2, [r1]
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r0, #4
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0801E022
	movs r0, #0
	b _0801E024
_0801E022:
	movs r0, #1
_0801E024:
	pop {r1}
	bx r1

	thumb_func_start FUN_0801E028
FUN_0801E028: @ 0x0801E028
	push {lr}
	adds r1, r0, #0
	adds r1, #0xa4
	ldrb r2, [r1]
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r0, #4
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0801E046
	movs r0, #0
	b _0801E048
_0801E046:
	movs r0, #1
_0801E048:
	pop {r1}
	bx r1

	thumb_func_start FUN_0801E04C
FUN_0801E04C: @ 0x0801E04C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0801E078 @ => 0x0300407C
	bl FUN_08021320
	adds r1, r0, #0
	adds r0, r5, #0
	bl FUN_0801DAA4
	bl FUN_08021320
	adds r1, r0, #0
	adds r0, r5, #0
	bl FUN_0801DC80
	cmp r4, #0
	beq _0801E07C
	movs r0, #0x21
	bl FUN_0802CEC4
	b _0801E09C
	.align 2, 0
_0801E078: .4byte gEpisode_Data
_0801E07C:
	adds r0, r5, #0
	adds r0, #0xa4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801E092
	movs r0, #0x1e
	movs r1, #0
	movs r2, #2
	bl FUN_0802CED4
	b _0801E09C
_0801E092:
	movs r0, #0x1d
	movs r1, #0
	movs r2, #7
	bl FUN_0802CED4
_0801E09C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0801E0A4
FUN_0801E0A4: @ 0x0801E0A4
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r0, r1, #0
	add r2, sp, #4
	mov r1, sp
	bl FUN_0801E17C
	ldr r0, [sp, #4]
	lsls r0, r0, #1
	adds r4, #0x79
	adds r4, r4, r0
	ldrb r0, [r4]
	add sp, #8
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0801E0C8
FUN_0801E0C8: @ 0x0801E0C8
	ldr r1, _0801E0D4 @ => 0x08060394
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0801E0D4: .4byte ROMREF_08060394

	thumb_func_start FUN_0801E0D8
FUN_0801E0D8: @ 0x0801E0D8
	ldr r1, _0801E0E4 @ => 0x08060394
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	bx lr
	.align 2, 0
_0801E0E4: .4byte ROMREF_08060394

	thumb_func_start FUN_0801E0E8
FUN_0801E0E8: @ 0x0801E0E8
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r2, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	cmp r4, #0x31
	bne _0801E100
	b _0801E12C
_0801E0F8:
	ldrb r0, [r3, #1]
	strb r0, [r5]
	movs r0, #1
	b _0801E12E
_0801E100:
	movs r2, #0
	ldr r0, _0801E134 @ => 0x08060394
	lsls r1, r3, #4
	adds r0, #4
	adds r1, r1, r0
	ldr r1, [r1]
	ldrb r0, [r1]
	cmp r0, #0x31
	beq _0801E12C
_0801E112:
	lsls r0, r2, #2
	adds r3, r0, r1
	ldrb r0, [r3]
	cmp r0, r4
	beq _0801E0F8
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r0, r2, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0x31
	bne _0801E112
_0801E12C:
	movs r0, #0
_0801E12E:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0801E134: .4byte ROMREF_08060394

	thumb_func_start FUN_0801E138
FUN_0801E138: @ 0x0801E138
	adds r0, #0xa4
	ldrb r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start FUN_0801E140
FUN_0801E140: @ 0x0801E140
	adds r0, #0xa3
	movs r1, #0x19
	strb r1, [r0]
	bx lr

	thumb_func_start FUN_0801E148
FUN_0801E148: @ 0x0801E148
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0xa1
	ldrb r0, [r4]
	adds r0, #5
	movs r1, #0
	movs r2, #0x19
	bl FUN_0802C644
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0801E164
FUN_0801E164: @ 0x0801E164
	push {lr}
	movs r1, #0xa8
	bl FUN_08044644
	pop {r0}
	bx r0

	thumb_func_start FUN_0801E170
FUN_0801E170: @ 0x0801E170
	push {lr}
	movs r1, #0xa8
	bl FUN_08044558
	pop {r0}
	bx r0

	thumb_func_start FUN_0801E17C
FUN_0801E17C: @ 0x0801E17C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	movs r2, #0
	ldr r5, _0801E1A8 @ => 0x08060394
_0801E188:
	lsls r0, r2, #4
	adds r0, r0, r5
	ldrh r3, [r0, #2]
	adds r1, r2, #1
	lsls r0, r1, #4
	adds r0, r0, r5
	ldrh r0, [r0, #2]
	subs r0, #1
	cmp r4, r3
	blo _0801E1AC
	cmp r4, r0
	bhi _0801E1AC
	str r2, [r6]
	subs r0, r4, r3
	str r0, [r7]
	b _0801E1B2
	.align 2, 0
_0801E1A8: .4byte ROMREF_08060394
_0801E1AC:
	adds r2, r1, #0
	cmp r2, #0x17
	bls _0801E188
_0801E1B2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_0801E1B8
FUN_0801E1B8: @ 0x0801E1B8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r2, #0
	cmp r5, #0
	beq _0801E1DA
	lsls r3, r1, #1
	adds r1, r4, #0
	adds r1, #0x78
	adds r1, r1, r3
	ldrb r2, [r1]
	movs r0, #4
	orrs r0, r2
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x79
	adds r0, r0, r3
	strb r5, [r0]
_0801E1DA:
	pop {r4, r5}
	pop {r0}
	bx r0
