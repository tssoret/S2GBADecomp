.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_08019FEC
FUN_08019FEC: @ 0x08019FEC
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	lsls r0, r0, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	ldr r1, _0801A048 @ => 0x03004790
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #0x18
	str r0, [r4, #0xc]
	cmp r3, #0
	beq _0801A008
	movs r0, #0x19
_0801A008:
	str r0, [r4, #0xc]
	adds r3, r4, #0
	adds r3, #0xa9
	ldrb r1, [r3]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	lsls r2, r6, #4
	movs r1, #0xf
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001FB0
	adds r0, r4, #0
	movs r1, #0xb
	bl FUN_08001F84
	cmp r5, #0xfe
	beq _0801A040
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_08000E44
_0801A040:
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0801A048: .4byte gUnk_03004790

	thumb_func_start FUN_0801A04C
FUN_0801A04C: @ 0x0801A04C
	push {lr}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	ldr r3, _0801A074 @ => 0x03004790
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r0, [r0]
	lsrs r1, r1, #0x14
	ldr r3, _0801A078 @ => 0x0805F6C4
	adds r1, r1, r3
	ldr r3, _0801A07C @ => 0x09FB6248
	lsrs r2, r2, #0x16
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl FUN_0800192C
	pop {r0}
	bx r0
	.align 2, 0
_0801A074: .4byte gUnk_03004790
_0801A078: .4byte ROMREF_0805F6C4
_0801A07C: .4byte ROMREF_09FB6248

	thumb_func_start FUN_0801A080
FUN_0801A080: @ 0x0801A080
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r3, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	movs r2, #1
	ldr r0, _0801A0C0 @ => 0x03004720
	ldr r0, [r0, #0x14]
	cmp r0, #1
	bne _0801A0A6
	cmp r4, #2
	bne _0801A0A6
	adds r1, r5, #0
	eors r1, r2
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r2, r0, #0x1f
_0801A0A6:
	cmp r2, #0
	beq _0801A0C8
	movs r0, #0xb1
	bl FUN_0804DE0C
	ldr r0, _0801A0C4 @ => 0x030036C0
	str r6, [r0, #0x10]
	str r4, [r0, #8]
	str r5, [r0, #4]
	ldr r0, _0801A0C0 @ => 0x03004720
	str r7, [r0, #4]
	b _0801A0CE
	.align 2, 0
_0801A0C0: .4byte gUnk_03004720
_0801A0C4: .4byte gUnk_030036C0
_0801A0C8:
	movs r0, #0xbe
	bl FUN_0804DE0C
_0801A0CE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_0801A0D4
FUN_0801A0D4: @ 0x0801A0D4
	push {r4, lr}
	sub sp, #4
	cmp r0, #0
	bne _0801A100
	ldr r1, _0801A0F4 @ => 0x03004720
	movs r0, #5
	str r0, [r1, #4]
	ldr r0, _0801A0F8 @ => 0x030036DC
	ldr r1, _0801A0FC @ => 0x000008D1
	movs r2, #0x1e
	str r2, [sp]
	movs r2, #0xc4
	movs r3, #0
	bl FUN_0804139C
	b _0801A110
	.align 2, 0
_0801A0F4: .4byte gUnk_03004720
_0801A0F8: .4byte gUnk_030036DC
_0801A0FC: .4byte 0x000008D1
_0801A100:
	ldr r0, _0801A158 @ => 0x030036DC
	movs r1, #0x1e
	str r1, [sp]
	movs r1, #0
	movs r2, #0xc4
	movs r3, #1
	bl FUN_0804139C
_0801A110:
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #3
	movs r1, #0
	bl FUN_0801FEA0
	bl FUN_0801A15C
	movs r0, #0
	movs r1, #0
	movs r2, #0xba
	movs r3, #0
	bl FUN_080410E8
	ldr r4, _0801A158 @ => 0x030036DC
	movs r0, #8
	adds r1, r4, #0
	bl FUN_08041150
	subs r4, #0x1c
	ldr r0, [r4, #0x20]
	ldr r2, [r4, #0x2c]
	adds r2, #1
	lsls r2, r2, #3
	adds r2, #3
	ldr r3, [r4, #0x1c]
	movs r1, #1
	str r1, [sp]
	movs r1, #0x78
	bl FUN_0801F8B8
	str r0, [r4, #0x20]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801A158: .4byte gUnk_030036DC

	thumb_func_start FUN_0801A15C
FUN_0801A15C: @ 0x0801A15C
	push {lr}
	ldr r0, _0801A170 @ => 0x030036C0
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801A178
	ldr r0, _0801A174 @ => 0x0805F570
	b _0801A17A
	.align 2, 0
_0801A170: .4byte gUnk_030036C0
_0801A174: .4byte ROMREF_0805F570
_0801A178:
	ldr r0, _0801A19C @ => 0x0805F574
_0801A17A:
	ldr r0, [r0]
	bl FUN_0801FE58
	ldr r2, _0801A1A0 @ => 0x030036C0
	ldr r1, [r2, #4]
	movs r0, #1
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r0, r0, #0x1f
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_0801A19C: .4byte ROMREF_0805F574
_0801A1A0: .4byte gUnk_030036C0

	thumb_func_start FUN_0801A1A4
FUN_0801A1A4: @ 0x0801A1A4
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0801A1D4 @ => 0x03004790
	ldr r0, [r5, #4]
	ldr r1, _0801A1D8 @ => 0x0805F618
	lsls r2, r4, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r1, r1, #0x10
	movs r3, #2
	ldrsh r2, [r2, r3]
	lsls r2, r2, #0x10
	bl FUN_08001728
	ldr r0, [r5, #4]
	adds r1, r4, #0
	bl FUN_08000E44
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A1D4: .4byte gUnk_03004790
_0801A1D8: .4byte ROMREF_0805F618

	thumb_func_start FUN_0801A1DC
FUN_0801A1DC: @ 0x0801A1DC
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, r5, #0
	movs r1, #1
	movs r2, #2
	bl FUN_08048CB4
	cmp r4, #0
	beq _0801A1F8
	cmp r4, #1
	beq _0801A220
	b _0801A244
_0801A1F8:
	ldr r0, _0801A218 @ => 0x0805F854
	movs r1, #0
	ldrsh r3, [r0, r1]
	lsls r3, r3, #0x10
	movs r1, #2
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #2
	bl FUN_08028CEC
	ldr r1, _0801A21C @ => 0x030036B0
	b _0801A242
	.align 2, 0
_0801A218: .4byte ROMREF_0805F854
_0801A21C: .4byte gUnk_030036B0
_0801A220:
	ldr r0, _0801A24C @ => 0x030036B0
	ldr r0, [r0]
	ldr r2, _0801A250 @ => 0x0805F854
	movs r3, #4
	ldrsh r1, [r2, r3]
	lsls r1, r1, #0x10
	str r1, [sp]
	movs r3, #6
	ldrsh r1, [r2, r3]
	lsls r1, r1, #0x10
	str r1, [sp, #4]
	adds r1, r5, #0
	movs r2, #1
	movs r3, #2
	bl FUN_08028D88
	ldr r1, _0801A254 @ => 0x030037A8
_0801A242:
	str r0, [r1]
_0801A244:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A24C: .4byte gUnk_030036B0
_0801A250: .4byte ROMREF_0805F854
_0801A254: .4byte gUnk_030037A8

	thumb_func_start FUN_0801A258
FUN_0801A258: @ 0x0801A258
	push {lr}
	bl FUN_08000B70
	ldr r0, _0801A27C @ => 0x030042E0
	ldr r0, [r0]
	ldrh r0, [r0, #0x38]
	cmp r0, #0
	beq _0801A278
	ldr r2, _0801A280 @ => 0x0400000A
	ldr r0, _0801A284 @ => 0x03003280
	ldrh r1, [r0]
	strh r1, [r2]
	subs r2, #2
	subs r0, #0x68
	ldrh r0, [r0]
	strh r0, [r2]
_0801A278:
	pop {r0}
	bx r0
	.align 2, 0
_0801A27C: .4byte gUnk_030042E0
_0801A280: .4byte 0x0400000A
_0801A284: .4byte gUnk_03003280
