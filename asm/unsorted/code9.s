.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_0801B914
FUN_0801B914: @ 0x0801B914
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0802CF4C
	cmp r0, #0
	bne _0801B950
	bl FUN_0804E058
	ldr r0, _0801B958 @ => 0x03001B68
	strh r4, [r0, #0x10]
	ldr r1, _0801B95C @ => 0x03001B88
	movs r0, #1
	str r0, [r1]
	ldr r2, _0801B960 @ => 0x03004374
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _0801B964 @ => 0x03003DFC
	bl FUN_08020320
	movs r0, #0x16
	bl FUN_0802CEC4
	ldr r2, _0801B968 @ => 0x0300317C
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
_0801B950:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801B958: .4byte gUnk_03001B68
_0801B95C: .4byte gUnk_03001B88
_0801B960: .4byte gUnk_03004374
_0801B964: .4byte gSlotName
_0801B968: .4byte gUnk_0300317C

	thumb_func_start FUN_0801B96C
FUN_0801B96C: @ 0x0801B96C
	push {r4, lr}
	ldr r1, _0801B990 @ => 0x03001B68
	ldrh r0, [r1, #0x1a]
	cmp r0, #0
	bne _0801B97A
	movs r0, #1
	strh r0, [r1, #0x1a]
_0801B97A:
	movs r0, #0
	str r0, [r1, #4]
	ldr r4, _0801B994 @ => 0x03003D50
	movs r0, #0x80
	lsls r0, r0, #3
	bl FUN_0802C95C
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801B990: .4byte gUnk_03001B68
_0801B994: .4byte gMessage_TextBuffer

	thumb_func_start FUN_0801B998
FUN_0801B998: @ 0x0801B998
	ldr r1, _0801B9A0 @ => 0x03001B68
	strb r0, [r1, #0x1c]
	bx lr
	.align 2, 0
_0801B9A0: .4byte gUnk_03001B68

	thumb_func_start FUN_0801B9A4
FUN_0801B9A4: @ 0x0801B9A4
	ldr r1, _0801B9AC @ => 0x03001B68
	strb r0, [r1, #0x1d]
	bx lr
	.align 2, 0
_0801B9AC: .4byte gUnk_03001B68

	thumb_func_start FUN_0801B9B0
FUN_0801B9B0: @ 0x0801B9B0
	push {r4, lr}
	ldr r1, _0801B9E8 @ => 0x03006120
	ldr r0, _0801B9EC @ => 0x030042B0
	ldrh r0, [r0, #6]
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r4, [r0]
	adds r4, #0xa7
	adds r0, r4, #0
	movs r1, #8
	bl __modsi3
	subs r4, r4, r0
	asrs r4, r4, #3
	adds r1, r4, #2
	adds r0, r1, #0
	cmp r1, #0
	bge _0801B9DA
	adds r0, r4, #0
	adds r0, #0x21
_0801B9DA:
	asrs r0, r0, #5
	lsls r0, r0, #5
	subs r0, r1, r0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0801B9E8: .4byte gUnk_03006120
_0801B9EC: .4byte gUnk_030042B0

	thumb_func_start FUN_0801B9F0
FUN_0801B9F0: @ 0x0801B9F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0801BA1C @ => 0x09FB6C68
	lsls r1, r4, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0801BA10
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _0801BA0C
	rsbs r0, r0, #0
_0801BA0C:
	bl FUN_080203A8
_0801BA10:
	adds r0, r4, #0
	bl FUN_08050820
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0801BA1C: .4byte MsgPicTable

	thumb_func_start FUN_0801BA20
FUN_0801BA20: @ 0x0801BA20
	bx lr
	.align 2, 0

	thumb_func_start FUN_0801BA24
FUN_0801BA24: @ 0x0801BA24
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _0801BA60 @ => 0x03001B68
	ldrb r0, [r4, #0x1c]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x38
	ldrh r0, [r4, #0x18]
	ldrb r2, [r4, #0x1e]
	ldrh r3, [r4, #0x16]
	str r3, [sp]
	adds r3, r4, #0
	adds r3, #8
	str r3, [sp, #4]
	ldrb r3, [r4, #0x1c]
	str r3, [sp, #8]
	movs r3, #0x80
	lsls r3, r3, #1
	str r3, [sp, #0xc]
	movs r3, #0xb1
	bl FUN_0801FFD4
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801BA60: .4byte gUnk_03001B68

	thumb_func_start FUN_0801BA64
FUN_0801BA64: @ 0x0801BA64
	push {r4, lr}
	ldr r4, _0801BA88 @ => 0x03001B38
	ldr r0, [r4]
	cmp r0, #0
	bne _0801BA80
	ldr r1, _0801BA8C @ => 0x03001B68
	ldrh r0, [r1, #0x1a]
	ldrh r2, [r1, #0x14]
	adds r0, r0, r2
	strh r0, [r1, #0x14]
	ldrh r0, [r1, #0x14]
	bl FUN_0801B42C
	str r0, [r4]
_0801BA80:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801BA88: .4byte gUnk_03001B38
_0801BA8C: .4byte gUnk_03001B68

	thumb_func_start FUN_0801BA90
FUN_0801BA90: @ 0x0801BA90
	movs r0, #0
	bx lr

	thumb_func_start FUN_0801BA94
FUN_0801BA94: @ 0x0801BA94
	movs r0, #0
	bx lr

	thumb_func_start FUN_0801BA98
FUN_0801BA98: @ 0x0801BA98
	movs r0, #0
	bx lr

	thumb_func_start FUN_0801BA9C
FUN_0801BA9C: @ 0x0801BA9C
	ldr r1, _0801BAA4 @ => 0x03001B68
	strh r0, [r1, #0x1a]
	bx lr
	.align 2, 0
_0801BAA4: .4byte gUnk_03001B68

	thumb_func_start FUN_0801BAA8
FUN_0801BAA8: @ 0x0801BAA8
	ldr r1, _0801BAB0 @ => 0x03001B60
	str r0, [r1]
	bx lr
	.align 2, 0
_0801BAB0: .4byte gUnk_03001B60

	thumb_func_start FUN_0801BAB4
FUN_0801BAB4: @ 0x0801BAB4
	movs r0, #1
	bx lr

	thumb_func_start FUN_0801BAB8
FUN_0801BAB8: @ 0x0801BAB8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl FUN_08001D8C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801BAD2
	ldr r0, [r4, #0x40]
	cmp r0, #1
	bne _0801BAD2
	movs r0, #0
	b _0801BAD4
_0801BAD2:
	movs r0, #1
_0801BAD4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0801BADC
FUN_0801BADC: @ 0x0801BADC
	movs r0, #0x22
	strb r0, [r1]
	movs r0, #1
	bx lr

	thumb_func_start FUN_0801BAE4
FUN_0801BAE4: @ 0x0801BAE4
	push {lr}
	cmp r2, #0x22
	bne _0801BAF4
	ldrh r0, [r1, #8]
	cmp r0, #0
	beq _0801BAF4
	movs r0, #0
	b _0801BAF6
_0801BAF4:
	movs r0, #1
_0801BAF6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0801BAFC
FUN_0801BAFC: @ 0x0801BAFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	bl FUN_0803D1F0
	adds r5, r0, #0
	cmp r5, #0
	beq _0801BB46
	strh r7, [r5, #4]
	ldrh r0, [r4, #8]
	bl FUN_0803DCE8
	strh r0, [r5, #8]
	ldr r0, [r6, #0x18]
	ldr r1, [r6, #0x1c]
	str r0, [r4, #0x54]
	str r1, [r4, #0x58]
	ldr r0, [r4, #0x34]
	movs r1, #0
	add r2, sp, #4
	bl FUN_08001A84
	adds r2, r5, #0
	adds r2, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, r6, #0
	add r1, sp, #4
	movs r3, #4
	bl FUN_08043BB8
	adds r0, r6, #0
	movs r1, #0xa
	bl FUN_08001F20
_0801BB46:
	adds r0, r5, #0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_0801BB50
FUN_0801BB50: @ 0x0801BB50
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0803D8C8
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	cmp r0, #0x22
	bne _0801BB6A
	adds r0, r4, #0
	movs r2, #0
	bl FUN_0803CE88
	b _0801BB6C
_0801BB6A:
	movs r0, #0
_0801BB6C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0801BB74
FUN_0801BB74: @ 0x0801BB74
	bx lr
	.align 2, 0
