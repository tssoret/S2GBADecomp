.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_0802CDA4
FUN_0802CDA4: @ 0x0802CDA4
	push {r4, r5, r6, r7, lr}
	bl FUN_08047CC4
	ldr r0, _0802CE34 @ => 0x03004714
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	bl FUN_0802CF4C
	cmp r0, #0
	beq _0802CE08
	ldr r4, _0802CE38 @ => 0x03004374
	ldr r0, [r4]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r4]
	bl FUN_0802D02C
	ldr r3, _0802CE3C @ => 0x03004770
	ldr r0, [r3]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3]
	ldr r0, [r4]
	ldr r1, _0802CE40 @ => 0xFFFFF7FF
	ands r0, r1
	str r0, [r4]
	ldr r2, _0802CE44 @ => 0x03004720
	ldr r1, _0802CE48 @ => 0x03004750
	adds r0, r2, #0
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	ldm r0!, {r5, r6}
	stm r1!, {r5, r6}
	ldm r3!, {r0, r1, r7}
	stm r2!, {r0, r1, r7}
	ldm r3!, {r5, r6, r7}
	stm r2!, {r5, r6, r7}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	bl FUN_0802CF70
	ldr r0, [r4]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
_0802CE08:
	ldr r0, _0802CE4C @ => 0x030042E0
	ldr r1, [r0]
	ldr r0, [r1, #0x30]
	adds r0, #1
	str r0, [r1, #0x30]
	bl FUN_0802492C
	bl FUN_0802D004
	bl FUN_0800133C
	bl FUN_0800C06C
	bl FUN_08053618
	bl FUN_0801584C
	bl FUN_0803B844
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802CE34: .4byte gUnk_03004714
_0802CE38: .4byte gUnk_03004374
_0802CE3C: .4byte gUnk_03004770
_0802CE40: .4byte 0xFFFFF7FF
_0802CE44: .4byte gUnk_03004720
_0802CE48: .4byte gUnk_03004750
_0802CE4C: .4byte gUnk_030042E0
