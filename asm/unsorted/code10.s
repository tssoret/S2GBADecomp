.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_0801BD54
FUN_0801BD54: @ 0x0801BD54
	push {lr}
	adds r2, r0, #0
	movs r0, #0
	str r0, [r2, #0x10]
	ldr r0, [r2, #0xc]
	cmp r0, #0
	bne _0801BDF4
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _0801BD84
	ldrh r1, [r2, #2]
	ldr r0, _0801BD80 @ => 0x00003B09
	cmp r1, r0
	bne _0801BD7A
	movs r0, #4
	ldrsb r0, [r2, r0]
	ldrb r1, [r2, #4]
	cmp r0, #0x1d
	beq _0801BDAC
_0801BD7A:
	ldrb r0, [r2, #4]
	adds r0, #1
	b _0801BD96
	.align 2, 0
_0801BD80: .4byte 0x00003B09
_0801BD84:
	ldrh r0, [r2, #2]
	cmp r0, #0
	bne _0801BD92
	movs r0, #4
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _0801BD98
_0801BD92:
	ldrb r0, [r2, #4]
	subs r0, #1
_0801BD96:
	strb r0, [r2, #4]
_0801BD98:
	movs r0, #4
	ldrsb r0, [r2, r0]
	ldrb r1, [r2, #4]
	cmp r0, #0x1d
	ble _0801BDAC
	movs r0, #0
	strb r0, [r2, #4]
	ldrb r0, [r2, #3]
	adds r0, #1
	b _0801BDBA
_0801BDAC:
	lsls r0, r1, #0x18
	cmp r0, #0
	bge _0801BDC0
	movs r0, #0x1d
	strb r0, [r2, #4]
	ldrb r0, [r2, #3]
	subs r0, #1
_0801BDBA:
	strb r0, [r2, #3]
	movs r0, #1
	str r0, [r2, #0x10]
_0801BDC0:
	movs r0, #3
	ldrsb r0, [r2, r0]
	cmp r0, #0x3b
	ble _0801BDD2
	movs r0, #0
	strb r0, [r2, #3]
	ldrb r0, [r2, #2]
	adds r0, #1
	b _0801BDDE
_0801BDD2:
	cmp r0, #0
	bge _0801BDE0
	movs r0, #0x3b
	strb r0, [r2, #3]
	ldrb r0, [r2, #2]
	subs r0, #1
_0801BDDE:
	strb r0, [r2, #2]
_0801BDE0:
	movs r0, #2
	ldrsb r0, [r2, r0]
	cmp r0, #9
	ble _0801BDEC
	movs r0, #9
	b _0801BDF2
_0801BDEC:
	cmp r0, #0
	bge _0801BDF4
	movs r0, #0
_0801BDF2:
	strb r0, [r2, #2]
_0801BDF4:
	pop {r0}
	bx r0

	thumb_func_start FUN_0801BDF8
FUN_0801BDF8: @ 0x0801BDF8
	push {r4, lr}
	adds r4, r0, #0
	strb r1, [r4, #2]
	strb r2, [r4, #3]
	cmp r3, #0
	bne _0801BE08
	strb r3, [r4, #4]
	b _0801BE0C
_0801BE08:
	movs r0, #0x1d
	strb r0, [r4, #4]
_0801BE0C:
	str r3, [r4, #8]
	movs r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0801BE1C
FUN_0801BE1C: @ 0x0801BE1C
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldrh r0, [r2, #2]
	ldrh r1, [r3, #2]
	cmp r0, r1
	bne _0801BE3A
	movs r1, #4
	ldrsb r1, [r2, r1]
	movs r0, #4
	ldrsb r0, [r3, r0]
	cmp r1, r0
	bne _0801BE3A
	movs r0, #1
	b _0801BE3C
_0801BE3A:
	movs r0, #0
_0801BE3C:
	pop {r1}
	bx r1

	thumb_func_start FUN_0801BE40
FUN_0801BE40: @ 0x0801BE40
	push {r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	mov r0, sp
	movs r1, #0
	movs r2, #0x14
	bl memset
	mov r2, sp
	ldrh r1, [r2, #2]
	ldrh r0, [r4, #2]
	movs r3, #0
	cmp r0, r1
	bne _0801BE6A
	movs r1, #4
	ldrsb r1, [r4, r1]
	movs r0, #4
	ldrsb r0, [r2, r0]
	cmp r1, r0
	bne _0801BE6A
	movs r3, #1
_0801BE6A:
	adds r0, r3, #0
	add sp, #0x14
	pop {r4}
	pop {r1}
	bx r1
