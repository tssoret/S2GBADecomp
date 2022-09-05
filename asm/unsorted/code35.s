.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_08041BF0
FUN_08041BF0: @ 0x08041BF0
	push {lr}
	ldr r3, _08041C24 @ => 0x03005C90
	movs r0, #1
	strb r0, [r3, #4]
	ldr r2, [r3, #8]
	cmp r2, #0
	beq _08041C0E
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
_08041C0E:
	movs r0, #0
	strb r0, [r3, #4]
	movs r0, #0x78
	movs r1, #0x48
	bl FUN_08041C28
	movs r0, #2
	bl FUN_0802CEC4
	pop {r0}
	bx r0
	.align 2, 0
_08041C24: .4byte gUnk_03005C90

	thumb_func_start FUN_08041C28
FUN_08041C28: @ 0x08041C28
	push {r4, r5, lr}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r2, #0
	str r2, [sp]
	add r2, sp, #4
	movs r0, #0xd0
	mov r1, sp
	bl FUN_08041A88
	ldr r3, _08041C74 @ => 0x03005C90
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08041C50
	ldr r0, [sp]
	adds r0, #0x20
	str r0, [sp]
_08041C50:
	ldr r1, [sp, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r2, r0, #2
	lsls r0, r4, #1
	ldr r1, [sp]
	subs r0, r0, r1
	lsrs r0, r0, #4
	strb r0, [r3, #1]
	lsls r0, r5, #1
	subs r0, r0, r2
	lsrs r0, r0, #4
	strb r0, [r3, #2]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08041C74: .4byte gUnk_03005C90

	thumb_func_start FUN_08041C78
FUN_08041C78: @ 0x08041C78
	push {lr}
	movs r0, #0xb8
	bl FUN_0804DE0C
	ldr r0, _08041CA8 @ => 0x03005C90
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _08041C92
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
_08041C92:
	movs r0, #0xa
	bl FUN_08053410
	ldr r0, _08041CAC @ => 0x03004720
	movs r1, #0xa
	str r1, [r0, #0x18]
	movs r1, #3
	str r1, [r0, #0x14]
	pop {r0}
	bx r0
	.align 2, 0
_08041CA8: .4byte gUnk_03005C90
_08041CAC: .4byte gUnk_03004720

	thumb_func_start FUN_08041CB0
FUN_08041CB0: @ 0x08041CB0
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08009B04
	adds r5, r0, #0
	ldr r0, _08041D44 @ => 0x03003DF0
	movs r1, #0xd3
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #1
	ldrh r2, [r5, #8]
	lsls r1, r2
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _08041D60
	bl FUN_080012FC
	adds r4, r0, #0
	ldr r0, [r5]
	strh r0, [r4, #8]
	ldrb r0, [r5, #0xa]
	strh r0, [r4, #0xa]
	ldrh r0, [r5, #8]
	strb r0, [r4, #0x13]
	movs r0, #4
	ldrsh r1, [r5, r0]
	lsls r1, r1, #0x10
	movs r0, #6
	ldrsh r2, [r5, r0]
	lsls r2, r2, #0x10
	adds r0, r4, #0
	bl FUN_08001728
	ldr r0, _08041D48 @ => 0x10060415
	str r0, [r4, #0xc]
	ldr r0, _08041D4C @ => FUN_08041D68
	str r0, [r4, #0x50]
	ldr r0, _08041D50 @ => FUN_08001EBC
	str r0, [r4, #0x64]
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001FB0
	ldrh r1, [r4, #0xa]
	lsls r1, r1, #4
	ldr r0, _08041D54 @ => 0x080789F0
	adds r1, r1, r0
	adds r0, r4, #0
	bl FUN_080015B8
	ldrh r1, [r4, #0xa]
	lsls r1, r1, #2
	ldr r0, _08041D58 @ => 0x08078A00
	adds r1, r1, r0
	adds r0, r4, #0
	bl FUN_0803EF14
	adds r2, r4, #0
	adds r2, #0xa9
	ldrb r0, [r2]
	movs r1, #0xc
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x94
	ldr r0, _08041D5C @ => FUN_08041E44
	str r0, [r1]
	adds r0, r4, #0
	b _08041D62
	.align 2, 0
_08041D44: .4byte gUnk_03003DF0
_08041D48: .4byte 0x10060415
_08041D4C: .4byte FUN_08041D68
_08041D50: .4byte FUN_08001EBC
_08041D54: .4byte ROMREF_080789F0
_08041D58: .4byte ROMREF_08078A00
_08041D5C: .4byte FUN_08041E44
_08041D60:
	movs r0, #0
_08041D62:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start FUN_08041D68
FUN_08041D68: @ 0x08041D68
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08041D88 @ => 0x03004200
	ldr r5, [r0]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _08041D8C
	cmp r0, #1
	ble _08041E3A
	cmp r0, #0xf
	beq _08041D94
	b _08041E3A
	.align 2, 0
_08041D88: .4byte gUnk_03004200
_08041D8C:
	adds r0, r4, #0
	bl FUN_080040DC
	b _08041E3A
_08041D94:
	ldr r1, _08041DA8 @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _08041DC6
	cmp r0, #0xe
	bgt _08041DAC
	cmp r0, #0
	beq _08041DB2
	b _08041E3A
	.align 2, 0
_08041DA8: .4byte 0x0000011D
_08041DAC:
	cmp r0, #0xf
	beq _08041DFC
	b _08041E3A
_08041DB2:
	adds r0, r4, #0
	movs r1, #0xe
	bl FUN_08001F84
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #8
	strh r0, [r1]
	b _08041E3A
_08041DC6:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08041DF8 @ => 0xFFFF0000
	cmp r1, r0
	bne _08041E3A
	adds r0, r4, #0
	bl FUN_08041EE4
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08002040
	movs r0, #0xbc
	bl FUN_0804DE0C
	adds r0, r4, #0
	movs r1, #0xf
	bl FUN_08001F84
	b _08041E3A
	.align 2, 0
_08041DF8: .4byte 0xFFFF0000
_08041DFC:
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08041E3A
	ldr r2, _08041E40 @ => 0x03003DF0
	movs r0, #0xd3
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r1, #1
	ldrb r0, [r4, #0x13]
	lsls r1, r0
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08001FB0
	adds r0, r4, #0
	movs r1, #2
	bl FUN_08002038
	movs r1, #0x91
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	bl FUN_08001FB0
_08041E3A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08041E40: .4byte gUnk_03003DF0

	thumb_func_start FUN_08041E44
FUN_08041E44: @ 0x08041E44
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r1, #0
	ldrh r0, [r5, #8]
	cmp r0, #0
	bne _08041ECE
	ldr r0, _08041ED8 @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08041ECE
	subs r1, #0xe4
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0xd
	beq _08041E6E
	cmp r0, #0x39
	bne _08041ECE
_08041E6E:
	adds r0, r5, #0
	adds r1, r6, #0
	bl FUN_080010C0
	cmp r0, #1
	bne _08041E9E
	ldr r0, _08041EDC @ => 0x03005BCC
	ldr r0, [r0]
	movs r2, #0x1a
	ldrsh r1, [r6, r2]
	movs r3, #0x1e
	ldrsh r2, [r6, r3]
	adds r3, r6, #0
	adds r3, #0xa9
	ldrb r3, [r3]
	lsls r3, r3, #0x1c
	lsrs r3, r3, #0x1e
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r4, #0x1e
	str r4, [sp]
	bl FUN_0803E4F4
_08041E9E:
	ldr r0, _08041EE0 @ => 0x030042B0
	ldrh r1, [r0, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08041ECE
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08001FB0
	adds r0, r5, #0
	movs r1, #0x42
	bl FUN_08001F20
	adds r0, r6, #0
	movs r1, #0xf
	bl FUN_08001FB0
	ldr r0, _08041EDC @ => 0x03005BCC
	ldr r0, [r0]
	bl FUN_0803E54C
	bl FUN_08024900
_08041ECE:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08041ED8: .4byte gUnk_03004374
_08041EDC: .4byte gUnk_03005BCC
_08041EE0: .4byte gUnk_030042B0

	thumb_func_start FUN_08041EE4
FUN_08041EE4: @ 0x08041EE4
	push {r4, lr}
	ldrh r0, [r0, #0xa]
	cmp r0, #0
	bne _08041F0E
	ldr r4, _08041F14 @ => 0x03003E28
	adds r0, r4, #0
	bl FUN_08038A80
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #0x32
	movs r1, #0
	movs r2, #0x64
	bl FUN_0802C644
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl FUN_08038A84
_08041F0E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08041F14: .4byte gUnk_03003E28

	thumb_func_start FUN_08041F18
FUN_08041F18: @ 0x08041F18
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	movs r7, #1
	ldrh r4, [r5, #6]
	cmp r4, #0x22
	beq _08041F6E
	cmp r4, #0x22
	bgt _08041F36
	cmp r4, #0
	beq _08041F40
	cmp r4, #1
	beq _0804200E
	b _08042024
_08041F36:
	cmp r4, #0x24
	beq _08041FF2
	cmp r4, #0x42
	beq _08041F8A
	b _08042024
_08041F40:
	ldr r0, [r5]
	bl FUN_08001848
	movs r0, #6
	str r0, [sp]
	movs r0, #0x33
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0xc
	movs r3, #0x64
	bl FUN_0803DB6C
	movs r0, #0x1e
	str r0, [r6, #0x58]
	ldr r0, [r5]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r4, [r0]
	movs r0, #0x22
	strh r0, [r5, #6]
	b _08042024
_08041F6E:
	ldr r2, [r5]
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08042024
	adds r0, r2, #0
	movs r1, #0x34
	bl FUN_08001F20
	movs r0, #0x42
	strh r0, [r5, #6]
	b _08042024
_08041F8A:
	ldr r1, [r5]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r1, r1, r3
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x2b
	bne _08041FB8
	movs r0, #0x64
	bl FUN_0804DE0C
	adds r1, r6, #0
	adds r1, #0xe0
	str r0, [r1]
	ldr r0, [r5]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
_08041FB8:
	ldr r0, [r6, #0x58]
	subs r0, #1
	str r0, [r6, #0x58]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08042024
	adds r1, r6, #0
	adds r1, #0x68
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _08041FE4
	ldr r3, _08041FE0 @ => 0xFFFFFC00
	adds r0, r2, r3
	strh r0, [r1]
	movs r0, #0x1e
	str r0, [r6, #0x58]
	b _08042024
	.align 2, 0
_08041FE0: .4byte 0xFFFFFC00
_08041FE4:
	ldr r0, [r5]
	movs r1, #0x35
	bl FUN_08001F20
	movs r0, #0x24
	strh r0, [r5, #6]
	b _08042024
_08041FF2:
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08042024
	adds r0, r6, #0
	adds r0, #0xe0
	ldr r0, [r0]
	bl FUN_0804E03C
	strh r7, [r5, #6]
	b _08042024
_0804200E:
	ldr r0, [r6, #0x34]
	movs r1, #1
	bl FUN_08001FB0
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #6
	movs r3, #4
	bl FUN_0803DC54
	movs r7, #2
_08042024:
	adds r0, r7, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08042030
FUN_08042030: @ 0x08042030
	push {r4, lr}
	adds r2, r0, #0
	movs r0, #0xe1
	lsls r0, r0, #2
	str r0, [r2, #0x54]
	movs r0, #0
	str r0, [r2, #0x58]
	adds r1, r2, #0
	adds r1, #0x68
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bne _08042054
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r1]
	b _08042064
_08042054:
	ldr r4, _0804206C @ => 0xFFFFFF00
	adds r0, r3, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08042064
	movs r0, #1
	str r0, [r2, #0x54]
_08042064:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804206C: .4byte 0xFFFFFF00

	thumb_func_start FUN_08042070
FUN_08042070: @ 0x08042070
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl FUN_08001D8C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804208A
	ldr r0, [r4, #0x40]
	cmp r0, #1
	bne _0804208A
	movs r0, #0
	b _0804208C
_0804208A:
	movs r0, #1
_0804208C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08042094
FUN_08042094: @ 0x08042094
	movs r0, #0xa
	strb r0, [r1]
	movs r0, #1
	bx lr

	thumb_func_start FUN_0804209C
FUN_0804209C: @ 0x0804209C
	push {lr}
	cmp r2, #0xa
	bne _080420AE
	ldrh r0, [r1, #8]
	cmp r0, #0
	beq _080420B2
	ldrh r0, [r1, #0xa]
	cmp r0, #2
	beq _080420B2
_080420AE:
	movs r0, #0
	b _080420B4
_080420B2:
	movs r0, #1
_080420B4:
	pop {r1}
	bx r1

	thumb_func_start FUN_080420B8
FUN_080420B8: @ 0x080420B8
	push {r4, lr}
	adds r4, r2, #0
	bl FUN_0803D1F0
	cmp r0, #0
	beq _080420C6
	strh r4, [r0, #4]
_080420C6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_080420CC
FUN_080420CC: @ 0x080420CC
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0803D8C8
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	cmp r0, #0xa
	bne _080420E4
	adds r0, r4, #0
	bl FUN_08041F18
	b _080420E6
_080420E4:
	movs r0, #0
_080420E6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_080420EC
FUN_080420EC: @ 0x080420EC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x68
	ldrh r1, [r5]
	lsls r2, r1, #0x10
	movs r0, #0xa0
	lsls r0, r0, #3
	cmp r1, r0
	bhi _08042108
	ldr r0, [r4, #0x34]
	lsrs r1, r2, #0x18
	bl FUN_08000E44
_08042108:
	ldr r0, [r4, #0x54]
	subs r0, #1
	str r0, [r4, #0x54]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0804213C
	ldrh r1, [r5]
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble _08042134
	ldr r2, _08042130 @ => 0xFFFFFF00
	adds r0, r1, r2
	strh r0, [r5]
	movs r0, #0xe1
	lsls r0, r0, #2
	str r0, [r4, #0x54]
	b _0804213C
	.align 2, 0
_08042130: .4byte 0xFFFFFF00
_08042134:
	ldr r0, [r4, #0x34]
	movs r1, #1
	bl FUN_08001FB0
_0804213C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08042144
FUN_08042144: @ 0x08042144
	movs r1, #1
	str r1, [r0, #0x4c]
	movs r0, #1
	bx lr

	thumb_func_start FUN_0804214C
FUN_0804214C: @ 0x0804214C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl FUN_08001D8C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08042166
	ldr r0, [r4, #0x40]
	cmp r0, #1
	bne _08042166
	movs r0, #0
	b _08042168
_08042166:
	movs r0, #1
_08042168:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08042170
FUN_08042170: @ 0x08042170
	movs r0, #1
	bx lr

	thumb_func_start FUN_08042174
FUN_08042174: @ 0x08042174
	push {lr}
	cmp r2, #0x1c
	bne _08042180
	ldrh r0, [r1, #8]
	cmp r0, #0
	beq _08042184
_08042180:
	movs r0, #0
	b _08042186
_08042184:
	movs r0, #1
_08042186:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0804218C
FUN_0804218C: @ 0x0804218C
	push {r4, lr}
	adds r4, r2, #0
	bl FUN_0803D1F0
	cmp r0, #0
	bne _0804219C
	movs r0, #0
	b _080421A0
_0804219C:
	strh r4, [r0, #4]
	movs r0, #1
_080421A0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_080421A8
FUN_080421A8: @ 0x080421A8
	push {r4, lr}
	movs r4, #1
	bl FUN_0803D8C8
	ldrh r0, [r0, #4]
	cmp r0, #0x1c
	beq _080421B8
	movs r4, #0
_080421B8:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_080421C0
FUN_080421C0: @ 0x080421C0
	bx lr
	.align 2, 0

	thumb_func_start FUN_080421C4
FUN_080421C4: @ 0x080421C4
	push {lr}
	bl FUN_080421D4
	bl FUN_08042248
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080421D4
FUN_080421D4: @ 0x080421D4
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _08042234 @ => 0x0808F128
	ldr r1, _08042238 @ => 0x0808F124
	ldr r2, [r0]
	ldr r0, [r1]
	subs r2, r2, r0
	ldr r0, _0804223C @ => 0x0808F130
	ldr r1, _08042240 @ => 0x0808F12C
	ldr r3, [r0]
	ldr r0, [r1]
	subs r3, r3, r0
	movs r4, #0
	str r4, [sp]
	ldr r1, _08042244 @ => 0x040000D4
	mov r0, sp
	str r0, [r1]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r0, r2, r5
	str r0, [r1, #4]
	movs r0, #0xfa
	lsls r0, r0, #7
	subs r0, r0, r2
	lsrs r0, r0, #2
	movs r2, #0x85
	lsls r2, r2, #0x18
	orrs r0, r2
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	str r4, [sp]
	mov r0, sp
	str r0, [r1]
	movs r4, #0x80
	lsls r4, r4, #0x12
	adds r0, r3, r4
	str r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #0xb
	subs r0, r0, r3
	lsrs r0, r0, #2
	orrs r0, r2
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08042234: .4byte ROMREF_0808F128
_08042238: .4byte ROMREF_0808F124
_0804223C: .4byte ROMREF_0808F130
_08042240: .4byte ROMREF_0808F12C
_08042244: .4byte 0x040000D4

	thumb_func_start FUN_08042248
FUN_08042248: @ 0x08042248
	push {lr}
	bl FUN_0804225C
	bl FUN_08042284
	bl FUN_080422A8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0804225C
FUN_0804225C: @ 0x0804225C
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0804227C @ => 0x040000D4
	mov r0, sp
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08042280 @ => 0x8100C000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	bx lr
	.align 2, 0
_0804227C: .4byte 0x040000D4
_08042280: .4byte 0x8100C000

	thumb_func_start FUN_08042284
FUN_08042284: @ 0x08042284
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r1, _080422A0 @ => 0x040000D4
	mov r0, sp
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _080422A4 @ => 0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	bx lr
	.align 2, 0
_080422A0: .4byte 0x040000D4
_080422A4: .4byte 0x85000100

	thumb_func_start FUN_080422A8
FUN_080422A8: @ 0x080422A8
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _080422C8 @ => 0x040000D4
	mov r0, sp
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _080422CC @ => 0x81000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	bx lr
	.align 2, 0
_080422C8: .4byte 0x040000D4
_080422CC: .4byte 0x81000200
