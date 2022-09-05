.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start SlotMenu_Init
SlotMenu_Init: @ 0x08029830
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x24
	ldr r0, _08029980 @ => 0x03002044
	movs r6, #0
	str r6, [r0]
	bl FUN_0800CB20
	add r0, sp, #0x18
	strh r6, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _08029984 @ => 0x01008000
	bl SVC_CpuSet
	movs r0, #0
	bl FUN_0805273C
	movs r0, #0
	bl FUN_0800C558
	movs r0, #0x80
	lsls r0, r0, #5
	bl FUN_0800C5EC
	ldr r0, _08029988 @ => 0x080637B4
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C418
	ldr r0, _0802998C @ => 0x080637B8
	ldr r4, [r0]
	movs r0, #2
	adds r1, r4, #0
	bl FUN_0800C418
	ldr r0, _08029990 @ => 0x080637BC
	ldr r1, [r0]
	movs r0, #1
	bl FUN_0800C418
	ldr r0, _08029994 @ => 0x080637C0
	ldr r1, [r0]
	movs r0, #0
	bl FUN_0800C418
	movs r0, #2
	bl FUN_0800C5FC
	movs r0, #1
	bl FUN_0800C5FC
	movs r0, #0
	movs r1, #0
	bl FUN_0800C61C
	adds r0, r4, #0
	bl FUN_0801FE58
	movs r0, #3
	movs r1, #1
	bl FUN_08048284
	movs r5, #0
	movs r7, #0
	ldr r2, _08029998 @ => 0x08CE24A4
	ldr r3, _0802999C @ => 0x00000191
	movs r4, #0x10
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r7, [sp, #0x10]
	str r6, [sp, #0x14]
	add r0, sp, #0x1c
	movs r1, #2
	bl FUN_0800D83C
	movs r0, #0
	ldr r2, _080299A0 @ => 0x08CE2E04
	movs r3, #0xe4
	lsls r3, r3, #1
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r5, #1
	str r5, [sp, #0x14]
	add r0, sp, #0x20
	movs r1, #1
	bl FUN_0800D83C
	movs r0, #1
	movs r1, #5
	movs r2, #6
	movs r3, #6
	bl FUN_08021428
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #3
	movs r1, #0
	bl FUN_0801FEA0
	ldr r1, _080299A4 @ => 0x080637C4
	ldr r0, _080299A8 @ => 0x03004720
	ldr r0, [r0, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl FUN_08050820
	adds r4, r0, #0
	movs r0, #0xb5
	lsls r0, r0, #2
	str r5, [sp]
	movs r1, #0x78
	movs r2, #7
	adds r3, r4, #0
	bl FUN_0801F8B8
	ldr r0, _080299AC @ => 0x000002F7
	str r6, [sp]
	movs r1, #0x1d
	movs r2, #0x8f
	adds r3, r4, #0
	bl FUN_0801F8B8
	ldr r0, _080299B0 @ => 0x000007D6
	bl FUN_08050820
	adds r3, r0, #0
	ldr r0, _080299B4 @ => 0x0000031A
	str r6, [sp]
	movs r1, #0x91
	movs r2, #0x8f
	bl FUN_0801F8B8
	ldr r4, _080299B8 @ => 0x03002040
	movs r0, #0x2c
	bl FUN_0802C9DC
	str r0, [r4]
	movs r5, #0
	ldr r7, _080299BC @ => 0x03005E20
	mov ip, r7
	movs r6, #1
	adds r3, r7, #0
	adds r3, #0x30
	movs r2, #0
_08029962:
	mov r0, ip
	adds r0, #0xdc
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _080299C0
	ldrb r0, [r3]
	cmp r0, #0
	beq _080299C0
	ldr r0, [r4]
	adds r0, #4
	adds r0, r0, r2
	str r6, [r0]
	b _080299CA
	.align 2, 0
_08029980: .4byte gUnk_03002044
_08029984: .4byte 0x01008000
_08029988: .4byte ROMREF_080637B4
_0802998C: .4byte ROMREF_080637B8
_08029990: .4byte ROMREF_080637BC
_08029994: .4byte ROMREF_080637C0
_08029998: .4byte ROMREF_08CE24A4
_0802999C: .4byte 0x00000191
_080299A0: .4byte ROMREF_08CE2E04
_080299A4: .4byte ROMREF_080637C4
_080299A8: .4byte gUnk_03004720
_080299AC: .4byte 0x000002F7
_080299B0: .4byte 0x000007D6
_080299B4: .4byte 0x0000031A
_080299B8: .4byte gUnk_03002040
_080299BC: .4byte gUnk_03005E20
_080299C0:
	ldr r0, [r4]
	adds r0, #4
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080299CA:
	ldr r0, [r4]
	adds r0, #0x14
	adds r0, r0, r2
	str r6, [r0]
	adds r3, #0x30
	adds r2, #4
	adds r5, #1
	cmp r5, #3
	bls _08029962
	ldr r1, _08029A10 @ => 0x03004720
	adds r0, r7, #0
	adds r0, #0xec
	ldr r0, [r0]
	str r0, [r1, #0xc]
	movs r0, #1
	str r0, [r1, #0x14]
	movs r0, #0
	bl FUN_0802A294
	bl FUN_0802A218
	bl FUN_08029F54
	movs r0, #0x3f
	movs r1, #0
	bl FUN_080457F4
	add sp, #0x24
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029A10: .4byte gUnk_03004720

	thumb_func_start SlotMenu_Handler
SlotMenu_Handler: @ 0x08029A14
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _08029A30 @ => 0x03004720
	ldr r1, [r0, #0x14]
	adds r5, r0, #0
	cmp r1, #8
	bls _08029A24
	b _08029CE6
_08029A24:
	lsls r0, r1, #2
	ldr r1, _08029A34 @ =_08029A38
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08029A30: .4byte gUnk_03004720
_08029A34: .4byte _08029A38
_08029A38: @ jump table
	.4byte _08029A5C @ case 0
	.4byte _08029A88 @ case 1
	.4byte _08029ABE @ case 2
	.4byte _08029ADC @ case 3
	.4byte _08029B30 @ case 4
	.4byte _08029B7C @ case 5
	.4byte _08029C14 @ case 6
	.4byte _08029C58 @ case 7
	.4byte _08029CD4 @ case 8
_08029A5C:
	ldr r0, [r5, #0x18]
	subs r0, #1
	str r0, [r5, #0x18]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08029A6C
	b _08029CE6
_08029A6C:
	ldr r3, _08029A84 @ => 0x03004790
	ldr r1, [r3, #4]
	ldr r0, [r1, #0xc]
	movs r2, #1
	orrs r0, r2
	str r0, [r1, #0xc]
	ldr r1, [r3, #8]
	ldr r0, [r1, #0xc]
	orrs r0, r2
	str r0, [r1, #0xc]
	b _08029ACE
	.align 2, 0
_08029A84: .4byte gUnk_03004790
_08029A88:
	ldr r0, _08029A9C @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08029AA0
	bl FUN_0802A1A8
	b _08029CE6
	.align 2, 0
_08029A9C: .4byte gUnk_030042B0
_08029AA0:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08029AAE
	bl FUN_08029CF0
	b _08029CE6
_08029AAE:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08029AB8
	b _08029CE6
_08029AB8:
	bl FUN_0802A1E0
	b _08029CE6
_08029ABE:
	ldr r0, [r5, #0x18]
	subs r0, #1
	str r0, [r5, #0x18]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08029ACE
	b _08029CE6
_08029ACE:
	ldr r0, _08029AD8 @ => 0x03002040
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [r5, #0x14]
	b _08029CE6
	.align 2, 0
_08029AD8: .4byte gUnk_03002040
_08029ADC:
	ldr r4, _08029B00 @ => 0x03002044
	ldr r0, [r4]
	cmp r0, #0
	beq _08029AEE
	movs r1, #1
	bl FUN_08001FB0
	movs r0, #0
	str r0, [r4]
_08029AEE:
	ldr r0, _08029B04 @ => 0x03002040
	ldr r0, [r0]
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _08029B08
	movs r0, #2
	bl FUN_0802A294
	b _08029B0E
	.align 2, 0
_08029B00: .4byte gUnk_03002044
_08029B04: .4byte gUnk_03002040
_08029B08:
	movs r0, #1
	bl FUN_0802A294
_08029B0E:
	bl FUN_08029F54
	movs r1, #0
	ldr r0, _08029B2C @ => 0x03002040
	ldr r0, [r0]
	ldr r0, [r0, #0x28]
	cmp r0, #0
	bne _08029B20
	movs r1, #1
_08029B20:
	adds r0, r1, #0
	movs r1, #1
	bl FUN_08029DD4
	b _08029CE6
	.align 2, 0
_08029B2C: .4byte gUnk_03002040
_08029B30:
	ldr r0, _08029B70 @ => 0x080637C0
	ldr r0, [r0]
	bl FUN_0801FE58
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _08029B74 @ => 0x000007E1
	bl FUN_08050820
	adds r3, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #0x1e
	movs r1, #0x78
	movs r2, #0x24
	bl FUN_0801F8B8
	ldr r4, _08029B78 @ => 0x03004720
	ldr r1, [r4, #8]
	movs r0, #0
	bl FUN_0802A248
	ldr r1, [r4, #8]
	movs r0, #1
	bl FUN_0802A248
	movs r0, #5
	str r0, [r4, #0x14]
	b _08029CE6
	.align 2, 0
_08029B70: .4byte ROMREF_080637C0
_08029B74: .4byte 0x000007E1
_08029B78: .4byte gUnk_03004720
_08029B7C:
	ldr r1, _08029BB4 @ => 0x030042B0
	ldrh r2, [r1, #0xc]
	movs r0, #0xc0
	ands r0, r2
	cmp r0, #0
	beq _08029BB8
	ldr r4, [r5, #8]
	adds r0, r5, #0
	adds r0, #8
	ldrh r1, [r1, #6]
	str r1, [sp]
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl FUN_08024A88
	ldr r1, [r5, #8]
	adds r0, r4, #0
	bl FUN_0802A248
	ldr r1, [r5, #8]
	adds r0, r1, #0
	bl FUN_0802A248
	movs r0, #0xb2
	bl FUN_0804DE0C
	b _08029CE6
	.align 2, 0
_08029BB4: .4byte gUnk_030042B0
_08029BB8:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08029BD2
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _08029BD2
	movs r0, #6
	str r0, [r5, #0x14]
	movs r0, #0xad
	bl FUN_0804DE0C
	b _08029CE6
_08029BD2:
	ldrh r1, [r1, #0xc]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08029BEE
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08029BE6
	b _08029CE6
_08029BE6:
	ldr r0, [r5, #8]
	cmp r0, #1
	beq _08029BEE
	b _08029CE6
_08029BEE:
	movs r0, #0
	movs r1, #0
	bl FUN_0800C61C
	bl FUN_08015834
	ldr r0, _08029C10 @ => 0x03002040
	ldr r0, [r0]
	ldr r0, [r0, #0x28]
	movs r1, #1
	bl FUN_08029DD4
	movs r0, #0xb1
	bl FUN_0804DE0C
	b _08029CE6
	.align 2, 0
_08029C10: .4byte gUnk_03002040
_08029C14:
	ldr r0, _08029C4C @ => 0x080637C0
	ldr r0, [r0]
	bl FUN_0801FE58
	movs r0, #0
	movs r1, #0
	bl FUN_0800C61C
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _08029C50 @ => 0x000007E5
	bl FUN_08050820
	adds r3, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #0x1e
	movs r1, #0x78
	movs r2, #0x24
	bl FUN_0801F8B8
	ldr r1, _08029C54 @ => 0x03004720
	movs r0, #7
	str r0, [r1, #0x14]
	b _08029CE6
	.align 2, 0
_08029C4C: .4byte ROMREF_080637C0
_08029C50: .4byte 0x000007E5
_08029C54: .4byte gUnk_03004720
_08029C58:
	ldr r0, _08029C6C @ => 0x03004750
	ldr r0, [r0]
	cmp r0, #0x1e
	bne _08029C74
	ldr r0, _08029C70 @ => 0x03003DF0
	movs r1, #0xd7
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #1
	b _08029C7E
	.align 2, 0
_08029C6C: .4byte gUnk_03004750
_08029C70: .4byte gUnk_03003DF0
_08029C74:
	ldr r0, _08029CC8 @ => 0x03003DF0
	movs r1, #0xd7
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0
_08029C7E:
	str r1, [r0]
	bl FUN_0804DF78
	bl FUN_080443E0
	bl FUN_0804DF84
	ldr r4, _08029CCC @ => 0x03004720
	ldr r0, [r4, #0xc]
	bl FUN_08044144
	movs r0, #0
	movs r1, #0
	bl FUN_0800C61C
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _08029CD0 @ => 0x000007E3
	bl FUN_08050820
	adds r3, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #0x1e
	movs r1, #0x78
	movs r2, #0x24
	bl FUN_0801F8B8
	movs r0, #8
	str r0, [r4, #0x14]
	movs r0, #0x14
	str r0, [r4, #0x18]
	b _08029CE6
	.align 2, 0
_08029CC8: .4byte gUnk_03003DF0
_08029CCC: .4byte gUnk_03004720
_08029CD0: .4byte 0x000007E3
_08029CD4:
	ldr r0, [r5, #0x18]
	subs r0, #1
	str r0, [r5, #0x18]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08029CE6
	bl FUN_0802A1E0
_08029CE6:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08029CF0
FUN_08029CF0: @ 0x08029CF0
	push {r4, lr}
	ldr r1, _08029D00 @ => 0x03004720
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _08029D04
	cmp r0, #1
	beq _08029D88
	b _08029DCE
	.align 2, 0
_08029D00: .4byte gUnk_03004720
_08029D04:
	ldr r0, _08029D58 @ => 0x03002040
	ldr r0, [r0]
	ldr r2, [r1, #0xc]
	lsls r1, r2, #2
	adds r0, #4
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08029D80
	ldr r0, _08029D5C @ => 0x03005E20
	adds r4, r0, #0
	adds r4, #0xec
	str r2, [r4]
	bl FUN_0804DF78
	ldr r0, [r4]
	bl FUN_080446C0
	bl FUN_0804DF84
	ldr r0, [r4]
	bl FUN_08044690
	cmp r0, #0
	beq _08029D80
	bl FUN_08020E84
	ldr r0, [r4]
	bl FUN_080444D4
	ldr r1, _08029D60 @ => 0x03003DF0
	movs r2, #0xd7
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	cmp r0, #1
	bne _08029D64
	movs r0, #0x1e
	bl FUN_0802CEC4
	b _08029D72
	.align 2, 0
_08029D58: .4byte gUnk_03002040
_08029D5C: .4byte gUnk_03005E20
_08029D60: .4byte gUnk_03003DF0
_08029D64:
	ldr r2, _08029D7C @ => 0x0000035A
	adds r0, r1, r2
	ldrb r2, [r0]
	movs r0, #1
	movs r1, #0
	bl FUN_0802CED4
_08029D72:
	movs r0, #0xad
	bl FUN_0804DE0C
	b _08029DCE
	.align 2, 0
_08029D7C: .4byte 0x0000035A
_08029D80:
	movs r0, #0xbe
	bl FUN_0804DE0C
	b _08029DCE
_08029D88:
	ldr r0, _08029DB0 @ => 0x03002040
	ldr r2, [r0]
	ldr r0, [r1, #0xc]
	lsls r1, r0, #2
	adds r0, r2, #0
	adds r0, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08029DC8
	adds r0, r2, #4
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08029DB4
	movs r0, #0
	movs r1, #4
	bl FUN_08029EA4
	b _08029DBC
	.align 2, 0
_08029DB0: .4byte gUnk_03002040
_08029DB4:
	movs r0, #0
	movs r1, #6
	bl FUN_08029EA4
_08029DBC:
	ldr r1, _08029DC4 @ => 0x03004720
	movs r0, #1
	str r0, [r1, #8]
	b _08029DCE
	.align 2, 0
_08029DC4: .4byte gUnk_03004720
_08029DC8:
	movs r0, #0xbe
	bl FUN_0804DE0C
_08029DCE:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_08029DD4
FUN_08029DD4: @ 0x08029DD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov sl, r1
	movs r0, #0x80
	lsls r0, r0, #0x11
	mov r8, r0
	mov r1, sb
	cmp r1, #0
	beq _08029DF4
	movs r3, #0xff
	lsls r3, r3, #0x18
	mov r8, r3
_08029DF4:
	ldr r7, _08029E8C @ => 0x03002044
	ldr r1, [r7]
	cmp r1, #0
	beq _08029E4E
	ldr r0, _08029E90 @ => FUN_0802D34C
	str r0, [r1, #0x50]
	adds r0, r1, #0
	movs r1, #0xb
	bl FUN_08001FB0
	ldr r0, [r7]
	movs r5, #0x93
	lsls r5, r5, #1
	adds r2, r0, r5
	movs r1, #0xf
	strh r1, [r2]
	ldr r2, _08029E94 @ => 0x080637E0
	movs r1, #0
	ldrsh r6, [r2, r1]
	lsls r6, r6, #0x10
	mov r3, r8
	subs r1, r6, r3
	movs r3, #2
	ldrsh r4, [r2, r3]
	lsls r4, r4, #0x10
	adds r2, r4, #0
	bl FUN_08001728
	ldr r0, [r7]
	adds r5, r0, r5
	ldrh r3, [r5]
	adds r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r1, r6, #0
	adds r2, r4, #0
	bl FUN_08003C0C
	ldr r0, [r7]
	bl FUN_08003B70
	ldr r0, [r7]
	movs r1, #3
	bl FUN_08001F84
_08029E4E:
	movs r0, #1
	mov r1, r8
	bl FUN_0800CC74
	ldr r0, _08029E98 @ => 0x03003210
	adds r0, #0x94
	ldr r2, [r0]
	movs r0, #1
	movs r1, #0
	movs r3, #0xe
	bl FUN_0800CAFC
	ldr r1, _08029E9C @ => 0x03004720
	movs r0, #0
	str r0, [r1, #0x14]
	movs r0, #0xf
	str r0, [r1, #0x18]
	ldr r0, _08029EA0 @ => 0x03002040
	ldr r0, [r0]
	mov r1, sb
	str r1, [r0, #0x28]
	mov r3, sl
	str r3, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029E8C: .4byte gUnk_03002044
_08029E90: .4byte FUN_0802D34C
_08029E94: .4byte ROMREF_080637E0
_08029E98: .4byte gUnk_03003210
_08029E9C: .4byte gUnk_03004720
_08029EA0: .4byte gUnk_03002040

	thumb_func_start FUN_08029EA4
FUN_08029EA4: @ 0x08029EA4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r5, #0x80
	lsls r5, r5, #0x11
	cmp r6, #0
	beq _08029EB6
	movs r5, #0xff
	lsls r5, r5, #0x18
_08029EB6:
	ldr r4, _08029F3C @ => 0x03002044
	ldr r1, [r4]
	cmp r1, #0
	beq _08029EF0
	ldr r0, _08029F40 @ => FUN_0802D34C
	str r0, [r1, #0x50]
	adds r0, r1, #0
	movs r1, #0xb
	bl FUN_08001FB0
	ldr r0, [r4]
	movs r1, #0x93
	lsls r1, r1, #1
	adds r2, r0, r1
	movs r1, #0xf
	strh r1, [r2]
	ldr r1, [r0, #0x18]
	subs r1, r1, r5
	ldr r2, [r0, #0x1c]
	movs r3, #0x10
	bl FUN_08003C0C
	ldr r0, [r4]
	bl FUN_08003B70
	ldr r0, [r4]
	movs r1, #3
	bl FUN_08001F84
_08029EF0:
	ldr r0, _08029F44 @ => 0x03003210
	adds r1, r0, #0
	adds r1, #0x90
	ldr r1, [r1]
	adds r1, r1, r5
	adds r0, #0x94
	ldr r2, [r0]
	movs r0, #1
	movs r3, #0xe
	bl FUN_0800CAFC
	ldr r3, _08029F48 @ => 0x03004790
	ldr r1, [r3, #4]
	ldr r0, [r1, #0xc]
	movs r2, #2
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1, #0xc]
	ldr r1, [r3, #8]
	ldr r0, [r1, #0xc]
	ands r0, r2
	str r0, [r1, #0xc]
	ldr r1, _08029F4C @ => 0x03004720
	movs r0, #2
	str r0, [r1, #0x14]
	movs r0, #0xf
	str r0, [r1, #0x18]
	ldr r0, _08029F50 @ => 0x03002040
	ldr r0, [r0]
	str r6, [r0, #0x28]
	str r7, [r0]
	movs r0, #0xad
	bl FUN_0804DE0C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029F3C: .4byte gUnk_03002044
_08029F40: .4byte FUN_0802D34C
_08029F44: .4byte gUnk_03003210
_08029F48: .4byte gUnk_03004790
_08029F4C: .4byte gUnk_03004720
_08029F50: .4byte gUnk_03002040

	thumb_func_start FUN_08029F54
FUN_08029F54: @ 0x08029F54
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	ldr r2, _08029F84 @ => 0x03004720
	ldr r1, [r2, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08029F88 @ => 0x03005E3C
	adds r7, r0, r1
	ldr r1, _08029F8C @ => 0x03002040
	ldr r0, [r1]
	ldr r0, [r0, #0x24]
	mov r8, r2
	adds r6, r1, #0
	cmp r0, #0
	bne _08029F90
	movs r0, #3
	movs r1, #0x18
	mov sl, r1
	b _08029F98
	.align 2, 0
_08029F84: .4byte gUnk_03004720
_08029F88: .4byte gUnk_03005E3C
_08029F8C: .4byte gUnk_03002040
_08029F90:
	movs r0, #0x23
	movs r2, #0x8c
	lsls r2, r2, #1
	mov sl, r2
_08029F98:
	subs r0, #3
	movs r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r5, #0
	ldr r2, _08029FEC @ => 0x08CE2E04
	movs r3, #0xe4
	lsls r3, r3, #1
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	str r5, [sp, #0x10]
	movs r0, #5
	str r0, [sp, #0x14]
	add r0, sp, #0x38
	movs r1, #1
	bl FUN_0800D83C
	ldr r0, _08029FF0 @ => 0x080637BC
	ldr r0, [r0]
	bl FUN_0801FE58
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #1
	movs r1, #0
	bl FUN_0801FEA0
	ldr r1, [r6]
	mov r2, r8
	ldr r0, [r2, #0xc]
	lsls r0, r0, #2
	adds r1, #4
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _08029FF4
	adds r5, r7, #0
	adds r5, #0x14
	b _08029FFC
	.align 2, 0
_08029FEC: .4byte ROMREF_08CE2E04
_08029FF0: .4byte ROMREF_080637BC
_08029FF4:
	ldr r0, _0802A13C @ => 0x000007D3
	bl FUN_08050820
	adds r5, r0, #0
_08029FFC:
	adds r0, r5, #0
	bl FUN_08020344
	ldr r4, _0802A140 @ => 0x03004720
	ldr r0, [r4, #0xc]
	adds r0, #1
	bl FUN_080203A8
	movs r0, #0xfb
	lsls r0, r0, #3
	bl FUN_08050820
	adds r5, r0, #0
	bl FUN_0801FF60
	adds r6, r0, #0
	ldr r0, _0802A144 @ => 0x00000211
	lsrs r2, r6, #1
	movs r1, #0x9d
	subs r1, r1, r2
	movs r2, #0x24
	adds r3, r5, #0
	bl FUN_0801F9E0
	ldr r0, _0802A148 @ => 0x03002040
	ldr r1, [r0]
	ldr r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r1, #4
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0802A12A
	ldr r0, _0802A14C @ => 0x0000076D
	mov r8, r0
	bl FUN_08050820
	bl FUN_0801FF60
	adds r6, r0, #0
	ldr r1, _0802A150 @ => 0x0000076E
	mov sb, r1
	mov r0, sb
	bl FUN_08050820
	bl FUN_0801FF60
	adds r5, r0, #0
	cmp r5, r6
	bhs _0802A062
	adds r5, r6, #0
_0802A062:
	adds r5, #7
	mov r6, sl
	adds r6, #0x46
	ldrb r0, [r7, #0xc]
	ldr r2, _0802A154 @ => 0x000006FB
	adds r0, r0, r2
	bl FUN_08050820
	bl FUN_08020320
	ldr r0, _0802A158 @ => 0x0000076B
	bl FUN_08050820
	adds r3, r0, #0
	ldr r0, _0802A15C @ => 0x0000022F
	movs r1, #1
	str r1, [sp]
	movs r1, #0x9d
	movs r2, #0x4a
	bl FUN_0801F8B8
	add r0, sp, #0x18
	bl FUN_08020320
	ldr r4, _0802A160 @ => 0x00000257
	ldr r0, _0802A164 @ => 0x0000076C
	bl FUN_08050820
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x58
	bl FUN_0801F9E0
	ldr r2, _0802A168 @ => 0x00000766
	adds r0, r7, #0
	add r1, sp, #0x18
	bl FUN_08013FDC
	add r0, sp, #0x18
	bl FUN_08020320
	adds r4, #0x14
	adds r5, r6, r5
	ldr r0, _0802A16C @ => 0x000007DF
	bl FUN_08050820
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x58
	bl FUN_0801F9E0
	adds r4, #0x14
	mov r0, r8
	bl FUN_08050820
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x66
	bl FUN_0801F9E0
	ldr r0, [r7, #8]
	bl FUN_080203A8
	adds r4, #0x14
	movs r0, #0xec
	lsls r0, r0, #3
	bl FUN_08050820
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x66
	bl FUN_0801F9E0
	adds r4, #0x14
	mov r0, sb
	bl FUN_08050820
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x74
	bl FUN_0801F9E0
	ldrh r0, [r7, #0xe]
	bl FUN_080203A8
	adds r4, #0x19
	ldr r0, _0802A170 @ => 0x00000762
	bl FUN_08050820
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x74
	bl FUN_0801F9E0
_0802A12A:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A13C: .4byte 0x000007D3
_0802A140: .4byte gUnk_03004720
_0802A144: .4byte 0x00000211
_0802A148: .4byte gUnk_03002040
_0802A14C: .4byte 0x0000076D
_0802A150: .4byte 0x0000076E
_0802A154: .4byte 0x000006FB
_0802A158: .4byte 0x0000076B
_0802A15C: .4byte 0x0000022F
_0802A160: .4byte 0x00000257
_0802A164: .4byte 0x0000076C
_0802A168: .4byte 0x00000766
_0802A16C: .4byte 0x000007DF
_0802A170: .4byte 0x00000762

	thumb_func_start SlotMenu_Terminate
SlotMenu_Terminate: @ 0x0802A174
	push {lr}
	movs r0, #0x3f
	movs r1, #0xc
	bl FUN_0804582C
	bl FUN_0804E070
	bl FUN_0800CB20
	ldr r0, _0802A1A0 @ => 0x03002C40
	bl FUN_08000BF8
	bl FUN_0802D8A8
	bl FUN_08015834
	ldr r0, _0802A1A4 @ => 0x03002040
	ldr r0, [r0]
	bl FUN_0802CA80
	pop {r0}
	bx r0
	.align 2, 0
_0802A1A0: .4byte gUnk_03002C40
_0802A1A4: .4byte gUnk_03002040
