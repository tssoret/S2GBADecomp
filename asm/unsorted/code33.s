.include "asm/constants.s"
.include "asm/macros.s"
.include "data/lists/sounds.inc"

.syntax unified

	thumb_func_start FUN_080387D4
FUN_080387D4: @ 0x080387D4
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _080387F8 @ => 0x08069C08
	ldr r0, [r0]
	bl FUN_0801FE58
	cmp r4, #0
	beq _080387FC
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #3
	movs r1, #1
	bl FUN_0801FEA0
	b _08038808
	.align 2, 0
_080387F8: .4byte MinigameLevelSelectLCDTiles + 8
_080387FC:
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #3
	movs r1, #0
	bl FUN_0801FEA0
_08038808:
	bl FUN_080203E0
	subs r0, #4
	bl FUN_0801FEE8
	ldr r4, _08038848 @ => 0x03002468
	lsls r5, r5, #4
	adds r0, r4, #4
	adds r0, r5, r0
	ldr r0, [r0]
	bl FUN_08050820
	adds r1, r4, #0
	adds r1, #8
	adds r1, r5, r1
	ldr r1, [r1]
	adds r4, #0xc
	adds r5, r5, r4
	ldr r2, [r5]
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r1, #0
	movs r1, #0x80
	movs r3, #0xb0
	bl FUN_08020098
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08038848: .4byte gUnk_03002468

	thumb_func_start FUN_0803884C
FUN_0803884C: @ 0x0803884C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	bl FUN_08021780
	cmp r0, #0
	bne _0803885C
	b _08038966
_0803885C:
	bl FUN_08023680
	cmp r0, #0
	bne _08038866
	b _08038966
_08038866:
	ldr r0, _08038970 @ => 0x03003DF0
	movs r1, #0xdb
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08038966
	ldrb r0, [r6, #0x17]
	cmp r0, #7
	beq _0803888E
	ldr r0, [r6]
	ldr r3, _08038974 @ => 0xFFD55556
	adds r0, r0, r3
	ldr r2, [r6, #4]
	movs r1, #0
	bl FUN_0802C644
	str r0, [r6]
_0803888E:
	movs r2, #0
	adds r3, r6, #0
	adds r3, #9
_08038894:
	adds r1, r3, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq _080388A0
	subs r0, #1
	strb r0, [r1]
_080388A0:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #6
	bls _08038894
	movs r5, #0
	ldr r0, [r6, #0x18]
	cmp r0, #0
	bne _08038940
	ldrb r0, [r6, #0x17]
	cmp r0, #7
	bne _08038940
	ldr r0, _08038970 @ => 0x03003DF0
	movs r1, #0xdb
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08038940
	bl FUN_08021780
	cmp r0, #1
	bne _08038940
	movs r4, #0
	adds r7, r6, #0
	adds r7, #0x10
	adds r2, r7, #0
	ldr r3, _08038978 @ => 0x08069C0C
_080388DC:
	adds r0, r2, r4
	lsls r1, r4, #2
	adds r1, r1, r3
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bls _080388F6
	mov r1, sp
	adds r0, r1, r5
	strb r4, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080388F6:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #6
	bls _080388DC
	cmp r5, #0
	beq _08038940
	subs r1, r5, #1
	movs r0, #0
	bl FUN_080424F8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r0, sp
	ldrb r4, [r0]
	adds r1, r7, r4
	ldr r0, _08038978 @ => 0x08069C0C
	lsls r2, r4, #2
	adds r2, r2, r0
	ldrb r0, [r1]
	ldrb r1, [r2]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r2, #1]
	muls r0, r1, r0
	cmp r0, #0x64
	ble _08038930
	movs r0, #0x64
_08038930:
	bl FUN_080425E4
	cmp r0, #1
	bne _08038940
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_08038B84
_08038940:
	adds r0, r6, #0
	bl FUN_08038A80
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08038966
	ldr r2, _0803897C @ => 0x03004200
	ldr r0, _08038980 @ => 0x030042B0
	ldrh r0, [r0, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r2, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1, #8]
_08038966:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08038970: .4byte gUnk_03003DF0
_08038974: .4byte 0xFFD55556
_08038978: .4byte NeedTable
_0803897C: .4byte gUnk_03004200
_08038980: .4byte gUnk_030042B0

	thumb_func_start FUN_08038984
FUN_08038984: @ 0x08038984
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xc8
	lsls r0, r0, #0x17
	str r0, [r4, #4]
	movs r0, #0xc8
	lsls r0, r0, #0x16
	str r0, [r4]
	movs r0, #0
	strb r0, [r4, #8]
	movs r0, #7
	strb r0, [r4, #0x17]
	adds r0, r4, #0
	adds r0, #9
	movs r1, #0
	movs r2, #7
	bl FUN_0802CB40
	adds r4, #0x10
	adds r0, r4, #0
	movs r1, #0
	movs r2, #7
	bl FUN_0802CB40
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080389BC
FUN_080389BC: @ 0x080389BC
	push {lr}
	ldr r1, [r0, #4]
	str r1, [r0]
	movs r1, #7
	strb r1, [r0, #0x17]
	adds r0, #0x10
	movs r1, #0
	movs r2, #7
	bl FUN_0802CB40
	pop {r0}
	bx r0

	thumb_func_start FUN_080389D4
FUN_080389D4: @ 0x080389D4
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_08021780
	cmp r0, #1
	bne _08038A06
	bl FUN_08023680
	cmp r0, #1
	bne _08038A06
	ldrb r0, [r4, #0x10]
	adds r0, #1
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x11]
	adds r0, #1
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #0x12]
	adds r0, #1
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #0x13]
	adds r0, #1
	strb r0, [r4, #0x13]
	ldrb r0, [r4, #0x14]
	adds r0, #1
	strb r0, [r4, #0x14]
_08038A06:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_08038A0C
FUN_08038A0C: @ 0x08038A0C
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #4]
	movs r2, #0xe0
	lsls r2, r2, #0x13
	adds r0, r0, r2
	movs r2, #0xc8
	lsls r2, r2, #0x17
	cmp r0, r2
	ble _08038A22
	adds r0, r2, #0
_08038A22:
	str r0, [r1, #4]
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08038A2C
FUN_08038A2C: @ 0x08038A2C
	ldrb r0, [r0, #7]
	bx lr

	thumb_func_start FUN_08038A30
FUN_08038A30: @ 0x08038A30
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	adds r5, r2, #0
	adds r0, #9
	adds r2, r0, r5
	ldrb r0, [r2]
	cmp r0, #0xb3
	bhi _08038A78
	ldr r1, _08038A74 @ => 0x09FB6668
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r4]
	ldr r0, [r0]
	adds r0, r1, r0
	ldr r3, [r4, #4]
	cmp r3, r0
	ble _08038A56
	adds r3, r0, #0
_08038A56:
	str r3, [r4]
	cmp r5, #6
	bhi _08038A70
	ldrb r0, [r2]
	adds r0, #2
	strb r0, [r2]
	adds r1, r0, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _08038A6E
	movs r1, #0xb4
_08038A6E:
	strb r1, [r2]
_08038A70:
	movs r0, #1
	b _08038A7A
	.align 2, 0
_08038A74: .4byte ROMREF_09FB6668
_08038A78:
	movs r0, #0
_08038A7A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start FUN_08038A80
FUN_08038A80: @ 0x08038A80
	ldrb r0, [r0, #3]
	bx lr

	thumb_func_start FUN_08038A84
FUN_08038A84: @ 0x08038A84
	push {lr}
	lsls r1, r1, #0x18
	ldr r2, [r0, #4]
	cmp r2, r1
	ble _08038A90
	adds r2, r1, #0
_08038A90:
	str r2, [r0]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08038A98
FUN_08038A98: @ 0x08038A98
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4]
	ldr r0, _08038ADC @ => 0x09FB6668
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	subs r0, r5, r0
	ldr r2, [r4, #4]
	movs r1, #0
	bl FUN_0802C644
	str r0, [r4]
	cmp r5, #0
	ble _08038AD4
	cmp r0, #0
	bne _08038AD4
	ldr r2, _08038AE0 @ => 0x03004200
	ldr r0, _08038AE4 @ => 0x030042B0
	ldrh r0, [r0, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r2, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1, #8]
_08038AD4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08038ADC: .4byte ROMREF_09FB6668
_08038AE0: .4byte gUnk_03004200
_08038AE4: .4byte gUnk_030042B0

	thumb_func_start FUN_08038AE8
FUN_08038AE8: @ 0x08038AE8
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bne _08038B18
	movs r0, #0
	strb r0, [r1, #8]
	ldr r0, [r1, #4]
	movs r2, #0xe0
	lsls r2, r2, #0x13
	adds r0, r0, r2
	movs r2, #0xc8
	lsls r2, r2, #0x17
	cmp r0, r2
	ble _08038B10
	adds r0, r2, #0
_08038B10:
	str r0, [r1, #4]
	str r0, [r1]
	movs r0, #1
	b _08038B1A
_08038B18:
	movs r0, #0
_08038B1A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08038B20
FUN_08038B20: @ 0x08038B20
	ldrb r0, [r0, #8]
	bx lr

	thumb_func_start FUN_08038B24
FUN_08038B24: @ 0x08038B24
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl FUN_08021320
	cmp r0, #0
	bne _08038B3E
	ldr r0, _08038B78 @ => 0x0300407C
	movs r1, #3
	bl FUN_0801DF10
	cmp r0, #0
	beq _08038B72
_08038B3E:
	cmp r5, #7
	beq _08038B72
	ldrb r0, [r4, #0x17]
	cmp r0, r5
	bne _08038B72
	movs r2, #0
	movs r0, #7
	strb r0, [r4, #0x17]
	adds r1, r4, #0
	adds r1, #0x10
	adds r0, r1, r5
	strb r2, [r0]
	movs r4, #0
	adds r5, r1, #0
	ldr r1, _08038B7C @ => 0x08069C0C
_08038B5C:
	adds r0, r5, r4
	ldrb r2, [r1]
	ldrb r3, [r0]
	cmp r2, r3
	bls _08038B68
	adds r2, r3, #0
_08038B68:
	strb r2, [r0]
	adds r1, #4
	adds r4, #1
	cmp r4, #6
	bls _08038B5C
_08038B72:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08038B78: .4byte gEpisode_Data
_08038B7C: .4byte NeedTable

	thumb_func_start FUN_08038B80
FUN_08038B80: @ 0x08038B80
	ldrb r0, [r0, #0x17]
	bx lr

	thumb_func_start FUN_08038B84
FUN_08038B84: @ 0x08038B84
	push {lr}
	strb r1, [r0, #0x17]
	cmp r1, #7
	beq _08038BAA
	adds r0, #0x10
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	ldr r2, _08038BB0 @ => 0x03004200
	ldr r0, _08038BB4 @ => 0x030042B0
	ldrh r0, [r0, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r2, [r1, #8]
	movs r0, #0x80
	orrs r0, r2
	strh r0, [r1, #8]
_08038BAA:
	pop {r0}
	bx r0
	.align 2, 0
_08038BB0: .4byte gUnk_03004200
_08038BB4: .4byte gUnk_030042B0

	thumb_func_start FUN_08038BB8
FUN_08038BB8: @ 0x08038BB8
	push {r4, r5, lr}
	adds r4, r0, #0
	cmp r1, #1
	bne _08038BC6
	movs r0, #0
	str r0, [r4, #0x18]
	b _08038C14
_08038BC6:
	movs r0, #1
	str r0, [r4, #0x18]
	ldrb r5, [r4, #0x17]
	bl FUN_08021320
	cmp r0, #0
	bne _08038BE0
	ldr r0, _08038C1C @ => 0x0300407C
	movs r1, #3
	bl FUN_0801DF10
	cmp r0, #0
	beq _08038C14
_08038BE0:
	cmp r5, #7
	beq _08038C14
	ldrb r0, [r4, #0x17]
	cmp r0, r5
	bne _08038C14
	movs r2, #0
	movs r0, #7
	strb r0, [r4, #0x17]
	adds r1, r4, #0
	adds r1, #0x10
	adds r0, r1, r5
	strb r2, [r0]
	movs r4, #0
	adds r5, r1, #0
	ldr r1, _08038C20 @ => 0x08069C0C
_08038BFE:
	adds r0, r5, r4
	ldrb r2, [r1]
	ldrb r3, [r0]
	cmp r2, r3
	bls _08038C0A
	adds r2, r3, #0
_08038C0A:
	strb r2, [r0]
	adds r1, #4
	adds r4, #1
	cmp r4, #6
	bls _08038BFE
_08038C14:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08038C1C: .4byte gEpisode_Data
_08038C20: .4byte NeedTable

	thumb_func_start FUN_08038C24
FUN_08038C24: @ 0x08038C24
	push {lr}
	movs r1, #0x1c
	bl FUN_08044644
	pop {r0}
	bx r0

	thumb_func_start FUN_08038C30
FUN_08038C30: @ 0x08038C30
	push {lr}
	movs r1, #0x1c
	bl FUN_08044558
	pop {r0}
	bx r0

	thumb_func_start FUN_08038C3C
FUN_08038C3C: @ 0x08038C3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	mov sb, r0
	mov sl, r1
	ldr r7, [r0, #0xc]
	movs r0, #0
	str r0, [sp, #0x1c]
	mov r2, sb
	ldr r0, [r2, #0x28]
	ldr r1, [r2, #0x2c]
	bl FUN_0802C4C4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r6, r0, #1
	cmp r6, #0
	bge _08038C68
	adds r6, r0, #7
_08038C68:
	mov r1, sb
	ldr r0, [r1, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0x16
	ands r0, r1
	cmp r0, #0
	beq _08038C90
	mov r2, sb
	ldrb r0, [r2, #0x12]
	lsrs r0, r0, #1
	b _08038C94
_08038C7E:
	movs r0, #1
	str r0, [sp, #0x1c]
	b _08038D84
_08038C84:
	movs r1, #1
	str r1, [sp, #0x1c]
	b _08038D84
_08038C8A:
	movs r2, #1
	str r2, [sp, #0x1c]
	b _08038D84
_08038C90:
	mov r0, sb
	ldrb r0, [r0, #0x12]
_08038C94:
	str r0, [sp, #0x20]
	movs r1, #0
	str r1, [sp, #0x24]
	mov r2, sb
	adds r2, #0x20
	str r2, [sp, #0x2c]
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x30]
	add r1, sp, #0x18
	mov r8, r1
	mov r2, sp
	adds r2, #8
	str r2, [sp, #0x28]
_08038CB0:
	ldr r0, [sp, #0x20]
	cmp r6, r0
	bne _08038CC6
	mov r0, sp
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0x80
	lsls r3, r3, #0xc
	bl FUN_08001030
	b _08038CD4
_08038CC6:
	mov r0, sp
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0x80
	lsls r3, r3, #0xb
	bl FUN_08001030
_08038CD4:
	mov r0, sp
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x28]
	bl FUN_0802C3AC
	ldr r0, [sp, #8]
	asrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x28]
	movs r2, #6
	ldrsh r0, [r1, r2]
	ldr r1, [sp, #0x30]
	str r0, [r1, #4]
	mov r0, sl
	ldr r1, [sp, #0x30]
	mov r2, r8
	bl FUN_0805374C
	cmp r0, #0
	beq _08038D98
	mov r0, sb
	adds r0, #0x90
	ldrh r0, [r0]
	mov r1, r8
	ldrh r2, [r1]
	ldr r1, _08038DA8 @ => 0x0000FFFF
	ands r1, r0
	ldr r0, _08038DA8 @ => 0x0000FFFF
	ands r0, r2
	cmp r1, r0
	beq _08038D72
	mov r0, sl
	mov r1, r8
	bl FUN_080496EC
	adds r4, r0, #0
	mov r0, sl
	mov r1, r8
	bl FUN_080497F4
	mov ip, r0
	movs r5, #0x2d
	ands r5, r4
	cmp r5, #0
	beq _08038D30
	movs r5, #1
_08038D30:
	lsrs r4, r4, #4
	movs r1, #1
	ands r4, r1
	lsrs r3, r7, #0x18
	ands r3, r1
	lsrs r0, r7, #6
	ands r0, r1
	lsrs r2, r7, #4
	ands r2, r1
	cmp r0, #1
	bne _08038D4E
	cmp r5, #1
	bne _08038D4E
	cmp r3, #0
	beq _08038C7E
_08038D4E:
	cmp r2, #1
	bne _08038D5A
	cmp r3, #0
	bne _08038D72
	cmp r4, #1
	beq _08038C84
_08038D5A:
	cmp r3, #0
	bne _08038D72
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r7
	cmp r0, #0
	beq _08038D72
	movs r0, #2
	mov r2, ip
	ands r0, r2
	cmp r0, #0
	bne _08038C8A
_08038D72:
	adds r6, #1
	cmp r6, #7
	ble _08038D7A
	subs r6, #8
_08038D7A:
	ldr r0, [sp, #0x24]
	adds r0, #1
	str r0, [sp, #0x24]
	cmp r0, #2
	ble _08038CB0
_08038D84:
	ldr r1, [sp, #0x1c]
	cmp r1, #1
	bne _08038D98
	mov r0, sb
	bl FUN_08039844
	mov r0, sb
	movs r1, #0x26
	bl FUN_08038FB0
_08038D98:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08038DA8: .4byte 0x0000FFFF

	thumb_func_start FUN_08038DAC
FUN_08038DAC: @ 0x08038DAC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r5, r1, #0
	adds r4, r0, #0
	mov r8, r2
	ldr r0, _08038DC8 @ => 0x03004720
	ldr r0, [r0]
	cmp r0, #0xd
	bne _08038DCC
	movs r0, #0
	b _08038E6E
	.align 2, 0
_08038DC8: .4byte gUnk_03004720
_08038DCC:
	mov r0, sp
	bl FUN_0804708C
	ldr r1, [sp]
	cmp r4, r1
	bhs _08038DDE
	ldr r0, [sp, #4]
	cmp r5, r0
	blo _08038DE2
_08038DDE:
	movs r0, #3
	b _08038E6E
_08038DE2:
	lsrs r0, r4, #5
	lsrs r2, r5, #5
	asrs r1, r1, #5
	muls r1, r2, r1
	adds r0, r0, r1
	ldr r1, _08038E7C @ => 0x03002508
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	lsls r3, r3, #4
	lsrs r2, r4, #3
	movs r0, #3
	ands r2, r0
	lsrs r0, r5, #1
	movs r1, #0xc
	ands r0, r1
	orrs r2, r0
	adds r3, r3, r2
	ldr r0, _08038E80 @ => 0x03002504
	ldr r0, [r0]
	adds r0, r0, r3
	ldrb r0, [r0]
	movs r1, #0x3f
	mov ip, r1
	mov r2, ip
	ands r2, r0
	mov ip, r2
	mov r0, r8
	cmp r0, #1
	beq _08038E6C
	mov r0, ip
	subs r0, #4
	cmp r0, #0x1f
	bhi _08038E6C
	ldr r1, _08038E84 @ => 0x08069C60
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	lsls r0, r2, #0x14
	lsrs r0, r0, #0x1c
	lsls r3, r2, #0x1c
	lsrs r1, r3, #0x1c
	subs r6, r0, r1
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x1c
	lsls r2, r2, #0x18
	lsrs r1, r2, #0x1c
	subs r7, r0, r1
	movs r1, #7
	adds r0, r1, #0
	ands r0, r4
	lsrs r3, r3, #0x1c
	subs r3, r0, r3
	str r3, [sp, #8]
	ands r1, r5
	lsrs r2, r2, #0x1c
	subs r2, r1, r2
	str r2, [sp, #0xc]
	adds r0, r6, #0
	muls r0, r2, r0
	adds r2, r3, #0
	adds r1, r2, #0
	muls r1, r7, r1
	subs r0, r0, r1
	cmp r0, #0
	bge _08038E6C
	movs r0, #0
	mov ip, r0
_08038E6C:
	mov r0, ip
_08038E6E:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08038E7C: .4byte gUnk_03002508
_08038E80: .4byte gUnk_03002504
_08038E84: .4byte ROMREF_08069C60

	thumb_func_start FUN_08038E88
FUN_08038E88: @ 0x08038E88
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0x22
	ldrsh r0, [r4, r2]
	movs r2, #0x26
	ldrsh r1, [r4, r2]
	movs r2, #0
	bl FUN_08038DAC
	ldr r2, _08038EDC @ => 0x00000161
	adds r1, r4, r2
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08038EB6
	ldr r1, [r4, #0xc]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08038ECE
_08038EB6:
	ldr r1, _08038EDC @ => 0x00000161
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0x25
	bne _08038EE0
	ldr r1, [r4, #0xc]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _08038EE0
_08038ECE:
	orrs r1, r2
	str r1, [r4, #0xc]
	adds r0, r4, #0
	bl FUN_08001824
	b _08038F0A
	.align 2, 0
_08038EDC: .4byte 0x00000161
_08038EE0:
	ldr r2, _08038F10 @ => 0x00000161
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #1
	beq _08038F0A
	cmp r0, #0x25
	beq _08038F0A
	ldr r1, [r4, #0xc]
	movs r0, #0x82
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08038F0A
	ldr r0, _08038F14 @ => 0xFFFFBFFF
	ands r1, r0
	ldr r0, _08038F18 @ => 0xFFFFFEFF
	ands r1, r0
	str r1, [r4, #0xc]
	adds r0, r4, #0
	bl FUN_08001824
_08038F0A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08038F10: .4byte 0x00000161
_08038F14: .4byte 0xFFFFBFFF
_08038F18: .4byte 0xFFFFFEFF

	thumb_func_start FUN_08038F1C
FUN_08038F1C: @ 0x08038F1C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r4, [r7, #0x20]
	ldr r5, [r7, #0x24]
	movs r1, #0x80
	lsls r1, r1, #8
	bl FUN_08002048
	cmp r0, #0
	beq _08038F3C
	asrs r1, r4, #0x10
	ldr r2, _08038F38 @ => 0x08069C30
	b _08038F40
	.align 2, 0
_08038F38: .4byte ROMREF_08069C30
_08038F3C:
	asrs r1, r4, #0x10
	ldr r2, _08038F94 @ => 0x08069C40
_08038F40:
	ldr r0, [r2]
	adds r0, r1, r0
	str r0, [r6]
	ldr r0, [r2, #4]
	adds r1, r1, r0
	str r1, [r6, #4]
	asrs r1, r5, #0x10
	ldr r0, [r2, #8]
	adds r0, r1, r0
	str r0, [r6, #8]
	ldr r0, [r2, #0xc]
	adds r1, r1, r0
	str r1, [r6, #0xc]
	ldr r0, [r7, #0x28]
	ldr r1, [r7, #0x2c]
	bl FUN_0802C4C4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08038F98
	movs r0, #0xfe
	ands r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_08039430
	adds r1, r0, #0
	movs r2, #0
	subs r0, r1, #2
	cmp r0, #0x21
	bhi _08038F86
	movs r2, #1
_08038F86:
	cmp r2, #0
	bne _08038FA2
	adds r0, r4, #2
	movs r1, #7
	ands r0, r1
	b _08038F9A
	.align 2, 0
_08038F94: .4byte ROMREF_08069C40
_08038F98:
	adds r0, r4, #0
_08038F9A:
	adds r1, r6, #0
	bl FUN_08039430
	adds r1, r0, #0
_08038FA2:
	adds r0, r7, #0
	bl FUN_080398D0
	adds r1, r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_08038FB0
FUN_08038FB0: @ 0x08038FB0
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldr r1, [r4, #0xc]
	ldr r0, _08038FEC @ => 0xFFFFF7FF
	ands r1, r0
	str r1, [r4, #0xc]
	movs r2, #0
	subs r0, r3, #2
	cmp r0, #0x21
	bhi _08038FC8
	movs r2, #1
_08038FC8:
	cmp r2, #0
	beq _0803907C
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r1, r0
	str r1, [r4, #0xc]
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #5
	bhi _0803907C
	lsls r0, r0, #2
	ldr r1, _08038FF0 @ =_08038FF4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08038FEC: .4byte 0xFFFFF7FF
_08038FF0: .4byte _08038FF4
_08038FF4: @ jump table
	.4byte _0803907C @ case 0
	.4byte _0803900C @ case 1
	.4byte _0803901E @ case 2
	.4byte _08039050 @ case 3
	.4byte _08039062 @ case 4
	.4byte _08039074 @ case 5
_0803900C:
	ldr r0, [r4, #0x18]
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x1c]
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #2
	bl FUN_08001F84
	b _0803907C
_0803901E:
	ldr r1, _0803904C @ => 0x08069C28
	ldrb r0, [r4, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0x12]
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4, #0x28]
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x2c]
	rsbs r0, r0, #0
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x18]
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x1c]
	str r0, [r4, #0x24]
	b _0803907C
	.align 2, 0
_0803904C: .4byte ROMREF_08069C28
_08039050:
	ldr r0, [r4, #0x18]
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x1c]
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r3, #0
	bl FUN_080390D0
	b _0803907C
_08039062:
	ldr r0, [r4, #0x18]
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x1c]
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #5
	bl FUN_08001F84
	b _0803907C
_08039074:
	adds r0, r4, #0
	adds r1, r3, #0
	bl FUN_080391E4
_0803907C:
	movs r2, #0x22
	ldrsh r0, [r4, r2]
	movs r2, #0x26
	ldrsh r1, [r4, r2]
	movs r2, #0
	bl FUN_08038DAC
	ldr r2, _080390A4 @ => 0x00000161
	adds r1, r4, r2
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080390A8
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	b _080390C0
	.align 2, 0
_080390A4: .4byte 0x00000161
_080390A8:
	cmp r0, #0x25
	bne _080390B6
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	b _080390C0
_080390B6:
	ldr r0, [r4, #0xc]
	ldr r1, _080390C8 @ => 0xFFFFBFFF
	ands r0, r1
	ldr r1, _080390CC @ => 0xFFFFFEFF
	ands r0, r1
_080390C0:
	str r0, [r4, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080390C8: .4byte 0xFFFFBFFF
_080390CC: .4byte 0xFFFFFEFF

	thumb_func_start FUN_080390D0
FUN_080390D0: @ 0x080390D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r2, r1, #0
	ldrb r0, [r7, #0x12]
	lsrs r6, r0, #1
	cmp r2, #0x26
	beq _080391D4
	cmp r2, #3
	beq _08039114
	subs r2, #4
	ldr r1, _080391B4 @ => 0x08069C60
	lsls r0, r2, #2
	adds r0, r0, r1
	ldrb r3, [r0, #1]
	lsls r2, r3, #0x1c
	lsrs r2, r2, #0x1c
	ldrb r1, [r0]
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1c
	subs r4, r2, r0
	lsrs r3, r3, #4
	lsrs r1, r1, #4
	subs r5, r3, r1
	adds r0, r7, #0
	adds r2, r5, #0
	adds r1, r4, #0
	bl FUN_080398D4
	cmp r0, #0
	beq _080391D4
_08039114:
	ldrb r1, [r7, #0x12]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803914C
	ldr r1, _080391B8 @ => 0x08069C50
	lsls r0, r6, #2
	adds r0, r0, r1
	ldrb r3, [r0, #1]
	lsls r2, r3, #0x1c
	lsrs r2, r2, #0x1c
	ldrb r1, [r0]
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1c
	subs r4, r2, r0
	lsrs r3, r3, #4
	lsrs r1, r1, #4
	subs r5, r3, r1
	adds r0, r7, #0
	adds r2, r5, #0
	adds r1, r4, #0
	bl FUN_080398D4
	cmp r0, #0
	beq _080391D4
	adds r6, #1
	movs r0, #3
	ands r6, r0
_0803914C:
	ldr r1, _080391B8 @ => 0x08069C50
	lsls r0, r6, #2
	adds r0, r0, r1
	ldrb r3, [r0, #1]
	lsls r1, r3, #0x1c
	mov sl, r1
	lsrs r1, r1, #0x1c
	ldrb r2, [r0]
	lsls r6, r2, #0x1c
	mov r8, r6
	lsrs r0, r6, #0x1c
	subs r4, r1, r0
	lsls r3, r3, #0x18
	mov sb, r3
	lsrs r1, r3, #0x1c
	lsls r6, r2, #0x18
	lsrs r0, r6, #0x1c
	subs r5, r1, r0
	adds r0, r7, #0
	adds r2, r5, #0
	adds r1, r4, #0
	bl FUN_080398D4
	cmp r0, #0
	beq _080391D4
	mov r1, sl
	lsrs r0, r1, #0x1c
	mov r2, r8
	lsrs r1, r2, #0x1c
	subs r0, r0, r1
	lsls r4, r0, #0xe
	mov r1, sb
	lsrs r0, r1, #0x1c
	lsrs r1, r6, #0x1c
	subs r0, r0, r1
	lsls r5, r0, #0xe
	ldr r1, _080391BC @ => 0x03002518
	ldr r0, [r1]
	cmp r0, #0
	bne _080391C0
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _080391CA
	adds r0, r7, #0
	adds r2, r5, #0
	adds r1, r4, #0
	bl FUN_08039344
	cmp r0, #0
	beq _080391D4
	b _080391C6
	.align 2, 0
_080391B4: .4byte ROMREF_08069C60
_080391B8: .4byte ROMREF_08069C50
_080391BC: .4byte gUnk_03002518
_080391C0:
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _080391D4
_080391C6:
	rsbs r4, r4, #0
	rsbs r5, r5, #0
_080391CA:
	adds r0, r7, #0
	adds r2, r5, #0
	adds r1, r4, #0
	bl FUN_08039344
_080391D4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080391E4
FUN_080391E4: @ 0x080391E4
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r6, r0, #0
	movs r2, #1
	subs r0, r1, #3
	cmp r0, #0x20
	bls _080391F4
	b _08039336
_080391F4:
	lsls r0, r0, #2
	ldr r1, _08039200 @ =_08039204
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08039200: .4byte _08039204
_08039204: @ jump table
	.4byte _08039288 @ case 0
	.4byte _080392A8 @ case 1
	.4byte _080392A8 @ case 2
	.4byte _080392C0 @ case 3
	.4byte _080392C0 @ case 4
	.4byte _080392D8 @ case 5
	.4byte _080392D8 @ case 6
	.4byte _080392F0 @ case 7
	.4byte _080392F0 @ case 8
	.4byte _080392A8 @ case 9
	.4byte _080392A8 @ case 10
	.4byte _080392C0 @ case 11
	.4byte _080392C0 @ case 12
	.4byte _080392D8 @ case 13
	.4byte _080392D8 @ case 14
	.4byte _080392F0 @ case 15
	.4byte _080392F0 @ case 16
	.4byte _080392B4 @ case 17
	.4byte _080392B4 @ case 18
	.4byte _080392CC @ case 19
	.4byte _080392CC @ case 20
	.4byte _080392E4 @ case 21
	.4byte _080392E4 @ case 22
	.4byte _080392FC @ case 23
	.4byte _080392FC @ case 24
	.4byte _080392B4 @ case 25
	.4byte _080392B4 @ case 26
	.4byte _080392CC @ case 27
	.4byte _080392CC @ case 28
	.4byte _080392E4 @ case 29
	.4byte _080392E4 @ case 30
	.4byte _080392FC @ case 31
	.4byte _080392FC @ case 32
_08039288:
	ldr r0, [r6, #0x28]
	ldr r1, [r6, #0x2c]
	bl FUN_0802C4C4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #1
	ands r0, r1
	ldr r0, [r6, #0x28]
	rsbs r0, r0, #0
	str r0, [r6, #0x28]
	ldr r0, [r6, #0x2c]
	rsbs r0, r0, #0
	str r0, [r6, #0x2c]
	movs r2, #0
	b _08039302
_080392A8:
	ldr r0, _080392B0 @ => 0x08059DA8
	ldr r4, [r0, #0x78]
	ldr r5, [r0, #0x7c]
	b _08039302
	.align 2, 0
_080392B0: .4byte ROMREF_08059DA8
_080392B4:
	ldr r0, _080392BC @ => 0x08059DA8
	ldr r4, [r0, #0x68]
	ldr r5, [r0, #0x6c]
	b _08039302
	.align 2, 0
_080392BC: .4byte ROMREF_08059DA8
_080392C0:
	ldr r0, _080392C8 @ => 0x08059DA8
	ldr r4, [r0, #8]
	ldr r5, [r0, #0xc]
	b _08039302
	.align 2, 0
_080392C8: .4byte ROMREF_08059DA8
_080392CC:
	ldr r0, _080392D4 @ => 0x08059DA8
	ldr r4, [r0, #0x18]
	ldr r5, [r0, #0x1c]
	b _08039302
	.align 2, 0
_080392D4: .4byte ROMREF_08059DA8
_080392D8:
	ldr r0, _080392E0 @ => 0x08059DA8
	ldr r4, [r0, #0x48]
	ldr r5, [r0, #0x4c]
	b _08039302
	.align 2, 0
_080392E0: .4byte ROMREF_08059DA8
_080392E4:
	ldr r0, _080392EC @ => 0x08059DA8
	ldr r4, [r0, #0x58]
	ldr r5, [r0, #0x5c]
	b _08039302
	.align 2, 0
_080392EC: .4byte ROMREF_08059DA8
_080392F0:
	ldr r0, _080392F8 @ => 0x08059DA8
	ldr r4, [r0, #0x38]
	ldr r5, [r0, #0x3c]
	b _08039302
	.align 2, 0
_080392F8: .4byte ROMREF_08059DA8
_080392FC:
	ldr r0, _08039340 @ => 0x08059DA8
	ldr r4, [r0, #0x28]
	ldr r5, [r0, #0x2c]
_08039302:
	ldr r0, [r6, #0x18]
	str r0, [r6, #0x20]
	ldr r0, [r6, #0x1c]
	str r0, [r6, #0x24]
	movs r0, #0
	str r0, [r6, #0x30]
	str r0, [r6, #0x34]
	cmp r2, #1
	bne _0803932A
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x2c]
	str r5, [sp]
	adds r3, r4, #0
	add r0, sp, #4
	bl FUN_0802C43C
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	str r0, [r6, #0x28]
	str r1, [r6, #0x2c]
_0803932A:
	adds r2, r6, #0
	adds r2, #0x78
	ldrh r1, [r2]
	movs r0, #4
	orrs r0, r1
	strh r0, [r2]
_08039336:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08039340: .4byte ROMREF_08059DA8

	thumb_func_start FUN_08039344
FUN_08039344: @ 0x08039344
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x24
	adds r4, r0, #0
	adds r6, r2, #0
	adds r5, r1, #0
	movs r0, #1
	mov r8, r0
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x24]
	str r0, [sp, #0x1c]
	str r1, [sp, #0x20]
	ldr r0, [r4, #0x20]
	adds r0, r0, r5
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x24]
	adds r0, r0, r6
	str r0, [r4, #0x24]
	adds r0, r4, #0
	mov r1, sp
	bl FUN_08038F1C
	mov sb, r0
	ldr r7, _080393A0 @ => 0x03004398
	ldr r2, [r7]
	cmp r2, #0
	beq _080393F2
	movs r1, #0x22
	ldrsh r0, [r4, r1]
	str r0, [sp, #0x10]
	movs r1, #0x26
	ldrsh r0, [r4, r1]
	add r1, sp, #0x10
	str r0, [r1, #4]
	add r5, sp, #0x18
	adds r0, r2, #0
	adds r2, r5, #0
	bl FUN_0805374C
	cmp r0, #0
	bne _080393A4
	movs r0, #0
	mov r8, r0
	b _080393F2
	.align 2, 0
_080393A0: .4byte gUnk_03004398
_080393A4:
	adds r0, r4, #0
	adds r0, #0x90
	ldrh r0, [r0]
	ldrh r1, [r5]
	cmp r0, r1
	beq _080393F2
	ldr r0, [r7]
	adds r1, r5, #0
	bl FUN_080496EC
	adds r6, r0, #0
	ldr r0, [r7]
	adds r1, r5, #0
	bl FUN_080497F4
	adds r2, r0, #0
	ldr r0, [r4, #0xc]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080393DA
	movs r0, #0x3d
	ands r0, r6
	cmp r0, #0
	beq _080393DA
	movs r0, #0
	mov r8, r0
_080393DA:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080393F2
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080393F2
	movs r1, #0
	mov r8, r1
_080393F2:
	movs r1, #0
	mov r0, sb
	subs r0, #2
	cmp r0, #0x21
	bhi _080393FE
	movs r1, #1
_080393FE:
	cmp r1, #0
	bne _08039408
	mov r0, r8
	cmp r0, #0
	bne _08039414
_08039408:
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	str r0, [r4, #0x20]
	str r1, [r4, #0x24]
	movs r0, #1
	b _08039422
_08039414:
	adds r2, r4, #0
	adds r2, #0x78
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0
_08039422:
	add sp, #0x24
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_08039430
FUN_08039430: @ 0x08039430
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r2, r1, #0
	movs r1, #0
	mov sl, r1
	cmp r0, #2
	beq _08039472
	cmp r0, #2
	bhi _08039450
	cmp r0, #0
	beq _0803945A
	b _080394BA
_08039450:
	cmp r0, #4
	beq _08039488
	cmp r0, #6
	beq _080394A0
	b _080394BA
_0803945A:
	ldr r0, [r2]
	adds r4, r0, #0
	ldr r1, [r2, #8]
	adds r5, r1, #0
	ldr r2, [r2, #4]
	str r2, [sp]
	str r1, [sp, #4]
	movs r6, #1
	movs r7, #0
	subs r2, r2, r0
	mov r8, r2
	b _080394BE
_08039472:
	ldr r0, [r2, #4]
	adds r4, r0, #0
	ldr r1, [r2, #8]
	adds r5, r1, #0
	str r0, [sp]
	ldr r0, [r2, #0xc]
	str r0, [sp, #4]
	movs r6, #0
	movs r7, #1
	subs r0, r0, r1
	b _080394BC
_08039488:
	ldr r0, [r2, #4]
	adds r4, r0, #0
	ldr r1, [r2, #0xc]
	adds r5, r1, #0
	ldr r2, [r2]
	str r2, [sp]
	str r1, [sp, #4]
	movs r6, #1
	rsbs r6, r6, #0
	movs r7, #0
	subs r0, r0, r2
	b _080394BC
_080394A0:
	ldr r0, [r2]
	adds r4, r0, #0
	ldr r1, [r2, #0xc]
	adds r5, r1, #0
	str r0, [sp]
	ldr r0, [r2, #8]
	str r0, [sp, #4]
	movs r6, #0
	movs r7, #1
	rsbs r7, r7, #0
	subs r1, r1, r0
	mov r8, r1
	b _080394BE
_080394BA:
	movs r0, #0
_080394BC:
	mov r8, r0
_080394BE:
	ldr r1, _080394E8 @ => 0x03002518
	mov sb, r1
	ldr r0, [r1]
	cmp r0, #0xff
	bne _080394E4
	ldr r0, [sp]
	ldr r1, [sp, #4]
	movs r2, #0
	bl FUN_08038DAC
	mov r1, sb
	str r0, [r1]
	adds r1, r5, #0
	adds r0, r4, #0
	movs r2, #0
	bl FUN_08038DAC
	mov r1, sb
	str r0, [r1, #4]
_080394E4:
	movs r3, #0
	b _080394F6
	.align 2, 0
_080394E8: .4byte gUnk_03002518
_080394EC:
	lsls r0, r6, #3
	adds r4, r4, r0
	lsls r0, r7, #3
	adds r5, r5, r0
	adds r3, #8
_080394F6:
	cmp r3, r8
	bge _0803951C
	adds r1, r5, #0
	adds r0, r4, #0
	movs r2, #0
	str r3, [sp, #8]
	bl FUN_08038DAC
	ldr r3, [sp, #8]
	cmp r0, #0
	beq _080394EC
	mov sl, r0
	movs r1, #0
	subs r0, #2
	cmp r0, #0x21
	bhi _08039518
	movs r1, #1
_08039518:
	cmp r1, #0
	beq _080394EC
_0803951C:
	movs r1, #0
	mov r0, sl
	subs r0, #2
	cmp r0, #0x21
	bhi _08039528
	movs r1, #1
_08039528:
	cmp r1, #0
	bne _0803953C
	ldr r0, [sp]
	ldr r1, [sp, #4]
	movs r2, #0
	bl FUN_08038DAC
	cmp r0, #0
	beq _0803953C
	mov sl, r0
_0803953C:
	mov r0, sl
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08039550
FUN_08039550: @ 0x08039550
	ldr r0, _08039564 @ => 0x03004808
	movs r1, #0
	str r1, [r0]
	ldr r0, _08039568 @ => 0x03002500
	str r1, [r0]
	ldr r0, _0803956C @ => 0x03002504
	str r1, [r0]
	ldr r0, _08039570 @ => 0x03002508
	str r1, [r0]
	bx lr
	.align 2, 0
_08039564: .4byte gUnk_03004808
_08039568: .4byte gUnk_03002500
_0803956C: .4byte gUnk_03002504
_08039570: .4byte gUnk_03002508

	thumb_func_start FUN_08039574
FUN_08039574: @ 0x08039574
	push {r4, lr}
	ldr r4, _080395B4 @ => 0x03004808
	ldr r0, [r4]
	cmp r0, #0
	beq _08039586
	bl FUN_0802CA80
	movs r0, #0
	str r0, [r4]
_08039586:
	ldr r4, _080395B8 @ => 0x03002500
	ldr r0, [r4]
	cmp r0, #0
	beq _08039596
	bl FUN_0802CA80
	movs r0, #0
	str r0, [r4]
_08039596:
	ldr r4, _080395BC @ => 0x03002504
	ldr r0, [r4]
	cmp r0, #0
	beq _080395A6
	bl FUN_0802CA80
	movs r0, #0
	str r0, [r4]
_080395A6:
	ldr r1, _080395C0 @ => 0x03002508
	movs r0, #0
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080395B4: .4byte gUnk_03004808
_080395B8: .4byte gUnk_03002500
_080395BC: .4byte gUnk_03002504
_080395C0: .4byte gUnk_03002508

	thumb_func_start FUN_080395C4
FUN_080395C4: @ 0x080395C4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r4, _08039614 @ => 0x03002504
	bl FUN_0801ACB8
	bl FUN_0802C95C
	adds r1, r0, #0
	str r1, [r4]
	ldr r4, _08039618 @ => 0x0300250C
	adds r0, r5, #0
	bl FUN_0801ABA0
	str r0, [r4]
	ldr r4, _0803961C @ => 0x03002500
	adds r0, r6, #0
	bl FUN_0801ACB8
	bl FUN_0802C95C
	adds r1, r0, #0
	str r1, [r4]
	ldr r5, _08039620 @ => 0x03002510
	adds r0, r6, #0
	bl FUN_0801ABA0
	ldr r2, _08039624 @ => 0x03002508
	ldr r3, [r4]
	adds r1, r3, #4
	str r1, [r2]
	subs r0, #4
	lsrs r0, r0, #1
	str r0, [r5]
	ldr r1, _08039628 @ => 0x03004804
	ldrh r0, [r3]
	str r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08039614: .4byte gUnk_03002504
_08039618: .4byte gUnk_0300250C
_0803961C: .4byte gUnk_03002500
_08039620: .4byte gUnk_03002510
_08039624: .4byte gUnk_03002508
_08039628: .4byte gUnk_03004804

	thumb_func_start FUN_0803962C
FUN_0803962C: @ 0x0803962C
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r1, _08039680 @ => 0x03002504
	ldr r2, _08039684 @ => 0x0300250C
	ldr r1, [r1]
	ldr r2, [r2]
	adds r1, r1, r2
	bl FUN_0801ABA0
	ldr r4, _08039688 @ => 0x03004808
	adds r0, r5, #0
	bl FUN_0801ACB8
	bl FUN_0802C95C
	adds r1, r0, #0
	str r1, [r4]
	adds r0, r5, #0
	bl FUN_0801ABA0
	ldr r3, _0803968C @ => 0x040000D4
	ldr r1, [r4]
	adds r1, #4
	str r1, [r3]
	ldr r4, _08039690 @ => 0x03002508
	ldr r1, _08039694 @ => 0x03002510
	ldr r2, [r1]
	lsls r2, r2, #1
	ldr r1, [r4]
	adds r1, r1, r2
	str r1, [r3, #4]
	subs r0, #4
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08039680: .4byte gUnk_03002504
_08039684: .4byte gUnk_0300250C
_08039688: .4byte gUnk_03004808
_0803968C: .4byte 0x040000D4
_08039690: .4byte gUnk_03002508
_08039694: .4byte gUnk_03002510

	thumb_func_start sub_08039698
sub_08039698: @ 0x08039698
	push {r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	bne _080396E8
	ldr r1, _080396F0 @ => 0x03002518
	movs r0, #0xff
	str r0, [r1]
	adds r0, r5, #0
	mov r1, sp
	bl FUN_08038F1C
	adds r4, r0, #0
	ldr r0, _080396F4 @ => 0x030043A0
	ldrb r0, [r0]
	bl FUN_0802B2B4
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r3, #0x22
	ldrsh r0, [r5, r3]
	movs r3, #0x26
	ldrsh r1, [r5, r3]
	bl FUN_08039860
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl FUN_080017B8
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_08038FB0
_080396E8:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080396F0: .4byte gUnk_03002518
_080396F4: .4byte gUnk_030043A0

	thumb_func_start FUN_080396F8
FUN_080396F8: @ 0x080396F8
	push {lr}
	movs r1, #0
	subs r0, #2
	cmp r0, #0x21
	bhi _08039704
	movs r1, #1
_08039704:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0803970C
FUN_0803970C: @ 0x0803970C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r4, r4, #0x10
	lsls r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, sp
	bl FUN_0804708C
	ldr r1, _08039744 @ => 0x03002508
	lsrs r4, r4, #0x15
	lsrs r5, r5, #0x15
	ldr r0, [sp]
	asrs r0, r0, #5
	muls r0, r5, r0
	adds r4, r4, r0
	lsls r4, r4, #1
	ldr r0, [r1]
	adds r0, r0, r4
	strh r6, [r0]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08039744: .4byte gUnk_03002508

	thumb_func_start FUN_08039748
FUN_08039748: @ 0x08039748
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsls r5, r5, #0x10
	mov r0, sp
	bl FUN_0804708C
	ldr r1, _08039778 @ => 0x03002508
	lsrs r4, r4, #0x15
	lsrs r5, r5, #0x15
	ldr r0, [sp]
	asrs r0, r0, #5
	muls r0, r5, r0
	adds r4, r4, r0
	lsls r4, r4, #1
	ldr r0, [r1]
	adds r0, r0, r4
	ldrh r0, [r0]
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08039778: .4byte gUnk_03002508

	thumb_func_start FUN_0803977C
FUN_0803977C: @ 0x0803977C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080397AC @ => 0x030043A0
	ldrb r0, [r0]
	bl FUN_0802B2B4
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r3, #0x22
	ldrsh r0, [r4, r3]
	movs r3, #0x26
	ldrsh r1, [r4, r3]
	bl FUN_08039860
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl FUN_080017B8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080397AC: .4byte gUnk_030043A0

	thumb_func_start FUN_080397B0
FUN_080397B0: @ 0x080397B0
	ldr r2, _080397E0 @ => 0x08069C28
	ldrb r1, [r0, #0x12]
	adds r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r0, #0x12]
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r3, r0, r1
	ldrb r2, [r3]
	movs r1, #0x10
	orrs r1, r2
	strb r1, [r3]
	ldr r1, [r0, #0x28]
	rsbs r1, r1, #0
	str r1, [r0, #0x28]
	ldr r1, [r0, #0x2c]
	rsbs r1, r1, #0
	str r1, [r0, #0x2c]
	ldr r1, [r0, #0x18]
	str r1, [r0, #0x20]
	ldr r1, [r0, #0x1c]
	str r1, [r0, #0x24]
	bx lr
	.align 2, 0
_080397E0: .4byte ROMREF_08069C28

	thumb_func_start FUN_080397E4
FUN_080397E4: @ 0x080397E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r0, [r7, #0x38]
	ldr r1, [r7, #0x3c]
	ldr r2, [r7, #0x20]
	ldr r3, [r7, #0x24]
	bl FUN_0802C538
	ldr r1, [r7, #0x14]
	bl __udivsi3
	adds r6, r0, #0
	cmp r6, #0
	bge _08039806
	rsbs r6, r6, #0
_08039806:
	ldr r5, [r7, #0x38]
	ldr r0, [r7, #0x20]
	subs r5, r5, r0
	ldr r1, [r7, #0x3c]
	ldr r0, [r7, #0x24]
	subs r1, r1, r0
	mov r8, r1
	ldr r0, [r7, #0x28]
	ldr r1, [r7, #0x2c]
	bl FUN_0802C4C4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	adds r1, r6, #0
	bl __divsi3
	str r0, [r7, #0x28]
	mov r0, r8
	adds r1, r6, #0
	bl __divsi3
	str r0, [r7, #0x2c]
	adds r0, r4, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08039844
FUN_08039844: @ 0x08039844
	ldr r1, [r0, #0x18]
	str r1, [r0, #0x20]
	ldr r1, [r0, #0x1c]
	str r1, [r0, #0x24]
	movs r1, #0
	str r1, [r0, #0x28]
	str r1, [r0, #0x2c]
	adds r0, #0x78
	ldrh r2, [r0]
	movs r1, #1
	orrs r1, r2
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start FUN_08039860
FUN_08039860: @ 0x08039860
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r1, #0
	adds r4, r0, #0
	adds r6, r2, #0
	ldr r0, _08039888 @ => 0x03004720
	ldr r0, [r0]
	cmp r0, #0xd
	beq _08039884
	mov r0, sp
	bl FUN_0804708C
	ldr r1, [sp]
	cmp r4, r1
	bhi _08039884
	ldr r0, [sp, #4]
	cmp r5, r0
	bls _0803988C
_08039884:
	movs r0, #0
	b _080398BE
	.align 2, 0
_08039888: .4byte gUnk_03004720
_0803988C:
	lsrs r0, r4, #5
	lsrs r2, r5, #5
	asrs r1, r1, #5
	muls r1, r2, r1
	adds r0, r0, r1
	ldr r1, _080398C8 @ => 0x03002508
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	lsls r3, r3, #4
	lsrs r2, r4, #3
	movs r0, #3
	ands r2, r0
	lsrs r0, r5, #1
	movs r1, #0xc
	ands r0, r1
	orrs r2, r0
	adds r3, r3, r2
	ldr r0, _080398CC @ => 0x03002504
	ldr r0, [r0]
	adds r0, r0, r3
	ldrb r0, [r0]
	lsrs r0, r0, #6
	adds r0, r0, r6
_080398BE:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080398C8: .4byte gUnk_03002508
_080398CC: .4byte gUnk_03002504

	thumb_func_start FUN_080398D0
FUN_080398D0: @ 0x080398D0
	adds r0, r1, #0
	bx lr

	thumb_func_start FUN_080398D4
FUN_080398D4: @ 0x080398D4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r2, #0
	adds r5, r1, #0
	ldr r0, [r7, #0x28]
	adds r1, r0, #0
	muls r1, r5, r1
	ldr r0, [r7, #0x2c]
	muls r0, r6, r0
	adds r1, r1, r0
	cmp r1, #0
	ble _080398F2
	lsls r3, r5, #0xe
	lsls r4, r6, #0xe
	b _08039902
_080398F2:
	cmp r1, #0
	blt _080398FA
	movs r0, #1
	b _0803990C
_080398FA:
	lsls r0, r5, #0xe
	rsbs r3, r0, #0
	lsls r0, r6, #0xe
	rsbs r4, r0, #0
_08039902:
	adds r0, r7, #0
	adds r2, r4, #0
	adds r1, r3, #0
	bl FUN_08039344
_0803990C:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08039914
FUN_08039914: @ 0x08039914
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r0, #5
	bl FUN_080012D8
	adds r7, r0, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl FUN_08001728
	movs r1, #0
	movs r0, #5
	strh r0, [r7, #8]
	mov r0, r8
	strh r0, [r7, #0xa]
	movs r2, #0xb2
	lsls r2, r2, #1
	adds r0, r7, r2
	mov r2, r8
	strh r2, [r0]
	ldr r2, _08039994 @ => 0x0000011F
	adds r0, r7, r2
	strb r1, [r0]
	strb r4, [r7, #0x12]
	ldr r1, _08039998 @ => CastAnimTable
	mov r2, r8
	lsls r0, r2, #1
	add r0, r8
	lsls r0, r0, #2
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r7, #0x14]
	ldr r0, _0803999C @ => 0x1005045D
	str r0, [r7, #0xc]
	ldr r0, _080399A0 @ => FUN_08001EBC
	str r0, [r7, #0x64]
	adds r0, r7, #0
	bl FUN_0803A15C
	adds r0, r7, #0
	movs r1, #4
	bl FUN_08001F20
	ldr r0, _080399A4 @ => FUN_08039B64
	str r0, [r7, #0x50]
	ldr r0, _080399A8 @ => FUN_0803A1B8
	str r0, [r7, #0x54]
	mov r0, r8
	subs r0, #3
	cmp r0, #3
	bhi _080399B0
	adds r1, r7, #0
	adds r1, #0x98
	ldr r0, _080399AC @ => FUN_08015130
	b _080399BC
	.align 2, 0
_08039994: .4byte 0x0000011F
_08039998: .4byte CastAnimTable
_0803999C: .4byte 0x1005045D
_080399A0: .4byte FUN_08001EBC
_080399A4: .4byte FUN_08039B64
_080399A8: .4byte FUN_0803A1B8
_080399AC: .4byte FUN_08015130
_080399B0:
	mov r0, r8
	cmp r0, #0xc
	bls _080399BE
	adds r1, r7, #0
	adds r1, #0x98
	ldr r0, _080399E8 @ => FUN_0801509C
_080399BC:
	str r0, [r1]
_080399BE:
	adds r0, r7, #0
	bl FUN_0803977C
	mov r1, r8
	cmp r1, #2
	bhi _080399F0
	ldr r0, _080399EC @ => 0x08069CE4
	add r0, r8
	ldrb r0, [r0]
	movs r1, #0x91
	lsls r1, r1, #1
	adds r2, r7, r1
	movs r1, #0
	strb r0, [r2]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r7, r2
	str r1, [r0]
	bl FUN_08008C60
	b _08039A16
	.align 2, 0
_080399E8: .4byte FUN_0801509C
_080399EC: .4byte ROMREF_08069CE4
_080399F0:
	ldr r0, _08039A08 @ => 0x03003DF0
	movs r1, #0xfe
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r8, r0
	bne _08039A0C
	movs r2, #0x91
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #0x15
	b _08039A14
	.align 2, 0
_08039A08: .4byte gUnk_03003DF0
_08039A0C:
	movs r0, #0x91
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #0x20
_08039A14:
	strb r0, [r1]
_08039A16:
	movs r1, #0x94
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, _08039A88 @ => 0x08069CE4
	str r1, [r0]
	movs r2, #0x91
	lsls r2, r2, #1
	adds r0, r7, r2
	ldrb r1, [r0]
	adds r0, r7, #0
	bl FUN_08001FB0
	adds r0, r7, #0
	bl FUN_08039C00
	mov r0, r8
	bl FUN_0803A834
	mov r0, r8
	cmp r0, #0xd
	bne _08039A7C
	ldr r0, _08039A8C @ => 0x03004720
	ldr r0, [r0]
	cmp r0, #1
	bne _08039A7C
	movs r0, #0x36
	bl FUN_080012D8
	adds r5, r0, #0
	cmp r5, #0
	beq _08039A7C
	ldr r0, _08039A90 @ => 0x00040019
	str r0, [r5, #0xc]
	movs r4, #0
	strh r4, [r5, #0xa]
	adds r0, r5, #0
	movs r1, #2
	bl FUN_08001FB0
	ldr r0, _08039A94 @ => FUN_08039DC0
	str r0, [r5, #0x50]
	str r7, [r5, #0x58]
	str r4, [r5, #0x64]
	ldr r1, _08039A98 @ => 0x0806A2DC
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, _08039A9C @ => 0x0806A2D8
	adds r0, r5, #0
	bl FUN_0803EF14
_08039A7C:
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08039A88: .4byte ROMREF_08069CE4
_08039A8C: .4byte gUnk_03004720
_08039A90: .4byte 0x00040019
_08039A94: .4byte FUN_08039DC0
_08039A98: .4byte ROMREF_0806A2DC
_08039A9C: .4byte ROMREF_0806A2D8

	thumb_func_start FUN_08039AA0
FUN_08039AA0: @ 0x08039AA0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x34
	mov sb, r0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	movs r0, #0
	mov r8, r0
	movs r0, #0xa
	str r0, [sp]
	movs r0, #0x1b
	movs r1, #0
	movs r2, #0
	add r3, sp, #4
	bl FUN_08001DB4
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _08039B4E
	movs r5, #0
	movs r2, #0
	cmp r8, r3
	bhs _08039AFE
	ldr r1, [sp, #4]
	movs r6, #0x98
	lsls r6, r6, #1
	ldrb r0, [r6, r1]
	b _08039AF8
_08039ADE:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r3
	bhs _08039AFE
	lsls r0, r2, #2
	add r0, sp
	adds r0, #4
	ldr r1, [r0]
	movs r6, #0x98
	lsls r6, r6, #1
	adds r0, r1, r6
	ldrb r0, [r0]
_08039AF8:
	cmp r0, r4
	bne _08039ADE
	adds r5, r1, #0
_08039AFE:
	cmp r5, #0
	beq _08039B4E
	movs r0, #0x1a
	ldrsh r1, [r5, r0]
	ldr r2, _08039B60 @ => 0x00000131
	adds r0, r5, r2
	movs r3, #0
	ldrsb r3, [r0, r3]
	subs r0, r1, r3
	movs r6, #0x1e
	ldrsh r4, [r5, r6]
	adds r2, #1
	adds r5, r5, r2
	movs r2, #0
	ldrsb r2, [r5, r2]
	subs r5, r4, r2
	adds r1, r1, r3
	adds r4, r4, r2
	bl FUN_080424F8
	str r0, [sp, #0x2c]
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_080424F8
	str r0, [sp, #0x30]
	movs r0, #7
	bl FUN_0804254C
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r6, [sp, #0x2c]
	lsls r2, r6, #0x10
	ldr r0, [sp, #0x30]
	lsls r3, r0, #0x10
	mov r0, sb
	bl FUN_08039914
	mov r8, r0
_08039B4E:
	mov r0, r8
	add sp, #0x34
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08039B60: .4byte 0x00000131

	thumb_func_start FUN_08039B64
FUN_08039B64: @ 0x08039B64
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08039B7A
	adds r0, r4, #0
	bl FUN_080040DC
_08039B7A:
	adds r0, r4, #0
	bl FUN_08039C00
	ldr r0, [r4, #0x58]
	cmp r0, #0
	beq _08039B94
	ldr r0, [r0, #0xc]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08039B94
	movs r0, #0
	str r0, [r4, #0x58]
_08039B94:
	ldrh r0, [r4, #0xa]
	subs r0, #0xd
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x19
	bhi _08039BE0
	ldr r0, [r4, #0x58]
	cmp r0, #0
	beq _08039BE0
	ldrh r0, [r0, #0xa]
	cmp r0, #0
	bne _08039BB6
	ldrh r0, [r4, #0xa]
	bl FUN_0803B3E4
	cmp r0, #0
	beq _08039BC6
_08039BB6:
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08039BE0
_08039BC6:
	ldr r0, [r4, #0x58]
	movs r1, #1
	bl FUN_08001FB0
	movs r0, #0
	str r0, [r4, #0x58]
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0xdf
	orrs r0, r1
	strb r0, [r2]
_08039BE0:
	adds r0, r4, #0
	movs r1, #4
	bl FUN_080017D4
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl FUN_0803977C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08039C00
FUN_08039C00: @ 0x08039C00
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08039C32
	adds r0, r5, #0
	adds r0, #0xd8
	ldrh r0, [r0]
	cmp r0, #0xa
	beq _08039C24
	cmp r0, #8
	bne _08039C2C
_08039C24:
	adds r0, r5, #0
	bl FUN_08001824
	b _08039C32
_08039C2C:
	adds r0, r5, #0
	bl FUN_08001848
_08039C32:
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #0x16
	ands r0, r1
	cmp r0, #0
	beq _08039D1A
	movs r0, #0x14
	ands r0, r1
	cmp r0, #0
	beq _08039D12
	adds r0, r5, #0
	adds r0, #0xd8
	ldrb r4, [r5, #0xa]
	ldrb r6, [r0]
	mov r7, sp
	add r0, sp, #4
	mov r8, r0
	cmp r4, #0xe
	bne _08039C6C
	bl FUN_08021320
	cmp r0, #0
	bne _08039C6C
	ldr r0, _08039C68 @ => ToiletBurpleAnimTable
	b _08039C8E
	.align 2, 0
_08039C68: .4byte ToiletBurpleAnimTable
_08039C6C:
	cmp r4, #0xd
	bne _08039C84
	movs r0, #0xae
	lsls r0, r0, #1
	bl FUN_080213F8
	cmp r0, #1
	bne _08039C84
	ldr r0, _08039C80 @ => SpecialEmperorAnimTable
	b _08039C8E
	.align 2, 0
_08039C80: .4byte SpecialEmperorAnimTable
_08039C84:
	ldr r1, _08039C98 @ => CastAnimTable
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
_08039C8E:
	ldr r2, [r0]
	movs r1, #0
	ldrb r0, [r2]
	b _08039CAC
	.align 2, 0
_08039C98: .4byte CastAnimTable
_08039C9C:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0]
_08039CAC:
	cmp r0, #0xd0
	beq _08039CD0
	cmp r0, r6
	bne _08039C9C
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0xd0
	beq _08039CD0
	ldr r0, [r1, #4]
	str r0, [r7]
	ldr r0, [r1, #8]
	mov r1, r8
	str r0, [r1]
	movs r0, #1
	b _08039CD2
_08039CD0:
	movs r0, #0
_08039CD2:
	cmp r0, #1
	bne _08039D12
	ldr r1, _08039D28 @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [sp]
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_080015B8
	ldr r1, [sp, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	ldr r0, [r5, #0xc]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5, #0xc]
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r2, r5, r0
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r5, #0xc]
	ldr r1, _08039D2C @ => 0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #0xc]
_08039D12:
	adds r0, r5, #0
	movs r1, #4
	bl FUN_080017D4
_08039D1A:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039D28: .4byte ROMREF_0805A270
_08039D2C: .4byte 0xFFBFFFFF

	thumb_func_start FUN_08039D30
FUN_08039D30: @ 0x08039D30
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r1, #0
	bge _08039D48
	ldr r0, _08039D44 @ => 0x0808DD9C
	movs r1, #0
	movs r2, #0
	b _08039D52
	.align 2, 0
_08039D44: .4byte ROMREF_0808DD9C
_08039D48:
	cmp r1, #0
	ble _08039D60
	ldr r0, _08039D5C @ => 0x0808DD98
	movs r1, #0
	movs r2, #1
_08039D52:
	bl FUN_0803F248
	adds r4, r0, #0
	b _08039D62
	.align 2, 0
_08039D5C: .4byte ROMREF_0808DD98
_08039D60:
	movs r4, #0
_08039D62:
	cmp r4, #0
	beq _08039DB0
	str r5, [r4, #8]
	ldr r0, [r5, #0x18]
	str r0, [r4, #0x18]
	ldr r0, [r5, #0x1c]
	ldr r1, _08039DB8 @ => 0xFFC40000
	adds r0, r0, r1
	str r0, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x3a
	movs r3, #0
	movs r0, #3
	strb r0, [r1]
	ldr r0, [r4, #0x30]
	ldr r1, _08039DBC @ => 0x0000248A
	orrs r0, r1
	str r0, [r4, #0x30]
	movs r2, #0
	movs r0, #0x3c
	strh r0, [r4, #0x2a]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #1
	strb r0, [r1]
	strh r0, [r4, #0x3e]
	strh r3, [r4, #0x34]
	adds r0, r4, #0
	adds r0, #0x3b
	strb r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x20]
	adds r1, #4
	movs r0, #5
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x14
	strb r0, [r1]
_08039DB0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08039DB8: .4byte 0xFFC40000
_08039DBC: .4byte 0x0000248A

	thumb_func_start FUN_08039DC0
FUN_08039DC0: @ 0x08039DC0
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r1, [r0]
	cmp r1, #1
	beq _08039E46
	cmp r1, #2
	bne _08039E54
	ldr r2, [r4, #0x58]
	ldr r0, [r2, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _08039DEA
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08001FB0
	b _08039E54
_08039DEA:
	adds r0, r2, #0
	movs r1, #0
	mov r2, sp
	bl FUN_08001A84
	ldr r1, [sp]
	ldr r2, [sp, #4]
	adds r0, r4, #0
	bl FUN_08001728
	ldr r0, [r4, #0x58]
	adds r0, #0xa9
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0xa9
	movs r1, #0xc
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r1, [r4, #0x58]
	ldrb r0, [r1, #0x12]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08039E34
	ldr r0, [r1, #0x70]
	subs r0, #1
	str r0, [r4, #0x70]
	str r0, [r4, #0x68]
	ldr r0, [r1, #0x74]
	adds r0, #1
	b _08039E40
_08039E34:
	ldr r0, [r1, #0x70]
	adds r0, #1
	str r0, [r4, #0x70]
	str r0, [r4, #0x68]
	ldr r0, [r1, #0x74]
	subs r0, #1
_08039E40:
	str r0, [r4, #0x74]
	str r0, [r4, #0x6c]
	b _08039E54
_08039E46:
	ldr r0, [r4, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x82
	orrs r0, r1
	str r0, [r4, #0xc]
_08039E54:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_08039E5C
FUN_08039E5C: @ 0x08039E5C
	bx lr
	.align 2, 0

	thumb_func_start FUN_08039E60
FUN_08039E60: @ 0x08039E60
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08009B04
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	ldr r1, _08039E9C @ => 0x030043A0
	ldr r1, [r1]
	ldr r2, _08039EA0 @ => 0x03003DF0
	bl FUN_0803A444
	cmp r0, #1
	bne _08039EA4
	ldrb r0, [r4, #8]
	ldrb r1, [r4, #9]
	movs r3, #4
	ldrsh r2, [r4, r3]
	lsls r2, r2, #0x10
	movs r5, #6
	ldrsh r3, [r4, r5]
	lsls r3, r3, #0x10
	bl FUN_08039914
	adds r1, r0, #0
	movs r0, #0
	str r0, [r1, #0x58]
	b _08039EA6
	.align 2, 0
_08039E9C: .4byte gUnk_030043A0
_08039EA0: .4byte gUnk_03003DF0
_08039EA4:
	movs r1, #0
_08039EA6:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08039EB0
FUN_08039EB0: @ 0x08039EB0
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r4, r1, #0
	adds r0, #0xd8
	ldrh r3, [r0]
	cmp r1, r3
	beq _08039EE2
	strh r1, [r0]
	ldr r0, [r2, #0xc]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0xc]
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r3, r2, r0
	ldrb r1, [r3]
	movs r0, #4
	orrs r0, r1
	strb r0, [r3]
	ldr r0, [r2, #0xc]
	ldr r1, _08039F04 @ => 0xFFBFFFFF
	ands r0, r1
	str r0, [r2, #0xc]
_08039EE2:
	ldrh r0, [r2, #0xa]
	cmp r0, #0xd
	bne _08039EFE
	cmp r4, #0xed
	bne _08039EFE
	adds r0, r2, #0
	movs r1, #1
	movs r2, #0x1d
	movs r3, #0
	bl FUN_0802064C
	movs r1, #0x32
	bl FUN_080208A0
_08039EFE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08039F04: .4byte 0xFFBFFFFF

	thumb_func_start FUN_08039F08
FUN_08039F08: @ 0x08039F08
	push {lr}
	movs r1, #0
	bl FUN_08039AA0
	pop {r1}
	bx r1

	thumb_func_start FUN_08039F14
FUN_08039F14: @ 0x08039F14
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0
	bl FUN_08039AA0
	adds r4, r0, #0
	cmp r4, #0
	beq _08039F4A
	movs r0, #0x91
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x30
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0x30
	bl FUN_08001FB0
	movs r0, #0x93
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0xe1
	lsls r0, r0, #4
	strh r0, [r1]
	ldr r0, _08039F54 @ => 0x03003DF0
	ldr r1, _08039F58 @ => 0x000003F9
	adds r0, r0, r1
	strb r5, [r0]
_08039F4A:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08039F54: .4byte gUnk_03003DF0
_08039F58: .4byte 0x000003F9

	thumb_func_start FUN_08039F5C
FUN_08039F5C: @ 0x08039F5C
	movs r0, #0
	bx lr

	thumb_func_start FUN_08039F60
FUN_08039F60: @ 0x08039F60
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x24
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	movs r0, #5
	str r0, [sp]
	movs r2, #0
	add r3, sp, #4
	bl FUN_08001DB4
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r2, #0
	add r0, sp, #0x18
	mov r8, r0
	cmp r2, r3
	bhs _08039FA6
	movs r4, #2
_08039F8E:
	lsls r0, r2, #2
	add r0, sp
	adds r0, #4
	ldr r1, [r0]
	ldr r0, [r1, #0xc]
	orrs r0, r4
	str r0, [r1, #0xc]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r3
	blo _08039F8E
_08039FA6:
	adds r0, r7, #0
	mov r1, r8
	bl FUN_08039FF0
	cmp r0, #1
	bne _08039FD0
	ldr r0, _08039FCC @ => 0x03004398
	ldr r0, [r0]
	add r4, sp, #0x1c
	mov r1, r8
	adds r2, r4, #0
	bl FUN_08053954
	ldr r0, [sp, #0x1c]
	lsls r5, r0, #0x10
	ldr r0, [r4, #4]
	lsls r6, r0, #0x10
	b _08039FD4
	.align 2, 0
_08039FCC: .4byte gUnk_03004398
_08039FD0:
	ldr r5, [r7, #0x18]
	ldr r6, [r7, #0x1c]
_08039FD4:
	ldrb r1, [r7, #0x12]
	mov r0, sb
	adds r2, r5, #0
	adds r3, r6, #0
	bl FUN_08039914
	add sp, #0x24
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08039FF0
FUN_08039FF0: @ 0x08039FF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sb, r1
	ldr r1, [r0, #0x1c]
	ldr r0, [r0, #0x18]
	asrs r2, r0, #0x10
	str r2, [sp]
	asrs r0, r1, #0x10
	str r0, [sp, #4]
	ldr r5, _0803A05C @ => 0x03004398
	ldr r0, [r5]
	add r4, sp, #8
	mov r1, sp
	adds r2, r4, #0
	bl FUN_0805374C
	movs r0, #0
	mov r8, r0
	movs r6, #0
	mov sl, r4
	add r4, sp, #0xc
	adds r7, r4, #0
_0803A024:
	ldr r0, [r5]
	mov r1, sl
	adds r2, r7, #0
	adds r3, r6, #0
	bl FUN_08049A74
	ldr r0, [r5]
	adds r1, r7, #0
	bl FUN_080497F4
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	bne _0803A060
	ldr r0, [r5]
	adds r1, r4, #0
	bl FUN_080496EC
	movs r1, #0x3d
	ands r1, r0
	cmp r1, #0
	bne _0803A060
	movs r1, #1
	mov r8, r1
	ldr r0, [sp, #0xc]
	mov r1, sb
	str r0, [r1]
	b _0803A06A
	.align 2, 0
_0803A05C: .4byte gUnk_03004398
_0803A060:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #7
	bls _0803A024
_0803A06A:
	mov r0, r8
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_0803A07C
FUN_0803A07C: @ 0x0803A07C
	push {r4, r5, r6, r7, lr}
	adds r6, r2, #0
	adds r7, r3, #0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	cmp r4, #0xe
	bne _0803A0A0
	bl FUN_08021320
	cmp r0, #0
	bne _0803A0A0
	ldr r0, _0803A09C @ => ToiletBurpleAnimTable
	b _0803A0C2
	.align 2, 0
_0803A09C: .4byte ToiletBurpleAnimTable
_0803A0A0:
	cmp r4, #0xd
	bne _0803A0B8
	movs r0, #0xae
	lsls r0, r0, #1
	bl FUN_080213F8
	cmp r0, #1
	bne _0803A0B8
	ldr r0, _0803A0B4 @ => 0x0807201C
	b _0803A0C2
	.align 2, 0
_0803A0B4: .4byte SpecialEmperorAnimTable
_0803A0B8:
	ldr r1, _0803A0CC @ => CastAnimTable
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
_0803A0C2:
	ldr r2, [r0]
	movs r1, #0
	ldrb r0, [r2]
	b _0803A0E0
	.align 2, 0
_0803A0CC: .4byte CastAnimTable
_0803A0D0:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0]
_0803A0E0:
	cmp r0, #0xd0
	beq _0803A0F6
	cmp r0, r5
	bne _0803A0D0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0xd0
	bne _0803A0FA
_0803A0F6:
	movs r0, #0
	b _0803A104
_0803A0FA:
	ldr r0, [r1, #4]
	str r0, [r6]
	ldr r0, [r1, #8]
	str r0, [r7]
	movs r0, #1
_0803A104:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0803A10C
FUN_0803A10C: @ 0x0803A10C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	ldr r2, _0803A13C @ => CastAnimTable
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	movs r2, #0
	ldrb r0, [r1]
	cmp r0, #0xd0
	beq _0803A154
_0803A12A:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, r3
	bne _0803A140
	movs r0, #1
	b _0803A156
	.align 2, 0
_0803A13C: .4byte CastAnimTable
_0803A140:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0xd0
	bne _0803A12A
_0803A154:
	movs r0, #0
_0803A156:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0803A15C
FUN_0803A15C: @ 0x0803A15C
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0803EF58
	ldrh r0, [r4, #0xa]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0803A184 @ => 0x08071E40
	adds r1, r1, r0
	adds r0, r4, #0
	bl FUN_08048E24
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_0803EF14
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803A184: .4byte CastAnimTable + 4

	thumb_func_start FUN_0803A188
FUN_0803A188: @ 0x0803A188
	push {lr}
	sub sp, #8
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp]
	movs r0, #5
	movs r1, #0xd
	movs r2, #0
	add r3, sp, #4
	bl FUN_08001DB4
	ldr r0, [sp, #4]
	bl FUN_0803EF3C
	ldr r0, [sp, #4]
	ldr r1, _0803A1B4 @ => 0x08069CE0
	bl FUN_0803EEE8
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_0803A1B4: .4byte ROMREF_08069CE0

	thumb_func_start FUN_0803A1B8
FUN_0803A1B8: @ 0x0803A1B8
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0xa]
	bl FUN_0803A868
	ldr r0, _0803A1DC @ => 0x03003DF0
	ldr r2, _0803A1E0 @ => 0x000003F9
	adds r1, r0, r2
	ldrb r0, [r1]
	ldrh r4, [r4, #0xa]
	cmp r0, r4
	bne _0803A1D4
	movs r0, #0x27
	strb r0, [r1]
_0803A1D4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803A1DC: .4byte gUnk_03003DF0
_0803A1E0: .4byte 0x000003F9

	thumb_func_start FUN_0803A1E4
FUN_0803A1E4: @ 0x0803A1E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x28
	mov r8, r3
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	movs r0, #0
	mov sb, r0
	movs r6, #0
	movs r5, #0
	cmp sb, r4
	bhs _0803A22C
	movs r7, #0x98
	lsls r7, r7, #1
_0803A208:
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r2, r7
	ldrb r0, [r0]
	cmp r0, r3
	bne _0803A222
	lsls r0, r6, #2
	add r0, sp
	str r2, [r0]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0803A222:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r4
	blo _0803A208
_0803A22C:
	cmp r6, #0
	bne _0803A26C
	movs r5, #0
	cmp r6, r4
	bhs _0803A25E
	movs r3, #0x98
	lsls r3, r3, #1
_0803A23A:
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0xb
	bhi _0803A254
	lsls r0, r6, #2
	add r0, sp
	str r2, [r0]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0803A254:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r4
	blo _0803A23A
_0803A25E:
	cmp r6, #0
	bne _0803A26C
	lsls r2, r4, #2
	mov r0, sp
	bl FUN_0802CBAC
	adds r6, r4, #0
_0803A26C:
	mov r2, r8
	cmp r2, #0
	beq _0803A2AC
	ldr r7, _0803A2A8 @ => 0x7FFFFFFF
	movs r5, #0
	cmp r5, r6
	bhs _0803A2C4
_0803A27A:
	mov r3, r8
	ldr r0, [r3]
	ldr r1, [r3, #4]
	lsls r2, r5, #2
	mov r3, sp
	adds r4, r3, r2
	ldr r2, [r4]
	ldr r3, [r2, #0x1c]
	ldr r2, [r2, #0x18]
	bl FUN_0802C538
	cmp r0, r7
	bge _0803A29A
	adds r7, r0, #0
	ldr r4, [r4]
	mov sb, r4
_0803A29A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r6
	blo _0803A27A
	b _0803A2C4
	.align 2, 0
_0803A2A8: .4byte 0x7FFFFFFF
_0803A2AC:
	cmp r6, #0
	beq _0803A2C4
	subs r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0804254C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	add r0, sp
	ldr r0, [r0]
	mov sb, r0
_0803A2C4:
	mov r0, sb
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_0803A2D4
FUN_0803A2D4: @ 0x0803A2D4
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
	movs r3, #6
	ldrsh r2, [r4, r3]
	adds r0, r6, #0
	bl FUN_08001734
	ldr r0, [r4]
	movs r2, #0
	strh r0, [r6, #8]
	ldrb r0, [r4, #0xa]
	strh r0, [r6, #0xa]
	movs r0, #0x88
	lsls r0, r0, #0xa
	str r0, [r6, #0xc]
	ldrb r1, [r4, #8]
	movs r3, #0x98
	lsls r3, r3, #1
	adds r0, r6, r3
	strb r1, [r0]
	ldrb r0, [r4, #9]
	adds r3, #1
	adds r1, r6, r3
	strb r0, [r1]
	str r2, [r6, #0x50]
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_0803A32C
FUN_0803A32C: @ 0x0803A32C
	movs r0, #1
	bx lr

	thumb_func_start FUN_0803A330
FUN_0803A330: @ 0x0803A330
	push {lr}
	ldr r2, [r0, #0x34]
	ldr r0, [r2, #0xc]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0803A346
	adds r0, r2, #0
	movs r1, #1
	bl FUN_08001FB0
_0803A346:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0803A34C
FUN_0803A34C: @ 0x0803A34C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r6, r1, #0
	ldr r0, _0803A3FC @ => 0x0300258C
	ldr r0, [r0]
	cmp r0, #0
	beq _0803A430
	movs r4, #0
	ldr r5, _0803A400 @ => 0x03002590
_0803A362:
	lsls r0, r4, #3
	adds r1, r0, r5
	ldrb r0, [r1, #5]
	cmp r0, #1
	bne _0803A382
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803A382
	adds r0, r1, #0
	movs r1, #0
	movs r2, #8
	bl FUN_0802CB40
_0803A382:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #9
	bls _0803A362
	ldr r0, _0803A404 @ => 0x03002588
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0803A430
	movs r7, #0
	movs r5, #0xd
_0803A3A0:
	adds r0, r5, #0
	bl FUN_0803AA44
	cmp r0, #1
	beq _0803A420
	ldr r0, _0803A408 @ => 0x09FB667C
	adds r1, r5, #0
	subs r1, #0xd
	lsls r4, r1, #2
	adds r0, r4, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _0803A420
	adds r0, r5, #0
	bl FUN_0803AA00
	cmp r0, #0
	bne _0803A420
	adds r0, r5, #0
	adds r1, r6, #0
	bl FUN_0803A4F4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r1, r8
	bne _0803A410
	ldr r0, _0803A40C @ => 0x03002520
	adds r0, r4, r0
	ldr r0, [r0]
	cmp r0, #1
	beq _0803A420
	cmp r7, #0
	bne _0803A420
	adds r0, r5, #0
	adds r1, r6, #0
	bl FUN_0803A570
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl FUN_0803A958
	movs r7, #1
	b _0803A420
_0803A3FC: .4byte gUnk_0300258C
_0803A400: .4byte gUnk_03002590
_0803A404: .4byte gUnk_03002588
_0803A408: .4byte ROMREF_09FB667C
_0803A40C: .4byte gUnk_03002520
_0803A410:
	ldr r0, _0803A43C @ => 0x03002520
	adds r0, r4, r0
	ldr r0, [r0]
	cmp r0, #1
	bne _0803A420
	adds r0, r5, #0
	bl FUN_0803A678
_0803A420:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x26
	bls _0803A3A0
	ldr r1, _0803A440 @ => 0x03002588
	movs r0, #0x96
	str r0, [r1]
_0803A430:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A43C: .4byte gUnk_03002520
_0803A440: .4byte gUnk_03002588

	thumb_func_start FUN_0803A444
FUN_0803A444: @ 0x0803A444
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r0, _0803A4A8 @ => 0x0300258C
	ldr r0, [r0]
	cmp r0, #0
	beq _0803A4EC
	movs r2, #0
	ldr r4, _0803A4AC @ => 0x03002590
_0803A458:
	lsls r0, r2, #3
	adds r1, r0, r4
	ldrb r0, [r1, #2]
	cmp r0, r3
	bne _0803A468
	ldrh r0, [r1]
	cmp r0, #0
	bne _0803A4E2
_0803A468:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #9
	bls _0803A458
	adds r0, r3, #0
	subs r0, #0xd
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r2, _0803A4B0 @ => 0x03003DF0
	movs r4, #0xfe
	lsls r4, r4, #2
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r3, r0
	bne _0803A4B4
	adds r0, r2, #0
	adds r0, #0x34
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08029724
	cmp r0, #1
	bne _0803A4E2
	ldrb r0, [r5, #2]
	subs r0, #9
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi _0803A4EC
	b _0803A4E2
	.align 2, 0
_0803A4A8: .4byte gUnk_0300258C
_0803A4AC: .4byte gUnk_03002590
_0803A4B0: .4byte gUnk_03003DF0
_0803A4B4:
	cmp r3, #0xc
	bls _0803A4EC
	ldr r0, _0803A4E8 @ => 0x09FB667C
	lsls r1, r1, #2
	adds r4, r1, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0803A4EC
	bl FUN_08021320
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #2
	ldrsb r2, [r5, r2]
	ldr r3, [r4]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r1, r1, r3
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, r6
	beq _0803A4EC
_0803A4E2:
	movs r0, #0
	b _0803A4EE
	.align 2, 0
_0803A4E8: .4byte ROMREF_09FB667C
_0803A4EC:
	movs r0, #1
_0803A4EE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_0803A4F4
FUN_0803A4F4: @ 0x0803A4F4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r2, r0, #0
	adds r5, r1, #0
	subs r0, #0xd
	lsls r0, r0, #0x18
	ldr r1, _0803A530 @ => 0x09FB667C
	lsrs r0, r0, #0x16
	adds r6, r0, r1
	ldr r0, [r6]
	cmp r0, #0
	beq _0803A526
	ldr r0, _0803A534 @ => 0x03003DF0
	movs r1, #0xfe
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r2, r0
	bne _0803A540
	ldrb r0, [r5, #2]
	subs r0, #9
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi _0803A538
_0803A526:
	mov r1, sp
	movs r0, #0x31
	strb r0, [r1]
	b _0803A564
	.align 2, 0
_0803A530: .4byte ROMREF_09FB667C
_0803A534: .4byte gUnk_03003DF0
_0803A538:
	mov r0, sp
	bl FUN_08029750
	b _0803A564
_0803A540:
	adds r0, r5, #0
	bl FUN_080143F4
	bl FUN_08021320
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r4, sp
	movs r2, #2
	ldrsb r2, [r5, r2]
	ldr r3, [r6]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r1, r1, r3
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r4]
_0803A564:
	mov r0, sp
	ldrb r0, [r0]
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_0803A570
FUN_0803A570: @ 0x0803A570
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	adds r7, r1, #0
	subs r0, #0xd
	lsls r0, r0, #0x18
	ldr r1, _0803A59C @ => 0x09FB667C
	lsrs r0, r0, #0x16
	adds r5, r0, r1
	ldr r0, [r5]
	cmp r0, #0
	beq _0803A594
	ldr r0, _0803A5A0 @ => 0x03003DF0
	movs r1, #0xfe
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r2, r0
	bne _0803A5A4
_0803A594:
	movs r0, #0x31
_0803A596:
	mov ip, r0
	b _0803A5EC
	.align 2, 0
_0803A59C: .4byte ROMREF_09FB667C
_0803A5A0: .4byte gUnk_03003DF0
_0803A5A4:
	ldrb r6, [r7, #2]
	adds r4, r6, #0
	bl FUN_08021320
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r1, #2
	ldrsb r1, [r7, r1]
	ldr r2, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r0, r0, r3
	ldrb r0, [r0]
	mov ip, r0
	mov r7, ip
	adds r2, r5, #0
_0803A5C8:
	cmp r4, #0
	beq _0803A5D4
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	b _0803A5D6
_0803A5D4:
	movs r4, #0x17
_0803A5D6:
	ldr r1, [r2]
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, r7
	bne _0803A596
	cmp r4, r6
	bne _0803A5C8
_0803A5EC:
	mov r0, ip
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_0803A5F4
FUN_0803A5F4: @ 0x0803A5F4
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	adds r7, r1, #0
	subs r0, #0xd
	lsls r0, r0, #0x18
	ldr r1, _0803A620 @ => 0x09FB667C
	lsrs r0, r0, #0x16
	adds r5, r0, r1
	ldr r0, [r5]
	cmp r0, #0
	beq _0803A618
	ldr r0, _0803A624 @ => 0x03003DF0
	movs r1, #0xfe
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r2, r0
	bne _0803A628
_0803A618:
	movs r0, #0x31
_0803A61A:
	mov ip, r0
	b _0803A66E
	.align 2, 0
_0803A620: .4byte ROMREF_09FB667C
_0803A624: .4byte gUnk_03003DF0
_0803A628:
	ldrb r6, [r7, #2]
	adds r4, r6, #0
	bl FUN_08021320
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r1, #2
	ldrsb r1, [r7, r1]
	ldr r2, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r0, r0, r3
	ldrb r0, [r0]
	mov ip, r0
	mov r7, ip
	adds r2, r5, #0
_0803A64C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x17
	bls _0803A658
	movs r4, #0
_0803A658:
	ldr r1, [r2]
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, r7
	bne _0803A61A
	cmp r4, r6
	bne _0803A64C
_0803A66E:
	mov r0, ip
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0803A678
FUN_0803A678: @ 0x0803A678
	push {r4, r5, r6, lr}
	sub sp, #0x30
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	add r3, sp, #0x2c
	movs r0, #1
	str r0, [sp]
	movs r0, #5
	movs r2, #0
	bl FUN_08001DB4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803A6C2
	ldr r0, [sp, #0x2c]
	ldr r6, _0803A6C8 @ => 0x0000011F
	adds r0, r0, r6
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0803A6C2
	movs r0, #0xa
	str r0, [sp]
	movs r0, #0x1a
	movs r1, #0
	movs r2, #0
	add r3, sp, #4
	bl FUN_08001DB4
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _0803A6CC
_0803A6C2:
	movs r0, #0
	b _0803A710
	.align 2, 0
_0803A6C8: .4byte 0x0000011F
_0803A6CC:
	ldr r3, [sp, #0x2c]
	adds r3, #0x18
	adds r0, r4, #0
	add r1, sp, #4
	bl FUN_0803A1E4
	adds r3, r0, #0
	cmp r3, #0
	beq _0803A70E
	ldr r2, [sp, #0x2c]
	ldr r0, [r3, #0x18]
	ldr r1, [r3, #0x1c]
	str r0, [r2, #0x38]
	str r1, [r2, #0x3c]
	ldr r1, [sp, #0x2c]
	adds r1, r1, r6
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r3, r0
	ldrb r0, [r1]
	cmp r0, r4
	bne _0803A70E
	adds r1, r0, #0
	ldr r2, _0803A718 @ => 0x00000131
	adds r0, r3, r2
	ldrb r2, [r0]
	adds r0, r5, #0
	bl FUN_0803A71C
_0803A70E:
	movs r0, #1
_0803A710:
	add sp, #0x30
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803A718: .4byte 0x00000131

	thumb_func_start FUN_0803A71C
FUN_0803A71C: @ 0x0803A71C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r1, #0
	ldr r7, _0803A754 @ => 0x03002590
	movs r0, #0
	mov ip, r0
	movs r6, #0x96
	lsls r6, r6, #2
_0803A734:
	lsls r0, r1, #3
	adds r3, r0, r7
	ldrh r0, [r3]
	cmp r0, #0
	beq _0803A744
	ldrb r0, [r3, #2]
	cmp r0, r4
	bne _0803A758
_0803A744:
	strh r6, [r3]
	strb r4, [r3, #2]
	strb r5, [r3, #3]
	strb r2, [r3, #4]
	mov r0, ip
	strb r0, [r3, #5]
	b _0803A762
	.align 2, 0
_0803A754: .4byte gUnk_03002590
_0803A758:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #9
	bls _0803A734
_0803A762:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_0803A768
FUN_0803A768: @ 0x0803A768
	bx lr
	.align 2, 0

	thumb_func_start FUN_0803A76C
FUN_0803A76C: @ 0x0803A76C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r1
	adds r7, r2, #0
	subs r0, #0xd
	lsls r0, r0, #0x18
	ldr r1, _0803A790 @ => 0x09FB667C
	mov r8, r1
	lsrs r4, r0, #0x16
	adds r6, r4, r1
	ldr r0, [r6]
	cmp r0, #0
	bne _0803A794
	movs r0, #0
	b _0803A800
	.align 2, 0
_0803A790: .4byte ROMREF_09FB667C
_0803A794:
	ldr r0, _0803A7C0 @ => 0x03003DF0
	movs r5, #2
	ldrsb r5, [r0, r5]
	bl FUN_08021320
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	ldr r1, [r6]
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, r0, r1
	add r0, ip
	ldrb r0, [r0]
	mov r1, sb
	str r0, [r1]
	cmp r0, #0x31
	bne _0803A7C4
	movs r0, #0
	strb r0, [r7]
	b _0803A7FE
	.align 2, 0
_0803A7C0: .4byte gUnk_03003DF0
_0803A7C4:
	adds r2, r5, #0
	movs r0, #0
	strb r0, [r7]
	mov r6, r8
	adds r3, r4, #0
	b _0803A7DA
_0803A7D0:
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
	cmp r2, r5
	beq _0803A7FE
_0803A7DA:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	asrs r2, r0, #0x18
	cmp r2, #0x17
	ble _0803A7E6
	movs r2, #0
_0803A7E6:
	adds r0, r3, r6
	ldr r1, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r1
	add r0, ip
	ldrb r1, [r0]
	mov r4, sb
	ldr r0, [r4]
	cmp r1, r0
	beq _0803A7D0
_0803A7FE:
	movs r0, #1
_0803A800:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_0803A80C
FUN_0803A80C: @ 0x0803A80C
	push {lr}
	ldr r0, _0803A828 @ => 0x03002520
	movs r1, #0
	movs r2, #0x68
	bl FUN_0802CB40
	ldr r1, _0803A82C @ => 0x03002588
	movs r0, #0x96
	str r0, [r1]
	ldr r1, _0803A830 @ => 0x0300258C
	movs r0, #0
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803A828: .4byte gUnk_03002520
_0803A82C: .4byte gUnk_03002588
_0803A830: .4byte gUnk_0300258C

	thumb_func_start FUN_0803A834
FUN_0803A834: @ 0x0803A834
	push {r4, r5, lr}
	adds r4, r0, #0
	cmp r4, #0xc
	bls _0803A85A
	ldr r0, _0803A860 @ => 0x03004720
	ldr r5, [r0]
	cmp r5, #1
	bne _0803A85A
	bl FUN_08021320
	ldr r1, _0803A864 @ => 0x03002520
	adds r0, r4, #0
	subs r0, #0xd
	lsls r0, r0, #2
	adds r0, r0, r1
	str r5, [r0]
	adds r0, r4, #0
	bl FUN_0803A9B4
_0803A85A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803A860: .4byte gUnk_03004720
_0803A864: .4byte gUnk_03002520

	thumb_func_start FUN_0803A868
FUN_0803A868: @ 0x0803A868
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0xc
	bls _0803A88A
	ldr r0, _0803A890 @ => 0x03004720
	ldr r0, [r0]
	cmp r0, #1
	bne _0803A88A
	bl FUN_08021320
	ldr r0, _0803A894 @ => 0x03002520
	adds r1, r4, #0
	subs r1, #0xd
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
_0803A88A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803A890: .4byte gUnk_03004720
_0803A894: .4byte gUnk_03002520

	thumb_func_start FUN_0803A898
FUN_0803A898: @ 0x0803A898
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _0803A8AC @ => 0x0300258C
	ldr r0, [r0]
	cmp r0, #0
	bne _0803A8B0
	bl FUN_0803A9EC
	b _0803A8EC
	.align 2, 0
_0803A8AC: .4byte gUnk_0300258C
_0803A8B0:
	movs r5, #0
	ldr r6, _0803A8F4 @ => 0x03002590
_0803A8B4:
	lsls r0, r5, #3
	adds r2, r0, r6
	ldrb r1, [r2, #5]
	adds r4, r0, #0
	cmp r1, #1
	bne _0803A8CE
	ldrb r0, [r2, #3]
	cmp r0, r7
	bne _0803A8CE
	ldrb r0, [r2, #2]
	ldrb r1, [r2, #4]
	bl FUN_08039AA0
_0803A8CE:
	adds r1, r4, r6
	ldrh r0, [r1]
	cmp r0, #0
	beq _0803A8E2
	ldrb r0, [r1, #5]
	cmp r0, #0
	bne _0803A8E2
	ldrb r0, [r1, #2]
	bl FUN_0803A9B4
_0803A8E2:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #9
	bls _0803A8B4
_0803A8EC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A8F4: .4byte gUnk_03002590

	thumb_func_start FUN_0803A8F8
FUN_0803A8F8: @ 0x0803A8F8
	push {lr}
	ldr r1, _0803A908 @ => 0x0300258C
	movs r0, #0
	str r0, [r1]
	bl FUN_0803A9EC
	pop {r0}
	bx r0
	.align 2, 0
_0803A908: .4byte gUnk_0300258C

	thumb_func_start FUN_0803A90C
FUN_0803A90C: @ 0x0803A90C
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0xa]
	bl FUN_0803AA00
	adds r1, r0, #0
	cmp r1, #0
	beq _0803A92C
	movs r0, #1
	strb r0, [r1, #5]
	ldr r0, _0803A934 @ => 0x0000011F
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
_0803A92C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803A934: .4byte 0x0000011F

	thumb_func_start FUN_0803A938
FUN_0803A938: @ 0x0803A938
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0xa]
	bl FUN_0803A9B4
	ldr r0, _0803A954 @ => 0x0000011F
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803A954: .4byte 0x0000011F

	thumb_func_start FUN_0803A958
FUN_0803A958: @ 0x0803A958
	push {r4, r5, r6, lr}
	sub sp, #0x2c
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	movs r6, #0
	movs r0, #0xa
	str r0, [sp]
	movs r0, #0x1a
	movs r1, #0
	movs r2, #0
	add r3, sp, #4
	bl FUN_08001DB4
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _0803A980
	movs r0, #0
	b _0803A9AA
_0803A980:
	adds r0, r4, #0
	add r1, sp, #4
	movs r3, #0
	bl FUN_0803A1E4
	adds r4, r0, #0
	cmp r4, #0
	beq _0803A9A8
	bl FUN_0803EF8C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803A9A8
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x1c]
	adds r0, r5, #0
	movs r1, #4
	bl FUN_08039914
	adds r6, r0, #0
_0803A9A8:
	adds r0, r6, #0
_0803A9AA:
	add sp, #0x2c
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0803A9B4
FUN_0803A9B4: @ 0x0803A9B4
	push {r4, lr}
	adds r3, r0, #0
	movs r2, #0
	ldr r4, _0803A9D8 @ => 0x03002590
_0803A9BC:
	lsls r0, r2, #3
	adds r1, r0, r4
	ldrb r0, [r1, #2]
	cmp r0, r3
	bne _0803A9DC
	ldrh r0, [r1]
	cmp r0, #0
	beq _0803A9DC
	adds r0, r1, #0
	movs r1, #0
	movs r2, #8
	bl FUN_0802CB40
	b _0803A9E6
	.align 2, 0
_0803A9D8: .4byte gUnk_03002590
_0803A9DC:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #9
	bls _0803A9BC
_0803A9E6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_0803A9EC
FUN_0803A9EC: @ 0x0803A9EC
	push {lr}
	ldr r0, _0803A9FC @ => 0x03002590
	movs r1, #0
	movs r2, #0x50
	bl FUN_0802CB40
	pop {r0}
	bx r0
	.align 2, 0
_0803A9FC: .4byte gUnk_03002590

	thumb_func_start FUN_0803AA00
FUN_0803AA00: @ 0x0803AA00
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r5, #0
	movs r2, #0
	ldr r0, _0803AA1C @ => 0x03002590
	ldrh r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	beq _0803AA20
	ldrb r0, [r4, #2]
	cmp r0, r3
	bne _0803AA20
	adds r5, r4, #0
	b _0803AA3C
	.align 2, 0
_0803AA1C: .4byte gUnk_03002590
_0803AA20:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #9
	bhi _0803AA3C
	lsls r0, r2, #3
	adds r1, r0, r4
	ldrh r0, [r1]
	cmp r0, #0
	beq _0803AA20
	ldrb r0, [r1, #2]
	cmp r0, r3
	bne _0803AA20
	adds r5, r1, #0
_0803AA3C:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start FUN_0803AA44
FUN_0803AA44: @ 0x0803AA44
	movs r0, #0
	bx lr

	thumb_func_start FUN_0803AA48
FUN_0803AA48: @ 0x0803AA48
	push {r4, r5, r6, r7, lr}
	bl FUN_08042448
	movs r4, #0
	ldr r5, _0803AA9C @ => 0x03004810
	movs r3, #0
	adds r7, r5, #4
	adds r6, r5, #0
	adds r6, #0xd
_0803AA5A:
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r2, r1, r5
	strb r3, [r2]
	movs r0, #3
	strb r0, [r2, #1]
	strb r3, [r2, #2]
	strb r3, [r2, #0xc]
	adds r0, r5, #0
	adds r0, #8
	adds r0, r1, r0
	str r3, [r0]
	adds r0, r1, r7
	str r3, [r0]
	strb r3, [r2, #0x10]
	movs r2, #0
	adds r4, #1
_0803AA7E:
	adds r0, r2, r1
	adds r0, r0, r6
	strb r3, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #2
	bls _0803AA7E
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x19
	bls _0803AA5A
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803AA9C: .4byte gUnk_03004810

	thumb_func_start FUN_0803AAA0
FUN_0803AAA0: @ 0x0803AAA0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0
	ldr r7, _0803AB20 @ => 0x0300481D
	adds r5, r7, #0
	subs r5, #0xd
	movs r0, #0x10
	adds r0, r0, r5
	mov r8, r0
_0803AAB4:
	lsls r4, r6, #2
	adds r4, r4, r6
	lsls r4, r4, #2
	adds r0, r4, r7
	movs r1, #3
	bl FUN_08044644
	adds r0, r4, r5
	movs r1, #1
	bl FUN_08044644
	adds r0, r5, #1
	adds r0, r4, r0
	movs r1, #1
	bl FUN_08044644
	adds r0, r5, #2
	adds r0, r4, r0
	movs r1, #1
	bl FUN_08044644
	adds r0, r5, #0
	adds r0, #0xc
	adds r0, r4, r0
	movs r1, #1
	bl FUN_08044644
	adds r0, r5, #0
	adds r0, #8
	adds r0, r4, r0
	movs r1, #1
	bl FUN_08044644
	adds r0, r5, #4
	adds r0, r4, r0
	movs r1, #1
	bl FUN_08044644
	add r4, r8
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08044644
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x19
	bls _0803AAB4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803AB20: .4byte gUnk_0300481D

	thumb_func_start FUN_0803AB24
FUN_0803AB24: @ 0x0803AB24
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0
	ldr r7, _0803ABA4 @ => 0x0300481D
	adds r5, r7, #0
	subs r5, #0xd
	movs r0, #0x10
	adds r0, r0, r5
	mov r8, r0
_0803AB38:
	lsls r4, r6, #2
	adds r4, r4, r6
	lsls r4, r4, #2
	adds r0, r4, r7
	movs r1, #3
	bl FUN_08044558
	adds r0, r4, r5
	movs r1, #1
	bl FUN_08044558
	adds r0, r5, #1
	adds r0, r4, r0
	movs r1, #1
	bl FUN_08044558
	adds r0, r5, #2
	adds r0, r4, r0
	movs r1, #1
	bl FUN_08044558
	adds r0, r5, #0
	adds r0, #0xc
	adds r0, r4, r0
	movs r1, #1
	bl FUN_08044558
	adds r0, r5, #0
	adds r0, #8
	adds r0, r4, r0
	movs r1, #1
	bl FUN_08044558
	adds r0, r5, #4
	adds r0, r4, r0
	movs r1, #1
	bl FUN_08044558
	add r4, r8
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08044558
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x19
	bls _0803AB38
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803ABA4: .4byte gUnk_0300481D

	thumb_func_start FUN_0803ABA8
FUN_0803ABA8: @ 0x0803ABA8
	push {r4, r5, lr}
	sub sp, #8
	movs r4, #0
	movs r5, #0
_0803ABB0:
	ldr r0, _0803AC18 @ => 0x03004810
	adds r1, r5, r0
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	beq _0803AC08
	subs r0, #1
	strb r0, [r1, #0xc]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0803AC08
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0xd
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	str r0, [sp]
	movs r0, #5
	movs r2, #0
	add r3, sp, #4
	bl FUN_08001DB4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803AC08
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x58]
	cmp r1, #0
	beq _0803AC08
	ldrh r1, [r1, #0xa]
	cmp r1, #0x15
	beq _0803ABFA
	cmp r1, #0x1b
	beq _0803ABFA
	cmp r1, #9
	bne _0803AC08
_0803ABFA:
	ldr r0, [r0, #0x58]
	movs r1, #1
	bl FUN_08001FB0
	ldr r1, [sp, #4]
	movs r0, #0
	str r0, [r1, #0x58]
_0803AC08:
	adds r5, #0x14
	adds r4, #1
	cmp r4, #0x19
	bls _0803ABB0
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803AC18: .4byte gUnk_03004810

	thumb_func_start FUN_0803AC1C
FUN_0803AC1C: @ 0x0803AC1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x68
	movs r5, #0
	movs r4, #0
	movs r3, #0
	ldr r6, _0803AC8C @ => 0x03004810
_0803AC28:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r2, r0, r6
	ldrb r0, [r2, #2]
	cmp r0, #2
	bne _0803AC4E
	lsls r0, r4, #2
	mov r7, sp
	adds r1, r7, r0
	strb r3, [r1]
	ldrb r0, [r2, #1]
	strb r0, [r1, #1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, #5
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0803AC4E:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x19
	bls _0803AC28
	cmp r4, #0
	beq _0803AC84
	subs r1, r4, #1
	movs r0, #0
	bl FUN_080424F8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, #0
	cmp r5, #0x46
	bls _0803AC70
	movs r0, #0x46
_0803AC70:
	adds r5, r0, #0
	bl FUN_080425E4
	cmp r0, #1
	bne _0803AC84
	lsls r0, r4, #2
	add r0, sp
	ldrb r0, [r0, #1]
	bl FUN_0803B0C4
_0803AC84:
	add sp, #0x68
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803AC8C: .4byte gUnk_03004810

	thumb_func_start FUN_0803AC90
FUN_0803AC90: @ 0x0803AC90
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	subs r0, #0xd
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r1, _0803ACB0 @ => 0x03004810
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r2, r0, #2
	adds r4, r2, r1
	ldrb r0, [r4, #1]
	cmp r0, r6
	bne _0803ACB4
	ldrb r0, [r4, #2]
	b _0803ACBE
	.align 2, 0
_0803ACB0: .4byte gUnk_03004810
_0803ACB4:
	strb r6, [r4, #1]
	adds r0, r6, r2
	adds r1, #0xd
	adds r0, r0, r1
	ldrb r0, [r0]
_0803ACBE:
	adds r0, #1
	movs r1, #0
	movs r2, #3
	bl FUN_0802C644
	strb r0, [r4, #2]
	ldr r2, _0803AD14 @ => 0x03004810
	lsls r3, r5, #2
	adds r0, r3, r5
	lsls r1, r0, #2
	adds r2, r1, r2
	ldr r1, _0803AD18 @ => 0x08072400
	lsls r0, r0, #3
	adds r0, r0, r1
	adds r0, #0x20
	ldrb r1, [r2, #1]
	adds r4, r3, #0
	ldrb r0, [r0]
	cmp r1, r0
	bne _0803ACF2
	ldrb r0, [r2, #2]
	cmp r0, #3
	bne _0803ACF2
	adds r0, r7, #0
	bl FUN_0803AF34
_0803ACF2:
	ldr r3, _0803AD14 @ => 0x03004810
	adds r0, r4, r5
	lsls r0, r0, #2
	adds r2, r6, r0
	adds r1, r3, #0
	adds r1, #0xd
	adds r1, r2, r1
	adds r0, r0, r3
	ldrb r3, [r0, #2]
	ldrb r0, [r1]
	cmp r0, r3
	bhs _0803AD0C
	strb r3, [r1]
_0803AD0C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803AD14: .4byte gUnk_03004810
_0803AD18: .4byte CastInfoTable

	thumb_func_start FUN_0803AD1C
FUN_0803AD1C: @ 0x0803AD1C
	push {lr}
	bl FUN_0803B0B0
	ldr r0, [r0, #0x10]
	ldrh r0, [r0]
	bl FUN_0804DE0C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0803AD30
FUN_0803AD30: @ 0x0803AD30
	push {lr}
	bl FUN_0803B0B0
	ldr r0, [r0, #0x10]
	ldrh r0, [r0, #2]
	bl FUN_0804DE0C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0803AD44
FUN_0803AD44: @ 0x0803AD44
	movs r0, #0
	bx lr

	thumb_func_start FUN_0803AD48
FUN_0803AD48: @ 0x0803AD48
	push {r4, lr}
	adds r4, r1, #0
	bl FUN_0803B0B0
	cmp r4, #1
	beq _0803AD68
	cmp r4, #1
	blo _0803AD64
	cmp r4, #2
	beq _0803AD6C
	cmp r4, #3
	beq _0803AD68
	ldr r0, [r0, #8]
	b _0803AD6E
_0803AD64:
	ldr r0, [r0, #8]
	b _0803AD6E
_0803AD68:
	ldr r0, [r0, #0xc]
	b _0803AD6E
_0803AD6C:
	ldr r0, [r0, #4]
_0803AD6E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_0803AD74
FUN_0803AD74: @ 0x0803AD74
	push {r4, lr}
	adds r4, r1, #0
	bl FUN_0803B0B0
	cmp r4, #1
	beq _0803AD90
	cmp r4, #1
	blo _0803AD8C
	cmp r4, #2
	beq _0803AD94
	cmp r4, #3
	beq _0803AD90
_0803AD8C:
	ldr r0, [r0, #8]
	b _0803AD96
_0803AD90:
	ldr r0, [r0, #0xc]
	b _0803AD96
_0803AD94:
	ldr r0, [r0, #4]
_0803AD96:
	adds r0, #2
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0803ADA0
FUN_0803ADA0: @ 0x0803ADA0
	push {lr}
	bl FUN_0803B0B0
	ldrb r0, [r0, #0x14]
	pop {r1}
	bx r1

	thumb_func_start FUN_0803ADAC
FUN_0803ADAC: @ 0x0803ADAC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	movs r6, #0
	movs r1, #0
	cmp r6, r7
	bhs _0803ADCE
	movs r3, #0xff
_0803ADC0:
	adds r0, r2, r1
	strb r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r7
	blo _0803ADC0
_0803ADCE:
	movs r5, #0
	b _0803ADD8
_0803ADD2:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0803ADD8:
	cmp r5, #0x19
	bhi _0803ADFC
	adds r4, r5, #0
	adds r4, #0xd
	adds r0, r4, #0
	str r2, [sp]
	bl FUN_0803AF7C
	ldr r2, [sp]
	cmp r0, #1
	bne _0803ADD2
	adds r0, r2, r6
	strb r4, [r0]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, r7
	bne _0803ADD2
_0803ADFC:
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0803AE08
FUN_0803AE08: @ 0x0803AE08
	ldr r2, _0803AE18 @ => 0x03004810
	subs r0, #0xd
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r0, [r1]
	bx lr
	.align 2, 0
_0803AE18: .4byte gUnk_03004810

	thumb_func_start FUN_0803AE1C
FUN_0803AE1C: @ 0x0803AE1C
	ldr r2, _0803AE2C @ => 0x03004810
	subs r0, #0xd
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r0, [r1, #1]
	bx lr
	.align 2, 0
_0803AE2C: .4byte gUnk_03004810

	thumb_func_start FUN_0803AE30
FUN_0803AE30: @ 0x0803AE30
	push {r4, lr}
	subs r0, #0xd
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r4, _0803AE4C @ => 0x03004810
	lsls r3, r0, #2
	adds r3, r3, r0
	lsls r3, r3, #2
	adds r3, r3, r4
	strb r1, [r3, #1]
	strb r2, [r3, #2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803AE4C: .4byte gUnk_03004810

	thumb_func_start FUN_0803AE50
FUN_0803AE50: @ 0x0803AE50
	ldr r2, _0803AE60 @ => 0x03004810
	subs r0, #0xd
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r0, [r1, #2]
	bx lr
	.align 2, 0
_0803AE60: .4byte gUnk_03004810

	thumb_func_start FUN_0803AE64
FUN_0803AE64: @ 0x0803AE64
	ldr r3, _0803AE7C @ => 0x08072400
	subs r0, #0xd
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #3
	adds r1, r1, r2
	adds r3, #0x21
	adds r1, r1, r3
	movs r0, #0
	ldrsb r0, [r1, r0]
	bx lr
	.align 2, 0
_0803AE7C: .4byte CastInfoTable

	thumb_func_start FUN_0803AE80
FUN_0803AE80: @ 0x0803AE80
	push {lr}
	bl FUN_0803B0B0
	ldr r0, [r0]
	pop {r1}
	bx r1

	thumb_func_start FUN_0803AE8C
FUN_0803AE8C: @ 0x0803AE8C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r3, _0803AEB4 @ => 0x08072400
	subs r1, #0xd
	lsls r2, r1, #2
	adds r2, r2, r1
	lsls r2, r2, #3
	adds r1, r2, r3
	ldrb r1, [r1, #0x14]
	cmp r0, r1
	beq _0803AEB8
	adds r0, r3, #0
	adds r0, #0x1c
	adds r0, r2, r0
	ldr r0, [r0]
	b _0803AEBA
	.align 2, 0
_0803AEB4: .4byte CastInfoTable
_0803AEB8:
	movs r0, #0
_0803AEBA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0803AEC0
FUN_0803AEC0: @ 0x0803AEC0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	movs r5, #0
	movs r3, #0
	subs r0, #0xd
	ldr r2, _0803AED8 @ => 0x08072418
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r6, r1, r2
	b _0803AEF2
	.align 2, 0
_0803AED8: .4byte CastInfoTable + 0x18
_0803AEDC:
	cmp r7, r2
	bne _0803AEEC
	adds r0, r4, #0
	movs r1, #1
	bl FUN_0803AF1C
	movs r3, #1
	b _0803AEF2
_0803AEEC:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0803AEF2:
	ldr r1, [r6]
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r2, [r0]
	movs r1, #0xe6
	eors r1, r2
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	movs r1, #0
	cmp r3, #0
	bne _0803AF0C
	movs r1, #1
_0803AF0C:
	ands r0, r1
	cmp r0, #0
	bne _0803AEDC
	adds r0, r3, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0803AF1C
FUN_0803AF1C: @ 0x0803AF1C
	ldr r3, _0803AF30 @ => 0x03004810
	subs r0, #0xd
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r2, r2, r3
	strb r1, [r2]
	movs r0, #0x18
	strb r0, [r2, #0xc]
	bx lr
	.align 2, 0
_0803AF30: .4byte gUnk_03004810

	thumb_func_start FUN_0803AF34
FUN_0803AF34: @ 0x0803AF34
	ldr r2, _0803AF48 @ => 0x03004810
	subs r0, #0xd
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r2, #4
	adds r1, r1, r2
	movs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_0803AF48: .4byte gUnk_03004810

	thumb_func_start FUN_0803AF4C
FUN_0803AF4C: @ 0x0803AF4C
	ldr r2, _0803AF60 @ => 0x03004810
	subs r0, #0xd
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r2, #4
	adds r1, r1, r2
	ldr r0, [r1]
	bx lr
	.align 2, 0
_0803AF60: .4byte gUnk_03004810

	thumb_func_start FUN_0803AF64
FUN_0803AF64: @ 0x0803AF64
	ldr r2, _0803AF78 @ => 0x03004810
	subs r0, #0xd
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r2, #8
	adds r1, r1, r2
	movs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_0803AF78: .4byte gUnk_03004810

	thumb_func_start FUN_0803AF7C
FUN_0803AF7C: @ 0x0803AF7C
	ldr r2, _0803AF90 @ => 0x03004810
	subs r0, #0xd
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r2, #8
	adds r1, r1, r2
	ldr r0, [r1]
	bx lr
	.align 2, 0
_0803AF90: .4byte gUnk_03004810

	thumb_func_start FUN_0803AF94
FUN_0803AF94: @ 0x0803AF94
	ldr r3, _0803AFA8 @ => 0x03004810
	subs r0, #0xd
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r1, r1, r2
	adds r3, #0xd
	adds r1, r1, r3
	ldrb r0, [r1]
	bx lr
	.align 2, 0
_0803AFA8: .4byte gUnk_03004810

	thumb_func_start FUN_0803AFAC
FUN_0803AFAC: @ 0x0803AFAC
	push {lr}
	adds r3, r1, #0
	cmp r2, #1
	bne _0803AFD0
	ldr r2, _0803AFCC @ => 0x03004810
	adds r1, r0, #0
	subs r1, #0xd
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #0x10]
	orrs r3, r1
	strb r3, [r0, #0x10]
	b _0803AFE4
	.align 2, 0
_0803AFCC: .4byte gUnk_03004810
_0803AFD0:
	ldr r2, _0803AFE8 @ => 0x03004810
	adds r1, r0, #0
	subs r1, #0xd
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #0x10]
	bics r1, r3
	strb r1, [r0, #0x10]
_0803AFE4:
	pop {r0}
	bx r0
	.align 2, 0
_0803AFE8: .4byte gUnk_03004810

	thumb_func_start FUN_0803AFEC
FUN_0803AFEC: @ 0x0803AFEC
	movs r0, #0
	bx lr

	thumb_func_start FUN_0803AFF0
FUN_0803AFF0: @ 0x0803AFF0
	push {lr}
	movs r1, #0
	movs r2, #0
	ldr r0, _0803B008 @ => 0x03004810
_0803AFF8:
	strb r2, [r0, #0x10]
	adds r0, #0x14
	adds r1, #1
	cmp r1, #0x19
	bls _0803AFF8
	pop {r0}
	bx r0
	.align 2, 0
_0803B008: .4byte gUnk_03004810

	thumb_func_start FUN_0803B00C
FUN_0803B00C: @ 0x0803B00C
	push {r4, lr}
	lsls r4, r1, #0x18
	lsrs r4, r4, #0x18
	bl FUN_0803B0B0
	ldr r0, [r0, #0x10]
	lsls r4, r4, #2
	adds r0, r0, r4
	ldrh r0, [r0, #4]
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_0803B024
FUN_0803B024: @ 0x0803B024
	push {r4, lr}
	lsls r4, r1, #0x18
	lsrs r4, r4, #0x18
	bl FUN_0803B0B0
	ldr r0, [r0, #0x10]
	lsls r4, r4, #2
	adds r0, r0, r4
	ldrh r0, [r0, #6]
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_0803B03C
FUN_0803B03C: @ 0x0803B03C
	ldr r2, _0803B050 @ => 0x08072400
	subs r0, #0xd
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #0x27
	movs r0, #0
	ldrsb r0, [r1, r0]
	bx lr
	.align 2, 0
_0803B050: .4byte CastInfoTable

	thumb_func_start FUN_0803B054
FUN_0803B054: @ 0x0803B054
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r3, _0803B06C @ => 0x08072400
	subs r0, #0xd
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #3
	adds r1, r1, r2
	adds r3, #0x24
	adds r1, r1, r3
	ldrb r0, [r1]
	bx lr
	.align 2, 0
_0803B06C: .4byte CastInfoTable

	thumb_func_start FUN_0803B070
FUN_0803B070: @ 0x0803B070
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r2, #0
	ldr r5, _0803B090 @ => 0x08072398
_0803B078:
	movs r1, #0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r3, r0, #2
_0803B080:
	lsls r0, r1, #1
	adds r0, r0, r3
	adds r0, r0, r5
	ldrh r0, [r0]
	cmp r0, r4
	bne _0803B094
	adds r0, r2, #0
	b _0803B0AA
	.align 2, 0
_0803B090: .4byte FeelingItemTable
_0803B094:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #4
	bls _0803B080
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #2
	bls _0803B078
	movs r0, #3
_0803B0AA:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start FUN_0803B0B0
FUN_0803B0B0: @ 0x0803B0B0
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _0803B0C0 @ => 0x080721F8
	adds r0, r0, r1
	bx lr
	.align 2, 0
_0803B0C0: .4byte (CastInfoTable - (0xD * 0x28))

	thumb_func_start FUN_0803B0C4
FUN_0803B0C4: @ 0x0803B0C4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0803B0F4 @ => 0x08072398
	movs r0, #0
	movs r1, #4
	bl FUN_080424F8
	lsls r0, r0, #1
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r0, r5
	ldrh r1, [r0]
	ldr r0, _0803B0F8 @ => 0x03003DF0
	ldr r0, [r0, #0x6c]
	movs r2, #0
	movs r3, #0
	bl FUN_080261BC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803B0F4: .4byte FeelingItemTable
_0803B0F8: .4byte gUnk_03003DF0

	thumb_func_start FUN_0803B0FC
FUN_0803B0FC: @ 0x0803B0FC
	push {r4, r5, r6, lr}
	movs r2, #0
	ldr r6, _0803B160 @ => 0x030025F0
	ldr r3, _0803B164 @ => 0x030025E0
	movs r5, #0x27
	ldr r4, _0803B168 @ => 0x00000371
_0803B108:
	ldr r0, [r3]
	lsls r1, r2, #4
	adds r0, r1, r0
	strb r5, [r0, #6]
	ldr r0, [r3]
	adds r1, r1, r0
	strh r4, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x18
	bls _0803B108
	movs r2, #0
	ldr r4, _0803B16C @ => 0x030025E4
	movs r3, #0x27
_0803B126:
	ldr r0, [r4]
	lsls r1, r2, #3
	adds r1, r1, r0
	strb r3, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #2
	bls _0803B126
	movs r2, #0
	ldr r4, _0803B170 @ => 0x030025E8
	movs r3, #0x27
_0803B13E:
	ldr r0, [r4]
	lsls r1, r2, #3
	adds r1, r1, r0
	strb r3, [r1, #4]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #2
	bls _0803B13E
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x1a
	bl FUN_0802CB40
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803B160: .4byte gUnk_030025F0
_0803B164: .4byte gUnk_030025E0
_0803B168: .4byte 0x00000371
_0803B16C: .4byte gUnk_030025E4
_0803B170: .4byte gUnk_030025E8

	thumb_func_start FUN_0803B174
FUN_0803B174: @ 0x0803B174
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r4, r1, #0
	mov ip, r2
	mov r8, r3
	ldr r0, [sp, #0x20]
	mov sl, r0
	movs r3, #0
	ldr r1, _0803B1BC @ => 0x030025E0
	mov sb, r1
	mov r5, sb
	movs r7, #0
_0803B194:
	ldr r0, [r5]
	lsls r2, r3, #4
	adds r1, r2, r0
	ldrb r0, [r1, #6]
	cmp r0, r6
	bne _0803B1CE
	ldr r0, _0803B1C0 @ => 0x00000371
	cmp r4, r0
	bne _0803B1C8
	movs r0, #0x27
	strb r0, [r1, #6]
	ldr r0, [r5]
	adds r0, r2, r0
	strh r4, [r0]
	ldr r1, _0803B1C4 @ => 0x000002AB
	strh r1, [r0, #4]
	strh r4, [r0, #2]
	str r7, [r0, #8]
	str r7, [r0, #0xc]
	b _0803B21E
	.align 2, 0
_0803B1BC: .4byte gUnk_030025E0
_0803B1C0: .4byte 0x00000371
_0803B1C4: .4byte 0x000002AB
_0803B1C8:
	strb r6, [r1, #6]
	ldr r0, [r5]
	b _0803B1F4
_0803B1CE:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x18
	bls _0803B194
	ldr r0, _0803B20C @ => 0x00000371
	cmp r4, r0
	beq _0803B21E
	movs r3, #0
	ldr r5, _0803B210 @ => 0x030025E0
_0803B1E2:
	ldr r0, [r5]
	lsls r2, r3, #4
	adds r1, r2, r0
	ldrb r0, [r1, #6]
	cmp r0, #0x27
	bne _0803B214
	strb r6, [r1, #6]
	mov r1, sb
	ldr r0, [r1]
_0803B1F4:
	adds r0, r2, r0
	strh r4, [r0]
	mov r1, ip
	strh r1, [r0, #4]
	mov r1, r8
	strh r1, [r0, #2]
	mov r1, sl
	str r1, [r0, #8]
	ldr r1, [sp, #0x24]
	str r1, [r0, #0xc]
	b _0803B21E
	.align 2, 0
_0803B20C: .4byte 0x00000371
_0803B210: .4byte gUnk_030025E0
_0803B214:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x18
	bls _0803B1E2
_0803B21E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_0803B22C
FUN_0803B22C: @ 0x0803B22C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	bl FUN_0803B63C
	adds r4, r0, #0
	cmp r4, #0
	bne _0803B240
	movs r0, #0
	b _0803B28E
_0803B240:
	ldrh r1, [r4]
	ldr r5, _0803B264 @ => 0x00000371
	cmp r1, r5
	beq _0803B26C
	adds r0, r1, #0
	bl FUN_0801B914
	ldrh r0, [r4, #4]
	movs r1, #1
	bl FUN_080213A4
	ldr r0, _0803B268 @ => 0x000002AB
	strh r0, [r4, #4]
	ldrh r0, [r4, #2]
	cmp r0, r5
	beq _0803B276
	strh r5, [r4]
	b _0803B276
	.align 2, 0
_0803B264: .4byte 0x00000371
_0803B268: .4byte 0x000002AB
_0803B26C:
	ldrh r0, [r4, #2]
	cmp r0, r1
	beq _0803B276
	bl FUN_0801B914
_0803B276:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0803B28C
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r6, #0
	ldr r1, _0803B298 @ => 0x00000371
	ldr r2, _0803B29C @ => 0x000002AB
	adds r3, r1, #0
	bl FUN_0803B174
_0803B28C:
	movs r0, #1
_0803B28E:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803B298: .4byte 0x00000371
_0803B29C: .4byte 0x000002AB

	thumb_func_start FUN_0803B2A0
FUN_0803B2A0: @ 0x0803B2A0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov ip, r2
	movs r4, #0
	movs r3, #0
	ldr r0, _0803B2C0 @ => 0x030025E4
	ldr r2, [r0]
	ldrb r1, [r2]
	adds r7, r0, #0
	cmp r1, r5
	bne _0803B2C4
	adds r4, r2, #0
	b _0803B2D8
	.align 2, 0
_0803B2C0: .4byte gUnk_030025E4
_0803B2C4:
	adds r3, #1
	cmp r3, #2
	bhi _0803B2D8
	ldr r0, [r7]
	lsls r1, r3, #3
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, r5
	bne _0803B2C4
	adds r4, r1, #0
_0803B2D8:
	cmp r4, #0
	bne _0803B2FA
	movs r3, #0
	ldr r1, [r7]
	b _0803B2EE
_0803B2E2:
	adds r3, #1
	cmp r3, #2
	bhi _0803B2F6
	ldr r0, [r7]
	lsls r1, r3, #3
	adds r1, r1, r0
_0803B2EE:
	ldrb r0, [r1]
	cmp r0, #0x27
	bne _0803B2E2
	adds r4, r1, #0
_0803B2F6:
	cmp r4, #0
	beq _0803B310
_0803B2FA:
	cmp r6, #0
	bne _0803B308
	movs r0, #0x27
	strb r0, [r4]
	str r6, [r4, #4]
	strb r6, [r4, #1]
	b _0803B310
_0803B308:
	strb r5, [r4]
	str r6, [r4, #4]
	mov r0, ip
	strb r0, [r4, #1]
_0803B310:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0803B318
FUN_0803B318: @ 0x0803B318
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov ip, r3
	movs r3, #0
	movs r2, #0
	ldr r0, _0803B340 @ => 0x030025E8
	ldr r4, [r0]
	ldrb r1, [r4, #4]
	adds r7, r0, #0
	cmp r1, r6
	bne _0803B344
	adds r3, r4, #0
	b _0803B358
	.align 2, 0
_0803B340: .4byte gUnk_030025E8
_0803B344:
	adds r2, #1
	cmp r2, #2
	bhi _0803B358
	ldr r0, [r7]
	lsls r1, r2, #3
	adds r1, r1, r0
	ldrb r0, [r1, #4]
	cmp r0, r6
	bne _0803B344
	adds r3, r1, #0
_0803B358:
	cmp r3, #0
	bne _0803B37A
	movs r2, #0
	ldr r1, [r7]
	b _0803B36E
_0803B362:
	adds r2, #1
	cmp r2, #2
	bhi _0803B376
	ldr r0, [r7]
	lsls r1, r2, #3
	adds r1, r1, r0
_0803B36E:
	ldrb r0, [r1, #4]
	cmp r0, #0x27
	bne _0803B362
	adds r3, r1, #0
_0803B376:
	cmp r3, #0
	beq _0803B396
_0803B37A:
	cmp r5, #0
	bne _0803B38A
	movs r0, #0x27
	strb r0, [r3, #4]
	str r5, [r3]
	strb r5, [r3, #6]
	strb r5, [r3, #5]
	b _0803B396
_0803B38A:
	strb r6, [r3, #4]
	str r5, [r3]
	mov r0, r8
	strb r0, [r3, #6]
	mov r0, ip
	strb r0, [r3, #5]
_0803B396:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_0803B3A0
FUN_0803B3A0: @ 0x0803B3A0
	push {r4, lr}
	ldr r4, _0803B3D4 @ => 0x030025E0
	movs r0, #0xc8
	lsls r0, r0, #1
	bl FUN_0802C9DC
	str r0, [r4]
	ldr r4, _0803B3D8 @ => 0x030025E4
	movs r0, #0x18
	bl FUN_0802C9DC
	str r0, [r4]
	ldr r4, _0803B3DC @ => 0x030025E8
	movs r0, #0x18
	bl FUN_0802C9DC
	str r0, [r4]
	ldr r0, _0803B3E0 @ => 0x030025F0
	movs r1, #0
	movs r2, #0x1a
	bl FUN_0802CB40
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803B3D4: .4byte gUnk_030025E0
_0803B3D8: .4byte gUnk_030025E4
_0803B3DC: .4byte gUnk_030025E8
_0803B3E0: .4byte gUnk_030025F0

	thumb_func_start FUN_0803B3E4
FUN_0803B3E4: @ 0x0803B3E4
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r2, #0
	ldr r0, _0803B404 @ => 0x030025E0
	ldr r3, [r0]
	ldr r5, _0803B408 @ => 0x03710371
_0803B3F0:
	lsls r0, r2, #4
	adds r1, r0, r3
	ldrb r0, [r1, #6]
	cmp r0, r4
	bne _0803B410
	ldr r0, [r1]
	cmp r0, r5
	beq _0803B40C
	movs r0, #1
	b _0803B41C
	.align 2, 0
_0803B404: .4byte gUnk_030025E0
_0803B408: .4byte 0x03710371
_0803B40C:
	movs r0, #0
	b _0803B41C
_0803B410:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x18
	bls _0803B3F0
	ldr r0, _0803B424 @ => 0x00000371
_0803B41C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0803B424: .4byte 0x00000371

	thumb_func_start FUN_0803B428
FUN_0803B428: @ 0x0803B428
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0
	ldr r0, _0803B440 @ => 0x030025E0
	ldr r3, [r0]
_0803B432:
	lsls r0, r2, #4
	adds r1, r0, r3
	ldrb r0, [r1, #6]
	cmp r0, r4
	bne _0803B444
	ldr r0, [r1, #0xc]
	b _0803B450
	.align 2, 0
_0803B440: .4byte gUnk_030025E0
_0803B444:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x18
	bls _0803B432
	movs r0, #0
_0803B450:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0803B458
FUN_0803B458: @ 0x0803B458
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0
	ldr r0, _0803B470 @ => 0x030025E0
	ldr r3, [r0]
_0803B462:
	lsls r0, r2, #4
	adds r1, r0, r3
	ldrb r0, [r1, #6]
	cmp r0, r4
	bne _0803B474
	ldrh r0, [r1, #4]
	b _0803B480
	.align 2, 0
_0803B470: .4byte gUnk_030025E0
_0803B474:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x18
	bls _0803B462
	ldr r0, _0803B488 @ => 0x000002AB
_0803B480:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803B488: .4byte 0x000002AB

	thumb_func_start FUN_0803B48C
FUN_0803B48C: @ 0x0803B48C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r2, #0
	ldr r0, _0803B4AC @ => 0x030025E0
	ldr r3, [r0]
	ldr r5, _0803B4B0 @ => 0x000002AB
_0803B498:
	lsls r0, r2, #4
	adds r1, r0, r3
	ldrb r0, [r1, #6]
	cmp r0, r4
	bne _0803B4B4
	ldrh r0, [r1, #4]
	cmp r0, r5
	bne _0803B4B4
	ldrh r0, [r1]
	b _0803B4C0
	.align 2, 0
_0803B4AC: .4byte gUnk_030025E0
_0803B4B0: .4byte 0x000002AB
_0803B4B4:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x18
	bls _0803B498
	ldr r0, _0803B4C8 @ => 0x00000371
_0803B4C0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0803B4C8: .4byte 0x00000371

	thumb_func_start FUN_0803B4CC
FUN_0803B4CC: @ 0x0803B4CC
	push {lr}
	sub sp, #8
	ldr r3, _0803B4E8 @ => 0x00000371
	ldr r2, _0803B4EC @ => 0x000002AB
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	adds r1, r3, #0
	bl FUN_0803B174
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_0803B4E8: .4byte 0x00000371
_0803B4EC: .4byte 0x000002AB

	thumb_func_start FUN_0803B4F0
FUN_0803B4F0: @ 0x0803B4F0
	push {lr}
	ldr r0, _0803B520 @ => 0x030025E0
	ldr r0, [r0]
	movs r1, #0xc8
	lsls r1, r1, #1
	bl FUN_08044644
	ldr r0, _0803B524 @ => 0x030025E4
	ldr r0, [r0]
	movs r1, #0x18
	bl FUN_08044644
	ldr r0, _0803B528 @ => 0x030025E8
	ldr r0, [r0]
	movs r1, #0x18
	bl FUN_08044644
	ldr r0, _0803B52C @ => 0x030025F0
	movs r1, #0x1a
	bl FUN_08044644
	pop {r0}
	bx r0
	.align 2, 0
_0803B520: .4byte gUnk_030025E0
_0803B524: .4byte gUnk_030025E4
_0803B528: .4byte gUnk_030025E8
_0803B52C: .4byte gUnk_030025F0

	thumb_func_start FUN_0803B530
FUN_0803B530: @ 0x0803B530
	push {lr}
	ldr r0, _0803B560 @ => 0x030025E0
	ldr r0, [r0]
	movs r1, #0xc8
	lsls r1, r1, #1
	bl FUN_08044558
	ldr r0, _0803B564 @ => 0x030025E4
	ldr r0, [r0]
	movs r1, #0x18
	bl FUN_08044558
	ldr r0, _0803B568 @ => 0x030025E8
	ldr r0, [r0]
	movs r1, #0x18
	bl FUN_08044558
	ldr r0, _0803B56C @ => 0x030025F0
	movs r1, #0x1a
	bl FUN_08044558
	pop {r0}
	bx r0
	.align 2, 0
_0803B560: .4byte gUnk_030025E0
_0803B564: .4byte gUnk_030025E4
_0803B568: .4byte gUnk_030025E8
_0803B56C: .4byte gUnk_030025F0

	thumb_func_start FUN_0803B570
FUN_0803B570: @ 0x0803B570
	ldr r2, _0803B580 @ => 0x030025F0
	subs r0, #0xd
	adds r0, r0, r2
	ldrb r2, [r0]
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803B580: .4byte gUnk_030025F0

	thumb_func_start FUN_0803B584
FUN_0803B584: @ 0x0803B584
	ldr r2, _0803B594 @ => 0x030025F0
	subs r0, #0xd
	adds r0, r0, r2
	ldrb r2, [r0]
	bics r2, r1
	strb r2, [r0]
	bx lr
	.align 2, 0
_0803B594: .4byte gUnk_030025F0

	thumb_func_start FUN_0803B598
FUN_0803B598: @ 0x0803B598
	ldr r1, _0803B5A4 @ => 0x030025F0
	subs r0, #0xd
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B5A4: .4byte gUnk_030025F0

	thumb_func_start FUN_0803B5A8
FUN_0803B5A8: @ 0x0803B5A8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	movs r2, #0
	ldr r4, _0803B5D4 @ => 0x030025E4
	mov ip, r4
_0803B5B6:
	mov r1, ip
	ldr r0, [r1]
	lsls r1, r2, #3
	adds r3, r1, r0
	ldrb r0, [r3]
	cmp r0, r5
	bne _0803B5D8
	ldr r0, [r3, #4]
	str r0, [r6]
	ldr r0, [r4]
	adds r0, r1, r0
	ldrb r0, [r0, #1]
	strb r0, [r7]
	movs r0, #1
	b _0803B5E0
	.align 2, 0
_0803B5D4: .4byte gUnk_030025E4
_0803B5D8:
	adds r2, #1
	cmp r2, #2
	bls _0803B5B6
	movs r0, #0
_0803B5E0:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0803B5E8
FUN_0803B5E8: @ 0x0803B5E8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	movs r3, #0
	ldr r4, _0803B624 @ => 0x030025E8
	mov ip, r4
_0803B5FC:
	mov r1, ip
	ldr r0, [r1]
	lsls r2, r3, #3
	adds r1, r2, r0
	ldrb r0, [r1, #4]
	cmp r0, r5
	bne _0803B628
	ldr r0, [r1]
	str r0, [r6]
	ldr r0, [r4]
	adds r0, r2, r0
	ldrb r0, [r0, #6]
	str r0, [r7]
	ldr r0, [r4]
	adds r0, r2, r0
	ldrb r0, [r0, #5]
	mov r1, r8
	strb r0, [r1]
	movs r0, #1
	b _0803B630
	.align 2, 0
_0803B624: .4byte gUnk_030025E8
_0803B628:
	adds r3, #1
	cmp r3, #2
	bls _0803B5FC
	movs r0, #0
_0803B630:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0803B63C
FUN_0803B63C: @ 0x0803B63C
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0
	ldr r0, _0803B654 @ => 0x030025E0
	ldr r3, [r0]
_0803B646:
	lsls r0, r2, #4
	adds r1, r0, r3
	ldrb r0, [r1, #6]
	cmp r0, r4
	bne _0803B658
	adds r0, r1, #0
	b _0803B664
	.align 2, 0
_0803B654: .4byte gUnk_030025E0
_0803B658:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x18
	bls _0803B646
	movs r0, #0
_0803B664:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0803B66C
FUN_0803B66C: @ 0x0803B66C
	push {lr}
	ldr r1, _0803B688 @ => 0x03005340
	ldr r0, _0803B68C @ => 0x03004B40
	str r0, [r1]
	bl FUN_0803B888
	bl FUN_0803B900
	ldr r1, _0803B690 @ => 0x03004B30
	ldr r0, _0803B694 @ => 0x03005380
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803B688: .4byte gUnk_03005340
_0803B68C: .4byte gUnk_03004B40
_0803B690: .4byte gUnk_03004B30
_0803B694: .4byte gUnk_03005380

	thumb_func_start FUN_0803B698
FUN_0803B698: @ 0x0803B698
	push {r4, lr}
	movs r4, #0
	ldr r2, _0803B6B8 @ => 0x03005340
_0803B69E:
	ldr r0, [r2]
	lsls r1, r4, #3
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bne _0803B6BC
	adds r0, r4, #0
	bl FUN_0803B924
	adds r0, r4, #0
	b _0803B6C8
	.align 2, 0
_0803B6B8: .4byte gUnk_03005340
_0803B6BC:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r0, #0
	bge _0803B69E
	movs r0, #0xff
_0803B6C8:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0803B6D0
FUN_0803B6D0: @ 0x0803B6D0
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0803B954
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0803B6E0
FUN_0803B6E0: @ 0x0803B6E0
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r5, _0803B71C @ => 0x03004A20
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	blt _0803B724
	ldr r0, _0803B720 @ => 0x03005340
	ldr r2, [r0]
	lsls r4, r4, #3
	adds r3, r2, r4
	ldr r0, [r6]
	ldr r1, [r6, #4]
	str r0, [r3]
	str r1, [r3, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r2, r2, r0
	adds r2, r2, r4
	ldr r0, [r6]
	ldr r1, [r6, #4]
	str r0, [r2]
	str r1, [r2, #4]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	movs r0, #0
	b _0803B728
	.align 2, 0
_0803B71C: .4byte gUnk_03004A20
_0803B720: .4byte gUnk_03005340
_0803B724:
	movs r0, #1
	rsbs r0, r0, #0
_0803B728:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0803B730
FUN_0803B730: @ 0x0803B730
	ldr r1, _0803B750 @ => 0x03005340
	ldr r2, [r1]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r2, r2, r1
	lsls r0, r0, #3
	adds r2, r2, r0
	ldrb r1, [r2, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #1]
	bx lr
	.align 2, 0
_0803B750: .4byte gUnk_03005340

	thumb_func_start FUN_0803B754
FUN_0803B754: @ 0x0803B754
	ldrh r0, [r0, #2]
	lsrs r0, r0, #9
	movs r1, #0x1f
	ands r0, r1
	bx lr
	.align 2, 0

	thumb_func_start FUN_0803B760
FUN_0803B760: @ 0x0803B760
	lsls r1, r1, #0x10
	ldrh r3, [r0, #2]
	ldr r2, _0803B770 @ => 0x0000C1FF
	ands r2, r3
	lsrs r1, r1, #7
	orrs r2, r1
	strh r2, [r0, #2]
	bx lr
	.align 2, 0
_0803B770: .4byte 0x0000C1FF

	thumb_func_start FUN_0803B774
FUN_0803B774: @ 0x0803B774
	push {r4, r5, lr}
	movs r2, #0
	movs r3, #0x20
	ldr r5, _0803B798 @ => 0x03005350
	ldr r4, _0803B79C @ => 0x03005B80
_0803B77E:
	adds r1, r2, r5
	ldrb r0, [r1]
	cmp r0, #1
	beq _0803B7A0
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r4]
	cmp r2, r0
	blo _0803B7B0
	adds r0, #1
	strb r0, [r4]
	b _0803B7B0
	.align 2, 0
_0803B798: .4byte gUnk_03005350
_0803B79C: .4byte gUnk_03005B80
_0803B7A0:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	subs r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _0803B77E
_0803B7B0:
	adds r0, r2, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start FUN_0803B7B8
FUN_0803B7B8: @ 0x0803B7B8
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r4, _0803B7F8 @ => 0x03005350
	adds r1, r2, r4
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0803B7FC @ => 0x03005B80
	ldrb r3, [r1]
	subs r0, r3, #1
	cmp r2, r0
	bne _0803B7F0
	cmp r3, #0
	beq _0803B7F0
	adds r3, r1, #0
_0803B7D6:
	ldrb r1, [r3]
	subs r1, #1
	strb r1, [r3]
	subs r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x18
	cmp r1, #0
	beq _0803B7F0
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803B7D6
_0803B7F0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803B7F8: .4byte gUnk_03005350
_0803B7FC: .4byte gUnk_03005B80

	thumb_func_start FUN_0803B800
FUN_0803B800: @ 0x0803B800
	push {r4, r5, r6, lr}
	ldr r6, _0803B834 @ => 0x03005B80
	ldrb r0, [r6]
	cmp r0, #0
	beq _0803B82C
	ldr r5, _0803B838 @ => 0x03004A30
	ldr r4, _0803B83C @ => 0x03005340
	ldr r1, [r4]
	adds r1, #6
	adds r2, r0, #0
	adds r0, r5, #0
	movs r3, #8
	bl SVC_ObjAffineSet
	ldr r1, [r4]
	ldr r0, _0803B840 @ => 0x00000406
	adds r1, r1, r0
	ldrb r2, [r6]
	adds r0, r5, #0
	movs r3, #8
	bl SVC_ObjAffineSet
_0803B82C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803B834: .4byte gUnk_03005B80
_0803B838: .4byte gUnk_03004A30
_0803B83C: .4byte gUnk_03005340
_0803B840: .4byte 0x00000406

	thumb_func_start FUN_0803B844
FUN_0803B844: @ 0x0803B844
	push {r4, r5, r6, lr}
	ldr r0, _0803B878 @ => 0x03004A20
	ldrb r2, [r0]
	ldr r6, _0803B87C @ => 0x030042E0
	cmp r2, #0x7f
	bhi _0803B86C
	ldr r5, _0803B880 @ => 0x03005340
	ldr r0, _0803B884 @ => 0x08072810
	ldr r3, [r0]
	movs r4, #0x80
	lsls r4, r4, #3
_0803B85A:
	ldr r1, [r5]
	lsls r0, r2, #3
	adds r0, r0, r1
	str r3, [r0]
	adds r0, r0, r4
	str r3, [r0]
	adds r2, #1
	cmp r2, #0x7f
	bls _0803B85A
_0803B86C:
	ldr r1, [r6]
	movs r0, #1
	strh r0, [r1, #0x38]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803B878: .4byte gUnk_03004A20
_0803B87C: .4byte gUnk_030042E0
_0803B880: .4byte gUnk_03005340
_0803B884: .4byte ROMREF_08072810

	thumb_func_start FUN_0803B888
FUN_0803B888: @ 0x0803B888
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r5, #0
	ldr r0, _0803B8EC @ => 0x03005340
	mov r8, r0
	ldr r1, _0803B8F0 @ => 0x03004A20
	mov sb, r1
	mov ip, r8
	ldr r6, _0803B8F4 @ => 0x08072814
	movs r7, #0x80
	lsls r7, r7, #3
_0803B8A2:
	mov r0, ip
	ldr r2, [r0]
	lsls r4, r5, #3
	adds r3, r2, r4
	ldr r0, [r6]
	ldr r1, [r6, #4]
	str r0, [r3]
	str r1, [r3, #4]
	adds r2, r2, r7
	adds r2, r2, r4
	ldr r0, [r6]
	ldr r1, [r6, #4]
	str r0, [r2]
	str r1, [r2, #4]
	adds r5, #1
	cmp r5, #0x7f
	bls _0803B8A2
	ldr r1, _0803B8F8 @ => 0x040000D4
	mov r2, r8
	ldr r0, [r2]
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _0803B8FC @ => 0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	mov r1, sb
	strb r0, [r1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B8EC: .4byte gUnk_03005340
_0803B8F0: .4byte gUnk_03004A20
_0803B8F4: .4byte ROMREF_08072814
_0803B8F8: .4byte 0x040000D4
_0803B8FC: .4byte 0x84000100

	thumb_func_start FUN_0803B900
FUN_0803B900: @ 0x0803B900
	push {lr}
	ldr r1, _0803B91C @ => 0x03005B80
	movs r0, #0
	strb r0, [r1]
	movs r1, #0
	ldr r3, _0803B920 @ => 0x03005350
	movs r2, #0
_0803B90E:
	adds r0, r1, r3
	strb r2, [r0]
	adds r1, #1
	cmp r1, #0x1f
	bls _0803B90E
	pop {r0}
	bx r0
	.align 2, 0
_0803B91C: .4byte gUnk_03005B80
_0803B920: .4byte gUnk_03005350

	thumb_func_start FUN_0803B924
FUN_0803B924: @ 0x0803B924
	push {r4, r5, lr}
	ldr r5, _0803B950 @ => 0x03005340
	ldr r2, [r5]
	lsls r0, r0, #3
	adds r2, r2, r0
	ldrb r4, [r2, #1]
	movs r3, #4
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r1, r4
	strb r1, [r2, #1]
	ldr r1, [r5]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	ands r3, r0
	strb r3, [r1, #1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803B950: .4byte gUnk_03005340

	thumb_func_start FUN_0803B954
FUN_0803B954: @ 0x0803B954
	push {r4, r5, lr}
	ldr r5, _0803B988 @ => 0x03005340
	ldr r3, [r5]
	lsls r0, r0, #3
	adds r3, r3, r0
	ldrb r4, [r3, #1]
	movs r2, #4
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r1, r4
	movs r4, #2
	orrs r1, r4
	strb r1, [r3, #1]
	ldr r1, [r5]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r1, r3
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	ands r2, r0
	orrs r2, r4
	strb r2, [r1, #1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803B988: .4byte gUnk_03005340

	thumb_func_start FUN_0803B98C
FUN_0803B98C: @ 0x0803B98C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	mov sb, r2
	ldr r5, [sp, #0x20]
	ldr r1, _0803B9D4 @ => 0x0807281C
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	bl FUN_08050820
	adds r4, r0, #0
	str r5, [sp]
	adds r0, r6, #0
	mov r1, r8
	mov r2, sb
	adds r3, r4, #0
	bl FUN_0801F8B8
	adds r0, r4, #0
	bl FUN_0801FF60
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803B9D4: .4byte ItemInfoData

	thumb_func_start FUN_0803B9D8
FUN_0803B9D8: @ 0x0803B9D8
	push {r4, r5, lr}
	sub sp, #8
	ldr r5, [sp, #0x1c]
	ldr r4, _0803B9F0 @ => Sims3ObjectDescBug
	str r4, [sp]
	str r5, [sp, #4]
	bl FUN_08020098
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803B9F0: .4byte Sims3ObjectDescBug

	thumb_func_start FUN_0803B9F4
FUN_0803B9F4: @ 0x0803B9F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	mov sl, r3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sb, r2
	movs r0, #4
	bl FUN_080012D8
	adds r4, r0, #0
	movs r7, #0
	movs r0, #3
	strb r0, [r4, #0x12]
	adds r2, r4, #0
	adds r2, #0xa7
	ldrb r1, [r2]
	subs r0, #0x14
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0xd8
	strh r7, [r0]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl FUN_08001728
	ldr r1, _0803BB3C @ => 0x0006001C
	adds r0, r4, #0
	bl FUN_08002038
	strh r6, [r4, #0xa]
	movs r0, #0xb2
	lsls r0, r0, #1
	adds r5, r4, r0
	strh r6, [r5]
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001FB0
	ldr r0, _0803BB40 @ => FUN_0803C4E4
	str r0, [r4, #0x54]
	ldr r0, _0803BB44 @ => FUN_0803C420
	str r0, [r4, #0x50]
	adds r0, r4, #0
	bl FUN_0803977C
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #0
	movs r2, #0xe
	bl FUN_0802CB40
	movs r1, #0xa3
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #0
	movs r2, #7
	bl FUN_0802CB40
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r4, r1
	str r7, [r0]
	adds r1, #0x1c
	adds r0, r4, r1
	str r7, [r0]
	ldrh r0, [r5]
	bl FUN_0803D16C
	adds r3, r0, #0
	mov r0, r8
	cmp r0, #0
	beq _0803BAA0
	adds r0, r3, #0
	adds r0, #0x6a
	mov r1, r8
	strb r1, [r0]
_0803BAA0:
	mov r0, sb
	cmp r0, #0
	beq _0803BAAE
	lsls r1, r0, #8
	adds r0, r3, #0
	adds r0, #0x68
	strh r1, [r0]
_0803BAAE:
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	str r3, [r0]
	adds r1, #0x24
	adds r0, r4, r1
	str r7, [r0]
	adds r1, #4
	adds r0, r4, r1
	str r7, [r0]
	str r4, [r3, #0x34]
	ldrh r0, [r4, #0xa]
	strh r0, [r3, #8]
	mov r0, sl
	str r0, [r3, #0x48]
	cmp r3, #0
	beq _0803BAE8
	ldr r2, _0803BB48 @ => 0x08073A54
	ldrh r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	ldr r1, [r0]
	cmp r1, #0
	beq _0803BAE8
	adds r0, r3, #0
	bl _call_via_r1
_0803BAE8:
	cmp r6, #0x89
	beq _0803BAF0
	cmp r6, #0xa9
	bne _0803BB06
_0803BAF0:
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
_0803BB06:
	adds r0, r4, #0
	bl FUN_0803C2A8
	cmp r6, #0x89
	bne _0803BB26
	adds r2, r4, #0
	adds r2, #0xdb
	ldrb r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r2, #9
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
_0803BB26:
	ldr r0, _0803BB4C @ => FUN_0803C52C
	str r0, [r4, #0x64]
	adds r0, r4, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803BB3C: .4byte 0x0006001C
_0803BB40: .4byte FUN_0803C4E4
_0803BB44: .4byte FUN_0803C420
_0803BB48: .4byte ROMREF_08073A54
_0803BB4C: .4byte FUN_0803C52C

	thumb_func_start FUN_0803BB50
FUN_0803BB50: @ 0x0803BB50
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	adds r5, r0, #0
	lsls r2, r2, #0x10
	asrs r7, r2, #0x10
	lsls r3, r3, #0x10
	asrs r4, r3, #0x10
	str r7, [sp]
	str r4, [sp, #4]
	strb r1, [r5, #0x12]
	ldr r0, _0803BC38 @ => 0x03004398
	mov r8, r0
	ldr r0, [r0]
	ldrb r2, [r5, #0x12]
	add r6, sp, #8
	mov r1, sp
	adds r3, r6, #0
	bl FUN_0804999C
	cmp r0, #0
	bne _0803BB82
	str r7, [sp, #8]
	str r4, [r6, #4]
_0803BB82:
	ldr r1, [sp, #8]
	lsls r1, r1, #0x10
	ldr r2, [r6, #4]
	lsls r2, r2, #0x10
	adds r0, r5, #0
	bl FUN_08001728
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	movs r1, #2
	bl FUN_0803D3EC
	cmp r0, #0
	beq _0803BBC6
	mov r1, r8
	ldr r0, [r1]
	add r4, sp, #0x10
	adds r1, r6, #0
	adds r2, r4, #0
	bl FUN_0805374C
	adds r0, r4, #0
	movs r1, #3
	bl FUN_0803D810
	adds r1, r0, #0
	cmp r1, #0
	beq _0803BBC6
	adds r0, r5, #0
	movs r2, #1
	bl FUN_08006DFC
_0803BBC6:
	adds r0, r5, #0
	movs r1, #1
	bl FUN_08002038
	ldr r0, _0803BC38 @ => 0x03004398
	ldr r0, [r0]
	adds r1, r5, #0
	movs r2, #1
	bl FUN_08048EB8
	adds r7, r0, #0
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r4, [r0]
	ldr r6, _0803BC3C @ => 0x080770C8
	adds r1, #0x34
	adds r0, r5, r1
	ldrh r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	cmp r1, #0
	beq _0803BC50
	adds r0, r5, #0
	adds r0, #0xd8
	ldrh r1, [r0]
	adds r0, r5, #0
	bl FUN_0803BC7C
	adds r0, r5, #0
	bl FUN_0803EF58
	ldrh r1, [r4, #8]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r6, #0
	adds r1, #0x1c
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl FUN_08048E24
	adds r1, r0, #0
	adds r0, r5, #0
	bl FUN_0803EF14
	ldr r1, [r5, #0x7c]
	cmp r1, #0
	bne _0803BC40
	adds r0, r5, #0
	adds r0, #0x94
	str r1, [r0]
	b _0803BC5E
	.align 2, 0
_0803BC38: .4byte gUnk_03004398
_0803BC3C: .4byte ROMREF_080770C8
_0803BC40:
	adds r1, r5, #0
	adds r1, #0x94
	ldr r0, _0803BC4C @ => FUN_0801519C
	str r0, [r1]
	b _0803BC5E
	.align 2, 0
_0803BC4C: .4byte FUN_0801519C
_0803BC50:
	adds r0, r5, #0
	adds r0, #0x94
	str r1, [r0]
	adds r0, r5, #0
	movs r1, #0x11
	bl FUN_08002040
_0803BC5E:
	adds r0, r5, #0
	movs r1, #4
	bl FUN_080017D4
	adds r0, r5, #0
	movs r1, #4
	bl FUN_080017D4
	adds r0, r7, #0
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_0803BC7C
FUN_0803BC7C: @ 0x0803BC7C
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r1, #0
	ldrb r0, [r3, #0x12]
	cmp r0, #1
	beq _0803BC8C
	cmp r0, #7
	bne _0803BCAC
_0803BC8C:
	ldr r2, _0803BCA8 @ => 0x080770C8
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x10
	b _0803BCCE
	.align 2, 0
_0803BCA8: .4byte ROMREF_080770C8
_0803BCAC:
	cmp r0, #3
	beq _0803BCB6
	cmp r0, #5
	beq _0803BCB6
	b _0803BDB6
_0803BCB6:
	ldr r2, _0803BCDC @ => 0x080770C8
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x30
_0803BCCE:
	cmp r5, #5
	bhi _0803BDB6
	lsls r0, r5, #2
	ldr r1, _0803BCE0 @ =_0803BCE4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803BCDC: .4byte ROMREF_080770C8
_0803BCE0: .4byte _0803BCE4
_0803BCE4: @ jump table
	.4byte _0803BCFC @ case 0
	.4byte _0803BD0E @ case 1
	.4byte _0803BD22 @ case 2
	.4byte _0803BD36 @ case 3
	.4byte _0803BD4A @ case 4
	.4byte _0803BD5E @ case 5
_0803BCFC:
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #4
	b _0803BD70
_0803BD0E:
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #8
	b _0803BD70
_0803BD22:
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0x10
	b _0803BD70
_0803BD36:
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0xc
	b _0803BD70
_0803BD4A:
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0x14
	b _0803BD70
_0803BD5E:
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0x18
_0803BD70:
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _0803BD84
	adds r0, r3, #0
	adds r1, r4, #0
	movs r3, #0
	bl FUN_0800192C
	b _0803BDB6
_0803BD84:
	adds r1, r3, #0
	adds r1, #0xac
	ldr r0, [r1]
	cmp r0, r4
	beq _0803BDA4
	str r4, [r1]
	adds r1, #0xe
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0xd8
	strh r5, [r0]
_0803BDA4:
	adds r0, r3, #0
	adds r0, #0xb4
	str r2, [r0]
	subs r0, #4
	str r2, [r0]
	adds r0, r3, #0
	movs r1, #0
	bl FUN_08000E44
_0803BDB6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_0803BDBC
FUN_0803BDBC: @ 0x0803BDBC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	movs r0, #0
	mov sb, r0
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r6, [r0]
	adds r0, r6, #0
	adds r0, #0x6a
	ldrb r0, [r0]
	cmp r0, #5
	bne _0803BDDE
	b _0803BF78
_0803BDDE:
	bl FUN_08023680
	cmp r0, #1
	beq _0803BDE8
	b _0803BF20
_0803BDE8:
	ldr r2, _0803BF10 @ => 0x08073A54
	ldrh r1, [r6, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, #4
	adds r0, r0, r2
	ldr r2, [r0]
	cmp r2, #0
	beq _0803BE08
	movs r0, #0xa3
	lsls r0, r0, #1
	adds r1, r7, r0
	adds r0, r6, #0
	bl _call_via_r2
_0803BE08:
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r4, r7, r1
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xe
	bl FUN_0802CB40
	movs r5, #0
	movs r2, #0xa3
	lsls r2, r2, #1
	adds r2, r2, r7
	mov r8, r2
	ldr r3, _0803BF14 @ => 0x080756B0
_0803BE24:
	mov r1, r8
	adds r0, r1, r5
	ldrb r2, [r0]
	cmp r2, #0
	beq _0803BE4E
	lsls r1, r5, #1
	adds r1, r4, r1
	lsls r0, r2, #2
	adds r0, r0, r3
	ldrh r0, [r0, #2]
	strh r0, [r1]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bls _0803BE24
_0803BE4E:
	adds r0, r7, #0
	bl FUN_0803C594
	cmp r0, #1
	bne _0803BEA8
	cmp r5, #6
	bhi _0803BEA8
	adds r0, r6, #0
	bl FUN_0803D868
	cmp r0, #0
	bne _0803BEA8
	adds r0, r6, #0
	adds r0, #0x6a
	ldrb r0, [r0]
	cmp r0, #3
	beq _0803BEA8
	ldrh r0, [r6, #8]
	cmp r0, #0x4d
	beq _0803BEA8
	cmp r0, #0x89
	beq _0803BEA8
	cmp r0, #0x85
	beq _0803BEA8
	movs r2, #0x1c
	mov r1, r8
	adds r0, r1, r5
	strb r2, [r0]
	lsls r0, r5, #1
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r1, r7, r2
	adds r1, r1, r0
	ldr r0, _0803BF14 @ => 0x080756B0
	adds r0, #0x70
	ldrh r0, [r0, #2]
	strh r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_0803BEA8:
	adds r0, r7, #0
	bl FUN_0803C594
	cmp r0, #1
	bne _0803BF2A
	ldr r0, _0803BF18 @ => 0x03003E24
	ldr r1, _0803BF1C @ => 0x030043A0
	ldrb r1, [r1]
	bl FUN_08029724
	cmp r0, #1
	bne _0803BF2A
	cmp r5, #6
	bhi _0803BF2A
	adds r0, r6, #0
	bl FUN_0803D868
	cmp r0, #0
	bne _0803BF2A
	adds r0, r6, #0
	adds r0, #0x6a
	ldrb r0, [r0]
	cmp r0, #3
	beq _0803BF2A
	ldrh r0, [r6, #8]
	cmp r0, #0x4d
	beq _0803BF2A
	cmp r0, #0x89
	beq _0803BF2A
	cmp r0, #0x85
	beq _0803BF2A
	movs r2, #0x1b
	movs r1, #0xa3
	lsls r1, r1, #1
	adds r0, r7, r1
	adds r0, r0, r5
	strb r2, [r0]
	lsls r0, r5, #1
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r1, r7, r2
	adds r1, r1, r0
	ldr r0, _0803BF14 @ => 0x080756B0
	adds r0, #0x6c
	ldrh r0, [r0, #2]
	strh r0, [r1]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	b _0803BF2A
	.align 2, 0
_0803BF10: .4byte ROMREF_08073A54
_0803BF14: .4byte ROMREF_080756B0
_0803BF18: .4byte gUnk_03003E24
_0803BF1C: .4byte gUnk_030043A0
_0803BF20:
	ldr r1, _0803BF6C @ => 0x03005C60
	ldr r0, _0803BF70 @ => 0x00000884
	strh r0, [r1]
	bl FUN_08041BF0
_0803BF2A:
	mov r0, sb
	cmp r0, #0
	beq _0803BF78
	ldr r1, _0803BF74 @ => 0x03005C90
	movs r0, #0
	strb r0, [r1, #4]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	movs r2, #0
	ldr r4, _0803BF6C @ => 0x03005C60
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r3, r7, r1
_0803BF44:
	lsls r0, r2, #1
	adds r1, r0, r4
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #6
	bls _0803BF44
	movs r0, #2
	bl FUN_0802CEC4
	adds r0, r7, #0
	movs r1, #0xc
	bl FUN_08001FB0
	movs r0, #1
	b _0803BF7A
	.align 2, 0
_0803BF6C: .4byte gChoiceIDs
_0803BF70: .4byte 0x00000884
_0803BF74: .4byte gUnk_03005C90
_0803BF78:
	movs r0, #0
_0803BF7A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0803BF88
FUN_0803BF88: @ 0x0803BF88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	movs r0, #0x9a
	lsls r0, r0, #1
	mov sl, r0
	adds r1, r4, #0
	add r1, sl
	mov r8, r1
	ldr r6, [r1]
	movs r5, #0x98
	lsls r5, r5, #1
	adds r0, r4, r5
	ldr r7, [r0]
	movs r2, #0
	mov sb, r2
	ldr r0, _0803BFE0 @ => 0x03004750
	ldr r1, [r0, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0803C050
	movs r2, #0xa3
	lsls r2, r2, #1
	adds r0, r4, r2
	adds r3, r0, r1
	ldrb r0, [r3]
	cmp r0, #0x1c
	bne _0803BFE4
	adds r0, r6, #0
	bl FUN_08001848
	adds r0, r4, #0
	movs r1, #0xf
	bl FUN_08001FB0
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001F84
	b _0803C05A
	.align 2, 0
_0803BFE0: .4byte gUnk_03004750
_0803BFE4:
	cmp r0, #0x1b
	bne _0803C00C
	adds r0, r6, #0
	bl FUN_08001848
	adds r0, r6, #0
	movs r1, #0x13
	bl FUN_08001FB0
	adds r0, r6, #0
	movs r1, #0
	bl FUN_08001F84
	adds r0, r6, r5
	str r4, [r0]
	mov r1, sl
	adds r0, r6, r1
	mov r2, sb
	str r2, [r0]
	b _0803C048
_0803C00C:
	ldr r2, _0803C040 @ => 0x08073A54
	ldrh r1, [r7, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, #0xc
	adds r0, r0, r2
	ldrb r2, [r3]
	ldr r3, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	bl _call_via_r3
	adds r5, r0, #0
	cmp r5, #0
	beq _0803C044
	ldrh r0, [r4, #0xa]
	bl FUN_0803DCE8
	strh r0, [r5, #8]
	mov r1, r8
	ldr r0, [r1]
	adds r1, r7, #0
	bl FUN_080019C4
	b _0803C048
	.align 2, 0
_0803C040: .4byte ROMREF_08073A54
_0803C044:
	movs r2, #1
	mov sb, r2
_0803C048:
	adds r0, r4, #0
	bl FUN_0803C554
	b _0803C05A
_0803C050:
	movs r0, #1
	mov sb, r0
	adds r0, r4, #0
	bl FUN_0803C554
_0803C05A:
	mov r1, sb
	cmp r1, #1
	bne _0803C068
	adds r0, r6, #0
	movs r1, #0xd
	bl FUN_08001FB0
_0803C068:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0803C078
FUN_0803C078: @ 0x0803C078
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _0803C090 @ => 0x0000011D
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _0803C11C
	cmp r0, #0xe
	bgt _0803C094
	cmp r0, #0
	beq _0803C09A
	b _0803C1C8
	.align 2, 0
_0803C090: .4byte 0x0000011D
_0803C094:
	cmp r0, #0xf
	beq _0803C17C
	b _0803C1C8
_0803C09A:
	ldr r0, _0803C0D8 @ => 0x03003DF0
	ldr r0, [r0, #0x68]
	bl FUN_08026328
	cmp r0, #0
	beq _0803C0DC
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r4, r5, r2
	ldr r0, [r4]
	movs r1, #0
	bl FUN_08001FB0
	ldr r0, [r4]
	movs r1, #0x42
	bl FUN_08001F20
	adds r0, r5, #0
	movs r1, #0xe
	bl FUN_08001F84
	movs r0, #0xbd
	bl FUN_0804DE0C
	movs r3, #0x90
	lsls r3, r3, #1
	adds r1, r5, r3
	movs r0, #8
	strh r0, [r1]
	b _0803C1C8
	.align 2, 0
_0803C0D8: .4byte gUnk_03003DF0
_0803C0DC:
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, [r4]
	movs r1, #0xd
	bl FUN_08001FB0
	ldr r0, [r4]
	movs r1, #2
	bl FUN_08001F84
	adds r0, r5, #0
	bl FUN_0803C554
	ldr r2, _0803C114 @ => 0x03004230
	ldr r0, _0803C118 @ => 0x030042B0
	ldrh r1, [r0, #6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #4
	adds r0, r0, r2
	ldr r1, [r0]
	movs r2, #8
	orrs r1, r2
	str r1, [r0]
	b _0803C1C8
	.align 2, 0
_0803C114: .4byte gUnk_03004230
_0803C118: .4byte gUnk_030042B0
_0803C11C:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _0803C16C @ => 0xFFFF0000
	cmp r1, r0
	bne _0803C1C8
	adds r0, r5, #0
	movs r1, #0xf
	bl FUN_08001F84
	ldr r0, _0803C170 @ => 0x03003DF0
	ldr r0, [r0, #0x68]
	movs r2, #0xb2
	lsls r2, r2, #1
	adds r1, r5, r2
	ldrh r1, [r1]
	movs r3, #0x98
	lsls r3, r3, #1
	adds r2, r5, r3
	ldr r3, [r2]
	adds r2, r3, #0
	adds r2, #0x6a
	ldrb r2, [r2]
	adds r3, #0x68
	ldrh r3, [r3]
	lsrs r3, r3, #8
	bl FUN_080261BC
	cmp r0, #1
	bne _0803C174
	adds r0, r5, #0
	movs r1, #1
	bl FUN_08002040
	b _0803C1C8
	.align 2, 0
_0803C16C: .4byte 0xFFFF0000
_0803C170: .4byte gUnk_03003DF0
_0803C174:
	adds r0, r5, #0
	bl FUN_0803C554
	b _0803C1C8
_0803C17C:
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0803C1C8
	adds r0, r5, #0
	movs r1, #1
	bl FUN_08001FB0
	adds r0, r5, #0
	movs r1, #2
	bl FUN_08002038
	ldr r0, [r4]
	movs r1, #0xd
	bl FUN_08001FB0
	ldr r0, [r4]
	movs r1, #2
	bl FUN_08001F84
	ldr r0, [r4]
	movs r1, #4
	bl FUN_08001F20
	movs r0, #0xbd
	bl FUN_0804DE0C
	ldr r0, _0803C1D0 @ => 0x03003DF0
	ldr r1, _0803C1D4 @ => 0x000003F7
	adds r0, r0, r1
	movs r1, #0xe
	strb r1, [r0]
_0803C1C8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803C1D0: .4byte gUnk_03003DF0
_0803C1D4: .4byte 0x000003F7

	thumb_func_start FUN_0803C1D8
FUN_0803C1D8: @ 0x0803C1D8
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08009B04
	adds r7, r0, #0
	adds r6, r7, #0
	adds r6, #8
	ldrb r0, [r6, #5]
	cmp r0, #0
	beq _0803C20C
	ldr r0, _0803C204 @ => 0x03003E48
	ldr r1, _0803C208 @ => 0x030043A0
	ldr r1, [r1]
	bl FUN_08026370
	cmp r0, #1
	bne _0803C20C
	movs r0, #0
	b _0803C23A
	.align 2, 0
_0803C204: .4byte gUnk_03003E48
_0803C208: .4byte gUnk_030043A0
_0803C20C:
	ldrh r0, [r6]
	ldrb r1, [r6, #3]
	ldrb r2, [r6, #4]
	ldrb r3, [r6, #5]
	bl FUN_0803B9F4
	adds r4, r0, #0
	movs r0, #0xac
	lsls r0, r0, #1
	adds r5, r4, r0
	movs r0, #1
	str r0, [r5]
	ldrb r1, [r6, #2]
	movs r0, #4
	ldrsh r2, [r7, r0]
	movs r0, #6
	ldrsh r3, [r7, r0]
	adds r0, r4, #0
	bl FUN_0803BB50
	movs r0, #0
	str r0, [r5]
	adds r0, r4, #0
_0803C23A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_0803C240
FUN_0803C240: @ 0x0803C240
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r3, _0803C29C @ => 0x08073A54
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	ldrh r2, [r0, #8]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r3, #0x18
	adds r1, r1, r3
	ldr r2, [r1]
	adds r1, r5, #0
	bl _call_via_r2
	cmp r0, #1
	bne _0803C2A0
	adds r0, r4, #0
	bl FUN_0803BDBC
	adds r1, r0, #0
	cmp r1, #1
	bne _0803C2A0
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r0, r4, r2
	str r5, [r0]
	adds r2, #0x1c
	adds r0, r4, r2
	str r1, [r0]
	adds r0, r5, #0
	bl FUN_08001848
	adds r0, r5, #0
	movs r1, #4
	bl FUN_08001F20
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08001FB0
	movs r0, #1
	b _0803C2A2
	.align 2, 0
_0803C29C: .4byte ROMREF_08073A54
_0803C2A0:
	movs r0, #0
_0803C2A2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start FUN_0803C2A8
FUN_0803C2A8: @ 0x0803C2A8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r5, [r0]
	ldr r6, _0803C308 @ => 0x080770C8
	adds r1, #0x34
	adds r0, r4, r1
	ldrh r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	cmp r1, #0
	beq _0803C31C
	adds r0, r4, #0
	adds r0, #0xd8
	ldrh r1, [r0]
	adds r0, r4, #0
	bl FUN_0803BC7C
	adds r0, r4, #0
	bl FUN_0803EF58
	ldrh r1, [r5, #8]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r6, #0
	adds r1, #0x1c
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl FUN_08048E24
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_0803EF14
	ldr r1, [r4, #0x7c]
	cmp r1, #0
	bne _0803C30C
	adds r0, r4, #0
	adds r0, #0x94
	str r1, [r0]
	b _0803C32A
	.align 2, 0
_0803C308: .4byte ROMREF_080770C8
_0803C30C:
	adds r1, r4, #0
	adds r1, #0x94
	ldr r0, _0803C318 @ => FUN_0801519C
	str r0, [r1]
	b _0803C32A
	.align 2, 0
_0803C318: .4byte FUN_0801519C
_0803C31C:
	adds r0, r4, #0
	adds r0, #0x94
	str r1, [r0]
	adds r0, r4, #0
	movs r1, #0x11
	bl FUN_08002040
_0803C32A:
	adds r0, r4, #0
	movs r1, #4
	bl FUN_080017D4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start FUN_0803C338
FUN_0803C338: @ 0x0803C338
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r4, [r0]
	ldr r0, _0803C398 @ => 0x08073A54
	mov r8, r0
	ldrh r1, [r4, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, r8
	adds r1, #0x18
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	cmp r0, #1
	bne _0803C39C
	ldrh r1, [r4, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, r8
	adds r1, #8
	adds r0, r0, r1
	ldr r3, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl _call_via_r3
	cmp r0, #1
	bne _0803C39C
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl FUN_08008130
	b _0803C39E
	.align 2, 0
_0803C398: .4byte ROMREF_08073A54
_0803C39C:
	movs r0, #0
_0803C39E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_0803C3A8
FUN_0803C3A8: @ 0x0803C3A8
	movs r0, #0
	bx lr

	thumb_func_start FUN_0803C3AC
FUN_0803C3AC: @ 0x0803C3AC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r5, _0803C3F8 @ => 0x03004398
	ldr r0, [r5]
	adds r1, r4, #0
	adds r1, #0x68
	mov r2, sp
	bl FUN_08053908
	ldr r0, [r5]
	adds r4, #0x70
	add r5, sp, #8
	adds r1, r4, #0
	adds r2, r5, #0
	bl FUN_08053908
	ldr r0, [sp]
	ldr r1, [sp, #8]
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r0, r0, #0x10
	str r0, [r6]
	ldr r0, [sp, #4]
	ldr r1, [r5, #4]
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r0, r0, #0x10
	str r0, [r6, #4]
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803C3F8: .4byte gUnk_03004398

	thumb_func_start FUN_0803C3FC
FUN_0803C3FC: @ 0x0803C3FC
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r5, #0
	str r5, [r0]
	ldr r0, [r4, #0x58]
	cmp r0, #0
	beq _0803C418
	movs r1, #1
	bl FUN_08001FB0
	str r5, [r4, #0x58]
_0803C418:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0803C420
FUN_0803C420: @ 0x0803C420
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0xf
	bhi _0803C4C0
	lsls r0, r0, #2
	ldr r1, _0803C43C @ =_0803C440
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803C43C: .4byte _0803C440
_0803C440: @ jump table
	.4byte _0803C4C0 @ case 0
	.4byte _0803C480 @ case 1
	.4byte _0803C48A @ case 2
	.4byte _0803C4C0 @ case 3
	.4byte _0803C4C0 @ case 4
	.4byte _0803C4C0 @ case 5
	.4byte _0803C4C0 @ case 6
	.4byte _0803C4C0 @ case 7
	.4byte _0803C4C0 @ case 8
	.4byte _0803C4C0 @ case 9
	.4byte _0803C4C0 @ case 10
	.4byte _0803C4C0 @ case 11
	.4byte _0803C494 @ case 12
	.4byte _0803C4C0 @ case 13
	.4byte _0803C4C0 @ case 14
	.4byte _0803C4BA @ case 15
_0803C480:
	adds r0, r4, #0
	movs r1, #2
	bl FUN_08002038
	b _0803C4C0
_0803C48A:
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001FB0
	b _0803C4C0
_0803C494:
	ldr r1, _0803C4A4 @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803C4A8
	cmp r0, #0x37
	beq _0803C4B2
	b _0803C4C0
	.align 2, 0
_0803C4A4: .4byte 0x0000011D
_0803C4A8:
	adds r0, r4, #0
	movs r1, #0x37
	bl FUN_08001F84
	b _0803C4C0
_0803C4B2:
	adds r0, r4, #0
	bl FUN_0803BF88
	b _0803C4C0
_0803C4BA:
	adds r0, r4, #0
	bl FUN_0803C078
_0803C4C0:
	adds r0, r4, #0
	movs r1, #4
	bl FUN_080017D4
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _0803C4DE
	subs r1, #0x24
	adds r0, r4, r1
	ldr r0, [r0]
	bl FUN_0803D554
_0803C4DE:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_0803C4E4
FUN_0803C4E4: @ 0x0803C4E4
	push {r4, lr}
	adds r1, r0, #0
	movs r0, #0x98
	lsls r0, r0, #1
	adds r4, r1, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0803C520
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r0, [r0]
	cmp r0, #1
	bne _0803C508
	ldr r0, _0803C528 @ => 0x03004398
	ldr r0, [r0]
	bl FUN_08049288
_0803C508:
	ldr r0, [r4]
	cmp r0, #0
	beq _0803C520
	adds r0, #0xe0
	ldr r0, [r0]
	bl FUN_0804E03C
	ldr r0, [r4]
	bl FUN_0803D720
	movs r0, #0
	str r0, [r4]
_0803C520:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803C528: .4byte gUnk_03004398

	thumb_func_start FUN_0803C52C
FUN_0803C52C: @ 0x0803C52C
	movs r1, #0x98
	lsls r1, r1, #1
	adds r2, r0, r1
	ldr r1, [r2]
	adds r1, #0xd4
	ldr r1, [r1]
	str r1, [r0, #0x68]
	ldr r1, [r2]
	adds r1, #0xd8
	ldr r1, [r1]
	str r1, [r0, #0x6c]
	ldr r1, [r2]
	adds r1, #0xcc
	ldr r1, [r1]
	str r1, [r0, #0x70]
	ldr r1, [r2]
	adds r1, #0xd0
	ldr r1, [r1]
	str r1, [r0, #0x74]
	bx lr

	thumb_func_start FUN_0803C554
FUN_0803C554: @ 0x0803C554
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r4, #0
	str r4, [r0]
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08001FB0
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	movs r2, #0xe
	bl FUN_0802CB40
	movs r1, #0xa3
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	movs r2, #7
	bl FUN_0802CB40
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r5, r1
	str r4, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_0803C594
FUN_0803C594: @ 0x0803C594
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0803C5D8 @ => 0x03003E24
	ldr r0, _0803C5DC @ => 0x030043A0
	ldrb r1, [r0]
	adds r0, r5, #0
	bl FUN_08029724
	cmp r0, #0
	bne _0803C5B6
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x4c]
	cmp r0, #1
	bne _0803C5E0
_0803C5B6:
	ldrh r0, [r4, #0xa]
	cmp r0, #0x6d
	bne _0803C5D4
	bl FUN_08021320
	cmp r0, #0
	bne _0803C5D4
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #3
	bl FUN_0801DF10
	cmp r0, #0
	beq _0803C5E0
_0803C5D4:
	movs r0, #1
	b _0803C5E2
	.align 2, 0
_0803C5D8: .4byte gUnk_03003E24
_0803C5DC: .4byte gUnk_030043A0
_0803C5E0:
	movs r0, #0
_0803C5E2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start FUN_0803C5E8
FUN_0803C5E8: @ 0x0803C5E8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	movs r7, #1
	ldr r0, [r5, #0xc]
	cmp r0, #1
	bne _0803C5FA
	strh r7, [r5, #6]
_0803C5FA:
	ldrh r0, [r5, #6]
	cmp r0, #1
	beq _0803C674
	cmp r0, #1
	bgt _0803C60A
	cmp r0, #0
	beq _0803C610
	b _0803C682
_0803C60A:
	cmp r0, #6
	beq _0803C648
	b _0803C682
_0803C610:
	bl FUN_08048DBC
	movs r3, #0x3f
	cmp r0, #0
	bne _0803C61C
	movs r3, #0xa0
_0803C61C:
	adds r0, r3, #0
	bl FUN_0804DE0C
	movs r4, #6
	movs r3, #0x8d
	lsls r3, r3, #1
	str r4, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0xc
	bl FUN_0803DB6C
	strh r4, [r5, #6]
	ldr r0, [r5]
	movs r2, #0x93
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r0, #0x96
	strh r0, [r1]
	b _0803C682
_0803C648:
	ldr r0, _0803C66C @ => 0x03003E28
	movs r1, #1
	movs r2, #6
	bl FUN_08038A30
	ldr r0, [r5]
	movs r2, #0x93
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	ldr r1, _0803C670 @ => 0xFFFF0000
	cmp r0, r1
	bne _0803C682
	strh r7, [r5, #6]
	b _0803C682
	.align 2, 0
_0803C66C: .4byte gUnk_03003E28
_0803C670: .4byte 0xFFFF0000
_0803C674:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #6
	movs r3, #4
	bl FUN_0803DC54
	movs r7, #2
_0803C682:
	adds r0, r7, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_0803C68C
FUN_0803C68C: @ 0x0803C68C
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x48]
	cmp r0, #0
	beq _0803C6EA
	adds r1, r3, #0
	adds r1, #0x6a
	ldrb r0, [r1]
	cmp r0, #1
	beq _0803C6EA
	cmp r0, #3
	beq _0803C6EA
	movs r0, #2
	strb r0, [r1]
	ldr r2, _0803C6DC @ => 0x08073A54
	ldrh r1, [r3, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	adds r0, #0x2c
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	movs r2, #0xa0
	lsls r2, r2, #4
	adds r1, r2, #0
	subs r4, r1, r0
	adds r2, r3, #0
	adds r2, #0x68
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r0, r4
	ldr r1, _0803C6E0 @ => 0x000063FF
	cmp r0, r1
	bgt _0803C6E4
	ldrh r0, [r2]
	adds r0, r4, r0
	b _0803C6E8
	.align 2, 0
_0803C6DC: .4byte ROMREF_08073A54
_0803C6E0: .4byte 0x000063FF
_0803C6E4:
	movs r0, #0xc8
	lsls r0, r0, #7
_0803C6E8:
	strh r0, [r2]
_0803C6EA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_0803C6F0
FUN_0803C6F0: @ 0x0803C6F0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	movs r6, #1
	ldrh r0, [r5, #6]
	cmp r0, #0
	bne _0803C702
	strh r0, [r5, #6]
_0803C702:
	ldr r0, [r5, #0xc]
	cmp r0, #1
	bne _0803C70A
	strh r6, [r5, #6]
_0803C70A:
	ldrh r0, [r5, #6]
	cmp r0, #0x42
	bls _0803C712
	b _0803C9D8
_0803C712:
	lsls r0, r0, #2
	ldr r1, _0803C71C @ =_0803C720
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803C71C: .4byte _0803C720
_0803C720: @ jump table
	.4byte _0803C82C @ case 0
	.4byte _0803C9CA @ case 1
	.4byte _0803C9D8 @ case 2
	.4byte _0803C9D8 @ case 3
	.4byte _0803C88A @ case 4
	.4byte _0803C9AA @ case 5
	.4byte _0803C9D8 @ case 6
	.4byte _0803C964 @ case 7
	.4byte _0803C9D8 @ case 8
	.4byte _0803C9D8 @ case 9
	.4byte _0803C9D8 @ case 10
	.4byte _0803C9D8 @ case 11
	.4byte _0803C9D8 @ case 12
	.4byte _0803C9D8 @ case 13
	.4byte _0803C9D8 @ case 14
	.4byte _0803C9D8 @ case 15
	.4byte _0803C9D8 @ case 16
	.4byte _0803C9D8 @ case 17
	.4byte _0803C9D8 @ case 18
	.4byte _0803C9D8 @ case 19
	.4byte _0803C9D8 @ case 20
	.4byte _0803C9D8 @ case 21
	.4byte _0803C9D8 @ case 22
	.4byte _0803C9D8 @ case 23
	.4byte _0803C9D8 @ case 24
	.4byte _0803C9D8 @ case 25
	.4byte _0803C9D8 @ case 26
	.4byte _0803C9D8 @ case 27
	.4byte _0803C9D8 @ case 28
	.4byte _0803C9D8 @ case 29
	.4byte _0803C9D8 @ case 30
	.4byte _0803C9D8 @ case 31
	.4byte _0803C9D8 @ case 32
	.4byte _0803C846 @ case 33
	.4byte _0803C8B0 @ case 34
	.4byte _0803C996 @ case 35
	.4byte _0803C938 @ case 36
	.4byte _0803C9D8 @ case 37
	.4byte _0803C9D8 @ case 38
	.4byte _0803C9D8 @ case 39
	.4byte _0803C9D8 @ case 40
	.4byte _0803C9D8 @ case 41
	.4byte _0803C9D8 @ case 42
	.4byte _0803C9D8 @ case 43
	.4byte _0803C9D8 @ case 44
	.4byte _0803C9D8 @ case 45
	.4byte _0803C9D8 @ case 46
	.4byte _0803C9D8 @ case 47
	.4byte _0803C9D8 @ case 48
	.4byte _0803C9D8 @ case 49
	.4byte _0803C9D8 @ case 50
	.4byte _0803C9D8 @ case 51
	.4byte _0803C9D8 @ case 52
	.4byte _0803C9D8 @ case 53
	.4byte _0803C9D8 @ case 54
	.4byte _0803C9D8 @ case 55
	.4byte _0803C9D8 @ case 56
	.4byte _0803C9D8 @ case 57
	.4byte _0803C9D8 @ case 58
	.4byte _0803C9D8 @ case 59
	.4byte _0803C9D8 @ case 60
	.4byte _0803C9D8 @ case 61
	.4byte _0803C9D8 @ case 62
	.4byte _0803C9D8 @ case 63
	.4byte _0803C9D8 @ case 64
	.4byte _0803C9D8 @ case 65
	.4byte _0803C8CE @ case 66
_0803C82C:
	movs r0, #0x1c
	movs r1, #6
	str r1, [sp]
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0xc
	movs r3, #0x64
	bl FUN_0803DB6C
	movs r0, #7
	strh r0, [r5, #6]
	b _0803C9D8
_0803C846:
	ldr r0, [r4, #0x34]
	movs r1, #0
	add r2, sp, #8
	bl FUN_08001A84
	ldr r0, [r5]
	adds r2, r5, #0
	adds r2, #0x10
	movs r1, #1
	str r1, [sp]
	add r1, sp, #8
	movs r3, #4
	bl FUN_08043BB8
	movs r3, #0x8d
	lsls r3, r3, #1
	movs r0, #6
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0xa
	bl FUN_0803DB6C
	ldr r0, [r5]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
	movs r0, #4
	strh r0, [r5, #6]
	b _0803C9D8
_0803C88A:
	movs r0, #6
	str r0, [sp]
	movs r0, #0x33
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0xa
	movs r3, #0x64
	bl FUN_0803DB6C
	ldr r0, [r5]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r0, r3
	movs r1, #0
	strh r1, [r0]
	movs r0, #0x22
	strh r0, [r5, #6]
	b _0803C9D8
_0803C8B0:
	ldr r2, [r5]
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0803C8C0
	b _0803C9D8
_0803C8C0:
	adds r0, r2, #0
	movs r1, #0x34
	bl FUN_08001F20
	movs r0, #0x42
	strh r0, [r5, #6]
	b _0803C9D8
_0803C8CE:
	ldr r1, [r5]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x2b
	bne _0803C8FC
	movs r0, #0x64
	bl FUN_0804DE0C
	adds r1, r4, #0
	adds r1, #0xe0
	str r0, [r1]
	ldr r0, [r5]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
_0803C8FC:
	adds r0, r4, #0
	adds r0, #0x6a
	ldrb r1, [r0]
	adds r2, r0, #0
	adds r4, #0x68
	cmp r1, #2
	bne _0803C91E
	ldrh r1, [r4]
	movs r3, #0
	ldrsh r0, [r4, r3]
	cmp r0, #0x33
	ble _0803C91E
	adds r0, r1, #0
	subs r0, #0x33
	strh r0, [r4]
	movs r0, #0
	b _0803C926
_0803C91E:
	movs r0, #0
	strb r0, [r2]
	strh r0, [r4]
	movs r0, #1
_0803C926:
	cmp r0, #1
	bne _0803C9D8
	ldr r0, [r5]
	movs r1, #0x35
	bl FUN_08001F20
	movs r0, #0x24
	strh r0, [r5, #6]
	b _0803C9D8
_0803C938:
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0803C9D8
	adds r4, #0xe0
	ldr r0, [r4]
	bl FUN_0804E03C
	ldr r0, [r5]
	movs r1, #0x1c
	bl FUN_08001F20
	movs r0, #0x64
	bl FUN_0804DE0C
	str r0, [r4]
	movs r0, #0x23
	strh r0, [r5, #6]
	b _0803C9D8
_0803C964:
	adds r0, r4, #0
	adds r0, #0x6a
	ldrb r1, [r0]
	adds r2, r0, #0
	adds r4, #0x68
	cmp r1, #2
	bne _0803C986
	ldrh r1, [r4]
	movs r3, #0
	ldrsh r0, [r4, r3]
	cmp r0, #0x33
	ble _0803C986
	adds r0, r1, #0
	subs r0, #0x33
	strh r0, [r4]
	movs r0, #0
	b _0803C98E
_0803C986:
	movs r0, #0
	strb r0, [r2]
	strh r0, [r4]
	movs r0, #1
_0803C98E:
	cmp r0, #1
	bne _0803C9D8
	strh r0, [r5, #6]
	b _0803C9D8
_0803C996:
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0803C9D8
	movs r0, #5
	strh r0, [r5, #6]
	b _0803C9D8
_0803C9AA:
	ldr r0, [r5]
	adds r1, r4, #0
	adds r1, #0x60
	adds r2, r5, #0
	adds r2, #0x10
	movs r4, #1
	str r4, [sp]
	movs r3, #4
	bl FUN_08043BB8
	ldr r0, [r5]
	movs r1, #0xa
	bl FUN_08001F20
	strh r4, [r5, #6]
	b _0803C9D8
_0803C9CA:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #6
	movs r3, #4
	bl FUN_0803DC54
	movs r6, #2
_0803C9D8:
	adds r0, r6, #0
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0803C9E4
FUN_0803C9E4: @ 0x0803C9E4
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x6a
	movs r0, #2
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x68
	strh r1, [r0]
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x58]
	cmp r0, #0
	beq _0803CA0A
	movs r1, #1
	bl FUN_08001FB0
	ldr r1, [r4, #0x34]
	movs r0, #0
	str r0, [r1, #0x58]
_0803CA0A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_0803CA10
FUN_0803CA10: @ 0x0803CA10
	push {lr}
	adds r2, r0, #0
	adds r0, #0x6a
	ldrb r0, [r0]
	cmp r0, #2
	bne _0803CA2C
	adds r0, r2, #0
	adds r0, #0x68
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, r1
	blt _0803CA2C
	movs r0, #1
	b _0803CA2E
_0803CA2C:
	movs r0, #0
_0803CA2E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0803CA34
FUN_0803CA34: @ 0x0803CA34
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0x6a
	ldrb r0, [r0]
	cmp r0, #2
	bne _0803CA58
	adds r1, r2, #0
	adds r1, #0x68
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0x33
	ble _0803CA58
	adds r0, r3, #0
	subs r0, #0x33
	strh r0, [r1]
	movs r0, #0
	b _0803CA66
_0803CA58:
	adds r0, r2, #0
	adds r0, #0x6a
	movs r1, #0
	strb r1, [r0]
	subs r0, #2
	strh r1, [r0]
	movs r0, #1
_0803CA66:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_0803CA6C
FUN_0803CA6C: @ 0x0803CA6C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	movs r7, #1
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _0803CA7E
	strh r7, [r4, #6]
_0803CA7E:
	ldrh r0, [r4, #6]
	cmp r0, #1
	beq _0803CB58
	cmp r0, #1
	bgt _0803CA8E
	cmp r0, #0
	beq _0803CA94
	b _0803CB72
_0803CA8E:
	cmp r0, #0x20
	beq _0803CB10
	b _0803CB72
_0803CA94:
	movs r3, #0x8d
	lsls r3, r3, #1
	movs r0, #3
	str r0, [sp]
	movs r0, #0x21
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xa
	bl FUN_0803DB6C
	movs r0, #0x20
	strh r0, [r4, #6]
	ldrh r0, [r5, #8]
	subs r0, #0x1e
	cmp r0, #6
	bhi _0803CB72
	lsls r0, r0, #2
	ldr r1, _0803CAC0 @ =_0803CAC4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803CAC0: .4byte _0803CAC4
_0803CAC4: @ jump table
	.4byte _0803CAE0 @ case 0
	.4byte _0803CB72 @ case 1
	.4byte _0803CAE8 @ case 2
	.4byte _0803CAF0 @ case 3
	.4byte _0803CAF8 @ case 4
	.4byte _0803CB00 @ case 5
	.4byte _0803CB08 @ case 6
_0803CAE0:
	movs r0, SOUNDTRACK_DUSTYHOGG_BLUES
	bl FUN_0804DE84
	b _0803CB72
_0803CAE8:
	movs r0, SOUNDTRACK_HEAVY_METAL
	bl FUN_0804DE84
	b _0803CB72
_0803CAF0:
	movs r0, SOUNDTRACK_TRANCE_MODE
	bl FUN_0804DE84
	b _0803CB72
_0803CAF8:
	movs r0, SOUNDTRACK_SWEETNESS
	bl FUN_0804DE84
	b _0803CB72
_0803CB00:
	movs r0, SOUNDTRACK_ROMANCE
	bl FUN_0804DE84
	b _0803CB72
_0803CB08:
	movs r0, SOUNDTRACK_SPEED_METAL
	bl FUN_0804DE84
	b _0803CB72
_0803CB10:
	ldr r6, _0803CB54 @ => 0x03003E28
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
	beq _0803CB48
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803CB48
	ldrh r0, [r5, #8]
	bl FUN_0803DCFC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	bl FUN_08038B24
_0803CB48:
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _0803CB72
	strh r0, [r4, #6]
	b _0803CB72
	.align 2, 0
_0803CB54: .4byte gUnk_03003E28
_0803CB58:
	ldr r0, _0803CB7C @ => 0x03003DF0
	ldr r1, _0803CB80 @ => 0x000003F6
	adds r0, r0, r1
	ldrb r0, [r0]
	bl FUN_0804DE84
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #4
	bl FUN_0803DC54
	movs r7, #2
_0803CB72:
	adds r0, r7, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803CB7C: .4byte gUnk_03003DF0
_0803CB80: .4byte 0x000003F6

	thumb_func_start FUN_0803CB84
FUN_0803CB84: @ 0x0803CB84
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _0803CBF6
	adds r5, r4, #0
	adds r5, #0x6a
	ldrb r0, [r5]
	cmp r0, #1
	beq _0803CBF6
	cmp r0, #3
	beq _0803CBF6
	ldrh r0, [r4, #8]
	bl FUN_0803DCBC
	cmp r0, #0
	beq _0803CBF6
	ldr r2, _0803CC00 @ => 0x08073A54
	ldrh r1, [r4, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	adds r0, #0x2c
	ldrb r0, [r0]
	subs r0, #1
	lsls r1, r0, #2
	adds r1, r1, r0
	movs r0, #0x14
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_08042610
	adds r1, r0, #0
	cmp r1, #1
	bne _0803CBF6
	movs r0, #0xc8
	lsls r0, r0, #7
	strb r1, [r5]
	adds r1, r4, #0
	adds r1, #0x68
	strh r0, [r1]
	adds r0, r4, #0
	bl FUN_0803CE34
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x58]
	cmp r0, #0
	beq _0803CBF4
	movs r1, #1
	bl FUN_08001FB0
	ldr r0, [r4, #0x34]
	str r6, [r0, #0x58]
_0803CBF4:
	movs r6, #1
_0803CBF6:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803CC00: .4byte ROMREF_08073A54

	thumb_func_start FUN_0803CC04
FUN_0803CC04: @ 0x0803CC04
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r2, #0
	ldr r0, _0803CC64 @ => 0x03003E18
	movs r1, #1
	bl FUN_0804ACD4
	lsls r0, r0, #0x12
	movs r1, #0xac
	lsls r1, r1, #0xe
	adds r0, r0, r1
	asrs r3, r0, #0x10
	ldr r0, _0803CC68 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #1
	bne _0803CC30
	adds r0, r3, #0
	adds r0, #0x19
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
_0803CC30:
	adds r0, r5, #0
	adds r0, #0x6a
	ldrb r1, [r0]
	adds r4, r0, #0
	adds r2, r5, #0
	adds r2, #0x68
	cmp r1, #1
	bne _0803CC6C
	ldrh r1, [r2]
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r0, r3
	ble _0803CC6C
	subs r0, r1, r3
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	movs r1, #0x64
	subs r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r6, #0
	bl FUN_0801F740
	movs r0, #0
	b _0803CC74
	.align 2, 0
_0803CC64: .4byte gUnk_03003E18
_0803CC68: .4byte gUnk_030042B0
_0803CC6C:
	movs r0, #0
	strb r0, [r4]
	strh r0, [r2]
	movs r0, #1
_0803CC74:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0803CC7C
FUN_0803CC7C: @ 0x0803CC7C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	movs r6, #1
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _0803CC8E
	strh r6, [r4, #6]
_0803CC8E:
	ldrh r0, [r4, #6]
	cmp r0, #0xb
	bls _0803CC96
	b _0803CDF2
_0803CC96:
	lsls r0, r0, #2
	ldr r1, _0803CCA0 @ =_0803CCA4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803CCA0: .4byte _0803CCA4
_0803CCA4: @ jump table
	.4byte _0803CCD4 @ case 0
	.4byte _0803CDC2 @ case 1
	.4byte _0803CDF2 @ case 2
	.4byte _0803CDF2 @ case 3
	.4byte _0803CD54 @ case 4
	.4byte _0803CDBC @ case 5
	.4byte _0803CDF2 @ case 6
	.4byte _0803CDF2 @ case 7
	.4byte _0803CD7E @ case 8
	.4byte _0803CDA8 @ case 9
	.4byte _0803CDF2 @ case 10
	.4byte _0803CD32 @ case 11
_0803CCD4:
	ldr r1, [r4]
	adds r0, r5, #0
	bl FUN_0803DA2C
	cmp r0, #0
	beq _0803CCE6
	movs r0, #1
	strh r0, [r4, #6]
	b _0803CDF0
_0803CCE6:
	movs r0, #1
	cmp r0, #0
	bne _0803CCEE
	b _0803CDF2
_0803CCEE:
	ldr r0, [r4]
	movs r1, #0
	bl FUN_0801F6B4
	str r0, [r5, #0x38]
	ldrh r0, [r5, #8]
	bl FUN_0803DCBC
	cmp r0, #3
	bhi _0803CD18
	cmp r0, #1
	blo _0803CD18
	ldrh r0, [r5, #8]
	bl FUN_0803DCD0
	lsls r0, r0, #0x18
	movs r1, #0x52
	cmp r0, #0
	bne _0803CD1A
	movs r1, #0x4f
	b _0803CD1A
_0803CD18:
	movs r1, #0
_0803CD1A:
	movs r0, #6
	str r0, [sp]
	str r1, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xa
	movs r3, #0x98
	bl FUN_0803DB6C
	movs r0, #4
	strh r0, [r4, #6]
	b _0803CDF2
_0803CD32:
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0803CDF2
	ldr r0, _0803CD4C @ => 0x03005C60
	ldr r1, _0803CD50 @ => 0x00000885
	strh r1, [r0]
	bl FUN_08041BF0
	b _0803CDBC
	.align 2, 0
_0803CD4C: .4byte gChoiceIDs
_0803CD50: .4byte 0x00000885
_0803CD54:
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0803CDF2
	ldrh r0, [r5, #8]
	bl FUN_0803DCD0
	lsls r0, r0, #0x18
	movs r1, #0x53
	cmp r0, #0
	bne _0803CD72
	movs r1, #0x50
_0803CD72:
	ldr r0, [r4]
	bl FUN_08001F20
	movs r0, #8
	strh r0, [r4, #6]
	b _0803CDF2
_0803CD7E:
	ldr r2, [r5, #0x38]
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0803CC04
	cmp r0, #1
	bne _0803CDF2
	ldrh r0, [r5, #8]
	bl FUN_0803DCD0
	lsls r0, r0, #0x18
	movs r1, #0x54
	cmp r0, #0
	bne _0803CD9C
	movs r1, #0x51
_0803CD9C:
	ldr r0, [r4]
	bl FUN_08001F20
	movs r0, #9
	strh r0, [r4, #6]
	b _0803CDF2
_0803CDA8:
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0803CDF2
	movs r0, #5
	strh r0, [r4, #6]
	b _0803CDF2
_0803CDBC:
	movs r0, #1
	strh r0, [r4, #6]
	b _0803CDF2
_0803CDC2:
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
	bne _0803CDF0
	ldrh r0, [r5, #8]
	cmp r0, #0x6d
	bne _0803CDF0
	bl FUN_08021320
	cmp r0, #0
	bne _0803CDF0
	ldr r0, _0803CDFC @ => 0x0300407C
	movs r1, #5
	bl FUN_0801DEA8
_0803CDF0:
	movs r6, #2
_0803CDF2:
	adds r0, r6, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803CDFC: .4byte gEpisode_Data

	thumb_func_start FUN_0803CE00
FUN_0803CE00: @ 0x0803CE00
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x6a
	movs r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x68
	strh r1, [r0]
	adds r0, r4, #0
	bl FUN_0803CE34
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x58]
	cmp r0, #0
	beq _0803CE2C
	movs r1, #1
	bl FUN_08001FB0
	ldr r1, [r4, #0x34]
	movs r0, #0
	str r0, [r1, #0x58]
_0803CE2C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0803CE34
FUN_0803CE34: @ 0x0803CE34
	push {lr}
	ldrh r0, [r0, #8]
	bl FUN_0803DCBC
	cmp r0, #2
	beq _0803CE50
	cmp r0, #2
	bhi _0803CE4A
	cmp r0, #1
	beq _0803CE50
	b _0803CE5E
_0803CE4A:
	cmp r0, #3
	beq _0803CE58
	b _0803CE5E
_0803CE50:
	movs r0, #0x5d
	bl FUN_0804DE0C
	b _0803CE5E
_0803CE58:
	movs r0, #0x60
	bl FUN_0804DE0C
_0803CE5E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0803CE64
FUN_0803CE64: @ 0x0803CE64
	push {lr}
	adds r1, r0, #0
	adds r0, #0x6a
	ldrb r0, [r0]
	cmp r0, #1
	bne _0803CE80
	adds r0, r1, #0
	adds r0, #0x68
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	blt _0803CE80
	movs r0, #1
	b _0803CE82
_0803CE80:
	movs r0, #0
_0803CE82:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0803CE88
FUN_0803CE88: @ 0x0803CE88
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	movs r0, #1
	mov sb, r0
	ldrh r0, [r5, #6]
	cmp r0, #0x10
	bne _0803CEA4
	b _0803CFE4
_0803CEA4:
	cmp r0, #0x10
	bgt _0803CEB4
	cmp r0, #0
	beq _0803CEC8
	cmp r0, #1
	bne _0803CEB2
	b _0803D014
_0803CEB2:
	b _0803D062
_0803CEB4:
	cmp r0, #0x3b
	beq _0803CF68
	cmp r0, #0x3b
	bgt _0803CEC2
	cmp r0, #0x39
	beq _0803CF4A
	b _0803D062
_0803CEC2:
	cmp r0, #0x3d
	beq _0803CF44
	b _0803D062
_0803CEC8:
	ldr r0, [r5]
	bl FUN_08001848
	cmp r7, #0
	beq _0803CEDE
	ldr r0, [r6, #0x34]
	ldr r2, [r5]
	adds r2, #0x18
	movs r1, #1
	bl FUN_08001A84
_0803CEDE:
	ldr r0, [r6, #0x34]
	ldrb r0, [r0, #0x12]
	cmp r0, #3
	beq _0803CEEA
	cmp r0, #5
	bne _0803CEF6
_0803CEEA:
	ldr r0, [r5]
	adds r1, r6, #0
	movs r2, #1
	bl FUN_08006DFC
	b _0803CF00
_0803CEF6:
	ldr r0, [r5]
	adds r1, r6, #0
	movs r2, #0
	bl FUN_08006DFC
_0803CF00:
	cmp r7, #0
	bne _0803CF28
	ldr r0, [r6, #0x34]
	ldrb r0, [r0, #0x12]
	cmp r0, #1
	beq _0803CF10
	cmp r0, #7
	bne _0803CF28
_0803CF10:
	movs r3, #0x8d
	lsls r3, r3, #1
	movs r0, #1
	str r0, [sp]
	movs r0, #0x5b
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0xb
	bl FUN_0803DB6C
	b _0803CF3E
_0803CF28:
	movs r3, #0x8d
	lsls r3, r3, #1
	movs r0, #6
	str r0, [sp]
	movs r0, #0x5b
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0xb
	bl FUN_0803DB6C
_0803CF3E:
	movs r0, #0x3d
	strh r0, [r5, #6]
	b _0803D062
_0803CF44:
	movs r0, #0x39
	strh r0, [r5, #6]
	b _0803D062
_0803CF4A:
	ldr r2, [r5]
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0803CF5A
	b _0803D062
_0803CF5A:
	adds r0, r2, #0
	movs r1, #0x5c
	bl FUN_08001F20
	movs r0, #0x3b
	strh r0, [r5, #6]
	b _0803D062
_0803CF68:
	movs r4, #0
	ldr r3, _0803CFCC @ => 0x03003E28
	mov r8, r3
	ldrh r0, [r6, #8]
	bl FUN_0803DCFC
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, r8
	movs r1, #1
	bl FUN_08038A30
	ldrh r0, [r5, #8]
	cmp r0, #0
	beq _0803CFA6
	subs r0, #1
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803CFA6
	ldrh r0, [r6, #8]
	bl FUN_0803DCFC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, r8
	bl FUN_08038B24
	movs r4, #1
_0803CFA6:
	ldr r0, [r5, #0xc]
	cmp r0, #1
	bne _0803CFAE
	movs r4, #1
_0803CFAE:
	cmp r4, #1
	bne _0803D062
	ldr r0, [r6, #0x34]
	cmp r7, #0
	bne _0803CFD0
	ldrb r2, [r0, #0x12]
	cmp r2, #1
	beq _0803CFC2
	cmp r2, #7
	bne _0803CFD0
_0803CFC2:
	movs r1, #2
	bl FUN_0803BC7C
	b _0803CFD6
	.align 2, 0
_0803CFCC: .4byte gUnk_03003E28
_0803CFD0:
	movs r1, #0
	bl FUN_0803BC7C
_0803CFD6:
	ldr r0, [r5]
	movs r1, #0x5d
	bl FUN_08001F20
	movs r0, #0x10
	strh r0, [r5, #6]
	b _0803D062
_0803CFE4:
	ldr r2, [r5]
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0803D062
	adds r0, r2, #0
	movs r1, #0xa
	bl FUN_08001F20
	ldr r0, [r5]
	adds r1, r6, #0
	adds r1, #0x54
	adds r2, r5, #0
	adds r2, #0x10
	mov r3, sb
	str r3, [sp]
	movs r3, #4
	bl FUN_08043BB8
	mov r0, sb
	strh r0, [r5, #6]
	b _0803D062
_0803D014:
	cmp r7, #0
	bne _0803D044
	ldr r4, _0803D074 @ => 0x03004398
	ldr r0, [r4]
	ldr r1, [r6, #0x34]
	ldr r2, [r5]
	add r3, sp, #8
	str r3, [sp]
	movs r3, #0
	bl FUN_080493F8
	ldr r0, [r4]
	add r4, sp, #0xc
	add r1, sp, #8
	adds r2, r4, #0
	bl FUN_08053954
	ldr r1, [r5]
	ldr r0, [sp, #0xc]
	lsls r0, r0, #0x10
	str r0, [r1, #0x18]
	ldr r0, [r4, #4]
	lsls r0, r0, #0x10
	str r0, [r1, #0x1c]
_0803D044:
	ldr r0, _0803D078 @ => 0x08073A14
	lsls r1, r7, #3
	adds r0, #4
	adds r1, r1, r0
	ldrb r2, [r1]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #4
	bl FUN_0803DC54
	ldr r1, [r5]
	ldr r0, _0803D07C @ => FUN_08001EBC
	str r0, [r1, #0x64]
	movs r0, #2
	mov sb, r0
_0803D062:
	mov r0, sb
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803D074: .4byte gUnk_03004398
_0803D078: .4byte ROMREF_08073A14
_0803D07C: .4byte FUN_08001EBC

	thumb_func_start FUN_0803D080
FUN_0803D080: @ 0x0803D080
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r1, r2, #0
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	ldr r0, [r5]
	movs r2, #0x96
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r0, [r0]
	bl FUN_0804ACD4
	movs r1, #0
	str r1, [r4, #0x38]
	cmp r0, #5
	beq _0803D0B0
	ldr r0, [r5]
	movs r1, #1
	bl FUN_0801F6B4
	str r0, [r4, #0x38]
	movs r3, #0x11
	b _0803D0B2
_0803D0B0:
	movs r3, #0x13
_0803D0B2:
	ldr r0, [r4, #0x34]
	movs r2, #0xf
	cmp r6, #0xf
	beq _0803D0BC
	adds r2, r6, #0
_0803D0BC:
	movs r4, #0x93
	lsls r4, r4, #1
	adds r1, r0, r4
	strh r2, [r1]
	adds r0, r3, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_0803D0CC
FUN_0803D0CC: @ 0x0803D0CC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r2, #0
	lsls r4, r3, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0803D13C @ => 0x03003E28
	movs r1, #1
	movs r2, #6
	bl FUN_08038A30
	ldr r0, [r6, #0x34]
	movs r1, #0x93
	lsls r1, r1, #1
	adds r2, r0, r1
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r4
	blo _0803D122
	ldr r0, _0803D140 @ => 0x0000011B
	cmp r5, r0
	bne _0803D116
	bl FUN_08048DBC
	movs r5, #0x3f
	cmp r0, #0
	bne _0803D10A
	movs r5, #0xa0
_0803D10A:
	adds r0, r5, #0
	bl FUN_0804DE0C
	adds r1, r6, #0
	adds r1, #0xe0
	str r0, [r1]
_0803D116:
	ldr r0, [r6, #0x34]
	movs r2, #0x93
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r0, #0
	strh r0, [r1]
_0803D122:
	ldr r1, _0803D13C @ => 0x03003E28
	ldr r3, [r7]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r3, r3, r0
	adds r0, r7, #0
	movs r2, #6
	bl FUN_0803D944
	cmp r0, #0
	bne _0803D144
	movs r0, #5
	b _0803D146
	.align 2, 0
_0803D13C: .4byte gUnk_03003E28
_0803D140: .4byte 0x0000011B
_0803D144:
	movs r0, #0x13
_0803D146:
	strh r0, [r7, #6]
	movs r0, #0x13
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_0803D150
FUN_0803D150: @ 0x0803D150
	push {lr}
	movs r2, #0xb
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0803D164
	movs r2, #1
_0803D164:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0803D16C
FUN_0803D16C: @ 0x0803D16C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	bl FUN_0803DD10
	adds r6, r0, #0
	cmp r6, #0
	beq _0803D1E4
	movs r5, #0
	movs r4, #0
	strh r7, [r6, #8]
	str r4, [r6, #0x34]
	ldr r2, _0803D1EC @ => 0x08073A54
	lsls r1, r7, #1
	adds r1, r1, r7
	lsls r1, r1, #4
	adds r0, r1, r2
	adds r0, #0x20
	ldrb r0, [r0]
	adds r3, r6, #0
	adds r3, #0x3d
	strb r0, [r3]
	adds r2, #0x24
	adds r1, r1, r2
	ldr r0, [r1]
	str r0, [r6, #0x40]
	str r4, [r6, #0x4c]
	movs r0, #1
	str r0, [r6, #0x50]
	adds r0, r6, #0
	adds r0, #0x6a
	strb r5, [r0]
	subs r0, #2
	strh r4, [r0]
	adds r0, #4
	movs r1, #0
	movs r2, #0x30
	bl FUN_0802CB40
	adds r0, r6, #0
	adds r0, #0x9c
	movs r1, #0
	movs r2, #0x30
	bl FUN_0802CB40
	adds r0, r6, #0
	adds r0, #0xd4
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	subs r0, #0xc
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #0xc
	strb r5, [r0]
	subs r0, #0xd0
	movs r1, #0
	movs r2, #0x28
	bl FUN_0802CB40
_0803D1E4:
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803D1EC: .4byte ROMREF_08073A54

	thumb_func_start FUN_0803D1F0
FUN_0803D1F0: @ 0x0803D1F0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	movs r1, #0
	movs r6, #0
	adds r5, r4, #0
	adds r5, #0xc
_0803D1FE:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r3, r0, #2
	adds r0, r5, r3
	ldr r2, [r0]
	cmp r2, #0
	bne _0803D228
	str r7, [r0]
	adds r0, r4, r3
	strh r2, [r0, #0x12]
	strh r2, [r0, #0x10]
	adds r1, r4, #0
	adds r1, #0x18
	adds r1, r1, r3
	str r2, [r1]
	strb r6, [r0, #0x1c]
	strb r6, [r0, #0x1d]
	adds r0, r3, #0
	adds r0, #0xc
	adds r0, r4, r0
	b _0803D234
_0803D228:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #1
	bls _0803D1FE
	movs r0, #0
_0803D234:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0803D23C
FUN_0803D23C: @ 0x0803D23C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r2, #0
	adds r7, r6, #0
	adds r7, #0xc
	adds r3, r7, #0
_0803D24A:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r1, r0, #2
	adds r0, r3, r1
	ldr r0, [r0]
	cmp r0, r5
	beq _0803D272
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _0803D24A
	movs r4, #0
_0803D264:
	ldrb r0, [r4, #0x10]
	cmp r0, #2
	bne _0803D27A
	movs r0, #0
	str r0, [r4, #0xc]
	movs r5, #1
	b _0803D2BC
_0803D272:
	adds r0, r1, #0
	adds r0, #0xc
	adds r4, r6, r0
	b _0803D264
_0803D27A:
	cmp r0, #3
	bne _0803D28C
	movs r0, #0
	str r0, [r4, #0xc]
	adds r0, r4, #0
	bl FUN_0803D980
	movs r5, #2
	b _0803D2BC
_0803D28C:
	cmp r0, #1
	bne _0803D2A2
	ldr r0, [r4]
	bl FUN_08043F34
	movs r5, #1
	b _0803D2BC
_0803D29A:
	adds r0, r1, #0
	adds r0, #0xc
	adds r1, r6, r0
	b _0803D2E4
_0803D2A2:
	ldr r2, _0803D2F8 @ => 0x08073A54
	ldrh r1, [r6, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, #0x10
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	bl _call_via_r2
	adds r5, r0, #0
_0803D2BC:
	cmp r5, #2
	beq _0803D2C4
	cmp r5, #0
	bne _0803D2F0
_0803D2C4:
	ldr r4, [r4]
	movs r2, #0
	adds r3, r7, #0
_0803D2CA:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r1, r0, #2
	adds r0, r3, r1
	ldr r0, [r0]
	cmp r0, r4
	beq _0803D29A
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _0803D2CA
	movs r1, #0
_0803D2E4:
	cmp r1, #0
	beq _0803D2F0
	movs r0, #0
	str r0, [r1]
	movs r0, #0x7c
	strh r0, [r1, #6]
_0803D2F0:
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803D2F8: .4byte ROMREF_08073A54

	thumb_func_start FUN_0803D2FC
FUN_0803D2FC: @ 0x0803D2FC
	push {r4, r5, r6, r7, lr}
	ldr r0, _0803D364 @ => 0x03005B90
	ldr r4, [r0]
	cmp r4, #0
	beq _0803D35E
_0803D306:
	ldr r7, [r4]
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _0803D318
	movs r1, #1
	bl FUN_08001FB0
	movs r0, #0
	str r0, [r4, #0x38]
_0803D318:
	movs r5, #0
	adds r6, r4, #0
	adds r6, #0xc
_0803D31E:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r6, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _0803D332
	adds r1, r4, #0
	bl FUN_08001A18
_0803D332:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0803D31E
	ldr r5, _0803D364 @ => 0x03005B90
	ldr r0, [r5, #4]
	cmp r0, r4
	bne _0803D348
	ldr r0, [r4, #4]
	str r0, [r5, #4]
_0803D348:
	ldr r0, _0803D368 @ => 0x03002610
	adds r1, r5, #0
	adds r2, r4, #0
	bl FUN_08028FDC
	ldrb r0, [r5, #8]
	subs r0, #1
	strb r0, [r5, #8]
	adds r4, r7, #0
	cmp r4, #0
	bne _0803D306
_0803D35E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D364: .4byte gUnk_03005B90
_0803D368: .4byte gUnk_03002610

	thumb_func_start FUN_0803D36C
FUN_0803D36C: @ 0x0803D36C
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	movs r5, #0
	cmp r4, #1
	beq _0803D37A
	cmp r4, #4
	bne _0803D3A2
_0803D37A:
	movs r3, #0xc
	ldr r1, _0803D384 @ => 0x0000FFFF
	adds r2, r1, #0
	adds r0, #0x6c
	b _0803D38C
	.align 2, 0
_0803D384: .4byte 0x0000FFFF
_0803D388:
	adds r0, #4
	adds r5, #1
_0803D38C:
	cmp r5, r3
	bhs _0803D3E4
	cmp r4, #1
	bne _0803D398
	ldr r1, [r0, #0x30]
	b _0803D39A
_0803D398:
	ldr r1, [r0]
_0803D39A:
	ands r1, r2
	cmp r1, #0
	bne _0803D388
	b _0803D3E4
_0803D3A2:
	ldr r2, _0803D3BC @ => 0x0807281C
	ldrh r1, [r0, #8]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _0803D3C0
	movs r0, #0
	b _0803D3E6
	.align 2, 0
_0803D3BC: .4byte ItemInfoData
_0803D3C0:
	movs r1, #0
	adds r6, r0, #2
_0803D3C4:
	movs r2, #0
	lsls r0, r1, #2
	adds r3, r1, #1
	adds r0, r0, r1
	adds r1, r0, r6
_0803D3CE:
	ldrb r0, [r1]
	cmp r0, r4
	bne _0803D3D6
	adds r5, #1
_0803D3D6:
	adds r1, #1
	adds r2, #1
	cmp r2, #4
	bls _0803D3CE
	adds r1, r3, #0
	cmp r1, #4
	bls _0803D3C4
_0803D3E4:
	adds r0, r5, #0
_0803D3E6:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_0803D3EC
FUN_0803D3EC: @ 0x0803D3EC
	push {r4, r5, lr}
	adds r4, r1, #0
	movs r3, #0
	cmp r4, #1
	beq _0803D3FE
	cmp r4, #4
	bne _0803D40A
	ldr r0, [r0, #0x6c]
	b _0803D402
_0803D3FE:
	adds r0, #0x9c
	ldr r0, [r0]
_0803D402:
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803D446
	b _0803D424
_0803D40A:
	ldr r2, _0803D420 @ => 0x0807281C
	ldrh r1, [r0, #8]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _0803D428
	b _0803D446
	.align 2, 0
_0803D420: .4byte ItemInfoData
_0803D424:
	movs r0, #1
	b _0803D448
_0803D428:
	adds r5, r0, #2
_0803D42A:
	movs r2, #0
	lsls r0, r3, #2
	adds r0, r0, r3
	adds r1, r0, r5
_0803D432:
	ldrb r0, [r1]
	cmp r0, r4
	beq _0803D424
	adds r1, #1
	adds r2, #1
	cmp r2, #4
	bls _0803D432
	adds r3, #1
	cmp r3, #4
	bls _0803D42A
_0803D446:
	movs r0, #0
_0803D448:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0803D450
FUN_0803D450: @ 0x0803D450
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0803D4C8 @ => 0x03004200
	ldr r6, [r0]
	movs r0, #0
	mov r8, r0
	movs r7, #0
	adds r4, r5, #0
	adds r4, #0x68
	ldrh r2, [r4]
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, _0803D4CC @ => 0x000063FF
	cmp r1, r0
	bgt _0803D4D8
	adds r0, r2, #0
	adds r0, #0x19
	strh r0, [r4]
	ldr r0, [r5, #0x34]
	ldr r1, [r0, #0x1c]
	ldr r0, [r0, #0x18]
	ldr r2, [r6, #0x18]
	ldr r3, [r6, #0x1c]
	bl FUN_0802C538
	ldr r1, _0803D4D0 @ => 0x0095FFFF
	cmp r0, r1
	bhi _0803D51C
	ldr r0, [r5, #0x34]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x59
	bls _0803D51C
	ldr r0, _0803D4D4 @ => 0x03003E18
	movs r1, #2
	bl FUN_0804ACD4
	lsls r0, r0, #0x19
	movs r1, #0xa0
	lsls r1, r1, #0x15
	adds r0, r0, r1
	lsrs r0, r0, #0x18
	bl FUN_080425E4
	mov r8, r0
	ldr r0, [r5, #0x34]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r7, [r0]
	b _0803D51C
	.align 2, 0
_0803D4C8: .4byte gUnk_03004200
_0803D4CC: .4byte 0x000063FF
_0803D4D0: .4byte 0x0095FFFF
_0803D4D4: .4byte gUnk_03003E18
_0803D4D8:
	ldr r0, [r5, #0x34]
	movs r1, #1
	bl FUN_08001FB0
	strh r7, [r4]
	movs r7, #1
	movs r0, #0x85
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl FUN_0803B9F4
	adds r4, r0, #0
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r4, r1
	str r7, [r0]
	ldr r0, [r5, #0x34]
	mov r1, sp
	bl FUN_0803C3AC
	ldr r2, [sp]
	asrs r2, r2, #0x10
	ldr r3, [sp, #4]
	asrs r3, r3, #0x10
	adds r0, r4, #0
	movs r1, #3
	bl FUN_0803BB50
	cmp r0, #0
	bne _0803D51C
	adds r0, r4, #0
	bl FUN_08001358
_0803D51C:
	mov r0, r8
	cmp r0, #1
	bne _0803D546
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _0803D546
	adds r0, r6, #0
	movs r1, #0x29
	bl FUN_08001FB0
	adds r0, r6, #0
	movs r1, #0x73
	bl FUN_08001F20
	adds r0, r6, #0
	movs r1, #0x30
	bl FUN_08001F84
_0803D546:
	adds r0, r7, #0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_0803D554
FUN_0803D554: @ 0x0803D554
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x34]
	ldr r7, [r1, #0xc]
	movs r0, #1
	ands r7, r0
	adds r5, r1, #0
	adds r5, #0x58
	movs r6, #0
	movs r2, #0
	adds r1, r4, #0
	adds r1, #0xc
_0803D56C:
	ldr r0, [r1]
	cmp r0, #0
	beq _0803D574
	adds r6, #1
_0803D574:
	adds r1, #0x14
	adds r2, #1
	cmp r2, #1
	bls _0803D56C
	adds r0, r4, #0
	adds r0, #0x6a
	ldrb r0, [r0]
	cmp r0, #2
	beq _0803D610
	cmp r0, #2
	bgt _0803D590
	cmp r0, #1
	beq _0803D596
	b _0803D6A0
_0803D590:
	cmp r0, #3
	beq _0803D66C
	b _0803D6A0
_0803D596:
	ldr r3, [r5]
	cmp r3, #0
	beq _0803D59E
	b _0803D6B6
_0803D59E:
	cmp r6, #0
	beq _0803D5A4
	b _0803D6B0
_0803D5A4:
	cmp r7, #1
	beq _0803D5AA
	b _0803D6B0
_0803D5AA:
	ldr r6, _0803D5E4 @ => 0x0300407C
	adds r0, r6, #0
	bl FUN_0801E138
	cmp r0, #0
	bne _0803D5EC
	adds r0, r6, #0
	movs r1, #5
	bl FUN_0801DF10
	cmp r0, #0
	bne _0803D5EC
	ldrh r0, [r4, #8]
	cmp r0, #0x6d
	bne _0803D5EC
	ldr r0, [r4, #0x34]
	ldr r3, _0803D5E8 @ => 0x080770C8
	ldrh r2, [r4, #8]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	adds r1, #0x20
	ldrb r1, [r1]
	movs r2, #0xd
	movs r3, #0
	bl FUN_0802064C
	b _0803D6AE
	.align 2, 0
_0803D5E4: .4byte gEpisode_Data
_0803D5E8: .4byte ROMREF_080770C8
_0803D5EC:
	ldr r0, [r4, #0x34]
	ldr r3, _0803D60C @ => 0x080770C8
	ldrh r1, [r4, #8]
	lsls r2, r1, #3
	adds r2, r2, r1
	lsls r2, r2, #2
	adds r2, r2, r3
	adds r1, r2, #0
	adds r1, #0x20
	ldrb r1, [r1]
	adds r2, #0x21
	ldrb r2, [r2]
	movs r3, #0
	bl FUN_0802064C
	b _0803D6AE
	.align 2, 0
_0803D60C: .4byte ROMREF_080770C8
_0803D610:
	adds r0, r4, #0
	adds r0, #0x68
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r1, _0803D64C @ => 0x000045FF
	ldr r3, [r5]
	cmp r2, r1
	ble _0803D654
	cmp r3, #0
	bne _0803D658
	cmp r6, #0
	bne _0803D654
	cmp r7, #1
	bne _0803D654
	ldr r0, [r4, #0x34]
	ldr r3, _0803D650 @ => 0x080770C8
	ldrh r1, [r4, #8]
	lsls r2, r1, #3
	adds r2, r2, r1
	lsls r2, r2, #2
	adds r2, r2, r3
	adds r1, r2, #0
	adds r1, #0x22
	ldrb r1, [r1]
	adds r2, #0x23
	ldrb r2, [r2]
	movs r3, #0
	bl FUN_0802064C
	b _0803D6AE
	.align 2, 0
_0803D64C: .4byte 0x000045FF
_0803D650: .4byte ROMREF_080770C8
_0803D654:
	cmp r3, #0
	beq _0803D6C4
_0803D658:
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _0803D668 @ => 0x000045FF
	cmp r1, r0
	bgt _0803D6B0
	ldr r0, [r5]
	b _0803D6A6
	.align 2, 0
_0803D668: .4byte 0x000045FF
_0803D66C:
	ldr r0, [r5]
	cmp r0, #0
	bne _0803D692
	cmp r7, #1
	bne _0803D692
	ldr r0, [r4, #0x34]
	ldr r3, _0803D69C @ => 0x080770C8
	ldrh r2, [r4, #8]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	adds r1, #0x20
	ldrb r1, [r1]
	movs r2, #0
	movs r3, #0
	bl FUN_0802064C
	str r0, [r5]
_0803D692:
	adds r0, r4, #0
	bl FUN_0803D450
	b _0803D6B0
	.align 2, 0
_0803D69C: .4byte ROMREF_080770C8
_0803D6A0:
	ldr r0, [r5]
	cmp r0, #0
	beq _0803D6C4
_0803D6A6:
	movs r1, #1
	bl FUN_08001FB0
	movs r0, #0
_0803D6AE:
	str r0, [r5]
_0803D6B0:
	ldr r3, [r5]
	cmp r3, #0
	beq _0803D6C4
_0803D6B6:
	cmp r7, #0
	bne _0803D6C4
	adds r0, r3, #0
	movs r1, #1
	bl FUN_08001FB0
	str r7, [r5]
_0803D6C4:
	ldr r2, _0803D6E4 @ => 0x08073A54
	ldrh r1, [r4, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, #0x14
	adds r0, r0, r2
	ldr r1, [r0]
	cmp r1, #0
	beq _0803D6DE
	adds r0, r4, #0
	bl _call_via_r1
_0803D6DE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D6E4: .4byte ROMREF_08073A54

	thumb_func_start FUN_0803D6E8
FUN_0803D6E8: @ 0x0803D6E8
	push {r4, lr}
	ldr r4, _0803D710 @ => 0x0300260C
	ldr r0, _0803D714 @ => 0x00001644
	bl FUN_0802C9DC
	str r0, [r4]
	ldr r4, _0803D718 @ => 0x03002610
	movs r1, #0x19
	movs r2, #0xe4
	bl FUN_08028F70
	str r0, [r4]
	ldr r1, _0803D71C @ => 0x03005B90
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	strb r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803D710: .4byte gUnk_0300260C
_0803D714: .4byte 0x00001644
_0803D718: .4byte gUnk_03002610
_0803D71C: .4byte gUnk_03005B90

	thumb_func_start FUN_0803D720
FUN_0803D720: @ 0x0803D720
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _0803D734
	movs r1, #1
	bl FUN_08001FB0
	movs r0, #0
	str r0, [r5, #0x38]
_0803D734:
	movs r4, #0
	adds r6, r5, #0
	adds r6, #0xc
_0803D73A:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r6, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _0803D74E
	adds r1, r5, #0
	bl FUN_08001A18
_0803D74E:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0803D73A
	ldr r4, _0803D77C @ => 0x03005B90
	ldr r0, [r4, #4]
	cmp r0, r5
	bne _0803D764
	ldr r0, [r5, #4]
	str r0, [r4, #4]
_0803D764:
	ldr r0, _0803D780 @ => 0x03002610
	adds r1, r4, #0
	adds r2, r5, #0
	bl FUN_08028FDC
	ldrb r0, [r4, #8]
	subs r0, #1
	strb r0, [r4, #8]
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803D77C: .4byte gUnk_03005B90
_0803D780: .4byte gUnk_03002610

	thumb_func_start FUN_0803D784
FUN_0803D784: @ 0x0803D784
	push {lr}
	bl FUN_0803D8C8
	adds r1, r0, #0
	cmp r1, #0
	beq _0803D794
	movs r0, #1
	str r0, [r1, #0xc]
_0803D794:
	pop {r0}
	bx r0

	thumb_func_start FUN_0803D798
FUN_0803D798: @ 0x0803D798
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	bx lr

	thumb_func_start FUN_0803D7A0
FUN_0803D7A0: @ 0x0803D7A0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r3, #0
	ldrb r4, [r1]
_0803D7A8:
	lsls r0, r3, #2
	adds r2, r5, r0
	adds r0, r2, #0
	adds r0, #0x6c
	ldrb r0, [r0]
	cmp r0, r4
	bne _0803D7C6
	adds r0, r2, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	ldrb r2, [r1, #1]
	cmp r0, r2
	bne _0803D7C6
	movs r0, #1
	b _0803D7D2
_0803D7C6:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xb
	bls _0803D7A8
	movs r0, #0
_0803D7D2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start FUN_0803D7D8
FUN_0803D7D8: @ 0x0803D7D8
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r3, #0
	ldrb r4, [r1]
_0803D7E0:
	lsls r0, r3, #2
	adds r2, r5, r0
	adds r0, r2, #0
	adds r0, #0x9c
	ldrb r0, [r0]
	cmp r0, r4
	bne _0803D7FE
	adds r0, r2, #0
	adds r0, #0x9d
	ldrb r0, [r0]
	ldrb r2, [r1, #1]
	cmp r0, r2
	bne _0803D7FE
	movs r0, #1
	b _0803D80A
_0803D7FE:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xb
	bls _0803D7E0
	movs r0, #0
_0803D80A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start FUN_0803D810
FUN_0803D810: @ 0x0803D810
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r0, _0803D83C @ => 0x03005B90
	ldr r4, [r0]
	cmp r4, #0
	beq _0803D846
_0803D81E:
	ldr r5, [r4]
	adds r0, r4, #0
	adds r1, r7, #0
	bl FUN_0803D7D8
	cmp r0, #1
	bne _0803D840
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_0803D3EC
	cmp r0, #0
	beq _0803D840
	adds r0, r4, #0
	b _0803D848
	.align 2, 0
_0803D83C: .4byte gUnk_03005B90
_0803D840:
	adds r4, r5, #0
	cmp r4, #0
	bne _0803D81E
_0803D846:
	movs r0, #0
_0803D848:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0803D850
FUN_0803D850: @ 0x0803D850
	adds r0, #0xdc
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start FUN_0803D85C
FUN_0803D85C: @ 0x0803D85C
	adds r0, #0xdc
	ldrb r1, [r0]
	subs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start FUN_0803D868
FUN_0803D868: @ 0x0803D868
	push {lr}
	movs r3, #0
	movs r2, #0
	adds r1, r0, #0
	adds r1, #0xc
_0803D872:
	ldr r0, [r1]
	cmp r0, #0
	beq _0803D87A
	adds r3, #1
_0803D87A:
	adds r1, #0x14
	adds r2, #1
	cmp r2, #1
	bls _0803D872
	adds r0, r3, #0
	pop {r1}
	bx r1

	thumb_func_start FUN_0803D888
FUN_0803D888: @ 0x0803D888
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	movs r1, #0
	movs r3, #0
	adds r5, r4, #0
	adds r5, #0xc
_0803D896:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r2, r0, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _0803D8B6
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r6
	bne _0803D8B6
	adds r0, r2, #0
	adds r0, #0xc
	adds r0, r4, r0
	b _0803D8C2
_0803D8B6:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _0803D896
	movs r0, #0
_0803D8C2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_0803D8C8
FUN_0803D8C8: @ 0x0803D8C8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r3, #0
	adds r1, r4, #0
	adds r1, #0xc
_0803D8D4:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r2, r0, #2
	adds r0, r1, r2
	ldr r0, [r0]
	cmp r0, r5
	bne _0803D8EA
	adds r0, r2, #0
	adds r0, #0xc
	adds r0, r4, r0
	b _0803D8F6
_0803D8EA:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _0803D8D4
	movs r0, #0
_0803D8F6:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start FUN_0803D8FC
FUN_0803D8FC: @ 0x0803D8FC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r3, #0
	adds r1, r5, #0
	adds r1, #0xc
_0803D908:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r2, r0, #2
	adds r0, r1, r2
	ldr r0, [r0]
	cmp r0, r4
	beq _0803D932
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _0803D908
	movs r1, #0
_0803D922:
	cmp r1, #0
	beq _0803D93A
	movs r0, #0
	str r0, [r1]
	movs r0, #0x7c
	strh r0, [r1, #6]
	movs r0, #1
	b _0803D93C
_0803D932:
	adds r0, r2, #0
	adds r0, #0xc
	adds r1, r5, r0
	b _0803D922
_0803D93A:
	movs r0, #0
_0803D93C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0803D944
FUN_0803D944: @ 0x0803D944
	movs r2, #1
	ldr r1, [r0, #0xc]
	eors r1, r2
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0

	thumb_func_start FUN_0803D954
FUN_0803D954: @ 0x0803D954
	movs r0, #0
	bx lr

	thumb_func_start FUN_0803D958
FUN_0803D958: @ 0x0803D958
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [r5]
	movs r1, #4
	bl FUN_08001FF0
	cmp r4, #0
	beq _0803D972
	cmp r4, #1
	beq _0803D972
	movs r1, #0
	b _0803D974
_0803D972:
	movs r1, #0x81
_0803D974:
	ldr r0, [r5]
	bl FUN_08001F20
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_0803D980
FUN_0803D980: @ 0x0803D980
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4]
	ldrh r0, [r2, #8]
	cmp r0, #0
	bne _0803D99E
	adds r0, r2, #0
	movs r1, #0x14
	bl FUN_08001FB0
	ldr r0, [r4]
	movs r1, #0
	bl FUN_08001F84
	b _0803D9B4
_0803D99E:
	movs r1, #0x91
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r1, [r0]
	adds r0, r2, #0
	bl FUN_08001FB0
	ldr r0, [r4]
	movs r1, #7
	bl FUN_08001F84
_0803D9B4:
	ldr r0, [r4]
	bl FUN_08043F34
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_0803D9C0
FUN_0803D9C0: @ 0x0803D9C0
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x6a
	movs r0, #3
	strb r0, [r1]
	subs r1, #2
	movs r0, #0xc8
	lsls r0, r0, #6
	strh r0, [r1]
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x58]
	cmp r0, #0
	beq _0803D9E8
	movs r1, #1
	bl FUN_08001FB0
	ldr r1, [r4, #0x34]
	movs r0, #0
	str r0, [r1, #0x58]
_0803D9E8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0803D9F0
FUN_0803D9F0: @ 0x0803D9F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _0803DA10
	ldr r0, _0803DA0C @ => 0x03004200
	ldr r0, [r0]
	cmp r0, r1
	bne _0803DA10
	movs r0, #0xf
	bl FUN_080425E4
	adds r2, r0, #0
	b _0803DA12
	.align 2, 0
_0803DA0C: .4byte gUnk_03004200
_0803DA10:
	movs r2, #0
_0803DA12:
	cmp r2, #1
	bne _0803DA22
	ldr r0, [r4, #0x34]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
_0803DA22:
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0803DA2C
FUN_0803DA2C: @ 0x0803DA2C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldrh r0, [r4, #8]
	bl FUN_0803DCBC
	cmp r0, #1
	bne _0803DA68
	ldr r0, _0803DA60 @ => 0x03004200
	ldr r0, [r0]
	cmp r0, r6
	bne _0803DA68
	ldr r0, _0803DA64 @ => 0x03003E18
	movs r1, #1
	bl FUN_0804ACD4
	adds r1, r0, #0
	movs r0, #0xf
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_080425E4
	adds r5, r0, #0
	b _0803DA6A
	.align 2, 0
_0803DA60: .4byte gUnk_03004200
_0803DA64: .4byte gUnk_03003E18
_0803DA68:
	movs r5, #0
_0803DA6A:
	cmp r5, #1
	bne _0803DAAE
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x58]
	cmp r0, #0
	beq _0803DA82
	movs r1, #1
	bl FUN_08001FB0
	ldr r1, [r4, #0x34]
	movs r0, #0
	str r0, [r1, #0x58]
_0803DA82:
	ldr r0, [r4, #0x34]
	movs r1, #0xc8
	movs r2, #8
	movs r3, #1
	bl FUN_0802064C
	ldr r1, [r4, #0x34]
	str r0, [r1, #0x58]
	bl FUN_08048DBC
	movs r1, #0x8f
	cmp r0, #0
	bne _0803DA9E
	movs r1, #0x8a
_0803DA9E:
	adds r0, r1, #0
	bl FUN_0804DE0C
	movs r0, #0x91
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #0x24
	strb r0, [r1]
_0803DAAE:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0803DAB8
FUN_0803DAB8: @ 0x0803DAB8
	push {lr}
	ldr r0, _0803DAD0 @ => 0x03004200
	ldr r1, [r1]
	ldr r0, [r0]
	cmp r1, r0
	bne _0803DAE6
	ldr r0, _0803DAD4 @ => 0x03003DF0
	ldr r0, [r0, #8]
	cmp r0, r2
	bge _0803DAD8
	movs r0, #0
	b _0803DAE8
	.align 2, 0
_0803DAD0: .4byte gUnk_03004200
_0803DAD4: .4byte gUnk_03003DF0
_0803DAD8:
	rsbs r1, r2, #0
	movs r0, #2
	bl FUN_08020DB0
	movs r0, #0xb0
	bl FUN_0804DE0C
_0803DAE6:
	movs r0, #1
_0803DAE8:
	pop {r1}
	bx r1

	thumb_func_start FUN_0803DAEC
FUN_0803DAEC: @ 0x0803DAEC
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0x6a
	ldrb r0, [r0]
	cmp r0, #3
	bne _0803DB10
	adds r1, r2, #0
	adds r1, #0x68
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0x80
	ble _0803DB10
	adds r0, r3, #0
	subs r0, #0x80
	strh r0, [r1]
	movs r0, #0
	b _0803DB1E
_0803DB10:
	adds r0, r2, #0
	adds r0, #0x6a
	movs r1, #0
	strb r1, [r0]
	subs r0, #2
	strh r1, [r0]
	movs r0, #1
_0803DB1E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_0803DB24
FUN_0803DB24: @ 0x0803DB24
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0
	movs r3, #0
	adds r2, r4, #0
	adds r2, #0xc
_0803DB32:
	ldr r0, [r2]
	cmp r0, #0
	beq _0803DB3A
	adds r1, #1
_0803DB3A:
	adds r2, #0x14
	adds r3, #1
	cmp r3, #1
	bls _0803DB32
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	cmp r1, r0
	bhs _0803DB5E
	adds r0, r5, #0
	bl FUN_08001D8C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803DB62
	ldr r0, [r4, #0x40]
	cmp r0, #1
	bne _0803DB62
_0803DB5E:
	movs r0, #0
	b _0803DB64
_0803DB62:
	movs r0, #1
_0803DB64:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0803DB6C
FUN_0803DB6C: @ 0x0803DB6C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r3, #0
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	cmp r2, #0xc
	bhi _0803DC18
	lsls r0, r2, #2
	ldr r1, _0803DB9C @ =_0803DBA0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803DB9C: .4byte _0803DBA0
_0803DBA0: @ jump table
	.4byte _0803DC10 @ case 0
	.4byte _0803DC10 @ case 1
	.4byte _0803DC10 @ case 2
	.4byte _0803DC10 @ case 3
	.4byte _0803DC10 @ case 4
	.4byte _0803DC10 @ case 5
	.4byte _0803DC10 @ case 6
	.4byte _0803DC10 @ case 7
	.4byte _0803DC18 @ case 8
	.4byte _0803DC18 @ case 9
	.4byte _0803DBD4 @ case 10
	.4byte _0803DBEC @ case 11
	.4byte _0803DBF8 @ case 12
_0803DBD4:
	ldr r0, [r6]
	ldr r2, _0803DBE8 @ => 0x0805F954
	ldr r1, [r5, #0x34]
	ldrb r1, [r1, #0x12]
	adds r1, r1, r2
	ldrb r1, [r1]
	bl FUN_08001FF0
	b _0803DC18
	.align 2, 0
_0803DBE8: .4byte ROMREF_0805F954
_0803DBEC:
	ldr r0, [r6]
	ldr r1, [r5, #0x34]
	ldrb r1, [r1, #0x12]
	bl FUN_08001FF0
	b _0803DC18
_0803DBF8:
	ldr r4, [r6]
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_08001C44
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl FUN_08001FF0
	b _0803DC18
_0803DC10:
	ldr r0, [r6]
	adds r1, r2, #0
	bl FUN_08001FF0
_0803DC18:
	movs r0, #0x8d
	lsls r0, r0, #1
	cmp r7, r0
	beq _0803DC2C
	adds r0, r7, #0
	bl FUN_0804DE0C
	adds r1, r5, #0
	adds r1, #0xe0
	str r0, [r1]
_0803DC2C:
	mov r0, r8
	cmp r0, #6
	beq _0803DC3A
	ldr r0, [r5, #0x34]
	mov r1, r8
	bl FUN_0803BC7C
_0803DC3A:
	mov r0, sb
	cmp r0, #0xd0
	beq _0803DC48
	ldr r0, [r6]
	mov r1, sb
	bl FUN_08001F20
_0803DC48:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_0803DC54
FUN_0803DC54: @ 0x0803DC54
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _0803DC72
	movs r1, #1
	bl FUN_08001FB0
	movs r0, #0
	str r0, [r4, #0x38]
_0803DC72:
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	cmp r0, #0
	beq _0803DC80
	bl FUN_0804E03C
_0803DC80:
	ldr r0, [r7]
	movs r1, #4
	bl FUN_08001FF0
	cmp r5, #6
	beq _0803DC94
	ldr r0, [r4, #0x34]
	adds r1, r5, #0
	bl FUN_0803BC7C
_0803DC94:
	cmp r6, #0xd0
	beq _0803DCA0
	ldr r0, [r7]
	adds r1, r6, #0
	bl FUN_08001F20
_0803DCA0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0803DCA8
FUN_0803DCA8: @ 0x0803DCA8
	push {lr}
	bl FUN_0803DD44
	cmp r0, #0
	bne _0803DCB6
	movs r0, #0
	b _0803DCB8
_0803DCB6:
	ldr r0, [r0, #4]
_0803DCB8:
	pop {r1}
	bx r1

	thumb_func_start FUN_0803DCBC
FUN_0803DCBC: @ 0x0803DCBC
	push {lr}
	bl FUN_0803DD44
	cmp r0, #0
	bne _0803DCCA
	movs r0, #0
	b _0803DCCC
_0803DCCA:
	ldrb r0, [r0, #8]
_0803DCCC:
	pop {r1}
	bx r1

	thumb_func_start FUN_0803DCD0
FUN_0803DCD0: @ 0x0803DCD0
	push {lr}
	bl FUN_0803DD44
	ldrb r0, [r0, #9]
	pop {r1}
	bx r1

	thumb_func_start FUN_0803DCDC
FUN_0803DCDC: @ 0x0803DCDC
	push {lr}
	bl FUN_0803DD44
	ldrb r0, [r0, #0xa]
	pop {r1}
	bx r1

	thumb_func_start FUN_0803DCE8
FUN_0803DCE8: @ 0x0803DCE8
	ldr r2, _0803DCF8 @ => 0x08073A54
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r2
	ldrh r0, [r1, #0x1e]
	bx lr
	.align 2, 0
_0803DCF8: .4byte ROMREF_08073A54

	thumb_func_start FUN_0803DCFC
FUN_0803DCFC: @ 0x0803DCFC
	ldr r2, _0803DD0C @ => 0x08073A54
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r2
	ldrb r0, [r1, #0x1c]
	bx lr
	.align 2, 0
_0803DD0C: .4byte ROMREF_08073A54

	thumb_func_start FUN_0803DD10
FUN_0803DD10: @ 0x0803DD10
	push {r4, lr}
	ldr r0, _0803DD3C @ => 0x03002610
	ldr r4, _0803DD40 @ => 0x03005B90
	adds r1, r4, #0
	movs r2, #0xe4
	bl FUN_08028FA8
	adds r1, r0, #0
	cmp r1, #0
	beq _0803DD32
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0803DD2C
	str r1, [r4, #4]
_0803DD2C:
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
_0803DD32:
	adds r0, r1, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803DD3C: .4byte gUnk_03002610
_0803DD40: .4byte gUnk_03005B90

	thumb_func_start FUN_0803DD44
FUN_0803DD44: @ 0x0803DD44
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r3, #0
	ldr r6, _0803DD6C @ => 0x08075554
	adds r5, r6, #0
_0803DD4E:
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r2, r0, #2
	adds r0, r2, r5
	ldrh r1, [r0]
	cmp r1, r4
	beq _0803DD70
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r1, #0xe6
	bne _0803DD4E
	movs r0, #0
	b _0803DD72
	.align 2, 0
_0803DD6C: .4byte ROMREF_08075554
_0803DD70:
	adds r0, r2, r6
_0803DD72:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_0803DD78
FUN_0803DD78: @ 0x0803DD78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r1
	mov sl, r2
	movs r4, #0
	movs r5, #0
	movs r7, #0
	movs r1, #0
	adds r6, r0, #2
	ldrb r2, [r0]
	mov ip, r2
	ldrb r0, [r0, #1]
	mov r8, r0
_0803DD98:
	movs r3, #0
	adds r2, r1, #1
_0803DD9C:
	lsls r0, r3, #2
	adds r0, r0, r3
	adds r0, r1, r0
	adds r0, r6, r0
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0803DDBE
	movs r7, #1
	cmp r1, r4
	bls _0803DDB8
	adds r4, r1, #0
_0803DDB8:
	cmp r3, r5
	bls _0803DDBE
	adds r5, r3, #0
_0803DDBE:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _0803DD9C
	lsls r0, r2, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #4
	bls _0803DD98
	cmp r7, #0
	bne _0803DE06
	movs r1, #0
_0803DDD6:
	movs r3, #0
	adds r2, r1, #1
_0803DDDA:
	lsls r0, r3, #2
	adds r0, r0, r3
	adds r0, r1, r0
	adds r0, r6, r0
	ldrb r0, [r0]
	cmp r0, #4
	bne _0803DDF4
	cmp r1, r4
	bls _0803DDEE
	adds r4, r1, #0
_0803DDEE:
	cmp r3, r5
	bls _0803DDF4
	adds r5, r3, #0
_0803DDF4:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _0803DDDA
	lsls r0, r2, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #4
	bls _0803DDD6
_0803DE06:
	mov r1, ip
	subs r0, r4, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r2, r8
	subs r0, r5, r2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r4, #1
	mov r1, sb
	strb r0, [r1]
	adds r0, r5, #1
	mov r2, sl
	strb r0, [r2]
	movs r0, #1
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0803DE34
FUN_0803DE34: @ 0x0803DE34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x3c
	mov r8, r0
	adds r6, r1, #0
	adds r5, r2, #0
	adds r0, r5, #0
	bl FUN_0803E3C4
	ldr r4, _0803DEA4 @ => 0x03005BA0
	str r5, [r4, #4]
	str r6, [r4, #8]
	mov r0, r8
	str r0, [r4]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	str r0, [r4, #0x10]
	str r1, [r4, #0x14]
	ldrb r1, [r5, #0x12]
	adds r0, r4, #0
	adds r0, #0x24
	strb r1, [r0]
	adds r0, r5, #0
	bl FUN_0803E41C
	str r0, [r4, #0xc]
	movs r0, #1
	str r0, [r4, #0x28]
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_08002040
	movs r0, #5
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	movs r2, #1
	add r3, sp, #4
	bl FUN_08001DB4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r6, #0
	movs r3, #0
	add r1, sp, #0x1c
	add r5, sp, #0x24
	add r7, sp, #0x2c
	cmp r6, r8
	bhs _0803DEC4
	ldr r2, [sp, #4]
	movs r4, #0x98
	lsls r4, r4, #1
	ldrh r0, [r4, r2]
	b _0803DEBE
	.align 2, 0
_0803DEA4: .4byte gUnk_03005BA0
_0803DEA8:
	adds r3, #1
	cmp r3, r8
	bhs _0803DEC4
	lsls r0, r3, #2
	add r0, sp
	adds r0, #4
	ldr r2, [r0]
	movs r4, #0x98
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrh r0, [r0]
_0803DEBE:
	cmp r0, #0xb
	bhi _0803DEA8
	adds r6, r2, #0
_0803DEC4:
	movs r2, #0x1a
	ldrsh r0, [r6, r2]
	str r0, [sp, #0x1c]
	movs r4, #0x1e
	ldrsh r0, [r6, r4]
	str r0, [r1, #4]
	ldr r4, _0803DF44 @ => 0x03005BA0
	ldr r0, [r4]
	adds r2, r4, #0
	adds r2, #0x20
	bl FUN_0805374C
	ldr r1, [r4, #8]
	movs r2, #0x1a
	ldrsh r0, [r1, r2]
	str r0, [sp, #0x24]
	movs r2, #0x1e
	ldrsh r0, [r1, r2]
	str r0, [r5, #4]
	ldr r0, [r4]
	adds r2, r4, #0
	adds r2, #0x1c
	adds r1, r5, #0
	bl FUN_0805374C
	ldr r0, [r4, #8]
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _0803DFB8
	ldr r2, _0803DF48 @ => 0x0807281C
	ldr r0, [r4, #0xc]
	adds r1, #0x30
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	add r5, sp, #0x18
	mov r6, sp
	adds r6, #0x19
	adds r1, r5, #0
	adds r2, r6, #0
	bl FUN_0803DD78
	ldr r1, _0803DF4C @ => 0x0805F974
	ldr r0, [r4, #8]
	ldrb r0, [r0, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r0, #0
	cmp r0, #2
	beq _0803DF6A
	cmp r0, #2
	bgt _0803DF50
	cmp r0, #0
	beq _0803DF5A
	b _0803DF92
	.align 2, 0
_0803DF44: .4byte gUnk_03005BA0
_0803DF48: .4byte ItemInfoData
_0803DF4C: .4byte ROMREF_0805F974
_0803DF50:
	cmp r1, #4
	beq _0803DF70
	cmp r1, #6
	beq _0803DF80
	b _0803DF92
_0803DF5A:
	ldrb r1, [r5]
	lsrs r1, r1, #1
	ldrb r0, [r4, #0x1c]
	subs r0, r0, r1
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0x1d]
	ldrb r1, [r6]
	b _0803DF8E
_0803DF6A:
	ldrb r0, [r4, #0x1c]
	adds r0, #1
	b _0803DF86
_0803DF70:
	ldrb r0, [r5]
	lsrs r0, r0, #1
	ldrb r1, [r4, #0x1c]
	subs r1, r1, r0
	strb r1, [r4, #0x18]
	ldrb r0, [r4, #0x1d]
	adds r0, #1
	b _0803DF90
_0803DF80:
	ldrb r0, [r4, #0x1c]
	ldrb r1, [r5]
	subs r0, r0, r1
_0803DF86:
	strb r0, [r4, #0x18]
	ldrb r1, [r6]
	lsrs r1, r1, #1
	ldrb r0, [r4, #0x1d]
_0803DF8E:
	subs r0, r0, r1
_0803DF90:
	strb r0, [r4, #0x19]
_0803DF92:
	ldr r4, _0803DFB4 @ => 0x03005BA0
	ldr r0, [r4]
	adds r1, r4, #0
	adds r1, #0x18
	adds r2, r7, #0
	bl FUN_080539F8
	cmp r0, #0
	beq _0803DFE4
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x2c]
	lsls r1, r1, #0x10
	str r1, [r0, #0x18]
	ldr r1, [r7, #4]
	lsls r1, r1, #0x10
	str r1, [r0, #0x1c]
	b _0803DFE4
	.align 2, 0
_0803DFB4: .4byte gUnk_03005BA0
_0803DFB8:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	movs r2, #1
	bl FUN_08049954
	ldr r0, [r4]
	ldr r1, [r4, #4]
	bl FUN_08049288
	ldr r1, [r4, #0xc]
	movs r2, #0x1a
	ldrsh r0, [r1, r2]
	str r0, [sp, #0x2c]
	movs r2, #0x1e
	ldrsh r0, [r1, r2]
	str r0, [r7, #4]
	ldr r0, [r4]
	adds r2, r4, #0
	adds r2, #0x18
	adds r1, r7, #0
	bl FUN_0805374C
_0803DFE4:
	bl FUN_0803E250
	adds r4, r0, #0
	bl FUN_0803E334
	movs r0, #0x1e
	str r0, [sp, #0x34]
	str r0, [sp, #0x38]
	ldr r0, _0803E010 @ => 0x03005BA0
	ldr r0, [r0, #0xc]
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x38]
	movs r3, #0
	bl FUN_08011154
	adds r0, r4, #0
	add sp, #0x3c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803E010: .4byte gUnk_03005BA0

	thumb_func_start FUN_0803E014
FUN_0803E014: @ 0x0803E014
	push {r4, r5, lr}
	ldr r4, _0803E038 @ => 0x03005BA0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0803E07C
	ldr r0, [r4, #8]
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _0803E03C
	ldr r0, [r4, #4]
	ldr r1, [r0, #0xc]
	movs r2, #2
	orrs r1, r2
	str r1, [r0, #0xc]
	b _0803E05E
	.align 2, 0
_0803E038: .4byte gUnk_03005BA0
_0803E03C:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	movs r2, #0
	bl FUN_08049954
	ldr r0, [r4, #4]
	ldrb r1, [r0, #0x12]
	movs r3, #0x1a
	ldrsh r2, [r0, r3]
	movs r5, #0x1e
	ldrsh r3, [r0, r5]
	bl FUN_0803BB50
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_08002038
_0803E05E:
	ldr r4, _0803E084 @ => 0x03005BA0
	ldr r0, [r4, #8]
	ldr r1, _0803E088 @ => 0x08062C08
	ldr r2, [r1, #4]
	ldr r1, [r1]
	movs r3, #0
	bl FUN_08011154
	ldr r2, [r4, #0xc]
	ldr r0, [r2, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0xc]
	bl FUN_0803E45C
_0803E07C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803E084: .4byte gUnk_03005BA0
_0803E088: .4byte ROMREF_08062C08

	thumb_func_start FUN_0803E08C
FUN_0803E08C: @ 0x0803E08C
	push {r4, r5, lr}
	sub sp, #0x10
	adds r2, r0, #0
	ldr r5, _0803E0E8 @ => 0x03005BA0
	ldr r3, [r5, #0xc]
	ldrh r0, [r3, #0xa]
	subs r0, #0x58
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _0803E0DC
	ldr r1, _0803E0EC @ => 0x08078518
	ldrb r0, [r3, #0x12]
	lsls r0, r0, #1
	adds r0, r2, r0
	adds r0, r0, r1
	ldrb r2, [r0]
	strb r2, [r3, #0x12]
	ldr r1, [r5, #0xc]
	movs r3, #0x1a
	ldrsh r0, [r1, r3]
	str r0, [sp]
	movs r3, #0x1e
	ldrsh r0, [r1, r3]
	str r0, [sp, #4]
	ldr r0, [r5]
	add r4, sp, #8
	mov r1, sp
	adds r3, r4, #0
	bl FUN_0804999C
	bl FUN_0803E334
	ldr r0, [r5, #0xc]
	ldr r1, [sp, #8]
	lsls r1, r1, #0x10
	ldr r2, [r4, #4]
	lsls r2, r2, #0x10
	bl FUN_08001728
_0803E0DC:
	bl FUN_0803E250
	add sp, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0803E0E8: .4byte gUnk_03005BA0
_0803E0EC: .4byte ROMREF_08078518

	thumb_func_start FUN_0803E0F0
FUN_0803E0F0: @ 0x0803E0F0
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r1, _0803E1AC @ => 0x0805F974
	adds r0, r0, r1
	ldrb r3, [r0]
	ldr r5, _0803E1B0 @ => 0x03005BA0
	ldr r4, _0803E1B4 @ => 0x08078508
	lsls r3, r3, #1
	adds r0, r3, r4
	ldrb r0, [r0]
	ldrb r1, [r5, #0x18]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0803E1B8 @ => 0xFFFFFF00
	ldr r2, [sp]
	ands r2, r1
	orrs r2, r0
	str r2, [sp]
	adds r4, #1
	adds r3, r3, r4
	ldrb r0, [r3]
	ldrb r1, [r5, #0x19]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	ldr r1, _0803E1BC @ => 0xFFFF00FF
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	ldrb r2, [r5, #0x1c]
	mov r0, sp
	ldrb r0, [r0]
	subs r2, r2, r0
	lsls r2, r2, #0x18
	lsrs r1, r1, #8
	ldrb r0, [r5, #0x1d]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	asrs r2, r2, #0x18
	cmp r2, #0
	bge _0803E148
	rsbs r2, r2, #0
_0803E148:
	cmp r2, #0x14
	bgt _0803E19E
	cmp r0, #0
	bge _0803E152
	rsbs r0, r0, #0
_0803E152:
	cmp r0, #0x14
	bgt _0803E19E
	ldr r0, [r5]
	add r4, sp, #4
	mov r1, sp
	adds r2, r4, #0
	bl FUN_080539F8
	cmp r0, #1
	bne _0803E19E
	ldr r0, [r5]
	ldr r1, [r5, #0xc]
	ldrb r2, [r1, #0x12]
	adds r1, r4, #0
	adds r3, r4, #0
	bl FUN_0804999C
	cmp r0, #0
	beq _0803E19E
	ldr r1, [r5, #0xc]
	ldr r0, [sp, #4]
	lsls r0, r0, #0x10
	str r0, [r1, #0x18]
	ldr r0, [r4, #4]
	lsls r0, r0, #0x10
	str r0, [r1, #0x1c]
	ldr r0, [sp]
	str r0, [r5, #0x18]
	ldr r4, [r5, #8]
	adds r0, r4, #0
	bl FUN_08001BF4
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl FUN_08001FF0
_0803E19E:
	bl FUN_0803E250
	add sp, #0xc
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0803E1AC: .4byte ROMREF_0805F974
_0803E1B0: .4byte gUnk_03005BA0
_0803E1B4: .4byte ROMREF_08078508
_0803E1B8: .4byte 0xFFFFFF00
_0803E1BC: .4byte 0xFFFF00FF

	thumb_func_start FUN_0803E1C0
FUN_0803E1C0: @ 0x0803E1C0
	push {r4, r5, r6, lr}
	bl FUN_0803E250
	adds r5, r0, #0
	cmp r5, #1
	bne _0803E240
	ldr r4, _0803E248 @ => 0x03005BA0
	ldr r0, [r4, #8]
	ldr r1, _0803E24C @ => 0x08062C08
	ldr r2, [r1, #4]
	ldr r1, [r1]
	movs r3, #0
	bl FUN_08011154
	ldr r0, [r4, #8]
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0803E1F4
	ldr r0, [r4]
	ldr r1, [r4, #4]
	movs r2, #0
	bl FUN_08049954
_0803E1F4:
	ldr r2, [r4, #4]
	ldr r0, [r4, #0xc]
	ldr r1, [r0, #0x1c]
	ldr r0, [r0, #0x18]
	str r0, [r2, #0x18]
	str r1, [r2, #0x1c]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	ldrb r0, [r0, #0x12]
	strb r0, [r1, #0x12]
	ldr r0, [r4, #4]
	ldrb r1, [r0, #0x12]
	movs r3, #0x1a
	ldrsh r2, [r0, r3]
	movs r6, #0x1e
	ldrsh r3, [r0, r6]
	bl FUN_0803BB50
	ldr r0, [r4, #4]
	bl FUN_0803E3C4
	ldr r0, [r4, #4]
	bl FUN_0803C2A8
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_08002038
	ldr r0, [r4, #0xc]
	movs r1, #2
	bl FUN_08002038
	bl FUN_0803E45C
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl FUN_080014E4
_0803E240:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803E248: .4byte gUnk_03005BA0
_0803E24C: .4byte ROMREF_08062C08

	thumb_func_start FUN_0803E250
FUN_0803E250: @ 0x0803E250
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r4, _0803E2EC @ => 0x03005BA0
	ldr r0, [r4]
	ldr r1, [r4, #0xc]
	movs r2, #1
	bl FUN_08048EB8
	mov sl, r0
	movs r0, #0
	mov r8, r0
	ldr r0, [r4, #0xc]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r6, [r0]
	mov r2, sl
	cmp r2, #1
	bne _0803E308
	ldr r0, [r6, #0x50]
	cmp r0, #1
	bne _0803E2FA
	ldr r0, [r4]
	adds r1, r4, #0
	adds r1, #0x1c
	adds r2, r4, #0
	adds r2, #0x20
	mov r3, r8
	str r3, [sp]
	movs r3, #0x32
	bl FUN_0804A06C
	cmp r0, #0
	beq _0803E2FE
	movs r5, #0
	ldr r0, [r6, #0x6c]
	str r0, [sp, #4]
	add r0, sp, #4
	ldr r2, _0803E2F0 @ => 0x0000FFFF
	adds r1, r2, #0
	ldrh r0, [r0]
	cmp r0, #0
	beq _0803E2FE
	add r7, sp, #4
	mov sb, r1
_0803E2B2:
	ldr r0, [r4]
	movs r1, #0
	str r1, [sp]
	adds r1, r4, #0
	adds r1, #0x1c
	add r2, sp, #4
	movs r3, #0x1e
	bl FUN_0804A06C
	cmp r0, #0
	bne _0803E2F4
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xb
	bhi _0803E2FE
	lsls r1, r5, #2
	adds r0, r6, #0
	adds r0, #0x6c
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	ldrh r0, [r7]
	mov r3, sb
	ands r0, r3
	cmp r0, #0
	bne _0803E2B2
	b _0803E2FE
	.align 2, 0
_0803E2EC: .4byte gUnk_03005BA0
_0803E2F0: .4byte 0x0000FFFF
_0803E2F4:
	movs r0, #1
	mov r8, r0
	b _0803E2FE
_0803E2FA:
	movs r1, #1
	mov r8, r1
_0803E2FE:
	ldr r1, _0803E330 @ => 0x03005BA0
	ldr r0, [r1]
	ldr r1, [r1, #0xc]
	bl FUN_08049288
_0803E308:
	movs r4, #0
	mov r2, sl
	cmp r2, #1
	bne _0803E318
	mov r3, r8
	cmp r3, #1
	bne _0803E318
	movs r4, #1
_0803E318:
	adds r0, r4, #0
	bl FUN_0803E3C8
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803E330: .4byte gUnk_03005BA0

	thumb_func_start FUN_0803E334
FUN_0803E334: @ 0x0803E334
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _0803E388 @ => 0x03005BA0
	ldr r0, [r6, #0xc]
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _0803E38C @ => 0x0807281C
	lsls r4, r1, #2
	adds r4, r4, r1
	lsls r4, r4, #2
	adds r0, #0xc
	adds r0, r4, r0
	ldr r0, [r0]
	mov r5, sp
	adds r5, #1
	mov r1, sp
	adds r2, r5, #0
	bl FUN_0803DD78
	ldr r3, _0803E390 @ => 0x09FB6BEC
	mov r2, sp
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r1, [r0]
	cmn r4, r3
	beq _0803E3AA
	ldr r0, [r6, #0xc]
	ldrb r0, [r0, #0x12]
	cmp r0, #1
	beq _0803E382
	cmp r0, #7
	bne _0803E394
_0803E382:
	adds r1, #0x10
	b _0803E39E
	.align 2, 0
_0803E388: .4byte gUnk_03005BA0
_0803E38C: .4byte ItemInfoData
_0803E390: .4byte ROMREF_09FB6BEC
_0803E394:
	cmp r0, #3
	beq _0803E39C
	cmp r0, #5
	bne _0803E3B4
_0803E39C:
	adds r1, #0x30
_0803E39E:
	ldr r0, _0803E3BC @ => 0x03005BA0
	ldr r0, [r0, #0xc]
	ldr r2, _0803E3C0 @ => 0x0807889C
	movs r3, #0
	bl FUN_0800192C
_0803E3AA:
	ldr r0, _0803E3BC @ => 0x03005BA0
	ldr r0, [r0, #0xc]
	movs r1, #4
	bl FUN_080017D4
_0803E3B4:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803E3BC: .4byte gUnk_03005BA0
_0803E3C0: .4byte ROMREF_0807889C

	thumb_func_start FUN_0803E3C4
FUN_0803E3C4: @ 0x0803E3C4
	bx lr
	.align 2, 0

	thumb_func_start FUN_0803E3C8
FUN_0803E3C8: @ 0x0803E3C8
	push {r4, lr}
	cmp r0, #1
	bne _0803E3F4
	ldr r4, _0803E3EC @ => 0x03005BA0
	ldr r0, [r4, #0xc]
	bl FUN_0803EF58
	ldr r4, [r4, #0xc]
	ldr r1, _0803E3F0 @ => 0x08078898
	adds r0, r4, #0
	bl FUN_08048E24
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_0803EF14
	b _0803E40E
	.align 2, 0
_0803E3EC: .4byte gUnk_03005BA0
_0803E3F0: .4byte ROMREF_08078898
_0803E3F4:
	ldr r4, _0803E414 @ => 0x03005BA0
	ldr r0, [r4, #0xc]
	bl FUN_0803EF58
	ldr r4, [r4, #0xc]
	ldr r1, _0803E418 @ => 0x0808DD98
	adds r0, r4, #0
	bl FUN_08048E24
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_0803EF14
_0803E40E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803E414: .4byte gUnk_03005BA0
_0803E418: .4byte ROMREF_0808DD98

	thumb_func_start FUN_0803E41C
FUN_0803E41C: @ 0x0803E41C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r0, [r0]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl FUN_0803B9F4
	adds r4, r0, #0
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	str r0, [r4, #0x18]
	str r1, [r4, #0x1c]
	ldrb r0, [r5, #0x12]
	movs r5, #0
	strb r0, [r4, #0x12]
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08002038
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r4, r1
	str r5, [r0]
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0803E45C
FUN_0803E45C: @ 0x0803E45C
	ldr r1, _0803E474 @ => 0x03005BA0
	movs r0, #0
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1]
	str r0, [r1, #0xc]
	strb r0, [r1, #0x18]
	strb r0, [r1, #0x19]
	strb r0, [r1, #0x1c]
	strb r0, [r1, #0x1d]
	str r0, [r1, #0x28]
	bx lr
	.align 2, 0
_0803E474: .4byte gUnk_03005BA0

	thumb_func_start FUN_0803E478
FUN_0803E478: @ 0x0803E478
	push {r4, lr}
	movs r0, #0x2f
	bl FUN_080012D8
	adds r4, r0, #0
	ldr r0, _0803E4E0 @ => 0x00100018
	str r0, [r4, #0xc]
	movs r0, #0xb2
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl FUN_08001728
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001FB0
	ldr r1, _0803E4E4 @ => 0x080788A0
	adds r0, r4, #0
	bl FUN_080015B8
	ldr r1, _0803E4E8 @ => 0x0808DD9C
	adds r0, r4, #0
	bl FUN_08048E24
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_0803EF14
	ldr r0, _0803E4EC @ => FUN_0803E570
	str r0, [r4, #0x50]
	adds r2, r4, #0
	adds r2, #0xa9
	ldrb r1, [r2]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _0803E4F0 @ => FUN_08001EBC
	str r0, [r4, #0x64]
	adds r0, r4, #0
	bl FUN_0803E54C
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803E4E0: .4byte 0x00100018
_0803E4E4: .4byte ROMREF_080788A0
_0803E4E8: .4byte ROMREF_0808DD9C
_0803E4EC: .4byte FUN_0803E570
_0803E4F0: .4byte FUN_08001EBC

	thumb_func_start FUN_0803E4F4
FUN_0803E4F4: @ 0x0803E4F4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r3, #0
	ldr r6, [sp, #0x10]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	bl FUN_08001728
	adds r0, r5, #0
	movs r1, #1
	bl FUN_08002038
	adds r2, r5, #0
	adds r2, #0xa9
	movs r0, #3
	ands r4, r0
	lsls r4, r4, #2
	ldrb r1, [r2]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
	cmp r6, #0
	beq _0803E53E
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r5, r1
	str r6, [r0]
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #1
	str r0, [r1]
	b _0803E546
_0803E53E:
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r5, r1
	str r6, [r0]
_0803E546:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start FUN_0803E54C
FUN_0803E54C: @ 0x0803E54C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl FUN_08002040
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #0
	str r1, [r0]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r4, r4, r0
	str r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0803E570
FUN_0803E570: @ 0x0803E570
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _0803E5AE
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0803E5AE
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08002040
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #0
	str r1, [r0]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r4, r2
	str r1, [r0]
_0803E5AE:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_0803E5B4
FUN_0803E5B4: @ 0x0803E5B4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x20
	ldr r5, _0803E5F0 @ => 0x03005E20
	ldrb r0, [r5, #9]
	movs r1, #0x19
	bl SVC_Div
	ldr r4, _0803E5F4 @ => 0x03002614
	strb r0, [r4]
	ldrb r0, [r5, #8]
	movs r1, #0xc
	bl SVC_Div
	strb r0, [r4, #1]
	ldr r0, _0803E5F8 @ => 0x03004720
	ldr r0, [r0, #4]
	cmp r0, #1
	bls _0803E604
	cmp r0, #2
	bne _0803E604
	ldr r0, _0803E5FC @ => 0x030043A0
	ldr r0, [r0]
	cmp r0, #0x31
	beq _0803E604
	ldr r1, _0803E600 @ => 0x03005BD0
	movs r0, #9
	b _0803E608
	.align 2, 0
_0803E5F0: .4byte gUnk_03005E20
_0803E5F4: .4byte gUnk_03002614
_0803E5F8: .4byte gUnk_03004720
_0803E5FC: .4byte gUnk_030043A0
_0803E600: .4byte gUnk_03005BD0
_0803E604:
	ldr r1, _0803E660 @ => 0x03005BD0
	movs r0, #5
_0803E608:
	strh r0, [r1]
	movs r4, #1
	ldr r1, _0803E664 @ => 0x080788B0
	ldr r0, _0803E668 @ => 0x03004790
	movs r5, #1
	adds r3, r0, #4
_0803E614:
	ldr r2, [r3]
	cmp r2, #0
	beq _0803E620
	ldr r0, [r2, #0xc]
	orrs r0, r5
	str r0, [r2, #0xc]
_0803E620:
	adds r3, #4
	adds r4, #1
	cmp r4, #4
	bls _0803E614
	ldr r1, [r1]
	movs r0, #2
	bl FUN_0800C418
	movs r0, #2
	movs r1, #0
	bl FUN_0800C61C
	ldr r0, _0803E660 @ => 0x03005BD0
	ldrh r0, [r0]
	cmp r0, #5
	bne _0803E674
	movs r0, #0
	movs r6, #0
	ldr r2, _0803E66C @ => 0x08CE3784
	ldr r3, _0803E670 @ => 0x000002CD
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x14]
	add r0, sp, #0x18
	movs r1, #2
	bl FUN_0800D83C
	b _0803E694
	.align 2, 0
_0803E660: .4byte gUnk_03005BD0
_0803E664: .4byte ROMREF_080788B0
_0803E668: .4byte gUnk_03004790
_0803E66C: .4byte ROMREF_08CE3784
_0803E670: .4byte 0x000002CD
_0803E674:
	movs r0, #0
	movs r7, #0
	movs r1, #0
	ldr r2, _0803E6C4 @ => 0x08CE3ED0
	ldr r3, _0803E6C8 @ => 0x000002CD
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	str r1, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x14]
	add r0, sp, #0x1c
	movs r1, #2
	bl FUN_0800D83C
_0803E694:
	movs r0, #0
	bl FUN_0800C5FC
	movs r4, #0
_0803E69C:
	adds r0, r4, #0
	bl FUN_0803E754
	adds r4, #1
	cmp r4, #3
	bls _0803E69C
	bl FUN_0803E950
	ldr r0, _0803E6CC @ => 0x03004720
	movs r1, #3
	str r1, [r0, #0x14]
	movs r1, #5
	str r1, [r0, #0x18]
	add sp, #0x20
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803E6C4: .4byte ROMREF_08CE3ED0
_0803E6C8: .4byte 0x000002CD
_0803E6CC: .4byte gUnk_03004720

	thumb_func_start FUN_0803E6D0
FUN_0803E6D0: @ 0x0803E6D0
	push {lr}
	ldr r1, _0803E6F0 @ => 0x03004720
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq _0803E6DE
	subs r0, #1
	str r0, [r1, #0x18]
_0803E6DE:
	ldr r1, _0803E6F4 @ => 0x030042B0
	ldrh r2, [r1, #0xc]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0803E6F8
	bl FUN_0803EC2C
	b _0803E74E
	.align 2, 0
_0803E6F0: .4byte gUnk_03004720
_0803E6F4: .4byte gUnk_030042B0
_0803E6F8:
	movs r0, #0xc0
	ands r0, r2
	cmp r0, #0
	beq _0803E706
	bl FUN_0803EC8C
	b _0803E74E
_0803E706:
	ldrh r1, [r1, #8]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0803E716
	bl FUN_0803E824
	b _0803E74E
_0803E716:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0803E74E
	ldr r0, _0803E740 @ => 0x03005BD0
	ldrh r0, [r0]
	cmp r0, #5
	bne _0803E744
	bl FUN_0803ECDC
	movs r0, #2
	movs r1, #0
	bl FUN_0800C61C
	movs r0, #0
	movs r1, #0
	bl FUN_0800C61C
	bl FUN_080513E8
	b _0803E74E
	.align 2, 0
_0803E740: .4byte gUnk_03005BD0
_0803E744:
	movs r0, #9
	movs r1, #0
	movs r2, #0
	bl FUN_08051814
_0803E74E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0803E754
FUN_0803E754: @ 0x0803E754
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _0803E788 @ => 0x080788F0
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r8, r0
	ldr r0, _0803E78C @ => 0x03005BD0
	ldrh r0, [r0]
	cmp r0, #5
	bne _0803E794
	movs r0, #0
	mov sb, r0
	ldr r1, _0803E790 @ => 0x080788B8
	lsls r0, r4, #3
	adds r0, r0, r1
	movs r1, #0
	ldrsh r5, [r0, r1]
	movs r1, #2
	ldrsh r6, [r0, r1]
	b _0803E7A6
	.align 2, 0
_0803E788: .4byte ROMREF_080788F0
_0803E78C: .4byte gUnk_03005BD0
_0803E790: .4byte ROMREF_080788B8
_0803E794:
	movs r0, #1
	mov sb, r0
	ldr r1, _0803E7EC @ => 0x080788B8
	lsls r0, r4, #3
	adds r0, r0, r1
	movs r1, #4
	ldrsh r5, [r0, r1]
	movs r1, #6
	ldrsh r6, [r0, r1]
_0803E7A6:
	movs r1, #0xee
	lsls r1, r1, #3
	adds r0, r4, r1
	bl FUN_08050820
	adds r7, r0, #0
	movs r1, #0
	ldr r0, _0803E7F0 @ => 0x03004720
	ldr r0, [r0, #0xc]
	cmp r4, r0
	bne _0803E7BE
	movs r1, #1
_0803E7BE:
	ldr r0, _0803E7F4 @ => 0x03005BD0
	ldrh r0, [r0]
	movs r3, #3
	cmp r0, #5
	bne _0803E7CA
	movs r3, #1
_0803E7CA:
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r3, #0
	bl FUN_0801FEA0
	cmp r4, #1
	bhi _0803E7F8
	movs r0, #1
	str r0, [sp]
	mov r0, r8
	adds r1, r5, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl FUN_0801F8B8
	b _0803E808
	.align 2, 0
_0803E7EC: .4byte ROMREF_080788B8
_0803E7F0: .4byte gUnk_03004720
_0803E7F4: .4byte gUnk_03005BD0
_0803E7F8:
	movs r0, #1
	str r0, [sp]
	mov r0, r8
	adds r1, r5, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl FUN_0801F8B8
_0803E808:
	cmp r4, #1
	bhi _0803E814
	adds r0, r4, #0
	mov r1, sb
	bl FUN_0803EAC0
_0803E814:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0803E824
FUN_0803E824: @ 0x0803E824
	push {r4, r5, lr}
	sub sp, #8
	movs r5, #0
	ldr r4, _0803E878 @ => 0x03004720
	ldr r1, [r4, #0xc]
	cmp r1, #1
	bls _0803E834
	b _0803E93E
_0803E834:
	ldr r0, _0803E87C @ => 0x03002614
	adds r0, r1, r0
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _0803E85E
	ldr r0, _0803E880 @ => 0x080788B4
	adds r0, r1, r0
	ldrb r2, [r0]
	ldr r0, _0803E884 @ => 0x030042B0
	ldrh r0, [r0, #6]
	str r0, [sp]
	add r0, sp, #4
	movs r1, #0
	movs r3, #0
	bl FUN_08024B84
	movs r0, #5
	str r0, [r4, #0x18]
	movs r5, #1
_0803E85E:
	ldr r1, _0803E87C @ => 0x03002614
	ldr r2, _0803E878 @ => 0x03004720
	ldr r0, [r2, #0xc]
	adds r0, r0, r1
	ldr r1, [sp, #4]
	strb r1, [r0]
	ldr r0, [r2, #0xc]
	cmp r0, #0
	beq _0803E888
	cmp r0, #1
	beq _0803E8EA
	b _0803E918
	.align 2, 0
_0803E878: .4byte gUnk_03004720
_0803E87C: .4byte gUnk_03002614
_0803E880: .4byte ROMREF_080788B4
_0803E884: .4byte gUnk_030042B0
_0803E888:
	ldr r1, [sp, #4]
	cmp r1, #0xa
	bne _0803E892
	movs r0, #0xff
	b _0803E89A
_0803E892:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
_0803E89A:
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	cmp r1, #0
	bne _0803E8B8
	ldr r0, _0803E8B4 @ => 0x03005E20
	ldrb r0, [r0, #9]
	cmp r0, #0
	beq _0803E8E0
	bl FUN_0804E0F8
	ldr r0, [sp, #4]
	lsls r0, r0, #0x18
	b _0803E8E2
	.align 2, 0
_0803E8B4: .4byte gUnk_03005E20
_0803E8B8:
	ldr r0, _0803E8D8 @ => 0x03005E20
	ldrb r0, [r0, #9]
	cmp r0, #0
	bne _0803E8E0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0804DFD0
	ldr r2, _0803E8DC @ => 0x03006528
	ldrb r0, [r2, #5]
	movs r1, #0xff
	strb r1, [r2, #5]
	bl FUN_0804DE84
	b _0803E918
	.align 2, 0
_0803E8D8: .4byte gUnk_03005E20
_0803E8DC: .4byte gUnk_03006528
_0803E8E0:
	lsls r0, r1, #0x18
_0803E8E2:
	lsrs r0, r0, #0x18
	bl FUN_0804DFD0
	b _0803E918
_0803E8EA:
	ldr r1, [sp, #4]
	cmp r1, #0xa
	bne _0803E8F4
	movs r0, #0x80
	b _0803E8FA
_0803E8F4:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
_0803E8FA:
	str r0, [sp, #4]
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0803E90E
	ldr r0, _0803E948 @ => 0x03005E20
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _0803E90E
	bl FUN_0804E058
_0803E90E:
	ldr r0, [sp, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0804DFB4
_0803E918:
	movs r4, #0
_0803E91A:
	adds r0, r4, #0
	bl FUN_0803E754
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0803E91A
	cmp r5, #0
	beq _0803E93E
	ldr r4, _0803E94C @ => 0x03002618
	ldr r0, [r4]
	bl FUN_0804E03C
	movs r0, #0xb2
	bl FUN_0804DE0C
	str r0, [r4]
_0803E93E:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803E948: .4byte gUnk_03005E20
_0803E94C: .4byte gUnk_03002618

	thumb_func_start FUN_0803E950
FUN_0803E950: @ 0x0803E950
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0803EA28 @ => 0x03005BD0
	ldrh r1, [r0]
	movs r0, #5
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	mov sb, r0
	ldr r5, _0803EA2C @ => 0x0807890C
	lsls r6, r0, #2
	adds r0, r5, #0
	adds r0, #0x10
	adds r0, r6, r0
	ldr r0, [r0]
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0
	bl FUN_0802D6FC
	ldr r4, _0803EA30 @ => 0x03004790
	ldr r0, [r4]
	movs r1, #0
	bl FUN_0803EA3C
	ldm r4!, {r2}
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
	movs r7, #0
	mov r8, r6
	adds r0, r5, #0
	adds r0, #0x28
	adds r6, r6, r0
	adds r5, #0x18
	mov sl, r4
_0803E9AA:
	adds r4, r7, #1
	ldr r0, [r6]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0
	bl FUN_0802D6FC
	mov r1, sl
	adds r1, #4
	mov sl, r1
	subs r1, #4
	ldm r1!, {r0}
	movs r1, #1
	bl FUN_0803EA3C
	adds r6, #0x18
	adds r5, #0x18
	adds r7, r4, #0
	cmp r7, #3
	bls _0803E9AA
	movs r7, #0
	ldr r1, _0803EA34 @ => 0x08078984
	adds r0, r1, #0
	adds r0, #0x10
	mov r2, r8
	adds r6, r2, r0
	adds r5, r1, #0
	movs r4, #0x14
_0803E9E6:
	adds r0, r7, #5
	ldr r1, _0803EA38 @ => 0x09FB6C50
	ldr r3, [r1]
	ldr r1, [r6]
	str r1, [sp]
	movs r1, #0
	adds r2, r5, #0
	bl FUN_0802D6FC
	ldr r0, _0803EA30 @ => 0x03004790
	adds r0, r4, r0
	ldr r0, [r0]
	movs r1, #2
	bl FUN_0803EA3C
	adds r0, r7, #0
	mov r1, sb
	bl FUN_0803EAC0
	adds r6, #0x18
	adds r5, #0x18
	adds r4, #4
	adds r7, #1
	cmp r7, #1
	bls _0803E9E6
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803EA28: .4byte gUnk_03005BD0
_0803EA2C: .4byte ROMREF_0807890C
_0803EA30: .4byte gUnk_03004790
_0803EA34: .4byte ROMREF_08078984
_0803EA38: .4byte ROMREF_09FB6C50

	thumb_func_start FUN_0803EA3C
FUN_0803EA3C: @ 0x0803EA3C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x19
	str r0, [r5, #0xc]
	adds r4, r5, #0
	adds r4, #0xa9
	ldrb r2, [r4]
	subs r0, #0x26
	ands r0, r2
	movs r2, #4
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
	ldrb r0, [r4]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x1c
	cmp r0, #1
	beq _0803EA90
	cmp r0, #1
	bgt _0803EA80
	cmp r0, #0
	beq _0803EA86
	b _0803EAB2
_0803EA80:
	cmp r0, #2
	beq _0803EAA4
	b _0803EAB2
_0803EA86:
	ldr r0, _0803EA8C @ => 0x0807890C
	b _0803EA92
	.align 2, 0
_0803EA8C: .4byte ROMREF_0807890C
_0803EA90:
	ldr r0, _0803EAA0 @ => 0x08078924
_0803EA92:
	ldr r0, [r0, #8]
	lsrs r1, r1, #0x1c
	lsls r1, r1, #4
	movs r2, #0x10
	bl FUN_0801579C
	b _0803EAB2
	.align 2, 0
_0803EAA0: .4byte ROMREF_08078924
_0803EAA4:
	ldr r0, _0803EABC @ => 0x08078984
	ldr r0, [r0, #8]
	lsrs r1, r1, #0x1c
	lsls r1, r1, #4
	movs r2, #0x10
	bl FUN_0801579C
_0803EAB2:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0803EABC: .4byte ROMREF_08078984

	thumb_func_start FUN_0803EAC0
FUN_0803EAC0: @ 0x0803EAC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r4, r1, #0
	cmp r7, #0
	beq _0803EAEC
	cmp r7, #1
	beq _0803EB5C
	movs r0, #5
	mov r8, r0
	ldr r1, _0803EAE4 @ => 0x03002614
	mov sb, r1
	ldr r2, _0803EAE8 @ => 0x03004790
	mov sl, r2
	b _0803EBB6
	.align 2, 0
_0803EAE4: .4byte gUnk_03002614
_0803EAE8: .4byte gUnk_03004790
_0803EAEC:
	ldr r0, _0803EB0C @ => 0x03002614
	ldrb r1, [r0]
	mov sb, r0
	cmp r1, #0xa
	bne _0803EB14
	ldr r0, _0803EB10 @ => 0x03004790
	ldr r2, [r0, #8]
	mov sl, r0
	cmp r2, #0
	beq _0803EB52
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _0803EB50
	.align 2, 0
_0803EB0C: .4byte gUnk_03002614
_0803EB10: .4byte gUnk_03004790
_0803EB14:
	cmp r1, #0
	bne _0803EB30
	ldr r0, _0803EB2C @ => 0x03004790
	ldr r2, [r0, #4]
	mov sl, r0
	cmp r2, #0
	beq _0803EB52
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _0803EB50
	.align 2, 0
_0803EB2C: .4byte gUnk_03004790
_0803EB30:
	ldr r0, _0803EB58 @ => 0x03004790
	ldr r2, [r0, #8]
	mov sl, r0
	cmp r2, #0
	beq _0803EB42
	ldr r0, [r2, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0xc]
_0803EB42:
	mov r3, sl
	ldr r2, [r3, #4]
	cmp r2, #0
	beq _0803EB52
	ldr r0, [r2, #0xc]
	movs r1, #1
	orrs r0, r1
_0803EB50:
	str r0, [r2, #0xc]
_0803EB52:
	movs r0, #5
	mov r8, r0
	b _0803EBB6
	.align 2, 0
_0803EB58: .4byte gUnk_03004790
_0803EB5C:
	ldr r0, _0803EB6C @ => 0x03002614
	ldrb r1, [r0, #1]
	mov sb, r0
	cmp r1, #0xa
	bne _0803EB74
	ldr r0, _0803EB70 @ => 0x03004790
	ldr r2, [r0, #0x10]
	b _0803EB7C
	.align 2, 0
_0803EB6C: .4byte gUnk_03002614
_0803EB70: .4byte gUnk_03004790
_0803EB74:
	cmp r1, #0
	bne _0803EB94
	ldr r0, _0803EB90 @ => 0x03004790
	ldr r2, [r0, #0xc]
_0803EB7C:
	mov sl, r0
	cmp r2, #0
	beq _0803EBB2
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
	b _0803EBB2
	.align 2, 0
_0803EB90: .4byte gUnk_03004790
_0803EB94:
	ldr r0, _0803EC1C @ => 0x03004790
	ldr r1, [r0, #0x10]
	mov sl, r0
	cmp r1, #0
	beq _0803EBA4
	ldr r0, [r1, #0xc]
	orrs r0, r7
	str r0, [r1, #0xc]
_0803EBA4:
	mov r2, sl
	ldr r1, [r2, #0xc]
	cmp r1, #0
	beq _0803EBB2
	ldr r0, [r1, #0xc]
	orrs r0, r7
	str r0, [r1, #0xc]
_0803EBB2:
	movs r3, #6
	mov r8, r3
_0803EBB6:
	ldr r1, _0803EC20 @ => 0x0807890C
	lsls r4, r4, #2
	mov r2, r8
	lsls r0, r2, #1
	add r0, r8
	lsls r0, r0, #3
	adds r4, r4, r0
	adds r4, r4, r1
	movs r3, #0x10
	ldrsh r0, [r4, r3]
	bl __floatsidf
	adds r6, r1, #0
	adds r5, r0, #0
	mov r1, sb
	adds r0, r7, r1
	ldrb r0, [r0]
	bl __floatsidf
	ldr r2, _0803EC24 @ => 0x40106666
	ldr r3, _0803EC28 @ => 0x66666666
	bl __muldf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r6, #0
	adds r0, r5, #0
	bl __adddf3
	bl __fixdfsi
	adds r1, r0, #0
	movs r3, #0x12
	ldrsh r2, [r4, r3]
	mov r3, r8
	lsls r0, r3, #2
	add r0, sl
	ldr r0, [r0]
	cmp r0, #0
	beq _0803EC0E
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	bl FUN_08001728
_0803EC0E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803EC1C: .4byte gUnk_03004790
_0803EC20: .4byte ROMREF_0807890C
_0803EC24: .4byte 0x40106666
_0803EC28: .4byte 0x66666666

	thumb_func_start FUN_0803EC2C
FUN_0803EC2C: @ 0x0803EC2C
	push {r4, lr}
	movs r4, #0
	ldr r0, _0803EC44 @ => 0x03004720
	ldr r0, [r0, #0xc]
	cmp r0, #2
	beq _0803EC48
	cmp r0, #2
	blo _0803EC6A
	cmp r0, #3
	beq _0803EC5C
	b _0803EC6A
	.align 2, 0
_0803EC44: .4byte gUnk_03004720
_0803EC48:
	ldr r0, _0803EC58 @ => 0x03005BD0
	ldrh r2, [r0]
	movs r0, #0xa
	movs r1, #0
	bl FUN_08051814
	b _0803EC6A
	.align 2, 0
_0803EC58: .4byte gUnk_03005BD0
_0803EC5C:
	ldr r0, _0803EC84 @ => 0x03005BD0
	ldrh r2, [r0]
	movs r0, #0x21
	movs r1, #1
	bl FUN_08051814
	movs r4, #1
_0803EC6A:
	cmp r4, #0
	beq _0803EC7E
	ldr r4, _0803EC88 @ => 0x03002618
	ldr r0, [r4]
	bl FUN_0804E03C
	movs r0, #0xad
	bl FUN_0804DE0C
	str r0, [r4]
_0803EC7E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803EC84: .4byte gUnk_03005BD0
_0803EC88: .4byte gUnk_03002618

	thumb_func_start FUN_0803EC8C
FUN_0803EC8C: @ 0x0803EC8C
	push {r4, r5, lr}
	sub sp, #4
	ldr r4, _0803ECD0 @ => 0x03004720
	ldr r5, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0xc
	ldr r1, _0803ECD4 @ => 0x030042B0
	ldrh r1, [r1, #6]
	str r1, [sp]
	movs r1, #0
	movs r2, #3
	movs r3, #1
	bl FUN_08024A88
	str r0, [r4, #0xc]
	adds r0, r5, #0
	bl FUN_0803E754
	ldr r0, [r4, #0xc]
	bl FUN_0803E754
	ldr r4, _0803ECD8 @ => 0x03002618
	ldr r0, [r4]
	bl FUN_0804E03C
	movs r0, #0xb1
	bl FUN_0804DE0C
	str r0, [r4]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803ECD0: .4byte gUnk_03004720
_0803ECD4: .4byte gUnk_030042B0
_0803ECD8: .4byte gUnk_03002618

	thumb_func_start FUN_0803ECDC
FUN_0803ECDC: @ 0x0803ECDC
	push {r4, lr}
	movs r2, #1
	ldr r4, _0803ED04 @ => 0x03004790
	movs r3, #2
_0803ECE4:
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	cmp r1, #0
	beq _0803ECF4
	ldr r0, [r1, #0xc]
	orrs r0, r3
	str r0, [r1, #0xc]
_0803ECF4:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #6
	bls _0803ECE4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803ED04: .4byte gUnk_03004790

	thumb_func_start FUN_0803ED08
FUN_0803ED08: @ 0x0803ED08
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, [r5, #0xc]
	movs r7, #0x80
	lsls r7, r7, #0x14
	ands r0, r7
	cmp r0, #0
	beq _0803ED20
	adds r0, r5, #0
	bl FUN_0803ED70
_0803ED20:
	adds r0, r6, #0
	bl FUN_0803EFC4
	adds r4, r5, #0
	adds r4, #0xa9
	lsls r1, r0, #4
	ldrb r3, [r4]
	movs r2, #0xf
	ands r2, r3
	orrs r2, r1
	strb r2, [r4]
	ldr r4, _0803ED6C @ => 0x03002620
	lsls r0, r0, #3
	adds r3, r0, r4
	ldrh r2, [r5, #8]
	strb r2, [r3, #4]
	ldrh r2, [r5, #0xa]
	strb r2, [r3, #5]
	ldrb r2, [r3, #6]
	adds r2, #1
	strb r2, [r3, #6]
	adds r2, r4, #0
	adds r2, #8
	adds r0, r0, r2
	str r6, [r0]
	ldr r0, [r4]
	lsls r0, r0, #2
	adds r0, r6, r0
	ldr r0, [r0]
	movs r2, #0x10
	bl FUN_0801579C
	ldr r0, [r5, #0xc]
	orrs r0, r7
	str r0, [r5, #0xc]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803ED6C: .4byte gUnk_03002620

	thumb_func_start FUN_0803ED70
FUN_0803ED70: @ 0x0803ED70
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ands r0, r1
	cmp r0, #0
	beq _0803ED86
	adds r0, r4, #0
	bl FUN_08008F78
_0803ED86:
	ldr r1, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0x14
	ands r0, r1
	cmp r0, #0
	beq _0803EDC4
	ldr r0, _0803EDCC @ => 0xF7FFFFFF
	ands r1, r0
	str r1, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0xa9
	ldrb r0, [r0]
	lsrs r0, r0, #4
	ldr r1, _0803EDD0 @ => 0x03002620
	lsls r0, r0, #3
	adds r2, r0, r1
	ldrb r0, [r2, #6]
	cmp r0, #0
	beq _0803EDC4
	subs r0, #1
	strb r0, [r2, #6]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803EDC4
	ldrb r1, [r2, #7]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0803EDC4
	movs r0, #0xff
	strb r0, [r2, #4]
_0803EDC4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803EDCC: .4byte 0xF7FFFFFF
_0803EDD0: .4byte gUnk_03002620

	thumb_func_start FUN_0803EDD4
FUN_0803EDD4: @ 0x0803EDD4
	push {r4, lr}
	ldr r4, _0803EDFC @ => 0x03002620
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x84
	bl FUN_0802CB40
	movs r1, #0
	movs r2, #0xff
	adds r4, #4
_0803EDE8:
	ldrb r0, [r4]
	orrs r0, r2
	strb r0, [r4]
	adds r4, #8
	adds r1, #1
	cmp r1, #0xf
	bls _0803EDE8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803EDFC: .4byte gUnk_03002620

	thumb_func_start FUN_0803EE00
FUN_0803EE00: @ 0x0803EE00
	ldr r1, _0803EE10 @ => 0x03002620
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #7]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_0803EE10: .4byte gUnk_03002620

	thumb_func_start FUN_0803EE14
FUN_0803EE14: @ 0x0803EE14
	ldr r1, _0803EE24 @ => 0x03002620
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r2, [r0, #7]
	movs r1, #2
	orrs r1, r2
	strb r1, [r0, #7]
	bx lr
	.align 2, 0
_0803EE24: .4byte gUnk_03002620

	thumb_func_start FUN_0803EE28
FUN_0803EE28: @ 0x0803EE28
	ldr r1, _0803EE38 @ => 0x03002620
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r2, [r0, #7]
	movs r1, #0xfd
	ands r1, r2
	strb r1, [r0, #7]
	bx lr
	.align 2, 0
_0803EE38: .4byte gUnk_03002620

	thumb_func_start FUN_0803EE3C
FUN_0803EE3C: @ 0x0803EE3C
	push {r4, r5, r6, lr}
	movs r3, #0
	ldr r5, _0803EE6C @ => 0x03002620
	movs r6, #2
	movs r4, #0xfd
_0803EE46:
	lsls r0, r3, #3
	adds r2, r0, r5
	ldrb r1, [r2, #7]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0803EE5A
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r2, #7]
_0803EE5A:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xf
	bls _0803EE46
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803EE6C: .4byte gUnk_03002620

	thumb_func_start FUN_0803EE70
FUN_0803EE70: @ 0x0803EE70
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, _0803EE9C @ => 0x03002620
	lsls r0, r4, #3
	adds r2, r0, r3
	strb r4, [r2, #4]
	adds r2, r3, #0
	adds r2, #8
	adds r0, r0, r2
	str r1, [r0]
	ldr r0, [r3]
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1]
	lsls r4, r4, #4
	adds r1, r4, #0
	movs r2, #0x10
	bl FUN_0801579C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803EE9C: .4byte gUnk_03002620

	thumb_func_start FUN_0803EEA0
FUN_0803EEA0: @ 0x0803EEA0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	cmp r5, #0xff
	beq _0803EEDE
	ldr r0, [r4, #0xc]
	movs r6, #0x80
	lsls r6, r6, #0x14
	ands r0, r6
	cmp r0, #0
	beq _0803EEBC
	adds r0, r4, #0
	bl FUN_0803ED70
_0803EEBC:
	adds r3, r4, #0
	adds r3, #0xa9
	lsls r2, r5, #4
	ldrb r1, [r3]
	movs r0, #0xf
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	ldr r0, _0803EEE4 @ => 0x03002620
	lsls r1, r5, #3
	adds r1, r1, r0
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	ldr r0, [r4, #0xc]
	orrs r0, r6
	str r0, [r4, #0xc]
_0803EEDE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803EEE4: .4byte gUnk_03002620

	thumb_func_start FUN_0803EEE8
FUN_0803EEE8: @ 0x0803EEE8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0x14
	ands r0, r1
	cmp r0, #0
	beq _0803EF00
	adds r0, r4, #0
	bl FUN_0803ED70
_0803EF00:
	ldrh r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r5, r1
	adds r0, r4, #0
	bl FUN_0803ED08
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0803EF14
FUN_0803EF14: @ 0x0803EF14
	adds r2, r0, #0
	adds r2, #0xe0
	str r1, [r2]
	ldr r1, [r0, #0xc]
	movs r2, #0x20
	orrs r1, r2
	str r1, [r0, #0xc]
	bx lr

	thumb_func_start FUN_0803EF24
FUN_0803EF24: @ 0x0803EF24
	push {lr}
	adds r2, r0, #0
	adds r0, #0xe0
	ldr r1, [r0]
	cmp r1, #0
	beq _0803EF36
	adds r0, r2, #0
	bl FUN_0803ED08
_0803EF36:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0803EF3C
FUN_0803EF3C: @ 0x0803EF3C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0x14
	ands r0, r1
	cmp r0, #0
	beq _0803EF52
	adds r0, r2, #0
	bl FUN_0803EF58
_0803EF52:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0803EF58
FUN_0803EF58: @ 0x0803EF58
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0x14
	ands r0, r1
	cmp r0, #0
	beq _0803EF70
	adds r0, r2, #0
	bl FUN_0803ED70
	b _0803EF80
_0803EF70:
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r1, r0
	cmp r1, #0
	beq _0803EF80
	adds r0, r2, #0
	bl FUN_08008F78
_0803EF80:
	pop {r0}
	bx r0

	thumb_func_start FUN_0803EF84
FUN_0803EF84: @ 0x0803EF84
	adds r0, #0xa9
	ldrb r0, [r0]
	lsrs r0, r0, #4
	bx lr

	thumb_func_start FUN_0803EF8C
FUN_0803EF8C: @ 0x0803EF8C
	push {r4, r5, lr}
	movs r4, #0
	movs r3, #0
	ldr r0, _0803EFC0 @ => 0x03002620
	movs r5, #2
	adds r2, r0, #4
_0803EF98:
	ldrb r0, [r2]
	cmp r0, #0xff
	bne _0803EFAE
	ldrb r1, [r2, #3]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _0803EFAE
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0803EFAE:
	adds r2, #8
	adds r3, #1
	cmp r3, #0xf
	bls _0803EF98
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0803EFC0: .4byte gUnk_03002620

	thumb_func_start FUN_0803EFC4
FUN_0803EFC4: @ 0x0803EFC4
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	movs r6, #0xff
	movs r5, #0
	ldr r0, _0803EFEC @ => 0x03002620
	adds r4, r0, #4
	movs r7, #0
_0803EFD2:
	ldrb r1, [r4, #3]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0803F020
	ldrb r0, [r4]
	cmp r0, #0xff
	bne _0803EFF0
	cmp r6, #0xff
	bne _0803F020
	adds r6, r5, #0
	b _0803F020
	.align 2, 0
_0803EFEC: .4byte gUnk_03002620
_0803EFF0:
	movs r3, #0
	ldr r0, [r4, #4]
	ldr r2, [r0]
	mov r1, ip
	ldr r0, [r1]
	cmp r2, r0
	bne _0803F012
	ldr r0, _0803F01C @ => 0x03002628
	adds r0, r7, r0
	ldr r0, [r0]
	ldr r1, [r0]
	adds r0, r2, #0
_0803F008:
	adds r3, #1
	cmp r3, #0
	bne _0803F012
	cmp r1, r0
	beq _0803F008
_0803F012:
	cmp r3, #1
	bne _0803F020
	adds r6, r5, #0
	b _0803F02A
	.align 2, 0
_0803F01C: .4byte gUnk_03002628
_0803F020:
	adds r4, #8
	adds r7, #8
	adds r5, #1
	cmp r5, #0xf
	bls _0803EFD2
_0803F02A:
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0803F034
FUN_0803F034: @ 0x0803F034
	push {r4, r5, r6, lr}
	ldr r5, _0803F0A4 @ => 0x030026A8
	movs r0, #0xd2
	lsls r0, r0, #3
	bl FUN_0802C9DC
	str r0, [r5]
	ldr r6, _0803F0A8 @ => 0x030026AC
	movs r0, #0xb4
	lsls r0, r0, #1
	bl FUN_0802C9DC
	str r0, [r6]
	ldr r4, _0803F0AC @ => 0x030026B0
	ldr r0, [r5]
	movs r1, #0x14
	movs r2, #0x54
	bl FUN_08028F70
	str r0, [r4]
	ldr r4, _0803F0B0 @ => 0x030026B4
	ldr r0, [r6]
	movs r1, #5
	movs r2, #0x48
	bl FUN_08028F70
	str r0, [r4]
	movs r4, #0
	ldr r5, _0803F0B4 @ => 0x030026C8
_0803F06E:
	movs r0, #0x50
	bl FUN_0802C9DC
	stm r5!, {r0}
	adds r4, #1
	cmp r4, #3
	bls _0803F06E
	ldr r0, _0803F0B8 @ => 0x03005C34
	movs r1, #0
	str r1, [r0]
	ldr r0, _0803F0BC @ => 0x03005C30
	str r1, [r0]
	ldr r0, _0803F0C0 @ => 0x030026BA
	movs r2, #0
	strh r1, [r0]
	ldr r0, _0803F0C4 @ => 0x030026BC
	strh r1, [r0]
	ldr r0, _0803F0C8 @ => 0x030026BE
	strh r1, [r0]
	ldr r0, _0803F0CC @ => 0x030026C0
	strh r1, [r0]
	ldr r0, _0803F0D0 @ => 0x030026B8
	strb r2, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803F0A4: .4byte gUnk_030026A8
_0803F0A8: .4byte gUnk_030026AC
_0803F0AC: .4byte gUnk_030026B0
_0803F0B0: .4byte gUnk_030026B4
_0803F0B4: .4byte gUnk_030026C8
_0803F0B8: .4byte gUnk_03005C34
_0803F0BC: .4byte gUnk_03005C30
_0803F0C0: .4byte gUnk_030026BA
_0803F0C4: .4byte gUnk_030026BC
_0803F0C8: .4byte gUnk_030026BE
_0803F0CC: .4byte gUnk_030026C0
_0803F0D0: .4byte gUnk_030026B8

	thumb_func_start FUN_0803F0D4
FUN_0803F0D4: @ 0x0803F0D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r2, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	movs r4, #0
	ldr r5, [r6, #4]
	movs r3, #0
	ldrh r0, [r5, #6]
	cmp r4, r0
	bhs _0803F140
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #3
	mov sb, r0
	mov r1, r8
	lsls r0, r1, #2
	add r0, r8
	lsls r0, r0, #4
	mov ip, r0
	ldr r0, _0803F184 @ => 0x03005BE4
	mov sl, r0
_0803F10C:
	lsls r2, r3, #1
	mov r1, sb
	adds r0, r2, r1
	add r0, ip
	add r0, sl
	lsrs r1, r4, #6
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0xc
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r0, #0xc
	adds r0, r5, r0
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	muls r0, r1, r0
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r0, [r6, #4]
	ldrh r0, [r0, #6]
	cmp r3, r0
	blo _0803F10C
_0803F140:
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl FUN_080527B4
	ldr r3, _0803F188 @ => 0x03005BE0
	lsls r2, r7, #2
	adds r2, r2, r7
	lsls r2, r2, #3
	mov r4, r8
	lsls r1, r4, #2
	add r1, r8
	lsls r1, r1, #4
	adds r2, r2, r1
	adds r1, r2, r3
	adds r3, r1, #0
	adds r3, #0x26
	strb r0, [r3]
	ldr r0, [r6, #4]
	ldrh r0, [r0, #6]
	adds r2, r1, #0
	adds r2, #0x27
	strb r0, [r2]
	str r6, [r1]
	ldrb r0, [r3]
	strh r0, [r1, #0x24]
	ldrh r0, [r1, #0x24]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803F184: .4byte gUnk_03005BE4
_0803F188: .4byte gUnk_03005BE0

	thumb_func_start FUN_0803F18C
FUN_0803F18C: @ 0x0803F18C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r2, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	movs r2, #0
	ldr r4, [r6, #4]
	movs r3, #0
	ldr r0, _0803F244 @ => 0x03005BE0
	mov sl, r0
	ldrh r1, [r4, #6]
	cmp r2, r1
	bhs _0803F1FE
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	mov r8, r0
	ldr r7, [sp]
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #4
	mov ip, r0
	movs r0, #4
	add r0, sl
	mov sb, r0
_0803F1CC:
	lsls r1, r3, #1
	mov r7, r8
	adds r0, r1, r7
	add r0, ip
	add r0, sb
	strh r2, [r0]
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0xc
	adds r0, r4, r0
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	muls r0, r1, r0
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r0, [r6, #4]
	ldrh r0, [r0, #6]
	cmp r3, r0
	blo _0803F1CC
_0803F1FE:
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #3
	ldr r3, [sp]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	adds r1, r1, r0
	mov r7, sl
	adds r4, r1, r7
	ldr r0, [r6, #4]
	ldrh r0, [r0, #6]
	adds r1, r4, #0
	adds r1, #0x27
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x26
	strb r2, [r0]
	str r6, [r4]
	ldrh r3, [r4, #0x24]
	adds r0, r6, #0
	adds r1, r2, #0
	movs r2, #0
	bl FUN_08052890
	ldrh r0, [r4, #0x24]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803F244: .4byte gUnk_03005BE0

	thumb_func_start FUN_0803F248
FUN_0803F248: @ 0x0803F248
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sb, r2
	ldr r4, _0803F2F4 @ => 0x030026BE
	ldrh r0, [r4]
	cmp r0, #3
	bhi _0803F308
	ldr r0, _0803F2F8 @ => 0x030026B4
	ldr r1, _0803F2FC @ => 0x03005C30
	movs r2, #0x48
	bl FUN_08028FA8
	adds r6, r0, #0
	ldrh r0, [r4]
	adds r1, r0, #1
	strh r1, [r4]
	ldr r2, _0803F300 @ => 0x030026C0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	ldrh r3, [r2]
	cmp r0, r3
	bls _0803F28A
	strh r1, [r2]
_0803F28A:
	movs r4, #3
	adds r5, r6, #0
	adds r5, #0x2c
	mov r0, sb
	lsls r7, r0, #2
	ldr r3, [sp]
	lsls r3, r3, #2
	mov r8, r3
	adds r0, r6, #0
	adds r0, #0x44
	str r0, [sp, #4]
_0803F2A0:
	adds r0, r4, #0
	bl FUN_0803EE00
	cmp r0, #0
	bne _0803F2B8
	adds r0, r4, #0
	bl FUN_0803EE14
	adds r0, r4, #0
	mov r1, sl
	bl FUN_0803EE70
_0803F2B8:
	strb r4, [r5]
	adds r4, #1
	cmp r4, #0xf
	bls _0803F2A0
	ldr r4, _0803F304 @ => 0x03005BE0
	mov r3, sb
	adds r2, r7, r3
	lsls r2, r2, #3
	ldr r1, [sp]
	add r1, r8
	lsls r1, r1, #4
	adds r0, r2, r1
	adds r0, r0, r4
	ldrh r3, [r0, #0x24]
	movs r5, #0
	strh r3, [r6, #0x38]
	ldr r0, [r0]
	str r0, [r6, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r6, #0x20]
	adds r2, r2, r4
	adds r1, r1, r2
	adds r1, #4
	str r1, [r6, #0x24]
	ldr r0, [sp, #4]
	strb r5, [r0]
	adds r0, r6, #0
	b _0803F30A
	.align 2, 0
_0803F2F4: .4byte gUnk_030026BE
_0803F2F8: .4byte gUnk_030026B4
_0803F2FC: .4byte gUnk_03005C30
_0803F300: .4byte gUnk_030026C0
_0803F304: .4byte gUnk_03005BE0
_0803F308:
	movs r0, #0
_0803F30A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0803F31C
FUN_0803F31C: @ 0x0803F31C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r4, #0
	ldr r0, _0803F3A4 @ => 0x030026D8
	mov sl, r0
	ldr r1, _0803F3A8 @ => 0x030026C8
	mov sb, r1
_0803F330:
	movs r5, #0
	ldr r0, _0803F3AC @ => 0x03005C34
	ldr r2, [r0]
	adds r1, r4, #1
	mov r8, r1
	cmp r2, #0
	beq _0803F38A
	movs r7, #0x80
	lsls r7, r7, #8
	lsls r0, r4, #2
	add r0, sb
	mov ip, r0
_0803F348:
	ldr r6, [r2]
	ldr r3, [r2, #0x40]
	adds r0, r3, #0
	ands r0, r7
	cmp r0, #0
	bne _0803F384
	adds r0, r2, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r1, r0, #0x1c
	lsrs r0, r1, #0x1e
	cmp r0, r4
	beq _0803F374
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _0803F384
	lsrs r0, r1, #0x1e
	subs r0, #1
	cmp r0, r4
	bne _0803F384
_0803F374:
	mov r1, ip
	ldr r0, [r1]
	lsls r1, r5, #2
	adds r0, r0, r1
	str r2, [r0]
	adds r5, #1
	orrs r3, r7
	str r3, [r2, #0x40]
_0803F384:
	adds r2, r6, #0
	cmp r2, #0
	bne _0803F348
_0803F38A:
	mov r1, sl
	adds r0, r4, r1
	strb r5, [r0]
	mov r4, r8
	cmp r4, #3
	ble _0803F330
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803F3A4: .4byte gUnk_030026D8
_0803F3A8: .4byte gUnk_030026C8
_0803F3AC: .4byte gUnk_03005C34

	thumb_func_start FUN_0803F3B0
FUN_0803F3B0: @ 0x0803F3B0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	movs r0, #0
	mov sb, r0
	ldrh r0, [r7, #0x3c]
	subs r0, #1
	strh r0, [r7, #0x3c]
	lsls r0, r0, #0x10
	ldr r1, _0803F3D4 @ => 0xFFFF0000
	cmp r0, r1
	bne _0803F3D8
	adds r0, r7, #0
	bl FUN_0803FF64
	b _0803F526
	.align 2, 0
_0803F3D4: .4byte 0xFFFF0000
_0803F3D8:
	adds r0, r7, #0
	adds r0, #0x4a
	ldrb r0, [r0]
	cmp r0, #1
	beq _0803F3FA
	cmp r0, #1
	bgt _0803F3EC
	cmp r0, #0
	beq _0803F3F2
	b _0803F40A
_0803F3EC:
	cmp r0, #2
	beq _0803F402
	b _0803F40A
_0803F3F2:
	adds r0, r7, #0
	bl FUN_0803FB74
	b _0803F410
_0803F3FA:
	adds r0, r7, #0
	bl FUN_0803FBD8
	b _0803F410
_0803F402:
	adds r0, r7, #0
	bl FUN_0803FC4C
	b _0803F410
_0803F40A:
	adds r0, r7, #0
	bl FUN_0803FC4C
_0803F410:
	ldr r1, [r7, #0x40]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803F488
	ldr r1, _0803F480 @ => 0x0805F96C
	adds r0, r7, #0
	adds r0, #0x4b
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r4, [r0]
	ldr r1, _0803F484 @ => 0x08059CA8
	mov r8, r1
	lsls r4, r4, #3
	mov r0, r8
	adds r0, #4
	adds r0, r4, r0
	ldr r5, [r0]
	adds r6, r7, #0
	adds r6, #0x4c
	ldrb r0, [r6]
	bl FUN_0802C210
	adds r1, r0, #0
	adds r0, r5, #0
	bl FUN_0802C314
	adds r5, r7, #0
	adds r5, #0x4d
	ldrb r1, [r5]
	muls r1, r0, r1
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x18]
	add r4, r8
	ldr r4, [r4]
	ldrb r0, [r6]
	bl FUN_0802C210
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_0802C314
	ldrb r1, [r5]
	muls r1, r0, r1
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	adds r0, #0x4e
	ldrb r0, [r0]
	ldrb r1, [r6]
	adds r0, r0, r1
	strb r0, [r6]
	b _0803F4CE
	.align 2, 0
_0803F480: .4byte ROMREF_0805F96C
_0803F484: .4byte ROMREF_08059CA8
_0803F488:
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	beq _0803F4C6
	adds r4, r7, #0
	adds r4, #0x4c
	ldrb r0, [r4]
	bl FUN_0802C254
	adds r5, r7, #0
	adds r5, #0x4d
	ldrb r1, [r5]
	muls r1, r0, r1
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x18]
	ldrb r0, [r4]
	bl FUN_0802C210
	ldrb r1, [r5]
	muls r1, r0, r1
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	adds r0, #0x4e
	ldrb r0, [r0]
	ldrb r1, [r4]
	adds r0, r0, r1
	strb r0, [r4]
	b _0803F4CE
_0803F4C6:
	ldr r0, [r7, #0x10]
	str r0, [r7, #0x18]
	ldr r0, [r7, #0x14]
	str r0, [r7, #0x1c]
_0803F4CE:
	ldr r0, [r7, #0x40]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0803F4E4
	adds r0, r7, #0
	bl FUN_0804012C
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	b _0803F4E6
_0803F4E4:
	movs r2, #0
_0803F4E6:
	ldr r0, _0803F518 @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x88
	lsls r1, r1, #0xd
	ands r0, r1
	cmp r0, #0
	bne _0803F526
	cmp r2, #3
	beq _0803F520
	adds r0, r7, #0
	bl FUN_0803FF88
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov sb, r0
	movs r0, #1
	rsbs r0, r0, #0
	cmp sb, r0
	bne _0803F526
	ldr r1, _0803F51C @ => 0x030026B8
	movs r0, #1
	strb r0, [r1]
	mov r0, sb
	b _0803F528
	.align 2, 0
_0803F518: .4byte gUnk_03004374
_0803F51C: .4byte gUnk_030026B8
_0803F520:
	adds r0, r7, #0
	bl FUN_0803FF64
_0803F526:
	mov r0, sb
_0803F528:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_0803F534
FUN_0803F534: @ 0x0803F534
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0803F548
	ldr r0, [r0, #0xc]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0803F562
_0803F548:
	ldr r1, [r4, #0x30]
	movs r0, #2
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _0803F590
	ldrh r0, [r4, #0x3e]
	subs r0, #1
	strh r0, [r4, #0x3e]
	lsls r0, r0, #0x10
	ldr r1, _0803F580 @ => 0xFFFF0000
	cmp r0, r1
	bne _0803F590
_0803F562:
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	bl FUN_0803EE28
	ldr r0, _0803F584 @ => 0x030026B4
	ldr r1, _0803F588 @ => 0x03005C30
	adds r2, r4, #0
	bl FUN_08028FDC
	ldr r1, _0803F58C @ => 0x030026BE
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	b _0803F5FA
	.align 2, 0
_0803F580: .4byte 0xFFFF0000
_0803F584: .4byte gUnk_030026B4
_0803F588: .4byte gUnk_03005C30
_0803F58C: .4byte gUnk_030026BE
_0803F590:
	movs r2, #0x80
	lsls r2, r2, #8
	ands r2, r3
	cmp r2, #0
	bne _0803F5FA
	ldrh r0, [r4, #0x36]
	adds r1, r0, #1
	strh r1, [r4, #0x36]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4, #0x28]
	cmp r0, r1
	blo _0803F5FA
	strh r2, [r4, #0x36]
	movs r5, #0
	adds r0, r4, #0
	adds r0, #0x3c
	adds r6, r0, #0
	ldrb r0, [r6]
	cmp r5, r0
	bhs _0803F5FA
_0803F5BA:
	ldr r0, _0803F600 @ => 0x030026BA
	ldrh r0, [r0]
	cmp r0, #0x12
	bhi _0803F5F2
	ldr r0, _0803F604 @ => 0x030026B8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803F5F2
	ldr r2, [r4, #0x30]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	bne _0803F5F2
	ldr r0, [r4, #8]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0x17
	ands r0, r1
	cmp r0, #0
	bne _0803F5EC
	movs r0, #0x80
	lsls r0, r0, #2
	ands r2, r0
	cmp r2, #0
	beq _0803F5F2
_0803F5EC:
	adds r0, r4, #0
	bl FUN_0803F608
_0803F5F2:
	adds r5, #1
	ldrb r1, [r6]
	cmp r5, r1
	blo _0803F5BA
_0803F5FA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803F600: .4byte gUnk_030026BA
_0803F604: .4byte gUnk_030026B8

	thumb_func_start FUN_0803F608
FUN_0803F608: @ 0x0803F608
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov r8, r0
	ldr r0, [r0, #8]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0x16
	ands r0, r1
	movs r1, #4
	str r1, [sp, #0x10]
	cmp r0, #0
	beq _0803F62C
	movs r2, #8
	str r2, [sp, #0x10]
_0803F62C:
	ldr r6, _0803F684 @ => 0x030026B0
	adds r0, r6, #0
	ldr r1, _0803F688 @ => 0x03005C34
	movs r2, #0x54
	bl FUN_08028FA8
	adds r3, r0, #0
	ldr r5, _0803F68C @ => 0x030026BA
	ldrh r0, [r5]
	adds r1, r0, #1
	strh r1, [r5]
	ldr r2, _0803F690 @ => 0x030026BC
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	ldrh r4, [r2]
	cmp r0, r4
	bls _0803F650
	strh r1, [r2]
_0803F650:
	adds r7, r3, #0
	mov r0, r8
	ldrh r0, [r0, #0x34]
	mov sl, r0
	mov r1, r8
	ldr r2, [r1, #0x30]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0803F694
	ldr r0, [r1, #8]
	adds r1, r0, #0
	adds r1, #0xa6
	ldrh r1, [r1]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x17
	str r1, [sp]
	adds r0, #0xa4
	ldrb r0, [r0]
	str r0, [sp, #4]
	mov r2, r8
	adds r2, #0x3a
	str r2, [sp, #0x14]
	b _0803F804
	.align 2, 0
_0803F684: .4byte gUnk_030026B0
_0803F688: .4byte gUnk_03005C34
_0803F68C: .4byte gUnk_030026BA
_0803F690: .4byte gUnk_030026BC
_0803F694:
	mov r1, r8
	adds r1, #0x3a
	ldrb r0, [r1]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r1, [sp, #0x14]
	cmp r0, #1
	bhi _0803F770
	mov r3, r8
	ldr r0, [r3, #8]
	movs r1, #1
	mov r2, sp
	bl FUN_08001A3C
	cmp r0, #0
	beq _0803F6CA
	mov r4, r8
	ldr r0, [r4, #8]
	add r4, sp, #8
	movs r1, #2
	adds r2, r4, #0
	bl FUN_08001A3C
	mov sb, r4
	cmp r0, #0
	bne _0803F6E0
_0803F6CA:
	adds r0, r6, #0
	ldr r1, _0803F6DC @ => 0x03005C34
	adds r2, r7, #0
	bl FUN_08028FDC
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	b _0803FB60
	.align 2, 0
_0803F6DC: .4byte gUnk_03005C34
_0803F6E0:
	mov r1, r8
	ldr r0, [r1, #8]
	ldrb r1, [r0, #0x12]
	adds r2, r0, #0
	ldr r3, [sp, #0x10]
	cmp r1, r3
	bls _0803F702
	ldr r1, [sp]
	lsls r1, r1, #0x10
	ldr r0, [r2, #0x20]
	subs r0, r0, r1
	str r0, [sp]
	ldr r1, [sp, #8]
	lsls r1, r1, #0x10
	ldr r0, [r2, #0x20]
	subs r0, r0, r1
	b _0803F714
_0803F702:
	ldr r1, [sp]
	lsls r1, r1, #0x10
	ldr r0, [r2, #0x20]
	adds r0, r0, r1
	str r0, [sp]
	ldr r1, [sp, #8]
	lsls r1, r1, #0x10
	ldr r0, [r2, #0x20]
	adds r0, r0, r1
_0803F714:
	str r0, [sp, #8]
	ldr r1, [sp, #4]
	lsls r1, r1, #0x10
	ldr r0, [r2, #0x24]
	adds r0, r0, r1
	str r0, [sp, #4]
	mov r4, sb
	ldr r0, [r4, #4]
	lsls r0, r0, #0x10
	ldr r5, [r2, #0x24]
	adds r5, r5, r0
	str r5, [r4, #4]
	ldr r4, [sp, #8]
	ldr r0, [sp]
	subs r4, r4, r0
	ldr r0, [sp, #4]
	subs r5, r5, r0
	ldr r1, _0803F76C @ => 0x0000FFFF
	movs r0, #0
	bl FUN_08042524
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_0802C314
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r1, r6, #0
	bl FUN_0802C314
	mov r1, sb
	str r0, [r1, #4]
	ldr r2, [sp]
	ldr r0, [sp, #8]
	adds r2, r2, r0
	ldr r0, [sp, #4]
	ldr r1, [r1, #4]
	adds r0, r0, r1
	asrs r2, r2, #0x10
	str r2, [sp]
	asrs r0, r0, #0x10
	b _0803F802
	.align 2, 0
_0803F76C: .4byte 0x0000FFFF
_0803F770:
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r2
	cmp r0, #0
	beq _0803F7DC
	movs r0, #0x80
	lsls r0, r0, #9
	ands r2, r0
	cmp r2, #0
	beq _0803F79A
	mov r2, r8
	ldr r0, [r2, #8]
	mov r1, r8
	adds r1, #0x44
	ldrb r1, [r1]
	adds r2, #0x43
	ldrb r2, [r2]
	mov r3, sp
	bl FUN_08001AB0
	b _0803F7AA
_0803F79A:
	mov r3, r8
	ldr r0, [r3, #8]
	mov r1, r8
	adds r1, #0x43
	ldrb r1, [r1]
	mov r2, sp
	bl FUN_08001A3C
_0803F7AA:
	cmp r0, #0
	bne _0803F7D0
	ldr r0, _0803F7C4 @ => 0x030026B0
	ldr r1, _0803F7C8 @ => 0x03005C34
	adds r2, r7, #0
	bl FUN_08028FDC
	ldr r1, _0803F7CC @ => 0x030026BA
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	b _0803FB60
	.align 2, 0
_0803F7C4: .4byte gUnk_030026B0
_0803F7C8: .4byte gUnk_03005C34
_0803F7CC: .4byte gUnk_030026BA
_0803F7D0:
	ldr r0, [sp]
	asrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #4]
	asrs r0, r0, #0x10
	b _0803F802
_0803F7DC:
	movs r0, #0x80
	lsls r0, r0, #6
	ands r2, r0
	cmp r2, #0
	beq _0803F7F4
	mov r4, r8
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	str r0, [sp]
	movs r2, #0x1e
	ldrsh r0, [r4, r2]
	b _0803F802
_0803F7F4:
	mov r3, r8
	ldr r0, [r3, #8]
	movs r4, #0x22
	ldrsh r1, [r0, r4]
	str r1, [sp]
	movs r1, #0x26
	ldrsh r0, [r0, r1]
_0803F802:
	str r0, [sp, #4]
_0803F804:
	ldr r1, [sp]
	mov r2, sl
	subs r0, r1, r2
	add r1, sl
	bl FUN_08042524
	lsls r0, r0, #0x10
	str r0, [r7, #0x10]
	ldr r1, [sp, #4]
	mov r3, sl
	subs r0, r1, r3
	add r1, sl
	bl FUN_08042524
	lsls r0, r0, #0x10
	str r0, [r7, #0x14]
	mov r4, r8
	ldrh r0, [r4, #0x2a]
	strh r0, [r7, #0x3c]
	adds r2, r7, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r4, #0xd
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	mov r0, r8
	ldr r1, [r0, #0x30]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _0803F85C
	adds r0, r7, #0
	adds r0, #0x2d
	ldrb r2, [r0]
	adds r1, r4, #0
	ands r1, r2
	b _0803F8DA
_0803F85C:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803F87E
	mov r1, r8
	ldr r0, [r1, #8]
	adds r0, #0xa9
	ldrb r0, [r0]
	adds r2, r7, #0
	adds r2, #0x2d
	movs r1, #0xc
	ands r1, r0
	ldrb r3, [r2]
	adds r0, r4, #0
	ands r0, r3
	b _0803F8EC
_0803F87E:
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _0803F898
	mov r2, r8
	ldr r0, [r2, #8]
	adds r0, #0xa9
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	adds r1, #1
	b _0803F8B0
_0803F898:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0803F8C6
	mov r3, r8
	ldr r0, [r3, #8]
	adds r0, #0xa9
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	subs r1, #1
_0803F8B0:
	adds r3, r7, #0
	adds r3, #0x2d
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3]
	adds r0, r4, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	b _0803F8F2
_0803F8C6:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r1, r0
	cmp r1, #0
	beq _0803F8E0
	adds r0, r7, #0
	adds r0, #0x2d
	ldrb r1, [r0]
	movs r2, #0xc
	orrs r1, r2
_0803F8DA:
	strb r1, [r0]
	adds r3, r0, #0
	b _0803F8F2
_0803F8E0:
	adds r2, r7, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	movs r1, #8
_0803F8EC:
	orrs r0, r1
	strb r0, [r2]
	adds r3, r2, #0
_0803F8F2:
	mov r0, r8
	adds r0, #0x2c
	ldrb r1, [r0]
	lsls r1, r1, #4
	ldrb r2, [r3]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	mov r4, r8
	ldrh r1, [r4, #0x38]
	adds r0, r7, #0
	adds r0, #0x44
	strh r1, [r0]
	ldr r3, [r4, #0xc]
	str r3, [r7, #0xc]
	ldr r0, [r4, #0x30]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0803F924
	adds r1, r7, #0
	adds r1, #0x48
	movs r0, #3
	b _0803F942
_0803F924:
	movs r0, #0x3c
	ldrsh r2, [r7, r0]
	ldr r0, [r3, #4]
	ldrh r1, [r0, #6]
	cmp r2, r1
	blt _0803F93C
	adds r0, r2, #0
	bl __divsi3
	adds r1, r7, #0
	adds r1, #0x48
	b _0803F942
_0803F93C:
	adds r1, r7, #0
	adds r1, #0x48
	movs r0, #1
_0803F942:
	strb r0, [r1]
	adds r1, r7, #0
	adds r1, #0x49
	movs r0, #0xff
	strb r0, [r1]
	subs r1, #3
	movs r0, #0
	strh r0, [r1]
	ldr r1, [sp, #0x14]
	ldrb r0, [r1]
	adds r4, r7, #0
	adds r4, #0x4a
	strb r0, [r4]
	mov r2, r8
	ldr r0, [r2, #0x30]
	str r0, [r7, #0x40]
	mov r0, r8
	adds r0, #0x42
	ldrb r2, [r0]
	adds r5, r7, #0
	adds r5, #0x2b
	lsls r2, r2, #6
	ldrb r3, [r5]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r5]
	ldrb r0, [r6]
	ands r1, r0
	strb r1, [r6]
	mov r3, r8
	ldr r0, [r3, #0x24]
	str r0, [r7, #0x38]
	mov r0, r8
	adds r0, #0x40
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x4d
	strb r0, [r1]
	ldr r0, [r7, #0x40]
	movs r1, #0x10
	ands r0, r1
	adds r6, r4, #0
	cmp r0, #0
	beq _0803F9AA
	movs r0, #0x28
	rsbs r0, r0, #0
	movs r1, #0x28
	bl FUN_08042524
	b _0803F9B0
_0803F9AA:
	mov r0, r8
	adds r0, #0x41
	ldrb r0, [r0]
_0803F9B0:
	adds r1, r7, #0
	adds r1, #0x4e
	strb r0, [r1]
	ldr r1, [r7, #0x40]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r1, r0
	cmp r1, #0
	beq _0803F9D2
	movs r0, #0
	movs r1, #0xff
	bl FUN_08042524
	adds r1, r7, #0
	adds r1, #0x4c
	strb r0, [r1]
	b _0803F9D8
_0803F9D2:
	adds r0, r7, #0
	adds r0, #0x4c
	strb r1, [r0]
_0803F9D8:
	ldrb r0, [r6]
	cmp r0, #5
	bls _0803F9E0
	b _0803FB60
_0803F9E0:
	lsls r0, r0, #2
	ldr r1, _0803F9EC @ =_0803F9F0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803F9EC: .4byte _0803F9F0
_0803F9F0: @ jump table
	.4byte _0803FA08 @ case 0
	.4byte _0803FA14 @ case 1
	.4byte _0803FABC @ case 2
	.4byte _0803FAD0 @ case 3
	.4byte _0803FB14 @ case 4
	.4byte _0803FB28 @ case 5
_0803FA08:
	movs r0, #0
	str r0, [r7, #0x20]
	str r0, [r7, #0x24]
	mov r4, r8
	ldr r0, [r4, #8]
	b _0803FB1E
_0803FA14:
	ldr r1, [r7, #0x40]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803FA44
	ldr r1, _0803FA3C @ => 0x0805F950
	mov r0, r8
	adds r0, #0x3b
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r5, r7, #0
	adds r5, #0x4b
	strb r0, [r5]
	mov r0, r8
	ldr r1, [r0, #0x20]
	str r1, [r7, #0x30]
	ldr r4, _0803FA40 @ => 0x08059C88
	b _0803FA8E
	.align 2, 0
_0803FA3C: .4byte ROMREF_0805F950
_0803FA40: .4byte ROMREF_08059C88
_0803FA44:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r1, r0
	cmp r1, #0
	beq _0803FA74
	ldr r1, _0803FA6C @ => 0x0805F95C
	mov r0, r8
	adds r0, #0x3b
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r5, r7, #0
	adds r5, #0x4b
	strb r0, [r5]
	mov r2, r8
	ldr r1, [r2, #0x20]
	str r1, [r7, #0x30]
	ldr r4, _0803FA70 @ => 0x08059DA8
	b _0803FA8E
	.align 2, 0
_0803FA6C: .4byte ROMREF_0805F95C
_0803FA70: .4byte ROMREF_08059DA8
_0803FA74:
	ldr r1, _0803FAB4 @ => 0x0805F954
	mov r0, r8
	adds r0, #0x3b
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r5, r7, #0
	adds r5, #0x4b
	strb r0, [r5]
	mov r3, r8
	ldr r1, [r3, #0x20]
	str r1, [r7, #0x30]
	ldr r4, _0803FAB8 @ => 0x08059CA8
_0803FA8E:
	ldrb r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r0, [r0]
	bl FUN_0802C314
	str r0, [r7, #0x20]
	ldrb r0, [r5]
	lsls r0, r0, #3
	adds r4, #4
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [r7, #0x30]
	bl FUN_0802C314
	str r0, [r7, #0x24]
	ldr r0, [r7, #0x30]
	str r0, [r7, #0x34]
	b _0803FB60
	.align 2, 0
_0803FAB4: .4byte ROMREF_0805F954
_0803FAB8: .4byte ROMREF_08059CA8
_0803FABC:
	movs r0, #0
	movs r1, #7
	bl FUN_08042524
	adds r5, r7, #0
	adds r5, #0x4b
	strb r0, [r5]
	mov r4, r8
	ldr r1, [r4, #0x20]
	b _0803FB3A
_0803FAD0:
	mov r0, r8
	adds r0, #0x3b
	ldrb r0, [r0]
	adds r5, r7, #0
	adds r5, #0x4b
	strb r0, [r5]
	mov r0, r8
	ldr r1, [r0, #0x20]
	str r1, [r7, #0x30]
	ldr r4, _0803FB10 @ => 0x08059CA8
	ldrb r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r0, [r0]
	bl FUN_0802C314
	str r0, [r7, #0x20]
	ldrb r0, [r5]
	lsls r0, r0, #3
	adds r4, #4
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [r7, #0x30]
	bl FUN_0802C314
	str r0, [r7, #0x24]
	ldr r0, [r7, #0x30]
	str r0, [r7, #0x34]
	movs r0, #1
	strb r0, [r6]
	b _0803FB60
	.align 2, 0
_0803FB10: .4byte ROMREF_08059CA8
_0803FB14:
	movs r0, #0
	str r0, [r7, #0x20]
	str r0, [r7, #0x24]
	mov r1, r8
	ldr r0, [r1, #8]
_0803FB1E:
	ldrb r1, [r0, #0x12]
	adds r0, r7, #0
	adds r0, #0x4b
	strb r1, [r0]
	b _0803FB60
_0803FB28:
	movs r0, #0
	movs r1, #7
	bl FUN_08042524
	adds r5, r7, #0
	adds r5, #0x4b
	strb r0, [r5]
	mov r2, r8
	ldr r1, [r2, #0x20]
_0803FB3A:
	str r1, [r7, #0x30]
	str r1, [r7, #0x34]
	ldr r4, _0803FB70 @ => 0x08059CA8
	ldrb r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r0, [r0]
	bl FUN_0802C314
	str r0, [r7, #0x20]
	ldrb r0, [r5]
	lsls r0, r0, #3
	adds r4, #4
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [r7, #0x30]
	bl FUN_0802C314
	str r0, [r7, #0x24]
_0803FB60:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803FB70: .4byte ROMREF_08059CA8

	thumb_func_start FUN_0803FB74
FUN_0803FB74: @ 0x0803FB74
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x46
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r1, #2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	bge _0803FBA2
	adds r0, r3, #0
	adds r0, #0x49
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0803FBD2
_0803FBA2:
	adds r2, r3, #0
	adds r2, #0x49
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldr r0, [r3, #0xc]
	ldr r0, [r0, #4]
	ldrh r0, [r0, #6]
	subs r0, #1
	cmp r1, r0
	bge _0803FBBC
	ldrb r0, [r2]
	adds r0, #1
	b _0803FBC8
_0803FBBC:
	ldr r0, [r3, #0x40]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0803FBCA
	movs r0, #0
_0803FBC8:
	strb r0, [r2]
_0803FBCA:
	adds r1, r3, #0
	adds r1, #0x46
	movs r0, #0
	strh r0, [r1]
_0803FBD2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0803FBD8
FUN_0803FBD8: @ 0x0803FBD8
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x46
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r1, #2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	bge _0803FC06
	adds r0, r2, #0
	adds r0, #0x49
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0803FC36
_0803FC06:
	adds r3, r2, #0
	adds r3, #0x49
	movs r1, #0
	ldrsb r1, [r3, r1]
	ldr r0, [r2, #0xc]
	ldr r0, [r0, #4]
	ldrh r0, [r0, #6]
	subs r0, #1
	cmp r1, r0
	bge _0803FC20
	ldrb r0, [r3]
	adds r0, #1
	b _0803FC2C
_0803FC20:
	ldr r0, [r2, #0x40]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0803FC2E
	movs r0, #0
_0803FC2C:
	strb r0, [r3]
_0803FC2E:
	adds r1, r2, #0
	adds r1, #0x46
	movs r0, #0
	strh r0, [r1]
_0803FC36:
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x20]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	ldr r0, [r2, #0x14]
	ldr r1, [r2, #0x24]
	adds r0, r0, r1
	str r0, [r2, #0x14]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0803FC4C
FUN_0803FC4C: @ 0x0803FC4C
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x46
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r1, #2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	bge _0803FC7A
	adds r0, r2, #0
	adds r0, #0x49
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0803FCAA
_0803FC7A:
	adds r3, r2, #0
	adds r3, #0x49
	movs r1, #0
	ldrsb r1, [r3, r1]
	ldr r0, [r2, #0xc]
	ldr r0, [r0, #4]
	ldrh r0, [r0, #6]
	subs r0, #1
	cmp r1, r0
	bge _0803FC94
	ldrb r0, [r3]
	adds r0, #1
	b _0803FCA0
_0803FC94:
	ldr r0, [r2, #0x40]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0803FCA2
	movs r0, #0
_0803FCA0:
	strb r0, [r3]
_0803FCA2:
	adds r1, r2, #0
	adds r1, #0x46
	movs r0, #0
	strh r0, [r1]
_0803FCAA:
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x20]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	ldr r0, [r2, #0x14]
	ldr r1, [r2, #0x24]
	adds r0, r0, r1
	str r0, [r2, #0x14]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0803FCC0
FUN_0803FCC0: @ 0x0803FCC0
	push {r4, r5, lr}
	movs r1, #0
	ldr r0, _0803FCFC @ => 0x03005BE0
	adds r5, r0, #0
	adds r5, #0x24
	ldr r0, _0803FD00 @ => 0x0000FFFF
	adds r4, r0, #0
_0803FCCE:
	lsls r0, r1, #2
	adds r3, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r0, r5
	movs r2, #1
_0803FCDA:
	ldrh r0, [r1]
	orrs r0, r4
	strh r0, [r1]
	adds r1, #0x28
	subs r2, #1
	cmp r2, #0
	bge _0803FCDA
	adds r1, r3, #0
	cmp r1, #0
	ble _0803FCCE
	bl FUN_0803FDB8
	bl FUN_0803FE00
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803FCFC: .4byte gUnk_03005BE0
_0803FD00: .4byte 0x0000FFFF

	thumb_func_start FUN_0803FD04
FUN_0803FD04: @ 0x0803FD04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	movs r0, #0
	mov ip, r0
	ldr r2, _0803FD84 @ => 0x03005BE0
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #3
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, r1, r2
	ldr r0, [r1]
	ldr r4, [r0, #4]
	movs r3, #0
	ldrh r0, [r4, #6]
	mov r8, r2
	cmp ip, r0
	bhs _0803FD5E
	adds r7, r4, #0
	adds r7, #0xc
	adds r2, r0, #0
_0803FD3C:
	lsls r0, r3, #1
	adds r0, r7, r0
	ldrh r0, [r0]
	adds r0, #0xc
	adds r0, r4, r0
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	muls r0, r1, r0
	add r0, ip
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r2
	blo _0803FD3C
_0803FD5E:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	lsls r1, r6, #2
	adds r1, r1, r6
	lsls r1, r1, #4
	adds r0, r0, r1
	add r0, r8
	ldrh r0, [r0, #0x24]
	mov r1, ip
	movs r2, #0
	bl FUN_0805284C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803FD84: .4byte gUnk_03005BE0

	thumb_func_start FUN_0803FD88
FUN_0803FD88: @ 0x0803FD88
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	bl FUN_0803EE28
	ldr r0, _0803FDAC @ => 0x030026B4
	ldr r1, _0803FDB0 @ => 0x03005C30
	adds r2, r4, #0
	bl FUN_08028FDC
	ldr r1, _0803FDB4 @ => 0x030026BE
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803FDAC: .4byte gUnk_030026B4
_0803FDB0: .4byte gUnk_03005C30
_0803FDB4: .4byte gUnk_030026BE

	thumb_func_start FUN_0803FDB8
FUN_0803FDB8: @ 0x0803FDB8
	push {r4, r5, r6, lr}
	ldr r1, _0803FDF4 @ => 0x030026BE
	ldrh r0, [r1]
	cmp r0, #0
	beq _0803FDEE
	ldr r0, _0803FDF8 @ => 0x03005C30
	ldr r5, [r0]
	cmp r5, #0
	beq _0803FDEE
	adds r6, r1, #0
_0803FDCC:
	ldr r4, [r5]
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	bl FUN_0803EE28
	ldr r0, _0803FDFC @ => 0x030026B4
	ldr r1, _0803FDF8 @ => 0x03005C30
	adds r2, r5, #0
	bl FUN_08028FDC
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	adds r5, r4, #0
	cmp r5, #0
	bne _0803FDCC
_0803FDEE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803FDF4: .4byte gUnk_030026BE
_0803FDF8: .4byte gUnk_03005C30
_0803FDFC: .4byte gUnk_030026B4

	thumb_func_start FUN_0803FE00
FUN_0803FE00: @ 0x0803FE00
	push {r4, lr}
	ldr r0, _0803FE24 @ => 0x030026BA
	ldrh r0, [r0]
	cmp r0, #0
	beq _0803FE1E
	ldr r0, _0803FE28 @ => 0x03005C34
	ldr r0, [r0]
	cmp r0, #0
	beq _0803FE1E
_0803FE12:
	ldr r4, [r0]
	bl FUN_0803FF64
	adds r0, r4, #0
	cmp r0, #0
	bne _0803FE12
_0803FE1E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803FE24: .4byte gUnk_030026BA
_0803FE28: .4byte gUnk_03005C34

	thumb_func_start FUN_0803FE2C
FUN_0803FE2C: @ 0x0803FE2C
	push {r4, r5, lr}
	ldr r0, _0803FE6C @ => 0x030026BE
	ldrh r0, [r0]
	cmp r0, #0
	beq _0803FE66
	ldr r0, _0803FE70 @ => 0x03005C30
	ldr r4, [r0]
	cmp r4, #0
	beq _0803FE60
_0803FE3E:
	ldr r5, [r4]
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0803FE52
	adds r0, r4, #0
	bl FUN_0803F534
_0803FE52:
	ldr r0, [r4, #0x30]
	ldr r1, _0803FE74 @ => 0xFFFF7FFF
	ands r0, r1
	str r0, [r4, #0x30]
	adds r4, r5, #0
	cmp r4, #0
	bne _0803FE3E
_0803FE60:
	ldr r1, _0803FE78 @ => 0x030026B8
	movs r0, #0
	strb r0, [r1]
_0803FE66:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803FE6C: .4byte gUnk_030026BE
_0803FE70: .4byte gUnk_03005C30
_0803FE74: .4byte 0xFFFF7FFF
_0803FE78: .4byte gUnk_030026B8

	thumb_func_start FUN_0803FE7C
FUN_0803FE7C: @ 0x0803FE7C
	push {r4, r5, lr}
	movs r2, #0
	ldr r0, _0803FEAC @ => 0x03005C34
	ldr r4, [r0]
	cmp r4, #0
	beq _0803FEBE
_0803FE88:
	ldr r5, [r4]
	ldr r0, [r4, #0x40]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0803FEB0
	adds r0, r4, #0
	bl FUN_0803F3B0
	lsls r0, r0, #0x18
	asrs r2, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _0803FEB0
	adds r0, r2, #0
	b _0803FEC0
	.align 2, 0
_0803FEAC: .4byte gUnk_03005C34
_0803FEB0:
	ldr r0, [r4, #0x40]
	ldr r1, _0803FEC8 @ => 0xFFFF7FFF
	ands r0, r1
	str r0, [r4, #0x40]
	adds r4, r5, #0
	cmp r4, #0
	bne _0803FE88
_0803FEBE:
	adds r0, r2, #0
_0803FEC0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0803FEC8: .4byte 0xFFFF7FFF

	thumb_func_start FUN_0803FECC
FUN_0803FECC: @ 0x0803FECC
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r3, #0
	ldr r0, _0803FEE4 @ => 0x030026D8
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803FEE8
	movs r0, #0
	b _0803FF18
	.align 2, 0
_0803FEE4: .4byte gUnk_030026D8
_0803FEE8:
	ldrb r0, [r1]
	subs r5, r0, #1
	cmp r5, #0
	blt _0803FF16
	ldr r1, _0803FF20 @ => 0x030026C8
	lsls r0, r2, #2
	adds r6, r0, r1
_0803FEF6:
	ldr r0, [r6]
	lsls r1, r5, #2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r0, r4, #0
	bl FUN_0803F3B0
	lsls r0, r0, #0x18
	asrs r3, r0, #0x18
	ldr r0, [r4, #0x40]
	ldr r1, _0803FF24 @ => 0xFFFF7FFF
	ands r0, r1
	str r0, [r4, #0x40]
	subs r5, #1
	cmp r5, #0
	bge _0803FEF6
_0803FF16:
	adds r0, r3, #0
_0803FF18:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803FF20: .4byte gUnk_030026C8
_0803FF24: .4byte 0xFFFF7FFF

	thumb_func_start FUN_0803FF28
FUN_0803FF28: @ 0x0803FF28
	push {r4, lr}
	ldr r0, _0803FF54 @ => 0x030026B0
	ldr r1, _0803FF58 @ => 0x03005C34
	movs r2, #0x54
	bl FUN_08028FA8
	adds r3, r0, #0
	ldr r1, _0803FF5C @ => 0x030026BA
	ldrh r0, [r1]
	adds r2, r0, #1
	strh r2, [r1]
	ldr r1, _0803FF60 @ => 0x030026BC
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	ldrh r4, [r1]
	cmp r0, r4
	bls _0803FF4C
	strh r2, [r1]
_0803FF4C:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803FF54: .4byte gUnk_030026B0
_0803FF58: .4byte gUnk_03005C34
_0803FF5C: .4byte gUnk_030026BA
_0803FF60: .4byte gUnk_030026BC

	thumb_func_start FUN_0803FF64
FUN_0803FF64: @ 0x0803FF64
	push {lr}
	adds r2, r0, #0
	ldr r0, _0803FF7C @ => 0x030026B0
	ldr r1, _0803FF80 @ => 0x03005C34
	bl FUN_08028FDC
	ldr r1, _0803FF84 @ => 0x030026BA
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803FF7C: .4byte gUnk_030026B0
_0803FF80: .4byte gUnk_03005C34
_0803FF84: .4byte gUnk_030026BA

	thumb_func_start FUN_0803FF88
FUN_0803FF88: @ 0x0803FF88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r5, r0, #0
	movs r0, #0
	mov sb, r0
	ldr r0, [r5, #0xc]
	ldr r3, [r0, #4]
	adds r0, r5, #0
	adds r0, #0x49
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #1
	adds r0, r3, #0
	adds r0, #0xc
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r1, #0xc
	adds r1, r3, r1
	ldrb r0, [r1]
	movs r2, #0x1f
	mov sl, r2
	mov r7, sl
	ands r7, r0
	mov sl, r7
	ldrb r2, [r3, #0xb]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, #0xa
	adds r1, r1, r0
	ldrb r0, [r3, #0xa]
	lsls r0, r0, #1
	adds r4, r1, r0
	ldr r0, _0803FFF4 @ => 0x030042B0
	ldrb r1, [r0, #6]
	mov r0, sp
	bl FUN_08047038
	ldr r0, [r5, #0x40]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0803FFF8
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	str r0, [sp]
	movs r2, #0x1e
	ldrsh r0, [r5, r2]
	b _0804000A
	.align 2, 0
_0803FFF4: .4byte gUnk_030042B0
_0803FFF8:
	movs r7, #0x1a
	ldrsh r0, [r5, r7]
	ldr r1, [sp]
	subs r0, r0, r1
	str r0, [sp]
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	ldr r1, [sp, #4]
	subs r0, r0, r1
_0804000A:
	str r0, [sp, #4]
	ldr r0, [sp]
	cmp r0, #0xf0
	bhi _0804001C
	ldr r0, [sp, #4]
	cmp r0, #0
	blt _0804001C
	cmp r0, #0xa0
	ble _08040020
_0804001C:
	movs r0, #2
	b _080400FE
_08040020:
	adds r0, r5, #0
	adds r0, #0x44
	ldrh r0, [r0]
	str r0, [sp, #0x18]
	adds r0, r5, #0
	adds r0, #0x49
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, [r5, #0x38]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r2, [sp, #0x18]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	movs r6, #0
	cmp r6, sl
	bhs _080400FC
	add r5, sp, #8
	movs r1, #3
	mov r8, r1
_08040054:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldrb r0, [r4, #2]
	lsrs r0, r0, #6
	ldrb r1, [r4, #3]
	lsls r1, r1, #2
	orrs r1, r0
	ldr r2, [sp, #0x18]
	adds r1, r2, r1
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldr r2, _08040110 @ => 0xFFFFFC00
	ldr r0, [r5, #4]
	ands r0, r2
	orrs r0, r1
	str r0, [r5, #4]
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	lsls r0, r0, #0x1e
	ldr r2, _08040114 @ => 0x3FFFFFFF
	ldr r1, [sp, #8]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #8]
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	mov r7, r8
	ands r0, r7
	lsls r0, r0, #0xe
	ldr r2, _08040118 @ => 0xFFFF3FFF
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #8]
	ldrb r3, [r4]
	ldrb r0, [r4, #1]
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #8
	orrs r0, r3
	lsls r0, r0, #0x17
	asrs r0, r0, #0x17
	ldr r1, [sp]
	adds r1, r1, r0
	ldr r0, _0804011C @ => 0x000001FF
	ands r1, r0
	lsls r1, r1, #0x10
	ldr r3, _08040120 @ => 0xFE00FFFF
	ands r3, r2
	orrs r3, r1
	str r3, [sp, #8]
	ldr r2, [sp, #4]
	ldrb r1, [r4, #1]
	lsrs r1, r1, #1
	ldrb r0, [r4, #2]
	ands r0, r7
	lsls r0, r0, #7
	orrs r0, r1
	lsls r0, r0, #0x17
	asrs r0, r0, #0x17
	adds r2, r2, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _08040124 @ => 0xFFFFFF00
	ands r0, r3
	orrs r0, r2
	str r0, [sp, #8]
	adds r4, #4
	ldr r0, _08040128 @ => 0x03004A20
	ldrb r0, [r0]
	adds r1, r5, #0
	bl FUN_0803B6E0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov sb, r0
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, sl
	blo _08040054
_080400FC:
	mov r0, sb
_080400FE:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08040110: .4byte 0xFFFFFC00
_08040114: .4byte 0x3FFFFFFF
_08040118: .4byte 0xFFFF3FFF
_0804011C: .4byte 0x000001FF
_08040120: .4byte 0xFE00FFFF
_08040124: .4byte 0xFFFFFF00
_08040128: .4byte gUnk_03004A20

	thumb_func_start FUN_0804012C
FUN_0804012C: @ 0x0804012C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x1a
	ldrsh r6, [r5, r0]
	movs r0, #0x1e
	ldrsh r7, [r5, r0]
	adds r1, r7, #0
	adds r0, r6, #0
	movs r2, #0
	bl FUN_08038DAC
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0804017C @ => 0x030043A0
	ldrb r0, [r0]
	bl FUN_0802B2B4
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r1, r7, #0
	adds r0, r6, #0
	bl FUN_08039860
	adds r5, #0x2d
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r5]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804017C: .4byte gUnk_030043A0

	thumb_func_start FUN_08040180
FUN_08040180: @ 0x08040180
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _080401C0 @ => 0x030026BE
	ldrh r0, [r0]
	cmp r0, #0
	beq _080401B8
	ldr r0, _080401C4 @ => 0x03005C30
	ldr r4, [r0]
	cmp r4, #0
	beq _080401B2
	movs r7, #0x80
	lsls r7, r7, #8
_08040198:
	ldr r5, [r4]
	ldr r0, [r4, #8]
	cmp r0, r6
	bne _080401AC
	adds r0, r4, #0
	bl FUN_0803F534
	ldr r0, [r4, #0x30]
	orrs r0, r7
	str r0, [r4, #0x30]
_080401AC:
	adds r4, r5, #0
	cmp r4, #0
	bne _08040198
_080401B2:
	ldr r1, _080401C8 @ => 0x030026B8
	movs r0, #0
	strb r0, [r1]
_080401B8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080401C0: .4byte gUnk_030026BE
_080401C4: .4byte gUnk_03005C30
_080401C8: .4byte gUnk_030026B8
