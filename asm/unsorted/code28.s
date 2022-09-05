.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_0803308C
FUN_0803308C: @ 0x0803308C
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08009B04
	ldr r3, _080330C8 @ => 0x030021B0
	adds r4, r3, #0
	adds r4, #0x94
	ldr r1, [r4]
	adds r3, #0x98
	ldr r2, [r3]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r2, [r0, #4]
	strh r2, [r1]
	ldr r1, [r4]
	ldr r2, [r3]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r0, [r0, #6]
	strh r0, [r1, #2]
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080330C8: .4byte gUnk_030021B0

	thumb_func_start FUN_080330CC
FUN_080330CC: @ 0x080330CC
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	ldr r2, _08033100 @ => 0x030021B0
	adds r0, r2, #0
	adds r0, #0x91
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0xa7
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _0803310A
	cmp r3, #1
	bne _08033104
	movs r3, #2
	b _0803310A
	.align 2, 0
_08033100: .4byte gUnk_030021B0
_08033104:
	cmp r3, #2
	bne _0803310A
	movs r3, #1
_0803310A:
	lsls r0, r3, #3
	adds r0, r0, r3
	adds r0, r4, r0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl FUN_080331B4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_08033124
FUN_08033124: @ 0x08033124
	push {lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #4
	bls _08033138
	movs r0, #8
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _0803313A
_08033138:
	adds r0, r1, #0
_0803313A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08033140
FUN_08033140: @ 0x08033140
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	cmp r0, #4
	bls _0803314E
	movs r1, #1
_0803314E:
	adds r0, r1, #0
	pop {r1}
	bx r1

	thumb_func_start FUN_08033154
FUN_08033154: @ 0x08033154
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	ldrh r0, [r4, #8]
	cmp r0, #4
	bne _080331A6
	movs r0, #0x17
	bl FUN_0804DE0C
	ldr r0, _080331B0 @ => FUN_080327A8
	str r0, [r4, #0x50]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #6
	strh r0, [r1]
	ldr r0, [r4, #0xc]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x58]
	str r0, [r4, #0x58]
	movs r1, #0
	mov r2, sp
	bl FUN_08001A3C
	ldr r3, [r5, #0x58]
	ldr r1, [sp]
	ldr r0, [r3, #0x18]
	adds r1, r1, r0
	str r1, [sp]
	ldr r2, [sp, #4]
	ldr r0, [r3, #0x1c]
	adds r2, r2, r0
	str r2, [sp, #4]
	adds r0, r4, #0
	movs r3, #6
	bl FUN_08001800
_080331A6:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080331B0: .4byte FUN_080327A8

	thumb_func_start FUN_080331B4
FUN_080331B4: @ 0x080331B4
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r0, r1, #0x18
	cmp r2, #0
	beq _080331D0
	ldr r1, _080331CC @ => 0x09FB6518
	lsls r0, r0, #2
	adds r0, r0, r1
	b _080331D2
	.align 2, 0
_080331CC: .4byte ROMREF_09FB6518
_080331D0:
	ldr r0, _08033218 @ => 0x09FB6514
_080331D2:
	ldr r6, [r0]
	ldr r4, _0803321C @ => 0x030021B0
	adds r7, r4, #0
	adds r7, #0x91
	ldrb r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r5, r5, #4
	ldr r1, _08033220 @ => 0x08067154
	adds r1, r5, r1
	adds r2, r6, #0
	movs r3, #0
	bl FUN_0800192C
	ldrb r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, #4
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, _08033224 @ => 0x08067394
	adds r5, r5, r1
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0
	bl FUN_0800192C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033218: .4byte ROMREF_09FB6514
_0803321C: .4byte gUnk_030021B0
_08033220: .4byte ROMREF_08067154
_08033224: .4byte ROMREF_08067394

	thumb_func_start FUN_08033228
FUN_08033228: @ 0x08033228
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	ldr r2, _0803325C @ => 0x030021B0
	ldrh r0, [r0, #0xa]
	adds r5, r2, #0
	adds r5, #0x91
	strb r0, [r5]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r6, r2, #0
	adds r6, #0x2c
	adds r0, r0, r6
	ldr r0, [r0]
	subs r0, #2
	cmp r0, #1
	bls _080332A4
	ldrh r0, [r4, #8]
	cmp r0, #1
	blt _0803328E
	cmp r0, #2
	ble _08033260
	cmp r0, #3
	beq _08033268
	b _0803328E
	.align 2, 0
_0803325C: .4byte gUnk_030021B0
_08033260:
	adds r0, r4, #0
	bl FUN_0803262C
	b _0803328E
_08033268:
	adds r0, r4, #0
	bl FUN_0803262C
	ldrb r0, [r5]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r6
	ldr r0, [r1]
	cmp r0, #1
	bne _08033286
	adds r0, r4, #0
	bl FUN_08032DD8
	b _0803328E
_08033286:
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08032CF8
_0803328E:
	ldr r2, _080332AC @ => 0x030021B0
	adds r0, r2, #0
	adds r0, #0x91
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, #0x18
	adds r0, r0, r2
	movs r1, #1
	str r1, [r0]
_080332A4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080332AC: .4byte gUnk_030021B0

	thumb_func_start FUN_080332B0
FUN_080332B0: @ 0x080332B0
	ldr r2, _080332EC @ => 0x030021B0
	movs r0, #0x91
	adds r0, r0, r2
	mov ip, r0
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	movs r3, #0
	strb r3, [r0, #0x1c]
	mov r0, ip
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r2, #0
	adds r1, #0x20
	adds r0, r0, r1
	str r3, [r0]
	mov r0, ip
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, #0x24
	adds r0, r0, r2
	str r3, [r0]
	bx lr
	.align 2, 0
_080332EC: .4byte gUnk_030021B0

	thumb_func_start FUN_080332F0
FUN_080332F0: @ 0x080332F0
	push {lr}
	movs r0, #0x18
	bl FUN_0804DE0C
	pop {r0}
	bx r0

	thumb_func_start FUN_080332FC
FUN_080332FC: @ 0x080332FC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	mov r8, r1
	mov sb, r2
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r4, [r0]
	lsls r4, r4, #0x1d
	movs r0, #0xc0
	lsls r0, r0, #0x18
	adds r4, r4, r0
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl FUN_0802C254
	ldr r6, _08033358 @ => 0x080678CC
	ldr r5, _0803335C @ => 0x030047F0
	ldr r1, [r5]
	lsls r1, r1, #2
	adds r1, r1, r6
	ldr r1, [r1]
	bl FUN_0802C314
	mov r1, r8
	str r0, [r1]
	adds r0, r4, #0
	bl FUN_0802C210
	ldr r1, [r5]
	lsls r1, r1, #2
	adds r1, r1, r6
	ldr r1, [r1]
	bl FUN_0802C314
	mov r1, sb
	str r0, [r1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08033358: .4byte ROMREF_080678CC
_0803335C: .4byte gUnk_030047F0

	thumb_func_start FUN_08033360
FUN_08033360: @ 0x08033360
	push {r4, r5, lr}
	ldr r0, _08033388 @ => 0x03002C40
	ldr r2, [r0]
	cmp r2, #0
	beq _08033396
	movs r5, #0x80
	lsls r5, r5, #5
	movs r4, #5
	rsbs r4, r4, #0
_08033372:
	ldrh r3, [r2, #8]
	cmp r3, #4
	bne _08033390
	ldr r1, [r2, #0xc]
	adds r0, r1, #0
	ands r0, r5
	cmp r0, #0
	beq _0803338C
	orrs r1, r3
	b _0803338E
	.align 2, 0
_08033388: .4byte gUnk_03002C40
_0803338C:
	ands r1, r4
_0803338E:
	str r1, [r2, #0xc]
_08033390:
	ldr r2, [r2]
	cmp r2, #0
	bne _08033372
_08033396:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_0803339C
FUN_0803339C: @ 0x0803339C
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r1, [r0]
	cmp r4, r1
	beq _080333EA
	strb r4, [r0]
	adds r0, r4, #0
	bl FUN_08033124
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x14
	ldr r0, _080333F0 @ => 0x08067754
	adds r1, r1, r0
	ldr r0, _080333F4 @ => 0x09FB6534
	ldr r2, [r0]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_0800192C
	adds r0, r4, #0
	bl FUN_08033140
	adds r3, r5, #0
	adds r3, #0xa7
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #4
	ldrb r2, [r3]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_080333EA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080333F0: .4byte ROMREF_08067754
_080333F4: .4byte ROMREF_09FB6534
