.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_080407C0
FUN_080407C0: @ 0x080407C0
	push {lr}
	sub sp, #8
	movs r0, #2
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0xf
	movs r2, #0x11
	movs r3, #0x1c
	bl FUN_0800C7A8
	ldr r0, _08040808 @ => 0x03006440
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08040814
	movs r0, #3
	movs r1, #1
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _0804080C @ => 0x0000072D
	bl FUN_08050820
	adds r3, r0, #0
	ldr r0, _08040810 @ => 0x000001E9
	movs r1, #1
	str r1, [sp]
	movs r1, #0x78
	movs r2, #0x88
	bl FUN_0801F8B8
	b _08040834
	.align 2, 0
_08040808: .4byte gUnk_03006440
_0804080C: .4byte 0x0000072D
_08040810: .4byte 0x000001E9
_08040814:
	movs r0, #3
	movs r1, #1
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _0804083C @ => 0x0000072E
	bl FUN_08050820
	adds r3, r0, #0
	ldr r0, _08040840 @ => 0x000001E9
	movs r1, #1
	str r1, [sp]
	movs r1, #0x78
	movs r2, #0x88
	bl FUN_0801F8B8
_08040834:
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_0804083C: .4byte 0x0000072E
_08040840: .4byte 0x000001E9

	thumb_func_start FUN_08040844
