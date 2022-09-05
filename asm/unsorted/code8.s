.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_0801ADC4
FUN_0801ADC4: @ 0x0801ADC4
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
	ldrb r0, [r4, #8]
	strh r0, [r6, #0xa]
	ldrb r0, [r4, #9]
	strb r0, [r6, #0x12]
	movs r0, #0x88
	lsls r0, r0, #0xa
	str r0, [r6, #0xc]
	adds r0, r6, #0
	movs r1, #0
	bl FUN_08001FB0
	adds r0, r6, #0
	movs r1, #1
	bl FUN_08001F84
	ldr r0, _0801AE24 @ => FUN_0801AE74
	str r0, [r6, #0x50]
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0801AE24: .4byte FUN_0801AE74

	thumb_func_start FUN_0801AE28
FUN_0801AE28: @ 0x0801AE28
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r0, _0801AE60 @ => 0x03002C40
	ldr r1, [r0]
	cmp r1, #0
	beq _0801AE6A
	adds r3, r2, #0
_0801AE3E:
	ldr r2, [r1]
	ldrh r0, [r1, #8]
	cmp r0, #0x10
	bne _0801AE64
	ldrh r0, [r1, #0xa]
	cmp r0, r3
	bne _0801AE64
	cmp r4, #0
	beq _0801AE54
	ldrb r0, [r1, #0x12]
	strb r0, [r4]
_0801AE54:
	ldr r0, [r1, #0x18]
	str r0, [r5]
	ldr r0, [r1, #0x1c]
	str r0, [r6]
	movs r0, #1
	b _0801AE6C
	.align 2, 0
_0801AE60: .4byte gUnk_03002C40
_0801AE64:
	adds r1, r2, #0
	cmp r1, #0
	bne _0801AE3E
_0801AE6A:
	movs r0, #0
_0801AE6C:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0801AE74
FUN_0801AE74: @ 0x0801AE74
	push {lr}
	adds r1, r0, #0
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801AE8E
	cmp r0, #1
	bne _0801AE8E
	adds r0, r1, #0
	bl FUN_080040DC
_0801AE8E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0801AE94
FUN_0801AE94: @ 0x0801AE94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x20
	movs r4, #0
	movs r0, #0
	movs r1, #0
	ldr r2, _0801AEE0 @ => 0x08156188
	movs r3, #0xcd
	lsls r3, r3, #2
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	movs r5, #3
	str r5, [sp, #0x14]
	add r0, sp, #0x18
	movs r1, #2
	bl FUN_0800D83C
	movs r6, #0
	movs r7, #0
	ldr r2, _0801AEE4 @ => 0x0815662C
	ldr r3, _0801AEE8 @ => 0x00000346
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	str r7, [sp, #0x10]
	str r5, [sp, #0x14]
	add r0, sp, #0x1c
	movs r1, #2
	bl FUN_0800D83C
	add sp, #0x20
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801AEE0: .4byte ROMREF_08156188
_0801AEE4: .4byte ROMREF_0815662C
_0801AEE8: .4byte 0x00000346
