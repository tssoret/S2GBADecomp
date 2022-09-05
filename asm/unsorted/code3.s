.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_0800F568
FUN_0800F568: @ 0x0800F568
	push {lr}
	movs r0, #1
	bl FUN_0800C4D0
	movs r0, #2
	bl FUN_0800C4D0
	movs r0, #1
	bl FUN_0800C5FC
	movs r0, #2
	bl FUN_0800C5FC
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl FUN_0800CCCC
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl FUN_0800CCCC
	movs r0, #0
	bl FUN_080534A8
	movs r0, #1
	bl FUN_0800C4BC
	movs r0, #2
	bl FUN_0800C4BC
	movs r0, #1
	bl FUN_0800F14C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0800F5B4
FUN_0800F5B4: @ 0x0800F5B4
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r6, r0, #0
	movs r0, #0x6a
	str r0, [sp, #8]
	ldr r4, _0800F634 @ => 0x030033C0
	movs r5, #0
	str r5, [r4, #8]
	ldr r0, _0800F638 @ => 0x0805A888
	ldr r0, [r0]
	bl FUN_0801FE58
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #3
	movs r1, #0
	bl FUN_0801FEA0
	bl FUN_080203E0
	subs r0, #4
	bl FUN_0801FEE8
	ldr r0, _0800F63C @ => 0x03003DFC
	bl FUN_08020320
	adds r0, r6, #0
	bl FUN_08050820
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x65
	movs r1, #0x78
	add r2, sp, #8
	movs r3, #0xc8
	bl FUN_080200E8
	ldr r0, [sp, #8]
	subs r0, #0x94
	str r0, [r4, #0xc]
	ldr r0, _0800F640 @ => 0x0805AD3C
	str r5, [sp]
	movs r1, #4
	movs r2, #0x68
	movs r3, #6
	bl FUN_0802D680
	str r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0xf
	strh r1, [r0]
	ldr r2, [r4]
	ldr r0, [r2, #0xc]
	subs r1, #0x11
	ands r0, r1
	str r0, [r2, #0xc]
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800F634: .4byte gUnk_030033C0
_0800F638: .4byte ROMREF_0805A888
_0800F63C: .4byte gSlotName
_0800F640: .4byte ROMREF_0805AD3C

	thumb_func_start FUN_0800F644
FUN_0800F644: @ 0x0800F644
	push {lr}
	ldr r0, _0800F660 @ => 0x0805A888
	ldr r1, [r0]
	movs r0, #1
	bl FUN_0800C418
	bl FUN_0800F388
	ldr r1, _0800F664 @ => 0x03004720
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	pop {r0}
	bx r0
	.align 2, 0
_0800F660: .4byte ROMREF_0805A888
_0800F664: .4byte gUnk_03004720

	thumb_func_start FUN_0800F668
FUN_0800F668: @ 0x0800F668
	push {r4, lr}
	movs r4, #0
_0800F66C:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x10
	subs r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl FUN_080455AC
	ldr r3, _0800F6A4 @ => 0x04000004
	ldrh r1, [r3]
	movs r0, #2
	ands r0, r1
	adds r2, r4, #2
	cmp r0, #0
	bne _0800F696
	movs r4, #2
_0800F68C:
	ldrh r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0800F68C
_0800F696:
	adds r4, r2, #0
	cmp r4, #0x10
	ble _0800F66C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800F6A4: .4byte 0x04000004

	thumb_func_start FUN_0800F6A8
FUN_0800F6A8: @ 0x0800F6A8
	push {r4, lr}
	movs r4, #0
_0800F6AC:
	movs r0, #0x10
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	bl FUN_080455AC
	ldr r3, _0800F6E4 @ => 0x04000004
	ldrh r1, [r3]
	movs r0, #2
	ands r0, r1
	adds r2, r4, #2
	cmp r0, #0
	bne _0800F6D6
	movs r4, #2
_0800F6CC:
	ldrh r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0800F6CC
_0800F6D6:
	adds r4, r2, #0
	cmp r4, #0x10
	ble _0800F6AC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800F6E4: .4byte 0x04000004

	thumb_func_start FUN_0800F6E8
FUN_0800F6E8: @ 0x0800F6E8
	push {lr}
	movs r0, #0
	movs r1, #0
	bl FUN_0800C61C
	ldr r0, _0800F70C @ => 0x0805A888
	ldr r0, [r0]
	bl FUN_0801FE58
	ldr r2, _0800F710 @ => 0x03004720
	ldr r1, _0800F714 @ => 0x030033D0
	ldrb r0, [r1, #0xc]
	str r0, [r2, #4]
	movs r0, #0
	str r0, [r1, #0x10]
	pop {r0}
	bx r0
	.align 2, 0
_0800F70C: .4byte ROMREF_0805A888
_0800F710: .4byte gUnk_03004720
_0800F714: .4byte gUnk_030033D0

	thumb_func_start FUN_0800F718
FUN_0800F718: @ 0x0800F718
	push {lr}
	bl FUN_08021320
	subs r0, #1
	cmp r0, #0x15
	bhi _0800F7B4
	lsls r0, r0, #2
	ldr r1, _0800F730 @ =_0800F734
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800F730: .4byte _0800F734
_0800F734: @ jump table
	.4byte _0800F7B4 @ case 0
	.4byte _0800F7B4 @ case 1
	.4byte _0800F78C @ case 2
	.4byte _0800F7B4 @ case 3
	.4byte _0800F7A8 @ case 4
	.4byte _0800F794 @ case 5
	.4byte _0800F790 @ case 6
	.4byte _0800F798 @ case 7
	.4byte _0800F7B4 @ case 8
	.4byte _0800F79C @ case 9
	.4byte _0800F7B4 @ case 10
	.4byte _0800F7B4 @ case 11
	.4byte _0800F7A4 @ case 12
	.4byte _0800F7B4 @ case 13
	.4byte _0800F7A0 @ case 14
	.4byte _0800F7B4 @ case 15
	.4byte _0800F7B4 @ case 16
	.4byte _0800F7B4 @ case 17
	.4byte _0800F7B4 @ case 18
	.4byte _0800F7B4 @ case 19
	.4byte _0800F7B0 @ case 20
	.4byte _0800F7AC @ case 21
_0800F78C:
	movs r0, #1
	b _0800F7B6
_0800F790:
	movs r0, #2
	b _0800F7B6
_0800F794:
	movs r0, #3
	b _0800F7B6
_0800F798:
	movs r0, #4
	b _0800F7B6
_0800F79C:
	movs r0, #5
	b _0800F7B6
_0800F7A0:
	movs r0, #6
	b _0800F7B6
_0800F7A4:
	movs r0, #7
	b _0800F7B6
_0800F7A8:
	movs r0, #8
	b _0800F7B6
_0800F7AC:
	movs r0, #9
	b _0800F7B6
_0800F7B0:
	movs r0, #0xa
	b _0800F7B6
_0800F7B4:
	movs r0, #0
_0800F7B6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0800F7BC
FUN_0800F7BC: @ 0x0800F7BC
	ldr r1, _0800F7C4 @ => 0x03004720
	movs r0, #0x16
	str r0, [r1, #4]
	bx lr
	.align 2, 0
_0800F7C4: .4byte gUnk_03004720

	thumb_func_start FUN_0800F7C8
FUN_0800F7C8: @ 0x0800F7C8
	push {lr}
	ldr r2, _0800F7E0 @ => 0x03004720
	movs r1, #0x1e
	str r1, [r2, #0x18]
	str r0, [r2, #4]
	movs r0, #0
	bl FUN_0800F14C
	bl FUN_0800E5D0
	pop {r0}
	bx r0
	.align 2, 0
_0800F7E0: .4byte gUnk_03004720

	thumb_func_start FUN_0800F7E4
FUN_0800F7E4: @ 0x0800F7E4
	push {lr}
	movs r0, #1
	bl FUN_0800C5FC
	ldr r0, _0800F83C @ => 0x03004790
	ldr r2, [r0, #0x20]
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
	ldr r0, _0800F840 @ => 0x030033C0
	ldr r2, [r0]
	ldr r0, [r2, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0xc]
	movs r0, #2
	bl FUN_0800C4D0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl FUN_0800CCCC
	movs r0, #1
	bl FUN_0800C4BC
	bl FUN_08052024
	movs r0, #0
	movs r1, #0
	bl FUN_08045594
	ldr r0, _0800F844 @ => 0x03004720
	ldr r0, [r0, #4]
	cmp r0, #0x17
	beq _0800F836
	movs r0, #1
	bl FUN_0800F14C
_0800F836:
	pop {r0}
	bx r0
	.align 2, 0
_0800F83C: .4byte gUnk_03004790
_0800F840: .4byte gUnk_030033C0
_0800F844: .4byte gUnk_03004720

	thumb_func_start FUN_0800F848
FUN_0800F848: @ 0x0800F848
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	ldr r2, _0800F8A4 @ => 0x030033D0
	adds r1, r2, #0
	adds r1, #0x50
	movs r0, #0
	strb r0, [r1]
	str r0, [r2, #0x74]
	str r0, [r2, #0x78]
	movs r6, #0
	adds r5, r2, #0
_0800F864:
	lsls r4, r6, #2
	adds r7, r5, #0
	adds r7, #0x54
	adds r0, r4, r7
	movs r1, #0
	mov r8, r1
	str r1, [r0]
	mov r0, sb
	adds r1, r6, #0
	bl FUN_08021350
	adds r1, r5, #0
	adds r1, #0x64
	adds r4, r4, r1
	str r0, [r4]
	ldr r1, [r5, #0x78]
	adds r1, r1, r0
	str r1, [r5, #0x78]
	adds r6, #1
	cmp r6, #3
	ble _0800F864
	bl FUN_080215E0
	str r0, [r7, #0x28]
	mov r0, r8
	str r0, [r7, #0x2c]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F8A4: .4byte gUnk_030033D0

	thumb_func_start FUN_0800F8A8
FUN_0800F8A8: @ 0x0800F8A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r7, #0
	ldr r0, _0800F9D0 @ => 0x0805AD4C
	mov sl, r0
_0800F8BA:
	adds r4, r7, #0
	adds r4, #8
	lsls r5, r7, #4
	ldr r1, _0800F9D4 @ => 0x0805A9D0
	adds r2, r5, r1
	movs r0, #0xe
	adds r0, r0, r7
	mov r8, r0
	lsls r6, r0, #2
	ldr r1, _0800F9D8 @ => 0x0805AB08
	adds r0, r6, r1
	ldr r0, [r0]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl FUN_0802D6FC
	lsls r4, r4, #2
	ldr r2, _0800F9DC @ => 0x03004790
	adds r4, r4, r2
	ldr r0, [r4]
	mov r2, sl
	adds r1, r7, r2
	ldrb r1, [r1]
	movs r2, #1
	bl FUN_0800FD30
	movs r0, #2
	movs r1, #0
	adds r2, r7, #0
	bl FUN_0800FF34
	adds r4, r7, #0
	adds r4, #0xb
	ldr r0, _0800F9D4 @ => 0x0805A9D0
	adds r0, #0x30
	mov sb, r0
	adds r2, r5, r0
	adds r0, r7, #0
	adds r0, #0x11
	lsls r0, r0, #2
	ldr r1, _0800F9D8 @ => 0x0805AB08
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl FUN_0802D6FC
	lsls r4, r4, #2
	ldr r2, _0800F9DC @ => 0x03004790
	adds r4, r4, r2
	ldr r0, [r4]
	adds r1, r7, #3
	add r1, sl
	ldrb r1, [r1]
	movs r2, #1
	bl FUN_0800FD30
	movs r0, #3
	movs r1, #3
	adds r2, r7, #0
	bl FUN_0800FF34
	ldr r0, _0800F9E0 @ => 0x0805AA30
	adds r5, r5, r0
	adds r0, r7, #0
	adds r0, #0x14
	lsls r0, r0, #2
	ldr r1, _0800F9D8 @ => 0x0805AB08
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp]
	mov r0, r8
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0
	bl FUN_0802D6FC
	ldr r2, _0800F9DC @ => 0x03004790
	adds r6, r6, r2
	ldr r0, [r6]
	adds r1, r7, #6
	add r1, sl
	ldrb r1, [r1]
	movs r2, #1
	bl FUN_0800FD30
	movs r0, #4
	movs r1, #6
	adds r2, r7, #0
	bl FUN_0800FF34
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #2
	bls _0800F8BA
	mov r2, sb
	subs r2, #0xc0
	ldr r5, _0800F9D8 @ => 0x0805AB08
	ldr r0, [r5, #0x5c]
	str r0, [sp]
	movs r0, #0x11
	movs r1, #0
	movs r3, #0
	bl FUN_0802D6FC
	ldr r4, _0800F9DC @ => 0x03004790
	ldr r0, [r4, #0x44]
	movs r1, #2
	movs r2, #1
	bl FUN_0800FD30
	mov r2, sb
	subs r2, #0x40
	ldr r0, [r5, #0x60]
	str r0, [sp]
	movs r0, #0x12
	movs r1, #0
	movs r3, #0
	bl FUN_0802D6FC
	ldr r0, [r4, #0x48]
	movs r1, #0xd
	movs r2, #1
	bl FUN_0800FD30
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F9D0: .4byte ROMREF_0805AD4C
_0800F9D4: .4byte ROMREF_0805A9D0
_0800F9D8: .4byte ROMREF_0805AB08
_0800F9DC: .4byte gUnk_03004790
_0800F9E0: .4byte ROMREF_0805AA30

	thumb_func_start FUN_0800F9E4
FUN_0800F9E4: @ 0x0800F9E4
	push {r4, lr}
	ldr r0, _0800F9FC @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0800FA00
	bl FUN_0800E8E0
	b _0800FA82
	.align 2, 0
_0800F9FC: .4byte gUnk_030042B0
_0800FA00:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800FA18
	ldr r0, _0800FA14 @ => 0x03004720
	movs r1, #0x1e
	str r1, [r0, #0x18]
	movs r1, #0x14
	str r1, [r0, #4]
	b _0800FA82
	.align 2, 0
_0800FA14: .4byte gUnk_03004720
_0800FA18:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800FA34
	ldr r2, _0800FA30 @ => 0x030033D0
	adds r1, r2, #0
	adds r1, #0x89
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800FA7C
	subs r0, #1
	b _0800FA7A
	.align 2, 0
_0800FA30: .4byte gUnk_030033D0
_0800FA34:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800FA48
	ldr r2, _0800FA44 @ => 0x030033D0
	adds r1, r2, #0
	adds r1, #0x89
	b _0800FA72
	.align 2, 0
_0800FA44: .4byte gUnk_030033D0
_0800FA48:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800FA64
	ldr r2, _0800FA60 @ => 0x030033D0
	adds r1, r2, #0
	adds r1, #0x88
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800FA7C
	subs r0, #1
	b _0800FA7A
	.align 2, 0
_0800FA60: .4byte gUnk_030033D0
_0800FA64:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800FAA0
	ldr r2, _0800FAA8 @ => 0x030033D0
	adds r1, r2, #0
	adds r1, #0x88
_0800FA72:
	ldrb r0, [r1]
	cmp r0, #1
	bhi _0800FA7C
	adds r0, #1
_0800FA7A:
	strb r0, [r1]
_0800FA7C:
	adds r0, r2, #0
	adds r0, #0x8c
	str r3, [r0]
_0800FA82:
	ldr r0, _0800FAA8 @ => 0x030033D0
	adds r4, r0, #0
	adds r4, #0x8c
	ldr r0, [r4]
	cmp r0, #0
	beq _0800FAA0
	movs r0, #0xad
	bl FUN_0804DE0C
	bl FUN_0800FEBC
	bl FUN_0800FAAC
	movs r0, #0
	str r0, [r4]
_0800FAA0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800FAA8: .4byte gUnk_030033D0

	thumb_func_start FUN_0800FAAC
FUN_0800FAAC: @ 0x0800FAAC
	push {r4, r5, lr}
	sub sp, #0x10
	movs r0, #6
	str r0, [sp]
	movs r5, #0
	str r5, [sp, #4]
	movs r0, #1
	movs r1, #0
	movs r2, #0xe
	movs r3, #0x16
	bl FUN_0800C7A8
	ldr r4, _0800FB40 @ => 0x030033D0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r1, _0800FB44 @ => 0x0805AA78
	adds r4, #0x8a
	ldrb r0, [r4]
	adds r0, #6
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0]
	bl FUN_08050820
	adds r3, r0, #0
	ldr r0, _0800FB48 @ => 0x0805AB6C
	adds r1, r0, #0
	adds r1, #0x70
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r0, #0x72
	movs r4, #0
	ldrsh r2, [r0, r4]
	str r5, [sp]
	movs r0, #0xd8
	bl FUN_0801F8B8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	movs r1, #0
	movs r2, #0
_0800FB0A:
	mov r0, sp
	adds r0, r0, r1
	adds r0, #8
	strb r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #7
	bls _0800FB0A
	ldr r0, _0800FB4C @ => 0x03004004
	ldr r4, _0800FB40 @ => 0x030033D0
	adds r1, r4, #0
	adds r1, #0x89
	ldrb r1, [r1]
	adds r2, r4, #0
	adds r2, #0x88
	ldrb r2, [r2]
	adds r2, #2
	bl FUN_0804C504
	cmp r0, #0
	beq _0800FB50
	movs r0, #0
	bl FUN_080203A8
	b _0800FB64
	.align 2, 0
_0800FB40: .4byte gUnk_030033D0
_0800FB44: .4byte ROMREF_0805AA78
_0800FB48: .4byte ROMREF_0805AB6C
_0800FB4C: .4byte gSocialMove_Data
_0800FB50:
	ldr r1, _0800FBCC @ => 0x0805A890
	adds r0, r4, #0
	adds r0, #0x8a
	ldrb r0, [r0]
	adds r0, #6
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl FUN_080203A8
_0800FB64:
	ldr r0, _0800FBD0 @ => 0x0000081F
	bl FUN_08050820
	adds r3, r0, #0
	ldr r4, _0800FBD4 @ => 0x0805AB6C
	adds r0, r4, #0
	adds r0, #0x74
	movs r5, #0
	ldrsh r1, [r0, r5]
	adds r0, #2
	movs r5, #0
	ldrsh r2, [r0, r5]
	movs r0, #1
	str r0, [sp]
	movs r0, #0xfe
	bl FUN_0801F8B8
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #1
	movs r1, #0
	bl FUN_0801FEA0
	movs r0, #0x83
	lsls r0, r0, #1
	adds r1, r4, #0
	adds r1, #0x78
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r2, r4, #0
	adds r2, #0x7a
	movs r3, #0
	ldrsh r2, [r2, r3]
	ldr r4, _0800FBD8 @ => 0x0805AA78
	ldr r3, _0800FBDC @ => 0x030033D0
	adds r3, #0x8a
	ldrb r3, [r3]
	adds r3, #6
	lsls r3, r3, #3
	adds r4, #4
	adds r3, r3, r4
	ldr r3, [r3]
	str r3, [sp]
	movs r3, #0
	str r3, [sp, #4]
	movs r3, #0x98
	bl FUN_0800F4F8
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800FBCC: .4byte ROMREF_0805A890
_0800FBD0: .4byte 0x0000081F
_0800FBD4: .4byte ROMREF_0805AB6C
_0800FBD8: .4byte ROMREF_0805AA78
_0800FBDC: .4byte gUnk_030033D0

	thumb_func_start FUN_0800FBE0
FUN_0800FBE0: @ 0x0800FBE0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	movs r0, #6
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0
	movs r2, #0xe
	movs r3, #0x16
	bl FUN_0800C7A8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _0800FD0C @ => 0x00000819
	bl FUN_08050820
	adds r3, r0, #0
	ldr r6, _0800FD10 @ => 0x0805AB6C
	adds r0, r6, #0
	adds r0, #0x58
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, #2
	movs r4, #0
	ldrsh r2, [r0, r4]
	movs r5, #1
	str r5, [sp]
	movs r0, #0x65
	bl FUN_0801F8B8
	movs r4, #1
	rsbs r4, r4, #0
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	bl FUN_0801FEA0
	ldr r0, _0800FD14 @ => 0x0000081A
	bl FUN_08050820
	adds r3, r0, #0
	adds r0, r6, #0
	adds r0, #0x5c
	movs r7, #0
	ldrsh r1, [r0, r7]
	adds r0, #2
	movs r7, #0
	ldrsh r2, [r0, r7]
	str r5, [sp]
	movs r0, #0x88
	bl FUN_0801F8B8
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	bl FUN_0801FEA0
	ldr r0, _0800FD18 @ => 0x0000081C
	bl FUN_08050820
	adds r3, r0, #0
	adds r0, r6, #0
	adds r0, #0x60
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, #2
	movs r7, #0
	ldrsh r2, [r0, r7]
	str r5, [sp]
	movs r0, #0x98
	bl FUN_0801F8B8
	movs r0, #3
	movs r1, #0
	adds r2, r4, #0
	bl FUN_0801FEA0
	ldr r0, _0800FD1C @ => 0x03003DF0
	ldr r1, _0800FD20 @ => 0x00000372
	adds r0, r0, r1
	ldrh r0, [r0]
	add r1, sp, #8
	movs r2, #8
	movs r3, #4
	bl FUN_08050878
	add r0, sp, #8
	movs r1, #0
	bl FUN_080202F8
	ldr r0, _0800FD24 @ => 0x0000081B
	bl FUN_08050820
	adds r3, r0, #0
	adds r0, r6, #0
	adds r0, #0x64
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, #2
	movs r4, #0
	ldrsh r2, [r0, r4]
	str r5, [sp]
	movs r0, #0xa8
	bl FUN_0801F8B8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _0800FD28 @ => 0x0000081D
	bl FUN_08050820
	adds r3, r0, #0
	adds r0, r6, #0
	adds r0, #0x68
	movs r7, #0
	ldrsh r1, [r0, r7]
	adds r0, #2
	movs r4, #0
	ldrsh r2, [r0, r4]
	str r5, [sp]
	movs r0, #0xb8
	bl FUN_0801F8B8
	ldr r0, _0800FD2C @ => 0x0000081E
	bl FUN_08050820
	adds r3, r0, #0
	adds r0, r6, #0
	adds r0, #0x6c
	movs r7, #0
	ldrsh r1, [r0, r7]
	adds r0, #2
	movs r4, #0
	ldrsh r2, [r0, r4]
	str r5, [sp]
	movs r0, #0xc8
	bl FUN_0801F8B8
	bl FUN_0800FAAC
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800FD0C: .4byte 0x00000819
_0800FD10: .4byte ROMREF_0805AB6C
_0800FD14: .4byte 0x0000081A
_0800FD18: .4byte 0x0000081C
_0800FD1C: .4byte gUnk_03003DF0
_0800FD20: .4byte 0x00000372
_0800FD24: .4byte 0x0000081B
_0800FD28: .4byte 0x0000081D
_0800FD2C: .4byte 0x0000081E

	thumb_func_start FUN_0800FD30
FUN_0800FD30: @ 0x0800FD30
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r3, r1, #0
	movs r0, #0x18
	str r0, [r5, #0xc]
	cmp r2, #0
	beq _0800FD40
	movs r0, #0x19
_0800FD40:
	str r0, [r5, #0xc]
	adds r4, r5, #0
	adds r4, #0xa9
	ldrb r1, [r4]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	lsls r2, r3, #4
	movs r1, #0xf
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08001FB0
	adds r0, r5, #0
	movs r1, #0xb
	bl FUN_08001F84
	ldrb r0, [r4]
	lsrs r0, r0, #4
	subs r0, #2
	cmp r0, #0xb
	bhi _0800FE24
	lsls r0, r0, #2
	ldr r1, _0800FD80 @ =_0800FD84
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800FD80: .4byte _0800FD84
_0800FD84: @ jump table
	.4byte _0800FDB4 @ case 0
	.4byte _0800FE24 @ case 1
	.4byte _0800FDC4 @ case 2
	.4byte _0800FDCC @ case 3
	.4byte _0800FDD4 @ case 4
	.4byte _0800FDDC @ case 5
	.4byte _0800FDE4 @ case 6
	.4byte _0800FDEC @ case 7
	.4byte _0800FDF4 @ case 8
	.4byte _0800FDFC @ case 9
	.4byte _0800FE14 @ case 10
	.4byte _0800FDBC @ case 11
_0800FDB4:
	ldr r0, _0800FDB8 @ => 0x0805A940
	b _0800FDFE
	.align 2, 0
_0800FDB8: .4byte ROMREF_0805A940
_0800FDBC:
	ldr r0, _0800FDC0 @ => 0x0805A9C0
	b _0800FDFE
	.align 2, 0
_0800FDC0: .4byte ROMREF_0805A9C0
_0800FDC4:
	ldr r0, _0800FDC8 @ => 0x0805A9D0
	b _0800FDFE
	.align 2, 0
_0800FDC8: .4byte ROMREF_0805A9D0
_0800FDCC:
	ldr r0, _0800FDD0 @ => 0x0805AA00
	b _0800FDFE
	.align 2, 0
_0800FDD0: .4byte ROMREF_0805AA00
_0800FDD4:
	ldr r0, _0800FDD8 @ => 0x0805AA30
	b _0800FDFE
	.align 2, 0
_0800FDD8: .4byte ROMREF_0805AA30
_0800FDDC:
	ldr r0, _0800FDE0 @ => 0x0805A9E0
	b _0800FDFE
	.align 2, 0
_0800FDE0: .4byte ROMREF_0805A9E0
_0800FDE4:
	ldr r0, _0800FDE8 @ => 0x0805AA10
	b _0800FDFE
	.align 2, 0
_0800FDE8: .4byte ROMREF_0805AA10
_0800FDEC:
	ldr r0, _0800FDF0 @ => 0x0805AA40
	b _0800FDFE
	.align 2, 0
_0800FDF0: .4byte ROMREF_0805AA40
_0800FDF4:
	ldr r0, _0800FDF8 @ => 0x0805A9F0
	b _0800FDFE
	.align 2, 0
_0800FDF8: .4byte ROMREF_0805A9F0
_0800FDFC:
	ldr r0, _0800FE10 @ => 0x0805AA20
_0800FDFE:
	ldr r0, [r0, #8]
	ldrb r1, [r4]
	lsrs r1, r1, #4
	lsls r1, r1, #4
	movs r2, #0x10
	bl FUN_0801579C
	b _0800FE24
	.align 2, 0
_0800FE10: .4byte ROMREF_0805AA20
_0800FE14:
	ldr r0, _0800FE2C @ => 0x0805AA50
	ldr r0, [r0, #8]
	ldrb r1, [r4]
	lsrs r1, r1, #4
	lsls r1, r1, #4
	movs r2, #0x10
	bl FUN_0801579C
_0800FE24:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800FE2C: .4byte ROMREF_0805AA50

	thumb_func_start FUN_0800FE30
FUN_0800FE30: @ 0x0800FE30
	push {lr}
	ldr r1, _0800FE40 @ => 0x03004720
	ldr r0, [r1, #0x18]
	cmp r0, #0x1e
	bne _0800FE44
	bl FUN_0800DFF0
	b _0800FE50
	.align 2, 0
_0800FE40: .4byte gUnk_03004720
_0800FE44:
	cmp r0, #1
	beq _0800FE50
	cmp r0, #0
	bne _0800FE50
	movs r0, #0x13
	str r0, [r1, #4]
_0800FE50:
	ldr r1, _0800FE5C @ => 0x03004720
	ldr r0, [r1, #0x18]
	subs r0, #1
	str r0, [r1, #0x18]
	pop {r0}
	bx r0
	.align 2, 0
_0800FE5C: .4byte gUnk_03004720

	thumb_func_start FUN_0800FE60
FUN_0800FE60: @ 0x0800FE60
	push {r4, lr}
	ldr r4, _0800FE88 @ => 0x03004720
	ldr r0, [r4, #0x18]
	cmp r0, #0x1e
	bne _0800FE90
	movs r0, #0xb8
	bl FUN_0804DE0C
	ldr r2, _0800FE8C @ => 0x030033D0
	adds r1, r2, #0
	adds r1, #0x8a
	movs r0, #0
	strb r0, [r1]
	subs r1, #2
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	bl FUN_0800E190
	b _0800FEAA
	.align 2, 0
_0800FE88: .4byte gUnk_03004720
_0800FE8C: .4byte gUnk_030033D0
_0800FE90:
	cmp r0, #1
	bne _0800FE9A
	bl FUN_0800FF08
	b _0800FEAA
_0800FE9A:
	cmp r0, #0
	bne _0800FEAA
	bl FUN_0800F568
	movs r0, #0x1f
	str r0, [r4, #0x18]
	movs r0, #0xb
	str r0, [r4, #4]
_0800FEAA:
	ldr r1, _0800FEB8 @ => 0x03004720
	ldr r0, [r1, #0x18]
	subs r0, #1
	str r0, [r1, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800FEB8: .4byte gUnk_03004720

	thumb_func_start FUN_0800FEBC
FUN_0800FEBC: @ 0x0800FEBC
	push {lr}
	ldr r2, _0800FEFC @ => 0x030033D0
	adds r3, r2, #0
	adds r3, #0x89
	adds r0, r2, #0
	adds r0, #0x88
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldrb r3, [r3]
	adds r0, r0, r3
	adds r1, r2, #0
	adds r1, #0x8a
	strb r0, [r1]
	ldr r0, _0800FF00 @ => 0x03004790
	ldr r0, [r0, #0x48]
	ldr r3, _0800FF04 @ => 0x0805AB08
	ldrb r2, [r1]
	adds r2, #0xe
	lsls r2, r2, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r1, r1, #0x10
	movs r3, #2
	ldrsh r2, [r2, r3]
	lsls r2, r2, #0x10
	bl FUN_08001728
	pop {r0}
	bx r0
	.align 2, 0
_0800FEFC: .4byte gUnk_030033D0
_0800FF00: .4byte gUnk_03004790
_0800FF04: .4byte ROMREF_0805AB08

	thumb_func_start FUN_0800FF08
FUN_0800FF08: @ 0x0800FF08
	push {r4, lr}
	movs r2, #8
	ldr r4, _0800FF30 @ => 0x03004790
	movs r3, #2
_0800FF10:
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	cmp r1, #0
	beq _0800FF20
	ldr r0, [r1, #0xc]
	orrs r0, r3
	str r0, [r1, #0xc]
_0800FF20:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x12
	bls _0800FF10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800FF30: .4byte gUnk_03004790

	thumb_func_start FUN_0800FF34
FUN_0800FF34: @ 0x0800FF34
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	ldr r0, _0800FF64 @ => 0x03004004
	adds r1, r4, #0
	adds r2, r3, #0
	bl FUN_0804C504
	cmp r0, #0
	beq _0800FF5E
	ldr r0, _0800FF68 @ => 0x0805AD4C
	adds r1, r4, r5
	adds r1, r1, r0
	ldrb r0, [r1]
	lsls r0, r0, #4
	movs r1, #0x10
	bl FUN_08015B50
_0800FF5E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800FF64: .4byte gSocialMove_Data
_0800FF68: .4byte ROMREF_0805AD4C

	thumb_func_start FUN_0800FF6C
FUN_0800FF6C: @ 0x0800FF6C
	push {r4, lr}
	movs r2, #0
	ldr r0, _0800FF94 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800FFE4
	ldr r1, _0800FF98 @ => 0x030033D0
	adds r0, r1, #0
	adds r0, #0x50
	ldrb r0, [r0]
	cmp r0, #1
	beq _0800FFC4
	cmp r0, #1
	bgt _0800FF9C
	cmp r0, #0
	beq _0800FFA6
	b _0800FFF4
	.align 2, 0
_0800FF94: .4byte gUnk_030042B0
_0800FF98: .4byte gUnk_030033D0
_0800FF9C:
	cmp r0, #2
	beq _0800FFCA
	cmp r0, #4
	beq _0800FFD4
	b _0800FFF4
_0800FFA6:
	adds r4, r1, #0
	adds r4, #0x54
	adds r3, r1, #0
	adds r3, #0x64
_0800FFAE:
	lsls r0, r2, #2
	adds r1, r0, r4
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0800FFAE
	b _0800FFF4
_0800FFC4:
	ldr r0, [r1, #0x78]
	str r0, [r1, #0x74]
	b _0800FFF4
_0800FFCA:
	adds r0, r1, #0
	adds r0, #0x80
	ldr r0, [r0]
	str r0, [r1, #0x7c]
	b _0800FFF4
_0800FFD4:
	ldr r0, _0800FFE0 @ => 0x03004720
	movs r1, #0x1e
	str r1, [r0, #0x18]
	movs r1, #0xe
	str r1, [r0, #4]
	b _0800FFF4
	.align 2, 0
_0800FFE0: .4byte gUnk_03004720
_0800FFE4:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800FFF4
	ldr r0, _0800FFFC @ => 0x030033D0
	adds r0, #0x50
	movs r1, #3
	strb r1, [r0]
_0800FFF4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800FFFC: .4byte gUnk_030033D0

	thumb_func_start FUN_08010000
FUN_08010000: @ 0x08010000
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	movs r0, #1
	bl FUN_0800C5FC
	bl FUN_08021320
	adds r0, #1
	add r1, sp, #4
	movs r2, #8
	movs r3, #2
	bl FUN_08050878
	add r0, sp, #4
	movs r1, #0
	bl FUN_080202F8
	ldr r0, _080100BC @ => 0x0000080C
	bl FUN_08050820
	adds r3, r0, #0
	ldr r4, _080100C0 @ => 0x0805AB6C
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #2
	ldrsh r2, [r4, r0]
	movs r5, #1
	str r5, [sp]
	movs r0, #0x65
	bl FUN_0801F8B8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _080100C4 @ => 0x0000080D
	bl FUN_08050820
	adds r3, r0, #0
	movs r0, #4
	ldrsh r1, [r4, r0]
	movs r0, #6
	ldrsh r2, [r4, r0]
	str r5, [sp]
	movs r0, #0x88
	bl FUN_0801F8B8
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #1
	movs r1, #0
	bl FUN_0801FEA0
	movs r5, #0
	ldr r6, _080100C8 @ => 0x0805AD58
	adds r7, r4, #0
_0801007C:
	lsls r4, r5, #3
	adds r0, r6, #4
	adds r0, r4, r0
	ldr r0, [r0]
	bl FUN_08050820
	adds r3, r0, #0
	adds r4, r4, r6
	ldr r0, [r4]
	adds r2, r5, #2
	lsls r2, r2, #2
	adds r2, r2, r7
	movs r4, #0
	ldrsh r1, [r2, r4]
	movs r4, #2
	ldrsh r2, [r2, r4]
	movs r4, #0
	str r4, [sp]
	bl FUN_0801F8B8
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _0801007C
	movs r0, #4
	bl FUN_080101F4
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080100BC: .4byte 0x0000080C
_080100C0: .4byte ROMREF_0805AB6C
_080100C4: .4byte 0x0000080D
_080100C8: .4byte ROMREF_0805AD58

	thumb_func_start FUN_080100CC
FUN_080100CC: @ 0x080100CC
	push {r4, r5, r6, r7, lr}
	movs r3, #1
	ldr r1, _080100EC @ => 0x030033D0
	adds r0, r1, #0
	adds r0, #0x50
	ldrb r0, [r0]
	adds r5, r1, #0
	cmp r0, #4
	bls _080100E0
	b _080101E4
_080100E0:
	lsls r0, r0, #2
	ldr r1, _080100F0 @ =_080100F4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080100EC: .4byte gUnk_030033D0
_080100F0: .4byte _080100F4
_080100F4: @ jump table
	.4byte _08010108 @ case 0
	.4byte _08010150 @ case 1
	.4byte _08010174 @ case 2
	.4byte _0801019A @ case 3
	.4byte _080101E4 @ case 4
_08010108:
	movs r4, #0
	ldr r5, _0801014C @ => 0x030033D0
	adds r7, r5, #0
	adds r7, #0x64
_08010110:
	lsls r0, r4, #2
	adds r6, r5, #0
	adds r6, #0x54
	adds r2, r0, r6
	adds r0, r0, r7
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bhs _0801012E
	adds r0, r1, #1
	str r0, [r2]
	movs r0, #0xbb
	bl FUN_0804DE0C
	movs r3, #0
_0801012E:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08010110
	cmp r3, #0
	beq _08010142
	subs r1, r6, #4
	movs r0, #1
	strb r0, [r1]
_08010142:
	movs r0, #1
	bl FUN_080101F4
	b _080101E4
	.align 2, 0
_0801014C: .4byte gUnk_030033D0
_08010150:
	ldr r1, [r5, #0x74]
	ldr r0, [r5, #0x78]
	cmp r1, r0
	bhs _08010164
	adds r0, r1, #1
	str r0, [r5, #0x74]
	movs r0, #0xbb
	bl FUN_0804DE0C
	b _0801016C
_08010164:
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #2
	strb r0, [r1]
_0801016C:
	movs r0, #2
	bl FUN_080101F4
	b _080101E4
_08010174:
	bl FUN_080215E0
	ldr r1, [r5, #0x7c]
	cmp r1, r0
	bhs _0801018A
	adds r0, r1, #1
	str r0, [r5, #0x7c]
	movs r0, #0xbb
	bl FUN_0804DE0C
	b _08010192
_0801018A:
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #4
	strb r0, [r1]
_08010192:
	movs r0, #3
	bl FUN_080101F4
	b _080101E4
_0801019A:
	movs r4, #0
	ldr r2, _080101EC @ => 0x03003424
	adds r3, r2, #0
	adds r3, #0x10
_080101A2:
	lsls r0, r4, #2
	adds r1, r0, r2
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _080101A2
	ldr r0, [r5, #0x78]
	str r0, [r5, #0x74]
	bl FUN_080215E0
	str r0, [r5, #0x7c]
	movs r0, #1
	bl FUN_080101F4
	movs r0, #2
	bl FUN_080101F4
	movs r0, #3
	bl FUN_080101F4
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #4
	strb r0, [r1]
	ldr r1, _080101F0 @ => 0x03004720
	movs r0, #0x1e
	str r0, [r1, #0x18]
	movs r0, #0xe
	str r0, [r1, #4]
_080101E4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080101EC: .4byte gUnk_03003424
_080101F0: .4byte gUnk_03004720

	thumb_func_start FUN_080101F4
FUN_080101F4: @ 0x080101F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r6, r0, #0
	cmp r6, #1
	beq _08010208
	cmp r6, #4
	beq _08010208
	b _08010320
_08010208:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _080103BC @ => 0x030033D0
	mov r8, r0
	ldr r0, [r0, #0x54]
	add r1, sp, #4
	movs r2, #8
	movs r3, #2
	bl FUN_08050878
	add r0, sp, #4
	bl FUN_08020320
	movs r0, #0x19
	add r1, sp, #4
	movs r2, #8
	movs r3, #2
	bl FUN_08050878
	add r0, sp, #4
	bl FUN_08020344
	ldr r0, _080103C0 @ => 0x00000812
	bl FUN_08050820
	adds r7, r0, #0
	movs r0, #0x97
	lsls r0, r0, #1
	ldr r4, _080103C4 @ => 0x0805AB6C
	movs r2, #0x18
	ldrsh r1, [r4, r2]
	movs r3, #0x1a
	ldrsh r2, [r4, r3]
	movs r5, #1
	str r5, [sp]
	adds r3, r7, #0
	bl FUN_0801F8B8
	mov r1, r8
	ldr r0, [r1, #0x58]
	add r1, sp, #4
	movs r2, #8
	movs r3, #2
	bl FUN_08050878
	add r0, sp, #4
	bl FUN_08020320
	movs r0, #0x19
	add r1, sp, #4
	movs r2, #8
	movs r3, #2
	bl FUN_08050878
	add r0, sp, #4
	bl FUN_08020344
	ldr r0, _080103C8 @ => 0x00000813
	bl FUN_08050820
	adds r7, r0, #0
	movs r0, #0x9d
	lsls r0, r0, #1
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	movs r3, #0x1e
	ldrsh r2, [r4, r3]
	str r5, [sp]
	adds r3, r7, #0
	bl FUN_0801F8B8
	mov r1, r8
	ldr r0, [r1, #0x5c]
	add r1, sp, #4
	movs r2, #8
	movs r3, #2
	bl FUN_08050878
	add r0, sp, #4
	bl FUN_08020320
	movs r0, #0x19
	add r1, sp, #4
	movs r2, #8
	movs r3, #2
	bl FUN_08050878
	add r0, sp, #4
	bl FUN_08020344
	ldr r0, _080103CC @ => 0x00000814
	bl FUN_08050820
	adds r7, r0, #0
	movs r0, #0xa3
	lsls r0, r0, #1
	movs r2, #0x20
	ldrsh r1, [r4, r2]
	movs r3, #0x22
	ldrsh r2, [r4, r3]
	str r5, [sp]
	adds r3, r7, #0
	bl FUN_0801F8B8
	mov r1, r8
	ldr r0, [r1, #0x60]
	add r1, sp, #4
	movs r2, #8
	movs r3, #2
	bl FUN_08050878
	add r0, sp, #4
	bl FUN_08020320
	movs r0, #0x19
	add r1, sp, #4
	movs r2, #8
	movs r3, #2
	bl FUN_08050878
	add r0, sp, #4
	bl FUN_08020344
	ldr r0, _080103D0 @ => 0x00000815
	bl FUN_08050820
	adds r7, r0, #0
	movs r0, #0xa9
	lsls r0, r0, #1
	movs r2, #0x24
	ldrsh r1, [r4, r2]
	movs r3, #0x26
	ldrsh r2, [r4, r3]
	str r5, [sp]
	adds r3, r7, #0
	bl FUN_0801F8B8
_08010320:
	cmp r6, #2
	beq _08010328
	cmp r6, #4
	bne _08010368
_08010328:
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _080103BC @ => 0x030033D0
	ldr r0, [r0, #0x74]
	add r1, sp, #4
	movs r2, #8
	movs r3, #3
	bl FUN_08050878
	add r0, sp, #4
	movs r1, #0
	bl FUN_080202F8
	ldr r0, _080103D4 @ => 0x00000816
	bl FUN_08050820
	adds r7, r0, #0
	movs r0, #0xaf
	lsls r0, r0, #1
	ldr r2, _080103C4 @ => 0x0805AB6C
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	movs r3, #0x2a
	ldrsh r2, [r2, r3]
	movs r3, #1
	str r3, [sp]
	adds r3, r7, #0
	bl FUN_0801F8B8
_08010368:
	subs r0, r6, #3
	cmp r0, #1
	bhi _080103AE
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _080103BC @ => 0x030033D0
	ldr r0, [r0, #0x7c]
	add r1, sp, #4
	movs r2, #8
	movs r3, #4
	bl FUN_08050878
	add r0, sp, #4
	movs r1, #0
	bl FUN_080202F8
	ldr r0, _080103D8 @ => 0x00000817
	bl FUN_08050820
	adds r7, r0, #0
	movs r0, #0xc1
	lsls r0, r0, #1
	ldr r2, _080103C4 @ => 0x0805AB6C
	movs r3, #0x2c
	ldrsh r1, [r2, r3]
	movs r3, #0x2e
	ldrsh r2, [r2, r3]
	movs r3, #1
	str r3, [sp]
	adds r3, r7, #0
	bl FUN_0801F8B8
_080103AE:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080103BC: .4byte gUnk_030033D0
_080103C0: .4byte 0x00000812
_080103C4: .4byte ROMREF_0805AB6C
_080103C8: .4byte 0x00000813
_080103CC: .4byte 0x00000814
_080103D0: .4byte 0x00000815
_080103D4: .4byte 0x00000816
_080103D8: .4byte 0x00000817

	thumb_func_start FUN_080103DC
FUN_080103DC: @ 0x080103DC
	push {lr}
	ldr r1, _080103EC @ => 0x03004720
	ldr r0, [r1, #0x18]
	cmp r0, #0x1e
	bne _080103F0
	bl FUN_0800DFF0
	b _080103F8
	.align 2, 0
_080103EC: .4byte gUnk_03004720
_080103F0:
	cmp r0, #0
	bne _080103F8
	movs r0, #0xd
	str r0, [r1, #4]
_080103F8:
	ldr r1, _08010404 @ => 0x03004720
	ldr r0, [r1, #0x18]
	subs r0, #1
	str r0, [r1, #0x18]
	pop {r0}
	bx r0
	.align 2, 0
_08010404: .4byte gUnk_03004720

	thumb_func_start FUN_08010408
FUN_08010408: @ 0x08010408
	push {r4, lr}
	ldr r4, _08010420 @ => 0x03004720
	ldr r0, [r4, #0x18]
	cmp r0, #0x1e
	bne _08010424
	movs r0, #0xb8
	bl FUN_0804DE0C
	bl FUN_0800E190
	b _08010434
	.align 2, 0
_08010420: .4byte gUnk_03004720
_08010424:
	cmp r0, #0
	bne _08010434
	bl FUN_0800F568
	movs r0, #0x1f
	str r0, [r4, #0x18]
	movs r0, #0xb
	str r0, [r4, #4]
_08010434:
	ldr r1, _08010444 @ => 0x03004720
	ldr r0, [r1, #0x18]
	subs r0, #1
	str r0, [r1, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010444: .4byte gUnk_03004720

	thumb_func_start FUN_08010448
FUN_08010448: @ 0x08010448
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	ldr r5, _080104DC @ => 0x0805A950
	ldr r4, _080104E0 @ => 0x0805AB08
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	movs r3, #0x2e
	ldrsh r2, [r4, r3]
	movs r0, #1
	mov r8, r0
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #5
	bl FUN_0802D680
	ldr r6, _080104E4 @ => 0x03004790
	str r0, [r6, #0x24]
	adds r0, #0xa7
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
	movs r2, #0x30
	ldrsh r1, [r4, r2]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	mov r0, r8
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #5
	bl FUN_0802D680
	str r0, [r6, #0x28]
	adds r0, r5, #0
	subs r0, #0x10
	movs r2, #0x28
	ldrsh r1, [r4, r2]
	movs r3, #0x2a
	ldrsh r2, [r4, r3]
	mov r3, r8
	str r3, [sp]
	movs r3, #2
	bl FUN_0802D680
	str r0, [r6, #0x20]
	adds r5, #0x10
	movs r0, #0x34
	ldrsh r1, [r4, r0]
	movs r3, #0x36
	ldrsh r2, [r4, r3]
	mov r0, r8
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #4
	bl FUN_0802D680
	str r0, [r6, #0x2c]
	ldr r2, [r6, #0x24]
	cmp r2, #0
	beq _080104CE
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
_080104CE:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080104DC: .4byte ROMREF_0805A950
_080104E0: .4byte ROMREF_0805AB08
_080104E4: .4byte gUnk_03004790

	thumb_func_start FUN_080104E8
FUN_080104E8: @ 0x080104E8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r6, _08010500 @ => 0x030042B0
	ldrh r1, [r6, #0xc]
	movs r7, #1
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08010504
	bl FUN_0800E8E0
	b _080105B4
	.align 2, 0
_08010500: .4byte gUnk_030042B0
_08010504:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08010524
	movs r0, #0xb1
	bl FUN_0804DE0C
	ldr r0, _08010520 @ => 0x03004720
	movs r1, #0x1e
	str r1, [r0, #0x18]
	movs r1, #0x11
	str r1, [r0, #4]
	b _080105B4
	.align 2, 0
_08010520: .4byte gUnk_03004720
_08010524:
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _080105B4
	ldr r4, _08010574 @ => 0x030033D0
	adds r4, #0x84
	ldrb r5, [r4]
	ldrh r0, [r6, #6]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl FUN_08024B30
	ldr r4, [r4]
	cmp r5, r4
	beq _080105B4
	ldrh r1, [r6, #0xc]
	movs r0, #0x20
	ands r0, r1
	movs r3, #0xa
	cmp r0, #0
	beq _08010556
	movs r3, #9
_08010556:
	cmp r4, #0
	beq _0801055E
	cmp r4, #5
	bne _0801057C
_0801055E:
	ldr r1, _08010578 @ => 0x03004790
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
	b _080105A0
	.align 2, 0
_08010574: .4byte gUnk_030033D0
_08010578: .4byte gUnk_03004790
_0801057C:
	ldr r2, _080105BC @ => 0x03004790
	ldr r1, [r2, #0x24]
	ldr r0, [r1, #0xc]
	orrs r0, r7
	str r0, [r1, #0xc]
	ldr r1, [r2, #0x28]
	ldr r0, [r1, #0xc]
	orrs r0, r7
	str r0, [r1, #0xc]
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r1, _080105C0 @ => 0x0805A950
	ldr r2, _080105C4 @ => 0x09FB6204
	ldr r2, [r2, #0x10]
	movs r3, #0
	bl FUN_0800192C
_080105A0:
	movs r0, #0xad
	bl FUN_0804DE0C
	ldr r0, _080105C8 @ => 0x030033D0
	adds r0, #0x84
	ldrb r0, [r0]
	bl FUN_080108D8
	bl FUN_0801070C
_080105B4:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080105BC: .4byte gUnk_03004790
_080105C0: .4byte ROMREF_0805A950
_080105C4: .4byte ROMREF_09FB6204
_080105C8: .4byte gUnk_030033D0

	thumb_func_start FUN_080105CC
FUN_080105CC: @ 0x080105CC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	movs r0, #0x14
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0x1e
	bl FUN_0800C7A8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _080106E8 @ => 0x00000818
	bl FUN_08050820
	adds r3, r0, #0
	ldr r6, _080106EC @ => 0x0805AB6C
	movs r0, #0x34
	ldrsh r1, [r6, r0]
	movs r4, #0x36
	ldrsh r2, [r6, r4]
	movs r5, #1
	str r5, [sp]
	movs r0, #0x65
	bl FUN_0801F8B8
	movs r4, #1
	rsbs r4, r4, #0
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	bl FUN_0801FEA0
	ldr r0, _080106F0 @ => 0x0000081A
	bl FUN_08050820
	adds r3, r0, #0
	movs r0, #0x38
	ldrsh r1, [r6, r0]
	movs r0, #0x3a
	ldrsh r2, [r6, r0]
	str r5, [sp]
	movs r0, #0x88
	bl FUN_0801F8B8
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	bl FUN_0801FEA0
	ldr r0, _080106F4 @ => 0x0000081C
	bl FUN_08050820
	adds r3, r0, #0
	movs r2, #0x3c
	ldrsh r1, [r6, r2]
	movs r0, #0x3e
	ldrsh r2, [r6, r0]
	str r5, [sp]
	movs r0, #0x98
	bl FUN_0801F8B8
	movs r0, #3
	movs r1, #0
	adds r2, r4, #0
	bl FUN_0801FEA0
	ldr r0, _080106F8 @ => 0x03003DF0
	ldr r1, _080106FC @ => 0x00000372
	adds r0, r0, r1
	ldrh r0, [r0]
	add r1, sp, #8
	movs r2, #8
	movs r3, #4
	bl FUN_08050878
	add r0, sp, #8
	movs r1, #0
	bl FUN_080202F8
	ldr r0, _08010700 @ => 0x0000081B
	bl FUN_08050820
	adds r3, r0, #0
	adds r0, r6, #0
	adds r0, #0x40
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, #2
	movs r4, #0
	ldrsh r2, [r0, r4]
	str r5, [sp]
	movs r0, #0xa8
	bl FUN_0801F8B8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _08010704 @ => 0x0000081D
	bl FUN_08050820
	adds r3, r0, #0
	adds r0, r6, #0
	adds r0, #0x44
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, #2
	movs r4, #0
	ldrsh r2, [r0, r4]
	str r5, [sp]
	movs r0, #0xb8
	bl FUN_0801F8B8
	ldr r0, _08010708 @ => 0x0000081E
	bl FUN_08050820
	adds r3, r0, #0
	adds r0, r6, #0
	adds r0, #0x48
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, #2
	movs r4, #0
	ldrsh r2, [r0, r4]
	str r5, [sp]
	movs r0, #0xc8
	bl FUN_0801F8B8
	bl FUN_0801070C
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080106E8: .4byte 0x00000818
_080106EC: .4byte ROMREF_0805AB6C
_080106F0: .4byte 0x0000081A
_080106F4: .4byte 0x0000081C
_080106F8: .4byte gUnk_03003DF0
_080106FC: .4byte 0x00000372
_08010700: .4byte 0x0000081B
_08010704: .4byte 0x0000081D
_08010708: .4byte 0x0000081E

	thumb_func_start FUN_0801070C
FUN_0801070C: @ 0x0801070C
	push {r4, r5, lr}
	sub sp, #0x10
	movs r0, #9
	str r0, [sp]
	movs r0, #1
	movs r1, #8
	movs r2, #0xb
	movs r3, #0x16
	bl FUN_0800C790
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #1
	movs r1, #0
	bl FUN_0801FEA0
	ldr r1, _08010794 @ => 0x0805AA78
	ldr r0, _08010798 @ => 0x030033D0
	adds r0, #0x84
	ldr r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0]
	bl FUN_08050820
	adds r3, r0, #0
	ldr r0, _0801079C @ => 0x0805AB6C
	adds r1, r0, #0
	adds r1, #0x4c
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r0, #0x4e
	movs r4, #0
	ldrsh r2, [r0, r4]
	movs r0, #0
	str r0, [sp]
	movs r0, #0xd8
	bl FUN_0801F8B8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	movs r1, #0
	movs r2, #0
_08010768:
	mov r0, sp
	adds r0, r0, r1
	adds r0, #8
	strb r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #7
	bls _08010768
	ldr r0, _08010798 @ => 0x030033D0
	adds r4, r0, #0
	adds r4, #0x84
	ldr r0, [r4]
	bl FUN_08051D34
	cmp r0, #0
	beq _080107A0
	movs r0, #0
	bl FUN_080203A8
	b _080107AE
	.align 2, 0
_08010794: .4byte ROMREF_0805AA78
_08010798: .4byte gUnk_030033D0
_0801079C: .4byte ROMREF_0805AB6C
_080107A0:
	ldr r0, _08010814 @ => 0x0805A890
	ldr r1, [r4]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bl FUN_080203A8
_080107AE:
	ldr r0, _08010818 @ => 0x0000081F
	bl FUN_08050820
	adds r3, r0, #0
	ldr r4, _0801081C @ => 0x0805AB6C
	adds r0, r4, #0
	adds r0, #0x50
	movs r5, #0
	ldrsh r1, [r0, r5]
	adds r0, #2
	movs r5, #0
	ldrsh r2, [r0, r5]
	movs r0, #1
	str r0, [sp]
	movs r0, #0xfe
	bl FUN_0801F8B8
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #1
	movs r1, #0
	bl FUN_0801FEA0
	movs r0, #0x83
	lsls r0, r0, #1
	adds r1, r4, #0
	adds r1, #0x54
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r2, r4, #0
	adds r2, #0x56
	movs r3, #0
	ldrsh r2, [r2, r3]
	ldr r4, _08010820 @ => 0x0805AA78
	ldr r3, _08010824 @ => 0x030033D0
	adds r3, #0x84
	ldr r3, [r3]
	lsls r3, r3, #3
	adds r4, #4
	adds r3, r3, r4
	ldr r3, [r3]
	str r3, [sp]
	movs r3, #0
	str r3, [sp, #4]
	movs r3, #0x98
	bl FUN_0800F4F8
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08010814: .4byte ROMREF_0805A890
_08010818: .4byte 0x0000081F
_0801081C: .4byte ROMREF_0805AB6C
_08010820: .4byte ROMREF_0805AA78
_08010824: .4byte gUnk_030033D0

	thumb_func_start FUN_08010828
FUN_08010828: @ 0x08010828
	push {lr}
	ldr r1, _08010838 @ => 0x03004720
	ldr r0, [r1, #0x18]
	cmp r0, #0x1e
	bne _0801083C
	bl FUN_0800DFF0
	b _08010848
	.align 2, 0
_08010838: .4byte gUnk_03004720
_0801083C:
	cmp r0, #1
	beq _08010848
	cmp r0, #0
	bne _08010848
	movs r0, #0x10
	str r0, [r1, #4]
_08010848:
	ldr r1, _08010854 @ => 0x03004720
	ldr r0, [r1, #0x18]
	subs r0, #1
	str r0, [r1, #0x18]
	pop {r0}
	bx r0
	.align 2, 0
_08010854: .4byte gUnk_03004720

	thumb_func_start FUN_08010858
FUN_08010858: @ 0x08010858
	push {r4, lr}
	ldr r4, _08010878 @ => 0x03004720
	ldr r0, [r4, #0x18]
	cmp r0, #0x1e
	bne _08010880
	movs r0, #0xb8
	bl FUN_0804DE0C
	ldr r0, _0801087C @ => 0x030033D0
	adds r0, #0x84
	movs r1, #0
	str r1, [r0]
	bl FUN_0800E190
	b _0801089A
	.align 2, 0
_08010878: .4byte gUnk_03004720
_0801087C: .4byte gUnk_030033D0
_08010880:
	cmp r0, #1
	bne _0801088A
	bl FUN_080108AC
	b _0801089A
_0801088A:
	cmp r0, #0
	bne _0801089A
	bl FUN_0800F568
	movs r0, #0x1f
	str r0, [r4, #0x18]
	movs r0, #0xb
	str r0, [r4, #4]
_0801089A:
	ldr r1, _080108A8 @ => 0x03004720
	ldr r0, [r1, #0x18]
	subs r0, #1
	str r0, [r1, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080108A8: .4byte gUnk_03004720

	thumb_func_start FUN_080108AC
FUN_080108AC: @ 0x080108AC
	push {r4, lr}
	movs r2, #8
	ldr r4, _080108D4 @ => 0x03004790
	movs r3, #2
_080108B4:
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	cmp r1, #0
	beq _080108C4
	ldr r0, [r1, #0xc]
	orrs r0, r3
	str r0, [r1, #0xc]
_080108C4:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xb
	bls _080108B4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080108D4: .4byte gUnk_03004790

	thumb_func_start FUN_080108D8
FUN_080108D8: @ 0x080108D8
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	movs r1, #0x15
	movs r2, #3
	movs r3, #6
	bl FUN_0800C790
	ldr r0, _08010930 @ => 0x03004790
	ldr r2, [r0, #0x2c]
	cmp r2, #0
	beq _08010908
	ldrh r1, [r2, #8]
	ldr r0, _08010934 @ => 0x0000FFFF
	cmp r1, r0
	beq _08010908
	ldr r0, [r2, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0xc]
_08010908:
	lsls r0, r4, #4
	ldr r1, _08010938 @ => 0x0805A960
	adds r0, r0, r1
	ldr r2, _0801093C @ => 0x0805AB08
	movs r3, #0x34
	ldrsh r1, [r2, r3]
	movs r3, #0x36
	ldrsh r2, [r2, r3]
	movs r3, #1
	str r3, [sp]
	movs r3, #4
	bl FUN_0802D680
	ldr r1, _08010930 @ => 0x03004790
	str r0, [r1, #0x2c]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010930: .4byte gUnk_03004790
_08010934: .4byte 0x0000FFFF
_08010938: .4byte ROMREF_0805A960
_0801093C: .4byte ROMREF_0805AB08

	thumb_func_start FUN_08010940
FUN_08010940: @ 0x08010940
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08009B04
	adds r5, r0, #0
	ldr r0, [r5]
	bl FUN_080012D8
	adds r4, r0, #0
	movs r0, #4
	ldrsh r1, [r5, r0]
	lsls r1, r1, #0x10
	movs r0, #6
	ldrsh r2, [r5, r0]
	lsls r2, r2, #0x10
	adds r0, r4, #0
	bl FUN_08001728
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #0
	movs r6, #0
	strh r6, [r0]
	strb r1, [r4, #0x12]
	ldr r0, _080109D8 @ => 0x00040019
	str r0, [r4, #0xc]
	ldr r1, _080109DC @ => 0x0805AD78
	adds r0, r4, #0
	bl FUN_080015B8
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001FB0
	ldr r1, _080109E0 @ => 0x09FB6218
	ldrb r0, [r5, #8]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl FUN_08048E24
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_0803EF14
	ldr r0, _080109E4 @ => FUN_080109E8
	str r0, [r4, #0x50]
	adds r0, r4, #0
	adds r0, #0x94
	str r6, [r0]
	adds r0, #4
	str r6, [r0]
	adds r2, r4, #0
	adds r2, #0xa5
	ldrb r1, [r2]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #1
	bl FUN_080017B8
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080109D8: .4byte 0x00040019
_080109DC: .4byte ROMREF_0805AD78
_080109E0: .4byte ROMREF_09FB6218
_080109E4: .4byte FUN_080109E8

	thumb_func_start FUN_080109E8
FUN_080109E8: @ 0x080109E8
	push {lr}
	adds r2, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08010A04
	cmp r0, #1
	bne _08010A04
	ldr r0, [r2, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0xc]
_08010A04:
	pop {r0}
	bx r0

	thumb_func_start FUN_08010A08
FUN_08010A08: @ 0x08010A08
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	movs r0, #0
	movs r1, #0
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #0x5c
	adds r4, r5, #0
	muls r4, r0, r4
	ldr r7, _08010A94 @ => 0x03001A2C
	adds r1, r4, r7
	mov r0, sp
	bl FUN_0802C3EC
	adds r1, r7, #0
	adds r1, #8
	adds r1, r4, r1
	mov r0, sp
	bl FUN_0802C3EC
	adds r1, r7, #0
	adds r1, #0x10
	adds r1, r4, r1
	mov r0, sp
	bl FUN_0802C3EC
	adds r1, r7, #0
	adds r1, #0x18
	adds r1, r4, r1
	mov r0, sp
	bl FUN_0802C3EC
	adds r1, r7, #0
	adds r1, #0x20
	adds r1, r4, r1
	mov r0, sp
	bl FUN_0802C3EC
	subs r0, r7, #4
	adds r0, r4, r0
	adds r3, r0, #0
	adds r3, #0x48
	movs r6, #0
	movs r2, #0
	movs r1, #1
	strh r1, [r3]
	str r2, [r0]
	adds r0, r7, #0
	adds r0, #0x50
	adds r0, r4, r0
	str r1, [r0]
	ldr r1, _08010A98 @ => 0x03003460
	lsls r0, r5, #3
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r1
	strh r2, [r0, #0x14]
	adds r1, r7, #0
	adds r1, #0x4c
	adds r4, r4, r1
	str r2, [r4]
	strb r6, [r0, #0x1f]
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010A94: .4byte gUnk_03001A2C
_08010A98: .4byte gUnk_03003460

	thumb_func_start FUN_08010A9C
FUN_08010A9C: @ 0x08010A9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r1, _08010AE8 @ => 0x03001A28
	movs r0, #0x5c
	mov r2, r8
	muls r2, r0, r2
	adds r2, r2, r1
	ldr r3, [r2]
	ldr r0, [r2, #0x2c]
	ldr r1, [r2, #0x30]
	ldr r4, [r3, #0x18]
	lsls r0, r1, #0x10
	asrs r0, r0, #1
	ldr r1, [r3, #0x1c]
	subs r5, r1, r0
	str r4, [r2, #0x24]
	str r5, [r2, #0x28]
	ldr r0, [r2, #4]
	ldr r1, [r2, #8]
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
	adds r2, #0x48
	ldrh r0, [r2]
	cmp r0, #5
	bls _08010ADE
	b _08010D80
_08010ADE:
	lsls r0, r0, #2
	ldr r1, _08010AEC @ =_08010AF0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08010AE8: .4byte gUnk_03001A28
_08010AEC: .4byte _08010AF0
_08010AF0: @ jump table
	.4byte _08010B08 @ case 0
	.4byte _08010D80 @ case 1
	.4byte _08010B7C @ case 2
	.4byte _08010BB4 @ case 3
	.4byte _08010BFC @ case 4
	.4byte _08010C48 @ case 5
_08010B08:
	ldr r2, _08010B48 @ => 0x03001A28
	movs r0, #0x5c
	mov r1, r8
	muls r1, r0, r1
	adds r0, r2, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, #1
	bne _08010B70
	adds r0, r2, r1
	movs r3, #0xe
	ldrsh r5, [r0, r3]
	movs r4, #0x12
	ldrsh r6, [r0, r4]
	movs r4, #0x26
	ldrsh r3, [r0, r4]
	movs r1, #0x2a
	ldrsh r4, [r0, r1]
	subs r1, r4, r6
	subs r0, r3, r5
	cmp r0, #0
	bge _08010B38
	rsbs r0, r0, #0
_08010B38:
	adds r2, r1, #0
	cmp r2, #0
	bge _08010B40
	rsbs r2, r2, #0
_08010B40:
	cmp r0, #1
	bgt _08010B4C
	lsls r0, r3, #0x10
	b _08010B56
	.align 2, 0
_08010B48: .4byte gUnk_03001A28
_08010B4C:
	adds r0, r5, r3
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r0, r0, #0x10
_08010B56:
	str r0, [sp, #4]
	cmp r2, #1
	bgt _08010B62
	lsls r0, r4, #0x10
	str r0, [sp, #8]
	b _08010D80
_08010B62:
	adds r0, r6, r4
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r0, r0, #0x10
	str r0, [sp, #8]
	b _08010D80
_08010B70:
	adds r0, r1, r2
	ldr r1, [r0, #0x28]
	ldr r0, [r0, #0x24]
	str r0, [sp, #4]
	str r1, [sp, #8]
	b _08010D80
_08010B7C:
	ldr r3, _08010BB0 @ => 0x03001A28
	movs r0, #0x5c
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r4, r0, r3
	ldr r1, [r4, #0x24]
	ldr r2, [r4, #0x28]
	adds r3, #0x44
	adds r0, r0, r3
	ldr r3, [r0]
	mov r0, r8
	str r0, [sp]
	add r0, sp, #4
	bl FUN_08010E5C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	beq _08010BA6
	b _08010D80
_08010BA6:
	adds r1, r4, #0
	adds r1, #0x48
	movs r0, #3
	strh r0, [r1]
	b _08010D80
	.align 2, 0
_08010BB0: .4byte gUnk_03001A28
_08010BB4:
	ldr r1, _08010BF4 @ => 0x03001A28
	movs r0, #0x5c
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r3, r0, r1
	adds r1, r3, #0
	adds r1, #0x4c
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	ldr r1, _08010BF8 @ => 0xFFFF0000
	cmp r0, r1
	beq _08010BD4
	b _08010D80
_08010BD4:
	adds r1, r3, #0
	adds r1, #0x48
	movs r0, #4
	strh r0, [r1]
	ldr r2, [r3]
	ldr r0, [r3, #0x2c]
	ldr r1, [r3, #0x30]
	ldr r6, [r2, #0x18]
	lsls r0, r1, #0x10
	asrs r0, r0, #1
	ldr r1, [r2, #0x1c]
	subs r7, r1, r0
	str r6, [r3, #0x24]
	str r7, [r3, #0x28]
	b _08010D80
	.align 2, 0
_08010BF4: .4byte gUnk_03001A28
_08010BF8: .4byte 0xFFFF0000
_08010BFC:
	ldr r3, _08010C40 @ => 0x03001A28
	movs r0, #0x5c
	mov r4, r8
	muls r4, r0, r4
	adds r0, r4, #0
	adds r4, r0, r3
	ldr r1, [r4, #0x24]
	ldr r2, [r4, #0x28]
	adds r3, #0x44
	adds r0, r0, r3
	ldr r3, [r0]
	mov r0, r8
	str r0, [sp]
	add r0, sp, #4
	bl FUN_08010E5C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	beq _08010C26
	b _08010D80
_08010C26:
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0x48
	movs r2, #0
	strh r1, [r0]
	ldr r1, _08010C44 @ => 0x03003460
	mov r3, r8
	lsls r0, r3, #3
	add r0, r8
	lsls r0, r0, #2
	adds r0, r0, r1
	strb r2, [r0, #0x1f]
	b _08010D80
	.align 2, 0
_08010C40: .4byte gUnk_03001A28
_08010C44: .4byte gUnk_03003460
_08010C48:
	ldr r1, _08010CD0 @ => 0x03003460
	mov r4, r8
	lsls r0, r4, #3
	add r0, r8
	lsls r0, r0, #2
	mov sb, r0
	adds r7, r0, r1
	ldrb r0, [r7, #0x1f]
	mov sl, r1
	cmp r0, #1
	bne _08010CDC
	ldr r1, _08010CD4 @ => 0x03001A28
	movs r0, #0x5c
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r4, r0, r1
	ldr r2, [r7]
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x30]
	ldr r3, [r2, #0x18]
	str r3, [sp, #0x24]
	lsls r0, r1, #0x10
	asrs r0, r0, #1
	ldr r1, [r2, #0x1c]
	subs r0, r1, r0
	str r0, [sp, #0x28]
	mov r0, sl
	adds r0, #0xc
	add r0, sb
	ldr r3, [r0]
	mov r0, r8
	str r0, [sp]
	add r0, sp, #4
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x28]
	bl FUN_08010E5C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bne _08010D80
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x28]
	str r1, [sp, #4]
	str r2, [sp, #8]
	ldrh r0, [r7, #0x14]
	subs r0, #1
	movs r3, #0
	movs r2, #0
	strh r0, [r7, #0x14]
	lsls r0, r0, #0x10
	ldr r1, _08010CD8 @ => 0xFFFF0000
	cmp r0, r1
	bne _08010D80
	adds r0, r4, #0
	adds r0, #0x48
	strh r2, [r0]
	strb r3, [r7, #0x1f]
	ldr r0, [r7]
	str r0, [r4]
	strh r2, [r7, #0x16]
	strb r3, [r7, #0x1f]
	ldrb r0, [r7, #0x1d]
	ldrb r1, [r7, #0x1e]
	bl FUN_080099A8
	b _08010D80
	.align 2, 0
_08010CD0: .4byte gUnk_03003460
_08010CD4: .4byte gUnk_03001A28
_08010CD8: .4byte 0xFFFF0000
_08010CDC:
	cmp r0, #3
	bne _08010D80
	mov r0, sl
	adds r0, #0x18
	add r0, sb
	ldr r0, [r0]
	cmp r0, #0
	bne _08010CFC
	mov r0, sl
	adds r0, #0x10
	add r0, sb
	ldr r2, [r0]
	subs r1, r2, #1
	str r1, [r0]
	cmp r2, #0
	beq _08010D5C
_08010CFC:
	ldr r4, _08010D58 @ => 0x03001A28
	movs r0, #0x5c
	mov r5, r8
	muls r5, r0, r5
	adds r0, r5, r4
	ldr r0, [r0]
	adds r0, #0x18
	add r6, sp, #0xc
	adds r1, r6, #0
	bl FUN_0802C3EC
	adds r4, #4
	adds r5, r5, r4
	add r2, sp, #0x14
	adds r0, r6, #0
	adds r1, r5, #0
	bl FUN_0802C3D4
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldrh r0, [r7, #0x14]
	adds r1, r0, #1
	strh r1, [r7, #0x14]
	lsls r0, r0, #0x10
	mov r2, sl
	adds r2, #0xc
	cmp r0, #0
	beq _08010D46
	movs r0, #0
	strh r0, [r7, #0x14]
	mov r3, sb
	adds r1, r3, r2
	ldr r0, [r1]
	rsbs r0, r0, #0
	str r0, [r1]
_08010D46:
	mov r4, sb
	adds r0, r4, r2
	ldrh r1, [r7, #0x14]
	ldr r0, [r0]
	muls r1, r0, r1
	ldr r0, [sp, #8]
	adds r0, r0, r1
	str r0, [sp, #8]
	b _08010D80
	.align 2, 0
_08010D58: .4byte gUnk_03001A28
_08010D5C:
	ldr r1, _08010E4C @ => 0x03001A28
	movs r0, #0x5c
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	adds r0, r0, r1
	adds r0, #0x48
	movs r1, #0
	strh r2, [r0]
	strb r1, [r7, #0x1f]
	ldrb r0, [r7, #0x1d]
	ldrb r1, [r7, #0x1e]
	bl FUN_080099A8
	ldr r0, _08010E50 @ => 0x030036A4
	ldrb r0, [r0]
	bl FUN_0804E03C
_08010D80:
	ldr r1, _08010E4C @ => 0x03001A28
	movs r0, #0x5c
	mov r2, r8
	muls r2, r0, r2
	adds r0, r1, #0
	adds r0, #0x50
	adds r0, r2, r0
	ldr r0, [r0]
	adds r7, r1, #0
	cmp r0, #1
	bne _08010DFE
	ldr r1, [sp, #4]
	ldr r4, _08010E54 @ => 0xFF880000
	adds r1, r1, r4
	adds r0, r7, #0
	adds r0, #0x38
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r1, r0
	bge _08010DB0
	movs r1, #0xf0
	lsls r1, r1, #0xf
	adds r0, r0, r1
	str r0, [sp, #4]
_08010DB0:
	ldr r1, [sp, #4]
	movs r3, #0xf0
	lsls r3, r3, #0xf
	adds r1, r1, r3
	adds r0, r7, #0
	adds r0, #0x3c
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r1, r0
	ble _08010DCA
	ldr r4, _08010E54 @ => 0xFF880000
	adds r0, r0, r4
	str r0, [sp, #4]
_08010DCA:
	ldr r1, [sp, #8]
	ldr r0, _08010E58 @ => 0xFFB00000
	adds r1, r1, r0
	adds r0, r7, #0
	adds r0, #0x34
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r1, r0
	bge _08010DE4
	movs r1, #0xa0
	lsls r1, r1, #0xf
	adds r0, r0, r1
	str r0, [sp, #8]
_08010DE4:
	ldr r1, [sp, #8]
	movs r3, #0xa0
	lsls r3, r3, #0xf
	adds r1, r1, r3
	adds r0, r7, #0
	adds r0, #0x40
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r1, r0
	ble _08010DFE
	ldr r4, _08010E58 @ => 0xFFB00000
	adds r0, r0, r4
	str r0, [sp, #8]
_08010DFE:
	movs r0, #0x5c
	mov r6, r8
	muls r6, r0, r6
	adds r5, r6, r7
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	ldr r3, [sp, #4]
	ldr r4, [sp, #8]
	str r4, [sp]
	add r0, sp, #0x1c
	bl FUN_0801141C
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	str r0, [r5, #4]
	str r1, [r5, #8]
	adds r0, r7, #0
	adds r0, #0x58
	adds r0, r6, r0
	ldr r0, [r0]
	cmp r0, #1
	bne _08010E3A
	adds r0, r7, #0
	adds r0, #8
	adds r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x10
	adds r1, r6, r1
	ldr r1, [r1]
	str r1, [r0]
_08010E3A:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010E4C: .4byte gUnk_03001A28
_08010E50: .4byte gUnk_030036A4
_08010E54: .4byte 0xFF880000
_08010E58: .4byte 0xFFB00000

	thumb_func_start FUN_08010E5C
FUN_08010E5C: @ 0x08010E5C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sl, r0
	adds r6, r2, #0
	adds r5, r1, #0
	adds r7, r3, #0
	ldr r0, [sp, #0x30]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r1, _08010ED4 @ => 0x03001A28
	movs r0, #0x5c
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r0, r1
	ldr r1, [r0, #8]
	ldr r0, [r0, #4]
	mov r2, sl
	str r0, [r2]
	str r1, [r2, #4]
	ldr r1, _08010ED8 @ => 0x03003460
	mov r2, r8
	lsls r0, r2, #3
	add r0, r8
	lsls r0, r0, #2
	adds r4, r0, r1
	ldrh r1, [r4, #0x16]
	cmp r1, #0x3f
	bhi _08010EDC
	movs r0, #0x20
	adds r0, r0, r4
	mov sb, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08010EDC
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0802C210
	adds r1, r0, #0
	adds r0, r7, #0
	bl FUN_0802C314
	adds r7, r0, #0
	ldrh r0, [r4, #0x16]
	adds r0, #2
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3f
	bls _08010F2E
	movs r0, #1
	mov r1, sb
	strb r0, [r1]
	b _08010F2E
	.align 2, 0
_08010ED4: .4byte gUnk_03001A28
_08010ED8: .4byte gUnk_03003460
_08010EDC:
	ldr r1, _08010F54 @ => 0x03001A28
	movs r0, #0x5c
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r0, r1
	ldr r1, [r0, #8]
	ldr r0, [r0, #4]
	adds r3, r6, #0
	adds r2, r5, #0
	bl FUN_0802C538
	adds r4, r0, #0
	movs r1, #0xa0
	lsls r1, r1, #0xd
	adds r0, r7, #0
	bl FUN_0802C314
	cmp r4, r0
	bhs _08010F2E
	ldr r1, _08010F58 @ => 0x03003460
	mov r2, r8
	lsls r0, r2, #3
	add r0, r8
	lsls r0, r0, #2
	adds r4, r0, r1
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	beq _08010F2E
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0802C210
	adds r1, r0, #0
	adds r0, r7, #0
	bl FUN_0802C314
	adds r7, r0, #0
	ldrh r0, [r4, #0x16]
	subs r0, #2
	strh r0, [r4, #0x16]
_08010F2E:
	ldr r2, _08010F54 @ => 0x03001A28
	movs r0, #0x5c
	mov r3, r8
	muls r3, r0, r3
	adds r0, r2, #0
	adds r0, #8
	adds r0, r3, r0
	adds r1, r7, r6
	ldr r4, [r0]
	cmp r4, r1
	ble _08010F68
	adds r0, r2, #4
	adds r0, r3, r0
	adds r1, r7, r5
	ldr r3, [r0]
	cmp r3, r1
	ble _08010F5C
	movs r1, #7
	b _08010FA4
	.align 2, 0
_08010F54: .4byte gUnk_03001A28
_08010F58: .4byte gUnk_03003460
_08010F5C:
	subs r0, r5, r7
	movs r1, #0
	cmp r3, r0
	bge _08010FA4
	movs r1, #1
	b _08010FA4
_08010F68:
	subs r0, r6, r7
	cmp r4, r0
	bge _08010F8A
	adds r0, r2, #4
	adds r0, r3, r0
	adds r1, r7, r5
	ldr r3, [r0]
	cmp r3, r1
	ble _08010F7E
	movs r1, #5
	b _08010FA4
_08010F7E:
	subs r0, r5, r7
	movs r1, #4
	cmp r3, r0
	bge _08010FA4
	movs r1, #3
	b _08010FA4
_08010F8A:
	adds r0, r2, #4
	adds r0, r3, r0
	adds r1, r7, r5
	ldr r3, [r0]
	cmp r3, r1
	ble _08010F9A
	movs r1, #6
	b _08010FA4
_08010F9A:
	subs r0, r5, r7
	movs r1, #8
	cmp r3, r0
	bge _08010FA4
	movs r1, #2
_08010FA4:
	cmp r1, #8
	beq _0801100C
	movs r0, #0x5c
	mov r1, r8
	muls r1, r0, r1
	adds r0, r2, #4
	adds r0, r1, r0
	ldr r0, [r0]
	subs r0, r5, r0
	str r0, [sp, #8]
	adds r0, r2, #0
	adds r0, #8
	adds r1, r1, r0
	ldr r0, [r1]
	subs r0, r6, r0
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl FUN_0802C50C
	adds r4, r0, #0
	lsls r4, r4, #0x18
	ldr r5, _08011008 @ => 0x08059F28
	lsrs r4, r4, #0x15
	adds r0, r4, r5
	ldr r0, [r0]
	adds r1, r7, #0
	bl FUN_0802C314
	str r0, [sp]
	adds r5, #4
	adds r4, r4, r5
	ldr r0, [r4]
	adds r1, r7, #0
	bl FUN_0802C314
	str r0, [sp, #4]
	mov r1, sl
	ldr r0, [r1]
	ldr r2, [sp]
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, [r1, #4]
	ldr r1, [sp, #4]
	adds r0, r0, r1
	mov r2, sl
	str r0, [r2, #4]
	movs r1, #0
	b _08011012
	.align 2, 0
_08011008: .4byte ROMREF_08059F28
_0801100C:
	mov r0, sl
	str r5, [r0]
	str r6, [r0, #4]
_08011012:
	adds r0, r1, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_08011024
FUN_08011024: @ 0x08011024
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r3, _08011054 @ => 0x03001A28
	movs r0, #0x5c
	muls r0, r4, r0
	adds r0, r0, r3
	adds r0, #0x48
	movs r2, #0
	strh r5, [r0]
	ldr r1, _08011058 @ => 0x03003460
	lsls r0, r4, #3
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	strb r2, [r0, #0x1f]
	cmp r5, #5
	bhi _08011082
	lsls r0, r5, #2
	ldr r1, _0801105C @ =_08011060
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08011054: .4byte gUnk_03001A28
_08011058: .4byte gUnk_03003460
_0801105C: .4byte _08011060
_08011060: @ jump table
	.4byte _08011082 @ case 0
	.4byte _08011078 @ case 1
	.4byte _08011082 @ case 2
	.4byte _08011082 @ case 3
	.4byte _08011082 @ case 4
	.4byte _08011082 @ case 5
_08011078:
	movs r0, #0x5c
	muls r0, r4, r0
	adds r0, r0, r3
	movs r1, #0
	str r1, [r0]
_08011082:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_08011088
FUN_08011088: @ 0x08011088
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0801109C @ => 0x03001A28
	movs r1, #0x5c
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x48
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_0801109C: .4byte gUnk_03001A28

	thumb_func_start FUN_080110A0
FUN_080110A0: @ 0x080110A0
	push {r4, lr}
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r4, _080110C0 @ => 0x03001A28
	movs r3, #0x5c
	muls r3, r2, r3
	adds r2, r4, #4
	adds r2, r3, r2
	str r0, [r2]
	adds r4, #8
	adds r3, r3, r4
	str r1, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080110C0: .4byte gUnk_03001A28

	thumb_func_start FUN_080110C4
FUN_080110C4: @ 0x080110C4
	push {r4, lr}
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r3, _080110FC @ => 0x03001A28
	mov ip, r3
	movs r3, #0x5c
	adds r4, r2, #0
	muls r4, r3, r4
	mov r3, ip
	adds r3, #0x24
	adds r3, r4, r3
	mov r2, ip
	adds r2, #4
	adds r2, r4, r2
	str r0, [r2]
	str r0, [r3]
	mov r3, ip
	adds r3, #0x28
	adds r3, r4, r3
	mov r2, ip
	adds r2, #8
	adds r4, r4, r2
	adds r0, r1, #0
	str r0, [r4]
	str r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080110FC: .4byte gUnk_03001A28

	thumb_func_start FUN_08011100
FUN_08011100: @ 0x08011100
	push {r4, r5, r6, lr}
	ldr r6, [sp, #0x10]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r4, _0801114C @ => 0x03001A28
	mov ip, r4
	movs r4, #0x5c
	adds r5, r6, #0
	muls r5, r4, r5
	mov r4, ip
	adds r4, #0x24
	adds r4, r5, r4
	str r0, [r4]
	mov r4, ip
	adds r4, #0x28
	adds r4, r5, r4
	str r1, [r4]
	mov r0, ip
	adds r0, #0x44
	adds r0, r5, r0
	str r2, [r0]
	add r5, ip
	adds r0, r5, #0
	adds r0, #0x4c
	movs r2, #0
	strh r3, [r0]
	movs r0, #2
	adds r5, #0x48
	strh r0, [r5]
	ldr r1, _08011150 @ => 0x03003460
	lsls r0, r6, #3
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r1
	strb r2, [r0, #0x1f]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801114C: .4byte gUnk_03001A28
_08011150: .4byte gUnk_03003460

	thumb_func_start FUN_08011154
FUN_08011154: @ 0x08011154
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	mov r8, r0
	adds r6, r2, #0
	adds r5, r1, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r1, _08011198 @ => 0x03001A28
	movs r0, #0x5c
	adds r4, r3, #0
	muls r4, r0, r4
	adds r4, r4, r1
	mov r0, r8
	str r0, [r4]
	str r5, [r4, #0x2c]
	str r6, [r4, #0x30]
	mov r0, sp
	mov r1, r8
	adds r3, r6, #0
	adds r2, r5, #0
	bl FUN_080114C0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r0, [r4, #0x24]
	str r1, [r4, #0x28]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08011198: .4byte gUnk_03001A28

	thumb_func_start FUN_0801119C
FUN_0801119C: @ 0x0801119C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	mov r8, r0
	adds r6, r2, #0
	adds r5, r1, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r1, _080111E4 @ => 0x03001A28
	movs r0, #0x5c
	adds r4, r3, #0
	muls r4, r0, r4
	adds r4, r4, r1
	mov r0, r8
	str r0, [r4]
	str r5, [r4, #0x2c]
	str r6, [r4, #0x30]
	mov r0, sp
	mov r1, r8
	adds r3, r6, #0
	adds r2, r5, #0
	bl FUN_080114C0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r0, [r4, #4]
	str r1, [r4, #8]
	str r0, [r4, #0x24]
	str r1, [r4, #0x28]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080111E4: .4byte gUnk_03001A28

	thumb_func_start FUN_080111E8
FUN_080111E8: @ 0x080111E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080111F8 @ => 0x03001A28
	movs r1, #0x5c
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r0, [r0]
	bx lr
	.align 2, 0
_080111F8: .4byte gUnk_03001A28

	thumb_func_start FUN_080111FC
FUN_080111FC: @ 0x080111FC
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r3, _08011218 @ => 0x03001A28
	movs r2, #0x5c
	muls r2, r1, r2
	adds r1, r3, #4
	adds r1, r2, r1
	ldr r1, [r1]
	str r1, [r0]
	adds r3, #8
	adds r2, r2, r3
	ldr r1, [r2]
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_08011218: .4byte gUnk_03001A28

	thumb_func_start FUN_0801121C
FUN_0801121C: @ 0x0801121C
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r3, _0801123C @ => 0x03001A28
	movs r2, #0x5c
	muls r2, r1, r2
	adds r1, r3, #0
	adds r1, #0x24
	adds r1, r2, r1
	ldr r1, [r1]
	str r1, [r0]
	adds r3, #0x28
	adds r2, r2, r3
	ldr r1, [r2]
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_0801123C: .4byte gUnk_03001A28

	thumb_func_start FUN_08011240
FUN_08011240: @ 0x08011240
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r3, _08011260 @ => 0x03001A28
	movs r2, #0x5c
	muls r2, r1, r2
	adds r1, r3, #0
	adds r1, #0x2c
	adds r1, r2, r1
	ldr r1, [r1]
	str r1, [r0]
	adds r3, #0x30
	adds r2, r2, r3
	ldr r1, [r2]
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_08011260: .4byte gUnk_03001A28

	thumb_func_start FUN_08011264
FUN_08011264: @ 0x08011264
	push {r4, r5, lr}
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r5, _08011298 @ => 0x03001A28
	movs r3, #0x5c
	adds r4, r2, #0
	muls r4, r3, r4
	adds r3, r5, #4
	adds r3, r4, r3
	ldr r2, [r3]
	adds r2, r2, r0
	str r2, [r3]
	adds r3, r5, #0
	adds r3, #8
	adds r3, r4, r3
	ldr r2, [r3]
	adds r2, r2, r1
	str r2, [r3]
	adds r4, r4, r5
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	str r0, [r4, #0x24]
	str r1, [r4, #0x28]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011298: .4byte gUnk_03001A28

	thumb_func_start FUN_0801129C
FUN_0801129C: @ 0x0801129C
	push {r4, lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r3, _080112C4 @ => 0x03001A28
	movs r2, #0x5c
	adds r4, r1, #0
	muls r4, r2, r4
	adds r1, r3, #0
	adds r1, #0x2c
	adds r1, r4, r1
	ldr r2, [r0]
	str r2, [r1]
	adds r3, #0x30
	adds r4, r4, r3
	ldr r0, [r0, #4]
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080112C4: .4byte gUnk_03001A28

	thumb_func_start FUN_080112C8
FUN_080112C8: @ 0x080112C8
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x18
	lsrs r4, r4, #0x18
	adds r1, r4, #0
	bl FUN_08047038
	ldr r2, _080112FC @ => 0x03001A28
	movs r0, #0x5c
	adds r3, r4, #0
	muls r3, r0, r3
	adds r0, r2, r3
	movs r1, #6
	ldrsh r0, [r0, r1]
	ldr r1, [r5]
	subs r0, r0, r1
	str r0, [r5]
	adds r2, r2, r3
	movs r1, #0xa
	ldrsh r0, [r2, r1]
	ldr r1, [r5, #4]
	subs r0, r0, r1
	str r0, [r5, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080112FC: .4byte gUnk_03001A28

	thumb_func_start FUN_08011300
FUN_08011300: @ 0x08011300
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _08011314 @ => 0x03001A28
	movs r3, #0x5c
	muls r1, r3, r1
	adds r2, #0x54
	adds r1, r1, r2
	str r0, [r1]
	bx lr
	.align 2, 0
_08011314: .4byte gUnk_03001A28

	thumb_func_start FUN_08011318
FUN_08011318: @ 0x08011318
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0801132C @ => 0x03001A28
	movs r3, #0x5c
	muls r0, r3, r0
	adds r2, #0x58
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_0801132C: .4byte gUnk_03001A28

	thumb_func_start FUN_08011330
FUN_08011330: @ 0x08011330
	push {r4, r5, r6, lr}
	ldr r4, [sp, #0x10]
	ldr r5, [sp, #0x14]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	ldr r2, _0801138C @ => 0x03001A28
	mov ip, r2
	movs r2, #0x5c
	muls r2, r0, r2
	mov r0, ip
	adds r0, #0x50
	adds r0, r2, r0
	str r1, [r0]
	cmp r1, #1
	bne _08011386
	mov r0, ip
	adds r0, #0x38
	adds r0, r2, r0
	lsls r1, r6, #0x10
	str r1, [r0]
	mov r0, ip
	adds r0, #0x34
	adds r0, r2, r0
	lsls r1, r3, #0x10
	str r1, [r0]
	mov r0, ip
	adds r0, #0x3c
	adds r0, r2, r0
	lsls r1, r4, #0x10
	str r1, [r0]
	mov r0, ip
	adds r0, #0x40
	adds r0, r2, r0
	lsls r1, r5, #0x10
	str r1, [r0]
_08011386:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801138C: .4byte gUnk_03001A28

	thumb_func_start FUN_08011390
FUN_08011390: @ 0x08011390
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	movs r0, #0x2a
	bl FUN_080012D8
	adds r4, r0, #0
	cmp r4, #0
	beq _080113C6
	adds r0, r6, #0
	adds r1, r5, #0
	bl FUN_08009B04
	movs r2, #4
	ldrsh r1, [r0, r2]
	movs r3, #6
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	bl FUN_08001734
	ldr r0, _080113D0 @ => 0x80022000
	str r0, [r4, #0xc]
	movs r0, #0
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
_080113C6:
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080113D0: .4byte 0x80022000

	thumb_func_start FUN_080113D4
FUN_080113D4: @ 0x080113D4
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r5, _08011418 @ => 0x03001A28
	movs r1, #0x5c
	adds r7, r1, #0
	muls r7, r0, r7
	adds r4, r7, r5
	ldr r6, [r4]
	ldr r2, [r4, #0x2c]
	ldr r3, [r4, #0x30]
	ldr r0, [r6, #0x18]
	str r0, [sp]
	lsls r0, r3, #0x10
	asrs r0, r0, #1
	ldr r2, [r6, #0x1c]
	subs r0, r2, r0
	str r0, [sp, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r0, [r4, #0x24]
	str r1, [r4, #0x28]
	adds r0, r5, #4
	adds r0, r7, r0
	adds r5, #0x24
	adds r1, r7, r5
	bl FUN_0802C418
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08011418: .4byte gUnk_03001A28

	thumb_func_start FUN_0801141C
FUN_0801141C: @ 0x0801141C
	sub sp, #4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r7, r2, #0
	adds r6, r1, #0
	str r3, [sp, #0x20]
	asrs r3, r3, #0x10
	asrs r2, r6, #0x10
	subs r4, r3, r2
	ldr r0, [sp, #0x24]
	asrs r1, r0, #0x10
	asrs r0, r7, #0x10
	subs r1, r1, r0
	cmp r4, #0
	blt _08011446
	cmp r4, #8
	bgt _08011464
	b _0801144C
_08011446:
	subs r0, r2, r3
	cmp r0, #8
	bgt _08011464
_0801144C:
	ldr r2, [sp, #0x24]
	asrs r3, r2, #0x10
	asrs r0, r7, #0x10
	subs r2, r3, r0
	cmp r2, #0
	blt _0801145E
	cmp r2, #8
	bgt _08011464
	b _0801149E
_0801145E:
	subs r0, r0, r3
	cmp r0, #8
	ble _0801149E
_08011464:
	adds r0, r4, #0
	muls r0, r4, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl SVC_Sqrt
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [sp, #0x20]
	subs r0, r1, r6
	adds r1, r4, #0
	bl SVC_Div
	adds r5, r0, #0
	ldr r2, [sp, #0x24]
	subs r0, r2, r7
	adds r1, r4, #0
	bl SVC_Div
	lsls r5, r5, #3
	adds r5, r6, r5
	str r5, [sp]
	lsls r0, r0, #3
	adds r6, r7, r0
	str r6, [sp, #4]
	b _080114A6
_0801149E:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	str r0, [sp]
	str r1, [sp, #4]
_080114A6:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	mov r2, r8
	str r0, [r2]
	str r1, [r2, #4]
	mov r0, r8
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #4
	bx r3

	thumb_func_start FUN_080114C0
FUN_080114C0: @ 0x080114C0
	push {r4, r5, lr}
	ldr r4, [r1, #0x18]
	lsls r2, r3, #0x10
	asrs r2, r2, #1
	ldr r1, [r1, #0x1c]
	subs r5, r1, r2
	str r4, [r0]
	str r5, [r0, #4]
	pop {r4, r5}
	pop {r2}
	bx r2
	.align 2, 0

	thumb_func_start FUN_080114D8
FUN_080114D8: @ 0x080114D8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r5, _08011530 @ => 0x0805F7E4
	ldr r4, _08011534 @ => 0x0805F854
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0
	bl FUN_0802D6FC
	movs r0, #2
	movs r1, #9
	movs r2, #1
	movs r3, #1
	bl FUN_08019FEC
	ldr r0, _08011538 @ => 0x030036C0
	adds r0, #0xa1
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801153C
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r0, [r0]
	str r0, [sp]
	movs r0, #3
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0
	bl FUN_0802D6FC
	movs r0, #3
	movs r1, #9
	movs r2, #2
	movs r3, #1
	bl FUN_08019FEC
	b _0801155C
	.align 2, 0
_08011530: .4byte ROMREF_0805F7E4
_08011534: .4byte ROMREF_0805F854
_08011538: .4byte gUnk_030036C0
_0801153C:
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r0, [r0]
	str r0, [sp]
	movs r0, #3
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0
	bl FUN_0802D6FC
	movs r0, #3
	movs r1, #9
	movs r2, #0
	movs r3, #1
	bl FUN_08019FEC
_0801155C:
	ldr r6, _080115B4 @ => 0x0805F7F4
	ldr r4, _080115B8 @ => 0x09FB6248
	ldr r3, [r4, #0x7c]
	ldr r5, _080115BC @ => 0x0805F854
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r0, [r0]
	str r0, [sp]
	movs r0, #4
	movs r1, #0
	adds r2, r6, #0
	bl FUN_0802D6FC
	movs r0, #4
	movs r1, #0xa
	movs r2, #0xfe
	movs r3, #1
	bl FUN_08019FEC
	ldr r0, _080115C0 @ => 0x030036C0
	adds r0, #0xa1
	ldrb r0, [r0]
	cmp r0, #1
	bne _080115C4
	adds r0, r4, #0
	adds r0, #0x84
	ldr r3, [r0]
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	str r0, [sp]
	movs r0, #5
	movs r1, #0
	adds r2, r6, #0
	bl FUN_0802D6FC
	movs r0, #5
	movs r1, #0xa
	movs r2, #0xfe
	movs r3, #0
	bl FUN_08019FEC
	b _080115E8
	.align 2, 0
_080115B4: .4byte ROMREF_0805F7F4
_080115B8: .4byte ROMREF_09FB6248
_080115BC: .4byte ROMREF_0805F854
_080115C0: .4byte gUnk_030036C0
_080115C4:
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r3, [r0]
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	str r0, [sp]
	movs r0, #5
	movs r1, #0
	adds r2, r6, #0
	bl FUN_0802D6FC
	movs r0, #5
	movs r1, #0xa
	movs r2, #0xfe
	movs r3, #0
	bl FUN_08019FEC
_080115E8:
	ldr r5, _080116C4 @ => 0x0805F6E4
	ldr r0, _080116C8 @ => 0x09FB6248
	mov r8, r0
	ldr r3, [r0]
	ldr r7, _080116CC @ => 0x0805F854
	adds r0, r7, #0
	adds r0, #0xc0
	ldr r0, [r0]
	str r0, [sp]
	movs r0, #6
	movs r1, #0
	adds r2, r5, #0
	bl FUN_0802D6FC
	movs r0, #6
	movs r1, #4
	movs r2, #0xfe
	movs r3, #1
	bl FUN_08019FEC
	ldr r6, _080116D0 @ => 0x03004790
	ldr r0, [r6, #0x18]
	ldr r4, _080116D4 @ => 0x030036C0
	adds r1, r4, #0
	adds r1, #0xd8
	ldr r1, [r1]
	lsls r1, r1, #0x11
	movs r2, #0x9d
	lsls r2, r2, #0x10
	adds r1, r1, r2
	movs r2, #0xa8
	lsls r2, r2, #0xf
	bl FUN_08001728
	mov r0, r8
	ldr r3, [r0]
	ldr r0, [r7, #0x1c]
	str r0, [sp]
	movs r0, #7
	movs r1, #0
	adds r2, r5, #0
	bl FUN_0802D6FC
	movs r0, #7
	movs r1, #4
	movs r2, #0xfe
	movs r3, #0
	bl FUN_08019FEC
	ldr r0, [r6, #0x1c]
	adds r4, #0xdc
	ldr r1, [r4]
	lsls r1, r1, #0x12
	movs r2, #0x9d
	lsls r2, r2, #0x10
	adds r1, r1, r2
	movs r2, #0x83
	lsls r2, r2, #0x10
	bl FUN_08001728
	adds r2, r5, #0
	adds r2, #0x20
	adds r0, r7, #0
	adds r0, #0xc8
	ldr r0, [r0]
	str r0, [sp]
	movs r0, #8
	movs r1, #0
	movs r3, #0
	bl FUN_0802D6FC
	movs r0, #8
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl FUN_08019FEC
	adds r5, #0x10
	adds r0, r7, #0
	adds r0, #0xcc
	ldr r0, [r0]
	str r0, [sp]
	movs r0, #9
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0
	bl FUN_0802D6FC
	movs r0, #9
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl FUN_08019FEC
	movs r4, #2
_080116A6:
	ldr r1, _080116D0 @ => 0x03004790
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0xa9
	ldrb r0, [r0]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x1c
	cmp r0, #5
	beq _080116E2
	cmp r0, #5
	bgt _080116D8
	cmp r0, #4
	beq _08011708
	b _08011716
	.align 2, 0
_080116C4: .4byte ROMREF_0805F6E4
_080116C8: .4byte ROMREF_09FB6248
_080116CC: .4byte ROMREF_0805F854
_080116D0: .4byte gUnk_03004790
_080116D4: .4byte gUnk_030036C0
_080116D8:
	cmp r0, #9
	beq _080116EC
	cmp r0, #0xa
	beq _080116F4
	b _08011716
_080116E2:
	ldr r0, _080116E8 @ => 0x0805F704
	b _080116F6
	.align 2, 0
_080116E8: .4byte ROMREF_0805F704
_080116EC:
	ldr r0, _080116F0 @ => 0x0805F7E4
	b _080116F6
	.align 2, 0
_080116F0: .4byte ROMREF_0805F7E4
_080116F4:
	ldr r0, _08011704 @ => 0x0805F7F4
_080116F6:
	ldr r0, [r0, #8]
	lsrs r1, r1, #0x1c
	lsls r1, r1, #4
	movs r2, #0x10
	bl FUN_0801579C
	b _08011716
	.align 2, 0
_08011704: .4byte ROMREF_0805F7F4
_08011708:
	ldr r0, _08011730 @ => 0x0805F6E4
	ldr r0, [r0, #8]
	lsrs r1, r1, #0x1c
	lsls r1, r1, #4
	movs r2, #0x10
	bl FUN_0801579C
_08011716:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #9
	bls _080116A6
	bl FUN_080118E0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011730: .4byte ROMREF_0805F6E4

	thumb_func_start FUN_08011734
FUN_08011734: @ 0x08011734
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	movs r0, #0
	mov r8, r0
	ldr r3, _08011758 @ => 0x030036C0
	movs r2, #0xd4
	adds r2, r2, r3
	mov ip, r2
	ldrb r1, [r2]
	cmp r1, #1
	beq _080117C8
	cmp r1, #1
	bgt _0801175C
	cmp r1, #0
	beq _08011762
	b _080118AE
	.align 2, 0
_08011758: .4byte gUnk_030036C0
_0801175C:
	cmp r1, #2
	beq _08011832
	b _080118AE
_08011762:
	ldr r0, _08011780 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r2, #1
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08011784
	mov r0, ip
	strb r2, [r0]
	adds r0, r3, #0
	adds r0, #0xd7
	strb r2, [r0]
	str r4, [r3, #0x14]
	b _080118B4
	.align 2, 0
_08011780: .4byte gUnk_030042B0
_08011784:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08011794
	movs r0, #1
	movs r1, #4
	movs r2, #3
	b _08011854
_08011794:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080117AE
	adds r1, r3, #0
	adds r1, #0xd6
	ldrb r0, [r1]
	cmp r0, #0
	bne _080117A8
	b _080118AE
_080117A8:
	subs r0, #1
	strb r0, [r1]
	b _080118B4
_080117AE:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080117B8
	b _080118CA
_080117B8:
	adds r1, r3, #0
	adds r1, #0xd6
	ldrb r0, [r1]
	cmp r0, #0
	bne _080118AE
	adds r0, #1
	strb r0, [r1]
	b _080118B4
_080117C8:
	ldr r5, _080117FC @ => 0x03004720
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _080117D4
	subs r0, #1
	str r0, [r5, #0x18]
_080117D4:
	ldr r4, _08011800 @ => 0x030042B0
	ldrh r2, [r4, #0xc]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08011804
	adds r0, r3, #0
	adds r0, #0xb8
	ldr r0, [r0]
	cmp r0, #1
	beq _0801184E
	movs r0, #2
	mov r2, ip
	strb r0, [r2]
	adds r2, r3, #0
	adds r2, #0xd7
	strb r0, [r2]
	str r1, [r3, #0x14]
	b _080118B4
	.align 2, 0
_080117FC: .4byte gUnk_03004720
_08011800: .4byte gUnk_030042B0
_08011804:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0801181C
	mov r2, r8
	mov r0, ip
	strb r2, [r0]
	adds r0, r3, #0
	adds r0, #0xd7
	strb r2, [r0]
	str r1, [r3, #0x14]
	b _080118B4
_0801181C:
	ldrh r1, [r4, #8]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _080118CA
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bne _080118AE
	adds r0, r3, #0
	adds r0, #0xd8
	b _0801188C
_08011832:
	ldr r5, _0801185C @ => 0x03004720
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _0801183E
	subs r0, #1
	str r0, [r5, #0x18]
_0801183E:
	ldr r4, _08011860 @ => 0x030042B0
	ldrh r2, [r4, #0xc]
	movs r6, #1
	movs r7, #1
	adds r0, r7, #0
	ands r0, r2
	cmp r0, #0
	beq _08011864
_0801184E:
	movs r0, #1
	movs r1, #4
	movs r2, #5
_08011854:
	movs r3, #2
	bl FUN_0801A080
	b _080118AE
	.align 2, 0
_0801185C: .4byte gUnk_03004720
_08011860: .4byte gUnk_030042B0
_08011864:
	ands r1, r2
	cmp r1, #0
	beq _08011878
	mov r2, ip
	strb r6, [r2]
	adds r0, r3, #0
	adds r0, #0xd7
	strb r6, [r0]
	str r7, [r3, #0x14]
	b _080118B4
_08011878:
	ldrh r1, [r4, #8]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _080118CA
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bne _080118AE
	adds r0, r3, #0
	adds r0, #0xdc
_0801188C:
	ldr r2, _080118D8 @ => 0x0805AD88
	adds r1, r3, #0
	adds r1, #0xd7
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldrh r1, [r4, #6]
	str r1, [sp]
	movs r1, #0
	movs r3, #0
	bl FUN_08024B84
	movs r0, #1
	mov r8, r0
	movs r0, #5
	str r0, [r5, #0x18]
_080118AE:
	mov r2, r8
	cmp r2, #0
	beq _080118BA
_080118B4:
	movs r0, #0xb2
	bl FUN_0804DE0C
_080118BA:
	ldr r0, _080118DC @ => 0x030036C0
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _080118CA
	bl FUN_080118E0
	bl FUN_08019BF4
_080118CA:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080118D8: .4byte ROMREF_0805AD88
_080118DC: .4byte gUnk_030036C0

	thumb_func_start FUN_080118E0
FUN_080118E0: @ 0x080118E0
	push {r4, r5, r6, lr}
	ldr r4, _08011904 @ => 0x030036C0
	adds r0, r4, #0
	adds r0, #0xb8
	ldr r0, [r0]
	bl FUN_08011B04
	adds r0, r4, #0
	adds r0, #0xd4
	ldrb r0, [r0]
	cmp r0, #1
	beq _080119E4
	cmp r0, #1
	bgt _08011908
	cmp r0, #0
	beq _08011910
	b _08011A94
	.align 2, 0
_08011904: .4byte gUnk_030036C0
_08011908:
	cmp r0, #2
	bne _0801190E
	b _08011A5C
_0801190E:
	b _08011A94
_08011910:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0801195E
	adds r0, r4, #0
	adds r0, #0xd5
	ldrb r0, [r0]
	cmp r0, #0
	beq _08011924
	cmp r0, #1
	beq _0801192A
_08011924:
	movs r0, #4
	movs r2, #0x1f
	b _0801193E
_0801192A:
	adds r0, r4, #0
	adds r0, #0xa1
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801193A
	movs r0, #5
	movs r2, #0x21
	b _0801193E
_0801193A:
	movs r0, #5
	movs r2, #0x23
_0801193E:
	movs r1, #0x13
	bl FUN_0801A04C
	movs r0, #6
	movs r1, #2
	movs r2, #0
	bl FUN_0801A04C
	movs r0, #7
	movs r1, #2
	movs r2, #0
	bl FUN_0801A04C
	ldr r1, _080119DC @ => 0x030036C0
	movs r0, #0
	str r0, [r1, #0x14]
_0801195E:
	ldr r1, _080119DC @ => 0x030036C0
	adds r2, r1, #0
	adds r2, #0xd5
	movs r0, #0
	strb r0, [r2]
	movs r2, #2
	adds r6, r1, #0
	ldr r5, _080119E0 @ => 0x03004790
	adds r3, r5, #0
	movs r4, #1
_08011972:
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r1, [r0]
	ldr r0, [r1, #0xc]
	orrs r0, r4
	str r0, [r1, #0xc]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08011972
	movs r2, #4
	ldr r3, _080119E0 @ => 0x03004790
	movs r4, #2
	rsbs r4, r4, #0
_08011990:
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r1, [r0]
	ldr r0, [r1, #0xc]
	ands r0, r4
	str r0, [r1, #0xc]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #5
	bls _08011990
	adds r0, r6, #0
	adds r0, #0xd6
	ldrb r0, [r0]
	adds r3, r6, #0
	adds r3, #0xd5
	strb r0, [r3]
	ldrb r0, [r3]
	adds r0, #2
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
	ldrb r0, [r3]
	adds r0, #4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	ldr r0, [r2, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0xc]
	b _08011A94
	.align 2, 0
_080119DC: .4byte gUnk_030036C0
_080119E0: .4byte gUnk_03004790
_080119E4:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _08011A38
	adds r0, r4, #0
	adds r0, #0xd5
	ldrb r0, [r0]
	cmp r0, #0
	beq _080119FE
	cmp r0, #1
	beq _08011A04
	movs r0, #4
	movs r2, #0x1f
	b _08011A18
_080119FE:
	movs r0, #4
	movs r2, #0x20
	b _08011A18
_08011A04:
	adds r0, r4, #0
	adds r0, #0xa1
	ldrb r0, [r0]
	cmp r0, #1
	bne _08011A14
	movs r0, #5
	movs r2, #0x22
	b _08011A18
_08011A14:
	movs r0, #5
	movs r2, #0x24
_08011A18:
	movs r1, #0x13
	bl FUN_0801A04C
	movs r0, #6
	movs r1, #2
	movs r2, #1
	bl FUN_0801A04C
	movs r0, #7
	movs r1, #2
	movs r2, #0
	bl FUN_0801A04C
	ldr r1, _08011A54 @ => 0x030036C0
	movs r0, #0
	str r0, [r1, #0x14]
_08011A38:
	ldr r0, _08011A58 @ => 0x03004790
	ldr r0, [r0, #0x18]
	ldr r1, _08011A54 @ => 0x030036C0
	adds r1, #0xd8
	ldr r1, [r1]
	lsls r1, r1, #0x11
	movs r2, #0x9d
	lsls r2, r2, #0x10
	adds r1, r1, r2
	movs r2, #0xa8
	lsls r2, r2, #0xf
	bl FUN_08001728
	b _08011A94
	.align 2, 0
_08011A54: .4byte gUnk_030036C0
_08011A58: .4byte gUnk_03004790
_08011A5C:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _08011A7A
	movs r0, #6
	movs r1, #2
	movs r2, #0
	bl FUN_0801A04C
	movs r0, #7
	movs r1, #2
	movs r2, #1
	bl FUN_0801A04C
	movs r0, #0
	str r0, [r4, #0x14]
_08011A7A:
	ldr r0, _08011A9C @ => 0x03004790
	ldr r0, [r0, #0x1c]
	adds r1, r4, #0
	adds r1, #0xdc
	ldr r1, [r1]
	lsls r1, r1, #0x12
	movs r2, #0x9d
	lsls r2, r2, #0x10
	adds r1, r1, r2
	movs r2, #0x83
	lsls r2, r2, #0x10
	bl FUN_08001728
_08011A94:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08011A9C: .4byte gUnk_03004790

	thumb_func_start FUN_08011AA0
FUN_08011AA0: @ 0x08011AA0
	push {lr}
	ldr r1, _08011AC0 @ => 0x03004720
	movs r0, #5
	str r0, [r1, #0x18]
	ldr r0, _08011AC4 @ => 0x030036C0
	adds r0, #0xd7
	movs r1, #0
	strb r1, [r0]
	bl FUN_0801A15C
	bl FUN_0801985C
	bl FUN_080114D8
	pop {r0}
	bx r0
	.align 2, 0
_08011AC0: .4byte gUnk_03004720
_08011AC4: .4byte gUnk_030036C0

	thumb_func_start FUN_08011AC8
FUN_08011AC8: @ 0x08011AC8
	bx lr
	.align 2, 0

	thumb_func_start FUN_08011ACC
FUN_08011ACC: @ 0x08011ACC
	push {r4, lr}
	ldr r0, _08011AFC @ => 0x030036C0
	adds r0, #0xd4
	movs r1, #0
	strb r1, [r0]
	movs r2, #2
	ldr r4, _08011B00 @ => 0x03004790
	movs r3, #2
_08011ADC:
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	cmp r1, #0
	beq _08011AEC
	ldr r0, [r1, #0xc]
	orrs r0, r3
	str r0, [r1, #0xc]
_08011AEC:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #9
	bls _08011ADC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011AFC: .4byte gUnk_030036C0
_08011B00: .4byte gUnk_03004790

	thumb_func_start FUN_08011B04
FUN_08011B04: @ 0x08011B04
	push {lr}
	cmp r0, #0
	beq _08011B30
	ldr r3, _08011B2C @ => 0x03004790
	ldr r2, [r3, #0x1c]
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
	ldr r1, [r3, #0x20]
	ldr r0, [r1, #0xc]
	movs r2, #1
	orrs r0, r2
	str r0, [r1, #0xc]
	ldr r1, [r3, #0x24]
	ldr r0, [r1, #0xc]
	orrs r0, r2
	b _08011B4E
	.align 2, 0
_08011B2C: .4byte gUnk_03004790
_08011B30:
	ldr r3, _08011B54 @ => 0x03004790
	ldr r2, [r3, #0x1c]
	ldr r0, [r2, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0xc]
	ldr r1, [r3, #0x20]
	ldr r0, [r1, #0xc]
	movs r2, #2
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1, #0xc]
	ldr r1, [r3, #0x24]
	ldr r0, [r1, #0xc]
	ands r0, r2
_08011B4E:
	str r0, [r1, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_08011B54: .4byte gUnk_03004790

	thumb_func_start FUN_08011B58
FUN_08011B58: @ 0x08011B58
	push {r4, r5, lr}
	ldr r3, _08011BC0 @ => 0x030036C0
	adds r0, r3, #0
	adds r0, #0xe0
	movs r2, #0
	movs r1, #1
	strb r1, [r0]
	adds r0, #2
	strb r2, [r0]
	subs r0, #0x4e
	ldrb r1, [r0]
	cmp r2, r1
	bhs _08011B98
	adds r5, r3, #0
	adds r5, #0x4c
	movs r4, #2
	rsbs r4, r4, #0
	adds r3, r0, #0
_08011B7C:
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0]
	cmp r1, #0
	beq _08011B8C
	ldr r0, [r1, #0xc]
	ands r0, r4
	str r0, [r1, #0xc]
_08011B8C:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldrb r0, [r3]
	cmp r2, r0
	blo _08011B7C
_08011B98:
	movs r2, #2
	ldr r4, _08011BC4 @ => 0x03004790
	movs r3, #2
_08011B9E:
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	cmp r1, #0
	beq _08011BAE
	ldr r0, [r1, #0xc]
	orrs r0, r3
	str r0, [r1, #0xc]
_08011BAE:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #6
	bls _08011B9E
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011BC0: .4byte gUnk_030036C0
_08011BC4: .4byte gUnk_03004790

	thumb_func_start FUN_08011BC8
FUN_08011BC8: @ 0x08011BC8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r6, _08011CBC @ => 0x0805F854
	adds r1, r6, #0
	adds r1, #0xdc
	ldr r0, _08011CC0 @ => 0x030036C0
	adds r0, #0xe4
	ldr r0, [r0]
	lsls r0, r0, #5
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0xde
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	lsrs r7, r0, #0x10
	orrs r7, r1
	ldr r5, _08011CC4 @ => 0x0805F804
	adds r0, r6, #0
	adds r0, #0xd0
	ldr r0, [r0]
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0
	bl FUN_0802D6FC
	movs r0, #2
	movs r1, #0xb
	movs r2, #0
	movs r3, #1
	bl FUN_08019FEC
	adds r2, r5, #0
	adds r2, #0x10
	adds r0, r6, #0
	adds r0, #0xd4
	ldr r0, [r0]
	str r0, [sp]
	movs r0, #3
	movs r1, #0
	movs r3, #0
	bl FUN_0802D6FC
	movs r0, #3
	movs r1, #0xc
	movs r2, #0
	movs r3, #1
	bl FUN_08019FEC
	adds r2, r5, #0
	adds r2, #0x20
	adds r0, r6, #0
	adds r0, #0xd8
	ldr r0, [r0]
	str r0, [sp]
	movs r0, #4
	movs r1, #0
	movs r3, #0
	bl FUN_0802D6FC
	movs r0, #4
	movs r1, #0xd
	movs r2, #0
	movs r3, #1
	bl FUN_08019FEC
	adds r2, r5, #0
	adds r2, #0x30
	ldr r4, _08011CC8 @ => 0x09FB6248
	adds r0, r4, #0
	adds r0, #0x94
	ldr r3, [r0]
	str r7, [sp]
	movs r0, #5
	movs r1, #0
	bl FUN_0802D6FC
	movs r0, #5
	movs r1, #0xe
	movs r2, #0xfe
	movs r3, #1
	bl FUN_08019FEC
	adds r2, r5, #0
	adds r2, #0x40
	adds r4, #0xa0
	ldr r3, [r4]
	adds r0, r6, #0
	adds r0, #0xe0
	ldr r0, [r0]
	str r0, [sp]
	movs r0, #6
	movs r1, #0
	bl FUN_0802D6FC
	movs r0, #6
	movs r1, #6
	movs r2, #0xfe
	movs r3, #1
	bl FUN_08019FEC
	movs r4, #2
_08011C9A:
	ldr r1, _08011CCC @ => 0x03004790
	lsls r2, r4, #2
	adds r0, r2, r1
	ldr r0, [r0]
	adds r0, #0xa9
	ldrb r0, [r0]
	lsrs r0, r0, #4
	subs r0, #6
	adds r3, r1, #0
	cmp r0, #8
	bhi _08011D42
	lsls r0, r0, #2
	ldr r1, _08011CD0 @ =_08011CD4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08011CBC: .4byte ROMREF_0805F854
_08011CC0: .4byte gUnk_030036C0
_08011CC4: .4byte ROMREF_0805F804
_08011CC8: .4byte ROMREF_09FB6248
_08011CCC: .4byte gUnk_03004790
_08011CD0: .4byte _08011CD4
_08011CD4: @ jump table
	.4byte _08011D2C @ case 0
	.4byte _08011D42 @ case 1
	.4byte _08011D42 @ case 2
	.4byte _08011D42 @ case 3
	.4byte _08011D42 @ case 4
	.4byte _08011CF8 @ case 5
	.4byte _08011D00 @ case 6
	.4byte _08011D08 @ case 7
	.4byte _08011D10 @ case 8
_08011CF8:
	ldr r0, _08011CFC @ => 0x0805F804
	b _08011D12
	.align 2, 0
_08011CFC: .4byte ROMREF_0805F804
_08011D00:
	ldr r0, _08011D04 @ => 0x0805F814
	b _08011D12
	.align 2, 0
_08011D04: .4byte ROMREF_0805F814
_08011D08:
	ldr r0, _08011D0C @ => 0x0805F824
	b _08011D12
	.align 2, 0
_08011D0C: .4byte ROMREF_0805F824
_08011D10:
	ldr r0, _08011D28 @ => 0x0805F834
_08011D12:
	ldr r0, [r0, #8]
	adds r1, r2, r3
	ldr r1, [r1]
	adds r1, #0xa9
	ldrb r1, [r1]
	lsrs r1, r1, #4
	lsls r1, r1, #4
	movs r2, #0x10
	bl FUN_0801579C
	b _08011D42
	.align 2, 0
_08011D28: .4byte ROMREF_0805F834
_08011D2C:
	ldr r0, _08011D54 @ => 0x0805F844
	ldr r0, [r0, #8]
	adds r1, r2, r3
	ldr r1, [r1]
	adds r1, #0xa9
	ldrb r1, [r1]
	lsrs r1, r1, #4
	lsls r1, r1, #4
	movs r2, #0x10
	bl FUN_0801579C
_08011D42:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #6
	bls _08011C9A
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011D54: .4byte ROMREF_0805F844

	thumb_func_start FUN_08011D58
FUN_08011D58: @ 0x08011D58
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r3, _08011D90 @ => 0x030036C0
	adds r5, r3, #0
	adds r5, #0xe0
	ldrb r4, [r5]
	cmp r4, #0
	beq _08011DCC
	cmp r4, #1
	beq _08011D6E
	b _08011EF6
_08011D6E:
	ldr r2, _08011D94 @ => 0x030042B0
	ldrh r1, [r2, #0xc]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08011D98
	adds r1, r3, #0
	adds r1, #0xe2
	ldrb r0, [r1]
	cmp r0, #0
	beq _08011D86
	b _08011EF6
_08011D86:
	strb r0, [r5]
	movs r0, #1
	strb r0, [r1]
	str r4, [r3, #0x14]
	b _08011EF6
	.align 2, 0
_08011D90: .4byte gUnk_030036C0
_08011D94: .4byte gUnk_030042B0
_08011D98:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08011DAE
	movs r0, #1
	movs r1, #5
	movs r2, #4
	movs r3, #2
	bl FUN_0801A080
	b _08011EF6
_08011DAE:
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _08011DB8
	b _08011F0A
_08011DB8:
	adds r0, r3, #0
	adds r0, #0xe4
	ldrh r1, [r2, #6]
	str r1, [sp]
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl FUN_08024B30
	b _08011EF6
_08011DCC:
	ldr r0, _08011E94 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r6, #1
	movs r2, #1
	ands r2, r1
	cmp r2, #0
	beq _08011EBA
	adds r0, r3, #0
	adds r0, #0xe1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08011EA8
	adds r0, r3, #0
	adds r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _08011EA0
	ldr r2, _08011E98 @ => 0x03003DF0
	adds r0, r3, #0
	adds r0, #0x40
	ldrb r0, [r0]
	strb r0, [r2, #0x1c]
	adds r0, r3, #0
	adds r0, #0x41
	ldrb r0, [r0]
	strb r0, [r2, #0x1d]
	adds r0, r3, #0
	adds r0, #0x42
	ldrb r0, [r0]
	strb r0, [r2, #0x1e]
	adds r0, r3, #0
	adds r0, #0x43
	ldrb r0, [r0]
	strb r0, [r2, #0x1f]
	adds r0, r3, #0
	adds r0, #0x44
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x45
	ldrb r0, [r0]
	adds r1, r2, #0
	adds r1, #0x21
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x46
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x47
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x48
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x24
	strb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x49
	ldrb r0, [r0]
	adds r1, r2, #0
	adds r1, #0x25
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x4a
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0xe4
	ldr r1, [r0]
	adds r0, r2, #0
	adds r0, #0x54
	strb r1, [r0]
	ldr r0, _08011E9C @ => 0x03004720
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _08011E88
	movs r1, #0
	adds r3, r2, #0
	adds r3, #0x28
	movs r2, #0
_08011E7A:
	adds r0, r1, r3
	strb r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #5
	bls _08011E7A
_08011E88:
	bl FUN_08011B58
	ldr r1, _08011E9C @ => 0x03004720
	movs r0, #4
	str r0, [r1, #4]
	b _08011EF6
	.align 2, 0
_08011E94: .4byte gUnk_030042B0
_08011E98: .4byte gUnk_03003DF0
_08011E9C: .4byte gUnk_03004720
_08011EA0:
	movs r0, #0
	bl FUN_0801A0D4
	b _08011EF6
_08011EA8:
	adds r1, r3, #0
	adds r1, #0xe2
	ldrb r0, [r1]
	cmp r0, #1
	bne _08011EF6
	strb r6, [r5]
	strb r4, [r1]
	str r0, [r3, #0x14]
	b _08011EF6
_08011EBA:
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08011ED8
	adds r1, r3, #0
	adds r1, #0xe2
	ldrb r0, [r1]
	cmp r0, #1
	bne _08011EF6
	strb r6, [r5]
	strb r2, [r1]
	str r0, [r3, #0x14]
	b _08011EF6
_08011ED8:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08011EE8
	adds r0, r3, #0
	adds r0, #0xe1
	strb r4, [r0]
	b _08011EF6
_08011EE8:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08011F0A
	adds r0, r3, #0
	adds r0, #0xe1
	strb r6, [r0]
_08011EF6:
	ldr r0, _08011F14 @ => 0x03004720
	ldr r0, [r0, #4]
	cmp r0, #4
	beq _08011F0A
	ldr r0, _08011F18 @ => 0x030036C0
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _08011F0A
	bl FUN_08011F1C
_08011F0A:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08011F14: .4byte gUnk_03004720
_08011F18: .4byte gUnk_030036C0

	thumb_func_start FUN_08011F1C
FUN_08011F1C: @ 0x08011F1C
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r6, _08011F90 @ => 0x030036C0
	adds r0, r6, #0
	adds r0, #0xe0
	ldrb r0, [r0]
	cmp r0, #1
	bne _08011FD8
	ldr r5, _08011F94 @ => 0x03004790
	ldr r0, [r5, #0x14]
	ldr r4, _08011F98 @ => 0x09FB6248
	adds r1, r4, #0
	adds r1, #0x94
	ldr r1, [r1]
	movs r2, #0
	bl FUN_080018F4
	ldr r0, [r5, #0x18]
	adds r4, #0xa0
	ldr r1, [r4]
	movs r2, #0
	bl FUN_080018F4
	ldr r0, [r5, #0x14]
	ldr r3, _08011F9C @ => 0x0805F854
	adds r1, r3, #0
	adds r1, #0xdc
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r4, r6, #0
	adds r4, #0xe4
	ldr r2, [r4]
	lsls r2, r2, #5
	adds r1, r1, r2
	lsls r1, r1, #0x10
	adds r3, #0xde
	movs r5, #0
	ldrsh r2, [r3, r5]
	lsls r2, r2, #0x10
	bl FUN_08001728
	movs r0, #6
	str r0, [sp]
	movs r0, #0
	movs r1, #0x12
	movs r2, #7
	movs r3, #0xb
	bl FUN_0800C790
	ldr r0, [r4]
	cmp r0, #1
	beq _08011FA4
	cmp r0, #1
	blo _08011F8C
	cmp r0, #2
	beq _08011FAC
_08011F8C:
	ldr r0, _08011FA0 @ => 0x000007BF
	b _08011FB0
	.align 2, 0
_08011F90: .4byte gUnk_030036C0
_08011F94: .4byte gUnk_03004790
_08011F98: .4byte ROMREF_09FB6248
_08011F9C: .4byte ROMREF_0805F854
_08011FA0: .4byte 0x000007BF
_08011FA4:
	ldr r0, _08011FA8 @ => 0x000007BE
	b _08011FB0
	.align 2, 0
_08011FA8: .4byte 0x000007BE
_08011FAC:
	movs r0, #0xf8
	lsls r0, r0, #3
_08011FB0:
	bl FUN_08050820
	adds r3, r0, #0
	ldr r0, _08012014 @ => 0x030036C0
	ldrh r0, [r0, #0xc]
	adds r0, #0x1a
	ldr r2, _08012018 @ => 0x0805F630
	adds r1, r2, #0
	adds r1, #0x5c
	movs r4, #0
	ldrsh r1, [r1, r4]
	adds r2, #0x5e
	movs r5, #0
	ldrsh r2, [r2, r5]
	str r3, [sp]
	movs r3, #1
	str r3, [sp, #4]
	movs r3, #0x48
	bl FUN_08020098
_08011FD8:
	ldr r6, _08012014 @ => 0x030036C0
	adds r0, r6, #0
	adds r0, #0xe0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08012054
	ldr r5, _0801201C @ => 0x03004790
	ldr r0, [r5, #0x14]
	ldr r4, _08012020 @ => 0x09FB6248
	adds r1, r4, #0
	adds r1, #0x98
	ldr r1, [r1]
	movs r2, #0
	bl FUN_080018F4
	ldr r0, [r5, #0x18]
	adds r4, #0x9c
	ldr r1, [r4]
	movs r2, #0
	bl FUN_080018F4
	adds r0, r6, #0
	adds r0, #0xe1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08012024
	cmp r0, #1
	beq _08012040
	b _08012054
	.align 2, 0
_08012014: .4byte gUnk_030036C0
_08012018: .4byte ROMREF_0805F630
_0801201C: .4byte gUnk_03004790
_08012020: .4byte ROMREF_09FB6248
_08012024:
	ldr r0, [r5, #0x18]
	ldr r2, _0801203C @ => 0x0805AD94
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r1, r1, #0x10
	movs r4, #2
	ldrsh r2, [r2, r4]
	lsls r2, r2, #0x10
	bl FUN_08001728
	b _08012054
	.align 2, 0
_0801203C: .4byte ROMREF_0805AD94
_08012040:
	ldr r0, [r5, #0x18]
	ldr r2, _08012064 @ => 0x0805AD94
	movs r5, #4
	ldrsh r1, [r2, r5]
	lsls r1, r1, #0x10
	movs r3, #6
	ldrsh r2, [r2, r3]
	lsls r2, r2, #0x10
	bl FUN_08001728
_08012054:
	movs r0, #0xb2
	bl FUN_0804DE0C
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08012064: .4byte ROMREF_0805AD94

	thumb_func_start FUN_08012068
FUN_08012068: @ 0x08012068
	push {lr}
	bl FUN_0801A15C
	bl FUN_0801985C
	bl FUN_08011BC8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0801207C
FUN_0801207C: @ 0x0801207C
	bx lr
	.align 2, 0

	thumb_func_start FUN_08012080
FUN_08012080: @ 0x08012080
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _080121A4 @ => 0x030036C0
	adds r5, r0, #0
	adds r5, #0xa1
	ldrb r0, [r5]
	movs r3, #7
	cmp r0, #1
	bne _08012094
	movs r3, #5
_08012094:
	ldr r2, _080121A8 @ => 0x0805F744
	ldr r1, _080121AC @ => 0x09FB6248
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r3, [r0]
	ldr r4, _080121B0 @ => 0x0805F854
	ldr r0, [r4, #0x20]
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	bl FUN_0802D6FC
	movs r0, #2
	movs r1, #6
	movs r2, #0xfe
	movs r3, #1
	bl FUN_08019FEC
	ldr r0, _080121B4 @ => 0x03004790
	ldr r0, [r0, #8]
	ldr r1, _080121B8 @ => 0x0805AD9C
	ldrb r2, [r5]
	lsls r2, r2, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r1, r1, #0x10
	movs r3, #2
	ldrsh r2, [r2, r3]
	lsls r2, r2, #0x10
	bl FUN_08001728
	movs r5, #0
	adds r6, r4, #0
_080120D8:
	adds r4, r5, #3
	adds r0, r5, #0
	adds r0, #9
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	ldr r2, _080121BC @ => 0x0805F754
	movs r3, #0
	bl FUN_0802D6FC
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl FUN_08019FEC
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _080120D8
	movs r5, #0
	ldr r6, _080121B0 @ => 0x0805F854
_08012110:
	adds r4, r5, #6
	adds r0, r5, #0
	adds r0, #0xc
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	ldr r2, _080121C0 @ => 0x0805F764
	movs r3, #0
	bl FUN_0802D6FC
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	movs r1, #8
	adds r2, r5, #0
	movs r3, #1
	bl FUN_08019FEC
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08012110
	ldr r2, _080121C4 @ => 0x0805F774
	ldr r0, _080121AC @ => 0x09FB6248
	ldr r3, [r0, #0x28]
	ldr r0, _080121B0 @ => 0x0805F854
	ldr r0, [r0, #0x3c]
	str r0, [sp]
	movs r0, #9
	movs r1, #0
	bl FUN_0802D6FC
	movs r0, #9
	movs r1, #6
	movs r2, #0xfe
	movs r3, #1
	bl FUN_08019FEC
	ldr r0, _080121B4 @ => 0x03004790
	ldr r0, [r0, #0x24]
	ldr r3, _080121C8 @ => 0x0805ADA4
	ldr r1, _080121A4 @ => 0x030036C0
	adds r1, #0xa4
	ldr r2, [r1]
	lsls r2, r2, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r1, r1, #0x10
	movs r3, #2
	ldrsh r2, [r2, r3]
	lsls r2, r2, #0x10
	bl FUN_08001728
	movs r5, #2
_08012186:
	ldr r1, _080121B4 @ => 0x03004790
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0xa9
	ldrb r0, [r0]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x1c
	cmp r0, #7
	beq _080121DC
	cmp r0, #7
	bgt _080121CC
	cmp r0, #6
	beq _080121D2
	b _080121FE
	.align 2, 0
_080121A4: .4byte gUnk_030036C0
_080121A8: .4byte ROMREF_0805F744
_080121AC: .4byte ROMREF_09FB6248
_080121B0: .4byte ROMREF_0805F854
_080121B4: .4byte gUnk_03004790
_080121B8: .4byte ROMREF_0805AD9C
_080121BC: .4byte ROMREF_0805F754
_080121C0: .4byte ROMREF_0805F764
_080121C4: .4byte ROMREF_0805F774
_080121C8: .4byte ROMREF_0805ADA4
_080121CC:
	cmp r0, #8
	beq _080121F0
	b _080121FE
_080121D2:
	ldr r0, _080121D8 @ => 0x0805F744
	b _080121DE
	.align 2, 0
_080121D8: .4byte ROMREF_0805F744
_080121DC:
	ldr r0, _080121EC @ => 0x0805F754
_080121DE:
	ldr r0, [r0, #8]
	lsrs r1, r1, #0x1c
	lsls r1, r1, #4
	movs r2, #0x10
	bl FUN_0801579C
	b _080121FE
	.align 2, 0
_080121EC: .4byte ROMREF_0805F754
_080121F0:
	ldr r0, _08012210 @ => 0x0805F764
	ldr r0, [r0, #8]
	lsrs r1, r1, #0x1c
	lsls r1, r1, #4
	movs r2, #0x10
	bl FUN_0801579C
_080121FE:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #9
	bls _08012186
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08012210: .4byte ROMREF_0805F764

	thumb_func_start FUN_08012214
FUN_08012214: @ 0x08012214
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r3, _0801222C @ => 0x030036C0
	adds r6, r3, #0
	adds r6, #0xa0
	ldrb r2, [r6]
	cmp r2, #0
	beq _08012230
	cmp r2, #1
	beq _08012288
	b _08012300
	.align 2, 0
_0801222C: .4byte gUnk_030036C0
_08012230:
	ldr r0, _08012254 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r4, #1
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08012258
	adds r1, r3, #0
	adds r1, #0xa8
	ldrb r0, [r1]
	cmp r0, #0
	bne _08012300
	strb r4, [r6]
	strb r4, [r1]
	str r5, [r3, #0x14]
	b _08012300
	.align 2, 0
_08012254: .4byte gUnk_030042B0
_08012258:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08012268
	movs r0, #1
	movs r1, #1
	movs r2, #0
	b _08012298
_08012268:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08012278
	adds r0, r3, #0
	adds r0, #0xa1
	strb r4, [r0]
	b _08012300
_08012278:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08012310
	adds r0, r3, #0
	adds r0, #0xa1
	strb r2, [r0]
	b _08012300
_08012288:
	ldr r5, _080122A0 @ => 0x030042B0
	ldrh r1, [r5, #0xc]
	ands r2, r1
	cmp r2, #0
	beq _080122A4
	movs r0, #1
	movs r1, #1
	movs r2, #2
_08012298:
	movs r3, #2
	bl FUN_0801A080
	b _08012300
	.align 2, 0
_080122A0: .4byte gUnk_030042B0
_080122A4:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080122BE
	adds r1, r3, #0
	adds r1, #0xa8
	ldrb r0, [r1]
	cmp r0, #1
	bne _08012300
	strb r2, [r6]
	strb r2, [r1]
	str r0, [r3, #0x14]
	b _08012300
_080122BE:
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08012310
	adds r0, r3, #0
	adds r0, #0xc0
	ldr r0, [r0]
	subs r0, #2
	cmp r0, #1
	bhi _080122EE
	adds r4, r3, #0
	adds r4, #0xa4
_080122D6:
	ldrh r0, [r5, #6]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl FUN_08024B30
	ldr r0, [r4]
	cmp r0, #3
	beq _080122D6
	b _08012300
_080122EE:
	adds r0, r3, #0
	adds r0, #0xa4
	ldrh r1, [r5, #6]
	str r1, [sp]
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl FUN_08024B30
_08012300:
	ldr r0, _08012318 @ => 0x030036C0
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _08012310
	bl FUN_0801231C
	bl FUN_08019BF4
_08012310:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08012318: .4byte gUnk_030036C0

	thumb_func_start FUN_0801231C
FUN_0801231C: @ 0x0801231C
	push {r4, r5, lr}
	ldr r5, _08012330 @ => 0x030036C0
	adds r0, r5, #0
	adds r0, #0xa8
	ldrb r4, [r0]
	cmp r4, #0
	beq _08012334
	cmp r4, #1
	beq _08012384
	b _080123CE
	.align 2, 0
_08012330: .4byte gUnk_030036C0
_08012334:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _08012346
	movs r0, #9
	movs r1, #0xb
	movs r2, #0xa
	bl FUN_0801A04C
	str r4, [r5, #0x14]
_08012346:
	adds r4, r5, #0
	adds r4, #0xa1
	ldrb r0, [r4]
	movs r2, #7
	cmp r0, #1
	bne _08012354
	movs r2, #5
_08012354:
	movs r0, #2
	movs r1, #8
	bl FUN_0801A04C
	ldr r0, _0801237C @ => 0x03004790
	ldr r0, [r0, #8]
	ldr r1, _08012380 @ => 0x0805AD9C
	ldrb r2, [r4]
	lsls r2, r2, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r1, r1, #0x10
	movs r3, #2
	ldrsh r2, [r2, r3]
	lsls r2, r2, #0x10
	bl FUN_08001728
	b _080123CE
	.align 2, 0
_0801237C: .4byte gUnk_03004790
_08012380: .4byte ROMREF_0805AD9C
_08012384:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _080123AE
	adds r0, r5, #0
	adds r0, #0xa1
	ldrb r0, [r0]
	movs r2, #8
	cmp r0, #1
	bne _08012398
	movs r2, #6
_08012398:
	movs r0, #2
	movs r1, #8
	bl FUN_0801A04C
	movs r0, #9
	movs r1, #0xb
	movs r2, #9
	bl FUN_0801A04C
	movs r0, #0
	str r0, [r5, #0x14]
_080123AE:
	ldr r0, _080123DC @ => 0x03004790
	ldr r0, [r0, #0x24]
	ldr r3, _080123E0 @ => 0x0805ADA4
	ldr r1, _080123E4 @ => 0x030036C0
	adds r1, #0xa4
	ldr r2, [r1]
	lsls r2, r2, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r1, r1, #0x10
	movs r3, #2
	ldrsh r2, [r2, r3]
	lsls r2, r2, #0x10
	bl FUN_08001728
_080123CE:
	movs r0, #0xb2
	bl FUN_0804DE0C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080123DC: .4byte gUnk_03004790
_080123E0: .4byte ROMREF_0805ADA4
_080123E4: .4byte gUnk_030036C0

	thumb_func_start FUN_080123E8
FUN_080123E8: @ 0x080123E8
	push {lr}
	bl FUN_0801A15C
	bl FUN_0801985C
	ldr r0, _08012408 @ => 0x030036B0
	ldr r0, [r0]
	cmp r0, #0
	beq _08012400
	movs r1, #2
	bl FUN_08001FB0
_08012400:
	bl FUN_08012080
	pop {r0}
	bx r0
	.align 2, 0
_08012408: .4byte gUnk_030036B0

	thumb_func_start FUN_0801240C
FUN_0801240C: @ 0x0801240C
	bx lr
	.align 2, 0

	thumb_func_start FUN_08012410
FUN_08012410: @ 0x08012410
	push {r4, lr}
	ldr r0, _08012448 @ => 0x030036C0
	adds r1, r0, #0
	adds r1, #0xa0
	movs r2, #0
	strb r2, [r1]
	adds r0, #0xa8
	strb r2, [r0]
	movs r2, #2
	ldr r4, _0801244C @ => 0x03004790
	movs r3, #2
_08012426:
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	cmp r1, #0
	beq _08012436
	ldr r0, [r1, #0xc]
	orrs r0, r3
	str r0, [r1, #0xc]
_08012436:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #9
	bls _08012426
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08012448: .4byte gUnk_030036C0
_0801244C: .4byte gUnk_03004790

	thumb_func_start FUN_08012450
FUN_08012450: @ 0x08012450
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0801259C @ => 0x030036C0
	adds r0, #0xa1
	ldrb r0, [r0]
	movs r1, #0xc
	cmp r0, #1
	bne _0801246A
	movs r1, #0xe
_0801246A:
	movs r2, #0xd
	cmp r0, #1
	bne _08012472
	movs r2, #0xf
_08012472:
	movs r5, #0
	lsls r1, r1, #4
	mov sl, r1
	ldr r0, _080125A0 @ => 0x0805F6C4
	mov r8, r0
	ldr r6, _080125A4 @ => 0x0805F854
	lsls r2, r2, #4
	mov sb, r2
_08012482:
	adds r4, r5, #2
	adds r0, r5, #0
	adds r0, #0x10
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	mov r2, sl
	add r2, r8
	movs r3, #0
	bl FUN_0802D6FC
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	movs r1, #5
	adds r2, r5, #0
	movs r3, #1
	bl FUN_08019FEC
	adds r4, r5, #6
	ldr r7, _080125A8 @ => 0x09FB6248
	lsls r0, r5, #3
	adds r0, #0x2c
	adds r0, r0, r7
	ldr r3, [r0]
	adds r0, r5, #0
	adds r0, #0x14
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	mov r2, sb
	add r2, r8
	bl FUN_0802D6FC
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0xfe
	movs r3, #0
	bl FUN_08019FEC
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08012482
	ldr r5, _080125AC @ => 0x0805F6E4
	ldr r3, [r7]
	ldr r6, _080125A4 @ => 0x0805F854
	ldr r0, [r6, #0x60]
	str r0, [sp]
	movs r0, #0xa
	movs r1, #0
	adds r2, r5, #0
	bl FUN_0802D6FC
	movs r0, #0xa
	movs r1, #4
	movs r2, #0xfe
	movs r3, #1
	bl FUN_08019FEC
	ldr r1, _080125B0 @ => 0x03004790
	mov r8, r1
	ldr r0, [r1, #0x28]
	ldr r4, _0801259C @ => 0x030036C0
	adds r1, r4, #0
	adds r1, #0xb0
	ldr r1, [r1]
	lsls r1, r1, #0x12
	movs r2, #0x9d
	lsls r2, r2, #0x10
	adds r1, r1, r2
	movs r2, #0xf2
	lsls r2, r2, #0xf
	bl FUN_08001728
	ldr r3, [r7]
	ldr r0, [r6, #0x64]
	str r0, [sp]
	movs r0, #0xb
	movs r1, #0
	adds r2, r5, #0
	bl FUN_0802D6FC
	movs r0, #0xb
	movs r1, #4
	movs r2, #0xfe
	movs r3, #0
	bl FUN_08019FEC
	mov r1, r8
	ldr r0, [r1, #0x2c]
	adds r4, #0xb4
	ldr r1, [r4]
	lsls r1, r1, #0x12
	movs r2, #0x9d
	lsls r2, r2, #0x10
	adds r1, r1, r2
	movs r2, #0x8d
	lsls r2, r2, #0x10
	bl FUN_08001728
	adds r5, #0x10
	ldr r0, [r6, #0x68]
	str r0, [sp]
	movs r0, #0xc
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0
	bl FUN_0802D6FC
	movs r0, #0xc
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl FUN_08019FEC
	movs r5, #2
_0801257E:
	ldr r1, _080125B0 @ => 0x03004790
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0xa9
	ldrb r0, [r0]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x1c
	cmp r0, #5
	beq _080125BA
	cmp r0, #5
	bgt _080125B4
	cmp r0, #4
	beq _080125D8
	b _080125E6
	.align 2, 0
_0801259C: .4byte gUnk_030036C0
_080125A0: .4byte ROMREF_0805F6C4
_080125A4: .4byte ROMREF_0805F854
_080125A8: .4byte ROMREF_09FB6248
_080125AC: .4byte ROMREF_0805F6E4
_080125B0: .4byte gUnk_03004790
_080125B4:
	cmp r0, #6
	beq _080125C4
	b _080125E6
_080125BA:
	ldr r0, _080125C0 @ => 0x0805F7A4
	b _080125C6
	.align 2, 0
_080125C0: .4byte ROMREF_0805F7A4
_080125C4:
	ldr r0, _080125D4 @ => 0x0805F7B4
_080125C6:
	ldr r0, [r0, #8]
	lsrs r1, r1, #0x1c
	lsls r1, r1, #4
	movs r2, #0x10
	bl FUN_0801579C
	b _080125E6
	.align 2, 0
_080125D4: .4byte ROMREF_0805F7B4
_080125D8:
	ldr r0, _08012604 @ => 0x0805F6E4
	ldr r0, [r0, #8]
	lsrs r1, r1, #0x1c
	lsls r1, r1, #4
	movs r2, #0x10
	bl FUN_0801579C
_080125E6:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xc
	bls _0801257E
	bl FUN_080127F4
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012604: .4byte ROMREF_0805F6E4

	thumb_func_start FUN_08012608
FUN_08012608: @ 0x08012608
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	movs r0, #0
	mov r8, r0
	ldr r3, _0801262C @ => 0x030036C0
	adds r7, r3, #0
	adds r7, #0xac
	ldrb r1, [r7]
	cmp r1, #1
	beq _080126D2
	cmp r1, #1
	bgt _08012630
	cmp r1, #0
	beq _08012638
	b _080127C4
	.align 2, 0
_0801262C: .4byte gUnk_030036C0
_08012630:
	cmp r1, #2
	bne _08012636
	b _08012746
_08012636:
	b _080127C4
_08012638:
	ldr r0, _08012658 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r4, #1
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0801265C
	strb r4, [r7]
	adds r1, r3, #0
	adds r1, #0xaf
	movs r0, #2
	strb r0, [r1]
	str r2, [r3, #0x14]
	b _080127CA
	.align 2, 0
_08012658: .4byte gUnk_030042B0
_0801265C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801266C
	movs r0, #1
	movs r1, #2
	movs r2, #1
	b _08012766
_0801266C:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08012686
	adds r1, r3, #0
	adds r1, #0xaf
	ldrb r0, [r1]
	cmp r0, #1
	beq _08012680
	b _080127C4
_08012680:
	mov r0, r8
	strb r0, [r1]
	b _080127CA
_08012686:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801269E
	adds r1, r3, #0
	adds r1, #0xaf
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801269A
	b _080127C4
_0801269A:
	strb r4, [r1]
	b _080127CA
_0801269E:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080126B8
	adds r1, r3, #0
	adds r1, #0xae
	ldrb r0, [r1]
	cmp r0, #0
	bne _080126B2
	b _080127C4
_080126B2:
	subs r0, #1
	strb r0, [r1]
	b _080127CA
_080126B8:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080126C2
	b _080127E0
_080126C2:
	adds r1, r3, #0
	adds r1, #0xae
	ldrb r0, [r1]
	cmp r0, #0
	bne _080127C4
	adds r0, #1
	strb r0, [r1]
	b _080127CA
_080126D2:
	ldr r5, _08012704 @ => 0x03004720
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _080126DE
	subs r0, #1
	str r0, [r5, #0x18]
_080126DE:
	ldr r4, _08012708 @ => 0x030042B0
	ldrh r2, [r4, #0xc]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0801270C
	adds r0, r3, #0
	adds r0, #0xb8
	ldr r0, [r0]
	cmp r0, #0
	beq _08012760
	movs r0, #2
	strb r0, [r7]
	adds r2, r3, #0
	adds r2, #0xaf
	movs r0, #3
	strb r0, [r2]
	str r1, [r3, #0x14]
	b _080127CA
	.align 2, 0
_08012704: .4byte gUnk_03004720
_08012708: .4byte gUnk_030042B0
_0801270C:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08012730
	mov r0, r8
	strb r0, [r7]
	movs r2, #0
	adds r0, r3, #0
	adds r0, #0xad
	ldrb r0, [r0]
	cmp r0, #1
	bls _08012726
	movs r2, #1
_08012726:
	adds r0, r3, #0
	adds r0, #0xaf
	strb r2, [r0]
	str r1, [r3, #0x14]
	b _080127CA
_08012730:
	ldrh r1, [r4, #8]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _080127E0
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bne _080127C4
	adds r0, r3, #0
	adds r0, #0xb0
	b _080127A2
_08012746:
	ldr r5, _08012770 @ => 0x03004720
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _08012752
	subs r0, #1
	str r0, [r5, #0x18]
_08012752:
	ldr r4, _08012774 @ => 0x030042B0
	ldrh r2, [r4, #0xc]
	movs r6, #1
	adds r0, r6, #0
	ands r0, r2
	cmp r0, #0
	beq _08012778
_08012760:
	movs r0, #1
	movs r1, #2
	movs r2, #3
_08012766:
	movs r3, #2
	bl FUN_0801A080
	b _080127C4
	.align 2, 0
_08012770: .4byte gUnk_03004720
_08012774: .4byte gUnk_030042B0
_08012778:
	ands r1, r2
	cmp r1, #0
	beq _0801278E
	movs r0, #1
	strb r0, [r7]
	adds r1, r3, #0
	adds r1, #0xaf
	movs r0, #2
	strb r0, [r1]
	str r6, [r3, #0x14]
	b _080127CA
_0801278E:
	ldrh r1, [r4, #8]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _080127E0
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bne _080127C4
	adds r0, r3, #0
	adds r0, #0xb4
_080127A2:
	ldr r2, _080127EC @ => 0x0805ADBC
	adds r1, r3, #0
	adds r1, #0xaf
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldrh r1, [r4, #6]
	str r1, [sp]
	movs r1, #0
	movs r3, #0
	bl FUN_08024B84
	movs r0, #1
	mov r8, r0
	movs r0, #5
	str r0, [r5, #0x18]
_080127C4:
	mov r0, r8
	cmp r0, #0
	beq _080127D0
_080127CA:
	movs r0, #0xb2
	bl FUN_0804DE0C
_080127D0:
	ldr r0, _080127F0 @ => 0x030036C0
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _080127E0
	bl FUN_080127F4
	bl FUN_08019BF4
_080127E0:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080127EC: .4byte ROMREF_0805ADBC
_080127F0: .4byte gUnk_030036C0

	thumb_func_start FUN_080127F4
FUN_080127F4: @ 0x080127F4
	push {r4, r5, lr}
	ldr r4, _08012810 @ => 0x030036C0
	adds r0, r4, #0
	adds r0, #0xac
	ldrb r0, [r0]
	mov ip, r4
	cmp r0, #1
	bne _08012806
	b _08012962
_08012806:
	cmp r0, #1
	bgt _08012814
	cmp r0, #0
	beq _0801281C
	b _08012A5C
	.align 2, 0
_08012810: .4byte gUnk_030036C0
_08012814:
	cmp r0, #2
	bne _0801281A
	b _08012A24
_0801281A:
	b _08012A5C
_0801281C:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0801287E
	adds r0, r4, #0
	adds r0, #0xad
	ldrb r0, [r0]
	cmp r0, #1
	beq _0801283A
	cmp r0, #1
	ble _0801284C
	cmp r0, #2
	beq _08012840
	cmp r0, #3
	beq _08012846
	b _0801284C
_0801283A:
	movs r3, #7
	movs r2, #0xd
	b _08012850
_08012840:
	movs r3, #8
	movs r2, #0xf
	b _08012850
_08012846:
	movs r3, #9
	movs r2, #0x11
	b _08012850
_0801284C:
	movs r3, #6
	movs r2, #0xb
_08012850:
	ldr r4, _08012910 @ => 0x030036C0
	adds r0, r4, #0
	adds r0, #0xa1
	ldrb r0, [r0]
	movs r1, #0xd
	cmp r0, #1
	bne _08012860
	movs r1, #0xf
_08012860:
	adds r0, r3, #0
	bl FUN_0801A04C
	movs r0, #0xa
	movs r1, #2
	movs r2, #0
	bl FUN_0801A04C
	movs r0, #0xb
	movs r1, #2
	movs r2, #0
	bl FUN_0801A04C
	movs r0, #0
	str r0, [r4, #0x14]
_0801287E:
	ldr r1, _08012910 @ => 0x030036C0
	adds r2, r1, #0
	adds r2, #0xad
	movs r0, #0
	strb r0, [r2]
	movs r2, #2
	mov ip, r1
	ldr r4, _08012914 @ => 0x03004790
	adds r5, r4, #0
	movs r3, #1
_08012892:
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldr r0, [r1, #0xc]
	orrs r0, r3
	str r0, [r1, #0xc]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #5
	bls _08012892
	movs r2, #6
	ldr r5, _08012914 @ => 0x03004790
	movs r3, #2
	rsbs r3, r3, #0
_080128B0:
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldr r0, [r1, #0xc]
	ands r0, r3
	str r0, [r1, #0xc]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #9
	bls _080128B0
	mov r2, ip
	adds r2, #0xad
	ldrb r1, [r2]
	mov r0, ip
	adds r0, #0xae
	ldrb r0, [r0]
	cmp r0, #0
	beq _080128D8
	adds r1, #1
_080128D8:
	strb r1, [r2]
	mov r0, ip
	adds r0, #0xaf
	ldrb r0, [r0]
	cmp r0, #0
	beq _080128E6
	adds r1, #2
_080128E6:
	strb r1, [r2]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bne _08012918
	ldr r1, [r4, #0x2c]
	ldr r0, [r1, #0xc]
	movs r3, #1
	orrs r0, r3
	str r0, [r1, #0xc]
	ldr r2, [r4, #0x30]
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
	mov r0, ip
	adds r0, #0xb8
	str r3, [r0]
	b _08012936
	.align 2, 0
_08012910: .4byte gUnk_030036C0
_08012914: .4byte gUnk_03004790
_08012918:
	ldr r2, [r4, #0x2c]
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
	ldr r2, [r4, #0x30]
	ldr r0, [r2, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0xc]
	mov r1, ip
	adds r1, #0xb8
	movs r0, #0
	str r0, [r1]
_08012936:
	mov r3, ip
	adds r3, #0xad
	ldrb r0, [r3]
	adds r0, #2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r2, [r0]
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
	ldrb r0, [r3]
	adds r0, #6
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r2, [r0]
	ldr r0, [r2, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0xc]
	b _08012A5C
_08012962:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _08012A00
	adds r0, r4, #0
	adds r0, #0xad
	ldrb r0, [r0]
	cmp r0, #1
	beq _0801298C
	cmp r0, #1
	bgt _0801297C
	cmp r0, #0
	beq _08012986
	b _0801299E
_0801297C:
	cmp r0, #2
	beq _08012992
	cmp r0, #3
	beq _08012998
	b _0801299E
_08012986:
	movs r3, #6
	movs r2, #0xc
	b _080129A2
_0801298C:
	movs r3, #7
	movs r2, #0xe
	b _080129A2
_08012992:
	movs r3, #8
	movs r2, #0x10
	b _080129A2
_08012998:
	movs r3, #9
	movs r2, #0x12
	b _080129A2
_0801299E:
	movs r3, #6
	movs r2, #0xb
_080129A2:
	ldr r4, _080129E4 @ => 0x030036C0
	adds r0, r4, #0
	adds r0, #0xa1
	ldrb r0, [r0]
	movs r1, #0xd
	cmp r0, #1
	bne _080129B2
	movs r1, #0xf
_080129B2:
	adds r0, r3, #0
	bl FUN_0801A04C
	movs r0, #0xa
	movs r1, #2
	movs r2, #1
	bl FUN_0801A04C
	movs r0, #0xb
	movs r1, #2
	movs r2, #0
	bl FUN_0801A04C
	adds r0, r4, #0
	adds r0, #0xb8
	ldr r0, [r0]
	cmp r0, #0
	beq _080129EC
	ldr r0, _080129E8 @ => 0x03004790
	ldr r2, [r0, #0x30]
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080129F6
	.align 2, 0
_080129E4: .4byte gUnk_030036C0
_080129E8: .4byte gUnk_03004790
_080129EC:
	ldr r0, _08012A1C @ => 0x03004790
	ldr r2, [r0, #0x30]
	ldr r0, [r2, #0xc]
	movs r1, #1
	orrs r0, r1
_080129F6:
	str r0, [r2, #0xc]
	ldr r1, _08012A20 @ => 0x030036C0
	movs r0, #0
	str r0, [r1, #0x14]
	mov ip, r1
_08012A00:
	ldr r0, _08012A1C @ => 0x03004790
	ldr r0, [r0, #0x28]
	mov r1, ip
	adds r1, #0xb0
	ldr r1, [r1]
	lsls r1, r1, #0x12
	movs r2, #0x9d
	lsls r2, r2, #0x10
	adds r1, r1, r2
	movs r2, #0xf2
	lsls r2, r2, #0xf
	bl FUN_08001728
	b _08012A5C
	.align 2, 0
_08012A1C: .4byte gUnk_03004790
_08012A20: .4byte gUnk_030036C0
_08012A24:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _08012A42
	movs r0, #0xa
	movs r1, #2
	movs r2, #0
	bl FUN_0801A04C
	movs r0, #0xb
	movs r1, #2
	movs r2, #1
	bl FUN_0801A04C
	movs r0, #0
	str r0, [r4, #0x14]
_08012A42:
	ldr r0, _08012A64 @ => 0x03004790
	ldr r0, [r0, #0x2c]
	adds r1, r4, #0
	adds r1, #0xb4
	ldr r1, [r1]
	lsls r1, r1, #0x12
	movs r2, #0x9d
	lsls r2, r2, #0x10
	adds r1, r1, r2
	movs r2, #0x8d
	lsls r2, r2, #0x10
	bl FUN_08001728
_08012A5C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08012A64: .4byte gUnk_03004790

	thumb_func_start FUN_08012A68
FUN_08012A68: @ 0x08012A68
	push {lr}
	ldr r0, _08012A98 @ => 0x03004720
	movs r1, #5
	str r1, [r0, #0x18]
	ldr r1, _08012A9C @ => 0x030036C0
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0xad
	ldrb r0, [r0]
	cmp r0, #1
	bls _08012A80
	movs r2, #1
_08012A80:
	adds r0, r1, #0
	adds r0, #0xaf
	strb r2, [r0]
	bl FUN_0801A15C
	bl FUN_0801985C
	bl FUN_08012450
	pop {r0}
	bx r0
	.align 2, 0
_08012A98: .4byte gUnk_03004720
_08012A9C: .4byte gUnk_030036C0

	thumb_func_start FUN_08012AA0
FUN_08012AA0: @ 0x08012AA0
	bx lr
	.align 2, 0

	thumb_func_start FUN_08012AA4
FUN_08012AA4: @ 0x08012AA4
	push {r4, lr}
	ldr r0, _08012AD4 @ => 0x030036C0
	adds r0, #0xac
	movs r1, #0
	strb r1, [r0]
	movs r3, #2
	ldr r0, _08012AD8 @ => 0x03004790
	movs r4, #2
	adds r2, r0, #0
	adds r2, #8
_08012AB8:
	ldr r1, [r2]
	cmp r1, #0
	beq _08012AC4
	ldr r0, [r1, #0xc]
	orrs r0, r4
	str r0, [r1, #0xc]
_08012AC4:
	adds r2, #4
	adds r3, #1
	cmp r3, #0xc
	bls _08012AB8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08012AD4: .4byte gUnk_030036C0
_08012AD8: .4byte gUnk_03004790
