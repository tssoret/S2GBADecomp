.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_0804271C
FUN_0804271C: @ 0x0804271C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0xbc
	ldrb r2, [r5]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1c
	adds r1, #1
	movs r0, #0xf
	ands r1, r0
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	lsls r1, r0, #0x1c
	lsrs r1, r1, #0x1c
	lsrs r0, r0, #4
	cmp r1, r0
	bne _08042792
	adds r0, r6, #0
	adds r0, #0xd8
	ldrb r0, [r0]
	bl FUN_080427CC
	adds r4, r0, #0
	movs r0, #1
	movs r1, #0x64
	bl FUN_080424F8
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r2, #0
	ldrb r1, [r4, #6]
	cmp r3, r1
	bls _0804277E
_08042764:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bhi _0804277E
	lsls r0, r2, #2
	adds r0, r4, r0
	ldrb r0, [r0, #6]
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r3, r1
	bhi _08042764
_0804277E:
	lsls r0, r2, #2
	adds r0, r4, r0
	ldrb r1, [r0, #4]
	adds r0, r6, #0
	bl FUN_08001F20
	movs r0, #0
	strb r0, [r5]
	movs r0, #1
	b _08042794
_08042792:
	movs r0, #0
_08042794:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0804279C
FUN_0804279C: @ 0x0804279C
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r2, #0
	adds r4, #0xbc
	ldrb r1, [r4]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	bne _080427C6
	adds r0, r2, #0
	adds r0, #0xd8
	ldrb r0, [r0]
	bl FUN_080427CC
	ldrb r2, [r0, #1]
	ldrb r1, [r0, #2]
	adds r0, r2, #0
	bl FUN_080424F8
	lsls r0, r0, #4
	strb r0, [r4]
_080427C6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_080427CC
FUN_080427CC: @ 0x080427CC
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r2, #0
	ldr r0, _08042804 @ => 0x09FBD898
	ldr r1, [r0]
	adds r3, r0, #0
	cmp r1, #0
	beq _080427FC
	adds r1, r3, #0
_080427E0:
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r5, [r0]
	cmp r4, r5
	beq _080427FE
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r0, [r0]
	cmp r0, #0
	bne _080427E0
_080427FC:
	movs r0, #0
_080427FE:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08042804: .4byte ROMREF_09FBD898

	thumb_func_start FUN_08042808
FUN_08042808: @ 0x08042808
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r2, #0
	subs r0, #0xa
	cmp r0, #0x2f
	bls _08042816
	b _08042914
_08042816:
	lsls r0, r0, #2
	ldr r1, _08042820 @ =_08042824
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08042820: .4byte _08042824
_08042824: @ jump table
	.4byte _08042918 @ case 0
	.4byte _08042914 @ case 1
	.4byte _08042914 @ case 2
	.4byte _08042914 @ case 3
	.4byte _08042914 @ case 4
	.4byte _08042914 @ case 5
	.4byte _08042914 @ case 6
	.4byte _08042914 @ case 7
	.4byte _08042914 @ case 8
	.4byte _08042914 @ case 9
	.4byte _08042914 @ case 10
	.4byte _08042914 @ case 11
	.4byte _08042914 @ case 12
	.4byte _08042914 @ case 13
	.4byte _080428E4 @ case 14
	.4byte _08042914 @ case 15
	.4byte _080428E4 @ case 16
	.4byte _08042914 @ case 17
	.4byte _08042914 @ case 18
	.4byte _08042914 @ case 19
	.4byte _08042914 @ case 20
	.4byte _08042914 @ case 21
	.4byte _08042926 @ case 22
	.4byte _08042914 @ case 23
	.4byte _08042914 @ case 24
	.4byte _08042914 @ case 25
	.4byte _08042914 @ case 26
	.4byte _08042914 @ case 27
	.4byte _08042914 @ case 28
	.4byte _08042914 @ case 29
	.4byte _08042914 @ case 30
	.4byte _08042914 @ case 31
	.4byte _08042914 @ case 32
	.4byte _08042914 @ case 33
	.4byte _08042914 @ case 34
	.4byte _08042914 @ case 35
	.4byte _08042914 @ case 36
	.4byte _08042914 @ case 37
	.4byte _08042914 @ case 38
	.4byte _08042914 @ case 39
	.4byte _08042914 @ case 40
	.4byte _08042914 @ case 41
	.4byte _08042914 @ case 42
	.4byte _08042914 @ case 43
	.4byte _08042914 @ case 44
	.4byte _08042914 @ case 45
	.4byte _08042914 @ case 46
	.4byte _08042902 @ case 47
_080428E4:
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _08042932
	ldrb r0, [r4, #0xa]
	movs r1, #0x2a
	bl FUN_0803A10C
	cmp r0, #0
	beq _08042914
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _08042932
	ldrb r0, [r4, #0xa]
	movs r1, #0x67
	b _0804290C
_08042902:
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _08042932
	ldrb r0, [r4, #0xa]
	movs r1, #0x28
_0804290C:
	bl FUN_0803A10C
	cmp r0, #0
	bne _08042932
_08042914:
	movs r0, #0
	b _08042934
_08042918:
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _08042932
	ldrh r0, [r4, #0xa]
	cmp r0, #2
	beq _08042932
	b _08042914
_08042926:
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _08042932
	ldrh r0, [r4, #0xa]
	cmp r0, #1
	bne _08042914
_08042932:
	movs r0, #1
_08042934:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0804293C
FUN_0804293C: @ 0x0804293C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r5, r1, #0
	movs r6, #1
	ldrh r0, [r5, #6]
	cmp r0, #0x2a
	bls _0804294E
	b _08042B28
_0804294E:
	lsls r0, r0, #2
	ldr r1, _08042958 @ =_0804295C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08042958: .4byte _0804295C
_0804295C: @ jump table
	.4byte _08042A08 @ case 0
	.4byte _08042B1A @ case 1
	.4byte _08042B00 @ case 2
	.4byte _08042B28 @ case 3
	.4byte _08042B28 @ case 4
	.4byte _08042B28 @ case 5
	.4byte _08042B28 @ case 6
	.4byte _08042B28 @ case 7
	.4byte _08042B28 @ case 8
	.4byte _08042B28 @ case 9
	.4byte _08042B28 @ case 10
	.4byte _08042A4E @ case 11
	.4byte _08042ADC @ case 12
	.4byte _08042B28 @ case 13
	.4byte _08042B28 @ case 14
	.4byte _08042B28 @ case 15
	.4byte _08042B28 @ case 16
	.4byte _08042B28 @ case 17
	.4byte _08042B28 @ case 18
	.4byte _08042B28 @ case 19
	.4byte _08042B28 @ case 20
	.4byte _08042B28 @ case 21
	.4byte _08042B28 @ case 22
	.4byte _08042B28 @ case 23
	.4byte _08042B28 @ case 24
	.4byte _08042B28 @ case 25
	.4byte _08042B28 @ case 26
	.4byte _08042B28 @ case 27
	.4byte _08042B28 @ case 28
	.4byte _08042B28 @ case 29
	.4byte _08042B28 @ case 30
	.4byte _08042B28 @ case 31
	.4byte _08042B28 @ case 32
	.4byte _08042B28 @ case 33
	.4byte _08042B28 @ case 34
	.4byte _08042B28 @ case 35
	.4byte _08042B28 @ case 36
	.4byte _08042B28 @ case 37
	.4byte _08042B28 @ case 38
	.4byte _08042B28 @ case 39
	.4byte _08042A74 @ case 40
	.4byte _08042B28 @ case 41
	.4byte _08042AAC @ case 42
_08042A08:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x32
	bl FUN_0803DAB8
	cmp r0, #0
	bne _08042A24
	adds r0, r5, #0
	movs r1, #1
	bl FUN_0803D958
	movs r0, #0xb
	strh r0, [r5, #6]
	b _08042B28
_08042A24:
	movs r0, #1
	str r0, [sp]
	movs r0, #0x67
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0xa
	movs r3, #0x59
	bl FUN_0803DB6C
	ldr r0, [r4, #0x34]
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x28
	strh r0, [r5, #6]
	b _08042B28
_08042A4E:
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08042B28
	ldr r0, _08042A6C @ => 0x03005C60
	ldr r1, _08042A70 @ => 0x00000871
	strh r1, [r0]
	bl FUN_08041BF0
	movs r0, #1
	strh r0, [r5, #6]
	b _08042B28
	.align 2, 0
_08042A6C: .4byte gChoiceIDs
_08042A70: .4byte 0x00000871
_08042A74:
	ldr r2, [r4, #0x34]
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08042B28
	adds r0, r2, #0
	movs r1, #3
	bl FUN_0803BC7C
	ldr r0, [r5]
	movs r1, #0x2a
	bl FUN_08001F20
	movs r0, #0x31
	bl FUN_0804DE0C
	adds r1, r4, #0
	adds r1, #0xe0
	str r0, [r1]
	movs r0, #0x58
	bl FUN_0804DE0C
	str r0, [r4, #0x54]
	movs r0, #0x2a
	strh r0, [r5, #6]
	b _08042B28
_08042AAC:
	ldr r4, _08042AD8 @ => 0x03003E28
	adds r0, r4, #0
	movs r1, #1
	movs r2, #2
	bl FUN_08038A30
	ldrh r0, [r5, #8]
	cmp r0, #0
	beq _08042B28
	subs r0, #1
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08042B28
	adds r0, r4, #0
	movs r1, #2
	bl FUN_08038B24
	movs r0, #0xc
	strh r0, [r5, #6]
	b _08042B28
	.align 2, 0
_08042AD8: .4byte gUnk_03003E28
_08042ADC:
	ldr r0, [r4, #0x34]
	movs r1, #2
	bl FUN_0803BC7C
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	bl FUN_0804E03C
	ldr r0, [r4, #0x54]
	bl FUN_0804E03C
	movs r0, #0x57
	bl FUN_0804DE0C
	movs r0, #2
	strh r0, [r5, #6]
	b _08042B28
_08042B00:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #6
	movs r3, #4
	bl FUN_0803DC54
	adds r0, r4, #0
	bl FUN_0803CB84
	adds r0, r4, #0
	bl FUN_0803C68C
	b _08042B26
_08042B1A:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #6
	movs r3, #4
	bl FUN_0803DC54
_08042B26:
	movs r6, #2
_08042B28:
	adds r0, r6, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08042B34
FUN_08042B34: @ 0x08042B34
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	movs r6, #1
	ldrh r0, [r4, #6]
	cmp r0, #0x2b
	bls _08042B46
	b _08042D54
_08042B46:
	lsls r0, r0, #2
	ldr r1, _08042B50 @ =_08042B54
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08042B50: .4byte _08042B54
_08042B54: @ jump table
	.4byte _08042C04 @ case 0
	.4byte _08042D46 @ case 1
	.4byte _08042D2C @ case 2
	.4byte _08042D54 @ case 3
	.4byte _08042D54 @ case 4
	.4byte _08042D54 @ case 5
	.4byte _08042D54 @ case 6
	.4byte _08042D54 @ case 7
	.4byte _08042D54 @ case 8
	.4byte _08042D54 @ case 9
	.4byte _08042D54 @ case 10
	.4byte _08042C60 @ case 11
	.4byte _08042D04 @ case 12
	.4byte _08042D54 @ case 13
	.4byte _08042D54 @ case 14
	.4byte _08042D54 @ case 15
	.4byte _08042D54 @ case 16
	.4byte _08042D54 @ case 17
	.4byte _08042D54 @ case 18
	.4byte _08042D54 @ case 19
	.4byte _08042D54 @ case 20
	.4byte _08042D54 @ case 21
	.4byte _08042D54 @ case 22
	.4byte _08042D54 @ case 23
	.4byte _08042D54 @ case 24
	.4byte _08042D54 @ case 25
	.4byte _08042D54 @ case 26
	.4byte _08042D54 @ case 27
	.4byte _08042D54 @ case 28
	.4byte _08042D54 @ case 29
	.4byte _08042D54 @ case 30
	.4byte _08042D54 @ case 31
	.4byte _08042D54 @ case 32
	.4byte _08042D54 @ case 33
	.4byte _08042D54 @ case 34
	.4byte _08042D54 @ case 35
	.4byte _08042D54 @ case 36
	.4byte _08042D54 @ case 37
	.4byte _08042D54 @ case 38
	.4byte _08042D54 @ case 39
	.4byte _08042C88 @ case 40
	.4byte _08042D54 @ case 41
	.4byte _08042D54 @ case 42
	.4byte _08042CB4 @ case 43
_08042C04:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x1e
	bl FUN_0803DAB8
	cmp r0, #0
	bne _08042C1E
	adds r0, r4, #0
	movs r1, #1
	bl FUN_0803D958
	movs r0, #0xb
	b _08042C50
_08042C1E:
	movs r0, #1
	str r0, [sp]
	movs r0, #0x67
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xa
	movs r3, #0x59
	bl FUN_0803DB6C
	ldr r0, [r5, #0x34]
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4]
	movs r2, #0x93
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r0, #0x96
	strh r0, [r1]
	movs r0, #0x28
_08042C50:
	strh r0, [r4, #6]
	ldr r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
	b _08042D54
_08042C60:
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08042D54
	ldr r0, _08042C80 @ => 0x03005C60
	ldr r1, _08042C84 @ => 0x00000871
	strh r1, [r0]
	bl FUN_08041BF0
	movs r0, #1
	strh r0, [r4, #6]
	b _08042D54
	.align 2, 0
_08042C80: .4byte gChoiceIDs
_08042C84: .4byte 0x00000871
_08042C88:
	ldr r2, [r5, #0x34]
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08042D54
	adds r0, r2, #0
	movs r1, #3
	bl FUN_0803BC7C
	ldr r0, [r4]
	movs r1, #0x28
	bl FUN_08001F20
	movs r0, #0x58
	bl FUN_0804DE0C
	str r0, [r5, #0x54]
	movs r0, #0x2b
	strh r0, [r4, #6]
	b _08042D54
_08042CB4:
	ldr r0, [r4]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08042CFC @ => 0xFFFF0000
	cmp r1, r0
	bne _08042CDC
	movs r0, #0x30
	bl FUN_0804DE0C
	ldr r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0xf
	strh r1, [r0]
_08042CDC:
	ldr r0, _08042D00 @ => 0x03003E28
	movs r1, #1
	movs r2, #3
	bl FUN_08038A30
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08042D54
	movs r0, #0xc
	strh r0, [r4, #6]
	b _08042D54
	.align 2, 0
_08042CFC: .4byte 0xFFFF0000
_08042D00: .4byte gUnk_03003E28
_08042D04:
	ldr r0, _08042D28 @ => 0x03003E28
	movs r1, #3
	bl FUN_08038B24
	ldr r0, [r5, #0x34]
	movs r1, #2
	bl FUN_0803BC7C
	ldr r0, [r5, #0x54]
	bl FUN_0804E03C
	movs r0, #0x57
	bl FUN_0804DE0C
	movs r0, #2
	strh r0, [r4, #6]
	b _08042D54
	.align 2, 0
_08042D28: .4byte gUnk_03003E28
_08042D2C:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #6
	movs r3, #4
	bl FUN_0803DC54
	adds r0, r5, #0
	bl FUN_0803CB84
	adds r0, r5, #0
	bl FUN_0803C68C
	b _08042D52
_08042D46:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #6
	movs r3, #4
	bl FUN_0803DC54
_08042D52:
	movs r6, #2
_08042D54:
	adds r0, r6, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08042D60
FUN_08042D60: @ 0x08042D60
	movs r0, #1
	bx lr

	thumb_func_start FUN_08042D64
FUN_08042D64: @ 0x08042D64
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl FUN_08001D8C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08042D7E
	ldr r0, [r4, #0x40]
	cmp r0, #1
	bne _08042D7E
	movs r0, #0
	b _08042D80
_08042D7E:
	movs r0, #1
_08042D80:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08042D88
FUN_08042D88: @ 0x08042D88
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r4, #0
	bl FUN_0803CE64
	cmp r0, #0
	bne _08042DC6
	ldr r0, _08042DAC @ => 0x03003DF0
	bl FUN_080143D0
	cmp r0, #2
	bls _08042DB0
	cmp r0, #3
	beq _08042DB4
	movs r1, #0
	b _08042DB6
	.align 2, 0
_08042DAC: .4byte gUnk_03003DF0
_08042DB0:
	movs r1, #0x1a
	b _08042DB6
_08042DB4:
	movs r1, #0x18
_08042DB6:
	adds r0, r5, r4
	strb r1, [r0]
	adds r4, #1
	adds r1, r5, r4
	movs r0, #0x39
	strb r0, [r1]
	adds r4, #1
	b _08042DCC
_08042DC6:
	movs r0, #0x20
	strb r0, [r5]
	movs r4, #1
_08042DCC:
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r6, #0
	bl FUN_0803CA10
	cmp r0, #0
	beq _08042DE0
	adds r1, r5, r4
	movs r0, #0xa
	strb r0, [r1]
_08042DE0:
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_08042DE8
FUN_08042DE8: @ 0x08042DE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	bl FUN_0803D1F0
	adds r4, r0, #0
	cmp r4, #0
	beq _08042E22
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
_08042E22:
	adds r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_08042E2C
FUN_08042E2C: @ 0x08042E2C
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0803D8C8
	adds r2, r0, #0
	ldrh r0, [r2, #4]
	subs r0, #0xa
	cmp r0, #0x2f
	bhi _08042F34
	lsls r0, r0, #2
	ldr r1, _08042E48 @ =_08042E4C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08042E48: .4byte _08042E4C
_08042E4C: @ jump table
	.4byte _08042F20 @ case 0
	.4byte _08042F34 @ case 1
	.4byte _08042F34 @ case 2
	.4byte _08042F34 @ case 3
	.4byte _08042F34 @ case 4
	.4byte _08042F34 @ case 5
	.4byte _08042F34 @ case 6
	.4byte _08042F34 @ case 7
	.4byte _08042F34 @ case 8
	.4byte _08042F34 @ case 9
	.4byte _08042F34 @ case 10
	.4byte _08042F34 @ case 11
	.4byte _08042F34 @ case 12
	.4byte _08042F34 @ case 13
	.4byte _08042F0C @ case 14
	.4byte _08042F34 @ case 15
	.4byte _08042F0C @ case 16
	.4byte _08042F34 @ case 17
	.4byte _08042F34 @ case 18
	.4byte _08042F34 @ case 19
	.4byte _08042F34 @ case 20
	.4byte _08042F34 @ case 21
	.4byte _08042F2A @ case 22
	.4byte _08042F34 @ case 23
	.4byte _08042F34 @ case 24
	.4byte _08042F34 @ case 25
	.4byte _08042F34 @ case 26
	.4byte _08042F34 @ case 27
	.4byte _08042F34 @ case 28
	.4byte _08042F34 @ case 29
	.4byte _08042F34 @ case 30
	.4byte _08042F34 @ case 31
	.4byte _08042F34 @ case 32
	.4byte _08042F34 @ case 33
	.4byte _08042F34 @ case 34
	.4byte _08042F34 @ case 35
	.4byte _08042F34 @ case 36
	.4byte _08042F34 @ case 37
	.4byte _08042F34 @ case 38
	.4byte _08042F34 @ case 39
	.4byte _08042F34 @ case 40
	.4byte _08042F34 @ case 41
	.4byte _08042F34 @ case 42
	.4byte _08042F34 @ case 43
	.4byte _08042F34 @ case 44
	.4byte _08042F34 @ case 45
	.4byte _08042F34 @ case 46
	.4byte _08042F16 @ case 47
_08042F0C:
	adds r0, r4, #0
	adds r1, r2, #0
	bl FUN_0804293C
	b _08042F36
_08042F16:
	adds r0, r4, #0
	adds r1, r2, #0
	bl FUN_08042B34
	b _08042F36
_08042F20:
	adds r0, r4, #0
	adds r1, r2, #0
	bl FUN_0803C6F0
	b _08042F36
_08042F2A:
	adds r0, r4, #0
	adds r1, r2, #0
	bl FUN_0803CC7C
	b _08042F36
_08042F34:
	movs r0, #0
_08042F36:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_08042F3C
FUN_08042F3C: @ 0x08042F3C
	bx lr
	.align 2, 0
