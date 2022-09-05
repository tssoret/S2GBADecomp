.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_080439B4
FUN_080439B4: @ 0x080439B4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [sp, #0x14]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r0, #0x19
	str r0, [r5, #0xc]
	adds r4, r5, #0
	adds r4, #0xa9
	movs r0, #3
	ands r2, r0
	lsls r2, r2, #2
	ldrb r3, [r4]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	lsls r1, r1, #4
	movs r2, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08001FB0
	adds r0, r5, #0
	movs r1, #0xb
	bl FUN_08001F84
	cmp r6, #7
	bne _08043A1C
	ldr r1, _08043A18 @ => 0x08078C5C
	lsls r0, r7, #3
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r1, [r4]
	lsrs r1, r1, #4
	lsls r1, r1, #4
	movs r2, #0x10
	bl FUN_080157D8
	b _08043A30
	.align 2, 0
_08043A18: .4byte ROMREF_08078C5C
_08043A1C:
	lsls r0, r6, #4
	ldr r1, _08043A38 @ => 0x08078B78
	adds r0, r0, r1
	ldr r0, [r0, #8]
	ldrb r1, [r4]
	lsrs r1, r1, #4
	lsls r1, r1, #4
	movs r2, #0x10
	bl FUN_0801579C
_08043A30:
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08043A38: .4byte ROMREF_08078B78

	thumb_func_start FUN_08043A3C
FUN_08043A3C: @ 0x08043A3C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r0, [sp, #0x20]
	ldr r4, [sp, #0x24]
	bl FUN_08050820
	str r0, [sp]
	str r4, [sp, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	mov r2, r8
	mov r3, sb
	bl FUN_08020098
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start FUN_08043A74
FUN_08043A74: @ 0x08043A74
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r4, _08043ABC @ => 0x03005CB0
	ldr r6, [r4]
	ldr r2, _08043AC0 @ => 0x030042B0
	ldrh r1, [r2, #0xc]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08043A98
	ldrh r0, [r2, #6]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl FUN_08024A88
_08043A98:
	ldr r2, [r4]
	cmp r6, r2
	beq _08043ACA
	ldr r5, _08043AC4 @ => 0x03005CB4
	ldr r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, r0, r2
	cmp r0, #0x19
	bhi _08043AC8
	bl FUN_08043AD4
	ldr r0, [r5]
	movs r2, #0
	ldrsh r1, [r4, r2]
	bl FUN_08043500
	b _08043ACA
	.align 2, 0
_08043ABC: .4byte gUnk_03005CB0
_08043AC0: .4byte gUnk_030042B0
_08043AC4: .4byte gUnk_03005CB4
_08043AC8:
	str r6, [r4]
_08043ACA:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08043AD4
FUN_08043AD4: @ 0x08043AD4
	push {r4, lr}
	ldr r0, _08043B00 @ => 0x03004790
	ldr r0, [r0, #0x38]
	ldr r2, _08043B04 @ => 0x08078C18
	movs r3, #0xc
	ldrsh r1, [r2, r3]
	lsls r1, r1, #0x10
	movs r3, #0xe
	ldrsh r2, [r2, r3]
	ldr r3, _08043B08 @ => 0x03005CB0
	ldr r4, [r3]
	lsls r3, r4, #3
	subs r3, r3, r4
	lsls r3, r3, #2
	subs r3, r3, r4
	adds r2, r2, r3
	lsls r2, r2, #0x10
	bl FUN_08001728
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08043B00: .4byte gUnk_03004790
_08043B04: .4byte ROMREF_08078C18
_08043B08: .4byte gUnk_03005CB0

	thumb_func_start FUN_08043B0C
FUN_08043B0C: @ 0x08043B0C
	push {r4, r5, r6, lr}
	ldr r0, _08043B80 @ => 0x03005CE0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08043BB0
	movs r5, #0
	ldr r6, _08043B84 @ => 0x03005CF0
_08043B1A:
	lsls r0, r5, #3
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	cmp r1, #0
	beq _08043BA6
	adds r4, r0, #0
	ldr r0, [r1, #0xc]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08043B3E
	adds r0, r5, #0
	bl FUN_08043FE0
_08043B3E:
	ldr r2, [r4, #0x14]
	ldrb r0, [r2]
	cmp r0, #0
	blt _08043BA0
	cmp r0, #1
	ble _08043B98
	cmp r0, #3
	bgt _08043BA0
	ldr r1, _08043B88 @ => 0x09FBD8D4
	ldr r0, [r4, #0x18]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08043B92
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #1
	bne _08043B8C
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r0, [r0]
	cmp r0, #1
	bne _08043B8C
	ldr r1, [r4, #0x14]
	movs r0, #3
	strb r0, [r1]
	b _08043BA6
	.align 2, 0
_08043B80: .4byte gUnk_03005CE0
_08043B84: .4byte gUnk_03005CF0
_08043B88: .4byte ROMREF_09FBD8D4
_08043B8C:
	ldr r0, [r4, #0x14]
	strb r1, [r0]
	b _08043BA6
_08043B92:
	movs r0, #3
	strb r0, [r2]
	b _08043BA6
_08043B98:
	adds r0, r5, #0
	bl FUN_08043FE0
	b _08043BA6
_08043BA0:
	adds r0, r5, #0
	bl FUN_08043FE0
_08043BA6:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _08043B1A
_08043BB0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08043BB8
FUN_08043BB8: @ 0x08043BB8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r4, r1, #0
	mov r8, r2
	mov sb, r3
	movs r2, #0
	movs r1, #0
	ldr r0, _08043C70 @ => 0x03005CF0
	mov ip, r0
_08043BD0:
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r3, r0, #2
	mov r0, ip
	adds r6, r3, r0
	ldr r5, [r6]
	cmp r5, #0
	bne _08043C7C
	str r7, [r6]
	adds r0, #4
	adds r0, r3, r0
	ldr r1, [r4]
	str r1, [r0]
	mov r0, ip
	adds r0, #8
	adds r0, r3, r0
	ldr r1, [r4, #4]
	str r1, [r0]
	mov r0, ip
	adds r0, #0xc
	adds r0, r3, r0
	str r5, [r0]
	mov r0, ip
	adds r0, #0x10
	adds r0, r3, r0
	str r5, [r0]
	mov r4, ip
	adds r4, #0x14
	adds r4, r3, r4
	mov r1, r8
	str r1, [r4]
	mov r0, ip
	adds r0, #0x18
	adds r0, r3, r0
	mov r1, sb
	str r1, [r0]
	mov r2, ip
	adds r2, #0x1c
	adds r2, r3, r2
	ldr r0, [r7, #0xc]
	ldr r1, _08043C74 @ => 0x00010240
	ands r0, r1
	str r0, [r2]
	movs r0, #0x8c
	lsls r0, r0, #1
	add r0, ip
	adds r0, r3, r0
	ldr r1, [sp, #0x1c]
	str r1, [r0]
	movs r0, #0x8e
	lsls r0, r0, #1
	add r0, ip
	adds r0, r3, r0
	str r5, [r0]
	movs r0, #0x90
	lsls r0, r0, #1
	add r0, ip
	adds r0, r3, r0
	str r5, [r0]
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #0xc8
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x80
	lsls r1, r1, #0x11
	bl FUN_08002038
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1]
	ldr r1, _08043C78 @ => 0x03005CE0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r2, #1
	b _08043C86
	.align 2, 0
_08043C70: .4byte gUnk_03005CF0
_08043C74: .4byte 0x00010240
_08043C78: .4byte gUnk_03005CE0
_08043C7C:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _08043BD0
_08043C86:
	adds r0, r2, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_08043C94
FUN_08043C94: @ 0x08043C94
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, [r4, #4]
	ldr r3, [r4, #8]
	ldr r0, [r4]
	ldr r6, [r0, #0x18]
	ldr r7, [r0, #0x1c]
	ldr r0, [r0, #0x14]
	str r0, [sp]
	adds r1, r7, #0
	adds r0, r6, #0
	bl FUN_08001D30
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	mov r8, r2
	ldr r3, [r4]
	adds r0, r3, #0
	adds r0, #0x78
	ldrh r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	cmp r2, #8
	bne _08043CDC
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _08043CEC
	movs r5, #1
	b _08043D1C
_08043CDC:
	cmp r0, #1
	bne _08043CF8
	ldr r0, _08043CF4 @ => 0x09FBD8D4
	ldr r1, [r4, #0x18]
	lsls r1, r1, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
_08043CEC:
	str r0, [r4, #0x18]
	movs r5, #2
	b _08043D1C
	.align 2, 0
_08043CF4: .4byte ROMREF_09FBD8D4
_08043CF8:
	movs r5, #2
	ldrb r0, [r3, #0x12]
	cmp r0, r2
	beq _08043D08
	adds r0, r3, #0
	adds r1, r2, #0
	bl FUN_08001FF0
_08043D08:
	ldr r2, [r4]
	adds r0, r2, #0
	adds r0, #0x28
	ldr r1, [r2, #0xc]
	ldr r3, [r2, #0x14]
	mov r2, r8
	bl FUN_08001030
	str r6, [r4, #0xc]
	str r7, [r4, #0x10]
_08043D1C:
	adds r0, r5, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08043D2C
FUN_08043D2C: @ 0x08043D2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #0x11
	bl FUN_08002038
	ldr r1, [r5]
	movs r2, #0x1a
	ldrsh r0, [r1, r2]
	str r0, [sp, #4]
	movs r2, #0x1e
	ldrsh r0, [r1, r2]
	str r0, [sp, #8]
	movs r1, #6
	ldrsh r0, [r5, r1]
	str r0, [sp, #0xc]
	movs r2, #0xa
	ldrsh r0, [r5, r2]
	add r4, sp, #0xc
	str r0, [r4, #4]
	ldr r0, _08043DEC @ => 0x03004398
	mov r8, r0
	ldr r0, [r0]
	add r7, sp, #0x14
	add r1, sp, #4
	adds r2, r7, #0
	bl FUN_0805374C
	mov r1, r8
	ldr r0, [r1]
	add r6, sp, #0x18
	adds r1, r4, #0
	adds r2, r6, #0
	bl FUN_0805374C
	movs r2, #0
	mov sb, r2
	movs r0, #2
	mov sl, r0
	ldrh r0, [r7]
	ldrh r1, [r6]
	cmp r0, r1
	beq _08043E16
	mov r2, r8
	ldr r0, [r2]
	movs r2, #0x8a
	lsls r2, r2, #1
	adds r1, r5, r2
	ldrb r3, [r1]
	movs r1, #1
	mov r8, r1
	str r1, [sp]
	adds r1, r7, #0
	adds r2, r6, #0
	bl FUN_0804A06C
	adds r4, r0, #0
	bl FUN_0804A408
	adds r1, r0, #0
	cmp r4, #1
	beq _08043DC4
	cmp r1, #2
	bne _08043DF0
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #1
	bne _08043DF0
_08043DC4:
	cmp r1, #2
	bne _08043DD2
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r2, r8
	str r2, [r0]
_08043DD2:
	adds r0, r5, #0
	adds r0, #0x20
	movs r1, #0x1e
	bl FUN_0804A3BC
	movs r0, #6
	str r0, [r5, #0x18]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r2, sb
	strb r2, [r0]
	b _08043E1A
	.align 2, 0
_08043DEC: .4byte gUnk_03004398
_08043DF0:
	cmp r4, #2
	beq _08043E16
	ldr r1, _08043E0C @ => 0x09FBD8D4
	ldr r0, [r5, #0x18]
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #7
	beq _08043E10
	str r0, [r5, #0x18]
	movs r1, #2
	mov sl, r1
	b _08043E1A
	.align 2, 0
_08043E0C: .4byte ROMREF_09FBD8D4
_08043E10:
	movs r2, #3
	mov sl, r2
	b _08043E1A
_08043E16:
	movs r0, #1
	mov sb, r0
_08043E1A:
	mov r1, sb
	cmp r1, #1
	bne _08043E36
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #1
	bne _08043E32
	movs r0, #2
	str r0, [r5, #0x18]
	b _08043E34
_08043E32:
	movs r0, #1
_08043E34:
	mov sl, r0
_08043E36:
	mov r0, sl
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_08043E48
FUN_08043E48: @ 0x08043E48
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r2, [r5]
	ldr r0, [r2, #0x18]
	ldr r1, [r2, #0x1c]
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r1, r1, r5
	mov sb, r1
	ldrb r6, [r1]
	lsls r1, r6, #3
	movs r7, #0x20
	adds r7, r7, r5
	mov r8, r7
	adds r0, r7, r1
	ldr r0, [r0]
	lsls r3, r0, #0x10
	adds r7, r5, #0
	adds r7, #0x24
	adds r1, r7, r1
	ldr r0, [r1]
	lsls r4, r0, #0x10
	ldr r0, [r2, #0x14]
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	adds r2, r3, #0
	adds r3, r4, #0
	bl FUN_08001D30
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r4, r1, #0
	cmp r1, #8
	bne _08043ED0
	adds r0, r6, #1
	mov r1, sb
	strb r0, [r1]
	lsls r1, r0, #3
	mov r2, r8
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08043F04
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08043F04
	ldr r0, [r5]
	bl FUN_08001848
	movs r7, #0x8c
	lsls r7, r7, #1
	adds r0, r5, r7
	ldr r0, [r0]
	cmp r0, #1
	bne _08043ECC
	movs r0, #4
	str r0, [r5, #0x18]
	b _08043F04
_08043ECC:
	movs r0, #1
	b _08043F06
_08043ED0:
	ldr r2, [r5]
	adds r0, r2, #0
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r0, #0
	beq _08043EE0
	movs r0, #3
	b _08043F06
_08043EE0:
	ldrb r0, [r2, #0x12]
	cmp r0, r1
	beq _08043EEC
	adds r0, r2, #0
	bl FUN_08001FF0
_08043EEC:
	ldr r2, [r5]
	adds r0, r2, #0
	adds r0, #0x28
	ldr r1, [r2, #0xc]
	ldr r3, [r2, #0x14]
	adds r2, r4, #0
	bl FUN_08001030
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	str r0, [r5, #0xc]
	str r1, [r5, #0x10]
_08043F04:
	movs r0, #2
_08043F06:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_08043F14
FUN_08043F14: @ 0x08043F14
	push {lr}
	ldr r1, _08043F2C @ => 0x03005CE0
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08043F30 @ => 0x03005CF0
	movs r2, #0x92
	lsls r2, r2, #1
	movs r1, #0
	bl FUN_0802CB40
	pop {r0}
	bx r0
	.align 2, 0
_08043F2C: .4byte gUnk_03005CE0
_08043F30: .4byte gUnk_03005CF0

	thumb_func_start FUN_08043F34
FUN_08043F34: @ 0x08043F34
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0
	ldr r6, _08043F64 @ => 0x03005CF0
_08043F3C:
	lsls r0, r4, #3
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	cmp r0, r5
	bne _08043F54
	adds r0, r4, #0
	bl FUN_08043FE0
_08043F54:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _08043F3C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08043F64: .4byte gUnk_03005CF0

	thumb_func_start FUN_08043F68
FUN_08043F68: @ 0x08043F68
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r2, #0
	ldr r3, _08043F90 @ => 0x03005CF0
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r5, r3, r0
	movs r6, #1
_08043F78:
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r2
	lsls r1, r0, #2
	adds r0, r1, r3
	ldr r0, [r0]
	cmp r0, r4
	bne _08043F94
	adds r0, r1, r5
	str r6, [r0]
	b _08043F9E
	.align 2, 0
_08043F90: .4byte gUnk_03005CF0
_08043F94:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _08043F78
_08043F9E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start FUN_08043FA4
FUN_08043FA4: @ 0x08043FA4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r3, #0
	ldr r5, _08043FCC @ => 0x03005CF0
	movs r6, #0x8a
	lsls r6, r6, #1
_08043FB4:
	lsls r0, r3, #3
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r2, r0, r5
	ldr r0, [r2]
	cmp r0, r4
	bne _08043FD0
	adds r0, r2, r6
	strb r1, [r0]
	b _08043FDA
	.align 2, 0
_08043FCC: .4byte gUnk_03005CF0
_08043FD0:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _08043FB4
_08043FDA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start FUN_08043FE0
FUN_08043FE0: @ 0x08043FE0
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r5, _08044030 @ => 0x03005CF0
	lsls r4, r0, #3
	adds r4, r4, r0
	lsls r4, r4, #3
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r6, r4, r5
	ldr r0, [r6]
	movs r1, #0x80
	lsls r1, r1, #0x11
	bl FUN_08002040
	ldr r0, [r6]
	adds r1, r5, #0
	adds r1, #0x1c
	adds r1, r4, r1
	ldr r1, [r1]
	bl FUN_08002038
	adds r5, #0x14
	adds r4, r4, r5
	ldr r1, [r4]
	movs r0, #0
	strb r0, [r1]
	movs r2, #0x92
	lsls r2, r2, #1
	adds r0, r6, #0
	movs r1, #0
	bl FUN_0802CB40
	ldr r1, _08044034 @ => 0x03005CE0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08044030: .4byte gUnk_03005CF0
_08044034: .4byte gUnk_03005CE0

	thumb_func_start FUN_08044038
FUN_08044038: @ 0x08044038
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl FUN_08001728
	ldr r0, [r4]
	bl FUN_08001848
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_08044054
FUN_08044054: @ 0x08044054
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r3, r1, #0
	ldr r4, _08044074 @ => 0x03005E20
	adds r2, r4, #0
	adds r2, #0xf4
	ldr r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	ble _08044086
	cmp r1, #3
	bgt _08044078
	movs r0, #4
	b _08044084
	.align 2, 0
_08044074: .4byte gUnk_03005E20
_08044078:
	adds r0, r4, #0
	adds r0, #0xf0
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	movs r0, #0
_08044084:
	str r0, [r2]
_08044086:
	adds r2, r5, #0
	cmp r3, #0
	beq _080440C0
	ldr r4, _080440A4 @ => 0x03005F14
	subs r5, r4, #4
_08044090:
	ldr r0, [r4]
	cmp r0, #0
	bne _080440A8
	ldr r0, [r5]
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r2]
	movs r0, #4
	b _080440B6
	.align 2, 0
_080440A4: .4byte gUnk_03005F14
_080440A8:
	ldr r0, [r5]
	ldrb r1, [r0]
	lsrs r1, r1, #4
	strb r1, [r2]
	adds r0, #1
	str r0, [r5]
	movs r0, #0
_080440B6:
	str r0, [r4]
	adds r2, #1
	subs r3, #1
	cmp r3, #0
	bne _08044090
_080440C0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080440C8
FUN_080440C8: @ 0x080440C8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r3, _080440EC @ => 0x03005E20
	adds r2, r3, #0
	adds r2, #0xf4
	ldr r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	ble _080440FE
	cmp r1, #6
	bgt _080440F0
	adds r0, r1, #1
	b _080440FC
	.align 2, 0
_080440EC: .4byte gUnk_03005E20
_080440F0:
	adds r0, r3, #0
	adds r0, #0xf0
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	movs r0, #0
_080440FC:
	str r0, [r2]
_080440FE:
	adds r3, r5, #0
	cmp r4, #0
	beq _08044136
	ldr r6, _08044140 @ => 0x03005F10
	adds r5, r6, #4
	movs r0, #3
	mov ip, r0
	movs r7, #0
	mov r8, r7
_08044110:
	ldr r2, [r6]
	ldrb r0, [r2]
	ldr r1, [r5]
	asrs r0, r1
	mov r7, ip
	ands r0, r7
	strb r0, [r3]
	adds r1, #2
	str r1, [r5]
	cmp r1, #7
	ble _0804412E
	adds r0, r2, #1
	str r0, [r6]
	mov r0, r8
	str r0, [r5]
_0804412E:
	adds r3, #1
	subs r4, #1
	cmp r4, #0
	bne _08044110
_08044136:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08044140: .4byte gUnk_03005F10

	thumb_func_start FUN_08044144
FUN_08044144: @ 0x08044144
	push {r4, r5, lr}
	adds r4, r0, #0
	bl FUN_080445E8
	bl FUN_0804DF78
	adds r0, r4, #0
	bl FUN_080446DC
	adds r5, r0, #0
	cmp r5, #0
	beq _08044168
	adds r0, r4, #0
	bl FUN_080446C0
	adds r5, r0, #0
	cmp r5, #0
	bne _08044170
_08044168:
	bl FUN_0804DF84
	movs r0, #0
	b _080441D0
_08044170:
	bl FUN_0804DF84
	adds r0, r4, #0
	bl FUN_08044690
	adds r5, r0, #0
	cmp r5, #0
	bne _08044184
	movs r0, #0
	b _080441D0
_08044184:
	ldr r2, _080441B0 @ => 0x03005E20
	lsls r0, r4, #2
	adds r1, r2, #0
	adds r1, #0xdc
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080441B4
	adds r1, #0x14
	ldr r0, [r2, #0x18]
	str r0, [r1]
	adds r1, #4
	movs r0, #0
	str r0, [r1]
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	subs r1, #0xd8
	adds r0, r0, r1
	bl FUN_080211D4
	b _080441C8
	.align 2, 0
_080441B0: .4byte gUnk_03005E20
_080441B4:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r1, r2, #0
	adds r1, #0x1c
	adds r0, r0, r1
	movs r1, #0
	movs r2, #0x30
	bl FUN_0802CB40
_080441C8:
	ldr r0, _080441D8 @ => 0x03005E20
	adds r0, #0xec
	str r4, [r0]
	adds r0, r5, #0
_080441D0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080441D8: .4byte gUnk_03005E20

	thumb_func_start FUN_080441DC
FUN_080441DC: @ 0x080441DC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r2, _08044210 @ => 0x03005E20
	adds r5, r2, #0
	adds r5, #0xf4
	ldr r3, [r5]
	movs r0, #3
	ands r0, r3
	cmp r0, #0
	ble _0804421E
	adds r4, r2, #0
	adds r4, #0xf0
	ldr r2, [r4]
	movs r1, #8
	subs r1, r1, r3
	movs r0, #0xff
	asrs r0, r1
	ldrb r1, [r2]
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r5]
	cmp r0, #3
	bgt _08044214
	movs r0, #4
	b _0804421C
	.align 2, 0
_08044210: .4byte gUnk_03005E20
_08044214:
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	movs r0, #0
_0804421C:
	str r0, [r5]
_0804421E:
	adds r4, r6, #0
	cmp r7, #0
	beq _0804426A
	ldr r6, _08044240 @ => 0x03005F14
	subs r5, r6, #4
	movs r0, #0xf
	mov ip, r0
_0804422C:
	ldr r0, [r6]
	cmp r0, #0
	bne _08044244
	ldr r2, [r5]
	ldrb r1, [r4]
	mov r0, ip
	ands r0, r1
	strb r0, [r2]
	movs r0, #4
	b _08044260
	.align 2, 0
_08044240: .4byte gUnk_03005F14
_08044244:
	ldr r3, [r5]
	ldrb r0, [r4]
	mov r1, ip
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3]
	mov r0, ip
	ands r0, r2
	adds r1, r1, r0
	strb r1, [r3]
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
	movs r0, #0
_08044260:
	str r0, [r6]
	adds r4, #1
	subs r7, #1
	cmp r7, #0
	bne _0804422C
_0804426A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_08044270
FUN_08044270: @ 0x08044270
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	ldr r2, _080442A4 @ => 0x03005E20
	adds r6, r2, #0
	adds r6, #0xf4
	ldr r3, [r6]
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	ble _080442B2
	adds r4, r2, #0
	adds r4, #0xf0
	ldr r2, [r4]
	movs r1, #8
	subs r1, r1, r3
	movs r0, #0xff
	asrs r0, r1
	ldrb r1, [r2]
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r6]
	cmp r0, #6
	bgt _080442A8
	adds r0, #1
	b _080442B0
	.align 2, 0
_080442A4: .4byte gUnk_03005E20
_080442A8:
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	movs r0, #0
_080442B0:
	str r0, [r6]
_080442B2:
	adds r6, r7, #0
	cmp r5, #0
	beq _080442FC
	ldr r4, _08044304 @ => 0x03005F10
	adds r3, r4, #4
_080442BC:
	ldr r2, [r4]
	ldr r0, [r3]
	movs r1, #8
	subs r1, r1, r0
	movs r0, #0xff
	asrs r0, r1
	ldrb r1, [r2]
	ands r0, r1
	strb r0, [r2]
	ldr r2, [r4]
	ldrb r1, [r6]
	movs r0, #3
	ands r0, r1
	ldr r1, [r3]
	lsls r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r3]
	adds r0, #2
	str r0, [r3]
	cmp r0, #7
	ble _080442F4
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	movs r0, #0
	str r0, [r3]
_080442F4:
	adds r6, #1
	subs r5, #1
	cmp r5, #0
	bne _080442BC
_080442FC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08044304: .4byte gUnk_03005F10

	thumb_func_start FUN_08044308
FUN_08044308: @ 0x08044308
	push {r4, r5, r6, lr}
	adds r3, r1, #0
	adds r6, r0, #0
	cmp r3, #0
	beq _08044356
	ldr r5, _0804435C @ => 0x03005F10
	adds r4, r5, #4
_08044316:
	ldr r2, [r5]
	ldr r0, [r4]
	movs r1, #8
	subs r1, r1, r0
	movs r0, #0xff
	asrs r0, r1
	ldrb r1, [r2]
	ands r0, r1
	strb r0, [r2]
	ldr r2, [r5]
	ldrb r1, [r6]
	movs r0, #1
	ands r0, r1
	ldr r1, [r4]
	lsls r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	cmp r0, #7
	ble _0804434E
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
	movs r0, #0
	str r0, [r4]
_0804434E:
	adds r6, #1
	subs r3, #1
	cmp r3, #0
	bne _08044316
_08044356:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804435C: .4byte gUnk_03005F10

	thumb_func_start FUN_08044360
FUN_08044360: @ 0x08044360
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r4, #0
	ldr r0, _080443B8 @ => 0x03005E3C
	mov sb, r0
_0804436E:
	movs r5, #1
	lsls r6, r4, #2
	lsls r7, r4, #1
	adds r0, r4, #1
	mov r8, r0
_08044378:
	adds r0, r4, #0
	bl FUN_080446C0
	adds r0, r4, #0
	bl FUN_08044690
	cmp r0, #0
	bne _08044390
	adds r0, r5, #0
	subs r5, #1
	cmp r0, #0
	bgt _08044378
_08044390:
	ldr r2, _080443BC @ => 0x03005E20
	adds r0, r2, #0
	adds r0, #0xdc
	adds r0, r6, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _080443C0
	adds r1, r2, #0
	adds r1, #0xf0
	ldr r0, [r2, #0x18]
	str r0, [r1]
	adds r1, #4
	movs r0, #0
	str r0, [r1]
	adds r0, r7, r4
	lsls r0, r0, #4
	add r0, sb
	bl FUN_080211D4
	b _080443CE
	.align 2, 0
_080443B8: .4byte gUnk_03005E3C
_080443BC: .4byte gUnk_03005E20
_080443C0:
	adds r0, r7, r4
	lsls r0, r0, #4
	add r0, sb
	movs r1, #0
	movs r2, #0x30
	bl FUN_0802CB40
_080443CE:
	mov r4, r8
	cmp r4, #3
	bls _0804436E
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_080443E0
FUN_080443E0: @ 0x080443E0
	push {r4, lr}
	sub sp, #0x18
	movs r0, #0
	movs r1, #0x18
	mov r2, sp
	bl FUN_0800B3A0
	cmp r0, #0
	beq _08044440
	ldr r4, _0804443C @ => 0x03005E20
	movs r0, #0
	strh r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0x18
	bl FUN_080446F8
	rsbs r0, r0, #0
	strh r0, [r4, #0xe]
	mov r2, sp
	movs r3, #0x80
	lsls r3, r3, #3
	ldr r1, [r4]
	ldr r0, [sp]
	cmp r1, r0
	bne _08044424
_08044412:
	adds r4, #4
	adds r2, #4
	subs r3, #1
	cmp r3, #0
	beq _08044440
	ldr r1, [r4]
	ldr r0, [r2]
	cmp r1, r0
	beq _08044412
_08044424:
	cmp r3, #0
	beq _08044440
	movs r1, #0x80
	lsls r1, r1, #5
	ldr r2, _0804443C @ => 0x03005E20
	movs r0, #0
	bl FUN_0800B3EC
	cmp r0, #0
	beq _08044440
	movs r0, #1
	b _08044442
	.align 2, 0
_0804443C: .4byte gUnk_03005E20
_08044440:
	movs r0, #0
_08044442:
	add sp, #0x18
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0804444C
FUN_0804444C: @ 0x0804444C
	push {r4, r5, r6, r7, lr}
	movs r7, #0x80
	lsls r7, r7, #5
	adds r0, r7, #0
	bl FUN_0802C9DC
	ldr r5, _080444A0 @ => 0x03005E20
	str r0, [r5, #0x18]
	bl FUN_0800B390
	bl FUN_0804475C
	cmp r0, #0
	bne _0804448E
	bl FUN_0804471C
	bl FUN_080444BC
	movs r4, #0
	adds r6, r5, #0
	adds r5, r7, #0
_08044476:
	adds r4, #1
	ldr r2, [r6, #0x18]
	adds r0, r5, #0
	movs r1, #0x80
	lsls r1, r1, #5
	bl FUN_0800B3EC
	movs r0, #0x80
	lsls r0, r0, #5
	adds r5, r5, r0
	cmp r4, #3
	bls _08044476
_0804448E:
	ldr r0, _080444A0 @ => 0x03005E20
	ldrb r0, [r0, #0xa]
	bl FUN_080507A4
	bl FUN_08044360
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080444A0: .4byte gUnk_03005E20

	thumb_func_start FUN_080444A4
FUN_080444A4: @ 0x080444A4
	push {lr}
	bl FUN_08050814
	ldr r1, _080444B8 @ => 0x03005E20
	strb r0, [r1, #0xa]
	movs r0, #1
	strb r0, [r1, #0xb]
	pop {r1}
	bx r1
	.align 2, 0
_080444B8: .4byte gUnk_03005E20

	thumb_func_start FUN_080444BC
FUN_080444BC: @ 0x080444BC
	push {lr}
	ldr r0, _080444D0 @ => 0x03005E20
	ldr r0, [r0, #0x18]
	movs r2, #0x80
	lsls r2, r2, #5
	movs r1, #0
	bl FUN_0802CB40
	pop {r0}
	bx r0
	.align 2, 0
_080444D0: .4byte gUnk_03005E20

	thumb_func_start FUN_080444D4
FUN_080444D4: @ 0x080444D4
	push {r4, r5, lr}
	ldr r5, _08044508 @ => 0x03005E20
	adds r4, r5, #0
	adds r4, #0xf0
	ldr r0, [r5, #0x18]
	str r0, [r4]
	adds r1, r5, #0
	adds r1, #0xf4
	movs r0, #0
	str r0, [r1]
	bl FUN_08020A84
	adds r2, r5, #0
	adds r2, #0xf8
	ldr r1, [r4]
	ldr r0, [r5, #0x18]
	subs r1, r1, r0
	str r1, [r2]
	adds r2, #4
	movs r0, #0x64
	muls r0, r1, r0
	lsrs r0, r0, #0xc
	str r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08044508: .4byte gUnk_03005E20

	thumb_func_start FUN_0804450C
FUN_0804450C: @ 0x0804450C
	push {lr}
	adds r2, r0, #0
	ldr r3, _0804453C @ => 0x03005E20
	lsls r0, r2, #2
	adds r1, r3, #0
	adds r1, #0xdc
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08044540
	adds r1, #0x14
	ldr r0, [r3, #0x18]
	str r0, [r1]
	adds r1, #4
	movs r0, #0
	str r0, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #4
	subs r1, #0xd8
	adds r0, r0, r1
	bl FUN_080211D4
	b _08044554
	.align 2, 0
_0804453C: .4byte gUnk_03005E20
_08044540:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r1, r3, #0
	adds r1, #0x1c
	adds r0, r0, r1
	movs r1, #0
	movs r2, #0x30
	bl FUN_0802CB40
_08044554:
	pop {r0}
	bx r0

	thumb_func_start FUN_08044558
FUN_08044558: @ 0x08044558
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r2, _08044594 @ => 0x03005E20
	adds r3, r2, #0
	adds r3, #0xf4
	ldr r0, [r3]
	cmp r0, #0
	ble _08044578
	adds r0, r2, #0
	adds r0, #0xf0
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	movs r0, #0
	str r0, [r3]
_08044578:
	adds r4, r2, #0
	adds r4, #0xf0
	ldr r1, [r4]
	adds r0, r6, #0
	adds r2, r5, #0
	bl FUN_0802CBAC
	ldr r0, [r4]
	adds r0, r0, r5
	str r0, [r4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08044594: .4byte gUnk_03005E20

	thumb_func_start FUN_08044598
FUN_08044598: @ 0x08044598
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r1, #0
	adds r4, r0, #0
	cmp r3, #0
	beq _080445D8
	ldr r6, _080445E4 @ => 0x03005F10
	adds r5, r6, #4
	movs r0, #1
	mov ip, r0
	movs r7, #0
	mov r8, r7
_080445B2:
	ldr r2, [r6]
	ldrb r0, [r2]
	ldr r1, [r5]
	asrs r0, r1
	mov r7, ip
	ands r0, r7
	strb r0, [r4]
	adds r1, #1
	str r1, [r5]
	cmp r1, #7
	ble _080445D0
	adds r0, r2, #1
	str r0, [r6]
	mov r0, r8
	str r0, [r5]
_080445D0:
	adds r4, #1
	subs r3, #1
	cmp r3, #0
	bne _080445B2
_080445D8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080445E4: .4byte gUnk_03005F10

	thumb_func_start FUN_080445E8
FUN_080445E8: @ 0x080445E8
	push {r4, r5, r6, r7, lr}
	ldr r7, _0804463C @ => 0x03005E20
	ldr r0, [r7, #0x18]
	movs r1, #0
	movs r2, #0x80
	lsls r2, r2, #5
	bl FUN_0802CB40
	ldr r4, [r7, #0x18]
	adds r5, r7, #0
	adds r5, #0xf0
	str r4, [r5]
	adds r0, r7, #0
	adds r0, #0xf4
	movs r6, #0
	str r6, [r0]
	bl FUN_08020C30
	adds r1, r7, #0
	adds r1, #0xf8
	ldr r0, [r5]
	subs r0, r0, r4
	str r0, [r1]
	adds r2, r7, #0
	adds r2, #0xfc
	movs r1, #0x64
	muls r0, r1, r0
	lsrs r0, r0, #0xc
	str r0, [r2]
	ldr r0, _08044640 @ => 0x00000FFE
	adds r5, r4, r0
	strh r6, [r5]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r4, #0
	bl FUN_080446F8
	rsbs r0, r0, #0
	strh r0, [r5]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804463C: .4byte gUnk_03005E20
_08044640: .4byte 0x00000FFE

	thumb_func_start FUN_08044644
FUN_08044644: @ 0x08044644
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	ldr r4, _0804468C @ => 0x03005E20
	adds r6, r4, #0
	adds r6, #0xf4
	ldr r0, [r6]
	cmp r0, #0
	ble _08044674
	adds r2, r4, #0
	adds r2, #0xf0
	ldr r3, [r2]
	movs r1, #8
	subs r1, r1, r0
	movs r0, #0xff
	asrs r0, r1
	ldrb r1, [r3]
	ands r0, r1
	strb r0, [r3]
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	movs r0, #0
	str r0, [r6]
_08044674:
	adds r4, #0xf0
	ldr r0, [r4]
	adds r1, r7, #0
	adds r2, r5, #0
	bl FUN_0802CBAC
	ldr r0, [r4]
	adds r0, r0, r5
	str r0, [r4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804468C: .4byte gUnk_03005E20

	thumb_func_start FUN_08044690
FUN_08044690: @ 0x08044690
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0
	ldr r6, _080446BC @ => 0x03005E20
	ldr r0, [r6, #0x18]
	movs r1, #0x80
	lsls r1, r1, #5
	bl FUN_080446F8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080446AA
	movs r4, #1
_080446AA:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0xdc
	adds r0, r0, r1
	str r4, [r0]
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080446BC: .4byte gUnk_03005E20

	thumb_func_start FUN_080446C0
FUN_080446C0: @ 0x080446C0
	push {lr}
	adds r0, #1
	lsls r0, r0, #0xc
	movs r1, #0x80
	lsls r1, r1, #5
	ldr r2, _080446D8 @ => 0x03005E20
	ldr r2, [r2, #0x18]
	bl FUN_0800B3A0
	pop {r1}
	bx r1
	.align 2, 0
_080446D8: .4byte gUnk_03005E20

	thumb_func_start FUN_080446DC
FUN_080446DC: @ 0x080446DC
	push {lr}
	adds r0, #1
	lsls r0, r0, #0xc
	movs r1, #0x80
	lsls r1, r1, #5
	ldr r2, _080446F4 @ => 0x03005E20
	ldr r2, [r2, #0x18]
	bl FUN_0800B3EC
	pop {r1}
	bx r1
	.align 2, 0
_080446F4: .4byte gUnk_03005E20

	thumb_func_start FUN_080446F8
FUN_080446F8: @ 0x080446F8
	push {lr}
	adds r2, r0, #0
	movs r3, #0
	lsrs r1, r1, #1
	cmp r1, #0
	ble _08044714
_08044704:
	ldrh r0, [r2]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bgt _08044704
_08044714:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0804471C
FUN_0804471C: @ 0x0804471C
	push {r4, lr}
	ldr r4, _08044754 @ => 0x03005E20
	ldr r1, _08044758 @ => 0x08079004
	adds r0, r4, #0
	movs r2, #0x18
	bl FUN_0802CBAC
	movs r3, #0
	movs r1, #0xc
_0804472E:
	ldrh r0, [r4]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r4, #2
	subs r1, #1
	cmp r1, #0
	bgt _0804472E
	ldr r2, _08044754 @ => 0x03005E20
	rsbs r0, r3, #0
	strh r0, [r2, #0xe]
	movs r1, #0x80
	lsls r1, r1, #5
	movs r0, #0
	bl FUN_0800B3EC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08044754: .4byte gUnk_03005E20
_08044758: .4byte ROMREF_08079004

	thumb_func_start FUN_0804475C
FUN_0804475C: @ 0x0804475C
	push {r4, r5, lr}
	ldr r4, _08044788 @ => 0x03005E20
	movs r0, #0
	movs r1, #0x18
	adds r2, r4, #0
	bl FUN_0800B3A0
	adds r5, r0, #0
	movs r2, #0
	movs r1, #0xc
_08044770:
	ldrh r0, [r4]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r4, #2
	subs r1, #1
	cmp r1, #0
	bgt _08044770
	cmp r2, #0
	beq _0804478C
_08044784:
	movs r0, #0
	b _080447A6
	.align 2, 0
_08044788: .4byte gUnk_03005E20
_0804478C:
	movs r2, #0
	ldr r4, _080447AC @ => 0x03005E20
	ldr r3, _080447B0 @ => 0x08079004
_08044792:
	adds r0, r2, r4
	adds r1, r2, r3
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08044784
	adds r2, #1
	cmp r2, #7
	ble _08044792
	adds r0, r5, #0
_080447A6:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080447AC: .4byte gUnk_03005E20
_080447B0: .4byte ROMREF_08079004

	thumb_func_start FUN_080447B4
FUN_080447B4: @ 0x080447B4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	movs r0, #0xb
	bl FUN_080012D8
	adds r4, r0, #0
	adds r1, r6, #0
	mov r2, r8
	bl FUN_08001728
	movs r6, #0
	movs r1, #0xb
	strh r1, [r4, #0xa]
	movs r2, #0xb2
	lsls r2, r2, #1
	adds r0, r4, r2
	strh r1, [r0]
	strb r5, [r4, #0x12]
	ldr r1, _08044890 @ => 0x0805A270
	ldrb r0, [r4, #0x12]
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r1, r1, #4
	ldr r0, _08044894 @ => 0x0807901C
	adds r1, r1, r0
	adds r0, r4, #0
	bl FUN_080015B8
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001FB0
	adds r0, r4, #0
	movs r1, #7
	bl FUN_08001F84
	ldr r0, _08044898 @ => FUN_08044B78
	str r0, [r4, #0x50]
	adds r0, r4, #0
	adds r0, #0x94
	str r6, [r0]
	adds r1, r4, #0
	adds r1, #0x98
	ldr r0, _0804489C @ => FUN_08044B98
	str r0, [r1]
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
	ldr r1, _080448A0 @ => 0x09FBD918
	ldr r5, _080448A4 @ => 0x03003DF0
	ldr r2, _080448A8 @ => 0x000001ED
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl FUN_08048E24
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_0803EF14
	str r6, [r4, #0x14]
	ldr r0, [r4, #0xc]
	ldr r1, _080448AC @ => 0x10040255
	orrs r0, r1
	str r0, [r4, #0xc]
	adds r0, r4, #0
	bl FUN_0803977C
	adds r0, r4, #0
	movs r1, #4
	bl FUN_080017D4
	ldr r0, _080448B0 @ => 0x030043A0
	ldr r1, [r0]
	movs r2, #0xf6
	lsls r2, r2, #1
	adds r0, r5, r2
	strb r1, [r0]
	movs r0, #0xf2
	lsls r0, r0, #1
	adds r2, r5, r0
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	str r0, [r2]
	str r1, [r2, #4]
	ldr r0, _080448B4 @ => FUN_08001EBC
	str r0, [r4, #0x64]
	adds r0, r4, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08044890: .4byte ROMREF_0805A270
_08044894: .4byte ROMREF_0807901C
_08044898: .4byte FUN_08044B78
_0804489C: .4byte FUN_08044B98
_080448A0: .4byte ROMREF_09FBD918
_080448A4: .4byte gUnk_03003DF0
_080448A8: .4byte 0x000001ED
_080448AC: .4byte 0x10040255
_080448B0: .4byte gUnk_030043A0
_080448B4: .4byte FUN_08001EBC

	thumb_func_start FUN_080448B8
FUN_080448B8: @ 0x080448B8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, _080448CC @ => 0x0000011D
	adds r0, r5, r1
	ldrb r4, [r0]
	cmp r4, #0
	beq _080448D0
	cmp r4, #0x37
	beq _0804491C
	b _080449E6
	.align 2, 0
_080448CC: .4byte 0x0000011D
_080448D0:
	bl FUN_08024900
	ldr r1, _08044910 @ => 0x03005C90
	strb r4, [r1, #4]
	ldr r4, _08044914 @ => 0x03005C60
	ldr r2, _08044918 @ => 0x09FBD914
	ldrh r0, [r2]
	movs r3, #0
	strh r0, [r4]
	ldrh r0, [r2, #2]
	strh r0, [r4, #2]
	strb r3, [r1, #1]
	strb r3, [r1, #2]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r4, r5, r2
	ldr r0, [r4]
	bl FUN_08001848
	ldr r0, [r4]
	movs r1, #0
	bl FUN_08001FB0
	movs r0, #2
	bl FUN_0802CEC4
	adds r0, r5, #0
	movs r1, #0x37
	bl FUN_08001F84
	b _080449E6
	.align 2, 0
_08044910: .4byte gUnk_03005C90
_08044914: .4byte gChoiceIDs
_08044918: .4byte ROMREF_09FBD914
_0804491C:
	ldr r0, _08044964 @ => 0x03004750
	ldr r6, [r0, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	beq _080449C4
	cmp r6, #0
	bne _08044970
	movs r0, #0x98
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, [r4]
	movs r1, #0x18
	bl FUN_08001FB0
	ldr r0, [r4]
	movs r1, #0
	bl FUN_08001F84
	ldr r0, [r4]
	ldrb r1, [r5, #0x12]
	bl FUN_08001FF0
	ldr r0, _08044968 @ => 0x03003DF0
	ldr r1, _0804496C @ => 0x00000404
	adds r0, r0, r1
	strb r6, [r0]
	adds r0, r5, #0
	movs r1, #1
	bl FUN_08001FB0
	adds r0, r5, #0
	movs r1, #2
	bl FUN_08002038
	b _080449E6
	.align 2, 0
_08044964: .4byte gUnk_03004750
_08044968: .4byte gUnk_03003DF0
_0804496C: .4byte 0x00000404
_08044970:
	cmp r6, #1
	bne _080449E6
	movs r2, #0x98
	lsls r2, r2, #1
	adds r4, r5, r2
	ldr r0, [r4]
	adds r1, r5, #0
	bl FUN_08001BF4
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r4]
	bl FUN_08001FF0
	ldr r0, [r4]
	movs r1, #0x67
	bl FUN_08001F20
	ldr r0, [r4]
	movs r1, #0xd
	bl FUN_08001FB0
	ldr r0, [r4]
	movs r1, #0x4a
	bl FUN_08001F84
	ldr r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0xf
	strh r1, [r0]
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08001FB0
	adds r0, r5, #0
	movs r1, #7
	bl FUN_08001F84
	b _080449E6
_080449C4:
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08001FB0
	adds r0, r5, #0
	movs r1, #7
	bl FUN_08001F84
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	subs r2, #0xe
	adds r1, r0, r2
	ldrb r1, [r1]
	bl FUN_08001FB0
_080449E6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start FUN_080449EC
FUN_080449EC: @ 0x080449EC
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _08044A2C @ => 0x03003DF0
	movs r4, #0xf6
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, #0x31
	bne _08044A34
	ldr r4, _08044A30 @ => 0x00000404
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08044A34
	adds r0, r3, #0
	bl FUN_08009B04
	ldrb r3, [r0, #8]
	movs r2, #4
	ldrsh r1, [r0, r2]
	lsls r1, r1, #0x10
	movs r4, #6
	ldrsh r2, [r0, r4]
	lsls r2, r2, #0x10
	adds r0, r3, #0
	bl FUN_080447B4
	b _08044A36
	.align 2, 0
_08044A2C: .4byte gUnk_03003DF0
_08044A30: .4byte 0x00000404
_08044A34:
	movs r0, #0
_08044A36:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_08044A3C
FUN_08044A3C: @ 0x08044A3C
	push {r4, r5, lr}
	sub sp, #4
	ldr r4, _08044A84 @ => 0x03003FDD
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08044054
	subs r0, r4, #1
	movs r1, #1
	bl FUN_08044558
	mov r0, sp
	movs r1, #2
	bl FUN_08044558
	mov r5, sp
	adds r5, #2
	adds r0, r5, #0
	movs r1, #2
	bl FUN_08044558
	adds r1, r4, #0
	subs r1, #9
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	str r0, [r1]
	subs r4, #5
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	str r0, [r4]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08044A84: .4byte gUnk_03003FDD

	thumb_func_start FUN_08044A88
FUN_08044A88: @ 0x08044A88
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, _08044AD8 @ => 0x03003DF0
	movs r1, #0xf2
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r1, [r0, #2]
	mov r0, sp
	strh r1, [r0]
	movs r1, #0xf4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r0, [r0, #2]
	mov r4, sp
	adds r4, #2
	strh r0, [r4]
	adds r1, #5
	adds r0, r5, r1
	movs r1, #1
	bl FUN_080441DC
	movs r1, #0xf6
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #1
	bl FUN_08044644
	mov r0, sp
	movs r1, #2
	bl FUN_08044644
	adds r0, r4, #0
	movs r1, #2
	bl FUN_08044644
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08044AD8: .4byte gUnk_03003DF0

	thumb_func_start FUN_08044ADC
FUN_08044ADC: @ 0x08044ADC
	push {r4, r5, lr}
	movs r5, #0
	ldr r0, _08044AE8 @ => 0x03002C40
	ldr r1, [r0]
	b _08044AEE
	.align 2, 0
_08044AE8: .4byte gUnk_03002C40
_08044AEC:
	adds r1, r2, #0
_08044AEE:
	cmp r1, #0
	beq _08044AFC
	ldr r2, [r1]
	ldrh r0, [r1, #0xa]
	cmp r0, #0xb
	bne _08044AEC
	adds r5, r1, #0
_08044AFC:
	cmp r5, #0
	beq _08044B32
	ldr r0, _08044B38 @ => 0x03003DF0
	ldr r2, _08044B3C @ => 0x000001ED
	adds r1, r0, r2
	ldrb r0, [r1]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #9
	bls _08044B14
	movs r4, #0
_08044B14:
	strb r4, [r1]
	adds r0, r5, #0
	bl FUN_0803EF58
	ldr r1, _08044B40 @ => 0x09FBD918
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl FUN_08048E24
	adds r1, r0, #0
	adds r0, r5, #0
	bl FUN_0803EF14
_08044B32:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08044B38: .4byte gUnk_03003DF0
_08044B3C: .4byte 0x000001ED
_08044B40: .4byte ROMREF_09FBD918

	thumb_func_start FUN_08044B44
FUN_08044B44: @ 0x08044B44
	ldr r0, _08044B50 @ => 0x03003DF0
	ldr r1, _08044B54 @ => 0x00000404
	adds r0, r0, r1
	movs r1, #2
	strb r1, [r0]
	bx lr
	.align 2, 0
_08044B50: .4byte gUnk_03003DF0
_08044B54: .4byte 0x00000404

	thumb_func_start FUN_08044B58
FUN_08044B58: @ 0x08044B58
	ldr r1, _08044B6C @ => 0x09FBD918
	ldr r0, _08044B70 @ => 0x03003DF0
	ldr r2, _08044B74 @ => 0x000001ED
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08044B6C: .4byte ROMREF_09FBD918
_08044B70: .4byte gUnk_03003DF0
_08044B74: .4byte 0x000001ED

	thumb_func_start FUN_08044B78
FUN_08044B78: @ 0x08044B78
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0803977C
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _08044B92
	adds r0, r4, #0
	bl FUN_080448B8
_08044B92:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_08044B98
FUN_08044B98: @ 0x08044B98
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08044BBC
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _08044BBC
	bl FUN_08023680
	movs r3, #1
	cmp r0, #1
	beq _08044BBE
_08044BBC:
	movs r3, #0
_08044BBE:
	movs r2, #0
	ldrh r0, [r5, #8]
	cmp r0, #0
	bne _08044BC8
	movs r2, #1
_08044BC8:
	ldr r0, _08044C00 @ => 0x030042B0
	ldrh r0, [r0, #0xc]
	movs r1, #1
	ands r1, r0
	cmp r2, #0
	beq _08044BF8
	cmp r1, #0
	beq _08044BF8
	cmp r3, #0
	beq _08044BF8
	bl FUN_08024900
	adds r0, r4, #0
	movs r1, #3
	bl FUN_08001FB0
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001F84
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	str r5, [r0]
_08044BF8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08044C00: .4byte gUnk_030042B0

	thumb_func_start FUN_08044C04
FUN_08044C04: @ 0x08044C04
	push {r4, r5, r6, lr}
	ldr r0, _08044C24 @ => 0x03002708
	ldrh r2, [r0, #2]
	ldrh r3, [r0]
	adds r1, r2, r3
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	ldrh r4, [r0, #4]
	movs r5, #4
	ldrsh r1, [r0, r5]
	adds r5, r0, #0
	cmp r3, r1
	bgt _08044C28
	strh r4, [r5]
	b _08044C34
	.align 2, 0
_08044C24: .4byte gUnk_03002708
_08044C28:
	ldrh r1, [r5, #6]
	movs r6, #6
	ldrsh r0, [r5, r6]
	cmp r3, r0
	blt _08044C38
	strh r1, [r5]
_08044C34:
	rsbs r0, r2, #0
	strh r0, [r5, #2]
_08044C38:
	ldr r0, _08044C58 @ => 0x03002710
	ldrh r2, [r0, #2]
	ldrh r3, [r0]
	adds r1, r2, r3
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	ldrh r6, [r0, #4]
	movs r3, #4
	ldrsh r1, [r0, r3]
	adds r3, r0, #0
	cmp r4, r1
	bgt _08044C5C
	strh r6, [r3]
	b _08044C68
	.align 2, 0
_08044C58: .4byte gUnk_03002710
_08044C5C:
	ldrh r1, [r3, #6]
	movs r6, #6
	ldrsh r0, [r3, r6]
	cmp r4, r0
	blt _08044C6C
	strh r1, [r3]
_08044C68:
	rsbs r0, r2, #0
	strh r0, [r3, #2]
_08044C6C:
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsls r2, r1, #8
	strh r2, [r5]
	lsrs r0, r0, #8
	strh r0, [r3]
	ldr r2, _08044C94 @ => 0x04000052
	orrs r0, r1
	strh r0, [r2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08044C94: .4byte 0x04000052

	thumb_func_start FUN_08044C98
FUN_08044C98: @ 0x08044C98
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r6, #0x78
	ldr r1, _08044D28 @ => 0x04000048
	movs r5, #0
	strh r5, [r1]
	ldr r2, _08044D2C @ => 0x0400004A
	movs r1, #0x3f
	strh r1, [r2]
	ldr r1, _08044D30 @ => 0x04000040
	strh r6, [r1]
	adds r1, #4
	movs r3, #0xa0
	strh r3, [r1]
	ldr r4, _08044D34 @ => 0x04000042
	lsls r1, r6, #8
	movs r2, #0xf0
	orrs r1, r2
	strh r1, [r4]
	ldr r1, _08044D38 @ => 0x04000046
	strh r3, [r1]
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r1, [r3]
	movs r6, #0xc0
	lsls r6, r6, #7
	adds r2, r6, #0
	orrs r1, r2
	strh r1, [r3]
	ldr r2, _08044D3C @ => 0x04000050
	movs r1, #0xc0
	orrs r0, r1
	strh r0, [r2]
	bl FUN_08024FC4
	ldr r0, _08044D40 @ => 0x04000054
	strh r5, [r0]
	adds r7, r4, #0
	movs r4, #0xf6
	lsls r4, r4, #0xf
	movs r5, #0xea
	lsls r5, r5, #0xf
_08044CEE:
	bl FUN_08024FC4
	adds r0, r5, #0
	ldr r1, _08044D44 @ => 0xFFFD0000
	adds r5, r5, r1
	asrs r6, r0, #0x10
	adds r0, r4, #0
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r4, r4, r1
	asrs r0, r0, #0x10
	ldr r1, _08044D30 @ => 0x04000040
	strh r6, [r1]
	lsls r0, r0, #8
	movs r1, #0xf0
	orrs r0, r1
	strh r0, [r7]
	cmp r6, #0
	bge _08044CEE
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08044D48 @ => 0x00009FFF
	ands r0, r1
	strh r0, [r2]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08044D28: .4byte 0x04000048
_08044D2C: .4byte 0x0400004A
_08044D30: .4byte 0x04000040
_08044D34: .4byte 0x04000042
_08044D38: .4byte 0x04000046
_08044D3C: .4byte 0x04000050
_08044D40: .4byte 0x04000054
_08044D44: .4byte 0xFFFD0000
_08044D48: .4byte 0x00009FFF

	thumb_func_start FUN_08044D4C
FUN_08044D4C: @ 0x08044D4C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r3, #0
	ldr r1, _08044DD4 @ => 0x04000048
	strh r3, [r1]
	ldr r2, _08044DD8 @ => 0x0400004A
	movs r1, #0x3f
	strh r1, [r2]
	ldr r1, _08044DDC @ => 0x04000040
	strh r3, [r1]
	adds r1, #4
	movs r2, #0xa0
	strh r2, [r1]
	ldr r4, _08044DE0 @ => 0x04000042
	ldr r1, _08044DE4 @ => 0x0000F0F0
	strh r1, [r4]
	ldr r1, _08044DE8 @ => 0x04000046
	strh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r1, [r3]
	movs r5, #0xc0
	lsls r5, r5, #7
	adds r2, r5, #0
	orrs r1, r2
	strh r1, [r3]
	ldr r2, _08044DEC @ => 0x04000050
	movs r1, #0xc0
	orrs r0, r1
	strh r0, [r2]
	adds r6, r4, #0
	movs r5, #0xed
	lsls r5, r5, #0x10
	movs r4, #0xc0
	lsls r4, r4, #0xa
_08044D94:
	bl FUN_08024FC4
	adds r0, r4, #0
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r4, r4, r1
	asrs r3, r0, #0x10
	adds r0, r5, #0
	ldr r1, _08044DF0 @ => 0xFFFD0000
	adds r5, r5, r1
	asrs r1, r0, #0x10
	ldr r0, _08044DDC @ => 0x04000040
	strh r3, [r0]
	lsls r0, r1, #8
	movs r1, #0xf0
	orrs r0, r1
	strh r0, [r6]
	cmp r3, #0x78
	ble _08044D94
	ldr r1, _08044DF4 @ => 0x04000054
	movs r0, #0x10
	strh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08044DF8 @ => 0x00009FFF
	ands r0, r1
	strh r0, [r2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08044DD4: .4byte 0x04000048
_08044DD8: .4byte 0x0400004A
_08044DDC: .4byte 0x04000040
_08044DE0: .4byte 0x04000042
_08044DE4: .4byte 0x0000F0F0
_08044DE8: .4byte 0x04000046
_08044DEC: .4byte 0x04000050
_08044DF0: .4byte 0xFFFD0000
_08044DF4: .4byte 0x04000054
_08044DF8: .4byte 0x00009FFF

	thumb_func_start FUN_08044DFC
FUN_08044DFC: @ 0x08044DFC
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r3, #0x50
	ldr r1, _08044E8C @ => 0x04000048
	movs r5, #0
	strh r5, [r1]
	ldr r2, _08044E90 @ => 0x0400004A
	movs r1, #0x3f
	strh r1, [r2]
	ldr r1, _08044E94 @ => 0x04000040
	movs r2, #0xf0
	strh r2, [r1]
	adds r1, #4
	strh r3, [r1]
	subs r1, #2
	strh r2, [r1]
	ldr r4, _08044E98 @ => 0x04000046
	lsls r1, r3, #8
	movs r2, #0xa0
	orrs r1, r2
	strh r1, [r4]
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r1, [r3]
	movs r6, #0xc0
	lsls r6, r6, #7
	adds r2, r6, #0
	orrs r1, r2
	strh r1, [r3]
	ldr r2, _08044E9C @ => 0x04000050
	movs r1, #0xc0
	orrs r0, r1
	strh r0, [r2]
	bl FUN_08024FC4
	ldr r0, _08044EA0 @ => 0x04000054
	strh r5, [r0]
	adds r6, r4, #0
	movs r4, #0xa4
	lsls r4, r4, #0xf
	movs r5, #0x9c
	lsls r5, r5, #0xf
_08044E52:
	bl FUN_08024FC4
	adds r0, r5, #0
	ldr r1, _08044EA4 @ => 0xFFFE0000
	adds r5, r5, r1
	asrs r3, r0, #0x10
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r4, r4, r1
	asrs r0, r0, #0x10
	ldr r1, _08044EA8 @ => 0x04000044
	strh r3, [r1]
	lsls r0, r0, #8
	movs r1, #0xa0
	orrs r0, r1
	strh r0, [r6]
	cmp r3, #0
	bge _08044E52
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08044EAC @ => 0x00009FFF
	ands r0, r1
	strh r0, [r2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08044E8C: .4byte 0x04000048
_08044E90: .4byte 0x0400004A
_08044E94: .4byte 0x04000040
_08044E98: .4byte 0x04000046
_08044E9C: .4byte 0x04000050
_08044EA0: .4byte 0x04000054
_08044EA4: .4byte 0xFFFE0000
_08044EA8: .4byte 0x04000044
_08044EAC: .4byte 0x00009FFF

	thumb_func_start FUN_08044EB0
FUN_08044EB0: @ 0x08044EB0
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r3, #0
	ldr r1, _08044F38 @ => 0x04000048
	strh r3, [r1]
	ldr r2, _08044F3C @ => 0x0400004A
	movs r1, #0x3f
	strh r1, [r2]
	ldr r1, _08044F40 @ => 0x04000040
	movs r2, #0xf0
	strh r2, [r1]
	adds r1, #4
	strh r3, [r1]
	subs r1, #2
	strh r2, [r1]
	ldr r4, _08044F44 @ => 0x04000046
	ldr r1, _08044F48 @ => 0x0000A0A0
	strh r1, [r4]
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r1, [r3]
	movs r5, #0xc0
	lsls r5, r5, #7
	adds r2, r5, #0
	orrs r1, r2
	strh r1, [r3]
	ldr r2, _08044F4C @ => 0x04000050
	movs r1, #0xc0
	orrs r0, r1
	strh r0, [r2]
	adds r6, r4, #0
	movs r5, #0x9e
	lsls r5, r5, #0x10
	movs r4, #0x80
	lsls r4, r4, #0xa
_08044EF8:
	bl FUN_08024FC4
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r4, r4, r1
	asrs r3, r0, #0x10
	adds r0, r5, #0
	ldr r1, _08044F50 @ => 0xFFFE0000
	adds r5, r5, r1
	asrs r1, r0, #0x10
	ldr r0, _08044F54 @ => 0x04000044
	strh r3, [r0]
	lsls r0, r1, #8
	movs r1, #0xa0
	orrs r0, r1
	strh r0, [r6]
	cmp r3, #0x50
	ble _08044EF8
	ldr r1, _08044F58 @ => 0x04000054
	movs r0, #0x10
	strh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08044F5C @ => 0x00009FFF
	ands r0, r1
	strh r0, [r2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08044F38: .4byte 0x04000048
_08044F3C: .4byte 0x0400004A
_08044F40: .4byte 0x04000040
_08044F44: .4byte 0x04000046
_08044F48: .4byte 0x0000A0A0
_08044F4C: .4byte 0x04000050
_08044F50: .4byte 0xFFFE0000
_08044F54: .4byte 0x04000044
_08044F58: .4byte 0x04000054
_08044F5C: .4byte 0x00009FFF

	thumb_func_start FUN_08044F60
FUN_08044F60: @ 0x08044F60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08045014 @ => 0x04000048
	movs r1, #0x3f
	strh r1, [r2]
	ldr r1, _08045018 @ => 0x0400004A
	movs r6, #0
	strh r6, [r1]
	ldr r5, _0804501C @ => 0x04000040
	ldr r1, _08045020 @ => 0x00007878
	strh r1, [r5]
	ldr r4, _08045024 @ => 0x04000044
	ldr r1, _08045028 @ => 0x00005050
	strh r1, [r4]
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r1, [r3]
	movs r7, #0x80
	lsls r7, r7, #6
	adds r2, r7, #0
	orrs r1, r2
	strh r1, [r3]
	ldr r2, _0804502C @ => 0x04000050
	movs r1, #0xc0
	orrs r0, r1
	strh r0, [r2]
	bl FUN_08024FC4
	ldr r0, _08045030 @ => 0x04000054
	strh r6, [r0]
	mov sb, r5
	mov r8, r4
	movs r0, #0xf6
	lsls r0, r0, #0xf
	mov sl, r0
	movs r5, #0xea
	lsls r5, r5, #0xf
	movs r4, #0xa4
	lsls r4, r4, #0xf
	movs r6, #0x9c
	lsls r6, r6, #0xf
_08044FBC:
	bl FUN_08024FC4
	adds r0, r6, #0
	ldr r1, _08045034 @ => 0xFFFE0000
	adds r6, r6, r1
	asrs r3, r0, #0x10
	adds r2, r4, #0
	movs r7, #0x80
	lsls r7, r7, #0xa
	adds r4, r4, r7
	asrs r2, r2, #0x10
	adds r0, r5, #0
	ldr r1, _08045038 @ => 0xFFFD0000
	adds r5, r5, r1
	asrs r0, r0, #0x10
	mov r1, sl
	movs r7, #0xc0
	lsls r7, r7, #0xa
	add sl, r7
	asrs r1, r1, #0x10
	lsls r0, r0, #8
	orrs r1, r0
	mov r0, sb
	strh r1, [r0]
	lsls r0, r3, #8
	orrs r2, r0
	mov r1, r8
	strh r2, [r1]
	cmp r3, #0
	bge _08044FBC
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0804503C @ => 0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08045014: .4byte 0x04000048
_08045018: .4byte 0x0400004A
_0804501C: .4byte 0x04000040
_08045020: .4byte 0x00007878
_08045024: .4byte 0x04000044
_08045028: .4byte 0x00005050
_0804502C: .4byte 0x04000050
_08045030: .4byte 0x04000054
_08045034: .4byte 0xFFFE0000
_08045038: .4byte 0xFFFD0000
_0804503C: .4byte 0x0000DFFF

	thumb_func_start FUN_08045040
FUN_08045040: @ 0x08045040
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _080450F0 @ => 0x04000048
	movs r1, #0
	strh r1, [r2]
	adds r2, #2
	movs r1, #0x3f
	strh r1, [r2]
	ldr r5, _080450F4 @ => 0x04000040
	ldr r1, _080450F8 @ => 0x00007878
	strh r1, [r5]
	ldr r4, _080450FC @ => 0x04000044
	ldr r1, _08045100 @ => 0x00005050
	strh r1, [r4]
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r1, [r3]
	movs r6, #0x80
	lsls r6, r6, #6
	adds r2, r6, #0
	orrs r1, r2
	strh r1, [r3]
	ldr r2, _08045104 @ => 0x04000050
	movs r1, #0xc0
	orrs r0, r1
	strh r0, [r2]
	mov sb, r5
	mov r8, r4
	movs r7, #0xf6
	lsls r7, r7, #0xf
	mov sl, r7
	movs r6, #0xea
	lsls r6, r6, #0xf
	movs r5, #0xa4
	lsls r5, r5, #0xf
	movs r4, #0x9c
	lsls r4, r4, #0xf
_08045094:
	bl FUN_08024FC4
	adds r0, r4, #0
	ldr r1, _08045108 @ => 0xFFFE0000
	adds r4, r4, r1
	asrs r3, r0, #0x10
	adds r2, r5, #0
	movs r7, #0x80
	lsls r7, r7, #0xa
	adds r5, r5, r7
	asrs r2, r2, #0x10
	adds r0, r6, #0
	ldr r1, _0804510C @ => 0xFFFD0000
	adds r6, r6, r1
	asrs r0, r0, #0x10
	mov r1, sl
	movs r7, #0xc0
	lsls r7, r7, #0xa
	add sl, r7
	asrs r1, r1, #0x10
	lsls r0, r0, #8
	orrs r1, r0
	mov r0, sb
	strh r1, [r0]
	lsls r0, r3, #8
	orrs r2, r0
	mov r1, r8
	strh r2, [r1]
	cmp r3, #0
	bge _08045094
	ldr r1, _08045110 @ => 0x04000054
	movs r0, #0x10
	strh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08045114 @ => 0x00009FFF
	ands r0, r1
	strh r0, [r2]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080450F0: .4byte 0x04000048
_080450F4: .4byte 0x04000040
_080450F8: .4byte 0x00007878
_080450FC: .4byte 0x04000044
_08045100: .4byte 0x00005050
_08045104: .4byte 0x04000050
_08045108: .4byte 0xFFFE0000
_0804510C: .4byte 0xFFFD0000
_08045110: .4byte 0x04000054
_08045114: .4byte 0x00009FFF

	thumb_func_start FUN_08045118
FUN_08045118: @ 0x08045118
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r3, #0xf0
	movs r7, #0
	movs r6, #0xa0
	ldr r1, _080451D4 @ => 0x04000048
	strh r7, [r1]
	ldr r2, _080451D8 @ => 0x0400004A
	movs r1, #0x3f
	strh r1, [r2]
	ldr r5, _080451DC @ => 0x04000040
	strh r3, [r5]
	ldr r4, _080451E0 @ => 0x04000044
	strh r6, [r4]
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r1, [r3]
	movs r6, #0x80
	lsls r6, r6, #6
	adds r2, r6, #0
	orrs r1, r2
	strh r1, [r3]
	ldr r2, _080451E4 @ => 0x04000050
	movs r1, #0xc0
	orrs r0, r1
	strh r0, [r2]
	bl FUN_08024FC4
	ldr r0, _080451E8 @ => 0x04000054
	strh r7, [r0]
	mov sl, r5
	mov sb, r4
	movs r0, #0xed
	lsls r0, r0, #0x10
	mov r8, r0
	movs r2, #0xc0
	lsls r2, r2, #0xa
	movs r5, #0x9e
	lsls r5, r5, #0x10
	movs r4, #0x80
	lsls r4, r4, #0xa
_08045176:
	str r2, [sp]
	bl FUN_08024FC4
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r4, r4, r1
	asrs r7, r0, #0x10
	adds r0, r5, #0
	ldr r3, _080451EC @ => 0xFFFE0000
	adds r5, r5, r3
	asrs r6, r0, #0x10
	ldr r2, [sp]
	adds r0, r2, #0
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r2, r2, r1
	asrs r0, r0, #0x10
	mov r1, r8
	ldr r3, _080451F0 @ => 0xFFFD0000
	add r8, r3
	asrs r3, r1, #0x10
	lsls r0, r0, #8
	orrs r3, r0
	mov r0, sl
	strh r3, [r0]
	lsls r0, r7, #8
	orrs r6, r0
	mov r1, sb
	strh r6, [r1]
	cmp r7, #0x4f
	ble _08045176
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _080451F4 @ => 0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080451D4: .4byte 0x04000048
_080451D8: .4byte 0x0400004A
_080451DC: .4byte 0x04000040
_080451E0: .4byte 0x04000044
_080451E4: .4byte 0x04000050
_080451E8: .4byte 0x04000054
_080451EC: .4byte 0xFFFE0000
_080451F0: .4byte 0xFFFD0000
_080451F4: .4byte 0x0000DFFF

	thumb_func_start FUN_080451F8
FUN_080451F8: @ 0x080451F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r3, #0xf0
	movs r4, #0
	movs r6, #0xa0
	ldr r2, _080452B0 @ => 0x04000048
	movs r1, #0x3f
	strh r1, [r2]
	ldr r1, _080452B4 @ => 0x0400004A
	strh r4, [r1]
	ldr r5, _080452B8 @ => 0x04000040
	strh r3, [r5]
	ldr r4, _080452BC @ => 0x04000044
	strh r6, [r4]
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r1, [r3]
	movs r6, #0x80
	lsls r6, r6, #6
	adds r2, r6, #0
	orrs r1, r2
	strh r1, [r3]
	ldr r2, _080452C0 @ => 0x04000050
	movs r1, #0xc0
	orrs r0, r1
	strh r0, [r2]
	mov sl, r5
	mov sb, r4
	movs r0, #0xed
	lsls r0, r0, #0x10
	mov r8, r0
	movs r2, #0xc0
	lsls r2, r2, #0xa
	movs r7, #0x9e
	lsls r7, r7, #0x10
	movs r5, #0x80
	lsls r5, r5, #0xa
_0804524E:
	str r2, [sp]
	bl FUN_08024FC4
	adds r0, r5, #0
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r5, r5, r1
	asrs r4, r0, #0x10
	adds r0, r7, #0
	ldr r3, _080452C4 @ => 0xFFFE0000
	adds r7, r7, r3
	asrs r6, r0, #0x10
	ldr r2, [sp]
	adds r0, r2, #0
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r2, r2, r1
	asrs r0, r0, #0x10
	mov r1, r8
	ldr r3, _080452C8 @ => 0xFFFD0000
	add r8, r3
	asrs r3, r1, #0x10
	lsls r0, r0, #8
	orrs r3, r0
	mov r0, sl
	strh r3, [r0]
	lsls r0, r4, #8
	orrs r6, r0
	mov r1, sb
	strh r6, [r1]
	cmp r4, #0x50
	ble _0804524E
	ldr r1, _080452CC @ => 0x04000054
	movs r0, #0x10
	strh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _080452D0 @ => 0x00009FFF
	ands r0, r1
	strh r0, [r2]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080452B0: .4byte 0x04000048
_080452B4: .4byte 0x0400004A
_080452B8: .4byte 0x04000040
_080452BC: .4byte 0x04000044
_080452C0: .4byte 0x04000050
_080452C4: .4byte 0xFFFE0000
_080452C8: .4byte 0xFFFD0000
_080452CC: .4byte 0x04000054
_080452D0: .4byte 0x00009FFF

	thumb_func_start FUN_080452D4
FUN_080452D4: @ 0x080452D4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r6, #0x10
	movs r7, #0x10
	ldr r2, _0804540C @ => 0x04000050
	movs r1, #0xc0
	orrs r0, r1
	strh r0, [r2]
	mov r2, sp
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r1, [r0]
	ldr r0, _08045410 @ => 0x0000FFF8
	ands r0, r1
	strh r0, [r2]
	mov r0, sp
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08045312
	ldr r0, _08045414 @ => 0x04000008
	ldrh r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strh r1, [r0]
_08045312:
	mov r0, sp
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804532A
	ldr r0, _08045418 @ => 0x0400000A
	ldrh r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strh r1, [r0]
_0804532A:
	mov r0, sp
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08045342
	ldr r0, _0804541C @ => 0x0400000C
	ldrh r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strh r1, [r0]
_08045342:
	mov r0, sp
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0804535A
	ldr r0, _08045420 @ => 0x0400000E
	ldrh r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strh r1, [r0]
_0804535A:
	mov r0, sp
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08045382
	ldr r0, _08045424 @ => 0x03002C40
	ldr r2, [r0]
	cmp r2, #0
	beq _08045382
	movs r3, #0x10
_08045372:
	adds r1, r2, #0
	adds r1, #0xa5
	ldrb r0, [r1]
	orrs r0, r3
	strb r0, [r1]
	ldr r2, [r2]
	cmp r2, #0
	bne _08045372
_08045382:
	cmp r6, #0
	ble _080453D2
	ldr r0, _08045428 @ => 0x0400004C
	mov r8, r0
	lsls r0, r7, #0x10
	ldr r1, _0804542C @ => 0xFFFE0000
	adds r5, r0, r1
	lsls r0, r6, #0x10
	adds r4, r0, r1
_08045394:
	adds r0, r4, #0
	ldr r1, _0804542C @ => 0xFFFE0000
	adds r4, r4, r1
	asrs r6, r0, #0x10
	adds r0, r5, #0
	adds r5, r5, r1
	asrs r7, r0, #0x10
	lsls r0, r7, #0xc
	lsls r1, r6, #8
	orrs r0, r1
	lsls r1, r7, #4
	orrs r0, r1
	orrs r0, r6
	mov r1, r8
	strh r0, [r1]
	ldr r0, _08045430 @ => 0x04000054
	strh r6, [r0]
	bl FUN_0800133C
	bl FUN_0800C06C
	bl FUN_0801584C
	bl FUN_0803B844
	bl FUN_08024FC4
	bl FUN_08024FC4
	cmp r6, #0
	bgt _08045394
_080453D2:
	mov r0, sp
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _080453FE
	ldr r0, _08045424 @ => 0x03002C40
	ldr r2, [r0]
	cmp r2, #0
	beq _080453FE
	movs r4, #0x11
	rsbs r4, r4, #0
_080453EC:
	adds r3, r2, #0
	adds r3, #0xa5
	ldrb r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r3]
	ldr r2, [r2]
	cmp r2, #0
	bne _080453EC
_080453FE:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804540C: .4byte 0x04000050
_08045410: .4byte 0x0000FFF8
_08045414: .4byte 0x04000008
_08045418: .4byte 0x0400000A
_0804541C: .4byte 0x0400000C
_08045420: .4byte 0x0400000E
_08045424: .4byte gUnk_03002C40
_08045428: .4byte 0x0400004C
_0804542C: .4byte 0xFFFE0000
_08045430: .4byte 0x04000054

	thumb_func_start FUN_08045434
FUN_08045434: @ 0x08045434
	push {r4, r5, r6, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r4, #0
	movs r5, #0
	ldr r2, _08045554 @ => 0x04000050
	movs r1, #0xc0
	orrs r0, r1
	strh r0, [r2]
	mov r2, sp
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r1, [r0]
	ldr r0, _08045558 @ => 0x0000FFF8
	ands r0, r1
	strh r0, [r2]
	mov r0, sp
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804546E
	ldr r0, _0804555C @ => 0x04000008
	ldrh r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strh r1, [r0]
_0804546E:
	mov r0, sp
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08045486
	ldr r0, _08045560 @ => 0x0400000A
	ldrh r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strh r1, [r0]
_08045486:
	mov r0, sp
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0804549E
	ldr r0, _08045564 @ => 0x0400000C
	ldrh r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strh r1, [r0]
_0804549E:
	mov r0, sp
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080454B6
	ldr r0, _08045568 @ => 0x0400000E
	ldrh r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strh r1, [r0]
_080454B6:
	mov r0, sp
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _080454DE
	ldr r0, _0804556C @ => 0x03002C40
	ldr r2, [r0]
	cmp r2, #0
	beq _080454DE
	movs r3, #0x10
_080454CE:
	adds r1, r2, #0
	adds r1, #0xa5
	ldrb r0, [r1]
	orrs r0, r3
	strb r0, [r1]
	ldr r2, [r2]
	cmp r2, #0
	bne _080454CE
_080454DE:
	cmp r4, #0xf
	bhi _0804551E
	ldr r6, _08045570 @ => 0x0400004C
_080454E4:
	lsls r0, r5, #0xc
	lsls r1, r4, #8
	orrs r0, r1
	lsls r1, r5, #4
	orrs r0, r1
	orrs r0, r4
	strh r0, [r6]
	ldr r0, _08045574 @ => 0x04000054
	strh r4, [r0]
	adds r0, r4, #2
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, #2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	bl FUN_0800133C
	bl FUN_0800C06C
	bl FUN_0801584C
	bl FUN_0803B844
	bl FUN_08024FC4
	bl FUN_08024FC4
	cmp r4, #0xf
	bls _080454E4
_0804551E:
	mov r0, sp
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _0804554A
	ldr r0, _0804556C @ => 0x03002C40
	ldr r2, [r0]
	cmp r2, #0
	beq _0804554A
	movs r4, #0x11
	rsbs r4, r4, #0
_08045538:
	adds r3, r2, #0
	adds r3, #0xa5
	ldrb r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r3]
	ldr r2, [r2]
	cmp r2, #0
	bne _08045538
_0804554A:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08045554: .4byte 0x04000050
_08045558: .4byte 0x0000FFF8
_0804555C: .4byte 0x04000008
_08045560: .4byte 0x0400000A
_08045564: .4byte 0x0400000C
_08045568: .4byte 0x0400000E
_0804556C: .4byte gUnk_03002C40
_08045570: .4byte 0x0400004C
_08045574: .4byte 0x04000054

	thumb_func_start FUN_08045578
FUN_08045578: @ 0x08045578
	bx lr
	.align 2, 0

	thumb_func_start FUN_0804557C
FUN_0804557C: @ 0x0804557C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	ldr r3, _08045590 @ => 0x04000050
	movs r2, #0x80
	orrs r0, r2
	lsrs r1, r1, #8
	orrs r0, r1
	strh r0, [r3]
	bx lr
	.align 2, 0
_08045590: .4byte 0x04000050

	thumb_func_start FUN_08045594
FUN_08045594: @ 0x08045594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	ldr r3, _080455A8 @ => 0x04000050
	movs r2, #0x40
	orrs r0, r2
	lsrs r1, r1, #8
	orrs r0, r1
	strh r0, [r3]
	bx lr
	.align 2, 0
_080455A8: .4byte 0x04000050

	thumb_func_start FUN_080455AC
FUN_080455AC: @ 0x080455AC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	ldr r3, _080455C8 @ => 0x03002708
	lsls r2, r0, #8
	strh r2, [r3]
	ldr r2, _080455CC @ => 0x03002710
	lsrs r1, r1, #8
	strh r1, [r2]
	ldr r2, _080455D0 @ => 0x04000052
	orrs r1, r0
	strh r1, [r2]
	bx lr
	.align 2, 0
_080455C8: .4byte gUnk_03002708
_080455CC: .4byte gUnk_03002710
_080455D0: .4byte 0x04000052

	thumb_func_start FUN_080455D4
FUN_080455D4: @ 0x080455D4
	push {r4, lr}
	ldr r4, _080455F0 @ => 0x03002708
	lsls r0, r0, #8
	strh r0, [r4, #4]
	lsls r1, r1, #8
	strh r1, [r4, #6]
	ldr r0, _080455F4 @ => 0x03002710
	lsls r2, r2, #8
	strh r2, [r0, #4]
	lsls r3, r3, #8
	strh r3, [r0, #6]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080455F0: .4byte gUnk_03002708
_080455F4: .4byte gUnk_03002710

	thumb_func_start FUN_080455F8
FUN_080455F8: @ 0x080455F8
	ldr r2, _08045604 @ => 0x03002708
	strh r0, [r2, #2]
	ldr r0, _08045608 @ => 0x03002710
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_08045604: .4byte gUnk_03002708
_08045608: .4byte gUnk_03002710

	thumb_func_start FUN_0804560C
FUN_0804560C: @ 0x0804560C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r2, #0
	adds r7, r3, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	ldr r3, _08045678 @ => 0x04000050
	movs r2, #0x40
	orrs r0, r2
	lsrs r1, r1, #8
	orrs r0, r1
	strh r0, [r3]
	movs r3, #0
	cmp r3, r6
	bgt _0804566C
	ldr r0, _0804567C @ => 0x03002708
	mov sb, r0
	ldr r1, _08045680 @ => 0x03002710
	mov r8, r1
_08045638:
	lsls r2, r3, #0x10
	lsrs r2, r2, #0x10
	movs r0, #0x10
	subs r0, r0, r3
	lsls r0, r0, #0x10
	lsls r1, r2, #8
	mov r4, sb
	strh r1, [r4]
	lsrs r0, r0, #8
	mov r1, r8
	strh r0, [r1]
	ldr r1, _08045684 @ => 0x04000052
	orrs r0, r2
	strh r0, [r1]
	adds r4, r7, #0
	adds r5, r3, #1
	cmp r4, #0
	ble _08045666
_0804565C:
	bl FUN_08024FC4
	subs r4, #1
	cmp r4, #0
	bgt _0804565C
_08045666:
	adds r3, r5, #0
	cmp r3, r6
	ble _08045638
_0804566C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08045678: .4byte 0x04000050
_0804567C: .4byte gUnk_03002708
_08045680: .4byte gUnk_03002710
_08045684: .4byte 0x04000052

	thumb_func_start FUN_08045688
FUN_08045688: @ 0x08045688
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r3, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	ldr r4, _080456EC @ => 0x04000050
	movs r3, #0x40
	orrs r0, r3
	lsrs r1, r1, #8
	orrs r0, r1
	strh r0, [r4]
	adds r3, r2, #0
	cmp r3, #0
	blt _080456E0
	ldr r0, _080456F0 @ => 0x03002708
	mov r8, r0
	ldr r7, _080456F4 @ => 0x03002710
_080456AE:
	lsls r2, r3, #0x10
	lsrs r2, r2, #0x10
	movs r0, #0x10
	subs r0, r0, r3
	lsls r0, r0, #0x10
	lsls r1, r2, #8
	mov r4, r8
	strh r1, [r4]
	lsrs r0, r0, #8
	strh r0, [r7]
	ldr r1, _080456F8 @ => 0x04000052
	orrs r0, r2
	strh r0, [r1]
	adds r4, r6, #0
	subs r5, r3, #1
	cmp r4, #0
	ble _080456DA
_080456D0:
	bl FUN_08024FC4
	subs r4, #1
	cmp r4, #0
	bgt _080456D0
_080456DA:
	adds r3, r5, #0
	cmp r3, #0
	bge _080456AE
_080456E0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080456EC: .4byte 0x04000050
_080456F0: .4byte gUnk_03002708
_080456F4: .4byte gUnk_03002710
_080456F8: .4byte 0x04000052

	thumb_func_start FUN_080456FC
FUN_080456FC: @ 0x080456FC
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x18
	ldr r4, _08045740 @ => 0x04000050
	movs r3, #0x40
	orrs r0, r3
	orrs r1, r0
	strh r1, [r4]
	movs r4, #0
	lsrs r2, r2, #0x18
	cmp r4, r2
	bhi _0804573A
	ldr r7, _08045744 @ => 0x04000052
	adds r5, r2, #0
	movs r6, #0x10
_08045720:
	subs r0, r6, r4
	lsls r0, r0, #8
	orrs r0, r4
	strh r0, [r7]
	bl FUN_08024FC4
	bl FUN_08024FC4
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	bls _08045720
_0804573A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08045740: .4byte 0x04000050
_08045744: .4byte 0x04000052

	thumb_func_start FUN_08045748
FUN_08045748: @ 0x08045748
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r3, _08045760 @ => 0x04000052
	lsrs r1, r1, #0x10
	orrs r1, r0
	strh r1, [r3]
	ldr r0, _08045764 @ => 0x04000054
	strh r2, [r0]
	bx lr
	.align 2, 0
_08045760: .4byte 0x04000052
_08045764: .4byte 0x04000054

	thumb_func_start FUN_08045768
FUN_08045768: @ 0x08045768
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _0804579C @ => 0x04000050
	movs r0, #0xc0
	orrs r1, r0
	strh r1, [r2]
	movs r4, #0
_08045778:
	adds r0, r4, #0
	movs r1, #8
	bl SVC_Div
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080457A0 @ => 0x04000054
	strh r0, [r1]
	bl FUN_08024FC4
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x7f
	bls _08045778
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804579C: .4byte 0x04000050
_080457A0: .4byte 0x04000054

	thumb_func_start FUN_080457A4
FUN_080457A4: @ 0x080457A4
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r2, _080457C4 @ => 0x04000050
	movs r1, #0xc0
	orrs r0, r1
	strh r0, [r2]
	cmp r3, #0x10
	bls _080457BC
	movs r3, #0x10
_080457BC:
	ldr r0, _080457C8 @ => 0x04000054
	strh r3, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_080457C4: .4byte 0x04000050
_080457C8: .4byte 0x04000054

	thumb_func_start FUN_080457CC
FUN_080457CC: @ 0x080457CC
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r2, _080457EC @ => 0x04000050
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	cmp r3, #0x10
	bls _080457E4
	movs r3, #0x10
_080457E4:
	ldr r0, _080457F0 @ => 0x04000054
	strh r3, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_080457EC: .4byte 0x04000050
_080457F0: .4byte 0x04000054

	thumb_func_start FUN_080457F4
FUN_080457F4: @ 0x080457F4
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r4, _08045820 @ => 0x03004374
	ldr r2, [r4]
	movs r3, #0x80
	lsls r3, r3, #7
	orrs r2, r3
	str r2, [r4]
	ldr r2, _08045824 @ => 0x08079070
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	ldr r0, [r4]
	ldr r1, _08045828 @ => 0xFFFFBFFF
	ands r0, r1
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08045820: .4byte gUnk_03004374
_08045824: .4byte ROMREF_08079070
_08045828: .4byte 0xFFFFBFFF

	thumb_func_start FUN_0804582C
FUN_0804582C: @ 0x0804582C
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r4, _08045858 @ => 0x03004374
	ldr r2, [r4]
	movs r3, #0x80
	lsls r3, r3, #7
	orrs r2, r3
	str r2, [r4]
	ldr r2, _0804585C @ => 0x080790A8
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	ldr r0, [r4]
	ldr r1, _08045860 @ => 0xFFFFBFFF
	ands r0, r1
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08045858: .4byte gUnk_03004374
_0804585C: .4byte ROMREF_080790A8
_08045860: .4byte 0xFFFFBFFF

	thumb_func_start FUN_08045864
FUN_08045864: @ 0x08045864
	push {r4, r5, r6, lr}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _080458D4 @ => 0x04000050
	movs r1, #0xc0
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _080458D8 @ => 0x03004374
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r2]
	movs r4, #0x10
	ldr r6, _080458DC @ => 0x030042E0
	ldr r5, _080458E0 @ => 0x03004370
_08045886:
	ldr r0, _080458E4 @ => 0x04000054
	strh r4, [r0]
	bl FUN_0804C094
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	mov r1, sp
	bl FUN_08047B3C
	bl FUN_0800133C
	bl FUN_0803B844
	subs r4, #1
_080458A4:
	bl FUN_08024FC4
	ldr r2, [r6]
	ldr r3, [r2, #0x1c]
	ldr r0, [r2, #0x20]
	subs r1, r3, r0
	cmp r1, #0
	bge _080458B6
	rsbs r1, r1, #0
_080458B6:
	ldr r0, [r5]
	cmp r1, r0
	blo _080458A4
	str r3, [r2, #0x20]
	cmp r4, #0
	bge _08045886
	ldr r0, _080458D8 @ => 0x03004374
	ldr r1, [r0]
	ldr r2, _080458E8 @ => 0xFFFFDFFF
	ands r1, r2
	str r1, [r0]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080458D4: .4byte 0x04000050
_080458D8: .4byte gUnk_03004374
_080458DC: .4byte gUnk_030042E0
_080458E0: .4byte gUnk_03004370
_080458E4: .4byte 0x04000054
_080458E8: .4byte 0xFFFFDFFF

	thumb_func_start FUN_080458EC
FUN_080458EC: @ 0x080458EC
	push {r4, r5, r6, lr}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08045960 @ => 0x04000050
	movs r1, #0xc0
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _08045964 @ => 0x03004374
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r2]
	movs r4, #0
	ldr r6, _08045968 @ => 0x030042E0
	ldr r5, _0804596C @ => 0x03004370
_0804590E:
	ldr r0, _08045970 @ => 0x04000054
	strh r4, [r0]
	bl FUN_0804C094
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	mov r1, sp
	bl FUN_08047B3C
	bl FUN_0800133C
	bl FUN_0803B844
	adds r4, #1
_0804592C:
	bl FUN_08024FC4
	ldr r2, [r6]
	ldr r3, [r2, #0x1c]
	ldr r0, [r2, #0x20]
	subs r1, r3, r0
	cmp r1, #0
	bge _0804593E
	rsbs r1, r1, #0
_0804593E:
	ldr r0, [r5]
	cmp r1, r0
	blo _0804592C
	str r3, [r2, #0x20]
	lsls r0, r4, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _0804590E
	ldr r0, _08045964 @ => 0x03004374
	ldr r1, [r0]
	ldr r2, _08045974 @ => 0xFFFFDFFF
	ands r1, r2
	str r1, [r0]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08045960: .4byte 0x04000050
_08045964: .4byte gUnk_03004374
_08045968: .4byte gUnk_030042E0
_0804596C: .4byte gUnk_03004370
_08045970: .4byte 0x04000054
_08045974: .4byte 0xFFFFDFFF

	thumb_func_start FUN_08045978
FUN_08045978: @ 0x08045978
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _080459C4 @ => 0x04000050
	movs r1, #0xc0
	orrs r0, r1
	strh r0, [r2]
	movs r4, #0
_08045988:
	ldr r0, _080459C8 @ => 0x04000054
	strh r4, [r0]
	bl FUN_0800133C
	bl FUN_0801584C
	bl FUN_0800C06C
	bl FUN_0803B844
	bl FUN_08024FC4
	bl FUN_0800133C
	bl FUN_0801584C
	bl FUN_0800C06C
	bl FUN_0803B844
	bl FUN_08024FC4
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _08045988
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080459C4: .4byte 0x04000050
_080459C8: .4byte 0x04000054

	thumb_func_start FUN_080459CC
FUN_080459CC: @ 0x080459CC
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08045A04 @ => 0x04000050
	movs r1, #0xc0
	orrs r0, r1
	strh r0, [r2]
	movs r4, #0x10
	ldr r5, _08045A08 @ => 0x04000054
_080459DE:
	strh r4, [r5]
	bl FUN_0800133C
	bl FUN_0800C06C
	bl FUN_0801584C
	bl FUN_0803B844
	bl FUN_08024FC4
	bl FUN_08024FC4
	subs r4, #2
	cmp r4, #0
	bge _080459DE
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08045A04: .4byte 0x04000050
_08045A08: .4byte 0x04000054

	thumb_func_start FUN_08045A0C
FUN_08045A0C: @ 0x08045A0C
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08045A44 @ => 0x04000050
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r4, #0x10
	ldr r5, _08045A48 @ => 0x04000054
_08045A1E:
	strh r4, [r5]
	bl FUN_0800133C
	bl FUN_0800C06C
	bl FUN_0801584C
	bl FUN_0803B844
	bl FUN_08024FC4
	bl FUN_08024FC4
	subs r4, #2
	cmp r4, #0
	bge _08045A1E
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08045A44: .4byte 0x04000050
_08045A48: .4byte 0x04000054

	thumb_func_start FUN_08045A4C
FUN_08045A4C: @ 0x08045A4C
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r5, #0
	ldr r1, _08045ABC @ => 0x04000048
	strh r5, [r1]
	ldr r2, _08045AC0 @ => 0x0400004A
	movs r1, #0x3f
	strh r1, [r2]
	subs r2, #0xa
	movs r1, #0xf0
	strh r1, [r2]
	ldr r4, _08045AC4 @ => 0x04000044
	movs r1, #0xa0
	strh r1, [r4]
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r1, [r3]
	movs r6, #0x80
	lsls r6, r6, #6
	adds r2, r6, #0
	orrs r1, r2
	strh r1, [r3]
	ldr r2, _08045AC8 @ => 0x04000050
	movs r1, #0xc0
	orrs r0, r1
	strh r0, [r2]
	bl FUN_08024FC4
	ldr r0, _08045ACC @ => 0x04000054
	strh r5, [r0]
	adds r7, r4, #0
	movs r4, #0x80
	lsls r4, r4, #0xa
	movs r6, #0xa0
_08045A92:
	bl FUN_08024FC4
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r4, r4, r1
	asrs r5, r0, #0x10
	lsls r0, r5, #8
	orrs r0, r6
	strh r0, [r7]
	cmp r5, #0xa0
	ble _08045A92
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08045AD0 @ => 0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08045ABC: .4byte 0x04000048
_08045AC0: .4byte 0x0400004A
_08045AC4: .4byte 0x04000044
_08045AC8: .4byte 0x04000050
_08045ACC: .4byte 0x04000054
_08045AD0: .4byte 0x0000DFFF

	thumb_func_start FUN_08045AD4
FUN_08045AD4: @ 0x08045AD4
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r3, #0xa0
	ldr r1, _08045B3C @ => 0x04000048
	movs r5, #0
	strh r5, [r1]
	ldr r2, _08045B40 @ => 0x0400004A
	movs r1, #0x3f
	strh r1, [r2]
	subs r2, #0xa
	movs r1, #0xf0
	strh r1, [r2]
	ldr r4, _08045B44 @ => 0x04000044
	strh r3, [r4]
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r1, [r3]
	movs r6, #0x80
	lsls r6, r6, #6
	adds r2, r6, #0
	orrs r1, r2
	strh r1, [r3]
	ldr r2, _08045B48 @ => 0x04000050
	movs r1, #0xc0
	orrs r0, r1
	strh r0, [r2]
	bl FUN_08024FC4
	ldr r0, _08045B4C @ => 0x04000054
	strh r5, [r0]
	movs r5, #0x9e
	lsls r5, r5, #0x10
_08045B16:
	bl FUN_08024FC4
	adds r0, r5, #0
	ldr r1, _08045B50 @ => 0xFFFE0000
	adds r5, r5, r1
	asrs r3, r0, #0x10
	strh r3, [r4]
	cmp r3, #0
	bge _08045B16
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08045B54 @ => 0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08045B3C: .4byte 0x04000048
_08045B40: .4byte 0x0400004A
_08045B44: .4byte 0x04000044
_08045B48: .4byte 0x04000050
_08045B4C: .4byte 0x04000054
_08045B50: .4byte 0xFFFE0000
_08045B54: .4byte 0x0000DFFF

	thumb_func_start FUN_08045B58
FUN_08045B58: @ 0x08045B58
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r5, #0
	ldr r1, _08045BC8 @ => 0x04000048
	strh r5, [r1]
	ldr r2, _08045BCC @ => 0x0400004A
	movs r1, #0x3f
	strh r1, [r2]
	ldr r4, _08045BD0 @ => 0x04000040
	movs r1, #0xf0
	strh r1, [r4]
	subs r2, #6
	movs r1, #0xa0
	strh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r1, [r3]
	movs r6, #0x80
	lsls r6, r6, #6
	adds r2, r6, #0
	orrs r1, r2
	strh r1, [r3]
	ldr r2, _08045BD4 @ => 0x04000050
	movs r1, #0xc0
	orrs r0, r1
	strh r0, [r2]
	bl FUN_08024FC4
	ldr r0, _08045BD8 @ => 0x04000054
	strh r5, [r0]
	adds r7, r4, #0
	movs r4, #0xc0
	lsls r4, r4, #0xa
	movs r6, #0xf0
_08045B9E:
	bl FUN_08024FC4
	adds r0, r4, #0
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r4, r4, r1
	asrs r5, r0, #0x10
	lsls r0, r5, #8
	orrs r0, r6
	strh r0, [r7]
	cmp r5, #0xf0
	ble _08045B9E
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08045BDC @ => 0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08045BC8: .4byte 0x04000048
_08045BCC: .4byte 0x0400004A
_08045BD0: .4byte 0x04000040
_08045BD4: .4byte 0x04000050
_08045BD8: .4byte 0x04000054
_08045BDC: .4byte 0x0000DFFF

	thumb_func_start FUN_08045BE0
FUN_08045BE0: @ 0x08045BE0
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r3, #0xf0
	ldr r1, _08045C48 @ => 0x04000048
	movs r5, #0
	strh r5, [r1]
	ldr r2, _08045C4C @ => 0x0400004A
	movs r1, #0x3f
	strh r1, [r2]
	ldr r4, _08045C50 @ => 0x04000040
	strh r3, [r4]
	subs r2, #6
	movs r1, #0xa0
	strh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r1, [r3]
	movs r6, #0x80
	lsls r6, r6, #6
	adds r2, r6, #0
	orrs r1, r2
	strh r1, [r3]
	ldr r2, _08045C54 @ => 0x04000050
	movs r1, #0xc0
	orrs r0, r1
	strh r0, [r2]
	bl FUN_08024FC4
	ldr r0, _08045C58 @ => 0x04000054
	strh r5, [r0]
	movs r5, #0xed
	lsls r5, r5, #0x10
_08045C22:
	bl FUN_08024FC4
	adds r0, r5, #0
	ldr r1, _08045C5C @ => 0xFFFD0000
	adds r5, r5, r1
	asrs r3, r0, #0x10
	strh r3, [r4]
	cmp r3, #0
	bge _08045C22
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08045C60 @ => 0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08045C48: .4byte 0x04000048
_08045C4C: .4byte 0x0400004A
_08045C50: .4byte 0x04000040
_08045C54: .4byte 0x04000050
_08045C58: .4byte 0x04000054
_08045C5C: .4byte 0xFFFD0000
_08045C60: .4byte 0x0000DFFF

	thumb_func_start FUN_08045C64
FUN_08045C64: @ 0x08045C64
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r6, #0
	movs r3, #0xf0
	ldr r1, _08045CE0 @ => 0x04000048
	strh r6, [r1]
	ldr r2, _08045CE4 @ => 0x0400004A
	movs r1, #0x3f
	strh r1, [r2]
	ldr r4, _08045CE8 @ => 0x04000040
	strh r3, [r4]
	subs r2, #6
	movs r1, #0xa0
	strh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r1, [r3]
	movs r5, #0x80
	lsls r5, r5, #6
	adds r2, r5, #0
	orrs r1, r2
	strh r1, [r3]
	ldr r2, _08045CEC @ => 0x04000050
	movs r1, #0xc0
	orrs r0, r1
	strh r0, [r2]
	bl FUN_08024FC4
	ldr r0, _08045CF0 @ => 0x04000054
	strh r6, [r0]
	adds r7, r4, #0
	movs r5, #0xed
	lsls r5, r5, #0x10
	movs r4, #0xc0
	lsls r4, r4, #0xa
_08045CAC:
	bl FUN_08024FC4
	adds r0, r4, #0
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r4, r4, r1
	asrs r6, r0, #0x10
	adds r0, r5, #0
	ldr r1, _08045CF4 @ => 0xFFFD0000
	adds r5, r5, r1
	asrs r3, r0, #0x10
	lsls r0, r6, #8
	orrs r3, r0
	strh r3, [r7]
	cmp r6, #0x77
	ble _08045CAC
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08045CF8 @ => 0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08045CE0: .4byte 0x04000048
_08045CE4: .4byte 0x0400004A
_08045CE8: .4byte 0x04000040
_08045CEC: .4byte 0x04000050
_08045CF0: .4byte 0x04000054
_08045CF4: .4byte 0xFFFD0000
_08045CF8: .4byte 0x0000DFFF

	thumb_func_start FUN_08045CFC
FUN_08045CFC: @ 0x08045CFC
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r6, #0
	movs r3, #0xa0
	ldr r1, _08045D78 @ => 0x04000048
	strh r6, [r1]
	ldr r2, _08045D7C @ => 0x0400004A
	movs r1, #0x3f
	strh r1, [r2]
	subs r2, #0xa
	movs r1, #0xf0
	strh r1, [r2]
	ldr r4, _08045D80 @ => 0x04000044
	strh r3, [r4]
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r1, [r3]
	movs r5, #0x80
	lsls r5, r5, #6
	adds r2, r5, #0
	orrs r1, r2
	strh r1, [r3]
	ldr r2, _08045D84 @ => 0x04000050
	movs r1, #0xc0
	orrs r0, r1
	strh r0, [r2]
	bl FUN_08024FC4
	ldr r0, _08045D88 @ => 0x04000054
	strh r6, [r0]
	adds r7, r4, #0
	movs r5, #0x9e
	lsls r5, r5, #0x10
	movs r4, #0x80
	lsls r4, r4, #0xa
_08045D44:
	bl FUN_08024FC4
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r4, r4, r1
	asrs r6, r0, #0x10
	adds r0, r5, #0
	ldr r1, _08045D8C @ => 0xFFFE0000
	adds r5, r5, r1
	asrs r3, r0, #0x10
	lsls r0, r6, #8
	orrs r3, r0
	strh r3, [r7]
	cmp r6, #0x4f
	ble _08045D44
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08045D90 @ => 0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08045D78: .4byte 0x04000048
_08045D7C: .4byte 0x0400004A
_08045D80: .4byte 0x04000044
_08045D84: .4byte 0x04000050
_08045D88: .4byte 0x04000054
_08045D8C: .4byte 0xFFFE0000
_08045D90: .4byte 0x0000DFFF

	thumb_func_start FUN_08045D94
FUN_08045D94: @ 0x08045D94
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08045E00 @ => 0x04000048
	movs r1, #0
	strh r1, [r2]
	adds r2, #2
	movs r1, #0x1f
	strh r1, [r2]
	ldr r1, _08045E04 @ => 0x04000040
	movs r3, #0xf0
	strh r3, [r1]
	subs r2, #6
	movs r1, #0x20
	strh r1, [r2]
	ldr r1, _08045E08 @ => 0x04000042
	strh r3, [r1]
	adds r2, #2
	ldr r3, _08045E0C @ => 0x000080A0
	adds r1, r3, #0
	strh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r1, [r3]
	movs r4, #0xc0
	lsls r4, r4, #7
	adds r2, r4, #0
	orrs r1, r2
	strh r1, [r3]
	ldr r2, _08045E10 @ => 0x04000050
	movs r1, #0xc0
	orrs r0, r1
	strh r0, [r2]
	movs r4, #0x10
	ldr r5, _08045E14 @ => 0x04000054
_08045DDA:
	strh r4, [r5]
	bl FUN_0800133C
	bl FUN_0800C06C
	bl FUN_0801584C
	bl FUN_0803B844
	bl FUN_08024FC4
	bl FUN_08024FC4
	subs r4, #1
	cmp r4, #0
	bge _08045DDA
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08045E00: .4byte 0x04000048
_08045E04: .4byte 0x04000040
_08045E08: .4byte 0x04000042
_08045E0C: .4byte 0x000080A0
_08045E10: .4byte 0x04000050
_08045E14: .4byte 0x04000054

	thumb_func_start FUN_08045E18
FUN_08045E18: @ 0x08045E18
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08045E50 @ => 0x04000050
	movs r1, #0xc0
	orrs r0, r1
	strh r0, [r2]
	movs r4, #0
	ldr r5, _08045E54 @ => 0x04000054
_08045E2A:
	strh r4, [r5]
	bl FUN_0800133C
	bl FUN_0800C06C
	bl FUN_0801584C
	bl FUN_0803B844
	bl FUN_08024FC4
	bl FUN_08024FC4
	adds r4, #2
	cmp r4, #0x10
	ble _08045E2A
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08045E50: .4byte 0x04000050
_08045E54: .4byte 0x04000054

	thumb_func_start FUN_08045E58
FUN_08045E58: @ 0x08045E58
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08045E90 @ => 0x04000050
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r4, #0
	ldr r5, _08045E94 @ => 0x04000054
_08045E6A:
	strh r4, [r5]
	bl FUN_0800133C
	bl FUN_0800C06C
	bl FUN_0801584C
	bl FUN_0803B844
	bl FUN_08024FC4
	bl FUN_08024FC4
	adds r4, #2
	cmp r4, #0x10
	ble _08045E6A
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08045E90: .4byte 0x04000050
_08045E94: .4byte 0x04000054

	thumb_func_start FUN_08045E98
FUN_08045E98: @ 0x08045E98
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r3, #0
	ldr r1, _08045F00 @ => 0x04000048
	strh r3, [r1]
	ldr r2, _08045F04 @ => 0x0400004A
	movs r1, #0x3f
	strh r1, [r2]
	subs r2, #0xa
	movs r1, #0xf0
	strh r1, [r2]
	ldr r4, _08045F08 @ => 0x04000044
	strh r3, [r4]
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r1, [r3]
	movs r5, #0x80
	lsls r5, r5, #6
	adds r2, r5, #0
	orrs r1, r2
	strh r1, [r3]
	ldr r2, _08045F0C @ => 0x04000050
	movs r1, #0xc0
	orrs r0, r1
	strh r0, [r2]
	adds r5, r4, #0
	movs r4, #0x80
	lsls r4, r4, #0xa
_08045ED2:
	bl FUN_08024FC4
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r4, r4, r1
	asrs r3, r0, #0x10
	strh r3, [r5]
	cmp r3, #0xa0
	ble _08045ED2
	ldr r1, _08045F10 @ => 0x04000054
	movs r0, #0x10
	strh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08045F14 @ => 0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08045F00: .4byte 0x04000048
_08045F04: .4byte 0x0400004A
_08045F08: .4byte 0x04000044
_08045F0C: .4byte 0x04000050
_08045F10: .4byte 0x04000054
_08045F14: .4byte 0x0000DFFF

	thumb_func_start FUN_08045F18
FUN_08045F18: @ 0x08045F18
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08045F84 @ => 0x04000048
	movs r1, #0
	strh r1, [r2]
	adds r2, #2
	movs r1, #0x3f
	strh r1, [r2]
	subs r2, #0xa
	movs r1, #0xf0
	strh r1, [r2]
	ldr r4, _08045F88 @ => 0x04000044
	ldr r1, _08045F8C @ => 0x0000A0A0
	strh r1, [r4]
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r1, [r3]
	movs r5, #0x80
	lsls r5, r5, #6
	adds r2, r5, #0
	orrs r1, r2
	strh r1, [r3]
	ldr r2, _08045F90 @ => 0x04000050
	movs r1, #0xc0
	orrs r0, r1
	strh r0, [r2]
	adds r6, r4, #0
	movs r4, #0x9e
	lsls r4, r4, #0x10
	movs r5, #0xa0
_08045F56:
	bl FUN_08024FC4
	adds r0, r4, #0
	ldr r1, _08045F94 @ => 0xFFFE0000
	adds r4, r4, r1
	asrs r1, r0, #0x10
	lsls r0, r1, #8
	orrs r0, r5
	strh r0, [r6]
	cmp r1, #0
	bge _08045F56
	ldr r1, _08045F98 @ => 0x04000054
	movs r0, #0x10
	strh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08045F9C @ => 0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08045F84: .4byte 0x04000048
_08045F88: .4byte 0x04000044
_08045F8C: .4byte 0x0000A0A0
_08045F90: .4byte 0x04000050
_08045F94: .4byte 0xFFFE0000
_08045F98: .4byte 0x04000054
_08045F9C: .4byte 0x0000DFFF

	thumb_func_start FUN_08045FA0
FUN_08045FA0: @ 0x08045FA0
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r3, #0
	ldr r1, _08046008 @ => 0x04000048
	strh r3, [r1]
	ldr r2, _0804600C @ => 0x0400004A
	movs r1, #0x3f
	strh r1, [r2]
	ldr r4, _08046010 @ => 0x04000040
	strh r3, [r4]
	subs r2, #6
	movs r1, #0xa0
	strh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r1, [r3]
	movs r5, #0x80
	lsls r5, r5, #6
	adds r2, r5, #0
	orrs r1, r2
	strh r1, [r3]
	ldr r2, _08046014 @ => 0x04000050
	movs r1, #0xc0
	orrs r0, r1
	strh r0, [r2]
	adds r5, r4, #0
	movs r4, #0xc0
	lsls r4, r4, #0xa
_08045FDA:
	bl FUN_08024FC4
	adds r0, r4, #0
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r4, r4, r1
	asrs r3, r0, #0x10
	strh r3, [r5]
	cmp r3, #0xf0
	ble _08045FDA
	ldr r1, _08046018 @ => 0x04000054
	movs r0, #0x10
	strh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0804601C @ => 0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08046008: .4byte 0x04000048
_0804600C: .4byte 0x0400004A
_08046010: .4byte 0x04000040
_08046014: .4byte 0x04000050
_08046018: .4byte 0x04000054
_0804601C: .4byte 0x0000DFFF

	thumb_func_start FUN_08046020
FUN_08046020: @ 0x08046020
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _0804608C @ => 0x04000048
	movs r1, #0
	strh r1, [r2]
	adds r2, #2
	movs r1, #0x3f
	strh r1, [r2]
	ldr r4, _08046090 @ => 0x04000040
	ldr r1, _08046094 @ => 0x0000F0F0
	strh r1, [r4]
	subs r2, #6
	movs r1, #0xa0
	strh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r1, [r3]
	movs r5, #0x80
	lsls r5, r5, #6
	adds r2, r5, #0
	orrs r1, r2
	strh r1, [r3]
	ldr r2, _08046098 @ => 0x04000050
	movs r1, #0xc0
	orrs r0, r1
	strh r0, [r2]
	adds r6, r4, #0
	movs r4, #0xed
	lsls r4, r4, #0x10
	movs r5, #0xf0
_0804605E:
	bl FUN_08024FC4
	adds r0, r4, #0
	ldr r1, _0804609C @ => 0xFFFD0000
	adds r4, r4, r1
	asrs r1, r0, #0x10
	lsls r0, r1, #8
	orrs r0, r5
	strh r0, [r6]
	cmp r1, #0
	bge _0804605E
	ldr r1, _080460A0 @ => 0x04000054
	movs r0, #0x10
	strh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _080460A4 @ => 0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804608C: .4byte 0x04000048
_08046090: .4byte 0x04000040
_08046094: .4byte 0x0000F0F0
_08046098: .4byte 0x04000050
_0804609C: .4byte 0xFFFD0000
_080460A0: .4byte 0x04000054
_080460A4: .4byte 0x0000DFFF

	thumb_func_start FUN_080460A8
FUN_080460A8: @ 0x080460A8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08046120 @ => 0x04000048
	movs r1, #0
	strh r1, [r2]
	adds r2, #2
	movs r1, #0x3f
	strh r1, [r2]
	ldr r4, _08046124 @ => 0x04000040
	ldr r1, _08046128 @ => 0x00007878
	strh r1, [r4]
	subs r2, #6
	movs r1, #0xa0
	strh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r1, [r3]
	movs r5, #0x80
	lsls r5, r5, #6
	adds r2, r5, #0
	orrs r1, r2
	strh r1, [r3]
	ldr r2, _0804612C @ => 0x04000050
	movs r1, #0xc0
	orrs r0, r1
	strh r0, [r2]
	adds r6, r4, #0
	movs r5, #0xf6
	lsls r5, r5, #0xf
	movs r4, #0xea
	lsls r4, r4, #0xf
_080460E8:
	bl FUN_08024FC4
	adds r0, r4, #0
	ldr r1, _08046130 @ => 0xFFFD0000
	adds r4, r4, r1
	asrs r2, r0, #0x10
	adds r1, r5, #0
	movs r0, #0xc0
	lsls r0, r0, #0xa
	adds r5, r5, r0
	asrs r1, r1, #0x10
	lsls r0, r2, #8
	orrs r1, r0
	strh r1, [r6]
	cmp r2, #0
	bge _080460E8
	ldr r1, _08046134 @ => 0x04000054
	movs r0, #0x10
	strh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08046138 @ => 0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08046120: .4byte 0x04000048
_08046124: .4byte 0x04000040
_08046128: .4byte 0x00007878
_0804612C: .4byte 0x04000050
_08046130: .4byte 0xFFFD0000
_08046134: .4byte 0x04000054
_08046138: .4byte 0x0000DFFF

	thumb_func_start FUN_0804613C
FUN_0804613C: @ 0x0804613C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _080461B4 @ => 0x04000048
	movs r1, #0
	strh r1, [r2]
	adds r2, #2
	movs r1, #0x3f
	strh r1, [r2]
	subs r2, #0xa
	movs r1, #0xf0
	strh r1, [r2]
	ldr r4, _080461B8 @ => 0x04000044
	ldr r1, _080461BC @ => 0x00005050
	strh r1, [r4]
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r1, [r3]
	movs r5, #0x80
	lsls r5, r5, #6
	adds r2, r5, #0
	orrs r1, r2
	strh r1, [r3]
	ldr r2, _080461C0 @ => 0x04000050
	movs r1, #0xc0
	orrs r0, r1
	strh r0, [r2]
	adds r6, r4, #0
	movs r5, #0xa4
	lsls r5, r5, #0xf
	movs r4, #0x9c
	lsls r4, r4, #0xf
_0804617C:
	bl FUN_08024FC4
	adds r0, r4, #0
	ldr r1, _080461C4 @ => 0xFFFE0000
	adds r4, r4, r1
	asrs r2, r0, #0x10
	adds r1, r5, #0
	movs r0, #0x80
	lsls r0, r0, #0xa
	adds r5, r5, r0
	asrs r1, r1, #0x10
	lsls r0, r2, #8
	orrs r1, r0
	strh r1, [r6]
	cmp r2, #0
	bge _0804617C
	ldr r1, _080461C8 @ => 0x04000054
	movs r0, #0x10
	strh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _080461CC @ => 0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080461B4: .4byte 0x04000048
_080461B8: .4byte 0x04000044
_080461BC: .4byte 0x00005050
_080461C0: .4byte 0x04000050
_080461C4: .4byte 0xFFFE0000
_080461C8: .4byte 0x04000054
_080461CC: .4byte 0x0000DFFF

	thumb_func_start FUN_080461D0
FUN_080461D0: @ 0x080461D0
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08046218 @ => 0x04000050
	movs r1, #0xc0
	orrs r0, r1
	strh r0, [r2]
	movs r4, #0
	ldr r5, _0804621C @ => 0x04000054
_080461E2:
	strh r4, [r5]
	bl FUN_0800133C
	bl FUN_0800C06C
	bl FUN_0801584C
	bl FUN_0803B844
	bl FUN_08024FC4
	bl FUN_08024FC4
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _080461E2
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08046220 @ => 0x00009FFF
	ands r0, r1
	strh r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08046218: .4byte 0x04000050
_0804621C: .4byte 0x04000054
_08046220: .4byte 0x00009FFF

	thumb_func_start FUN_08046224
FUN_08046224: @ 0x08046224
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _0804626C @ => 0x04000050
	movs r1, #0xc0
	orrs r0, r1
	strh r0, [r2]
	movs r4, #0x10
_08046234:
	ldr r0, _08046270 @ => 0x04000054
	strh r4, [r0]
	bl FUN_0800133C
	bl FUN_0801584C
	bl FUN_0800C06C
	bl FUN_0803B844
	bl FUN_08024FC4
	bl FUN_0800133C
	bl FUN_0801584C
	bl FUN_0800C06C
	bl FUN_0803B844
	bl FUN_08024FC4
	subs r4, #1
	cmp r4, #0
	bge _08046234
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804626C: .4byte 0x04000050
_08046270: .4byte 0x04000054

	thumb_func_start FUN_08046274
FUN_08046274: @ 0x08046274
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804628A
	cmp r0, #1
	beq _080462D8
	b _080462E0
_0804628A:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _080462D4 @ => 0xFFFF0000
	cmp r1, r0
	bne _080462E0
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r0, [r0]
	bl FUN_080213F8
	cmp r0, #1
	bne _080462C8
	adds r0, r4, #0
	bl FUN_0804637C
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _080462C8
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08001FB0
_080462C8:
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #1
	strh r0, [r1]
	b _080462E0
	.align 2, 0
_080462D4: .4byte 0xFFFF0000
_080462D8:
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
_080462E0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080462E8
FUN_080462E8: @ 0x080462E8
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08009B04
	ldrh r4, [r0, #8]
	ldrb r1, [r0, #0xa]
	ldrb r2, [r0, #0xb]
	ldrb r3, [r0, #0xc]
	adds r0, r4, #0
	bl FUN_0804630C
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0804630C
FUN_0804630C: @ 0x0804630C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r3
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	bl FUN_080012FC
	adds r4, r0, #0
	cmp r4, #0
	beq _08046366
	movs r1, #0
	movs r0, #0x22
	strh r0, [r4, #8]
	strh r1, [r4, #0xa]
	ldr r0, _08046374 @ => 0x00002008
	str r0, [r4, #0xc]
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r4, r1
	strh r7, [r0]
	subs r1, #8
	adds r0, r4, r1
	strb r5, [r0]
	adds r1, #1
	adds r0, r4, r1
	strb r6, [r0]
	adds r1, #3
	adds r0, r4, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001FB0
	ldr r0, _08046378 @ => FUN_08046274
	str r0, [r4, #0x50]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #1
	strh r0, [r1]
_08046366:
	adds r0, r4, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08046374: .4byte 0x00002008
_08046378: .4byte FUN_08046274

	thumb_func_start FUN_0804637C
FUN_0804637C: @ 0x0804637C
	push {lr}
	adds r1, r0, #0
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	bl FUN_080099A8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08046398
FUN_08046398: @ 0x08046398
	push {r4, r5, r6, lr}
	sub sp, #8
	mov r0, sp
	bl FUN_0804708C
	ldr r5, _08046448 @ => 0x03006120
	adds r2, r5, #0
	adds r2, #0x94
	adds r0, r5, #0
	adds r0, #0x8c
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r2]
	str r1, [r2, #4]
	ldr r1, _0804644C @ => 0x030060C0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	ldr r0, [r5, #0x10]
	movs r4, #0x80
	lsls r4, r4, #6
	movs r1, #0xff
	adds r2, r4, #0
	bl FUN_0802CB40
	ldr r0, [r5, #0x14]
	movs r1, #0xff
	adds r2, r4, #0
	bl FUN_0802CB40
	ldr r0, [r5, #0x18]
	movs r4, #0x80
	lsls r4, r4, #5
	movs r1, #0xff
	adds r2, r4, #0
	bl FUN_0802CB40
	ldr r0, [r5, #0x1c]
	movs r1, #0xff
	adds r2, r4, #0
	bl FUN_0802CB40
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r5, #0x30]
	adds r0, #0x40
	strh r0, [r5, #0x32]
	movs r4, #0
	ldr r1, _08046450 @ => 0x000002BF
	adds r3, r1, #0
	ldr r2, [r5, #0x20]
_08046402:
	subs r0, r3, r4
	strh r0, [r2]
	adds r2, #2
	adds r4, #1
	cmp r4, r1
	ble _08046402
	movs r4, #0
	ldr r2, _08046454 @ => 0x000002FF
	ldr r0, _08046448 @ => 0x03006120
	adds r3, r2, #0
	ldr r1, [r0, #0x24]
_08046418:
	subs r0, r3, r4
	strh r0, [r1]
	adds r1, #2
	adds r4, #1
	cmp r4, r2
	ble _08046418
	movs r4, #0
	ldr r5, _08046458 @ => 0x030061B0
	subs r6, r5, #4
_0804642A:
	ldr r0, [r6]
	lsls r2, r4, #3
	ldr r1, [r5]
	adds r1, r1, r2
	ldr r2, [sp]
	bl FUN_08046A30
	adds r4, #1
	cmp r4, #0x14
	ble _0804642A
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08046448: .4byte gUnk_03006120
_0804644C: .4byte gUnk_030060C0
_08046450: .4byte 0x000002BF
_08046454: .4byte 0x000002FF
_08046458: .4byte gUnk_030061B0

	thumb_func_start FUN_0804645C
FUN_0804645C: @ 0x0804645C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	mov r0, sp
	adds r1, r5, #0
	bl FUN_080111FC
	ldr r0, [sp]
	asrs r0, r0, #0x10
	ldr r1, [sp, #4]
	asrs r1, r1, #0x10
	subs r0, #0x78
	str r0, [sp]
	subs r1, #0x50
	str r1, [sp, #4]
	add r4, sp, #8
	adds r0, r4, #0
	bl FUN_0804708C
	ldr r1, [sp]
	cmp r1, #0
	bge _08046490
	movs r0, #0
	b _080464A8
_08046490:
	ldr r2, [sp, #8]
	adds r0, r2, #0
	subs r0, #0xf0
	cmp r1, r0
	blt _080464AA
	ldr r0, _080464B4 @ => 0x03006120
	adds r0, #0xc4
	ldr r0, [r0]
	cmp r0, #0
	bne _080464AA
	adds r0, r2, #0
	subs r0, #0xf1
_080464A8:
	str r0, [sp]
_080464AA:
	ldr r1, [sp, #4]
	cmp r1, #0
	bge _080464B8
	movs r0, #0
	b _080464C4
	.align 2, 0
_080464B4: .4byte gUnk_03006120
_080464B8:
	ldr r4, [r4, #4]
	adds r0, r4, #0
	subs r0, #0xa0
	cmp r1, r0
	blt _080464C6
	subs r0, #1
_080464C4:
	str r0, [sp, #4]
_080464C6:
	ldr r4, _08046518 @ => 0x03006120
	lsls r2, r5, #3
	adds r2, r2, r4
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r0, [r2]
	str r1, [r2, #4]
	ldr r0, _0804651C @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x88
	lsls r1, r1, #0xd
	ands r0, r1
	cmp r0, #0
	bne _08046598
	cmp r6, #0
	bne _08046584
	bl FUN_080465D0
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r2, [r0]
	asrs r1, r2, #3
	ldr r3, [sp]
	asrs r0, r3, #3
	cmp r1, r0
	beq _0804653A
	cmp r2, r3
	ble _08046520
	adds r4, #0x90
	ldr r1, [r4]
	ldr r2, [sp, #8]
	adds r0, r3, #0
	bl FUN_080468EC
	ldr r0, [sp]
	adds r0, #0xf8
	ldr r1, [r4]
	movs r2, #0
	bl FUN_08047520
	b _0804653A
	.align 2, 0
_08046518: .4byte gUnk_03006120
_0804651C: .4byte gUnk_03004374
_08046520:
	adds r0, r3, #0
	adds r0, #0xf0
	adds r4, #0x90
	ldr r1, [r4]
	ldr r2, [sp, #8]
	bl FUN_080468EC
	ldr r0, [sp]
	subs r0, #8
	ldr r1, [r4]
	movs r2, #0
	bl FUN_08047520
_0804653A:
	ldr r0, _08046568 @ => 0x03006120
	adds r0, #0x90
	ldr r2, [r0]
	asrs r1, r2, #3
	ldr r3, [sp, #4]
	asrs r0, r3, #3
	cmp r1, r0
	beq _08046584
	cmp r2, r3
	ble _0804656C
	ldr r0, [sp]
	ldr r2, [sp, #8]
	adds r1, r3, #0
	bl FUN_08046A30
	ldr r0, [sp]
	ldr r1, [sp, #4]
	adds r1, #0xa8
	movs r2, #1
	bl FUN_08047520
	b _08046584
	.align 2, 0
_08046568: .4byte gUnk_03006120
_0804656C:
	ldr r0, [sp]
	adds r1, r3, #0
	adds r1, #0xa0
	ldr r2, [sp, #8]
	bl FUN_08046A30
	ldr r0, [sp]
	ldr r1, [sp, #4]
	subs r1, #8
	movs r2, #1
	bl FUN_08047520
_08046584:
	ldr r2, _08046594 @ => 0x03006120
	adds r2, #0x8c
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r0, [r2]
	str r1, [r2, #4]
	b _080465A4
	.align 2, 0
_08046594: .4byte gUnk_03006120
_08046598:
	adds r0, r4, #0
	adds r0, #0x8c
	movs r1, #0
	str r1, [r0]
	adds r0, #4
	str r1, [r0]
_080465A4:
	movs r4, #0
	ldr r0, _080465CC @ => 0x03006120
	adds r5, r0, #0
	adds r5, #0x60
_080465AC:
	ldr r0, [r5]
	cmp r0, #0
	beq _080465BC
	ldr r1, [sp]
	ldr r2, [sp, #4]
	adds r0, r4, #0
	bl FUN_0800CCCC
_080465BC:
	adds r5, #4
	adds r4, #1
	cmp r4, #2
	ble _080465AC
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080465CC: .4byte gUnk_03006120

	thumb_func_start FUN_080465D0
FUN_080465D0: @ 0x080465D0
	push {r4, r5, r6, lr}
	sub sp, #8
	mov r0, sp
	bl FUN_0804708C
	ldr r6, _080465F8 @ => 0x03002718
	movs r5, #1
	rsbs r5, r5, #0
	adds r4, r6, #0
_080465E2:
	ldr r0, [r4]
	cmp r0, r5
	beq _08046608
	cmp r4, r6
	bne _080465FC
	ldr r1, [r4, #4]
	ldr r2, [sp]
	bl FUN_08046740
	b _08046604
	.align 2, 0
_080465F8: .4byte gUnk_03002718
_080465FC:
	ldr r1, [r4, #4]
	ldr r2, [sp]
	bl FUN_08046810
_08046604:
	str r5, [r4]
	str r5, [r4, #4]
_08046608:
	adds r4, #8
	adds r0, r6, #0
	adds r0, #8
	cmp r4, r0
	ble _080465E2
	ldr r0, _0804662C @ => 0x03006120
	adds r2, r0, #0
	adds r2, #0x94
	adds r0, #0x8c
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r2]
	str r1, [r2, #4]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804662C: .4byte gUnk_03006120

	thumb_func_start FUN_08046630
FUN_08046630: @ 0x08046630
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r1
	str r2, [sp]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _08046674 @ => 0x0000FFFF
	mov sl, r0
	ldr r2, _08046678 @ => 0x000007FF
	ands r2, r3
	ldr r0, _0804667C @ => 0x03006120
	mov ip, r0
	mov r0, sb
	lsls r1, r0, #2
	mov r0, ip
	adds r0, #0x18
	adds r0, r1, r0
	ldr r0, [r0]
	lsls r2, r2, #1
	adds r0, r2, r0
	ldrh r4, [r0]
	mov r0, ip
	adds r0, #0x10
	adds r0, r1, r0
	ldr r5, [r0]
	ldr r0, _08046674 @ => 0x0000FFFF
	mov r8, r0
	adds r7, r1, #0
	str r2, [sp, #4]
	b _08046686
	.align 2, 0
_08046674: .4byte 0x0000FFFF
_08046678: .4byte 0x000007FF
_0804667C: .4byte gUnk_03006120
_08046680:
	mov sl, r4
	adds r0, r1, r5
	ldrh r4, [r0, #4]
_08046686:
	cmp r4, r8
	beq _0804669E
	lsls r1, r4, #3
	adds r0, r1, r5
	ldrh r0, [r0, #2]
	adds r6, r1, #0
	cmp r0, r3
	bne _08046680
	ldr r2, _080466A4 @ => 0x0000FFFF
	mov r8, r2
	cmp r4, r8
	bne _080466A8
_0804669E:
	movs r0, #1
	b _0804672A
	.align 2, 0
_080466A4: .4byte 0x0000FFFF
_080466A8:
	adds r1, r6, r5
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08046728
	ldr r0, _08046704 @ => 0x030060C0
	ldr r2, [sp]
	lsls r1, r2, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	mov r3, ip
	adds r3, #0x20
	adds r3, r7, r3
	mov r0, sb
	lsls r1, r0, #1
	mov r0, ip
	adds r0, #0x30
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r2, r0, #1
	strh r2, [r1]
	lsls r0, r0, #0x10
	ldr r1, [r3]
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	strh r4, [r0]
	cmp sl, r8
	bne _08046708
	mov r0, ip
	adds r0, #0x18
	adds r0, r7, r0
	ldr r1, [r0]
	ldr r2, [sp, #4]
	adds r1, r2, r1
	mov r0, ip
	adds r0, #0x10
	adds r0, r7, r0
	ldr r0, [r0]
	adds r0, r6, r0
	ldrh r0, [r0, #4]
	strh r0, [r1]
	b _0804671C
	.align 2, 0
_08046704: .4byte gUnk_030060C0
_08046708:
	mov r0, sl
	lsls r1, r0, #3
	adds r1, r1, r5
	mov r0, ip
	adds r0, #0x10
	adds r0, r7, r0
	ldr r0, [r0]
	adds r0, r6, r0
	ldrh r0, [r0, #4]
	strh r0, [r1, #4]
_0804671C:
	adds r0, r6, r5
	ldr r1, _0804673C @ => 0x0000FFFF
	strh r1, [r0, #2]
	movs r1, #1
	rsbs r1, r1, #0
	strh r1, [r0, #4]
_08046728:
	movs r0, #0
_0804672A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804673C: .4byte 0x0000FFFF

	thumb_func_start FUN_08046740
FUN_08046740: @ 0x08046740
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r3, r0, #0
	cmp r3, r2
	blo _08046758
_08046752:
	subs r3, r3, r2
	cmp r3, r2
	bhs _08046752
_08046758:
	movs r0, #0
	mov r8, r0
	lsrs r0, r1, #5
	str r0, [sp, #0xc]
	lsrs r0, r3, #5
	str r0, [sp, #8]
	movs r0, #0x18
	ands r3, r0
	lsrs r3, r3, #3
	str r3, [sp]
	adds r3, r0, #0
	ands r3, r1
	str r3, [sp, #4]
_08046772:
	ldr r0, _08046800 @ => 0x03006120
	adds r0, #0x70
	add r0, r8
	ldrb r0, [r0]
	mov sl, r0
	mov r0, r8
	lsls r2, r0, #2
	ldr r3, _08046804 @ => 0x030060F0
	adds r1, r2, r3
	ldr r0, _08046808 @ => 0x03005F4C
	ldrh r0, [r0]
	ldr r3, [sp, #0xc]
	muls r0, r3, r0
	lsls r0, r0, #1
	ldr r1, [r1]
	adds r1, r1, r0
	ldr r3, [sp, #8]
	lsls r0, r3, #1
	adds r6, r1, r0
	ldr r0, _0804680C @ => 0x030060FC
	adds r2, r2, r0
	ldrh r0, [r6]
	lsls r0, r0, #5
	ldr r1, [r2]
	adds r5, r1, r0
	ldr r1, [sp, #4]
	lsrs r4, r1, #1
	movs r3, #1
	add r3, r8
	mov sb, r3
	adds r3, r2, #0
	movs r7, #0x14
_080467B2:
	ldr r1, [sp]
	adds r0, r4, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	mov r1, sl
	mov r2, r8
	str r3, [sp, #0x10]
	bl FUN_08046630
	adds r4, #4
	ldr r3, [sp, #0x10]
	cmp r4, #0xf
	bls _080467E0
	subs r4, #0x10
	ldr r0, _08046808 @ => 0x03005F4C
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r6, r6, r0
	ldrh r0, [r6]
	lsls r0, r0, #5
	ldr r1, [r3]
	adds r5, r1, r0
_080467E0:
	subs r7, #1
	cmp r7, #0
	bge _080467B2
	mov r8, sb
	mov r3, r8
	cmp r3, #2
	ble _08046772
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08046800: .4byte gUnk_03006120
_08046804: .4byte gUnk_030060F0
_08046808: .4byte gUnk_03005F4C
_0804680C: .4byte gUnk_030060FC

	thumb_func_start FUN_08046810
FUN_08046810: @ 0x08046810
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r5, r0, #0
	mov r8, r2
	cmp r5, r8
	blo _0804682C
_08046824:
	mov r0, r8
	subs r5, r5, r0
	cmp r5, r8
	bhs _08046824
_0804682C:
	str r5, [sp, #4]
	movs r2, #0
	mov sb, r2
	lsrs r0, r1, #5
	str r0, [sp, #0x10]
	movs r2, #0x18
	ands r1, r2
	lsrs r1, r1, #1
	str r1, [sp]
_0804683E:
	ldr r0, _080468E0 @ => 0x03006120
	adds r0, #0x70
	add r0, sb
	ldrb r0, [r0]
	str r0, [sp, #8]
	mov r0, sb
	lsls r1, r0, #2
	ldr r0, _080468E4 @ => 0x030060F0
	adds r0, #0xc
	adds r0, r1, r0
	ldr r0, [r0]
	mov sl, r0
	ldr r5, [sp, #4]
	adds r0, r5, #0
	movs r2, #0x18
	ands r0, r2
	lsrs r6, r0, #3
	ldr r0, _080468E4 @ => 0x030060F0
	adds r1, r1, r0
	ldr r0, _080468E8 @ => 0x03005F4C
	ldrh r0, [r0]
	ldr r2, [sp, #0x10]
	muls r0, r2, r0
	lsls r0, r0, #1
	ldr r1, [r1]
	adds r1, r1, r0
	lsrs r0, r5, #5
	lsls r0, r0, #1
	adds r4, r1, r0
	ldrh r0, [r4]
	lsls r0, r0, #5
	mov r1, sl
	adds r7, r1, r0
	mov r2, sb
	adds r2, #1
	str r2, [sp, #0xc]
	movs r3, #0x1e
_08046888:
	ldr r1, [sp]
	adds r0, r1, r6
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	ldr r1, [sp, #8]
	mov r2, sb
	str r3, [sp, #0x14]
	bl FUN_08046630
	adds r6, #1
	adds r5, #8
	ldr r3, [sp, #0x14]
	cmp r6, #3
	bls _080468C0
	subs r6, #4
	adds r4, #2
	cmp r5, r8
	blo _080468B8
	ldr r0, _080468E8 @ => 0x03005F4C
	ldrh r0, [r0]
	lsls r0, r0, #1
	subs r4, r4, r0
	movs r5, #0
_080468B8:
	ldrh r0, [r4]
	lsls r0, r0, #5
	mov r2, sl
	adds r7, r2, r0
_080468C0:
	subs r3, #1
	cmp r3, #0
	bge _08046888
	ldr r0, [sp, #0xc]
	mov sb, r0
	cmp r0, #2
	ble _0804683E
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080468E0: .4byte gUnk_03006120
_080468E4: .4byte gUnk_030060F0
_080468E8: .4byte gUnk_03005F4C

	thumb_func_start FUN_080468EC
FUN_080468EC: @ 0x080468EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	str r0, [sp]
	str r1, [sp, #4]
	cmp r0, r2
	blo _0804690A
_08046900:
	ldr r0, [sp]
	subs r0, r0, r2
	str r0, [sp]
	cmp r0, r2
	bhs _08046900
_0804690A:
	movs r1, #0
	str r1, [sp, #0x14]
	ldr r2, [sp, #4]
	lsrs r2, r2, #5
	str r2, [sp, #0x2c]
	ldr r3, [sp]
	lsrs r3, r3, #5
	str r3, [sp, #0x28]
	movs r1, #0x18
	ldr r0, [sp]
	ands r0, r1
	lsrs r0, r0, #3
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	adds r2, r0, #0
	ands r2, r1
	str r2, [sp, #0x1c]
_0804692C:
	ldr r0, _08046A18 @ => 0x03006120
	adds r0, #0x70
	ldr r3, [sp, #0x14]
	adds r0, r3, r0
	ldrb r0, [r0]
	str r0, [sp, #0x18]
	lsls r2, r3, #2
	ldr r0, _08046A1C @ => 0x030060F0
	adds r0, #0xc
	adds r0, r2, r0
	ldr r0, [r0]
	mov sb, r0
	ldr r0, [sp, #0x1c]
	lsrs r6, r0, #1
	ldr r3, _08046A1C @ => 0x030060F0
	adds r1, r2, r3
	ldr r0, _08046A20 @ => 0x03005F4C
	ldrh r0, [r0]
	ldr r3, [sp, #0x2c]
	muls r0, r3, r0
	lsls r0, r0, #1
	ldr r1, [r1]
	adds r1, r1, r0
	ldr r3, [sp, #0x28]
	lsls r0, r3, #1
	adds r7, r1, r0
	ldrh r1, [r7]
	lsls r0, r1, #5
	add r0, sb
	mov sl, r0
	ldr r0, _08046A24 @ => 0x03006110
	adds r3, r2, r0
	ldr r0, [r3]
	add r0, sb
	lsls r1, r1, #4
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _08046A28 @ => 0x03005F30
	adds r2, r2, r0
	ldrb r0, [r2, #1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r1, r0, r1
	str r1, [sp, #0xc]
	movs r2, #0xff
	ldr r1, [sp, #4]
	ands r1, r2
	lsrs r1, r1, #3
	lsls r1, r1, #5
	ldr r0, [sp]
	ands r0, r2
	lsrs r0, r0, #3
	adds r5, r1, r0
	ldr r2, [sp, #0x14]
	adds r2, #1
	str r2, [sp, #0x24]
	str r3, [sp, #0x20]
	movs r3, #0x14
	str r3, [sp, #0x10]
_080469A6:
	ldr r0, [sp, #8]
	adds r4, r6, r0
	lsls r0, r4, #1
	add r0, sl
	ldrh r0, [r0]
	ldr r1, [sp, #0x18]
	movs r2, #0
	ldr r3, [sp, #0x14]
	bl FUN_08046B8C
	lsls r2, r5, #1
	ldr r1, [sp, #0xc]
	adds r2, r2, r1
	strh r0, [r2]
	add r4, r8
	ldrb r1, [r4]
	lsls r1, r1, #0xa
	orrs r1, r0
	strh r1, [r2]
	adds r5, #0x20
	ldr r0, _08046A2C @ => 0x000003FF
	ands r5, r0
	adds r6, #4
	cmp r6, #0xf
	bls _080469F6
	subs r6, #0x10
	ldr r0, _08046A20 @ => 0x03005F4C
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r7, r7, r0
	ldrh r1, [r7]
	lsls r0, r1, #5
	add r0, sb
	mov sl, r0
	ldr r2, [sp, #0x20]
	ldr r0, [r2]
	add r0, sb
	lsls r1, r1, #4
	adds r0, r0, r1
	mov r8, r0
_080469F6:
	ldr r3, [sp, #0x10]
	subs r3, #1
	str r3, [sp, #0x10]
	cmp r3, #0
	bge _080469A6
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x14]
	cmp r0, #2
	ble _0804692C
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08046A18: .4byte gUnk_03006120
_08046A1C: .4byte gUnk_030060F0
_08046A20: .4byte gUnk_03005F4C
_08046A24: .4byte gUnk_03006110
_08046A28: .4byte gUnk_03005F30
_08046A2C: .4byte 0x000003FF

	thumb_func_start FUN_08046A30
FUN_08046A30: @ 0x08046A30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r5, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	cmp r5, r2
	blo _08046A4E
_08046A46:
	ldr r0, [sp, #4]
	subs r5, r5, r0
	cmp r5, r0
	bhs _08046A46
_08046A4E:
	str r5, [sp, #0x18]
	movs r1, #0
	str r1, [sp, #0x14]
	ldr r2, [sp]
	lsrs r2, r2, #5
	str r2, [sp, #0x2c]
	ldr r0, [sp]
	movs r3, #0x18
	ands r0, r3
	lsrs r0, r0, #1
	str r0, [sp, #0xc]
_08046A64:
	ldr r0, _08046B78 @ => 0x03006120
	adds r0, #0x70
	ldr r1, [sp, #0x14]
	adds r0, r1, r0
	ldrb r0, [r0]
	str r0, [sp, #0x1c]
	lsls r2, r1, #2
	ldr r0, _08046B7C @ => 0x030060F0
	adds r0, #0xc
	adds r0, r2, r0
	ldr r0, [r0]
	str r0, [sp, #0x20]
	ldr r5, [sp, #0x18]
	adds r0, r5, #0
	movs r3, #0x18
	ands r0, r3
	lsrs r0, r0, #3
	mov r8, r0
	ldr r0, _08046B7C @ => 0x030060F0
	adds r1, r2, r0
	ldr r0, _08046B80 @ => 0x03005F4C
	ldrh r0, [r0]
	ldr r3, [sp, #0x2c]
	muls r0, r3, r0
	lsls r0, r0, #1
	ldr r1, [r1]
	adds r1, r1, r0
	lsrs r0, r5, #5
	lsls r0, r0, #1
	adds r7, r1, r0
	ldr r0, _08046B84 @ => 0x03005F30
	adds r0, r2, r0
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r1, r0, r1
	str r1, [sp, #8]
	movs r1, #0xff
	ldr r0, [sp]
	ands r0, r1
	lsrs r0, r0, #3
	lsls r0, r0, #6
	ldr r3, [sp, #8]
	adds r3, r3, r0
	str r3, [sp, #8]
	adds r0, r5, #0
	ands r0, r1
	lsrs r6, r0, #3
	ldrh r1, [r7]
	lsls r0, r1, #5
	ldr r3, [sp, #0x20]
	adds r3, r3, r0
	mov sl, r3
	ldr r0, _08046B88 @ => 0x03006110
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r3, [sp, #0x20]
	adds r0, r3, r0
	lsls r1, r1, #4
	adds r0, r0, r1
	mov sb, r0
	ldr r0, [sp, #0x14]
	adds r0, #1
	str r0, [sp, #0x28]
	str r2, [sp, #0x24]
	movs r1, #0x1e
	str r1, [sp, #0x10]
_08046AEE:
	ldr r4, [sp, #0xc]
	add r4, r8
	lsls r0, r4, #1
	add r0, sl
	ldrh r0, [r0]
	ldr r1, [sp, #0x1c]
	movs r2, #0
	ldr r3, [sp, #0x14]
	bl FUN_08046B8C
	lsls r2, r6, #1
	ldr r3, [sp, #8]
	adds r2, r2, r3
	add r4, sb
	ldrb r1, [r4]
	lsls r1, r1, #0xa
	orrs r1, r0
	strh r1, [r2]
	adds r6, #1
	movs r0, #0x1f
	ands r6, r0
	movs r0, #1
	add r8, r0
	adds r5, #8
	mov r1, r8
	cmp r1, #3
	bls _08046B54
	movs r2, #4
	rsbs r2, r2, #0
	add r8, r2
	adds r7, #2
	ldr r3, [sp, #4]
	cmp r5, r3
	blo _08046B3C
	ldr r0, _08046B80 @ => 0x03005F4C
	ldrh r0, [r0]
	lsls r0, r0, #1
	subs r7, r7, r0
	movs r5, #0
_08046B3C:
	ldrh r0, [r7]
	lsls r1, r0, #5
	ldr r2, [sp, #0x20]
	adds r2, r2, r1
	mov sl, r2
	ldr r3, [sp, #0x24]
	ldr r1, [r3]
	ldr r2, [sp, #0x20]
	adds r1, r2, r1
	lsls r0, r0, #4
	adds r1, r1, r0
	mov sb, r1
_08046B54:
	ldr r3, [sp, #0x10]
	subs r3, #1
	str r3, [sp, #0x10]
	cmp r3, #0
	bge _08046AEE
	ldr r0, [sp, #0x28]
	str r0, [sp, #0x14]
	cmp r0, #2
	bgt _08046B68
	b _08046A64
_08046B68:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08046B78: .4byte gUnk_03006120
_08046B7C: .4byte gUnk_030060F0
_08046B80: .4byte gUnk_03005F4C
_08046B84: .4byte gUnk_03005F30
_08046B88: .4byte gUnk_03006110

	thumb_func_start FUN_08046B8C
FUN_08046B8C: @ 0x08046B8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	mov sl, r3
	ldr r7, _08046C28 @ => 0x0000FFFF
	ldr r2, _08046C2C @ => 0x03006120
	lsls r0, r6, #2
	adds r1, r2, #0
	adds r1, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #4
	str r0, [sp]
	mov ip, r2
	ldr r2, _08046C30 @ => 0x000007FF
	ands r2, r5
	lsls r1, r6, #2
	mov r0, ip
	adds r0, #0x18
	adds r0, r1, r0
	ldr r0, [r0]
	lsls r2, r2, #1
	adds r0, r2, r0
	ldrh r3, [r0]
	mov r0, ip
	adds r0, #0x10
	adds r0, r1, r0
	ldr r4, [r0]
	ldr r0, _08046C28 @ => 0x0000FFFF
	mov r8, r1
	mov sb, r2
	cmp r3, r0
	beq _08046BEC
	adds r2, r0, #0
_08046BDA:
	lsls r0, r3, #3
	adds r1, r0, r4
	ldrh r0, [r1, #2]
	cmp r0, r5
	beq _08046C38
	adds r7, r3, #0
	ldrh r3, [r1, #4]
	cmp r3, r2
	bne _08046BDA
_08046BEC:
	ldr r0, _08046C34 @ => 0x030060C0
	mov r2, sl
	lsls r1, r2, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r2, r6, #1
	mov r0, ip
	adds r0, #0x30
	adds r2, r2, r0
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	mov r1, ip
	adds r1, #0x20
	add r1, r8
	ldrh r0, [r2]
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	ldr r0, _08046C28 @ => 0x0000FFFF
	cmp r7, r0
	beq _08046C40
	lsls r0, r7, #3
	adds r0, r0, r4
	strh r3, [r0, #4]
	b _08046C4C
	.align 2, 0
_08046C28: .4byte 0x0000FFFF
_08046C2C: .4byte gUnk_03006120
_08046C30: .4byte 0x000007FF
_08046C34: .4byte gUnk_030060C0
_08046C38:
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _08046C74
_08046C40:
	mov r0, ip
	adds r0, #0x18
	add r0, r8
	ldr r0, [r0]
	add r0, sb
	strh r3, [r0]
_08046C4C:
	lsls r0, r3, #3
	adds r0, r0, r4
	strh r5, [r0, #2]
	movs r1, #1
	strh r1, [r0]
	lsls r1, r6, #0xa
	adds r1, r1, r3
	lsls r1, r1, #5
	lsls r0, r5, #5
	movs r4, #0xc0
	lsls r4, r4, #0x13
	adds r1, r1, r4
	ldr r5, [sp]
	adds r0, r0, r5
	ldm r0!, {r2, r4, r5}
	stm r1!, {r2, r4, r5}
	ldm r0!, {r2, r4, r5}
	stm r1!, {r2, r4, r5}
	ldm r0!, {r2, r4}
	stm r1!, {r2, r4}
_08046C74:
	adds r0, r3, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08046C88
FUN_08046C88: @ 0x08046C88
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _08046D40 @ => 0x03005F54
	movs r1, #0
	str r1, [r0]
	ldr r0, _08046D44 @ => 0x030060CC
	str r1, [r0]
	ldr r0, _08046D48 @ => 0x030060B8
	str r1, [r0]
	ldr r0, _08046D4C @ => 0x030060AC
	str r1, [r0]
	ldr r0, _08046D50 @ => 0x03005F44
	str r1, [r0]
	ldr r0, _08046D54 @ => 0x03005F48
	str r1, [r0]
	ldr r0, _08046D58 @ => 0x03004808
	str r1, [r0]
	ldr r0, _08046D5C @ => 0x03006120
	str r1, [r0, #0x54]
	str r1, [sp]
	str r1, [sp, #4]
	movs r4, #0
_08046CB4:
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	mov r0, sp
	bl FUN_08047054
	adds r4, #1
	cmp r4, #1
	bls _08046CB4
	movs r4, #0
	ldr r6, _08046D58 @ => 0x03004808
	ldr r5, _08046D5C @ => 0x03006120
	movs r0, #1
	adds r1, r5, #0
	adds r1, #0x60
_08046CD0:
	stm r1!, {r0}
	adds r4, #1
	cmp r4, #2
	bls _08046CD0
	adds r1, r5, #0
	adds r1, #0x70
	movs r4, #0
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x72
	strb r4, [r0]
	movs r0, #0xc0
	lsls r0, r0, #5
	bl FUN_0802C95C
	str r0, [r6]
	adds r0, r5, #0
	adds r0, #0x74
	strh r4, [r0]
	movs r4, #0x80
	lsls r4, r4, #6
	adds r0, r4, #0
	bl FUN_0802C95C
	str r0, [r5, #0x10]
	adds r0, r4, #0
	bl FUN_0802C95C
	str r0, [r5, #0x14]
	movs r0, #0xb0
	lsls r0, r0, #3
	bl FUN_0802C9DC
	str r0, [r5, #0x20]
	movs r0, #0xc0
	lsls r0, r0, #3
	bl FUN_0802C9DC
	str r0, [r5, #0x24]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	bl FUN_0802C9DC
	str r0, [r5, #0x18]
	adds r0, r4, #0
	bl FUN_0802C9DC
	str r0, [r5, #0x1c]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08046D40: .4byte gUnk_03005F54
_08046D44: .4byte gUnk_030060CC
_08046D48: .4byte gUnk_030060B8
_08046D4C: .4byte gUnk_030060AC
_08046D50: .4byte gUnk_03005F44
_08046D54: .4byte gUnk_03005F48
_08046D58: .4byte gUnk_03004808
_08046D5C: .4byte gUnk_03006120

	thumb_func_start FUN_08046D60
FUN_08046D60: @ 0x08046D60
	push {r4, lr}
	ldr r4, _08046DD4 @ => 0x03005F54
	ldr r0, [r4]
	cmp r0, #0
	beq _08046D72
	bl FUN_0802CA80
	movs r0, #0
	str r0, [r4]
_08046D72:
	ldr r4, _08046DD8 @ => 0x030060CC
	ldr r0, [r4]
	cmp r0, #0
	beq _08046D82
	bl FUN_0802CA80
	movs r0, #0
	str r0, [r4]
_08046D82:
	ldr r4, _08046DDC @ => 0x030060B8
	ldr r0, [r4]
	cmp r0, #0
	beq _08046D92
	bl FUN_0802CA80
	movs r0, #0
	str r0, [r4]
_08046D92:
	ldr r4, _08046DE0 @ => 0x030060AC
	ldr r0, [r4]
	cmp r0, #0
	beq _08046DA6
	subs r0, #4
	str r0, [r4]
	bl FUN_0802CA80
	movs r0, #0
	str r0, [r4]
_08046DA6:
	ldr r4, _08046DE4 @ => 0x03005F44
	ldr r0, [r4]
	cmp r0, #0
	beq _08046DBA
	subs r0, #4
	str r0, [r4]
	bl FUN_0802CA80
	movs r0, #0
	str r0, [r4]
_08046DBA:
	ldr r4, _08046DE8 @ => 0x03005F48
	ldr r0, [r4]
	cmp r0, #0
	beq _08046DCE
	subs r0, #4
	str r0, [r4]
	bl FUN_0802CA80
	movs r0, #0
	str r0, [r4]
_08046DCE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08046DD4: .4byte gUnk_03005F54
_08046DD8: .4byte gUnk_030060CC
_08046DDC: .4byte gUnk_030060B8
_08046DE0: .4byte gUnk_030060AC
_08046DE4: .4byte gUnk_03005F44
_08046DE8: .4byte gUnk_03005F48

	thumb_func_start FUN_08046DEC
FUN_08046DEC: @ 0x08046DEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r7, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r0, r5, #0x10
	mov r8, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	adds r0, r7, #0
	mov r1, r8
	mov r2, sb
	bl FUN_08047490
	str r0, [sp, #4]
	ldrh r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x10
	ldr r2, _08046ECC @ => 0x03006120
	mov ip, r2
	mov r0, ip
	adds r0, #0x70
	add r0, sb
	ldrb r0, [r0]
	str r0, [sp, #0x20]
	ldr r3, _08046ED0 @ => 0x030060F0
	mov r0, sb
	lsls r6, r0, #2
	adds r3, #0xc
	adds r3, r6, r3
	ldr r2, [r3]
	adds r1, r2, r1
	str r1, [sp, #0x1c]
	ldr r1, [sp]
	lsls r0, r1, #5
	adds r2, r2, r0
	mov sl, r2
	lsrs r7, r4, #0x15
	lsls r7, r7, #2
	lsrs r5, r5, #0x15
	mov r8, r5
	mov r2, r8
	lsls r2, r2, #2
	mov r8, r2
	mov r0, ip
	adds r0, #0x94
	ldr r0, [r0]
	asrs r0, r0, #3
	str r0, [sp, #0xc]
	mov r0, ip
	adds r0, #0x98
	ldr r0, [r0]
	asrs r0, r0, #3
	str r0, [sp, #0x10]
	mov r0, ip
	adds r0, #0x8c
	ldr r0, [r0]
	asrs r0, r0, #3
	str r0, [sp, #0x14]
	mov r0, ip
	adds r0, #0x90
	ldr r0, [r0]
	asrs r0, r0, #3
	str r0, [sp, #0x18]
	movs r2, #0
	str r6, [sp, #0x24]
	str r3, [sp, #0x28]
	ldr r0, _08046ED4 @ => 0x03006110
	adds r0, r6, r0
	str r0, [sp, #0x2c]
_08046E8C:
	movs r0, #0
	str r0, [sp, #8]
	mov r1, r8
	adds r1, #1
	str r1, [sp, #0x34]
	adds r2, #1
	str r2, [sp, #0x30]
_08046E9A:
	ldr r2, [sp, #0xc]
	cmp r7, r2
	blo _08046ED8
	adds r0, r2, #0
	adds r0, #0x1f
	cmp r7, r0
	bhs _08046ED8
	ldr r0, [sp, #0x10]
	cmp r8, r0
	blo _08046ED8
	adds r0, #0x15
	cmp r8, r0
	bhs _08046ED8
	ldr r1, [sp, #0x1c]
	ldrh r0, [r1]
	ldr r1, [sp, #0x20]
	mov r2, sb
	bl FUN_08046630
	mov r2, sl
	ldrh r0, [r2]
	ldr r1, [sp, #0x28]
	ldr r6, [r1]
	b _08046F06
	.align 2, 0
_08046ECC: .4byte gUnk_03006120
_08046ED0: .4byte gUnk_030060F0
_08046ED4: .4byte gUnk_03006110
_08046ED8:
	ldr r0, [sp, #0x14]
	cmp r7, r0
	blo _08046F5A
	adds r0, #0x1f
	cmp r7, r0
	bhs _08046F5A
	ldr r1, [sp, #0x18]
	cmp r8, r1
	blo _08046F5A
	adds r0, r1, #0
	adds r0, #0x15
	cmp r8, r0
	bhs _08046F5A
	ldr r2, [sp, #0x1c]
	ldrh r0, [r2]
	ldr r1, [sp, #0x20]
	mov r2, sb
	bl FUN_08046630
	mov r1, sl
	ldrh r0, [r1]
	ldr r2, [sp, #0x28]
	ldr r6, [r2]
_08046F06:
	ldr r2, [sp, #0x2c]
	ldr r1, [r2]
	adds r6, r6, r1
	ldr r2, [sp]
	lsls r1, r2, #4
	adds r6, r6, r1
	ldr r1, _08046FA8 @ => 0x03005F30
	ldr r2, [sp, #0x24]
	adds r1, r2, r1
	ldrb r4, [r1, #1]
	lsls r4, r4, #0x1b
	lsrs r4, r4, #0x10
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r4, r4, r1
	mov r1, r8
	movs r2, #0x1f
	ands r1, r2
	lsls r1, r1, #6
	adds r4, r4, r1
	adds r5, r7, #0
	ands r5, r2
	ldr r1, [sp, #0x20]
	movs r2, #0
	mov r3, sb
	bl FUN_08046B8C
	lsls r5, r5, #1
	adds r5, r5, r4
	strh r0, [r5]
	movs r3, #3
	mov r2, r8
	ands r2, r3
	lsls r2, r2, #2
	adds r1, r7, #0
	ands r1, r3
	adds r2, r2, r1
	adds r6, r6, r2
	ldrb r1, [r6]
	lsls r1, r1, #0xa
	orrs r1, r0
	strh r1, [r5]
_08046F5A:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, [sp, #0x1c]
	adds r0, #2
	str r0, [sp, #0x1c]
	movs r1, #2
	add sl, r1
	ldr r2, [sp, #8]
	adds r2, #1
	str r2, [sp, #8]
	cmp r2, #3
	bls _08046E9A
	subs r0, r7, #4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r1, [sp, #0x34]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r2, [sp, #0x30]
	cmp r2, #3
	bls _08046E8C
	mov r2, sp
	ldrh r0, [r2]
	ldr r2, [sp, #4]
	strh r0, [r2]
	ldr r1, _08046FAC @ => 0x030061E8
	movs r0, #1
	str r0, [r1]
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08046FA8: .4byte gUnk_03005F30
_08046FAC: .4byte gUnk_030061E8

	thumb_func_start FUN_08046FB0
FUN_08046FB0: @ 0x08046FB0
	push {lr}
	ldr r1, _08046FC4 @ => 0x03006120
	str r0, [r1, #0x54]
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl FUN_08015760
	pop {r0}
	bx r0
	.align 2, 0
_08046FC4: .4byte gUnk_03006120

	thumb_func_start FUN_08046FC8
FUN_08046FC8: @ 0x08046FC8
	sub sp, #4
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	mov sb, r0
	mov sl, r1
	mov r8, r2
	str r3, [sp, #0x20]
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	movs r6, #0
	mov r0, sp
	strh r6, [r0]
	movs r1, #0
	movs r2, #1
	bl FUN_08015760
	ldr r0, _0804702C @ => 0x03005F30
	mov r1, sb
	str r1, [r0, #8]
	mov r1, r8
	str r1, [r0, #4]
	mov r1, sl
	str r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08015760
	ldr r1, _08047030 @ => 0x03006120
	adds r0, r1, #0
	adds r0, #0x8c
	str r6, [r0]
	adds r0, #4
	str r6, [r0]
	str r4, [r1, #0x28]
	str r4, [r1, #0x2c]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r3}
	add sp, #4
	bx r3
	.align 2, 0
_0804702C: .4byte gUnk_03005F30
_08047030: .4byte gUnk_03006120

	thumb_func_start FUN_08047034
FUN_08047034: @ 0x08047034
	bx lr
	.align 2, 0

	thumb_func_start FUN_08047038
FUN_08047038: @ 0x08047038
	lsls r1, r1, #0x18
	ldr r3, _08047050 @ => 0x03006120
	lsrs r1, r1, #0x15
	adds r2, r1, r3
	ldr r2, [r2]
	str r2, [r0]
	adds r3, #4
	adds r1, r1, r3
	ldr r1, [r1]
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_08047050: .4byte gUnk_03006120

	thumb_func_start FUN_08047054
FUN_08047054: @ 0x08047054
	push {r4, lr}
	lsls r1, r1, #0x18
	ldr r3, _08047070 @ => 0x03006120
	lsrs r1, r1, #0x15
	adds r4, r1, r3
	ldr r2, [r0]
	str r2, [r4]
	adds r3, #4
	adds r1, r1, r3
	ldr r0, [r0, #4]
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08047070: .4byte gUnk_03006120

	thumb_func_start FUN_08047074
FUN_08047074: @ 0x08047074
	lsls r0, r0, #0x18
	ldr r1, _08047088 @ => 0x03006120
	lsrs r0, r0, #0x15
	adds r2, r0, r1
	movs r3, #0
	str r3, [r2]
	adds r1, #4
	adds r0, r0, r1
	str r3, [r0]
	bx lr
	.align 2, 0
_08047088: .4byte gUnk_03006120

	thumb_func_start FUN_0804708C
FUN_0804708C: @ 0x0804708C
	ldr r1, _080470A0 @ => 0x030060B0
	ldrh r1, [r1]
	lsls r1, r1, #3
	str r1, [r0]
	ldr r1, _080470A4 @ => 0x030060A8
	ldrh r1, [r1]
	lsls r1, r1, #3
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_080470A0: .4byte gUnk_030060B0
_080470A4: .4byte gUnk_030060A8

	thumb_func_start FUN_080470A8
FUN_080470A8: @ 0x080470A8
	bx lr
	.align 2, 0

	thumb_func_start FUN_080470AC
FUN_080470AC: @ 0x080470AC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080470DC @ => 0x030060CC
	bl FUN_0801ACB8
	bl FUN_0802C95C
	adds r1, r0, #0
	str r1, [r4]
	ldr r2, _080470E0 @ => 0x030060F0
	adds r0, r1, #4
	str r0, [r2]
	adds r0, r5, #0
	bl FUN_0801ABA0
	ldr r2, _080470E4 @ => 0x03006090
	ldrb r1, [r2]
	movs r0, #0xfa
	ands r0, r1
	strb r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080470DC: .4byte gUnk_030060CC
_080470E0: .4byte gUnk_030060F0
_080470E4: .4byte gUnk_03006090

	thumb_func_start FUN_080470E8
FUN_080470E8: @ 0x080470E8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0804712C @ => 0x03005F54
	bl FUN_0801ACB8
	bl FUN_0802C95C
	adds r1, r0, #0
	str r1, [r4]
	ldr r2, _08047130 @ => 0x030060F0
	adds r0, r1, #4
	str r0, [r2, #8]
	adds r0, r5, #0
	bl FUN_0801ABA0
	ldr r0, _08047134 @ => 0x03006120
	adds r0, #0x58
	movs r1, #0
	strb r1, [r0]
	ldr r1, _08047138 @ => 0x03006090
	ldrb r2, [r1]
	movs r0, #0xfc
	ands r0, r2
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r1, #0xc]
	str r0, [r1, #0x10]
	str r0, [r1, #4]
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804712C: .4byte gUnk_03005F54
_08047130: .4byte gUnk_030060F0
_08047134: .4byte gUnk_03006120
_08047138: .4byte gUnk_03006090

	thumb_func_start FUN_0804713C
FUN_0804713C: @ 0x0804713C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08047168 @ => 0x030060B8
	bl FUN_0801ACB8
	bl FUN_0802C95C
	adds r1, r0, #0
	str r1, [r4]
	ldr r2, _0804716C @ => 0x030060F0
	adds r0, r1, #4
	str r0, [r2, #4]
	adds r0, r5, #0
	bl FUN_0801ABA0
	ldr r0, _08047170 @ => 0x03006120
	adds r0, #0x58
	movs r1, #0
	strb r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08047168: .4byte gUnk_030060B8
_0804716C: .4byte gUnk_030060F0
_08047170: .4byte gUnk_03006120

	thumb_func_start FUN_08047174
FUN_08047174: @ 0x08047174
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080471DC @ => 0x030060AC
	bl FUN_0801ACB8
	bl FUN_0802C95C
	adds r1, r0, #0
	str r1, [r4]
	ldr r2, _080471E0 @ => 0x030060F0
	adds r0, r1, #4
	str r0, [r2, #0x14]
	adds r0, r5, #0
	bl FUN_0801ABA0
	ldr r2, _080471E4 @ => 0x03006110
	ldr r5, [r4]
	adds r1, r5, #0
	ldm r1!, {r0}
	lsls r0, r0, #5
	str r0, [r2, #8]
	str r1, [r4]
	ldr r2, _080471E8 @ => 0x030060B0
	ldr r0, _080471EC @ => 0x03005F54
	ldr r1, [r0]
	ldrh r0, [r1]
	lsls r0, r0, #2
	strh r0, [r2]
	ldr r2, _080471F0 @ => 0x030060A8
	ldrh r0, [r1, #2]
	lsls r0, r0, #2
	strh r0, [r2]
	ldr r2, _080471F4 @ => 0x03005F4C
	ldrh r0, [r1]
	strh r0, [r2]
	ldr r3, _080471F8 @ => 0x03005F40
	ldrh r0, [r1, #2]
	strh r0, [r3]
	ldr r1, _080471FC @ => 0x03006120
	ldrh r2, [r2]
	ldrh r0, [r3]
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r1, #0x76
	strh r0, [r1]
	ldr r1, _08047200 @ => 0x030060C8
	ldr r0, [r5, #4]
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080471DC: .4byte gUnk_030060AC
_080471E0: .4byte gUnk_030060F0
_080471E4: .4byte gUnk_03006110
_080471E8: .4byte gUnk_030060B0
_080471EC: .4byte gUnk_03005F54
_080471F0: .4byte gUnk_030060A8
_080471F4: .4byte gUnk_03005F4C
_080471F8: .4byte gUnk_03005F40
_080471FC: .4byte gUnk_03006120
_08047200: .4byte gUnk_030060C8

	thumb_func_start FUN_08047204
FUN_08047204: @ 0x08047204
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0804726C @ => 0x03005F44
	bl FUN_0801ACB8
	bl FUN_0802C95C
	adds r1, r0, #0
	str r1, [r4]
	ldr r2, _08047270 @ => 0x030060F0
	adds r0, r1, #4
	str r0, [r2, #0xc]
	adds r0, r5, #0
	bl FUN_0801ABA0
	ldr r2, _08047274 @ => 0x03006110
	ldr r5, [r4]
	adds r1, r5, #0
	ldm r1!, {r0}
	lsls r0, r0, #5
	str r0, [r2]
	str r1, [r4]
	ldr r2, _08047278 @ => 0x030060D8
	ldr r0, _0804727C @ => 0x030060CC
	ldr r1, [r0]
	ldrh r0, [r1]
	lsls r0, r0, #2
	strh r0, [r2]
	ldr r2, _08047280 @ => 0x030060DC
	ldrh r0, [r1, #2]
	lsls r0, r0, #2
	strh r0, [r2]
	ldr r2, _08047284 @ => 0x030060E0
	ldrh r0, [r1]
	strh r0, [r2]
	ldr r3, _08047288 @ => 0x030060B4
	ldrh r0, [r1, #2]
	strh r0, [r3]
	ldr r1, _0804728C @ => 0x03006120
	ldrh r2, [r2]
	ldrh r0, [r3]
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r1, #0x78
	strh r0, [r1]
	ldr r1, _08047290 @ => 0x03005F3C
	ldr r0, [r5, #4]
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804726C: .4byte gUnk_03005F44
_08047270: .4byte gUnk_030060F0
_08047274: .4byte gUnk_03006110
_08047278: .4byte gUnk_030060D8
_0804727C: .4byte gUnk_030060CC
_08047280: .4byte gUnk_030060DC
_08047284: .4byte gUnk_030060E0
_08047288: .4byte gUnk_030060B4
_0804728C: .4byte gUnk_03006120
_08047290: .4byte gUnk_03005F3C

	thumb_func_start FUN_08047294
FUN_08047294: @ 0x08047294
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080472FC @ => 0x03005F48
	bl FUN_0801ACB8
	bl FUN_0802C95C
	adds r1, r0, #0
	str r1, [r4]
	ldr r2, _08047300 @ => 0x030060F0
	adds r0, r1, #4
	str r0, [r2, #0x10]
	adds r0, r5, #0
	bl FUN_0801ABA0
	ldr r2, _08047304 @ => 0x03006110
	ldr r5, [r4]
	adds r1, r5, #0
	ldm r1!, {r0}
	lsls r0, r0, #5
	str r0, [r2, #4]
	str r1, [r4]
	ldr r2, _08047308 @ => 0x030060D0
	ldr r0, _0804730C @ => 0x030060B8
	ldr r1, [r0]
	ldrh r0, [r1]
	lsls r0, r0, #2
	strh r0, [r2]
	ldr r2, _08047310 @ => 0x030060BC
	ldrh r0, [r1, #2]
	lsls r0, r0, #2
	strh r0, [r2]
	ldr r2, _08047314 @ => 0x03005F50
	ldrh r0, [r1]
	strh r0, [r2]
	ldr r3, _08047318 @ => 0x030060D4
	ldrh r0, [r1, #2]
	strh r0, [r3]
	ldr r1, _0804731C @ => 0x03006120
	ldrh r2, [r2]
	ldrh r0, [r3]
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r1, #0x7a
	strh r0, [r1]
	ldr r1, _08047320 @ => 0x03006108
	ldr r0, [r5, #4]
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080472FC: .4byte gUnk_03005F48
_08047300: .4byte gUnk_030060F0
_08047304: .4byte gUnk_03006110
_08047308: .4byte gUnk_030060D0
_0804730C: .4byte gUnk_030060B8
_08047310: .4byte gUnk_030060BC
_08047314: .4byte gUnk_03005F50
_08047318: .4byte gUnk_030060D4
_0804731C: .4byte gUnk_03006120
_08047320: .4byte gUnk_03006108

	thumb_func_start FUN_08047324
FUN_08047324: @ 0x08047324
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl FUN_08047490
	ldrh r0, [r0]
	pop {r1}
	bx r1

	thumb_func_start FUN_0804733C
FUN_0804733C: @ 0x0804733C
	ldr r2, _08047348 @ => 0x03006090
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	bx lr
	.align 2, 0
_08047348: .4byte gUnk_03006090

	thumb_func_start FUN_0804734C
FUN_0804734C: @ 0x0804734C
	ldr r2, _08047358 @ => 0x03006090
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	bx lr
	.align 2, 0
_08047358: .4byte gUnk_03006090

	thumb_func_start FUN_0804735C
FUN_0804735C: @ 0x0804735C
	ldr r2, _08047368 @ => 0x03006090
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	bx lr
	.align 2, 0
_08047368: .4byte gUnk_03006090

	thumb_func_start FUN_0804736C
FUN_0804736C: @ 0x0804736C
	ldr r2, _08047378 @ => 0x03006090
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	bx lr
	.align 2, 0
_08047378: .4byte gUnk_03006090

	thumb_func_start FUN_0804737C
FUN_0804737C: @ 0x0804737C
	ldr r2, _08047388 @ => 0x03006090
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
	bx lr
	.align 2, 0
_08047388: .4byte gUnk_03006090

	thumb_func_start FUN_0804738C
FUN_0804738C: @ 0x0804738C
	ldr r2, _08047398 @ => 0x03006090
	ldrb r1, [r2]
	movs r0, #0xf7
	ands r0, r1
	strb r0, [r2]
	bx lr
	.align 2, 0
_08047398: .4byte gUnk_03006090

	thumb_func_start FUN_0804739C
FUN_0804739C: @ 0x0804739C
	ldr r2, _080473A8 @ => 0x03006090
	ldr r1, [r0]
	str r1, [r2, #4]
	ldr r0, [r0, #4]
	str r0, [r2, #8]
	bx lr
	.align 2, 0
_080473A8: .4byte gUnk_03006090

	thumb_func_start FUN_080473AC
FUN_080473AC: @ 0x080473AC
	ldr r2, _080473B8 @ => 0x03006090
	ldr r1, [r0]
	str r1, [r2, #0xc]
	ldr r0, [r0, #4]
	str r0, [r2, #0x10]
	bx lr
	.align 2, 0
_080473B8: .4byte gUnk_03006090

	thumb_func_start FUN_080473BC
FUN_080473BC: @ 0x080473BC
	ldr r0, _080473C8 @ => 0x03006120
	adds r0, #0x74
	movs r1, #1
	strh r1, [r0]
	bx lr
	.align 2, 0
_080473C8: .4byte gUnk_03006120

	thumb_func_start FUN_080473CC
FUN_080473CC: @ 0x080473CC
	ldr r1, _080473E0 @ => 0x030060D8
	ldrh r1, [r1]
	lsls r1, r1, #3
	str r1, [r0]
	ldr r1, _080473E4 @ => 0x030060DC
	ldrh r1, [r1]
	lsls r1, r1, #3
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_080473E0: .4byte gUnk_030060D8
_080473E4: .4byte gUnk_030060DC

	thumb_func_start FUN_080473E8
FUN_080473E8: @ 0x080473E8
	ldr r1, _080473F8 @ => 0x03006120
	lsls r0, r0, #2
	adds r1, #0x60
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
_080473F8: .4byte gUnk_03006120

	thumb_func_start FUN_080473FC
FUN_080473FC: @ 0x080473FC
	ldr r1, _0804740C @ => 0x03006120
	lsls r0, r0, #2
	adds r1, #0x60
	adds r0, r0, r1
	movs r1, #1
	str r1, [r0]
	bx lr
	.align 2, 0
_0804740C: .4byte gUnk_03006120

	thumb_func_start FUN_08047410
FUN_08047410: @ 0x08047410
	push {r4, r5, lr}
	adds r2, r1, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r4, _08047438 @ => 0x000007FF
	ands r4, r5
	ldr r1, _0804743C @ => 0x03006120
	lsls r2, r2, #2
	adds r0, r1, #0
	adds r0, #0x18
	adds r0, r2, r0
	ldr r3, [r0]
	lsls r0, r4, #1
	adds r0, r0, r3
	ldrh r3, [r0]
	adds r1, #0x10
	adds r2, r2, r1
	ldr r2, [r2]
	ldr r4, _08047440 @ => 0x0000FFFF
	b _08047448
	.align 2, 0
_08047438: .4byte 0x000007FF
_0804743C: .4byte gUnk_03006120
_08047440: .4byte 0x0000FFFF
_08047444:
	adds r0, r0, r2
	ldrh r3, [r0, #4]
_08047448:
	cmp r3, r4
	beq _08047456
	lsls r0, r3, #3
	adds r1, r0, r2
	ldrh r1, [r1, #2]
	cmp r1, r5
	bne _08047444
_08047456:
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08047460
FUN_08047460: @ 0x08047460
	bx lr
	.align 2, 0

	thumb_func_start FUN_08047464
FUN_08047464: @ 0x08047464
	bx lr
	.align 2, 0

	thumb_func_start FUN_08047468
FUN_08047468: @ 0x08047468
	push {lr}
	movs r1, #0
	movs r2, #1
	rsbs r2, r2, #0
	ldr r0, _08047480 @ => 0x03002718
_08047472:
	str r2, [r0]
	adds r0, #8
	adds r1, #1
	cmp r1, #1
	bls _08047472
	pop {r0}
	bx r0
	.align 2, 0
_08047480: .4byte gUnk_03002718

	thumb_func_start FUN_08047484
FUN_08047484: @ 0x08047484
	ldr r1, _0804748C @ => 0x03006120
	adds r1, #0xc4
	str r0, [r1]
	bx lr
	.align 2, 0
_0804748C: .4byte gUnk_03006120

	thumb_func_start FUN_08047490
FUN_08047490: @ 0x08047490
	push {r4, lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r4, r2, #0
	lsrs r3, r0, #0x15
	lsrs r1, r1, #0x15
	cmp r2, #1
	beq _080474F0
	cmp r2, #1
	bgt _080474AE
	cmp r2, #0
	beq _080474D0
	b _08047510
_080474AE:
	cmp r4, #2
	bne _08047510
	ldr r0, _080474C8 @ => 0x03005F4C
	ldrh r0, [r0]
	adds r2, r1, #0
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _080474CC @ => 0x030060F0
	ldr r2, [r0, #8]
	b _08047514
	.align 2, 0
_080474C8: .4byte gUnk_03005F4C
_080474CC: .4byte gUnk_030060F0
_080474D0:
	ldr r0, _080474E8 @ => 0x030060E0
	ldrh r0, [r0]
	adds r2, r1, #0
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _080474EC @ => 0x030060F0
	ldr r2, [r0]
	b _08047514
	.align 2, 0
_080474E8: .4byte gUnk_030060E0
_080474EC: .4byte gUnk_030060F0
_080474F0:
	ldr r0, _08047508 @ => 0x03005F50
	ldrh r0, [r0]
	adds r2, r1, #0
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _0804750C @ => 0x030060F0
	ldr r2, [r0, #4]
	b _08047514
	.align 2, 0
_08047508: .4byte gUnk_03005F50
_0804750C: .4byte gUnk_030060F0
_08047510:
	movs r1, #0
	movs r2, #0
_08047514:
	lsls r0, r1, #1
	adds r0, r2, r0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08047520
FUN_08047520: @ 0x08047520
	push {r4, lr}
	ldr r3, _08047538 @ => 0x03002718
	lsls r2, r2, #3
	adds r4, r2, r3
	str r0, [r4]
	adds r3, #4
	adds r2, r2, r3
	str r1, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08047538: .4byte gUnk_03002718

	thumb_func_start FUN_0804753C
FUN_0804753C: @ 0x0804753C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r2
	mov r8, r3
	ldr r7, [sp, #0x1c]
	ldr r5, [sp, #0x20]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r5, r5, #0x10
	ldr r3, _080475B8 @ => 0x030060F0
	lsls r4, r2, #2
	adds r3, #0xc
	adds r3, r4, r3
	ldr r2, _080475BC @ => 0x03006110
	adds r2, r4, r2
	ldr r6, [r3]
	ldr r2, [r2]
	adds r6, r6, r2
	lsrs r5, r5, #0xc
	adds r6, r6, r5
	ldr r2, _080475C0 @ => 0x03005F30
	adds r4, r4, r2
	ldrb r4, [r4, #1]
	lsls r4, r4, #0x1b
	lsrs r4, r4, #0x10
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r4, r4, r2
	movs r3, #0x1f
	adds r2, r7, #0
	ands r2, r3
	lsls r2, r2, #6
	adds r4, r4, r2
	mov r5, r8
	ands r5, r3
	movs r2, #0
	mov r3, sb
	bl FUN_08046B8C
	lsls r5, r5, #1
	adds r5, r5, r4
	strh r0, [r5]
	movs r1, #3
	ands r7, r1
	lsls r2, r7, #2
	mov r3, r8
	ands r3, r1
	mov r8, r3
	add r2, r8
	adds r6, r6, r2
	ldrb r1, [r6]
	lsls r1, r1, #0xa
	orrs r1, r0
	strh r1, [r5]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080475B8: .4byte gUnk_030060F0
_080475BC: .4byte gUnk_03006110
_080475C0: .4byte gUnk_03005F30

	thumb_func_start FUN_080475C4
FUN_080475C4: @ 0x080475C4
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08009B04
	adds r5, r0, #0
	ldrb r7, [r5, #0xc]
	adds r0, r7, #0
	bl FUN_080478D0
	adds r6, r0, #0
	cmp r6, #0
	bne _08047694
	bl FUN_080012FC
	adds r4, r0, #0
	ldr r0, [r5]
	strh r0, [r4, #8]
	movs r0, #4
	ldrsh r1, [r5, r0]
	lsls r1, r1, #0x10
	movs r3, #6
	ldrsh r2, [r5, r3]
	lsls r2, r2, #0x10
	adds r0, r4, #0
	bl FUN_08001728
	ldr r0, _08047684 @ => 0x00020404
	str r0, [r4, #0xc]
	ldr r0, _08047688 @ => FUN_080476A0
	str r0, [r4, #0x50]
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001FB0
	ldr r1, _0804768C @ => 0x0000011D
	adds r0, r4, r1
	movs r2, #1
	strb r2, [r0]
	movs r3, #0x98
	lsls r3, r3, #1
	adds r0, r4, r3
	str r6, [r0]
	adds r1, #0x19
	adds r0, r4, r1
	strb r7, [r0]
	ldrb r1, [r5, #0xe]
	adds r3, #8
	adds r0, r4, r3
	strb r1, [r0]
	ldrb r0, [r5, #0xd]
	subs r3, #1
	adds r1, r4, r3
	strb r0, [r1]
	ldrb r0, [r5, #0xf]
	adds r3, #2
	adds r1, r4, r3
	strb r0, [r1]
	ldrh r1, [r5, #8]
	subs r3, #5
	adds r0, r4, r3
	strh r1, [r0]
	ldrb r0, [r5, #0x10]
	adds r3, #6
	adds r1, r4, r3
	strb r0, [r1]
	ldrb r0, [r5, #0x11]
	adds r3, #1
	adds r1, r4, r3
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x94
	ldr r0, _08047690 @ => FUN_080153A4
	str r0, [r1]
	ldrb r0, [r5, #0xa]
	rsbs r0, r0, #0
	subs r1, #0x18
	strb r0, [r1]
	ldrb r0, [r5, #0xb]
	rsbs r0, r0, #0
	adds r1, #2
	strb r0, [r1]
	ldrb r0, [r5, #0xa]
	subs r1, #1
	strb r0, [r1]
	ldrb r0, [r5, #0xb]
	adds r1, #2
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x80
	strb r2, [r0]
	subs r0, #5
	strb r2, [r0]
	b _08047696
	.align 2, 0
_08047684: .4byte 0x00020404
_08047688: .4byte FUN_080476A0
_0804768C: .4byte 0x0000011D
_08047690: .4byte FUN_080153A4
_08047694:
	movs r4, #0
_08047696:
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_080476A0
FUN_080476A0: @ 0x080476A0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _080476BA
	cmp r0, #1
	ble _0804777E
	cmp r0, #0xf
	beq _080476C2
	b _0804777E
_080476BA:
	adds r0, r5, #0
	bl FUN_080040DC
	b _0804777E
_080476C2:
	ldr r2, _080476D4 @ => 0x0000011D
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080476D8
	cmp r0, #0xe
	beq _08047718
	b _0804777E
	.align 2, 0
_080476D4: .4byte 0x0000011D
_080476D8:
	movs r0, #0x98
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, [r4]
	bl FUN_08001848
	ldr r0, [r4]
	movs r1, #0
	bl FUN_08001FB0
	ldr r0, [r4]
	ldr r2, _08047714 @ => 0x00000137
	adds r1, r5, r2
	ldrb r1, [r1]
	bl FUN_08001FF0
	ldr r0, [r4]
	movs r1, #0x67
	bl FUN_08001F20
	adds r0, r5, #0
	movs r1, #0xe
	bl FUN_08001F84
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0x1e
	strh r0, [r1]
	b _0804777E
	.align 2, 0
_08047714: .4byte 0x00000137
_08047718:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _0804775C @ => 0xFFFF0000
	cmp r1, r0
	bne _0804777E
	adds r0, r5, #0
	bl FUN_08047784
	cmp r0, #1
	bne _08047760
	ldrb r0, [r5, #0x10]
	ldrb r1, [r5, #0x11]
	bl FUN_08009B04
	ldrb r2, [r0, #0x10]
	ldrb r1, [r0, #0x11]
	adds r0, r2, #0
	bl FUN_080099A8
	adds r0, r5, #0
	movs r1, #1
	bl FUN_08001FB0
	adds r0, r5, #0
	movs r1, #2
	bl FUN_08002038
	b _08047768
	.align 2, 0
_0804775C: .4byte 0xFFFF0000
_08047760:
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08001FB0
_08047768:
	movs r2, #0x98
	lsls r2, r2, #1
	adds r4, r5, r2
	ldr r0, [r4]
	movs r1, #0xd
	bl FUN_08001FB0
	ldr r0, [r4]
	movs r1, #4
	bl FUN_08001F20
_0804777E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_08047784
FUN_08047784: @ 0x08047784
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r1, r6, r0
	ldrb r0, [r1]
	cmp r0, #4
	beq _080477B0
	ldr r0, _080477AC @ => 0x03003E48
	ldrb r1, [r1]
	movs r2, #1
	bl FUN_080262AC
	movs r0, #0xbc
	bl FUN_0804DE0C
	movs r0, #1
	b _0804782C
	.align 2, 0
_080477AC: .4byte gUnk_03003E48
_080477B0:
	ldr r0, _080477CC @ => 0x00000139
	adds r1, r6, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080477D0
	adds r1, r0, #0
	movs r0, #2
	bl FUN_08020DB0
	movs r0, #0xb0
	bl FUN_0804DE0C
	movs r0, #2
	b _0804782C
	.align 2, 0
_080477CC: .4byte 0x00000139
_080477D0:
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r4, r6, r1
	ldrh r0, [r4]
	cmp r0, #0xe6
	beq _08047824
	ldr r0, _0804780C @ => 0x03003DF0
	ldr r0, [r0, #0x68]
	ldrh r1, [r4]
	movs r2, #0
	movs r3, #0
	bl FUN_080261BC
	cmp r0, #0
	beq _08047810
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl FUN_0802D8C0
	adds r2, r0, #0
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r2, r0
	ldrh r0, [r4]
	str r0, [r1]
	adds r0, r2, #0
	b _08047838
	.align 2, 0
_0804780C: .4byte gUnk_03003DF0
_08047810:
	movs r0, #5
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl FUN_0802D8C0
	adds r2, r0, #0
	bl FUN_0802DA44
	b _0804783E
_08047824:
	movs r0, #0xb5
	bl FUN_0804DE0C
	movs r0, #0
_0804782C:
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl FUN_0802D8C0
	adds r2, r0, #0
_08047838:
	bl FUN_0802DA44
	movs r5, #1
_0804783E:
	adds r0, r6, #0
	movs r1, #0xf
	bl FUN_08001F84
	cmp r5, #1
	bne _08047882
	movs r1, #0x9b
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	adds r1, r0, #0
	cmp r0, #0
	beq _08047882
	cmp r0, #0x1f
	bhi _0804786C
	ldr r2, _08047868 @ => 0x03003DF0
	movs r1, #0x81
	lsls r1, r1, #2
	adds r2, r2, r1
	b _08047878
	.align 2, 0
_08047868: .4byte gUnk_03003DF0
_0804786C:
	ldr r2, _0804788C @ => 0x03003DF0
	movs r0, #0x82
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r0, r1, #0
	subs r0, #0x20
_08047878:
	adds r1, r5, #0
	lsls r1, r0
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
_08047882:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0804788C: .4byte gUnk_03003DF0

	thumb_func_start FUN_08047890
FUN_08047890: @ 0x08047890
	push {r4, lr}
	ldr r4, _080478AC @ => 0x03003FF4
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08044558
	adds r4, #4
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08044558
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080478AC: .4byte gUnk_03003FF4

	thumb_func_start FUN_080478B0
FUN_080478B0: @ 0x080478B0
	push {r4, lr}
	ldr r4, _080478CC @ => 0x03003FF4
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08044644
	adds r4, #4
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08044644
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080478CC: .4byte gUnk_03003FF4

	thumb_func_start FUN_080478D0
FUN_080478D0: @ 0x080478D0
	push {lr}
	adds r2, r0, #0
	cmp r2, #0
	bne _080478DC
	movs r0, #0
	b _08047900
_080478DC:
	cmp r2, #0x1f
	bls _080478F0
	ldr r0, _080478EC @ => 0x03003DF0
	movs r1, #0x82
	lsls r1, r1, #2
	adds r0, r0, r1
	subs r2, #0x20
	b _080478F8
	.align 2, 0
_080478EC: .4byte gUnk_03003DF0
_080478F0:
	ldr r0, _08047904 @ => 0x03003DF0
	movs r1, #0x81
	lsls r1, r1, #2
	adds r0, r0, r1
_080478F8:
	movs r1, #1
	lsls r1, r2
	ldr r0, [r0]
	ands r0, r1
_08047900:
	pop {r1}
	bx r1
	.align 2, 0
_08047904: .4byte gUnk_03003DF0

	thumb_func_start FUN_08047908
FUN_08047908: @ 0x08047908
	push {lr}
	cmp r0, #0
	beq _08047934
	cmp r0, #0x1f
	bhi _08047920
	ldr r2, _0804791C @ => 0x03003DF0
	movs r1, #0x81
	lsls r1, r1, #2
	adds r2, r2, r1
	b _0804792A
	.align 2, 0
_0804791C: .4byte gUnk_03003DF0
_08047920:
	ldr r2, _08047938 @ => 0x03003DF0
	movs r1, #0x82
	lsls r1, r1, #2
	adds r2, r2, r1
	subs r0, #0x20
_0804792A:
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
_08047934:
	pop {r0}
	bx r0
	.align 2, 0
_08047938: .4byte gUnk_03003DF0

	thumb_func_start FUN_0804793C
FUN_0804793C: @ 0x0804793C
	push {r4, r5, r6, r7, lr}
	ldr r2, _08047950 @ => 0x03006440
	ldr r0, [r2]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	movs r6, #0
	b _08047B16
	.align 2, 0
_08047950: .4byte gUnk_03006440
_08047954:
	lsls r4, r6, #1
	adds r0, r4, r6
	lsls r0, r0, #2
	ldr r1, _08047998 @ => 0x030061F0
	adds r5, r0, r1
	adds r7, r5, #0
	bl FUN_0804C084
	ldr r0, _0804799C @ => 0x03006234
	adds r3, r6, r0
	ldrb r1, [r5, #1]
	ldrb r0, [r3]
	cmp r1, r0
	bne _08047972
	b _08047B14
_08047972:
	ldrb r0, [r5]
	cmp r0, #0
	bne _0804797A
	b _08047B14
_0804797A:
	movs r2, #0
	strb r1, [r3]
	ldr r1, _080479A0 @ => 0x03006264
	adds r0, r4, r1
	strh r2, [r0]
	ldrb r0, [r5]
	adds r2, r1, #0
	cmp r0, #0xc
	bls _0804798E
	b _08047B14
_0804798E:
	lsls r0, r0, #2
	ldr r1, _080479A4 @ =_080479A8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08047998: .4byte gUnk_030061F0
_0804799C: .4byte gUnk_03006234
_080479A0: .4byte gUnk_03006264
_080479A4: .4byte _080479A8
_080479A8: @ jump table
	.4byte _08047B14 @ case 0
	.4byte _08047B14 @ case 1
	.4byte _080479DC @ case 2
	.4byte _080479F8 @ case 3
	.4byte _08047A0C @ case 4
	.4byte _08047A34 @ case 5
	.4byte _08047A4C @ case 6
	.4byte _08047A5C @ case 7
	.4byte _08047A74 @ case 8
	.4byte _08047A8C @ case 9
	.4byte _08047AA4 @ case 10
	.4byte _08047AE0 @ case 11
	.4byte _08047AF4 @ case 12
_080479DC:
	adds r0, r4, r2
	ldrh r1, [r7, #4]
	strh r1, [r0]
	bl FUN_0804C084
	cmp r0, r6
	beq _080479EC
	b _08047B14
_080479EC:
	ldr r0, _080479F4 @ => 0x03006440
	ldr r1, [r0]
	movs r2, #0x80
	b _08047AE8
	.align 2, 0
_080479F4: .4byte gUnk_03006440
_080479F8:
	ldrh r0, [r5, #4]
	bl FUN_080424C4
	ldr r1, _08047A08 @ => 0x0300623C
	movs r0, #1
	strb r0, [r1]
	b _08047B14
	.align 2, 0
_08047A08: .4byte gUnk_0300623C
_08047A0C:
	cmp r6, #0
	bne _08047A20
	ldr r0, _08047A1C @ => 0x03006440
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x10
	b _08047AE8
	.align 2, 0
_08047A1C: .4byte gUnk_03006440
_08047A20:
	cmp r6, #1
	beq _08047A26
	b _08047B14
_08047A26:
	ldr r0, _08047A30 @ => 0x03006440
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x11
	b _08047AE8
	.align 2, 0
_08047A30: .4byte gUnk_03006440
_08047A34:
	ldr r0, _08047A44 @ => 0x030042B0
	ldrh r0, [r0, #6]
	cmp r6, r0
	beq _08047B14
	ldr r1, _08047A48 @ => 0x03004800
	ldr r0, [r5, #4]
	str r0, [r1]
	b _08047B14
	.align 2, 0
_08047A44: .4byte gUnk_030042B0
_08047A48: .4byte gUnk_03004800
_08047A4C:
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	ldr r1, _08047A58 @ => 0x03003DBC
	b _08047A64
	.align 2, 0
_08047A58: .4byte gUnk_03003DBC
_08047A5C:
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	ldr r1, _08047A70 @ => 0x03003DC4
_08047A64:
	adds r0, r0, r1
	adds r1, r5, #4
	movs r2, #8
	bl memcpy
	b _08047B14
	.align 2, 0
_08047A70: .4byte gUnk_03003DC4
_08047A74:
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	ldr r1, _08047A88 @ => 0x03003DB0
	adds r0, r0, r1
	adds r1, r5, #4
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	b _08047B14
	.align 2, 0
_08047A88: .4byte gUnk_03003DB0
_08047A8C:
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	ldr r1, _08047AA0 @ => 0x03003DB8
	adds r0, r0, r1
	adds r1, r5, #4
	movs r2, #2
	bl memcpy
	b _08047B14
	.align 2, 0
_08047AA0: .4byte gUnk_03003DB8
_08047AA4:
	ldr r3, _08047AD4 @ => 0x03006440
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	str r0, [r3]
	ldr r2, _08047AD8 @ => 0x03004374
	ldr r0, [r2]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r3]
	ldr r0, _08047ADC @ => 0x030043A0
	ldr r2, [r0]
	movs r0, #1
	movs r1, #0
	bl FUN_0802CED4
	b _08047B14
	.align 2, 0
_08047AD4: .4byte gUnk_03006440
_08047AD8: .4byte gUnk_03004374
_08047ADC: .4byte gUnk_030043A0
_08047AE0:
	ldr r0, _08047AF0 @ => 0x03006440
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x14
_08047AE8:
	orrs r1, r2
	str r1, [r0]
	b _08047B14
	.align 2, 0
_08047AF0: .4byte gUnk_03006440
_08047AF4:
	bl FUN_0804C084
	cmp r6, r0
	bne _08047B02
	ldrb r0, [r5, #4]
	cmp r0, #7
	bne _08047B14
_08047B02:
	ldr r1, _08047B30 @ => 0x030047F8
	ldrb r0, [r5, #4]
	strb r0, [r1, #4]
	ldrb r0, [r5, #5]
	strb r0, [r1, #5]
	ldrb r0, [r5, #6]
	strb r0, [r1, #6]
	ldrb r0, [r5, #7]
	strb r0, [r1, #7]
_08047B14:
	adds r6, #1
_08047B16:
	ldr r0, _08047B34 @ => 0x030042B0
	ldrh r0, [r0, #4]
	cmp r6, r0
	bhs _08047B20
	b _08047954
_08047B20:
	ldr r1, _08047B38 @ => 0x03006260
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08047B30: .4byte gUnk_030047F8
_08047B34: .4byte gUnk_030042B0
_08047B38: .4byte gUnk_03006260

	thumb_func_start FUN_08047B3C
FUN_08047B3C: @ 0x08047B3C
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _08047B6C @ => 0x03006250
	ldrb r0, [r0]
	cmp r5, r0
	blo _08047C00
	mov r0, sp
	movs r1, #0
	movs r2, #0xc
	bl FUN_0802CB40
	mov r0, sp
	strb r5, [r0]
	subs r0, r5, #1
	cmp r0, #0xb
	bhi _08047BE6
	lsls r0, r0, #2
	ldr r1, _08047B70 @ =_08047B74
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08047B6C: .4byte gUnk_03006250
_08047B70: .4byte _08047B74
_08047B74: @ jump table
	.4byte _08047BE6 @ case 0
	.4byte _08047BA4 @ case 1
	.4byte _08047BB4 @ case 2
	.4byte _08047BE6 @ case 3
	.4byte _08047BBC @ case 4
	.4byte _08047BC2 @ case 5
	.4byte _08047BC2 @ case 6
	.4byte _08047BC2 @ case 7
	.4byte _08047BCC @ case 8
	.4byte _08047BE6 @ case 9
	.4byte _08047BE6 @ case 10
	.4byte _08047BD4 @ case 11
_08047BA4:
	mov r1, sp
	ldr r0, _08047BB0 @ => 0x04000130
	ldrh r0, [r0]
	mvns r0, r0
	strh r0, [r1, #4]
	b _08047BE6
	.align 2, 0
_08047BB0: .4byte 0x04000130
_08047BB4:
	mov r1, sp
	ldr r0, [r4]
	strh r0, [r1, #4]
	b _08047BE6
_08047BBC:
	ldr r0, [r4]
	str r0, [sp, #4]
	b _08047BE6
_08047BC2:
	add r1, sp, #4
	adds r0, r4, #0
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	b _08047BE6
_08047BCC:
	mov r1, sp
	ldrh r0, [r4]
	strh r0, [r1, #4]
	b _08047BE6
_08047BD4:
	mov r1, sp
	ldrb r0, [r4, #4]
	strb r0, [r1, #4]
	ldrb r0, [r4, #5]
	strb r0, [r1, #5]
	ldrb r0, [r4, #6]
	strb r0, [r1, #6]
	ldrb r0, [r4, #7]
	strb r0, [r1, #7]
_08047BE6:
	mov r1, sp
	ldr r0, _08047C08 @ => 0x03006260
	ldrb r0, [r0]
	strb r0, [r1, #1]
	ldr r0, _08047C0C @ => 0x03006250
	movs r2, #0xc
	bl FUN_0802CBAC
	ldr r2, _08047C10 @ => 0x03004374
	ldr r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r2]
_08047C00:
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08047C08: .4byte gUnk_03006260
_08047C0C: .4byte gUnk_03006250
_08047C10: .4byte gUnk_03004374

	thumb_func_start FUN_08047C14
FUN_08047C14: @ 0x08047C14
	push {r4, lr}
	sub sp, #8
	ldr r2, _08047C58 @ => 0x03004374
	ldr r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r2]
	bl FUN_0804C078
	ldr r4, _08047C5C @ => 0x030042B0
	strh r0, [r4, #4]
	bl FUN_0804C084
	strh r0, [r4, #6]
	ldr r2, _08047C60 @ => 0x03006234
	movs r1, #0xff
	strb r1, [r2]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r2, #1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08047C68
	ldr r0, _08047C64 @ => 0x0000FFFF
	bl FUN_0804254C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #3
	mov r1, sp
	bl FUN_08047B3C
	b _08047C74
	.align 2, 0
_08047C58: .4byte gUnk_03004374
_08047C5C: .4byte gUnk_030042B0
_08047C60: .4byte gUnk_03006234
_08047C64: .4byte 0x0000FFFF
_08047C68:
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	mov r1, sp
	bl FUN_08047B3C
_08047C74:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_08047C7C
FUN_08047C7C: @ 0x08047C7C
	push {lr}
	ldr r0, _08047CAC @ => 0x03002728
	ldr r0, [r0]
	cmp r0, #1
	bne _08047C8A
	bl FUN_0804B13C
_08047C8A:
	bl FUN_08042448
	ldr r1, _08047CB0 @ => 0x03006260
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08047CB4 @ => 0x03006234
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_08047CAC: .4byte gUnk_03002728
_08047CB0: .4byte gUnk_03006260
_08047CB4: .4byte gUnk_03006234

	thumb_func_start FUN_08047CB8
FUN_08047CB8: @ 0x08047CB8
	ldr r0, _08047CC0 @ => 0x03002728
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08047CC0: .4byte gUnk_03002728

	thumb_func_start FUN_08047CC4
FUN_08047CC4: @ 0x08047CC4
	push {lr}
	ldr r0, _08047CE4 @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08047CDE
	ldr r0, _08047CE8 @ => 0x03002728
	ldr r0, [r0]
	cmp r0, #1
	bne _08047CDE
	bl FUN_0804C094
_08047CDE:
	pop {r0}
	bx r0
	.align 2, 0
_08047CE4: .4byte gUnk_03004374
_08047CE8: .4byte gUnk_03002728

	thumb_func_start FUN_08047CEC
FUN_08047CEC: @ 0x08047CEC
	ldr r0, _08047CF4 @ => 0x03005C9C
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08047CF4: .4byte gUnk_03005C9C

	thumb_func_start FUN_08047CF8
FUN_08047CF8: @ 0x08047CF8
	ldr r0, _08047D00 @ => 0x0300625C
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08047D00: .4byte gUnk_0300625C

	thumb_func_start FUN_08047D04
FUN_08047D04: @ 0x08047D04
	ldr r0, _08047D10 @ => 0x0300625C
	ldr r1, _08047D14 @ => 0x03005C9C
	ldrb r1, [r1]
	strb r1, [r0]
	bx lr
	.align 2, 0
_08047D10: .4byte gUnk_0300625C
_08047D14: .4byte gUnk_03005C9C

	thumb_func_start FUN_08047D18
FUN_08047D18: @ 0x08047D18
	push {lr}
	ldr r0, _08047D40 @ => 0x03005C9C
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08047D44 @ => 0x0300625C
	strb r1, [r0]
	ldr r1, _08047D48 @ => 0x0300626C
	movs r0, #0
	str r0, [r1]
	movs r1, #0
	ldr r3, _08047D4C @ => 0x03006220
	ldr r2, _08047D50 @ => 0x03006228
	movs r0, #1
_08047D32:
	stm r2!, {r1}
	stm r3!, {r1}
	subs r0, #1
	cmp r0, #0
	bge _08047D32
	pop {r0}
	bx r0
	.align 2, 0
_08047D40: .4byte gUnk_03005C9C
_08047D44: .4byte gUnk_0300625C
_08047D48: .4byte gUnk_0300626C
_08047D4C: .4byte gUnk_03006220
_08047D50: .4byte gUnk_03006228

	thumb_func_start FUN_08047D54
FUN_08047D54: @ 0x08047D54
	ldr r1, _08047D5C @ => 0x03002728
	str r0, [r1]
	bx lr
	.align 2, 0
_08047D5C: .4byte gUnk_03002728

	thumb_func_start FUN_08047D60
FUN_08047D60: @ 0x08047D60
	push {lr}
	ldr r0, _08047D80 @ => 0x03006244
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08047D84 @ => 0x0300623C
	strb r1, [r0]
	ldr r2, _08047D88 @ => 0x03006440
	ldr r0, [r2]
	ldr r1, _08047D8C @ => 0xFFF7FF7F
	ands r0, r1
	str r0, [r2]
	movs r0, #4
	bl FUN_0804B2CC
	pop {r1}
	bx r1
	.align 2, 0
_08047D80: .4byte gUnk_03006244
_08047D84: .4byte gUnk_0300623C
_08047D88: .4byte gUnk_03006440
_08047D8C: .4byte 0xFFF7FF7F

	thumb_func_start FUN_08047D90
FUN_08047D90: @ 0x08047D90
	push {lr}
	bl FUN_0804B3CC
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08047D9C
FUN_08047D9C: @ 0x08047D9C
	push {lr}
	ldr r0, _08047DD0 @ => 0x03002728
	ldr r0, [r0]
	cmp r0, #1
	bne _08047DAA
	bl FUN_0804BFCC
_08047DAA:
	ldr r2, _08047DD4 @ => 0x03006440
	ldr r0, [r2]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	ldr r2, _08047DD8 @ => 0x03004374
	ldr r0, [r2]
	subs r1, #0x1c
	ands r0, r1
	str r0, [r2]
	ldr r1, _08047DDC @ => 0x03006460
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	bl FUN_08024900
	pop {r0}
	bx r0
	.align 2, 0
_08047DD0: .4byte gUnk_03002728
_08047DD4: .4byte gUnk_03006440
_08047DD8: .4byte gUnk_03004374
_08047DDC: .4byte gUnk_03006460

	thumb_func_start FUN_08047DE0
FUN_08047DE0: @ 0x08047DE0
	push {lr}
	bl FUN_0804C170
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08047DEC
FUN_08047DEC: @ 0x08047DEC
	push {lr}
	movs r1, #0
	ldr r3, _08047E04 @ => 0x03006220
	ldr r2, _08047E08 @ => 0x03006228
	movs r0, #1
_08047DF6:
	stm r2!, {r1}
	stm r3!, {r1}
	subs r0, #1
	cmp r0, #0
	bge _08047DF6
	pop {r0}
	bx r0
	.align 2, 0
_08047E04: .4byte gUnk_03006220
_08047E08: .4byte gUnk_03006228

	thumb_func_start FUN_08047E0C
FUN_08047E0C: @ 0x08047E0C
	movs r0, #0
	bx lr

	thumb_func_start FUN_08047E10
FUN_08047E10: @ 0x08047E10
	bx lr
	.align 2, 0

	thumb_func_start FUN_08047E14
FUN_08047E14: @ 0x08047E14
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
	movs r1, #0
	strh r0, [r6, #8]
	strh r1, [r6, #0xa]
	movs r0, #0x88
	lsls r0, r0, #0xa
	str r0, [r6, #0xc]
	adds r0, r6, #0
	bl FUN_08001FB0
	adds r0, r6, #0
	movs r1, #1
	bl FUN_08001F84
	ldr r0, _08047E6C @ => FUN_08047EA4
	str r0, [r6, #0x50]
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08047E6C: .4byte FUN_08047EA4

	thumb_func_start FUN_08047E70
FUN_08047E70: @ 0x08047E70
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08047E90 @ => 0x03002C40
	ldr r2, [r0]
	cmp r2, #0
	beq _08047E9A
_08047E7C:
	ldr r3, [r2]
	ldrh r0, [r2, #8]
	cmp r0, #0xd
	bne _08047E94
	ldr r0, [r2, #0x18]
	str r0, [r4]
	ldr r0, [r2, #0x1c]
	str r0, [r1]
	movs r0, #1
	b _08047E9C
	.align 2, 0
_08047E90: .4byte gUnk_03002C40
_08047E94:
	adds r2, r3, #0
	cmp r2, #0
	bne _08047E7C
_08047E9A:
	movs r0, #0
_08047E9C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08047EA4
FUN_08047EA4: @ 0x08047EA4
	push {lr}
	adds r1, r0, #0
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08047EBE
	cmp r0, #1
	bne _08047EBE
	adds r0, r1, #0
	bl FUN_080040DC
_08047EBE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08047EC4
FUN_08047EC4: @ 0x08047EC4
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	movs r7, #1
	ldrh r0, [r6, #6]
	cmp r0, #0x25
	beq _08047FB0
	cmp r0, #0x25
	bgt _08047EF0
	cmp r0, #1
	bne _08047EDE
	b _0804811E
_08047EDE:
	cmp r0, #1
	bgt _08047EE8
	cmp r0, #0
	beq _08047F02
	b _08048140
_08047EE8:
	cmp r0, #5
	bne _08047EEE
	b _0804803C
_08047EEE:
	b _08048140
_08047EF0:
	cmp r0, #0x27
	bne _08047EF6
	b _0804810C
_08047EF6:
	cmp r0, #0x27
	blt _08047FEE
	cmp r0, #0x72
	bne _08047F00
	b _080480E0
_08047F00:
	b _08048140
_08047F02:
	movs r0, #6
	str r0, [sp]
	movs r0, #0x55
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0xa
	movs r3, #0x6b
	bl FUN_0803DB6C
	ldr r0, [r6]
	movs r1, #6
	bl FUN_08001FF0
	movs r0, #0x25
	strh r0, [r6, #6]
	ldr r2, _08047F40 @ => 0x08073A54
	ldrh r1, [r5, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #2
	bne _08047F44
	ldr r0, [r5, #0x34]
	movs r1, #3
	movs r2, #0x14
	b _08047F4A
	.align 2, 0
_08047F40: .4byte ROMREF_08073A54
_08047F44:
	ldr r0, [r5, #0x34]
	movs r1, #3
	movs r2, #0x16
_08047F4A:
	movs r3, #0
	bl FUN_0802064C
	str r0, [r5, #0x5c]
	ldr r0, [r5, #0x5c]
	bl FUN_0803EF58
	ldr r4, [r5, #0x5c]
	ldr r2, _08047FAC @ => 0x080770C8
	ldrh r1, [r5, #8]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0x1c
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r4, #0
	bl FUN_08048E24
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_0803EF14
	ldr r3, [r5, #0x5c]
	ldr r0, [r6]
	adds r0, #0xa9
	ldrb r0, [r0]
	adds r3, #0xa9
	movs r1, #0xc
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r1, [r5, #0x5c]
	ldr r2, [r6]
	ldr r0, [r2, #0x70]
	subs r0, #1
	str r0, [r1, #0x70]
	str r0, [r1, #0x68]
	ldr r1, [r5, #0x5c]
	ldr r0, [r2, #0x74]
	adds r0, #1
	str r0, [r1, #0x74]
	str r0, [r1, #0x6c]
	b _08048140
	.align 2, 0
_08047FAC: .4byte ROMREF_080770C8
_08047FB0:
	ldr r2, [r6]
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08047FC0
	b _08048140
_08047FC0:
	adds r0, r2, #0
	movs r1, #2
	bl FUN_08001FF0
	movs r0, #0x26
	strh r0, [r6, #6]
	ldr r0, [r6]
	movs r1, #0x56
	bl FUN_08001F20
	ldr r0, [r6]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0x96
	strh r1, [r0]
	movs r0, #0x7a
	bl FUN_0804DE0C
	adds r1, r5, #0
	adds r1, #0xe0
	str r0, [r1]
	b _08048140
_08047FEE:
	ldr r4, _08048038 @ => 0x03003E28
	ldrh r0, [r5, #8]
	bl FUN_0803DCFC
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08038A30
	ldrh r0, [r6, #8]
	cmp r0, #0
	beq _0804802A
	subs r0, #1
	strh r0, [r6, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0804802A
	ldrh r0, [r5, #8]
	bl FUN_0803DCFC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl FUN_08038B24
	movs r0, #5
	strh r0, [r6, #6]
_0804802A:
	ldr r0, [r6, #0xc]
	cmp r0, #1
	beq _08048032
	b _08048140
_08048032:
	movs r0, #5
	strh r0, [r6, #6]
	b _08048140
	.align 2, 0
_08048038: .4byte gUnk_03003E28
_0804803C:
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r0, [r0]
	bl FUN_0804E03C
	ldr r0, [r5, #0x5c]
	movs r1, #1
	bl FUN_08001FB0
	ldr r2, _0804806C @ => 0x08073A54
	ldrh r1, [r5, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #1
	bne _08048070
	ldr r0, [r5, #0x34]
	movs r1, #3
	movs r2, #0x13
	b _08048076
	.align 2, 0
_0804806C: .4byte ROMREF_08073A54
_08048070:
	ldr r0, [r5, #0x34]
	movs r1, #3
	movs r2, #0x15
_08048076:
	movs r3, #0
	bl FUN_0802064C
	str r0, [r5, #0x5c]
	ldr r0, [r5, #0x5c]
	bl FUN_0803EF58
	ldr r4, [r5, #0x5c]
	ldr r2, _080480DC @ => 0x080770C8
	ldrh r1, [r5, #8]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0x1c
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r4, #0
	bl FUN_08048E24
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_0803EF14
	ldr r3, [r5, #0x5c]
	ldr r0, [r6]
	adds r0, #0xa9
	ldrb r0, [r0]
	adds r3, #0xa9
	movs r1, #0xc
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r1, [r5, #0x5c]
	ldr r2, [r6]
	ldr r0, [r2, #0x70]
	subs r0, #1
	str r0, [r1, #0x70]
	str r0, [r1, #0x68]
	ldr r1, [r5, #0x5c]
	ldr r0, [r2, #0x74]
	adds r0, #1
	str r0, [r1, #0x74]
	str r0, [r1, #0x6c]
	movs r0, #0x72
	strh r0, [r6, #6]
	b _08048140
	.align 2, 0
_080480DC: .4byte ROMREF_080770C8
_080480E0:
	ldr r2, [r5, #0x5c]
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08048140
	adds r0, r2, #0
	movs r1, #1
	bl FUN_08001FB0
	ldr r0, [r6]
	movs r1, #6
	bl FUN_08001FF0
	ldr r0, [r6]
	movs r1, #0x57
	bl FUN_08001F20
	movs r0, #0x27
	strh r0, [r6, #6]
	b _08048140
_0804810C:
	ldr r0, [r6]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08048140
	strh r7, [r6, #6]
	b _08048140
_0804811E:
	ldr r0, [r6]
	movs r1, #6
	bl FUN_08001FF0
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #6
	movs r3, #4
	bl FUN_0803DC54
	adds r0, r5, #0
	bl FUN_0803CB84
	adds r0, r5, #0
	bl FUN_0803C68C
	movs r7, #2
_08048140:
	adds r0, r7, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0804814C
FUN_0804814C: @ 0x0804814C
	movs r0, #1
	bx lr

	thumb_func_start FUN_08048150
FUN_08048150: @ 0x08048150
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl FUN_08001D8C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804816A
	ldr r0, [r4, #0x40]
	cmp r0, #1
	bne _0804816A
	movs r0, #0
	b _0804816C
_0804816A:
	movs r0, #1
_0804816C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08048174
FUN_08048174: @ 0x08048174
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_0803CE64
	cmp r0, #0
	bne _08048186
	movs r0, #0x24
	b _08048188
_08048186:
	movs r0, #0x20
_08048188:
	strb r0, [r4]
	movs r6, #1
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r5, #0
	bl FUN_0803CA10
	cmp r0, #0
	beq _080481A0
	adds r1, r4, r6
	movs r0, #0xa
	strb r0, [r1]
_080481A0:
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_080481A8
FUN_080481A8: @ 0x080481A8
	push {lr}
	cmp r2, #0x20
	beq _080481E0
	cmp r2, #0x20
	bhi _080481B8
	cmp r2, #0xa
	beq _080481D2
	b _080481CE
_080481B8:
	cmp r2, #0x24
	bne _080481CE
	ldrh r0, [r1, #8]
	cmp r0, #0
	beq _080481EC
	ldrb r0, [r1, #0xa]
	movs r1, #0x56
	bl FUN_0803A10C
	cmp r0, #0
	bne _080481EC
_080481CE:
	movs r0, #0
	b _080481EE
_080481D2:
	ldrh r0, [r1, #8]
	cmp r0, #0
	beq _080481EC
	ldrh r0, [r1, #0xa]
	cmp r0, #2
	beq _080481EC
	b _080481CE
_080481E0:
	ldrh r0, [r1, #8]
	cmp r0, #0
	beq _080481EC
	ldrh r0, [r1, #0xa]
	cmp r0, #1
	bne _080481CE
_080481EC:
	movs r0, #1
_080481EE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_080481F4
FUN_080481F4: @ 0x080481F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	bl FUN_0803D1F0
	adds r5, r0, #0
	cmp r5, #0
	beq _08048236
	strh r7, [r5, #4]
	ldr r0, [r6, #0x18]
	ldr r1, [r6, #0x1c]
	str r0, [r4, #0x60]
	str r1, [r4, #0x64]
	ldr r0, [r4, #0x34]
	movs r1, #1
	add r2, sp, #4
	bl FUN_08001A84
	adds r2, r5, #0
	adds r2, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, r6, #0
	add r1, sp, #4
	movs r3, #3
	bl FUN_08043BB8
	adds r0, r6, #0
	movs r1, #0xa
	bl FUN_08001F20
_08048236:
	adds r0, r5, #0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_08048240
FUN_08048240: @ 0x08048240
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0803D8C8
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	cmp r0, #0x20
	beq _0804826E
	cmp r0, #0x20
	bgt _0804825A
	cmp r0, #0xa
	beq _08048266
	b _08048276
_0804825A:
	cmp r0, #0x24
	bne _08048276
	adds r0, r4, #0
	bl FUN_08047EC4
	b _08048278
_08048266:
	adds r0, r4, #0
	bl FUN_0803C6F0
	b _08048278
_0804826E:
	adds r0, r4, #0
	bl FUN_0803CC7C
	b _08048278
_08048276:
	movs r0, #0
_08048278:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08048280
FUN_08048280: @ 0x08048280
	bx lr
	.align 2, 0

	thumb_func_start FUN_08048284
FUN_08048284: @ 0x08048284
	push {r4, r5, r6, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	adds r3, r1, #0
	movs r5, #0
	movs r6, #0
	ldr r2, _080482D0 @ => 0x08CE6EB8
	movs r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0xe0
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r6, [sp, #0x10]
	adds r0, #0x20
	str r0, [sp, #0x14]
	add r0, sp, #0x18
	adds r1, r4, #0
	bl FUN_0800D83C
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r4, #0
	adds r1, r2, #0
	bl FUN_0800CE60
	ldr r0, _080482D4 @ => 0x03003DF0
	bl FUN_080143D0
	cmp r0, #2
	beq _080482D8
	cmp r0, #2
	blo _080482CA
	cmp r0, #3
	beq _080482DC
_080482CA:
	movs r4, #0
	b _080482DE
	.align 2, 0
_080482D0: .4byte ROMREF_08CE6EB8
_080482D4: .4byte gUnk_03003DF0
_080482D8:
	movs r4, #1
	b _080482DE
_080482DC:
	movs r4, #2
_080482DE:
	bl FUN_08021320
	cmp r0, #6
	bne _080482E8
	movs r4, #3
_080482E8:
	ldr r0, _08048304 @ => 0x09FBD940
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #0x40
	movs r2, #0x20
	movs r3, #0xe0
	bl FUN_08015770
	add sp, #0x1c
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08048304: .4byte ROMREF_09FBD940

	thumb_func_start FUN_08048308
FUN_08048308: @ 0x08048308
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r1, #0
	movs r7, #1
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _0804831C
	movs r0, #0xc
	strh r0, [r4, #6]
_0804831C:
	ldrh r0, [r4, #6]
	cmp r0, #9
	beq _08048354
	cmp r0, #9
	bgt _08048330
	cmp r0, #0
	beq _0804833A
	cmp r0, #1
	beq _080483F6
	b _0804840A
_08048330:
	cmp r0, #0xc
	beq _080483D0
	cmp r0, #0x47
	beq _08048372
	b _0804840A
_0804833A:
	movs r0, #6
	str r0, [sp]
	movs r0, #0x6b
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xa
	movs r3, #0x6b
	bl FUN_0803DB6C
	movs r0, #9
	strh r0, [r4, #6]
	b _0804840A
_08048354:
	movs r0, #0x78
	bl FUN_0804DE0C
	adds r1, r5, #0
	adds r1, #0xe0
	str r0, [r1]
	ldr r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0x5a
	strh r1, [r0]
	movs r0, #0x47
	strh r0, [r4, #6]
	b _0804840A
_08048372:
	ldr r6, _080483C8 @ => 0x03003E28
	ldrh r0, [r5, #8]
	bl FUN_0803DCFC
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	movs r1, #1
	bl FUN_08038A30
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _080483AA
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080483AA
	ldrh r0, [r5, #8]
	bl FUN_0803DCFC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	bl FUN_08038B24
_080483AA:
	ldr r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _080483CC @ => 0xFFFF0000
	cmp r1, r0
	bne _0804840A
	movs r0, #0xc
	strh r0, [r4, #6]
	b _0804840A
	.align 2, 0
_080483C8: .4byte gUnk_03003E28
_080483CC: .4byte 0xFFFF0000
_080483D0:
	ldr r0, [r5, #0x34]
	movs r1, #0
	add r2, sp, #8
	bl FUN_08001A84
	ldr r0, [r4]
	movs r1, #0xa
	bl FUN_08001F20
	ldr r0, [r4]
	adds r2, r4, #0
	adds r2, #0x10
	str r7, [sp]
	add r1, sp, #8
	movs r3, #4
	bl FUN_08043BB8
	strh r7, [r4, #6]
	b _0804840A
_080483F6:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #6
	movs r3, #4
	bl FUN_0803DC54
	adds r0, r5, #0
	bl FUN_0803CB84
	movs r7, #2
_0804840A:
	adds r0, r7, #0
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_08048414
FUN_08048414: @ 0x08048414
	movs r0, #1
	bx lr

	thumb_func_start FUN_08048418
FUN_08048418: @ 0x08048418
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl FUN_08001D8C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08048432
	ldr r0, [r4, #0x40]
	cmp r0, #1
	bne _08048432
	movs r0, #0
	b _08048434
_08048432:
	movs r0, #1
_08048434:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0804843C
FUN_0804843C: @ 0x0804843C
	push {r4, lr}
	adds r4, r1, #0
	bl FUN_0803CE64
	cmp r0, #0
	bne _0804844C
	movs r0, #0x2a
	b _0804844E
_0804844C:
	movs r0, #0x20
_0804844E:
	strb r0, [r4]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_08048458
FUN_08048458: @ 0x08048458
	push {lr}
	cmp r2, #0x20
	beq _08048478
	cmp r2, #0x2a
	bne _08048474
	ldrh r0, [r1, #8]
	cmp r0, #0
	beq _08048484
	ldrb r0, [r1, #0xa]
	movs r1, #0x6b
	bl FUN_0803A10C
	cmp r0, #0
	bne _08048484
_08048474:
	movs r0, #0
	b _08048486
_08048478:
	ldrh r0, [r1, #8]
	cmp r0, #0
	beq _08048484
	ldrh r0, [r1, #0xa]
	cmp r0, #1
	bne _08048474
_08048484:
	movs r0, #1
_08048486:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0804848C
FUN_0804848C: @ 0x0804848C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	bl FUN_0803D1F0
	adds r4, r0, #0
	cmp r4, #0
	beq _080484C6
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
	movs r3, #4
	bl FUN_08043BB8
	adds r0, r5, #0
	movs r1, #0xa
	bl FUN_08001F20
_080484C6:
	adds r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_080484D0
FUN_080484D0: @ 0x080484D0
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0803D8C8
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	cmp r0, #0x20
	beq _080484EC
	cmp r0, #0x2a
	bne _080484F4
	adds r0, r4, #0
	bl FUN_08048308
	b _080484F6
_080484EC:
	adds r0, r4, #0
	bl FUN_0803CC7C
	b _080484F6
_080484F4:
	movs r0, #0
_080484F6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_080484FC
FUN_080484FC: @ 0x080484FC
	bx lr
	.align 2, 0

	thumb_func_start FUN_08048500
FUN_08048500: @ 0x08048500
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
	ldr r0, _08048588 @ => 0x00020404
	str r0, [r6, #0xc]
	adds r0, r6, #0
	movs r1, #0
	bl FUN_08001FB0
	ldrb r1, [r4, #0xa]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r6, r2
	strh r1, [r0]
	adds r1, r6, #0
	adds r1, #0x94
	ldr r0, _0804858C @ => FUN_0801501C
	str r0, [r1]
	ldrb r0, [r4, #9]
	rsbs r0, r0, #0
	subs r1, #0x16
	strb r0, [r1]
	ldrb r0, [r4, #9]
	adds r1, #1
	strb r0, [r1]
	ldrb r0, [r4, #8]
	rsbs r0, r0, #0
	subs r1, #3
	strb r0, [r1]
	ldrb r0, [r4, #8]
	adds r1, #1
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x80
	movs r1, #1
	strb r1, [r0]
	subs r0, #5
	strb r1, [r0]
	ldr r0, _08048590 @ => FUN_08048594
	str r0, [r6, #0x50]
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08048588: .4byte 0x00020404
_0804858C: .4byte FUN_0801501C
_08048590: .4byte FUN_08048594

	thumb_func_start FUN_08048594
FUN_08048594: @ 0x08048594
	push {lr}
	adds r1, r0, #0
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080485AE
	cmp r0, #1
	bne _080485AE
	adds r0, r1, #0
	bl FUN_080040DC
_080485AE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080485B4
FUN_080485B4: @ 0x080485B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	adds r5, r0, #0
	ldr r1, _080485EC @ => 0x0000011D
	adds r0, r5, r1
	ldrb r4, [r0]
	cmp r4, #0x57
	bne _080485CE
	b _0804878E
_080485CE:
	cmp r4, #0x57
	bgt _080485F0
	cmp r4, #0x3a
	bne _080485D8
	b _080486E4
_080485D8:
	cmp r4, #0x3a
	ble _080485DE
	b _0804883A
_080485DE:
	cmp r4, #0
	beq _08048616
	cmp r4, #0xb
	bne _080485E8
	b _08048710
_080485E8:
	b _0804883A
	.align 2, 0
_080485EC: .4byte 0x0000011D
_080485F0:
	cmp r4, #0x5c
	beq _080486C4
	cmp r4, #0x5d
	bne _080485FA
	b _08048778
_080485FA:
	b _0804883A
_080485FC:
	movs r2, #0x98
	lsls r2, r2, #1
	adds r1, r5, r2
	mov r0, sp
	add r0, sb
	adds r0, #4
	ldr r0, [r0]
	str r0, [r1]
	movs r4, #0x9c
	lsls r4, r4, #1
	adds r0, r5, r4
	str r7, [r0]
	b _080486B2
_08048616:
	adds r0, r5, #0
	bl FUN_08001848
	movs r0, #0xa
	str r0, [sp]
	movs r0, #0x2b
	movs r1, #0
	movs r2, #1
	add r3, sp, #4
	bl FUN_08001E10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r6, #0x98
	lsls r6, r6, #1
	adds r0, r5, r6
	str r4, [r0]
	movs r7, #0x9c
	lsls r7, r7, #1
	adds r0, r5, r7
	str r4, [r0]
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r5, r1
	str r4, [r0]
	movs r2, #0
	str r2, [sp, #0x3c]
	cmp r2, r8
	bhs _080486B2
	ldr r2, [r5, #0x18]
	ldr r3, [r5, #0x1c]
	add r4, sp, #0x2c
	mov sl, r4
	movs r6, #0
	mov ip, r6
	mov r7, sp
	adds r7, #4
	str r7, [sp, #0x40]
_08048664:
	ldr r1, [sp, #0x40]
	ldr r0, [r1]
	mov r1, sl
	movs r4, #0x98
	lsls r4, r4, #1
	adds r0, r0, r4
	ldm r0!, {r4, r6, r7}
	stm r1!, {r4, r6, r7}
	ldr r0, [r0]
	str r0, [r1]
	movs r7, #0
	ldr r1, [sp, #0x2c]
	mov sb, ip
	cmp r2, r1
	blt _0804869A
	ldr r0, [sp, #0x34]
	adds r0, r1, r0
	cmp r2, r0
	bge _0804869A
	ldr r1, [sp, #0x30]
	cmp r3, r1
	blt _0804869A
	ldr r0, [sp, #0x38]
	adds r0, r1, r0
	cmp r3, r0
	bge _0804869A
	movs r7, #1
_0804869A:
	cmp r7, #1
	beq _080485FC
	movs r6, #4
	add ip, r6
	ldr r7, [sp, #0x40]
	adds r7, #4
	str r7, [sp, #0x40]
	ldr r0, [sp, #0x3c]
	adds r0, #1
	str r0, [sp, #0x3c]
	cmp r0, r8
	blo _08048664
_080486B2:
	adds r0, r5, #0
	movs r1, #0x25
	bl FUN_08001F20
	adds r0, r5, #0
	movs r1, #0x5c
	bl FUN_08001F84
	b _0804883A
_080486C4:
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080486D2
	b _0804883A
_080486D2:
	adds r0, r5, #0
	movs r1, #0x26
	bl FUN_08001F20
	adds r0, r5, #0
	movs r1, #0x3a
	bl FUN_08001F84
	b _0804883A
_080486E4:
	ldr r0, _0804870C @ => 0x030043A0
	ldr r0, [r0]
	cmp r0, #0xb
	bhi _080486F8
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xe
	movs r3, #1
	bl FUN_0802064C
_080486F8:
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r0, #0x1b
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #0xb
	bl FUN_08001F84
	b _0804883A
	.align 2, 0
_0804870C: .4byte gUnk_030043A0
_08048710:
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0804872C
	adds r0, r5, #0
	movs r1, #0x27
	bl FUN_08001F20
	adds r0, r5, #0
	movs r1, #0x5d
	bl FUN_08001F84
_0804872C:
	movs r4, #0x90
	lsls r4, r4, #1
	adds r1, r5, r4
	ldrh r0, [r1]
	cmp r0, #0
	bne _0804873A
	b _0804883A
_0804873A:
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0804883A
	ldr r0, _08048758 @ => 0x030043A0
	ldr r0, [r0]
	cmp r0, #0xb
	bhi _0804875C
	movs r0, #0x89
	lsls r0, r0, #1
	bl FUN_0804DE0C
	b _0804883A
	.align 2, 0
_08048758: .4byte gUnk_030043A0
_0804875C:
	adds r0, r5, #0
	movs r1, #0x27
	bl FUN_08001F20
	adds r0, r5, #0
	movs r1, #0x5d
	bl FUN_08001F84
	ldr r0, _08048774 @ => 0x00000111
	bl FUN_0804DE0C
	b _0804883A
	.align 2, 0
_08048774: .4byte 0x00000111
_08048778:
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0804883A
	adds r0, r5, #0
	movs r1, #0x57
	bl FUN_08001F84
	b _0804883A
_0804878E:
	movs r6, #0x91
	lsls r6, r6, #1
	adds r0, r5, r6
	ldrb r1, [r0]
	adds r0, r5, #0
	bl FUN_08001FB0
	movs r6, #1
	movs r7, #0x9c
	lsls r7, r7, #1
	adds r0, r5, r7
	ldr r0, [r0]
	cmp r0, #1
	bne _08048826
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _080487E4
	ldr r0, _080487E0 @ => 0x03003DF0
	ldr r0, [r0, #0x68]
	bl FUN_08026328
	cmp r0, #0
	bne _080487E4
	movs r6, #0
	movs r0, #5
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl FUN_0802D8C0
	bl FUN_0802DA44
	b _08048826
	.align 2, 0
_080487E0: .4byte gUnk_03003DF0
_080487E4:
	movs r7, #0x98
	lsls r7, r7, #1
	adds r4, r5, r7
	ldr r0, [r4]
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq _080487FE
	bl FUN_080099D8
	movs r6, #0
_080487FE:
	ldr r0, [r4]
	movs r1, #1
	bl FUN_08001FB0
	ldr r0, [r4]
	ldr r4, _0804884C @ => 0x00000141
	adds r3, r0, r4
	ldrb r0, [r3]
	cmp r0, #0
	beq _08048826
	ldr r2, _08048850 @ => 0x03003DF0
	movs r7, #0xd2
	lsls r7, r7, #2
	adds r2, r2, r7
	movs r1, #1
	ldrb r3, [r3]
	lsls r1, r3
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
_08048826:
	cmp r6, #1
	bne _0804883A
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl FUN_0802D8C0
	bl FUN_0802DA44
_0804883A:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804884C: .4byte 0x00000141
_08048850: .4byte gUnk_03003DF0

	thumb_func_start FUN_08048854
FUN_08048854: @ 0x08048854
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08009B04
	adds r5, r0, #0
	ldrh r0, [r5, #0xa]
	cmp r0, #0
	beq _08048888
	ldr r0, _08048884 @ => 0x03003DF0
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #1
	ldrh r2, [r5, #0xa]
	lsls r1, r2
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _08048888
	movs r0, #0
	b _08048966
	.align 2, 0
_08048884: .4byte gUnk_03003DF0
_08048888:
	bl FUN_080012FC
	adds r4, r0, #0
	movs r0, #4
	ldrsh r1, [r5, r0]
	movs r0, #6
	ldrsh r2, [r5, r0]
	adds r0, r4, #0
	bl FUN_08001734
	ldr r0, [r5]
	movs r1, #0
	strh r0, [r4, #8]
	strh r1, [r4, #0xa]
	movs r2, #0xb2
	lsls r2, r2, #1
	adds r0, r4, r2
	strh r1, [r0]
	ldrh r0, [r5, #0xa]
	subs r2, #0x23
	adds r1, r4, r2
	strb r0, [r1]
	ldrb r1, [r5, #0xc]
	subs r2, #1
	adds r0, r4, r2
	strb r1, [r0]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrb r0, [r5, #0xe]
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001FB0
	movs r1, #0x98
	lsls r1, r1, #1
	adds r2, r4, r1
	movs r1, #4
	ldrsh r0, [r5, r1]
	movs r1, #8
	ldrsb r1, [r5, r1]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	str r0, [r2]
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r2, r4, r0
	movs r1, #6
	ldrsh r0, [r5, r1]
	movs r1, #9
	ldrsb r1, [r5, r1]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	str r0, [r2]
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r1, r4, r2
	movs r0, #8
	ldrsb r0, [r5, r0]
	lsls r0, r0, #0x11
	str r0, [r1]
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #9
	ldrsb r0, [r5, r0]
	lsls r0, r0, #0x11
	str r0, [r1]
	ldrb r0, [r5, #0xd]
	cmp r0, #1
	bne _0804895C
	ldr r0, [r4, #0xc]
	ldr r1, _08048950 @ => 0x80040001
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r1, _08048954 @ => 0x080790E4
	adds r0, r4, #0
	bl FUN_080015B8
	ldr r1, _08048958 @ => 0x0808DD8C
	adds r0, r4, #0
	bl FUN_08048E24
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_0803EF14
	adds r2, r4, #0
	adds r2, #0xa9
	ldrb r0, [r2]
	movs r1, #0xc
	orrs r0, r1
	strb r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl FUN_08002038
	b _08048960
	.align 2, 0
_08048950: .4byte 0x80040001
_08048954: .4byte ROMREF_080790E4
_08048958: .4byte ROMREF_0808DD8C
_0804895C:
	ldr r0, _0804896C @ => 0x80002000
	str r0, [r4, #0xc]
_08048960:
	ldr r0, _08048970 @ => FUN_08048974
	str r0, [r4, #0x50]
	adds r0, r4, #0
_08048966:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0804896C: .4byte 0x80002000
_08048970: .4byte FUN_08048974

	thumb_func_start FUN_08048974
FUN_08048974: @ 0x08048974
	push {lr}
	adds r2, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _080489D0
	cmp r0, #1
	ble _080489D6
	cmp r0, #9
	beq _080489A4
	cmp r0, #0xc
	bne _080489D6
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #0x46
	strh r0, [r1]
	adds r0, r2, #0
	movs r1, #9
	bl FUN_08001FB0
	b _080489D6
_080489A4:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _080489CC @ => 0xFFFF0000
	cmp r1, r0
	bne _080489D6
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
	adds r0, r2, #0
	movs r1, #0
	bl FUN_08001FB0
	b _080489D6
	.align 2, 0
_080489CC: .4byte 0xFFFF0000
_080489D0:
	adds r0, r2, #0
	bl FUN_080040DC
_080489D6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080489DC
FUN_080489DC: @ 0x080489DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r4, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	mov r1, sp
	bl FUN_08048AC0
	ldr r0, [sp]
	ldrh r0, [r0]
	strh r0, [r5]
	adds r0, r5, #2
	ldr r1, [sp, #4]
	movs r2, #8
	bl FUN_0802CBAC
	adds r0, r5, #0
	adds r0, #0xa
	ldr r1, [sp, #8]
	movs r2, #6
	bl FUN_0802CBAC
	adds r0, r5, #0
	adds r0, #0x10
	ldr r1, [sp, #0xc]
	movs r2, #6
	bl FUN_0802CBAC
	adds r0, r5, #0
	adds r0, #0x16
	ldr r1, [sp, #0x10]
	movs r2, #8
	bl FUN_0802CBAC
	ldr r0, [sp, #0x14]
	ldrh r0, [r0]
	strh r0, [r5, #0x1e]
	ldrb r0, [r4, #4]
	cmp r0, #5
	bhi _08048A7C
	lsls r0, r0, #2
	ldr r1, _08048A38 @ =_08048A3C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08048A38: .4byte _08048A3C
_08048A3C: @ jump table
	.4byte _08048A54 @ case 0
	.4byte _08048A58 @ case 1
	.4byte _08048A60 @ case 2
	.4byte _08048A64 @ case 3
	.4byte _08048A6C @ case 4
	.4byte _08048A74 @ case 5
_08048A54:
	ldr r4, [sp, #4]
	b _08048A6E
_08048A58:
	ldr r4, [sp, #4]
	ldr r6, [sp, #0x28]
	adds r5, r6, #0
	b _08048A82
_08048A60:
	ldr r4, [sp, #4]
	b _08048A76
_08048A64:
	ldr r4, [sp, #0x28]
	adds r5, r4, #0
	adds r6, r4, #0
	b _08048A82
_08048A6C:
	ldr r4, [sp, #0x20]
_08048A6E:
	adds r5, r4, #0
	ldr r6, [sp, #0x28]
	b _08048A82
_08048A74:
	ldr r4, [sp, #0x24]
_08048A76:
	ldr r5, [sp, #0x20]
	ldr r6, [sp, #0x28]
	b _08048A82
_08048A7C:
	movs r4, #0
	movs r5, #0
	movs r6, #0
_08048A82:
	ldr r0, [sp, #0x18]
	ldrh r0, [r0]
	strh r0, [r7]
	adds r0, r7, #2
	ldr r1, [sp, #0x1c]
	movs r2, #6
	bl FUN_0802CBAC
	adds r0, r7, #0
	adds r0, #8
	adds r1, r5, #0
	movs r2, #8
	bl FUN_0802CBAC
	adds r0, r7, #0
	adds r0, #0x10
	adds r1, r4, #0
	movs r2, #8
	bl FUN_0802CBAC
	adds r0, r7, #0
	adds r0, #0x18
	adds r1, r6, #0
	movs r2, #8
	bl FUN_0802CBAC
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08048AC0
FUN_08048AC0: @ 0x08048AC0
	push {r4, lr}
	adds r2, r0, #0
	ldr r3, _08048AF8 @ => 0x080960C8
	ldr r4, _08048AFC @ => 0x080962C8
	str r3, [r1]
	str r4, [r1, #0x18]
	ldrb r0, [r2, #1]
	lsls r0, r0, #5
	adds r0, #2
	adds r0, r0, r3
	str r0, [r1, #4]
	ldrb r0, [r2, #3]
	lsls r0, r0, #5
	adds r0, #0xa
	adds r0, r0, r3
	str r0, [r1, #8]
	ldrb r0, [r2, #0xa]
	lsls r0, r0, #5
	adds r0, #0x10
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldrb r0, [r2, #9]
	cmp r0, #0xf
	bhi _08048B00
	lsls r0, r0, #5
	adds r0, #2
	b _08048B08
	.align 2, 0
_08048AF8: .4byte ROMREF_080960C8
_08048AFC: .4byte ROMREF_080962C8
_08048B00:
	ldrb r0, [r2, #9]
	subs r0, #0x10
	lsls r0, r0, #5
	adds r0, #0xa
_08048B08:
	adds r0, r0, r4
	str r0, [r1, #0x10]
	adds r0, r3, #0
	adds r0, #0x1e
	str r0, [r1, #0x14]
	ldrb r0, [r2, #1]
	lsls r0, r0, #5
	adds r0, #2
	adds r0, r3, r0
	str r0, [r1, #0x1c]
	ldrb r0, [r2, #5]
	cmp r0, #0xf
	bhi _08048B28
	lsls r0, r0, #5
	adds r0, #2
	b _08048B30
_08048B28:
	ldrb r0, [r2, #5]
	subs r0, #0x10
	lsls r0, r0, #5
	adds r0, #0xa
_08048B30:
	adds r0, r4, r0
	str r0, [r1, #0x20]
	ldrb r0, [r2, #6]
	cmp r0, #0xf
	bhi _08048B40
	lsls r0, r0, #5
	adds r0, #2
	b _08048B48
_08048B40:
	ldrb r0, [r2, #6]
	subs r0, #0x10
	lsls r0, r0, #5
	adds r0, #0xa
_08048B48:
	adds r0, r4, r0
	str r0, [r1, #0x24]
	ldrb r0, [r2, #7]
	cmp r0, #0xf
	bhi _08048B58
	lsls r0, r0, #5
	adds r0, #2
	b _08048B60
_08048B58:
	ldrb r0, [r2, #7]
	subs r0, #0x10
	lsls r0, r0, #5
	adds r0, #0xa
_08048B60:
	adds r0, r4, r0
	str r0, [r1, #0x28]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08048B6C
FUN_08048B6C: @ 0x08048B6C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldrb r0, [r5, #8]
	cmp r0, #0
	bne _08048B94
	ldr r1, _08048B90 @ => 0x09FBD960
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r0, r6, #0
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0
	bl FUN_080016D4
	b _08048BAA
	.align 2, 0
_08048B90: .4byte ROMREF_09FBD960
_08048B94:
	ldr r1, _08048BF4 @ => 0x09FBD968
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r0, r6, #0
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0
	bl FUN_080016D4
_08048BAA:
	ldr r1, _08048BF8 @ => 0x09FBD958
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r0, r6, #0
	movs r1, #1
	adds r2, r4, #0
	movs r3, #1
	bl FUN_080016D4
	ldr r1, _08048BFC @ => 0x09FBD950
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r5, #2]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r4, [r1]
	adds r1, r6, #0
	adds r1, #0xd8
	ldrh r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	adds r7, r1, #0
	cmp r0, #0
	beq _08048C00
	adds r0, r6, #0
	movs r1, #2
	adds r2, r4, #0
	movs r3, #0
	bl FUN_080016D4
	b _08048C08
	.align 2, 0
_08048BF4: .4byte ROMREF_09FBD968
_08048BF8: .4byte ROMREF_09FBD958
_08048BFC: .4byte ROMREF_09FBD950
_08048C00:
	adds r0, r6, #0
	movs r1, #2
	bl FUN_08001690
_08048C08:
	ldr r1, _08048C30 @ => 0x09FBD970
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	ldrh r1, [r7]
	lsls r0, r1, #2
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _08048C58
	adds r0, r1, #0
	subs r0, #0x89
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bhi _08048C34
	bl FUN_08044B58
	b _08048C3A
	.align 2, 0
_08048C30: .4byte ROMREF_09FBD970
_08048C34:
	adds r0, r1, #0
	bl FUN_08048DC8
_08048C3A:
	adds r1, r0, #0
	adds r0, r6, #0
	bl FUN_08048E24
	adds r1, r0, #0
	movs r0, #2
	bl FUN_0803EE70
	adds r0, r6, #0
	movs r1, #3
	adds r2, r4, #0
	movs r3, #2
	bl FUN_080016D4
	b _08048C60
_08048C58:
	adds r0, r6, #0
	movs r1, #3
	bl FUN_08001690
_08048C60:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08048C68
FUN_08048C68: @ 0x08048C68
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r5, _08048CB0 @ => 0x080964C8
	ldrh r0, [r5]
	strh r0, [r4]
	adds r0, r4, #2
	ldrb r1, [r6, #1]
	lsls r1, r1, #5
	adds r1, #2
	adds r1, r1, r5
	movs r2, #0xc
	bl FUN_0802CBAC
	adds r0, r4, #0
	adds r0, #0xe
	ldrb r1, [r6, #3]
	lsls r1, r1, #5
	adds r1, #0xe
	adds r1, r1, r5
	movs r2, #0xc
	bl FUN_0802CBAC
	adds r4, #0x1a
	ldrb r1, [r6, #5]
	lsls r1, r1, #5
	adds r1, #0x1a
	adds r1, r1, r5
	adds r0, r4, #0
	movs r2, #6
	bl FUN_0802CBAC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08048CB0: .4byte ROMREF_080964C8

	thumb_func_start FUN_08048CB4
FUN_08048CB4: @ 0x08048CB4
	push {r4, r5, r6, lr}
	sub sp, #0x40
	adds r5, r1, #0
	adds r6, r2, #0
	add r4, sp, #0x20
	mov r1, sp
	adds r2, r4, #0
	bl FUN_080489DC
	ldr r0, _08048D00 @ => 0x0000029B
	bl FUN_080213F8
	cmp r0, #1
	bne _08048CE4
	mov r0, sp
	mov r1, sp
	movs r2, #0x20
	bl FUN_08015548
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl FUN_08015548
_08048CE4:
	lsls r1, r5, #4
	mov r0, sp
	movs r2, #0x10
	bl FUN_080157C8
	lsls r1, r6, #4
	adds r0, r4, #0
	movs r2, #0x10
	bl FUN_080157C8
	add sp, #0x40
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08048D00: .4byte 0x0000029B

	thumb_func_start FUN_08048D04
FUN_08048D04: @ 0x08048D04
	push {r4, r5, r6, lr}
	sub sp, #0x20
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r4, _08048D60 @ => 0x080964C8
	mov r1, sp
	ldrh r0, [r4]
	strh r0, [r1]
	mov r0, sp
	adds r0, #2
	ldrb r1, [r5, #1]
	lsls r1, r1, #5
	adds r1, #2
	adds r1, r1, r4
	movs r2, #0xc
	bl FUN_0802CBAC
	mov r0, sp
	adds r0, #0xe
	ldrb r1, [r5, #3]
	lsls r1, r1, #5
	adds r1, #0xe
	adds r1, r1, r4
	movs r2, #0xc
	bl FUN_0802CBAC
	mov r0, sp
	adds r0, #0x1a
	ldrb r1, [r5, #5]
	lsls r1, r1, #5
	adds r1, #0x1a
	adds r1, r1, r4
	movs r2, #6
	bl FUN_0802CBAC
	lsls r6, r6, #4
	mov r0, sp
	adds r1, r6, #0
	movs r2, #0x10
	bl FUN_080157C8
	add sp, #0x20
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08048D60: .4byte ROMREF_080964C8

	thumb_func_start FUN_08048D64
FUN_08048D64: @ 0x08048D64
	ldr r1, _08048D70 @ => 0x09FBD968
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08048D70: .4byte ROMREF_09FBD968

	thumb_func_start FUN_08048D74
FUN_08048D74: @ 0x08048D74
	ldr r1, _08048D80 @ => 0x09FBD960
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08048D80: .4byte ROMREF_09FBD960

	thumb_func_start FUN_08048D84
FUN_08048D84: @ 0x08048D84
	ldr r1, _08048D90 @ => 0x09FBD958
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08048D90: .4byte ROMREF_09FBD958

	thumb_func_start FUN_08048D94
FUN_08048D94: @ 0x08048D94
	ldr r1, _08048DA0 @ => 0x09FBD970
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08048DA0: .4byte ROMREF_09FBD970

	thumb_func_start FUN_08048DA4
FUN_08048DA4: @ 0x08048DA4
	ldr r2, _08048DB8 @ => 0x09FBD950
	ldrb r1, [r0]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r0, [r0, #2]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08048DB8: .4byte ROMREF_09FBD950

	thumb_func_start FUN_08048DBC
FUN_08048DBC: @ 0x08048DBC
	ldr r0, _08048DC4 @ => 0x03003DF0
	ldrb r0, [r0, #0x1c]
	bx lr
	.align 2, 0
_08048DC4: .4byte gUnk_03003DF0

	thumb_func_start FUN_08048DC8
FUN_08048DC8: @ 0x08048DC8
	push {lr}
	adds r3, r0, #0
	ldr r1, _08048DF8 @ => 0x080790F4
	ldrb r0, [r1]
	cmp r0, #0xd0
	beq _08048E0C
	adds r2, r1, #0
	ldr r0, _08048DFC @ => 0x0000040B
	adds r1, r2, r0
_08048DDA:
	ldrb r0, [r2]
	cmp r0, r3
	bne _08048E00
	ldrb r1, [r2, #1]
	ldrb r0, [r2, #2]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r1, [r2, #3]
	lsls r1, r1, #0x10
	orrs r1, r0
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x18
	orrs r0, r1
	b _08048E0E
	.align 2, 0
_08048DF8: .4byte ROMREF_080790F4
_08048DFC: .4byte 0x0000040B
_08048E00:
	adds r2, #5
	cmp r2, r1
	bhi _08048E0C
	ldrb r0, [r2]
	cmp r0, #0xd0
	bne _08048DDA
_08048E0C:
	movs r0, #0
_08048E0E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08048E14
FUN_08048E14: @ 0x08048E14
	ldr r1, _08048E20 @ => 0x09FC1418
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08048E20: .4byte ROMREF_09FC1418

	thumb_func_start FUN_08048E24
FUN_08048E24: @ 0x08048E24
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08048E60 @ => 0x0000029B
	bl FUN_080213F8
	cmp r0, #1
	bne _08048E64
	ldrh r0, [r4, #8]
	cmp r0, #5
	bne _08048E46
	ldrh r0, [r4, #0xa]
	movs r1, #1
	bl FUN_0803AFEC
	cmp r0, #1
	beq _08048E64
_08048E46:
	adds r0, r4, #0
	bl FUN_08008F44
	adds r4, r0, #0
	cmp r4, #0
	beq _08048E64
	ldr r0, [r4]
	ldr r1, [r5]
	movs r2, #0x20
	bl FUN_08015548
	adds r0, r4, #0
	b _08048E66
	.align 2, 0
_08048E60: .4byte 0x0000029B
_08048E64:
	adds r0, r5, #0
_08048E66:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start FUN_08048E6C
FUN_08048E6C: @ 0x08048E6C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08048E8C @ => 0x0000029B
	bl FUN_080213F8
	cmp r0, #1
	bne _08048E90
	bl FUN_08008F98
	adds r4, r0, #0
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r5, #0
	bl FUN_08015548
	b _08048EB0
	.align 2, 0
_08048E8C: .4byte 0x0000029B
_08048E90:
	movs r0, #0xa8
	lsls r0, r0, #2
	bl FUN_080213F8
	cmp r0, #1
	beq _08048EA0
	adds r0, r5, #0
	b _08048EB2
_08048EA0:
	bl FUN_08008F98
	adds r4, r0, #0
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r5, #0
	bl FUN_080155EC
_08048EB0:
	adds r0, r4, #0
_08048EB2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start FUN_08048EB8
FUN_08048EB8: @ 0x08048EB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	adds r6, r0, #0
	adds r4, r1, #0
	mov r8, r2
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	mov sl, r0
	ldr r2, _08048F90 @ => 0x0807281C
	adds r1, #0x34
	adds r0, r4, r1
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #0x30]
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	str r0, [sp, #8]
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	str r0, [sp, #0xc]
	ldrb r2, [r4, #0x12]
	str r2, [sp, #0x34]
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	mov sb, r0
	movs r2, #0
	str r2, [sp, #0x38]
	mov r0, r8
	cmp r0, #1
	bne _08048F32
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_08048EB8
	cmp r0, #1
	beq _08048F1C
	b _08049200
_08048F1C:
	mov r0, sl
	adds r0, #0x6c
	movs r1, #0
	movs r2, #0x70
	bl FUN_0802CB40
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r4, r1
	mov r2, r8
	str r2, [r0]
_08048F32:
	add r4, sp, #0x10
	adds r0, r6, #0
	add r1, sp, #8
	adds r2, r4, #0
	bl FUN_0805374C
	cmp r0, #0
	bne _08048F44
	b _08049200
_08048F44:
	movs r7, #1
	movs r0, #0
	str r0, [sp, #0x3c]
	movs r1, #0
	str r1, [sp, #0x28]
	add r5, sp, #0x14
	ldr r2, [sp, #0x30]
	adds r2, #2
	str r2, [sp, #0x50]
_08048F56:
	movs r0, #0
	str r0, [sp, #0x2c]
_08048F5A:
	add r1, sp, #0x10
	str r1, [sp]
	str r5, [sp, #4]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x34]
	bl FUN_08049BF4
	ldr r2, [sp, #0x2c]
	lsls r1, r2, #2
	adds r0, r1, r2
	ldr r2, [sp, #0x28]
	adds r0, r2, r0
	ldr r2, [sp, #0x50]
	adds r0, r2, r0
	ldrb r0, [r0]
	str r1, [sp, #0x54]
	cmp r0, #6
	bls _08048F84
	b _08049120
_08048F84:
	lsls r0, r0, #2
	ldr r1, _08048F94 @ =_08048F98
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08048F90: .4byte ItemInfoData
_08048F94: .4byte _08048F98
_08048F98: @ jump table
	.4byte _08049120 @ case 0
	.4byte _08048FB4 @ case 1
	.4byte _08048FCC @ case 2
	.4byte _08049032 @ case 3
	.4byte _08049098 @ case 4
	.4byte _080490DA @ case 5
	.4byte _080490FE @ case 6
_08048FB4:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #1
	mov r3, sb
	bl FUN_08049ACC
	adds r7, r0, #0
	mov r0, r8
	cmp r0, #1
	beq _08048FCA
	b _08049120
_08048FCA:
	b _080490EE
_08048FCC:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #2
	mov r3, sb
	bl FUN_08049ACC
	adds r7, r0, #0
	mov r1, r8
	cmp r1, #1
	beq _08048FE2
	b _08049120
_08048FE2:
	cmp r7, #1
	beq _08048FE8
	b _08049120
_08048FE8:
	adds r0, r5, #0
	movs r1, #3
	bl FUN_0803D810
	adds r4, r0, #0
	cmp r4, #0
	beq _0804901C
	mov r1, sl
	bl FUN_0803D850
	ldr r2, [r4, #0x34]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	adds r0, #0xcc
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r2, #0x70]
	str r1, [r2, #0x74]
	mov r2, sl
	ldr r0, [r2, #0x34]
	adds r1, r4, #0
	movs r2, #1
	bl FUN_08006DFC
_0804901C:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #8
	bl FUN_08049714
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #4
	bl FUN_08049778
	b _08049120
_08049032:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #3
	mov r3, sb
	bl FUN_08049ACC
	adds r7, r0, #0
	mov r0, r8
	cmp r0, #1
	bne _08049120
	cmp r7, #1
	bne _08049120
	adds r0, r6, #0
	adds r1, r5, #0
	bl FUN_080496EC
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	beq _0804908C
	adds r0, r5, #0
	movs r1, #2
	bl FUN_0803D810
	adds r4, r0, #0
	mov r0, sl
	adds r1, r4, #0
	bl FUN_0803D850
	ldr r2, [r4, #0x34]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	adds r0, #0xcc
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r2, #0x70]
	str r1, [r2, #0x74]
	ldr r0, [r4, #0x34]
	adds r1, r4, #0
	movs r2, #1
	bl FUN_08006DFC
	b _08049120
_0804908C:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #4
	bl FUN_08049714
	b _08049120
_08049098:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #4
	mov r3, sb
	bl FUN_08049ACC
	adds r7, r0, #0
	mov r2, r8
	cmp r2, #1
	bne _08049120
	cmp r7, #1
	bne _08049120
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #2
	bl FUN_08049714
	ldr r1, [sp, #0x38]
	lsls r0, r1, #2
	add r0, sl
	ldrb r2, [r5]
	adds r1, r0, #0
	adds r1, #0x6c
	strb r2, [r1]
	ldrb r1, [r5, #1]
	adds r0, #0x6d
	strb r1, [r0]
	ldr r0, [sp, #0x38]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x38]
	b _08049120
_080490DA:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #5
	mov r3, sb
	bl FUN_08049ACC
	adds r7, r0, #0
	mov r2, r8
	cmp r2, #1
	bne _08049120
_080490EE:
	cmp r7, #1
	bne _08049120
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #1
	bl FUN_08049714
	b _08049120
_080490FE:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #6
	mov r3, sb
	bl FUN_08049ACC
	adds r7, r0, #0
	mov r0, r8
	cmp r0, #1
	bne _08049120
	cmp r7, #1
	bne _08049120
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0x40
	bl FUN_08049714
_08049120:
	cmp r7, #0
	beq _08049200
	ldr r1, [sp, #0x54]
	ldr r2, [sp, #0x2c]
	adds r0, r1, r2
	ldr r1, [sp, #0x28]
	adds r0, r1, r0
	ldr r2, [sp, #0x50]
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #1
	beq _08049144
	cmp r0, #3
	beq _08049144
	cmp r0, #2
	beq _08049144
	cmp r0, #6
	bne _08049164
_08049144:
	ldr r0, [sp, #0x3c]
	lsls r1, r0, #2
	add r1, sl
	ldrb r2, [r5]
	adds r0, r1, #0
	adds r0, #0x9c
	strb r2, [r0]
	add r0, sp, #0x14
	ldrb r0, [r0, #1]
	adds r1, #0x9d
	strb r0, [r1]
	ldr r0, [sp, #0x3c]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x3c]
_08049164:
	ldr r1, [sp, #0x2c]
	adds r1, #1
	str r1, [sp, #0x2c]
	cmp r1, #4
	bhi _08049170
	b _08048F5A
_08049170:
	ldr r2, [sp, #0x28]
	adds r2, #1
	str r2, [sp, #0x28]
	cmp r2, #4
	bhi _0804917C
	b _08048F56
_0804917C:
	mov r0, r8
	cmp r0, #1
	bne _08049274
	ldr r0, _080491FC @ => 0x00001388
	str r0, [sp, #0x48]
	movs r1, #0
	str r1, [sp, #0x4c]
	str r1, [sp, #0x40]
	str r0, [sp, #0x44]
	ldr r2, [sp, #0x3c]
	cmp r2, #0
	bne _08049204
	adds r0, r1, #0
	mov r1, sl
	str r0, [r1, #0x50]
	movs r4, #0
	movs r2, #0xcc
	add r2, sl
	mov sb, r2
	movs r0, #0xd4
	add r0, sl
	mov r8, r0
	ldr r1, [sp, #0x3c]
	ldr r2, [sp, #0x38]
	cmp r1, r2
	bhs _08049260
	add r7, sp, #0x18
	add r5, sp, #0x20
_080491B4:
	lsls r1, r4, #2
	adds r1, #0x6c
	add r1, sl
	adds r0, r6, #0
	adds r2, r7, #0
	adds r3, r5, #0
	bl FUN_080539B8
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x48]
	cmp r0, r1
	bge _080491CE
	str r0, [sp, #0x48]
_080491CE:
	ldr r0, [r7, #4]
	ldr r2, [sp, #0x4c]
	cmp r0, r2
	ble _080491D8
	str r0, [sp, #0x4c]
_080491D8:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x40]
	cmp r0, r1
	ble _080491E2
	str r0, [sp, #0x40]
_080491E2:
	ldr r0, [r5, #4]
	ldr r2, [sp, #0x44]
	cmp r0, r2
	bge _080491EC
	str r0, [sp, #0x44]
_080491EC:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [sp, #0x38]
	cmp r4, r0
	blo _080491B4
	b _08049260
	.align 2, 0
_080491FC: .4byte 0x00001388
_08049200:
	movs r0, #0
	b _08049276
_08049204:
	movs r4, #0
	movs r1, #0xcc
	add r1, sl
	mov sb, r1
	movs r2, #0xd4
	add r2, sl
	mov r8, r2
	ldr r0, [sp, #0x3c]
	cmp r4, r0
	bhs _08049260
	add r7, sp, #0x18
	add r5, sp, #0x20
_0804921C:
	lsls r1, r4, #2
	adds r1, #0x9c
	add r1, sl
	adds r0, r6, #0
	adds r2, r7, #0
	adds r3, r5, #0
	bl FUN_080539B8
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x48]
	cmp r0, r1
	bge _08049236
	str r0, [sp, #0x48]
_08049236:
	ldr r0, [r7, #4]
	ldr r2, [sp, #0x4c]
	cmp r0, r2
	ble _08049240
	str r0, [sp, #0x4c]
_08049240:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x40]
	cmp r0, r1
	ble _0804924A
	str r0, [sp, #0x40]
_0804924A:
	ldr r0, [r5, #4]
	ldr r2, [sp, #0x44]
	cmp r0, r2
	bge _08049254
	str r0, [sp, #0x44]
_08049254:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [sp, #0x3c]
	cmp r4, r0
	blo _0804921C
_08049260:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	mov r2, sb
	str r0, [r2]
	str r1, [r2, #4]
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x4c]
	mov r2, r8
	str r0, [r2]
	str r1, [r2, #4]
_08049274:
	movs r0, #1
_08049276:
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08049288
FUN_08049288: @ 0x08049288
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	mov r8, r0
	mov sb, r1
	mov r0, sb
	bl FUN_0803C3FC
	ldr r2, _0804931C @ => 0x0807281C
	movs r0, #0xb2
	lsls r0, r0, #1
	add r0, sb
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #0x18]
	mov r1, sb
	movs r2, #0x1a
	ldrsh r0, [r1, r2]
	str r0, [sp, #8]
	movs r2, #0x1e
	ldrsh r0, [r1, r2]
	str r0, [sp, #0xc]
	ldrb r0, [r1, #0x12]
	str r0, [sp, #0x1c]
	add r4, sp, #0x10
	mov r0, r8
	add r1, sp, #8
	adds r2, r4, #0
	bl FUN_0805374C
	cmp r0, #0
	bne _080492DA
	b _080493E8
_080492DA:
	movs r1, #0
	mov sl, r1
	add r6, sp, #0x14
	ldr r2, [sp, #0x18]
	adds r2, #2
	str r2, [sp, #0x20]
_080492E6:
	movs r5, #0
	mov r0, sl
	adds r0, #1
	str r0, [sp, #0x24]
_080492EE:
	add r1, sp, #0x10
	str r1, [sp]
	str r6, [sp, #4]
	mov r0, sl
	adds r1, r5, #0
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	bl FUN_08049BF4
	lsls r0, r5, #2
	adds r0, r0, r5
	add r0, sl
	ldr r2, [sp, #0x20]
	adds r0, r2, r0
	ldrb r0, [r0]
	adds r4, r5, #1
	cmp r0, #6
	bhi _080493D8
	lsls r0, r0, #2
	ldr r1, _08049320 @ =_08049324
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804931C: .4byte ItemInfoData
_08049320: .4byte _08049324
_08049324: @ jump table
	.4byte _080493D8 @ case 0
	.4byte _08049340 @ case 1
	.4byte _0804934C @ case 2
	.4byte _08049384 @ case 3
	.4byte _08049390 @ case 4
	.4byte _08049340 @ case 5
	.4byte _080493CC @ case 6
_08049340:
	mov r0, r8
	adds r1, r6, #0
	movs r2, #1
	bl FUN_08049778
	b _080493D6
_0804934C:
	adds r0, r6, #0
	movs r1, #3
	bl FUN_0803D810
	adds r2, r0, #0
	rsbs r0, r2, #0
	orrs r0, r2
	cmp r0, #0
	bge _08049378
	movs r0, #0x98
	lsls r0, r0, #1
	add r0, sb
	ldr r1, [r0]
	adds r0, r2, #0
	bl FUN_0803D85C
	mov r0, r8
	adds r1, r6, #0
	movs r2, #4
	bl FUN_08049714
	b _080493D6
_08049378:
	mov r0, r8
	adds r1, r6, #0
	movs r2, #0x3d
	bl FUN_08049778
	b _080493D6
_08049384:
	mov r0, r8
	adds r1, r6, #0
	movs r2, #0xd
	bl FUN_08049778
	b _080493D6
_08049390:
	movs r7, #0
	ldr r0, _080493C8 @ => 0x03005B90
	ldr r2, [r0]
	adds r4, r5, #1
	cmp r2, #0
	beq _080493B8
_0804939C:
	ldr r5, [r2]
	ldr r0, [r2, #0x34]
	cmp r0, sb
	beq _080493B2
	adds r0, r2, #0
	adds r1, r6, #0
	bl FUN_0803D7A0
	cmp r0, #1
	bne _080493B2
	movs r7, #1
_080493B2:
	adds r2, r5, #0
	cmp r2, #0
	bne _0804939C
_080493B8:
	cmp r7, #0
	bne _080493D8
	mov r0, r8
	adds r1, r6, #0
	movs r2, #2
	bl FUN_08049778
	b _080493D8
	.align 2, 0
_080493C8: .4byte gUnk_03005B90
_080493CC:
	mov r0, r8
	adds r1, r6, #0
	movs r2, #0x40
	bl FUN_08049778
_080493D6:
	adds r4, r5, #1
_080493D8:
	adds r5, r4, #0
	cmp r5, #4
	bls _080492EE
	ldr r0, [sp, #0x24]
	mov sl, r0
	cmp r0, #4
	bhi _080493E8
	b _080492E6
_080493E8:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_080493F8
FUN_080493F8: @ 0x080493F8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x28
	mov r8, r0
	adds r4, r1, #0
	adds r1, r3, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	mov r2, sp
	bl FUN_08001A84
	ldr r0, [sp]
	asrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	asrs r0, r0, #0x10
	add r5, sp, #8
	str r0, [r5, #4]
	add r2, sp, #0x10
	mov r0, r8
	adds r1, r5, #0
	bl FUN_0805374C
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	str r0, [sp, #0x14]
	movs r2, #0x1e
	ldrsh r0, [r4, r2]
	add r4, sp, #0x14
	str r0, [r4, #4]
	add r6, sp, #0x1c
	mov r0, r8
	adds r1, r4, #0
	adds r2, r6, #0
	bl FUN_0805374C
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x14]
	subs r2, r1, r0
	ldr r1, [r5, #4]
	ldr r0, [r4, #4]
	subs r1, r1, r0
	mov sb, r6
	cmp r2, #0
	ble _0804946A
	movs r6, #1
	cmp r1, #0
	blt _08049476
	movs r6, #2
	b _08049476
_08049462:
	ldr r0, [sp, #0x44]
	str r7, [r0]
	movs r0, #1
	b _08049514
_0804946A:
	movs r6, #3
	cmp r2, #0
	bge _08049476
	cmp r1, #0
	bgt _08049476
	movs r6, #0
_08049476:
	lsls r4, r6, #1
	adds r6, r4, #0
	adds r0, r4, #0
	adds r0, #8
	cmp r4, r0
	bhs _08049512
	ldr r1, _080494CC @ => 0x0808DDC8
	lsls r0, r4, #1
	adds r5, r0, r1
_08049488:
	ldrb r0, [r5]
	mov r1, sb
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _080494D0 @ => 0xFFFFFF00
	ands r7, r1
	orrs r7, r0
	add r0, sp, #0x1c
	ldrb r0, [r0, #1]
	ldrb r1, [r5, #1]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	ldr r1, _080494D4 @ => 0xFFFF00FF
	ands r7, r1
	orrs r7, r0
	mov r2, r8
	ldr r0, [r2]
	adds r1, r7, #0
	add r2, sp, #0x20
	bl FUN_08049FE8
	cmp r0, #1
	bne _080494D8
	ldr r0, [sp, #0x20]
	ldrb r1, [r0]
	lsrs r1, r1, #4
	ldrb r0, [r0, #1]
	lsls r2, r0, #4
	orrs r2, r1
	b _080494DA
	.align 2, 0
_080494CC: .4byte ROMREF_0808DDC8
_080494D0: .4byte 0xFFFFFF00
_080494D4: .4byte 0xFFFF00FF
_080494D8:
	movs r2, #0
_080494DA:
	movs r0, #0xd
	ands r2, r0
	cmp r2, #0
	bne _08049506
	mov r1, r8
	ldr r0, [r1]
	adds r1, r7, #0
	add r2, sp, #0x24
	bl FUN_08049FE8
	cmp r0, #1
	bne _080494FC
	ldr r0, [sp, #0x24]
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r1, r0, #0x1c
	b _080494FE
_080494FC:
	movs r1, #0
_080494FE:
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _08049462
_08049506:
	adds r5, #2
	adds r4, #1
	adds r0, r6, #0
	adds r0, #8
	cmp r4, r0
	blo _08049488
_08049512:
	movs r0, #0
_08049514:
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08049524
FUN_08049524: @ 0x08049524
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	mov sl, r0
	str r3, [sp, #0x18]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r2, r2, r0
	ldr r2, [r2]
	mov sb, r2
	movs r2, #0x1a
	ldrsh r0, [r1, r2]
	str r0, [sp]
	movs r3, #0x1e
	ldrsh r0, [r1, r3]
	str r0, [sp, #4]
	add r4, sp, #8
	mov r0, sl
	mov r1, sp
	adds r2, r4, #0
	bl FUN_0805374C
	movs r6, #0
	str r6, [sp, #0x2c]
	ldr r0, _0804959C @ => 0x00002710
	str r0, [sp, #0x1c]
	mov r0, sb
	movs r1, #4
	bl FUN_0803D36C
	str r0, [sp, #0x24]
	movs r1, #0
	str r1, [sp, #0x20]
	cmp r6, r0
	blo _08049572
	b _0804967A
_08049572:
	mov r7, sb
	adds r7, #0x6c
_08049576:
	ldr r0, [r7]
	str r0, [sp, #0x14]
	ldr r2, [sp, #0x50]
	cmp r2, #0
	beq _080495C8
	movs r3, #0
	mov r8, r3
	mov r0, sb
	movs r1, #1
	bl FUN_0803D36C
	mov ip, r0
	movs r3, #0
	add r5, sp, #0x14
	ldr r0, [sp, #0x14]
	lsls r4, r0, #0x10
	mov r2, sb
	adds r2, #0x9c
	b _080495A4
	.align 2, 0
_0804959C: .4byte 0x00002710
_080495A0:
	adds r2, #4
	adds r3, #1
_080495A4:
	cmp r3, ip
	bhs _080495C2
	ldrb r0, [r5]
	ldr r1, [r2]
	ldrb r6, [r2]
	cmp r0, r6
	beq _080495BE
	lsrs r0, r1, #8
	lsrs r1, r4, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	bne _080495A0
_080495BE:
	movs r0, #1
	mov r8, r0
_080495C2:
	mov r1, r8
	cmp r1, #0
	beq _0804966A
_080495C8:
	mov r2, sp
	ldrh r3, [r2, #8]
	add r2, sp, #0x14
	ldrh r1, [r2]
	ldr r0, _080495E8 @ => 0x0000FFFF
	ands r0, r3
	ldr r3, _080495E8 @ => 0x0000FFFF
	ands r1, r3
	adds r5, r2, #0
	cmp r0, r1
	bne _080495EC
	ldr r6, [sp, #0x14]
	str r6, [sp, #0x28]
	movs r0, #1
	str r0, [sp, #0x2c]
	b _0804967A
	.align 2, 0
_080495E8: .4byte 0x0000FFFF
_080495EC:
	mov r1, sl
	ldr r0, [r1]
	ldr r1, [sp, #0x14]
	add r2, sp, #0xc
	bl FUN_08049FE8
	cmp r0, #1
	bne _08049606
	ldr r0, [sp, #0xc]
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r4, r0, #0x1c
	b _08049608
_08049606:
	movs r4, #0
_08049608:
	mov r2, sl
	ldr r0, [r2]
	ldr r1, [sp, #0x14]
	add r2, sp, #0x10
	bl FUN_08049FE8
	cmp r0, #1
	bne _08049626
	ldr r0, [sp, #0x10]
	ldrb r1, [r0]
	lsrs r1, r1, #4
	ldrb r0, [r0, #1]
	lsls r2, r0, #4
	orrs r2, r1
	b _08049628
_08049626:
	movs r2, #0
_08049628:
	movs r0, #2
	ands r4, r0
	cmp r4, #0
	bne _0804966A
	movs r0, #0x3d
	ands r2, r0
	cmp r2, #0
	bne _0804966A
	mov r3, sp
	ldrb r2, [r3, #8]
	ldrb r0, [r5]
	subs r1, r2, r0
	cmp r1, #0
	bge _08049646
	subs r1, r0, r2
_08049646:
	str r1, [sp]
	mov r6, sp
	ldrb r3, [r6, #9]
	ldrb r2, [r5, #1]
	subs r0, r3, r2
	cmp r0, #0
	bge _08049656
	subs r0, r2, r3
_08049656:
	str r0, [sp, #4]
	adds r0, r1, r0
	ldr r1, [sp, #0x1c]
	cmp r0, r1
	bhs _0804966A
	str r0, [sp, #0x1c]
	ldr r2, [r7]
	str r2, [sp, #0x28]
	movs r3, #1
	str r3, [sp, #0x2c]
_0804966A:
	adds r7, #4
	ldr r6, [sp, #0x20]
	adds r6, #1
	str r6, [sp, #0x20]
	ldr r0, [sp, #0x24]
	cmp r6, r0
	bhs _0804967A
	b _08049576
_0804967A:
	add r1, sp, #0x28
	ldrb r2, [r1]
	ldr r1, [sp, #0x18]
	strb r2, [r1]
	ldr r2, [sp, #0x28]
	lsrs r0, r2, #8
	strb r0, [r1, #1]
	ldr r0, [sp, #0x2c]
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0804969C
FUN_0804969C: @ 0x0804969C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	movs r0, #0x14
	bl FUN_0802C9DC
	mov r8, r0
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl FUN_080537C0
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_080496D4
FUN_080496D4: @ 0x080496D4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x14
	bl FUN_0802CB40
	adds r0, r4, #0
	bl FUN_0802CA80
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_080496EC
FUN_080496EC: @ 0x080496EC
	push {lr}
	sub sp, #4
	ldr r0, [r0]
	ldr r1, [r1]
	mov r2, sp
	bl FUN_08049FE8
	cmp r0, #1
	beq _08049702
	movs r0, #0
	b _0804970E
_08049702:
	ldr r0, [sp]
	ldrb r1, [r0]
	lsrs r1, r1, #4
	ldrb r0, [r0, #1]
	lsls r0, r0, #4
	orrs r0, r1
_0804970E:
	add sp, #4
	pop {r1}
	bx r1

	thumb_func_start FUN_08049714
FUN_08049714: @ 0x08049714
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r0, [r4]
	ldr r1, [r5]
	add r2, sp, #4
	bl FUN_08049FE8
	cmp r0, #1
	bne _08049750
	ldr r3, [sp, #4]
	ldrb r4, [r3]
	lsrs r0, r4, #4
	ldrb r1, [r3, #1]
	lsls r1, r1, #4
	orrs r1, r0
	orrs r1, r6
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	movs r0, #0xf
	ands r2, r0
	lsls r2, r2, #4
	ands r0, r4
	orrs r0, r2
	strb r0, [r3]
	lsrs r1, r1, #0x14
	strb r1, [r3, #1]
	b _08049770
_08049750:
	mov r2, sp
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	lsls r3, r6, #4
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	orrs r0, r3
	strh r0, [r2]
	ldr r0, [r4]
	ldr r1, [r5]
	bl FUN_08049FA4
_08049770:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start FUN_08049778
FUN_08049778: @ 0x08049778
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r2, #0
	ldr r0, [r6]
	ldr r1, [r7]
	mov r2, sp
	bl FUN_08049FE8
	cmp r0, #1
	bne _080497B8
	ldr r3, [sp]
	ldrb r4, [r3]
	lsrs r0, r4, #4
	ldrb r1, [r3, #1]
	lsls r1, r1, #4
	orrs r1, r0
	bics r1, r5
	movs r0, #0xf
	adds r2, r1, #0
	ands r2, r0
	lsls r2, r2, #4
	ands r0, r4
	orrs r0, r2
	strb r0, [r3]
	lsrs r1, r1, #4
	strb r1, [r3, #1]
	ldr r0, [r6]
	ldr r1, [r7]
	bl FUN_0804A004
_080497B8:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_080497C0
FUN_080497C0: @ 0x080497C0
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4]
	ldr r1, [r5]
	mov r2, sp
	bl FUN_08049FE8
	cmp r0, #1
	bne _080497EC
	ldr r1, [sp]
	ldrb r2, [r1]
	movs r0, #0xf
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	strb r0, [r1, #1]
	ldr r0, [r4]
	ldr r1, [r5]
	bl FUN_0804A004
_080497EC:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_080497F4
FUN_080497F4: @ 0x080497F4
	push {lr}
	sub sp, #4
	ldr r0, [r0]
	ldr r1, [r1]
	mov r2, sp
	bl FUN_08049FE8
	cmp r0, #1
	beq _0804980A
	movs r0, #0
	b _08049812
_0804980A:
	ldr r0, [sp]
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
_08049812:
	add sp, #4
	pop {r1}
	bx r1

	thumb_func_start FUN_08049818
FUN_08049818: @ 0x08049818
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	ldr r0, [r5]
	ldr r1, [r6]
	add r2, sp, #4
	bl FUN_08049FE8
	cmp r0, #1
	bne _0804984A
	ldr r3, [sp, #4]
	ldrb r2, [r3]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1c
	orrs r1, r4
	movs r0, #0xf
	ands r1, r0
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	b _0804986C
_0804984A:
	mov r2, sp
	movs r0, #0xf
	ands r4, r0
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	strh r0, [r2]
	ldr r0, [r5]
	ldr r1, [r6]
	bl FUN_08049FA4
_0804986C:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start FUN_08049874
FUN_08049874: @ 0x08049874
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	ldr r0, [r5]
	ldr r1, [r6]
	mov r2, sp
	bl FUN_08049FE8
	cmp r0, #1
	bne _080498A8
	ldr r3, [sp]
	ldrb r2, [r3]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1c
	bics r1, r4
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r0, [r5]
	ldr r1, [r6]
	bl FUN_0804A004
_080498A8:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start FUN_080498B0
FUN_080498B0: @ 0x080498B0
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4]
	ldr r1, [r5]
	mov r2, sp
	bl FUN_08049FE8
	cmp r0, #1
	bne _080498DA
	ldr r2, [sp]
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r4]
	ldr r1, [r5]
	bl FUN_0804A004
_080498DA:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080498E4
FUN_080498E4: @ 0x080498E4
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #8
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	bl FUN_08049288
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	str r0, [sp]
	str r1, [sp, #4]
	movs r1, #0xac
	lsls r1, r1, #1
	adds r1, r1, r4
	mov r8, r1
	ldr r0, [r1]
	mov sl, r0
	lsls r5, r5, #0x10
	str r5, [r4, #0x18]
	lsls r6, r6, #0x10
	str r6, [r4, #0x1c]
	mov r0, sb
	adds r1, r4, #0
	movs r2, #0
	bl FUN_08048EB8
	adds r5, r0, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r0, [r4, #0x18]
	str r1, [r4, #0x1c]
	movs r0, #1
	mov r1, r8
	str r0, [r1]
	mov r0, sb
	adds r1, r4, #0
	movs r2, #1
	bl FUN_08048EB8
	mov r0, sl
	mov r1, r8
	str r0, [r1]
	adds r0, r5, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_08049954
FUN_08049954: @ 0x08049954
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r2, #0
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, [r1]
	movs r6, #0
	adds r4, r0, #0
	adds r4, #0x9c
_08049968:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0804998E
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0804998E
	cmp r7, #1
	bne _08049984
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl FUN_08049714
	b _0804998E
_08049984:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl FUN_08049778
_0804998E:
	adds r4, #4
	adds r6, #1
	cmp r6, #0xb
	bls _08049968
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_0804999C
FUN_0804999C: @ 0x0804999C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r5, r2, #0
	adds r7, r3, #0
	mov r6, sp
	mov r2, sp
	bl FUN_0805374C
	cmp r0, #0
	beq _080499F4
	cmp r5, #4
	bhi _080499CE
	mov r0, sp
	ldrb r1, [r0]
	ldrb r0, [r4, #0x12]
	muls r0, r1, r0
	str r0, [sp, #4]
	ldrb r1, [r6, #1]
	ldrb r0, [r4, #0x12]
	muls r1, r0, r1
	add r0, sp, #4
	str r1, [r0, #4]
	adds r1, r0, #0
	b _080499E8
_080499CE:
	mov r0, sp
	ldrb r0, [r0]
	ldrb r1, [r4, #0x12]
	muls r0, r1, r0
	subs r0, #1
	adds r0, r0, r1
	str r0, [sp, #4]
	ldrb r0, [r6, #1]
	muls r0, r1, r0
	subs r0, #1
	adds r0, r0, r1
	add r1, sp, #4
	str r0, [r1, #4]
_080499E8:
	adds r0, r4, #0
	adds r2, r7, #0
	bl FUN_08053908
	cmp r0, #1
	beq _080499F8
_080499F4:
	movs r0, #0
	b _080499FA
_080499F8:
	movs r0, #1
_080499FA:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08049A04
FUN_08049A04: @ 0x08049A04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r0, #0
	adds r7, r1, #0
	adds r4, r2, #0
	ldr r1, [r7]
	movs r2, #0x1a
	ldrsh r0, [r1, r2]
	str r0, [sp, #4]
	movs r2, #0x1e
	ldrsh r0, [r1, r2]
	str r0, [sp, #8]
	add r5, sp, #0xc
	adds r0, r6, #0
	add r1, sp, #4
	adds r2, r5, #0
	bl FUN_0805374C
	ldr r1, [r7]
	ldr r2, [r4, #0x34]
	movs r4, #1
	str r4, [sp]
	adds r0, r6, #0
	adds r3, r5, #0
	bl FUN_08049524
	cmp r0, #0
	beq _08049A6A
	adds r0, r6, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl FUN_08053954
	ldr r0, [sp, #4]
	lsls r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	lsls r0, r0, #0x10
	add r1, sp, #0x10
	str r0, [r1, #4]
	ldr r0, [r7]
	adds r2, r7, #0
	adds r2, #0x10
	str r4, [sp]
	movs r3, #4
	bl FUN_08043BB8
	ldr r0, [r7]
	movs r1, #0xa
	bl FUN_08001F20
_08049A6A:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08049A74
FUN_08049A74: @ 0x08049A74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	lsls r4, r3, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _08049ABC @ => 0x0808DDE8
	mov r0, sp
	movs r2, #0x10
	bl memcpy
	lsls r4, r4, #1
	mov r1, sp
	adds r0, r1, r4
	ldrb r0, [r0]
	ldrb r1, [r5]
	adds r0, r0, r1
	strb r0, [r7]
	mov r0, sp
	adds r0, #1
	adds r0, r0, r4
	ldrb r0, [r0]
	ldrb r5, [r5, #1]
	adds r0, r0, r5
	strb r0, [r7, #1]
	ldrb r0, [r7]
	ldrh r1, [r6, #0x10]
	cmp r0, r1
	bhs _08049AB6
	ldrb r0, [r7, #1]
	cmp r0, r1
	blo _08049AC0
_08049AB6:
	movs r0, #0
	b _08049AC2
	.align 2, 0
_08049ABC: .4byte ROMREF_0808DDE8
_08049AC0:
	movs r0, #1
_08049AC2:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08049ACC
FUN_08049ACC: @ 0x08049ACC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r2, #0
	mov r8, r3
	ldr r0, [r6]
	ldr r1, [r7]
	mov r2, sp
	bl FUN_08049FE8
	cmp r0, #1
	bne _08049AF8
	ldr r0, [sp]
	ldrb r1, [r0]
	lsrs r1, r1, #4
	ldrb r0, [r0, #1]
	lsls r4, r0, #4
	orrs r4, r1
	b _08049AFA
_08049AF8:
	movs r4, #0
_08049AFA:
	ldr r0, [r6]
	ldr r1, [r7]
	add r2, sp, #4
	bl FUN_08049FE8
	cmp r0, #1
	bne _08049B12
	ldr r0, [sp, #4]
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r1, r0, #0x1c
	b _08049B14
_08049B12:
	movs r1, #0
_08049B14:
	cmp r5, #4
	beq _08049B66
	movs r0, #3
	ands r0, r1
	movs r2, #0
	cmp r0, #3
	bne _08049B24
	movs r2, #1
_08049B24:
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _08049B6A
	cmp r5, #6
	bhi _08049B78
	lsls r0, r5, #2
	ldr r1, _08049B3C @ =_08049B40
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08049B3C: .4byte _08049B40
_08049B40: @ jump table
	.4byte _08049B66 @ case 0
	.4byte _08049B66 @ case 1
	.4byte _08049B66 @ case 2
	.4byte _08049B66 @ case 3
	.4byte _08049B78 @ case 4
	.4byte _08049B5C @ case 5
	.4byte _08049B62 @ case 6
_08049B5C:
	cmp r2, #1
	beq _08049B66
	b _08049B78
_08049B62:
	cmp r2, #1
	bne _08049B78
_08049B66:
	movs r0, #1
	b _08049BE8
_08049B6A:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _08049B7C
	mov r0, r8
	cmp r0, #0
	bne _08049B7C
_08049B78:
	movs r0, #0
	b _08049BE8
_08049B7C:
	movs r3, #1
	cmp r5, #6
	bhi _08049BE4
	lsls r0, r5, #2
	ldr r1, _08049B8C @ =_08049B90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08049B8C: .4byte _08049B90
_08049B90: @ jump table
	.4byte _08049BE6 @ case 0
	.4byte _08049BAC @ case 1
	.4byte _08049BBA @ case 2
	.4byte _08049BB6 @ case 3
	.4byte _08049BE4 @ case 4
	.4byte _08049BCE @ case 5
	.4byte _08049BD2 @ case 6
_08049BAC:
	movs r0, #0x3d
_08049BAE:
	ands r4, r0
	cmp r4, #0
	bne _08049BE4
	b _08049BC8
_08049BB6:
	movs r0, #0x15
	b _08049BAE
_08049BBA:
	movs r0, #4
	ands r4, r0
	cmp r4, #0
	bne _08049BC8
	mov r0, r8
	cmp r0, #0
	beq _08049BE4
_08049BC8:
	cmp r2, #1
	bne _08049BE6
	b _08049BE4
_08049BCE:
	movs r0, #0x3d
	b _08049BD4
_08049BD2:
	movs r0, #0x40
_08049BD4:
	ands r4, r0
	cmp r4, #0
	bne _08049BE4
	cmp r2, #0
	bne _08049BE6
	mov r0, r8
	cmp r0, #0
	bne _08049BE6
_08049BE4:
	movs r3, #0
_08049BE6:
	adds r0, r3, #0
_08049BE8:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_08049BF4
FUN_08049BF4: @ 0x08049BF4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r2, [sp, #0x20]
	mov r8, r2
	ldr r3, [sp, #0x24]
	mov sb, r3
	ldrb r2, [r4]
	subs r6, r0, r2
	ldrb r0, [r4, #1]
	subs r7, r1, r0
	mov r2, sp
	adds r2, #1
	adds r0, r4, #0
	mov r1, sp
	bl FUN_0803DD78
	cmp r5, #3
	beq _08049C54
	cmp r5, #3
	bhi _08049C2C
	cmp r5, #1
	beq _08049C3C
	b _08049C54
_08049C2C:
	cmp r5, #5
	beq _08049C36
	cmp r5, #7
	beq _08049C48
	b _08049C54
_08049C36:
	rsbs r2, r7, #0
	rsbs r1, r6, #0
	b _08049C58
_08049C3C:
	adds r2, r7, #0
	mov r1, sp
	mvns r0, r6
	ldrb r1, [r1]
	adds r1, r0, r1
	b _08049C58
_08049C48:
	mov r0, sp
	ldrb r0, [r0]
	subs r0, r6, r0
	adds r2, r0, #1
	rsbs r1, r7, #0
	b _08049C58
_08049C54:
	adds r2, r6, #0
	adds r1, r7, #0
_08049C58:
	mov r3, r8
	ldrb r0, [r3]
	adds r0, r0, r2
	mov r2, sb
	strb r0, [r2]
	ldrb r0, [r3, #1]
	adds r0, r0, r1
	strb r0, [r2, #1]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08049C78
FUN_08049C78: @ 0x08049C78
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	bl FUN_0804A02C
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	ldr r0, [r6]
	adds r2, r0, r1
	movs r7, #0
	ldrb r1, [r2, #4]
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	bne _08049CA8
	lsrs r0, r5, #8
	ldrb r1, [r2, #5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	bne _08049CA8
	movs r7, #1
	b _08049CF8
_08049CA8:
	ldrb r3, [r2, #2]
	ldrb r1, [r2, #3]
	lsls r0, r1, #8
	orrs r0, r3
	cmp r0, #0
	beq _08049CF8
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
_08049CBA:
	adds r4, r2, #0
	lsls r0, r1, #8
	orrs r0, r3
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	ldr r0, [r6, #4]
	adds r2, r0, r1
	ldrb r0, [r2, #4]
	cmp r0, ip
	bne _08049CEC
	lsrs r0, r5, #8
	ldrb r1, [r2, #5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	bne _08049CEC
	ldrb r1, [r2, #2]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	orrs r0, r1
	strb r0, [r4, #2]
	lsrs r0, r0, #8
	strb r0, [r4, #3]
	movs r7, #1
_08049CEC:
	ldrb r3, [r2, #2]
	ldrb r1, [r2, #3]
	lsls r0, r1, #8
	orrs r0, r3
	cmp r0, #0
	bne _08049CBA
_08049CF8:
	cmp r7, #1
	bne _08049D06
	movs r0, #0
	strb r0, [r2]
	strb r0, [r2, #1]
	strb r0, [r2, #4]
	strb r0, [r2, #5]
_08049D06:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_08049D0C
FUN_08049D0C: @ 0x08049D0C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r4, r6, #0x18
	lsrs r4, r4, #0x18
	lsls r2, r4, #6
	subs r2, r2, r4
	lsls r2, r2, #2
	subs r2, r2, r4
	lsls r0, r6, #0x10
	mov ip, r0
	lsrs r1, r0, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	adds r2, r2, r0
	ldr r3, _08049D64 @ => 0x0808DDF8
	ldrb r1, [r7, #0xa]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r3, #4
	adds r0, r0, r3
	ldr r0, [r0]
	subs r0, #1
	ands r2, r0
	movs r5, #0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r1, [r7]
	adds r3, r1, r0
	ldrb r0, [r3, #4]
	cmp r0, r4
	bne _08049D68
	ldrb r1, [r3, #5]
	mov r2, ip
	lsrs r0, r2, #0x18
	cmp r1, r0
	bne _08049D68
	movs r5, #1
	b _08049DBA
	.align 2, 0
_08049D64: .4byte ROMREF_0808DDF8
_08049D68:
	ldrb r0, [r3, #4]
	cmp r0, #0
	bne _08049D74
	ldrb r0, [r3, #5]
	cmp r0, #0
	beq _08049DBA
_08049D74:
	cmp r5, #0
	bne _08049DBA
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	lsls r0, r1, #8
	orrs r0, r2
	cmp r0, #0
	beq _08049DBA
	lsls r0, r6, #0x18
	lsrs r4, r0, #0x18
_08049D88:
	lsls r0, r1, #8
	orrs r0, r2
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	ldr r0, [r7, #4]
	adds r3, r0, r1
	ldrb r0, [r3, #4]
	cmp r0, r4
	bne _08049DAA
	lsrs r0, r6, #8
	ldrb r1, [r3, #5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	bne _08049DAA
	movs r5, #1
_08049DAA:
	cmp r5, #0
	bne _08049DBA
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	lsls r0, r1, #8
	orrs r0, r2
	cmp r0, #0
	bne _08049D88
_08049DBA:
	cmp r5, #1
	beq _08049DC2
	movs r0, #0
	b _08049DC4
_08049DC2:
	adds r0, r3, #0
_08049DC4:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08049DCC
FUN_08049DCC: @ 0x08049DCC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	movs r7, #0
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	lsls r2, r0, #6
	subs r2, r2, r0
	lsls r2, r2, #2
	subs r2, r2, r0
	lsrs r1, r6, #8
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	adds r2, r2, r0
	ldr r3, _08049E68 @ => 0x0808DDF8
	ldrb r1, [r5, #0xa]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r3, #4
	adds r0, r0, r3
	ldr r0, [r0]
	subs r0, #1
	ands r2, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r1, [r5]
	adds r2, r1, r0
	ldrb r0, [r2, #4]
	cmp r0, #0
	bne _08049E1C
	ldrb r0, [r2, #5]
	cmp r0, #0
	beq _08049E5E
_08049E1C:
	ldrb r3, [r2, #2]
	ldrb r1, [r2, #3]
	lsls r0, r1, #8
	orrs r0, r3
	cmp r0, #0
	beq _08049E44
	ldr r4, [r5, #4]
_08049E2A:
	lsls r0, r1, #8
	orrs r0, r3
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r2, r4, r1
	ldrb r3, [r2, #2]
	ldrb r1, [r2, #3]
	lsls r0, r1, #8
	orrs r0, r3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08049E2A
_08049E44:
	adds r4, r2, #0
	adds r0, r5, #0
	mov r1, sp
	bl FUN_08049E88
	adds r2, r0, #0
	cmp r2, #0
	beq _08049E60
	mov r0, sp
	ldrh r0, [r0]
	strb r0, [r4, #2]
	lsrs r0, r0, #8
	strb r0, [r4, #3]
_08049E5E:
	movs r7, #1
_08049E60:
	cmp r7, #1
	beq _08049E6C
	movs r0, #0
	b _08049E7E
	.align 2, 0
_08049E68: .4byte ROMREF_0808DDF8
_08049E6C:
	movs r1, #0
	strb r1, [r2]
	strb r1, [r2, #1]
	strb r6, [r2, #4]
	lsrs r0, r6, #8
	strb r0, [r2, #5]
	strb r1, [r2, #2]
	strb r1, [r2, #3]
	adds r0, r2, #0
_08049E7E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08049E88
FUN_08049E88: @ 0x08049E88
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	mov r8, r1
	ldrh r3, [r4, #8]
	mov ip, r3
	movs r7, #0
	ldr r6, _08049E9C @ => 0x0808DDF8
	b _08049EA4
	.align 2, 0
_08049E9C: .4byte ROMREF_0808DDF8
_08049EA0:
	cmp r3, ip
	beq _08049EDC
_08049EA4:
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #1
	ldr r1, [r4, #4]
	adds r5, r1, r0
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne _08049EBA
	ldrb r0, [r5, #5]
	cmp r0, #0
	beq _08049F08
_08049EBA:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrb r2, [r4, #0xa]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r6, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r2, #0
	cmp r3, r0
	blo _08049ED8
	movs r3, #1
_08049ED8:
	cmp r7, #0
	beq _08049EA0
_08049EDC:
	adds r0, r3, #1
	strh r0, [r4, #8]
	ldrh r2, [r4, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r6, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r2, r0
	blo _08049EF8
	movs r0, #1
	strh r0, [r4, #8]
_08049EF8:
	cmp r7, #1
	bne _08049F0E
	mov r0, r8
	cmp r0, #0
	beq _08049F04
	strh r3, [r0]
_08049F04:
	adds r0, r5, #0
	b _08049F10
_08049F08:
	movs r7, #1
	ldrb r1, [r4, #0xa]
	b _08049EDC
_08049F0E:
	movs r0, #0
_08049F10:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08049F1C
FUN_08049F1C: @ 0x08049F1C
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r2, _08049F64 @ => 0x0808DDF8
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r0, r2, #4
	adds r0, r1, r0
	ldr r0, [r0]
	lsls r5, r0, #1
	adds r5, r5, r0
	lsls r5, r5, #1
	adds r2, #8
	adds r1, r1, r2
	ldr r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0xc
	adds r0, r5, r0
	bl FUN_0802C9DC
	strb r4, [r0, #0xa]
	movs r1, #1
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0xc
	str r1, [r0]
	adds r1, r1, r5
	str r1, [r0, #4]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08049F64: .4byte ROMREF_0808DDF8

	thumb_func_start FUN_08049F68
FUN_08049F68: @ 0x08049F68
	push {lr}
	bl FUN_0802CA80
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08049F74
FUN_08049F74: @ 0x08049F74
	push {lr}
	adds r2, r0, #0
	movs r1, #0
	ldr r3, _08049F90 @ => 0x0808DDF8
_08049F7C:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	cmp r2, r0
	bhi _08049F94
	adds r0, r1, #0
	b _08049FA0
	.align 2, 0
_08049F90: .4byte ROMREF_0808DDF8
_08049F94:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08049F7C
	movs r0, #4
_08049FA0:
	pop {r1}
	bx r1

	thumb_func_start FUN_08049FA4
FUN_08049FA4: @ 0x08049FA4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	bl FUN_08049D0C
	adds r2, r0, #0
	cmp r2, #0
	bne _08049FCE
	ldrh r0, [r6]
	cmp r0, #0
	beq _08049FC6
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_08049DCC
	adds r2, r0, #0
_08049FC6:
	cmp r2, #0
	bne _08049FCE
	movs r0, #0
	b _08049FE2
_08049FCE:
	ldrb r0, [r2]
	ldrb r1, [r2, #1]
	lsls r1, r1, #8
	orrs r1, r0
	ldrh r0, [r6]
	orrs r1, r0
	strb r1, [r2]
	lsrs r1, r1, #8
	strb r1, [r2, #1]
	movs r0, #1
_08049FE2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_08049FE8
FUN_08049FE8: @ 0x08049FE8
	push {r4, lr}
	adds r4, r2, #0
	bl FUN_08049D0C
	cmp r0, #0
	bne _08049FF8
	movs r0, #0
	b _08049FFC
_08049FF8:
	str r0, [r4]
	movs r0, #1
_08049FFC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0804A004
FUN_0804A004: @ 0x0804A004
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl FUN_08049D0C
	cmp r0, #0
	beq _0804A026
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r0, #0
	bne _0804A026
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_08049C78
_0804A026:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_0804A02C
FUN_0804A02C: @ 0x0804A02C
	push {r4, lr}
	adds r4, r0, #0
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	lsls r0, r2, #6
	subs r0, r0, r2
	lsls r0, r0, #2
	subs r0, r0, r2
	lsrs r1, r1, #8
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #3
	subs r2, r2, r1
	adds r0, r0, r2
	ldr r3, _0804A068 @ => 0x0808DDF8
	ldrb r2, [r4, #0xa]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r3, #4
	adds r1, r1, r3
	ldr r1, [r1]
	subs r1, #1
	ands r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804A068: .4byte ROMREF_0808DDF8

	thumb_func_start FUN_0804A06C
FUN_0804A06C: @ 0x0804A06C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	str r3, [sp, #0x18]
	bl FUN_0804A34C
	ldr r1, _0804A0B4 @ => 0x03006280
	str r4, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _0804A0B8 @ => 0x00000199
	adds r7, r1, r0
	movs r4, #0
	strb r4, [r7]
	ldr r2, _0804A0BC @ => 0x0000FFFF
	mov r8, r2
	ldrh r0, [r6]
	ldrh r2, [r5]
	cmp r0, r2
	bne _0804A0C0
	ldr r0, [r6]
	str r0, [r1, #8]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #1
	strb r0, [r1]
	movs r0, #2
	b _0804A2C6
	.align 2, 0
_0804A0B4: .4byte gUnk_03006280
_0804A0B8: .4byte 0x00000199
_0804A0BC: .4byte 0x0000FFFF
_0804A0C0:
	adds r0, r5, #0
	bl FUN_0804A650
	cmp r0, #0x63
	bls _0804A0CE
	movs r0, #3
	b _0804A0EC
_0804A0CE:
	ldr r0, [r6]
	str r0, [sp]
	mov r0, sp
	strb r4, [r0, #4]
	strb r4, [r0, #5]
	movs r1, #0
	bl FUN_0804A478
	mov r0, sp
	movs r1, #0
	bl FUN_0804A41C
	cmp r0, #0
	bne _0804A118
	movs r0, #2
_0804A0EC:
	strb r0, [r7]
_0804A0EE:
	movs r0, #0
	b _0804A2C6
_0804A0F2:
	ldr r2, _0804A0FC @ => 0x00000199
	adds r1, r3, r2
	movs r0, #1
	strb r0, [r1]
	b _0804A25E
	.align 2, 0
_0804A0FC: .4byte 0x00000199
_0804A100:
	ldr r0, _0804A110 @ => 0x03006280
	ldr r2, _0804A114 @ => 0x00000199
	adds r1, r0, r2
	movs r0, #2
	strb r0, [r1]
	movs r0, #0
	mov sb, r0
	b _0804A25E
	.align 2, 0
_0804A110: .4byte gUnk_03006280
_0804A114: .4byte 0x00000199
_0804A118:
	movs r1, #0
	mov sb, r1
	mov sl, r1
	b _0804A254
_0804A120:
	movs r2, #1
	add sl, r2
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp sl, r0
	bhi _0804A0EE
	mov r0, sp
	movs r1, #0
	bl FUN_0804A4E4
	mov r0, sp
	ldrh r0, [r0]
	ldr r3, _0804A168 @ => 0x03006280
	ldrh r2, [r3, #4]
	mov r1, r8
	ands r1, r0
	mov r0, r8
	ands r0, r2
	cmp r1, r0
	bne _0804A170
	mov r0, sp
	movs r1, #0
	bl FUN_0804A41C
	movs r1, #1
	mov sb, r1
	cmp r0, #0
	beq _0804A15A
	b _0804A25E
_0804A15A:
	movs r2, #0
	mov sb, r2
	movs r0, #2
	ldr r1, _0804A16C @ => 0x03006419
	strb r0, [r1]
	b _0804A25E
	.align 2, 0
_0804A168: .4byte gUnk_03006280
_0804A16C: .4byte gUnk_03006419
_0804A170:
	mov r0, sp
	ldrb r0, [r0, #9]
	ldr r2, [sp, #0x18]
	cmp r0, r2
	bls _0804A1A0
	movs r1, #0
	mov sb, r1
	cmp r0, #0x63
	bhi _0804A0F2
	movs r0, #2
	ldr r2, _0804A18C @ => 0x03006419
	strb r0, [r2]
	b _0804A25E
	.align 2, 0
_0804A18C: .4byte gUnk_03006419
_0804A190:
	movs r0, #2
	ldr r1, _0804A19C @ => 0x03006419
	strb r0, [r1]
	movs r2, #0
	mov sb, r2
	b _0804A246
	.align 2, 0
_0804A19C: .4byte gUnk_03006419
_0804A1A0:
	movs r7, #0
	add r4, sp, #0xc
	adds r5, r4, #0
	mov r6, sp
_0804A1A8:
	ldr r0, _0804A200 @ => 0x0808DE28
	lsls r1, r7, #2
	adds r1, r1, r0
	ldrb r0, [r1]
	ldrb r2, [r6]
	adds r0, r0, r2
	strb r0, [r5]
	ldrb r0, [r6, #1]
	ldrb r1, [r1, #1]
	adds r0, r0, r1
	strb r0, [r5, #1]
	ldrh r0, [r5]
	ldrh r2, [r6, #4]
	mov r1, r8
	ands r1, r0
	mov r0, r8
	ands r0, r2
	cmp r1, r0
	beq _0804A240
	adds r0, r4, #0
	bl FUN_0804A650
	ldrb r1, [r6, #9]
	adds r1, r1, r0
	strb r1, [r4, #9]
	ldrb r1, [r4, #9]
	adds r0, r4, #0
	bl FUN_0804A478
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0804A558
	cmp r0, #0
	beq _0804A204
	ldrb r0, [r0, #0x12]
	ldrb r1, [r5, #0xa]
	cmp r0, r1
	bls _0804A240
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0804A5D8
	b _0804A220
	.align 2, 0
_0804A200: .4byte ROMREF_0808DE28
_0804A204:
	adds r0, r5, #0
	movs r1, #1
	bl FUN_0804A558
	cmp r0, #0
	beq _0804A220
	ldrb r0, [r0, #0x12]
	ldrb r2, [r5, #0xa]
	cmp r0, r2
	bls _0804A240
	adds r0, r5, #0
	movs r1, #1
	bl FUN_0804A5D8
_0804A220:
	ldr r0, [sp]
	str r0, [r5, #4]
	ldrb r0, [r5, #9]
	cmp r0, #0x63
	bhi _0804A234
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0804A41C
	b _0804A23C
_0804A234:
	adds r0, r4, #0
	movs r1, #1
	bl FUN_0804A41C
_0804A23C:
	cmp r0, #0
	beq _0804A190
_0804A240:
	adds r7, #1
	cmp r7, #3
	bls _0804A1A8
_0804A246:
	mov r0, sp
	movs r1, #1
	bl FUN_0804A41C
	cmp r0, #0
	bne _0804A254
	b _0804A100
_0804A254:
	ldr r0, _0804A288 @ => 0x03006270
	ldr r0, [r0]
	cmp r0, #0
	beq _0804A25E
	b _0804A120
_0804A25E:
	mov r0, sp
	ldrb r0, [r0, #0xa]
	cmp r0, #0x63
	bls _0804A274
	ldr r0, _0804A28C @ => 0x03006280
	ldr r2, _0804A290 @ => 0x00000199
	adds r1, r0, r2
	movs r0, #1
	strb r0, [r1]
	movs r0, #0
	mov sb, r0
_0804A274:
	movs r1, #1
	mov r2, sb
	cmp r2, #1
	bne _0804A294
	ldr r0, [sp, #0x3c]
	cmp r0, #1
	bne _0804A2B2
	mov r0, sp
	b _0804A2A8
	.align 2, 0
_0804A288: .4byte gUnk_03006270
_0804A28C: .4byte gUnk_03006280
_0804A290: .4byte 0x00000199
_0804A294:
	ldr r2, [sp, #0x3c]
	cmp r2, #1
	bne _0804A2B2
	ldr r0, _0804A2D8 @ => 0x03006280
	ldr r2, _0804A2DC @ => 0x00000199
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #2
	bne _0804A2B2
	add r0, sp, #4
_0804A2A8:
	bl FUN_0804A594
	bl FUN_0804A694
	adds r1, r0, #0
_0804A2B2:
	cmp r1, #0
	bne _0804A2C4
	ldr r0, _0804A2D8 @ => 0x03006280
	ldr r2, _0804A2DC @ => 0x00000199
	adds r1, r0, r2
	movs r0, #1
	strb r0, [r1]
	movs r0, #0
	mov sb, r0
_0804A2C4:
	mov r0, sb
_0804A2C6:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804A2D8: .4byte gUnk_03006280
_0804A2DC: .4byte 0x00000199

	thumb_func_start FUN_0804A2E0
FUN_0804A2E0: @ 0x0804A2E0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0
	movs r7, #0
	ldr r5, _0804A338 @ => 0x03006420
	ldr r0, _0804A33C @ => 0x03006438
	mov r8, r0
_0804A2F0:
	movs r0, #0xfa
	lsls r0, r0, #4
	bl FUN_0802C9DC
	lsls r4, r6, #2
	mov r1, r8
	adds r1, #4
	mov r8, r1
	subs r1, #4
	stm r1!, {r0}
	movs r1, #0xc8
	movs r2, #0x14
	bl FUN_08028F70
	ldr r1, _0804A340 @ => 0x03006430
	adds r1, r4, r1
	str r0, [r1]
	str r7, [r5]
	str r7, [r5, #4]
	ldr r0, _0804A344 @ => 0x03006270
	adds r4, r4, r0
	str r7, [r4]
	adds r5, #8
	adds r6, #1
	cmp r6, #1
	bls _0804A2F0
	ldr r1, _0804A348 @ => 0x03006280
	movs r0, #0
	strb r0, [r1, #4]
	strb r0, [r1, #5]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A338: .4byte gUnk_03006420
_0804A33C: .4byte gUnk_03006438
_0804A340: .4byte gUnk_03006430
_0804A344: .4byte gUnk_03006270
_0804A348: .4byte gUnk_03006280

	thumb_func_start FUN_0804A34C
FUN_0804A34C: @ 0x0804A34C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0
	movs r7, #0
	ldr r5, _0804A3A4 @ => 0x03006420
	ldr r0, _0804A3A8 @ => 0x03006438
	mov r8, r0
_0804A35C:
	lsls r4, r6, #2
	mov r1, r8
	adds r1, #4
	mov r8, r1
	subs r1, #4
	ldm r1!, {r0}
	movs r1, #0xc8
	movs r2, #0x14
	bl FUN_08028F70
	ldr r1, _0804A3AC @ => 0x03006430
	adds r1, r4, r1
	str r0, [r1]
	str r7, [r5]
	str r7, [r5, #4]
	ldr r0, _0804A3B0 @ => 0x03006270
	adds r4, r4, r0
	str r7, [r4]
	adds r5, #8
	adds r6, #1
	cmp r6, #1
	bls _0804A35C
	ldr r0, _0804A3B4 @ => 0x03006280
	movs r1, #0
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	adds r0, #8
	movs r2, #0xc8
	lsls r2, r2, #1
	bl FUN_0802CB40
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A3A4: .4byte gUnk_03006420
_0804A3A8: .4byte gUnk_03006438
_0804A3AC: .4byte gUnk_03006430
_0804A3B0: .4byte gUnk_03006270
_0804A3B4: .4byte gUnk_03006280

	thumb_func_start FUN_0804A3B8
FUN_0804A3B8: @ 0x0804A3B8
	bx lr
	.align 2, 0

	thumb_func_start FUN_0804A3BC
FUN_0804A3BC: @ 0x0804A3BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r2, r0, #0
	ldr r1, _0804A404 @ => 0x03006280
	movs r3, #0xcc
	lsls r3, r3, #1
	adds r0, r1, r3
	ldrb r4, [r0]
	cmp r4, #0
	beq _0804A3FA
	adds r6, r1, #0
	lsls r0, r4, #2
	subs r5, r0, #4
	adds r7, r2, #0
_0804A3D8:
	subs r4, #1
	adds r0, r6, #0
	adds r0, #8
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, [r6]
	mov r1, sp
	add r2, sp, #4
	bl FUN_08053954
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	stm r7!, {r0, r1}
	subs r5, #4
	cmp r4, #0
	bne _0804A3D8
_0804A3FA:
	movs r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804A404: .4byte gUnk_03006280

	thumb_func_start FUN_0804A408
FUN_0804A408: @ 0x0804A408
	ldr r0, _0804A414 @ => 0x03006280
	ldr r1, _0804A418 @ => 0x00000199
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0804A414: .4byte gUnk_03006280
_0804A418: .4byte 0x00000199

	thumb_func_start FUN_0804A41C
FUN_0804A41C: @ 0x0804A41C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r4, r1, #0
	lsls r7, r4, #2
	ldr r0, _0804A46C @ => 0x03006430
	adds r0, r7, r0
	lsls r5, r4, #3
	ldr r6, _0804A470 @ => 0x03006420
	adds r1, r5, r6
	movs r2, #0x14
	bl FUN_08028FA8
	adds r2, r0, #0
	cmp r2, #0
	beq _0804A460
	adds r0, r6, #4
	adds r1, r5, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _0804A44A
	str r2, [r1]
_0804A44A:
	adds r1, r2, #0
	adds r1, #8
	mov r0, r8
	ldm r0!, {r3, r5, r6}
	stm r1!, {r3, r5, r6}
	strb r4, [r2, #0x13]
	ldr r1, _0804A474 @ => 0x03006270
	adds r1, r7, r1
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_0804A460:
	adds r0, r2, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804A46C: .4byte gUnk_03006430
_0804A470: .4byte gUnk_03006420
_0804A474: .4byte gUnk_03006270

	thumb_func_start FUN_0804A478
FUN_0804A478: @ 0x0804A478
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	strb r1, [r4, #9]
	ldr r2, _0804A4C4 @ => 0x03006280
	ldrb r0, [r2, #4]
	ldrb r1, [r4]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	asrs r3, r0, #0x18
	adds r6, r3, #0
	ldrb r0, [r2, #5]
	ldrb r1, [r4, #1]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r0, #0
	adds r2, r3, #0
	cmp r3, #0
	bge _0804A4A0
	rsbs r2, r3, #0
_0804A4A0:
	adds r1, r0, #0
	cmp r0, #0
	bge _0804A4A8
	rsbs r1, r0, #0
_0804A4A8:
	adds r0, r2, r1
	cmp r0, #0xfe
	bgt _0804A4C8
	adds r1, r6, #0
	cmp r1, #0
	bge _0804A4B6
	rsbs r1, r1, #0
_0804A4B6:
	adds r0, r5, #0
	cmp r0, #0
	bge _0804A4BE
	rsbs r0, r0, #0
_0804A4BE:
	adds r0, r1, r0
	b _0804A4CA
	.align 2, 0
_0804A4C4: .4byte gUnk_03006280
_0804A4C8:
	movs r0, #0xff
_0804A4CA:
	strb r0, [r4, #8]
	ldrb r1, [r4, #8]
	ldrb r0, [r4, #9]
	adds r1, r1, r0
	cmp r1, #0xfe
	bgt _0804A4DA
	strb r1, [r4, #0xa]
	b _0804A4DE
_0804A4DA:
	movs r0, #0xff
	strb r0, [r4, #0xa]
_0804A4DE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start FUN_0804A4E4
FUN_0804A4E4: @ 0x0804A4E4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _0804A544 @ => 0x03006420
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r2, [r1]
	ldr r1, [r2]
	adds r5, r0, #0
	cmp r1, #0
	beq _0804A50A
_0804A4F8:
	ldr r3, [r1]
	ldrb r0, [r1, #0x12]
	ldrb r6, [r2, #0x12]
	cmp r0, r6
	bhs _0804A504
	adds r2, r1, #0
_0804A504:
	adds r1, r3, #0
	cmp r1, #0
	bne _0804A4F8
_0804A50A:
	cmp r2, #0
	beq _0804A550
	adds r1, r4, #0
	adds r0, r2, #0
	adds r0, #8
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldrb r4, [r2, #0x13]
	lsls r1, r4, #3
	adds r0, r5, #4
	adds r3, r1, r0
	ldr r0, [r3]
	cmp r0, r2
	bne _0804A52A
	ldr r0, [r2, #4]
	str r0, [r3]
_0804A52A:
	lsls r4, r4, #2
	ldr r0, _0804A548 @ => 0x03006430
	adds r0, r4, r0
	adds r1, r1, r5
	bl FUN_08028FDC
	ldr r0, _0804A54C @ => 0x03006270
	adds r4, r4, r0
	ldr r0, [r4]
	subs r0, #1
	str r0, [r4]
	movs r0, #1
	b _0804A552
	.align 2, 0
_0804A544: .4byte gUnk_03006420
_0804A548: .4byte gUnk_03006430
_0804A54C: .4byte gUnk_03006270
_0804A550:
	movs r0, #0
_0804A552:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_0804A558
FUN_0804A558: @ 0x0804A558
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _0804A57C @ => 0x03006420
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r2, [r1]
	cmp r2, #0
	beq _0804A58A
	ldr r5, _0804A580 @ => 0x0000FFFF
	ldrh r4, [r3]
_0804A56C:
	ldr r3, [r2]
	ldrh r1, [r2, #8]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, r4
	bne _0804A584
	adds r0, r2, #0
	b _0804A58C
	.align 2, 0
_0804A57C: .4byte gUnk_03006420
_0804A580: .4byte 0x0000FFFF
_0804A584:
	adds r2, r3, #0
	cmp r2, #0
	bne _0804A56C
_0804A58A:
	movs r0, #0
_0804A58C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0804A594
FUN_0804A594: @ 0x0804A594
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	movs r7, #0
	ldr r6, _0804A5B8 @ => 0x03006420
_0804A59C:
	ldr r2, [r6]
	cmp r2, #0
	beq _0804A5C6
	ldr r5, _0804A5BC @ => 0x0000FFFF
	mov r0, ip
	ldrh r4, [r0]
_0804A5A8:
	ldr r3, [r2]
	ldrh r1, [r2, #8]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, r4
	bne _0804A5C0
	adds r0, r2, #0
	b _0804A5D0
	.align 2, 0
_0804A5B8: .4byte gUnk_03006420
_0804A5BC: .4byte 0x0000FFFF
_0804A5C0:
	adds r2, r3, #0
	cmp r2, #0
	bne _0804A5A8
_0804A5C6:
	adds r6, #8
	adds r7, #1
	cmp r7, #1
	bls _0804A59C
	movs r0, #0
_0804A5D0:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0804A5D8
FUN_0804A5D8: @ 0x0804A5D8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r0, _0804A640 @ => 0x03006420
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r3, [r1]
	cmp r3, #0
	beq _0804A634
	ldr r7, _0804A644 @ => 0x0000FFFF
_0804A5EE:
	ldr r6, [r3]
	ldrh r0, [r3, #8]
	mov r1, r8
	ldrh r2, [r1]
	adds r1, r7, #0
	ands r1, r0
	adds r0, r7, #0
	ands r0, r2
	cmp r1, r0
	bne _0804A62E
	ldrb r4, [r3, #0x13]
	ldr r5, _0804A640 @ => 0x03006420
	lsls r1, r4, #3
	adds r0, r5, #4
	adds r2, r1, r0
	ldr r0, [r2]
	cmp r0, r3
	bne _0804A616
	ldr r0, [r3, #4]
	str r0, [r2]
_0804A616:
	lsls r4, r4, #2
	ldr r0, _0804A648 @ => 0x03006430
	adds r0, r4, r0
	adds r1, r1, r5
	adds r2, r3, #0
	bl FUN_08028FDC
	ldr r0, _0804A64C @ => 0x03006270
	adds r4, r4, r0
	ldr r0, [r4]
	subs r0, #1
	str r0, [r4]
_0804A62E:
	adds r3, r6, #0
	cmp r3, #0
	bne _0804A5EE
_0804A634:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A640: .4byte gUnk_03006420
_0804A644: .4byte 0x0000FFFF
_0804A648: .4byte gUnk_03006430
_0804A64C: .4byte gUnk_03006270

	thumb_func_start FUN_0804A650
FUN_0804A650: @ 0x0804A650
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, _0804A67C @ => 0x03006280
	ldr r0, [r4]
	adds r1, r5, #0
	bl FUN_080496EC
	adds r6, r0, #0
	ldr r0, [r4]
	adds r1, r5, #0
	bl FUN_080497F4
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	bne _0804A678
	movs r0, #0xd
	ands r0, r6
	cmp r0, #0
	beq _0804A680
_0804A678:
	movs r0, #0x64
	b _0804A68E
	.align 2, 0
_0804A67C: .4byte gUnk_03006280
_0804A680:
	movs r0, #0x10
	ands r0, r6
	cmp r0, #0
	bne _0804A68C
	movs r0, #1
	b _0804A68E
_0804A68C:
	movs r0, #2
_0804A68E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_0804A694
FUN_0804A694: @ 0x0804A694
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0
	cmp r0, #0
	beq _0804A766
	adds r5, r0, #0
	movs r7, #0
	b _0804A72E
_0804A6A6:
	ldrb r0, [r4, #8]
	ldrb r1, [r5, #8]
	cmp r0, r1
	bne _0804A6E4
	adds r0, r4, #0
	adds r0, #0xc
	bl FUN_0804A594
	adds r6, r0, #0
	adds r7, #1
	cmp r6, #0
	beq _0804A720
	ldrb r0, [r6, #8]
	ldrb r1, [r4, #8]
	cmp r0, r1
	bne _0804A720
	movs r0, #0
	mov r8, r0
_0804A6CA:
	adds r4, r6, #0
	adds r0, r4, #0
	adds r0, #0xc
	bl FUN_0804A594
	adds r6, r0, #0
	cmp r6, #0
	beq _0804A720
	ldrb r0, [r6, #8]
	ldrb r1, [r4, #8]
	cmp r0, r1
	beq _0804A6CA
	b _0804A720
_0804A6E4:
	ldrb r0, [r4, #9]
	adds r7, #1
	ldrb r5, [r5, #9]
	cmp r0, r5
	bne _0804A720
	adds r0, r4, #0
	adds r0, #0xc
	bl FUN_0804A594
	adds r6, r0, #0
	cmp r6, #0
	beq _0804A720
	ldrb r0, [r6, #9]
	ldrb r1, [r4, #9]
	cmp r0, r1
	bne _0804A720
	movs r0, #0
	mov r8, r0
_0804A708:
	adds r4, r6, #0
	adds r0, r4, #0
	adds r0, #0xc
	bl FUN_0804A594
	adds r6, r0, #0
	cmp r6, #0
	beq _0804A720
	ldrb r0, [r6, #9]
	ldrb r1, [r4, #9]
	cmp r0, r1
	beq _0804A708
_0804A720:
	adds r5, r4, #0
	mov r0, r8
	cmp r0, #1
	bne _0804A72E
	cmp r6, #0
	beq _0804A72E
	adds r5, r6, #0
_0804A72E:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _0804A758
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _0804A758
	ldr r0, _0804A76C @ => 0x03006280
	lsls r1, r7, #2
	adds r0, #8
	adds r1, r1, r0
	ldr r0, [r5, #8]
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xc
	bl FUN_0804A594
	adds r4, r0, #0
	movs r1, #1
	mov r8, r1
	cmp r4, #0
	bne _0804A6A6
_0804A758:
	ldr r0, _0804A76C @ => 0x03006280
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r0, r0, r1
	strb r7, [r0]
	cmp r7, #0
	bne _0804A770
_0804A766:
	movs r0, #0
	b _0804A772
	.align 2, 0
_0804A76C: .4byte gUnk_03006280
_0804A770:
	movs r0, #1
_0804A772:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_0804A77C
FUN_0804A77C: @ 0x0804A77C
	push {r4, r5, lr}
	adds r1, r0, #0
	ldr r5, _0804A7F8 @ => 0x03003DF0
	adds r0, r5, #0
	bl FUN_08013E40
	adds r4, r0, #0
	movs r0, #0xe
	ands r0, r4
	cmp r0, #0
	beq _0804A7F2
	ldr r2, _0804A7FC @ => 0x03004230
	ldr r0, _0804A800 @ => 0x030042B0
	ldrh r1, [r0, #6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r1, [r0]
	movs r2, #3
	orrs r1, r2
	str r1, [r0]
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _0804A7B4
	bl FUN_08021024
_0804A7B4:
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _0804A7D2
	bl FUN_0803ABA8
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r5, r1
	bl FUN_0804C284
	adds r0, r5, #0
	adds r0, #0x38
	bl FUN_080389D4
_0804A7D2:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _0804A7F2
	adds r0, r5, #0
	adds r0, #0x38
	bl FUN_0803884C
	movs r0, #0xdb
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, [r1]
	cmp r0, #0
	ble _0804A7F2
	subs r0, #1
	str r0, [r1]
_0804A7F2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A7F8: .4byte gUnk_03003DF0
_0804A7FC: .4byte gUnk_03004230
_0804A800: .4byte gUnk_030042B0

	thumb_func_start FUN_0804A804
FUN_0804A804: @ 0x0804A804
	ldr r1, _0804A80C @ => 0x03002730
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_0804A80C: .4byte gUnk_03002730

	thumb_func_start FUN_0804A810
FUN_0804A810: @ 0x0804A810
	push {r4, lr}
	ldr r1, _0804A85C @ => 0x03002730
	movs r0, #0
	str r0, [r1]
	ldr r2, _0804A860 @ => 0x03004200
	ldr r0, _0804A864 @ => 0x030042B0
	ldrh r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r4, [r0]
	ldr r0, _0804A868 @ => 0x0300272C
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r1, _0804A86C @ => 0x0808DEB8
	adds r0, r0, r1
	bl FUN_0804A77C
	movs r0, #0
	bl FUN_0804A870
	bl FUN_08043B0C
	bl FUN_08040A7C
	adds r0, r4, #0
	bl FUN_0804A87C
	adds r0, r4, #0
	bl FUN_0804AB48
	adds r0, r4, #0
	bl FUN_0804ABB4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804A85C: .4byte gUnk_03002730
_0804A860: .4byte gUnk_03004200
_0804A864: .4byte gUnk_030042B0
_0804A868: .4byte gUnk_0300272C
_0804A86C: .4byte ROMREF_0808DEB8

	thumb_func_start FUN_0804A870
FUN_0804A870: @ 0x0804A870
	ldr r1, _0804A878 @ => 0x0300272C
	strb r0, [r1]
	bx lr
	.align 2, 0
_0804A878: .4byte gUnk_0300272C

	thumb_func_start FUN_0804A87C
FUN_0804A87C: @ 0x0804A87C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	mov sl, r0
	movs r0, #0
	mov r8, r0
	movs r0, #0x8e
	lsls r0, r0, #1
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0xd
	beq _0804A8CC
	ldr r0, _0804A8AC @ => 0x03002730
	mov r1, r8
	str r1, [r0]
	ldr r0, _0804A8B0 @ => 0x03005BCC
	ldr r0, [r0]
	bl FUN_0803E54C
	b _0804AB2E
	.align 2, 0
_0804A8AC: .4byte gUnk_03002730
_0804A8B0: .4byte gUnk_03005BCC
_0804A8B4:
	movs r2, #1
	str r2, [sp, #0x38]
	b _0804AA38
_0804A8BA:
	movs r3, #0
	str r3, [sp, #0x38]
	b _0804AA38
_0804A8C0:
	movs r7, #1
	str r7, [sp, #0x38]
	b _0804AA38
_0804A8C6:
	movs r0, #1
	str r0, [sp, #0x38]
	b _0804AA38
_0804A8CC:
	mov r1, sl
	movs r2, #0x1a
	ldrsh r0, [r1, r2]
	str r0, [sp, #4]
	movs r3, #0x1e
	ldrsh r0, [r1, r3]
	str r0, [sp, #8]
	ldr r7, _0804AA84 @ => 0x03004398
	ldr r0, [r7]
	add r4, sp, #0xc
	add r1, sp, #4
	adds r2, r4, #0
	bl FUN_0805374C
	cmp r0, #0
	bne _0804A8EE
	b _0804AB2E
_0804A8EE:
	movs r0, #0
	str r0, [sp, #0x38]
	ldr r0, [r7]
	add r1, sp, #0xc
	bl FUN_080496EC
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	bne _0804A904
	b _0804AA38
_0804A904:
	ldr r0, _0804AA88 @ => 0x03005B90
	ldr r0, [r0]
	mov r8, r0
	cmp r0, #0
	bne _0804A910
	b _0804AA38
_0804A910:
	mov r1, r8
	ldr r1, [r1]
	str r1, [sp, #0x34]
	mov r0, r8
	add r1, sp, #0xc
	bl FUN_0803D7A0
	cmp r0, #1
	beq _0804A924
	b _0804AA2E
_0804A924:
	mov r2, r8
	ldrh r1, [r2, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r3, _0804AA8C @ => 0x08073A6C
	adds r0, r0, r3
	ldr r2, [r0]
	mov r0, r8
	mov r1, sl
	bl _call_via_r2
	cmp r0, #0
	beq _0804AA2E
	mov r0, r8
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804AA2E
	mov r7, r8
	ldr r0, [r7, #0x34]
	ldr r0, [r0, #0xc]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0804AA2E
	ldrh r0, [r7, #8]
	cmp r0, #0x85
	beq _0804A8B4
	mov r1, sl
	ldrb r0, [r1, #0x12]
	lsls r0, r0, #3
	ldr r2, _0804AA90 @ => 0x0808DE38
	adds r0, r0, r2
	ldr r1, [r0]
	mov r3, sp
	ldrb r0, [r3, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0804AA94 @ => 0xFFFFFF00
	ldr r2, [sp, #0x10]
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #0x10]
	mov r7, sl
	ldrb r0, [r7, #0x12]
	lsls r0, r0, #3
	ldr r1, _0804AA98 @ => 0x0808DE3C
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r3, #0xd]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	ldr r1, _0804AA9C @ => 0xFFFF00FF
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #0x10]
	ldr r7, _0804AA84 @ => 0x03004398
	ldr r0, [r7]
	add r4, sp, #0x14
	add r1, sp, #0x10
	adds r2, r4, #0
	bl FUN_08053954
	mov sb, r4
	cmp r0, #0
	beq _0804A8BA
	ldr r0, [r7]
	mov r1, sb
	mov r2, sb
	bl FUN_08053840
	mov r4, r8
	adds r4, #0xd4
	ldr r0, [r7]
	ldrb r1, [r0, #0x12]
	ldr r0, [r4]
	subs r5, r0, r1
	mov r3, r8
	adds r3, #0xd8
	ldr r6, [r3]
	mov r2, r8
	adds r2, #0xcc
	ldr r0, [r2]
	adds r1, r0, r1
	str r1, [sp, #0x3c]
	mov r0, r8
	adds r0, #0xd0
	ldr r7, [r0]
	str r7, [sp, #0x40]
	ldr r1, [sp, #0x14]
	mov ip, r0
	cmp r1, r5
	blt _0804A9FA
	mov r7, sb
	ldr r0, [r7, #4]
	cmp r0, r6
	bgt _0804A9FA
	ldr r7, [sp, #0x3c]
	cmp r1, r7
	bgt _0804A9FA
	ldr r1, [sp, #0x40]
	cmp r0, r1
	blt _0804A9FA
	b _0804A8C0
_0804A9FA:
	ldr r5, [r4]
	ldr r0, _0804AA84 @ => 0x03004398
	ldr r0, [r0]
	ldrb r1, [r0, #0x12]
	ldr r0, [r3]
	adds r6, r0, r1
	ldr r2, [r2]
	str r2, [sp, #0x3c]
	mov r2, ip
	ldr r0, [r2]
	subs r1, r0, r1
	str r1, [sp, #0x40]
	ldr r0, [sp, #0x14]
	cmp r0, r5
	blt _0804AA2E
	mov r3, sb
	ldr r1, [r3, #4]
	cmp r1, r6
	bgt _0804AA2E
	ldr r7, [sp, #0x3c]
	cmp r0, r7
	bgt _0804AA2E
	ldr r0, [sp, #0x40]
	cmp r1, r0
	blt _0804AA2E
	b _0804A8C6
_0804AA2E:
	ldr r1, [sp, #0x34]
	mov r8, r1
	cmp r1, #0
	beq _0804AA38
	b _0804A910
_0804AA38:
	ldr r2, [sp, #0x38]
	cmp r2, #1
	bne _0804AB20
	mov r3, r8
	cmp r3, #0
	beq _0804AB20
	ldr r0, _0804AAA0 @ => 0x03002730
	ldr r3, [r3, #0x34]
	str r3, [r0]
	movs r4, #0
	ldr r2, _0804AAA4 @ => 0x080770C8
	mov r7, r8
	ldrh r1, [r7, #8]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _0804AA6C
	add r2, sp, #0x1c
	adds r0, r3, #0
	movs r1, #5
	bl FUN_08001A84
	adds r4, r0, #0
_0804AA6C:
	cmp r4, #1
	bne _0804AAA8
	ldr r0, [sp, #0x1c]
	asrs r0, r0, #0x10
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	asrs r0, r0, #0x10
	add r1, sp, #0x24
	str r0, [r1, #4]
	adds r4, r1, #0
	b _0804AAF8
	.align 2, 0
_0804AA84: .4byte gUnk_03004398
_0804AA88: .4byte gUnk_03005B90
_0804AA8C: .4byte ROMREF_08073A6C
_0804AA90: .4byte ROMREF_0808DE38
_0804AA94: .4byte 0xFFFFFF00
_0804AA98: .4byte ROMREF_0808DE3C
_0804AA9C: .4byte 0xFFFF00FF
_0804AAA0: .4byte gUnk_03002730
_0804AAA4: .4byte ROMREF_080770C8
_0804AAA8:
	mov r0, r8
	adds r0, #0xd4
	mov r1, r8
	adds r1, #0xcc
	ldr r0, [r0]
	ldr r1, [r1]
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [sp, #0x2c]
	mov r0, r8
	adds r0, #0xd8
	mov r1, r8
	adds r1, #0xd0
	ldr r0, [r0]
	ldr r1, [r1]
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	add r1, sp, #0x2c
	str r0, [r1, #4]
	ldr r0, _0804AB14 @ => 0x03004398
	ldr r0, [r0]
	add r4, sp, #0x24
	adds r2, r4, #0
	bl FUN_08053908
	ldr r2, _0804AB18 @ => 0x0807281C
	mov r0, r8
	ldrh r1, [r0, #8]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #0x11]
	ldr r0, [r4, #4]
	subs r0, r0, r1
	str r0, [r4, #4]
_0804AAF8:
	ldr r0, _0804AB1C @ => 0x03005BCC
	ldr r0, [r0]
	ldr r1, [sp, #0x24]
	ldr r2, [r4, #4]
	mov r3, sl
	adds r3, #0xa9
	ldrb r3, [r3]
	lsls r3, r3, #0x1c
	lsrs r3, r3, #0x1e
	movs r4, #0
	str r4, [sp]
	bl FUN_0803E4F4
	b _0804AB2E
	.align 2, 0
_0804AB14: .4byte gUnk_03004398
_0804AB18: .4byte ItemInfoData
_0804AB1C: .4byte gUnk_03005BCC
_0804AB20:
	ldr r1, _0804AB40 @ => 0x03002730
	movs r0, #0
	str r0, [r1]
	ldr r0, _0804AB44 @ => 0x03005BCC
	ldr r0, [r0]
	bl FUN_0803E54C
_0804AB2E:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AB40: .4byte gUnk_03002730
_0804AB44: .4byte gUnk_03005BCC

	thumb_func_start FUN_0804AB48
FUN_0804AB48: @ 0x0804AB48
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0804ABA4 @ => 0x03002730
	ldr r0, [r5]
	cmp r0, #0
	beq _0804AB9C
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _0804AB9C
	bl FUN_08021738
	cmp r0, #0
	bne _0804AB9C
	ldr r0, _0804ABA8 @ => 0x03003DF0
	ldr r1, _0804ABAC @ => 0x00000404
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _0804AB9C
	ldr r1, _0804ABB0 @ => 0x030042B0
	ldrb r0, [r4, #0x13]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804AB9C
	ldr r0, [r5]
	adds r1, r4, #0
	bl FUN_0803C240
	cmp r0, #1
	bne _0804AB9C
	bl FUN_08024900
	adds r0, r4, #0
	bl FUN_08039844
_0804AB9C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804ABA4: .4byte gUnk_03002730
_0804ABA8: .4byte gUnk_03003DF0
_0804ABAC: .4byte 0x00000404
_0804ABB0: .4byte gUnk_030042B0

	thumb_func_start FUN_0804ABB4
FUN_0804ABB4: @ 0x0804ABB4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0804ABEC @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804ABE6
	movs r4, #0
_0804ABC6:
	lsls r1, r4, #2
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r0, r5, r2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0804ABDC
	adds r1, r5, #0
	bl FUN_0803D784
_0804ABDC:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _0804ABC6
_0804ABE6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804ABEC: .4byte gUnk_030042B0

	thumb_func_start FUN_0804ABF0
FUN_0804ABF0: @ 0x0804ABF0
	push {r4, r5, r6, lr}
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #4
	bhi _0804AC5E
	adds r0, #1
	strb r0, [r1]
	cmp r2, #1
	bne _0804AC5E
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r4, _0804AC64 @ => 0x03005C60
	movs r5, #0
	ldr r0, _0804AC68 @ => 0x0000086F
	strh r0, [r4]
	bl FUN_08050820
	bl FUN_0801FF60
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldrh r0, [r4]
	bl FUN_08050820
	bl FUN_0801FFB8
	lsls r3, r0, #0x18
	ldr r2, _0804AC6C @ => 0x03005C90
	strb r5, [r2, #4]
	adds r1, r6, #7
	asrs r1, r1, #3
	movs r0, #0x1d
	subs r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	strb r0, [r2, #1]
	lsrs r1, r3, #0x1c
	movs r0, #7
	subs r0, r0, r1
	strb r0, [r2, #2]
	movs r0, #2
	bl FUN_0802CEC4
	movs r0, #0x15
	bl FUN_0804E120
	ldr r0, _0804AC70 @ => 0x03003DF0
	ldr r1, _0804AC74 @ => 0x000003F7
	adds r0, r0, r1
	movs r1, #0x23
	strb r1, [r0]
_0804AC5E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804AC64: .4byte gChoiceIDs
_0804AC68: .4byte 0x0000086F
_0804AC6C: .4byte gUnk_03005C90
_0804AC70: .4byte gUnk_03003DF0
_0804AC74: .4byte 0x000003F7

	thumb_func_start FUN_0804AC78
FUN_0804AC78: @ 0x0804AC78
	push {lr}
	movs r1, #0
	movs r2, #4
	bl FUN_0802CB40
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0804AC88
FUN_0804AC88: @ 0x0804AC88
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #6
	bl FUN_08044558
	adds r4, #6
	adds r0, r4, #0
	movs r1, #6
	bl FUN_08044558
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0804ACA4
FUN_0804ACA4: @ 0x0804ACA4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #6
	bl FUN_08044644
	adds r4, #6
	adds r0, r4, #0
	movs r1, #6
	bl FUN_08044644
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0804ACC0
FUN_0804ACC0: @ 0x0804ACC0
	push {lr}
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804ACCE
	subs r0, #1
	strb r0, [r1]
_0804ACCE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0804ACD4
FUN_0804ACD4: @ 0x0804ACD4
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start FUN_0804ACDC
FUN_0804ACDC: @ 0x0804ACDC
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08009B04
	adds r5, r0, #0
	ldr r0, [r5]
	bl FUN_080012D8
	adds r4, r0, #0
	cmp r4, #0
	bne _0804ACFC
	movs r0, #0
	b _0804AD6C
_0804ACFC:
	ldrb r0, [r5, #0xa]
	strh r0, [r4, #0xa]
	ldrb r1, [r5, #0xb]
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, [r4, #0xc]
	ldr r1, _0804AD54 @ => 0x80000008
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, _0804AD58 @ => FUN_0804AD74
	str r0, [r4, #0x50]
	movs r0, #4
	ldrsh r1, [r5, r0]
	movs r0, #6
	ldrsh r2, [r5, r0]
	adds r0, r4, #0
	bl FUN_08001734
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001FB0
	movs r2, #0
	ldrh r0, [r5, #8]
	cmp r0, #0
	beq _0804AD3E
	ldrb r0, [r5, #8]
	ldrb r1, [r5, #9]
	bl FUN_08009B4C
	adds r2, r0, #0
_0804AD3E:
	cmp r2, #0
	beq _0804AD5C
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #1
	str r1, [r0]
	movs r1, #0x98
	lsls r1, r1, #1
	b _0804AD66
	.align 2, 0
_0804AD54: .4byte 0x80000008
_0804AD58: .4byte FUN_0804AD74
_0804AD5C:
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r4, r1
	str r2, [r0]
	subs r1, #4
_0804AD66:
	adds r0, r4, r1
	str r2, [r0]
	adds r0, r4, #0
_0804AD6C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0804AD74
FUN_0804AD74: @ 0x0804AD74
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _0804AE04
	cmp r0, #1
	bgt _0804AD8E
	cmp r0, #0
	beq _0804AD98
	b _0804AE0A
_0804AD8E:
	cmp r0, #9
	beq _0804ADD4
	cmp r0, #0x40
	beq _0804ADC0
	b _0804AE0A
_0804AD98:
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _0804AE0A
	subs r1, #4
	adds r0, r4, r1
	ldr r2, [r0]
	ldr r0, [r2, #0xc]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0804ADF4
	ldr r1, [r2, #0x18]
	ldr r2, [r2, #0x1c]
	adds r0, r4, #0
	bl FUN_08001728
	b _0804AE0A
_0804ADC0:
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #5
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #9
	bl FUN_08001FB0
	b _0804AE0A
_0804ADD4:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _0804AE00 @ => 0xFFFF0000
	cmp r1, r0
	bne _0804AE0A
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	bl FUN_080099D8
_0804ADF4:
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08001FB0
	b _0804AE0A
	.align 2, 0
_0804AE00: .4byte 0xFFFF0000
_0804AE04:
	adds r0, r4, #0
	bl FUN_080040DC
_0804AE0A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_0804AE10
FUN_0804AE10: @ 0x0804AE10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x5c
	adds r7, r0, #0
	ldr r1, _0804AE34 @ => 0x0000011D
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #4
	beq _0804AE5C
	cmp r0, #4
	bgt _0804AE38
	cmp r0, #0
	beq _0804AE44
	b _0804AFBE
	.align 2, 0
_0804AE34: .4byte 0x0000011D
_0804AE38:
	cmp r0, #0xb
	bne _0804AE3E
	b _0804AF9C
_0804AE3E:
	cmp r0, #0x17
	beq _0804AE72
	b _0804AFBE
_0804AE44:
	adds r0, r7, #0
	bl FUN_08001848
	adds r0, r7, #0
	movs r1, #0x95
	bl FUN_08001F20
	adds r0, r7, #0
	movs r1, #4
	bl FUN_08001F84
	b _0804AFBE
_0804AE5C:
	movs r0, #0xac
	bl FUN_0804DE0C
	adds r0, r7, #0
	bl FUN_0804AFD4
	adds r0, r7, #0
	movs r1, #0x17
	bl FUN_08001F84
	b _0804AFBE
_0804AE72:
	ldr r0, [r7, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0804AE80
	b _0804AFBE
_0804AE80:
	movs r4, #0
_0804AE82:
	ldr r0, _0804AF80 @ => 0x0808DEC8
	lsls r1, r4, #2
	adds r1, r1, r0
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	movs r2, #0x14
	str r2, [sp]
	movs r2, #0
	add r3, sp, #4
	bl FUN_08001E10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	movs r2, #0
	mov r8, r2
	adds r4, #1
	mov sl, r4
	cmp r8, sb
	bhs _0804AF5A
	add r4, sp, #4
_0804AEAC:
	ldr r0, [r7, #0x18]
	ldr r1, [r7, #0x1c]
	ldr r2, [r4]
	ldr r3, [r2, #0x1c]
	ldr r2, [r2, #0x18]
	bl FUN_0802C538
	ldr r1, _0804AF84 @ => 0x004FFFFF
	movs r2, #0
	cmp r0, r1
	bgt _0804AEC4
	movs r2, #1
_0804AEC4:
	cmp r2, #1
	bne _0804AF50
	ldr r0, [r4]
	ldr r1, [r0, #0x18]
	ldr r0, [r7, #0x18]
	subs r0, r1, r0
	cmp r0, #0
	bge _0804AED6
	adds r0, #3
_0804AED6:
	asrs r0, r0, #2
	str r0, [sp, #0x54]
	ldr r0, [r4]
	ldr r1, [r0, #0x1c]
	ldr r0, [r7, #0x1c]
	subs r0, r1, r0
	cmp r0, #0
	bge _0804AEE8
	adds r0, #3
_0804AEE8:
	asrs r0, r0, #2
	add r2, sp, #0x54
	str r0, [r2, #4]
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	bl FUN_0802C02C
	ldrb r0, [r7, #0x12]
	lsls r0, r0, #3
	ldr r2, _0804AF88 @ => 0x08059CA8
	adds r1, r0, r2
	ldr r5, [r1]
	ldr r1, _0804AF8C @ => 0x08059CAC
	adds r0, r0, r1
	ldr r6, [r0]
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r3, r6, #0
	adds r2, r5, #0
	bl FUN_0802C6B0
	ldr r1, _0804AF90 @ => 0x00007FFF
	movs r2, #0
	cmp r0, r1
	ble _0804AF1C
	movs r2, #1
_0804AF1C:
	cmp r2, #1
	bne _0804AF50
	ldr r2, [r4]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0x40
	beq _0804AF50
	cmp r0, #1
	beq _0804AF50
	cmp r0, #0xa
	beq _0804AF50
	ldr r1, [r2, #8]
	ldr r0, _0804AF94 @ => 0x00020007
	cmp r1, r0
	bne _0804AF48
	ldr r1, _0804AF98 @ => 0x0000011D
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #4
	beq _0804AF50
_0804AF48:
	adds r0, r2, #0
	movs r1, #0x40
	bl FUN_08001FB0
_0804AF50:
	adds r4, #4
	movs r2, #1
	add r8, r2
	cmp r8, sb
	blo _0804AEAC
_0804AF5A:
	mov r1, sl
	lsls r0, r1, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	bls _0804AE82
	adds r0, r7, #0
	movs r1, #4
	bl FUN_08001F20
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #8
	strh r0, [r1]
	adds r0, r7, #0
	movs r1, #0xb
	bl FUN_08001F84
	b _0804AFBE
	.align 2, 0
_0804AF80: .4byte ROMREF_0808DEC8
_0804AF84: .4byte 0x004FFFFF
_0804AF88: .4byte ROMREF_08059CA8
_0804AF8C: .4byte ROMREF_08059CA8 + 4
_0804AF90: .4byte 0x00007FFF
_0804AF94: .4byte 0x00020007
_0804AF98: .4byte 0x0000011D
_0804AF9C:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _0804AFD0 @ => 0xFFFF0000
	cmp r1, r0
	bne _0804AFBE
	movs r2, #0x91
	lsls r2, r2, #1
	adds r0, r7, r2
	ldrb r1, [r0]
	adds r0, r7, #0
	bl FUN_08001FB0
_0804AFBE:
	add sp, #0x5c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AFD0: .4byte 0xFFFF0000

	thumb_func_start FUN_0804AFD4
FUN_0804AFD4: @ 0x0804AFD4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0x34
	bl FUN_080012D8
	adds r5, r0, #0
	cmp r5, #0
	bne _0804AFE8
	movs r0, #0
	b _0804B096
_0804AFE8:
	str r6, [r5, #0x58]
	ldrb r0, [r6, #0x12]
	movs r4, #0
	strb r0, [r5, #0x12]
	str r4, [r5, #0x64]
	adds r0, r5, #0
	bl FUN_0804B0A4
	ldr r0, _0804B030 @ => 0x00040011
	str r0, [r5, #0xc]
	strh r4, [r5, #0xa]
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r0, r5, r1
	strh r4, [r0]
	adds r0, r5, #0
	movs r1, #2
	bl FUN_08001FB0
	ldr r1, _0804B034 @ => 0x0805A270
	ldrb r0, [r6, #0x12]
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r1, r1, #4
	ldr r0, _0804B038 @ => 0x0808DEE0
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r0, _0804B03C @ => 0x0000026E
	bl FUN_080213F8
	cmp r0, #1
	bne _0804B044
	ldr r1, _0804B040 @ => 0x09FC1434
	b _0804B052
	.align 2, 0
_0804B030: .4byte 0x00040011
_0804B034: .4byte ROMREF_0805A270
_0804B038: .4byte ROMREF_0808DEE0
_0804B03C: .4byte 0x0000026E
_0804B040: .4byte ROMREF_09FC1434
_0804B044:
	movs r0, #0x80
	lsls r0, r0, #1
	bl FUN_080213F8
	cmp r0, #1
	bne _0804B068
	ldr r1, _0804B064 @ => 0x09FC1438
_0804B052:
	adds r0, r5, #0
	bl FUN_08048E24
	adds r1, r0, #0
	adds r0, r5, #0
	bl FUN_0803EF14
	b _0804B078
	.align 2, 0
_0804B064: .4byte ROMREF_09FC1438
_0804B068:
	ldr r1, _0804B09C @ => 0x09FC1430
	adds r0, r5, #0
	bl FUN_08048E24
	adds r1, r0, #0
	adds r0, r5, #0
	bl FUN_0803EF14
_0804B078:
	ldr r0, _0804B0A0 @ => FUN_0804B0F8
	str r0, [r5, #0x50]
	adds r0, r6, #0
	adds r0, #0xa9
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	adds r0, r5, #0
	bl FUN_080017B8
	adds r0, r5, #0
	movs r1, #4
	bl FUN_080017D4
	adds r0, r5, #0
_0804B096:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0804B09C: .4byte ROMREF_09FC1430
_0804B0A0: .4byte FUN_0804B0F8

	thumb_func_start FUN_0804B0A4
FUN_0804B0A4: @ 0x0804B0A4
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0x58]
	movs r1, #3
	movs r2, #0
	mov r3, sp
	bl FUN_08001AB0
	cmp r0, #1
	bne _0804B0F0
	ldr r1, [sp]
	ldr r2, [sp, #4]
	adds r0, r4, #0
	bl FUN_08001728
	ldr r1, [r4, #0x58]
	ldrb r0, [r1, #0x12]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _0804B0E0
	ldr r0, [r1, #0x70]
	adds r0, #1
	str r0, [r4, #0x70]
	str r0, [r4, #0x68]
	ldr r0, [r1, #0x74]
	subs r0, #1
	b _0804B0EC
_0804B0E0:
	ldr r0, [r1, #0x70]
	subs r0, #1
	str r0, [r4, #0x70]
	str r0, [r4, #0x68]
	ldr r0, [r1, #0x74]
	adds r0, #1
_0804B0EC:
	str r0, [r4, #0x74]
	str r0, [r4, #0x6c]
_0804B0F0:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_0804B0F8
FUN_0804B0F8: @ 0x0804B0F8
	push {lr}
	adds r2, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _0804B132
	cmp r0, #2
	bne _0804B138
	ldr r1, [r2, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0804B12A
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r2, #0xc]
	adds r0, r2, #0
	movs r1, #1
	bl FUN_08001FB0
	b _0804B138
_0804B12A:
	adds r0, r2, #0
	bl FUN_0804B0A4
	b _0804B138
_0804B132:
	adds r0, r2, #0
	bl FUN_080040DC
_0804B138:
	pop {r0}
	bx r0

	thumb_func_start FUN_0804B13C
FUN_0804B13C: @ 0x0804B13C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0804B270 @ => 0x03006460
	adds r1, r0, #0
	adds r1, #0x14
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	movs r6, #0
	mov ip, r0
	mov sl, r6
	adds r0, #0x7c
	mov sb, r0
	ldr r1, _0804B274 @ => 0x030064AC
	mov r8, r1
	movs r7, #0
_0804B162:
	movs r4, #0
	lsls r5, r6, #2
	mov r0, ip
	adds r0, #0x7c
	adds r2, r7, r0
	adds r3, r7, #0
_0804B16E:
	ldr r1, _0804B274 @ => 0x030064AC
	adds r0, r3, r1
	ldrh r1, [r0]
	mov r1, sl
	strh r1, [r0]
	ldrh r0, [r2]
	strh r1, [r2]
	adds r2, #2
	adds r3, #2
	adds r4, #1
	cmp r4, #5
	bls _0804B16E
	mov r0, ip
	adds r0, #0x2c
	adds r0, r5, r0
	mov r2, r8
	str r2, [r0]
	mov r0, ip
	adds r0, #0x3c
	adds r0, r5, r0
	mov r3, sb
	str r3, [r0]
	movs r0, #0xc
	add sb, r0
	add r8, r0
	adds r7, #0xc
	adds r6, #1
	cmp r6, #3
	bls _0804B162
	movs r6, #0
	movs r1, #0
	ldr r0, _0804B278 @ => 0x03006264
_0804B1AE:
	strh r1, [r0]
	adds r0, #2
	adds r6, #1
	cmp r6, #1
	bls _0804B1AE
	movs r0, #0
	ldr r1, _0804B270 @ => 0x03006460
	strb r0, [r1, #4]
	str r0, [r1, #8]
	movs r1, #0xff
	ldr r2, _0804B270 @ => 0x03006460
	strb r1, [r2, #5]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r2]
	ldr r3, _0804B27C @ => 0x0300644C
	str r0, [r3]
	ldr r1, _0804B280 @ => 0x03002738
	str r0, [r1]
	ldr r2, _0804B284 @ => 0x03006518
	str r0, [r2]
	ldr r3, _0804B288 @ => 0x0300650C
	str r0, [r3]
	ldr r1, _0804B28C @ => 0x03002734
	str r0, [r1]
	ldr r2, _0804B290 @ => 0x03006524
	str r0, [r2]
	ldr r3, _0804B294 @ => 0x03006514
	str r0, [r3]
	ldr r1, _0804B298 @ => 0x0300651C
	str r0, [r1]
	ldr r2, _0804B29C @ => 0x03006448
	strb r0, [r2]
	movs r0, #0x40
	ldr r3, _0804B2A0 @ => 0x03006440
	str r0, [r3]
	movs r6, #0
	mov r5, sp
	movs r4, #0
	movs r7, #0
_0804B1FE:
	strh r7, [r5]
	ldr r1, _0804B2A4 @ => 0x030061F0
	adds r1, r4, r1
	mov r0, sp
	ldr r2, _0804B2A8 @ => 0x01000006
	bl SVC_CpuSet
	adds r4, #0xc
	adds r6, #1
	cmp r6, #1
	bls _0804B1FE
	movs r4, #0
	mov r0, sp
	strh r4, [r0]
	ldr r1, _0804B2AC @ => 0x03006250
	ldr r2, _0804B2A8 @ => 0x01000006
	bl SVC_CpuSet
	ldr r0, _0804B2B0 @ => FUN_0804C264
	bl FUN_0804C06C
	ldr r0, _0804B2B4 @ => 0x03002740
	str r4, [r0]
	ldr r0, _0804B2B8 @ => 0x04000134
	strh r4, [r0]
	ldr r2, _0804B2BC @ => 0x04000128
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	strh r0, [r2]
	ldrh r0, [r2]
	ldr r3, _0804B2C0 @ => 0x00004003
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	bl FUN_08047D18
	ldr r0, _0804B270 @ => 0x03006460
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	ldr r0, _0804B2C4 @ => 0x03006510
	str r1, [r0]
	ldr r2, _0804B2C8 @ => 0x03006450
	ldr r0, [r2]
	subs r1, #1
	ands r0, r1
	str r0, [r2]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B270: .4byte gUnk_03006460
_0804B274: .4byte gUnk_030064AC
_0804B278: .4byte gUnk_03006264
_0804B27C: .4byte gUnk_0300644C
_0804B280: .4byte gUnk_03002738
_0804B284: .4byte gUnk_03006518
_0804B288: .4byte gUnk_0300650C
_0804B28C: .4byte gUnk_03002734
_0804B290: .4byte gUnk_03006524
_0804B294: .4byte gUnk_03006514
_0804B298: .4byte gUnk_0300651C
_0804B29C: .4byte gUnk_03006448
_0804B2A0: .4byte gUnk_03006440
_0804B2A4: .4byte gUnk_030061F0
_0804B2A8: .4byte 0x01000006
_0804B2AC: .4byte gUnk_03006250
_0804B2B0: .4byte FUN_0804C264
_0804B2B4: .4byte gUnk_03002740
_0804B2B8: .4byte 0x04000134
_0804B2BC: .4byte 0x04000128
_0804B2C0: .4byte 0x00004003
_0804B2C4: .4byte gUnk_03006510
_0804B2C8: .4byte gUnk_03006450

	thumb_func_start FUN_0804B2CC
FUN_0804B2CC: @ 0x0804B2CC
	push {r4, lr}
	ldr r1, _0804B2E4 @ => 0x0300651C
	str r0, [r1]
	ldr r0, _0804B2E8 @ => 0x03006440
	ldr r0, [r0]
	ldr r1, _0804B2EC @ => 0x00010004
	ands r0, r1
	cmp r0, #0
	beq _0804B2F0
	movs r0, #5
	b _0804B3B8
	.align 2, 0
_0804B2E4: .4byte gUnk_0300651C
_0804B2E8: .4byte gUnk_03006440
_0804B2EC: .4byte 0x00010004
_0804B2F0:
	ldr r1, _0804B2FC @ => 0x0400012A
	ldr r2, _0804B300 @ => 0x0000FFFF
	adds r0, r2, #0
	strh r0, [r1]
	b _0804B314
	.align 2, 0
_0804B2FC: .4byte 0x0400012A
_0804B300: .4byte 0x0000FFFF
_0804B304:
	ldr r0, _0804B374 @ => 0x03006460
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0804B314
	bl _call_via_r0
	cmp r0, #0
	beq _0804B39C
_0804B314:
	ldr r2, _0804B378 @ => 0x04000128
	ldrh r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0804B304
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0804B304
	ldr r1, _0804B37C @ => 0x0400012A
	ldr r2, _0804B380 @ => 0x0000FEED
	adds r0, r2, #0
	strh r0, [r1]
	ldr r3, _0804B378 @ => 0x04000128
	ldrh r1, [r3]
	movs r4, #4
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _0804B3A0
	ldr r1, _0804B384 @ => 0x030042F0
	ldr r0, _0804B388 @ => FUN_0804B6F4
	str r0, [r1]
	ldr r2, _0804B38C @ => 0x04000200
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0804B390 @ => 0x0400010C
	ldr r2, _0804B394 @ => 0x0000C352
	adds r0, r2, #0
	strh r0, [r1]
	ldrh r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _0804B3B0
	ldrh r0, [r3]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r3]
	ldr r1, _0804B398 @ => 0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
	b _0804B3B0
	.align 2, 0
_0804B374: .4byte gUnk_03006460
_0804B378: .4byte 0x04000128
_0804B37C: .4byte 0x0400012A
_0804B380: .4byte 0x0000FEED
_0804B384: .4byte gIntrTable
_0804B388: .4byte FUN_0804B6F4
_0804B38C: .4byte 0x04000200
_0804B390: .4byte 0x0400010C
_0804B394: .4byte 0x0000C352
_0804B398: .4byte 0x0400010E
_0804B39C:
	movs r0, #7
	b _0804B3B8
_0804B3A0:
	ldr r1, _0804B3C0 @ => 0x030042F0
	ldr r0, _0804B3C4 @ => FUN_0804B6F4
	str r0, [r1]
	ldr r2, _0804B3C8 @ => 0x04000200
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
_0804B3B0:
	bl FUN_08024FC4
	bl FUN_0804B3CC
_0804B3B8:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804B3C0: .4byte gIntrTable
_0804B3C4: .4byte FUN_0804B6F4
_0804B3C8: .4byte 0x04000200

	thumb_func_start FUN_0804B3CC
FUN_0804B3CC: @ 0x0804B3CC
	push {lr}
	ldr r0, _0804B3E4 @ => 0x03006520
	ldr r0, [r0]
	cmp r0, #8
	bls _0804B3EC
	ldr r0, _0804B3E8 @ => 0x03006460
	movs r1, #8
	strb r1, [r0, #4]
	movs r1, #0xff
	strb r1, [r0, #5]
	movs r0, #8
	b _0804B44A
	.align 2, 0
_0804B3E4: .4byte gUnk_03006520
_0804B3E8: .4byte gUnk_03006460
_0804B3EC:
	ldr r2, _0804B400 @ => 0x03006460
	ldrb r3, [r2, #5]
	movs r1, #5
	ldrsb r1, [r2, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0804B404
	movs r0, #0
	b _0804B44A
	.align 2, 0
_0804B400: .4byte gUnk_03006460
_0804B404:
	movs r0, #5
	ldrsb r0, [r2, r0]
	ldr r1, _0804B418 @ => 0x0300651C
	ldr r1, [r1]
	cmp r0, r1
	bge _0804B420
	ldr r0, _0804B41C @ => 0x03006510
	ldr r0, [r0]
	b _0804B44A
	.align 2, 0
_0804B418: .4byte gUnk_0300651C
_0804B41C: .4byte gUnk_03006510
_0804B420:
	movs r0, #0
	strb r0, [r2, #4]
	movs r0, #0xff
	orrs r0, r3
	strb r0, [r2, #5]
	ldr r2, _0804B450 @ => 0x03006440
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r2]
	ldr r2, _0804B454 @ => 0x04000200
	ldrh r1, [r2]
	ldr r0, _0804B458 @ => 0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0804B45C @ => 0x0400012A
	ldr r2, _0804B460 @ => 0x0000FFFF
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #6
_0804B44A:
	pop {r1}
	bx r1
	.align 2, 0
_0804B450: .4byte gUnk_03006440
_0804B454: .4byte 0x04000200
_0804B458: .4byte 0x0000FF7F
_0804B45C: .4byte 0x0400012A
_0804B460: .4byte 0x0000FFFF

	thumb_func_start FUN_0804B464
FUN_0804B464: @ 0x0804B464
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _0804B544 @ => 0x03006460
	ldrb r2, [r0, #4]
	subs r2, #1
	movs r1, #1
	rsbs r1, r1, #0
	adds r4, r0, #0
	ldr r0, _0804B548 @ => 0x03006524
	mov r8, r0
	cmp r2, r1
	beq _0804B4AE
	adds r4, #0x3c
	mov ip, r4
	adds r7, r1, #0
_0804B488:
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	subs r4, r2, #1
	lsls r0, r2, #2
	add r0, ip
	ldr r2, [r0]
	adds r1, r6, r1
	movs r3, #5
_0804B49A:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	adds r1, #2
	subs r3, #1
	cmp r3, #0
	bge _0804B49A
	adds r2, r4, #0
	cmp r2, r7
	bne _0804B488
_0804B4AE:
	movs r4, #0
	strh r4, [r5, #2]
	adds r1, r5, #0
	movs r3, #0
_0804B4B6:
	adds r0, r1, r3
	ldrb r0, [r0]
	adds r4, r4, r0
	adds r3, #1
	cmp r3, #0xb
	ble _0804B4B6
	mov r1, r8
	ldr r0, [r1]
	adds r4, r4, r0
	bl FUN_08047CEC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r4, r0
	bl FUN_08047D04
	ldr r1, _0804B54C @ => 0x03006514
	mov r2, r8
	ldr r0, [r2]
	str r0, [r1]
	rsbs r0, r4, #0
	strh r0, [r5, #2]
	ldr r0, _0804B544 @ => 0x03006460
	adds r4, r0, #0
	adds r2, r5, #0
	ldr r1, [r4, #0x10]
	movs r3, #5
_0804B4EC:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	adds r1, #2
	subs r3, #1
	cmp r3, #0
	bge _0804B4EC
	ldr r1, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0804B50C
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x10]
	str r0, [r4, #0xc]
	str r1, [r4, #0x10]
_0804B50C:
	ldr r2, _0804B550 @ => 0x03006440
	ldr r0, [r2]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	ldr r0, [r2]
	subs r1, #0x38
	ands r0, r1
	str r0, [r2]
	ldr r0, [r2]
	ldr r1, _0804B554 @ => 0xFFFBFFFF
	ands r0, r1
	str r0, [r2]
	ldr r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2]
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B544: .4byte gUnk_03006460
_0804B548: .4byte gUnk_03006524
_0804B54C: .4byte gUnk_03006514
_0804B550: .4byte gUnk_03006440
_0804B554: .4byte 0xFFFBFFFF

	thumb_func_start FUN_0804B558
FUN_0804B558: @ 0x0804B558
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _0804B57C @ => 0x03006440
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0xc
	ands r0, r2
	mov r8, r1
	cmp r0, #0
	beq _0804B592
	ldr r0, [r1]
	orrs r0, r2
	str r0, [r1]
	bl FUN_08047D9C
	b _0804B6B6
	.align 2, 0
_0804B57C: .4byte gUnk_03006440
_0804B580:
	mov r1, r8
	ldr r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	mov r2, r8
	str r0, [r2]
	movs r0, #1
	b _0804B6B8
_0804B592:
	adds r4, r1, #0
_0804B594:
	ldr r0, [r4]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0804B5C4
	ldr r0, _0804B6C4 @ => 0x030042E0
	ldr r0, [r0]
	ldr r6, _0804B6C8 @ => 0x03006444
	ldr r2, [r0, #0x1c]
	movs r5, #0x96
	lsls r5, r5, #1
	movs r3, #0x40
_0804B5AC:
	ldr r0, [r6]
	subs r0, r2, r0
	movs r1, #0
	cmp r0, r5
	ble _0804B5B8
	movs r1, #1
_0804B5B8:
	cmp r1, #0
	bne _0804B580
	ldr r0, [r4]
	ands r0, r3
	cmp r0, #0
	beq _0804B5AC
_0804B5C4:
	ldr r0, [r4]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0804B640
	ldr r3, _0804B6CC @ => 0x03006440
	movs r6, #0x20
	ldr r5, _0804B6D0 @ => 0x04000128
	ldr r0, _0804B6D4 @ => 0x0400012A
	mov ip, r0
	adds r7, r3, #0
_0804B5DA:
	ldr r0, [r3]
	ands r0, r6
	cmp r0, #0
	bne _0804B61A
	ldr r2, _0804B6D8 @ => 0x03006460
	ldr r1, [r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0804B61A
	ldr r0, [r3]
	movs r1, #8
	orrs r0, r1
	str r0, [r3]
	ldr r0, [r3]
	orrs r0, r6
	str r0, [r3]
	movs r0, #5
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _0804B61A
	ldr r1, _0804B6DC @ => 0x0000C0DE
	adds r0, r1, #0
	mov r2, ip
	strh r0, [r2]
	ldrh r0, [r5]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r5]
	ldr r1, _0804B6E0 @ => 0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_0804B61A:
	ldr r0, _0804B6C4 @ => 0x030042E0
	ldr r0, [r0]
	ldr r2, _0804B6C8 @ => 0x03006444
	ldr r1, [r0, #0x1c]
	ldr r0, [r2]
	subs r1, r1, r0
	movs r0, #0x96
	lsls r0, r0, #1
	movs r2, #0
	cmp r1, r0
	ble _0804B632
	movs r2, #1
_0804B632:
	cmp r2, #0
	bne _0804B580
	ldr r0, [r7]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0804B5DA
_0804B640:
	ldr r0, [r4]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	ldr r0, [r4]
	subs r1, #0x10
	ands r0, r1
	str r0, [r4]
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0804B594
	bl FUN_0804793C
	ldr r2, _0804B6CC @ => 0x03006440
	ldr r0, [r2]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	ldr r0, [r2]
	ldr r1, _0804B6E4 @ => 0xFFFFFDFF
	ands r0, r1
	str r0, [r2]
	ldr r1, _0804B6E8 @ => 0x03006524
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0804B6D8 @ => 0x03006460
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0804B6A2
	ldr r1, _0804B6D4 @ => 0x0400012A
	ldr r2, _0804B6EC @ => 0x0000BEEF
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _0804B6D0 @ => 0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0804B6E0 @ => 0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_0804B6A2:
	ldr r1, _0804B6C8 @ => 0x03006444
	ldr r0, _0804B6C4 @ => 0x030042E0
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	str r0, [r1]
	ldr r0, _0804B6F0 @ => 0x03006250
	movs r1, #0
	movs r2, #0xc
	bl FUN_0802CB40
_0804B6B6:
	movs r0, #0
_0804B6B8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804B6C4: .4byte gUnk_030042E0
_0804B6C8: .4byte gUnk_03006444
_0804B6CC: .4byte gUnk_03006440
_0804B6D0: .4byte 0x04000128
_0804B6D4: .4byte 0x0400012A
_0804B6D8: .4byte gUnk_03006460
_0804B6DC: .4byte 0x0000C0DE
_0804B6E0: .4byte 0x0400010E
_0804B6E4: .4byte 0xFFFFFDFF
_0804B6E8: .4byte gUnk_03006524
_0804B6EC: .4byte 0x0000BEEF
_0804B6F0: .4byte gUnk_03006250

	thumb_func_start FUN_0804B6F4
FUN_0804B6F4: @ 0x0804B6F4
	push {r4, r5, r6, r7, lr}
	ldr r2, _0804B76C @ => 0x03006510
	movs r1, #0
	str r1, [r2]
	ldr r5, _0804B770 @ => 0x03006448
	strb r1, [r5]
	ldr r0, _0804B774 @ => 0x03006520
	str r1, [r0]
	ldr r3, _0804B778 @ => 0x04000128
	ldrh r1, [r3]
	movs r0, #0xc0
	ands r0, r1
	mov ip, r2
	cmp r0, #0
	beq _0804B714
	b _0804B93C
_0804B714:
	ldrh r1, [r3]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _0804B726
	ldr r0, _0804B77C @ => 0x0400010E
	strh r1, [r0]
_0804B726:
	movs r2, #3
	mov r4, ip
	ldr r7, _0804B780 @ => 0x0000B0CA
	adds r6, r5, #0
	ldr r5, _0804B784 @ => 0x03006440
_0804B730:
	lsls r0, r2, #1
	ldr r1, _0804B788 @ => 0x04000120
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r3, r0, #0
	ldr r0, _0804B78C @ => 0x0000BEEF
	cmp r3, r0
	beq _0804B752
	ldr r0, _0804B790 @ => 0x0000C0DE
	cmp r3, r0
	beq _0804B752
	ldr r0, _0804B794 @ => 0x0000BABE
	cmp r3, r0
	beq _0804B752
	ldr r0, _0804B798 @ => 0x0000DEAD
	cmp r3, r0
	bne _0804B79C
_0804B752:
	movs r0, #5
	str r0, [r4]
	ldr r2, _0804B778 @ => 0x04000128
	ldrh r1, [r2]
	movs r3, #4
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0804B766
	b _0804B93C
_0804B766:
	ldrh r1, [r2]
	adds r0, r3, #0
	b _0804B928
	.align 2, 0
_0804B76C: .4byte gUnk_03006510
_0804B770: .4byte gUnk_03006448
_0804B774: .4byte gUnk_03006520
_0804B778: .4byte 0x04000128
_0804B77C: .4byte 0x0400010E
_0804B780: .4byte 0x0000B0CA
_0804B784: .4byte gUnk_03006440
_0804B788: .4byte 0x04000120
_0804B78C: .4byte 0x0000BEEF
_0804B790: .4byte 0x0000C0DE
_0804B794: .4byte 0x0000BABE
_0804B798: .4byte 0x0000DEAD
_0804B79C:
	ldr r0, _0804B85C @ => 0x0000FEED
	cmp r3, r0
	beq _0804B7A6
	cmp r3, r7
	bne _0804B7C4
_0804B7A6:
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	movs r0, #1
	lsls r0, r2
	ldrb r1, [r6]
	orrs r0, r1
	strb r0, [r6]
	cmp r3, r7
	bne _0804B7C4
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #0xa
	orrs r0, r1
	str r0, [r5]
_0804B7C4:
	subs r2, #1
	cmp r2, #0
	bge _0804B730
	mov r0, ip
	ldr r0, [r0]
	ldr r5, _0804B860 @ => 0x03006460
	cmp r0, #0
	beq _0804B7E0
	ldr r0, _0804B864 @ => 0x04000128
	ldrh r0, [r0]
	lsrs r0, r0, #4
	movs r1, #3
	ands r0, r1
	strb r0, [r5, #5]
_0804B7E0:
	ldr r4, _0804B868 @ => 0x03006440
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ands r0, r1
	cmp r0, #0
	bne _0804B7F0
	b _0804B914
_0804B7F0:
	movs r0, #5
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _0804B89C
	movs r3, #1
	ldrb r0, [r5, #4]
	subs r2, r0, #1
	cmp r2, #0
	ble _0804B826
	lsls r0, r2, #1
	ldr r1, _0804B86C @ => 0x04000120
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _0804B870 @ => 0x0000B0CA
	cmp r1, r0
	bne _0804B88C
_0804B810:
	subs r2, #1
	cmp r2, #0
	ble _0804B826
	lsls r0, r2, #1
	ldr r1, _0804B86C @ => 0x04000120
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _0804B870 @ => 0x0000B0CA
	cmp r1, r0
	beq _0804B810
	movs r3, #0
_0804B826:
	cmp r3, #0
	beq _0804B88C
	ldr r0, _0804B874 @ => FUN_0804C1D4
	str r0, [r5, #8]
	ldr r1, _0804B878 @ => 0x03006444
	ldr r0, _0804B87C @ => 0x030042E0
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	str r0, [r1]
	ldr r1, _0804B880 @ => 0x030042F0
	ldr r0, _0804B884 @ => FUN_0804B954
	str r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5]
	bl FUN_08047D18
	ldr r2, _0804B868 @ => 0x03006440
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r0, [r2]
	ldr r1, _0804B888 @ => 0xFFFDFFFF
	ands r0, r1
	str r0, [r2]
	b _0804B8DA
	.align 2, 0
_0804B85C: .4byte 0x0000FEED
_0804B860: .4byte gUnk_03006460
_0804B864: .4byte 0x04000128
_0804B868: .4byte gUnk_03006440
_0804B86C: .4byte 0x04000120
_0804B870: .4byte 0x0000B0CA
_0804B874: .4byte FUN_0804C1D4
_0804B878: .4byte gUnk_03006444
_0804B87C: .4byte gUnk_030042E0
_0804B880: .4byte gIntrTable
_0804B884: .4byte FUN_0804B954
_0804B888: .4byte 0xFFFDFFFF
_0804B88C:
	ldr r1, _0804B894 @ => 0x0400012A
	ldr r2, _0804B898 @ => 0x0000B0CA
	b _0804B91E
	.align 2, 0
_0804B894: .4byte 0x0400012A
_0804B898: .4byte 0x0000B0CA
_0804B89C:
	ldr r0, _0804B8E8 @ => 0x04000120
	ldrh r0, [r0]
	adds r1, r0, #0
	ldr r0, _0804B8EC @ => 0x0000B0CA
	cmp r1, r0
	bne _0804B91A
	ldr r0, _0804B8F0 @ => 0x0400012A
	strh r1, [r0]
	ldr r0, _0804B8F4 @ => FUN_0804C1D4
	str r0, [r5, #8]
	ldr r1, _0804B8F8 @ => 0x03006444
	ldr r0, _0804B8FC @ => 0x030042E0
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	str r0, [r1]
	ldr r1, _0804B900 @ => 0x030042F0
	ldr r0, _0804B904 @ => FUN_0804B954
	str r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5]
	bl FUN_08047D18
	ldr r0, [r4]
	movs r1, #4
	orrs r0, r1
	str r0, [r4]
	ldr r0, [r4]
	ldr r1, _0804B908 @ => 0xFFFDFFFF
	ands r0, r1
	str r0, [r4]
_0804B8DA:
	ldr r1, _0804B90C @ => 0x0400010C
	ldr r2, _0804B910 @ => 0x0000C352
	adds r0, r2, #0
	strh r0, [r1]
	bl FUN_08047C14
	b _0804B93C
	.align 2, 0
_0804B8E8: .4byte 0x04000120
_0804B8EC: .4byte 0x0000B0CA
_0804B8F0: .4byte 0x0400012A
_0804B8F4: .4byte FUN_0804C1D4
_0804B8F8: .4byte gUnk_03006444
_0804B8FC: .4byte gUnk_030042E0
_0804B900: .4byte gIntrTable
_0804B904: .4byte FUN_0804B954
_0804B908: .4byte 0xFFFDFFFF
_0804B90C: .4byte 0x0400010C
_0804B910: .4byte 0x0000C352
_0804B914:
	mov r1, ip
	ldr r0, [r1]
	strb r0, [r5, #4]
_0804B91A:
	ldr r1, _0804B944 @ => 0x0400012A
	ldr r2, _0804B948 @ => 0x0000FEED
_0804B91E:
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _0804B94C @ => 0x04000128
	ldrh r1, [r2]
	movs r0, #4
_0804B928:
	ands r0, r1
	cmp r0, #0
	bne _0804B93C
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0804B950 @ => 0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_0804B93C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B944: .4byte 0x0400012A
_0804B948: .4byte 0x0000FEED
_0804B94C: .4byte 0x04000128
_0804B950: .4byte 0x0400010E

	thumb_func_start FUN_0804B954
FUN_0804B954: @ 0x0804B954
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _0804B9B4 @ => 0x04000128
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804B968
	b _0804BFB4
_0804B968:
	ldrh r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0804B9D0
	ldr r1, _0804B9B8 @ => 0x03002738
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _0804B9BC @ => 0x0400012A
	ldr r3, _0804B9C0 @ => 0x0000DEAD
	adds r0, r3, #0
	strh r0, [r1]
	ldr r3, _0804B9C4 @ => 0x03006460
	movs r0, #5
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bne _0804B99A
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0804B9C8 @ => 0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_0804B99A:
	ldr r0, _0804B9CC @ => 0x03006440
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r3, #8]
	cmp r0, #0
	bne _0804B9AE
	b _0804BFB4
_0804B9AE:
	bl _call_via_r0
	b _0804BFB4
	.align 2, 0
_0804B9B4: .4byte 0x04000128
_0804B9B8: .4byte gUnk_03002738
_0804B9BC: .4byte 0x0400012A
_0804B9C0: .4byte 0x0000DEAD
_0804B9C4: .4byte gUnk_03006460
_0804B9C8: .4byte 0x0400010E
_0804B9CC: .4byte gUnk_03006440
_0804B9D0:
	ldr r0, _0804BA14 @ => 0x03006440
	ldr r1, [r0]
	movs r2, #8
	ands r1, r2
	adds r5, r0, #0
	cmp r1, #0
	bne _0804B9E0
	b _0804BBFC
_0804B9E0:
	ldr r3, _0804BA18 @ => 0x04000120
	ldrh r0, [r3]
	ldr r1, _0804BA1C @ => 0x0000DEAD
	cmp r0, r1
	beq _0804BA02
	ldr r4, _0804BA20 @ => 0x04000122
	ldrh r0, [r4]
	cmp r0, r1
	beq _0804BA02
	ldr r0, _0804BA24 @ => 0x04000124
	ldrh r0, [r0]
	cmp r0, r1
	beq _0804BA02
	ldr r0, _0804BA28 @ => 0x04000126
	ldrh r0, [r0]
	cmp r0, r1
	bne _0804BAAC
_0804BA02:
	movs r3, #1
	movs r2, #0
	ldr r0, _0804BA2C @ => 0x03006460
	mov ip, r0
	ldrb r7, [r0, #4]
	cmp r2, r7
	bge _0804BA4A
	ldr r0, _0804BA18 @ => 0x04000120
	b _0804BA40
	.align 2, 0
_0804BA14: .4byte gUnk_03006440
_0804BA18: .4byte 0x04000120
_0804BA1C: .4byte 0x0000DEAD
_0804BA20: .4byte 0x04000122
_0804BA24: .4byte 0x04000124
_0804BA28: .4byte 0x04000126
_0804BA2C: .4byte gUnk_03006460
_0804BA30:
	adds r2, #1
	mov r0, ip
	ldrb r0, [r0, #4]
	cmp r2, r0
	bge _0804BA4A
	lsls r0, r2, #1
	ldr r1, _0804BA84 @ => 0x04000120
	adds r0, r0, r1
_0804BA40:
	ldrh r1, [r0]
	ldr r0, _0804BA88 @ => 0x0000DEAD
	cmp r1, r0
	beq _0804BA30
	movs r3, #0
_0804BA4A:
	ldr r0, [r5]
	ldr r1, _0804BA8C @ => 0xFFFBFFFF
	ands r0, r1
	str r0, [r5]
	cmp r3, #0
	beq _0804BA98
	ldr r1, _0804BA90 @ => 0x0400012A
	ldr r2, _0804BA94 @ => 0x0000BEEF
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r5]
	subs r1, #0x19
	ands r0, r1
	str r0, [r5]
	ldr r0, [r5]
	subs r1, #0x38
	ands r0, r1
	str r0, [r5]
	b _0804BAA0
	.align 2, 0
_0804BA84: .4byte 0x04000120
_0804BA88: .4byte 0x0000DEAD
_0804BA8C: .4byte 0xFFFBFFFF
_0804BA90: .4byte 0x0400012A
_0804BA94: .4byte 0x0000BEEF
_0804BA98:
	ldr r1, _0804BAA4 @ => 0x0400012A
	ldr r3, _0804BAA8 @ => 0x0000DEAD
	adds r0, r3, #0
	strh r0, [r1]
_0804BAA0:
	mov r7, ip
	b _0804BF56
	.align 2, 0
_0804BAA4: .4byte 0x0400012A
_0804BAA8: .4byte 0x0000DEAD
_0804BAAC:
	ldr r0, _0804BB08 @ => 0x03006460
	movs r1, #5
	ldrsb r1, [r0, r1]
	mov ip, r0
	cmp r1, #0
	bne _0804BB8C
	movs r3, #1
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	bne _0804BB30
	movs r2, #1
	mov r0, ip
	ldrb r0, [r0, #4]
	cmp r3, r0
	bge _0804BAF2
	ldrh r1, [r4]
	ldr r0, _0804BB0C @ => 0x0000C0DE
	cmp r1, r0
	bne _0804BB1C
_0804BAD8:
	adds r2, #1
	mov r1, ip
	ldrb r1, [r1, #4]
	cmp r2, r1
	bge _0804BAF2
	lsls r0, r2, #1
	ldr r7, _0804BB10 @ => 0x04000120
	adds r0, r0, r7
	ldrh r1, [r0]
	ldr r0, _0804BB0C @ => 0x0000C0DE
	cmp r1, r0
	beq _0804BAD8
	movs r3, #0
_0804BAF2:
	cmp r3, #0
	beq _0804BB1C
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r5]
	ldr r1, _0804BB14 @ => 0x0400012A
	ldr r2, _0804BB18 @ => 0x0000BABE
	adds r0, r2, #0
	b _0804BB22
	.align 2, 0
_0804BB08: .4byte gUnk_03006460
_0804BB0C: .4byte 0x0000C0DE
_0804BB10: .4byte 0x04000120
_0804BB14: .4byte 0x0400012A
_0804BB18: .4byte 0x0000BABE
_0804BB1C:
	ldr r1, _0804BB28 @ => 0x0400012A
	ldr r3, _0804BB2C @ => 0x0000C0DE
	adds r0, r3, #0
_0804BB22:
	strh r0, [r1]
	mov r7, ip
	b _0804BF56
	.align 2, 0
_0804BB28: .4byte 0x0400012A
_0804BB2C: .4byte 0x0000C0DE
_0804BB30:
	movs r2, #1
	mov r0, ip
	ldrb r0, [r0, #4]
	cmp r3, r0
	bge _0804BB5C
	ldrh r1, [r4]
	ldr r0, _0804BB68 @ => 0x0000BABE
	cmp r1, r0
	bne _0804BB74
_0804BB42:
	adds r2, #1
	mov r1, ip
	ldrb r1, [r1, #4]
	cmp r2, r1
	bge _0804BB5C
	lsls r0, r2, #1
	ldr r7, _0804BB6C @ => 0x04000120
	adds r0, r0, r7
	ldrh r1, [r0]
	ldr r0, _0804BB68 @ => 0x0000BABE
	cmp r1, r0
	beq _0804BB42
	movs r3, #0
_0804BB5C:
	cmp r3, #0
	beq _0804BB74
	ldr r1, _0804BB70 @ => 0x0400010E
	movs r0, #0
	strh r0, [r1]
	b _0804BBD2
	.align 2, 0
_0804BB68: .4byte 0x0000BABE
_0804BB6C: .4byte 0x04000120
_0804BB70: .4byte 0x0400010E
_0804BB74:
	ldr r0, _0804BB84 @ => 0x0400012A
	ldr r2, _0804BB88 @ => 0x0000BABE
	adds r1, r2, #0
	strh r1, [r0]
	mov r3, ip
	movs r0, #5
	ldrsb r0, [r3, r0]
	b _0804BF5A
	.align 2, 0
_0804BB84: .4byte 0x0400012A
_0804BB88: .4byte 0x0000BABE
_0804BB8C:
	ldr r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #0xb
	ands r0, r2
	cmp r0, #0
	bne _0804BBC4
	ldrh r0, [r3]
	adds r1, r0, #0
	ldr r0, _0804BBAC @ => 0x0000C0DE
	cmp r1, r0
	bne _0804BBB0
	ldr r0, [r5]
	orrs r0, r2
	str r0, [r5]
	b _0804BFB0
	.align 2, 0
_0804BBAC: .4byte 0x0000C0DE
_0804BBB0:
	ldr r1, _0804BBBC @ => 0x0400012A
	ldr r7, _0804BBC0 @ => 0x0000BEEF
	adds r0, r7, #0
	strh r0, [r1]
	b _0804BFB4
	.align 2, 0
_0804BBBC: .4byte 0x0400012A
_0804BBC0: .4byte 0x0000BEEF
_0804BBC4:
	ldrh r0, [r3]
	adds r1, r0, #0
	ldr r0, _0804BBDC @ => 0x0000BABE
	cmp r1, r0
	bne _0804BBEC
	ldr r0, _0804BBE0 @ => 0x0400012A
	strh r1, [r0]
_0804BBD2:
	ldr r0, _0804BBE4 @ => 0x03006250
	ldr r1, _0804BBE8 @ => 0x030061F0
	bl FUN_0804B464
	b _0804BFB4
	.align 2, 0
_0804BBDC: .4byte 0x0000BABE
_0804BBE0: .4byte 0x0400012A
_0804BBE4: .4byte gUnk_03006250
_0804BBE8: .4byte gUnk_030061F0
_0804BBEC:
	ldr r1, _0804BBF4 @ => 0x0400012A
	ldr r2, _0804BBF8 @ => 0x0000C0DE
	b _0804BEE2
	.align 2, 0
_0804BBF4: .4byte 0x0400012A
_0804BBF8: .4byte 0x0000C0DE
_0804BBFC:
	ldr r0, _0804BC8C @ => 0x03006460
	ldr r2, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	mov ip, r0
	cmp r2, r1
	bne _0804BCCC
	ldr r0, _0804BC90 @ => 0x04000120
	ldrh r0, [r0]
	ldr r1, _0804BC94 @ => 0x0000DEAD
	cmp r0, r1
	beq _0804BC2C
	ldr r0, _0804BC98 @ => 0x04000122
	ldrh r0, [r0]
	cmp r0, r1
	beq _0804BC2C
	ldr r0, _0804BC9C @ => 0x04000124
	ldrh r0, [r0]
	cmp r0, r1
	beq _0804BC2C
	ldr r0, _0804BCA0 @ => 0x04000126
	ldrh r0, [r0]
	cmp r0, r1
	bne _0804BCCC
_0804BC2C:
	movs r3, #1
	movs r2, #0
	mov r7, ip
	ldrb r7, [r7, #4]
	cmp r2, r7
	bge _0804BC5C
	ldr r0, _0804BC90 @ => 0x04000120
	ldrh r1, [r0]
	ldr r0, _0804BC94 @ => 0x0000DEAD
	cmp r1, r0
	bne _0804BCB4
_0804BC42:
	adds r2, #1
	mov r0, ip
	ldrb r0, [r0, #4]
	cmp r2, r0
	bge _0804BC5C
	lsls r0, r2, #1
	ldr r1, _0804BC90 @ => 0x04000120
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _0804BC94 @ => 0x0000DEAD
	cmp r1, r0
	beq _0804BC42
	movs r3, #0
_0804BC5C:
	cmp r3, #0
	beq _0804BCB4
	ldr r1, _0804BCA4 @ => 0x0400012A
	ldr r2, _0804BCA8 @ => 0x0000BEEF
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	mov r3, ip
	str r0, [r3]
	ldr r0, [r5]
	ldr r1, _0804BCAC @ => 0xFFFFFBFF
	ands r0, r1
	str r0, [r5]
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r5]
	ldr r1, _0804BCB0 @ => 0x03002734
	movs r0, #0
	str r0, [r1]
	b _0804BCBC
	.align 2, 0
_0804BC8C: .4byte gUnk_03006460
_0804BC90: .4byte 0x04000120
_0804BC94: .4byte 0x0000DEAD
_0804BC98: .4byte 0x04000122
_0804BC9C: .4byte 0x04000124
_0804BCA0: .4byte 0x04000126
_0804BCA4: .4byte 0x0400012A
_0804BCA8: .4byte 0x0000BEEF
_0804BCAC: .4byte 0xFFFFFBFF
_0804BCB0: .4byte gUnk_03002734
_0804BCB4:
	ldr r1, _0804BCC4 @ => 0x0400012A
	ldr r7, _0804BCC8 @ => 0x0000DEAD
	adds r0, r7, #0
	strh r0, [r1]
_0804BCBC:
	mov r1, ip
	movs r0, #5
	ldrsb r0, [r1, r0]
	b _0804BF5A
	.align 2, 0
_0804BCC4: .4byte 0x0400012A
_0804BCC8: .4byte 0x0000DEAD
_0804BCCC:
	ldr r0, _0804BCE4 @ => 0x03002734
	ldr r0, [r0]
	cmp r0, #5
	bls _0804BCF0
	ldr r0, _0804BCE8 @ => 0x0400012A
	ldr r2, _0804BCEC @ => 0x0000DEAD
	adds r1, r2, #0
	strh r1, [r0]
	mov r3, ip
	movs r0, #5
	ldrsb r0, [r3, r0]
	b _0804BF5A
	.align 2, 0
_0804BCE4: .4byte gUnk_03002734
_0804BCE8: .4byte 0x0400012A
_0804BCEC: .4byte 0x0000DEAD
_0804BCF0:
	ldr r0, [r5]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0804BCFC
	b _0804BF94
_0804BCFC:
	mov r7, ip
	ldr r0, [r7]
	subs r1, #0x41
	cmp r0, r1
	ble _0804BD48
	ldrb r2, [r7, #4]
	subs r2, #1
	ldr r7, _0804BD40 @ => 0x03006518
	cmp r2, r1
	beq _0804BD36
	mov r6, ip
	adds r5, r1, #0
	lsls r0, r2, #1
	ldr r1, _0804BD44 @ => 0x04000120
	adds r4, r0, r1
	lsls r0, r2, #2
	adds r0, #0x2c
	adds r3, r0, r6
_0804BD20:
	ldr r0, [r6]
	ldr r1, [r3]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r4]
	strh r1, [r0]
	subs r4, #2
	subs r3, #4
	subs r2, #1
	cmp r2, r5
	bne _0804BD20
_0804BD36:
	ldr r0, [r7]
	adds r0, #1
	str r0, [r7]
	b _0804BDDA
	.align 2, 0
_0804BD40: .4byte gUnk_03006518
_0804BD44: .4byte 0x04000120
_0804BD48:
	mov r2, ip
	movs r0, #5
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _0804BD60
	ldr r0, _0804BDB4 @ => 0x04000120
	ldrh r0, [r0]
	adds r1, r0, #0
	ldr r0, _0804BDB8 @ => 0x0000BABE
	cmp r1, r0
	bne _0804BD60
	b _0804BFB0
_0804BD60:
	mov r3, ip
	ldrb r2, [r3, #4]
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0804BDDA
	ldr r6, _0804BDBC @ => 0x0000BEEF
	ldr r5, _0804BDB8 @ => 0x0000BABE
	ldr r3, _0804BDC0 @ => 0x03006440
	ldr r7, _0804BDC4 @ => 0x0400012A
	mov r8, r7
	ldr r4, _0804BDC8 @ => 0x04000128
_0804BD7A:
	lsls r0, r2, #1
	ldr r7, _0804BDB4 @ => 0x04000120
	adds r1, r0, r7
	ldrh r0, [r1]
	cmp r0, r6
	beq _0804BDD0
	ldrh r0, [r1]
	cmp r0, r5
	beq _0804BDD0
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r3]
	ldr r1, _0804BDCC @ => 0x0000DEAD
	adds r0, r1, #0
	mov r2, r8
	strh r0, [r2]
	mov r3, ip
	movs r0, #5
	ldrsb r0, [r3, r0]
	cmp r0, #0
	beq _0804BDAA
	b _0804BFB4
_0804BDAA:
	ldrh r0, [r4]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r4]
	b _0804BF68
	.align 2, 0
_0804BDB4: .4byte 0x04000120
_0804BDB8: .4byte 0x0000BABE
_0804BDBC: .4byte 0x0000BEEF
_0804BDC0: .4byte gUnk_03006440
_0804BDC4: .4byte 0x0400012A
_0804BDC8: .4byte 0x04000128
_0804BDCC: .4byte 0x0000DEAD
_0804BDD0:
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _0804BD7A
_0804BDDA:
	mov r7, ip
	ldr r0, [r7]
	adds r0, #1
	str r0, [r7]
	ldr r0, [r7]
	cmp r0, #5
	bgt _0804BE08
	ldr r2, _0804BE04 @ => 0x0400012A
	ldr r0, [r7]
	ldr r1, [r7, #0xc]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	movs r0, #5
	ldrsb r0, [r7, r0]
	cmp r0, #0
	beq _0804BE00
	b _0804BFB4
_0804BE00:
	subs r2, #2
	b _0804BF60
	.align 2, 0
_0804BE04: .4byte 0x0400012A
_0804BE08:
	movs r6, #0
	mov r0, ip
	ldrb r0, [r0, #4]
	cmp r6, r0
	bge _0804BE70
	ldr r1, _0804BEE8 @ => 0x03006514
	mov r8, r1
_0804BE16:
	lsls r0, r6, #2
	mov r1, ip
	adds r1, #0x2c
	adds r0, r0, r1
	ldr r5, [r0]
	movs r4, #0
	movs r2, #2
	ldrsh r7, [r5, r2]
	strh r4, [r5, #2]
	adds r2, r5, #0
	movs r1, #0
_0804BE2C:
	adds r0, r2, r1
	ldrb r0, [r0]
	adds r4, r4, r0
	adds r1, #1
	cmp r1, #0xb
	bls _0804BE2C
	mov r3, r8
	ldr r0, [r3]
	adds r4, r4, r0
	bl FUN_08047CF8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r4, r0
	bl FUN_08047E0C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r4, r0
	strh r7, [r5, #2]
	adds r0, r4, r7
	lsls r0, r0, #0x10
	movs r1, #0
	cmp r0, #0
	bne _0804BE60
	movs r1, #1
_0804BE60:
	cmp r1, #0
	beq _0804BF14
	adds r6, #1
	ldr r0, _0804BEEC @ => 0x03006460
	mov ip, r0
	ldrb r7, [r0, #4]
	cmp r6, r7
	blt _0804BE16
_0804BE70:
	ldr r5, _0804BEF0 @ => 0x03006440
	movs r0, #1
	cmp r0, #0
	beq _0804BF1A
	ldr r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	cmp r1, #0
	bne _0804BF1A
	movs r0, #1
	rsbs r0, r0, #0
	mov r2, ip
	str r0, [r2]
	ldr r0, _0804BEF4 @ => 0x03002734
	str r1, [r0]
	ldr r0, [r5]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r5]
	ldr r1, _0804BEF8 @ => 0xFFFFFEFF
	ands r0, r1
	str r0, [r5]
	ldr r1, _0804BEFC @ => 0x0300644C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _0804BF00 @ => 0x03006444
	ldr r0, _0804BF04 @ => 0x030042E0
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	str r0, [r1]
	movs r6, #0
	ldrb r3, [r2, #4]
	cmp r6, r3
	bge _0804BED0
	mov r3, ip
	adds r2, #0x2c
_0804BEBE:
	ldr r1, [r2]
	ldr r0, [r2, #0x10]
	str r0, [r2]
	str r1, [r2, #0x10]
	adds r2, #4
	adds r6, #1
	ldrb r7, [r3, #4]
	cmp r6, r7
	blt _0804BEBE
_0804BED0:
	mov r0, ip
	movs r1, #5
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bne _0804BEDE
	ldr r0, _0804BF08 @ => 0x0400010E
	strh r1, [r0]
_0804BEDE:
	ldr r1, _0804BF0C @ => 0x0400012A
	ldr r2, _0804BF10 @ => 0x0000BEEF
_0804BEE2:
	adds r0, r2, #0
	strh r0, [r1]
	b _0804BFB4
	.align 2, 0
_0804BEE8: .4byte gUnk_03006514
_0804BEEC: .4byte gUnk_03006460
_0804BEF0: .4byte gUnk_03006440
_0804BEF4: .4byte gUnk_03002734
_0804BEF8: .4byte 0xFFFFFEFF
_0804BEFC: .4byte gUnk_0300644C
_0804BF00: .4byte gUnk_03006444
_0804BF04: .4byte gUnk_030042E0
_0804BF08: .4byte 0x0400010E
_0804BF0C: .4byte 0x0400012A
_0804BF10: .4byte 0x0000BEEF
_0804BF14:
	ldr r3, _0804BF70 @ => 0x03006460
	mov ip, r3
	ldr r5, _0804BF74 @ => 0x03006440
_0804BF1A:
	ldr r1, _0804BF78 @ => 0x0300650C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _0804BF7C @ => 0x03002734
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r5]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5]
	ldr r0, [r5]
	ldr r1, _0804BF80 @ => 0xFFFFFBFF
	ands r0, r1
	str r0, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	mov r7, ip
	str r0, [r7]
	ldr r1, _0804BF84 @ => 0x0400012A
	ldr r2, _0804BF88 @ => 0x0000DEAD
	adds r0, r2, #0
	strh r0, [r1]
_0804BF56:
	movs r0, #5
	ldrsb r0, [r7, r0]
_0804BF5A:
	cmp r0, #0
	bne _0804BFB4
	ldr r2, _0804BF8C @ => 0x04000128
_0804BF60:
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
_0804BF68:
	ldr r1, _0804BF90 @ => 0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
	b _0804BFB4
	.align 2, 0
_0804BF70: .4byte gUnk_03006460
_0804BF74: .4byte gUnk_03006440
_0804BF78: .4byte gUnk_0300650C
_0804BF7C: .4byte gUnk_03002734
_0804BF80: .4byte 0xFFFFFBFF
_0804BF84: .4byte 0x0400012A
_0804BF88: .4byte 0x0000DEAD
_0804BF8C: .4byte 0x04000128
_0804BF90: .4byte 0x0400010E
_0804BF94:
	mov r3, ip
	movs r0, #5
	ldrsb r0, [r3, r0]
	cmp r0, #0
	beq _0804BFB4
	ldr r0, [r3]
	cmp r0, #0
	bne _0804BFB4
	ldr r0, _0804BFC0 @ => 0x04000120
	ldrh r0, [r0]
	adds r1, r0, #0
	ldr r0, _0804BFC4 @ => 0x0000B0CA
	cmp r1, r0
	bne _0804BFB4
_0804BFB0:
	ldr r0, _0804BFC8 @ => 0x0400012A
	strh r1, [r0]
_0804BFB4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804BFC0: .4byte 0x04000120
_0804BFC4: .4byte 0x0000B0CA
_0804BFC8: .4byte 0x0400012A

	thumb_func_start FUN_0804BFCC
FUN_0804BFCC: @ 0x0804BFCC
	push {lr}
	ldr r0, _0804BFFC @ => 0x04000128
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0804BFE4
	ldr r2, _0804C000 @ => 0x04000200
	ldrh r1, [r2]
	ldr r0, _0804C004 @ => 0x0000FFBF
	ands r0, r1
	strh r0, [r2]
_0804BFE4:
	ldr r2, _0804C000 @ => 0x04000200
	ldrh r1, [r2]
	ldr r0, _0804C008 @ => 0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0804C00C @ => 0x03006460
	movs r0, #0
	strb r0, [r1, #4]
	movs r0, #0xff
	strb r0, [r1, #5]
	pop {r0}
	bx r0
	.align 2, 0
_0804BFFC: .4byte 0x04000128
_0804C000: .4byte 0x04000200
_0804C004: .4byte 0x0000FFBF
_0804C008: .4byte 0x0000FF7F
_0804C00C: .4byte gUnk_03006460

	thumb_func_start FUN_0804C010
FUN_0804C010: @ 0x0804C010
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r2, _0804C048 @ => 0x03006440
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0xa
	orrs r0, r1
	str r0, [r2]
	ldr r0, [r2]
	adds r6, r2, #0
	movs r5, #4
_0804C026:
	adds r4, #1
	bl FUN_08024FC4
	ldr r0, [r6]
	ands r0, r5
	cmp r0, #0
	beq _0804C026
	cmp r4, #0x13
	bls _0804C026
	ldr r0, _0804C048 @ => 0x03006440
	ldr r1, [r0]
	ldr r2, _0804C04C @ => 0xFFFDFFFF
	ands r1, r2
	str r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C048: .4byte gUnk_03006440
_0804C04C: .4byte 0xFFFDFFFF

	thumb_func_start FUN_0804C050
FUN_0804C050: @ 0x0804C050
	push {lr}
	ldr r0, _0804C068 @ => 0x03006440
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0xc
	orrs r1, r2
	str r1, [r0]
	bl FUN_08047D9C
	pop {r0}
	bx r0
	.align 2, 0
_0804C068: .4byte gUnk_03006440

	thumb_func_start FUN_0804C06C
FUN_0804C06C: @ 0x0804C06C
	ldr r1, _0804C074 @ => 0x03006460
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_0804C074: .4byte gUnk_03006460

	thumb_func_start FUN_0804C078
FUN_0804C078: @ 0x0804C078
	ldr r0, _0804C080 @ => 0x03006460
	ldrb r0, [r0, #4]
	bx lr
	.align 2, 0
_0804C080: .4byte gUnk_03006460

	thumb_func_start FUN_0804C084
FUN_0804C084: @ 0x0804C084
	ldr r0, _0804C090 @ => 0x03006460
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
_0804C090: .4byte gUnk_03006460

	thumb_func_start FUN_0804C094
FUN_0804C094: @ 0x0804C094
	push {lr}
	ldr r0, _0804C0B8 @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804C124
	ldr r0, _0804C0BC @ => 0x03006450
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0804C0C0
	movs r0, #1
	movs r1, #0
	bl FUN_08047B3C
	b _0804C0C8
	.align 2, 0
_0804C0B8: .4byte gUnk_03004374
_0804C0BC: .4byte gUnk_03006450
_0804C0C0:
	movs r0, #2
	movs r1, #0
	bl FUN_08047B3C
_0804C0C8:
	bl FUN_0804B558
	cmp r0, #1
	bne _0804C100
	ldr r2, _0804C0F8 @ => 0x03004374
	ldr r0, [r2]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	ldr r2, _0804C0FC @ => 0x03006440
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r2]
	bl FUN_08047D9C
	movs r0, #8
	bl FUN_0802CEC4
	movs r0, #1
	b _0804C126
	.align 2, 0
_0804C0F8: .4byte gUnk_03004374
_0804C0FC: .4byte gUnk_03006440
_0804C100:
	ldr r0, _0804C118 @ => 0x03006450
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0804C11C
	movs r0, #1
	movs r1, #0
	bl FUN_08047B3C
	b _0804C124
	.align 2, 0
_0804C118: .4byte gUnk_03006450
_0804C11C:
	movs r0, #2
	movs r1, #0
	bl FUN_08047B3C
_0804C124:
	movs r0, #0
_0804C126:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0804C12C
FUN_0804C12C: @ 0x0804C12C
	ldr r1, _0804C134 @ => 0x0300273C
	str r0, [r1]
	bx lr
	.align 2, 0
_0804C134: .4byte gUnk_0300273C

	thumb_func_start FUN_0804C138
FUN_0804C138: @ 0x0804C138
	ldr r0, _0804C140 @ => 0x0300273C
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0804C140: .4byte gUnk_0300273C

	thumb_func_start FUN_0804C144
FUN_0804C144: @ 0x0804C144
	push {lr}
	cmp r0, #0
	beq _0804C15C
	ldr r0, _0804C158 @ => 0x03006450
	ldr r1, [r0]
	movs r2, #2
	rsbs r2, r2, #0
	ands r1, r2
	b _0804C164
	.align 2, 0
_0804C158: .4byte gUnk_03006450
_0804C15C:
	ldr r0, _0804C16C @ => 0x03006450
	ldr r1, [r0]
	movs r2, #1
	orrs r1, r2
_0804C164:
	str r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_0804C16C: .4byte gUnk_03006450

	thumb_func_start FUN_0804C170
FUN_0804C170: @ 0x0804C170
	push {lr}
	ldr r1, _0804C1A4 @ => 0x03006510
	ldr r0, [r1]
	cmp r0, #2
	bne _0804C182
	ldr r0, _0804C1A8 @ => 0x03006448
	ldrb r0, [r0]
	cmp r0, #3
	beq _0804C19E
_0804C182:
	ldr r0, [r1]
	cmp r0, #3
	bne _0804C190
	ldr r0, _0804C1A8 @ => 0x03006448
	ldrb r0, [r0]
	cmp r0, #7
	beq _0804C19E
_0804C190:
	ldr r0, [r1]
	cmp r0, #4
	bne _0804C1AC
	ldr r0, _0804C1A8 @ => 0x03006448
	ldrb r0, [r0]
	cmp r0, #0xf
	bne _0804C1AC
_0804C19E:
	movs r0, #1
	b _0804C1AE
	.align 2, 0
_0804C1A4: .4byte gUnk_03006510
_0804C1A8: .4byte gUnk_03006448
_0804C1AC:
	movs r0, #0
_0804C1AE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0804C1B4
FUN_0804C1B4: @ 0x0804C1B4
	push {lr}
	ldr r0, _0804C1C8 @ => 0x03006440
	ldr r0, [r0]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0804C1CC
	movs r0, #0
	b _0804C1CE
	.align 2, 0
_0804C1C8: .4byte gUnk_03006440
_0804C1CC:
	movs r0, #1
_0804C1CE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0804C1D4
FUN_0804C1D4: @ 0x0804C1D4
	push {lr}
	ldr r0, _0804C1F0 @ => 0x030042E0
	ldr r0, [r0]
	ldr r1, _0804C1F4 @ => 0x03006444
	ldr r0, [r0, #0x1c]
	ldr r1, [r1]
	subs r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #1
	cmp r0, r1
	bgt _0804C1F8
	movs r0, #0
	b _0804C1FA
	.align 2, 0
_0804C1F0: .4byte gUnk_030042E0
_0804C1F4: .4byte gUnk_03006444
_0804C1F8:
	movs r0, #1
_0804C1FA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0804C200
FUN_0804C200: @ 0x0804C200
	ldr r0, _0804C210 @ => 0x03006440
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0xc
	orrs r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_0804C210: .4byte gUnk_03006440

	thumb_func_start FUN_0804C214
FUN_0804C214: @ 0x0804C214
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r0, #2
	ldrsh r6, [r5, r0]
	strh r4, [r5, #2]
	adds r2, r5, #0
	movs r1, #0
	ldr r3, _0804C258 @ => 0x03006514
_0804C226:
	adds r0, r2, r1
	ldrb r0, [r0]
	adds r4, r4, r0
	adds r1, #1
	cmp r1, #0xb
	bls _0804C226
	ldr r0, [r3]
	adds r4, r4, r0
	bl FUN_08047CF8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r4, r0
	bl FUN_08047E0C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r4, r0
	strh r6, [r5, #2]
	adds r0, r4, r6
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804C25C
	movs r0, #0
	b _0804C25E
	.align 2, 0
_0804C258: .4byte gUnk_03006514
_0804C25C:
	movs r0, #1
_0804C25E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_0804C264
FUN_0804C264: @ 0x0804C264
	push {lr}
	ldr r1, _0804C278 @ => 0x03002738
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0xa
	bhi _0804C27C
	movs r0, #1
	b _0804C280
	.align 2, 0
_0804C278: .4byte gUnk_03002738
_0804C27C:
	movs r0, #0
	str r0, [r1]
_0804C280:
	pop {r1}
	bx r1

	thumb_func_start FUN_0804C284
FUN_0804C284: @ 0x0804C284
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0
	movs r4, #3
	rsbs r4, r4, #0
_0804C28E:
	movs r2, #0
	lsls r0, r1, #2
	adds r3, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, r0, r5
_0804C29A:
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _0804C2B0
	subs r0, #1
	strb r0, [r1, #6]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804C2B0
	ldr r0, [r1]
	ands r0, r4
	str r0, [r1]
_0804C2B0:
	adds r1, #8
	adds r2, #1
	cmp r2, #4
	bls _0804C29A
	adds r1, r3, #0
	cmp r1, #2
	bls _0804C28E
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_0804C2C4
FUN_0804C2C4: @ 0x0804C2C4
	push {r4, r5, lr}
	lsls r3, r1, #2
	adds r3, r3, r1
	adds r3, r3, r2
	lsls r3, r3, #3
	adds r4, r0, r3
	ldrb r1, [r4, #4]
	adds r5, r1, #0
	ldrb r0, [r4, #5]
	adds r0, #1
	strb r0, [r4, #5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _0804C2F8
	adds r0, r1, #0
	adds r1, r0, #1
	adds r0, r1, #0
	movs r1, #0
	movs r2, #2
	bl FUN_0802C644
	adds r1, r0, #0
	strb r1, [r4, #4]
	movs r0, #0
	strb r0, [r4, #5]
_0804C2F8:
	cmp r5, r1
	bne _0804C300
	movs r0, #0
	b _0804C302
_0804C300:
	movs r0, #1
_0804C302:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start FUN_0804C308
FUN_0804C308: @ 0x0804C308
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r3, #0
	ldr r7, [sp, #0x14]
	ldr r4, _0804C360 @ => 0x0808DF3C
	lsls r3, r1, #1
	adds r3, r3, r1
	lsls r0, r5, #4
	subs r0, r0, r5
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r1, [r0, #7]
	muls r1, r2, r1
	ldrb r0, [r0, #6]
	adds r4, r1, r0
	cmp r5, #0
	bne _0804C330
	cmp r6, #1
	beq _0804C340
_0804C330:
	cmp r5, #1
	bne _0804C338
	cmp r6, #3
	beq _0804C340
_0804C338:
	cmp r5, #2
	bne _0804C342
	cmp r6, #2
	bne _0804C342
_0804C340:
	adds r4, #0x14
_0804C342:
	adds r0, r7, #0
	adds r1, r5, #0
	bl FUN_0803AE64
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r4, r0
	cmp r5, #1
	beq _0804C370
	cmp r5, #1
	blo _0804C364
	cmp r5, #2
	beq _0804C37C
	b _0804C38A
	.align 2, 0
_0804C360: .4byte ROMREF_0808DF3C
_0804C364:
	ldr r0, _0804C36C @ => 0x03003E18
	movs r1, #3
	b _0804C380
	.align 2, 0
_0804C36C: .4byte gUnk_03003E18
_0804C370:
	ldr r0, _0804C378 @ => 0x03003E18
	movs r1, #4
	b _0804C380
	.align 2, 0
_0804C378: .4byte gUnk_03003E18
_0804C37C:
	ldr r0, _0804C3CC @ => 0x03003E18
	movs r1, #0
_0804C380:
	bl FUN_0804ACD4
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r4, r4, r1
_0804C38A:
	bl FUN_08021320
	cmp r0, #0
	bne _0804C3B8
	cmp r7, #0xe
	bne _0804C39A
	cmp r5, #2
	beq _0804C3B6
_0804C39A:
	cmp r7, #0x14
	bne _0804C3B8
	cmp r5, #0
	bne _0804C3B8
	bl FUN_08021320
	cmp r0, #0
	bne _0804C3B8
	ldr r0, _0804C3D0 @ => 0x0300407C
	movs r1, #2
	bl FUN_0801DEE0
	cmp r0, #0
	bne _0804C3B8
_0804C3B6:
	movs r4, #0x64
_0804C3B8:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x64
	bl FUN_0802C644
	adds r4, r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804C3CC: .4byte gUnk_03003E18
_0804C3D0: .4byte gEpisode_Data

	thumb_func_start FUN_0804C3D4
FUN_0804C3D4: @ 0x0804C3D4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0
	movs r4, #0
	movs r5, #1
_0804C3DE:
	movs r2, #0
	lsls r0, r1, #2
	adds r3, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
_0804C3EA:
	cmp r2, #1
	bhi _0804C3F2
	str r5, [r0]
	b _0804C3F4
_0804C3F2:
	str r4, [r0]
_0804C3F4:
	strb r4, [r0, #4]
	adds r0, #8
	adds r2, #1
	cmp r2, #4
	bls _0804C3EA
	adds r1, r3, #0
	cmp r1, #2
	bls _0804C3DE
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0804C40C
FUN_0804C40C: @ 0x0804C40C
	lsls r3, r1, #2
	adds r3, r3, r1
	adds r3, r3, r2
	lsls r3, r3, #3
	adds r0, r0, r3
	ldrb r0, [r0, #4]
	bx lr
	.align 2, 0

	thumb_func_start FUN_0804C41C
FUN_0804C41C: @ 0x0804C41C
	push {r4, lr}
	lsls r4, r1, #2
	adds r4, r4, r1
	adds r4, r4, r2
	lsls r4, r4, #3
	adds r0, r0, r4
	strb r3, [r0, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_0804C430
FUN_0804C430: @ 0x0804C430
	push {lr}
	movs r1, #0x78
	bl FUN_08044644
	pop {r0}
	bx r0

	thumb_func_start FUN_0804C43C
FUN_0804C43C: @ 0x0804C43C
	push {lr}
	movs r1, #0x78
	bl FUN_08044558
	pop {r0}
	bx r0

	thumb_func_start FUN_0804C448
FUN_0804C448: @ 0x0804C448
	ldr r3, _0804C45C @ => 0x0808DF3C
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r1, r0, #4
	subs r1, r1, r0
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r0, [r1]
	bx lr
	.align 2, 0
_0804C45C: .4byte ROMREF_0808DF3C

	thumb_func_start FUN_0804C460
FUN_0804C460: @ 0x0804C460
	push {r4, lr}
	adds r4, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r4, r4, r0
	ldrb r0, [r4, #4]
	adds r1, r0, r3
	adds r0, r1, #0
	movs r1, #0
	movs r2, #2
	bl FUN_0802C644
	adds r1, r0, #0
	movs r0, #0
	strb r1, [r4, #4]
	strb r0, [r4, #5]
	adds r0, r1, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_0804C48C
FUN_0804C48C: @ 0x0804C48C
	ldr r3, _0804C4A0 @ => 0x0808DF3C
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r1, r0, #4
	subs r1, r1, r0
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrh r0, [r1, #4]
	bx lr
	.align 2, 0
_0804C4A0: .4byte ROMREF_0808DF3C

	thumb_func_start FUN_0804C4A4
FUN_0804C4A4: @ 0x0804C4A4
	push {r4, lr}
	ldr r4, _0804C4C0 @ => 0x0808DFF0
	lsls r3, r0, #2
	adds r3, r3, r0
	adds r1, r1, r3
	subs r2, #0xd
	lsls r2, r2, #4
	adds r1, r1, r2
	adds r1, r1, r4
	ldrb r0, [r1]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804C4C0: .4byte ROMREF_0808DFF0

	thumb_func_start FUN_0804C4C4
FUN_0804C4C4: @ 0x0804C4C4
	push {lr}
	ldr r3, _0804C4E4 @ => 0x0808DF3C
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r1, r0, #4
	subs r1, r1, r0
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrb r1, [r1, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0804C4E8
	movs r0, #0
	b _0804C4EA
	.align 2, 0
_0804C4E4: .4byte ROMREF_0808DF3C
_0804C4E8:
	movs r0, #1
_0804C4EA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0804C4F0
FUN_0804C4F0: @ 0x0804C4F0
	lsls r3, r1, #2
	adds r3, r3, r1
	adds r3, r3, r2
	lsls r3, r3, #3
	adds r0, r0, r3
	ldr r1, [r0]
	movs r2, #1
	orrs r1, r2
	str r1, [r0]
	bx lr

	thumb_func_start FUN_0804C504
FUN_0804C504: @ 0x0804C504
	push {lr}
	lsls r3, r1, #2
	adds r3, r3, r1
	adds r3, r3, r2
	lsls r3, r3, #3
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0804C51E
	movs r0, #0
	b _0804C520
_0804C51E:
	movs r0, #1
_0804C520:
	pop {r1}
	bx r1

	thumb_func_start FUN_0804C524
FUN_0804C524: @ 0x0804C524
	lsls r3, r1, #2
	adds r3, r3, r1
	adds r3, r3, r2
	lsls r3, r3, #3
	adds r0, r0, r3
	ldr r1, [r0]
	movs r2, #2
	orrs r1, r2
	str r1, [r0]
	movs r1, #0xc
	strb r1, [r0, #6]
	bx lr

	thumb_func_start FUN_0804C53C
FUN_0804C53C: @ 0x0804C53C
	push {lr}
	lsls r3, r1, #2
	adds r3, r3, r1
	adds r3, r3, r2
	lsls r3, r3, #3
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0804C556
	movs r0, #0
	b _0804C558
_0804C556:
	movs r0, #1
_0804C558:
	pop {r1}
	bx r1

	thumb_func_start FUN_0804C55C
FUN_0804C55C: @ 0x0804C55C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0
	movs r4, #3
	rsbs r4, r4, #0
_0804C566:
	movs r2, #0
	lsls r0, r1, #2
	adds r3, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, r0, r5
_0804C572:
	ldr r0, [r1]
	ands r0, r4
	str r0, [r1]
	adds r1, #8
	adds r2, #1
	cmp r2, #4
	bls _0804C572
	adds r1, r3, #0
	cmp r1, #2
	bls _0804C566
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_0804C58C
FUN_0804C58C: @ 0x0804C58C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r1, #0
	movs r6, #1
_0804C594:
	movs r2, #0
	lsls r0, r1, #2
	adds r4, r1, #1
	adds r0, r0, r1
	lsls r3, r0, #3
_0804C59E:
	lsls r0, r2, #3
	adds r0, r0, r3
	adds r0, r5, r0
	ldr r1, [r0]
	orrs r1, r6
	str r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _0804C59E
	lsls r0, r4, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #2
	bls _0804C594
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0804C5C4
FUN_0804C5C4: @ 0x0804C5C4
	ldr r3, _0804C5D8 @ => 0x0808DF3C
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r1, r0, #4
	subs r1, r1, r0
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrb r0, [r1, #8]
	bx lr
	.align 2, 0
_0804C5D8: .4byte ROMREF_0808DF3C
