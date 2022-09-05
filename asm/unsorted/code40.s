.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_0804F68C
FUN_0804F68C: @ 0x0804F68C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	movs r0, #6
	str r0, [sp]
	movs r0, #0
	movs r1, #4
	movs r2, #9
	movs r3, #8
	bl FUN_0800C790
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r6, _0804F6F4 @ => 0x0000023B
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #8
	movs r3, #0xf
	bl FUN_0800C7A8
	movs r5, #0
	ldr r7, _0804F6F8 @ => 0x03003E4C
	ldr r4, _0804F6FC @ => 0x0808FFC8
_0804F6C4:
	adds r0, r5, r7
	ldrb r0, [r0]
	bl FUN_080203A8
	ldr r0, _0804F700 @ => 0x00000762
	bl FUN_08050820
	adds r3, r0, #0
	ldrb r1, [r4]
	ldrb r2, [r4, #1]
	movs r0, #1
	str r0, [sp]
	adds r0, r6, #0
	bl FUN_0801F8B8
	adds r6, r0, #0
	adds r4, #4
	adds r5, #1
	cmp r5, #3
	bls _0804F6C4
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804F6F4: .4byte 0x0000023B
_0804F6F8: .4byte gUnk_03003E4C
_0804F6FC: .4byte ROMREF_0808FFC8
_0804F700: .4byte 0x00000762

	thumb_func_start FUN_0804F704
FUN_0804F704: @ 0x0804F704
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrh r0, [r5]
	bl FUN_08006F68
	cmp r0, #0
	beq _0804F740
	ldr r4, _0804F738 @ => 0x03003DF0
	ldrh r2, [r5]
	adds r0, r4, r2
	subs r0, #0xaf
	ldrb r3, [r0]
	ldr r1, _0804F73C @ => 0x0807281C
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, #8
	adds r0, r0, r1
	adds r3, #1
	adds r1, r3, #0
	muls r1, r3, r1
	ldr r0, [r0]
	adds r2, r0, #0
	muls r2, r1, r2
	b _0804F764
	.align 2, 0
_0804F738: .4byte gUnk_03003DF0
_0804F73C: .4byte ItemInfoData
_0804F740:
	ldr r2, _0804F788 @ => 0x0807281C
	ldrh r0, [r5]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r2, #8
	adds r1, r1, r2
	ldr r2, _0804F78C @ => 0x0808FFD8
	ldr r0, _0804F790 @ => 0x03002870
	ldrb r0, [r0, #4]
	lsls r0, r0, #3
	adds r2, #4
	adds r0, r0, r2
	ldr r1, [r1]
	ldr r0, [r0]
	muls r0, r1, r0
	lsrs r2, r0, #0x10
	ldr r4, _0804F794 @ => 0x03003DF0
_0804F764:
	ldr r1, _0804F798 @ => 0x0000036A
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0804F77E
	ldr r0, _0804F790 @ => 0x03002870
	ldrb r0, [r0, #4]
	cmp r0, #1
	bhi _0804F77E
	lsrs r0, r2, #2
	subs r2, r2, r0
_0804F77E:
	adds r0, r2, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0804F788: .4byte ItemInfoData
_0804F78C: .4byte ROMREF_0808FFD8
_0804F790: .4byte gUnk_03002870
_0804F794: .4byte gUnk_03003DF0
_0804F798: .4byte 0x0000036A

	thumb_func_start FUN_0804F79C
FUN_0804F79C: @ 0x0804F79C
	push {r4, lr}
	adds r1, r0, #0
	ldrh r0, [r1]
	cmp r0, #0x6d
	bhi _0804F7DC
	ldrb r0, [r1, #2]
	cmp r0, #4
	beq _0804F7DC
	ldr r2, _0804F7D0 @ => 0x0807281C
	ldrh r0, [r1]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r2, #8
	adds r1, r1, r2
	ldr r2, _0804F7D4 @ => 0x0808FFD8
	ldr r0, _0804F7D8 @ => 0x03002870
	ldrb r0, [r0, #4]
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r1, [r1]
	ldr r0, [r0]
	muls r0, r1, r0
	lsrs r4, r0, #0x10
	b _0804F7DE
	.align 2, 0
_0804F7D0: .4byte ItemInfoData
_0804F7D4: .4byte ROMREF_0808FFD8
_0804F7D8: .4byte gUnk_03002870
_0804F7DC:
	movs r4, #0
_0804F7DE:
	bl FUN_08021320
	cmp r0, #0
	bne _0804F7F4
	ldr r0, _0804F7FC @ => 0x0300407C
	movs r1, #2
	bl FUN_0801DF10
	cmp r0, #0
	bne _0804F7F4
	movs r4, #0
_0804F7F4:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804F7FC: .4byte gEpisode_Data

	thumb_func_start FUN_0804F800
FUN_0804F800: @ 0x0804F800
	push {r4, lr}
	sub sp, #8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	movs r0, #2
	str r0, [sp]
	movs r4, #0
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #3
	movs r2, #3
	movs r3, #8
	bl FUN_0800C7A8
	ldr r0, _0804F848 @ => 0x03003DF0
	ldr r0, [r0, #8]
	bl FUN_080203A8
	movs r0, #0xec
	lsls r0, r0, #3
	bl FUN_08050820
	adds r3, r0, #0
	ldr r0, _0804F84C @ => 0x00000227
	str r4, [sp]
	movs r1, #0x1f
	movs r2, #0x1a
	bl FUN_0801F8B8
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804F848: .4byte gUnk_03003DF0
_0804F84C: .4byte 0x00000227

	thumb_func_start FUN_0804F850
FUN_0804F850: @ 0x0804F850
	push {lr}
	sub sp, #0x14
	movs r0, #2
	str r0, [sp]
	ldr r0, _0804F88C @ => 0x00000217
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xd
	movs r2, #0xa
	movs r3, #4
	bl FUN_0800C7A8
	ldr r0, _0804F890 @ => 0x03004720
	ldr r0, [r0, #0xc]
	add r1, sp, #8
	bl FUN_080504E4
	movs r0, #0xa5
	lsls r0, r0, #2
	movs r1, #1
	str r1, [sp]
	movs r1, #0x78
	movs r2, #0x50
	add r3, sp, #8
	bl FUN_0801F8B8
	add sp, #0x14
	pop {r0}
	bx r0
	.align 2, 0
_0804F88C: .4byte 0x00000217
_0804F890: .4byte gUnk_03004720

	thumb_func_start FUN_0804F894
FUN_0804F894: @ 0x0804F894
	push {r4, r5, r6, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r6, r0, #0
	ldr r0, _0804F928 @ => 0x0808FFC4
	ldr r5, [r0]
	movs r0, #1
	adds r1, r5, #0
	bl FUN_0800C418
	movs r0, #1
	movs r1, #0
	bl FUN_0800C61C
	ldr r2, _0804F92C @ => 0x00000213
	movs r0, #1
	movs r1, #0
	movs r3, #0
	bl FUN_080410E8
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #3
	movs r1, #0
	bl FUN_0801FEA0
	adds r0, r6, #0
	bl FUN_08050820
	bl FUN_0801FF60
	adds r2, r0, #0
	adds r0, r2, #7
	lsrs r1, r0, #3
	adds r2, r1, #2
	movs r4, #1
	adds r0, r2, #0
	ands r0, r4
	cmp r0, #0
	beq _0804F8E8
	adds r2, r1, #3
_0804F8E8:
	movs r0, #0x1e
	subs r0, r0, r2
	lsrs r0, r0, #1
	movs r1, #5
	movs r3, #4
	bl FUN_08041234
	adds r0, r5, #0
	bl FUN_0801FE58
	adds r0, r6, #0
	bl FUN_08050820
	adds r3, r0, #0
	movs r0, #0x87
	lsls r0, r0, #2
	str r4, [sp]
	movs r1, #0x78
	movs r2, #0x33
	bl FUN_0801F8B8
	ldr r0, _0804F930 @ => 0x0808FFC0
	ldr r0, [r0]
	bl FUN_0801FE58
	ldr r1, _0804F934 @ => 0x03004720
	movs r0, #2
	str r0, [r1, #0x14]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804F928: .4byte ROMREF_0808FFC4
_0804F92C: .4byte 0x00000213
_0804F930: .4byte ROMREF_0808FFC0
_0804F934: .4byte gUnk_03004720

	thumb_func_start FUN_0804F938
FUN_0804F938: @ 0x0804F938
	push {lr}
	ldr r0, _0804F950 @ => 0x03002870
	ldrb r0, [r0, #4]
	cmp r0, #3
	bne _0804F958
	ldr r1, _0804F954 @ => 0x03004720
	ldr r0, [r1, #8]
	cmp r0, #1
	bhi _0804F980
	adds r0, #2
	b _0804F982
	.align 2, 0
_0804F950: .4byte gUnk_03002870
_0804F954: .4byte gUnk_03004720
_0804F958:
	bl FUN_0804F9DC
	cmp r0, #0
	beq _0804F974
	ldr r1, _0804F970 @ => 0x03004720
	ldr r0, [r1, #8]
	cmp r0, #5
	bhi _0804F984
	cmp r0, #2
	blo _0804F984
	b _0804F980
	.align 2, 0
_0804F970: .4byte gUnk_03004720
_0804F974:
	ldr r1, _0804F988 @ => 0x03004720
	ldr r0, [r1, #8]
	cmp r0, #0xb
	bhi _0804F984
	cmp r0, #8
	blo _0804F984
_0804F980:
	subs r0, #2
_0804F982:
	str r0, [r1, #8]
_0804F984:
	pop {r0}
	bx r0
	.align 2, 0
_0804F988: .4byte gUnk_03004720

	thumb_func_start FUN_0804F98C
FUN_0804F98C: @ 0x0804F98C
	push {lr}
	ldr r0, _0804F9A4 @ => 0x03002870
	ldrb r0, [r0, #4]
	cmp r0, #3
	bne _0804F9AC
	ldr r1, _0804F9A8 @ => 0x03004720
	ldr r0, [r1, #8]
	cmp r0, #1
	bls _0804F9D0
	subs r0, #2
	b _0804F9D2
	.align 2, 0
_0804F9A4: .4byte gUnk_03002870
_0804F9A8: .4byte gUnk_03004720
_0804F9AC:
	bl FUN_0804F9DC
	cmp r0, #0
	beq _0804F9C4
	ldr r1, _0804F9C0 @ => 0x03004720
	ldr r0, [r1, #8]
	cmp r0, #3
	bhi _0804F9D4
	b _0804F9D0
	.align 2, 0
_0804F9C0: .4byte gUnk_03004720
_0804F9C4:
	ldr r1, _0804F9D8 @ => 0x03004720
	ldr r0, [r1, #8]
	cmp r0, #9
	bhi _0804F9D4
	cmp r0, #6
	blo _0804F9D4
_0804F9D0:
	adds r0, #2
_0804F9D2:
	str r0, [r1, #8]
_0804F9D4:
	pop {r0}
	bx r0
	.align 2, 0
_0804F9D8: .4byte gUnk_03004720

	thumb_func_start FUN_0804F9DC
FUN_0804F9DC: @ 0x0804F9DC
	push {lr}
	movs r2, #0
	ldr r0, _0804F9F4 @ => 0x03004720
	ldr r1, _0804F9F8 @ => 0x03002878
	ldr r0, [r0, #8]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _0804F9EE
	movs r2, #1
_0804F9EE:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
_0804F9F4: .4byte gUnk_03004720
_0804F9F8: .4byte gUnk_03002878

	thumb_func_start FUN_0804F9FC
FUN_0804F9FC: @ 0x0804F9FC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r6, #0
	adds r0, #0x6a
	ldrb r0, [r0]
	cmp r0, #1
	beq _0804FA46
	cmp r0, #3
	beq _0804FA4A
	ldr r0, _0804FA2C @ => 0x03003DF0
	bl FUN_080143D0
	cmp r0, #1
	beq _0804FA34
	cmp r0, #1
	blo _0804FA30
	cmp r0, #2
	beq _0804FA38
	cmp r0, #3
	beq _0804FA3C
	movs r1, #0
	b _0804FA3E
	.align 2, 0
_0804FA2C: .4byte gUnk_03003DF0
_0804FA30:
	movs r1, #0x15
	b _0804FA3E
_0804FA34:
	movs r1, #0x19
	b _0804FA3E
_0804FA38:
	movs r1, #0x17
	b _0804FA3E
_0804FA3C:
	movs r1, #0x18
_0804FA3E:
	adds r0, r4, r6
	strb r1, [r0]
	adds r6, #1
	b _0804FA50
_0804FA46:
	movs r0, #0x20
	b _0804FA4C
_0804FA4A:
	movs r0, #0x11
_0804FA4C:
	strb r0, [r4]
	movs r6, #1
_0804FA50:
	adds r0, r5, #0
	adds r0, #0x6a
	ldrb r0, [r0]
	cmp r0, #2
	bne _0804FA70
	adds r0, r5, #0
	adds r0, #0x68
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0xa0
	lsls r0, r0, #6
	cmp r1, r0
	ble _0804FA70
	adds r1, r4, r6
	movs r0, #0xa
	strb r0, [r1]
_0804FA70:
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_0804FA78
FUN_0804FA78: @ 0x0804FA78
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r2, #0
	subs r0, #8
	cmp r0, #0x18
	bhi _0804FAFE
	lsls r0, r0, #2
	ldr r1, _0804FA90 @ =_0804FA94
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804FA90: .4byte _0804FA94
_0804FA94: @ jump table
	.4byte _0804FAF8 @ case 0
	.4byte _0804FAFE @ case 1
	.4byte _0804FB44 @ case 2
	.4byte _0804FAFE @ case 3
	.4byte _0804FAFE @ case 4
	.4byte _0804FAFE @ case 5
	.4byte _0804FAFE @ case 6
	.4byte _0804FAFE @ case 7
	.4byte _0804FAFE @ case 8
	.4byte _0804FB60 @ case 9
	.4byte _0804FAFE @ case 10
	.4byte _0804FAFE @ case 11
	.4byte _0804FAFE @ case 12
	.4byte _0804FB02 @ case 13
	.4byte _0804FAFE @ case 14
	.4byte _0804FB02 @ case 15
	.4byte _0804FB02 @ case 16
	.4byte _0804FB02 @ case 17
	.4byte _0804FAFE @ case 18
	.4byte _0804FAFE @ case 19
	.4byte _0804FAFE @ case 20
	.4byte _0804FAFE @ case 21
	.4byte _0804FAFE @ case 22
	.4byte _0804FAFE @ case 23
	.4byte _0804FB52 @ case 24
_0804FAF8:
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _0804FB72
_0804FAFE:
	movs r0, #0
	b _0804FB74
_0804FB02:
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _0804FB72
	ldrb r0, [r4, #0xa]
	movs r1, #0x68
	bl FUN_0803A10C
	cmp r0, #0
	beq _0804FAFE
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _0804FB72
	ldrb r0, [r4, #0xa]
	movs r1, #0x69
	bl FUN_0803A10C
	cmp r0, #0
	beq _0804FAFE
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _0804FB72
	ldrb r0, [r4, #0xa]
	movs r1, #0x6a
	bl FUN_0803A10C
	cmp r0, #0
	beq _0804FAFE
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _0804FB72
	ldrb r0, [r4, #0xa]
	movs r1, #0x2a
	b _0804FB6A
_0804FB44:
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _0804FB72
	ldrh r0, [r4, #0xa]
	cmp r0, #2
	beq _0804FB72
	b _0804FAFE
_0804FB52:
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _0804FB72
	ldrh r0, [r4, #0xa]
	cmp r0, #1
	beq _0804FB72
	b _0804FAFE
_0804FB60:
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _0804FB72
	ldrb r0, [r4, #0xa]
	movs r1, #0x2b
_0804FB6A:
	bl FUN_0803A10C
	cmp r0, #0
	beq _0804FAFE
_0804FB72:
	movs r0, #1
_0804FB74:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0804FB7C
FUN_0804FB7C: @ 0x0804FB7C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	movs r7, #1
	ldr r0, [r5, #0xc]
	cmp r0, #1
	bne _0804FB90
	movs r0, #2
	strh r0, [r5, #6]
_0804FB90:
	ldrh r0, [r5, #6]
	cmp r0, #0x4a
	bls _0804FB98
	b _0804FE8C
_0804FB98:
	lsls r0, r0, #2
	ldr r1, _0804FBA4 @ =_0804FBA8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804FBA4: .4byte _0804FBA8
_0804FBA8: @ jump table
	.4byte _0804FCD4 @ case 0
	.4byte _0804FE7E @ case 1
	.4byte _0804FE64 @ case 2
	.4byte _0804FE8C @ case 3
	.4byte _0804FE8C @ case 4
	.4byte _0804FE8C @ case 5
	.4byte _0804FE8C @ case 6
	.4byte _0804FE8C @ case 7
	.4byte _0804FE8C @ case 8
	.4byte _0804FE8C @ case 9
	.4byte _0804FE8C @ case 10
	.4byte _0804FD4E @ case 11
	.4byte _0804FE8C @ case 12
	.4byte _0804FE54 @ case 13
	.4byte _0804FE8C @ case 14
	.4byte _0804FE8C @ case 15
	.4byte _0804FE8C @ case 16
	.4byte _0804FE8C @ case 17
	.4byte _0804FE8C @ case 18
	.4byte _0804FE8C @ case 19
	.4byte _0804FE8C @ case 20
	.4byte _0804FE8C @ case 21
	.4byte _0804FE8C @ case 22
	.4byte _0804FE8C @ case 23
	.4byte _0804FE8C @ case 24
	.4byte _0804FE8C @ case 25
	.4byte _0804FE8C @ case 26
	.4byte _0804FE8C @ case 27
	.4byte _0804FE8C @ case 28
	.4byte _0804FE8C @ case 29
	.4byte _0804FE8C @ case 30
	.4byte _0804FE8C @ case 31
	.4byte _0804FE8C @ case 32
	.4byte _0804FE8C @ case 33
	.4byte _0804FE8C @ case 34
	.4byte _0804FE8C @ case 35
	.4byte _0804FE8C @ case 36
	.4byte _0804FE8C @ case 37
	.4byte _0804FE8C @ case 38
	.4byte _0804FE8C @ case 39
	.4byte _0804FE8C @ case 40
	.4byte _0804FE14 @ case 41
	.4byte _0804FE8C @ case 42
	.4byte _0804FE8C @ case 43
	.4byte _0804FE8C @ case 44
	.4byte _0804FE8C @ case 45
	.4byte _0804FE8C @ case 46
	.4byte _0804FE8C @ case 47
	.4byte _0804FE8C @ case 48
	.4byte _0804FE8C @ case 49
	.4byte _0804FE8C @ case 50
	.4byte _0804FE8C @ case 51
	.4byte _0804FE8C @ case 52
	.4byte _0804FE8C @ case 53
	.4byte _0804FE8C @ case 54
	.4byte _0804FE8C @ case 55
	.4byte _0804FE8C @ case 56
	.4byte _0804FE8C @ case 57
	.4byte _0804FE8C @ case 58
	.4byte _0804FE8C @ case 59
	.4byte _0804FE8C @ case 60
	.4byte _0804FE8C @ case 61
	.4byte _0804FE8C @ case 62
	.4byte _0804FE8C @ case 63
	.4byte _0804FE8C @ case 64
	.4byte _0804FE8C @ case 65
	.4byte _0804FE8C @ case 66
	.4byte _0804FE8C @ case 67
	.4byte _0804FE8C @ case 68
	.4byte _0804FE8C @ case 69
	.4byte _0804FE8C @ case 70
	.4byte _0804FE8C @ case 71
	.4byte _0804FD74 @ case 72
	.4byte _0804FD9E @ case 73
	.4byte _0804FDF8 @ case 74
_0804FCD4:
	ldrh r0, [r5, #4]
	subs r0, #0x15
	cmp r0, #5
	bhi _0804FD0C
	lsls r0, r0, #2
	ldr r1, _0804FCE8 @ =_0804FCEC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804FCE8: .4byte _0804FCEC
_0804FCEC: @ jump table
	.4byte _0804FD04 @ case 0
	.4byte _0804FD0C @ case 1
	.4byte _0804FD04 @ case 2
	.4byte _0804FD08 @ case 3
	.4byte _0804FD04 @ case 4
	.4byte _0804FD08 @ case 5
_0804FD04:
	movs r2, #0x14
	b _0804FD0E
_0804FD08:
	movs r2, #0xa
	b _0804FD0E
_0804FD0C:
	movs r2, #0
_0804FD0E:
	adds r0, r6, #0
	adds r1, r5, #0
	bl FUN_0803DAB8
	cmp r0, #0
	bne _0804FD28
	adds r0, r5, #0
	movs r1, #1
	bl FUN_0803D958
	movs r0, #0xb
	strh r0, [r5, #6]
	b _0804FE8C
_0804FD28:
	movs r0, #3
	str r0, [sp]
	movs r0, #0x68
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0xa
	movs r3, #0x7d
	bl FUN_0803DB6C
	ldr r0, [r5]
	movs r2, #0x93
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r0, #0x96
	strh r0, [r1]
	movs r0, #0x48
	strh r0, [r5, #6]
	b _0804FE8C
_0804FD4E:
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0804FD5E
	b _0804FE8C
_0804FD5E:
	ldr r0, _0804FD6C @ => 0x03005C60
	ldr r1, _0804FD70 @ => 0x00000871
	strh r1, [r0]
	bl FUN_08041BF0
	b _0804FDF2
	.align 2, 0
_0804FD6C: .4byte gChoiceIDs
_0804FD70: .4byte 0x00000871
_0804FD74:
	ldr r2, [r5]
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0804FD84
	b _0804FE8C
_0804FD84:
	adds r0, r2, #0
	movs r1, #0x69
	bl FUN_08001F20
	movs r0, #0x7b
	bl FUN_0804DE0C
	adds r1, r6, #0
	adds r1, #0xe0
	str r0, [r1]
	movs r0, #0x49
	strh r0, [r5, #6]
	b _0804FE8C
_0804FD9E:
	ldr r0, [r5]
	movs r2, #0x93
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	ldr r1, _0804FDE8 @ => 0xFFFF0000
	cmp r0, r1
	bne _0804FE8C
	ldr r1, [r5]
	adds r0, r6, #0
	bl FUN_0803D9F0
	cmp r0, #0
	bne _0804FDEC
	movs r0, #0x4a
	strh r0, [r5, #6]
	ldr r0, [r5]
	movs r1, #0x6a
	bl FUN_08001F20
	adds r4, r6, #0
	adds r4, #0xe0
	ldr r0, [r4]
	bl FUN_0804E03C
	movs r0, #0x31
	bl FUN_0804DE0C
	str r0, [r4]
	ldr r0, [r6, #0x34]
	movs r1, #0
	bl FUN_0803BC7C
	b _0804FE8C
	.align 2, 0
_0804FDE8: .4byte 0xFFFF0000
_0804FDEC:
	adds r0, r6, #0
	bl FUN_0803D9C0
_0804FDF2:
	movs r0, #1
	strh r0, [r5, #6]
	b _0804FE8C
_0804FDF8:
	ldr r2, [r5]
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0804FE8C
	adds r0, r2, #0
	movs r1, #0x2a
	bl FUN_08001F20
	movs r0, #0x29
	strh r0, [r5, #6]
	b _0804FE8C
_0804FE14:
	ldr r4, _0804FE50 @ => 0x03003E28
	ldrh r0, [r6, #8]
	bl FUN_0803DCFC
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08038A30
	ldrh r0, [r6, #8]
	bl FUN_0803DCFC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl FUN_08038B24
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0804FE8C
	movs r0, #2
	strh r0, [r5, #6]
	b _0804FE8C
	.align 2, 0
_0804FE50: .4byte gUnk_03003E28
_0804FE54:
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0804FE8C
	b _0804FE8A
_0804FE64:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #4
	bl FUN_0803DC54
	adds r0, r6, #0
	bl FUN_0803CB84
	adds r0, r6, #0
	bl FUN_0803C68C
	b _0804FE8A
_0804FE7E:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #4
	bl FUN_0803DC54
_0804FE8A:
	movs r7, #2
_0804FE8C:
	adds r0, r7, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0804FE98
FUN_0804FE98: @ 0x0804FE98
	movs r0, #1
	bx lr

	thumb_func_start FUN_0804FE9C
FUN_0804FE9C: @ 0x0804FE9C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl FUN_08001D8C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804FEB6
	ldr r0, [r4, #0x40]
	cmp r0, #1
	bne _0804FEB6
	movs r0, #0
	b _0804FEB8
_0804FEB6:
	movs r0, #1
_0804FEB8:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0804FEC0
FUN_0804FEC0: @ 0x0804FEC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	bl FUN_0803D1F0
	adds r4, r0, #0
	cmp r4, #0
	beq _0804FEFA
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
_0804FEFA:
	adds r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_0804FF04
FUN_0804FF04: @ 0x0804FF04
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0803D8C8
	adds r2, r0, #0
	ldrh r0, [r2, #4]
	subs r0, #0xa
	cmp r0, #0x16
	bhi _0804FFA8
	lsls r0, r0, #2
	ldr r1, _0804FF20 @ =_0804FF24
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804FF20: .4byte _0804FF24
_0804FF24: @ jump table
	.4byte _0804FF8A @ case 0
	.4byte _0804FFA8 @ case 1
	.4byte _0804FFA8 @ case 2
	.4byte _0804FFA8 @ case 3
	.4byte _0804FFA8 @ case 4
	.4byte _0804FFA8 @ case 5
	.4byte _0804FFA8 @ case 6
	.4byte _0804FF9E @ case 7
	.4byte _0804FFA8 @ case 8
	.4byte _0804FFA8 @ case 9
	.4byte _0804FFA8 @ case 10
	.4byte _0804FF80 @ case 11
	.4byte _0804FFA8 @ case 12
	.4byte _0804FF80 @ case 13
	.4byte _0804FF80 @ case 14
	.4byte _0804FF80 @ case 15
	.4byte _0804FFA8 @ case 16
	.4byte _0804FFA8 @ case 17
	.4byte _0804FFA8 @ case 18
	.4byte _0804FFA8 @ case 19
	.4byte _0804FFA8 @ case 20
	.4byte _0804FFA8 @ case 21
	.4byte _0804FF94 @ case 22
_0804FF80:
	adds r0, r4, #0
	adds r1, r2, #0
	bl FUN_0804FB7C
	b _0804FFAA
_0804FF8A:
	adds r0, r4, #0
	adds r1, r2, #0
	bl FUN_0803C6F0
	b _0804FFAA
_0804FF94:
	adds r0, r4, #0
	adds r1, r2, #0
	bl FUN_0803CC7C
	b _0804FFAA
_0804FF9E:
	adds r0, r4, #0
	adds r1, r2, #0
	bl FUN_0804FFB4
	b _0804FFAA
_0804FFA8:
	movs r0, #0
_0804FFAA:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_0804FFB0
FUN_0804FFB0: @ 0x0804FFB0
	bx lr
	.align 2, 0

	thumb_func_start FUN_0804FFB4
FUN_0804FFB4: @ 0x0804FFB4
	push {r4, r5, lr}
	sub sp, #8
	adds r2, r0, #0
	adds r4, r1, #0
	movs r5, #1
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _0804FFC6
	strh r5, [r4, #6]
_0804FFC6:
	ldrh r0, [r4, #6]
	cmp r0, #1
	beq _08050004
	cmp r0, #1
	bgt _0804FFD6
	cmp r0, #0
	beq _0804FFDC
	b _08050012
_0804FFD6:
	cmp r0, #0xe
	beq _0804FFF6
	b _08050012
_0804FFDC:
	movs r0, #6
	str r0, [sp]
	movs r0, #0x2b
	str r0, [sp, #4]
	adds r0, r2, #0
	adds r1, r4, #0
	movs r2, #0xa
	movs r3, #0x32
	bl FUN_0803DB6C
	movs r0, #0xe
	strh r0, [r4, #6]
	b _08050012
_0804FFF6:
	adds r0, r2, #0
	bl FUN_0803DAEC
	cmp r0, #1
	bne _08050012
	strh r5, [r4, #6]
	b _08050012
_08050004:
	adds r0, r2, #0
	adds r1, r4, #0
	movs r2, #6
	movs r3, #4
	bl FUN_0803DC54
	movs r5, #2
_08050012:
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start FUN_0805001C
FUN_0805001C: @ 0x0805001C
	movs r0, #1
	bx lr

	thumb_func_start FUN_08050020
FUN_08050020: @ 0x08050020
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl FUN_08001D8C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805003A
	ldr r0, [r4, #0x40]
	cmp r0, #1
	bne _0805003A
	movs r0, #0
	b _0805003C
_0805003A:
	movs r0, #1
_0805003C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08050044
FUN_08050044: @ 0x08050044
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	bx lr

	thumb_func_start FUN_0805004C
FUN_0805004C: @ 0x0805004C
	push {lr}
	ldrh r0, [r1, #8]
	cmp r0, #0
	bne _08050058
	movs r0, #1
	b _0805005A
_08050058:
	movs r0, #0
_0805005A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08050060
FUN_08050060: @ 0x08050060
	push {r4, lr}
	adds r4, r2, #0
	bl FUN_0803D1F0
	cmp r0, #0
	beq _0805006E
	strh r4, [r0, #4]
_0805006E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_08050074
FUN_08050074: @ 0x08050074
	push {lr}
	bl FUN_0803D8C8
	movs r0, #0
	pop {r1}
	bx r1

	thumb_func_start FUN_08050080
FUN_08050080: @ 0x08050080
	bx lr
	.align 2, 0

	thumb_func_start FUN_08050084
FUN_08050084: @ 0x08050084
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08009B04
	adds r4, r0, #0
	bl FUN_080012FC
	adds r5, r0, #0
	movs r0, #4
	ldrsh r1, [r4, r0]
	lsls r1, r1, #0x10
	movs r6, #6
	ldrsh r2, [r4, r6]
	lsls r2, r2, #0x10
	adds r0, r5, #0
	bl FUN_08001728
	ldrh r1, [r4, #8]
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r0, r5, r2
	movs r2, #0
	movs r3, #0
	strh r1, [r0]
	ldrh r0, [r4, #0xa]
	movs r6, #0x9b
	lsls r6, r6, #1
	adds r1, r5, r6
	strh r0, [r1]
	ldrb r0, [r4, #0x12]
	adds r6, #8
	adds r1, r5, r6
	strb r0, [r1]
	ldr r0, [r4]
	strh r0, [r5, #8]
	ldr r0, _08050130 @ => 0x0002040C
	str r0, [r5, #0xc]
	ldr r0, _08050134 @ => FUN_0805013C
	str r0, [r5, #0x50]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r5, r1
	strb r2, [r0]
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r0, r5, r2
	str r3, [r0]
	adds r1, r5, #0
	adds r1, #0x94
	ldr r0, _08050138 @ => FUN_0805028C
	str r0, [r1]
	ldrb r0, [r4, #0xc]
	rsbs r0, r0, #0
	subs r1, #0x18
	strb r0, [r1]
	ldrb r0, [r4, #0xc]
	adds r1, #1
	strb r0, [r1]
	ldrb r0, [r4, #0xd]
	rsbs r0, r0, #0
	adds r1, #1
	strb r0, [r1]
	ldrb r0, [r4, #0xd]
	adds r1, #1
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x80
	movs r1, #1
	strb r1, [r0]
	subs r0, #5
	strb r1, [r0]
	ldrb r1, [r4, #0xe]
	subs r6, #2
	adds r0, r5, r6
	strb r1, [r0]
	ldrb r0, [r4, #0xf]
	adds r2, #5
	adds r1, r5, r2
	strb r0, [r1]
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08050130: .4byte 0x0002040C
_08050134: .4byte FUN_0805013C
_08050138: .4byte FUN_0805028C

	thumb_func_start FUN_0805013C
FUN_0805013C: @ 0x0805013C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r0, r0, r5
	mov r8, r0
	ldrb r0, [r0]
	cmp r0, #1
	beq _08050164
	cmp r0, #1
	bgt _0805015A
	b _08050274
_0805015A:
	cmp r0, #3
	beq _0805016E
	cmp r0, #4
	beq _0805020C
	b _08050274
_08050164:
	ldr r0, [r5, #0xc]
	movs r1, #0x82
	orrs r0, r1
	str r0, [r5, #0xc]
	b _08050274
_0805016E:
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r6, [r0]
	adds r1, #0xc
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #0x3f
	bl FUN_0804582C
	ldr r1, _08050204 @ => 0x0000011D
	adds r0, r6, r1
	movs r7, #1
	strb r7, [r0]
	adds r1, #9
	adds r0, r5, r1
	strh r7, [r0]
	adds r1, #0xe
	adds r0, r5, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	str r0, [sp]
	adds r1, #2
	adds r0, r5, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	ldr r4, _08050208 @ => 0x030042B0
	ldrb r1, [r4, #6]
	movs r0, #1
	bl FUN_08011024
	ldrb r2, [r4, #6]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl FUN_080110C4
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r0, [r6, #0x20]
	str r1, [r6, #0x24]
	str r0, [r6, #0x18]
	str r1, [r6, #0x1c]
	movs r1, #0x9f
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	strb r0, [r6, #0x12]
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r4, r5, r1
	ldr r0, [r4]
	cmp r0, #0
	bne _080501FC
	ldrb r0, [r5, #0x10]
	ldrb r1, [r5, #0x11]
	bl FUN_08009B04
	ldrb r2, [r0, #0x10]
	ldrb r1, [r0, #0x11]
	adds r0, r2, #0
	bl FUN_080099A8
	str r7, [r4]
_080501FC:
	movs r0, #4
	mov r1, r8
	strb r0, [r1]
	b _08050274
	.align 2, 0
_08050204: .4byte 0x0000011D
_08050208: .4byte gUnk_030042B0
_0805020C:
	movs r0, #0x93
	lsls r0, r0, #1
	adds r1, r5, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	ldr r1, _08050280 @ => 0xFFFF0000
	cmp r0, r1
	bne _08050274
	movs r1, #0x98
	lsls r1, r1, #1
	adds r4, r5, r1
	ldr r6, [r4]
	ldr r0, _08050284 @ => 0x0000011D
	adds r1, r6, r0
	movs r0, #2
	strb r0, [r1]
	ldr r0, [r6, #0xc]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r6, #0xc]
	movs r2, #0x10
	movs r3, #0x10
	movs r0, #0
	movs r1, #0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	bl FUN_08011024
	adds r0, r6, #0
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	adds r1, r2, #0
	adds r2, r3, #0
	movs r3, #0
	bl FUN_0801119C
	ldr r1, _08050288 @ => 0x0000013D
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #0x3f
	bl FUN_080457F4
	movs r0, #0
	str r0, [r4]
	mov r1, r8
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #4
	bl FUN_08002038
_08050274:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08050280: .4byte 0xFFFF0000
_08050284: .4byte 0x0000011D
_08050288: .4byte 0x0000013D

	thumb_func_start FUN_0805028C
FUN_0805028C: @ 0x0805028C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrh r0, [r5, #8]
	cmp r0, #0
	bne _080502B2
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #3
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08002040
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	str r5, [r0]
_080502B2:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_080502B8
FUN_080502B8: @ 0x080502B8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	movs r7, #1
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _080502D0
	movs r0, #0
	str r0, [r4, #0xc]
	movs r0, #5
	strh r0, [r4, #6]
_080502D0:
	ldrh r0, [r4, #6]
	cmp r0, #4
	beq _08050308
	cmp r0, #4
	bgt _080502E4
	cmp r0, #0
	beq _080502EE
	cmp r0, #1
	beq _0805036C
	b _0805037A
_080502E4:
	cmp r0, #5
	beq _08050358
	cmp r0, #0x44
	beq _08050320
	b _0805037A
_080502EE:
	movs r3, #0x8d
	lsls r3, r3, #1
	str r7, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xa
	bl FUN_0803DB6C
	movs r0, #4
	strh r0, [r4, #6]
	b _0805037A
_08050308:
	ldr r0, [r5, #0x34]
	movs r1, #3
	bl FUN_0803BC7C
	adds r1, r5, #0
	adds r1, #0x68
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	movs r0, #0x44
	strh r0, [r4, #6]
	b _0805037A
_08050320:
	ldr r6, _08050354 @ => 0x03003E28
	adds r0, r6, #0
	movs r1, #1
	movs r2, #6
	bl FUN_08038A30
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _0805037A
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805037A
	ldrh r0, [r5, #8]
	bl FUN_0803DCFC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	bl FUN_08038B24
	movs r0, #5
	strh r0, [r4, #6]
	b _0805037A
	.align 2, 0
_08050354: .4byte gUnk_03003E28
_08050358:
	adds r0, r5, #0
	adds r0, #0x68
	movs r1, #0
	strh r1, [r0]
	ldr r0, [r5, #0x34]
	movs r1, #2
	bl FUN_0803BC7C
	strh r7, [r4, #6]
	b _0805037A
_0805036C:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #6
	movs r3, #4
	bl FUN_0803DC54
	movs r7, #2
_0805037A:
	adds r0, r7, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_08050384
FUN_08050384: @ 0x08050384
	movs r0, #1
	bx lr

	thumb_func_start FUN_08050388
FUN_08050388: @ 0x08050388
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl FUN_08001D8C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080503A2
	ldr r0, [r4, #0x40]
	cmp r0, #1
	bne _080503A2
	movs r0, #0
	b _080503A4
_080503A2:
	movs r0, #1
_080503A4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_080503AC
FUN_080503AC: @ 0x080503AC
	push {r4, lr}
	adds r4, r1, #0
	bl FUN_0803CE64
	cmp r0, #0
	bne _080503BC
	movs r0, #0x2b
	b _080503BE
_080503BC:
	movs r0, #0x20
_080503BE:
	strb r0, [r4]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_080503C8
FUN_080503C8: @ 0x080503C8
	push {lr}
	cmp r2, #0x20
	beq _080503D6
	cmp r2, #0x2b
	bne _080503E2
	ldrh r0, [r1, #8]
	b _080503E6
_080503D6:
	ldrh r0, [r1, #8]
	cmp r0, #0
	beq _080503E6
	ldrh r0, [r1, #0xa]
	cmp r0, #1
	beq _080503E6
_080503E2:
	movs r0, #0
	b _080503E8
_080503E6:
	movs r0, #1
_080503E8:
	pop {r1}
	bx r1

	thumb_func_start FUN_080503EC
FUN_080503EC: @ 0x080503EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	bl FUN_0803D1F0
	adds r5, r0, #0
	cmp r5, #0
	beq _0805043C
	strh r6, [r5, #4]
	cmp r6, #0x2b
	bne _08050418
	ldr r0, _08050414 @ => 0x03004398
	ldr r0, [r0]
	adds r1, r5, #0
	adds r2, r4, #0
	bl FUN_08049A04
	b _08050434
	.align 2, 0
_08050414: .4byte gUnk_03004398
_08050418:
	ldr r0, [r4, #0x34]
	movs r1, #0
	add r2, sp, #4
	bl FUN_08001A84
	adds r2, r5, #0
	adds r2, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, r7, #0
	add r1, sp, #4
	movs r3, #3
	bl FUN_08043BB8
_08050434:
	adds r0, r7, #0
	movs r1, #0xa
	bl FUN_08001F20
_0805043C:
	adds r0, r5, #0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08050448
FUN_08050448: @ 0x08050448
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0803D8C8
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	cmp r0, #0x20
	beq _08050464
	cmp r0, #0x2b
	bne _0805046C
	adds r0, r4, #0
	bl FUN_080502B8
	b _0805046E
_08050464:
	adds r0, r4, #0
	bl FUN_0803CC7C
	b _0805046E
_0805046C:
	movs r0, #0
_0805046E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_08050474
FUN_08050474: @ 0x08050474
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x68
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0805048E
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bne _0805049E
_0805048E:
	movs r0, #5
	bl FUN_080425E4
	cmp r0, #1
	bne _0805049E
	adds r0, r4, #0
	bl FUN_080504A4
_0805049E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_080504A4
FUN_080504A4: @ 0x080504A4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #6
	bl FUN_080424F8
	adds r2, r0, #0
	adds r4, #0x68
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _080504C8
	ldr r1, _080504C4 @ => 0x09FC1E88
	b _080504CA
	.align 2, 0
_080504C4: .4byte ROMREF_09FC1E88
_080504C8:
	ldr r1, _080504DC @ => 0x09FC1E96
_080504CA:
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r2, [r0]
	adds r0, r2, #0
	bl FUN_0804DE0C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080504DC: .4byte ROMREF_09FC1E96

	thumb_func_start FUN_080504E0
FUN_080504E0: @ 0x080504E0
	bx lr
	.align 2, 0

	thumb_func_start FUN_080504E4
FUN_080504E4: @ 0x080504E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r1
	mov r6, r8
	adds r5, r0, #0
	movs r7, #1
	rsbs r7, r7, #0
	cmp r5, #0
	bge _08050500
	rsbs r5, r5, #0
	movs r0, #0x2d
	strb r0, [r6]
	adds r6, #1
_08050500:
	ldr r0, _080506AC @ => 0x3B9AC9FF
	cmp r5, r0
	ble _0805052C
	ldr r4, _080506B0 @ => 0x3B9ACA00
	adds r0, r5, #0
	adds r1, r4, #0
	bl __divsi3
	adds r7, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl __modsi3
	adds r5, r0, #0
	adds r0, r7, #0
	adds r0, #0x30
	strb r0, [r6]
	adds r6, #1
	ldr r0, _080506B4 @ => 0x03002881
	ldrb r0, [r0]
	strb r0, [r6]
	adds r6, #1
_0805052C:
	ldr r0, _080506B8 @ => 0x05F5E0FF
	cmp r5, r0
	bgt _0805053A
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	beq _08050558
_0805053A:
	ldr r4, _080506BC @ => 0x05F5E100
	adds r0, r5, #0
	adds r1, r4, #0
	bl __divsi3
	adds r7, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl __modsi3
	adds r5, r0, #0
	adds r0, r7, #0
	adds r0, #0x30
	strb r0, [r6]
	adds r6, #1
_08050558:
	ldr r0, _080506C0 @ => 0x0098967F
	cmp r5, r0
	bgt _08050566
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	beq _08050584
_08050566:
	ldr r4, _080506C4 @ => 0x00989680
	adds r0, r5, #0
	adds r1, r4, #0
	bl __divsi3
	adds r7, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl __modsi3
	adds r5, r0, #0
	adds r0, r7, #0
	adds r0, #0x30
	strb r0, [r6]
	adds r6, #1
_08050584:
	ldr r0, _080506C8 @ => 0x000F423F
	cmp r5, r0
	bgt _08050592
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	beq _080505B8
_08050592:
	ldr r4, _080506CC @ => 0x000F4240
	adds r0, r5, #0
	adds r1, r4, #0
	bl __divsi3
	adds r7, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl __modsi3
	adds r5, r0, #0
	adds r0, r7, #0
	adds r0, #0x30
	strb r0, [r6]
	adds r6, #1
	ldr r0, _080506B4 @ => 0x03002881
	ldrb r0, [r0]
	strb r0, [r6]
	adds r6, #1
_080505B8:
	ldr r0, _080506D0 @ => 0x0001869F
	cmp r5, r0
	bgt _080505C6
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	beq _080505E4
_080505C6:
	ldr r4, _080506D4 @ => 0x000186A0
	adds r0, r5, #0
	adds r1, r4, #0
	bl __divsi3
	adds r7, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl __modsi3
	adds r5, r0, #0
	adds r0, r7, #0
	adds r0, #0x30
	strb r0, [r6]
	adds r6, #1
_080505E4:
	ldr r0, _080506D8 @ => 0x0000270F
	cmp r5, r0
	bgt _080505F2
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	beq _08050610
_080505F2:
	ldr r4, _080506DC @ => 0x00002710
	adds r0, r5, #0
	adds r1, r4, #0
	bl __divsi3
	adds r7, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl __modsi3
	adds r5, r0, #0
	adds r0, r7, #0
	adds r0, #0x30
	strb r0, [r6]
	adds r6, #1
_08050610:
	ldr r0, _080506E0 @ => 0x000003E7
	cmp r5, r0
	bgt _0805061E
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	beq _08050646
_0805061E:
	movs r4, #0xfa
	lsls r4, r4, #2
	adds r0, r5, #0
	adds r1, r4, #0
	bl __divsi3
	adds r7, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl __modsi3
	adds r5, r0, #0
	adds r0, r7, #0
	adds r0, #0x30
	strb r0, [r6]
	adds r6, #1
	ldr r0, _080506B4 @ => 0x03002881
	ldrb r0, [r0]
	strb r0, [r6]
	adds r6, #1
_08050646:
	cmp r5, #0x63
	bgt _08050652
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	beq _0805066E
_08050652:
	adds r0, r5, #0
	movs r1, #0x64
	bl __divsi3
	adds r7, r0, #0
	adds r0, r5, #0
	movs r1, #0x64
	bl __modsi3
	adds r5, r0, #0
	adds r0, r7, #0
	adds r0, #0x30
	strb r0, [r6]
	adds r6, #1
_0805066E:
	cmp r5, #9
	bgt _0805067A
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	beq _08050696
_0805067A:
	adds r0, r5, #0
	movs r1, #0xa
	bl __divsi3
	adds r7, r0, #0
	adds r0, r5, #0
	movs r1, #0xa
	bl __modsi3
	adds r5, r0, #0
	adds r0, r7, #0
	adds r0, #0x30
	strb r0, [r6]
	adds r6, #1
_08050696:
	adds r0, r5, #0
	adds r0, #0x30
	strb r0, [r6]
	movs r0, #0
	strb r0, [r6, #1]
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080506AC: .4byte 0x3B9AC9FF
_080506B0: .4byte 0x3B9ACA00
_080506B4: .4byte gUnk_03002881
_080506B8: .4byte 0x05F5E0FF
_080506BC: .4byte 0x05F5E100
_080506C0: .4byte 0x0098967F
_080506C4: .4byte 0x00989680
_080506C8: .4byte 0x000F423F
_080506CC: .4byte 0x000F4240
_080506D0: .4byte 0x0001869F
_080506D4: .4byte 0x000186A0
_080506D8: .4byte 0x0000270F
_080506DC: .4byte 0x00002710
_080506E0: .4byte 0x000003E7

	thumb_func_start FUN_080506E4
FUN_080506E4: @ 0x080506E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	adds r4, r2, #0
	lsrs r1, r1, #0x10
	mov r8, r1
	cmp r1, #0
	beq _08050770
_080506FC:
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _08050734
	ldrh r0, [r4, #6]
	ldr r6, _08050730 @ => 0x0300287C
	ldr r1, [r6]
	movs r2, #0x80
	lsls r2, r2, #3
	bl FUN_08024554
	movs r5, #0
	cmp r0, #0
	bne _08050718
	ldr r5, [r6]
_08050718:
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #2
	ldrsh r2, [r4, r0]
	ldrb r3, [r4, #4]
	str r5, [sp]
	ldrb r0, [r4, #5]
	str r0, [sp, #4]
	adds r0, r7, #0
	bl FUN_08020098
	b _0805075C
	.align 2, 0
_08050730: .4byte gUnk_0300287C
_08050734:
	ldrh r0, [r4, #6]
	ldr r5, _08050780 @ => 0x0300287C
	ldr r1, [r5]
	movs r2, #0x80
	lsls r2, r2, #3
	bl FUN_08024554
	movs r3, #0
	cmp r0, #0
	bne _0805074A
	ldr r3, [r5]
_0805074A:
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #2
	ldrsh r2, [r4, r0]
	ldrb r0, [r4, #5]
	str r0, [sp]
	adds r0, r7, #0
	bl FUN_0801F8B8
_0805075C:
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r4, #8
	mov r0, r8
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0
	bne _080506FC
_08050770:
	adds r0, r7, #0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08050780: .4byte gUnk_0300287C

	thumb_func_start FUN_08050784
FUN_08050784: @ 0x08050784
	push {r4, lr}
	movs r0, #0
	bl FUN_080507A4
	ldr r4, _080507A0 @ => 0x0300287C
	movs r0, #0x80
	lsls r0, r0, #3
	bl FUN_0802C95C
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080507A0: .4byte gUnk_0300287C

	thumb_func_start FUN_080507A4
FUN_080507A4: @ 0x080507A4
	push {r4, lr}
	ldr r4, _080507C8 @ => 0x03002880
	strb r0, [r4]
	ldr r1, _080507CC @ => 0x09FC1EA4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl FUN_08024644
	ldrb r0, [r4]
	cmp r0, #5
	bhi _0805080A
	lsls r0, r0, #2
	ldr r1, _080507D0 @ =_080507D4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080507C8: .4byte gUnk_03002880
_080507CC: .4byte LanguagePointers
_080507D0: .4byte _080507D4
_080507D4: @ jump table
	.4byte _080507EC @ case 0
	.4byte _08050804 @ case 1
	.4byte _080507F8 @ case 2
	.4byte _08050804 @ case 3
	.4byte _08050804 @ case 4
	.4byte _08050804 @ case 5
_080507EC:
	ldr r1, _080507F4 @ => 0x03002881
	movs r0, #0x2c
	b _08050808
	.align 2, 0
_080507F4: .4byte gUnk_03002881
_080507F8:
	ldr r1, _08050800 @ => 0x03002881
	movs r0, #0x20
	b _08050808
	.align 2, 0
_08050800: .4byte gUnk_03002881
_08050804:
	ldr r1, _08050810 @ => 0x03002881
	movs r0, #0x2e
_08050808:
	strb r0, [r1]
_0805080A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050810: .4byte gUnk_03002881

	thumb_func_start FUN_08050814
FUN_08050814: @ 0x08050814
	ldr r0, _0805081C @ => 0x03002880
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0805081C: .4byte gUnk_03002880

	thumb_func_start FUN_08050820
FUN_08050820: @ 0x08050820
	push {r4, lr}
	ldr r4, _08050838 @ => 0x0300287C
	ldr r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #3
	bl FUN_08024554
	cmp r0, #0
	beq _0805083C
	movs r0, #0
	b _0805083E
	.align 2, 0
_08050838: .4byte gUnk_0300287C
_0805083C:
	ldr r0, [r4]
_0805083E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_08050844
FUN_08050844: @ 0x08050844
	push {r4, lr}
	adds r4, r0, #0
	b _0805084C
_0805084A:
	adds r4, #1
_0805084C:
	ldrb r0, [r4]
	cmp r0, #0
	bne _0805084A
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r1, #0
	adds r1, r4, #0
	bl FUN_08024554
	cmp r0, #0
	bne _08050870
	b _08050866
_08050864:
	adds r4, #1
_08050866:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08050864
	adds r0, r4, #0
	b _08050872
_08050870:
	movs r0, #0
_08050872:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_08050878
FUN_08050878: @ 0x08050878
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r1
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	mov r8, sl
	mov sb, r0
	movs r0, #0xa
	adds r1, r6, #0
	bl FUN_0802C818
	movs r7, #0
	movs r4, #1
	subs r1, r6, #1
	movs r0, #0xa
	bl FUN_0802C818
	adds r5, r0, #0
_080508A2:
	mov r0, sb
	adds r1, r5, #0
	bl __divsi3
	cmp r0, #9
	ble _080508B4
	movs r1, #0xa
	bl __modsi3
_080508B4:
	mov r2, r8
	adds r1, r2, r7
	adds r0, #0x30
	strb r0, [r1]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r6, r4
	beq _080508DC
	subs r1, r6, r4
	movs r0, #0xa
	bl FUN_0802C818
	adds r5, r0, #0
	movs r0, #1
	cmp r0, #0
	bne _080508A2
_080508DC:
	mov r2, r8
	adds r4, r2, r7
	mov r0, sb
	adds r1, r5, #0
	bl __modsi3
	adds r0, #0x30
	strb r0, [r4]
	movs r0, #0
	strb r0, [r4, #1]
	mov r0, sl
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_08050900
FUN_08050900: @ 0x08050900
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r2, #0
	subs r4, r1, #1
	cmp r4, #0
	blt _08050934
	movs r7, #0xf
	lsls r1, r4, #2
_08050910:
	adds r3, r5, #0
	asrs r3, r1
	ands r3, r7
	cmp r3, #9
	bgt _08050920
	adds r0, r3, #0
	adds r0, #0x30
	b _08050924
_08050920:
	adds r0, r3, #0
	adds r0, #0x37
_08050924:
	strb r0, [r2]
	adds r2, #1
	lsls r3, r1
	subs r5, r5, r3
	subs r1, #4
	subs r4, #1
	cmp r4, #0
	bge _08050910
_08050934:
	movs r0, #0
	strb r0, [r2]
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_08050940
FUN_08050940: @ 0x08050940
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x2c
	bl FUN_080012D8
	adds r5, r0, #0
	movs r0, #9
	str r0, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0xda
	movs r0, #1
	strb r0, [r1]
	movs r0, #0xa5
	adds r0, r0, r5
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, ip
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0xa9
	ldrb r1, [r2]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0xd6
	ldrh r0, [r0]
	adds r3, r5, #0
	adds r3, #0xa8
	ldr r1, _080509B4 @ => 0x000003FF
	ands r1, r0
	ldrh r2, [r3]
	ldr r0, _080509B8 @ => 0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	mov r0, ip
	ldrb r1, [r0]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_08050A48
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080509B4: .4byte 0x000003FF
_080509B8: .4byte 0xFFFFFC00

	thumb_func_start FUN_080509BC
FUN_080509BC: @ 0x080509BC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	bl FUN_0801FF60
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	bl FUN_0801FFB8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, r5, #0
	cmp r5, #0xf0
	bls _080509DE
	movs r1, #0xf0
_080509DE:
	adds r0, r6, #0
	adds r0, #0xac
	strh r1, [r0]
	adds r1, r2, #0
	cmp r2, #0x10
	bls _080509EC
	movs r1, #0x10
_080509EC:
	adds r0, r6, #0
	adds r0, #0xae
	strh r1, [r0]
	adds r1, r5, #0
	adds r1, #0x1f
	adds r0, r1, #0
	asrs r1, r0, #5
	adds r0, r6, #0
	adds r0, #0xb0
	strh r1, [r0]
	lsls r0, r1, #0x12
	lsrs r5, r0, #0x10
	adds r0, r2, #7
	lsls r0, r0, #0xd
	lsrs r2, r0, #0x10
	adds r0, r5, #0
	muls r0, r2, r0
	lsls r0, r0, #0x16
	lsrs r5, r0, #0x10
	adds r4, r6, #0
	adds r4, #0xd4
	ldrh r0, [r4]
	cmp r5, r0
	beq _08050A40
	cmp r0, #0
	beq _08050A36
	adds r0, r6, #0
	adds r0, #0xd6
	ldrh r0, [r0]
	ldrh r1, [r4]
	adds r2, r6, #0
	adds r2, #0xa5
	ldrb r2, [r2]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1f
	bl FUN_0805284C
_08050A36:
	strh r5, [r4]
	adds r0, r6, #0
	movs r1, #0
	bl FUN_08001590
_08050A40:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08050A48
FUN_08050A48: @ 0x08050A48
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _08050AE8 @ => 0x7FFFFFFF
	str r0, [sp, #0xc]
	ldr r1, [r4]
	adds r0, r5, #0
	bl FUN_080509BC
	movs r0, #0x78
	bl FUN_0802C95C
	mov sb, r0
	adds r6, r5, #0
	adds r6, #0xa5
	ldrb r1, [r6]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	adds r1, #1
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #7
	bl FUN_0802C9DC
	mov r8, r0
	ldrb r2, [r6]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1f
	mov r0, sb
	mov r1, r8
	bl FUN_0801FE88
	str r4, [sp]
	movs r0, #0
	str r0, [sp, #4]
	add r0, sp, #0xc
	str r0, [sp, #8]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xf0
	bl FUN_080201CC
	adds r0, r5, #0
	adds r0, #0xae
	ldrh r0, [r0]
	cmp r0, #8
	bhi _08050AF4
	adds r2, r5, #0
	adds r2, #0xa7
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _08050AEC @ => 0x040000D4
	mov r1, r8
	str r1, [r2]
	adds r0, r5, #0
	adds r0, #0xd6
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r3, _08050AF0 @ => 0x06010000
	adds r0, r0, r3
	str r0, [r2, #4]
	adds r0, r5, #0
	adds r0, #0xb0
	ldrh r0, [r0]
	lsls r0, r0, #6
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _08050B52
	.align 2, 0
_08050AE8: .4byte 0x7FFFFFFF
_08050AEC: .4byte 0x040000D4
_08050AF0: .4byte 0x06010000
_08050AF4:
	adds r2, r5, #0
	adds r2, #0xa7
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	mov r2, r8
	adds r0, r5, #0
	adds r0, #0xd6
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r4, _08050B6C @ => 0x06010000
	adds r1, r0, r4
	movs r0, #0
	adds r4, r5, #0
	adds r4, #0xb0
	ldrh r3, [r4]
	cmp r0, r3
	bge _08050B52
	ldr r3, _08050B70 @ => 0x040000D4
	ldr r6, _08050B74 @ => 0x80000010
	adds r7, r4, #0
_08050B24:
	movs r4, #4
	adds r5, r0, #1
_08050B28:
	str r2, [r3]
	str r1, [r3, #4]
	str r6, [r3, #8]
	ldr r0, [r3, #8]
	adds r2, #0x20
	str r2, [r3]
	adds r0, r1, #0
	adds r0, #0x80
	str r0, [r3, #4]
	str r6, [r3, #8]
	ldr r0, [r3, #8]
	adds r2, #0x20
	adds r1, #0x20
	subs r4, #1
	cmp r4, #0
	bgt _08050B28
	adds r1, #0x80
	adds r0, r5, #0
	ldrh r4, [r7]
	cmp r0, r4
	blt _08050B24
_08050B52:
	mov r0, r8
	bl FUN_0802CA80
	mov r0, sb
	bl FUN_0802CA80
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08050B6C: .4byte 0x06010000
_08050B70: .4byte 0x040000D4
_08050B74: .4byte 0x80000010

	thumb_func_start FUN_08050B78
FUN_08050B78: @ 0x08050B78
	push {r4, lr}
	adds r4, r1, #0
	bl FUN_08050940
	ldr r2, _08050B90 @ => 0x03006530
	lsls r1, r4, #2
	adds r1, r1, r2
	str r0, [r1]
	strh r4, [r0, #8]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08050B90: .4byte gUnk_03006530

	thumb_func_start FUN_08050B94
FUN_08050B94: @ 0x08050B94
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r6, #0
	ldr r1, _08050BC4 @ => 0x03006530
	lsls r0, r4, #2
	adds r7, r0, r1
_08050BA2:
	adds r0, r5, #0
	bl FUN_08050940
	stm r7!, {r0}
	strh r4, [r0, #8]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r4, #1
	ldr r0, [r5]
	ldrb r0, [r0]
	cmp r0, #0
	bne _08050BA2
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08050BC4: .4byte gUnk_03006530

	thumb_func_start FUN_08050BC8
FUN_08050BC8: @ 0x08050BC8
	push {lr}
	sub sp, #4
	str r1, [sp]
	mov r1, sp
	bl FUN_08050A48
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08050BDC
FUN_08050BDC: @ 0x08050BDC
	push {lr}
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r3, r0, #0
	adds r3, #0xac
	ldrh r3, [r3]
	lsrs r3, r3, #1
	subs r1, r1, r3
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	bl FUN_08001728
	pop {r0}
	bx r0

	thumb_func_start FUN_08050BF8
FUN_08050BF8: @ 0x08050BF8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r1, #0
	ldr r4, [sp, #0x18]
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	lsls r3, r3, #0x10
	asrs r5, r3, #0x10
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08050C28
	adds r0, r7, #0
	bl FUN_0801FF60
	adds r0, #1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	subs r0, r6, r0
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
_08050C28:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08050C3C
	adds r0, r7, #0
	bl FUN_0801FF60
	subs r0, r6, r0
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
_08050C3C:
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _08050C58
	adds r0, r7, #0
	bl FUN_0801FFB8
	adds r0, #1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	subs r0, r5, r0
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
_08050C58:
	movs r0, #8
	ands r4, r0
	cmp r4, #0
	beq _08050C6C
	adds r0, r7, #0
	bl FUN_0801FFB8
	subs r0, r5, r0
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
_08050C6C:
	lsls r1, r6, #0x10
	lsls r2, r5, #0x10
	mov r0, r8
	bl FUN_08001728
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_08050C80
FUN_08050C80: @ 0x08050C80
	push {lr}
	movs r1, #0
	ldr r3, _08050C9C @ => 0x03006530
	movs r2, #0
_08050C88:
	lsls r0, r1, #2
	adds r0, r0, r3
	str r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #5
	bls _08050C88
	pop {r0}
	bx r0
	.align 2, 0
_08050C9C: .4byte gUnk_03006530

	thumb_func_start FUN_08050CA0
FUN_08050CA0: @ 0x08050CA0
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08009B04
	adds r4, r0, #0
	bl FUN_080012FC
	adds r5, r0, #0
	movs r0, #4
	ldrsh r1, [r4, r0]
	movs r0, #6
	ldrsh r2, [r4, r0]
	adds r0, r5, #0
	bl FUN_08001734
	ldr r0, [r4]
	movs r1, #0
	strh r0, [r5, #8]
	ldr r0, _08050D7C @ => 0x8000000C
	str r0, [r5, #0xc]
	movs r2, #0xb2
	lsls r2, r2, #1
	adds r0, r5, r2
	strh r1, [r0]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r5, r0
	ldrb r0, [r4, #0xb]
	str r0, [r1]
	subs r2, #0x30
	adds r1, r5, r2
	ldrb r0, [r4, #0xd]
	str r0, [r1]
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r1, r5, r0
	ldrb r0, [r4, #0xf]
	str r0, [r1]
	adds r2, #8
	adds r1, r5, r2
	ldrb r0, [r4, #0x11]
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #1
	adds r1, r5, r0
	ldrb r0, [r4, #0x13]
	str r0, [r1]
	ldrb r1, [r4, #0xc]
	adds r2, #8
	adds r0, r5, r2
	strb r1, [r0]
	ldrb r0, [r4, #0xe]
	adds r2, #1
	adds r1, r5, r2
	strb r0, [r1]
	ldrb r0, [r4, #0x10]
	adds r2, #1
	adds r1, r5, r2
	strb r0, [r1]
	ldrb r0, [r4, #0x12]
	adds r2, #1
	adds r1, r5, r2
	strb r0, [r1]
	ldrb r1, [r4, #0x14]
	adds r2, #1
	adds r0, r5, r2
	strb r1, [r0]
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r5, r0
	ldrb r0, [r4, #0xa]
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08001FB0
	adds r1, r5, #0
	adds r1, #0x94
	ldr r0, _08050D80 @ => FUN_08050EF4
	str r0, [r1]
	ldrb r0, [r4, #8]
	rsbs r0, r0, #0
	subs r1, #0x18
	strb r0, [r1]
	ldrb r0, [r4, #9]
	rsbs r0, r0, #0
	adds r1, #2
	strb r0, [r1]
	ldrb r0, [r4, #8]
	subs r1, #1
	strb r0, [r1]
	ldrb r0, [r4, #9]
	adds r1, #2
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x80
	movs r1, #1
	strb r1, [r0]
	subs r0, #5
	strb r1, [r0]
	ldr r0, _08050D84 @ => FUN_08050EB8
	str r0, [r5, #0x50]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08050D7C: .4byte 0x8000000C
_08050D80: .4byte FUN_08050EF4
_08050D84: .4byte FUN_08050EB8

	thumb_func_start FUN_08050D88
FUN_08050D88: @ 0x08050D88
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08050D9C @ => 0x0000011D
	adds r0, r4, r1
	ldrb r3, [r0]
	cmp r3, #0
	beq _08050DA0
	cmp r3, #0xb
	beq _08050E80
	b _08050EA8
	.align 2, 0
_08050D9C: .4byte 0x0000011D
_08050DA0:
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r0, [r0]
	cmp r0, #0x3b
	beq _08050DC4
	ldr r2, _08050E68 @ => 0x03005C60
	ldr r1, _08050E6C @ => 0x0809002C
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	strh r0, [r2]
	ldr r1, _08050E70 @ => 0x03005C70
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrb r0, [r0]
	str r0, [r1]
_08050DC4:
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0x3b
	beq _08050DE6
	ldr r2, _08050E68 @ => 0x03005C60
	ldr r1, _08050E6C @ => 0x0809002C
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	strh r0, [r2, #2]
	ldr r1, _08050E70 @ => 0x03005C70
	ldr r2, _08050E74 @ => 0x00000145
	adds r0, r4, r2
	ldrb r0, [r0]
	str r0, [r1, #4]
_08050DE6:
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0x3b
	beq _08050E0A
	ldr r2, _08050E68 @ => 0x03005C60
	ldr r1, _08050E6C @ => 0x0809002C
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	strh r0, [r2, #4]
	ldr r1, _08050E70 @ => 0x03005C70
	movs r2, #0xa3
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrb r0, [r0]
	str r0, [r1, #8]
_08050E0A:
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0x3b
	beq _08050E2C
	ldr r2, _08050E68 @ => 0x03005C60
	ldr r1, _08050E6C @ => 0x0809002C
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	strh r0, [r2, #6]
	ldr r1, _08050E70 @ => 0x03005C70
	ldr r2, _08050E78 @ => 0x00000147
	adds r0, r4, r2
	ldrb r0, [r0]
	str r0, [r1, #0xc]
_08050E2C:
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0x3b
	beq _08050E50
	ldr r2, _08050E68 @ => 0x03005C60
	ldr r1, _08050E6C @ => 0x0809002C
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	strh r0, [r2, #8]
	ldr r1, _08050E70 @ => 0x03005C70
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrb r0, [r0]
	str r0, [r1, #0x10]
_08050E50:
	ldr r0, _08050E7C @ => 0x03005C90
	strb r3, [r0, #4]
	strb r3, [r0, #1]
	strb r3, [r0, #2]
	movs r0, #2
	bl FUN_0802CEC4
	adds r0, r4, #0
	movs r1, #0xb
	bl FUN_08001F84
	b _08050EA8
	.align 2, 0
_08050E68: .4byte gChoiceIDs
_08050E6C: .4byte ROMREF_0809002C
_08050E70: .4byte gUnk_03005C70
_08050E74: .4byte 0x00000145
_08050E78: .4byte 0x00000147
_08050E7C: .4byte gUnk_03005C90
_08050E80:
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001FB0
	ldr r0, [r4, #0xc]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, _08050EB0 @ => 0x03004750
	ldr r1, [r0, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08050EA8
	ldr r0, _08050EB4 @ => 0x03005C70
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1]
	bl FUN_080099D8
_08050EA8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050EB0: .4byte gUnk_03004750
_08050EB4: .4byte gUnk_03005C70

	thumb_func_start FUN_08050EB8
FUN_08050EB8: @ 0x08050EB8
	push {lr}
	adds r1, r0, #0
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	beq _08050EE8
	cmp r0, #1
	ble _08050EEE
	cmp r0, #3
	beq _08050ED6
	cmp r0, #9
	beq _08050EE0
	b _08050EEE
_08050ED6:
	adds r0, r1, #0
	movs r1, #9
	bl FUN_08001FB0
	b _08050EEE
_08050EE0:
	adds r0, r1, #0
	bl FUN_08050D88
	b _08050EEE
_08050EE8:
	adds r0, r1, #0
	bl FUN_080040DC
_08050EEE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08050EF4
FUN_08050EF4: @ 0x08050EF4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	bl FUN_08021780
	cmp r0, #0
	beq _08050F78
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08050F78
	ldrh r0, [r4, #8]
	cmp r0, #0
	bne _08050F78
	ldr r0, _08050F80 @ => 0x03004374
	ldr r0, [r0]
	adds r1, #0xe4
	ands r0, r1
	cmp r0, #0
	bne _08050F78
	ldr r4, _08050F84 @ => 0x03003DF0
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r4, r2
	movs r5, #1
	str r5, [r0]
	ldr r7, _08050F88 @ => 0x03005BCC
	ldr r0, [r7]
	movs r3, #0x1a
	ldrsh r1, [r6, r3]
	movs r3, #0x1e
	ldrsh r2, [r6, r3]
	subs r2, #0x14
	movs r3, #3
	str r3, [sp]
	movs r3, #1
	bl FUN_0803E4F4
	ldr r0, _08050F8C @ => 0x030042B0
	ldrh r0, [r0, #0xc]
	ands r5, r0
	ldr r0, _08050F90 @ => 0x00000404
	adds r4, r4, r0
	ldrb r0, [r4]
	cmp r0, #2
	beq _08050F58
	movs r5, #0
_08050F58:
	cmp r5, #1
	bne _08050F78
	adds r0, r6, #0
	movs r1, #3
	bl FUN_08001FB0
	ldr r0, [r6, #0xc]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0xc]
	bl FUN_08024900
	ldr r0, [r7]
	bl FUN_0803E54C
_08050F78:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08050F80: .4byte gUnk_03004374
_08050F84: .4byte gUnk_03003DF0
_08050F88: .4byte gUnk_03005BCC
_08050F8C: .4byte gUnk_030042B0
_08050F90: .4byte 0x00000404

	thumb_func_start FUN_08050F94
FUN_08050F94: @ 0x08050F94
	push {r4, lr}
	ldr r1, _08050FB0 @ => 0x03002888
	lsls r2, r0, #4
	adds r0, r1, #4
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r0, #1
	beq _08050FB4
	cmp r0, #1
	blo _08050FD4
	cmp r0, #2
	beq _08050FD8
	b _08050FEC
	.align 2, 0
_08050FB0: .4byte gUnk_03002888
_08050FB4:
	adds r0, r1, #0
	adds r0, #0xc
	adds r4, r2, r0
	ldr r3, [r4]
	cmp r3, #0
	beq _08050FD4
	adds r0, r2, r1
	ldrb r0, [r0, #8]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08050FEC
	subs r0, r3, #1
	str r0, [r4]
	movs r1, #0
	cmp r0, #0
	bne _08050FEE
_08050FD4:
	movs r1, #1
	b _08050FEE
_08050FD8:
	adds r0, r2, r1
	ldrb r0, [r0, #8]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08050FEC
	adds r1, #0xc
	adds r1, r2, r1
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08050FEC:
	movs r1, #0
_08050FEE:
	adds r0, r1, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08050FF8
FUN_08050FF8: @ 0x08050FF8
	push {r4, lr}
	movs r4, #0
_08050FFC:
	adds r0, r4, #0
	bl FUN_08051010
	adds r4, #1
	cmp r4, #3
	bls _08050FFC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08051010
FUN_08051010: @ 0x08051010
	push {r4, r5, lr}
	ldr r2, _08051038 @ => 0x03002888
	lsls r3, r0, #4
	adds r4, r3, r2
	str r0, [r4]
	adds r0, r2, #4
	adds r0, r3, r0
	movs r5, #0
	str r5, [r0]
	ldrb r1, [r4, #8]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #8]
	adds r2, #0xc
	adds r3, r3, r2
	str r5, [r3]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08051038: .4byte gUnk_03002888

	thumb_func_start FUN_0805103C
FUN_0805103C: @ 0x0805103C
	push {r4, r5, lr}
	ldr r3, _08051064 @ => 0x03002888
	lsls r4, r0, #4
	adds r5, r4, r3
	str r0, [r5]
	adds r0, r3, #4
	adds r0, r4, r0
	movs r2, #1
	str r2, [r0]
	ldrb r2, [r5, #8]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r5, #8]
	adds r3, #0xc
	adds r4, r4, r3
	str r1, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08051064: .4byte gUnk_03002888

	thumb_func_start FUN_08051068
FUN_08051068: @ 0x08051068
	push {r4, lr}
	ldr r2, _08051094 @ => 0x03002888
	lsls r4, r0, #4
	adds r3, r4, r2
	str r0, [r3]
	adds r0, r2, #4
	adds r0, r4, r0
	movs r1, #2
	str r1, [r0]
	ldrb r1, [r3, #8]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #8]
	adds r2, #0xc
	adds r4, r4, r2
	movs r0, #0
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08051094: .4byte gUnk_03002888

	thumb_func_start FUN_08051098
FUN_08051098: @ 0x08051098
	ldr r1, _080510A8 @ => 0x03002888
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r1, [r0, #8]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0, #8]
	bx lr
	.align 2, 0
_080510A8: .4byte gUnk_03002888

	thumb_func_start FUN_080510AC
FUN_080510AC: @ 0x080510AC
	ldr r1, _080510C0 @ => 0x03002888
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r2, [r0, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0, #8]
	bx lr
	.align 2, 0
_080510C0: .4byte gUnk_03002888

	thumb_func_start FUN_080510C4
FUN_080510C4: @ 0x080510C4
	ldr r1, _080510D0 @ => 0x03002888
	lsls r0, r0, #4
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_080510D0: .4byte gUnk_03002888
