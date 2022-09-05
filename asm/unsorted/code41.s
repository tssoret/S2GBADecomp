.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_08051814
FUN_08051814: @ 0x08051814
	ldr r3, _08051828 @ => 0x030028E0
	str r0, [r3]
	ldr r0, _0805182C @ => 0x030028E4
	str r1, [r0]
	ldr r0, _08051830 @ => 0x030028E8
	str r2, [r0]
	ldr r1, _08051834 @ => 0x03004720
	movs r0, #4
	str r0, [r1, #0x14]
	bx lr
	.align 2, 0
_08051828: .4byte gUnk_030028E0
_0805182C: .4byte gUnk_030028E4
_08051830: .4byte gUnk_030028E8
_08051834: .4byte gUnk_03004720

	thumb_func_start FUN_08051838
FUN_08051838: @ 0x08051838
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r0, _08051854 @ => 0x030028D0
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _08051858
	rsbs r0, r3, #0
	orrs r0, r3
	lsrs r7, r0, #0x1f
	b _0805185A
	.align 2, 0
_08051854: .4byte gUnk_030028D0
_08051858:
	movs r7, #2
_0805185A:
	lsls r4, r2, #5
	adds r4, #0x83
	lsls r5, r2, #4
	adds r5, #0x5f
	movs r1, #0xc6
	lsls r1, r1, #3
	adds r0, r2, r1
	bl FUN_08050820
	adds r6, r0, #0
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #1
	adds r1, r7, #0
	bl FUN_0801FEA0
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xc4
	adds r2, r5, #0
	adds r3, r6, #0
	bl FUN_0801F8B8
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08051894
FUN_08051894: @ 0x08051894
	push {r4, lr}
	sub sp, #4
	ldr r0, _080518D8 @ => 0x03004720
	ldr r0, [r0, #0x14]
	cmp r0, #1
	bne _080518B4
	movs r0, #9
	str r0, [sp]
	movs r0, #0
	movs r1, #0x13
	movs r2, #0xb
	movs r3, #0xb
	bl FUN_0800C790
	bl FUN_080513E8
_080518B4:
	ldr r4, _080518DC @ => 0x030028C8
	ldr r0, [r4]
	bl FUN_0804E168
	cmp r0, #0
	beq _080518C6
	ldr r0, [r4]
	bl FUN_0804E03C
_080518C6:
	movs r0, #0xad
	bl FUN_0804DE0C
	str r0, [r4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080518D8: .4byte gUnk_03004720
_080518DC: .4byte gUnk_030028C8

	thumb_func_start FUN_080518E0
FUN_080518E0: @ 0x080518E0
	push {lr}
	cmp r2, #0x20
	beq _0805191C
	cmp r2, #0x20
	bhi _080518F0
	cmp r2, #0xa
	beq _0805190E
	b _0805190A
_080518F0:
	cmp r2, #0x27
	beq _0805191C
	cmp r2, #0x28
	bne _0805190A
	ldrh r0, [r1, #8]
	cmp r0, #0
	beq _08051928
	ldrb r0, [r1, #0xa]
	movs r1, #0x64
	bl FUN_0803A10C
	cmp r0, #0
	bne _08051928
_0805190A:
	movs r0, #0
	b _0805192A
_0805190E:
	ldrh r0, [r1, #8]
	cmp r0, #0
	beq _08051928
	ldrh r0, [r1, #0xa]
	cmp r0, #2
	beq _08051928
	b _0805190A
_0805191C:
	ldrh r0, [r1, #8]
	cmp r0, #0
	beq _08051928
	ldrh r0, [r1, #0xa]
	cmp r0, #1
	bne _0805190A
_08051928:
	movs r0, #1
_0805192A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08051930
FUN_08051930: @ 0x08051930
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	movs r7, #1
	ldr r0, [r5, #0xc]
	cmp r0, #1
	bne _08051942
	strh r7, [r5, #6]
_08051942:
	ldrh r0, [r5, #6]
	cmp r0, #1
	beq _080519F8
	cmp r0, #1
	bgt _08051952
	cmp r0, #0
	beq _0805195C
	b _08051A18
_08051952:
	cmp r0, #0x3e
	beq _08051978
	cmp r0, #0x3f
	beq _08051992
	b _08051A18
_0805195C:
	movs r1, #0x64
	movs r3, #0x8d
	lsls r3, r3, #1
	movs r0, #6
	str r0, [sp]
	str r1, [sp, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0xb
	bl FUN_0803DB6C
	movs r0, #0x3e
	strh r0, [r5, #6]
	b _08051A18
_08051978:
	ldr r2, [r5]
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08051A18
	adds r0, r2, #0
	bl FUN_08001F78
	movs r0, #0x3f
	strh r0, [r5, #6]
	b _08051A18
_08051992:
	ldr r4, _080519F4 @ => 0x03003E28
	ldrh r0, [r6, #8]
	bl FUN_0803DCFC
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08038A30
	ldrh r0, [r5, #8]
	cmp r0, #0
	beq _08051A18
	subs r0, #1
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08051A18
	bl FUN_08021320
	cmp r0, #0
	bne _080519DA
	movs r0, #0x95
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r0, r4, #0
	movs r1, #3
	bl FUN_0801DF10
	cmp r0, #0
	bne _080519DA
	adds r0, r4, #0
	movs r1, #3
	bl FUN_0801DEA8
_080519DA:
	ldr r4, _080519F4 @ => 0x03003E28
	ldrh r0, [r6, #8]
	bl FUN_0803DCFC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl FUN_08038B24
	movs r0, #1
	strh r0, [r5, #6]
	b _08051A18
	.align 2, 0
_080519F4: .4byte gUnk_03003E28
_080519F8:
	movs r0, #0x83
	bl FUN_0804DE0C
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #6
	movs r3, #4
	bl FUN_0803DC54
	adds r0, r6, #0
	bl FUN_0803CB84
	adds r0, r6, #0
	bl FUN_0803C68C
	movs r7, #2
_08051A18:
	adds r0, r7, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08051A24
FUN_08051A24: @ 0x08051A24
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	movs r6, #1
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _08051A3E
	bl FUN_08021320
	cmp r0, #0
	beq _08051A3E
	strh r6, [r4, #6]
_08051A3E:
	ldrh r0, [r4, #6]
	cmp r0, #5
	beq _08051AFC
	cmp r0, #5
	bgt _08051A52
	cmp r0, #0
	beq _08051A66
	cmp r0, #1
	beq _08051B02
	b _08051B32
_08051A52:
	cmp r0, #0x40
	beq _08051A96
	cmp r0, #0x40
	bgt _08051A60
	cmp r0, #8
	beq _08051AB2
	b _08051B32
_08051A60:
	cmp r0, #0x41
	beq _08051AE8
	b _08051B32
_08051A66:
	ldr r0, [r4]
	movs r1, #0
	bl FUN_0801F6B4
	str r0, [r5, #0x38]
	movs r0, #6
	str r0, [sp]
	movs r0, #0x48
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xa
	movs r3, #0x98
	bl FUN_0803DB6C
	ldr r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0x5a
	strh r1, [r0]
	movs r0, #0x40
	strh r0, [r4, #6]
	b _08051B32
_08051A96:
	ldr r2, [r4]
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08051B32
	adds r0, r2, #0
	movs r1, #0x49
	bl FUN_08001F20
	movs r0, #8
	strh r0, [r4, #6]
	b _08051B32
_08051AB2:
	ldr r2, [r5, #0x38]
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0803CC04
	cmp r0, #1
	bne _08051B32
	ldr r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08051AE4 @ => 0xFFFF0000
	cmp r1, r0
	bne _08051B32
	ldr r0, [r4]
	movs r1, #0x4a
	bl FUN_08001F20
	movs r0, #0x41
	strh r0, [r4, #6]
	b _08051B32
	.align 2, 0
_08051AE4: .4byte 0xFFFF0000
_08051AE8:
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08051B32
	movs r0, #5
	strh r0, [r4, #6]
	b _08051B32
_08051AFC:
	movs r0, #1
	strh r0, [r4, #6]
	b _08051B32
_08051B02:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #6
	movs r3, #4
	bl FUN_0803DC54
	adds r0, r5, #0
	adds r0, #0x68
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08051B30
	ldrh r0, [r5, #8]
	cmp r0, #0x6d
	bne _08051B30
	bl FUN_08021320
	cmp r0, #0
	bne _08051B30
	ldr r0, _08051B3C @ => 0x0300407C
	movs r1, #5
	bl FUN_0801DEA8
_08051B30:
	movs r6, #2
_08051B32:
	adds r0, r6, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08051B3C: .4byte gEpisode_Data

	thumb_func_start FUN_08051B40
FUN_08051B40: @ 0x08051B40
	movs r0, #1
	bx lr

	thumb_func_start FUN_08051B44
FUN_08051B44: @ 0x08051B44
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl FUN_08001D8C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08051B5A
	ldr r0, [r4, #0x40]
	cmp r0, #1
	beq _08051B6E
_08051B5A:
	adds r0, r4, #0
	bl FUN_0803D868
	adds r1, r4, #0
	adds r1, #0x3d
	ldrb r1, [r1]
	cmp r0, r1
	bhs _08051B6E
	movs r0, #1
	b _08051B70
_08051B6E:
	movs r0, #0
_08051B70:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08051B78
FUN_08051B78: @ 0x08051B78
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	movs r4, #0
	ldr r6, _08051BA8 @ => 0x0300407C
	adds r0, r6, #0
	bl FUN_0801E138
	cmp r0, #0
	bne _08051BB6
	adds r0, r6, #0
	movs r1, #5
	bl FUN_0801DF10
	cmp r0, #0
	bne _08051BB6
	movs r0, #1
	bl FUN_080213F8
	cmp r0, #0
	bne _08051BAC
	movs r0, #0x27
	strb r0, [r5]
	b _08051BE2
	.align 2, 0
_08051BA8: .4byte gEpisode_Data
_08051BAC:
	movs r0, #0x27
	strb r0, [r5]
	movs r0, #0x20
	strb r0, [r5, #1]
	b _08051BE2
_08051BB6:
	adds r0, r7, #0
	bl FUN_0803CE64
	cmp r0, #0
	bne _08051BC6
	adds r1, r5, r4
	movs r0, #0x28
	b _08051BCA
_08051BC6:
	adds r1, r5, r4
	movs r0, #0x20
_08051BCA:
	strb r0, [r1]
	adds r4, #1
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r7, #0
	bl FUN_0803CA10
	cmp r0, #0
	beq _08051BE2
	adds r1, r5, r4
	movs r0, #0xa
	strb r0, [r1]
_08051BE2:
	movs r0, #1
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08051BEC
FUN_08051BEC: @ 0x08051BEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	bl FUN_0803D1F0
	adds r4, r0, #0
	cmp r4, #0
	beq _08051C26
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
	movs r3, #0
	bl FUN_08043BB8
	adds r0, r5, #0
	movs r1, #0xa
	bl FUN_08001F20
_08051C26:
	adds r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_08051C30
FUN_08051C30: @ 0x08051C30
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0803D8C8
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	cmp r0, #0x27
	beq _08051C6A
	cmp r0, #0x27
	bgt _08051C4E
	cmp r0, #0xa
	beq _08051C5A
	cmp r0, #0x20
	beq _08051C62
	b _08051C72
_08051C4E:
	cmp r0, #0x28
	bne _08051C72
	adds r0, r4, #0
	bl FUN_08051930
	b _08051C74
_08051C5A:
	adds r0, r4, #0
	bl FUN_0803C6F0
	b _08051C74
_08051C62:
	adds r0, r4, #0
	bl FUN_08051A24
	b _08051C74
_08051C6A:
	adds r0, r4, #0
	bl FUN_08051C80
	b _08051C74
_08051C72:
	movs r0, #0
_08051C74:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08051C7C
FUN_08051C7C: @ 0x08051C7C
	bx lr
	.align 2, 0

	thumb_func_start FUN_08051C80
FUN_08051C80: @ 0x08051C80
	push {lr}
	ldr r1, _08051C94 @ => 0x03005C60
	ldr r0, _08051C98 @ => 0x00000881
	strh r0, [r1]
	bl FUN_08041BF0
	movs r0, #2
	pop {r1}
	bx r1
	.align 2, 0
_08051C94: .4byte gChoiceIDs
_08051C98: .4byte 0x00000881

	thumb_func_start FUN_08051C9C
FUN_08051C9C: @ 0x08051C9C
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, _08051CC0 @ => 0x03003DF0
	movs r0, #0xdc
	lsls r0, r0, #2
	adds r2, r3, r0
	movs r0, #1
	lsls r0, r4
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	cmp r4, #5
	bhi _08051D16
	lsls r0, r4, #2
	ldr r1, _08051CC4 @ =_08051CC8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08051CC0: .4byte gUnk_03003DF0
_08051CC4: .4byte _08051CC8
_08051CC8: @ jump table
	.4byte _08051CE0 @ case 0
	.4byte _08051CF0 @ case 1
	.4byte _08051CFA @ case 2
	.4byte _08051D04 @ case 3
	.4byte _08051D16 @ case 4
	.4byte _08051D0E @ case 5
_08051CE0:
	ldr r0, _08051CEC @ => 0x0300407C
	movs r1, #0xf
	bl FUN_0801DDC0
	b _08051D16
	.align 2, 0
_08051CEC: .4byte gEpisode_Data
_08051CF0:
	adds r1, r3, #0
	adds r1, #0x34
	movs r0, #3
	strb r0, [r1]
	b _08051D16
_08051CFA:
	adds r1, r3, #0
	adds r1, #0x34
	movs r0, #2
	strb r0, [r1]
	b _08051D16
_08051D04:
	adds r1, r3, #0
	adds r1, #0x34
	movs r0, #1
	strb r0, [r1]
	b _08051D16
_08051D0E:
	ldr r0, _08051D1C @ => 0x0300407C
	movs r1, #7
	bl FUN_0801DDC0
_08051D16:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08051D1C: .4byte gEpisode_Data

	thumb_func_start FUN_08051D20
FUN_08051D20: @ 0x08051D20
	ldr r0, _08051D30 @ => 0x03003DF0
	movs r1, #0xdc
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
	bx lr
	.align 2, 0
_08051D30: .4byte gUnk_03003DF0

	thumb_func_start FUN_08051D34
FUN_08051D34: @ 0x08051D34
	push {lr}
	ldr r1, _08051D50 @ => 0x03003DF0
	movs r2, #0xdc
	lsls r2, r2, #2
	adds r1, r1, r2
	ldrh r1, [r1]
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _08051D54
	movs r0, #0
	b _08051D56
	.align 2, 0
_08051D50: .4byte gUnk_03003DF0
_08051D54:
	movs r0, #1
_08051D56:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08051D5C
FUN_08051D5C: @ 0x08051D5C
	push {lr}
	ldr r0, _08051D6C @ => 0x03004160
	movs r1, #2
	bl FUN_08044558
	pop {r0}
	bx r0
	.align 2, 0
_08051D6C: .4byte gPlotTwist_Flags

	thumb_func_start FUN_08051D70
FUN_08051D70: @ 0x08051D70
	push {lr}
	ldr r0, _08051D80 @ => 0x03004160
	movs r1, #2
	bl FUN_08044644
	pop {r0}
	bx r0
	.align 2, 0
_08051D80: .4byte gPlotTwist_Flags

	thumb_func_start FUN_08051D84
FUN_08051D84: @ 0x08051D84
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r4, #0
	ldr r0, _08051E04 @ => 0x030028F0
	ldrh r1, [r0]
	adds r2, r0, #0
	adds r6, r2, #0
	adds r6, #0xc4
	cmp r1, #0
	beq _08051DAC
	adds r1, r2, #0
_08051DA6:
	ldrh r0, [r1]
	cmp r0, #0
	bne _08051DA6
_08051DAC:
	lsls r1, r4, #4
	adds r0, r1, r2
	adds r0, #0xb4
	ldrh r0, [r0]
	cmp r0, r5
	bhs _08051DC8
	adds r0, r1, #0
	adds r0, #0xb4
	adds r1, r0, r2
_08051DBE:
	adds r1, #0x10
	adds r4, #1
	ldrh r0, [r1]
	cmp r0, r5
	blo _08051DBE
_08051DC8:
	movs r2, #0xa
	subs r2, r2, r4
	lsls r2, r2, #4
	lsls r4, r4, #4
	adds r0, r4, r6
	adds r1, r6, #0
	subs r1, #0x10
	adds r1, r4, r1
	bl FUN_0802C830
	adds r2, r6, #0
	subs r2, #0xc4
	adds r0, r4, r2
	adds r1, r0, #0
	adds r1, #0xb4
	strh r5, [r1]
	adds r0, #0xb6
	strh r7, [r0]
	subs r0, r6, #4
	adds r4, r4, r0
	mov r0, r8
	str r0, [r4]
	ldrh r0, [r2]
	movs r0, #1
	strh r0, [r2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08051E04: .4byte gUnk_030028F0

	thumb_func_start FUN_08051E08
FUN_08051E08: @ 0x08051E08
	push {r4, r5, r6, lr}
	ldr r5, _08051E5C @ => 0x030028F0
	ldr r6, _08051E60 @ => 0x03006548
	ldr r1, [r6]
	lsls r1, r1, #4
	adds r4, r5, #0
	adds r4, #0x10
	adds r3, r1, r4
	adds r0, r5, #0
	adds r0, #8
	adds r0, r1, r0
	adds r2, r5, #0
	adds r2, #0xc
	adds r1, r1, r2
	ldr r2, [r3]
	bl _call_via_r2
	ldr r0, [r6]
	adds r0, #1
	str r0, [r6]
	lsls r0, r0, #4
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _08051E3C
	str r0, [r6]
_08051E3C:
	ldr r2, _08051E64 @ => 0x04000004
	ldrh r1, [r2]
	movs r0, #0xff
	ands r0, r1
	strh r0, [r2]
	ldr r0, [r6]
	lsls r0, r0, #4
	adds r0, r0, r5
	ldrh r0, [r0, #4]
	lsls r0, r0, #8
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08051E5C: .4byte gUnk_030028F0
_08051E60: .4byte gUnk_03006548
_08051E64: .4byte 0x04000004

	thumb_func_start FUN_08051E68
FUN_08051E68: @ 0x08051E68
	push {lr}
	ldr r1, _08051E98 @ => 0x03006548
	movs r0, #0
	str r0, [r1]
	bl FUN_080520C0
	ldr r0, _08051E9C @ => 0x08090148
	movs r1, #1
	bl FUN_08051EA8
	ldr r0, _08051EA0 @ => 0x030028F4
	adds r1, r0, #0
	adds r1, #0xb0
	movs r2, #0xb0
	bl FUN_0802CBAC
	ldr r0, _08051EA4 @ => FUN_08051E08
	bl FUN_08024F98
	bl FUN_08051FBC
	pop {r0}
	bx r0
	.align 2, 0
_08051E98: .4byte gUnk_03006548
_08051E9C: .4byte ROMREF_08090148
_08051EA0: .4byte gUnk_030028F4
_08051EA4: .4byte FUN_08051E08

	thumb_func_start FUN_08051EA8
FUN_08051EA8: @ 0x08051EA8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r1, _08051ED8 @ => 0x030028F0
	strh r5, [r1, #2]
_08051EB2:
	ldrh r0, [r1]
	cmp r0, #0
	bne _08051EB2
	bl FUN_080520C0
	ldr r4, _08051EDC @ => 0x030029A4
	lsls r2, r5, #4
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_0802CBAC
	subs r4, #0xb4
	ldrh r0, [r4]
	movs r0, #1
	strh r0, [r4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08051ED8: .4byte gUnk_030028F0
_08051EDC: .4byte gUnk_030029A4

	thumb_func_start FUN_08051EE0
FUN_08051EE0: @ 0x08051EE0
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r3, #0
	ldr r0, _08051F40 @ => 0x030028F0
	ldrh r1, [r0]
	adds r2, r0, #0
	adds r5, r2, #0
	adds r5, #0xb4
	cmp r1, #0
	beq _08051EFE
	adds r1, r2, #0
_08051EF8:
	ldrh r0, [r1]
	cmp r0, #0
	bne _08051EF8
_08051EFE:
	lsls r1, r3, #4
	adds r0, r1, r2
	adds r0, #0xb4
	ldrh r0, [r0]
	cmp r0, r4
	beq _08051F1A
	adds r0, r1, #0
	adds r0, #0xb4
	adds r1, r0, r2
_08051F10:
	adds r1, #0x10
	adds r3, #1
	ldrh r0, [r1]
	cmp r0, r4
	bne _08051F10
_08051F1A:
	movs r2, #0xb
	subs r2, r2, r3
	lsls r2, r2, #4
	lsls r1, r3, #4
	adds r0, r1, r5
	adds r3, r5, #0
	adds r3, #0x10
	adds r1, r1, r3
	bl FUN_0802C830
	adds r1, r5, #0
	subs r1, #0xb4
	ldrh r0, [r1]
	movs r0, #1
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08051F40: .4byte gUnk_030028F0

	thumb_func_start FUN_08051F44
FUN_08051F44: @ 0x08051F44
	push {r4, lr}
	ldr r4, _08051F6C @ => 0x030028F0
	ldrh r0, [r4]
	cmp r0, #0
	beq _08051F64
	adds r0, r4, #4
	adds r1, r4, #0
	adds r1, #0xb4
	movs r2, #0xb0
	bl FUN_0802CBAC
	ldrh r0, [r4]
	movs r1, #0
	strh r1, [r4]
	ldr r0, _08051F70 @ => 0x03006548
	str r1, [r0]
_08051F64:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08051F6C: .4byte gUnk_030028F0
_08051F70: .4byte gUnk_03006548

	thumb_func_start FUN_08051F74
FUN_08051F74: @ 0x08051F74
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r3, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	ldr r0, _08051FB8 @ => 0x030028F0
	ldrh r1, [r0]
	adds r3, r0, #0
	cmp r1, #0
	beq _08051F94
	adds r1, r3, #0
_08051F8E:
	ldrh r0, [r1]
	cmp r0, #0
	bne _08051F8E
_08051F94:
	lsls r2, r6, #4
	adds r0, r2, r3
	adds r1, r0, #0
	adds r1, #0xb4
	strh r4, [r1]
	adds r0, #0xb6
	strh r5, [r0]
	adds r0, r3, #0
	adds r0, #0xc0
	adds r2, r2, r0
	str r7, [r2]
	ldrh r0, [r3]
	movs r0, #1
	strh r0, [r3]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08051FB8: .4byte gUnk_030028F0

	thumb_func_start FUN_08051FBC
FUN_08051FBC: @ 0x08051FBC
	push {lr}
	ldr r1, _08051FD0 @ => 0x03006548
	movs r0, #0
	str r0, [r1]
	ldr r0, _08051FD4 @ => 0x030028F0
	ldrh r0, [r0, #4]
	bl FUN_08024FEC
	pop {r0}
	bx r0
	.align 2, 0
_08051FD0: .4byte gUnk_03006548
_08051FD4: .4byte gUnk_030028F0

	thumb_func_start FUN_08051FD8
FUN_08051FD8: @ 0x08051FD8
	ldr r2, _08051FF8 @ => 0x04000200
	ldrh r1, [r2]
	ldr r0, _08051FFC @ => 0x0000FFFB
	ands r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _08052000 @ => 0x04000004
	ldrh r1, [r2]
	movs r0, #0xdf
	ands r0, r1
	strh r0, [r2]
	bx lr
	.align 2, 0
_08051FF8: .4byte 0x04000200
_08051FFC: .4byte 0x0000FFFB
_08052000: .4byte 0x04000004

	thumb_func_start FUN_08052004
FUN_08052004: @ 0x08052004
	push {lr}
	ldr r2, _08052020 @ => 0x030028F0
_08052008:
	movs r1, #0
	ldrh r0, [r2]
	cmp r0, #0
	bne _08052012
	movs r1, #1
_08052012:
	cmp r1, #0
	beq _08052008
	bl FUN_08051FBC
	pop {r0}
	bx r0
	.align 2, 0
_08052020: .4byte gUnk_030028F0

	thumb_func_start FUN_08052024
FUN_08052024: @ 0x08052024
	push {lr}
	ldr r0, _08052038 @ => 0x08090148
	movs r1, #1
	bl FUN_08051EA8
	bl FUN_08024FC4
	pop {r0}
	bx r0
	.align 2, 0
_08052038: .4byte ROMREF_08090148

	thumb_func_start FUN_0805203C
FUN_0805203C: @ 0x0805203C
	ldr r1, _08052048 @ => 0x030028F0
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r0, [r0, #4]
	bx lr
	.align 2, 0
_08052048: .4byte gUnk_030028F0

	thumb_func_start FUN_0805204C
FUN_0805204C: @ 0x0805204C
	push {r4, lr}
	ldr r2, [r0]
	lsrs r4, r2, #0x10
	ldr r1, [r1]
	adds r2, r2, r1
	str r2, [r0]
	ldr r2, _0805207C @ => 0x04000004
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08052070
	movs r3, #2
_08052066:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08052066
_08052070:
	ldr r0, _08052080 @ => 0x0400001C
	strh r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805207C: .4byte 0x04000004
_08052080: .4byte 0x0400001C

	thumb_func_start FUN_08052084
FUN_08052084: @ 0x08052084
	push {r4, lr}
	ldr r2, [r0]
	lsrs r4, r2, #0x10
	ldr r1, [r1]
	adds r2, r2, r1
	str r2, [r0]
	ldr r2, _080520B4 @ => 0x04000004
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080520A8
	movs r3, #2
_0805209E:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0805209E
_080520A8:
	ldr r0, _080520B8 @ => 0x04000018
	strh r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080520B4: .4byte 0x04000004
_080520B8: .4byte 0x04000018

	thumb_func_start FUN_080520BC
FUN_080520BC: @ 0x080520BC
	bx lr
	.align 2, 0

	thumb_func_start FUN_080520C0
FUN_080520C0: @ 0x080520C0
	push {r4, r5, lr}
	movs r4, #0
	ldr r0, _080520F4 @ => 0x030028F0
	ldr r1, _080520F8 @ => 0x0000FFFF
	adds r5, r1, #0
	movs r3, #0
	adds r1, r0, #0
	adds r1, #0xb4
	adds r2, r0, #0
	adds r2, #0xb8
_080520D4:
	ldrh r0, [r1]
	orrs r0, r5
	strh r0, [r1]
	strh r3, [r1, #2]
	str r3, [r2]
	str r3, [r2, #4]
	str r3, [r1, #0xc]
	adds r1, #0x10
	adds r2, #0x10
	adds r4, #1
	cmp r4, #0xa
	ble _080520D4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080520F4: .4byte gUnk_030028F0
_080520F8: .4byte 0x0000FFFF

	thumb_func_start FUN_080520FC
FUN_080520FC: @ 0x080520FC
	push {lr}
	movs r1, #0
	ldr r0, _08052110 @ => 0x030028F0
	ldrh r0, [r0]
	cmp r0, #0
	bne _0805210A
	movs r1, #1
_0805210A:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_08052110: .4byte gUnk_030028F0

	thumb_func_start FUN_08052114
FUN_08052114: @ 0x08052114
	push {r4, lr}
	adds r4, r1, #0
	cmp r2, #0x34
	beq _08052124
	cmp r2, #0x35
	beq _08052142
_08052120:
	movs r0, #0
	b _08052168
_08052124:
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _08052166
	ldrb r0, [r4, #0xa]
	movs r1, #0x67
	bl FUN_0803A10C
	cmp r0, #0
	beq _08052120
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _08052166
	ldrb r0, [r4, #0xa]
	movs r1, #0x28
	b _0805215E
_08052142:
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _08052166
	ldrb r0, [r4, #0xa]
	movs r1, #0x67
	bl FUN_0803A10C
	cmp r0, #0
	beq _08052120
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _08052166
	ldrb r0, [r4, #0xa]
	movs r1, #0x2a
_0805215E:
	bl FUN_0803A10C
	cmp r0, #0
	beq _08052120
_08052166:
	movs r0, #1
_08052168:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08052170
FUN_08052170: @ 0x08052170
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	movs r7, #1
	ldrh r0, [r4, #6]
	cmp r0, #0x2b
	bls _08052182
	b _08052302
_08052182:
	lsls r0, r0, #2
	ldr r1, _0805218C @ =_08052190
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805218C: .4byte _08052190
_08052190: @ jump table
	.4byte _08052240 @ case 0
	.4byte _080522F4 @ case 1
	.4byte _08052302 @ case 2
	.4byte _08052302 @ case 3
	.4byte _08052302 @ case 4
	.4byte _08052302 @ case 5
	.4byte _08052302 @ case 6
	.4byte _08052302 @ case 7
	.4byte _08052302 @ case 8
	.4byte _08052298 @ case 9
	.4byte _08052302 @ case 10
	.4byte _08052276 @ case 11
	.4byte _08052302 @ case 12
	.4byte _08052302 @ case 13
	.4byte _08052302 @ case 14
	.4byte _08052302 @ case 15
	.4byte _08052302 @ case 16
	.4byte _08052302 @ case 17
	.4byte _08052302 @ case 18
	.4byte _08052302 @ case 19
	.4byte _08052302 @ case 20
	.4byte _08052302 @ case 21
	.4byte _08052302 @ case 22
	.4byte _08052302 @ case 23
	.4byte _08052302 @ case 24
	.4byte _08052302 @ case 25
	.4byte _08052302 @ case 26
	.4byte _08052302 @ case 27
	.4byte _08052302 @ case 28
	.4byte _08052302 @ case 29
	.4byte _08052302 @ case 30
	.4byte _08052302 @ case 31
	.4byte _08052302 @ case 32
	.4byte _08052302 @ case 33
	.4byte _08052302 @ case 34
	.4byte _08052302 @ case 35
	.4byte _08052302 @ case 36
	.4byte _08052302 @ case 37
	.4byte _08052302 @ case 38
	.4byte _08052302 @ case 39
	.4byte _08052302 @ case 40
	.4byte _08052302 @ case 41
	.4byte _08052302 @ case 42
	.4byte _080522B4 @ case 43
_08052240:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x5a
	bl FUN_0803DAB8
	cmp r0, #0
	bne _0805225C
	adds r0, r4, #0
	movs r1, #1
	bl FUN_0803D958
	movs r0, #0xb
	strh r0, [r4, #6]
	b _08052302
_0805225C:
	movs r0, #6
	str r0, [sp]
	movs r0, #0x67
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xa
	movs r3, #0xb0
	bl FUN_0803DB6C
	movs r0, #9
	strh r0, [r4, #6]
	b _08052302
_08052276:
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08052302
	ldr r0, _08052290 @ => 0x03005C60
	ldr r1, _08052294 @ => 0x00000871
	strh r1, [r0]
	bl FUN_08041BF0
	b _080522EA
	.align 2, 0
_08052290: .4byte gChoiceIDs
_08052294: .4byte 0x00000871
_08052298:
	ldr r2, [r4]
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08052302
	adds r0, r2, #0
	movs r1, #0x28
	bl FUN_08001F20
	movs r0, #0x2b
	strh r0, [r4, #6]
	b _08052302
_080522B4:
	ldr r6, _080522F0 @ => 0x03003E28
	ldrh r0, [r5, #8]
	bl FUN_0803DCFC
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	movs r1, #1
	bl FUN_08038A30
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08052302
	ldrh r0, [r5, #8]
	bl FUN_0803DCFC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	bl FUN_08038B24
_080522EA:
	movs r0, #1
	strh r0, [r4, #6]
	b _08052302
	.align 2, 0
_080522F0: .4byte gUnk_03003E28
_080522F4:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #4
	bl FUN_0803DC54
	movs r7, #2
_08052302:
	adds r0, r7, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_0805230C
FUN_0805230C: @ 0x0805230C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	movs r7, #1
	movs r6, #1
	ldrh r0, [r4, #6]
	cmp r0, #0x2a
	bls _08052320
	b _08052512
_08052320:
	lsls r0, r0, #2
	ldr r1, _0805232C @ =_08052330
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805232C: .4byte _08052330
_08052330: @ jump table
	.4byte _080523DC @ case 0
	.4byte _08052504 @ case 1
	.4byte _08052512 @ case 2
	.4byte _08052512 @ case 3
	.4byte _08052512 @ case 4
	.4byte _08052512 @ case 5
	.4byte _08052512 @ case 6
	.4byte _08052512 @ case 7
	.4byte _08052512 @ case 8
	.4byte _0805243C @ case 9
	.4byte _08052472 @ case 10
	.4byte _08052418 @ case 11
	.4byte _080524F4 @ case 12
	.4byte _08052512 @ case 13
	.4byte _08052512 @ case 14
	.4byte _08052512 @ case 15
	.4byte _08052512 @ case 16
	.4byte _08052512 @ case 17
	.4byte _08052512 @ case 18
	.4byte _08052512 @ case 19
	.4byte _08052512 @ case 20
	.4byte _08052512 @ case 21
	.4byte _08052512 @ case 22
	.4byte _08052512 @ case 23
	.4byte _08052512 @ case 24
	.4byte _08052512 @ case 25
	.4byte _08052512 @ case 26
	.4byte _08052512 @ case 27
	.4byte _08052512 @ case 28
	.4byte _08052512 @ case 29
	.4byte _08052512 @ case 30
	.4byte _08052512 @ case 31
	.4byte _08052512 @ case 32
	.4byte _08052512 @ case 33
	.4byte _08052512 @ case 34
	.4byte _08052512 @ case 35
	.4byte _08052512 @ case 36
	.4byte _08052512 @ case 37
	.4byte _08052512 @ case 38
	.4byte _08052512 @ case 39
	.4byte _08052512 @ case 40
	.4byte _08052512 @ case 41
	.4byte _080524BC @ case 42
_080523DC:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x5a
	bl FUN_0803DAB8
	cmp r0, #0
	bne _080523F8
	adds r0, r4, #0
	movs r1, #1
	bl FUN_0803D958
	movs r0, #0xb
	strh r0, [r4, #6]
	movs r6, #0
_080523F8:
	cmp r6, #0
	bne _080523FE
	b _08052512
_080523FE:
	movs r0, #6
	str r0, [sp]
	movs r0, #0x67
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xa
	movs r3, #0xb0
	bl FUN_0803DB6C
	movs r0, #9
	strh r0, [r4, #6]
	b _08052512
_08052418:
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08052512
	ldr r0, _08052434 @ => 0x03005C60
	ldr r1, _08052438 @ => 0x00000871
	strh r1, [r0]
	bl FUN_08041BF0
	b _080524FE
	.align 2, 0
_08052434: .4byte gChoiceIDs
_08052438: .4byte 0x00000871
_0805243C:
	ldr r2, [r4]
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08052512
	adds r0, r2, #0
	movs r1, #4
	bl FUN_08001F20
	ldr r0, [r5, #0x34]
	movs r1, #1
	bl FUN_0803BC7C
	movs r0, #0xaa
	bl FUN_0804DE0C
	movs r0, #0xa
	strh r0, [r4, #6]
	ldr r0, [r4]
	movs r2, #0x93
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r0, #0x1e
	strh r0, [r1]
	b _08052512
_08052472:
	ldr r0, [r4]
	movs r2, #0x93
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	ldr r1, _080524B8 @ => 0xFFFF0000
	cmp r0, r1
	bne _08052512
	ldr r0, [r4]
	movs r1, #0x2a
	bl FUN_08001F20
	ldr r0, [r5, #0x34]
	movs r1, #2
	bl FUN_0803BC7C
	movs r0, #0x31
	bl FUN_0804DE0C
	adds r1, r5, #0
	adds r1, #0xe0
	str r0, [r1]
	movs r0, #0x2a
	strh r0, [r4, #6]
	ldr r0, [r4]
	movs r2, #0x93
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r0, #0x3c
	strh r0, [r1]
	b _08052512
	.align 2, 0
_080524B8: .4byte 0xFFFF0000
_080524BC:
	ldr r0, _080524EC @ => 0x03003E28
	movs r1, #1
	movs r2, #2
	bl FUN_08038A30
	ldr r0, [r4]
	movs r2, #0x93
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	ldr r1, _080524F0 @ => 0xFFFF0000
	cmp r0, r1
	bne _08052512
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r0, [r0]
	bl FUN_0804E03C
	movs r0, #0xc
	strh r0, [r4, #6]
	b _08052512
	.align 2, 0
_080524EC: .4byte gUnk_03003E28
_080524F0: .4byte 0xFFFF0000
_080524F4:
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r0, [r0]
	bl FUN_0804E03C
_080524FE:
	movs r0, #1
	strh r0, [r4, #6]
	b _08052512
_08052504:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #4
	bl FUN_0803DC54
	movs r7, #2
_08052512:
	adds r0, r7, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_0805251C
FUN_0805251C: @ 0x0805251C
	movs r0, #1
	bx lr

	thumb_func_start FUN_08052520
FUN_08052520: @ 0x08052520
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl FUN_08001D8C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805253A
	ldr r0, [r4, #0x40]
	cmp r0, #1
	bne _0805253A
	movs r0, #0
	b _0805253C
_0805253A:
	movs r0, #1
_0805253C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08052544
FUN_08052544: @ 0x08052544
	movs r0, #0x34
	strb r0, [r1]
	movs r0, #1
	bx lr

	thumb_func_start FUN_0805254C
FUN_0805254C: @ 0x0805254C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	bl FUN_0803D1F0
	adds r4, r0, #0
	cmp r4, #0
	beq _08052586
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
	movs r3, #3
	bl FUN_08043BB8
	adds r0, r5, #0
	movs r1, #0xa
	bl FUN_08001F20
_08052586:
	adds r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_08052590
FUN_08052590: @ 0x08052590
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0803D8C8
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	cmp r0, #0x34
	beq _080525A8
	cmp r0, #0x35
	beq _080525B0
	movs r0, #0
	b _080525B6
_080525A8:
	adds r0, r4, #0
	bl FUN_08052170
	b _080525B6
_080525B0:
	adds r0, r4, #0
	bl FUN_0805230C
_080525B6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_080525BC
FUN_080525BC: @ 0x080525BC
	bx lr
	.align 2, 0

	thumb_func_start FUN_080525C0
FUN_080525C0: @ 0x080525C0
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08009B04
	adds r6, r0, #0
	bl FUN_080012FC
	adds r5, r0, #0
	cmp r5, #0
	beq _0805267C
	movs r0, #4
	ldrsh r1, [r6, r0]
	lsls r1, r1, #0x10
	movs r0, #6
	ldrsh r2, [r6, r0]
	lsls r2, r2, #0x10
	adds r0, r5, #0
	bl FUN_08001728
	ldr r0, [r6]
	movs r4, #0
	strh r0, [r5, #8]
	ldrb r0, [r6, #8]
	strh r0, [r5, #0xa]
	ldr r0, _08052684 @ => 0x000E0405
	str r0, [r5, #0xc]
	ldrb r1, [r6, #0xb]
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r0, r5, r2
	strb r1, [r0]
	ldrb r0, [r6, #0xc]
	adds r2, #1
	adds r1, r5, r2
	strb r0, [r1]
	ldrb r0, [r6, #9]
	adds r2, #1
	adds r1, r5, r2
	strb r0, [r1]
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r1, r5, r0
	ldrb r0, [r6, #0xa]
	str r0, [r1]
	adds r2, r5, #0
	adds r2, #0xa5
	ldrb r1, [r2]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	adds r2, #4
	ldrb r0, [r2]
	movs r1, #0xc
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08052688 @ => 0x09FC1EBC
	ldrh r0, [r5, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl FUN_08048E24
	adds r1, r0, #0
	adds r0, r5, #0
	bl FUN_0803EF14
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08001FB0
	ldr r0, _0805268C @ => FUN_08052698
	str r0, [r5, #0x50]
	ldrh r1, [r5, #0xa]
	lsls r1, r1, #4
	ldr r0, _08052690 @ => 0x08090158
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	adds r0, r5, #0
	adds r0, #0x94
	str r4, [r0]
	adds r1, r5, #0
	adds r1, #0x98
	ldr r0, _08052694 @ => FUN_080152B4
	str r0, [r1]
_0805267C:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08052684: .4byte 0x000E0405
_08052688: .4byte ROMREF_09FC1EBC
_0805268C: .4byte FUN_08052698
_08052690: .4byte ROMREF_08090158
_08052694: .4byte FUN_080152B4

	thumb_func_start FUN_08052698
FUN_08052698: @ 0x08052698
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _08052714
	cmp r0, #1
	ble _0805271A
	cmp r0, #3
	beq _080526B6
	cmp r0, #9
	beq _080526DE
	b _0805271A
_080526B6:
	movs r2, #0x9b
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrb r0, [r0]
	bl FUN_0804DE0C
	ldr r0, [r4, #0xc]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r4, #0xc]
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #9
	bl FUN_08001FB0
	b _0805271A
_080526DE:
	ldr r1, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0805271A
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #0xc]
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	ldr r2, _08052710 @ => 0x00000135
	adds r1, r4, r2
	ldrb r1, [r1]
	bl FUN_080099A8
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001FB0
	b _0805271A
	.align 2, 0
_08052710: .4byte 0x00000135
_08052714:
	adds r0, r4, #0
	bl FUN_080040DC
_0805271A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_08052720
FUN_08052720: @ 0x08052720
	push {lr}
	ldr r0, _08052730 @ => FUN_0800A390
	ldr r1, _08052734 @ => 0x03006550
	ldr r2, _08052738 @ => 0x04000032
	bl SVC_CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_08052730: .4byte FUN_0800A390
_08052734: .4byte gUnk_03006550
_08052738: .4byte 0x04000032

	thumb_func_start FUN_0805273C
FUN_0805273C: @ 0x0805273C
	push {r4, lr}
	lsls r0, r0, #0x18
	movs r1, #0xfd
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0805276C
	ldr r4, _08052768 @ => 0x03002A58
	adds r0, r4, #0
	movs r1, #0xff
	movs r2, #0x40
	bl memset
	adds r4, #0x40
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x40
	bl memset
	b _08052780
	.align 2, 0
_08052768: .4byte gUnk_03002A58
_0805276C:
	ldr r0, _08052788 @ => 0x03002A58
	movs r1, #0
	movs r2, #0x80
	bl memset
	ldr r0, _0805278C @ => 0x03002AD8
	movs r1, #0xff
	movs r2, #0x80
	bl memset
_08052780:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08052788: .4byte gUnk_03002A58
_0805278C: .4byte gUnk_03002AD8

	thumb_func_start FUN_08052790
FUN_08052790: @ 0x08052790
	push {lr}
	ldr r0, _080527AC @ => 0x03002A58
	movs r1, #0
	movs r2, #0x80
	bl memset
	ldr r0, _080527B0 @ => 0x03002AD8
	movs r1, #0xff
	movs r2, #0x80
	bl memset
	pop {r0}
	bx r0
	.align 2, 0
_080527AC: .4byte gUnk_03002A58
_080527B0: .4byte gUnk_03002AD8

	thumb_func_start FUN_080527B4
FUN_080527B4: @ 0x080527B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r2
	ldr r3, _080527C8 @ => 0x03006550
	cmp r2, #0
	bne _080527CC
	lsrs r5, r1, #6
	b _080527CE
	.align 2, 0
_080527C8: .4byte gUnk_03006550
_080527CC:
	lsrs r5, r1, #5
_080527CE:
	ldr r0, _08052804 @ => 0x03002A58
	adds r1, r5, #0
	movs r2, #0
	bl _call_via_r3
	adds r6, r0, #0
	ldr r0, _08052808 @ => 0x0000FFFF
	cmp r6, r0
	beq _08052814
	lsls r0, r6, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl FUN_08052954
	cmp r7, #0
	beq _08052814
	mov r0, r8
	cmp r0, #0
	bne _0805280C
	adds r0, r7, #0
	adds r1, r4, #0
	bl FUN_080528E4
	b _08052814
	.align 2, 0
_08052804: .4byte gUnk_03002A58
_08052808: .4byte 0x0000FFFF
_0805280C:
	adds r0, r7, #0
	adds r1, r4, #0
	bl FUN_080528E4
_08052814:
	adds r0, r6, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_08052820
FUN_08052820: @ 0x08052820
	push {lr}
	adds r2, r1, #0
	adds r0, #0xd6
	ldrh r1, [r0]
	adds r0, r2, #0
	bl FUN_08052834
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08052834
FUN_08052834: @ 0x08052834
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xb
	ldr r2, _08052848 @ => 0x06010000
	adds r1, r1, r2
	bl FUN_0801ACE4
	pop {r0}
	bx r0
	.align 2, 0
_08052848: .4byte 0x06010000

	thumb_func_start FUN_0805284C
FUN_0805284C: @ 0x0805284C
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r2, r2, #0x18
	cmp r2, #0
	beq _0805285C
	lsls r0, r1, #0xb
	b _0805285E
_0805285C:
	lsls r0, r1, #0xa
_0805285E:
	lsrs r1, r0, #0x10
	adds r0, r3, #0
	bl FUN_080529A0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0805286C
FUN_0805286C: @ 0x0805286C
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r1, #0
	beq _0805288A
	lsrs r3, r1, #6
	cmp r2, #0
	beq _08052882
	lsrs r3, r1, #5
_08052882:
	lsls r1, r3, #0x10
	lsrs r1, r1, #0x10
	bl FUN_080529F8
_0805288A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08052890
FUN_08052890: @ 0x08052890
	push {r4, lr}
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x10
	lsrs r4, r3, #0x10
	cmp r0, #0
	beq _080528B0
	cmp r2, #0
	bne _080528AA
	adds r1, r4, #0
	bl FUN_080528E4
	b _080528B0
_080528AA:
	adds r1, r4, #0
	bl FUN_080528E4
_080528B0:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_080528B8
FUN_080528B8: @ 0x080528B8
	push {r4, r5, lr}
	movs r2, #0
	movs r5, #1
	rsbs r5, r5, #0
	ldr r4, _080528DC @ => 0x03002AD8
	ldr r3, _080528E0 @ => 0x03002A58
_080528C4:
	ldr r0, [r3]
	ldr r1, [r4]
	ands r0, r1
	stm r3!, {r0}
	stm r4!, {r5}
	adds r2, #1
	cmp r2, #0x1f
	bls _080528C4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080528DC: .4byte gUnk_03002AD8
_080528E0: .4byte gUnk_03002A58

	thumb_func_start FUN_080528E4
FUN_080528E4: @ 0x080528E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r7, [r0, #4]
	movs r0, #0
	mov sb, r0
	movs r6, #0
	ldrh r2, [r7, #6]
	cmp r6, r2
	bhs _08052942
	lsls r1, r1, #5
	mov sl, r1
_08052906:
	lsls r1, r6, #1
	adds r0, r7, #0
	adds r0, #0xc
	adds r0, r0, r1
	ldrh r4, [r0]
	adds r4, #0xc
	adds r4, r7, r4
	ldr r5, _08052950 @ => 0x06010000
	add r5, sb
	add r5, sl
	ldrb r1, [r4, #2]
	ldrb r0, [r4, #3]
	muls r0, r1, r0
	movs r1, #2
	bl SVC_Div
	add sb, r0
	ldrh r1, [r4, #4]
	mov r2, r8
	ldr r0, [r2]
	adds r0, r0, r1
	adds r1, r5, #0
	bl FUN_0801ACE4
	adds r6, #1
	mov r1, r8
	ldr r0, [r1, #4]
	ldrh r0, [r0, #6]
	cmp r6, r0
	blo _08052906
_08052942:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052950: .4byte 0x06010000

	thumb_func_start FUN_08052954
FUN_08052954: @ 0x08052954
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r5, r0, r1
	adds r3, r0, #0
	cmp r3, r5
	bhs _0805299A
	movs r7, #7
	movs r0, #1
	mov ip, r0
	ldr r6, _08052984 @ => 0x03002A58
_0805296E:
	lsrs r1, r3, #3
	adds r2, r3, #0
	ands r2, r7
	cmp r2, #0
	bne _08052988
	subs r0, r5, r3
	cmp r0, #7
	bls _08052988
	movs r4, #0xff
	adds r3, #8
	b _0805298E
	.align 2, 0
_08052984: .4byte gUnk_03002A58
_08052988:
	mov r4, ip
	lsls r4, r2
	adds r3, #1
_0805298E:
	adds r1, r1, r6
	ldrb r0, [r1]
	orrs r4, r0
	strb r4, [r1]
	cmp r3, r5
	blo _0805296E
_0805299A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_080529A0
FUN_080529A0: @ 0x080529A0
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _080529D8 @ => 0x0000FFFF
	cmp r2, r0
	beq _080529F2
	adds r5, r2, r1
	adds r3, r2, #0
	cmp r3, r5
	bhs _080529F2
	movs r7, #7
	movs r0, #1
	mov ip, r0
	ldr r6, _080529DC @ => 0x03002A58
_080529C0:
	lsrs r1, r3, #3
	adds r2, r3, #0
	ands r2, r7
	cmp r2, #0
	bne _080529E0
	subs r0, r5, r3
	cmp r0, #7
	bls _080529E0
	movs r4, #0xff
	adds r3, #8
	b _080529E6
	.align 2, 0
_080529D8: .4byte 0x0000FFFF
_080529DC: .4byte gUnk_03002A58
_080529E0:
	mov r4, ip
	lsls r4, r2
	adds r3, #1
_080529E6:
	adds r1, r1, r6
	ldrb r0, [r1]
	bics r0, r4
	strb r0, [r1]
	cmp r3, r5
	blo _080529C0
_080529F2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_080529F8
FUN_080529F8: @ 0x080529F8
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08052A30 @ => 0x0000FFFF
	cmp r2, r0
	beq _08052A4A
	adds r5, r2, r1
	adds r3, r2, #0
	cmp r3, r5
	bhs _08052A4A
	movs r7, #7
	movs r0, #1
	mov ip, r0
	ldr r6, _08052A34 @ => 0x03002AD8
_08052A18:
	lsrs r1, r3, #3
	adds r2, r3, #0
	ands r2, r7
	cmp r2, #0
	bne _08052A38
	subs r0, r5, r3
	cmp r0, #7
	bls _08052A38
	movs r4, #0xff
	adds r3, #8
	b _08052A3E
	.align 2, 0
_08052A30: .4byte 0x0000FFFF
_08052A34: .4byte gUnk_03002AD8
_08052A38:
	mov r4, ip
	lsls r4, r2
	adds r3, #1
_08052A3E:
	adds r1, r1, r6
	ldrb r0, [r1]
	bics r0, r4
	strb r0, [r1]
	cmp r3, r5
	blo _08052A18
_08052A4A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_08052A50
FUN_08052A50: @ 0x08052A50
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	movs r6, #1
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _08052A62
	strh r6, [r4, #6]
_08052A62:
	ldrh r0, [r4, #6]
	cmp r0, #1
	beq _08052ACC
	cmp r0, #1
	bgt _08052A72
	cmp r0, #0
	beq _08052A78
	b _08052ADA
_08052A72:
	cmp r0, #9
	beq _08052AAA
	b _08052ADA
_08052A78:
	movs r0, #3
	str r0, [sp]
	movs r0, #0x29
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xa
	movs r3, #0x78
	bl FUN_0803DB6C
	ldr r0, [r5, #0x34]
	movs r2, #0x93
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r0, #0xf
	strh r0, [r1]
	ldr r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0x5a
	strh r1, [r0]
	movs r0, #9
	strh r0, [r4, #6]
	b _08052ADA
_08052AAA:
	ldr r0, _08052AC8 @ => 0x03003E28
	movs r1, #1
	movs r2, #3
	bl FUN_08038A30
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08052ADA
	strh r6, [r4, #6]
	b _08052ADA
	.align 2, 0
_08052AC8: .4byte gUnk_03003E28
_08052ACC:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	movs r3, #4
	bl FUN_0803DC54
	movs r6, #2
_08052ADA:
	adds r0, r6, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_08052AE4
FUN_08052AE4: @ 0x08052AE4
	movs r0, #1
	bx lr

	thumb_func_start FUN_08052AE8
FUN_08052AE8: @ 0x08052AE8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl FUN_08001D8C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08052B02
	ldr r0, [r4, #0x40]
	cmp r0, #1
	bne _08052B02
	movs r0, #0
	b _08052B04
_08052B02:
	movs r0, #1
_08052B04:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08052B0C
FUN_08052B0C: @ 0x08052B0C
	push {r4, lr}
	adds r4, r1, #0
	bl FUN_0803CE64
	cmp r0, #0
	bne _08052B1C
	movs r0, #0x33
	b _08052B1E
_08052B1C:
	movs r0, #0x20
_08052B1E:
	strb r0, [r4]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_08052B28
FUN_08052B28: @ 0x08052B28
	push {lr}
	cmp r2, #0x20
	beq _08052B48
	cmp r2, #0x33
	bne _08052B44
	ldrh r0, [r1, #8]
	cmp r0, #0
	beq _08052B54
	ldrb r0, [r1, #0xa]
	movs r1, #0x29
	bl FUN_0803A10C
	cmp r0, #0
	bne _08052B54
_08052B44:
	movs r0, #0
	b _08052B56
_08052B48:
	ldrh r0, [r1, #8]
	cmp r0, #0
	beq _08052B54
	ldrh r0, [r1, #0xa]
	cmp r0, #1
	bne _08052B44
_08052B54:
	movs r0, #1
_08052B56:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08052B5C
FUN_08052B5C: @ 0x08052B5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	bl FUN_0803D1F0
	adds r4, r0, #0
	cmp r4, #0
	bne _08052B74
	movs r0, #0
	b _08052BA4
_08052B74:
	strh r7, [r4, #4]
	ldr r0, [r6, #0x18]
	ldr r1, [r6, #0x1c]
	str r0, [r5, #0x54]
	str r1, [r5, #0x58]
	ldr r0, [r5, #0x34]
	movs r1, #0
	add r2, sp, #4
	bl FUN_08001A84
	adds r2, r4, #0
	adds r2, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, r6, #0
	add r1, sp, #4
	movs r3, #5
	bl FUN_08043BB8
	adds r0, r6, #0
	movs r1, #0xa
	bl FUN_08001F20
	movs r0, #1
_08052BA4:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_08052BAC
FUN_08052BAC: @ 0x08052BAC
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0803D8C8
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	cmp r0, #0x20
	beq _08052BC8
	cmp r0, #0x33
	bne _08052BD0
	adds r0, r4, #0
	bl FUN_08052A50
	b _08052BD2
_08052BC8:
	adds r0, r4, #0
	bl FUN_0803CC7C
	b _08052BD2
_08052BD0:
	movs r0, #0
_08052BD2:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_08052BD8
FUN_08052BD8: @ 0x08052BD8
	bx lr
	.align 2, 0

	thumb_func_start FUN_08052BDC
FUN_08052BDC: @ 0x08052BDC
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08009B04
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_080012D8
	adds r5, r0, #0
	movs r0, #4
	ldrsh r1, [r4, r0]
	lsls r1, r1, #0x10
	movs r0, #6
	ldrsh r2, [r4, r0]
	lsls r2, r2, #0x10
	adds r0, r5, #0
	bl FUN_08001728
	movs r0, #8
	str r0, [r5, #0xc]
	ldrh r1, [r4, #8]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r5, r2
	strh r1, [r0]
	ldrh r0, [r4, #0xa]
	adds r2, #2
	adds r1, r5, r2
	strh r0, [r1]
	ldrb r1, [r4, #0xc]
	adds r2, #2
	adds r0, r5, r2
	strb r1, [r0]
	ldrb r0, [r4, #0xd]
	adds r2, #1
	adds r1, r5, r2
	strb r0, [r1]
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bne _08052C3C
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #3
	b _08052C44
_08052C3C:
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r0, #0
_08052C44:
	strb r0, [r1]
	ldr r0, _08052C54 @ => FUN_08052D6C
	str r0, [r5, #0x50]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08052C54: .4byte FUN_08052D6C

	thumb_func_start FUN_08052C58
FUN_08052C58: @ 0x08052C58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r6, r0, #0
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r6, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	str r0, [sp]
	adds r1, #2
	adds r0, r6, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	str r0, [sp, #4]
	ldr r4, _08052CB0 @ => 0x03004398
	ldr r0, [r4]
	add r5, sp, #8
	mov r1, sp
	adds r2, r5, #0
	bl FUN_0805374C
	movs r1, #0x1a
	ldrsh r0, [r6, r1]
	str r0, [sp, #0xc]
	movs r3, #0x1e
	ldrsh r0, [r6, r3]
	add r1, sp, #0xc
	str r0, [r1, #4]
	ldr r0, [r4]
	add r4, sp, #0x14
	adds r2, r4, #0
	bl FUN_0805374C
	movs r2, #0
	ldr r1, _08052CB4 @ => 0x00000135
	adds r0, r6, r1
	mov sl, r5
	mov sb, r4
	b _08052D46
	.align 2, 0
_08052CB0: .4byte gUnk_03004398
_08052CB4: .4byte 0x00000135
_08052CB8:
	mov r3, sl
	ldrb r1, [r3, #1]
	adds r1, r2, r1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x10
	ldr r0, [sp, #0x18]
	ldr r3, _08052D5C @ => 0xFFFF00FF
	ands r0, r3
	orrs r0, r1
	str r0, [sp, #0x18]
	mov r0, sb
	ldrb r1, [r0, #1]
	adds r1, r2, r1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x10
	ldr r0, [sp, #0x1c]
	ands r0, r3
	orrs r0, r1
	str r0, [sp, #0x1c]
	movs r4, #0
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r6, r1
	adds r2, #1
	mov r8, r2
	ldrb r0, [r0]
	cmp r4, r0
	bhs _08052D3C
	ldr r7, _08052D60 @ => 0xFFFFFF00
	ldr r5, _08052D64 @ => 0x03004398
_08052CF4:
	mov r3, sl
	ldrb r1, [r3]
	adds r1, r4, r1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [sp, #0x18]
	ands r0, r7
	orrs r0, r1
	str r0, [sp, #0x18]
	mov r0, sb
	ldrb r1, [r0]
	adds r1, r4, r1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [sp, #0x1c]
	ands r0, r7
	orrs r0, r1
	str r0, [sp, #0x1c]
	ldr r0, [r5]
	add r1, sp, #0x18
	bl FUN_080497F4
	adds r2, r0, #0
	ldr r0, [r5]
	add r1, sp, #0x1c
	bl FUN_08049818
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r4, r0
	blo _08052CF4
_08052D3C:
	mov r3, r8
	lsls r0, r3, #0x18
	lsrs r2, r0, #0x18
	ldr r1, _08052D68 @ => 0x00000135
	adds r0, r6, r1
_08052D46:
	ldrb r0, [r0]
	cmp r2, r0
	blo _08052CB8
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052D5C: .4byte 0xFFFF00FF
_08052D60: .4byte 0xFFFFFF00
_08052D64: .4byte gUnk_03004398
_08052D68: .4byte 0x00000135

	thumb_func_start FUN_08052D6C
FUN_08052D6C: @ 0x08052D6C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _08052D8A
	cmp r0, #1
	ble _08052DAC
	cmp r0, #3
	beq _08052D94
	cmp r0, #4
	beq _08052DA4
	b _08052DAC
_08052D8A:
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	b _08052DAC
_08052D94:
	adds r0, r4, #0
	bl FUN_08052C58
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001FB0
	b _08052DAC
_08052DA4:
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001FB0
_08052DAC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08052DB4
FUN_08052DB4: @ 0x08052DB4
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r4, _08052DE0 @ => 0x03002B58
	movs r6, #1
	str r6, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x24
	movs r5, #0
	strb r5, [r0]
	adds r0, #4
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	movs r0, #0x4e
	bl FUN_080213F8
	cmp r0, #0
	beq _08052DE4
	adds r0, r4, #0
	adds r0, #0x2a
	strb r5, [r0]
	b _08052DF4
	.align 2, 0
_08052DE0: .4byte gUnk_03002B58
_08052DE4:
	movs r0, #0x4f
	bl FUN_080213F8
	cmp r0, #0
	beq _08052DF4
	adds r0, r4, #0
	adds r0, #0x2a
	strb r6, [r0]
_08052DF4:
	ldr r0, _08052E28 @ => 0x03004200
	ldr r0, [r0]
	movs r1, #0x3c
	bl FUN_08001FB0
	movs r4, #0
	ldr r5, _08052E2C @ => 0x03002B58
_08052E02:
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	str r0, [sp]
	movs r0, #0x26
	movs r2, #0
	add r3, sp, #4
	bl FUN_08001DB4
	ldr r0, [sp, #4]
	stm r5!, {r0}
	adds r4, #1
	cmp r4, #7
	bls _08052E02
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08052E28: .4byte gUnk_03004200
_08052E2C: .4byte gUnk_03002B58

	thumb_func_start FUN_08052E30
FUN_08052E30: @ 0x08052E30
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08009B04
	adds r6, r0, #0
	movs r0, #0x26
	bl FUN_080012D8
	adds r5, r0, #0
	movs r0, #4
	ldrsh r1, [r6, r0]
	movs r3, #6
	ldrsh r2, [r6, r3]
	adds r0, r5, #0
	bl FUN_08001734
	ldrb r0, [r6, #8]
	movs r2, #0
	movs r4, #0
	strh r0, [r5, #0xa]
	ldrb r1, [r6, #8]
	movs r3, #0xb2
	lsls r3, r3, #1
	adds r0, r5, r3
	strh r1, [r0]
	strb r2, [r5, #0x12]
	ldr r0, _08052ED4 @ => 0x00040410
	str r0, [r5, #0xc]
	adds r0, r5, #0
	movs r1, #0x3c
	bl FUN_08001FB0
	ldr r0, _08052ED8 @ => FUN_08053288
	str r0, [r5, #0x50]
	adds r2, r5, #0
	adds r2, #0xa5
	ldrb r1, [r2]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	str r4, [r5, #0x14]
	adds r0, r5, #0
	bl FUN_0803977C
	movs r0, #0x35
	bl FUN_080012D8
	adds r4, r0, #0
	ldrb r0, [r6, #8]
	strh r0, [r4, #0xa]
	movs r0, #4
	ldrsh r1, [r6, r0]
	movs r3, #6
	ldrsh r2, [r6, r3]
	adds r0, r4, #0
	bl FUN_08001734
	ldr r1, _08052EDC @ => 0x0809017C
	adds r0, r4, #0
	bl FUN_080015B8
	ldr r1, _08052EE0 @ => 0x0809018C
	adds r0, r4, #0
	bl FUN_0803EF14
	ldr r0, _08052EE4 @ => 0x00060001
	str r0, [r4, #0xc]
	adds r0, r4, #0
	bl FUN_0803977C
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08052ED4: .4byte 0x00040410
_08052ED8: .4byte FUN_08053288
_08052EDC: .4byte ROMREF_0809017C
_08052EE0: .4byte ROMREF_0809018C
_08052EE4: .4byte 0x00060001

	thumb_func_start FUN_08052EE8
FUN_08052EE8: @ 0x08052EE8
	push {r4, r5, lr}
	ldr r0, _08052F08 @ => 0x03004200
	ldr r0, [r0]
	bl FUN_080530D4
	ldr r0, _08052F0C @ => 0x03002B58
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r0, #5
	bls _08052EFE
	b _080530CA
_08052EFE:
	lsls r0, r0, #2
	ldr r1, _08052F10 @ =_08052F14
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08052F08: .4byte gUnk_03004200
_08052F0C: .4byte gUnk_03002B58
_08052F10: .4byte _08052F14
_08052F14: @ jump table
	.4byte _08052F2C @ case 0
	.4byte _08052F3C @ case 1
	.4byte _08052FD0 @ case 2
	.4byte _08053020 @ case 3
	.4byte _08053064 @ case 4
	.4byte _080530B0 @ case 5
_08052F2C:
	ldr r0, _08052F38 @ => 0x03002B58
	adds r0, #0x24
	movs r1, #1
	strb r1, [r0]
	b _080530CA
	.align 2, 0
_08052F38: .4byte gUnk_03002B58
_08052F3C:
	ldr r4, _08052F5C @ => 0x03002B58
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _08052F64
	ldr r0, _08052F60 @ => 0x03004200
	ldr r0, [r0]
	movs r2, #0x91
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrb r1, [r1]
	bl FUN_08001FB0
	movs r0, #0x50
	b _08052F80
	.align 2, 0
_08052F5C: .4byte gUnk_03002B58
_08052F60: .4byte gUnk_03004200
_08052F64:
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #3
	bne _08052F90
	ldr r0, _08052F8C @ => 0x03004200
	ldr r0, [r0]
	movs r2, #0x91
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrb r1, [r1]
	bl FUN_08001FB0
	movs r0, #0x51
_08052F80:
	movs r1, #1
	bl FUN_080213A4
	movs r0, #0
	str r0, [r4, #0x20]
	b _080530CA
	.align 2, 0
_08052F8C: .4byte gUnk_03004200
_08052F90:
	movs r0, #0
	movs r1, #7
	bl FUN_080424F8
	adds r5, r4, #0
	adds r5, #0x25
	strb r0, [r5]
	movs r0, #0
	movs r1, #1
	bl FUN_080424F8
	adds r1, r4, #0
	adds r1, #0x26
	strb r0, [r1]
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r2, _08052FCC @ => 0x08090250
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r1, [r1]
	bl FUN_080532C4
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #2
	b _080530C8
	.align 2, 0
_08052FCC: .4byte ROMREF_08090250
_08052FD0:
	ldr r4, _08053018 @ => 0x03002B58
	adds r0, r4, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r2, [r0]
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080530CA
	ldr r1, _0805301C @ => 0x08090250
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r0, #2]
	adds r0, r2, #0
	bl FUN_080532C4
	movs r0, #0
	movs r1, #0x3c
	bl FUN_080424F8
	adds r1, r4, #0
	adds r1, #0x27
	strb r0, [r1]
	subs r1, #3
	movs r0, #3
	b _080530C8
	.align 2, 0
_08053018: .4byte gUnk_03002B58
_0805301C: .4byte ROMREF_08090250
_08053020:
	ldr r4, _0805305C @ => 0x03002B58
	adds r1, r4, #0
	adds r1, #0x27
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080530CA
	adds r0, r4, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r2, _08053060 @ => 0x08090250
	subs r1, #1
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r1, [r1, #1]
	bl FUN_080532C4
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #4
	b _080530C8
	.align 2, 0
_0805305C: .4byte gUnk_03002B58
_08053060: .4byte ROMREF_08090250
_08053064:
	ldr r4, _080530AC @ => 0x03002B58
	adds r5, r4, #0
	adds r5, #0x25
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080530CA
	movs r0, #0
	movs r1, #0x1e
	bl FUN_080424F8
	adds r1, r4, #0
	adds r1, #0x27
	strb r0, [r1]
	subs r1, #3
	movs r0, #5
	strb r0, [r1]
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r2, [r0]
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
	b _080530CA
	.align 2, 0
_080530AC: .4byte gUnk_03002B58
_080530B0:
	ldr r1, _080530D0 @ => 0x03002B58
	adds r2, r1, #0
	adds r2, #0x27
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080530CA
	adds r1, #0x24
	movs r0, #1
_080530C8:
	strb r0, [r1]
_080530CA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080530D0: .4byte gUnk_03002B58

	thumb_func_start FUN_080530D4
FUN_080530D4: @ 0x080530D4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	ldr r1, _080530F0 @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _08053102
	cmp r0, #1
	bgt _080530F4
	cmp r0, #0
	beq _080530FA
	b _08053272
	.align 2, 0
_080530F0: .4byte 0x0000011D
_080530F4:
	cmp r0, #2
	beq _08053144
	b _08053272
_080530FA:
	adds r0, r4, #0
	bl FUN_08001848
	b _08053150
_08053102:
	movs r0, #0
	bl FUN_08024A28
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #8
	bne _0805311A
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08001FF0
	b _08053120
_0805311A:
	adds r0, r4, #0
	bl FUN_08001FF0
_08053120:
	ldr r0, _08053140 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805312E
	b _08053272
_0805312E:
	adds r0, r4, #0
	movs r1, #0x6f
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #2
	bl FUN_08001F84
	b _08053272
	.align 2, 0
_08053140: .4byte gUnk_030042B0
_08053144:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08053162
_08053150:
	adds r0, r4, #0
	movs r1, #0x6e
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08001F84
	b _08053272
_08053162:
	ldr r2, _080531BC @ => 0x03004200
	ldrh r1, [r2, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08053172
	b _08053272
_08053172:
	ldr r0, _080531C0 @ => 0x0000FDFF
	ands r0, r1
	strh r0, [r2, #8]
	ldr r2, _080531C4 @ => 0x03002B58
	adds r0, r2, #0
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r0, #3
	bne _08053272
	ldrb r1, [r4, #0x12]
	adds r0, r2, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bne _08053272
	adds r3, r2, #0
	adds r3, #0x2a
	ldr r0, _080531C8 @ => 0x08090258
	adds r1, r2, #0
	adds r1, #0x26
	ldrb r1, [r1]
	adds r1, r1, r0
	ldrb r0, [r3]
	ldrb r1, [r1]
	cmp r0, r1
	beq _080531CC
	adds r1, r2, #0
	adds r1, #0x28
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0x87
	bl FUN_0804DE0C
	b _080531DC
	.align 2, 0
_080531BC: .4byte gUnk_03004200
_080531C0: .4byte 0x0000FDFF
_080531C4: .4byte gUnk_03002B58
_080531C8: .4byte ROMREF_08090258
_080531CC:
	adds r1, r2, #0
	adds r1, #0x29
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0x88
	bl FUN_0804DE0C
_080531DC:
	ldr r0, _0805327C @ => 0x03002B58
	mov r8, r0
	mov r5, r8
	adds r5, #0x25
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0xf
	movs r3, #1
	bl FUN_0802064C
	adds r0, r4, #0
	movs r1, #0x6e
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08001F84
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #2
	add r1, r8
	ldr r2, _08053280 @ => 0x08090250
	mov r0, r8
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #3]
	ldr r6, [r1]
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r5, _08053284 @ => 0x08090190
	adds r1, r4, r5
	adds r0, r6, #0
	bl FUN_080015B8
	adds r0, r5, #0
	adds r0, #0x10
	adds r0, r4, r0
	ldr r1, [r0]
	adds r0, r6, #0
	movs r2, #0
	bl FUN_080018F4
	ldr r0, [r6, #0xc]
	movs r1, #0x11
	orrs r0, r1
	str r0, [r6, #0xc]
	adds r0, r6, #0
	bl FUN_0803EF58
	adds r5, #0x14
	adds r4, r4, r5
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_0803EF14
	movs r0, #0
	movs r1, #0x1e
	bl FUN_080424F8
	mov r1, r8
	adds r1, #0x27
	strb r0, [r1]
	movs r1, #0x24
	add r8, r1
	movs r0, #5
	mov r1, r8
	strb r0, [r1]
_08053272:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805327C: .4byte gUnk_03002B58
_08053280: .4byte ROMREF_08090250
_08053284: .4byte ROMREF_08090190

	thumb_func_start FUN_08053288
FUN_08053288: @ 0x08053288
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #3
	beq _080532A2
	cmp r0, #3
	bgt _080532BE
	cmp r0, #1
	beq _080532B0
	b _080532BE
_080532A2:
	bl FUN_08052DB4
	adds r0, r4, #0
	movs r1, #0x3c
	bl FUN_08001FB0
	b _080532BE
_080532B0:
	ldr r0, [r4, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x82
	orrs r0, r1
	str r0, [r4, #0xc]
_080532BE:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_080532C4
FUN_080532C4: @ 0x080532C4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	lsls r4, r1, #1
	adds r4, r4, r1
	lsls r4, r4, #3
	ldr r5, _08053308 @ => 0x08090190
	adds r1, r4, r5
	bl FUN_080015B8
	adds r0, r5, #0
	adds r0, #0x10
	adds r0, r4, r0
	ldr r1, [r0]
	adds r0, r6, #0
	movs r2, #0
	bl FUN_080018F4
	ldr r0, [r6, #0xc]
	movs r1, #0x11
	orrs r0, r1
	str r0, [r6, #0xc]
	adds r0, r6, #0
	bl FUN_0803EF58
	adds r5, #0x14
	adds r4, r4, r5
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_0803EF14
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08053308: .4byte ROMREF_08090190

	thumb_func_start FUN_0805330C
FUN_0805330C: @ 0x0805330C
	push {r4, r5, r6, r7, lr}
	ldr r0, _08053368 @ => 0x030042E0
	ldr r0, [r0]
	ldrh r0, [r0, #0x38]
	cmp r0, #0
	beq _08053360
	movs r5, #0
	ldr r7, _0805336C @ => 0x03006620
	movs r6, #0
_0805331E:
	adds r4, r6, r7
	ldr r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08053358
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4]
	movs r0, #0xa
	ldrsh r3, [r4, r0]
	lsls r3, r3, #8
	movs r1, #0x26
	ldrsh r0, [r4, r1]
	orrs r3, r0
	movs r0, #0xe
	ldrsh r2, [r4, r0]
	lsls r2, r2, #8
	movs r1, #0x2a
	ldrsh r0, [r4, r1]
	orrs r2, r0
	lsls r1, r5, #1
	ldr r4, _08053370 @ => 0x04000040
	adds r0, r1, r4
	strh r3, [r0]
	ldr r0, _08053374 @ => 0x04000044
	adds r1, r1, r0
	strh r2, [r1]
_08053358:
	adds r6, #0x3c
	adds r5, #1
	cmp r5, #1
	bls _0805331E
_08053360:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08053368: .4byte gUnk_030042E0
_0805336C: .4byte gUnk_03006620
_08053370: .4byte 0x04000040
_08053374: .4byte 0x04000044

	thumb_func_start FUN_08053378
FUN_08053378: @ 0x08053378
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08053408 @ => 0x0300665C
	mov ip, r1
	ldr r3, [r1, #0x24]
	ldr r2, [r1, #8]
	subs r3, r3, r2
	lsrs r1, r3, #0x1f
	adds r3, r3, r1
	asrs r3, r3, #1
	adds r3, r3, r2
	mov r2, ip
	ldr r1, [r2, #0x28]
	ldr r4, [r2, #0xc]
	subs r1, r1, r4
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r1, r1, #1
	adds r1, r1, r4
	mov r2, ip
	subs r2, #0x34
	mov r4, ip
	subs r4, #0x18
	str r3, [r2]
	str r1, [r2, #4]
	str r3, [r4]
	str r1, [r4, #4]
	movs r5, #2
	ldrsh r4, [r2, r5]
	lsls r4, r4, #8
	asrs r3, r3, #0x10
	orrs r4, r3
	movs r3, #6
	ldrsh r2, [r2, r3]
	lsls r2, r2, #8
	asrs r1, r1, #0x10
	orrs r2, r1
	ldr r1, _0805340C @ => 0x04000040
	strh r4, [r1]
	adds r1, #4
	strh r2, [r1]
	mov r5, ip
	ldr r1, [r5, #8]
	ldr r2, [r5, #0xc]
	mov r3, ip
	subs r3, #0x38
	str r1, [r3, #0x14]
	str r2, [r3, #0x18]
	strh r0, [r3, #2]
	ldrh r1, [r3]
	movs r2, #2
	orrs r1, r2
	strh r1, [r3]
	ldr r3, [r5, #0x24]
	ldr r4, [r5, #0x28]
	mov r1, ip
	subs r1, #0x1c
	str r3, [r1, #0x14]
	str r4, [r1, #0x18]
	strh r0, [r1, #2]
	ldrh r0, [r1]
	orrs r2, r0
	strh r2, [r1]
	movs r0, #0x80
	lsls r0, r0, #6
	bl FUN_0800C5EC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08053408: .4byte gUnk_0300665C
_0805340C: .4byte 0x04000040

	thumb_func_start FUN_08053410
FUN_08053410: @ 0x08053410
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080534A0 @ => 0x0300665C
	mov ip, r1
	ldr r2, [r1, #0x24]
	mov r8, r2
	ldr r3, [r1, #8]
	subs r5, r2, r3
	lsrs r1, r5, #0x1f
	adds r5, r5, r1
	asrs r5, r5, #1
	adds r5, r5, r3
	mov r7, ip
	ldr r6, [r7, #0x28]
	ldr r2, [r7, #0xc]
	subs r4, r6, r2
	lsrs r1, r4, #0x1f
	adds r4, r4, r1
	asrs r4, r4, #1
	adds r4, r4, r2
	mov r1, ip
	subs r1, #0x34
	subs r7, #0x18
	str r3, [r1]
	str r2, [r1, #4]
	mov r2, r8
	str r2, [r7]
	str r6, [r7, #4]
	movs r7, #2
	ldrsh r3, [r1, r7]
	lsls r3, r3, #8
	asrs r2, r2, #0x10
	orrs r3, r2
	movs r7, #6
	ldrsh r2, [r1, r7]
	lsls r2, r2, #8
	asrs r6, r6, #0x10
	orrs r2, r6
	ldr r1, _080534A4 @ => 0x04000040
	strh r3, [r1]
	adds r1, #4
	strh r2, [r1]
	mov r3, ip
	subs r3, #0x38
	str r5, [r3, #0x14]
	str r4, [r3, #0x18]
	strh r0, [r3, #2]
	ldrh r1, [r3]
	movs r2, #2
	orrs r1, r2
	strh r1, [r3]
	mov r1, ip
	subs r1, #0x1c
	str r5, [r1, #0x14]
	str r4, [r1, #0x18]
	strh r0, [r1, #2]
	ldrh r0, [r1]
	orrs r2, r0
	strh r2, [r1]
	movs r0, #0xc0
	lsls r0, r0, #7
	bl FUN_0800C5EC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080534A0: .4byte gUnk_0300665C
_080534A4: .4byte 0x04000040

	thumb_func_start FUN_080534A8
FUN_080534A8: @ 0x080534A8
	push {lr}
	ldr r1, _080534BC @ => 0x0809025C
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl FUN_0800C5DC
	pop {r0}
	bx r0
	.align 2, 0
_080534BC: .4byte ROMREF_0809025C

	thumb_func_start FUN_080534C0
FUN_080534C0: @ 0x080534C0
	push {lr}
	ldr r1, _080534D4 @ => 0x0809025C
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl FUN_0800C5EC
	pop {r0}
	bx r0
	.align 2, 0
_080534D4: .4byte ROMREF_0809025C

	thumb_func_start FUN_080534D8
FUN_080534D8: @ 0x080534D8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	adds r1, r4, #0
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r3, r5, #0
	cmp r6, #0
	bne _08053510
	ldr r3, _08053508 @ => 0x04000048
	ldrh r2, [r3]
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r0, r2
	orrs r0, r4
	strh r0, [r3]
	ldr r2, _0805350C @ => 0x0400004A
	ldrh r0, [r2]
	ands r1, r0
	orrs r1, r5
	strh r1, [r2]
	b _0805352C
	.align 2, 0
_08053508: .4byte 0x04000048
_0805350C: .4byte 0x0400004A
_08053510:
	cmp r6, #1
	bne _0805352C
	ldr r2, _08053540 @ => 0x04000048
	ldrb r0, [r2]
	lsls r1, r1, #8
	orrs r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrh r1, [r2]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	orrs r3, r0
	strh r3, [r2]
_0805352C:
	ldr r0, _08053544 @ => 0x0809025C
	lsls r1, r6, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bl FUN_0800C5EC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08053540: .4byte 0x04000048
_08053544: .4byte ROMREF_0809025C

	thumb_func_start FUN_08053548
FUN_08053548: @ 0x08053548
	push {r4, r5, r6, lr}
	ldr r6, [sp, #0x10]
	lsls r4, r0, #4
	subs r4, r4, r0
	lsls r4, r4, #2
	ldr r5, _0805358C @ => 0x03006620
	adds r4, r4, r5
	adds r5, r4, #0
	adds r5, #8
	str r1, [r4, #8]
	str r2, [r5, #4]
	str r3, [r4, #0x24]
	str r6, [r4, #0x28]
	movs r1, #0xa
	ldrsh r3, [r4, r1]
	lsls r3, r3, #8
	movs r2, #0x26
	ldrsh r1, [r4, r2]
	orrs r3, r1
	movs r4, #6
	ldrsh r2, [r5, r4]
	lsls r2, r2, #8
	asrs r6, r6, #0x10
	orrs r2, r6
	lsls r0, r0, #1
	ldr r4, _08053590 @ => 0x04000040
	adds r1, r0, r4
	strh r3, [r1]
	ldr r1, _08053594 @ => 0x04000044
	adds r0, r0, r1
	strh r2, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805358C: .4byte gUnk_03006620
_08053590: .4byte 0x04000040
_08053594: .4byte 0x04000044

	thumb_func_start FUN_08053598
FUN_08053598: @ 0x08053598
	push {r4, r5, lr}
	ldr r5, [sp, #0xc]
	lsls r4, r0, #4
	subs r4, r4, r0
	lsls r4, r4, #2
	ldr r0, _080535C4 @ => 0x03006620
	adds r4, r4, r0
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r4, r4, r0
	str r2, [r4, #0x14]
	str r3, [r4, #0x18]
	strh r5, [r4, #2]
	ldrh r1, [r4]
	movs r0, #2
	orrs r0, r1
	strh r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080535C4: .4byte gUnk_03006620

	thumb_func_start FUN_080535C8
FUN_080535C8: @ 0x080535C8
	push {r4, lr}
	lsls r4, r0, #4
	subs r4, r4, r0
	lsls r4, r4, #2
	ldr r0, _080535E8 @ => 0x03006620
	adds r4, r4, r0
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r4, r4, r0
	str r2, [r4, #4]
	str r3, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080535E8: .4byte gUnk_03006620

	thumb_func_start FUN_080535EC
FUN_080535EC: @ 0x080535EC
	push {r4, lr}
	lsls r4, r0, #4
	subs r4, r4, r0
	lsls r4, r4, #2
	ldr r0, _08053614 @ => 0x03006620
	adds r4, r4, r0
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r4, r4, r0
	str r2, [r4, #0xc]
	str r3, [r4, #0x10]
	ldrh r1, [r4]
	movs r0, #2
	orrs r0, r1
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08053614: .4byte gUnk_03006620

	thumb_func_start FUN_08053618
FUN_08053618: @ 0x08053618
	push {r4, lr}
	movs r4, #0
_0805361C:
	adds r0, r4, #0
	bl FUN_080536AC
	adds r4, #1
	cmp r4, #1
	bls _0805361C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08053630
FUN_08053630: @ 0x08053630
	push {lr}
	movs r0, #0xc0
	lsls r0, r0, #7
	bl FUN_0800C5DC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08053640
FUN_08053640: @ 0x08053640
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r3, _08053664 @ => 0x04000048
	lsrs r1, r1, #8
	orrs r0, r1
	strh r0, [r3]
	adds r3, #2
	ldrh r1, [r3]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	orrs r2, r0
	strh r2, [r3]
	bx lr
	.align 2, 0
_08053664: .4byte 0x04000048

	thumb_func_start FUN_08053668
FUN_08053668: @ 0x08053668
	push {r4, r5, lr}
	ldr r4, _080536A4 @ => 0x03006620
	adds r5, r4, #0
	adds r5, #0x44
	str r0, [r4, #0x44]
	str r1, [r5, #4]
	str r2, [r4, #0x60]
	str r3, [r4, #0x64]
	ldr r1, [r4, #0x44]
	asrs r1, r1, #0x10
	lsls r1, r1, #8
	adds r0, r2, #0
	asrs r0, r0, #0x10
	orrs r1, r0
	movs r0, #6
	ldrsh r2, [r5, r0]
	lsls r2, r2, #8
	asrs r3, r3, #0x10
	orrs r2, r3
	ldr r0, _080536A8 @ => 0x04000042
	strh r1, [r0]
	adds r0, #4
	strh r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #7
	bl FUN_0800C5EC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080536A4: .4byte gUnk_03006620
_080536A8: .4byte 0x04000042

	thumb_func_start FUN_080536AC
FUN_080536AC: @ 0x080536AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080536FC @ => 0x03006620
	adds r7, r1, r0
	movs r0, #0
	mov r8, r0
	adds r5, r7, #4
_080536C2:
	ldrh r2, [r5]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08053734
	ldrh r0, [r5, #2]
	adds r1, r0, #0
	adds r6, r0, #0
	cmp r1, #0
	beq _0805371C
	cmp r1, #1
	bls _08053700
	ldr r0, [r5, #0x14]
	ldr r4, [r5, #4]
	subs r0, r0, r4
	ldrh r1, [r5, #2]
	bl __divsi3
	adds r4, r4, r0
	str r4, [r5, #4]
	ldr r0, [r5, #0x18]
	ldr r4, [r5, #8]
	subs r0, r0, r4
	ldrh r1, [r5, #2]
	bl __divsi3
	adds r4, r4, r0
	str r4, [r5, #8]
	b _08053710
	.align 2, 0
_080536FC: .4byte gUnk_03006620
_08053700:
	ldr r0, [r5, #0x14]
	str r0, [r5, #4]
	ldr r0, [r5, #0x18]
	str r0, [r5, #8]
	ldr r1, _08053718 @ => 0x0000FFFD
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r5]
_08053710:
	subs r0, r6, #1
	strh r0, [r5, #2]
	b _0805372C
	.align 2, 0
_08053718: .4byte 0x0000FFFD
_0805371C:
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #8]
_0805372C:
	ldr r0, [r7]
	movs r1, #1
	orrs r0, r1
	str r0, [r7]
_08053734:
	adds r5, #0x1c
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #1
	bls _080536C2
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0805374C
FUN_0805374C: @ 0x0805374C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r7, r0, #0
	mov r8, r2
	ldr r3, [r1]
	ldr r0, [r1, #4]
	adds r6, r0, #0
	subs r6, #8
	ldr r0, [r7, #4]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ldr r4, [r7, #8]
	subs r2, r4, r0
	lsrs r1, r3, #0x1f
	adds r3, r3, r1
	asrs r3, r3, #1
	adds r2, r2, r3
	subs r2, r2, r6
	str r2, [sp, #8]
	adds r0, r0, r4
	adds r0, r0, r3
	adds r4, r0, r6
	str r4, [sp, #0xc]
	cmp r2, #0
	blt _080537B2
	ldr r0, [r7, #0xc]
	cmp r4, r0
	bge _080537B2
	cmp r4, #0
	blt _080537B2
	cmp r4, r0
	bge _080537B2
	str r2, [sp]
	str r4, [sp, #4]
	ldrb r1, [r7, #0x12]
	adds r0, r2, #0
	bl __divsi3
	mov r1, r8
	strb r0, [r1]
	ldrb r1, [r7, #0x12]
	adds r0, r4, #0
	bl __divsi3
	mov r1, r8
	strb r0, [r1, #1]
	movs r0, #1
	b _080537B4
_080537B2:
	movs r0, #0
_080537B4:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_080537C0
FUN_080537C0: @ 0x080537C0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x18
	adds r6, r0, #0
	adds r0, r1, #0
	mov r8, r2
	adds r5, r3, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, r8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	adds r1, r5, #0
	bl __divsi3
	adds r4, r0, #0
	lsls r4, r4, #0x10
	mov r0, r8
	adds r1, r5, #0
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsrs r4, r4, #0x11
	adds r4, r4, r0
	movs r1, #0
	str r1, [r6]
	strb r5, [r6, #0x12]
	strh r4, [r6, #0x10]
	adds r0, r4, #0
	muls r0, r5, r0
	str r0, [r6, #0xc]
	str r1, [r6, #4]
	str r1, [r6, #8]
	mov r0, r8
	str r0, [sp]
	str r1, [sp, #4]
	add r4, sp, #8
	adds r0, r6, #0
	mov r1, sp
	adds r2, r4, #0
	bl FUN_08053908
	ldr r0, [sp, #8]
	rsbs r0, r0, #0
	str r0, [sp, #0x10]
	ldr r1, [r4, #4]
	rsbs r1, r1, #0
	str r1, [sp, #0x14]
	str r0, [r6, #4]
	adds r0, r1, #0
	adds r0, #8
	str r0, [r6, #8]
	movs r0, #1
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_08053840
FUN_08053840: @ 0x08053840
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	mov ip, r2
	ldr r3, [r1]
	ldr r0, [r1, #4]
	adds r6, r0, #0
	subs r6, #8
	ldr r0, [r7, #4]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ldr r4, [r7, #8]
	subs r2, r4, r0
	lsrs r1, r3, #0x1f
	adds r3, r3, r1
	asrs r3, r3, #1
	adds r2, r2, r3
	subs r2, r2, r6
	str r2, [sp]
	adds r0, r0, r4
	adds r0, r0, r3
	adds r0, r0, r6
	str r0, [sp, #4]
	cmp r2, #0
	blt _0805388C
	ldr r1, [r7, #0xc]
	cmp r0, r1
	bge _0805388C
	cmp r0, #0
	blt _0805388C
	cmp r0, r1
	bge _0805388C
	mov r1, ip
	str r2, [r1]
	str r0, [r1, #4]
	movs r0, #1
	b _0805388E
_0805388C:
	movs r0, #0
_0805388E:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08053898
FUN_08053898: @ 0x08053898
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r2, #0
	mov r2, sp
	bl FUN_0805374C
	cmp r0, #0
	beq _080538BC
	adds r0, r4, #0
	mov r1, sp
	adds r2, r5, #0
	bl FUN_08053954
	cmp r0, #0
	beq _080538BC
	movs r0, #1
	b _080538BE
_080538BC:
	movs r0, #0
_080538BE:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_080538C8
FUN_080538C8: @ 0x080538C8
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r6, r2, #0
	mov r5, sp
	mov r2, sp
	bl FUN_0805374C
	cmp r0, #0
	beq _080538FC
	mov r0, sp
	ldrb r1, [r0]
	ldrb r0, [r4, #0x12]
	muls r0, r1, r0
	str r0, [sp, #4]
	ldrb r1, [r5, #1]
	ldrb r0, [r4, #0x12]
	muls r0, r1, r0
	add r1, sp, #4
	str r0, [r1, #4]
	adds r0, r4, #0
	adds r2, r6, #0
	bl FUN_08053908
	movs r0, #1
	b _080538FE
_080538FC:
	movs r0, #0
_080538FE:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08053908
FUN_08053908: @ 0x08053908
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	adds r5, r2, #0
	ldr r2, [r3]
	cmp r2, #0
	blt _08053926
	ldr r0, [r4, #0xc]
	cmp r2, r0
	bge _08053926
	ldr r1, [r3, #4]
	cmp r1, #0
	blt _08053926
	cmp r1, r0
	blt _0805392A
_08053926:
	movs r0, #0
	b _0805394E
_0805392A:
	ldr r0, [r4, #4]
	adds r0, r0, r2
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [r3]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ldr r1, [r4, #8]
	subs r1, r1, r0
	ldr r0, [r3, #4]
	lsrs r2, r0, #0x1f
	adds r0, r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	adds r1, #8
	str r1, [r5, #4]
	movs r0, #1
_0805394E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start FUN_08053954
FUN_08053954: @ 0x08053954
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r5, r2, #0
	ldrb r2, [r1]
	ldrh r0, [r4, #0x10]
	cmp r2, r0
	bhs _0805396A
	ldrb r3, [r1, #1]
	cmp r3, r0
	blo _0805396E
_0805396A:
	movs r0, #0
	b _080539B0
_0805396E:
	ldrb r0, [r4, #0x12]
	adds r1, r2, #0
	muls r1, r0, r1
	lsrs r0, r0, #1
	adds r2, r1, r0
	str r2, [sp]
	ldrb r0, [r4, #0x12]
	adds r1, r3, #0
	muls r1, r0, r1
	lsrs r0, r0, #1
	adds r3, r1, r0
	str r3, [sp, #4]
	cmp r2, #0
	blt _080539AE
	ldr r0, [r4, #0xc]
	cmp r2, r0
	bge _080539AE
	cmp r3, #0
	blt _080539AE
	cmp r3, r0
	bge _080539AE
	ldr r0, [r4, #4]
	adds r0, r0, r2
	adds r0, r0, r3
	str r0, [r5]
	lsrs r1, r2, #1
	ldr r0, [r4, #8]
	subs r0, r0, r1
	lsrs r1, r3, #1
	adds r0, r0, r1
	adds r0, #8
	str r0, [r5, #4]
_080539AE:
	movs r0, #1
_080539B0:
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start FUN_080539B8
FUN_080539B8: @ 0x080539B8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	cmp r2, #0
	beq _080539D6
	ldrb r1, [r4]
	ldrb r0, [r5, #0x12]
	muls r0, r1, r0
	str r0, [r2]
	ldrb r0, [r4, #1]
	ldrb r1, [r5, #0x12]
	muls r0, r1, r0
	adds r0, r0, r1
	subs r0, #1
	str r0, [r2, #4]
_080539D6:
	cmp r3, #0
	beq _080539EE
	ldrb r0, [r4]
	ldrb r1, [r5, #0x12]
	muls r0, r1, r0
	adds r0, r0, r1
	subs r0, #1
	str r0, [r3]
	ldrb r1, [r4, #1]
	ldrb r0, [r5, #0x12]
	muls r0, r1, r0
	str r0, [r3, #4]
_080539EE:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_080539F8
FUN_080539F8: @ 0x080539F8
	push {r4, lr}
	sub sp, #8
	ldrb r4, [r1]
	ldrb r3, [r0, #0x12]
	muls r3, r4, r3
	str r3, [sp]
	ldrb r3, [r1, #1]
	ldrb r1, [r0, #0x12]
	muls r1, r3, r1
	str r1, [sp, #4]
	mov r1, sp
	bl FUN_08053908
	add sp, #8
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
