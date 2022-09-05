.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_0801A694
FUN_0801A694: @ 0x0801A694
	bx lr
	.align 2, 0

	thumb_func_start FUN_0801A698
FUN_0801A698: @ 0x0801A698
	ldr r0, _0801A6A4 @ => 0x03004720
	movs r1, #1
	str r1, [r0, #0x14]
	movs r1, #4
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_0801A6A4: .4byte gUnk_03004720

	thumb_func_start FUN_0801A6A8
FUN_0801A6A8: @ 0x0801A6A8
	bx lr
	.align 2, 0

	thumb_func_start FUN_0801A6AC
FUN_0801A6AC: @ 0x0801A6AC
	bx lr
	.align 2, 0

	thumb_func_start FUN_0801A6B0
FUN_0801A6B0: @ 0x0801A6B0
	push {lr}
	sub sp, #8
	movs r0, #0xd
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #6
	movs r2, #4
	movs r3, #0x12
	bl FUN_0800C7A8
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0801A6D0
FUN_0801A6D0: @ 0x0801A6D0
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x1c]
	ldr r0, _0801A6E8 @ => 0x001FFFFF
	cmp r1, r0
	bgt _0801A6EC
	ldr r0, [r2, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0xc]
	b _0801A702
	.align 2, 0
_0801A6E8: .4byte 0x001FFFFF
_0801A6EC:
	ldr r0, _0801A708 @ => 0x001BFFFF
	cmp r1, r0
	bgt _0801A702
	adds r2, #0xa5
	ldrb r1, [r2]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
_0801A702:
	pop {r0}
	bx r0
	.align 2, 0
_0801A708: .4byte 0x001BFFFF

	thumb_func_start FUN_0801A70C