FUN_08040844: @ 0x08040844
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r1, #0
	ldr r4, _080408A8 @ => 0x03004720
	str r0, [r4, #0x14]
	movs r5, #1
	str r5, [r4, #0xc]
	movs r0, #0x14
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #2
	movs r2, #5
	movs r3, #0x1c
	bl FUN_0800C7A8
	movs r0, #2
	bl FUN_0800C4D0
	movs r0, #1
	bl FUN_0800C4BC
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	adds r0, r6, #0
	bl FUN_08050820
	adds r3, r0, #0
	str r5, [sp]
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x28
	bl FUN_0801F8B8
	ldr r1, [r4, #0xc]
	adds r0, r1, #0
	bl FUN_080403F8
	ldr r1, [r4, #0xc]
	movs r0, #0
	bl FUN_080403F8
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080408A8: .4byte gUnk_03004720

	thumb_func_start FUN_080408AC
FUN_080408AC: @ 0x080408AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldrb r1, [r0]
	ldrb r4, [r0, #1]
	ldrb r2, [r0, #2]
	ldrb r5, [r0, #3]
	ldrb r6, [r0, #4]
	ldrb r3, [r0, #6]
	ldrb r7, [r0, #5]
	mov r8, r7
	ldrb r7, [r0, #7]
	mov sb, r7
	ldrb r7, [r0, #8]
	str r7, [sp, #4]
	ldrb r7, [r0, #9]
	ldrb r0, [r0, #0xa]
	mov sl, r0
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #7
	movs r0, #3
	ands r2, r0
	lsls r2, r2, #5
	orrs r1, r2
	movs r0, #0x1f
	ands r3, r0
	orrs r1, r3
	mov r0, sp
	strb r1, [r0]
	movs r1, #1
	bl FUN_08044644
	mov r0, sp
	movs r1, #7
	ands r4, r1
	lsls r4, r4, #5
	mov r2, r8
	movs r1, #0x1f
	ands r2, r1
	orrs r4, r2
	strb r4, [r0]
	movs r1, #1
	bl FUN_08044644
	mov r1, sp
	movs r0, #0xf
	ands r5, r0
	lsls r5, r5, #4
	mov r2, sl
	ands r2, r0
	orrs r5, r2
	strb r5, [r1]
	mov r0, sp
	movs r1, #1
	bl FUN_08044644
	mov r0, sp
	movs r1, #7
	ands r6, r1
	lsls r6, r6, #5
	mov r2, sb
	movs r1, #0x1f
	ands r2, r1
	orrs r6, r2
	strb r6, [r0]
	movs r1, #1
	bl FUN_08044644
	mov r0, sp
	movs r2, #0x1f
	ands r7, r2
	ldr r2, [sp, #4]
	lsls r1, r2, #5
	orrs r7, r1
	strb r7, [r0]
	movs r1, #1
	bl FUN_08044644
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_08040960
FUN_08040960: @ 0x08040960
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	mov r0, sp
	movs r1, #1
	bl FUN_08044558
	mov r0, sp
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1f
	strb r0, [r5]
	movs r0, #0x60
	ands r0, r1
	lsrs r0, r0, #5
	strb r0, [r5, #2]
	movs r4, #0x1f
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r5, #6]
	mov r0, sp
	movs r1, #1
	bl FUN_08044558
	mov r0, sp
	ldrb r1, [r0]
	lsrs r0, r1, #5
	strb r0, [r5, #1]
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r5, #5]
	mov r0, sp
	movs r1, #1
	bl FUN_08044558
	mov r0, sp
	ldrb r1, [r0]
	lsrs r0, r1, #4
	strb r0, [r5, #3]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r5, #0xa]
	mov r0, sp
	movs r1, #1
	bl FUN_08044558
	mov r0, sp
	ldrb r1, [r0]
	lsrs r0, r1, #5
	strb r0, [r5, #4]
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r5, #7]
	mov r0, sp
	movs r1, #1
	bl FUN_08044558
	mov r0, sp
	ldrb r0, [r0]
	ands r4, r0
	strb r4, [r5, #9]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1d
	strb r0, [r5, #8]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_080409EC
FUN_080409EC: @ 0x080409EC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x28
	bl FUN_08029704
	adds r4, #0x2c
	adds r0, r4, #0
	bl FUN_08038984
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_08040A04
FUN_08040A04: @ 0x08040A04
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x10
	bl FUN_08044558
	adds r0, r4, #0
	adds r0, #0x10
	bl FUN_08040960
	adds r0, r4, #0
	adds r0, #0x1c
	bl FUN_0804AC88
	adds r0, r4, #0
	adds r0, #0x28
	bl FUN_08029718
	adds r0, r4, #0
	adds r0, #0x2c
	bl FUN_08038C30
	adds r0, r4, #0
	adds r0, #0x48
	movs r1, #1
	bl FUN_08044558
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08040A40
FUN_08040A40: @ 0x08040A40
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x10
	bl FUN_08044644
	adds r0, r4, #0
	adds r0, #0x10
	bl FUN_080408AC
	adds r0, r4, #0
	adds r0, #0x1c
	bl FUN_0804ACA4
	adds r0, r4, #0
	adds r0, #0x28
	bl FUN_0802970C
	adds r0, r4, #0
	adds r0, #0x2c
	bl FUN_08038C24
	adds r0, r4, #0
	adds r0, #0x48
	movs r1, #1
	bl FUN_08044644
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08040A7C
FUN_08040A7C: @ 0x08040A7C
	push {r4, lr}
	ldr r0, _08040AB8 @ => 0x0000029E
	bl FUN_080213F8
	cmp r0, #0
	beq _08040B04
	ldr r4, _08040ABC @ => 0x03005C40
	ldr r0, [r4, #0x14]
	cmp r0, #1
	beq _08040B04
	bl FUN_08023680
	cmp r0, #0
	beq _08040B04
	ldrb r1, [r4, #0x10]
	cmp r1, #8
	bne _08040AE0
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _08040AC0
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08040B04
	movs r0, #7
	bl FUN_08040F7C
	b _08040B04
	.align 2, 0
_08040AB8: .4byte 0x0000029E
_08040ABC: .4byte gUnk_03005C40
_08040AC0:
	ldrh r0, [r4, #0xc]
	subs r0, #1
	strh r0, [r4, #0xc]
	lsls r0, r0, #0x10
	ldr r1, _08040ADC @ => 0xFFFF0000
	cmp r0, r1
	bne _08040B04
	bl FUN_08040D00
	movs r0, #0x96
	lsls r0, r0, #3
	strh r0, [r4, #0xc]
	b _08040B04
	.align 2, 0
_08040ADC: .4byte 0xFFFF0000
_08040AE0:
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _08040AEC
	subs r0, #1
	strh r0, [r4, #0xa]
	b _08040B04
_08040AEC:
	cmp r1, #7
	beq _08040AF6
	bl FUN_08040FA8
	b _08040B04
_08040AF6:
	bl FUN_08040FA8
	movs r0, #0x96
	strh r0, [r4, #8]
	movs r0, #0
	bl FUN_08040FD8
_08040B04:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08040B0C
FUN_08040B0C: @ 0x08040B0C
	push {r4, lr}
	ldr r0, _08040B24 @ => 0x03005C40
	ldrb r1, [r0, #0x10]
	adds r4, r0, #0
	cmp r1, #7
	bls _08040B1A
	b _08040CDE
_08040B1A:
	lsls r0, r1, #2
	ldr r1, _08040B28 @ =_08040B2C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08040B24: .4byte gUnk_03005C40
_08040B28: .4byte _08040B2C
_08040B2C: @ jump table
	.4byte _08040B4C @ case 0
	.4byte _08040B88 @ case 1
	.4byte _08040BB4 @ case 2
	.4byte _08040BF0 @ case 3
	.4byte _08040C1C @ case 4
	.4byte _08040C4C @ case 5
	.4byte _08040C84 @ case 6
	.4byte _08040CC8 @ case 7
_08040B4C:
	ldr r0, _08040B74 @ => 0x03003DFC
	bl FUN_08020320
	ldr r4, _08040B78 @ => 0x03005C40
	ldrh r0, [r4, #0xe]
	bl FUN_080203B8
	ldr r1, _08040B7C @ => 0x03005C60
	ldr r0, _08040B80 @ => 0x000007F2
	strh r0, [r1]
	movs r0, #0xb5
	movs r1, #0xf0
	movs r2, #0xf
	movs r3, #0
	bl FUN_0802D5E8
	ldr r1, _08040B84 @ => 0x03005C90
	str r0, [r1, #8]
	b _08040BD2
	.align 2, 0
_08040B74: .4byte gSlotName
_08040B78: .4byte gUnk_03005C40
_08040B7C: .4byte gChoiceIDs
_08040B80: .4byte 0x000007F2
_08040B84: .4byte gUnk_03005C90
_08040B88:
	ldrh r0, [r4, #0xe]
	bl FUN_080203A8
	ldr r1, _08040BA8 @ => 0x03005C60
	ldr r0, _08040BAC @ => 0x000007F4
	strh r0, [r1]
	movs r0, #0xb5
	movs r1, #0xf0
	movs r2, #0xf
	movs r3, #0
	bl FUN_0802D5E8
	ldr r1, _08040BB0 @ => 0x03005C90
	str r0, [r1, #8]
	b _08040BD2
	.align 2, 0
_08040BA8: .4byte gChoiceIDs
_08040BAC: .4byte 0x000007F4
_08040BB0: .4byte gUnk_03005C90
_08040BB4:
	ldr r1, _08040BE0 @ => 0x03005C60
	ldr r0, _08040BE4 @ => 0x000007F7
	strh r0, [r1]
	movs r0, #0xb5
	movs r1, #0xf5
	movs r2, #0xf
	movs r3, #0
	bl FUN_0802D5E8
	ldr r1, _08040BE8 @ => 0x03005C90
	str r0, [r1, #8]
	ldr r4, _08040BEC @ => 0x03005C40
	ldrh r0, [r4, #0xe]
	bl FUN_080203A8
_08040BD2:
	bl FUN_08041BF0
	ldrh r0, [r4, #0xe]
	bl FUN_0802127C
	b _08040CDE
	.align 2, 0
_08040BE0: .4byte gChoiceIDs
_08040BE4: .4byte 0x000007F7
_08040BE8: .4byte gUnk_03005C90
_08040BEC: .4byte gUnk_03005C40
_08040BF0:
	ldr r1, _08040C0C @ => 0x03003DF0
	ldr r0, _08040C10 @ => 0x0000036A
	adds r1, r1, r0
	ldrh r2, [r1]
	movs r0, #8
	orrs r0, r2
	strh r0, [r1]
	ldr r1, _08040C14 @ => 0x03005C60
	ldr r0, _08040C18 @ => 0x000007F6
	strh r0, [r1]
	movs r0, #0xb5
	movs r1, #0xf5
	b _08040C30
	.align 2, 0
_08040C0C: .4byte gUnk_03003DF0
_08040C10: .4byte 0x0000036A
_08040C14: .4byte gChoiceIDs
_08040C18: .4byte 0x000007F6
_08040C1C:
	ldrh r0, [r4, #0xe]
	adds r0, #0xda
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, _08040C44 @ => 0x03005C60
	movs r0, #0xff
	lsls r0, r0, #3
	strh r0, [r1]
	movs r0, #0xb5
	adds r1, r2, #0
_08040C30:
	movs r2, #0xf
	movs r3, #0
	bl FUN_0802D5E8
	ldr r1, _08040C48 @ => 0x03005C90
	str r0, [r1, #8]
	bl FUN_08041BF0
	b _08040CDE
	.align 2, 0
_08040C44: .4byte gChoiceIDs
_08040C48: .4byte gUnk_03005C90
_08040C4C:
	ldrh r0, [r4, #0xe]
	bl FUN_080203A8
	ldr r1, _08040C78 @ => 0x03005C60
	ldr r0, _08040C7C @ => 0x000007FA
	strh r0, [r1]
	movs r0, #0xb5
	movs r1, #0xf0
	movs r2, #0xf
	movs r3, #0
	bl FUN_0802D5E8
	ldr r1, _08040C80 @ => 0x03005C90
	str r0, [r1, #8]
	bl FUN_08041BF0
	ldrh r0, [r4, #0xe]
	rsbs r0, r0, #0
	bl FUN_0802127C
	b _08040CDE
	.align 2, 0
_08040C78: .4byte gChoiceIDs
_08040C7C: .4byte 0x000007FA
_08040C80: .4byte gUnk_03005C90
_08040C84:
	ldrh r0, [r4, #0xe]
	adds r0, #0xda
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, _08040CB8 @ => 0x03005C60
	ldr r0, _08040CBC @ => 0x000007F3
	strh r0, [r1]
	movs r0, #0xb5
	adds r1, r2, #0
	movs r2, #0xf
	movs r3, #0
	bl FUN_0802D5E8
	ldr r4, _08040CC0 @ => 0x03005C90
	str r0, [r4, #8]
	bl FUN_08041BF0
	ldr r0, [r4, #8]
	ldr r1, _08040CC4 @ => 0x0000011F
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
	b _08040CDE
	.align 2, 0
_08040CB8: .4byte gChoiceIDs
_08040CBC: .4byte 0x000007F3
_08040CC0: .4byte gUnk_03005C90
_08040CC4: .4byte 0x0000011F
_08040CC8:
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_080213A4
	ldr r0, [r4]
	bl FUN_0801B914
	movs r0, #0
	strh r0, [r4, #8]
	str r0, [r4, #4]
	str r0, [r4]
_08040CDE:
	movs r0, #0
	bl FUN_08040FD8
	ldr r1, _08040CFC @ => 0x03005C40
	movs r0, #0
	strh r0, [r1, #0xa]
	movs r0, #0x96
	lsls r0, r0, #3
	strh r0, [r1, #0xc]
	movs r0, #8
	strb r0, [r1, #0x10]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08040CFC: .4byte gUnk_03005C40

	thumb_func_start FUN_08040D00
FUN_08040D00: @ 0x08040D00
	push {r4, r5, lr}
	ldr r1, _08040D7C @ => 0x03005C40
	ldrh r0, [r1, #8]
	cmp r0, #0
	bne _08040D74
	ldr r0, [r1, #0x14]
	cmp r0, #1
	beq _08040D74
	movs r0, #3
	bl FUN_080425E4
	cmp r0, #1
	bne _08040D74
	ldr r0, _08040D80 @ => 0x03003DF0
	bl FUN_080143D0
	ldr r5, _08040D84 @ => 0x09FB6C60
	cmp r0, #3
	beq _08040D28
	ldr r5, _08040D88 @ => 0x09FB6C58
_08040D28:
	movs r0, #1
	movs r1, #0x64
	bl FUN_080424F8
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r4, #0
	ldrb r1, [r5]
	cmp r2, r1
	bls _08040D54
_08040D3C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bhi _08040D54
	adds r0, r5, r4
	ldrb r0, [r0]
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r2, r1
	bhi _08040D3C
_08040D54:
	adds r0, r4, #0
	bl FUN_08040D8C
	cmp r0, #1
	bne _08040D74
	ldr r1, _08040D7C @ => 0x03005C40
	ldrb r0, [r1, #0x10]
	cmp r0, #8
	bne _08040D74
	strb r4, [r1, #0x10]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r1, #0xa]
	movs r0, #1
	bl FUN_08040FD8
_08040D74:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08040D7C: .4byte gUnk_03005C40
_08040D80: .4byte gUnk_03003DF0
_08040D84: .4byte ROMREF_09FB6C60
_08040D88: .4byte ROMREF_09FB6C58

	thumb_func_start FUN_08040D8C
FUN_08040D8C: @ 0x08040D8C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x24
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0
	cmp r0, #8
	bls _08040DA0
	b _08040F2A
_08040DA0:
	lsls r0, r0, #2
	ldr r1, _08040DAC @ =_08040DB0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08040DAC: .4byte _08040DB0
_08040DB0: @ jump table
	.4byte _08040DD4 @ case 0
	.4byte _08040DE8 @ case 1
	.4byte _08040DF4 @ case 2
	.4byte _08040F28 @ case 3
	.4byte _08040E00 @ case 4
	.4byte _08040E5C @ case 5
	.4byte _08040E68 @ case 6
	.4byte _08040F28 @ case 7
	.4byte _08040F2A @ case 8
_08040DD4:
	movs r1, #0xfa
	lsls r1, r1, #1
	movs r0, #0x19
	bl FUN_080424F8
	ldr r1, _08040DE4 @ => 0x03005C40
	strh r0, [r1, #0xe]
	b _08040F28
	.align 2, 0
_08040DE4: .4byte gUnk_03005C40
_08040DE8:
	ldr r1, _08040DF0 @ => 0x03005C40
	movs r0, #0x7d
	strh r0, [r1, #0xe]
	b _08040F28
	.align 2, 0
_08040DF0: .4byte gUnk_03005C40
_08040DF4:
	ldr r1, _08040DFC @ => 0x03005C40
	movs r0, #0x32
	strh r0, [r1, #0xe]
	b _08040F28
	.align 2, 0
_08040DFC: .4byte gUnk_03005C40
_08040E00:
	movs r0, #0xd
	movs r1, #0x26
	bl FUN_080424F8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _08040E4C @ => 0x03005C40
	strh r4, [r0, #0xe]
	movs r3, #1
	ldr r1, _08040E50 @ => 0x03003DF0
	movs r2, #0xfe
	lsls r2, r2, #2
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r4, r0
	beq _08040E48
	ldr r6, _08040E54 @ => 0x000003F9
	adds r0, r1, r6
	ldrb r0, [r0]
	cmp r4, r0
	beq _08040E48
	movs r5, #0
	ldr r0, _08040E58 @ => 0x080789EA
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, r4
	beq _08040E48
_08040E36:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bhi _08040F2A
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, r4
	bne _08040E36
_08040E48:
	movs r3, #0
	b _08040F2A
	.align 2, 0
_08040E4C: .4byte gUnk_03005C40
_08040E50: .4byte gUnk_03003DF0
_08040E54: .4byte 0x000003F9
_08040E58: .4byte ROMREF_080789EA
_08040E5C:
	ldr r1, _08040E64 @ => 0x03005C40
	movs r0, #0xc8
	strh r0, [r1, #0xe]
	b _08040F28
	.align 2, 0
_08040E64: .4byte gUnk_03005C40
_08040E68:
	mov r0, sp
	movs r1, #0x1a
	str r3, [sp, #0x20]
	bl FUN_0803ADAC
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r7, #0
	movs r5, #0
	ldr r3, [sp, #0x20]
	cmp r5, r2
	bhs _08040ECC
_08040E80:
	mov r0, sp
	adds r0, r0, r5
	mov r8, r0
	ldrb r4, [r0]
	adds r0, r4, #0
	str r2, [sp, #0x1c]
	str r3, [sp, #0x20]
	bl FUN_0803AE1C
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	cmp r0, #2
	bne _08040EC2
	ldr r1, _08040F00 @ => 0x03003DF0
	movs r6, #0xfe
	lsls r6, r6, #2
	adds r0, r1, r6
	ldrb r0, [r0]
	cmp r4, r0
	beq _08040EC2
	adds r6, #1
	adds r0, r1, r6
	ldrb r0, [r0]
	cmp r4, r0
	beq _08040EC2
	mov r0, sp
	adds r1, r0, r7
	mov r4, r8
	ldrb r0, [r4]
	strb r0, [r1]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_08040EC2:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r2
	blo _08040E80
_08040ECC:
	adds r2, r7, #0
	cmp r2, #0
	beq _08040F2A
	ldr r0, _08040F00 @ => 0x03003DF0
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _08040F2A
	cmp r0, #6
	bgt _08040F2A
	subs r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0804254C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add r0, sp
	ldrb r4, [r0]
	ldr r0, _08040F04 @ => 0x03005C40
	strh r4, [r0, #0xe]
	movs r3, #1
	movs r5, #0
	ldr r0, _08040F08 @ => 0x080789E4
	b _08040F1A
	.align 2, 0
_08040F00: .4byte gUnk_03003DF0
_08040F04: .4byte gUnk_03005C40
_08040F08: .4byte ROMREF_080789E4
_08040F0C:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bhi _08040F2A
	ldr r0, _08040F24 @ => 0x080789E4
	adds r0, r5, r0
_08040F1A:
	ldrb r0, [r0]
	cmp r0, r4
	bne _08040F0C
	b _08040E48
	.align 2, 0
_08040F24: .4byte ROMREF_080789E4
_08040F28:
	movs r3, #1
_08040F2A:
	adds r0, r3, #0
	add sp, #0x24
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_08040F38
FUN_08040F38: @ 0x08040F38
	ldr r0, _08040F54 @ => 0x03005C40
	movs r2, #0
	strh r2, [r0, #8]
	str r2, [r0, #4]
	str r2, [r0]
	strh r2, [r0, #0xa]
	movs r1, #0x96
	lsls r1, r1, #3
	strh r1, [r0, #0xc]
	movs r1, #8
	strb r1, [r0, #0x10]
	str r2, [r0, #0x14]
	bx lr
	.align 2, 0
_08040F54: .4byte gUnk_03005C40

	thumb_func_start FUN_08040F58
FUN_08040F58: @ 0x08040F58
	push {lr}
	ldr r0, _08040F74 @ => 0x03003DF0
	ldr r1, _08040F78 @ => 0x0000036A
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08040F70
	movs r0, #1
	bl FUN_08040FD8
_08040F70:
	pop {r0}
	bx r0
	.align 2, 0
_08040F74: .4byte gUnk_03003DF0
_08040F78: .4byte 0x0000036A

	thumb_func_start FUN_08040F7C
FUN_08040F7C: @ 0x08040F7C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r1, _08040F90 @ => 0x03005C40
	ldrb r0, [r1, #0x10]
	cmp r0, #8
	beq _08040F94
	movs r0, #0
	b _08040FA4
	.align 2, 0
_08040F90: .4byte gUnk_03005C40
_08040F94:
	strb r2, [r1, #0x10]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r1, #0xa]
	movs r0, #1
	bl FUN_08040FD8
	movs r0, #1
_08040FA4:
	pop {r1}
	bx r1

	thumb_func_start FUN_08040FA8
FUN_08040FA8: @ 0x08040FA8
	push {lr}
	movs r0, #0
	bl FUN_08040FD8
	ldr r1, _08040FC4 @ => 0x03005C40
	movs r0, #0
	strh r0, [r1, #0xa]
	movs r0, #0x96
	lsls r0, r0, #3
	strh r0, [r1, #0xc]
	movs r0, #8
	strb r0, [r1, #0x10]
	pop {r0}
	bx r0
	.align 2, 0
_08040FC4: .4byte gUnk_03005C40

	thumb_func_start FUN_08040FC8
FUN_08040FC8: @ 0x08040FC8
	ldr r1, _08040FD4 @ => 0x03005C40
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r1, #0xa]
	bx lr
	.align 2, 0
_08040FD4: .4byte gUnk_03005C40

	thumb_func_start FUN_08040FD8
FUN_08040FD8: @ 0x08040FD8
	push {lr}
	cmp r0, #1
	bne _0804100C
	ldr r0, _08040FFC @ => 0x03005C40
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _08041024
	ldr r1, _08041000 @ => 0x03003DF0
	ldr r0, _08041004 @ => 0x0000036A
	adds r1, r1, r0
	ldrh r2, [r1]
	movs r0, #4
	orrs r0, r2
	strh r0, [r1]
	ldr r2, _08041008 @ => 0x03004230
	ldr r0, [r2, #4]
	movs r1, #0x40
	b _08041020
	.align 2, 0
_08040FFC: .4byte gUnk_03005C40
_08041000: .4byte gUnk_03003DF0
_08041004: .4byte 0x0000036A
_08041008: .4byte gUnk_03004230
_0804100C:
	ldr r1, _08041028 @ => 0x03003DF0
	ldr r0, _0804102C @ => 0x0000036A
	adds r1, r1, r0
	ldrh r2, [r1]
	ldr r0, _08041030 @ => 0x0000FFFB
	ands r0, r2
	strh r0, [r1]
	ldr r2, _08041034 @ => 0x03004230
	ldr r0, [r2, #4]
	movs r1, #0x80
_08041020:
	orrs r0, r1
	str r0, [r2, #4]
_08041024:
	pop {r0}
	bx r0
	.align 2, 0
_08041028: .4byte gUnk_03003DF0
_0804102C: .4byte 0x0000036A
_08041030: .4byte 0x0000FFFB
_08041034: .4byte gUnk_03004230

	thumb_func_start FUN_08041038
FUN_08041038: @ 0x08041038
	push {r4, lr}
	adds r4, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _08041064 @ => 0x00000371
	cmp r4, r0
	bne _0804106C
	movs r0, #0
	bl FUN_08040FD8
	ldr r1, _08041068 @ => 0x03005C40
	movs r2, #0
	strh r2, [r1, #0xa]
	movs r0, #0x96
	lsls r0, r0, #3
	strh r0, [r1, #0xc]
	movs r0, #8
	strb r0, [r1, #0x10]
	strh r2, [r1, #8]
	str r2, [r1, #4]
	str r2, [r1]
	b _0804108C
	.align 2, 0
_08041064: .4byte 0x00000371
_08041068: .4byte gUnk_03005C40
_0804106C:
	ldr r3, _08041084 @ => 0x03005C40
	str r1, [r3, #4]
	str r4, [r3]
	cmp r2, #0
	beq _08041088
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	adds r0, r0, r2
	lsls r0, r0, #3
	b _0804108A
	.align 2, 0
_08041084: .4byte gUnk_03005C40
_08041088:
	movs r0, #0xa
_0804108A:
	strh r0, [r3, #8]
_0804108C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08041094
FUN_08041094: @ 0x08041094
	push {lr}
	ldr r0, _080410A4 @ => 0x03005C40
	movs r1, #0x18
	bl FUN_08044644
	pop {r0}
	bx r0
	.align 2, 0
_080410A4: .4byte gUnk_03005C40

	thumb_func_start FUN_080410A8
FUN_080410A8: @ 0x080410A8
	push {lr}
	ldr r0, _080410B8 @ => 0x03005C40
	movs r1, #0x18
	bl FUN_08044558
	pop {r0}
	bx r0
	.align 2, 0
_080410B8: .4byte gUnk_03005C40

	thumb_func_start FUN_080410BC
FUN_080410BC: @ 0x080410BC
	push {lr}
	ldr r1, _080410D4 @ => 0x03005C40
	str r0, [r1, #0x14]
	cmp r0, #1
	bne _080410D8
	ldrb r0, [r1, #0x10]
	cmp r0, #8
	beq _080410E4
	movs r0, #0
	bl FUN_08040FD8
	b _080410E4
	.align 2, 0
_080410D4: .4byte gUnk_03005C40
_080410D8:
	ldrb r0, [r1, #0x10]
	cmp r0, #8
	beq _080410E4
	movs r0, #1
	bl FUN_08040FD8
_080410E4:
	pop {r0}
	bx r0

	thumb_func_start FUN_080410E8
FUN_080410E8: @ 0x080410E8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x20
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, _08041120 @ => 0x030026E0
	str r5, [r1]
	movs r0, #0
	strh r2, [r1, #4]
	strh r3, [r1, #6]
	cmp r4, #0
	bne _08041128
	movs r7, #0
	ldr r2, _08041124 @ => 0x08157690
	ldrh r3, [r1, #4]
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r7, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r0, #2
	str r0, [sp, #0x14]
	add r0, sp, #0x18
	adds r1, r5, #0
	bl FUN_0800D83C
	b _08041144
	.align 2, 0
_08041120: .4byte gUnk_030026E0
_08041124: .4byte ROMREF_08157690
_08041128:
	movs r6, #0
	ldrh r3, [r1, #4]
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	movs r0, #2
	str r0, [sp, #0x14]
	add r0, sp, #0x1c
	adds r1, r5, #0
	adds r2, r4, #0
	bl FUN_0800D83C
_08041144:
	add sp, #0x20
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_08041150
FUN_08041150: @ 0x08041150
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r4, r1, #0
	cmp r0, #8
	bhi _08041224
	lsls r0, r0, #2
	ldr r1, _0804116C @ =_08041170
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804116C: .4byte _08041170
_08041170: @ jump table
	.4byte _08041194 @ case 0
	.4byte _080411B0 @ case 1
	.4byte _080411C0 @ case 2
	.4byte _080411B0 @ case 3
	.4byte _080411E8 @ case 4
	.4byte _08041224 @ case 5
	.4byte _08041224 @ case 6
	.4byte _08041224 @ case 7
	.4byte _08041218 @ case 8
_08041194:
	movs r0, #1
	mov sb, r0
	movs r1, #0x16
	mov r8, r1
	movs r5, #6
	movs r6, #0xf
	movs r7, #9
	ldr r0, _080411AC @ => 0x030026E0
	ldr r0, [r0]
	mov r1, sb
	b _080411D2
	.align 2, 0
_080411AC: .4byte gUnk_030026E0
_080411B0:
	movs r0, #1
	mov sb, r0
	movs r1, #0x16
	mov r8, r1
	movs r5, #7
	movs r6, #0xe
	movs r7, #9
	b _08041204
_080411C0:
	movs r0, #1
	mov sb, r0
	movs r1, #0x16
	mov r8, r1
	movs r5, #6
	movs r6, #0xf
	movs r7, #9
	ldr r0, _080411E4 @ => 0x030026E0
	ldr r0, [r0]
_080411D2:
	str r1, [sp]
	movs r1, #0xc0
	str r1, [sp, #4]
	movs r1, #9
	movs r2, #0xe
	movs r3, #0x16
	bl FUN_0800C7A8
	b _08041204
	.align 2, 0
_080411E4: .4byte gUnk_030026E0
_080411E8:
	movs r5, #6
	ldr r0, _08041200 @ => 0x030026E0
	ldr r0, [r0]
	str r5, [sp]
	movs r1, #0xc0
	str r1, [sp, #4]
	movs r1, #9
	movs r2, #0xf
	movs r3, #0x16
	bl FUN_0800C7A8
	b _08041224
	.align 2, 0
_08041200: .4byte gUnk_030026E0
_08041204:
	mov r0, sb
	cmp r0, #0
	beq _08041218
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, r8
	adds r3, r5, #0
	bl FUN_08041234
	b _08041224
_08041218:
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl FUN_08041234
_08041224:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08041234
FUN_08041234: @ 0x08041234
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sl, r0
	mov r8, r1
	adds r7, r2, #0
	str r3, [sp, #8]
	adds r6, r0, r7
	subs r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	adds r5, r3, #0
	add r5, r8
	subs r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r4, _08041398 @ => 0x030026E0
	ldr r0, [r4]
	movs r1, #1
	str r1, [sp]
	ldrh r1, [r4, #6]
	lsls r1, r1, #0xc
	ldrh r2, [r4, #4]
	orrs r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	mov r1, sl
	mov r2, r8
	movs r3, #1
	bl FUN_0800C7A8
	ldr r0, [r4]
	movs r1, #1
	add r1, sl
	mov sb, r1
	subs r1, r7, #2
	str r1, [sp, #0xc]
	movs r1, #1
	str r1, [sp]
	ldrh r1, [r4, #6]
	lsls r1, r1, #0xc
	ldrh r2, [r4, #4]
	adds r2, #1
	orrs r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	mov r1, sb
	mov r2, r8
	ldr r3, [sp, #0xc]
	bl FUN_0800C7A8
	ldr r0, [r4]
	movs r1, #1
	str r1, [sp]
	ldrh r1, [r4, #6]
	lsls r1, r1, #0xc
	ldrh r2, [r4, #4]
	adds r2, #2
	orrs r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	adds r1, r6, #0
	mov r2, r8
	movs r3, #1
	bl FUN_0800C7A8
	ldr r0, [r4]
	movs r1, #1
	add r8, r1
	ldr r7, [sp, #8]
	subs r7, #2
	str r7, [sp]
	ldrh r1, [r4, #6]
	lsls r1, r1, #0xc
	ldrh r2, [r4, #4]
	adds r2, #3
	orrs r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	mov r1, sl
	mov r2, r8
	movs r3, #1
	bl FUN_0800C7A8
	ldr r0, [r4]
	str r7, [sp]
	ldrh r1, [r4, #6]
	lsls r1, r1, #0xc
	ldrh r2, [r4, #4]
	adds r2, #5
	orrs r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	adds r1, r6, #0
	mov r2, r8
	movs r3, #1
	bl FUN_0800C7A8
	ldr r0, [r4]
	movs r1, #1
	str r1, [sp]
	ldrh r1, [r4, #6]
	lsls r1, r1, #0xc
	ldrh r2, [r4, #4]
	adds r2, #6
	orrs r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	mov r1, sl
	adds r2, r5, #0
	movs r3, #1
	bl FUN_0800C7A8
	ldr r0, [r4]
	movs r1, #1
	str r1, [sp]
	ldrh r1, [r4, #6]
	lsls r1, r1, #0xc
	ldrh r2, [r4, #4]
	adds r2, #7
	orrs r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	mov r1, sb
	adds r2, r5, #0
	ldr r3, [sp, #0xc]
	bl FUN_0800C7A8
	ldr r0, [r4]
	movs r1, #1
	str r1, [sp]
	ldrh r1, [r4, #6]
	lsls r1, r1, #0xc
	ldrh r2, [r4, #4]
	adds r2, #8
	orrs r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #1
	bl FUN_0800C7A8
	ldr r0, [r4]
	str r7, [sp]
	ldrh r1, [r4, #6]
	lsls r1, r1, #0xc
	ldrh r2, [r4, #4]
	adds r2, #4
	orrs r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	mov r1, sb
	mov r2, r8
	ldr r3, [sp, #0xc]
	bl FUN_0800C7A8
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08041398: .4byte gUnk_030026E0

	thumb_func_start FUN_0804139C
FUN_0804139C: @ 0x0804139C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	bl FUN_0801FD90
	str r0, [r4]
	bl FUN_0801FF60
	adds r1, r0, #0
	adds r0, r1, #7
	cmp r0, #0
	bge _080413BA
	adds r0, #7
_080413BA:
	asrs r0, r0, #3
	str r0, [r4, #0x1c]
	str r5, [r4, #4]
	adds r0, r5, #2
	str r0, [r4, #0x18]
	cmp r6, #0
	beq _080413CC
	cmp r6, #1
	beq _080413D4
_080413CC:
	movs r0, #7
	str r0, [r4, #0x10]
	movs r1, #1
	b _080413DA
_080413D4:
	movs r0, #5
	str r0, [r4, #0x10]
	movs r1, #2
_080413DA:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r0, #7
	asrs r0, r1, #3
	adds r0, #2
	str r0, [r4, #0xc]
	ldr r2, [r4, #0x1c]
	adds r0, r2, #4
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080413FA
	adds r0, r2, #5
	str r0, [r4, #8]
_080413FA:
	ldr r1, [r4, #8]
	movs r0, #0x1e
	subs r0, r0, r1
	lsrs r0, r0, #1
	str r0, [r4, #0x14]
	lsrs r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #0x20]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start FUN_08041410
FUN_08041410: @ 0x08041410
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	adds r0, r1, #0
	adds r4, r2, #0
	mov sl, r3
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	bl FUN_0801FD90
	str r0, [r5]
	str r4, [r5, #4]
	movs r0, #0
	bl FUN_0800C4D0
	lsls r4, r7, #3
	str r4, [sp, #8]
	ldr r0, [r5, #4]
	lsls r1, r6, #3
	mov sb, r1
	ldr r1, [r5]
	str r1, [sp]
	movs r1, #1
	mov r8, r1
	str r1, [sp, #4]
	movs r1, #0x78
	add r2, sp, #8
	mov r3, sb
	bl FUN_080200E8
	movs r0, #0
	bl FUN_0800C5FC
	ldr r0, [r5]
	bl FUN_0801FF60
	adds r1, r0, #0
	adds r0, r1, #7
	cmp r0, #0
	bge _08041472
	adds r0, #7
_08041472:
	asrs r0, r0, #3
	str r0, [r5, #0x1c]
	ldr r0, [r5, #4]
	adds r0, #2
	str r0, [r5, #0x18]
	subs r0, r7, #2
	str r0, [r5, #0x10]
	ldr r0, [sp, #8]
	subs r1, r0, r4
	adds r0, r1, #7
	cmp r0, #0
	bge _0804148C
	adds r0, #7
_0804148C:
	asrs r0, r0, #3
	adds r0, #4
	str r0, [r5, #0xc]
	adds r0, r6, #4
	str r0, [r5, #8]
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _080414A2
	adds r0, r6, #5
	str r0, [r5, #8]
_080414A2:
	ldr r1, [r5, #8]
	movs r0, #0x1e
	subs r0, r0, r1
	lsrs r0, r0, #1
	str r0, [r5, #0x14]
	lsrs r1, r1, #1
	adds r0, r0, r1
	str r0, [r5, #0x20]
	mov r0, sl
	lsls r2, r0, #0x10
	lsrs r2, r2, #0x10
	movs r0, #0
	movs r1, #0
	movs r3, #0
	bl FUN_080410E8
	movs r0, #0
	bl FUN_0800C4BC
	movs r0, #8
	adds r1, r5, #0
	bl FUN_08041150
	str r4, [sp, #8]
	ldr r0, [r5, #4]
	ldr r1, [r5]
	str r1, [sp]
	mov r1, r8
	str r1, [sp, #4]
	movs r1, #0x78
	add r2, sp, #8
	mov r3, sb
	bl FUN_080200E8
	str r0, [sp, #8]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_080414F8
FUN_080414F8: @ 0x080414F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	adds r6, r2, #0
	adds r0, r3, #0
	ldr r1, [r6]
	adds r1, #1
	str r1, [r6]
	bl FUN_0801FF60
	adds r4, r0, #0
	ldr r0, [sp, #0x18]
	adds r4, r4, r0
	adds r0, r4, #0
	cmp r4, #0
	bge _0804151E
	adds r0, r4, #7
_0804151E:
	asrs r5, r0, #3
	adds r0, r4, #0
	movs r1, #8
	bl SVC_DivRem
	cmp r0, #0
	beq _0804152E
	adds r5, #1
_0804152E:
	adds r0, r5, #2
	ldr r1, [r7]
	cmp r0, r1
	bge _08041538
	adds r0, r1, #0
_08041538:
	str r0, [r7]
	cmp r0, #0x1e
	ble _08041540
	movs r0, #0x1e
_08041540:
	str r0, [r7]
	ldr r1, [sp, #0x18]
	subs r4, r4, r1
	cmp r4, #0xe2
	ble _08041556
	ldr r0, [r6]
_0804154C:
	subs r4, #0xe2
	adds r0, #1
	cmp r4, #0xe2
	bgt _0804154C
	str r0, [r6]
_08041556:
	ldr r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _08041564
	adds r0, #7
_08041564:
	asrs r0, r0, #3
	adds r0, #2
	mov r2, r8
	str r0, [r2]
	ldr r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r1, #8
	bl SVC_DivRem
	cmp r0, #0
	beq _08041586
	mov r1, r8
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08041586:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bge _0804158E
	adds r0, #7
_0804158E:
	asrs r4, r0, #3
	ldr r0, [sp, #0x1c]
	movs r1, #8
	bl SVC_DivRem
	cmp r0, #0
	beq _0804159E
	adds r4, #1
_0804159E:
	adds r0, r4, #2
	mov r2, r8
	ldr r1, [r2]
	cmp r0, r1
	bge _080415AA
	adds r0, r1, #0
_080415AA:
	mov r1, r8
	str r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_080415B8
FUN_080415B8: @ 0x080415B8
	push {r4, lr}
	movs r4, #0x1e
	subs r4, r4, r2
	lsrs r2, r4, #0x1f
	adds r4, r4, r2
	asrs r4, r4, #1
	str r4, [r0]
	movs r0, #0x14
	subs r0, r0, r3
	lsrs r2, r0, #0x1f
	adds r0, r0, r2
	asrs r0, r0, #1
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
