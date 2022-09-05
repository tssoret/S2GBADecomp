.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_08012B44
FUN_08012B44: @ 0x08012B44
	push {r4, r5, lr}
	ldr r1, _08012BA8 @ => 0x030036C0
	adds r2, r1, #0
	adds r2, #0x9f
	movs r0, #0
	strb r0, [r2]
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0x94
	ldrb r3, [r0]
	cmp r2, r3
	bhs _08012B80
	adds r5, r1, #0
	adds r5, #0x4c
	movs r4, #2
	adds r3, r0, #0
_08012B64:
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0]
	cmp r1, #0
	beq _08012B74
	ldr r0, [r1, #0xc]
	orrs r0, r4
	str r0, [r1, #0xc]
_08012B74:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldrb r0, [r3]
	cmp r2, r0
	blo _08012B64
_08012B80:
	movs r2, #2
	ldr r4, _08012BAC @ => 0x03004790
	movs r3, #2
_08012B86:
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	cmp r1, #0
	beq _08012B96
	ldr r0, [r1, #0xc]
	orrs r0, r3
	str r0, [r1, #0xc]
_08012B96:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #5
	bls _08012B86
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08012BA8: .4byte gUnk_030036C0
_08012BAC: .4byte gUnk_03004790

	thumb_func_start FUN_08012BB0
FUN_08012BB0: @ 0x08012BB0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	ldr r0, _08012C74 @ => 0x030036C0
	adds r1, r0, #0
	adds r1, #0x9c
	movs r2, #0
	strb r2, [r1]
	adds r0, #0x9d
	strb r2, [r0]
	ldr r4, _08012C78 @ => 0x0805F714
	ldr r6, _08012C7C @ => 0x0805F854
	ldr r0, [r6, #0x10]
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0
	bl FUN_0802D6FC
	movs r0, #2
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl FUN_08019FEC
	movs r0, #0x10
	adds r0, r0, r4
	mov r8, r0
	ldr r5, _08012C80 @ => 0x09FB6248
	ldr r3, [r5, #8]
	ldr r0, [r6, #0x14]
	str r0, [sp]
	movs r0, #3
	movs r1, #0
	mov r2, r8
	bl FUN_0802D6FC
	movs r0, #3
	movs r1, #6
	movs r2, #0xfe
	movs r3, #1
	bl FUN_08019FEC
	ldr r3, [r5, #0x10]
	ldr r0, [r6, #0x18]
	str r0, [sp]
	movs r0, #4
	movs r1, #0
	mov r2, r8
	bl FUN_0802D6FC
	movs r0, #4
	movs r1, #6
	movs r2, #0xfe
	movs r3, #0
	bl FUN_08019FEC
	ldr r0, _08012C84 @ => 0x03004790
	ldr r2, [r0, #0x10]
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
	adds r4, #0x20
	ldr r0, [r6, #0x1c]
	str r0, [sp]
	movs r0, #5
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0
	bl FUN_0802D6FC
	movs r0, #5
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl FUN_08019FEC
	movs r4, #2
_08012C54:
	ldr r1, _08012C84 @ => 0x03004790
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0xa9
	ldrb r0, [r0]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x1c
	cmp r0, #4
	beq _08012CAC
	cmp r0, #4
	bgt _08012C88
	cmp r0, #3
	beq _08012C8E
	b _08012CBA
	.align 2, 0
_08012C74: .4byte gUnk_030036C0
_08012C78: .4byte ROMREF_0805F714
_08012C7C: .4byte ROMREF_0805F854
_08012C80: .4byte ROMREF_09FB6248
_08012C84: .4byte gUnk_03004790
_08012C88:
	cmp r0, #6
	beq _08012C98
	b _08012CBA
_08012C8E:
	ldr r0, _08012C94 @ => 0x0805F714
	b _08012C9A
	.align 2, 0
_08012C94: .4byte ROMREF_0805F714
_08012C98:
	ldr r0, _08012CA8 @ => 0x0805F724
_08012C9A:
	ldr r0, [r0, #8]
	lsrs r1, r1, #0x1c
	lsls r1, r1, #4
	movs r2, #0x10
	bl FUN_0801579C
	b _08012CBA
	.align 2, 0
_08012CA8: .4byte ROMREF_0805F724
_08012CAC:
	ldr r0, _08012CD0 @ => 0x0805F734
	ldr r0, [r0, #8]
	lsrs r1, r1, #0x1c
	lsls r1, r1, #4
	movs r2, #0x10
	bl FUN_0801579C
_08012CBA:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	bls _08012C54
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08012CD0: .4byte ROMREF_0805F734

	thumb_func_start FUN_08012CD4
FUN_08012CD4: @ 0x08012CD4
	push {lr}
	ldr r0, _08012CE8 @ => 0x030036C0
	adds r0, #0x9f
	ldrb r0, [r0]
	cmp r0, #0
	beq _08012CEC
	cmp r0, #1
	beq _08012D3C
	b _08012D60
	.align 2, 0
_08012CE8: .4byte gUnk_030036C0
_08012CEC:
	ldr r0, _08012D00 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08012D04
	bl FUN_08012F0C
	b _08012D60
	.align 2, 0
_08012D00: .4byte gUnk_030042B0
_08012D04:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08012D12
	bl FUN_080130A0
	b _08012D60
_08012D12:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08012D20
	bl FUN_08013118
	b _08012D60
_08012D20:
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08012D2E
	bl FUN_08013248
	b _08012D60
_08012D2E:
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08012D60
	bl FUN_080131DC
	b _08012D60
_08012D3C:
	ldr r0, _08012D50 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08012D54
	bl FUN_08013438
	b _08012D60
	.align 2, 0
_08012D50: .4byte gUnk_030042B0
_08012D54:
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08012D60
	bl FUN_080132EC
_08012D60:
	pop {r0}
	bx r0

	thumb_func_start FUN_08012D64
FUN_08012D64: @ 0x08012D64
	push {r4, lr}
	ldr r1, _08012D88 @ => 0x030036C0
	adds r0, r1, #0
	adds r0, #0x9f
	ldrb r0, [r0]
	mov ip, r1
	cmp r0, #0
	bne _08012E4C
	mov r0, ip
	adds r0, #0x9d
	ldrb r0, [r0]
	cmp r0, #6
	bhi _08012E5A
	lsls r0, r0, #2
	ldr r1, _08012D8C @ =_08012D90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08012D88: .4byte gUnk_030036C0
_08012D8C: .4byte _08012D90
_08012D90: @ jump table
	.4byte _08012DDC @ case 0
	.4byte _08012DAC @ case 1
	.4byte _08012DAC @ case 2
	.4byte _08012DDC @ case 3
	.4byte _08012DDC @ case 4
	.4byte _08012DDC @ case 5
	.4byte _08012E30 @ case 6
_08012DAC:
	ldr r3, _08012DD4 @ => 0x03004790
	ldr r2, [r3, #0xc]
	ldr r1, [r2, #0xc]
	movs r4, #2
	rsbs r4, r4, #0
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	beq _08012DCC
	movs r0, #1
	orrs r1, r0
	str r1, [r2, #0xc]
	ldr r1, [r3, #0x10]
	ldr r0, [r1, #0xc]
	ands r0, r4
	str r0, [r1, #0xc]
_08012DCC:
	ldr r0, [r3, #0xc]
	ldr r2, _08012DD8 @ => 0x0805AE06
	b _08012E00
	.align 2, 0
_08012DD4: .4byte gUnk_03004790
_08012DD8: .4byte KBD_SelectorXPosTable2
_08012DDC:
	ldr r3, _08012E24 @ => 0x03004790
	ldr r2, [r3, #0xc]
	ldr r1, [r2, #0xc]
	movs r4, #2
	rsbs r4, r4, #0
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	beq _08012DFC
	movs r0, #1
	orrs r1, r0
	str r1, [r2, #0xc]
	ldr r1, [r3, #0x10]
	ldr r0, [r1, #0xc]
	ands r0, r4
	str r0, [r1, #0xc]
_08012DFC:
	ldr r0, [r3, #0xc]
	ldr r2, _08012E28 @ => 0x0805ADF8
_08012E00:
	mov r1, ip
	adds r1, #0x9c
	ldrb r1, [r1]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	ldr r3, _08012E2C @ => 0x0805ADF0
	mov r2, ip
	adds r2, #0x9d
	ldrb r2, [r2]
	adds r2, r2, r3
	ldrb r2, [r2]
	lsls r2, r2, #0x10
	bl FUN_08001728
	b _08012E5A
	.align 2, 0
_08012E24: .4byte gUnk_03004790
_08012E28: .4byte KBD_SelectorXPosTable1
_08012E2C: .4byte KBD_YPositions
_08012E30:
	ldr r3, _08012E48 @ => 0x03004790
	ldr r2, [r3, #0xc]
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
	ldr r2, [r3, #0x10]
	ldr r0, [r2, #0xc]
	movs r1, #1
	orrs r0, r1
	b _08012E58
	.align 2, 0
_08012E48: .4byte gUnk_03004790
_08012E4C:
	ldr r0, _08012E68 @ => 0x03004790
	ldr r2, [r0, #0xc]
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_08012E58:
	str r0, [r2, #0xc]
_08012E5A:
	movs r0, #0xb2
	bl FUN_0804DE0C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08012E68: .4byte gUnk_03004790

	thumb_func_start FUN_08012E6C
FUN_08012E6C: @ 0x08012E6C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	str r0, [sp]
	ldrb r0, [r0]
	mov r8, r0
	ldr r5, _08012EC0 @ => 0x030036C0
	adds r0, r5, #0
	adds r0, #0x94
	ldrb r6, [r0]
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, [sp]
	bl FUN_0801FF60
	lsls r4, r6, #2
	adds r7, r5, #0
	adds r7, #0x6c
	adds r1, r4, r7
	str r0, [r1]
	mov r0, sp
	bl FUN_08050940
	adds r3, r0, #0
	adds r1, r5, #0
	adds r1, #0x4c
	adds r4, r4, r1
	str r3, [r4]
	cmp r6, #0
	bne _08012EC4
	ldr r0, [r5, #0x4c]
	movs r1, #0x96
	lsls r1, r1, #0x10
	movs r2, #0xd8
	lsls r2, r2, #0xd
	bl FUN_08001728
	b _08012EE2
	.align 2, 0
_08012EC0: .4byte gUnk_030036C0
_08012EC4:
	subs r0, r6, #1
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r1, [r1]
	adds r0, r0, r7
	ldr r0, [r0]
	adds r0, #3
	lsls r0, r0, #0x10
	ldr r1, [r1, #0x18]
	adds r1, r1, r0
	movs r2, #0xd8
	lsls r2, r2, #0xd
	adds r0, r3, #0
	bl FUN_08001728
_08012EE2:
	ldr r2, _08012F08 @ => 0x030036C0
	lsls r0, r6, #2
	adds r1, r2, #0
	adds r1, #0x4c
	adds r0, r0, r1
	ldr r0, [r0]
	mov r1, r8
	strh r1, [r0, #0xa]
	adds r2, #0x94
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012F08: .4byte gUnk_030036C0

	thumb_func_start FUN_08012F0C
FUN_08012F0C: @ 0x08012F0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _08012F78 @ => 0x030036C0
	adds r6, r4, #0
	adds r6, #0x9d
	ldrb r1, [r6]
	cmp r1, #6
	bne _08012F9C
	adds r5, r4, #0
	adds r5, #0x94
	ldrb r3, [r5]
	cmp r3, #0
	beq _08012F80
	ldr r6, _08012F7C @ => 0x03003DFC
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x10
	bl FUN_0802CB40
	movs r3, #0
	ldrb r0, [r5]
	cmp r3, r0
	bhs _08012F5C
	adds r2, r4, #0
	adds r2, #0x4c
_08012F44:
	adds r1, r3, r6
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r0, [r0, #0xa]
	strb r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldrb r1, [r5]
	cmp r3, r1
	blo _08012F44
_08012F5C:
	ldr r0, _08012F78 @ => 0x030036C0
	adds r0, #0x98
	movs r1, #1
	str r1, [r0]
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl FUN_0801A080
	movs r0, #0xb9
	bl FUN_0804DE0C
	b _0801308C
	.align 2, 0
_08012F78: .4byte gUnk_030036C0
_08012F7C: .4byte gSlotName
_08012F80:
	adds r0, r4, #0
	adds r0, #0x98
	str r3, [r0]
	ldr r0, _08012F98 @ => 0x03003DFC
	movs r1, #0
	movs r2, #0x10
	bl FUN_0802CB40
	movs r0, #0xbe
	bl FUN_0804DE0C
	b _0801308C
	.align 2, 0
_08012F98: .4byte gSlotName
_08012F9C:
	ldr r0, _08012FD0 @ => 0x03005E20
	ldrb r0, [r0, #0xa]
	cmp r0, #2
	bne _08012FF0
	adds r0, r4, #0
	adds r0, #0x94
	ldrb r0, [r0]
	cmp r0, #5
	bhi _08012FD8
	ldr r3, _08012FD4 @ => 0x0805B064
	adds r2, r4, #0
	adds r2, #0x9c
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x90
	ldr r2, [r1]
	movs r1, #0xa8
	muls r1, r2, r1
	adds r0, r0, r1
	adds r0, r0, r3
	b _08013058
	.align 2, 0
_08012FD0: .4byte gUnk_03005E20
_08012FD4: .4byte KBD_KeyStringIDs
_08012FD8:
	adds r0, r4, #0
	adds r0, #0x9e
	strb r1, [r0]
	movs r0, #6
	strb r0, [r6]
	adds r1, r4, #0
	adds r1, #0x9c
	movs r0, #3
	strb r0, [r1]
	bl FUN_08012D64
	b _0801308C
_08012FF0:
	ldr r2, _0801306C @ => 0x0805B064
	mov sl, r2
	movs r0, #0x9c
	adds r0, r0, r4
	mov sb, r0
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	mov r1, sb
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r2, #0x90
	adds r2, r2, r4
	mov r8, r2
	ldr r1, [r2]
	movs r7, #0xa8
	muls r1, r7, r1
	adds r0, r0, r1
	add r0, sl
	ldr r0, [r0]
	bl FUN_08050820
	bl FUN_0801FF60
	lsls r0, r0, #0x18
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	lsrs r5, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x94
	ldrb r0, [r0]
	cmp r0, #7
	bhi _08013070
	bl FUN_0801347C
	adds r0, r0, r5
	cmp r0, #0x51
	bgt _08013070
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	mov r2, sb
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #2
	mov r2, r8
	ldr r1, [r2]
	muls r1, r7, r1
	adds r0, r0, r1
	add r0, sl
_08013058:
	ldr r0, [r0]
	bl FUN_08050820
	bl FUN_08012E6C
	movs r0, #0xba
	bl FUN_0804DE0C
	b _0801308C
	.align 2, 0
_0801306C: .4byte KBD_KeyStringIDs
_08013070:
	ldr r1, _0801309C @ => 0x030036C0
	adds r3, r1, #0
	adds r3, #0x9d
	ldrb r0, [r3]
	adds r2, r1, #0
	adds r2, #0x9e
	strb r0, [r2]
	movs r0, #6
	strb r0, [r3]
	adds r1, #0x9c
	movs r0, #3
	strb r0, [r1]
	bl FUN_08012D64
_0801308C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801309C: .4byte gUnk_030036C0

	thumb_func_start FUN_080130A0
FUN_080130A0: @ 0x080130A0
	push {r4, r5, lr}
	ldr r3, _080130F8 @ => 0x030036C0
	adds r4, r3, #0
	adds r4, #0x94
	ldrb r0, [r4]
	adds r2, r0, #0
	cmp r2, #0
	beq _080130FC
	subs r0, #1
	strb r0, [r4]
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r5, r3, #0
	adds r5, #0x4c
	adds r0, r0, r5
	ldr r2, [r0]
	cmp r2, #0
	beq _080130DE
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	ldr r0, [r2, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0xc]
_080130DE:
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r1, r3, #0
	adds r1, #0x6c
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	bl FUN_0801347C
	movs r0, #0xb1
	bl FUN_0804DE0C
	b _0801310E
	.align 2, 0
_080130F8: .4byte gUnk_030036C0
_080130FC:
	adds r0, r3, #0
	adds r0, #0x98
	str r2, [r0]
	ldr r1, _08013114 @ => 0x03004720
	movs r0, #2
	str r0, [r1, #4]
	movs r0, #0xb9
	bl FUN_0804DE0C
_0801310E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08013114: .4byte gUnk_03004720

	thumb_func_start FUN_08013118
FUN_08013118: @ 0x08013118
	push {r4, lr}
	sub sp, #8
	ldr r0, _0801314C @ => 0x030036C0
	adds r1, r0, #0
	adds r1, #0x90
	ldr r0, [r1]
	cmp r0, #0
	bne _08013158
	movs r0, #1
	str r0, [r1]
	ldr r4, _08013150 @ => 0x03004790
	ldr r0, [r4, #0x14]
	ldr r2, _08013154 @ => 0x0805ADCC
	movs r3, #4
	ldrsh r1, [r2, r3]
	lsls r1, r1, #0x10
	movs r3, #6
	ldrsh r2, [r2, r3]
	lsls r2, r2, #0x10
	bl FUN_08001728
	ldr r0, [r4, #0x14]
	movs r1, #1
	bl FUN_08000E44
	b _0801317A
	.align 2, 0
_0801314C: .4byte gUnk_030036C0
_08013150: .4byte gUnk_03004790
_08013154: .4byte ROMREF_0805ADCC
_08013158:
	movs r0, #0
	str r0, [r1]
	ldr r4, _080131C8 @ => 0x03004790
	ldr r0, [r4, #0x14]
	ldr r2, _080131CC @ => 0x0805ADCC
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r1, r1, #0x10
	movs r3, #2
	ldrsh r2, [r2, r3]
	lsls r2, r2, #0x10
	bl FUN_08001728
	ldr r0, [r4, #0x14]
	movs r1, #0
	bl FUN_08000E44
_0801317A:
	movs r0, #0xc
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0x12
	movs r2, #7
	movs r3, #0xb
	bl FUN_0800C7A8
	bl FUN_0801A15C
	movs r0, #1
	movs r1, #0
	movs r2, #1
	rsbs r2, r2, #0
	bl FUN_0801FEA0
	ldr r1, _080131D0 @ => 0x030036C0
	ldrh r0, [r1, #0xc]
	adds r0, #0x1a
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r1, #0x90
	ldr r0, [r1]
	ldr r2, _080131D4 @ => 0x0805AF3C
	cmp r0, #0
	bne _080131B2
	ldr r2, _080131D8 @ => 0x0805AE14
_080131B2:
	adds r0, r3, #0
	movs r1, #0x25
	bl FUN_080506E4
	movs r0, #0xad
	bl FUN_0804DE0C
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080131C8: .4byte gUnk_03004790
_080131CC: .4byte ROMREF_0805ADCC
_080131D0: .4byte gUnk_030036C0
_080131D4: .4byte KBD_NoCapsLayout
_080131D8: .4byte KBD_CapsLayout

	thumb_func_start FUN_080131DC
FUN_080131DC: @ 0x080131DC
	push {lr}
	ldr r0, _08013208 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08013214
	ldr r0, _0801320C @ => 0x030036C0
	adds r2, r0, #0
	adds r2, #0x9c
	ldr r1, _08013210 @ => 0x0805ADD4
	adds r0, #0x9d
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bls _08013238
	subs r0, r1, #1
	b _08013236
	.align 2, 0
_08013208: .4byte gUnk_030042B0
_0801320C: .4byte gUnk_030036C0
_08013210: .4byte KBD_ColumnData
_08013214:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08013238
	ldr r0, _08013240 @ => 0x030036C0
	adds r2, r0, #0
	adds r2, #0x9c
	ldr r1, _08013244 @ => 0x0805ADD4
	adds r0, #0x9d
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r2]
	ldrb r0, [r0, #1]
	cmp r1, r0
	bhs _08013238
	adds r0, r1, #1
_08013236:
	strb r0, [r2]
_08013238:
	bl FUN_08012D64
	pop {r0}
	bx r0
	.align 2, 0
_08013240: .4byte gUnk_030036C0
_08013244: .4byte KBD_ColumnData

	thumb_func_start FUN_08013248
FUN_08013248: @ 0x08013248
	push {r4, r5, r6, lr}
	ldr r1, _08013274 @ => 0x030036C0
	adds r4, r1, #0
	adds r4, #0x9d
	ldrb r2, [r4]
	movs r0, #0x9e
	adds r0, r0, r1
	mov ip, r0
	strb r2, [r0]
	ldr r0, _08013278 @ => 0x030042B0
	ldrh r3, [r0, #0xc]
	movs r0, #0x40
	ands r0, r3
	adds r5, r1, #0
	cmp r0, #0
	beq _08013286
	lsls r0, r2, #0x18
	cmp r0, #0
	beq _0801327C
	subs r0, r2, #1
	b _0801329C
	.align 2, 0
_08013274: .4byte gUnk_030036C0
_08013278: .4byte gUnk_030042B0
_0801327C:
	adds r1, r5, #0
	adds r1, #0x9f
	movs r0, #1
	strb r0, [r1]
	b _0801329E
_08013286:
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _0801329E
	mov r6, ip
	strb r2, [r6]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bhi _0801329E
	adds r0, r2, #1
_0801329C:
	strb r0, [r4]
_0801329E:
	adds r2, r5, #0
	adds r4, r2, #0
	adds r4, #0x9c
	ldr r1, _080132C8 @ => 0x0805ADD4
	adds r0, r2, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r3, [r4]
	ldrb r6, [r0]
	cmp r3, r6
	bne _080132CC
	adds r0, r2, #0
	adds r0, #0x9d
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	b _080132DE
	.align 2, 0
_080132C8: .4byte KBD_ColumnData
_080132CC:
	ldrb r0, [r0, #1]
	cmp r3, r0
	bne _080132E0
	adds r0, r5, #0
	adds r0, #0x9d
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #1]
_080132DE:
	strb r0, [r4]
_080132E0:
	bl FUN_08012D64
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080132EC
FUN_080132EC: @ 0x080132EC
	push {r4, lr}
	sub sp, #8
	ldr r0, _08013320 @ => 0x030036C0
	adds r1, r0, #0
	adds r1, #0x90
	ldr r0, [r1]
	cmp r0, #0
	bne _0801332C
	movs r0, #1
	str r0, [r1]
	ldr r4, _08013324 @ => 0x03004790
	ldr r0, [r4, #0x14]
	ldr r2, _08013328 @ => 0x0805ADCC
	movs r3, #4
	ldrsh r1, [r2, r3]
	lsls r1, r1, #0x10
	movs r3, #6
	ldrsh r2, [r2, r3]
	lsls r2, r2, #0x10
	bl FUN_08001728
	ldr r0, [r4, #0x14]
	movs r1, #1
	bl FUN_08000E44
	b _0801334E
	.align 2, 0
_08013320: .4byte gUnk_030036C0
_08013324: .4byte gUnk_03004790
_08013328: .4byte ROMREF_0805ADCC
_0801332C:
	movs r0, #0
	str r0, [r1]
	ldr r4, _0801339C @ => 0x03004790
	ldr r0, [r4, #0x14]
	ldr r2, _080133A0 @ => 0x0805ADCC
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r1, r1, #0x10
	movs r3, #2
	ldrsh r2, [r2, r3]
	lsls r2, r2, #0x10
	bl FUN_08001728
	ldr r0, [r4, #0x14]
	movs r1, #0
	bl FUN_08000E44
_0801334E:
	movs r0, #0xc
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0x12
	movs r2, #7
	movs r3, #0xb
	bl FUN_0800C7A8
	bl FUN_0801A15C
	movs r0, #1
	movs r1, #0
	movs r2, #1
	rsbs r2, r2, #0
	bl FUN_0801FEA0
	ldr r1, _080133A4 @ => 0x030036C0
	ldrh r0, [r1, #0xc]
	adds r0, #0x1a
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r1, #0x90
	ldr r0, [r1]
	ldr r2, _080133A8 @ => 0x0805AF3C
	cmp r0, #0
	bne _08013386
	ldr r2, _080133AC @ => 0x0805AE14
_08013386:
	adds r0, r3, #0
	movs r1, #0x25
	bl FUN_080506E4
	movs r0, #0xad
	bl FUN_0804DE0C
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801339C: .4byte gUnk_03004790
_080133A0: .4byte ROMREF_0805ADCC
_080133A4: .4byte gUnk_030036C0
_080133A8: .4byte KBD_NoCapsLayout
_080133AC: .4byte KBD_CapsLayout

	thumb_func_start FUN_080133B0
FUN_080133B0: @ 0x080133B0
	push {lr}
	sub sp, #8
	movs r0, #0xc
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0x12
	movs r2, #7
	movs r3, #0xb
	bl FUN_0800C7A8
	bl FUN_0801A15C
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #1
	movs r1, #0
	bl FUN_0801FEA0
	ldr r1, _080133FC @ => 0x030036C0
	ldrh r0, [r1, #0xc]
	adds r0, #0x1a
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r1, #0x90
	ldr r0, [r1]
	ldr r2, _08013400 @ => 0x0805AF3C
	cmp r0, #0
	bne _080133EC
	ldr r2, _08013404 @ => 0x0805AE14
_080133EC:
	adds r0, r3, #0
	movs r1, #0x25
	bl FUN_080506E4
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_080133FC: .4byte gUnk_030036C0
_08013400: .4byte KBD_NoCapsLayout
_08013404: .4byte KBD_CapsLayout

	thumb_func_start FUN_08013408
FUN_08013408: @ 0x08013408
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _0801342C @ => 0x030036C0
	adds r0, #0x90
	ldr r0, [r0]
	ldr r2, _08013430 @ => 0x0805AF3C
	cmp r0, r1
	bne _08013420
	ldr r2, _08013434 @ => 0x0805AE14
_08013420:
	adds r0, r3, #0
	movs r1, #0x25
	bl FUN_080506E4
	pop {r0}
	bx r0
	.align 2, 0
_0801342C: .4byte gUnk_030036C0
_08013430: .4byte KBD_NoCapsLayout
_08013434: .4byte KBD_CapsLayout

	thumb_func_start FUN_08013438
FUN_08013438: @ 0x08013438
	push {lr}
	ldr r2, _0801346C @ => 0x030036C0
	adds r0, r2, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	adds r3, r2, #0
	adds r3, #0x9d
	movs r1, #0
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x9f
	strb r1, [r0]
	ldr r0, _08013470 @ => 0x03004790
	ldr r0, [r0, #0xc]
	ldr r1, [r0, #0xc]
	movs r2, #1
	orrs r1, r2
	str r1, [r0, #0xc]
	ldr r1, _08013474 @ => 0x0805F724
	ldr r2, _08013478 @ => 0x09FB6248
	ldr r2, [r2, #8]
	movs r3, #0
	bl FUN_0800192C
	pop {r0}
	bx r0
	.align 2, 0
_0801346C: .4byte gUnk_030036C0
_08013470: .4byte gUnk_03004790
_08013474: .4byte ROMREF_0805F724
_08013478: .4byte ROMREF_09FB6248

	thumb_func_start FUN_0801347C
FUN_0801347C: @ 0x0801347C
	push {r4, r5, r6, lr}
	ldr r0, _080134C0 @ => 0x030036C0
	adds r3, r0, #0
	adds r3, #0x8c
	ldr r1, [r0, #0x6c]
	str r1, [r3]
	movs r2, #1
	adds r1, r0, #0
	adds r1, #0x94
	ldrb r1, [r1]
	adds r6, r0, #0
	cmp r2, r1
	bhi _080134B4
	adds r5, r6, #0
	adds r5, #0x6c
	adds r4, r1, #0
_0801349C:
	ldr r1, [r3]
	adds r1, #3
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r3]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r4
	bls _0801349C
_080134B4:
	adds r0, r6, #0
	adds r0, #0x8c
	ldr r0, [r0]
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080134C0: .4byte gUnk_030036C0
