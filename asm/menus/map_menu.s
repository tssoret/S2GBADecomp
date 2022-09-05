.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start MapMenu_Init
MapMenu_Init: @ 0x08053A1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r0, _08053C40 @ => 0x03002B88
	mov sb, r0
	movs r0, #1
	rsbs r0, r0, #0
	mov r1, sb
	str r0, [r1, #0x70]
	str r0, [r1, #0x74]
	movs r0, #0x20
	str r0, [r1, #0x78]
	add r1, sp, #0x18
	movs r0, #0
	strh r0, [r1]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _08053C44 @ => 0x01008000
	add r0, sp, #0x18
	bl SVC_CpuSet
	movs r0, #0
	bl FUN_0800C558
	movs r0, #0x80
	lsls r0, r0, #5
	bl FUN_0800C5EC
	movs r0, #0
	bl FUN_0805273C
	ldr r0, _08053C48 @ => 0x08090264
	ldr r0, [r0]
	mov r8, r0
	movs r0, #0
	mov r1, r8
	bl FUN_0800C418
	ldr r0, _08053C4C @ => 0x08090268
	ldr r6, [r0]
	movs r0, #1
	adds r1, r6, #0
	bl FUN_0800C418
	ldr r0, _08053C50 @ => 0x0809026C
	ldr r5, [r0]
	movs r0, #2
	adds r1, r5, #0
	bl FUN_0800C418
	ldr r0, _08053C54 @ => 0x08090270
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C418
	ldr r0, _08053C58 @ => 0x080907D0
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	mov r1, r8
	adds r2, r6, #0
	bl FUN_08046FC8
	ldr r0, _08053C5C @ => 0x08CC8EC8
	bl FUN_080470E8
	ldr r0, _08053C60 @ => 0x08CC92D0
	bl FUN_080470AC
	ldr r0, _08053C64 @ => 0x08CC96D8
	bl FUN_0804713C
	ldr r0, _08053C68 @ => 0x08CC9AE0
	movs r1, #0
	movs r2, #0
	bl FUN_08047174
	ldr r0, _08053C6C @ => 0x08CCFAE8
	movs r1, #0
	movs r2, #0
	bl FUN_08047204
	ldr r0, _08053C70 @ => 0x08CCFB20
	movs r1, #0
	movs r2, #0
	bl FUN_08047294
	mov r0, sb
	adds r0, #0x60
	movs r1, #0
	bl FUN_08011240
	movs r0, #0
	bl FUN_080111E8
	mov r2, sb
	str r0, [r2, #0x5c]
	movs r0, #1
	movs r1, #2
	movs r2, #6
	movs r3, #6
	bl FUN_08021428
	ldr r1, _08053C74 @ => 0x05000200
	movs r0, #0xa0
	lsls r0, r0, #0x13
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	movs r1, #0
	movs r7, #0
	movs r0, #0
	mov sl, r0
	ldr r2, _08053C78 @ => 0x08CF2CEC
	str r1, [sp]
	str r1, [sp, #4]
	movs r0, #0x10
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	mov r3, sl
	str r3, [sp, #0x10]
	str r1, [sp, #0x14]
	add r0, sp, #0x1c
	movs r1, #3
	movs r3, #1
	bl FUN_0800D83C
	movs r2, #0x80
	lsls r2, r2, #0xe
	movs r0, #3
	movs r1, #0
	bl FUN_0800CB80
	movs r5, #0
	add r7, sp, #0x20
	ldr r6, _08053C7C @ => 0x08090314
	movs r4, #0x18
	rsbs r4, r4, #0
	adds r4, r4, r6
	mov r8, r4
	movs r0, #4
	add sb, r0
_08053B46:
	movs r0, #0x2c
	adds r2, r5, #0
	muls r2, r0, r2
	adds r4, r2, r6
	adds r0, r6, #0
	subs r0, #0x1c
	adds r0, r2, r0
	movs r3, #0
	ldrsh r1, [r0, r3]
	add r2, r8
	movs r0, #0
	ldrsh r2, [r2, r0]
	movs r0, #3
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xe
	bl FUN_0802D680
	mov r1, sb
	adds r1, #4
	mov sb, r1
	subs r1, #4
	stm r1!, {r0}
	ldr r1, [r0, #0xc]
	movs r2, #2
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #0xc]
	ldr r1, _08053C80 @ => 0x09FC1EC4
	ldr r2, [r1]
	adds r1, r4, #0
	movs r3, #0
	bl FUN_0800192C
	adds r5, #1
	cmp r5, #0x13
	ble _08053B46
	adds r0, r7, #0
	bl FUN_08053E7C
	ldr r5, _08053C40 @ => 0x03002B88
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	str r0, [r5, #0x68]
	str r1, [r5, #0x6c]
	ldr r4, _08053C84 @ => 0x080907F0
	ldr r1, [r5, #0x68]
	asrs r1, r1, #0x10
	ldr r2, [r5, #0x6c]
	asrs r2, r2, #0x10
	movs r6, #1
	str r6, [sp]
	adds r0, r4, #0
	movs r3, #0xd
	bl FUN_0802D680
	ldr r2, _08053C88 @ => 0x09FC1EC8
	mov r8, r2
	ldr r2, [r2]
	adds r1, r4, #0
	movs r3, #0
	bl FUN_0800192C
	movs r0, #0
	str r0, [r5, #0x54]
	str r0, [r5, #0x58]
	ldr r4, _08053C8C @ => 0x080907E0
	ldr r1, [r5, #0x68]
	asrs r1, r1, #0x10
	ldr r2, [r5, #0x6c]
	asrs r2, r2, #0x10
	str r6, [sp]
	adds r0, r4, #0
	movs r3, #0xf
	bl FUN_0802D680
	str r0, [r5]
	mov r3, r8
	ldr r2, [r3]
	adds r1, r4, #0
	movs r3, #0
	bl FUN_0800192C
	ldr r4, _08053C90 @ => 0x030042B0
	ldrb r0, [r4, #6]
	bl FUN_08010A08
	ldrb r1, [r4, #6]
	movs r0, #0
	bl FUN_08011300
	ldrb r1, [r4, #6]
	movs r0, #0
	bl FUN_08011024
	ldr r0, [r5]
	ldr r1, _08053C94 @ => 0x080907D8
	ldr r2, [r1, #4]
	ldr r1, [r1]
	ldrb r3, [r4, #6]
	bl FUN_0801119C
	bl FUN_08047468
	ldrb r1, [r4, #6]
	movs r0, #1
	bl FUN_0804645C
	ldrb r0, [r4, #6]
	bl FUN_08010A9C
	bl FUN_08046398
	movs r0, #0x3f
	movs r1, #0
	bl FUN_080457F4
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08053C40: .4byte gUnk_03002B88
_08053C44: .4byte 0x01008000
_08053C48: .4byte ROMREF_08090264
_08053C4C: .4byte ROMREF_08090268
_08053C50: .4byte ROMREF_0809026C
_08053C54: .4byte ROMREF_08090270
_08053C58: .4byte ROMREF_080907D0
_08053C5C: .4byte ROMREF_08CC8EC8
_08053C60: .4byte ROMREF_08CC92D0
_08053C64: .4byte ROMREF_08CC96D8
_08053C68: .4byte ROMREF_08CC9AE0
_08053C6C: .4byte ROMREF_08CCFAE8
_08053C70: .4byte ROMREF_08CCFB20
_08053C74: .4byte 0x05000200
_08053C78: .4byte ROMREF_08CF2CEC
_08053C7C: .4byte ROMREF_08090314
_08053C80: .4byte ROMREF_09FC1EC4
_08053C84: .4byte ROMREF_080907F0
_08053C88: .4byte ROMREF_09FC1EC8
_08053C8C: .4byte ROMREF_080907E0
_08053C90: .4byte gUnk_030042B0
_08053C94: .4byte ROMREF_080907D8

	thumb_func_start FUN_08053C98
FUN_08053C98: @ 0x08053C98
	push {r4, r5, lr}
	ldr r1, _08053CD0 @ => 0x030042B0
	ldrh r2, [r1, #8]
	movs r0, #0x40
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r5, r1, #0
	cmp r3, #0
	beq _08053CE0
	ldr r0, _08053CD4 @ => 0x03002B88
	ldr r2, [r0]
	ldr r1, [r2, #0x2c]
	adds r4, r0, #0
	cmp r1, #0
	ble _08053CBC
	movs r0, #0
	str r0, [r2, #0x2c]
_08053CBC:
	ldr r1, [r4]
	ldr r0, [r1, #0x2c]
	ldr r2, _08053CD8 @ => 0xFFFD8000
	adds r0, r0, r2
	str r0, [r1, #0x2c]
	ldr r2, _08053CDC @ => 0xFFFB0000
	cmp r0, r2
	bge _08053D20
	str r2, [r1, #0x2c]
	b _08053D20
	.align 2, 0
_08053CD0: .4byte gUnk_030042B0
_08053CD4: .4byte gUnk_03002B88
_08053CD8: .4byte 0xFFFD8000
_08053CDC: .4byte 0xFFFB0000
_08053CE0:
	movs r0, #0x80
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08053D18
	ldr r0, _08053D14 @ => 0x03002B88
	ldr r2, [r0]
	ldr r1, [r2, #0x2c]
	adds r4, r0, #0
	cmp r1, #0
	bge _08053CFA
	str r3, [r2, #0x2c]
_08053CFA:
	ldr r1, [r4]
	ldr r0, [r1, #0x2c]
	movs r2, #0xa0
	lsls r2, r2, #0xa
	adds r0, r0, r2
	str r0, [r1, #0x2c]
	movs r2, #0xa0
	lsls r2, r2, #0xb
	cmp r0, r2
	ble _08053D20
	str r2, [r1, #0x2c]
	b _08053D20
	.align 2, 0
_08053D14: .4byte gUnk_03002B88
_08053D18:
	ldr r1, _08053D50 @ => 0x03002B88
	ldr r0, [r1]
	str r2, [r0, #0x2c]
	adds r4, r1, #0
_08053D20:
	ldrh r1, [r5, #8]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08053D5C
	ldr r1, [r4]
	ldr r0, [r1, #0x28]
	cmp r0, #0
	ble _08053D3A
	movs r0, #0
	str r0, [r1, #0x28]
_08053D3A:
	ldr r1, [r4]
	ldr r0, [r1, #0x28]
	ldr r2, _08053D54 @ => 0xFFFD8000
	adds r0, r0, r2
	str r0, [r1, #0x28]
	ldr r2, _08053D58 @ => 0xFFFB0000
	cmp r0, r2
	bge _08053D8E
	str r2, [r1, #0x28]
	b _08053D8E
	.align 2, 0
_08053D50: .4byte gUnk_03002B88
_08053D54: .4byte 0xFFFD8000
_08053D58: .4byte 0xFFFB0000
_08053D5C:
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08053D8A
	ldr r1, [r4]
	ldr r0, [r1, #0x28]
	cmp r0, #0
	bge _08053D72
	str r2, [r1, #0x28]
_08053D72:
	ldr r1, [r4]
	ldr r0, [r1, #0x28]
	movs r2, #0xa0
	lsls r2, r2, #0xa
	adds r0, r0, r2
	str r0, [r1, #0x28]
	movs r2, #0xa0
	lsls r2, r2, #0xb
	cmp r0, r2
	ble _08053D8E
	str r2, [r1, #0x28]
	b _08053D8E
_08053D8A:
	ldr r0, [r4]
	str r1, [r0, #0x28]
_08053D8E:
	ldr r1, [r4]
	ldr r0, [r1, #0x18]
	movs r2, #0xa0
	lsls r2, r2, #0xc
	cmp r0, r2
	bgt _08053DA6
	str r2, [r1, #0x18]
	ldr r0, [r1, #0x28]
	cmp r0, #0
	bge _08053DA6
	movs r0, #0
	str r0, [r1, #0x28]
_08053DA6:
	ldr r1, [r4]
	ldr r0, [r1, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #0xd
	cmp r0, r2
	bgt _08053DBE
	str r2, [r1, #0x1c]
	ldr r0, [r1, #0x2c]
	cmp r0, #0
	bge _08053DBE
	movs r0, #0
	str r0, [r1, #0x2c]
_08053DBE:
	ldr r2, [r4]
	ldr r1, [r2, #0x18]
	ldr r0, _08053DF4 @ => 0x03F5FFFF
	cmp r1, r0
	ble _08053DD6
	adds r0, #1
	str r0, [r2, #0x18]
	ldr r0, [r2, #0x28]
	cmp r0, #0
	ble _08053DD6
	movs r0, #0
	str r0, [r2, #0x28]
_08053DD6:
	ldr r2, [r4]
	ldr r1, [r2, #0x1c]
	ldr r0, _08053DF8 @ => 0x01E1FFFF
	cmp r1, r0
	ble _08053DEE
	adds r0, #1
	str r0, [r2, #0x1c]
	ldr r0, [r2, #0x2c]
	cmp r0, #0
	ble _08053DEE
	movs r0, #0
	str r0, [r2, #0x2c]
_08053DEE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08053DF4: .4byte 0x03F5FFFF
_08053DF8: .4byte 0x01E1FFFF

	thumb_func_start FUN_08053DFC
FUN_08053DFC: @ 0x08053DFC
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	movs r7, #1
	rsbs r7, r7, #0
	adds r6, r7, #0
	movs r4, #0
_08053E08:
	mov r0, sp
	adds r1, r4, #0
	bl FUN_080540E4
	ldr r2, [sp]
	ldr r3, [sp, #4]
	ldr r5, _08053E68 @ => 0x03002B88
	ldr r0, [r5]
	ldr r1, [r0, #0x1c]
	ldr r0, [r0, #0x18]
	bl FUN_0802C538
	cmp r0, r6
	bhs _08053E28
	adds r7, r4, #0
	adds r6, r0, #0
_08053E28:
	adds r4, #1
	cmp r4, #0x13
	ble _08053E08
	adds r3, r5, #0
	ldr r0, [r3, #0x70]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _08053E4C
	lsls r0, r0, #2
	adds r1, r3, #4
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
_08053E4C:
	ldr r0, _08053E6C @ => 0x004FFFFF
	cmp r6, r0
	bhi _08053E70
	str r7, [r3, #0x70]
	lsls r0, r7, #2
	adds r1, r3, #4
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0xc]
	b _08053E72
	.align 2, 0
_08053E68: .4byte gUnk_03002B88
_08053E6C: .4byte 0x004FFFFF
_08053E70:
	str r4, [r5, #0x70]
_08053E72:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08053E7C
FUN_08053E7C: @ 0x08053E7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r0, _08053EAC @ => 0x08090800
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, _08053EB0 @ => 0x08090668
	ldr r0, _08053EB4 @ => 0x030043A0
	ldr r1, [r0]
	lsls r1, r1, #3
	adds r0, r2, #4
	adds r0, r1, r0
	ldr r3, [r0]
	adds r1, r1, r2
	ldr r1, [r1]
	cmp r1, #1
	beq _08053EB8
	cmp r1, #1
	blo _08053F14
	cmp r1, #2
	beq _08053F04
	b _08053F14
	.align 2, 0
_08053EAC: .4byte ROMREF_08090800
_08053EB0: .4byte ROMREF_08090668
_08053EB4: .4byte gUnk_030043A0
_08053EB8:
	ldr r0, _08053EFC @ => 0x08090274
	lsls r4, r3, #1
	adds r4, r4, r3
	lsls r4, r4, #2
	adds r4, r4, r0
	movs r2, #0
	ldrsh r6, [r4, r2]
	ldr r0, _08053F00 @ => 0x03004200
	ldr r5, [r0]
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	movs r1, #0xa
	bl __divsi3
	adds r0, r6, r0
	str r0, [sp, #8]
	movs r2, #2
	ldrsh r4, [r4, r2]
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	movs r1, #0xa
	bl __divsi3
	adds r4, r4, r0
	subs r4, #6
	str r4, [sp, #0xc]
	ldr r2, [sp, #8]
	lsls r2, r2, #0x10
	str r2, [sp, #8]
	adds r0, r4, #0
	lsls r0, r0, #0x10
	str r0, [sp, #0xc]
	b _08053F14
	.align 2, 0
_08053EFC: .4byte ROMREF_08090274
_08053F00: .4byte gUnk_03004200
_08053F04:
	mov r0, sp
	adds r1, r3, #0
	bl FUN_080540E4
	ldr r1, [sp]
	ldr r2, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
_08053F14:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	str r0, [r7]
	str r1, [r7, #4]
	adds r0, r7, #0
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r2}
	bx r2
	.align 2, 0

	thumb_func_start FUN_08053F28
FUN_08053F28: @ 0x08053F28
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r6, _08053F54 @ => 0x03002B88
	ldr r0, [r6, #0x74]
	ldr r1, [r6, #0x70]
	cmp r0, r1
	bne _08053F58
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0805400E
	ldr r0, [r6, #0x78]
	cmp r0, #0
	ble _0805400E
	subs r0, #4
	str r0, [r6, #0x78]
	ldr r1, [r6, #0x54]
	ldr r0, [r1, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #0xb
	b _08053F68
	.align 2, 0
_08053F54: .4byte gUnk_03002B88
_08053F58:
	ldr r0, [r6, #0x78]
	cmp r0, #0x1f
	bgt _08053F84
	adds r0, #4
	str r0, [r6, #0x78]
	ldr r1, [r6, #0x54]
	ldr r0, [r1, #0x1c]
	ldr r2, _08053F80 @ => 0xFFFC0000
_08053F68:
	adds r0, r0, r2
	str r0, [r1, #0x1c]
	ldr r1, [r6, #0x58]
	ldr r0, [r1, #0x1c]
	adds r0, r0, r2
	str r0, [r1, #0x1c]
	ldr r2, [r6, #0x78]
	movs r0, #3
	movs r1, #0
	bl FUN_0800CCCC
	b _0805400E
	.align 2, 0
_08053F80: .4byte 0xFFFC0000
_08053F84:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08054008
	ldr r2, [r6, #0x54]
	cmp r2, #0
	beq _08053F9A
	ldr r0, [r2, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0xc]
_08053F9A:
	ldr r0, [r6, #0x70]
	movs r5, #0x2c
	muls r0, r5, r0
	ldr r4, _08053FE8 @ => 0x08090304
	adds r0, r0, r4
	movs r2, #0x1c
	rsbs r2, r2, #0
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r3, #0xc
	bl FUN_0802D680
	str r0, [r6, #0x54]
	ldr r1, [r0, #0xc]
	movs r7, #0x80
	lsls r7, r7, #0xe
	orrs r1, r7
	str r1, [r0, #0xc]
	movs r0, #3
	movs r1, #1
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, [r6, #0x70]
	muls r0, r5, r0
	subs r4, #4
	adds r0, r0, r4
	ldr r0, [r0]
	bl FUN_08050820
	adds r1, r0, #0
	str r1, [sp, #4]
	ldr r0, [r6, #0x58]
	cmp r0, #0
	beq _08053FEC
	bl FUN_08050BC8
	b _08053FFA
	.align 2, 0
_08053FE8: .4byte ROMREF_08090304
_08053FEC:
	add r0, sp, #4
	bl FUN_08050940
	str r0, [r6, #0x58]
	ldr r1, [r0, #0xc]
	orrs r1, r7
	str r1, [r0, #0xc]
_08053FFA:
	ldr r0, _08054018 @ => 0x03002B88
	ldr r0, [r0, #0x58]
	movs r2, #0x14
	rsbs r2, r2, #0
	movs r1, #0x8c
	bl FUN_08050BDC
_08054008:
	ldr r1, _08054018 @ => 0x03002B88
	ldr r0, [r1, #0x70]
	str r0, [r1, #0x74]
_0805400E:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08054018: .4byte gUnk_03002B88

	thumb_func_start MapMenu_Handler
MapMenu_Handler: @ 0x0805401C
	push {r4, lr}
	ldr r4, _08054064 @ => 0x030042B0
	ldrb r1, [r4, #6]
	movs r0, #0
	bl FUN_0804645C
	ldrb r0, [r4, #6]
	bl FUN_08010A9C
	bl FUN_08053C98
	bl FUN_08053DFC
	bl FUN_08053F28
	ldrh r1, [r4, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0805407A
	ldr r4, _08054068 @ => 0x03002B88
	ldr r0, [r4]
	ldr r1, [r0, #0x1c]
	ldr r0, [r0, #0x18]
	ldr r2, [r4, #0x68]
	ldr r3, [r4, #0x6c]
	bl FUN_0802C538
	ldr r1, _0805406C @ => 0x0007FFFF
	cmp r0, r1
	bhi _08054070
	movs r0, #9
	bl FUN_0802CEC4
	b _0805407A
	.align 2, 0
_08054064: .4byte gUnk_030042B0
_08054068: .4byte gUnk_03002B88
_0805406C: .4byte 0x0007FFFF
_08054070:
	ldr r2, [r4]
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x6c]
	str r0, [r2, #0x18]
	str r1, [r2, #0x1c]
_0805407A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start MapMenu_Terminate
MapMenu_Terminate: @ 0x08054080
	push {lr}
	movs r0, #0x3f
	movs r1, #0
	bl FUN_0804582C
	bl FUN_08015834
	ldr r0, _080540D8 @ => 0x03002C40
	bl FUN_08000BF8
	bl FUN_0800CB20
	bl FUN_0802D8A8
	movs r0, #0
	bl FUN_08047074
	bl FUN_08046D60
	bl FUN_08039574
	bl FUN_08047464
	ldr r0, _080540DC @ => 0x030042B0
	ldrb r0, [r0, #6]
	bl FUN_08047074
	movs r0, #0
	bl FUN_08010A08
	movs r0, #0
	movs r1, #0
	bl FUN_08011024
	ldr r1, _080540E0 @ => 0x03002B88
	ldr r0, [r1, #0x5c]
	ldr r2, [r1, #0x64]
	ldr r1, [r1, #0x60]
	movs r3, #0
	bl FUN_0801119C
	pop {r0}
	bx r0
	.align 2, 0
_080540D8: .4byte gUnk_03002C40
_080540DC: .4byte gUnk_030042B0
_080540E0: .4byte gUnk_03002B88
