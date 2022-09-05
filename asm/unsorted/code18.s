.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_0802781C
FUN_0802781C: @ 0x0802781C
	push {r4, r5, lr}
	ldr r4, _0802785C @ => 0x03004790
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _08027874
	ldr r0, _08027860 @ => 0x03003DF0
	ldr r1, [r0, #0x68]
	ldr r5, _08027864 @ => 0x03004720
	ldr r0, [r5, #8]
	ldr r1, [r1, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	subs r0, #0x14
	ldrh r0, [r0]
	bl FUN_080278B4
	cmp r0, #0
	beq _08027868
	ldr r2, [r4, #0x34]
	ldr r0, [r2, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0xc]
	ldr r0, [r5, #8]
	adds r0, #0x3c
	strh r0, [r2, #8]
	ldr r0, [r4, #0x34]
	movs r1, #0x3a
	bl FUN_08001F84
	b _08027874
	.align 2, 0
_0802785C: .4byte gUnk_03004790
_08027860: .4byte gUnk_03003DF0
_08027864: .4byte gUnk_03004720
_08027868:
	ldr r0, [r4, #0x34]
	ldr r1, [r0, #0xc]
	movs r2, #2
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #0xc]
_08027874:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0802787C
FUN_0802787C: @ 0x0802787C
	push {lr}
	sub sp, #8
	movs r0, #2
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #6
	movs r2, #0x11
	movs r3, #0x12
	bl FUN_0800C7A8
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #3
	movs r1, #0
	bl FUN_0801FEA0
	movs r0, #0xc
	bl FUN_0801FEE8
	movs r0, #4
	bl FUN_080273F4
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080278B4
FUN_080278B4: @ 0x080278B4
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_08006F2C
	cmp r0, #0
	bne _080278CA
	adds r0, r4, #0
	bl FUN_08006F68
	cmp r0, #0
	beq _080278D6
_080278CA:
	bl FUN_08023680
	cmp r0, #0
	beq _080278D6
	movs r0, #1
	b _080278D8
_080278D6:
	movs r0, #0
_080278D8:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_080278E0
FUN_080278E0: @ 0x080278E0
	push {r4, lr}
	sub sp, #8
	ldr r0, _080278FC @ => 0x03004720
	ldr r1, [r0, #0xc]
	adds r4, r0, #0
	cmp r1, #1
	bne _08027904
	ldr r3, _08027900 @ => 0x03004790
	ldr r2, [r3, #0x30]
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _0802790E
	.align 2, 0
_080278FC: .4byte gUnk_03004720
_08027900: .4byte gUnk_03004790
_08027904:
	ldr r3, _08027928 @ => 0x03004790
	ldr r2, [r3, #0x30]
	ldr r0, [r2, #0xc]
	movs r1, #1
	orrs r0, r1
_0802790E:
	str r0, [r2, #0xc]
	ldr r1, _0802792C @ => 0x03002038
	ldr r0, [r4, #0xc]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08027930
	ldr r0, [r3, #0x2c]
	ldr r1, [r0, #0xc]
	movs r2, #2
	rsbs r2, r2, #0
	ands r1, r2
	b _08027938
	.align 2, 0
_08027928: .4byte gUnk_03004790
_0802792C: .4byte gUnk_03002038
_08027930:
	ldr r0, [r3, #0x2c]
	ldr r1, [r0, #0xc]
	movs r2, #1
	orrs r1, r2
_08027938:
	str r1, [r0, #0xc]
	movs r0, #2
	str r0, [sp]
	ldr r0, _0802795C @ => 0x000002D5
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0xd
	movs r2, #0xa
	movs r3, #4
	bl FUN_0800C7A8
	movs r0, #7
	bl FUN_080273F4
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802795C: .4byte 0x000002D5

	thumb_func_start FUN_08027960
FUN_08027960: @ 0x08027960
	bx lr
	.align 2, 0

	thumb_func_start FUN_08027964
FUN_08027964: @ 0x08027964
	push {r4, lr}
	ldr r0, _080279AC @ => 0x03003DF0
	ldr r3, [r0, #0x68]
	ldr r2, [r3, #4]
	ldr r0, _080279B0 @ => 0x03004720
	ldr r1, [r0, #8]
	cmp r1, #4
	bls _080279B8
	lsls r0, r1, #2
	adds r0, r0, r2
	subs r0, #0x14
	ldrh r4, [r0]
	adds r0, r4, #0
	subs r0, #0x9c
	cmp r0, #4
	bhi _080279B8
	subs r1, #5
	adds r0, r3, #0
	movs r2, #1
	bl FUN_08026260
	movs r0, #0xb5
	bl FUN_0804DE0C
	ldr r1, _080279B4 @ => 0x03004200
	ldr r0, [r1]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r0, r2
	strh r4, [r0]
	ldr r0, [r1]
	movs r1, #0x66
	bl FUN_08001F84
	movs r0, #1
	b _080279BA
	.align 2, 0
_080279AC: .4byte gUnk_03003DF0
_080279B0: .4byte gUnk_03004720
_080279B4: .4byte gUnk_03004200
_080279B8:
	movs r0, #0
_080279BA:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_080279C0
FUN_080279C0: @ 0x080279C0
	push {r4, lr}
	ldr r0, _080279F0 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _080279FC
	ldr r4, _080279F4 @ => 0x03004720
	ldr r0, [r4, #0x10]
	str r0, [r4, #8]
	ldr r2, _080279F8 @ => 0x03004790
	ldr r1, [r2]
	movs r0, #2
	strh r0, [r1, #0xa]
	ldr r0, [r2]
	bl FUN_0802D848
	ldr r0, [r4, #8]
	bl FUN_08027A24
	b _08027A16
	.align 2, 0
_080279F0: .4byte gUnk_030042B0
_080279F4: .4byte gUnk_03004720
_080279F8: .4byte gUnk_03004790
_080279FC:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08027A16
	ldr r1, _08027A1C @ => 0x03004720
	ldr r0, [r1, #0xc]
	str r0, [r1, #8]
	ldr r1, _08027A20 @ => 0x03004790
	ldr r0, [r1]
	strh r2, [r0, #0xa]
	ldr r0, [r1]
	bl FUN_0802D848
_08027A16:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08027A1C: .4byte gUnk_03004720
_08027A20: .4byte gUnk_03004790

	thumb_func_start FUN_08027A24
FUN_08027A24: @ 0x08027A24
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r5, #0
	ldr r7, _08027A34 @ => 0x03004790
_08027A2C:
	cmp r5, r6
	bne _08027A38
	adds r4, r5, #0
	b _08027A3A
	.align 2, 0
_08027A34: .4byte gUnk_03004790
_08027A38:
	movs r4, #4
_08027A3A:
	adds r0, r5, #7
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	lsls r1, r5, #4
	ldr r2, _08027A68 @ => 0x08062E14
	adds r1, r1, r2
	ldr r3, _08027A6C @ => 0x09FB6380
	lsls r2, r4, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl FUN_0800192C
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08027A2C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027A68: .4byte ROMREF_08062E14
_08027A6C: .4byte ROMREF_09FB6380

	thumb_func_start FUN_08027A70
FUN_08027A70: @ 0x08027A70
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	movs r6, #1
	ldrh r0, [r4, #6]
	cmp r0, #0x10
	beq _08027B68
	cmp r0, #0x10
	bgt _08027A90
	cmp r0, #0
	beq _08027A9A
	cmp r0, #1
	bne _08027A8E
	b _08027B96
_08027A8E:
	b _08027BAA
_08027A90:
	cmp r0, #0x35
	beq _08027AF4
	cmp r0, #0x36
	beq _08027B20
	b _08027BAA
_08027A9A:
	ldr r0, [r4]
	bl FUN_08001848
	movs r3, #0x8d
	lsls r3, r3, #1
	movs r0, #6
	str r0, [sp]
	movs r0, #0x1d
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xa
	bl FUN_0803DB6C
	ldr r2, [r4]
	ldr r1, _08027AF0 @ => 0x08062E64
	ldr r0, [r5, #0x34]
	ldrb r0, [r0, #0x12]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0x12]
	ldr r0, [r5, #0x34]
	ldrb r0, [r0, #0x12]
	cmp r0, #3
	beq _08027AD2
	cmp r0, #5
	bne _08027ADC
_08027AD2:
	ldr r0, [r4]
	adds r1, r5, #0
	movs r2, #1
	bl FUN_08006DFC
_08027ADC:
	ldr r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0x5a
	strh r1, [r0]
	movs r0, #0x35
	strh r0, [r4, #6]
	b _08027BAA
	.align 2, 0
_08027AF0: .4byte ROMREF_08062E64
_08027AF4:
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08027BAA
	movs r0, #0x5e
	bl FUN_0804DE0C
	ldr r0, [r4]
	bl FUN_08001F78
	movs r0, #0xa9
	bl FUN_0804DE0C
	adds r1, r5, #0
	adds r1, #0xe0
	str r0, [r1]
	movs r0, #0x36
	strh r0, [r4, #6]
	b _08027BAA
_08027B20:
	ldr r5, _08027B60 @ => 0x03003E28
	adds r0, r5, #0
	movs r1, #1
	movs r2, #5
	bl FUN_08038A30
	ldr r0, _08027B64 @ => 0x03004200
	ldr r1, [r4]
	ldr r0, [r0]
	cmp r1, r0
	bne _08027B3C
	movs r0, #1
	bl FUN_0804A870
_08027B3C:
	ldr r3, [r4]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r3, r3, r0
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #5
	bl FUN_0803D944
	cmp r0, #0
	bne _08027BAA
	ldr r0, [r4]
	movs r1, #0x1e
	bl FUN_08001F20
	movs r0, #0x10
	strh r0, [r4, #6]
	b _08027BAA
	.align 2, 0
_08027B60: .4byte gUnk_03003E28
_08027B64: .4byte gUnk_03004200
_08027B68:
	ldr r2, [r4]
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08027BAA
	adds r0, r2, #0
	movs r1, #0xa
	bl FUN_08001F20
	ldr r0, [r4]
	adds r1, r5, #0
	adds r1, #0x54
	adds r2, r4, #0
	adds r2, #0x10
	movs r3, #0
	str r3, [sp]
	movs r3, #2
	bl FUN_08043BB8
	strh r6, [r4, #6]
	b _08027BAA
_08027B96:
	ldr r1, [r4]
	ldr r0, _08027BB4 @ => FUN_08001EBC
	str r0, [r1, #0x64]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #6
	movs r3, #4
	bl FUN_0803DC54
	movs r6, #2
_08027BAA:
	adds r0, r6, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08027BB4: .4byte FUN_08001EBC

	thumb_func_start FUN_08027BB8
FUN_08027BB8: @ 0x08027BB8
	movs r0, #1
	bx lr

	thumb_func_start FUN_08027BBC
FUN_08027BBC: @ 0x08027BBC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl FUN_08001D8C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08027BD6
	ldr r0, [r4, #0x40]
	cmp r0, #1
	bne _08027BD6
	movs r0, #0
	b _08027BD8
_08027BD6:
	movs r0, #1
_08027BD8:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08027BE0
FUN_08027BE0: @ 0x08027BE0
	movs r0, #0x22
	strb r0, [r1]
	movs r0, #0x23
	strb r0, [r1, #1]
	movs r0, #1
	bx lr

	thumb_func_start FUN_08027BEC
FUN_08027BEC: @ 0x08027BEC
	push {r4, lr}
	adds r4, r1, #0
	cmp r2, #0x22
	beq _08027BFA
	cmp r2, #0x23
	beq _08027C1A
	b _08027C30
_08027BFA:
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _08027C30
	ldrb r0, [r4, #0xa]
	movs r1, #0x5b
	bl FUN_0803A10C
	cmp r0, #1
	bne _08027C2C
	ldrb r0, [r4, #0xa]
	movs r1, #0x5c
	bl FUN_0803A10C
	cmp r0, #1
	beq _08027C30
	b _08027C2C
_08027C1A:
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _08027C30
	ldrb r0, [r4, #0xa]
	movs r1, #0x1d
	bl FUN_0803A10C
	cmp r0, #0
	bne _08027C30
_08027C2C:
	movs r0, #0
	b _08027C32
_08027C30:
	movs r0, #1
_08027C32:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_08027C38
FUN_08027C38: @ 0x08027C38
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	adds r7, r1, #0
	adds r4, r2, #0
	bl FUN_0803D1F0
	adds r5, r0, #0
	cmp r5, #0
	beq _08027C88
	strh r4, [r5, #4]
	cmp r4, #0x22
	bne _08027C56
	movs r2, #1
	b _08027C58
_08027C56:
	movs r2, #0
_08027C58:
	ldr r0, [r7, #0x18]
	ldr r1, [r7, #0x1c]
	str r0, [r6, #0x54]
	str r1, [r6, #0x58]
	ldr r0, [r6, #0x34]
	adds r1, r2, #0
	add r2, sp, #4
	bl FUN_08001A84
	adds r2, r5, #0
	adds r2, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, r7, #0
	add r1, sp, #4
	movs r3, #5
	bl FUN_08043BB8
	adds r0, r7, #0
	movs r1, #0xa
	bl FUN_08001F20
	movs r0, #1
	b _08027C8A
_08027C88:
	movs r0, #0
_08027C8A:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08027C94
FUN_08027C94: @ 0x08027C94
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0803D8C8
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	cmp r0, #0x22
	beq _08027CAC
	cmp r0, #0x23
	beq _08027CB6
	movs r0, #0
	b _08027CBC
_08027CAC:
	adds r0, r4, #0
	movs r2, #2
	bl FUN_0803CE88
	b _08027CBC
_08027CB6:
	adds r0, r4, #0
	bl FUN_08027A70
_08027CBC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08027CC4
FUN_08027CC4: @ 0x08027CC4
	bx lr
	.align 2, 0

	thumb_func_start FUN_08027CC8
FUN_08027CC8: @ 0x08027CC8
	movs r0, #1
	bx lr

	thumb_func_start FUN_08027CCC
FUN_08027CCC: @ 0x08027CCC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl FUN_08001D8C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08027CE6
	ldr r0, [r4, #0x40]
	cmp r0, #1
	bne _08027CE6
	movs r0, #0
	b _08027CE8
_08027CE6:
	movs r0, #1
_08027CE8:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08027CF0
FUN_08027CF0: @ 0x08027CF0
	movs r0, #0x36
	strb r0, [r1]
	movs r0, #1
	bx lr

	thumb_func_start FUN_08027CF8
FUN_08027CF8: @ 0x08027CF8
	push {lr}
	cmp r2, #0x36
	bne _08027D04
	ldrh r0, [r1, #8]
	cmp r0, #0
	beq _08027D08
_08027D04:
	movs r0, #0
	b _08027D0A
_08027D08:
	movs r0, #1
_08027D0A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08027D10
FUN_08027D10: @ 0x08027D10
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	bl FUN_0803D1F0
	adds r4, r0, #0
	cmp r4, #0
	bne _08027D28
	movs r0, #0
	b _08027D50
_08027D28:
	strh r7, [r4, #4]
	ldr r0, [r6, #0x34]
	movs r1, #0
	add r2, sp, #4
	bl FUN_08001A84
	adds r2, r4, #0
	adds r2, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	add r1, sp, #4
	movs r3, #3
	bl FUN_08043BB8
	adds r0, r5, #0
	movs r1, #0xa
	bl FUN_08001F20
	movs r0, #1
_08027D50:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_08027D58
FUN_08027D58: @ 0x08027D58
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0803D8C8
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	cmp r0, #0x36
	bne _08027D70
	adds r0, r4, #0
	bl FUN_0803CC7C
	b _08027D72
_08027D70:
	movs r0, #0
_08027D72:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_08027D78
FUN_08027D78: @ 0x08027D78
	bx lr
	.align 2, 0

	thumb_func_start FUN_08027D7C
FUN_08027D7C: @ 0x08027D7C
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08009B04
	adds r4, r0, #0
	bl FUN_080012FC
	adds r5, r0, #0
	movs r0, #4
	ldrsh r1, [r4, r0]
	lsls r1, r1, #0x10
	movs r0, #6
	ldrsh r2, [r4, r0]
	lsls r2, r2, #0x10
	adds r0, r5, #0
	bl FUN_08001728
	ldr r0, [r4]
	strh r0, [r5, #8]
	movs r0, #0xc
	str r0, [r5, #0xc]
	ldrb r1, [r4, #0xc]
	movs r2, #0xb2
	lsls r2, r2, #1
	adds r0, r5, r2
	strh r1, [r0]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r2, r5, r0
	ldrh r1, [r4, #0xa]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	str r0, [r2]
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r1, r5, r2
	ldrb r0, [r4, #0xf]
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #1
	adds r1, r5, r0
	ldrb r0, [r4, #0x10]
	str r0, [r1]
	ldrb r1, [r4, #0x11]
	adds r2, #8
	adds r0, r5, r2
	strb r1, [r0]
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08001FB0
	adds r1, r5, #0
	adds r1, #0x94
	ldr r0, _08027E28 @ => FUN_08027EE4
	str r0, [r1]
	ldrb r0, [r4, #8]
	rsbs r0, r0, #0
	subs r1, #0x18
	strb r0, [r1]
	ldrb r0, [r4, #9]
	rsbs r0, r0, #0
	adds r1, #2
	strb r0, [r1]
	ldrb r0, [r4, #8]
	subs r1, #1
	strb r0, [r1]
	ldrb r0, [r4, #9]
	adds r1, #2
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x80
	movs r1, #1
	strb r1, [r0]
	subs r0, #5
	strb r1, [r0]
	ldr r0, _08027E2C @ => FUN_08027E30
	str r0, [r5, #0x50]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08027E28: .4byte FUN_08027EE4
_08027E2C: .4byte FUN_08027E30

	thumb_func_start FUN_08027E30
FUN_08027E30: @ 0x08027E30
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #4
	bhi _08027EDE
	lsls r0, r0, #2
	ldr r1, _08027E4C @ =_08027E50
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08027E4C: .4byte _08027E50
_08027E50: @ jump table
	.4byte _08027EDE @ case 0
	.4byte _08027E64 @ case 1
	.4byte _08027E6E @ case 2
	.4byte _08027E98 @ case 3
	.4byte _08027EC4 @ case 4
_08027E64:
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	b _08027EDE
_08027E6E:
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08027E94 @ => 0xFFFF0000
	cmp r1, r0
	bne _08027EDE
	ldr r0, [r4, #0xc]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001FB0
	b _08027EDE
	.align 2, 0
_08027E94: .4byte 0xFFFF0000
_08027E98:
	adds r0, r4, #0
	movs r1, #2
	bl FUN_08001FB0
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r0]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r4, r2
	strh r1, [r0]
	ldrb r0, [r4, #0x10]
	ldrb r1, [r4, #0x11]
	bl FUN_08009B04
	adds r1, r0, #0
	ldrb r0, [r1, #0xd]
	ldrb r1, [r1, #0xe]
	bl FUN_080099A8
	b _08027EDE
_08027EC4:
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08001FB0
	ldrb r0, [r4, #0x10]
	ldrb r1, [r4, #0x11]
	bl FUN_08009B04
	adds r1, r0, #0
	ldrb r0, [r1, #0xd]
	ldrb r1, [r1, #0xe]
	bl FUN_080099A8
_08027EDE:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_08027EE4
FUN_08027EE4: @ 0x08027EE4
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	ldrh r0, [r5, #8]
	cmp r0, #0
	bne _08027FC2
	ldr r0, _08027F80 @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08027FC2
	bl FUN_08021780
	adds r1, r0, #0
	cmp r1, #1
	bne _08027FC2
	ldr r0, _08027F84 @ => 0x03003DF0
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r1, [r0]
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r0, r4, r3
	ldr r0, [r0]
	cmp r0, #1
	bne _08027F44
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_080010C0
	cmp r0, #1
	bne _08027F44
	ldr r0, _08027F88 @ => 0x03005BCC
	ldr r0, [r0]
	movs r2, #0x1a
	ldrsh r1, [r4, r2]
	movs r3, #0x1e
	ldrsh r2, [r4, r3]
	subs r2, #0x37
	movs r3, #3
	str r3, [sp]
	movs r3, #1
	bl FUN_0803E4F4
_08027F44:
	ldr r0, _08027F8C @ => 0x030042B0
	ldrh r0, [r0, #0xc]
	movs r5, #1
	ands r5, r0
	ldr r0, _08027F84 @ => 0x03003DF0
	ldr r1, _08027F90 @ => 0x00000404
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _08027F5A
	movs r5, #0
_08027F5A:
	cmp r5, #0
	bne _08027F6A
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _08027FC2
_08027F6A:
	movs r3, #0xb2
	lsls r3, r3, #1
	adds r0, r4, r3
	ldrh r0, [r0]
	cmp r0, #0
	bne _08027F94
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08001FB0
	b _08027F9C
	.align 2, 0
_08027F80: .4byte gUnk_03004374
_08027F84: .4byte gUnk_03003DF0
_08027F88: .4byte gUnk_03005BCC
_08027F8C: .4byte gUnk_030042B0
_08027F90: .4byte 0x00000404
_08027F94:
	adds r0, r4, #0
	movs r1, #3
	bl FUN_08001FB0
_08027F9C:
	ldr r0, [r4, #0xc]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0xc]
	cmp r5, #0
	beq _08027FAE
	bl FUN_08024900
_08027FAE:
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _08027FC2
	ldr r0, _08027FCC @ => 0x03005BCC
	ldr r0, [r0]
	bl FUN_0803E54C
_08027FC2:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027FCC: .4byte gUnk_03005BCC

	thumb_func_start FUN_08027FD0
FUN_08027FD0: @ 0x08027FD0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r4, r0, #0
	adds r5, r1, #0
	movs r6, #1
	ldrh r0, [r5, #6]
	cmp r0, #0
	beq _08027FE6
	cmp r0, #1
	beq _08028078
	b _0802808C
_08027FE6:
	movs r0, #0x64
	rsbs r0, r0, #0
	bl FUN_0802127C
	ldr r0, _08028030 @ => 0x03003DF0
	movs r1, #0xdb
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #2
	rsbs r1, r1, #0
	str r1, [r0]
	movs r0, #6
	str r0, [sp]
	movs r0, #0xd0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0xa
	movs r3, #0x72
	bl FUN_0803DB6C
	movs r0, #0xa
	str r0, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #1
	add r3, sp, #8
	bl FUN_08001DB4
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r4, #0
	movs r2, #0
	cmp r4, r3
	bhs _08028058
	ldr r1, [sp, #8]
	b _08028046
	.align 2, 0
_08028030: .4byte gUnk_03003DF0
_08028034:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r3
	bhs _08028058
	lsls r0, r2, #2
	add r0, sp
	adds r0, #8
	ldr r1, [r0]
_08028046:
	movs r7, #0x1a
	ldrsh r0, [r1, r7]
	cmp r0, #0xce
	bne _08028034
	movs r7, #0x1e
	ldrsh r0, [r1, r7]
	cmp r0, #0x38
	bne _08028034
	adds r4, r1, #0
_08028058:
	adds r0, r4, #0
	movs r1, #3
	bl FUN_08001FB0
	movs r0, #0x72
	bl FUN_0804DE0C
	ldr r0, _08028074 @ => 0x000002A2
	movs r1, #1
	bl FUN_080213A4
	movs r0, #1
	strh r0, [r5, #6]
	b _0802808C
	.align 2, 0
_08028074: .4byte 0x000002A2
_08028078:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #6
	movs r3, #4
	bl FUN_0803DC54
	ldr r1, [r4, #0x34]
	movs r0, #2
	str r0, [r1, #0xc]
	movs r6, #2
_0802808C:
	adds r0, r6, #0
	add sp, #0x30
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08028098
FUN_08028098: @ 0x08028098
	push {r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r4, r0, #0
	adds r5, r1, #0
	movs r6, #1
	ldrh r0, [r5, #6]
	cmp r0, #1
	beq _08028170
	cmp r0, #1
	bgt _080280B2
	cmp r0, #0
	beq _080280B8
	b _08028184
_080280B2:
	cmp r0, #0xc
	beq _080280DC
	b _08028184
_080280B8:
	ldr r0, _080280D8 @ => 0x03004750
	ldr r1, [r0, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08028184
	movs r0, #0xc
	strh r0, [r5, #6]
	bl FUN_08028388
	cmp r0, #0
	beq _08028184
	bl FUN_08028370
	b _08028184
	.align 2, 0
_080280D8: .4byte gUnk_03004750
_080280DC:
	ldr r0, _08028128 @ => 0x03003DF0
	movs r1, #0xdb
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #2
	rsbs r1, r1, #0
	str r1, [r0]
	movs r0, #0
	bl FUN_080212DC
	movs r3, #0x8d
	lsls r3, r3, #1
	movs r0, #6
	str r0, [sp]
	movs r0, #0xd0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0xa
	bl FUN_0803DB6C
	movs r0, #0xa
	str r0, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #1
	add r3, sp, #8
	bl FUN_08001DB4
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r4, #0
	movs r2, #0
	cmp r4, r3
	bhs _08028150
	ldr r1, [sp, #8]
	b _0802813E
	.align 2, 0
_08028128: .4byte gUnk_03003DF0
_0802812C:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r3
	bhs _08028150
	lsls r0, r2, #2
	add r0, sp
	adds r0, #8
	ldr r1, [r0]
_0802813E:
	movs r7, #0x1a
	ldrsh r0, [r1, r7]
	cmp r0, #0xce
	bne _0802812C
	movs r7, #0x1e
	ldrsh r0, [r1, r7]
	cmp r0, #0x38
	bne _0802812C
	adds r4, r1, #0
_08028150:
	adds r0, r4, #0
	movs r1, #3
	bl FUN_08001FB0
	movs r0, #0x72
	bl FUN_0804DE0C
	ldr r0, _0802816C @ => 0x000002A2
	movs r1, #1
	bl FUN_080213A4
	movs r0, #1
	strh r0, [r5, #6]
	b _08028184
	.align 2, 0
_0802816C: .4byte 0x000002A2
_08028170:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #6
	movs r3, #4
	bl FUN_0803DC54
	ldr r1, [r4, #0x34]
	movs r0, #2
	str r0, [r1, #0xc]
	movs r6, #2
_08028184:
	adds r0, r6, #0
	add sp, #0x30
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08028190
FUN_08028190: @ 0x08028190
	movs r0, #1
	bx lr

	thumb_func_start FUN_08028194
FUN_08028194: @ 0x08028194
	push {lr}
	ldr r0, _080281AC @ => 0x03003DF0
	movs r1, #0xdb
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080281B0
	movs r0, #1
	b _080281B2
	.align 2, 0
_080281AC: .4byte gUnk_03003DF0
_080281B0:
	movs r0, #0
_080281B2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_080281B8
FUN_080281B8: @ 0x080281B8
	push {r4, r5, lr}
	adds r4, r1, #0
	movs r5, #0
	ldr r1, _080281D4 @ => 0x03003DF0
	ldr r2, _080281D8 @ => 0x000003FA
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	beq _080281E2
	cmp r0, #1
	bgt _080281DC
	cmp r0, #0
	beq _08028202
	b _08028222
	.align 2, 0
_080281D4: .4byte gUnk_03003DF0
_080281D8: .4byte 0x000003FA
_080281DC:
	cmp r0, #3
	bgt _08028222
	b _08028202
_080281E2:
	movs r0, #2
	bl FUN_080212A0
	cmp r0, #0
	bne _080281F2
	movs r0, #0xf
	strb r0, [r4]
	b _08028222
_080281F2:
	movs r0, #0
	bl FUN_080212A0
	bl FUN_080203CC
	movs r0, #0x2f
	strb r0, [r4]
	b _08028222
_08028202:
	ldr r0, [r1, #8]
	cmp r0, #0x63
	ble _0802821C
	movs r0, #0x64
	bl FUN_080203CC
	adds r0, r5, #0
	adds r1, r0, #1
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	adds r0, r4, r0
	movs r1, #0x31
	strb r1, [r0]
_0802821C:
	adds r1, r4, r5
	movs r0, #0x10
	strb r0, [r1]
_08028222:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0802822C
FUN_0802822C: @ 0x0802822C
	push {lr}
	ldrh r0, [r1, #8]
	cmp r0, #0
	bne _08028276
	ldr r1, _0802824C @ => 0x03003DF0
	ldr r3, _08028250 @ => 0x000003FA
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #1
	beq _0802825A
	cmp r0, #1
	bgt _08028254
	cmp r0, #0
	beq _0802826C
	b _0802827A
	.align 2, 0
_0802824C: .4byte gUnk_03003DF0
_08028250: .4byte 0x000003FA
_08028254:
	cmp r0, #3
	bgt _0802827A
	b _0802826C
_0802825A:
	ldr r0, [r1, #8]
	cmp r0, #0
	bne _08028266
	cmp r2, #0xf
	beq _0802827A
	b _08028276
_08028266:
	cmp r2, #0x2f
	beq _0802827A
	b _08028276
_0802826C:
	ldr r0, [r1, #8]
	cmp r0, #0x63
	bgt _0802827A
	cmp r2, #0x31
	bne _0802827A
_08028276:
	movs r0, #0
	b _0802827C
_0802827A:
	movs r0, #1
_0802827C:
	pop {r1}
	bx r1

	thumb_func_start FUN_08028280
FUN_08028280: @ 0x08028280
	push {r4, lr}
	adds r4, r2, #0
	bl FUN_0803D1F0
	cmp r0, #0
	beq _0802828E
	strh r4, [r0, #4]
_0802828E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_08028294
FUN_08028294: @ 0x08028294
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0803D8C8
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	cmp r0, #0x10
	beq _080282C8
	cmp r0, #0x10
	bgt _080282AE
	cmp r0, #0xf
	beq _080282B8
	b _080282CC
_080282AE:
	cmp r0, #0x2f
	beq _080282C0
	cmp r0, #0x31
	beq _080282C0
	b _080282CC
_080282B8:
	adds r0, r4, #0
	bl FUN_08028098
	b _080282CE
_080282C0:
	adds r0, r4, #0
	bl FUN_08027FD0
	b _080282CE
_080282C8:
	movs r0, #2
	b _080282CE
_080282CC:
	movs r0, #0
_080282CE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_080282D4
FUN_080282D4: @ 0x080282D4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08028300 @ => 0x03003DF0
	movs r1, #0xdb
	lsls r1, r1, #2
	adds r5, r0, r1
	ldr r0, [r5]
	cmp r0, #0
	bne _080282F8
	adds r0, r4, #0
	bl FUN_08028304
	movs r0, #2
	rsbs r0, r0, #0
	str r0, [r5]
	ldr r1, [r4, #0x34]
	movs r0, #2
	str r0, [r1, #0xc]
_080282F8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08028300: .4byte gUnk_03003DF0

	thumb_func_start FUN_08028304
FUN_08028304: @ 0x08028304
	push {r4, r5, lr}
	sub sp, #0x2c
	movs r0, #0xa
	str r0, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #1
	add r3, sp, #4
	bl FUN_08001DB4
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r4, #0
	movs r2, #0
	cmp r4, r3
	bhs _0802834C
	ldr r1, [sp, #4]
	b _0802833A
_08028328:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r3
	bhs _0802834C
	lsls r0, r2, #2
	add r0, sp
	adds r0, #4
	ldr r1, [r0]
_0802833A:
	movs r5, #0x1a
	ldrsh r0, [r1, r5]
	cmp r0, #0xce
	bne _08028328
	movs r5, #0x1e
	ldrsh r0, [r1, r5]
	cmp r0, #0x38
	bne _08028328
	adds r4, r1, #0
_0802834C:
	adds r0, r4, #0
	movs r1, #3
	bl FUN_08001FB0
	movs r0, #0x72
	bl FUN_0804DE0C
	ldr r0, _0802836C @ => 0x000002A2
	movs r1, #1
	bl FUN_080213A4
	add sp, #0x2c
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802836C: .4byte 0x000002A2

	thumb_func_start FUN_08028370
FUN_08028370: @ 0x08028370
	push {lr}
	ldr r1, _08028380 @ => 0x03005C60
	ldr r0, _08028384 @ => 0x00000863
	strh r0, [r1]
	bl FUN_08041BF0
	pop {r0}
	bx r0
	.align 2, 0
_08028380: .4byte gChoiceIDs
_08028384: .4byte 0x00000863

	thumb_func_start FUN_08028388
FUN_08028388: @ 0x08028388
	push {r4, lr}
	movs r4, #0
	bl FUN_0802956C
	cmp r0, #0
	beq _0802839A
	bl FUN_0802964C
	movs r4, #1
_0802839A:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_080283A4
FUN_080283A4: @ 0x080283A4
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	movs r6, #1
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _080283B6
	strh r6, [r4, #6]
_080283B6:
	ldrh r0, [r4, #6]
	cmp r0, #1
	beq _08028428
	cmp r0, #1
	bgt _080283C6
	cmp r0, #0
	beq _080283CC
	b _08028436
_080283C6:
	cmp r0, #0x29
	beq _080283F2
	b _08028436
_080283CC:
	movs r0, #6
	str r0, [sp]
	movs r0, #0x2a
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xb
	movs r3, #0x31
	bl FUN_0803DB6C
	movs r0, #0x29
	strh r0, [r4, #6]
	ldr r0, [r4]
	movs r2, #0x93
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r0, #0x96
	strh r0, [r1]
	b _08028436
_080283F2:
	ldr r0, _08028420 @ => 0x03003E28
	movs r1, #1
	movs r2, #2
	bl FUN_08038A30
	ldr r0, [r4]
	movs r2, #0x93
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	ldr r1, _08028424 @ => 0xFFFF0000
	cmp r0, r1
	bne _08028436
	adds r1, r5, #0
	adds r1, #0x68
	movs r0, #0x19
	strh r0, [r1]
	strh r6, [r4, #6]
	b _08028436
	.align 2, 0
_08028420: .4byte gUnk_03003E28
_08028424: .4byte 0xFFFF0000
_08028428:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #4
	bl FUN_0803DC54
	movs r6, #2
_08028436:
	adds r0, r6, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_08028440
FUN_08028440: @ 0x08028440
	adds r0, #0x68
	movs r1, #0
	strh r1, [r0]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start FUN_0802844C
FUN_0802844C: @ 0x0802844C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl FUN_08001D8C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08028462
	ldr r0, [r4, #0x40]
	cmp r0, #1
	beq _08028484
_08028462:
	ldr r0, _08028480 @ => 0x03003DF0
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xc
	ble _08028484
	adds r0, r4, #0
	adds r0, #0x68
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08028484
	movs r0, #1
	b _08028486
	.align 2, 0
_08028480: .4byte gUnk_03003DF0
_08028484:
	movs r0, #0
_08028486:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_0802848C
FUN_0802848C: @ 0x0802848C
	push {lr}
	adds r2, r0, #0
	ldr r0, _080284B4 @ => 0x03003DF0
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xc
	ble _080284AC
	adds r0, r2, #0
	adds r0, #0x68
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _080284AC
	movs r0, #0x37
	strb r0, [r1]
_080284AC:
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_080284B4: .4byte gUnk_03003DF0

	thumb_func_start FUN_080284B8
FUN_080284B8: @ 0x080284B8
	push {lr}
	cmp r2, #0x37
	bne _080284D4
	ldrh r0, [r1, #8]
	cmp r0, #0
	beq _080284D4
	ldrb r0, [r1, #0xa]
	movs r1, #0x2a
	bl FUN_0803A10C
	cmp r0, #0
	bne _080284D4
	movs r0, #0
	b _080284D6
_080284D4:
	movs r0, #1
_080284D6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_080284DC
FUN_080284DC: @ 0x080284DC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	bl FUN_0803D1F0
	adds r5, r0, #0
	cmp r5, #0
	beq _0802851E
	movs r0, #0
	mov r8, r0
	strh r4, [r5, #4]
	ldr r0, [r7, #0x34]
	movs r1, #0
	add r2, sp, #4
	bl FUN_08001A84
	adds r2, r5, #0
	adds r2, #0x10
	mov r0, r8
	str r0, [sp]
	adds r0, r6, #0
	add r1, sp, #4
	movs r3, #0
	bl FUN_08043BB8
	adds r0, r6, #0
	movs r1, #0xa
	bl FUN_08001F20
_0802851E:
	adds r0, r5, #0
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_0802852C
FUN_0802852C: @ 0x0802852C
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0803D8C8
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	cmp r0, #0x37
	bne _08028544
	adds r0, r4, #0
	bl FUN_080283A4
	b _08028546
_08028544:
	movs r0, #0
_08028546:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_0802854C
FUN_0802854C: @ 0x0802854C
	push {r4, lr}
	adds r2, r0, #0
	movs r3, #0
	ldr r0, _08028598 @ => 0x03003DF0
	movs r1, #2
	ldrsb r1, [r0, r1]
	adds r4, r0, #0
	cmp r1, #0xc
	ble _08028572
	adds r0, r2, #0
	adds r0, #0x68
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0802856C
	movs r3, #1
_0802856C:
	cmp r0, #0x19
	bne _08028572
	movs r3, #0
_08028572:
	movs r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #0xb
	bgt _0802858A
	adds r1, r2, #0
	adds r1, #0x68
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0x19
	bne _0802858A
	movs r0, #0
	strh r0, [r1]
_0802858A:
	ldr r0, [r2, #0x34]
	adds r1, r3, #0
	bl FUN_08000E44
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08028598: .4byte gUnk_03003DF0

	thumb_func_start FUN_0802859C
FUN_0802859C: @ 0x0802859C
	movs r0, #1
	bx lr

	thumb_func_start FUN_080285A0
FUN_080285A0: @ 0x080285A0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl FUN_08001D8C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080285BA
	ldr r0, [r4, #0x40]
	cmp r0, #1
	bne _080285BA
	movs r0, #0
	b _080285BC
_080285BA:
	movs r0, #1
_080285BC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_080285C4
FUN_080285C4: @ 0x080285C4
	movs r0, #0xe
	strb r0, [r1]
	movs r0, #1
	bx lr

	thumb_func_start FUN_080285CC
FUN_080285CC: @ 0x080285CC
	push {r4, lr}
	adds r4, r1, #0
	cmp r2, #0xe
	bne _0802860A
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _0802860E
	ldrb r0, [r4, #0xa]
	movs r1, #0x21
	bl FUN_0803A10C
	cmp r0, #1
	bne _0802860A
	ldrb r0, [r4, #0xa]
	movs r1, #0x22
	bl FUN_0803A10C
	cmp r0, #1
	bne _0802860A
	ldrb r0, [r4, #0xa]
	movs r1, #0x23
	bl FUN_0803A10C
	cmp r0, #1
	bne _0802860A
	ldrb r0, [r4, #0xa]
	movs r1, #0x24
	bl FUN_0803A10C
	cmp r0, #1
	beq _0802860E
_0802860A:
	movs r0, #0
	b _08028610
_0802860E:
	movs r0, #1
_08028610:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08028618
FUN_08028618: @ 0x08028618
	push {r4, lr}
	adds r4, r2, #0
	bl FUN_0803D1F0
	cmp r0, #0
	beq _08028626
	strh r4, [r0, #4]
_08028626:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_0802862C
FUN_0802862C: @ 0x0802862C
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0803D8C8
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	cmp r0, #0xe
	bne _08028644
	adds r0, r4, #0
	bl FUN_0803CA6C
	b _08028646
_08028644:
	movs r0, #0
_08028646:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_0802864C
FUN_0802864C: @ 0x0802864C
	bx lr
	.align 2, 0
