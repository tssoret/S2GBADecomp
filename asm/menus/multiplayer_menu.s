.include "asm/constants.s"
.include "asm/macros.s"
.include "data/lists/sounds.inc"

.syntax unified

	thumb_func_start Multiplayer_Init
Multiplayer_Init: @ 0x080217C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	movs r0, #0
	bl FUN_0800C558
	movs r0, #0x80
	lsls r0, r0, #5
	bl FUN_0800C5EC
	ldr r0, _0802191C @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080217F2
	bl FUN_0804C050
_080217F2:
	movs r4, #0
	str r4, [sp]
	movs r0, #1
	movs r1, #2
	movs r2, #6
	movs r3, #6
	bl FUN_0802147C
	ldr r0, _08021920 @ => 0x08062AC0
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C418
	movs r0, #3
	movs r1, #0
	bl FUN_08048284
	ldr r0, _08021924 @ => 0x08062AC4
	ldr r1, [r0]
	movs r0, #2
	bl FUN_0800C418
	movs r1, #0xc8
	lsls r1, r1, #1
	movs r0, #2
	bl FUN_0800C61C
	movs r0, #1
	movs r1, #5
	movs r2, #6
	movs r3, #6
	bl FUN_08021428
	ldr r0, _08021928 @ => 0xFFFF0000
	mov r8, r0
	movs r2, #0
	mov sl, r2
	ldr r5, _0802192C @ => 0x00FFFFFF
	mov sb, r2
	ldr r2, _08021930 @ => 0x08CDB0F4
	ldr r3, _08021934 @ => 0x00000191
	str r4, [sp]
	str r4, [sp, #4]
	movs r0, #0x10
	str r0, [sp, #8]
	mov r0, sl
	str r0, [sp, #0xc]
	mov r0, sb
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	add r0, sp, #0x18
	movs r1, #2
	bl FUN_0800D83C
	movs r1, #1
	mov r2, r8
	ands r6, r2
	orrs r6, r1
	movs r0, #0x80
	lsls r0, r0, #0xb
	ldr r2, _08021938 @ => 0x0000FFFF
	ands r6, r2
	orrs r6, r0
	ldr r0, _0802193C @ => 0xFFFFFF00
	ands r7, r0
	orrs r7, r1
	movs r0, #0x80
	lsls r0, r0, #3
	ldr r2, _08021940 @ => 0xFFFF00FF
	ands r7, r2
	orrs r7, r0
	movs r0, #0xe0
	lsls r0, r0, #0xd
	ldr r2, _08021944 @ => 0xFF00FFFF
	ands r7, r2
	orrs r7, r0
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r7, r5
	orrs r7, r0
	ldr r2, _08021948 @ => 0x08CDB86C
	movs r3, #0xd0
	lsls r3, r3, #1
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	str r7, [sp, #0x10]
	str r1, [sp, #0x14]
	add r0, sp, #0x1c
	movs r1, #2
	bl FUN_0800D83C
	ldr r0, _0802194C @ => 0x08062AC8
	ldr r1, [r0]
	movs r0, #0
	bl FUN_0800C418
	movs r0, #0
	bl FUN_0800C5FC
	ldr r0, _08021950 @ => 0x000009A8
	bl FUN_08022288
_080218C2:
	adds r0, r4, #0
	bl FUN_08021FE8
	adds r4, #1
	cmp r4, #1
	ble _080218C2
	movs r0, SOUNDTRACK_STRANGETOWN_EDIT2
	bl FUN_0804DE84
	ldr r1, _08021954 @ => 0x03004720
	ldr r0, _08021958 @ => 0x00000D86
	str r0, [r1, #8]
	movs r4, #0
	str r4, [r1, #0xc]
	str r4, [r1, #0x14]
	bl FUN_0804B13C
	bl FUN_08047E10
	ldr r1, _0802195C @ => 0x030042B0
	movs r0, #1
	strh r0, [r1, #4]
	strh r4, [r1, #6]
	bl FUN_08047D54
	bl FUN_08047C7C
	movs r0, #1
	bl FUN_0804C12C
	movs r0, #1
	bl FUN_0804C144
	movs r0, #0x3f
	movs r1, #0
	bl FUN_080457F4
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802191C: .4byte gUnk_03004374
_08021920: .4byte ROMREF_08062AC0
_08021924: .4byte ROMREF_08062AC4
_08021928: .4byte 0xFFFF0000
_0802192C: .4byte 0x00FFFFFF
_08021930: .4byte ROMREF_08CDB0F4
_08021934: .4byte 0x00000191
_08021938: .4byte 0x0000FFFF
_0802193C: .4byte 0xFFFFFF00
_08021940: .4byte 0xFFFF00FF
_08021944: .4byte 0xFF00FFFF
_08021948: .4byte ROMREF_08CDB86C
_0802194C: .4byte ROMREF_08062AC8
_08021950: .4byte 0x000009A8
_08021954: .4byte gUnk_03004720
_08021958: .4byte 0x00000D86
_0802195C: .4byte gUnk_030042B0

	thumb_func_start Multiplayer_Handler
Multiplayer_Handler: @ 0x08021960
	push {r4, r5, r6, lr}
	sub sp, #0x10
	movs r5, #1
	ldr r0, _0802197C @ => 0x03006440
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r0, #0
	cmp r1, #0
	beq _08021980
	bl FUN_080221FC
	b _08021F2A
	.align 2, 0
_0802197C: .4byte gUnk_03006440
_08021980:
	ldr r0, _08021998 @ => 0x03004720
	ldr r1, [r0, #0x14]
	adds r6, r0, #0
	cmp r1, #0x10
	bls _0802198C
	b _08021F2A
_0802198C:
	lsls r0, r1, #2
	ldr r1, _0802199C @ =_080219A0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08021998: .4byte gUnk_03004720
_0802199C: .4byte _080219A0
_080219A0: @ jump table
	.4byte _080219E4 @ case 0
	.4byte _08021A1C @ case 1
	.4byte _08021A58 @ case 2
	.4byte _08021B90 @ case 3
	.4byte _08021BB0 @ case 4
	.4byte _08021BDC @ case 5
	.4byte _08021C08 @ case 6
	.4byte _08021C34 @ case 7
	.4byte _08021C60 @ case 8
	.4byte _08021C72 @ case 9
	.4byte _08021C78 @ case 10
	.4byte _08021D30 @ case 11
	.4byte _08021DEC @ case 12
	.4byte _08021E74 @ case 13
	.4byte _08021EA4 @ case 14
	.4byte _08021EDC @ case 15
	.4byte _08021F00 @ case 16
_080219E4:
	movs r0, #2
	bl FUN_0804B2CC
	cmp r0, #7
	beq _080219F8
	cmp r0, #5
	beq _080219F8
	ldr r1, _08021A14 @ => 0x03004720
	movs r0, #1
	str r0, [r1, #0x14]
_080219F8:
	ldr r0, _08021A18 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08021A0C
	bl FUN_08047D9C
	bl FUN_080221FC
_08021A0C:
	movs r0, #0
	bl FUN_08021F40
	b _08021F2A
	.align 2, 0
_08021A14: .4byte gUnk_03004720
_08021A18: .4byte gUnk_030042B0
_08021A1C:
	ldr r0, _08021A4C @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08021A2E
	bl FUN_0804B3CC
	adds r5, r0, #0
_08021A2E:
	subs r0, r5, #2
	cmp r0, #2
	bhi _08021A3A
	ldr r1, _08021A50 @ => 0x03004720
	movs r0, #2
	str r0, [r1, #0x14]
_08021A3A:
	ldr r0, _08021A54 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08021A48
	b _08021B7E
_08021A48:
	b _08021B7A
	.align 2, 0
_08021A4C: .4byte gUnk_03004374
_08021A50: .4byte gUnk_03004720
_08021A54: .4byte gUnk_030042B0
_08021A58:
	movs r5, #1
	ldr r0, _08021B38 @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08021A6C
	bl FUN_0804B3CC
	adds r5, r0, #0
_08021A6C:
	bl FUN_0804C170
	cmp r0, #0
	beq _08021B16
	cmp r5, #0
	beq _08021B16
	cmp r5, #6
	beq _08021B16
	cmp r5, #8
	beq _08021B16
	bl FUN_08022270
	ldr r4, _08021B3C @ => 0x03005E20
	ldrh r3, [r4, #0xc]
	lsls r2, r3, #0x11
	lsrs r1, r2, #0x11
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08021AF8
	adds r0, r1, #0
	movs r1, #1
	orrs r1, r0
	ldr r0, _08021B40 @ => 0xFFFF8000
	ands r0, r3
	orrs r0, r1
	strh r0, [r4, #0xc]
	bl FUN_0804DF78
	bl FUN_080443E0
	bl FUN_0804DF84
	movs r0, #0x15
	bl FUN_0804E120
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #3
	movs r1, #0
	bl FUN_0801FEA0
	ldr r0, _08021B44 @ => 0x00000D71
	bl FUN_08050820
	adds r3, r0, #0
	ldr r0, _08021B48 @ => 0x0000011D
	str r6, [sp]
	movs r1, #0x78
	movs r2, #0x66
	bl FUN_0801F8B8
	adds r4, r0, #0
	movs r0, #0xe2
	lsls r0, r0, #3
	bl FUN_08050820
	bl FUN_08020320
	ldr r0, _08021B4C @ => 0x0000076B
	bl FUN_08050820
	adds r3, r0, #0
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x72
	bl FUN_0801F8B8
_08021AF8:
	bl FUN_0804C084
	cmp r0, #0
	bne _08021B10
	ldr r0, _08021B50 @ => 0x030042B0
	ldrh r1, [r0, #0x14]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08021B10
	bl FUN_0804C010
_08021B10:
	adds r0, r5, #0
	bl FUN_08022220
_08021B16:
	ldr r0, _08021B54 @ => 0x03006440
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08021B5C
	ldr r0, _08021B38 @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08021B5C
	ldr r1, _08021B58 @ => 0x03004720
	movs r0, #3
	str r0, [r1, #0x14]
	b _08021F2A
	.align 2, 0
_08021B38: .4byte gUnk_03004374
_08021B3C: .4byte gUnk_03005E20
_08021B40: .4byte 0xFFFF8000
_08021B44: .4byte 0x00000D71
_08021B48: .4byte 0x0000011D
_08021B4C: .4byte 0x0000076B
_08021B50: .4byte gUnk_030042B0
_08021B54: .4byte gUnk_03006440
_08021B58: .4byte gUnk_03004720
_08021B5C:
	cmp r5, #1
	bne _08021B6A
	ldr r0, _08021B88 @ => 0x03004720
	str r5, [r0, #0x14]
	movs r0, #0
	bl FUN_08021F40
_08021B6A:
	ldr r0, _08021B8C @ => 0x030042B0
	ldrh r1, [r0, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08021B7E
	bl FUN_0804BFCC
_08021B7A:
	bl FUN_080221FC
_08021B7E:
	adds r0, r5, #0
	bl FUN_08022220
	b _08021F2A
	.align 2, 0
_08021B88: .4byte gUnk_03004720
_08021B8C: .4byte gUnk_030042B0
_08021B90:
	ldr r0, [r2]
	movs r4, #4
	ands r0, r4
	cmp r0, #0
	bne _08021B9C
	b _08021F2A
_08021B9C:
	ldr r0, _08021BAC @ => 0x03005E30
	ldr r0, [r0]
	str r0, [sp, #4]
	movs r0, #5
	add r1, sp, #4
	bl FUN_08047B3C
	b _08021F26
	.align 2, 0
_08021BAC: .4byte gUnk_03005E30
_08021BB0:
	ldr r0, [r2]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08021BBC
	b _08021F2A
_08021BBC:
	add r1, sp, #4
	ldr r0, _08021BD4 @ => 0x03003DFC
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	movs r0, #6
	add r1, sp, #4
	bl FUN_08047B3C
	ldr r1, _08021BD8 @ => 0x03004720
	movs r0, #5
	str r0, [r1, #0x14]
	b _08021F2A
	.align 2, 0
_08021BD4: .4byte gSlotName
_08021BD8: .4byte gUnk_03004720
_08021BDC:
	ldr r0, [r2]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08021BE8
	b _08021F2A
_08021BE8:
	add r1, sp, #4
	ldr r0, _08021C00 @ => 0x03003E04
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	movs r0, #7
	add r1, sp, #4
	bl FUN_08047B3C
	ldr r1, _08021C04 @ => 0x03004720
	movs r0, #6
	str r0, [r1, #0x14]
	b _08021F2A
	.align 2, 0
_08021C00: .4byte gUnk_03003E04
_08021C04: .4byte gUnk_03004720
_08021C08:
	ldr r0, [r2]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08021C14
	b _08021F2A
_08021C14:
	add r1, sp, #4
	ldr r0, _08021C2C @ => 0x03003E0C
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	movs r0, #8
	add r1, sp, #4
	bl FUN_08047B3C
	ldr r1, _08021C30 @ => 0x03004720
	movs r0, #7
	str r0, [r1, #0x14]
	b _08021F2A
	.align 2, 0
_08021C2C: .4byte gUnk_03003E0C
_08021C30: .4byte gUnk_03004720
_08021C34:
	ldr r0, [r2]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08021C40
	b _08021F2A
_08021C40:
	add r1, sp, #4
	ldr r0, _08021C58 @ => 0x03003E6C
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #9
	bl FUN_08047B3C
	ldr r1, _08021C5C @ => 0x03004720
	movs r0, #8
	str r0, [r1, #0x14]
	b _08021F2A
	.align 2, 0
_08021C58: .4byte gUnk_03003E6C
_08021C5C: .4byte gUnk_03004720
_08021C60:
	ldr r0, [r2]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08021C6C
	b _08021F2A
_08021C6C:
	movs r0, #9
	str r0, [r6, #0x14]
	b _08021F2A
_08021C72:
	movs r0, #0xa
	str r0, [r6, #0x14]
	b _08021F2A
_08021C78:
	ldr r0, [r2]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08021C84
	b _08021F2A
_08021C84:
	movs r0, #0
	bl FUN_0800C5FC
	movs r0, #0xfa
	lsls r0, r0, #3
	bl FUN_08022288
	bl FUN_0802234C
	cmp r0, #0
	bne _08021CC8
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #2
	movs r1, #0
	bl FUN_0801FEA0
	ldr r0, _08021CC0 @ => 0x0000073B
	bl FUN_08050820
	adds r3, r0, #0
	ldr r0, _08021CC4 @ => 0x00000195
	movs r1, #1
	str r1, [sp]
	movs r1, #0x78
	movs r2, #0x38
	bl FUN_0801F8B8
	b _08021CFC
	.align 2, 0
_08021CC0: .4byte 0x0000073B
_08021CC4: .4byte 0x00000195
_08021CC8:
	ldr r1, _08021CD4 @ => 0x03001DC8
	movs r0, #3
	strb r0, [r1, #8]
	movs r4, #0
	adds r5, r1, #0
	b _08021CDA
	.align 2, 0
_08021CD4: .4byte gUnk_03001DC8
_08021CD8:
	adds r4, #1
_08021CDA:
	cmp r4, #2
	bgt _08021CEA
	adds r0, r4, #0
	bl FUN_08022310
	cmp r0, #0
	beq _08021CD8
	strb r4, [r5, #8]
_08021CEA:
	movs r4, #0
	ldr r5, _08021D28 @ => 0x03001DC8
_08021CEE:
	ldrb r1, [r5, #8]
	adds r0, r4, #0
	bl FUN_08022130
	adds r4, #1
	cmp r4, #2
	ble _08021CEE
_08021CFC:
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r6, _08021D2C @ => 0x03004720
	ldr r4, _08021D28 @ => 0x03001DC8
	movs r3, #2
	rsbs r3, r3, #0
	movs r2, #0
_08021D0A:
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldr r0, [r1, #0xc]
	ands r0, r3
	str r0, [r1, #0xc]
	adds r2, #1
	adds r0, r2, #0
	cmp r2, #1
	ble _08021D0A
	str r2, [sp, #0xc]
	movs r0, #0xb
	str r0, [r6, #0x14]
	b _08021F2A
	.align 2, 0
_08021D28: .4byte gUnk_03001DC8
_08021D2C: .4byte gUnk_03004720
_08021D30:
	ldr r3, _08021D58 @ => 0x030042B0
	ldrh r1, [r3, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08021D84
	ldr r1, _08021D5C @ => 0x08062ADC
	ldr r0, _08021D60 @ => 0x03001DC8
	ldrb r2, [r0, #8]
	lsls r0, r2, #3
	adds r0, r0, r1
	ldrb r0, [r0, #6]
	ldrh r3, [r3, #4]
	cmp r0, r3
	bhs _08021D64
	movs r0, #3
	bl FUN_08021F40
	b _08021F2A
	.align 2, 0
_08021D58: .4byte gUnk_030042B0
_08021D5C: .4byte ROMREF_08062ADC
_08021D60: .4byte gUnk_03001DC8
_08021D64:
	adds r0, r2, #0
	bl FUN_08022310
	cmp r0, #0
	bne _08021D76
	movs r0, #0xbe
	bl FUN_0804DE0C
	b _08021F2A
_08021D76:
	ldr r1, _08021D80 @ => 0x03004720
	movs r0, #0xe
	str r0, [r1, #0x14]
	b _08021F2A
	.align 2, 0
_08021D80: .4byte gUnk_03004720
_08021D84:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08021D92
	bl FUN_08022060
	b _08021F2A
_08021D92:
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _08021D9C
	b _08021F2A
_08021D9C:
	bl FUN_0802234C
	cmp r0, #1
	bgt _08021DA6
	b _08021F2A
_08021DA6:
	movs r0, #0xb2
	bl FUN_0804DE0C
	ldr r0, _08021DE8 @ => 0x03001DC8
	ldrb r0, [r0, #8]
	str r0, [sp, #0xc]
	add r4, sp, #0xc
	movs r5, #0
_08021DB6:
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #2
	movs r3, #1
	bl FUN_08024A88
	ldr r0, [sp, #0xc]
	bl FUN_08022310
	cmp r0, #0
	beq _08021DB6
	ldr r4, _08021DE8 @ => 0x03001DC8
	ldrb r0, [r4, #8]
	ldr r1, [sp, #0xc]
	bl FUN_08022130
	ldr r1, [sp, #0xc]
	adds r0, r1, #0
	bl FUN_08022130
	ldr r0, [sp, #0xc]
	strb r0, [r4, #8]
	b _08021F2A
	.align 2, 0
_08021DE8: .4byte gUnk_03001DC8
_08021DEC:
	ldr r0, _08021E30 @ => 0x030042B0
	ldrh r1, [r0, #0x14]
	movs r4, #1
	ands r4, r1
	cmp r4, #0
	bne _08021E80
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08021E3C
	movs r0, #0xc
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0x1e
	bl FUN_0800C790
	movs r0, #0xfa
	lsls r0, r0, #3
	bl FUN_08022288
	ldr r0, _08021E34 @ => 0x03001DC8
	strb r4, [r0, #8]
	movs r0, #0
	movs r1, #0
	bl FUN_08022130
	ldr r1, _08021E38 @ => 0x03004720
	movs r0, #0xb
	str r0, [r1, #0x14]
	b _08021F2A
	.align 2, 0
_08021E30: .4byte gUnk_030042B0
_08021E34: .4byte gUnk_03001DC8
_08021E38: .4byte gUnk_03004720
_08021E3C:
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08021F2A
	ldr r4, _08021E70 @ => 0x03001DC8
	ldrb r0, [r4, #9]
	str r0, [sp, #0xc]
	add r0, sp, #0xc
	str r2, [sp]
	movs r1, #0
	movs r2, #4
	movs r3, #1
	bl FUN_08024A88
	ldrb r0, [r4, #9]
	ldr r1, [sp, #0xc]
	bl FUN_080221B4
	ldr r1, [sp, #0xc]
	adds r0, r1, #0
	bl FUN_080221B4
	ldr r0, [sp, #0xc]
	strb r0, [r4, #9]
	b _08021F2A
	.align 2, 0
_08021E70: .4byte gUnk_03001DC8
_08021E74:
	ldr r0, _08021E88 @ => 0x030042B0
	ldrh r1, [r0, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08021E8C
_08021E80:
	movs r0, #0xe
	str r0, [r6, #0x14]
	b _08021F2A
	.align 2, 0
_08021E88: .4byte gUnk_030042B0
_08021E8C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08021F2A
	movs r0, #0xa
	add r1, sp, #4
	bl FUN_08047B3C
	movs r0, #0xb1
	bl FUN_0804DE0C
	b _08021F2A
_08021EA4:
	ldr r0, _08021EB8 @ => 0x03001DC8
	ldrb r0, [r0, #8]
	cmp r0, #1
	beq _08021EC8
	cmp r0, #1
	bgt _08021EBC
	cmp r0, #0
	beq _08021EC2
	b _08021F2A
	.align 2, 0
_08021EB8: .4byte gUnk_03001DC8
_08021EBC:
	cmp r0, #2
	beq _08021ECE
	b _08021F2A
_08021EC2:
	movs r0, #0x18
	movs r1, #5
	b _08021ED2
_08021EC8:
	movs r0, #0x18
	movs r1, #3
	b _08021ED2
_08021ECE:
	movs r0, #0x18
	movs r1, #2
_08021ED2:
	movs r2, #0
	movs r3, #1
	bl FUN_0802CEF8
	b _08021F2A
_08021EDC:
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x14
	ands r0, r1
	cmp r0, #0
	beq _08021F2A
	ldr r0, [r2]
	ldr r1, _08021EFC @ => 0xF7FFFFFF
	ands r0, r1
	str r0, [r2]
	movs r0, #0x10
	str r0, [r6, #0x14]
	bl FUN_0804C200
	b _08021F2A
	.align 2, 0
_08021EFC: .4byte 0xF7FFFFFF
_08021F00:
	ldr r0, _08021F34 @ => 0x03004374
	ldr r4, [r0]
	movs r0, #0x20
	ands r4, r0
	cmp r4, #0
	bne _08021F2A
	bl FUN_0804B13C
	bl FUN_08047E10
	ldr r0, _08021F38 @ => 0x030042B0
	movs r1, #1
	strh r1, [r0, #4]
	strh r4, [r0, #6]
	movs r0, #1
	bl FUN_08047D54
	bl FUN_08047C7C
_08021F26:
	ldr r0, _08021F3C @ => 0x03004720
	str r4, [r0, #0x14]
_08021F2A:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08021F34: .4byte gUnk_03004374
_08021F38: .4byte gUnk_030042B0
_08021F3C: .4byte gUnk_03004720

	thumb_func_start FUN_08021F40
FUN_08021F40: @ 0x08021F40
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r1, _08021F98 @ => 0x08062ACC
	lsls r0, r0, #2
	adds r6, r0, r1
	ldrh r4, [r6]
	ldr r5, _08021F9C @ => 0x03004720
	ldr r0, [r5, #8]
	cmp r0, r4
	beq _08021FA4
	ldr r1, [r5, #0x18]
	cmp r1, #0
	bne _08021FA0
	movs r0, #4
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0x1e
	bl FUN_0800C7A8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	adds r0, r4, #0
	bl FUN_08050820
	adds r3, r0, #0
	str r3, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x55
	movs r1, #0x78
	movs r2, #0x82
	movs r3, #0xf0
	bl FUN_08020098
	ldrh r0, [r6, #2]
	str r0, [r5, #0x18]
	str r4, [r5, #8]
	b _08021FA4
	.align 2, 0
_08021F98: .4byte ROMREF_08062ACC
_08021F9C: .4byte gUnk_03004720
_08021FA0:
	subs r0, r1, #1
	str r0, [r5, #0x18]
_08021FA4:
	ldr r5, _08021FE4 @ => 0x03004720
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _08021FDC
	movs r0, #2
	str r0, [sp]
	movs r4, #0
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0x1e
	bl FUN_0800C7A8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r3, [r5, #0xc]
	movs r0, #1
	str r0, [sp]
	movs r0, #0xf5
	movs r1, #0x78
	movs r2, #0x66
	bl FUN_0801F8B8
	str r4, [r5, #0xc]
_08021FDC:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08021FE4: .4byte gUnk_03004720

	thumb_func_start FUN_08021FE8
FUN_08021FE8: @ 0x08021FE8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	movs r0, #0x2c
	bl FUN_080012D8
	adds r5, r0, #0
	movs r0, #0x11
	str r0, [r5, #0xc]
	strh r4, [r5, #0xa]
	adds r3, r5, #0
	adds r3, #0xa9
	lsls r2, r4, #4
	ldrb r1, [r3]
	movs r0, #0xf
	ands r0, r1
	orrs r0, r2
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3]
	ldr r6, _08022058 @ => 0x08062AF4
	lsls r0, r4, #2
	mov r8, r0
	add r4, r8
	lsls r4, r4, #2
	adds r0, r4, r6
	ldrb r1, [r0]
	lsls r1, r1, #0x10
	ldrb r2, [r0, #1]
	lsls r2, r2, #0x10
	adds r0, r5, #0
	bl FUN_08001728
	adds r6, #4
	adds r4, r4, r6
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_080015B8
	ldr r0, _0802205C @ => 0x03001DC8
	add r8, r0
	mov r0, r8
	str r5, [r0]
	ldr r0, [r5, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0xc]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08022058: .4byte ROMREF_08062AF4
_0802205C: .4byte gUnk_03001DC8

	thumb_func_start FUN_08022060
FUN_08022060: @ 0x08022060
	push {r4, lr}
	sub sp, #0x10
	movs r0, #0
	str r0, [sp, #8]
	ldr r1, _080220CC @ => 0x03004720
	movs r0, #0xf
	str r0, [r1, #0x14]
	movs r0, #0xc
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0x1e
	bl FUN_0800C790
	movs r0, #2
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0x1e
	bl FUN_0800C790
	ldr r0, _080220D0 @ => 0x08062AC8
	ldr r0, [r0]
	bl FUN_0801FE58
	ldr r0, _080220D4 @ => 0x000009A8
	bl FUN_08050820
	adds r4, r0, #0
	bl FUN_08050814
	cmp r0, #2
	beq _080220AE
	cmp r0, #5
	beq _080220AE
	cmp r0, #4
	bne _080220D8
_080220AE:
	movs r0, #1
	movs r1, #0
	movs r2, #1
	rsbs r2, r2, #0
	bl FUN_0801FEA0
	str r4, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r1, #0x78
	movs r2, #9
	movs r3, #0xc0
	bl FUN_08020098
	b _080220F2
	.align 2, 0
_080220CC: .4byte gUnk_03004720
_080220D0: .4byte ROMREF_08062AC8
_080220D4: .4byte 0x000009A8
_080220D8:
	movs r0, #3
	movs r1, #0
	movs r2, #1
	rsbs r2, r2, #0
	bl FUN_0801FEA0
	movs r0, #1
	str r0, [sp]
	movs r1, #0x78
	movs r2, #0xc
	adds r3, r4, #0
	bl FUN_0801F8B8
_080220F2:
	bl FUN_0804C084
	cmp r0, #0
	bne _08022102
	movs r0, #0xb
	add r1, sp, #8
	bl FUN_08047B3C
_08022102:
	movs r0, #0xb1
	bl FUN_0804DE0C
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start Multiplayer_Terminate
Multiplayer_Terminate: @ 0x08022110
	push {lr}
	movs r0, #0x3f
	bl FUN_080458EC
	ldr r0, _0802212C @ => 0x03002C40
	bl FUN_08000BF8
	bl FUN_0800CB20
	bl FUN_08015834
	pop {r0}
	bx r0
	.align 2, 0
_0802212C: .4byte gUnk_03002C40
