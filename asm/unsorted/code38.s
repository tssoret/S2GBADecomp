.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_0804DBA0
FUN_0804DBA0: @ 0x0804DBA0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r4, r0, #0
	adds r6, r1, #0
	mov r8, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r0, #0x32
	bl FUN_080012D8
	adds r5, r0, #0
	ldr r1, _0804DC30 @ => 0x0808F0E8
	lsls r0, r4, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	ldrb r2, [r0, #1]
	adds r0, r5, #0
	bl FUN_08001734
	movs r1, #0
	movs r2, #0
	mov sb, r2
	movs r0, #0x32
	strh r0, [r5, #8]
	strh r4, [r5, #0xa]
	ldr r2, _0804DC34 @ => 0x0000011F
	adds r0, r5, r2
	strb r1, [r0]
	adds r2, r5, #0
	adds r2, #0xa9
	ldrb r1, [r2]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0804DC38 @ => 0x00200011
	str r0, [r5, #0xc]
	ldr r0, _0804DC3C @ => 0x09FC1450
	lsls r4, r6, #2
	adds r4, r4, r6
	add r4, r8
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r1, [r4]
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [r4]
	adds r1, #0x10
	adds r0, r5, #0
	bl FUN_0803EF14
	mov r0, sb
	str r0, [r5, #0x50]
	str r0, [r5, #0x54]
	adds r0, r5, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0804DC30: .4byte ROMREF_0808F0E8
_0804DC34: .4byte 0x0000011F
_0804DC38: .4byte 0x00200011
_0804DC3C: .4byte ROMREF_09FC1450

	thumb_func_start FUN_0804DC40
FUN_0804DC40: @ 0x0804DC40
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r0, #0x32
	bl FUN_080012D8
	adds r6, r0, #0
	ldr r1, _0804DCB4 @ => 0x0808F0E8
	lsls r0, r4, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	ldrb r2, [r0, #1]
	adds r0, r6, #0
	bl FUN_08001734
	movs r1, #0
	movs r7, #0
	movs r0, #0x32
	strh r0, [r6, #8]
	strh r4, [r6, #0xa]
	ldr r2, _0804DCB8 @ => 0x0000011F
	adds r0, r6, r2
	strb r1, [r0]
	adds r2, r6, #0
	adds r2, #0xa9
	ldrb r1, [r2]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0804DCBC @ => 0x00300011
	str r0, [r6, #0xc]
	ldr r4, _0804DCC0 @ => 0x0808E428
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_0803EF14
	subs r4, #8
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_080016FC
	cmp r5, #0
	bne _0804DCA8
	adds r0, r6, #0
	movs r1, #0
	bl FUN_08000E44
_0804DCA8:
	str r7, [r6, #0x50]
	str r7, [r6, #0x54]
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804DCB4: .4byte ROMREF_0808F0E8
_0804DCB8: .4byte 0x0000011F
_0804DCBC: .4byte 0x00300011
_0804DCC0: .4byte ROMREF_0808E428

	thumb_func_start FUN_0804DCC4
FUN_0804DCC4: @ 0x0804DCC4
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	movs r0, #0x32
	bl FUN_080012D8
	adds r4, r0, #0
	movs r1, #0xc3
	movs r2, #0xb
	bl FUN_08001734
	movs r1, #0
	movs r2, #0
	movs r0, #0x32
	strh r0, [r4, #8]
	strh r2, [r4, #0xa]
	ldr r3, _0804DD24 @ => 0x0000011F
	adds r0, r4, r3
	strb r1, [r0]
	adds r3, r4, #0
	adds r3, #0xa9
	ldrb r1, [r3]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _0804DD28 @ => 0x00200001
	str r0, [r4, #0xc]
	str r2, [r4, #0x50]
	str r2, [r4, #0x54]
	ldr r1, _0804DD2C @ => 0x0808E430
	adds r0, r4, #0
	bl FUN_080015B8
	lsls r5, r5, #2
	ldr r0, _0804DD30 @ => 0x0808EF94
	adds r5, r5, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_0803EF14
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0804DD24: .4byte 0x0000011F
_0804DD28: .4byte 0x00200001
_0804DD2C: .4byte ROMREF_0808E430
_0804DD30: .4byte ROMREF_0808EF94

	thumb_func_start FUN_0804DD34
FUN_0804DD34: @ 0x0804DD34
	push {r4, r5, lr}
	sub sp, #4
	movs r0, #1
	bl FUN_0800C5FC
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #2
	movs r1, #0
	bl FUN_0801FEA0
	ldr r5, _0804DD98 @ => 0x03002770
	adds r4, r5, #0
	adds r4, #0xe4
	ldr r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r5, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0804DD9C @ => 0x00000992
	adds r0, r0, r1
	bl FUN_08050820
	bl FUN_08020320
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4]
	bl FUN_0804C448
	bl FUN_08050820
	adds r3, r0, #0
	movs r0, #0x82
	lsls r0, r0, #1
	movs r1, #1
	str r1, [sp]
	movs r1, #0x69
	movs r2, #0x7b
	bl FUN_0801F8B8
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804DD98: .4byte gUnk_03002770
_0804DD9C: .4byte 0x00000992

	thumb_func_start FUN_0804DDA0
FUN_0804DDA0: @ 0x0804DDA0
	ldr r1, _0804DDB0 @ => 0x03002770
	adds r2, r1, #0
	adds r2, #0xe8
	str r0, [r2]
	adds r1, #0xec
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_0804DDB0: .4byte gUnk_03002770

	thumb_func_start FUN_0804DDB4
FUN_0804DDB4: @ 0x0804DDB4
	ldr r1, _0804DDBC @ => 0x03002770
	adds r1, #0xec
	str r0, [r1]
	bx lr
	.align 2, 0
_0804DDBC: .4byte gUnk_03002770

	thumb_func_start FUN_0804DDC0
FUN_0804DDC0: @ 0x0804DDC0
	push {lr}
	bl FUN_0803EDD4
	movs r0, #0
	bl FUN_0803EE14
	movs r0, #1
	bl FUN_0803EE14
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0804DDD8
FUN_0804DDD8: @ 0x0804DDD8
	push {lr}
	ldr r0, _0804DDEC @ => 0x030043A0
	ldr r2, [r0]
	movs r0, #1
	movs r1, #2
	bl FUN_0802CED4
	pop {r0}
	bx r0
	.align 2, 0
_0804DDEC: .4byte gUnk_030043A0

	thumb_func_start FUN_0804DDF0
FUN_0804DDF0: @ 0x0804DDF0
	push {r4, lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_0803B054
	adds r4, r0, #0
	bl FUN_08021320
	bl FUN_0801DF90
	muls r0, r4, r0
	pop {r4}
	pop {r1}
	bx r1