FUN_0801A70C: @ 0x0801A70C
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r2, r0
	bgt _0801A728
	movs r0, #0
	str r0, [r1, #0x2c]
	ldr r0, _0801A724 @ => 0x03001B08
	str r1, [r0, #4]
	b _0801A76C
	.align 2, 0
_0801A724: .4byte gUnk_03001B08
_0801A728:
	ldr r0, _0801A744 @ => 0x001FFFFF
	cmp r2, r0
	bgt _0801A74C
	ldr r3, _0801A748 @ => 0x03001B08
	ldr r2, [r3, #4]
	cmp r2, #0
	beq _0801A76C
	ldr r0, [r2, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0xc]
	movs r0, #0
	str r0, [r3, #4]
	b _0801A76C
	.align 2, 0
_0801A744: .4byte 0x001FFFFF
_0801A748: .4byte gUnk_03001B08
_0801A74C:
	movs r0, #0xe0
	lsls r0, r0, #0xd
	cmp r2, r0
	bgt _0801A76C
	ldr r0, _0801A770 @ => 0x03001B08
	ldr r2, [r0, #4]
	cmp r2, #0
	beq _0801A76C
	adds r2, #0xa5
	ldrb r1, [r2]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
_0801A76C:
	pop {r0}
	bx r0
	.align 2, 0
_0801A770: .4byte gUnk_03001B08

	thumb_func_start FUN_0801A774
FUN_0801A774: @ 0x0801A774
	push {r4, lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x1c]
	cmp r1, #0
	bge _0801A798
	ldr r0, [r2, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0xc]
	ldr r1, _0801A794 @ => 0x03004720
	movs r0, #1
	str r0, [r1, #0x14]
	movs r0, #4
	str r0, [r1, #4]
	b _0801A7F4
	.align 2, 0
_0801A794: .4byte gUnk_03004720
_0801A798:
	ldr r0, _0801A7C0 @ => 0x001FFFFF
	cmp r1, r0
	bgt _0801A7C8
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
	ldr r3, _0801A7C4 @ => 0x03001B08
	ldr r2, [r3, #4]
	cmp r2, #0
	beq _0801A7F4
	ldr r0, [r2, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0xc]
	movs r0, #0
	str r0, [r3, #4]
	b _0801A7F4
	.align 2, 0
_0801A7C0: .4byte 0x001FFFFF
_0801A7C4: .4byte gUnk_03001B08
_0801A7C8:
	ldr r0, _0801A7FC @ => 0x001BFFFF
	cmp r1, r0
	bgt _0801A7F4
	adds r2, #0xa5
	ldrb r1, [r2]
	movs r4, #0xd
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	movs r3, #4
	orrs r0, r3
	strb r0, [r2]
	ldr r0, _0801A800 @ => 0x03001B08
	ldr r2, [r0, #4]
	cmp r2, #0
	beq _0801A7F4
	adds r2, #0xa5
	ldrb r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
_0801A7F4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801A7FC: .4byte 0x001BFFFF
_0801A800: .4byte gUnk_03001B08

	thumb_func_start FUN_0801A804
FUN_0801A804: @ 0x0801A804
	bx lr
	.align 2, 0

	thumb_func_start FUN_0801A808
FUN_0801A808: @ 0x0801A808
	push {r4, r5, lr}
	sub sp, #4
	movs r0, #3
	movs r1, #1
	movs r2, #0
	bl FUN_0801FEA0
	ldr r5, _0801A844 @ => 0x03001B08
	ldr r0, [r5, #0x14]
	bl FUN_08050820
	adds r0, #2
	str r0, [sp]
	mov r0, sp
	bl FUN_08050940
	adds r4, r0, #0
	ldr r0, _0801A848 @ => FUN_0801A70C
	str r0, [r4, #0x50]
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x10
	bl FUN_08050BDC
	str r4, [r5, #4]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A844: .4byte gUnk_03001B08
_0801A848: .4byte FUN_0801A70C

	thumb_func_start FUN_0801A84C
FUN_0801A84C: @ 0x0801A84C
	push {r4, r5, lr}
	sub sp, #4
	bl FUN_0801A6B0
	movs r0, #3
	movs r1, #1
	movs r2, #0
	bl FUN_0801FEA0
	ldr r5, _0801A890 @ => 0x03001B08
	ldr r0, [r5, #0x14]
	bl FUN_08050820
	adds r0, #2
	str r0, [sp]
	mov r0, sp
	bl FUN_08050940
	adds r4, r0, #0
	ldr r0, _0801A894 @ => FUN_0801A70C
	str r0, [r4, #0x50]
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x10
	bl FUN_08050BDC
	str r4, [r5, #4]
	ldr r1, _0801A898 @ => 0x03004720
	movs r0, #1
	str r0, [r1, #4]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A890: .4byte gUnk_03001B08
_0801A894: .4byte FUN_0801A70C
_0801A898: .4byte gUnk_03004720

	thumb_func_start FUN_0801A89C
FUN_0801A89C: @ 0x0801A89C
	ldr r0, _0801A8A8 @ => 0x03004720
	movs r1, #3
	str r1, [r0, #4]
	movs r1, #0
	str r1, [r0, #0x18]
	bx lr
	.align 2, 0
_0801A8A8: .4byte gUnk_03004720

	thumb_func_start FUN_0801A8AC
FUN_0801A8AC: @ 0x0801A8AC
	push {r4, r5, lr}
	cmp r0, #0
	beq _0801A8E0
	ldr r5, _0801A8DC @ => 0x03004720
	ldr r1, [r5, #0x18]
	adds r1, #1
	str r1, [r5, #0x18]
	movs r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl FUN_080455AC
	ldr r4, [r5, #0x18]
	cmp r4, #0x10
	bne _0801A904
	bl FUN_0801A570
	movs r0, #2
	str r0, [r5, #4]
	str r4, [r5, #0x18]
	b _0801A904
	.align 2, 0
_0801A8DC: .4byte gUnk_03004720
_0801A8E0:
	ldr r4, _0801A90C @ => 0x03004720
	ldr r1, [r4, #0x18]
	subs r1, #1
	str r1, [r4, #0x18]
	movs r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl FUN_080455AC
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _0801A904
	str r0, [r4, #4]
	movs r0, #0x3c
	str r0, [r4, #0x18]
_0801A904:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A90C: .4byte gUnk_03004720

	thumb_func_start FUN_0801A910
FUN_0801A910: @ 0x0801A910
	push {lr}
	adds r1, r0, #0
	movs r2, #1
	rsbs r2, r2, #0
	ldrb r0, [r1]
	cmp r0, #0x5e
	bne _0801A932
	adds r1, #1
	ldrb r0, [r1]
	subs r0, #0x30
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _0801A932
	ldrb r0, [r1]
	adds r2, r0, #0
	subs r2, #0x30
_0801A932:
	adds r0, r2, #0
	pop {r1}
	bx r1

	thumb_func_start FUN_0801A938
FUN_0801A938: @ 0x0801A938
	movs r0, #1
	bx lr

	thumb_func_start FUN_0801A93C
FUN_0801A93C: @ 0x0801A93C
	movs r0, #0xe
	strb r0, [r1]
	movs r0, #1
	bx lr

	thumb_func_start FUN_0801A944
FUN_0801A944: @ 0x0801A944
	push {r4, lr}
	adds r4, r1, #0
	cmp r2, #0xe
	bne _0801A986
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _0801A986
	ldrb r0, [r4, #0xa]
	movs r1, #0x21
	bl FUN_0803A10C
	cmp r0, #1
	bne _0801A982
	ldrb r0, [r4, #0xa]
	movs r1, #0x22
	bl FUN_0803A10C
	cmp r0, #1
	bne _0801A982
	ldrb r0, [r4, #0xa]
	movs r1, #0x23
	bl FUN_0803A10C
	cmp r0, #1
	bne _0801A982
	ldrb r0, [r4, #0xa]
	movs r1, #0x24
	bl FUN_0803A10C
	cmp r0, #1
	beq _0801A986
_0801A982:
	movs r0, #0
	b _0801A988
_0801A986:
	movs r0, #1
_0801A988:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0801A990
FUN_0801A990: @ 0x0801A990
	push {r4, lr}
	adds r4, r2, #0
	bl FUN_0803D1F0
	cmp r0, #0
	bne _0801A9A0
	movs r0, #0
	b _0801A9A4
_0801A9A0:
	strh r4, [r0, #4]
	movs r0, #1
_0801A9A4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0801A9AC
FUN_0801A9AC: @ 0x0801A9AC
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0803D8C8
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	cmp r0, #0xe
	bne _0801A9C4
	adds r0, r4, #0
	bl FUN_0803CA6C
	b _0801A9C6
_0801A9C4:
	movs r0, #0
_0801A9C6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_0801A9CC
FUN_0801A9CC: @ 0x0801A9CC
	bx lr
	.align 2, 0

	thumb_func_start FUN_0801A9D0
FUN_0801A9D0: @ 0x0801A9D0
	push {r4, r5, r6, lr}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08009B04
	adds r6, r0, #0
	bl FUN_080012FC
	adds r5, r0, #0
	cmp r5, #0
	beq _0801AA44
	movs r0, #4
	ldrsh r1, [r6, r0]
	movs r0, #6
	ldrsh r2, [r6, r0]
	adds r0, r5, #0
	bl FUN_08001734
	ldr r0, [r6]
	movs r1, #0
	strh r0, [r5, #8]
	strh r1, [r5, #0xa]
	ldr r0, _0801AA50 @ => 0x80022000
	str r0, [r5, #0xc]
	str r1, [r5, #0x50]
	movs r1, #4
	ldrsh r0, [r6, r1]
	str r0, [sp]
	movs r2, #6
	ldrsh r0, [r6, r2]
	str r0, [sp, #4]
	ldr r0, _0801AA54 @ => 0x03004398
	ldr r0, [r0]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r4, r5, r1
	mov r1, sp
	adds r2, r4, #0
	bl FUN_0805374C
	ldrb r0, [r6, #8]
	ldrb r4, [r4]
	adds r0, r0, r4
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r1, r5, r2
	strb r0, [r1]
	ldr r0, _0801AA58 @ => 0x00000131
	adds r1, r5, r0
	ldrb r0, [r6, #9]
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r2, #1
	adds r1, r5, r2
	strb r0, [r1]
_0801AA44:
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0801AA50: .4byte 0x80022000
_0801AA54: .4byte gUnk_03004398
_0801AA58: .4byte 0x00000131

	thumb_func_start FUN_0801AA5C
FUN_0801AA5C: @ 0x0801AA5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x38
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #0xa
	str r0, [sp]
	movs r0, #0x1d
	movs r1, #0
	movs r2, #0
	add r3, sp, #4
	bl FUN_08001DB4
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _0801AA82
	b _0801AAE2
_0801AA7E:
	movs r0, #1
	b _0801AAE4
_0801AA82:
	asrs r0, r4, #0x10
	str r0, [sp, #0x2c]
	asrs r0, r5, #0x10
	add r1, sp, #0x2c
	str r0, [r1, #4]
	ldr r0, _0801AAEC @ => 0x03004398
	ldr r0, [r0]
	add r5, sp, #0x34
	adds r2, r5, #0
	bl FUN_0805374C
	movs r4, #0
	cmp r4, r6
	bhs _0801AAE2
	adds r2, r5, #0
	ldrb r5, [r2]
_0801AAA2:
	lsls r0, r4, #2
	add r0, sp
	adds r0, #4
	ldr r3, [r0]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r5, r0
	blo _0801AAD8
	movs r7, #0x9a
	lsls r7, r7, #1
	adds r0, r3, r7
	ldrb r0, [r0]
	cmp r5, r0
	bhi _0801AAD8
	ldr r0, _0801AAF0 @ => 0x00000131
	adds r1, r3, r0
	ldrb r0, [r2, #1]
	ldrb r1, [r1]
	cmp r0, r1
	blo _0801AAD8
	adds r7, #1
	adds r1, r3, r7
	ldrb r1, [r1]
	cmp r0, r1
	bls _0801AA7E
_0801AAD8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r6
	blo _0801AAA2
_0801AAE2:
	movs r0, #0
_0801AAE4:
	add sp, #0x38
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801AAEC: .4byte gUnk_03004398
_0801AAF0: .4byte 0x00000131

	thumb_func_start FUN_0801AAF4
FUN_0801AAF4: @ 0x0801AAF4
	movs r0, #1
	bx lr

	thumb_func_start FUN_0801AAF8
FUN_0801AAF8: @ 0x0801AAF8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl FUN_08001D8C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801AB12
	ldr r0, [r4, #0x40]
	cmp r0, #1
	bne _0801AB12
	movs r0, #0
	b _0801AB14
_0801AB12:
	movs r0, #1
_0801AB14:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0801AB1C
FUN_0801AB1C: @ 0x0801AB1C
	movs r0, #7
	strb r0, [r1]
	movs r0, #1
	bx lr

	thumb_func_start FUN_0801AB24
FUN_0801AB24: @ 0x0801AB24
	push {lr}
	cmp r2, #7
	bne _0801AB40
	ldrh r0, [r1, #8]
	cmp r0, #0
	beq _0801AB40
	ldrb r0, [r1, #0xa]
	movs r1, #0x18
	bl FUN_0803A10C
	cmp r0, #0
	bne _0801AB40
	movs r0, #0
	b _0801AB42
_0801AB40:
	movs r0, #1
_0801AB42:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0801AB48
FUN_0801AB48: @ 0x0801AB48
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r2, #0
	bl FUN_0803D1F0
	adds r4, r0, #0
	cmp r4, #0
	beq _0801AB70
	strh r5, [r4, #4]
	ldr r0, _0801AB78 @ => 0x03004398
	ldr r0, [r0]
	adds r1, r4, #0
	adds r2, r6, #0
	bl FUN_08049A04
	adds r0, r7, #0
	movs r1, #0xa
	bl FUN_08001F20
_0801AB70:
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801AB78: .4byte gUnk_03004398

	thumb_func_start FUN_0801AB7C
FUN_0801AB7C: @ 0x0801AB7C
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0803D8C8
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	cmp r0, #7
	bne _0801AB94
	adds r0, r4, #0
	bl FUN_0803C5E8
	b _0801AB96
_0801AB94:
	movs r0, #0
_0801AB96:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_0801AB9C
FUN_0801AB9C: @ 0x0801AB9C
	bx lr
	.align 2, 0
