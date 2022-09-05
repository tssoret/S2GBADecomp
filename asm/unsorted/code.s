.include "asm/constants.s"
.include "asm/macros.s"
.include "data/lists/sounds.inc"

.syntax unified
	
	arm_func_start FUN_080002EC
FUN_080002EC: @ 0x080002EC
	push {r1, r2, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	sub sp, sp, #0x24
	ldr fp, [r0], #4
	mov r5, #0xff
	and r3, r5, fp
	and r4, r5, fp, lsr #8
	lsr r2, fp, #0x10
	lsr r5, r2, #8
	rsb r5, r5, #8
	add r2, r5, r2, lsl #8
	add r5, sp, #4
_08000318:
	ldr fp, [r0], #4
	str fp, [r5], #4
	subs r3, r3, #4
	bne _08000318
	mov r8, #-0x80000000
	mov ip, #0
	b _0800042C

	arm_func_start sub_08000334
sub_08000334: @ 0x08000334
	mov r5, #1
	mov sb, r5
	adds r8, r8, r8
	ldreq r8, [r0], #4
	adcseq r8, r8, r8
	blo _080003F4
	add sb, sb, #1
_08000350:
	adds r8, r8, r8
	ldreq r8, [r0], #4
	adcseq r8, r8, r8
	blo _080003F4
	add sb, sb, #1
	adds r8, r8, r8
	ldreq r8, [r0], #4
	adcseq r8, r8, r8
	blo _080003F4
	add sb, sb, #1
	adds r8, r8, r8
	ldreq r8, [r0], #4
	adcseq r8, r8, r8
	blo _080003F4
	add sb, sb, #1
	cmp sb, #8
	bne _08000350
	subs sb, sb, #1
	bne _080003AC
	bx lr

	arm_func_start sub_080003A0
sub_080003A0: @ 0x080003A0
	ldr r8, [r0], #4
	adcseq r8, r8, r8
	bx lr
_080003AC:
	lsls r3, r8, sb
	beq _080003E4
	rsb r3, sb, #0x20
	lsr r3, r8, r3
	orr r5, r3, r5, lsl sb
	lsl r8, r8, sb
	bx lr

	arm_func_start sub_080003C8
sub_080003C8: @ 0x080003C8
	lsls r5, r8, sb
	beq _080003E4
	rsb r5, sb, #0x20
	lsr r5, r8, r5
	lsl r8, r8, sb
	bx lr

	arm_func_start sub_080003E0
sub_080003E0: @ 0x080003E0
	mov sb, #8
_080003E4:
	adds r8, r8, r8
	ldreq r8, [r0], #4
	adcseq r8, r8, r8
	adc r5, r5, r5
_080003F4:
	subs sb, sb, #1
	bne _080003E4
	bx lr
_08000400:
	lsrs sb, r2, #0x10
	blne sub_080003C8
	mov fp, r4
	mov r4, r5
	mov r5, fp
_08000414:
	ands sb, r2, #0xff
	blne _080003AC
	eors ip, ip, #1
	movne sl, r5
	addeq sl, sl, r5, lsl #8
	strheq sl, [r1], #2
_0800042C:
	mov r5, #0
	mov fp, #0
	lsrs sb, r2, #0x10
	blne sub_080003C8
	cmp r5, r4
	bne _08000414
	bl sub_08000334
	mov r6, r5
	lsrs r5, r5, #1
	bne _080004EC
	adds r8, r8, r8
	bleq sub_080003A0
	blo _08000514
	adds r8, r8, r8
	bleq sub_080003A0
	blo _08000400
	bl sub_08000334
	mov r6, r5
	cmp r5, #0x80
	blo _08000494
	adds r8, r8, r8
	bleq sub_080003A0
	adc r6, r5, r5
	and r6, r6, #0xff
	bl sub_08000334
	sub fp, r5, #1
_08000494:
	bl sub_08000334
	cmp r5, #0x20
	addlo r5, r5, #3
	ldrblo r5, [sp, r5]
	movhs sb, #3
	blhs _080003AC
	and r5, r5, #0xff
	add r6, r6, #1
	add r6, r6, fp, lsl #8
_080004B8:
	tst ip, #1
	addne sl, sl, r5, lsl #8
	strhne sl, [r1], #2
	subne r6, r6, #1
	add sl, r5, r5, lsl #8
_080004CC:
	and r5, r6, #1
	lsrs r6, r6, #1
_080004D4:
	strhne sl, [r1], #2
	subs r6, r6, #1
	bgt _080004D4
	movs ip, r5
	andne sl, sl, #0xff
	b _0800042C
_080004EC:
	bl sub_08000334
	cmp r5, #0xff
	beq _080005F4
	sub fp, r5, #1
	lsr sb, r2, #8
	ands sb, sb, #0xff
	beq _08000514
	lsl fp, fp, sb
	bl sub_080003C8
	orr fp, fp, r5
_08000514:
	lsls r5, r8, #8
	lsrne r5, r8, #0x18
	lslne r8, r8, #8
	bleq sub_080003E0
	add fp, r5, fp, lsl #8
	sub r7, r1, fp
	sub r7, r7, #1
	add r7, r7, ip
	add r6, r6, #1
	sub r5, r1, r7
	cmp r5, #1
	bgt _08000574
	bne _08000564
	ldrb r5, [r7], #1
	tst ip, #1
	beq _080004B8
	add sl, sl, r5, lsl #8
	strh sl, [r1], #2
	sub r6, r6, #1
	b _080004CC
_08000564:
	tst ip, #1
	ldrbeq r5, [r7], #1
	andne r5, sl, #0xff
	b _080004B8
_08000574:
	tst r7, #1
	beq _08000594
	ldrb r5, [r7], #1
	eors ip, ip, #1
	movne sl, r5
	addeq sl, sl, r5, lsl #8
	strheq sl, [r1], #2
	subs r6, r6, #1
_08000594:
	lsrs fp, r6, #1
	beq _080005DC
	tst ip, #1
	bne _080005B8
_080005A4:
	ldrh r5, [r7], #2
	strh r5, [r1], #2
	subs fp, fp, #1
	bne _080005A4
	b _080005D4
_080005B8:
	ldrh r5, [r7], #2
	add r5, sl, r5, lsl #8
	strh r5, [r1], #2
	lsr sl, r5, #0x10
	subs fp, fp, #1
	bne _080005B8
	mov ip, #1
_080005D4:
	tst r6, #1
	beq _0800042C
_080005DC:
	ldrb r5, [r7], #1
	eors ip, ip, #1
	movne sl, r5
	addeq sl, sl, r5, lsl #8
	strheq sl, [r1], #2
	b _0800042C
_080005F4:
	tst ip, #1
	strbne sl, [r1], #1
	add sp, sp, #0x24
	pop {r0, r2, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	cmp r2, #0
	bxeq lr
	subs r1, r1, r0
	str r1, [r2]
	bx lr

	arm_func_start FUN_08000618
FUN_08000618: @ 0x08000618
	ands r3, r1, #0x80000000
	rsbmi r1, r1, #0
	eor r3, r3, r0, asr #1
	cmp r0, #0
	rsbmi r0, r0, #0
	mov ip, lr
	bl FUN_0800067C
	tst r3, #-0x80000000
	rsbne r0, r0, #0
	bx ip

	arm_func_start FUN_08000640
FUN_08000640: @ 0x08000640
	stmdb sp!, {r2}
	ands r3, r1, #0x80000000
	rsbmi r1, r1, #0
	eor r3, r3, r0, asr #1
	cmp r0, #0
	rsbmi r0, r0, #0
	mov ip, lr
	bl FUN_0800067C
	tst r3, #-0x80000000
	rsbne r0, r0, #0
	tst r3, #0x40000000
	rsbne r1, r1, #0
	ldm sp!, {r2}
	str r1, [r2]
	bx ip

	arm_func_start FUN_0800067C
FUN_0800067C: @ 0x0800067C
	cmp r1, #1
	beq _08000940
	mov r2, #0
	cmp r1, r0, lsr #15
	bhi _08000728
	cmp r1, r0, lsr #23
	bhi _080006E0
	cmp r1, r0, lsr #27
	bhi _080006C0
	cmp r1, r0, lsr #29
	bhi _080006B4
	cmp r1, r0, lsr #30
	bhi _080007CC
	b _080007C0
_080006B4:
	cmp r1, r0, lsr #28
	bhi _080007E4
	b _080007D8
_080006C0:
	cmp r1, r0, lsr #25
	bhi _080006D4
	cmp r1, r0, lsr #26
	bhi _080007FC
	b _080007F0
_080006D4:
	cmp r1, r0, lsr #24
	bhi _08000814
	b _08000808
_080006E0:
	cmp r1, r0, lsr #19
	bhi _08000708
	cmp r1, r0, lsr #21
	bhi _080006FC
	cmp r1, r0, lsr #22
	bhi _0800082C
	b _08000820
_080006FC:
	cmp r1, r0, lsr #20
	bhi _08000844
	b _08000838
_08000708:
	cmp r1, r0, lsr #17
	bhi _0800071C
	cmp r1, r0, lsr #18
	bhi _0800085C
	b _08000850
_0800071C:
	cmp r1, r0, lsr #16
	bhi _08000874
	b _08000868
_08000728:
	cmp r1, r0, lsr #7
	bhi _08000778
	cmp r1, r0, lsr #11
	bhi _08000758
	cmp r1, r0, lsr #13
	bhi _0800074C
	cmp r1, r0, lsr #14
	bhi _0800088C
	b _08000880
_0800074C:
	cmp r1, r0, lsr #12
	bhi _080008A4
	b _08000898
_08000758:
	cmp r1, r0, lsr #9
	bhi _0800076C
	cmp r1, r0, lsr #10
	bhi _080008BC
	b _080008B0
_0800076C:
	cmp r1, r0, lsr #8
	bhi _080008D4
	b _080008C8
_08000778:
	cmp r1, r0, lsr #3
	bhi _080007A0
	cmp r1, r0, lsr #5
	bhi _08000794
	cmp r1, r0, lsr #6
	bhi _080008EC
	b _080008E0
_08000794:
	cmp r1, r0, lsr #4
	bhi _08000904
	b _080008F8
_080007A0:
	cmp r1, r0, lsr #1
	bhi _080007B4
	cmp r1, r0, lsr #2
	bhi _0800091C
	b _08000910
_080007B4:
	cmp r1, r0
	bhi _08000934
	b _08000928
_080007C0:
	cmp r0, r1, lsl #30
	adc r2, r2, r2
	subhs r0, r0, r1, lsl #30
_080007CC:
	cmp r0, r1, lsl #29
	adc r2, r2, r2
	subhs r0, r0, r1, lsl #29
_080007D8:
	cmp r0, r1, lsl #28
	adc r2, r2, r2
	subhs r0, r0, r1, lsl #28
_080007E4:
	cmp r0, r1, lsl #27
	adc r2, r2, r2
	subhs r0, r0, r1, lsl #27
_080007F0:
	cmp r0, r1, lsl #26
	adc r2, r2, r2
	subhs r0, r0, r1, lsl #26
_080007FC:
	cmp r0, r1, lsl #25
	adc r2, r2, r2
	subhs r0, r0, r1, lsl #25
_08000808:
	cmp r0, r1, lsl #24
	adc r2, r2, r2
	subhs r0, r0, r1, lsl #24
_08000814:
	cmp r0, r1, lsl #23
	adc r2, r2, r2
	subhs r0, r0, r1, lsl #23
_08000820:
	cmp r0, r1, lsl #22
	adc r2, r2, r2
	subhs r0, r0, r1, lsl #22
_0800082C:
	cmp r0, r1, lsl #21
	adc r2, r2, r2
	subhs r0, r0, r1, lsl #21
_08000838:
	cmp r0, r1, lsl #20
	adc r2, r2, r2
	subhs r0, r0, r1, lsl #20
_08000844:
	cmp r0, r1, lsl #19
	adc r2, r2, r2
	subhs r0, r0, r1, lsl #19
_08000850:
	cmp r0, r1, lsl #18
	adc r2, r2, r2
	subhs r0, r0, r1, lsl #18
_0800085C:
	cmp r0, r1, lsl #17
	adc r2, r2, r2
	subhs r0, r0, r1, lsl #17
_08000868:
	cmp r0, r1, lsl #16
	adc r2, r2, r2
	subhs r0, r0, r1, lsl #16
_08000874:
	cmp r0, r1, lsl #15
	adc r2, r2, r2
	subhs r0, r0, r1, lsl #15
_08000880:
	cmp r0, r1, lsl #14
	adc r2, r2, r2
	subhs r0, r0, r1, lsl #14
_0800088C:
	cmp r0, r1, lsl #13
	adc r2, r2, r2
	subhs r0, r0, r1, lsl #13
_08000898:
	cmp r0, r1, lsl #12
	adc r2, r2, r2
	subhs r0, r0, r1, lsl #12
_080008A4:
	cmp r0, r1, lsl #11
	adc r2, r2, r2
	subhs r0, r0, r1, lsl #11
_080008B0:
	cmp r0, r1, lsl #10
	adc r2, r2, r2
	subhs r0, r0, r1, lsl #10
_080008BC:
	cmp r0, r1, lsl #9
	adc r2, r2, r2
	subhs r0, r0, r1, lsl #9
_080008C8:
	cmp r0, r1, lsl #8
	adc r2, r2, r2
	subhs r0, r0, r1, lsl #8
_080008D4:
	cmp r0, r1, lsl #7
	adc r2, r2, r2
	subhs r0, r0, r1, lsl #7
_080008E0:
	cmp r0, r1, lsl #6
	adc r2, r2, r2
	subhs r0, r0, r1, lsl #6
_080008EC:
	cmp r0, r1, lsl #5
	adc r2, r2, r2
	subhs r0, r0, r1, lsl #5
_080008F8:
	cmp r0, r1, lsl #4
	adc r2, r2, r2
	subhs r0, r0, r1, lsl #4
_08000904:
	cmp r0, r1, lsl #3
	adc r2, r2, r2
	subhs r0, r0, r1, lsl #3
_08000910:
	cmp r0, r1, lsl #2
	adc r2, r2, r2
	subhs r0, r0, r1, lsl #2
_0800091C:
	cmp r0, r1, lsl #1
	adc r2, r2, r2
	subhs r0, r0, r1, lsl #1
_08000928:
	cmp r0, r1
	adc r2, r2, r2
	subhs r0, r0, r1
_08000934:
	mov r1, r0
	mov r0, r2
	bx lr
_08000940:
	mov r1, #0
	bx lr

	thumb_func_start FUN_08000948
FUN_08000948: @ 0x08000948
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	ldr r0, _08000998 @ => 0x03003050
	mov sl, r0
	movs r1, #0
	str r1, [sp]
	ldr r0, _0800099C @ => 0x03003178
	str r1, [r0]
	ldr r0, _080009A0 @ => 0x030015D8
	strb r1, [r0, #8]
	ldr r0, _080009A4 @ => 0x03002C48
	ldr r1, [sp]
	str r1, [r0]
	movs r7, #0
	ldr r0, _080009A8 @ => 0x03004374
	ldr r0, [r0]
	ldr r1, _080009AC @ => 0x00210008
	ands r0, r1
	cmp r0, #8
	bne _080009B0
	ldr r4, [r6]
	cmp r4, #0
	beq _08000A28
_08000986:
	ldr r5, [r4]
	adds r0, r4, #0
	mov r1, sb
	bl FUN_08002074
	adds r4, r5, #0
	cmp r4, #0
	bne _08000986
	b _08000A28
	.align 2, 0
_08000998: .4byte gUnk_03003050
_0800099C: .4byte gUnk_03003178
_080009A0: .4byte gUnk_030015D8
_080009A4: .4byte gUnk_03002C48
_080009A8: .4byte gUnk_03004374
_080009AC: .4byte 0x00210008
_080009B0:
	ldr r0, _08000A68 @ => 0x0300317C
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08000A28
	ldr r4, [r6, #4]
	cmp r4, #0
	beq _080009D2
_080009C2:
	ldr r5, [r4, #4]
	adds r0, r4, #0
	mov r1, sb
	bl FUN_08002074
	adds r4, r5, #0
	cmp r4, #0
	bne _080009C2
_080009D2:
	ldr r0, _08000A6C @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080009F6
	ldr r0, _08000A70 @ => 0x03002C48
	ldr r2, [r0]
	cmp r2, #0
	beq _080009F6
	ldr r0, _08000A74 @ => 0x03002C40
	cmp r6, r0
	bne _080009F6
	ldr r1, _08000A78 @ => 0x03002C50
	adds r0, r2, #0
	bl FUN_08003934
_080009F6:
	ldr r4, [r6]
	cmp r4, #0
	beq _08000A28
_080009FC:
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _08000A08
	adds r0, r4, #0
	bl FUN_08003734
_08000A08:
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x24]
	str r0, [r4, #0x18]
	str r1, [r4, #0x1c]
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	bne _08000A22
	adds r0, r4, #0
	bl FUN_08003D2C
_08000A22:
	ldr r4, [r4]
	cmp r4, #0
	bne _080009FC
_08000A28:
	ldr r4, [r6]
	cmp r4, #0
	beq _08000A4C
	ldr r2, _08000A7C @ => 0x00001003
	mov r8, r2
	ldr r6, _08000A80 @ => 0x00001001
_08000A34:
	ldr r5, [r4]
	ldr r0, [r4, #0xc]
	mov r1, r8
	ands r0, r1
	cmp r0, r6
	bne _08000A46
	adds r0, r4, #0
	bl FUN_080037A4
_08000A46:
	adds r4, r5, #0
	cmp r4, #0
	bne _08000A34
_08000A4C:
	mov r2, sb
	cmp r2, #1
	bne _08000A5E
	ldr r0, _08000A84 @ => 0x03003178
	ldr r0, [r0]
	cmp r0, #1
	bls _08000A5E
	bl _call_via_sl
_08000A5E:
	bl FUN_0803F31C
	movs r5, #0
	b _08000B24
	.align 2, 0
_08000A68: .4byte gUnk_0300317C
_08000A6C: .4byte gUnk_03004374
_08000A70: .4byte gUnk_03002C48
_08000A74: .4byte gUnk_03002C40
_08000A78: .4byte gUnk_03002C50
_08000A7C: .4byte 0x00001003
_08000A80: .4byte 0x00001001
_08000A84: .4byte gUnk_03003178
_08000A88:
	ldr r1, _08000B60 @ => 0x03002E50
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r0, r4, #0
	mov r1, sb
	bl FUN_08003260
	adds r5, #1
	mov sl, r5
	mov r0, sb
	cmp r0, #1
	bne _08000B22
	adds r0, r4, #0
	bl FUN_08002B4C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	adds r1, r4, #0
	adds r1, #0xa9
	ldrb r0, [r1]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1e
	adds r5, r1, #0
	adds r6, r4, #0
	adds r6, #0xdb
	cmp r0, r7
	beq _08000ADA
	cmp r7, r0
	bhs _08000ADA
_08000AC6:
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0803FECC
	adds r7, #1
	ldrb r0, [r5]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r7, r0
	blo _08000AC6
_08000ADA:
	ldrb r1, [r6]
	movs r2, #0x10
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08000B02
	adds r5, r4, #0
	adds r5, #0xa7
	ldrb r0, [r5]
	orrs r0, r2
	strb r0, [r5]
	adds r0, r4, #0
	bl FUN_08002B4C
	ldrb r0, [r5]
	movs r2, #0x11
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r5]
_08000B02:
	mov r0, r8
	cmp r0, #0
	beq _08000B22
	movs r1, #1
	str r1, [sp]
	cmp r0, #2
	bne _08000B22
	ldr r2, _08000B64 @ => 0x030015D8
	ldrb r0, [r2, #8]
	adds r1, r0, #1
	strb r1, [r2, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	ldr r1, _08000B68 @ => 0x030015E4
	adds r0, r0, r1
	str r4, [r0]
_08000B22:
	mov r5, sl
_08000B24:
	ldr r0, _08000B6C @ => 0x03003178
	ldr r0, [r0]
	cmp r5, r0
	blo _08000A88
	mov r2, sb
	cmp r2, #1
	bne _08000B4E
	cmp r7, #3
	bhi _08000B44
_08000B36:
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0803FECC
	adds r7, #1
	cmp r7, #3
	bls _08000B36
_08000B44:
	mov r0, sb
	cmp r0, #1
	bne _08000B4E
	bl FUN_0803B800
_08000B4E:
	ldr r0, [sp]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08000B60: .4byte gUnk_03002E50
_08000B64: .4byte gUnk_030015D8
_08000B68: .4byte gUnk_030015E4
_08000B6C: .4byte gUnk_03003178

	thumb_func_start FUN_08000B70
FUN_08000B70: @ 0x08000B70
	push {r4, r5, r6, lr}
	ldr r0, _08000B84 @ => 0x030042E0
	ldr r0, [r0]
	ldrh r0, [r0, #0x38]
	cmp r0, #1
	bne _08000BE4
	movs r4, #0
	ldr r1, _08000B88 @ => 0x030015D8
	adds r5, r1, #0
	b _08000BD6
	.align 2, 0
_08000B84: .4byte gUnk_030042E0
_08000B88: .4byte gUnk_030015D8
_08000B8C:
	lsls r0, r4, #2
	adds r1, #0xc
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r1, #0xc]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08000BA6
	adds r0, r1, #0
	bl FUN_08001170
	b _08000BD2
_08000BA6:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08000BD2
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r1, #0xc]
	adds r0, r1, #0
	adds r0, #0xd6
	ldrh r2, [r0]
	adds r3, r1, #0
	adds r3, #0xa8
	ldr r1, _08000BEC @ => 0x000003FF
	adds r0, r1, #0
	ands r2, r0
	ldrh r0, [r3]
	ldr r6, _08000BF0 @ => 0xFFFFFC00
	adds r1, r6, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3]
_08000BD2:
	adds r4, #1
	ldr r1, _08000BF4 @ => 0x030015D8
_08000BD6:
	ldrb r0, [r1, #8]
	cmp r4, r0
	blt _08000B8C
	movs r0, #0
	strb r0, [r5, #8]
	bl FUN_080528B8
_08000BE4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08000BEC: .4byte 0x000003FF
_08000BF0: .4byte 0xFFFFFC00
_08000BF4: .4byte gUnk_030015D8

	thumb_func_start FUN_08000BF8
FUN_08000BF8: @ 0x08000BF8
	push {r4, r5, r6, lr}
	ldr r4, [r0]
	cmp r4, #0
	beq _08000C74
	ldr r6, _08000C88 @ => 0x0000FFFF
_08000C02:
	ldr r5, [r4]
	ldrh r0, [r4, #8]
	cmp r0, r6
	beq _08000C6E
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _08000C16
	adds r0, r4, #0
	bl _call_via_r1
_08000C16:
	adds r0, r4, #0
	bl FUN_0803ED70
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bge _08000C2C
	ldrb r1, [r4, #0x10]
	ldrb r2, [r4, #0x11]
	movs r0, #0
	bl FUN_08009B9C
_08000C2C:
	ldrh r0, [r4, #8]
	adds r1, r6, #0
	orrs r1, r0
	strh r1, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xa5
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _08000C46
	cmp r0, #3
	bne _08000C4C
_08000C46:
	adds r0, r4, #0
	bl FUN_08003EC4
_08000C4C:
	ldr r0, _08000C8C @ => 0x030017EC
	ldr r0, [r0]
	cmp r0, #1
	bne _08000C5A
	adds r0, r4, #0
	bl FUN_08001170
_08000C5A:
	ldr r1, _08000C90 @ => 0x03002C40
	ldr r0, [r1, #4]
	cmp r0, r4
	bne _08000C66
	ldr r0, [r4, #4]
	str r0, [r1, #4]
_08000C66:
	ldr r0, _08000C94 @ => 0x030015DC
	adds r2, r4, #0
	bl FUN_08028FDC
_08000C6E:
	adds r4, r5, #0
	cmp r4, #0
	bne _08000C02
_08000C74:
	ldr r0, _08000C8C @ => 0x030017EC
	movs r1, #1
	str r1, [r0]
	ldr r0, _08000C90 @ => 0x03002C40
	bl FUN_08000948
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08000C88: .4byte 0x0000FFFF
_08000C8C: .4byte gUnk_030017EC
_08000C90: .4byte gUnk_03002C40
_08000C94: .4byte gUnk_030015DC

	thumb_func_start FUN_08000C98
FUN_08000C98: @ 0x08000C98
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r4, r0, #0
	movs r7, #0
	ldr r1, [r4, #0xc]
	ldr r0, _08000CDC @ => 0xBFFFEFFF
	ands r1, r0
	str r1, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0xda
	ldrb r0, [r0]
	cmp r0, #1
	bne _08000CC4
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x17
	orrs r1, r0
	str r1, [r4, #0xc]
_08000CC4:
	ldr r1, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r1
	cmp r0, #0
	beq _08000CE4
	ldr r0, _08000CE0 @ => 0x40001000
	orrs r1, r0
	str r1, [r4, #0xc]
	movs r0, #1
	b _08000DA6
	.align 2, 0
_08000CDC: .4byte 0xBFFFEFFF
_08000CE0: .4byte 0x40001000
_08000CE4:
	ldr r0, _08000CF0 @ => 0x030042B0
	ldrh r0, [r0, #4]
	cmp r0, #0
	bne _08000CF4
	movs r6, #1
	b _08000CF8
	.align 2, 0
_08000CF0: .4byte gUnk_030042B0
_08000CF4:
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08000CF8:
	movs r5, #0
	cmp r5, r6
	bhs _08000DA4
	add r0, sp, #8
	mov r8, r0
_08000D02:
	mov r0, sp
	adds r1, r5, #0
	bl FUN_08047038
	adds r0, r4, #0
	adds r0, #0x18
	add r1, sp, #8
	bl FUN_0802C3F8
	adds r0, r4, #0
	adds r0, #0xa7
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08000D38
	adds r0, r4, #0
	adds r0, #0x9c
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, [sp, #8]
	subs r2, r1, r0
	adds r0, r4, #0
	adds r0, #0x9e
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r1, r1, r0
	b _08000D4E
_08000D38:
	adds r0, r4, #0
	adds r0, #0x9e
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, [sp, #8]
	adds r2, r1, r0
	adds r0, r4, #0
	adds r0, #0x9c
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r1, r0
_08000D4E:
	ldr r0, [sp]
	cmp r2, r0
	blt _08000D9A
	adds r0, #0xf0
	cmp r1, r0
	bgt _08000D9A
	adds r0, r4, #0
	adds r0, #0xa2
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r3, r8
	ldr r2, [r3, #4]
	adds r0, r2, r0
	ldr r1, [sp, #4]
	cmp r0, r1
	blt _08000D9A
	adds r0, r4, #0
	adds r0, #0xa0
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, r2, r0
	adds r1, #0xa0
	cmp r0, r1
	bgt _08000D9A
	ldr r1, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r4, #0xc]
	ldr r0, _08000DB4 @ => 0x030042B0
	ldrh r0, [r0, #6]
	cmp r5, r0
	bne _08000D98
	movs r0, #0x80
	lsls r0, r0, #0x17
	orrs r1, r0
	str r1, [r4, #0xc]
_08000D98:
	movs r7, #1
_08000D9A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r6
	blo _08000D02
_08000DA4:
	adds r0, r7, #0
_08000DA6:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08000DB4: .4byte gUnk_030042B0

	thumb_func_start FUN_08000DB8
FUN_08000DB8: @ 0x08000DB8
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r0, #0xda
	ldrb r0, [r0]
	cmp r0, #1
	bne _08000DCA
	movs r0, #1
	b _08000E3A
_08000DCA:
	ldr r0, _08000E34 @ => 0x030042B0
	ldrb r1, [r0, #6]
	mov r0, sp
	bl FUN_08047038
	adds r0, r4, #0
	adds r0, #0x18
	add r5, sp, #8
	adds r1, r5, #0
	bl FUN_0802C3F8
	adds r0, r4, #0
	adds r0, #0x8a
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r2, [sp, #8]
	adds r0, r2, r0
	ldr r1, [sp]
	cmp r0, r1
	blt _08000E38
	adds r0, r4, #0
	adds r0, #0x88
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, r2, r0
	adds r1, #0xf0
	cmp r0, r1
	bgt _08000E38
	adds r0, r4, #0
	adds r0, #0x8e
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r2, [r5, #4]
	adds r0, r2, r0
	ldr r1, [sp, #4]
	cmp r0, r1
	blt _08000E38
	adds r0, r4, #0
	adds r0, #0x8c
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, r2, r0
	adds r1, #0xa0
	cmp r0, r1
	bgt _08000E38
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r4, #0xc]
	movs r0, #1
	b _08000E3A
	.align 2, 0
_08000E34: .4byte gUnk_030042B0
_08000E38:
	movs r0, #0
_08000E3A:
	add sp, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08000E44
FUN_08000E44: @ 0x08000E44
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r3, r1, #0
	adds r2, r4, #0
	adds r2, #0xbb
	ldrb r0, [r2]
	cmp r0, r3
	bne _08000E64
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08000E64
	b _08000F8C
_08000E64:
	strb r3, [r2]
	adds r0, r4, #0
	adds r0, #0xb9
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0xb8
	strb r0, [r1]
	adds r5, r4, #0
	adds r5, #0xac
	ldrb r0, [r5, #0xe]
	ldrb r1, [r5, #0xf]
	cmp r0, r1
	bne _08000E8A
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08000E8A
	b _08000F8C
_08000E8A:
	adds r0, r4, #0
	bl FUN_08001AE0
	adds r6, r0, #0
	adds r7, r4, #0
	adds r7, #0xdb
	cmp r6, #0
	beq _08000F74
	ldrb r1, [r5, #0xf]
	lsls r1, r1, #1
	adds r0, #0xc
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r1, #0xc
	adds r1, r6, r1
	adds r3, r1, #6
	ldrh r2, [r1, #6]
	adds r0, r4, #0
	adds r0, #0x88
	strh r2, [r0]
	ldrh r0, [r1, #6]
	ldrb r2, [r1, #2]
	adds r0, r0, r2
	adds r2, r4, #0
	adds r2, #0x8a
	strh r0, [r2]
	ldrh r2, [r3, #2]
	adds r0, r4, #0
	adds r0, #0x8c
	strh r2, [r0]
	ldrh r0, [r3, #2]
	ldrb r2, [r1, #3]
	adds r0, r0, r2
	adds r2, r4, #0
	adds r2, #0x8e
	strh r0, [r2]
	ldrh r2, [r1, #6]
	adds r0, r4, #0
	adds r0, #0x9c
	strh r2, [r0]
	ldrh r0, [r1, #6]
	ldrb r2, [r1, #2]
	adds r0, r0, r2
	adds r2, r4, #0
	adds r2, #0x9e
	strh r0, [r2]
	ldrh r2, [r3, #2]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r2, [r0]
	ldrh r0, [r3, #2]
	ldrb r2, [r1, #3]
	adds r0, r0, r2
	adds r2, r4, #0
	adds r2, #0xa2
	strh r0, [r2]
	ldrb r0, [r6, #0xa]
	lsls r0, r0, #1
	adds r0, #0xa
	adds r1, r1, r0
	movs r5, #0
	movs r0, #0x7b
	adds r0, r0, r4
	mov ip, r0
	ldrb r2, [r6, #0xb]
	cmp r5, r2
	bge _08000F52
	adds r2, r1, #0
	movs r3, #0
_08000F14:
	adds r0, r4, #0
	adds r0, #0x7c
	adds r0, r0, r3
	ldrb r1, [r2]
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x7e
	adds r0, r0, r3
	ldrb r1, [r2, #2]
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x7d
	adds r0, r0, r3
	ldrb r1, [r2, #1]
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x7f
	adds r0, r0, r3
	ldrb r1, [r2, #3]
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x80
	adds r0, r0, r3
	ldrb r1, [r2, #4]
	strb r1, [r0]
	adds r2, #6
	adds r3, #6
	adds r5, #1
	ldrb r0, [r6, #0xb]
	cmp r5, r0
	blt _08000F14
_08000F52:
	ldrb r5, [r6, #0xb]
	cmp r5, #1
	bgt _08000F6E
	movs r1, #0
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, #0x80
	adds r0, r0, r4
_08000F64:
	strb r1, [r0]
	adds r0, #6
	adds r5, #1
	cmp r5, #1
	ble _08000F64
_08000F6E:
	ldrb r0, [r6, #0xb]
	mov r1, ip
	strb r0, [r1]
_08000F74:
	ldrb r1, [r7]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08000F84
	adds r0, r4, #0
	bl FUN_08002950
_08000F84:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4, #0xc]
_08000F8C:
	ldr r0, [r4, #0xc]
	ldr r1, _08000F9C @ => 0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #0xc]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000F9C: .4byte 0xFFBFFFFF

	thumb_func_start FUN_08000FA0
FUN_08000FA0: @ 0x08000FA0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	adds r1, r6, #0
	bl FUN_08001AF4
	ldr r2, [r0, #4]
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r0, #0xe4
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	bne _08000FD0
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08000FEA
_08000FD0:
	adds r0, r5, #0
	adds r0, #0xbb
	ldrb r0, [r0]
	subs r0, #1
	cmp r0, #0
	bge _08000FF0
	cmp r3, #0
	beq _08000FE6
	ldrh r0, [r2, #6]
	subs r0, #1
	b _08000FF0
_08000FE6:
	movs r0, #0
	b _08000FF0
_08000FEA:
	adds r0, r5, #0
	adds r0, #0xbb
	ldrb r0, [r0]
_08000FF0:
	lsls r1, r0, #1
	adds r0, r2, #0
	adds r0, #0xc
	adds r0, r0, r1
	ldrh r4, [r0]
	adds r4, r4, r2
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r2, [r0]
	adds r1, #1
	adds r0, r5, r1
	movs r3, #0
	ldrsb r3, [r0, r3]
	lsls r1, r6, #1
	adds r1, r1, r6
	lsls r1, r1, #2
	adds r0, r5, #0
	adds r0, #0xec
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r2, r2, #2
	adds r2, r2, r0
	lsls r3, r3, #4
	ldr r0, [r2]
	adds r0, r0, r3
	ldrh r1, [r4, #0x10]
	ldr r0, [r0]
	adds r0, r0, r1
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_08001030
FUN_08001030: @ 0x08001030
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r3, #0
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r0, r1
	cmp r0, #0
	beq _08001070
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08001054
	ldr r4, _08001050 @ => 0x08059E28
	b _0800109A
	.align 2, 0
_08001050: .4byte ROMREF_08059E28
_08001054:
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08001068
	ldr r4, _08001064 @ => 0x08059EA8
	b _0800109A
	.align 2, 0
_08001064: .4byte ROMREF_08059EA8
_08001068:
	ldr r4, _0800106C @ => 0x08059DA8
	b _0800109A
	.align 2, 0
_0800106C: .4byte ROMREF_08059DA8
_08001070:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08001084
	ldr r4, _08001080 @ => 0x08059D28
	b _0800109A
	.align 2, 0
_08001080: .4byte ROMREF_08059D28
_08001084:
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08001098
	ldr r4, _08001094 @ => 0x08059D68
	b _0800109A
	.align 2, 0
_08001094: .4byte ROMREF_08059D68
_08001098:
	ldr r4, _080010BC @ => 0x08059CA8
_0800109A:
	lsls r5, r2, #3
	adds r0, r5, r4
	ldr r0, [r0]
	adds r1, r6, #0
	bl FUN_0802C314
	str r0, [r7]
	adds r4, #4
	adds r5, r5, r4
	ldr r0, [r5]
	adds r1, r6, #0
	bl FUN_0802C314
	str r0, [r7, #4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080010BC: .4byte ROMREF_08059CA8

	thumb_func_start FUN_080010C0
FUN_080010C0: @ 0x080010C0
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r6, r0, #0
	adds r4, r1, #0
	adds r0, #0x18
	mov r1, sp
	bl FUN_0802C3F8
	adds r4, #0x18
	add r5, sp, #8
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_0802C3F8
	ldr r1, [sp, #8]
	ldr r0, [sp]
	subs r0, r1, r0
	str r0, [sp, #0x10]
	ldr r1, [r5, #4]
	ldr r0, [sp, #4]
	subs r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	bl FUN_0802C4C4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r2, [r6, #0x12]
	cmp r0, #7
	bhi _08001166
	lsls r0, r0, #2
	ldr r1, _08001108 @ =_0800110C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08001108: .4byte _0800110C
_0800110C: @ jump table
	.4byte _0800112C @ case 0
	.4byte _08001136 @ case 1
	.4byte _0800113E @ case 2
	.4byte _08001142 @ case 3
	.4byte _08001146 @ case 4
	.4byte _0800114A @ case 5
	.4byte _0800114E @ case 6
	.4byte _0800115A @ case 7
_0800112C:
	cmp r2, #1
	bls _0800113A
	cmp r2, #7
	bne _08001166
	b _0800113A
_08001136:
	cmp r2, #2
	bhi _08001166
_0800113A:
	movs r0, #1
	b _08001168
_0800113E:
	subs r0, r2, #1
	b _08001150
_08001142:
	subs r0, r2, #2
	b _08001150
_08001146:
	subs r0, r2, #3
	b _08001150
_0800114A:
	subs r0, r2, #4
	b _08001150
_0800114E:
	subs r0, r2, #5
_08001150:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _08001166
	b _0800113A
_0800115A:
	cmp r2, #7
	beq _0800113A
	cmp r2, #0
	beq _0800113A
	cmp r2, #6
	beq _0800113A
_08001166:
	movs r0, #0
_08001168:
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_08001170
FUN_08001170: @ 0x08001170
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	movs r0, #0xdb
	adds r0, r0, r6
	mov sb, r0
	ldrb r3, [r0]
	movs r7, #3
	ands r7, r3
	cmp r7, #0
	beq _08001204
	adds r0, r6, #0
	adds r0, #0xd6
	ldrh r2, [r0]
	ldr r1, _080011A8 @ => 0x0000FFFF
	adds r7, r0, #0
	cmp r2, r1
	beq _0800126E
	adds r0, #6
	ldrb r2, [r0]
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _080011AC
	movs r3, #0
	b _080011B2
	.align 2, 0
_080011A8: .4byte 0x0000FFFF
_080011AC:
	adds r0, r6, #0
	adds r0, #0xba
	ldrb r3, [r0]
_080011B2:
	ldr r5, _080011FC @ => 0x030017E8
	ldr r0, [r5]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r2, r1, #2
	adds r0, r2, r0
	adds r0, #0x26
	adds r0, r0, r3
	ldrb r1, [r0]
	subs r1, #1
	strb r1, [r0]
	lsls r1, r1, #0x18
	adds r4, r6, #0
	adds r4, #0xd4
	cmp r1, #0
	bne _080011F2
	ldr r0, [r5]
	adds r0, r2, r0
	lsls r1, r3, #1
	adds r0, #8
	adds r0, r0, r1
	ldr r1, _08001200 @ => 0x0000FFFF
	strh r1, [r0]
	ldrh r0, [r7]
	ldrh r1, [r4]
	adds r2, r6, #0
	adds r2, #0xa5
	ldrb r2, [r2]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1f
	bl FUN_0805286C
_080011F2:
	ldr r0, _08001200 @ => 0x0000FFFF
	strh r0, [r7]
	movs r0, #0
	strh r0, [r4]
	b _0800126E
	.align 2, 0
_080011FC: .4byte gUnk_030017E8
_08001200: .4byte 0x0000FFFF
_08001204:
	adds r5, r6, #0
	adds r5, #0xd6
	ldrh r0, [r5]
	ldr r1, _0800127C @ => 0x0000FFFF
	mov r8, r1
	cmp r0, r8
	beq _08001230
	adds r4, r6, #0
	adds r4, #0xd4
	ldrh r1, [r4]
	adds r2, r6, #0
	adds r2, #0xa5
	ldrb r2, [r2]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1f
	bl FUN_0805286C
	ldrh r1, [r5]
	mov r0, r8
	orrs r0, r1
	strh r0, [r5]
	strh r7, [r4]
_08001230:
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800126E
	mov r7, r8
	adds r4, r6, #0
	adds r4, #0xe8
	movs r5, #3
_08001244:
	ldrh r0, [r4, #2]
	cmp r0, r7
	beq _08001266
	ldrh r1, [r4]
	adds r2, r6, #0
	adds r2, #0xa5
	ldrb r2, [r2]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1f
	bl FUN_0805286C
	ldrh r1, [r4, #2]
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r4, #2]
	movs r0, #0
	strh r0, [r4]
_08001266:
	adds r4, #0xc
	subs r5, #1
	cmp r5, #0
	bge _08001244
_0800126E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800127C: .4byte 0x0000FFFF

	thumb_func_start FUN_08001280
FUN_08001280: @ 0x08001280
	push {r4, r5, lr}
	movs r0, #0xb4
	lsls r0, r0, #8
	bl FUN_0802C9DC
	ldr r4, _080012C0 @ => 0x030015D8
	str r0, [r4]
	ldr r5, _080012C4 @ => 0x030017E8
	movs r0, #0x96
	lsls r0, r0, #1
	bl FUN_0802C9DC
	str r0, [r5]
	ldr r0, [r4]
	movs r2, #0xb4
	lsls r2, r2, #1
	movs r1, #0x80
	bl FUN_08028F70
	str r0, [r4, #4]
	ldr r0, _080012C8 @ => FUN_0800A454
	ldr r1, _080012CC @ => 0x03003050
	ldr r2, _080012D0 @ => 0x04000047
	bl SVC_CpuSet
	ldr r1, _080012D4 @ => 0x030017F0
	movs r0, #0
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080012C0: .4byte gUnk_030015D8
_080012C4: .4byte gUnk_030017E8
_080012C8: .4byte FUN_0800A454
_080012CC: .4byte gUnk_03003050
_080012D0: .4byte 0x04000047
_080012D4: .4byte gUnk_030017F0

	thumb_func_start FUN_080012D8
FUN_080012D8: @ 0x080012D8
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_080012FC
	adds r2, r0, #0
	cmp r2, #0
	beq _080012F2
	movs r1, #0
	strh r4, [r2, #8]
	movs r3, #0xb0
	lsls r3, r3, #1
	adds r0, r2, r3
	strb r1, [r0]
_080012F2:
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_080012FC
FUN_080012FC: @ 0x080012FC
	push {r4, lr}
	ldr r0, _08001330 @ => 0x030015DC
	ldr r4, _08001334 @ => 0x03002C40
	movs r2, #0xb4
	lsls r2, r2, #1
	adds r1, r4, #0
	bl FUN_08028FA8
	adds r1, r0, #0
	cmp r1, #0
	beq _08001328
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0800131A
	str r1, [r4, #4]
_0800131A:
	ldr r0, _08001338 @ => 0x0000FFFF
	strh r0, [r1, #8]
	adds r2, r1, #0
	adds r2, #0xd6
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r2]
_08001328:
	adds r0, r1, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08001330: .4byte gUnk_030015DC
_08001334: .4byte gUnk_03002C40
_08001338: .4byte 0x0000FFFF

	thumb_func_start FUN_0800133C
FUN_0800133C: @ 0x0800133C
	push {lr}
	ldr r1, _08001350 @ => 0x030017EC
	movs r0, #1
	str r0, [r1]
	ldr r0, _08001354 @ => 0x03002C40
	movs r1, #1
	bl FUN_08000948
	pop {r1}
	bx r1
	.align 2, 0
_08001350: .4byte gUnk_030017EC
_08001354: .4byte gUnk_03002C40

	thumb_func_start FUN_08001358
FUN_08001358: @ 0x08001358
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	ldr r5, _080013D0 @ => 0x0000FFFF
	cmp r0, r5
	beq _080013C8
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _08001370
	adds r0, r4, #0
	bl _call_via_r1
_08001370:
	adds r0, r4, #0
	bl FUN_0803ED70
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bge _08001386
	ldrb r1, [r4, #0x10]
	ldrb r2, [r4, #0x11]
	movs r0, #0
	bl FUN_08009B9C
_08001386:
	ldrh r0, [r4, #8]
	adds r1, r5, #0
	orrs r1, r0
	strh r1, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xa5
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _080013A0
	cmp r0, #3
	bne _080013A6
_080013A0:
	adds r0, r4, #0
	bl FUN_08003EC4
_080013A6:
	ldr r0, _080013D4 @ => 0x030017EC
	ldr r0, [r0]
	cmp r0, #1
	bne _080013B4
	adds r0, r4, #0
	bl FUN_08001170
_080013B4:
	ldr r1, _080013D8 @ => 0x03002C40
	ldr r0, [r1, #4]
	cmp r0, r4
	bne _080013C0
	ldr r0, [r4, #4]
	str r0, [r1, #4]
_080013C0:
	ldr r0, _080013DC @ => 0x030015DC
	adds r2, r4, #0
	bl FUN_08028FDC
_080013C8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080013D0: .4byte 0x0000FFFF
_080013D4: .4byte gUnk_030017EC
_080013D8: .4byte gUnk_03002C40
_080013DC: .4byte gUnk_030015DC

	thumb_func_start FUN_080013E0
FUN_080013E0: @ 0x080013E0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, #0xda
	ldrb r0, [r0]
	cmp r0, #1
	beq _08001432
	mov r0, sp
	bl FUN_08047038
	adds r0, r4, #0
	adds r0, #0x18
	add r5, sp, #8
	adds r1, r5, #0
	bl FUN_0802C3F8
	movs r6, #0x64
	ldr r4, [sp]
	adds r0, r4, #0
	subs r0, #0x64
	ldr r2, [sp, #8]
	cmp r2, r0
	blt _08001436
	ldr r3, [sp, #4]
	adds r0, r3, #0
	subs r0, #0x64
	ldr r1, [r5, #4]
	cmp r1, r0
	blt _08001436
	adds r0, r6, #0
	adds r0, #0xf0
	adds r0, r4, r0
	cmp r2, r0
	bgt _08001436
	adds r0, r6, #0
	adds r0, #0xa0
	adds r0, r3, r0
	cmp r1, r0
	bgt _08001436
_08001432:
	movs r0, #1
	b _08001438
_08001436:
	movs r0, #0
_08001438:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_08001440
FUN_08001440: @ 0x08001440
	push {r4, lr}
	ldr r0, _08001480 @ => 0x03002C40
	ldr r4, [r0]
	cmp r4, #0
	beq _08001466
_0800144A:
	adds r0, r4, #0
	bl FUN_08001170
	adds r0, r4, #0
	bl FUN_0803ED70
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x12
	bl FUN_08002038
	ldr r4, [r4]
	cmp r4, #0
	bne _0800144A
_08001466:
	ldr r2, _08001484 @ => 0x03003170
	ldr r1, _08001480 @ => 0x03002C40
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, [r1, #4]
	str r0, [r2, #4]
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08001480: .4byte gUnk_03002C40
_08001484: .4byte gUnk_03003170

	thumb_func_start FUN_08001488
FUN_08001488: @ 0x08001488
	push {lr}
	ldr r2, _080014B8 @ => 0x03002C40
	ldr r1, _080014BC @ => 0x03003170
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, [r1, #4]
	str r0, [r2, #4]
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #0x12
	bl FUN_080014E4
	ldr r0, _080014C0 @ => 0x030017E8
	ldr r0, [r0]
	movs r2, #0x96
	lsls r2, r2, #1
	movs r1, #0
	bl memset
	pop {r0}
	bx r0
	.align 2, 0
_080014B8: .4byte gUnk_03002C40
_080014BC: .4byte gUnk_03003170
_080014C0: .4byte gUnk_030017E8

	thumb_func_start FUN_080014C4
FUN_080014C4: @ 0x080014C4
	push {lr}
	adds r2, r0, #0
	ldr r0, _080014E0 @ => 0x03002C40
	ldr r1, [r0]
	cmp r1, #0
	beq _080014DC
_080014D0:
	ldr r0, [r1, #0xc]
	orrs r0, r2
	str r0, [r1, #0xc]
	ldr r1, [r1]
	cmp r1, #0
	bne _080014D0
_080014DC:
	pop {r0}
	bx r0
	.align 2, 0
_080014E0: .4byte gUnk_03002C40

	thumb_func_start FUN_080014E4
FUN_080014E4: @ 0x080014E4
	push {lr}
	adds r2, r0, #0
	ldr r0, _08001504 @ => 0x03002C40
	ldr r1, [r0]
	cmp r1, #0
	beq _080014FE
	mvns r2, r2
_080014F2:
	ldr r0, [r1, #0xc]
	ands r0, r2
	str r0, [r1, #0xc]
	ldr r1, [r1]
	cmp r1, #0
	bne _080014F2
_080014FE:
	pop {r0}
	bx r0
	.align 2, 0
_08001504: .4byte gUnk_03002C40

	thumb_func_start FUN_08001508
FUN_08001508: @ 0x08001508
	push {r4, r5, r6, lr}
	ldr r0, _08001560 @ => 0x03002C40
	ldr r4, [r0]
	cmp r4, #0
	beq _0800155A
_08001512:
	adds r1, r4, #0
	adds r1, #0xd6
	movs r0, #1
	rsbs r0, r0, #0
	adds r2, r0, #0
	ldr r0, _08001564 @ => 0x0000FFFF
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xdb
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08001554
	movs r3, #0
	adds r6, r2, #0
	movs r5, #0
_08001534:
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r2, r0, #0
	adds r2, #0xea
	ldrh r1, [r2]
	orrs r1, r6
	strh r1, [r2]
	adds r0, #0xe8
	strh r5, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08001534
_08001554:
	ldr r4, [r4]
	cmp r4, #0
	bne _08001512
_0800155A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08001560: .4byte gUnk_03002C40
_08001564: .4byte 0x0000FFFF

	thumb_func_start FUN_08001568
FUN_08001568: @ 0x08001568
	push {lr}
	ldr r0, _0800157C @ => 0x030017E8
	ldr r0, [r0]
	movs r2, #0x96
	lsls r2, r2, #1
	movs r1, #0
	bl memset
	pop {r0}
	bx r0
	.align 2, 0
_0800157C: .4byte gUnk_030017E8

	thumb_func_start FUN_08001580
FUN_08001580: @ 0x08001580
	ldr r1, _0800158C @ => 0x030015D8
	movs r2, #0x83
	lsls r2, r2, #2
	adds r1, r1, r2
	strb r0, [r1]
	bx lr
	.align 2, 0
_0800158C: .4byte gUnk_030015D8

	thumb_func_start FUN_08001590
FUN_08001590: @ 0x08001590
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r1, r4, #0
	adds r1, #0xd4
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0xa5
	ldrb r2, [r2]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1f
	bl FUN_080527B4
	adds r1, r4, #0
	adds r1, #0xd6
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080015B8
FUN_080015B8: @ 0x080015B8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrb r0, [r5, #0xc]
	adds r1, r4, #0
	adds r1, #0xb9
	strb r0, [r1]
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_080016FC
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_08001854
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_080015DC
FUN_080015DC: @ 0x080015DC
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r3, _08001624 @ => 0x00000115
	adds r0, r5, r3
	lsls r3, r2, #0x18
	strb r2, [r0]
	movs r2, #0x8a
	lsls r2, r2, #1
	adds r0, r5, r2
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0xec
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	asrs r3, r3, #0x14
	ldr r4, [r1]
	adds r4, r4, r3
	ldrb r0, [r4, #0xc]
	adds r1, r5, #0
	adds r1, #0xb9
	strb r0, [r1]
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_080016FC
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_08001854
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08001624: .4byte 0x00000115

	thumb_func_start FUN_08001628
FUN_08001628: @ 0x08001628
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0xdb
	ldrb r1, [r3]
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _08001680 @ => 0x0000FFFF
	mov r8, r0
	movs r7, #0xa9
	adds r7, r7, r2
	mov ip, r7
	movs r6, #0
	adds r3, #0xa
	adds r1, r2, #0
	adds r1, #0xea
	movs r4, #0
	adds r5, r2, #0
	adds r5, #0xec
	movs r2, #3
_08001656:
	ldrh r0, [r1]
	mov r7, r8
	orrs r0, r7
	strh r0, [r1]
	mov r7, ip
	ldrb r0, [r7]
	lsrs r0, r0, #4
	strb r0, [r3]
	adds r0, r5, r4
	str r6, [r0]
	adds r3, #0xc
	adds r1, #0xc
	adds r4, #0xc
	subs r2, #1
	cmp r2, #0
	bge _08001656
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001680: .4byte 0x0000FFFF

	thumb_func_start FUN_08001684
FUN_08001684: @ 0x08001684
	adds r0, #0xdb
	ldrb r2, [r0]
	movs r1, #0xbf
	ands r1, r2
	strb r1, [r0]
	bx lr

	thumb_func_start FUN_08001690
FUN_08001690: @ 0x08001690
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	adds r0, #0xec
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
	bx lr

	thumb_func_start FUN_080016A4
FUN_080016A4: @ 0x080016A4
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, #0xe4
	ldrb r2, [r0]
	movs r1, #1
	orrs r1, r2
	strb r1, [r0]
	bx lr

	thumb_func_start FUN_080016BC
FUN_080016BC: @ 0x080016BC
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, #0xe4
	ldrb r2, [r0]
	movs r1, #0xfe
	ands r1, r2
	strb r1, [r0]
	bx lr

	thumb_func_start FUN_080016D4
FUN_080016D4: @ 0x080016D4
	push {r4, lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r4, r1, #1
	adds r4, r4, r1
	lsls r4, r4, #2
	adds r1, r0, #0
	adds r1, #0xec
	adds r1, r1, r4
	str r2, [r1]
	adds r4, r0, r4
	adds r4, #0xe5
	strb r3, [r4]
	ldr r1, [r0, #0xc]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0, #0xc]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_080016FC
FUN_080016FC: @ 0x080016FC
	push {lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0xac
	ldr r0, [r3]
	cmp r0, r1
	beq _08001714
	str r1, [r3]
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r2, #0xc]
_08001714:
	adds r0, r2, #0
	movs r1, #0
	bl FUN_08000E44
	pop {r0}
	bx r0

	thumb_func_start FUN_08001720
FUN_08001720: @ 0x08001720
	str r1, [r0, #0x38]
	str r2, [r0, #0x3c]
	bx lr
	.align 2, 0

	thumb_func_start FUN_08001728
FUN_08001728: @ 0x08001728
	str r1, [r0, #0x18]
	str r2, [r0, #0x1c]
	str r1, [r0, #0x20]
	str r2, [r0, #0x24]
	bx lr
	.align 2, 0

	thumb_func_start FUN_08001734
FUN_08001734: @ 0x08001734
	lsls r1, r1, #0x10
	str r1, [r0, #0x18]
	lsls r2, r2, #0x10
	str r2, [r0, #0x1c]
	str r1, [r0, #0x20]
	str r2, [r0, #0x24]
	bx lr
	.align 2, 0

	thumb_func_start FUN_08001744
FUN_08001744: @ 0x08001744
	str r1, [r0, #0x28]
	str r2, [r0, #0x2c]
	bx lr
	.align 2, 0

	thumb_func_start FUN_0800174C
FUN_0800174C: @ 0x0800174C
	push {lr}
	adds r2, r0, #0
	adds r0, #0xa7
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0800175C
	rsbs r1, r1, #0
_0800175C:
	str r1, [r2, #0x28]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08001764
FUN_08001764: @ 0x08001764
	push {lr}
	adds r2, r0, #0
	adds r0, #0xa7
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _08001774
	rsbs r1, r1, #0
_08001774:
	str r1, [r2, #0x2c]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0800177C
FUN_0800177C: @ 0x0800177C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	mov r8, r0
	adds r4, r1, #0
	adds r6, r2, #0
	ldr r5, _080017B4 @ => 0x08059DA8
	lsls r4, r4, #3
	adds r0, r4, r5
	ldr r0, [r0]
	adds r1, r6, #0
	bl FUN_0802C314
	mov r1, r8
	str r0, [r1, #0x30]
	adds r5, #4
	adds r4, r4, r5
	ldr r0, [r4]
	adds r1, r6, #0
	bl FUN_0802C314
	mov r1, r8
	str r0, [r1, #0x34]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080017B4: .4byte ROMREF_08059DA8

	thumb_func_start FUN_080017B8
FUN_080017B8: @ 0x080017B8
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, #0xa9
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r3, [r0]
	movs r2, #0xd
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r1
	strb r2, [r0]
	bx lr
	.align 2, 0

	thumb_func_start FUN_080017D4
FUN_080017D4: @ 0x080017D4
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r0, [r2, #0x12]
	cmp r0, r1
	bls _080017F0
	adds r0, r2, #0
	adds r0, #0xa7
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
	b _080017FC
_080017F0:
	adds r2, #0xa7
	ldrb r1, [r2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_080017FC:
	pop {r0}
	bx r0

	thumb_func_start FUN_08001800
FUN_08001800: @ 0x08001800
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r1, [r0, #0x38]
	str r2, [r0, #0x3c]
	adds r3, #1
	adds r0, #0x40
	strh r3, [r0]
	bx lr

	thumb_func_start FUN_08001810
FUN_08001810: @ 0x08001810
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	str r1, [r0, #0x38]
	str r2, [r0, #0x3c]
	adds r3, #1
	adds r0, #0x40
	strh r3, [r0]
	bx lr

	thumb_func_start FUN_08001824
FUN_08001824: @ 0x08001824
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r1, [r4, #0xc]
	ldrb r2, [r4, #0x12]
	ldr r3, [r4, #0x14]
	mov r0, sp
	bl FUN_08001030
	ldr r0, [sp]
	str r0, [r4, #0x28]
	ldr r0, [sp, #4]
	str r0, [r4, #0x2c]
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08001848
FUN_08001848: @ 0x08001848
	movs r1, #0
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	str r1, [r0, #0x28]
	str r1, [r0, #0x2c]
	bx lr

	thumb_func_start FUN_08001854
FUN_08001854: @ 0x08001854
	push {lr}
	adds r3, r0, #0
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _08001896
	ldr r0, _08001880 @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08001884
	adds r0, r3, #0
	adds r0, #0xa9
	ldrb r1, [r0]
	lsrs r1, r1, #4
	lsls r1, r1, #4
	adds r0, r2, #0
	movs r2, #0x10
	bl FUN_0801579C
	b _08001896
	.align 2, 0
_08001880: .4byte gUnk_03004374
_08001884:
	adds r0, r3, #0
	adds r0, #0xa9
	ldrb r1, [r0]
	lsrs r1, r1, #4
	lsls r1, r1, #4
	adds r0, r2, #0
	movs r2, #0x10
	bl FUN_080157D8
_08001896:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0800189C
FUN_0800189C: @ 0x0800189C
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r3, r1, #1
	adds r3, r3, r1
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r0, #0xe5
	strb r2, [r0]
	bx lr
	.align 2, 0

	thumb_func_start FUN_080018B0
FUN_080018B0: @ 0x080018B0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r3, r1, #1
	adds r3, r3, r1
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r0, #0xe6
	strb r2, [r0]
	bx lr
	.align 2, 0

	thumb_func_start FUN_080018C4
FUN_080018C4: @ 0x080018C4
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, #0xe4
	ldrb r2, [r0]
	movs r1, #2
	orrs r1, r2
	strb r1, [r0]
	bx lr

	thumb_func_start FUN_080018DC
FUN_080018DC: @ 0x080018DC
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, #0xe4
	ldrb r2, [r0]
	movs r1, #0xfd
	ands r1, r2
	strb r1, [r0]
	bx lr

	thumb_func_start FUN_080018F4
FUN_080018F4: @ 0x080018F4
	push {r4, lr}
	adds r4, r0, #0
	lsls r2, r2, #0x18
	lsrs r0, r2, #0x18
	adds r3, r4, #0
	adds r3, #0xb4
	str r1, [r3]
	adds r2, r4, #0
	adds r2, #0xb0
	str r1, [r2]
	cmp r1, #0
	beq _08001926
	lsls r0, r0, #1
	ldr r1, [r3]
	adds r1, r1, r0
	str r1, [r3]
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
	adds r0, r4, #0
	bl FUN_08002528
	adds r0, r4, #0
	bl FUN_0800282C
_08001926:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_0800192C
FUN_0800192C: @ 0x0800192C
	push {r4, lr}
	adds r4, r0, #0
	lsls r3, r3, #0x18
	adds r0, #0xb4
	lsrs r3, r3, #0x17
	adds r2, r2, r3
	str r2, [r0]
	subs r0, #4
	str r2, [r0]
	adds r2, r4, #0
	adds r2, #0xac
	ldr r0, [r2]
	cmp r0, r1
	beq _0800195A
	str r1, [r2]
	adds r1, r4, #0
	adds r1, #0xba
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
_0800195A:
	adds r0, r4, #0
	bl FUN_08002528
	adds r0, r4, #0
	bl FUN_0800282C
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_0800196C
FUN_0800196C: @ 0x0800196C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	adds r0, #0xb4
	ldr r0, [r0]
	lsrs r1, r1, #0x17
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0xb0
	str r0, [r1]
	adds r0, r4, #0
	bl FUN_08002528
	adds r0, r4, #0
	bl FUN_0800282C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08001994
FUN_08001994: @ 0x08001994
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, #0xe4
	ldrb r2, [r0]
	movs r1, #4
	orrs r1, r2
	strb r1, [r0]
	bx lr

	thumb_func_start FUN_080019AC
FUN_080019AC: @ 0x080019AC
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, #0xe4
	ldrb r2, [r0]
	movs r1, #0xfb
	ands r1, r2
	strb r1, [r0]
	bx lr

	thumb_func_start FUN_080019C4
FUN_080019C4: @ 0x080019C4
	push {r4, r5, r6, lr}
	mov ip, r0
	movs r3, #0
	movs r6, #0
	movs r4, #0x8f
	lsls r4, r4, #1
	add r4, ip
	movs r0, #0x8c
	lsls r0, r0, #1
	add r0, ip
	movs r5, #1
_080019DA:
	ldr r2, [r0]
	cmp r2, #0
	bne _08001A08
	str r1, [r0]
	movs r3, #0xe
	movs r1, #0x8e
	lsls r1, r1, #1
	add r1, ip
	ldrb r0, [r1]
	cmp r0, #0xe
	beq _080019F8
	strb r3, [r1]
	ldrb r0, [r4]
	orrs r0, r5
	strb r0, [r4]
_080019F8:
	ldr r0, _08001A04 @ => 0x0000011D
	add r0, ip
	strb r2, [r0]
	movs r0, #1
	b _08001A12
	.align 2, 0
_08001A04: .4byte 0x0000011D
_08001A08:
	adds r0, #4
	adds r3, #1
	cmp r3, #0
	ble _080019DA
	movs r0, #0
_08001A12:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_08001A18
FUN_08001A18: @ 0x08001A18
	push {r4, r5, lr}
	movs r3, #0
	movs r4, #0
	movs r5, #0x8c
	lsls r5, r5, #1
	adds r2, r0, r5
_08001A24:
	ldr r0, [r2]
	cmp r0, r1
	bne _08001A2E
	str r4, [r2]
	b _08001A36
_08001A2E:
	adds r2, #4
	adds r3, #1
	cmp r3, #0
	ble _08001A24
_08001A36:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_08001A3C
FUN_08001A3C: @ 0x08001A3C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r2, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	bl FUN_08001AE0
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r5, r0
	bhs _08001A7C
	adds r0, r4, #0
	adds r0, #0xbb
	ldrb r1, [r0]
	lsls r1, r1, #1
	adds r0, r2, #0
	adds r0, #0xc
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r1, #0xc
	adds r1, r2, r1
	lsls r0, r5, #1
	adds r0, #0xa
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	str r0, [r6]
	movs r0, #1
	ldrsb r0, [r1, r0]
	str r0, [r6, #4]
	movs r0, #1
	b _08001A7E
_08001A7C:
	movs r0, #0
_08001A7E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_08001A84
FUN_08001A84: @ 0x08001A84
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	bl FUN_08001AE0
	adds r1, r0, #0
	adds r0, r5, #0
	adds r2, r4, #0
	adds r3, r6, #0
	bl FUN_080031F0
	cmp r0, #0
	bne _08001AA8
	movs r0, #0
	b _08001AAA
_08001AA8:
	movs r0, #1
_08001AAA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_08001AB0
FUN_08001AB0: @ 0x08001AB0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	adds r6, r3, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	bl FUN_08001AE8
	adds r1, r0, #0
	adds r0, r5, #0
	adds r2, r4, #0
	adds r3, r6, #0
	bl FUN_080031F0
	cmp r0, #0
	bne _08001AD8
	movs r0, #0
	b _08001ADA
_08001AD8:
	movs r0, #1
_08001ADA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_08001AE0
FUN_08001AE0: @ 0x08001AE0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bx lr

	thumb_func_start FUN_08001AE8
FUN_08001AE8: @ 0x08001AE8
	push {lr}
	bl FUN_08001AF4
	ldr r0, [r0, #4]
	pop {r1}
	bx r1

	thumb_func_start FUN_08001AF4
FUN_08001AF4: @ 0x08001AF4
	push {r4, lr}
	mov ip, r0
	movs r0, #0x8a
	lsls r0, r0, #1
	add r0, ip
	ldrb r3, [r0]
	ldr r0, _08001B28 @ => 0x00000115
	add r0, ip
	movs r4, #0
	ldrsb r4, [r0, r4]
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	mov r0, ip
	adds r0, #0xec
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r3, r3, #2
	adds r3, r3, r0
	lsls r4, r4, #4
	ldr r0, [r3]
	adds r0, r0, r4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08001B28: .4byte 0x00000115

	thumb_func_start FUN_08001B2C
FUN_08001B2C: @ 0x08001B2C
	adds r2, r0, #0
	adds r2, #0xac
	ldr r2, [r2]
	ldr r3, [r2, #4]
	adds r0, #0xbb
	ldrb r2, [r0]
	lsls r2, r2, #1
	adds r0, r3, #0
	adds r0, #0xc
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r0, #0xc
	adds r3, r3, r0
	ldrb r0, [r3, #2]
	str r0, [r1]
	ldrb r0, [r3, #3]
	str r0, [r1, #4]
	bx lr

	thumb_func_start FUN_08001B50
FUN_08001B50: @ 0x08001B50
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r4, r2, #0x18
	lsrs r4, r4, #0x18
	adds r1, r4, #0
	bl FUN_08001AF4
	ldr r2, [r0, #4]
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r0, #0xe4
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	bne _08001B82
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08001B9C
_08001B82:
	adds r0, r5, #0
	adds r0, #0xbb
	ldrb r0, [r0]
	subs r0, #1
	cmp r0, #0
	bge _08001BA2
	cmp r3, #0
	beq _08001B98
	ldrh r0, [r2, #6]
	subs r0, #1
	b _08001BA2
_08001B98:
	movs r0, #0
	b _08001BA2
_08001B9C:
	adds r0, r5, #0
	adds r0, #0xbb
	ldrb r0, [r0]
_08001BA2:
	lsls r1, r0, #1
	adds r0, r2, #0
	adds r0, #0xc
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0xc
	adds r0, r2, r0
	ldrb r1, [r0, #2]
	str r1, [r6]
	ldrb r0, [r0, #3]
	str r0, [r6, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08001BC0
FUN_08001BC0: @ 0x08001BC0
	adds r1, r0, #0
	adds r1, #0xac
	ldr r3, [r1]
	ldr r2, [r3, #4]
	adds r0, #0xbb
	ldrb r1, [r0]
	lsls r1, r1, #1
	adds r0, r2, #0
	adds r0, #0xc
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, r0, r2
	ldrh r1, [r0, #0x10]
	ldr r0, [r3]
	adds r0, r0, r1
	bx lr

	thumb_func_start FUN_08001BE0
FUN_08001BE0: @ 0x08001BE0
	adds r2, r0, #0
	adds r2, #0xa6
	ldrh r2, [r2]
	lsls r2, r2, #0x17
	lsrs r2, r2, #0x17
	str r2, [r1]
	adds r0, #0xa4
	ldrb r0, [r0]
	str r0, [r1, #4]
	bx lr

	thumb_func_start FUN_08001BF4
FUN_08001BF4: @ 0x08001BF4
	push {lr}
	ldr r2, [r1, #0x1c]
	ldr r1, [r1, #0x18]
	bl FUN_08001C08
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08001C08
FUN_08001C08: @ 0x08001C08
	push {r4, r5, r6, lr}
	sub sp, #0x18
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	adds r0, #0x18
	mov r1, sp
	bl FUN_0802C3F8
	add r0, sp, #8
	add r4, sp, #0x10
	adds r1, r4, #0
	bl FUN_0802C3F8
	ldr r1, [sp, #0x10]
	ldr r0, [sp]
	subs r5, r1, r0
	ldr r1, [r4, #4]
	ldr r0, [sp, #4]
	subs r6, r1, r0
	adds r1, r6, #0
	adds r0, r5, #0
	bl FUN_0802C4C4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08001C44
FUN_08001C44: @ 0x08001C44
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r5, _08001CB4 @ => 0x03004398
	ldr r0, [r5]
	adds r1, #0xd4
	mov r2, sp
	bl FUN_08053908
	ldr r0, [r5]
	adds r4, #0xcc
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
	str r0, [sp, #0x20]
	ldr r0, [r5, #4]
	ldr r1, [sp, #4]
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [sp, #0x24]
	movs r1, #0x1a
	ldrsh r0, [r6, r1]
	str r0, [sp, #0x18]
	movs r1, #0x1e
	ldrsh r0, [r6, r1]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x18]
	subs r0, r0, r1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x1c]
	subs r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	bl FUN_0802C4C4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08001CB4: .4byte gUnk_03004398

	thumb_func_start FUN_08001CB8
FUN_08001CB8: @ 0x08001CB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r1, #0
	adds r0, #0x18
	mov r1, sp
	bl FUN_0802C3F8
	adds r4, #0x18
	add r5, sp, #8
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_0802C3F8
	ldr r1, [sp]
	ldr r0, [sp, #8]
	subs r6, r1, r0
	ldr r1, [sp, #4]
	ldr r0, [r5, #4]
	subs r7, r1, r0
	adds r1, r7, #0
	adds r0, r6, #0
	bl FUN_0802C4C4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08001CF4
FUN_08001CF4: @ 0x08001CF4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	mov r8, r0
	adds r4, r1, #0
	adds r6, r2, #0
	ldr r5, _08001D2C @ => 0x08059DA8
	lsls r4, r4, #3
	adds r0, r4, r5
	ldr r0, [r0]
	adds r1, r6, #0
	bl FUN_0802C314
	mov r1, r8
	str r0, [r1]
	adds r5, #4
	adds r4, r4, r5
	ldr r0, [r4]
	adds r1, r6, #0
	bl FUN_0802C314
	mov r1, r8
	str r0, [r1, #4]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08001D2C: .4byte ROMREF_08059DA8

	thumb_func_start FUN_08001D30
FUN_08001D30: @ 0x08001D30
	push {r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r1, [sp, #0xc]
	adds r0, r1, r3
	cmp r5, r0
	ble _08001D54
	adds r0, r1, r2
	cmp r4, r0
	ble _08001D48
	movs r1, #7
	b _08001D84
_08001D48:
	subs r0, r2, r1
	movs r1, #0
	cmp r4, r0
	bge _08001D84
	movs r1, #1
	b _08001D84
_08001D54:
	subs r0, r3, r1
	cmp r5, r0
	bge _08001D70
	adds r0, r1, r2
	cmp r4, r0
	ble _08001D64
	movs r1, #5
	b _08001D84
_08001D64:
	subs r0, r2, r1
	movs r1, #4
	cmp r4, r0
	bge _08001D84
	movs r1, #3
	b _08001D84
_08001D70:
	adds r0, r1, r2
	cmp r4, r0
	ble _08001D7A
	movs r1, #6
	b _08001D84
_08001D7A:
	subs r0, r2, r1
	movs r1, #8
	cmp r4, r0
	bge _08001D84
	movs r1, #2
_08001D84:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start FUN_08001D8C
FUN_08001D8C: @ 0x08001D8C
	push {lr}
	movs r3, #0
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r1, r0, r2
	adds r2, r3, #0
_08001D98:
	ldr r0, [r1]
	cmp r0, #0
	beq _08001DA4
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08001DA4:
	adds r1, #4
	subs r2, #1
	cmp r2, #0
	bge _08001D98
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08001DB4
FUN_08001DB4: @ 0x08001DB4
	push {r4, r5, r6, r7, lr}
	mov ip, r2
	adds r7, r3, #0
	ldr r2, [sp, #0x14]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	movs r2, #0
	ldr r0, _08001E0C @ => 0x03002C40
	ldr r1, [r0]
	cmp r1, #0
	beq _08001E02
	cmp r2, r4
	bhs _08001E02
	adds r6, r3, #0
_08001DD8:
	ldr r3, [r1]
	ldrh r0, [r1, #8]
	cmp r0, r6
	bne _08001DF8
	ldrh r0, [r1, #0xa]
	cmp r0, r5
	beq _08001DEC
	mov r0, ip
	cmp r0, #1
	bne _08001DF8
_08001DEC:
	lsls r0, r2, #2
	adds r0, r0, r7
	str r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_08001DF8:
	adds r1, r3, #0
	cmp r1, #0
	beq _08001E02
	cmp r2, r4
	blo _08001DD8
_08001E02:
	adds r0, r2, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08001E0C: .4byte gUnk_03002C40

	thumb_func_start FUN_08001E10
FUN_08001E10: @ 0x08001E10
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r2
	mov ip, r3
	ldr r2, [sp, #0x18]
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	movs r3, #0
	ldr r0, _08001E7C @ => 0x03002C40
	ldr r2, [r0]
	cmp r2, #0
	beq _08001E70
	cmp r3, r5
	bhs _08001E70
	adds r7, r4, #0
	adds r6, r1, #0
_08001E3A:
	ldr r4, [r2]
	ldrh r0, [r2, #8]
	cmp r0, r7
	bne _08001E66
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08001E66
	ldrh r0, [r2, #0xa]
	cmp r0, r6
	beq _08001E5A
	mov r0, r8
	cmp r0, #1
	bne _08001E66
_08001E5A:
	lsls r0, r3, #2
	add r0, ip
	str r2, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08001E66:
	adds r2, r4, #0
	cmp r2, #0
	beq _08001E70
	cmp r3, r5
	blo _08001E3A
_08001E70:
	adds r0, r3, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08001E7C: .4byte gUnk_03002C40

	thumb_func_start FUN_08001E80
FUN_08001E80: @ 0x08001E80
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	movs r1, #0
	ldr r0, _08001EB8 @ => 0x03002C40
	ldr r2, [r0]
	cmp r2, #0
	beq _08001EB0
	adds r5, r3, #0
_08001E96:
	ldr r3, [r2]
	ldrh r0, [r2, #8]
	cmp r0, r5
	bne _08001EAA
	ldrh r0, [r2, #0xa]
	cmp r0, r4
	bne _08001EAA
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08001EAA:
	adds r2, r3, #0
	cmp r2, #0
	bne _08001E96
_08001EB0:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08001EB8: .4byte gUnk_03002C40

	thumb_func_start FUN_08001EBC
FUN_08001EBC: @ 0x08001EBC
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r1, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r1, r0
	cmp r1, #0
	beq _08001EF8
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	str r0, [sp]
	movs r2, #0x1e
	ldrsh r0, [r4, r2]
	str r0, [sp, #4]
	ldr r0, _08001EF4 @ => 0x03004398
	ldr r0, [r0]
	adds r2, r4, #0
	adds r2, #0x68
	mov r1, sp
	bl FUN_08053840
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x6c]
	str r0, [r4, #0x70]
	str r1, [r4, #0x74]
	b _08001F04
	.align 2, 0
_08001EF4: .4byte gUnk_03004398
_08001EF8:
	str r1, [r4, #0x68]
	movs r2, #0x1e
	ldrsh r0, [r4, r2]
	str r0, [r4, #0x6c]
	str r1, [r4, #0x70]
	str r0, [r4, #0x74]
_08001F04:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_08001F0C
FUN_08001F0C: @ 0x08001F0C
	push {lr}
	movs r1, #0
	ldrh r0, [r0, #8]
	cmp r0, #0
	bne _08001F18
	movs r1, #1
_08001F18:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08001F20
FUN_08001F20: @ 0x08001F20
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r3, r1, #0
	ldrh r0, [r2, #8]
	cmp r0, #0
	bne _08001F38
	adds r0, r2, #0
	bl FUN_080232BC
	b _08001F6E
_08001F38:
	cmp r0, #5
	bne _08001F44
	adds r0, r2, #0
	bl FUN_08039EB0
	b _08001F6E
_08001F44:
	adds r0, r2, #0
	adds r0, #0xd8
	ldrh r1, [r0]
	cmp r3, r1
	beq _08001F6E
	strh r3, [r0]
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
	ldr r1, _08001F74 @ => 0xFFBFFFFF
	ands r0, r1
	str r0, [r2, #0xc]
_08001F6E:
	pop {r0}
	bx r0
	.align 2, 0
_08001F74: .4byte 0xFFBFFFFF

	thumb_func_start FUN_08001F78
FUN_08001F78: @ 0x08001F78
	ldr r1, [r0, #0xc]
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #0xc]
	bx lr

	thumb_func_start FUN_08001F84
FUN_08001F84: @ 0x08001F84
	push {lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _08001FAC @ => 0x0000011D
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, r1
	beq _08001FA6
	strb r1, [r2]
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_08001FA6:
	pop {r0}
	bx r0
	.align 2, 0
_08001FAC: .4byte 0x0000011D

	thumb_func_start FUN_08001FB0
FUN_08001FB0: @ 0x08001FB0
	push {lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, r1
	beq _08001FD4
	strb r1, [r2]
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
_08001FD4:
	ldr r0, _08001FE0 @ => 0x0000011D
	adds r1, r3, r0
	movs r0, #0
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08001FE0: .4byte 0x0000011D

	thumb_func_start FUN_08001FE4
FUN_08001FE4: @ 0x08001FE4
	movs r2, #0xb3
	lsls r2, r2, #1
	adds r0, r0, r2
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start FUN_08001FF0
FUN_08001FF0: @ 0x08001FF0
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r0, [r2, #0x12]
	cmp r0, r1
	beq _0800200E
	strb r1, [r2, #0x12]
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
_0800200E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08002014
FUN_08002014: @ 0x08002014
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r0, [r2, #0x12]
	cmp r0, r1
	beq _08002032
	strb r1, [r2, #0x12]
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
_08002032:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08002038
FUN_08002038: @ 0x08002038
	ldr r2, [r0, #0xc]
	orrs r2, r1
	str r2, [r0, #0xc]
	bx lr

	thumb_func_start FUN_08002040
FUN_08002040: @ 0x08002040
	ldr r2, [r0, #0xc]
	bics r2, r1
	str r2, [r0, #0xc]
	bx lr

	thumb_func_start FUN_08002048
FUN_08002048: @ 0x08002048
	push {lr}
	ldr r0, [r0, #0xc]
	ands r0, r1
	cmp r0, r1
	beq _08002056
	movs r0, #0
	b _08002058
_08002056:
	movs r0, #1
_08002058:
	pop {r1}
	bx r1

	thumb_func_start FUN_0800205C
FUN_0800205C: @ 0x0800205C
	push {lr}
	adds r0, #0xa7
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _0800206C
	movs r0, #0
	b _0800206E
_0800206C:
	movs r0, #1
_0800206E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08002074
FUN_08002074: @ 0x08002074
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r1, [r4, #0xc]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08002120
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r1, r0
	cmp r1, #0
	beq _0800209C
	ldr r0, _0800210C @ => 0x03004398
	ldr r0, [r0]
	adds r1, r4, #0
	adds r1, #0x90
	movs r2, #0x10
	bl FUN_08049778
_0800209C:
	ldrh r0, [r4, #8]
	ldr r5, _08002110 @ => 0x0000FFFF
	cmp r0, r5
	bne _080020A6
	b _0800225C
_080020A6:
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _080020B2
	adds r0, r4, #0
	bl _call_via_r1
_080020B2:
	adds r0, r4, #0
	bl FUN_0803ED70
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bge _080020C8
	ldrb r1, [r4, #0x10]
	ldrb r2, [r4, #0x11]
	movs r0, #0
	bl FUN_08009B9C
_080020C8:
	ldrh r0, [r4, #8]
	adds r1, r5, #0
	orrs r1, r0
	strh r1, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xa5
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _080020E2
	cmp r0, #3
	bne _080020E8
_080020E2:
	adds r0, r4, #0
	bl FUN_08003EC4
_080020E8:
	ldr r0, _08002114 @ => 0x030017EC
	ldr r0, [r0]
	cmp r0, #1
	bne _080020F6
	adds r0, r4, #0
	bl FUN_08001170
_080020F6:
	ldr r1, _08002118 @ => 0x03002C40
	ldr r0, [r1, #4]
	cmp r0, r4
	bne _08002102
	ldr r0, [r4, #4]
	str r0, [r1, #4]
_08002102:
	ldr r0, _0800211C @ => 0x030015DC
	adds r2, r4, #0
	bl FUN_08028FDC
	b _0800225C
	.align 2, 0
_0800210C: .4byte gUnk_03004398
_08002110: .4byte 0x0000FFFF
_08002114: .4byte gUnk_030017EC
_08002118: .4byte gUnk_03002C40
_0800211C: .4byte gUnk_030015DC
_08002120:
	adds r0, r4, #0
	bl FUN_08000C98
	ldr r5, [r4, #0xc]
	movs r0, #0x20
	ands r0, r5
	cmp r0, #0
	beq _0800215C
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r5
	cmp r0, #0
	beq _0800214C
	movs r0, #0x80
	lsls r0, r0, #0x14
	ands r0, r5
	cmp r0, #0
	bne _0800215C
	adds r0, r4, #0
	bl FUN_0803EF24
	b _0800215C
_0800214C:
	movs r0, #0x80
	lsls r0, r0, #0x14
	ands r0, r5
	cmp r0, #0
	beq _0800215C
	adds r0, r4, #0
	bl FUN_0803EF3C
_0800215C:
	ldr r0, _08002234 @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08002240
	ldr r0, _08002238 @ => 0x00001008
	ands r0, r5
	cmp r0, #0
	beq _08002240
	adds r0, r4, #0
	adds r0, #0x40
	ldrh r0, [r0]
	cmp r0, #0
	beq _08002182
	adds r0, r4, #0
	bl FUN_08003180
_08002182:
	ldr r1, [r4, #0x64]
	cmp r1, #0
	beq _0800218E
	adds r0, r4, #0
	bl _call_via_r1
_0800218E:
	ldr r2, [r4, #0x50]
	cmp r2, #0
	beq _080021B4
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	bne _080021B4
	ldr r0, _0800223C @ => 0x0300317C
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080021B4
	adds r0, r4, #0
	bl _call_via_r2
	ldr r5, [r4, #0xc]
_080021B4:
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r5
	cmp r0, #0
	bne _0800225C
	movs r0, #0x80
	lsls r0, r0, #0x12
	ands r0, r5
	cmp r0, #0
	bne _080021FC
	adds r0, r4, #0
	bl FUN_08002264
	adds r0, r4, #0
	adds r0, #0xd2
	ldrh r0, [r0]
	cmp r0, #0
	beq _080021DE
	adds r0, r4, #0
	bl FUN_08003F40
_080021DE:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080021F0
	adds r0, r4, #0
	bl FUN_08002B2C
_080021F0:
	adds r0, r4, #0
	bl FUN_080038D4
	adds r0, r4, #0
	bl FUN_08003118
_080021FC:
	ldr r0, _08002234 @ => 0x03004374
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08002248
	cmp r6, #1
	bne _0800225C
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08002220
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x24]
	str r0, [r4, #0x18]
	str r1, [r4, #0x1c]
_08002220:
	movs r0, #0x80
	lsls r0, r0, #0x12
	ands r0, r5
	cmp r0, #0
	bne _08002248
	adds r0, r4, #0
	bl FUN_08003D2C
	b _08002248
	.align 2, 0
_08002234: .4byte gUnk_03004374
_08002238: .4byte 0x00001008
_0800223C: .4byte gUnk_0300317C
_08002240:
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r1, [r4, #0x24]
_08002248:
	cmp r6, #1
	bne _0800225C
	movs r0, #0x80
	lsls r0, r0, #0x17
	ands r5, r0
	cmp r5, #0
	bne _0800225C
	adds r0, r4, #0
	bl FUN_08001170
_0800225C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08002264
FUN_08002264: @ 0x08002264
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08002278
	b _0800251E
_08002278:
	adds r0, r4, #0
	adds r0, #0xb8
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	bne _08002286
	b _0800251E
_08002286:
	subs r0, r1, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08002292
	b _0800251E
_08002292:
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r3, [r2]
	cmp r3, #0
	beq _0800229E
	b _080023E8
_0800229E:
	adds r2, #0xb
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r0, [r0, #4]
	adds r5, r0, #0
	ldrb r0, [r2]
	adds r7, r1, #0
	ldrh r1, [r5, #6]
	cmp r0, r1
	blo _080022C6
	strb r3, [r2]
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r4, #0xc]
_080022C6:
	ldrh r1, [r5, #6]
	subs r0, r1, #1
	ldrb r2, [r2]
	cmp r0, r2
	beq _080022D4
	cmp r1, #1
	bne _080022DE
_080022D4:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r4, #0xc]
_080022DE:
	adds r0, r4, #0
	adds r0, #0xb9
	ldrb r0, [r0]
	strb r0, [r6]
	adds r1, r7, #0
	ldrb r0, [r1, #0xe]
	ldrb r1, [r1, #0xf]
	cmp r0, r1
	bne _080022FC
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080022FC
	b _0800251E
_080022FC:
	adds r0, r4, #0
	bl FUN_08001AE0
	adds r6, r0, #0
	movs r2, #0xdb
	adds r2, r2, r4
	mov r8, r2
	cmp r6, #0
	bne _08002310
	b _08002504
_08002310:
	ldrb r1, [r7, #0xf]
	lsls r1, r1, #1
	adds r0, #0xc
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r1, #0xc
	adds r1, r6, r1
	adds r3, r1, #6
	ldrh r2, [r1, #6]
	adds r0, r4, #0
	adds r0, #0x88
	strh r2, [r0]
	ldrh r0, [r1, #6]
	ldrb r2, [r1, #2]
	adds r0, r0, r2
	adds r2, r4, #0
	adds r2, #0x8a
	strh r0, [r2]
	ldrh r2, [r3, #2]
	adds r0, r4, #0
	adds r0, #0x8c
	strh r2, [r0]
	ldrh r0, [r3, #2]
	ldrb r2, [r1, #3]
	adds r0, r0, r2
	adds r2, r4, #0
	adds r2, #0x8e
	strh r0, [r2]
	ldrh r2, [r1, #6]
	adds r0, r4, #0
	adds r0, #0x9c
	strh r2, [r0]
	ldrh r0, [r1, #6]
	ldrb r2, [r1, #2]
	adds r0, r0, r2
	adds r2, r4, #0
	adds r2, #0x9e
	strh r0, [r2]
	ldrh r2, [r3, #2]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r2, [r0]
	ldrh r0, [r3, #2]
	ldrb r2, [r1, #3]
	adds r0, r0, r2
	adds r2, r4, #0
	adds r2, #0xa2
	strh r0, [r2]
	ldrb r0, [r6, #0xa]
	lsls r0, r0, #1
	adds r0, #0xa
	adds r1, r1, r0
	movs r5, #0
	movs r0, #0x7b
	adds r0, r0, r4
	mov ip, r0
	ldrb r2, [r6, #0xb]
	cmp r5, r2
	bge _080023C8
	adds r2, r1, #0
	movs r3, #0
_0800238A:
	adds r0, r4, #0
	adds r0, #0x7c
	adds r0, r0, r3
	ldrb r1, [r2]
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x7e
	adds r0, r0, r3
	ldrb r1, [r2, #2]
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x7d
	adds r0, r0, r3
	ldrb r1, [r2, #1]
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x7f
	adds r0, r0, r3
	ldrb r1, [r2, #3]
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x80
	adds r0, r0, r3
	ldrb r1, [r2, #4]
	strb r1, [r0]
	adds r2, #6
	adds r3, #6
	adds r5, #1
	ldrb r0, [r6, #0xb]
	cmp r5, r0
	blt _0800238A
_080023C8:
	ldrb r5, [r6, #0xb]
	cmp r5, #1
	ble _080023D0
	b _080024FE
_080023D0:
	movs r1, #0
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, #0x80
	adds r0, r0, r4
_080023DC:
	strb r1, [r0]
	adds r0, #6
	adds r5, #1
	cmp r5, #1
	ble _080023DC
	b _080024FE
_080023E8:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080023F6
	b _0800251E
_080023F6:
	adds r0, r3, #2
	str r0, [r2]
	adds r0, r4, #0
	bl FUN_08002528
	adds r5, r4, #0
	adds r5, #0xac
	ldrb r0, [r5, #0xe]
	ldrb r1, [r5, #0xf]
	cmp r0, r1
	bne _08002418
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08002418
	b _0800251E
_08002418:
	adds r0, r4, #0
	bl FUN_08001AE0
	adds r6, r0, #0
	movs r2, #0xdb
	adds r2, r2, r4
	mov r8, r2
	cmp r6, #0
	beq _08002504
	ldrb r1, [r5, #0xf]
	lsls r1, r1, #1
	adds r0, #0xc
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r1, #0xc
	adds r1, r6, r1
	adds r3, r1, #6
	ldrh r2, [r1, #6]
	adds r0, r4, #0
	adds r0, #0x88
	strh r2, [r0]
	ldrh r0, [r1, #6]
	ldrb r2, [r1, #2]
	adds r0, r0, r2
	adds r2, r4, #0
	adds r2, #0x8a
	strh r0, [r2]
	ldrh r2, [r3, #2]
	adds r0, r4, #0
	adds r0, #0x8c
	strh r2, [r0]
	ldrh r0, [r3, #2]
	ldrb r2, [r1, #3]
	adds r0, r0, r2
	adds r2, r4, #0
	adds r2, #0x8e
	strh r0, [r2]
	ldrh r2, [r1, #6]
	adds r0, r4, #0
	adds r0, #0x9c
	strh r2, [r0]
	ldrh r0, [r1, #6]
	ldrb r2, [r1, #2]
	adds r0, r0, r2
	adds r2, r4, #0
	adds r2, #0x9e
	strh r0, [r2]
	ldrh r2, [r3, #2]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r2, [r0]
	ldrh r0, [r3, #2]
	ldrb r2, [r1, #3]
	adds r0, r0, r2
	adds r2, r4, #0
	adds r2, #0xa2
	strh r0, [r2]
	ldrb r0, [r6, #0xa]
	lsls r0, r0, #1
	adds r0, #0xa
	adds r1, r1, r0
	movs r5, #0
	movs r0, #0x7b
	adds r0, r0, r4
	mov ip, r0
	ldrb r2, [r6, #0xb]
	cmp r5, r2
	bge _080024E2
	adds r2, r1, #0
	movs r3, #0
_080024A4:
	adds r0, r4, #0
	adds r0, #0x7c
	adds r0, r0, r3
	ldrb r1, [r2]
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x7e
	adds r0, r0, r3
	ldrb r1, [r2, #2]
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x7d
	adds r0, r0, r3
	ldrb r1, [r2, #1]
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x7f
	adds r0, r0, r3
	ldrb r1, [r2, #3]
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x80
	adds r0, r0, r3
	ldrb r1, [r2, #4]
	strb r1, [r0]
	adds r2, #6
	adds r3, #6
	adds r5, #1
	ldrb r0, [r6, #0xb]
	cmp r5, r0
	blt _080024A4
_080024E2:
	ldrb r5, [r6, #0xb]
	cmp r5, #1
	bgt _080024FE
	movs r1, #0
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, #0x80
	adds r0, r0, r4
_080024F4:
	strb r1, [r0]
	adds r0, #6
	adds r5, #1
	cmp r5, #1
	ble _080024F4
_080024FE:
	ldrb r0, [r6, #0xb]
	mov r1, ip
	strb r0, [r1]
_08002504:
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08002516
	adds r0, r4, #0
	bl FUN_08002950
_08002516:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4, #0xc]
_0800251E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_08002528
FUN_08002528: @ 0x08002528
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, [r6, #0xc]
	ldr r1, _0800255C @ => 0xFFBFFFFF
	ands r0, r1
	str r0, [r6, #0xc]
	adds r5, r6, #0
	adds r5, #0xac
	ldrb r1, [r5, #4]
	ldrb r0, [r5, #5]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r1, [r5, #6]
	lsls r1, r1, #0x10
	orrs r1, r0
	ldrb r0, [r5, #7]
	lsls r4, r0, #0x18
	orrs r4, r1
	movs r7, #1
_0800254E:
	ldrb r0, [r4]
	cmp r0, #0xef
	bhi _08002560
	strb r0, [r5, #0xf]
	ldrb r0, [r4, #1]
	b _080025C8
	.align 2, 0
_0800255C: .4byte 0xFFBFFFFF
_08002560:
	ldrb r0, [r4]
	subs r0, #0xf0
	cmp r0, #0xf
	bls _0800256A
	b _0800281A
_0800256A:
	lsls r0, r0, #2
	ldr r1, _08002574 @ =_08002578
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002574: .4byte _08002578
_08002578: @ jump table
	.4byte _080027D4 @ case 0
	.4byte _08002770 @ case 1
	.4byte _08002758 @ case 2
	.4byte _0800272A @ case 3
	.4byte _08002694 @ case 4
	.4byte _08002682 @ case 5
	.4byte _0800266C @ case 6
	.4byte _0800281A @ case 7
	.4byte _0800281A @ case 8
	.4byte _08002656 @ case 9
	.4byte _08002640 @ case 10
	.4byte _0800261C @ case 11
	.4byte _080025F8 @ case 12
	.4byte _080025CE @ case 13
	.4byte _080025C6 @ case 14
	.4byte _080025B8 @ case 15
_080025B8:
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r6, #0xc]
	movs r7, #0
	b _0800281A
_080025C6:
	movs r0, #1
_080025C8:
	strb r0, [r5, #0xc]
	movs r7, #0
	b _0800281A
_080025CE:
	ldrb r1, [r5, #8]
	ldrb r0, [r5, #9]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r2, [r5, #0xa]
	lsls r2, r2, #0x10
	orrs r2, r0
	ldrb r1, [r5, #0xb]
	lsls r1, r1, #0x18
	orrs r1, r2
	ldrb r0, [r4, #1]
	lsls r0, r0, #1
	adds r1, r1, r0
	strb r1, [r5, #4]
	lsrs r0, r1, #8
	strb r0, [r5, #5]
	lsrs r0, r1, #0x10
	strb r0, [r5, #6]
	lsrs r1, r1, #0x18
	strb r1, [r5, #7]
	b _08002806
_080025F8:
	ldr r1, [r6, #0x20]
	adds r0, r6, #0
	adds r0, #0xa7
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08002610
	ldrb r0, [r4, #1]
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	asrs r0, r0, #8
	b _08002616
_08002610:
	movs r0, #1
	ldrsb r0, [r4, r0]
	lsls r0, r0, #0x10
_08002616:
	adds r0, r1, r0
	str r0, [r6, #0x20]
	b _080027E2
_0800261C:
	ldr r1, [r6, #0x24]
	adds r0, r6, #0
	adds r0, #0xa7
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _08002634
	ldrb r0, [r4, #1]
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	asrs r0, r0, #8
	b _0800263A
_08002634:
	movs r0, #1
	ldrsb r0, [r4, r0]
	lsls r0, r0, #0x10
_0800263A:
	adds r0, r1, r0
	str r0, [r6, #0x24]
	b _080027E2
_08002640:
	ldrb r0, [r4, #1]
	lsls r1, r0, #0x10
	adds r0, r6, #0
	adds r0, #0xa7
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08002652
	rsbs r1, r1, #0
_08002652:
	str r1, [r6, #0x28]
	b _080027E2
_08002656:
	ldrb r0, [r4, #1]
	lsls r1, r0, #0x10
	adds r0, r6, #0
	adds r0, #0xa7
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _08002668
	rsbs r1, r1, #0
_08002668:
	str r1, [r6, #0x2c]
	b _080027E2
_0800266C:
	ldrb r1, [r4, #1]
	movs r2, #0x94
	lsls r2, r2, #1
	adds r0, r6, r2
	ldr r0, [r0]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bl FUN_0804DE0C
	b _080027E2
_08002682:
	ldr r3, _08002690 @ => 0x0000011F
	adds r2, r6, r3
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	b _080027E2
	.align 2, 0
_08002690: .4byte 0x0000011F
_08002694:
	movs r0, #0x64
	bl FUN_0804254C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xe
	bgt _080026D0
	adds r1, r6, #0
	adds r1, #0xd8
	movs r0, #5
	strh r0, [r1]
	ldr r0, [r6, #0xc]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r6, #0xc]
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r6, #0xc]
	ldr r1, _080026CC @ => 0xFFBFFFFF
	ands r0, r1
	str r0, [r6, #0xc]
	b _080027E2
	.align 2, 0
_080026CC: .4byte 0xFFBFFFFF
_080026D0:
	cmp r0, #0x1d
	bgt _08002700
	adds r1, r6, #0
	adds r1, #0xd8
	movs r0, #6
	strh r0, [r1]
	ldr r0, [r6, #0xc]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r6, #0xc]
	movs r3, #0x8f
	lsls r3, r3, #1
	adds r2, r6, r3
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r6, #0xc]
	ldr r1, _080026FC @ => 0xFFBFFFFF
	ands r0, r1
	str r0, [r6, #0xc]
	b _080027E2
	.align 2, 0
_080026FC: .4byte 0xFFBFFFFF
_08002700:
	ldrb r1, [r5, #8]
	ldrb r0, [r5, #9]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r2, [r5, #0xa]
	lsls r2, r2, #0x10
	orrs r2, r0
	ldrb r1, [r5, #0xb]
	lsls r1, r1, #0x18
	orrs r1, r2
	ldrb r0, [r4, #1]
	lsls r0, r0, #1
	adds r1, r1, r0
	strb r1, [r5, #4]
	lsrs r0, r1, #8
	strb r0, [r5, #5]
	lsrs r0, r1, #0x10
	strb r0, [r5, #6]
	lsrs r1, r1, #0x18
	strb r1, [r5, #7]
	b _08002806
_0800272A:
	adds r1, r6, #0
	adds r1, #0xd8
	movs r0, #4
	strh r0, [r1]
	ldr r0, [r6, #0xc]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r6, #0xc]
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r6, #0xc]
	ldr r1, _08002754 @ => 0xFFBFFFFF
	ands r0, r1
	str r0, [r6, #0xc]
	b _080027E2
	.align 2, 0
_08002754: .4byte 0xFFBFFFFF
_08002758:
	adds r0, r6, #0
	bl FUN_0804279C
	ldrb r1, [r5, #4]
	ldrb r0, [r5, #5]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r1, [r5, #6]
	lsls r1, r1, #0x10
	orrs r1, r0
	ldrb r0, [r5, #7]
	b _080027A2
_08002770:
	adds r0, r6, #0
	bl FUN_0804271C
	cmp r0, #0
	beq _08002792
	ldrb r1, [r5, #4]
	ldrb r0, [r5, #5]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r1, [r5, #6]
	lsls r1, r1, #0x10
	orrs r1, r0
	ldrb r0, [r5, #7]
	lsls r0, r0, #0x18
	orrs r0, r1
	subs r0, #2
	b _080027A8
_08002792:
	ldrb r1, [r5, #8]
	ldrb r0, [r5, #9]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #0x10
	orrs r1, r0
	ldrb r0, [r5, #0xb]
_080027A2:
	lsls r0, r0, #0x18
	orrs r0, r1
	adds r0, #2
_080027A8:
	strb r0, [r5, #4]
	lsrs r1, r0, #8
	strb r1, [r5, #5]
	lsrs r1, r0, #0x10
	strb r1, [r5, #6]
	lsrs r0, r0, #0x18
	strb r0, [r5, #7]
	ldrb r1, [r5, #4]
	ldrb r0, [r5, #5]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r1, [r5, #6]
	lsls r1, r1, #0x10
	orrs r1, r0
	ldrb r0, [r5, #7]
	lsls r4, r0, #0x18
	orrs r4, r1
	ldrb r0, [r4]
	strb r0, [r5, #0xf]
	ldrb r0, [r4, #1]
	strb r0, [r5, #0xc]
	b _0800281A
_080027D4:
	ldr r2, _08002828 @ => 0x03004200
	ldrh r1, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #8]
_080027E2:
	ldrb r1, [r5, #4]
	ldrb r0, [r5, #5]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r1, [r5, #6]
	lsls r1, r1, #0x10
	orrs r1, r0
	ldrb r0, [r5, #7]
	lsls r0, r0, #0x18
	orrs r0, r1
	adds r0, #2
	strb r0, [r5, #4]
	lsrs r1, r0, #8
	strb r1, [r5, #5]
	lsrs r1, r0, #0x10
	strb r1, [r5, #6]
	lsrs r0, r0, #0x18
	strb r0, [r5, #7]
_08002806:
	ldrb r1, [r5, #4]
	ldrb r0, [r5, #5]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r1, [r5, #6]
	lsls r1, r1, #0x10
	orrs r1, r0
	ldrb r0, [r5, #7]
	lsls r4, r0, #0x18
	orrs r4, r1
_0800281A:
	cmp r7, #1
	bne _08002820
	b _0800254E
_08002820:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002828: .4byte gUnk_03004200

	thumb_func_start FUN_0800282C
FUN_0800282C: @ 0x0800282C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xac
	ldrb r0, [r5, #0xe]
	ldrb r1, [r5, #0xf]
	cmp r0, r1
	bne _08002848
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08002848
	b _0800294A
_08002848:
	adds r0, r4, #0
	bl FUN_08001AE0
	adds r6, r0, #0
	adds r7, r4, #0
	adds r7, #0xdb
	cmp r6, #0
	beq _08002932
	ldrb r1, [r5, #0xf]
	lsls r1, r1, #1
	adds r0, #0xc
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r1, #0xc
	adds r1, r6, r1
	adds r3, r1, #6
	ldrh r2, [r1, #6]
	adds r0, r4, #0
	adds r0, #0x88
	strh r2, [r0]
	ldrh r0, [r1, #6]
	ldrb r2, [r1, #2]
	adds r0, r0, r2
	adds r2, r4, #0
	adds r2, #0x8a
	strh r0, [r2]
	ldrh r2, [r3, #2]
	adds r0, r4, #0
	adds r0, #0x8c
	strh r2, [r0]
	ldrh r0, [r3, #2]
	ldrb r2, [r1, #3]
	adds r0, r0, r2
	adds r2, r4, #0
	adds r2, #0x8e
	strh r0, [r2]
	ldrh r2, [r1, #6]
	adds r0, r4, #0
	adds r0, #0x9c
	strh r2, [r0]
	ldrh r0, [r1, #6]
	ldrb r2, [r1, #2]
	adds r0, r0, r2
	adds r2, r4, #0
	adds r2, #0x9e
	strh r0, [r2]
	ldrh r2, [r3, #2]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r2, [r0]
	ldrh r0, [r3, #2]
	ldrb r2, [r1, #3]
	adds r0, r0, r2
	adds r2, r4, #0
	adds r2, #0xa2
	strh r0, [r2]
	ldrb r0, [r6, #0xa]
	lsls r0, r0, #1
	adds r0, #0xa
	adds r1, r1, r0
	movs r5, #0
	movs r0, #0x7b
	adds r0, r0, r4
	mov ip, r0
	ldrb r2, [r6, #0xb]
	cmp r5, r2
	bge _08002910
	adds r2, r1, #0
	movs r3, #0
_080028D2:
	adds r0, r4, #0
	adds r0, #0x7c
	adds r0, r0, r3
	ldrb r1, [r2]
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x7e
	adds r0, r0, r3
	ldrb r1, [r2, #2]
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x7d
	adds r0, r0, r3
	ldrb r1, [r2, #1]
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x7f
	adds r0, r0, r3
	ldrb r1, [r2, #3]
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x80
	adds r0, r0, r3
	ldrb r1, [r2, #4]
	strb r1, [r0]
	adds r2, #6
	adds r3, #6
	adds r5, #1
	ldrb r0, [r6, #0xb]
	cmp r5, r0
	blt _080028D2
_08002910:
	ldrb r5, [r6, #0xb]
	cmp r5, #1
	bgt _0800292C
	movs r1, #0
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, #0x80
	adds r0, r0, r4
_08002922:
	strb r1, [r0]
	adds r0, #6
	adds r5, #1
	cmp r5, #1
	ble _08002922
_0800292C:
	ldrb r0, [r6, #0xb]
	mov r1, ip
	strb r0, [r1]
_08002932:
	ldrb r1, [r7]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08002942
	adds r0, r4, #0
	bl FUN_08002950
_08002942:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4, #0xc]
_0800294A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_08002950
FUN_08002950: @ 0x08002950
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
_08002960:
	mov r2, r8
	lsls r1, r2, #1
	adds r0, r1, r2
	lsls r5, r0, #2
	adds r0, r4, #0
	adds r0, #0xec
	adds r0, r0, r5
	ldr r0, [r0]
	mov sb, r1
	mov r6, r8
	adds r6, #1
	cmp r0, #0
	bne _0800297C
	b _08002B10
_0800297C:
	adds r0, r4, #0
	mov r1, r8
	bl FUN_08001AE8
	mov ip, r0
	adds r0, r4, r5
	adds r0, #0xe4
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _080029A0
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080029BC
_080029A0:
	adds r0, r4, #0
	adds r0, #0xbb
	ldrb r0, [r0]
	subs r0, #1
	cmp r0, #0
	bge _080029C2
	cmp r2, #0
	beq _080029B8
	mov r3, ip
	ldrh r0, [r3, #6]
	subs r0, #1
	b _080029C2
_080029B8:
	movs r0, #0
	b _080029C2
_080029BC:
	adds r0, r4, #0
	adds r0, #0xbb
	ldrb r0, [r0]
_080029C2:
	lsls r0, r0, #1
	mov r1, ip
	adds r1, #0xc
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #0xc
	mov r6, ip
	adds r5, r6, r0
	adds r7, r5, #6
	mov r0, r8
	cmp r0, #0
	bne _08002A04
	ldrh r1, [r5, #6]
	adds r0, r4, #0
	adds r0, #0x9c
	strh r1, [r0]
	ldrh r0, [r5, #6]
	ldrb r1, [r5, #2]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x9e
	strh r0, [r1]
	ldrh r1, [r7, #2]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldrh r0, [r7, #2]
	ldrb r2, [r5, #3]
	adds r0, r0, r2
	adds r1, r4, #0
	adds r1, #0xa2
	strh r0, [r1]
	b _08002A68
_08002A04:
	adds r2, r4, #0
	adds r2, #0x9c
	ldrh r3, [r2]
	movs r6, #0
	ldrsh r1, [r2, r6]
	ldrh r0, [r5, #6]
	mov sl, r0
	movs r6, #6
	ldrsh r0, [r5, r6]
	cmp r1, r0
	ble _08002A1C
	mov r3, sl
_08002A1C:
	strh r3, [r2]
	adds r2, r4, #0
	adds r2, #0x9e
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r3, #6
	ldrsh r0, [r5, r3]
	ldrb r6, [r5, #2]
	adds r0, r0, r6
	cmp r0, r1
	bge _08002A34
	adds r0, r1, #0
_08002A34:
	strh r0, [r2]
	adds r2, r4, #0
	adds r2, #0xa0
	ldrh r3, [r7, #2]
	movs r0, #2
	ldrsh r1, [r7, r0]
	ldrh r6, [r2]
	mov sl, r6
	movs r6, #0
	ldrsh r0, [r2, r6]
	cmp r1, r0
	ble _08002A4E
	mov r3, sl
_08002A4E:
	strh r3, [r2]
	adds r2, r4, #0
	adds r2, #0xa2
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r3, #2
	ldrsh r0, [r7, r3]
	ldrb r6, [r5, #3]
	adds r0, r0, r6
	cmp r0, r1
	bge _08002A66
	adds r0, r1, #0
_08002A66:
	strh r0, [r2]
_08002A68:
	mov r0, sb
	add r0, r8
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r0, #0xe4
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	mov r6, r8
	adds r6, #1
	cmp r0, #0
	beq _08002B10
	mov r0, ip
	ldrb r1, [r0, #2]
	adds r0, r4, #0
	adds r0, #0x88
	strh r1, [r0]
	mov r1, ip
	ldrb r0, [r1, #3]
	adds r1, r4, #0
	adds r1, #0x8a
	strh r0, [r1]
	mov r2, ip
	ldrb r1, [r2, #4]
	adds r0, r4, #0
	adds r0, #0x8c
	strh r1, [r0]
	ldrb r0, [r2, #5]
	adds r1, r4, #0
	adds r1, #0x8e
	strh r0, [r1]
	ldrb r0, [r2, #0xa]
	lsls r0, r0, #1
	adds r0, #0xa
	adds r0, r5, r0
	movs r5, #0
	ldrb r3, [r2, #0xb]
	cmp r5, r3
	bge _08002B10
	adds r2, r0, #0
	movs r3, #0
_08002ABA:
	movs r0, #4
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _08002B02
	adds r0, r4, #0
	adds r0, #0x7c
	adds r0, r0, r3
	ldrb r1, [r2]
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x7e
	adds r0, r0, r3
	ldrb r1, [r2, #2]
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x7d
	adds r0, r0, r3
	ldrb r1, [r2, #1]
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x7f
	adds r0, r0, r3
	ldrb r1, [r2, #3]
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x80
	adds r0, r0, r3
	ldrb r1, [r2, #4]
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x7b
	ldrb r0, [r1]
	cmp r0, r5
	bgt _08002B02
	adds r0, #1
	strb r0, [r1]
_08002B02:
	adds r2, #6
	adds r3, #6
	adds r5, #1
	mov r0, ip
	ldrb r0, [r0, #0xb]
	cmp r5, r0
	blt _08002ABA
_08002B10:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bhi _08002B1C
	b _08002960
_08002B1C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08002B2C
FUN_08002B2C: @ 0x08002B2C
	ldr r3, [r0, #0x28]
	ldr r1, [r0, #0x30]
	adds r3, r3, r1
	str r3, [r0, #0x28]
	ldr r2, [r0, #0x2c]
	ldr r1, [r0, #0x34]
	adds r2, r2, r1
	str r2, [r0, #0x2c]
	ldr r1, [r0, #0x18]
	adds r1, r1, r3
	str r1, [r0, #0x20]
	ldr r1, [r0, #0x1c]
	adds r1, r1, r2
	str r1, [r0, #0x24]
	bx lr
	.align 2, 0

	thumb_func_start FUN_08002B4C
FUN_08002B4C: @ 0x08002B4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r6, r0, #0
	movs r0, #0xa4
	adds r0, r0, r6
	mov r8, r0
	mov r2, r8
	ldr r1, [r2]
	ldr r2, [r2, #4]
	str r1, [sp, #0x1c]
	str r2, [sp, #0x20]
	ldr r4, [r6, #0x20]
	ldr r5, [r6, #0x24]
	ldr r3, [r6, #0xc]
	adds r0, r6, #0
	adds r0, #0xdb
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r0, r0, #0
	asrs r7, r0, #0x1f
	movs r0, #2
	ands r7, r0
	movs r0, #0x80
	lsls r0, r0, #0x17
	ands r0, r3
	cmp r0, #0
	bne _08002B94
	movs r0, #0
	b _08002E1E
_08002B94:
	adds r0, r6, #0
	adds r0, #0xd6
	ldrh r2, [r0]
	ldr r1, _08002BA8 @ => 0x0000FFFF
	mov sb, r0
	cmp r2, r1
	bne _08002BAC
	movs r0, #2
	b _08002E1E
	.align 2, 0
_08002BA8: .4byte 0x0000FFFF
_08002BAC:
	adds r0, r6, #0
	adds r0, #0xda
	ldrb r0, [r0]
	cmp r0, #0
	beq _08002BB8
	b _08002D48
_08002BB8:
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r3, r0
	cmp r3, #0
	beq _08002BCC
	asrs r0, r4, #0x10
	str r0, [sp, #0xc]
	asrs r0, r5, #0x10
	str r0, [sp, #0x10]
	b _08002C0C
_08002BCC:
	ldr r0, _08002C64 @ => 0x030042B0
	ldrb r1, [r0, #6]
	add r0, sp, #0xc
	bl FUN_08047038
	asrs r1, r4, #0x10
	ldr r0, [sp, #0xc]
	subs r1, r1, r0
	str r1, [sp, #0xc]
	asrs r2, r5, #0x10
	ldr r0, [sp, #0x10]
	subs r2, r2, r0
	str r2, [sp, #0x10]
	ldr r0, _08002C68 @ => 0x000001FF
	ands r1, r0
	lsls r1, r1, #0x10
	ldr r0, _08002C6C @ => 0xFE00FFFF
	ldr r3, [sp, #0x1c]
	ands r0, r3
	orrs r0, r1
	str r0, [sp, #0x1c]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r1, _08002C70 @ => 0xFFFFFF00
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	mov r2, r8
	str r0, [r2]
	str r1, [r2, #4]
_08002C0C:
	movs r4, #1
	adds r0, r6, #0
	adds r0, #0xdb
	ldrb r2, [r0]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _08002D00
	movs r3, #7
	mov sb, r3
	adds r5, r6, #0
	adds r5, #0xec
	str r5, [sp, #0x2c]
	movs r0, #2
	str r0, [sp, #0x24]
	add r1, sp, #0x14
	mov sl, r1
_08002C2E:
	movs r2, #0
	mov r8, r2
	mov r3, sb
	subs r3, #1
	str r3, [sp, #0x28]
	adds r4, r6, #0
	adds r4, #0xe4
	ldr r5, [sp, #0x2c]
_08002C3E:
	ldr r0, [r5]
	cmp r0, #0
	beq _08002CE8
	ldrb r0, [r4, #2]
	cmp r0, sb
	bne _08002CE8
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrb r1, [r4]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08002C74
	orrs r7, r2
	b _08002C7A
	.align 2, 0
_08002C64: .4byte gUnk_030042B0
_08002C68: .4byte 0x000001FF
_08002C6C: .4byte 0xFE00FFFF
_08002C70: .4byte 0xFFFFFF00
_08002C74:
	movs r0, #2
	rsbs r0, r0, #0
	ands r7, r0
_08002C7A:
	ldrb r1, [r4, #1]
	lsls r1, r1, #4
	mov r3, sl
	ldrb r2, [r3, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	adds r0, r6, #0
	mov r1, r8
	bl FUN_08001AF4
	ldr r3, [r0, #4]
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	add r0, sp, #0x14
	mov ip, r0
	cmp r2, #0
	bne _08002CAE
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08002CC8
_08002CAE:
	adds r0, r6, #0
	adds r0, #0xbb
	ldrb r0, [r0]
	subs r0, #1
	cmp r0, #0
	bge _08002CCE
	cmp r2, #0
	beq _08002CC4
	ldrh r0, [r3, #6]
	subs r0, #1
	b _08002CCE
_08002CC4:
	movs r0, #0
	b _08002CCE
_08002CC8:
	adds r0, r6, #0
	adds r0, #0xbb
	ldrb r0, [r0]
_08002CCE:
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r7, #0x18
	lsrs r2, r2, #0x18
	ldrh r0, [r4, #6]
	str r0, [sp]
	mov r0, ip
	str r0, [sp, #4]
	str r6, [sp, #8]
	adds r0, r3, #0
	add r3, sp, #0xc
	bl FUN_08002E48
_08002CE8:
	adds r4, #0xc
	adds r5, #0xc
	movs r1, #1
	add r8, r1
	mov r2, r8
	cmp r2, #3
	bls _08002C3E
	ldr r3, [sp, #0x28]
	mov sb, r3
	cmp r3, #0
	bge _08002C2E
	b _08002D44
_08002D00:
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08002D14
	orrs r7, r4
	b _08002D1A
_08002D14:
	movs r0, #2
	rsbs r0, r0, #0
	ands r7, r0
_08002D1A:
	adds r0, r6, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r3, [r0, #4]
	adds r0, r6, #0
	adds r0, #0xbb
	ldrb r1, [r0]
	lsls r2, r7, #0x18
	lsrs r2, r2, #0x18
	mov r5, sb
	ldrh r0, [r5]
	str r0, [sp]
	add r0, sp, #0x14
	str r0, [sp, #4]
	str r6, [sp, #8]
	adds r0, r3, #0
	add r3, sp, #0xc
	bl FUN_08002E48
	adds r4, #1
	str r4, [sp, #0x24]
_08002D44:
	ldr r4, [sp, #0x24]
	b _08002E1A
_08002D48:
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r3, r0
	cmp r3, #0
	beq _08002D5A
	asrs r0, r4, #0x10
	str r0, [sp, #0xc]
	asrs r0, r5, #0x10
	b _08002D72
_08002D5A:
	ldr r0, _08002E30 @ => 0x030042B0
	ldrb r1, [r0, #6]
	add r0, sp, #0xc
	bl FUN_08047038
	asrs r0, r4, #0x10
	ldr r1, [sp, #0xc]
	subs r0, r0, r1
	str r0, [sp, #0xc]
	asrs r0, r5, #0x10
	ldr r1, [sp, #0x10]
	subs r0, r0, r1
_08002D72:
	str r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	adds r7, r6, #0
	adds r7, #0xa6
	ldr r2, _08002E34 @ => 0x000001FF
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r7]
	ldr r0, _08002E38 @ => 0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r7]
	ldr r0, [sp, #0x10]
	adds r3, r6, #0
	adds r3, #0xa4
	strb r0, [r3]
	mov r5, sb
	ldrh r0, [r5]
	adds r5, r6, #0
	adds r5, #0xa8
	ldr r1, _08002E3C @ => 0x000003FF
	ands r1, r0
	ldrh r2, [r5]
	ldr r0, _08002E40 @ => 0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r5]
	adds r0, r6, #0
	adds r0, #0xb0
	ldrh r4, [r0]
	mov sb, r3
	cmp r4, #0
	beq _08002E18
	ldr r0, _08002E44 @ => 0x03004A20
	mov r8, r0
_08002DB8:
	adds r0, r6, #0
	adds r0, #0xdb
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08002DCE
	mov r1, r8
	ldrb r0, [r1]
	bl FUN_0803B730
_08002DCE:
	mov r2, r8
	ldrb r0, [r2]
	mov r1, sb
	bl FUN_0803B6E0
	ldrh r2, [r7]
	lsls r0, r2, #0x17
	lsrs r0, r0, #0x17
	adds r0, #0x20
	ldr r3, _08002E34 @ => 0x000001FF
	adds r1, r3, #0
	ands r0, r1
	ldr r3, _08002E38 @ => 0xFFFFFE00
	adds r1, r3, #0
	ands r2, r1
	orrs r2, r0
	strh r2, [r7]
	ldrh r2, [r5]
	lsls r1, r2, #0x16
	lsrs r1, r1, #0x16
	adds r0, r6, #0
	adds r0, #0xa7
	ldrb r0, [r0]
	lsrs r0, r0, #6
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r3, _08002E3C @ => 0x000003FF
	adds r0, r3, #0
	ands r1, r0
	ldr r3, _08002E40 @ => 0xFFFFFC00
	adds r0, r3, #0
	ands r2, r0
	orrs r2, r1
	strh r2, [r5]
	subs r4, #1
	cmp r4, #0
	bne _08002DB8
_08002E18:
	movs r4, #1
_08002E1A:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
_08002E1E:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08002E30: .4byte gUnk_030042B0
_08002E34: .4byte 0x000001FF
_08002E38: .4byte 0xFFFFFE00
_08002E3C: .4byte 0x000003FF
_08002E40: .4byte 0xFFFFFC00
_08002E44: .4byte gUnk_03004A20

	thumb_func_start FUN_08002E48
FUN_08002E48: @ 0x08002E48
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	str r3, [sp, #0x14]
	ldr r3, [sp, #0x44]
	lsls r1, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x10]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x18]
	lsrs r1, r1, #0xf
	adds r2, r0, #0
	adds r2, #0xc
	adds r2, r2, r1
	ldrh r3, [r2]
	adds r3, #0xc
	adds r3, r0, r3
	ldrb r2, [r0, #0xb]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, #0xa
	adds r1, r3, r1
	ldrb r0, [r0, #0xa]
	lsls r0, r0, #1
	adds r5, r1, r0
	ldr r0, [sp, #0x4c]
	adds r0, #0xc0
	ldr r0, [r0]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x4c]
	adds r0, #0xc4
	ldr r0, [r0]
	str r0, [sp, #0x20]
	ldrb r0, [r3]
	movs r1, #0x1f
	mov sb, r1
	mov r2, sb
	ands r2, r0
	mov sb, r2
	cmp r2, #0
	bne _08002EA8
	b _080030FE
_08002EA8:
	mov r7, sp
	movs r4, #3
	mov r8, r4
	add r6, sp, #8
	ldr r0, [sp, #0x10]
	mov sl, r0
	mov r1, sl
	ands r1, r4
	mov sl, r1
_08002EBA:
	ldr r2, [sp, #0x48]
	ldr r0, [r2]
	ldr r1, [r2, #4]
	str r0, [sp]
	str r1, [sp, #4]
	ldrb r3, [r5, #2]
	lsrs r0, r3, #6
	ldrb r1, [r5, #3]
	lsls r1, r1, #2
	orrs r1, r0
	ldr r4, [sp, #0x18]
	adds r1, r4, r1
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldr r2, _08002F38 @ => 0xFFFFFC00
	ldr r0, [r7, #4]
	ands r0, r2
	orrs r0, r1
	str r0, [r7, #4]
	lsls r0, r3, #0x1c
	lsrs r0, r0, #0x1e
	lsls r0, r0, #0x1e
	ldr r2, _08002F3C @ => 0x3FFFFFFF
	ldr r1, [sp]
	ands r1, r2
	orrs r1, r0
	lsls r3, r3, #0x1a
	lsrs r3, r3, #0x1e
	mov r0, r8
	ands r3, r0
	lsls r3, r3, #0xe
	ldr r0, _08002F40 @ => 0xFFFF3FFF
	ands r1, r0
	orrs r1, r3
	str r1, [sp]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x1e
	lsrs r1, r1, #0x1e
	add r2, sp, #8
	bl FUN_080094FC
	ldr r4, [sp]
	lsls r0, r4, #0x16
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _08002F58
	lsls r0, r4, #3
	lsrs r2, r0, #0x1f
	cmp r2, #1
	bne _08002F44
	ldrb r0, [r5]
	ldrb r1, [r5, #1]
	ands r1, r2
	lsls r1, r1, #8
	orrs r1, r0
	lsls r1, r1, #0x17
	asrs r1, r1, #0x17
	ldr r0, [sp, #8]
	adds r1, r1, r0
	rsbs r3, r1, #0
	adds r2, r4, #0
	b _08002FB4
	.align 2, 0
_08002F38: .4byte 0xFFFFFC00
_08002F3C: .4byte 0x3FFFFFFF
_08002F40: .4byte 0xFFFF3FFF
_08002F44:
	ldrb r0, [r5]
	ldrb r1, [r5, #1]
	movs r2, #1
	ands r1, r2
	lsls r1, r1, #8
	orrs r1, r0
	lsls r1, r1, #0x17
	asrs r3, r1, #0x17
	adds r2, r4, #0
	b _08002FB4
_08002F58:
	ldrb r2, [r5]
	ldrb r1, [r5, #1]
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #8
	orrs r1, r2
	lsls r1, r1, #0x17
	asrs r1, r1, #0x17
	ldr r2, [sp, #8]
	lsrs r0, r2, #0x1f
	adds r0, r2, r0
	asrs r0, r0, #1
	adds r1, r1, r0
	ldr r4, [sp, #0x1c]
	adds r3, r1, #0
	muls r3, r4, r3
	adds r4, r2, #0
	cmp r3, #0
	blt _08002F8C
	ldr r0, _08002F88 @ => 0x030017F0
	ldr r0, [r0]
	adds r0, r3, r0
	lsrs r3, r0, #0x10
	b _08002F96
	.align 2, 0
_08002F88: .4byte gUnk_030017F0
_08002F8C:
	ldr r0, _08002FA8 @ => 0x030017F0
	ldr r0, [r0]
	subs r0, r0, r3
	lsrs r0, r0, #0x10
	rsbs r3, r0, #0
_08002F96:
	ldr r1, [sp]
	lsls r0, r1, #0x16
	lsrs r0, r0, #0x1e
	adds r2, r1, #0
	cmp r0, #3
	bne _08002FAC
	subs r3, r3, r4
	b _08002FB4
	.align 2, 0
_08002FA8: .4byte gUnk_030017F0
_08002FAC:
	lsrs r0, r4, #0x1f
	adds r0, r4, r0
	asrs r0, r0, #1
	subs r3, r3, r0
_08002FB4:
	ldr r1, [sp, #0x14]
	ldr r0, [r1]
	adds r0, r0, r3
	ldr r1, _08002FF4 @ => 0x000001FF
	ands r0, r1
	lsls r0, r0, #0x10
	ldr r4, _08002FF8 @ => 0xFE00FFFF
	ands r4, r2
	orrs r4, r0
	str r4, [sp]
	adds r1, r4, #0
	lsls r0, r1, #0x16
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _0800305C
	lsls r0, r1, #2
	cmp r0, #0
	bge _08002FFC
	ldrb r0, [r5, #1]
	lsrs r0, r0, #1
	ldrb r1, [r5, #2]
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #7
	orrs r1, r0
	lsls r1, r1, #0x17
	asrs r1, r1, #0x17
	ldr r0, [r6, #4]
	adds r1, r1, r0
	rsbs r3, r1, #0
	b _080030B6
	.align 2, 0
_08002FF4: .4byte 0x000001FF
_08002FF8: .4byte 0xFE00FFFF
_08002FFC:
	movs r0, #2
	ldr r1, [sp, #0x10]
	ands r0, r1
	cmp r0, #0
	beq _08003048
	ldrb r1, [r5, #1]
	lsrs r1, r1, #1
	ldrb r0, [r5, #2]
	mov r2, r8
	ands r0, r2
	lsls r0, r0, #7
	orrs r0, r1
	lsls r0, r0, #0x17
	asrs r0, r0, #0x17
	ldr r1, [r6, #4]
	adds r0, r0, r1
	rsbs r3, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0x16
	orrs r4, r0
	str r4, [sp]
	ldr r0, _08003040 @ => 0x030015D8
	movs r4, #0x83
	lsls r4, r4, #2
	adds r0, r0, r4
	ldrb r1, [r0]
	ands r1, r2
	lsls r1, r1, #0xa
	ldr r2, _08003044 @ => 0xFFFFF3FF
	ldr r0, [r7, #4]
	ands r0, r2
	orrs r0, r1
	str r0, [r7, #4]
	b _080030B6
	.align 2, 0
_08003040: .4byte gUnk_030015D8
_08003044: .4byte 0xFFFFF3FF
_08003048:
	ldrb r1, [r5, #1]
	lsrs r1, r1, #1
	ldrb r0, [r5, #2]
	mov r2, r8
	ands r0, r2
	lsls r0, r0, #7
	orrs r0, r1
	lsls r0, r0, #0x17
	asrs r3, r0, #0x17
	b _080030B6
_0800305C:
	ldrb r0, [r5, #1]
	lsrs r0, r0, #1
	ldrb r1, [r5, #2]
	mov r4, r8
	ands r1, r4
	lsls r1, r1, #7
	orrs r1, r0
	lsls r1, r1, #0x17
	asrs r1, r1, #0x17
	ldr r0, [r6, #4]
	lsrs r2, r0, #0x1f
	adds r0, r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	ldr r0, [sp, #0x20]
	adds r3, r1, #0
	muls r3, r0, r3
	cmp r3, #0
	blt _08003090
	ldr r0, _0800308C @ => 0x030017F0
	ldr r0, [r0]
	adds r0, r3, r0
	lsrs r3, r0, #0x10
	b _0800309A
	.align 2, 0
_0800308C: .4byte gUnk_030017F0
_08003090:
	ldr r0, _080030A8 @ => 0x030017F0
	ldr r0, [r0]
	subs r0, r0, r3
	lsrs r0, r0, #0x10
	rsbs r3, r0, #0
_0800309A:
	ldr r0, [sp]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bne _080030AC
	ldr r0, [r6, #4]
	b _080030B4
	.align 2, 0
_080030A8: .4byte gUnk_030017F0
_080030AC:
	ldr r0, [r6, #4]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
_080030B4:
	subs r3, r3, r0
_080030B6:
	ldr r1, [sp, #0x14]
	ldr r0, [r1, #4]
	adds r2, r0, r3
	adds r5, #4
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bhi _080030F0
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _08003110 @ => 0xFFFFFF00
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	ldr r4, _08003114 @ => 0x03004A20
	ldrb r0, [r4]
	mov r1, sp
	bl FUN_0803B6E0
	mov r2, sl
	cmp r2, #0
	beq _080030F0
	ldrb r0, [r4]
	subs r0, #1
	bl FUN_0803B730
_080030F0:
	movs r4, #1
	rsbs r4, r4, #0
	add sb, r4
	mov r0, sb
	cmp r0, #0
	beq _080030FE
	b _08002EBA
_080030FE:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003110: .4byte 0xFFFFFF00
_08003114: .4byte gUnk_03004A20

	thumb_func_start FUN_08003118
FUN_08003118: @ 0x08003118
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0xc]
	adds r0, #0x78
	movs r1, #0
	strh r1, [r0]
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _08003130
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _08003152
_08003130:
	ldr r0, _08003170 @ => 0x00010040
	ands r0, r5
	cmp r0, #0
	beq _08003142
	ldr r0, _08003174 @ => 0x03004398
	ldr r1, [r0]
	adds r0, r4, #0
	bl FUN_08038C3C
_08003142:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r5
	cmp r0, #0
	beq _08003152
	adds r0, r4, #0
	bl sub_08039698
_08003152:
	movs r0, #6
	ands r5, r0
	cmp r5, #4
	bne _0800316A
	ldr r2, _08003178 @ => 0x03002C50
	ldr r3, _0800317C @ => 0x03002C48
	ldr r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r2
	str r4, [r0]
	adds r1, #1
	str r1, [r3]
_0800316A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003170: .4byte 0x00010040
_08003174: .4byte gUnk_03004398
_08003178: .4byte gUnk_03002C50
_0800317C: .4byte gUnk_03002C48

	thumb_func_start FUN_08003180
FUN_08003180: @ 0x08003180
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x40
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	ldr r1, [r5, #0x38]
	ldr r0, [r5, #0x18]
	subs r3, r1, r0
	ldr r1, [r5, #0x3c]
	ldr r0, [r5, #0x1c]
	subs r7, r1, r0
	asrs r0, r3, #0x10
	cmp r0, #0
	bne _080031B8
	asrs r0, r7, #0x10
	cmp r0, #0
	bne _080031B8
	strh r0, [r2]
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x38]
	ldr r1, [r5, #0x3c]
	str r0, [r5, #0x18]
	str r1, [r5, #0x1c]
	str r0, [r5, #0x20]
	str r1, [r5, #0x24]
_080031B8:
	adds r6, r5, #0
	adds r6, #0x40
	ldrh r0, [r6]
	cmp r0, #0
	beq _080031DA
	adds r1, r0, #0
	adds r0, r3, #0
	bl FUN_0802C364
	adds r4, r0, #0
	ldrh r1, [r6]
	adds r0, r7, #0
	bl FUN_0802C364
	str r4, [r5, #0x28]
	str r0, [r5, #0x2c]
	b _080031EA
_080031DA:
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x38]
	ldr r1, [r5, #0x3c]
	str r0, [r5, #0x18]
	str r1, [r5, #0x1c]
	str r0, [r5, #0x20]
	str r1, [r5, #0x24]
_080031EA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_080031F0
FUN_080031F0: @ 0x080031F0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldrb r0, [r4, #0xa]
	cmp r2, r0
	blo _08003204
	movs r0, #0
	b _0800325A
_08003204:
	adds r0, r5, #0
	adds r0, #0xbb
	ldrb r1, [r0]
	lsls r1, r1, #1
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r1, #0xc
	adds r1, r4, r1
	lsls r0, r2, #1
	adds r0, #0xa
	adds r2, r1, r0
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0x16
	ands r0, r1
	movs r1, #4
	cmp r0, #0
	beq _0800322E
	movs r1, #8
_0800322E:
	ldrb r0, [r5, #0x12]
	cmp r0, r1
	bls _08003240
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #0x10
	ldr r0, [r5, #0x18]
	subs r0, r0, r1
	b _0800324A
_08003240:
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #0x10
	ldr r0, [r5, #0x18]
	adds r0, r0, r1
_0800324A:
	str r0, [r3]
	movs r1, #1
	ldrsb r1, [r2, r1]
	lsls r1, r1, #0x10
	ldr r0, [r5, #0x1c]
	adds r0, r0, r1
	str r0, [r3, #4]
	movs r0, #1
_0800325A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start FUN_08003260
FUN_08003260: @ 0x08003260
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	adds r7, r0, #0
	movs r0, #1
	str r0, [sp, #0xc]
	ldr r2, [r7, #0xc]
	adds r5, r7, #0
	adds r5, #0xdb
	ldrb r4, [r5]
	cmp r1, #1
	beq _08003280
	b _08003718
_08003280:
	ldr r0, _08003354 @ => 0x40000002
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #0x17
	cmp r0, r1
	beq _0800328E
	b _08003718
_0800328E:
	movs r0, #0x80
	ands r2, r0
	adds r1, r7, #0
	adds r1, #0xd6
	str r1, [sp, #0x24]
	cmp r2, #0
	bne _080032A6
	ldrh r1, [r1]
	ldr r0, _08003358 @ => 0x0000FFFF
	cmp r1, r0
	beq _080032A6
	b _08003718
_080032A6:
	adds r0, r7, #0
	mov r1, sp
	bl FUN_08001B2C
	ldr r1, [sp]
	ldr r0, [sp, #4]
	muls r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #3
	ands r0, r4
	cmp r0, #0
	bne _080032C4
	b _08003558
_080032C4:
	ldr r2, [sp, #0xc]
	ands r4, r2
	cmp r4, #0
	bne _080032CE
	b _08003438
_080032CE:
	movs r3, #0
	mov r8, r3
	adds r4, r7, #0
	adds r4, #0xdc
	ldrb r1, [r4]
	ldr r3, _0800335C @ => 0x030017E8
	ldr r2, [r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r5, r0, r2
	adds r0, r7, #0
	adds r0, #0xac
	ldr r2, [r5, #4]
	ldr r1, [r0]
	adds r6, r4, #0
	mov sb, r0
	adds r0, #0xf
	str r0, [sp, #0x1c]
	cmp r2, r1
	bne _08003310
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _08003310
	adds r0, r5, #0
	adds r0, #0x35
	ldrb r0, [r0]
	ldr r1, [sp, #0x1c]
	ldrb r1, [r1]
	cmp r0, r1
	beq _080033E8
_08003310:
	ldrb r1, [r6]
	ldr r2, [r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r2, r0, r2
	ldr r0, _08003360 @ => 0x03004714
	ldr r1, [r2, #0x38]
	ldr r0, [r0]
	cmp r1, r0
	beq _080033E8
	ldr r3, [sp, #0x24]
	ldrh r0, [r3]
	ldr r5, _08003358 @ => 0x0000FFFF
	cmp r0, r5
	beq _08003364
	adds r4, r7, #0
	adds r4, #0xd4
	ldrh r1, [r4]
	adds r2, r7, #0
	adds r2, #0xa5
	ldrb r2, [r2]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1f
	bl FUN_0805286C
	ldr r0, [sp, #0x24]
	ldrh r1, [r0]
	adds r0, r5, #0
	orrs r0, r1
	ldr r1, [sp, #0x24]
	strh r0, [r1]
	str r4, [sp, #0x20]
	b _08003376
	.align 2, 0
_08003354: .4byte 0x40000002
_08003358: .4byte 0x0000FFFF
_0800335C: .4byte gUnk_030017E8
_08003360: .4byte gUnk_03004714
_08003364:
	adds r1, r2, #0
	adds r1, #0x26
	add r1, r8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r2, r7, #0
	adds r2, #0xd4
	str r2, [sp, #0x20]
_08003376:
	ldrb r1, [r6]
	ldr r4, _080033E0 @ => 0x030017E8
	ldr r2, [r4]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	mov r3, sb
	ldr r1, [r3]
	str r1, [r0, #4]
	movs r0, #0
	ldr r1, [sp, #8]
	movs r2, #0
	bl FUN_080527B4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldrb r1, [r6]
	ldr r2, [r4]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r2, [sp, #0x1c]
	ldrb r1, [r2]
	adds r0, #0x35
	strb r1, [r0]
	ldrb r1, [r6]
	ldr r2, [r4]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	mov r3, r8
	lsls r1, r3, #1
	adds r0, #8
	adds r0, r0, r1
	mov r1, sl
	strh r1, [r0]
	ldrb r1, [r6]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, _080033E4 @ => 0x03004714
	ldr r1, [r1]
	str r1, [r0, #0x38]
	adds r2, r7, #0
	adds r2, #0xa8
	str r2, [sp, #0x18]
	b _08003638
	.align 2, 0
_080033E0: .4byte gUnk_030017E8
_080033E4: .4byte gUnk_03004714
_080033E8:
	ldr r0, [sp, #0x24]
	ldrh r1, [r0]
	ldr r0, _08003434 @ => 0x0000FFFF
	cmp r1, r0
	bne _08003408
	ldrb r1, [r6]
	ldr r2, [r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r0, #0x26
	add r0, r8
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
_08003408:
	ldrb r1, [r6]
	ldr r2, [r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	mov r2, r8
	lsls r1, r2, #1
	adds r0, #8
	adds r0, r0, r1
	ldrh r0, [r0]
	mov sl, r0
	movs r3, #0
	str r3, [sp, #0xc]
	adds r0, r7, #0
	adds r0, #0xd4
	str r0, [sp, #0x20]
	adds r1, r7, #0
	adds r1, #0xa8
	str r1, [sp, #0x18]
	b _08003638
	.align 2, 0
_08003434: .4byte 0x0000FFFF
_08003438:
	adds r4, r7, #0
	adds r4, #0xbb
	ldrb r2, [r4]
	mov r8, r2
	adds r3, r7, #0
	adds r3, #0xdc
	ldrb r1, [r3]
	ldr r5, _0800348C @ => 0x030017E8
	ldr r2, [r5]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r2, r0, r2
	adds r0, r2, #0
	adds r0, #0x26
	add r0, r8
	ldrb r0, [r0]
	adds r6, r3, #0
	str r4, [sp, #0x1c]
	cmp r0, #0
	bne _08003490
	movs r0, #0
	ldr r1, [sp, #8]
	movs r2, #0
	bl FUN_080527B4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldrb r1, [r6]
	ldr r2, [r5]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	mov r3, r8
	lsls r1, r3, #1
	adds r0, #8
	adds r0, r0, r1
	mov r1, sl
	strh r1, [r0]
	b _080034A2
	.align 2, 0
_0800348C: .4byte gUnk_030017E8
_08003490:
	mov r3, r8
	lsls r1, r3, #1
	adds r0, r2, #0
	adds r0, #8
	adds r0, r0, r1
	ldrh r0, [r0]
	mov sl, r0
	movs r0, #0
	str r0, [sp, #0xc]
_080034A2:
	ldrb r1, [r6]
	ldr r5, _08003550 @ => 0x030017E8
	ldr r2, [r5]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r0, #0x26
	add r0, r8
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	adds r4, r7, #0
	adds r4, #0xba
	ldrb r3, [r4]
	adds r1, r7, #0
	adds r1, #0xd4
	str r1, [sp, #0x20]
	adds r2, r7, #0
	adds r2, #0xa8
	str r2, [sp, #0x18]
	cmp r8, r3
	bne _080034D2
	b _08003638
_080034D2:
	ldr r1, [sp, #0x24]
	ldrh r0, [r1]
	ldr r2, _08003554 @ => 0x0000FFFF
	mov r8, r2
	cmp r0, r8
	bne _080034E0
	b _08003638
_080034E0:
	ldrb r1, [r6]
	ldr r2, [r5]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r0, #0x26
	adds r0, r0, r3
	ldrb r1, [r0]
	subs r1, #1
	strb r1, [r0]
	ldrb r1, [r6]
	ldr r2, [r5]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r0, #0x26
	ldrb r3, [r4]
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08003510
	b _08003638
_08003510:
	ldr r1, [sp, #0x24]
	ldrh r0, [r1]
	ldr r2, [sp, #0x20]
	ldrh r1, [r2]
	adds r2, r7, #0
	adds r2, #0xa5
	ldrb r2, [r2]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1f
	bl FUN_0805286C
	ldr r3, [sp, #0x24]
	ldrh r1, [r3]
	mov r0, r8
	orrs r0, r1
	strh r0, [r3]
	ldrb r0, [r6]
	ldr r2, [r5]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r1, #8
	adds r1, r1, r0
	ldrh r2, [r1]
	mov r0, r8
	orrs r0, r2
	strh r0, [r1]
	b _08003638
	.align 2, 0
_08003550: .4byte gUnk_030017E8
_08003554: .4byte 0x0000FFFF
_08003558:
	ldr r0, [sp, #0x24]
	ldrh r1, [r0]
	ldr r4, _0800361C @ => 0xFFFF0000
	lsrs r0, r4, #0x10
	adds r2, r7, #0
	adds r2, #0xd4
	str r2, [sp, #0x20]
	cmp r1, r0
	beq _0800357C
	ldr r3, [sp, #0x24]
	ldrh r0, [r3]
	ldrh r1, [r2]
	subs r2, #0x2f
	ldrb r2, [r2]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1f
	bl FUN_0805286C
_0800357C:
	movs r0, #0
	ldr r1, [sp, #8]
	movs r2, #0
	bl FUN_080527B4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	adds r1, r7, #0
	adds r1, #0xbb
	str r1, [sp, #0x1c]
	adds r2, r7, #0
	adds r2, #0xa8
	str r2, [sp, #0x18]
	cmp r0, #0
	beq _08003638
	movs r6, #0
	adds r3, r7, #0
	adds r3, #0xec
	str r3, [sp, #0x14]
	mov r0, sp
	str r0, [sp, #0x10]
_080035AE:
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r4, r0, #2
	ldr r1, [sp, #0x14]
	adds r0, r1, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _0800362E
	adds r0, r7, #0
	mov r1, sp
	adds r2, r6, #0
	bl FUN_08001B50
	ldr r1, [sp]
	ldr r2, [sp, #0x10]
	ldr r0, [r2, #4]
	muls r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r5, r7, r4
	adds r4, r5, #0
	adds r4, #0xea
	ldrh r0, [r4]
	ldr r3, _0800361C @ => 0xFFFF0000
	lsrs r3, r3, #0x10
	mov sb, r3
	cmp r0, sb
	beq _080035FC
	adds r1, r5, #0
	adds r1, #0xe8
	ldrh r1, [r1]
	adds r2, r7, #0
	adds r2, #0xa5
	ldrb r2, [r2]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1f
	bl FUN_0805286C
_080035FC:
	movs r0, #0
	mov r1, r8
	movs r2, #0
	bl FUN_080527B4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, sb
	beq _08003620
	strh r0, [r4]
	adds r0, r5, #0
	adds r0, #0xe8
	mov r1, r8
	strh r1, [r0]
	b _0800362E
	.align 2, 0
_0800361C: .4byte 0xFFFF0000
_08003620:
	ldrh r1, [r4]
	orrs r0, r1
	strh r0, [r4]
	adds r1, r5, #0
	adds r1, #0xe8
	movs r0, #0
	strh r0, [r1]
_0800362E:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _080035AE
_08003638:
	ldr r2, _080036F4 @ => 0x0000FFFF
	cmp sl, r2
	bne _08003646
	movs r3, #0
	str r3, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #8]
_08003646:
	mov r3, sl
	ldr r1, [sp, #0x24]
	strh r3, [r1]
	ldr r0, _080036F8 @ => 0x000003FF
	mov r1, sl
	ands r1, r0
	mov sl, r1
	ldr r3, [sp, #0x18]
	ldrh r1, [r3]
	ldr r0, _080036FC @ => 0xFFFFFC00
	ands r0, r1
	mov r1, sl
	orrs r0, r1
	strh r0, [r3]
	mov r3, sp
	ldrh r0, [r3, #8]
	ldr r3, [sp, #0x20]
	strh r0, [r3]
	ldr r1, [sp, #0xc]
	cmp r1, #1
	bne _08003710
	adds r0, r7, #0
	adds r0, #0xdb
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08003700
	movs r6, #0
	adds r3, r7, #0
	adds r3, #0xec
	str r3, [sp, #0x14]
	mov r8, r2
_08003688:
	lsls r1, r6, #1
	adds r0, r1, r6
	lsls r2, r0, #2
	ldr r3, [sp, #0x14]
	adds r0, r3, r2
	ldr r0, [r0]
	adds r5, r1, #0
	cmp r0, #0
	beq _080036E8
	adds r4, r7, r2
	adds r0, r4, #0
	adds r0, #0xea
	ldrh r0, [r0]
	cmp r0, r8
	beq _080036E8
	adds r0, r7, #0
	adds r1, r6, #0
	bl FUN_08001AE8
	adds r0, r4, #0
	adds r0, #0xe4
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _080036C8
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080036CE
_080036C8:
	ldr r1, [sp, #0x1c]
	ldrb r0, [r1]
	subs r0, #1
_080036CE:
	adds r0, r7, #0
	adds r1, r6, #0
	bl FUN_08000FA0
	adds r2, r0, #0
	adds r0, r5, r6
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, #0xea
	ldrh r1, [r0]
	adds r0, r2, #0
	bl FUN_08052834
_080036E8:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08003688
	b _08003710
	.align 2, 0
_080036F4: .4byte 0x0000FFFF
_080036F8: .4byte 0x000003FF
_080036FC: .4byte 0xFFFFFC00
_08003700:
	adds r0, r7, #0
	bl FUN_08001BC0
	adds r2, r0, #0
	adds r0, r7, #0
	adds r1, r2, #0
	bl FUN_08052820
_08003710:
	ldr r0, [r7, #0xc]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r7, #0xc]
_08003718:
	adds r0, r7, #0
	adds r0, #0xbb
	ldrb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08003734
FUN_08003734: @ 0x08003734
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x5c]
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x24]
	str r0, [r4, #0x20]
	str r1, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x60
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r1, r1, #0x10
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	str r0, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x62
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r1, r1, #0x10
	ldr r0, [r4, #0x24]
	adds r0, r0, r1
	str r0, [r4, #0x24]
	adds r2, #0xa9
	ldrb r1, [r2]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	adds r0, r4, #0
	bl FUN_080017B8
	adds r0, r4, #0
	adds r0, #0xdb
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08003788
	ldr r0, [r4, #0x24]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	b _08003796
_08003788:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08003798
	ldr r0, [r4, #0x24]
	ldr r3, _080037A0 @ => 0xFFFF0000
	adds r0, r0, r3
_08003796:
	str r0, [r4, #0x24]
_08003798:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080037A0: .4byte 0xFFFF0000

	thumb_func_start FUN_080037A4
FUN_080037A4: @ 0x080037A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	mov r8, r0
	ldr r0, _08003880 @ => 0x03002E50
	mov sb, r0
	ldr r2, _08003884 @ => 0x03003178
	ldr r1, [r2]
	lsls r0, r1, #2
	add r0, sb
	mov r3, r8
	str r3, [r0]
	ldr r6, [r3, #0x70]
	str r6, [sp, #8]
	ldr r0, [r3, #0x74]
	str r0, [sp, #0xc]
	ldr r3, [r3, #0x68]
	str r3, [sp]
	mov r6, r8
	ldr r6, [r6, #0x6c]
	str r6, [sp, #4]
	mov ip, r1
	cmp r1, #0
	beq _080038B4
	mov r0, r8
	ldr r0, [r0, #0xc]
	str r0, [sp, #0x10]
_080037E0:
	mov r0, ip
	subs r0, #1
	lsls r1, r0, #2
	ldr r2, _08003880 @ => 0x03002E50
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r6, [sp, #0x10]
	lsrs r3, r6, #0x12
	movs r1, #1
	ands r3, r1
	ldr r1, [r2, #0xc]
	lsrs r1, r1, #0x12
	movs r6, #1
	ands r1, r6
	str r0, [sp, #0x14]
	cmp r3, #1
	bne _08003888
	cmp r1, #1
	bne _080038B4
	ldr r0, [r2, #0x70]
	str r0, [sp, #0x18]
	ldr r1, [r2, #0x74]
	str r1, [sp, #0x1c]
	ldr r4, [r2, #0x68]
	ldr r5, [r2, #0x6c]
	movs r3, #0
	mov sl, r3
	ldr r6, [sp, #0xc]
	cmp r6, r5
	bge _08003822
	ldr r0, [sp, #8]
	cmp r0, r4
	bgt _08003826
_08003822:
	movs r1, #1
	mov sl, r1
_08003826:
	movs r3, #0
	mov sb, r3
	ldr r6, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	cmp r6, r0
	blt _0800384A
	ldr r1, [sp, #8]
	ldr r3, [sp, #0x18]
	cmp r1, r3
	bgt _0800384A
	ldr r6, [sp, #4]
	cmp r6, r5
	bgt _0800384A
	ldr r0, [sp]
	cmp r0, r4
	blt _0800384A
	movs r1, #1
	mov sb, r1
_0800384A:
	ldr r1, [r2, #0xc]
	movs r3, #0x80
	lsls r3, r3, #0xc
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _08003860
	ldr r0, [sp, #0x10]
	ands r0, r3
	cmp r0, #0
	beq _08003890
_08003860:
	movs r3, #0x80
	lsls r3, r3, #0xd
	ldr r0, [sp, #0x10]
	ands r0, r3
	cmp r0, #0
	beq _08003872
	ands r1, r3
	cmp r1, #0
	beq _08003890
_08003872:
	mov r3, sl
	cmp r3, #1
	beq _08003890
	mov r6, sb
	cmp r6, #1
	bne _080038B4
	b _08003890
	.align 2, 0
_08003880: .4byte gUnk_03002E50
_08003884: .4byte gUnk_03003178
_08003888:
	cmp r1, #1
	bne _080038B4
	cmp r3, #0
	bne _080038B4
_08003890:
	movs r0, #1
	cmp r0, #1
	bne _080038AE
	ldr r1, [sp, #0x14]
	lsls r0, r1, #2
	ldr r3, _080038CC @ => 0x03002E50
	adds r0, r0, r3
	mov r6, r8
	str r6, [r0]
	mov r1, ip
	lsls r0, r1, #2
	adds r0, r0, r3
	str r2, [r0]
	ldr r2, [sp, #0x14]
	mov ip, r2
_080038AE:
	mov r3, ip
	cmp r3, #0
	bne _080037E0
_080038B4:
	ldr r6, _080038D0 @ => 0x03003178
	ldr r0, [r6]
	adds r0, #1
	str r0, [r6]
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080038CC: .4byte gUnk_03002E50
_080038D0: .4byte gUnk_03003178

	thumb_func_start FUN_080038D4
FUN_080038D4: @ 0x080038D4
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	beq _08003926
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	str r0, [sp]
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	str r0, [sp, #4]
	ldr r6, _08003930 @ => 0x03004398
	ldr r0, [r6]
	add r5, sp, #8
	mov r1, sp
	adds r2, r5, #0
	bl FUN_0805374C
	adds r4, #0x90
	ldrh r0, [r5]
	ldrh r1, [r4]
	cmp r0, r1
	beq _08003926
	cmp r1, #0
	beq _08003918
	ldr r0, [r6]
	adds r1, r4, #0
	movs r2, #0x10
	bl FUN_08049778
_08003918:
	ldr r0, [r6]
	adds r1, r5, #0
	movs r2, #0x10
	bl FUN_08049714
	ldr r0, [sp, #8]
	str r0, [r4]
_08003926:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08003930: .4byte gUnk_03004398

	thumb_func_start FUN_08003934
FUN_08003934: @ 0x08003934
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	str r0, [sp]
	str r1, [sp, #4]
	movs r1, #0
	subs r0, #1
	cmp r1, r0
	blo _0800394E
	b _08003B5E
_0800394E:
	str r0, [sp, #0x20]
_08003950:
	lsls r0, r1, #2
	ldr r2, [sp, #4]
	adds r0, r0, r2
	ldr r6, [r0]
	movs r3, #0
	str r3, [sp, #0x18]
	adds r0, r6, #0
	adds r0, #0x7b
	adds r1, #1
	str r1, [sp, #0x24]
	ldrb r0, [r0]
	cmp r3, r0
	blo _0800396C
	b _08003B50
_0800396C:
	ldr r1, [sp, #0x18]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r1, r0, #1
	adds r0, r6, #0
	adds r0, #0x80
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08003986
	b _08003B38
_08003986:
	adds r1, r1, r6
	adds r0, r1, #0
	adds r0, #0x7c
	ldrh r2, [r0]
	adds r1, #0x7e
	movs r3, #0
	ldrsh r0, [r1, r3]
	lsls r0, r0, #0x10
	adds r1, r2, r0
	movs r0, #0x26
	ldrsh r3, [r6, r0]
	asrs r0, r1, #0x18
	adds r0, r3, r0
	str r0, [sp, #0xc]
	lsls r1, r1, #8
	asrs r0, r1, #0x18
	adds r3, r3, r0
	str r3, [sp, #8]
	lsls r1, r1, #8
	movs r2, #0x22
	ldrsh r3, [r6, r2]
	adds r0, r6, #0
	adds r0, #0xa7
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _080039CC
	asrs r0, r1, #0x18
	subs r0, r3, r0
	str r0, [sp, #0x14]
	lsls r1, r1, #8
	asrs r0, r1, #0x18
	subs r3, r3, r0
	str r3, [sp, #0x10]
	b _080039DA
_080039CC:
	asrs r0, r1, #0x18
	adds r0, r3, r0
	str r0, [sp, #0x10]
	lsls r1, r1, #8
	asrs r0, r1, #0x18
	adds r3, r3, r0
	str r3, [sp, #0x14]
_080039DA:
	ldr r3, [sp, #0x24]
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r1, [r6, #0xc]
	b _08003B28
_080039E6:
	mov r2, sb
	lsls r0, r2, #2
	ldr r3, [sp, #4]
	adds r0, r0, r3
	ldr r5, [r0]
	ldr r2, [r5, #0xc]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	beq _08003A04
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _08003A04
	b _08003B1E
_08003A04:
	movs r3, #0x80
	lsls r3, r3, #0xa
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _08003A18
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	bne _08003B16
_08003A18:
	movs r0, #4
	ands r2, r0
	cmp r2, #0
	beq _08003B16
	movs r2, #0
	str r2, [sp, #0x1c]
	mov r8, r2
	adds r0, r5, #0
	adds r0, #0x7b
	mov sl, r0
	ldrb r3, [r0]
	cmp r8, r3
	bhs _08003B16
_08003A32:
	mov r1, r8
	lsls r0, r1, #1
	add r0, r8
	lsls r1, r0, #1
	adds r0, r5, #0
	adds r0, #0x80
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08003AE6
	adds r1, r1, r5
	adds r0, r1, #0
	adds r0, #0x7c
	ldrh r2, [r0]
	adds r1, #0x7e
	movs r3, #0
	ldrsh r0, [r1, r3]
	lsls r0, r0, #0x10
	adds r1, r2, r0
	movs r0, #0x26
	ldrsh r3, [r5, r0]
	asrs r0, r1, #0x18
	adds r0, r0, r3
	mov ip, r0
	lsls r1, r1, #8
	asrs r0, r1, #0x18
	adds r7, r3, r0
	lsls r1, r1, #8
	movs r2, #0x22
	ldrsh r3, [r5, r2]
	adds r0, r5, #0
	adds r0, #0xa7
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08003A8A
	asrs r0, r1, #0x18
	subs r2, r3, r0
	lsls r1, r1, #8
	asrs r0, r1, #0x18
	subs r4, r3, r0
	b _08003A94
_08003A8A:
	asrs r0, r1, #0x18
	adds r4, r3, r0
	lsls r1, r1, #8
	asrs r0, r1, #0x18
	adds r2, r3, r0
_08003A94:
	ldr r3, [sp, #0x10]
	cmp r3, r2
	blt _08003AE6
	ldr r0, [sp, #0x14]
	cmp r0, r4
	bgt _08003AE6
	ldr r1, [sp, #8]
	cmp r1, ip
	bgt _08003AE6
	ldr r2, [sp, #0xc]
	cmp r2, r7
	blt _08003AE6
	ldr r3, [sp, #0x18]
	lsls r1, r3, #2
	adds r0, r6, #0
	adds r0, #0x94
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _08003ACE
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	beq _08003ACE
	adds r0, r6, #0
	adds r1, r5, #0
	bl _call_via_r2
	movs r1, #1
	str r1, [sp, #0x1c]
_08003ACE:
	mov r2, r8
	lsls r1, r2, #2
	adds r0, r5, #0
	adds r0, #0x94
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _08003AE6
	adds r0, r5, #0
	adds r1, r6, #0
	bl _call_via_r2
_08003AE6:
	ldr r1, [r6, #0xc]
	movs r2, #4
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08003B50
	ldr r0, [r5, #0xc]
	ands r0, r2
	cmp r0, #0
	beq _08003B16
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08003B16
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	mov r3, sl
	ldrb r3, [r3]
	cmp r8, r3
	blo _08003A32
_08003B16:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08003B50
_08003B1E:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_08003B28:
	ldr r0, [sp]
	cmp sb, r0
	bhs _08003B30
	b _080039E6
_08003B30:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08003B50
_08003B38:
	ldr r0, [sp, #0x18]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	adds r0, r6, #0
	adds r0, #0x7b
	ldr r1, [sp, #0x18]
	ldrb r0, [r0]
	cmp r1, r0
	bhs _08003B50
	b _0800396C
_08003B50:
	ldr r2, [sp, #0x24]
	lsls r0, r2, #0x18
	lsrs r1, r0, #0x18
	ldr r3, [sp, #0x20]
	cmp r1, r3
	bhs _08003B5E
	b _08003950
_08003B5E:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08003B70
FUN_08003B70: @ 0x08003B70
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	movs r0, #0
	mov sb, r0
	movs r0, #0x93
	lsls r0, r0, #1
	adds r1, r5, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	ldr r1, [r5, #0x38]
	ldr r0, [r5, #0x18]
	cmp r1, r0
	ble _08003B98
	subs r2, r1, r0
	movs r4, #1
	b _08003B9E
_08003B98:
	subs r2, r0, r1
	movs r4, #1
	rsbs r4, r4, #0
_08003B9E:
	ldr r1, [r5, #0x3c]
	ldr r0, [r5, #0x1c]
	cmp r1, r0
	ble _08003BAC
	subs r6, r1, r0
	movs r0, #1
	b _08003BB2
_08003BAC:
	subs r6, r0, r1
	movs r0, #1
	rsbs r0, r0, #0
_08003BB2:
	mov r8, r0
	asrs r0, r2, #0x10
	cmp r0, #0
	bne _08003BDA
	asrs r0, r6, #0x10
	cmp r0, #0
	bne _08003BDA
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl FUN_08001744
	ldr r1, [r5, #0x38]
	ldr r2, [r5, #0x3c]
	adds r0, r5, #0
	bl FUN_08001728
	movs r0, #1
	mov sb, r0
	b _08003BFE
_08003BDA:
	movs r0, #0x93
	lsls r0, r0, #1
	adds r7, r5, r0
	ldrh r1, [r7]
	adds r0, r2, #0
	bl SVC_Div
	muls r4, r0, r4
	ldrh r1, [r7]
	adds r0, r6, #0
	bl SVC_Div
	mov r2, r8
	muls r2, r0, r2
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_08001744
_08003BFE:
	mov r0, sb
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_08003C0C
FUN_08003C0C: @ 0x08003C0C
	push {r4, lr}
	mov ip, r0
	adds r4, r1, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldrh r1, [r0, #0xa]
	ldr r0, _08003C34 @ => 0x0000010B
	cmp r1, r0
	bne _08003C38
	mov r0, ip
	adds r0, #0xac
	ldrh r0, [r0]
	lsrs r0, r0, #1
	lsls r0, r0, #0x10
	subs r0, r4, r0
	mov r1, ip
	str r0, [r1, #0x38]
	str r2, [r1, #0x3c]
	b _08003C3E
	.align 2, 0
_08003C34: .4byte 0x0000010B
_08003C38:
	mov r0, ip
	str r4, [r0, #0x38]
	str r2, [r0, #0x3c]
_08003C3E:
	movs r0, #0x93
	lsls r0, r0, #1
	add r0, ip
	strh r3, [r0]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_08003C4C
FUN_08003C4C: @ 0x08003C4C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	bl FUN_080012FC
	adds r4, r0, #0
	cmp r4, #0
	beq _08003C98
	movs r0, #0x31
	strh r0, [r4, #8]
	strh r5, [r4, #0xa]
	ldr r0, _08003CA4 @ => 0x00002008
	str r0, [r4, #0xc]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	mov r1, r8
	str r1, [r0]
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r4, r1
	strb r6, [r0]
	adds r1, #1
	adds r0, r4, r1
	strb r7, [r0]
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001FB0
	ldr r0, _08003CA8 @ => FUN_08003CAC
	str r0, [r4, #0x50]
_08003C98:
	adds r0, r4, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08003CA4: .4byte 0x00002008
_08003CA8: .4byte FUN_08003CAC

	thumb_func_start FUN_08003CAC
FUN_08003CAC: @ 0x08003CAC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r0]
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08003CCA
	cmp r0, #1
	beq _08003D00
	b _08003D08
_08003CCA:
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	beq _08003CF6
	ldr r1, [r1, #0xc]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08003CF6
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	bne _08003D08
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r1, r0
	cmp r1, #0
	beq _08003D08
	adds r0, r4, #0
	bl FUN_08003D10
_08003CF6:
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08001FB0
	b _08003D08
_08003D00:
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
_08003D08:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08003D10
FUN_08003D10: @ 0x08003D10
	push {lr}
	adds r1, r0, #0
	movs r2, #0x9a
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

	thumb_func_start FUN_08003D2C
FUN_08003D2C: @ 0x08003D2C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x48
	ldrh r2, [r0]
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08003D5E
	adds r1, r4, #0
	adds r1, #0x44
	ldrh r3, [r1]
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	bl FUN_0802C254
	adds r1, r4, #0
	adds r1, #0x4c
	movs r2, #0
	ldrsh r1, [r1, r2]
	muls r1, r0, r1
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	str r0, [r4, #0x20]
_08003D5E:
	adds r0, r4, #0
	adds r0, #0x4a
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _08003D8E
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r3, [r1]
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	bl FUN_0802C210
	adds r1, r4, #0
	adds r1, #0x4e
	movs r2, #0
	ldrsh r1, [r1, r2]
	muls r1, r0, r1
	ldr r0, [r4, #0x24]
	adds r0, r0, r1
	str r0, [r4, #0x24]
_08003D8E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_08003D94
FUN_08003D94: @ 0x08003D94
	adds r2, r0, #0
	adds r0, #0x44
	movs r1, #0
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start FUN_08003DA8
FUN_08003DA8: @ 0x08003DA8
	adds r2, r0, #0
	adds r2, #0x46
	movs r1, #0
	strh r1, [r2]
	adds r2, #4
	strh r1, [r2]
	adds r0, #0x4e
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start FUN_08003DBC
FUN_08003DBC: @ 0x08003DBC
	adds r2, r0, #0
	adds r0, #0x44
	movs r1, #0
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	subs r0, #6
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start FUN_08003DDC
FUN_08003DDC: @ 0x08003DDC
	push {r4, lr}
	adds r0, #0x44
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08003DEC
FUN_08003DEC: @ 0x08003DEC
	mov ip, r0
	lsls r1, r1, #8
	adds r0, #0x44
	strh r1, [r0]
	adds r0, #4
	strh r2, [r0]
	adds r0, #4
	strh r3, [r0]
	bx lr
	.align 2, 0

	thumb_func_start FUN_08003E00
FUN_08003E00: @ 0x08003E00
	mov ip, r0
	lsls r1, r1, #8
	adds r0, #0x46
	strh r1, [r0]
	adds r0, #4
	strh r2, [r0]
	adds r0, #4
	strh r3, [r0]
	bx lr
	.align 2, 0

	thumb_func_start FUN_08003E14
FUN_08003E14: @ 0x08003E14
	lsls r1, r1, #8
	adds r3, r0, #0
	adds r3, #0x44
	strh r1, [r3]
	lsls r2, r2, #8
	adds r0, #0x46
	strh r2, [r0]
	bx lr

	thumb_func_start FUN_08003E24
FUN_08003E24: @ 0x08003E24
	adds r3, r0, #0
	adds r3, #0x48
	strh r1, [r3]
	adds r0, #0x4a
	strh r2, [r0]
	bx lr

	thumb_func_start FUN_08003E30
FUN_08003E30: @ 0x08003E30
	adds r3, r0, #0
	adds r3, #0x4c
	strh r1, [r3]
	adds r0, #0x4e
	strh r2, [r0]
	bx lr

	thumb_func_start FUN_08003E3C
FUN_08003E3C: @ 0x08003E3C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	mov sb, r3
	adds r0, #0xc0
	str r5, [r0]
	adds r0, #4
	str r6, [r0]
	adds r0, #0xc
	mov r1, sb
	strh r1, [r0]
	adds r0, r7, #0
	bl FUN_08003F88
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r4, #0x80
	lsls r4, r4, #0x11
	adds r0, r4, #0
	adds r1, r5, #0
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	adds r0, r4, #0
	adds r1, r6, #0
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r5, #0
	bne _08003E8C
	movs r5, #1
_08003E8C:
	cmp r2, #0
	bne _08003E92
	movs r2, #1
_08003E92:
	ldr r1, _08003EC0 @ => 0x03004A30
	mov r3, r8
	lsls r0, r3, #3
	adds r0, r0, r1
	strh r5, [r0]
	strh r2, [r0, #2]
	mov r1, sb
	strh r1, [r0, #4]
	adds r2, r7, #0
	adds r2, #0xa5
	ldrb r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003EC0: .4byte gUnk_03004A30

	thumb_func_start FUN_08003EC4
FUN_08003EC4: @ 0x08003EC4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0xa5
	ldrb r1, [r2]
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _08003EDA
	cmp r0, #3
	bne _08003EFE
_08003EDA:
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r5, #0xa4
	adds r0, r5, #0
	bl FUN_0803B754
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0803B760
	adds r0, r4, #0
	bl FUN_0803B7B8
_08003EFE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_08003F04
FUN_08003F04: @ 0x08003F04
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r2, #0
	adds r6, r3, #0
	cmp r6, #0
	beq _08003F3A
	adds r4, r5, #0
	adds r4, #0xc8
	adds r0, #0xc0
	ldr r0, [r0]
	subs r0, r1, r0
	adds r1, r6, #0
	bl __divsi3
	str r0, [r4]
	adds r4, #4
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r0, [r0]
	subs r0, r7, r0
	adds r1, r6, #0
	bl __divsi3
	str r0, [r4]
	adds r0, r5, #0
	adds r0, #0xd2
	strh r6, [r0]
_08003F3A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_08003F40
FUN_08003F40: @ 0x08003F40
	push {r4, lr}
	mov ip, r0
	mov r1, ip
	adds r1, #0xd2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	mov r3, ip
	adds r3, #0xc0
	subs r1, #0xa
	ldr r0, [r3]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r3]
	mov r1, ip
	adds r1, #0xc4
	mov r0, ip
	adds r0, #0xcc
	ldr r2, [r1]
	ldr r0, [r0]
	adds r2, r2, r0
	str r2, [r1]
	ldr r1, [r3]
	asrs r1, r1, #8
	asrs r2, r2, #8
	mov r0, ip
	adds r0, #0xd0
	movs r4, #0
	ldrsh r3, [r0, r4]
	mov r0, ip
	bl FUN_08003E3C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08003F88
FUN_08003F88: @ 0x08003F88
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0xa5
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _08003F9C
	cmp r0, #3
	bne _08003FAA
_08003F9C:
	adds r0, r5, #0
	adds r0, #0xa4
	bl FUN_0803B754
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _08003FBC
_08003FAA:
	bl FUN_0803B774
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	adds r0, #0xa4
	adds r1, r4, #0
	bl FUN_0803B760
_08003FBC:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start FUN_08003FC4
FUN_08003FC4: @ 0x08003FC4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08003FE4 @ => 0x0000011D
	adds r0, r4, r1
	ldrb r1, [r0]
	cmp r1, #0x65
	beq _0800402C
	cmp r1, #0x65
	bgt _08003FE8
	cmp r1, #0x64
	beq _08004008
	cmp r1, #0
	beq _08003FEE
	cmp r1, #0xb
	beq _080040BE
	b _080040D6
	.align 2, 0
_08003FE4: .4byte 0x0000011D
_08003FE8:
	cmp r1, #0x66
	beq _08004038
	b _080040D6
_08003FEE:
	ldr r2, _08004004 @ => 0x00000133
	adds r0, r4, r2
	strb r1, [r0]
	subs r2, #1
	adds r0, r4, r2
	strb r1, [r0]
	subs r2, #2
	adds r0, r4, r2
	strh r1, [r0]
	b _080040B4
	.align 2, 0
_08004004: .4byte 0x00000133
_08004008:
	ldr r0, _08004024 @ => 0x0805A058
	ldr r2, _08004028 @ => 0x00000133
	adds r1, r4, r2
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	bl FUN_0801B914
	adds r0, r4, #0
	movs r1, #0x65
	bl FUN_08001F84
	b _080040D6
	.align 2, 0
_08004024: .4byte ROMREF_0805A058
_08004028: .4byte 0x00000133
_0800402C:
	movs r0, #0xe
	movs r1, #3
	movs r2, #0
	bl FUN_0802CED4
	b _080040D6
_08004038:
	movs r0, #0x98
	lsls r0, r0, #1
	adds r2, r4, r0
	ldr r1, _08004088 @ => 0x0805A058
	adds r0, #3
	adds r3, r4, r0
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r2]
	ldrh r0, [r0, #2]
	cmp r1, r0
	bne _0800405E
	movs r2, #0x99
	lsls r2, r2, #1
	adds r1, r4, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0800405E:
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bne _080040B4
	movs r1, #0x99
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #5
	bne _08004094
	ldr r0, _0800408C @ => 0x000001B1
	bl FUN_0801B914
	ldr r0, _08004090 @ => 0x00000181
	movs r1, #1
	bl FUN_080213A4
	b _080040A2
	.align 2, 0
_08004088: .4byte ROMREF_0805A058
_0800408C: .4byte 0x000001B1
_08004090: .4byte 0x00000181
_08004094:
	ldr r0, _080040AC @ => 0x000001B1
	bl FUN_0801B914
	ldr r0, _080040B0 @ => 0x00000181
	movs r1, #0
	bl FUN_080213A4
_080040A2:
	adds r0, r4, #0
	movs r1, #0xb
	bl FUN_08001F84
	b _080040D6
	.align 2, 0
_080040AC: .4byte 0x000001B1
_080040B0: .4byte 0x00000181
_080040B4:
	adds r0, r4, #0
	movs r1, #0x64
	bl FUN_08001F84
	b _080040D6
_080040BE:
	movs r0, #0xc0
	lsls r0, r0, #1
	movs r1, #1
	bl FUN_080213A4
	movs r2, #0x91
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrb r1, [r0]
	adds r0, r4, #0
	bl FUN_08001FB0
_080040D6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_080040DC
FUN_080040DC: @ 0x080040DC
	push {lr}
	adds r2, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0x4f
	bls _080040EE
	b _080043C4
_080040EE:
	lsls r0, r0, #2
	ldr r1, _080040F8 @ =_080040FC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080040F8: .4byte _080040FC
_080040FC: @ jump table
	.4byte _080043C4 @ case 0
	.4byte _0800423C @ case 1
	.4byte _080043C4 @ case 2
	.4byte _080043C4 @ case 3
	.4byte _080043C4 @ case 4
	.4byte _080043C4 @ case 5
	.4byte _0800424C @ case 6
	.4byte _0800425C @ case 7
	.4byte _08004264 @ case 8
	.4byte _080043C4 @ case 9
	.4byte _0800426C @ case 10
	.4byte _080043C4 @ case 11
	.4byte _080043C4 @ case 12
	.4byte _08004274 @ case 13
	.4byte _0800428C @ case 14
	.4byte _080043C4 @ case 15
	.4byte _08004294 @ case 16
	.4byte _080043C4 @ case 17
	.4byte _080043C4 @ case 18
	.4byte _0800429C @ case 19
	.4byte _080042A4 @ case 20
	.4byte _0800427C @ case 21
	.4byte _080042AC @ case 22
	.4byte _08004284 @ case 23
	.4byte _080042BA @ case 24
	.4byte _080042C2 @ case 25
	.4byte _080043C4 @ case 26
	.4byte _080043C4 @ case 27
	.4byte _080042D2 @ case 28
	.4byte _080042D2 @ case 29
	.4byte _080042D2 @ case 30
	.4byte _080042CA @ case 31
	.4byte _080042DA @ case 32
	.4byte _080042B4 @ case 33
	.4byte _080042E2 @ case 34
	.4byte _080042E8 @ case 35
	.4byte _080042F0 @ case 36
	.4byte _080042F8 @ case 37
	.4byte _08004300 @ case 38
	.4byte _08004308 @ case 39
	.4byte _08004310 @ case 40
	.4byte _08004318 @ case 41
	.4byte _08004320 @ case 42
	.4byte _080043C4 @ case 43
	.4byte _08004328 @ case 44
	.4byte _080043C4 @ case 45
	.4byte _080043C4 @ case 46
	.4byte _080043C4 @ case 47
	.4byte _08004330 @ case 48
	.4byte _080043C4 @ case 49
	.4byte _080043C4 @ case 50
	.4byte _08004338 @ case 51
	.4byte _08004340 @ case 52
	.4byte _08004348 @ case 53
	.4byte _08004358 @ case 54
	.4byte _08004360 @ case 55
	.4byte _08004368 @ case 56
	.4byte _08004370 @ case 57
	.4byte _080043C4 @ case 58
	.4byte _080043C4 @ case 59
	.4byte _08004380 @ case 60
	.4byte _08004386 @ case 61
	.4byte _0800438E @ case 62
	.4byte _080043C4 @ case 63
	.4byte _080043C4 @ case 64
	.4byte _080043C4 @ case 65
	.4byte _080043C4 @ case 66
	.4byte _080043C4 @ case 67
	.4byte _08004350 @ case 68
	.4byte _08004396 @ case 69
	.4byte _0800439E @ case 70
	.4byte _08004378 @ case 71
	.4byte _080043C4 @ case 72
	.4byte _080043A6 @ case 73
	.4byte _080043AE @ case 74
	.4byte _080043B6 @ case 75
	.4byte _08004254 @ case 76
	.4byte _080043C4 @ case 77
	.4byte _080043C4 @ case 78
	.4byte _080043BE @ case 79
_0800423C:
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x82
	orrs r0, r1
	str r0, [r2, #0xc]
	b _080043C4
_0800424C:
	adds r0, r2, #0
	bl FUN_0800747C
	b _080043C4
_08004254:
	adds r0, r2, #0
	bl FUN_080075B4
	b _080043C4
_0800425C:
	adds r0, r2, #0
	bl FUN_08007918
	b _080043C4
_08004264:
	adds r0, r2, #0
	bl FUN_08007A50
	b _080043C4
_0800426C:
	adds r0, r2, #0
	bl FUN_08007748
	b _080043C4
_08004274:
	adds r0, r2, #0
	bl FUN_08005184
	b _080043C4
_0800427C:
	adds r0, r2, #0
	bl FUN_08004D18
	b _080043C4
_08004284:
	adds r0, r2, #0
	bl FUN_0800638C
	b _080043C4
_0800428C:
	adds r0, r2, #0
	bl FUN_08004748
	b _080043C4
_08004294:
	adds r0, r2, #0
	bl FUN_08006044
	b _080043C4
_0800429C:
	adds r0, r2, #0
	bl FUN_0800617C
	b _080043C4
_080042A4:
	adds r0, r2, #0
	bl FUN_08006FF8
	b _080043C4
_080042AC:
	adds r0, r2, #0
	bl FUN_080070E4
	b _080043C4
_080042B4:
	bl FUN_080043C8
	b _080043C4
_080042BA:
	adds r0, r2, #0
	bl FUN_080085E0
	b _080043C4
_080042C2:
	adds r0, r2, #0
	bl FUN_080070A8
	b _080043C4
_080042CA:
	adds r0, r2, #0
	bl FUN_0800650C
	b _080043C4
_080042D2:
	adds r0, r2, #0
	bl FUN_08008AF8
	b _080043C4
_080042DA:
	adds r0, r2, #0
	bl FUN_08005878
	b _080043C4
_080042E2:
	bl FUN_08004600
	b _080043C4
_080042E8:
	adds r0, r2, #0
	bl FUN_08007828
	b _080043C4
_080042F0:
	adds r0, r2, #0
	bl FUN_0800714C
	b _080043C4
_080042F8:
	adds r0, r2, #0
	bl FUN_0800664C
	b _080043C4
_08004300:
	adds r0, r2, #0
	bl FUN_080065D8
	b _080043C4
_08004308:
	adds r0, r2, #0
	bl FUN_08007C04
	b _080043C4
_08004310:
	adds r0, r2, #0
	bl FUN_08005EEC
	b _080043C4
_08004318:
	adds r0, r2, #0
	bl FUN_08006EA8
	b _080043C4
_08004320:
	adds r0, r2, #0
	bl FUN_08005BB4
	b _080043C4
_08004328:
	adds r0, r2, #0
	bl FUN_08007190
	b _080043C4
_08004330:
	adds r0, r2, #0
	bl FUN_08007054
	b _080043C4
_08004338:
	adds r0, r2, #0
	bl FUN_08004EDC
	b _080043C4
_08004340:
	adds r0, r2, #0
	bl FUN_08004FC8
	b _080043C4
_08004348:
	adds r0, r2, #0
	bl FUN_080047E8
	b _080043C4
_08004350:
	adds r0, r2, #0
	bl FUN_08004C74
	b _080043C4
_08004358:
	adds r0, r2, #0
	bl FUN_080071C0
	b _080043C4
_08004360:
	adds r0, r2, #0
	bl FUN_08005754
	b _080043C4
_08004368:
	adds r0, r2, #0
	bl FUN_08008254
	b _080043C4
_08004370:
	adds r0, r2, #0
	bl FUN_0804AE10
	b _080043C4
_08004378:
	adds r0, r2, #0
	bl FUN_080485B4
	b _080043C4
_08004380:
	bl FUN_08052EE8
	b _080043C4
_08004386:
	adds r0, r2, #0
	bl FUN_08007210
	b _080043C4
_0800438E:
	adds r0, r2, #0
	bl FUN_08007284
	b _080043C4
_08004396:
	adds r0, r2, #0
	bl FUN_08007310
	b _080043C4
_0800439E:
	adds r0, r2, #0
	bl FUN_08003FC4
	b _080043C4
_080043A6:
	adds r0, r2, #0
	bl FUN_08007354
	b _080043C4
_080043AE:
	adds r0, r2, #0
	bl FUN_080068DC
	b _080043C4
_080043B6:
	adds r0, r2, #0
	bl FUN_0800695C
	b _080043C4
_080043BE:
	adds r0, r2, #0
	bl FUN_08006A30
_080043C4:
	pop {r0}
	bx r0

	thumb_func_start FUN_080043C8
FUN_080043C8: @ 0x080043C8
	push {r4, r5, r6, lr}
	ldr r5, _0800443C @ => 0x03003DF0
	ldr r1, _08004440 @ => 0x000003FB
	adds r0, r5, r1
	movs r6, #1
	strb r6, [r0]
	adds r4, r5, #0
	adds r4, #0x38
	adds r0, r4, #0
	bl FUN_080389BC
	adds r0, r4, #0
	movs r1, #0xf
	bl FUN_08038A84
	movs r1, #0xdb
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r1, [r0]
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08004404
	ldr r0, _08004444 @ => 0x03004228
	strb r6, [r0]
	movs r0, #1
	movs r1, #0
	movs r2, #0x17
	bl FUN_0802CED4
_08004404:
	bl FUN_08021320
	cmp r0, #0x16
	bne _08004454
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r4, r5, r0
	adds r0, r4, #0
	movs r1, #0xbd
	bl FUN_0801DEE0
	cmp r0, #1
	bne _08004448
	adds r0, r4, #0
	movs r1, #0xbe
	bl FUN_0801DEE0
	cmp r0, #0
	bne _08004448
	ldr r0, _08004444 @ => 0x03004228
	strb r6, [r0]
	movs r0, #1
	movs r1, #0
	movs r2, #0x17
	bl FUN_0802CED4
	b _080045EE
	.align 2, 0
_0800443C: .4byte gUnk_03003DF0
_08004440: .4byte 0x000003FB
_08004444: .4byte gUnk_03004228
_08004448:
	ldr r1, _08004450 @ => 0x03004228
	movs r0, #1
	strb r0, [r1]
	b _08004462
	.align 2, 0
_08004450: .4byte gUnk_03004228
_08004454:
	bl FUN_08021320
	cmp r0, #6
	bne _08004470
	ldr r0, _0800446C @ => 0x03004228
	strb r6, [r0]
	movs r0, #1
_08004462:
	movs r1, #0
	movs r2, #0x1d
	bl FUN_0802CED4
	b _080045EE
	.align 2, 0
_0800446C: .4byte gUnk_03004228
_08004470:
	bl FUN_08021320
	cmp r0, #7
	bne _080044A4
	movs r0, #0xb2
	bl FUN_080213F8
	cmp r0, #1
	bne _080044A4
	movs r0, #0xf2
	bl FUN_080213F8
	cmp r0, #0
	bne _080044A4
	ldr r1, _080044A0 @ => 0x03004228
	movs r0, #3
	strb r0, [r1]
	movs r0, #1
	movs r1, #0
	movs r2, #0x24
	bl FUN_0802CED4
	b _080045EE
	.align 2, 0
_080044A0: .4byte gUnk_03004228
_080044A4:
	bl FUN_08021320
	cmp r0, #8
	bne _080044C8
	ldr r0, _080044C0 @ => 0x03004228
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	movs r2, #0x1e
	bl FUN_0802CED4
	ldr r0, _080044C4 @ => 0x03003E28
	b _080044FE
	.align 2, 0
_080044C0: .4byte gUnk_03004228
_080044C4: .4byte gUnk_03003E28
_080044C8:
	bl FUN_08021320
	cmp r0, #5
	bne _08004514
	ldr r5, _08004508 @ => 0x0300407C
	adds r0, r5, #0
	movs r1, #0x2e
	bl FUN_0801DEE0
	adds r4, r0, #0
	cmp r4, #1
	bne _08004514
	adds r0, r5, #0
	movs r1, #0x2e
	bl FUN_0801DF10
	cmp r0, #0
	bne _08004514
	ldr r0, _0800450C @ => 0x03004228
	strb r4, [r0]
	movs r0, #1
	movs r1, #0
	movs r2, #0x28
	bl FUN_0802CED4
	ldr r1, _08004510 @ => 0xFFFFFDAC
	adds r0, r5, r1
_080044FE:
	movs r1, #0x46
	bl FUN_08038A84
	b _080045EE
	.align 2, 0
_08004508: .4byte gEpisode_Data
_0800450C: .4byte gUnk_03004228
_08004510: .4byte 0xFFFFFDAC
_08004514:
	ldr r0, _080045B0 @ => 0x03003E24
	ldr r4, _080045B4 @ => 0x030043A0
	ldrb r1, [r4]
	bl FUN_08029724
	cmp r0, #1
	beq _08004586
	ldr r0, [r4]
	cmp r0, #0x1c
	beq _08004586
	cmp r0, #0xc
	beq _08004586
	movs r0, #0x4a
	bl FUN_080213F8
	cmp r0, #1
	beq _08004586
	movs r0, #0x49
	bl FUN_080213F8
	cmp r0, #1
	beq _08004586
	movs r0, #0x4b
	bl FUN_080213F8
	cmp r0, #1
	beq _08004586
	movs r0, #0xb2
	lsls r0, r0, #1
	bl FUN_080213F8
	cmp r0, #1
	beq _08004586
	movs r0, #0xb4
	lsls r0, r0, #1
	bl FUN_080213F8
	cmp r0, #1
	beq _08004586
	movs r0, #0x85
	lsls r0, r0, #2
	bl FUN_080213F8
	cmp r0, #1
	beq _08004586
	movs r0, #0xfb
	lsls r0, r0, #1
	bl FUN_080213F8
	cmp r0, #1
	beq _08004586
	movs r0, #0xe3
	lsls r0, r0, #1
	bl FUN_080213F8
	cmp r0, #1
	bne _080045C0
_08004586:
	movs r0, #0xa9
	lsls r0, r0, #2
	movs r1, #1
	bl FUN_080213A4
	ldr r0, _080045B8 @ => 0x000002A7
	movs r1, #1
	bl FUN_080213A4
	ldr r1, _080045BC @ => 0x03004228
	movs r0, #2
	strb r0, [r1]
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	bl FUN_0802CED4
	movs r0, #0x14
	bl FUN_08024C78
	b _080045EE
	.align 2, 0
_080045B0: .4byte gUnk_03003E24
_080045B4: .4byte gUnk_030043A0
_080045B8: .4byte 0x000002A7
_080045BC: .4byte gUnk_03004228
_080045C0:
	movs r0, #0xa9
	lsls r0, r0, #2
	movs r1, #1
	bl FUN_080213A4
	ldr r0, _080045F4 @ => 0x000002A5
	ldr r1, _080045F8 @ => 0x000002AA
	bl FUN_080424F8
	movs r1, #1
	bl FUN_080213A4
	ldr r1, _080045FC @ => 0x03004228
	movs r0, #2
	strb r0, [r1]
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	bl FUN_0802CED4
	movs r0, #0x14
	bl FUN_08024C78
_080045EE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080045F4: .4byte 0x000002A5
_080045F8: .4byte 0x000002AA
_080045FC: .4byte gUnk_03004228

	thumb_func_start FUN_08004600
FUN_08004600: @ 0x08004600
	push {lr}
	ldr r0, _08004630 @ => 0x03004750
	ldr r0, [r0]
	cmp r0, #2
	bne _08004640
	ldr r0, _08004634 @ => 0x03003180
	ldr r0, [r0]
	cmp r0, #0
	beq _08004640
	ldr r1, _08004638 @ => 0x03004228
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0800463C @ => 0x03003DF0
	movs r1, #0xdb
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0x3c
	str r1, [r0]
	movs r0, #1
	movs r1, #0
	movs r2, #0x17
	bl FUN_0802CED4
	b _080046B0
	.align 2, 0
_08004630: .4byte gUnk_03004750
_08004634: .4byte gUnk_03003180
_08004638: .4byte gUnk_03004228
_0800463C: .4byte gUnk_03003DF0
_08004640:
	ldr r0, _08004654 @ => 0x03003DF0
	ldr r1, _08004658 @ => 0x000003FA
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08004664
	ldr r1, _0800465C @ => 0x03005C60
	ldr r0, _08004660 @ => 0x00000878
	b _08004694
	.align 2, 0
_08004654: .4byte gUnk_03003DF0
_08004658: .4byte 0x000003FA
_0800465C: .4byte gChoiceIDs
_08004660: .4byte 0x00000878
_08004664:
	cmp r0, #1
	bne _08004678
	ldr r1, _08004670 @ => 0x03005C60
	ldr r0, _08004674 @ => 0x00000879
	b _08004694
	.align 2, 0
_08004670: .4byte gChoiceIDs
_08004674: .4byte 0x00000879
_08004678:
	cmp r0, #2
	bne _0800468C
	ldr r1, _08004684 @ => 0x03005C60
	ldr r0, _08004688 @ => 0x0000087A
	b _08004694
	.align 2, 0
_08004684: .4byte gChoiceIDs
_08004688: .4byte 0x0000087A
_0800468C:
	cmp r0, #3
	bne _08004696
	ldr r1, _080046B4 @ => 0x03005C60
	ldr r0, _080046B8 @ => 0x000008A6
_08004694:
	strh r0, [r1]
_08004696:
	movs r0, #0xb5
	movs r1, #0xf0
	movs r2, #0xf
	movs r3, #0
	bl FUN_0802D5E8
	ldr r1, _080046BC @ => 0x03005C90
	str r0, [r1, #8]
	ldr r1, _080046C0 @ => 0x03003180
	movs r0, #1
	str r0, [r1]
	bl FUN_08041BF0
_080046B0:
	pop {r0}
	bx r0
	.align 2, 0
_080046B4: .4byte gChoiceIDs
_080046B8: .4byte 0x000008A6
_080046BC: .4byte gUnk_03005C90
_080046C0: .4byte gUnk_03003180

	thumb_func_start FUN_080046C4
FUN_080046C4: @ 0x080046C4
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r1, _080046E0 @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _080046EE
	cmp r0, #2
	bgt _080046E4
	cmp r0, #0
	beq _080046EE
	b _0800473C
	.align 2, 0
_080046E0: .4byte 0x0000011D
_080046E4:
	cmp r0, #5
	beq _08004710
	cmp r0, #7
	beq _0800471A
	b _0800473C
_080046EE:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _0800470C @ => 0xFFFF0000
	cmp r1, r0
	bne _0800473C
	adds r0, r4, #0
	movs r1, #7
	bl FUN_08001F84
	b _0800473C
	.align 2, 0
_0800470C: .4byte 0xFFFF0000
_08004710:
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08001FB0
	b _0800473C
_0800471A:
	ldr r1, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0800473C
	ldr r0, _08004744 @ => 0xFFBFFFFF
	ands r1, r0
	str r1, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl FUN_08001F84
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r4, r1
	strh r5, [r0]
_0800473C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08004744: .4byte 0xFFBFFFFF

	thumb_func_start FUN_08004748
FUN_08004748: @ 0x08004748
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r6, #0
_08004750:
	lsls r1, r6, #2
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r0, r5, r2
	adds r4, r0, r1
	ldr r0, [r4]
	cmp r0, #0
	beq _08004780
	adds r1, r5, #0
	bl FUN_0803D23C
	cmp r0, #2
	bne _08004774
	ldr r1, [r4]
	adds r0, r5, #0
	bl FUN_08001A18
	b _08004780
_08004774:
	cmp r0, #0
	bne _08004780
	ldr r1, [r4]
	adds r0, r5, #0
	bl FUN_08001A18
_08004780:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08004750
	adds r0, r5, #0
	bl FUN_08001D8C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080047DC
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0x14
	beq _080047DC
	adds r0, r5, #0
	movs r1, #4
	bl FUN_08001F20
	movs r2, #0x91
	lsls r2, r2, #1
	adds r0, r5, r2
	ldrb r1, [r0]
	adds r0, r5, #0
	bl FUN_08001FB0
	movs r1, #0x22
	ldrsh r0, [r5, r1]
	str r0, [sp]
	movs r2, #0x26
	ldrsh r0, [r5, r2]
	str r0, [sp, #4]
	ldr r0, _080047E4 @ => 0x03004398
	ldr r0, [r0]
	mov r1, sp
	mov r2, sp
	bl FUN_08053898
	ldr r0, [sp]
	lsls r0, r0, #0x10
	str r0, [r5, #0x20]
	ldr r0, [sp, #4]
	lsls r0, r0, #0x10
	str r0, [r5, #0x24]
_080047DC:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080047E4: .4byte gUnk_03004398

	thumb_func_start FUN_080047E8
FUN_080047E8: @ 0x080047E8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r2, _0800481C @ => 0x03004200
	ldr r0, _08004820 @ => 0x030042B0
	ldrh r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r7, [r0]
	movs r0, #0
	mov r8, r0
	ldr r1, _08004824 @ => 0x0000011D
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0x37
	bne _08004812
	b _08004A80
_08004812:
	cmp r0, #0x37
	bgt _08004828
	cmp r0, #0
	beq _08004830
	b _08004C4A
	.align 2, 0
_0800481C: .4byte gUnk_03004200
_08004820: .4byte gUnk_030042B0
_08004824: .4byte 0x0000011D
_08004828:
	cmp r0, #0x67
	bne _0800482E
	b _08004BDE
_0800482E:
	b _08004C4A
_08004830:
	ldrh r0, [r5, #0xa]
	cmp r0, #0xe
	beq _0800485E
	adds r0, r5, #0
	adds r1, r7, #0
	bl FUN_08001BF4
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl FUN_08001FF0
	adds r0, r7, #0
	adds r1, r5, #0
	bl FUN_08001BF4
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r7, #0
	bl FUN_08001FF0
_0800485E:
	movs r6, #0
	ldrh r0, [r5, #0xa]
	movs r1, #0
	bl FUN_0801EAFC
	cmp r0, #1
	bne _08004884
	ldr r1, _08004878 @ => 0x03005C70
	movs r0, #7
	str r0, [r1]
	ldr r1, _0800487C @ => 0x03005C60
	ldr r0, _08004880 @ => 0x00000948
	b _080048B0
	.align 2, 0
_08004878: .4byte gUnk_03005C70
_0800487C: .4byte gChoiceIDs
_08004880: .4byte 0x00000948
_08004884:
	ldrh r0, [r5, #0xa]
	movs r1, #0
	bl FUN_0801EAFC
	cmp r0, #3
	bne _0800489C
	ldr r1, _08004898 @ => 0x03005C70
	movs r0, #7
	str r0, [r1]
	b _080048AC
	.align 2, 0
_08004898: .4byte gUnk_03005C70
_0800489C:
	ldrh r0, [r5, #0xa]
	bl FUN_0803B3E4
	cmp r0, #1
	bne _080048B4
	ldr r0, _0800498C @ => 0x03005C70
	mov r1, r8
	str r1, [r0]
_080048AC:
	ldr r1, _08004990 @ => 0x03005C60
	ldr r0, _08004994 @ => 0x00000941
_080048B0:
	strh r0, [r1]
	movs r6, #1
_080048B4:
	bl FUN_08023680
	cmp r0, #1
	bne _08004954
	ldrh r0, [r5, #0xa]
	bl FUN_0803B598
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	bne _08004954
	ldr r0, _08004998 @ => 0x00000295
	bl FUN_080213F8
	adds r4, r0, #0
	cmp r4, #1
	bne _080048FC
	bl FUN_08021320
	cmp r0, #0
	bne _080048E4
	ldrh r0, [r5, #0xa]
	cmp r0, #0xe
	beq _080048FC
_080048E4:
	ldr r1, _0800498C @ => 0x03005C70
	lsls r0, r6, #2
	adds r0, r0, r1
	str r4, [r0]
	ldr r1, _08004990 @ => 0x03005C60
	lsls r0, r6, #1
	adds r0, r0, r1
	ldr r1, _0800499C @ => 0x00000942
	strh r1, [r0]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080048FC:
	movs r0, #0xa6
	lsls r0, r0, #2
	bl FUN_080213F8
	cmp r0, #1
	bne _08004930
	ldr r0, _080049A0 @ => 0x03003DF0
	ldrb r0, [r0, #0x1c]
	ldrb r1, [r5, #0xa]
	bl FUN_0803AE8C
	cmp r0, #1
	bne _08004930
	ldr r1, _0800498C @ => 0x03005C70
	lsls r0, r6, #2
	adds r0, r0, r1
	movs r1, #2
	str r1, [r0]
	ldr r1, _08004990 @ => 0x03005C60
	lsls r0, r6, #1
	adds r0, r0, r1
	ldr r1, _080049A4 @ => 0x00000943
	strh r1, [r0]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08004930:
	ldr r0, _080049A8 @ => 0x00000296
	bl FUN_080213F8
	cmp r0, #0
	beq _08004954
	ldr r1, _0800498C @ => 0x03005C70
	lsls r0, r6, #2
	adds r0, r0, r1
	movs r1, #3
	str r1, [r0]
	ldr r1, _08004990 @ => 0x03005C60
	lsls r0, r6, #1
	adds r0, r0, r1
	ldr r1, _080049AC @ => 0x00000944
	strh r1, [r0]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08004954:
	ldrh r0, [r5, #0xa]
	add r1, sp, #4
	mov r2, sp
	bl FUN_0803B5A8
	adds r4, r0, #0
	ldrh r0, [r5, #0xa]
	add r1, sp, #8
	add r2, sp, #0xc
	mov r3, sp
	bl FUN_0803B5E8
	cmp r4, #1
	bne _080049B4
	ldr r1, _0800498C @ => 0x03005C70
	lsls r0, r6, #2
	adds r0, r0, r1
	movs r1, #5
	str r1, [r0]
	ldr r1, _08004990 @ => 0x03005C60
	lsls r0, r6, #1
	adds r0, r0, r1
	ldr r1, _080049B0 @ => 0x00000946
	strh r1, [r0]
	ldr r0, [sp, #4]
	bl FUN_080203A8
	b _08004A34
	.align 2, 0
_0800498C: .4byte gUnk_03005C70
_08004990: .4byte gChoiceIDs
_08004994: .4byte 0x00000941
_08004998: .4byte 0x00000295
_0800499C: .4byte 0x00000942
_080049A0: .4byte gUnk_03003DF0
_080049A4: .4byte 0x00000943
_080049A8: .4byte 0x00000296
_080049AC: .4byte 0x00000944
_080049B0: .4byte 0x00000946
_080049B4:
	cmp r0, #1
	bne _080049F4
	ldr r1, _080049E4 @ => 0x03005C70
	lsls r0, r6, #2
	adds r0, r0, r1
	movs r1, #6
	str r1, [r0]
	ldr r1, _080049E8 @ => 0x03005C60
	lsls r0, r6, #1
	adds r0, r0, r1
	ldr r1, _080049EC @ => 0x00000947
	strh r1, [r0]
	ldr r0, [sp, #8]
	bl FUN_080203A8
	ldr r0, [sp, #0xc]
	ldr r1, _080049F0 @ => 0x000006CF
	adds r0, r0, r1
	bl FUN_08050820
	bl FUN_08020344
	b _08004A34
	.align 2, 0
_080049E4: .4byte gUnk_03005C70
_080049E8: .4byte gChoiceIDs
_080049EC: .4byte 0x00000947
_080049F0: .4byte 0x000006CF
_080049F4:
	ldrh r0, [r5, #0xa]
	bl FUN_0803B598
	movs r4, #4
	ands r0, r4
	cmp r0, #0
	bne _08004A3A
	ldr r0, _08004A58 @ => 0x00000295
	bl FUN_080213F8
	cmp r0, #0
	beq _08004A3A
	movs r0, #0xa6
	lsls r0, r0, #2
	bl FUN_080213F8
	cmp r0, #0
	beq _08004A3A
	ldr r0, _08004A5C @ => 0x00000296
	bl FUN_080213F8
	cmp r0, #0
	beq _08004A3A
	ldr r1, _08004A60 @ => 0x03005C70
	lsls r0, r6, #2
	adds r0, r0, r1
	str r4, [r0]
	ldr r1, _08004A64 @ => 0x03005C60
	lsls r0, r6, #1
	adds r0, r0, r1
	ldr r1, _08004A68 @ => 0x00000945
	strh r1, [r0]
_08004A34:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08004A3A:
	cmp r6, #0
	beq _08004A70
	ldr r1, _08004A6C @ => 0x03005C90
	movs r0, #0
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	movs r0, #2
	bl FUN_0802CEC4
	adds r0, r5, #0
	movs r1, #0x37
	bl FUN_08001F84
	b _08004C4A
	.align 2, 0
_08004A58: .4byte 0x00000295
_08004A5C: .4byte 0x00000296
_08004A60: .4byte gUnk_03005C70
_08004A64: .4byte gChoiceIDs
_08004A68: .4byte 0x00000945
_08004A6C: .4byte gUnk_03005C90
_08004A70:
	movs r1, #0x91
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	bl FUN_08001FB0
	b _08004C68
_08004A80:
	ldr r0, _08004AA8 @ => 0x03004750
	ldr r2, [r0, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _08004A8E
	b _08004C30
_08004A8E:
	ldr r1, _08004AAC @ => 0x03005C70
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #7
	bls _08004A9C
	b _08004C4A
_08004A9C:
	lsls r0, r0, #2
	ldr r1, _08004AB0 @ =_08004AB4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08004AA8: .4byte gUnk_03004750
_08004AAC: .4byte gUnk_03005C70
_08004AB0: .4byte _08004AB4
_08004AB4: @ jump table
	.4byte _08004AD4 @ case 0
	.4byte _08004AFA @ case 1
	.4byte _08004B00 @ case 2
	.4byte _08004B06 @ case 3
	.4byte _08004B1E @ case 4
	.4byte _08004B2A @ case 5
	.4byte _08004B78 @ case 6
	.4byte _08004BD4 @ case 7
_08004AD4:
	ldrh r0, [r5, #0xa]
	bl FUN_0803B22C
	cmp r0, #1
	bne _08004AEA
	ldrh r0, [r5, #0xa]
	bl FUN_0803AF64
	ldrh r0, [r5, #0xa]
	bl FUN_0803AD1C
_08004AEA:
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r2, r5, r0
	ldrb r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2]
	b _08004C30
_08004AFA:
	adds r0, r7, #0
	movs r1, #0x86
	b _08004B0A
_08004B00:
	adds r0, r7, #0
	movs r1, #0x88
	b _08004B0A
_08004B06:
	adds r0, r7, #0
	movs r1, #0x87
_08004B0A:
	bl FUN_08001F20
	adds r0, r5, #0
	movs r1, #0x67
	bl FUN_08001F84
	ldrh r0, [r5, #0xa]
	bl FUN_0803AF64
	b _08004C4A
_08004B1E:
	movs r0, #0xe
	movs r1, #1
	adds r2, r5, #0
	bl FUN_0802CED4
	b _08004C46
_08004B2A:
	ldrh r0, [r5, #0xa]
	add r1, sp, #4
	mov r2, sp
	bl FUN_0803B5A8
	movs r0, #2
	bl FUN_080212A0
	ldr r1, [sp, #4]
	cmp r0, r1
	blt _08004B62
	movs r0, #0xb0
	bl FUN_0804DE0C
	ldr r0, [sp, #4]
	rsbs r0, r0, #0
	bl FUN_0802127C
	mov r0, sp
	ldrb r0, [r0]
	bl FUN_080099D8
	ldrh r0, [r5, #0xa]
	movs r1, #0
	movs r2, #0
	bl FUN_0803B2A0
	b _08004C30
_08004B62:
	ldr r1, _08004B70 @ => 0x03005C60
	ldr r0, _08004B74 @ => 0x00000871
	strh r0, [r1]
	bl FUN_08041BF0
	b _08004C30
	.align 2, 0
_08004B70: .4byte gChoiceIDs
_08004B74: .4byte 0x00000871
_08004B78:
	ldrh r0, [r5, #0xa]
	add r1, sp, #8
	add r2, sp, #0xc
	mov r3, sp
	bl FUN_0803B5E8
	ldr r0, _08004BA8 @ => 0x03003E48
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	bl FUN_080262E4
	cmp r0, #1
	bne _08004BAC
	mov r0, sp
	ldrb r0, [r0]
	bl FUN_080099D8
	ldrh r0, [r5, #0xa]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl FUN_0803B318
	b _08004C46
	.align 2, 0
_08004BA8: .4byte gUnk_03003E48
_08004BAC:
	ldr r1, _08004BC8 @ => 0x03005C60
	ldr r0, _08004BCC @ => 0x00000875
	strh r0, [r1]
	ldr r0, [sp, #0xc]
	ldr r1, _08004BD0 @ => 0x000006CF
	adds r0, r0, r1
	bl FUN_08050820
	bl FUN_08020320
	bl FUN_08041BF0
	b _08004C46
	.align 2, 0
_08004BC8: .4byte gChoiceIDs
_08004BCC: .4byte 0x00000875
_08004BD0: .4byte 0x000006CF
_08004BD4:
	adds r0, r5, #0
	movs r1, #0x44
	bl FUN_08001FB0
	b _08004C4A
_08004BDE:
	ldr r0, [r7, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08004C4A
	ldr r1, _08004C04 @ => 0x03005C70
	ldr r0, _08004C08 @ => 0x03004750
	ldr r0, [r0, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _08004C20
	cmp r0, #2
	bgt _08004C0C
	cmp r0, #1
	beq _08004C12
	b _08004C4A
	.align 2, 0
_08004C04: .4byte gUnk_03005C70
_08004C08: .4byte gUnk_03004750
_08004C0C:
	cmp r0, #3
	beq _08004C36
	b _08004C4A
_08004C12:
	ldrh r2, [r5, #0xa]
	movs r0, #0xd
	movs r1, #0
	bl FUN_0802CED4
	movs r0, SOUNDTRACK_FRIENDSHIP
	b _08004C42
_08004C20:
	ldrh r2, [r5, #0xa]
	movs r0, #0xd
	movs r1, #1
	bl FUN_0802CED4
	movs r0, SOUNDTRACK_ROMANCE
	bl FUN_0804DE84
_08004C30:
	movs r1, #1
	mov r8, r1
	b _08004C4A
_08004C36:
	ldrh r2, [r5, #0xa]
	movs r0, #0xd
	movs r1, #2
	bl FUN_0802CED4
	movs r0, SOUNDTRACK_INTIMIDATE
_08004C42:
	bl FUN_0804DE84
_08004C46:
	movs r0, #1
	mov r8, r0
_08004C4A:
	mov r1, r8
	cmp r1, #1
	bne _08004C68
	movs r4, #0x91
	lsls r4, r4, #1
	adds r0, r5, r4
	ldrb r1, [r0]
	adds r0, r5, #0
	bl FUN_08001FB0
	adds r4, r7, r4
	ldrb r1, [r4]
	adds r0, r7, #0
	bl FUN_08001FB0
_08004C68:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_08004C74
FUN_08004C74: @ 0x08004C74
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _08004C98 @ => 0x0000011D
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08004CE2
	ldrh r0, [r5, #0xa]
	movs r1, #0
	bl FUN_0801EAFC
	cmp r0, #1
	beq _08004C9C
	cmp r0, #1
	blo _08004CE2
	cmp r0, #3
	beq _08004CDA
	b _08004CE2
	.align 2, 0
_08004C98: .4byte 0x0000011D
_08004C9C:
	ldr r0, _08004CCC @ => 0x03003DF0
	ldr r4, [r0, #0x68]
	ldrh r0, [r5, #0xa]
	movs r1, #0
	bl FUN_0801EBAC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #4
	movs r3, #0
	bl FUN_080261BC
	cmp r0, #1
	bne _08004CD0
	ldrh r0, [r5, #0xa]
	movs r1, #0
	bl FUN_0801EB5C
	ldrh r0, [r5, #0xa]
	movs r1, #0
	bl FUN_0801EBC0
	b _08004CE2
	.align 2, 0
_08004CCC: .4byte gUnk_03003DF0
_08004CD0:
	ldrh r0, [r5, #0xa]
	movs r1, #0
	bl FUN_0801EB84
	b _08004CE2
_08004CDA:
	ldrh r0, [r5, #0xa]
	movs r1, #0
	bl FUN_0801EB98
_08004CE2:
	movs r4, #0x91
	lsls r4, r4, #1
	adds r0, r5, r4
	ldrb r1, [r0]
	adds r0, r5, #0
	bl FUN_08001FB0
	ldr r2, _08004D10 @ => 0x03004200
	ldr r0, _08004D14 @ => 0x030042B0
	ldrh r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r4, r0, r4
	ldrb r1, [r4]
	bl FUN_08001FB0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08004D10: .4byte gUnk_03004200
_08004D14: .4byte gUnk_030042B0

	thumb_func_start FUN_08004D18
FUN_08004D18: @ 0x08004D18
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r1, _08004D34 @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0x19
	bls _08004D2A
	b _08004ED2
_08004D2A:
	lsls r0, r0, #2
	ldr r1, _08004D38 @ =_08004D3C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08004D34: .4byte 0x0000011D
_08004D38: .4byte _08004D3C
_08004D3C: @ jump table
	.4byte _08004DA4 @ case 0
	.4byte _08004ED2 @ case 1
	.4byte _08004DA4 @ case 2
	.4byte _08004ED2 @ case 3
	.4byte _08004ED2 @ case 4
	.4byte _08004ED2 @ case 5
	.4byte _08004ED2 @ case 6
	.4byte _08004E74 @ case 7
	.4byte _08004ED2 @ case 8
	.4byte _08004ED2 @ case 9
	.4byte _08004ED2 @ case 10
	.4byte _08004DBC @ case 11
	.4byte _08004ED2 @ case 12
	.4byte _08004ED2 @ case 13
	.4byte _08004ED2 @ case 14
	.4byte _08004ED2 @ case 15
	.4byte _08004ED2 @ case 16
	.4byte _08004ED2 @ case 17
	.4byte _08004ED2 @ case 18
	.4byte _08004ED2 @ case 19
	.4byte _08004ED2 @ case 20
	.4byte _08004ED2 @ case 21
	.4byte _08004ED2 @ case 22
	.4byte _08004ED2 @ case 23
	.4byte _08004ED2 @ case 24
	.4byte _08004DF4 @ case 25
_08004DA4:
	adds r0, r4, #0
	bl FUN_08007DA4
	adds r0, r4, #0
	movs r1, #0x19
	bl FUN_08001F84
	adds r0, r4, #0
	movs r1, #0xa
	bl FUN_08001F20
	b _08004EC8
_08004DBC:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r5, r4, r1
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	ldr r1, _08004DF0 @ => 0xFFFF0000
	cmp r0, r1
	beq _08004DD2
	b _08004ED2
_08004DD2:
	adds r0, r4, #0
	bl FUN_08007DA4
	adds r0, r4, #0
	movs r1, #0x19
	bl FUN_08001F84
	adds r0, r4, #0
	movs r1, #0xa
	bl FUN_08001F20
	movs r0, #0x5a
	strh r0, [r5]
	b _08004ED2
	.align 2, 0
_08004DF0: .4byte 0xFFFF0000
_08004DF4:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08004E44 @ => 0xFFFF0000
	cmp r1, r0
	beq _08004E12
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r0, #0
	beq _08004E6C
_08004E12:
	ldr r0, _08004E48 @ => 0x03003DF0
	movs r1, #0xfe
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	ldrh r1, [r4, #0xa]
	cmp r0, r1
	bne _08004E4C
	movs r0, #0x14
	bl FUN_080425E4
	cmp r0, #1
	bne _08004E4C
	adds r0, r4, #0
	bl FUN_08001848
	adds r0, r4, #0
	movs r1, #0x33
	bl FUN_08001FB0
	adds r0, r4, #0
	bl FUN_08007DA4
	b _08004ED2
	.align 2, 0
_08004E44: .4byte 0xFFFF0000
_08004E48: .4byte gUnk_03003DF0
_08004E4C:
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #7
	bl FUN_08001F84
	adds r0, r4, #0
	bl FUN_08007DA4
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r4, r0
	adds r0, #0xc
	b _08004ED0
_08004E6C:
	adds r0, r4, #0
	bl FUN_08038E88
	b _08004ED2
_08004E74:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08004EA8 @ => 0xFFFF0000
	cmp r1, r0
	bne _08004ED2
	add r2, sp, #4
	adds r0, r4, #0
	mov r1, sp
	bl FUN_080070A4
	cmp r0, #1
	bne _08004EAC
	ldr r0, [sp]
	ldr r2, [sp, #4]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r1, r4, #0
	bl FUN_0803C338
	b _08004EAE
	.align 2, 0
_08004EA8: .4byte 0xFFFF0000
_08004EAC:
	movs r0, #0
_08004EAE:
	cmp r0, #0
	bne _08004ED2
	adds r0, r4, #0
	bl FUN_08007DA4
	adds r0, r4, #0
	movs r1, #0xa
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #0x19
	bl FUN_08001F84
_08004EC8:
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x5a
_08004ED0:
	strh r0, [r1]
_08004ED2:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08004EDC
FUN_08004EDC: @ 0x08004EDC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08004EF4 @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #7
	beq _08004F48
	cmp r0, #7
	bgt _08004EF8
	cmp r0, #0
	beq _08004F02
	b _08004FC2
	.align 2, 0
_08004EF4: .4byte 0x0000011D
_08004EF8:
	cmp r0, #0x5c
	beq _08004F20
	cmp r0, #0x5d
	beq _08004FA0
	b _08004FC2
_08004F02:
	ldrb r0, [r4, #0xa]
	movs r1, #0xfa
	bl FUN_0803A10C
	cmp r0, #1
	bne _08004F2C
	adds r0, r4, #0
	movs r1, #0xfa
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #0x5c
	bl FUN_08001F84
	b _08004FC2
_08004F20:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08004FC2
_08004F2C:
	adds r0, r4, #0
	movs r1, #0xfb
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #7
	bl FUN_08001F84
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r4, r0
	adds r0, #0xc
	strh r0, [r1]
	b _08004FC2
_08004F48:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08004F7C @ => 0xFFFF0000
	cmp r1, r0
	bne _08004FC2
	ldrb r0, [r4, #0xa]
	movs r1, #0xfc
	bl FUN_0803A10C
	cmp r0, #1
	bne _08004F80
	adds r0, r4, #0
	movs r1, #0xfc
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #0x5d
	bl FUN_08001F84
	b _08004FC2
	.align 2, 0
_08004F7C: .4byte 0xFFFF0000
_08004F80:
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08001F20
	movs r1, #0x91
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl FUN_08001FB0
	adds r0, r4, #0
	movs r1, #2
	bl FUN_08001F84
	b _08004FC2
_08004FA0:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08004FC2
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08001F20
	movs r1, #0x91
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl FUN_08001FB0
_08004FC2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_08004FC8
FUN_08004FC8: @ 0x08004FC8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, _08004FF4 @ => 0x03003E28
	ldrb r1, [r4, #0x17]
	adds r0, r4, #0
	bl FUN_08038B24
	ldr r1, _08004FF8 @ => 0x0000011D
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0x27
	beq _08005068
	cmp r0, #0x27
	bgt _08004FFC
	cmp r0, #0x25
	beq _0800500A
	cmp r0, #0x25
	bgt _08005068
	cmp r0, #0x17
	bne _08004FF2
	b _08005164
_08004FF2:
	b _0800517E
	.align 2, 0
_08004FF4: .4byte gUnk_03003E28
_08004FF8: .4byte 0x0000011D
_08004FFC:
	cmp r0, #0x29
	beq _08005068
	cmp r0, #0x29
	blt _08005068
	cmp r0, #0x5e
	beq _08005080
	b _0800517E
_0800500A:
	movs r0, #0xa
	bl FUN_0804DE0C
	movs r0, #0x89
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl FUN_0803B9F4
	adds r4, r0, #0
	movs r0, #0xac
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #1
	str r0, [r1]
	movs r1, #0x1a
	ldrsh r2, [r5, r1]
	movs r0, #0x1e
	ldrsh r3, [r5, r0]
	adds r0, r4, #0
	movs r1, #3
	bl FUN_0803BB50
	cmp r0, #1
	bne _08005058
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #3
	bl FUN_080017B8
	adds r0, r4, #0
	movs r1, #1
	bl FUN_0803BC7C
	b _0800505E
_08005058:
	adds r0, r4, #0
	bl FUN_08001358
_0800505E:
	adds r0, r5, #0
	movs r1, #0x5e
	bl FUN_08001F84
	b _0800517E
_08005068:
	movs r0, #9
	bl FUN_0804DE0C
	adds r0, r5, #0
	movs r1, #0x29
	bl FUN_08001FB0
	adds r0, r5, #0
	movs r1, #0x27
	bl FUN_08001F84
	b _0800517E
_08005080:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl FUN_08038A30
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0800517E
	movs r6, #0
	subs r0, r4, #4
	ldr r4, _08005138 @ => 0x030043A0
	ldrb r1, [r4]
	bl FUN_08029724
	cmp r0, #0
	bne _080050CA
	ldr r0, [r4]
	cmp r0, #0xc
	beq _080050CA
	cmp r0, #0x24
	beq _080050CA
	cmp r0, #0
	beq _080050CA
	bl FUN_08021320
	cmp r0, #0
	beq _080050CA
	movs r0, #1
	movs r1, #0x64
	bl FUN_080424F8
	cmp r0, #0x32
	bgt _080050CA
	movs r6, #1
_080050CA:
	bl FUN_08021320
	cmp r0, #0
	bne _080050D4
	movs r6, #0
_080050D4:
	bl FUN_08021320
	cmp r0, #1
	bne _080050E8
	ldr r0, _0800513C @ => 0x0300407C
	movs r1, #8
	bl FUN_0801DEE0
	cmp r0, #0
	beq _08005112
_080050E8:
	bl FUN_08021320
	cmp r0, #5
	bne _0800510A
	ldr r4, _0800513C @ => 0x0300407C
	adds r0, r4, #0
	movs r1, #0x2e
	bl FUN_0801DEE0
	cmp r0, #1
	bne _0800510A
	adds r0, r4, #0
	movs r1, #0x2e
	bl FUN_0801DF10
	cmp r0, #0
	beq _08005112
_0800510A:
	bl FUN_08021320
	cmp r0, #8
	bne _08005114
_08005112:
	movs r6, #0
_08005114:
	cmp r6, #1
	bne _0800514C
	ldr r0, _08005140 @ => 0x03003DF0
	ldr r1, _08005144 @ => 0x000003FA
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08005148 @ => 0x03003180
	str r1, [r0]
	adds r0, r5, #0
	movs r1, #0x22
	bl FUN_08001FB0
	movs r0, #6
	bl FUN_0804DE0C
	b _0800517E
	.align 2, 0
_08005138: .4byte gUnk_030043A0
_0800513C: .4byte gEpisode_Data
_08005140: .4byte gUnk_03003DF0
_08005144: .4byte 0x000003FA
_08005148: .4byte gUnk_03003180
_0800514C:
	adds r0, r5, #0
	movs r1, #0x17
	bl FUN_08001F84
	ldr r0, _08005160 @ => 0x03003E28
	movs r1, #1
	bl FUN_08038B84
	b _0800517E
	.align 2, 0
_08005160: .4byte gUnk_03003E28
_08005164:
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0800517E
	movs r1, #0x91
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	bl FUN_08001FB0
_0800517E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start FUN_08005184
FUN_08005184: @ 0x08005184
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r6, r0, #0
	ldrb r4, [r6, #0x13]
	ldr r0, _0800520C @ => 0x03003460
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #0x1f]
	cmp r0, #1
	bne _080051A8
	adds r0, r6, #0
	movs r1, #2
	bl FUN_08001F84
_080051A8:
	ldr r0, _08005210 @ => 0x03004200
	mov r8, r0
	ldr r7, _08005214 @ => 0x030042B0
	ldrh r0, [r7, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	add r1, r8
	ldrh r1, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08005224
	adds r0, r6, #0
	bl FUN_08001848
	ldr r5, _08005218 @ => 0x0805A0E4
	ldr r4, _0800521C @ => 0x03003E28
	adds r0, r4, #0
	bl FUN_08038B80
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrb r1, [r0, #1]
	adds r0, r6, #0
	bl FUN_08001F20
	adds r0, r6, #0
	movs r1, #0x34
	bl FUN_08001FB0
	adds r0, r4, #0
	bl FUN_08038B80
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrb r1, [r0, #3]
	adds r0, r6, #0
	bl FUN_08001F84
	ldrh r0, [r7, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	add r1, r8
	ldrh r2, [r1, #8]
	ldr r0, _08005220 @ => 0x0000FEFF
	b _0800527C
	.align 2, 0
_0800520C: .4byte gUnk_03003460
_08005210: .4byte gUnk_03004200
_08005214: .4byte gUnk_030042B0
_08005218: .4byte ROMREF_0805A0E4
_0800521C: .4byte gUnk_03003E28
_08005220: .4byte 0x0000FEFF
_08005224:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08005290
	ldr r5, _08005284 @ => 0x03003E28
	adds r0, r5, #0
	bl FUN_08038B80
	cmp r0, #7
	beq _08005290
	adds r0, r6, #0
	bl FUN_08001848
	ldr r4, _08005288 @ => 0x0805A0E4
	adds r0, r5, #0
	bl FUN_08038B80
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r1, [r0]
	adds r0, r6, #0
	bl FUN_08001F20
	adds r0, r5, #0
	bl FUN_08038B80
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r1, [r0, #2]
	adds r0, r6, #0
	bl FUN_08001F84
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #0x3c
	strh r0, [r1]
	ldrh r0, [r7, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	add r1, r8
	ldrh r2, [r1, #8]
	ldr r0, _0800528C @ => 0x0000FF7F
_0800527C:
	ands r0, r2
	strh r0, [r1, #8]
	b _08005742
	.align 2, 0
_08005284: .4byte gUnk_03003E28
_08005288: .4byte ROMREF_0805A0E4
_0800528C: .4byte 0x0000FF7F
_08005290:
	ldr r2, _08005304 @ => 0x03003DF0
	movs r1, #0xdb
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080052EE
	ldr r1, _08005308 @ => 0x000003FA
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080052B4
	cmp r0, #2
	beq _080052B4
	cmp r0, #3
	bne _080052EE
_080052B4:
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp]
	movs r0, #4
	movs r1, #0x4b
	movs r2, #0
	add r3, sp, #4
	bl FUN_08001DB4
	ldr r0, [sp, #4]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	bl FUN_08028304
	ldr r2, [sp, #4]
	ldr r0, [r2, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0xc]
	ldr r0, _08005304 @ => 0x03003DF0
	movs r1, #0xdb
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #2
	rsbs r1, r1, #0
	str r1, [r0]
_080052EE:
	ldr r1, _0800530C @ => 0x0000011D
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0x4a
	bls _080052FA
	b _08005742
_080052FA:
	lsls r0, r0, #2
	ldr r1, _08005310 @ =_08005314
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005304: .4byte gUnk_03003DF0
_08005308: .4byte 0x000003FA
_0800530C: .4byte 0x0000011D
_08005310: .4byte _08005314
_08005314: @ jump table
	.4byte _08005440 @ case 0
	.4byte _08005706 @ case 1
	.4byte _08005482 @ case 2
	.4byte _0800552C @ case 3
	.4byte _08005742 @ case 4
	.4byte _080055DE @ case 5
	.4byte _08005742 @ case 6
	.4byte _08005622 @ case 7
	.4byte _08005742 @ case 8
	.4byte _08005742 @ case 9
	.4byte _08005742 @ case 10
	.4byte _0800568E @ case 11
	.4byte _08005742 @ case 12
	.4byte _08005742 @ case 13
	.4byte _08005742 @ case 14
	.4byte _08005742 @ case 15
	.4byte _08005742 @ case 16
	.4byte _08005742 @ case 17
	.4byte _08005742 @ case 18
	.4byte _08005742 @ case 19
	.4byte _08005742 @ case 20
	.4byte _08005742 @ case 21
	.4byte _08005742 @ case 22
	.4byte _08005680 @ case 23
	.4byte _08005742 @ case 24
	.4byte _08005742 @ case 25
	.4byte _08005742 @ case 26
	.4byte _08005742 @ case 27
	.4byte _08005742 @ case 28
	.4byte _08005742 @ case 29
	.4byte _08005742 @ case 30
	.4byte _08005718 @ case 31
	.4byte _08005718 @ case 32
	.4byte _08005718 @ case 33
	.4byte _08005718 @ case 34
	.4byte _08005718 @ case 35
	.4byte _08005742 @ case 36
	.4byte _08005742 @ case 37
	.4byte _08005742 @ case 38
	.4byte _08005742 @ case 39
	.4byte _08005742 @ case 40
	.4byte _08005742 @ case 41
	.4byte _08005742 @ case 42
	.4byte _08005742 @ case 43
	.4byte _08005742 @ case 44
	.4byte _08005742 @ case 45
	.4byte _08005742 @ case 46
	.4byte _08005742 @ case 47
	.4byte _08005742 @ case 48
	.4byte _08005742 @ case 49
	.4byte _08005742 @ case 50
	.4byte _08005742 @ case 51
	.4byte _08005742 @ case 52
	.4byte _08005680 @ case 53
	.4byte _08005698 @ case 54
	.4byte _08005742 @ case 55
	.4byte _08005742 @ case 56
	.4byte _08005742 @ case 57
	.4byte _08005742 @ case 58
	.4byte _08005742 @ case 59
	.4byte _08005742 @ case 60
	.4byte _08005742 @ case 61
	.4byte _08005742 @ case 62
	.4byte _08005742 @ case 63
	.4byte _08005742 @ case 64
	.4byte _08005742 @ case 65
	.4byte _08005742 @ case 66
	.4byte _08005742 @ case 67
	.4byte _08005742 @ case 68
	.4byte _08005742 @ case 69
	.4byte _08005742 @ case 70
	.4byte _08005742 @ case 71
	.4byte _08005742 @ case 72
	.4byte _08005654 @ case 73
	.4byte _080056C2 @ case 74
_08005440:
	adds r0, r4, #0
	bl FUN_08024A28
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	beq _0800545C
	ldr r0, _08005474 @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08005478
_0800545C:
	adds r0, r6, #0
	movs r1, #2
	bl FUN_08001F84
	adds r0, r6, #0
	movs r1, #4
	bl FUN_08001F20
	adds r0, r6, #0
	bl FUN_08001848
	b _08005742
	.align 2, 0
_08005474: .4byte gUnk_03004374
_08005478:
	adds r0, r6, #0
	movs r1, #3
	bl FUN_08001F84
	b _08005742
_08005482:
	movs r5, #1
	movs r0, #0
	str r0, [sp, #8]
	add r2, sp, #8
	str r0, [r2, #4]
	ldr r1, _080054B0 @ => 0x03003460
	lsls r0, r4, #3
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0x1f]
	adds r7, r2, #0
	cmp r0, #1
	beq _080054EE
	ldr r0, _080054B4 @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080054B8
	movs r1, #8
	b _080054C2
	.align 2, 0
_080054B0: .4byte gUnk_03003460
_080054B4: .4byte gUnk_03004374
_080054B8:
	adds r0, r4, #0
	bl FUN_08024A28
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_080054C2:
	cmp r1, #8
	beq _080054DA
	adds r0, r4, #0
	bl FUN_08024A28
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r6, #0
	bl FUN_08001FF0
	movs r5, #0
_080054DA:
	cmp r5, #0
	bne _080054EE
	adds r0, r6, #0
	adds r1, r7, #0
	bl FUN_08006F7C
	adds r0, r6, #0
	movs r1, #3
	bl FUN_08001F84
_080054EE:
	ldr r0, [sp, #8]
	str r0, [r6, #0x28]
	ldr r0, [r7, #4]
	str r0, [r6, #0x2c]
	ldr r0, _08005524 @ => 0x03003DF0
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08005506
	b _08005742
_08005506:
	ldr r1, _08005528 @ => 0x030042B0
	ldrh r0, [r1, #6]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800551A
	b _08005742
_0800551A:
	bl FUN_08021738
	cmp r0, #1
	bne _080055BA
	b _080055D4
	.align 2, 0
_08005524: .4byte gUnk_03003DF0
_08005528: .4byte gUnk_030042B0
_0800552C:
	ldr r0, _08005554 @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	movs r5, #1
	cmp r0, #0
	bne _0800555A
	movs r5, #0
	adds r0, r4, #0
	bl FUN_08024A28
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #8
	beq _08005558
	adds r0, r6, #0
	bl FUN_08001FF0
	b _0800555A
	.align 2, 0
_08005554: .4byte gUnk_03004374
_08005558:
	movs r5, #1
_0800555A:
	cmp r5, #0
	bne _0800556C
	add r4, sp, #8
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_08006F7C
	adds r7, r4, #0
	b _08005586
_0800556C:
	adds r0, r6, #0
	movs r1, #2
	bl FUN_08001F84
	adds r0, r6, #0
	movs r1, #4
	bl FUN_08001F20
	movs r1, #0
	str r1, [sp, #8]
	add r0, sp, #8
	str r1, [r0, #4]
	adds r7, r0, #0
_08005586:
	ldr r0, [sp, #8]
	str r0, [r6, #0x28]
	ldr r0, [r7, #4]
	str r0, [r6, #0x2c]
	ldr r0, _080055CC @ => 0x03003DF0
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0800559E
	b _08005742
_0800559E:
	ldr r1, _080055D0 @ => 0x030042B0
	ldrh r0, [r1, #6]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080055B2
	b _08005742
_080055B2:
	bl FUN_08021738
	cmp r0, #1
	beq _080055D4
_080055BA:
	cmp r0, #2
	beq _080055C0
	b _08005742
_080055C0:
	adds r0, r6, #0
	movs r1, #0x47
	bl FUN_08001FB0
	b _08005742
	.align 2, 0
_080055CC: .4byte gUnk_03003DF0
_080055D0: .4byte gUnk_030042B0
_080055D4:
	adds r0, r6, #0
	movs r1, #0x39
	bl FUN_08001FB0
	b _08005742
_080055DE:
	ldr r2, [r6, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r2
	cmp r0, #0
	bne _080055EC
	b _08005742
_080055EC:
	ldr r0, _08005610 @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08005618
	ldr r0, _08005614 @ => 0x030043A0
	ldr r2, [r0]
	movs r0, #1
	movs r1, #0
	bl FUN_0802CED4
	ldr r0, [r6, #0xc]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0xc]
	b _08005742
	.align 2, 0
_08005610: .4byte gUnk_03004374
_08005614: .4byte gUnk_030043A0
_08005618:
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r6, #0xc]
	b _08005742
_08005622:
	movs r0, #0x93
	lsls r0, r0, #1
	adds r1, r6, r0
	ldrh r0, [r1]
	subs r0, #1
	movs r4, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	ldr r1, _08005650 @ => 0xFFFF0000
	cmp r0, r1
	beq _0800563A
	b _08005742
_0800563A:
	adds r0, r6, #0
	movs r1, #2
	bl FUN_08001F84
	adds r0, r6, #0
	movs r1, #4
	bl FUN_08001F20
	str r4, [r6, #0x28]
	str r4, [r6, #0x2c]
	b _08005742
	.align 2, 0
_08005650: .4byte 0xFFFF0000
_08005654:
	movs r0, #0x93
	lsls r0, r0, #1
	adds r1, r6, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	ldr r1, _0800567C @ => 0xFFFF0000
	cmp r0, r1
	bne _08005742
	adds r0, r6, #0
	movs r1, #4
	bl FUN_08001F20
	adds r0, r6, #0
	movs r1, #2
	bl FUN_08001F84
	b _08005742
	.align 2, 0
_0800567C: .4byte 0xFFFF0000
_08005680:
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08005742
	b _080056FE
_0800568E:
	adds r0, r6, #0
	movs r1, #4
	bl FUN_08001F20
	b _080056BA
_08005698:
	adds r0, r6, #0
	bl FUN_08001848
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080056BA
	adds r0, r6, #0
	movs r1, #2
	bl FUN_08001F84
	adds r0, r6, #0
	movs r1, #4
	bl FUN_08001F20
_080056BA:
	movs r0, #0
	str r0, [r6, #0x28]
	str r0, [r6, #0x2c]
	b _08005742
_080056C2:
	adds r0, r6, #0
	bl FUN_08001848
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08005710 @ => 0xFFFF0000
	lsls r2, r4, #3
	cmp r1, r0
	beq _080056EC
	ldr r0, _08005714 @ => 0x030042B0
	adds r0, r2, r0
	ldrh r1, [r0, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08005742
_080056EC:
	ldr r0, _08005714 @ => 0x030042B0
	adds r0, r2, r0
	ldrh r1, [r0, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080056FE
	bl FUN_08044ADC
_080056FE:
	adds r0, r6, #0
	movs r1, #2
	bl FUN_08001F84
_08005706:
	adds r0, r6, #0
	movs r1, #4
	bl FUN_08001F20
	b _08005742
	.align 2, 0
_08005710: .4byte 0xFFFF0000
_08005714: .4byte gUnk_030042B0
_08005718:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08005750 @ => 0xFFFF0000
	cmp r1, r0
	bne _0800573C
	adds r0, r6, #0
	movs r1, #2
	bl FUN_08001F84
	adds r0, r6, #0
	movs r1, #4
	bl FUN_08001F20
_0800573C:
	adds r0, r6, #0
	bl FUN_08001848
_08005742:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005750: .4byte 0xFFFF0000

	thumb_func_start FUN_08005754
FUN_08005754: @ 0x08005754
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x2c
	adds r5, r0, #0
	ldr r1, _08005770 @ => 0x0000011D
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08005774
	cmp r0, #0xb
	beq _08005836
	b _0800586A
	.align 2, 0
_08005770: .4byte 0x0000011D
_08005774:
	movs r0, #0xa
	str r0, [sp]
	movs r0, #5
	movs r1, #0
	movs r2, #1
	add r3, sp, #4
	bl FUN_08001E10
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, _0800580C @ => 0x27100000
	mov sb, r0
	movs r6, #0
	mov r8, r6
	cmp r6, r7
	bhs _080057CA
	add r4, sp, #4
_08005796:
	ldr r2, [r4]
	ldrh r0, [r2, #0xa]
	subs r0, #0xd
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x19
	bhi _080057C0
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldr r3, [r2, #0x1c]
	ldr r2, [r2, #0x18]
	bl FUN_0802C538
	adds r1, r0, #0
	ldr r0, _08005810 @ => 0x004FFFFF
	cmp r1, r0
	bgt _080057C0
	cmp r1, sb
	bge _080057C0
	mov sb, r1
	ldr r6, [r4]
_080057C0:
	adds r4, #4
	movs r1, #1
	add r8, r1
	cmp r8, r7
	blo _08005796
_080057CA:
	cmp r6, #0
	beq _08005826
	adds r0, r6, #0
	movs r1, #0x28
	bl FUN_08001FB0
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r5, r1
	str r6, [r0]
	adds r0, r5, #0
	bl FUN_08001848
	adds r0, r5, #0
	adds r1, r6, #0
	bl FUN_08001BF4
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl FUN_08001FF0
	bl FUN_08023680
	cmp r0, #1
	bne _08005814
	adds r0, r5, #0
	movs r1, #0x6d
	bl FUN_08001F20
	b _0800581C
	.align 2, 0
_0800580C: .4byte 0x27100000
_08005810: .4byte 0x004FFFFF
_08005814:
	adds r0, r5, #0
	movs r1, #0xee
	bl FUN_08001F20
_0800581C:
	adds r0, r5, #0
	movs r1, #0xb
	bl FUN_08001F84
	b _0800586A
_08005826:
	movs r1, #0x91
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	bl FUN_08001FB0
	b _0800586A
_08005836:
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl FUN_08001BF4
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl FUN_08001FF0
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0800586A
	movs r1, #0x91
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	bl FUN_08001FB0
_0800586A:
	add sp, #0x2c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_08005878
FUN_08005878: @ 0x08005878
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r1, _08005894 @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0x3f
	bls _0800588A
	b _08005BAC
_0800588A:
	lsls r0, r0, #2
	ldr r1, _08005898 @ =_0800589C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005894: .4byte 0x0000011D
_08005898: .4byte _0800589C
_0800589C: @ jump table
	.4byte _0800599C @ case 0
	.4byte _08005BAC @ case 1
	.4byte _0800599C @ case 2
	.4byte _08005BAC @ case 3
	.4byte _08005BAC @ case 4
	.4byte _08005BAC @ case 5
	.4byte _08005BAC @ case 6
	.4byte _080059C0 @ case 7
	.4byte _08005BAC @ case 8
	.4byte _08005BAC @ case 9
	.4byte _08005BAC @ case 10
	.4byte _08005BAC @ case 11
	.4byte _08005BAC @ case 12
	.4byte _08005BAC @ case 13
	.4byte _08005BAC @ case 14
	.4byte _08005BAC @ case 15
	.4byte _08005BAC @ case 16
	.4byte _08005BAC @ case 17
	.4byte _08005BAC @ case 18
	.4byte _08005BAC @ case 19
	.4byte _08005BAC @ case 20
	.4byte _08005BAC @ case 21
	.4byte _08005BAC @ case 22
	.4byte _08005BAC @ case 23
	.4byte _08005BAC @ case 24
	.4byte _08005A84 @ case 25
	.4byte _08005BAC @ case 26
	.4byte _08005BAC @ case 27
	.4byte _08005BAC @ case 28
	.4byte _08005BAC @ case 29
	.4byte _08005BAC @ case 30
	.4byte _08005BAC @ case 31
	.4byte _08005BAC @ case 32
	.4byte _08005BAC @ case 33
	.4byte _08005BAC @ case 34
	.4byte _08005BAC @ case 35
	.4byte _08005BAC @ case 36
	.4byte _08005BAC @ case 37
	.4byte _08005BAC @ case 38
	.4byte _08005BAC @ case 39
	.4byte _08005BAC @ case 40
	.4byte _08005BAC @ case 41
	.4byte _08005BAC @ case 42
	.4byte _08005A68 @ case 43
	.4byte _08005BAC @ case 44
	.4byte _08005BAC @ case 45
	.4byte _08005BAC @ case 46
	.4byte _08005B2C @ case 47
	.4byte _08005BAC @ case 48
	.4byte _08005BAC @ case 49
	.4byte _08005BAC @ case 50
	.4byte _08005BAC @ case 51
	.4byte _08005BAC @ case 52
	.4byte _08005BAC @ case 53
	.4byte _08005BAC @ case 54
	.4byte _08005BAC @ case 55
	.4byte _08005BAC @ case 56
	.4byte _08005BAC @ case 57
	.4byte _08005BAC @ case 58
	.4byte _08005BAC @ case 59
	.4byte _08005BAC @ case 60
	.4byte _08005AE0 @ case 61
	.4byte _08005A30 @ case 62
	.4byte _08005A58 @ case 63
_0800599C:
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #7
	bl FUN_08001F84
	movs r1, #0x96
	lsls r1, r1, #1
	movs r0, #0x96
	bl FUN_080424F8
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	b _08005BAC
_080059C0:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08005A1C @ => 0xFFFF0000
	cmp r1, r0
	beq _080059D6
	b _08005BAC
_080059D6:
	movs r5, #0
	ldr r2, _08005A20 @ => 0x0000011F
	adds r0, r4, r2
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08005A28
	adds r1, r4, #0
	adds r1, #0x38
	ldr r0, _08005A24 @ => 0x00000123
	adds r2, r4, r0
	str r5, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_08043BB8
	cmp r0, #1
	bne _08005A28
	adds r0, r4, #0
	bl FUN_08043F68
	adds r0, r4, #0
	movs r1, #0xc8
	bl FUN_08043FA4
	adds r0, r4, #0
	movs r1, #0xa
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #0x2f
	bl FUN_08001F84
	b _08005BAC
	.align 2, 0
_08005A1C: .4byte 0xFFFF0000
_08005A20: .4byte 0x0000011F
_08005A24: .4byte 0x00000123
_08005A28:
	cmp r5, #0
	beq _08005A2E
	b _08005BAC
_08005A2E:
	b _08005B04
_08005A30:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08005A98
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08005A54 @ => 0xFFFF0000
	cmp r1, r0
	beq _08005A52
	b _08005BAC
_08005A52:
	b _08005A98
	.align 2, 0
_08005A54: .4byte 0xFFFF0000
_08005A58:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08005A66
	b _08005BAC
_08005A66:
	b _08005A98
_08005A68:
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08005A80 @ => 0xFFFF0000
	cmp r1, r0
	beq _08005A7E
	b _08005BAC
_08005A7E:
	b _08005A98
	.align 2, 0
_08005A80: .4byte 0xFFFF0000
_08005A84:
	movs r0, #0x90
	lsls r0, r0, #1
	adds r5, r4, r0
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	ldr r1, _08005AA4 @ => 0xFFFF0000
	cmp r0, r1
	bne _08005AA8
_08005A98:
	adds r0, r4, #0
	movs r1, #2
	bl FUN_08001F84
	b _08005BAC
	.align 2, 0
_08005AA4: .4byte 0xFFFF0000
_08005AA8:
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r0, #0
	beq _08005AD4
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08001F20
	ldr r1, _08005ADC @ => 0x0805F954
	ldrb r0, [r4, #0x12]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl FUN_08001FF0
	adds r0, r4, #0
	movs r1, #7
	bl FUN_08001F84
	movs r0, #0x1e
	strh r0, [r5]
_08005AD4:
	adds r0, r4, #0
	bl FUN_08038E88
	b _08005BAC
	.align 2, 0
_08005ADC: .4byte ROMREF_0805F954
_08005AE0:
	add r2, sp, #8
	adds r0, r4, #0
	add r1, sp, #4
	bl FUN_080070A4
	cmp r0, #1
	bne _08005AFE
	ldr r0, [sp, #4]
	ldr r2, [sp, #8]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r1, r4, #0
	bl FUN_0803C338
	b _08005B00
_08005AFE:
	movs r0, #0
_08005B00:
	cmp r0, #0
	bne _08005BAC
_08005B04:
	adds r0, r4, #0
	movs r1, #0xa
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #0x19
	bl FUN_08001F84
	movs r0, #0x1e
	movs r1, #0x5a
	bl FUN_080424F8
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	adds r0, r4, #0
	bl FUN_08007DA4
	b _08005BAC
_08005B2C:
	ldr r1, _08005B80 @ => 0x00000123
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _08005BAC
	cmp r0, #3
	beq _08005B3E
	cmp r0, #0
	bne _08005B94
_08005B3E:
	adds r0, r4, #0
	bl FUN_08043F34
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0x17
	ands r0, r1
	cmp r0, #0
	beq _08005B84
	adds r0, r4, #0
	movs r1, #0xa
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #0x19
	bl FUN_08001F84
	movs r0, #0x1e
	movs r1, #0x5a
	bl FUN_080424F8
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	adds r0, r4, #0
	bl FUN_08007DA4
	adds r0, r4, #0
	bl FUN_0803A938
	b _08005BAC
	.align 2, 0
_08005B80: .4byte 0x00000123
_08005B84:
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08001FB0
	adds r0, r4, #0
	bl FUN_0803A90C
	b _08005BAC
_08005B94:
	cmp r0, #1
	bne _08005BAC
	adds r0, r4, #0
	bl FUN_08043F34
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08001FB0
	adds r0, r4, #0
	bl FUN_0803A90C
_08005BAC:
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_08005BB4
FUN_08005BB4: @ 0x08005BB4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r3, _08005BF0 @ => 0x03004200
	ldr r0, _08005BF4 @ => 0x030042B0
	ldrh r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r7, [r0]
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r0, r0, r5
	mov r8, r0
	ldr r1, _08005BF8 @ => 0x0000011D
	adds r0, r5, r1
	ldrb r2, [r0]
	cmp r2, #7
	bne _08005BE2
	b _08005D3C
_08005BE2:
	cmp r2, #7
	bgt _08005BFC
	cmp r2, #0
	beq _08005C08
	cmp r2, #2
	beq _08005C34
	b _08005D78
	.align 2, 0
_08005BF0: .4byte gUnk_03004200
_08005BF4: .4byte gUnk_030042B0
_08005BF8: .4byte 0x0000011D
_08005BFC:
	cmp r2, #0xb
	bne _08005C02
	b _08005D78
_08005C02:
	cmp r2, #0x4b
	beq _08005C34
	b _08005D78
_08005C08:
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	ldr r1, _08005C30 @ => 0xEFFFFFFF
	ands r0, r1
	str r0, [r5, #0xc]
	movs r1, #0xae
	lsls r1, r1, #1
	adds r0, r5, r1
	str r2, [r0]
	subs r1, #0x39
	adds r0, r5, r1
	strb r2, [r0]
	adds r0, r5, #0
	movs r1, #0x4b
	bl FUN_08001F84
	b _08005D78
	.align 2, 0
_08005C30: .4byte 0xEFFFFFFF
_08005C34:
	ldr r0, [r7, #0x18]
	ldr r1, [r7, #0x1c]
	ldr r2, [r5, #0x18]
	ldr r3, [r5, #0x1c]
	bl FUN_0802C538
	lsrs r4, r0, #0x10
	cmp r4, #0x18
	bhi _08005C60
	adds r0, r5, #0
	movs r1, #0xa
	bl FUN_08001F20
	ldr r2, _08005C5C @ => 0x08071E3C
	ldrh r1, [r5, #0xa]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #8
	b _08005CBE
	.align 2, 0
_08005C5C: .4byte CastAnimTable
_08005C60:
	adds r0, r5, #0
	bl FUN_08000DB8
	cmp r0, #0
	bne _08005C78
	adds r0, r5, #0
	movs r1, #8
	bl FUN_08001F20
	movs r0, #0x80
	lsls r0, r0, #0xc
	b _08005CC2
_08005C78:
	adds r0, r5, #0
	adds r0, #0xd8
	ldrh r0, [r0]
	cmp r0, #8
	bne _08005CA4
	cmp r4, #0x27
	bhi _08005CC4
	adds r0, r5, #0
	movs r1, #0xa
	bl FUN_08001F20
	ldr r2, _08005C9C @ => 0x08062C10
	ldr r0, _08005CA0 @ => 0x03003DF0
	ldrb r1, [r0, #0x1c]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	b _08005CBE
	.align 2, 0
_08005C9C: .4byte ROMREF_08062C10
_08005CA0: .4byte gUnk_03003DF0
_08005CA4:
	cmp r4, #0x3c
	bls _08005CC4
	adds r0, r5, #0
	movs r1, #8
	bl FUN_08001F20
	ldr r2, _08005CF8 @ => 0x08062C10
	ldr r0, _08005CFC @ => 0x03003DF0
	ldrb r1, [r0, #0x1c]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #4
_08005CBE:
	adds r0, r0, r2
	ldr r0, [r0]
_08005CC2:
	str r0, [r5, #0x14]
_08005CC4:
	cmp r4, #0x18
	bhi _08005D00
	adds r0, r5, #0
	bl FUN_08043F34
	adds r0, r5, #0
	bl FUN_08001848
	adds r0, r5, #0
	movs r1, #4
	bl FUN_08001F20
	adds r0, r5, #0
	movs r1, #7
	bl FUN_08001F84
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r0, #0x78
	strh r0, [r1]
	adds r0, r5, #0
	bl FUN_08007DA4
	b _08005D78
	.align 2, 0
_08005CF8: .4byte ROMREF_08062C10
_08005CFC: .4byte gUnk_03003DF0
_08005D00:
	ldr r0, _08005D38 @ => 0x00000123
	adds r6, r5, r0
	ldrb r0, [r6]
	cmp r0, #2
	beq _08005D78
	mov r1, r8
	ldr r0, [r1]
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r1, #4]
	lsls r0, r0, #0x10
	str r0, [sp, #8]
	adds r0, r5, #0
	bl FUN_08043F34
	movs r4, #0
	str r4, [sp]
	adds r0, r5, #0
	add r1, sp, #4
	adds r2, r6, #0
	movs r3, #2
	bl FUN_08043BB8
	movs r2, #0xae
	lsls r2, r2, #1
	adds r0, r5, r2
	str r4, [r0]
	b _08005D78
	.align 2, 0
_08005D38: .4byte 0x00000123
_08005D3C:
	ldr r0, [r3]
	ldr r1, [r0, #0x1c]
	ldr r0, [r0, #0x18]
	ldr r2, [r5, #0x18]
	ldr r3, [r5, #0x1c]
	bl FUN_0802C538
	lsrs r4, r0, #0x10
	cmp r4, #0x5a
	bls _08005D64
	adds r0, r5, #0
	movs r1, #0x4b
	bl FUN_08001F84
	movs r0, #0xae
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	b _08005D78
_08005D64:
	adds r0, r5, #0
	adds r1, r7, #0
	bl FUN_08001BF4
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl FUN_08001FF0
_08005D78:
	movs r1, #0xae
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08005DB0
	mov r1, r8
	movs r3, #4
_08005D88:
	movs r2, #0x1a
	ldrsh r0, [r7, r2]
	str r0, [r1]
	movs r2, #0x1e
	ldrsh r0, [r7, r2]
	str r0, [r1, #4]
	adds r1, #8
	subs r3, #1
	cmp r3, #0
	bge _08005D88
	movs r1, #0xae
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #1
	str r1, [r0]
	movs r2, #0x93
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r0, #0x1e
	strh r0, [r1]
_08005DB0:
	movs r0, #0x93
	lsls r0, r0, #1
	adds r1, r5, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	ldr r1, _08005DF8 @ => 0xFFFF0000
	cmp r0, r1
	bne _08005DEC
	mov r2, r8
	movs r3, #3
_08005DC8:
	ldr r0, [r2, #8]
	ldr r1, [r2, #0xc]
	stm r2!, {r0, r1}
	subs r3, #1
	cmp r3, #0
	bge _08005DC8
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	mov r2, r8
	str r0, [r2, #0x20]
	movs r1, #0x1e
	ldrsh r0, [r7, r1]
	str r0, [r2, #0x24]
	movs r2, #0x93
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r0, #0x1e
	strh r0, [r1]
_08005DEC:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005DF8: .4byte 0xFFFF0000

	thumb_func_start FUN_08005DFC
FUN_08005DFC: @ 0x08005DFC
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r1, [r4, #0xc]
	ldr r3, [r4, #0x14]
	mov r0, sp
	adds r2, r5, #0
	bl FUN_08001030
	ldr r2, [sp]
	ldr r0, [r4, #0x18]
	adds r2, r2, r0
	ldr r0, [sp, #4]
	ldr r1, [r4, #0x1c]
	adds r0, r0, r1
	asrs r2, r2, #0x10
	str r2, [sp]
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	cmp r5, #7
	bhi _08005ED0
	lsls r0, r5, #2
	ldr r1, _08005E34 @ =_08005E38
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005E34: .4byte _08005E38
_08005E38: @ jump table
	.4byte _08005EC2 @ case 0
	.4byte _08005E58 @ case 1
	.4byte _08005E66 @ case 2
	.4byte _08005E76 @ case 3
	.4byte _08005E8A @ case 4
	.4byte _08005E90 @ case 5
	.4byte _08005EA4 @ case 6
	.4byte _08005EB4 @ case 7
_08005E58:
	adds r0, r4, #0
	adds r0, #0x8a
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [sp]
	adds r0, r0, r1
	b _08005EC0
_08005E66:
	adds r0, r4, #0
	adds r0, #0x8a
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [sp]
	adds r0, r0, r1
	str r0, [sp]
	b _08005ED0
_08005E76:
	adds r0, r4, #0
	adds r0, #0x8a
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [sp]
	adds r0, r0, r1
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0x8e
	b _08005EC6
_08005E8A:
	adds r0, r4, #0
	adds r0, #0x8e
	b _08005EC6
_08005E90:
	adds r0, r4, #0
	adds r0, #0x8a
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [sp]
	subs r0, r0, r1
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0x8e
	b _08005EC6
_08005EA4:
	adds r0, r4, #0
	adds r0, #0x8a
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [sp]
	subs r0, r0, r1
	str r0, [sp]
	b _08005ED0
_08005EB4:
	adds r0, r4, #0
	adds r0, #0x8a
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [sp]
	subs r0, r0, r1
_08005EC0:
	str r0, [sp]
_08005EC2:
	adds r0, r4, #0
	adds r0, #0x8c
_08005EC6:
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [sp, #4]
	adds r0, r0, r1
	str r0, [sp, #4]
_08005ED0:
	ldr r6, [sp]
	ldr r7, [sp, #4]
	adds r1, r7, #0
	adds r0, r6, #0
	movs r2, #0
	bl FUN_08038DAC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08005EEC
FUN_08005EEC: @ 0x08005EEC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _08005F08 @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _08005F2C
	cmp r0, #2
	bgt _08005F0C
	cmp r0, #0
	beq _08005F12
	b _0800603C
	.align 2, 0
_08005F08: .4byte 0x0000011D
_08005F0C:
	cmp r0, #0xb
	beq _08005F90
	b _0800603C
_08005F12:
	adds r0, r4, #0
	bl FUN_08001848
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0xf
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #2
	bl FUN_08001F84
	b _0800603C
_08005F2C:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08005F84 @ => 0xFFFF0000
	cmp r1, r0
	bne _0800603C
	ldrh r0, [r4, #0xa]
	cmp r0, #0xe
	bne _08005F4E
	bl FUN_08021320
	cmp r0, #0
	beq _08005F70
_08005F4E:
	ldr r2, _08005F88 @ => 0x03004200
	ldr r0, _08005F8C @ => 0x030042B0
	ldrh r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r4, #0
	bl FUN_08001BF4
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl FUN_08001FF0
_08005F70:
	adds r0, r4, #0
	movs r1, #0xee
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #0xb
	bl FUN_08001F84
	b _0800603C
	.align 2, 0
_08005F84: .4byte 0xFFFF0000
_08005F88: .4byte gUnk_03004200
_08005F8C: .4byte gUnk_030042B0
_08005F90:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0800603C
	ldrh r0, [r4, #0xa]
	subs r0, #0xd
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x19
	bhi _0800602E
	ldrh r0, [r4, #0xa]
	bl FUN_0803AD1C
	ldr r5, [r4, #0x58]
	cmp r5, #0
	bne _0800602E
	ldrh r0, [r4, #0xa]
	bl FUN_0803B428
	cmp r0, #1
	bne _08005FCA
	movs r2, #0x96
	lsls r2, r2, #1
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0
	b _08006026
_08005FCA:
	ldrh r0, [r4, #0xa]
	bl FUN_0803AE08
	adds r6, r0, #0
	cmp r6, #0
	beq _08006014
	ldrh r0, [r4, #0xa]
	bl FUN_0803AE08
	cmp r0, #2
	beq _08005FFC
	cmp r0, #2
	bhi _08005FEA
	cmp r0, #1
	beq _08005FF0
	b _0800602E
_08005FEA:
	cmp r0, #3
	beq _08006008
	b _0800602E
_08005FF0:
	movs r2, #0x96
	lsls r2, r2, #1
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0x15
	b _08006026
_08005FFC:
	movs r2, #0x96
	lsls r2, r2, #1
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #9
	b _08006026
_08006008:
	movs r2, #0x96
	lsls r2, r2, #1
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0x1b
	b _08006026
_08006014:
	bl FUN_08021320
	bl FUN_0801DFA0
	adds r1, r0, #0
	movs r2, #0x96
	lsls r2, r2, #1
	str r6, [sp]
	adds r0, r4, #0
_08006026:
	movs r3, #0
	bl FUN_0800B4BC
	str r0, [r4, #0x58]
_0800602E:
	movs r1, #0x91
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl FUN_08001FB0
_0800603C:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start FUN_08006044
FUN_08006044: @ 0x08006044
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r7, #0
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r0, [r0]
	bl FUN_0800738C
	lsls r0, r0, #0x18
	asrs r0, r0, #8
	ldr r1, _08006078 @ => 0x0805A06C
	lsrs r0, r0, #0xd
	adds r5, r0, r1
	ldrb r6, [r5, #6]
	ldr r2, _0800607C @ => 0x0000011D
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0x3b
	beq _080060CA
	cmp r0, #0x3b
	bgt _08006080
	cmp r0, #0
	beq _08006086
	b _0800613C
	.align 2, 0
_08006078: .4byte ROMREF_0805A06C
_0800607C: .4byte 0x0000011D
_08006080:
	cmp r0, #0x3c
	beq _080060FC
	b _0800613C
_08006086:
	adds r0, r4, #0
	bl FUN_08001848
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_08001F20
	ldrb r1, [r5, #7]
	adds r0, r4, #0
	bl FUN_08001F84
	ldrh r0, [r5, #4]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r5, r4, r1
	strh r0, [r5]
	cmp r6, #0x2a
	bne _080060BA
	movs r0, #0x31
	bl FUN_0804DE0C
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r1, r4, r2
	str r0, [r1]
	b _0800613C
_080060BA:
	cmp r6, #0x28
	bne _0800613C
	movs r0, #0x30
	bl FUN_0804DE0C
	movs r0, #0xf
	strh r0, [r5]
	b _0800613C
_080060CA:
	ldr r5, _080060F4 @ => 0x03003E28
	adds r0, r5, #0
	movs r1, #1
	movs r2, #2
	bl FUN_08038A30
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _080060F8 @ => 0xFFFF0000
	cmp r1, r0
	bne _0800613C
	adds r0, r5, #0
	movs r1, #2
	bl FUN_08038B24
	b _08006140
	.align 2, 0
_080060F4: .4byte gUnk_03003E28
_080060F8: .4byte 0xFFFF0000
_080060FC:
	ldr r5, _08006174 @ => 0x03003E28
	adds r0, r5, #0
	movs r1, #1
	movs r2, #3
	bl FUN_08038A30
	movs r0, #0x90
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _08006178 @ => 0xFFFF0000
	cmp r0, r1
	bne _08006126
	movs r0, #0xf
	strh r0, [r2]
	movs r0, #0x30
	bl FUN_0804DE0C
_08006126:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0800613C
	adds r0, r5, #0
	movs r1, #3
	bl FUN_08038B24
	movs r7, #1
_0800613C:
	cmp r7, #0
	beq _0800616C
_08006140:
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	bl FUN_0804E03C
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08001FF0
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #0xd
	bl FUN_08001FB0
	adds r0, r4, #0
	movs r1, #2
	bl FUN_08001F84
_0800616C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006174: .4byte gUnk_03003E28
_08006178: .4byte 0xFFFF0000

	thumb_func_start FUN_0800617C
FUN_0800617C: @ 0x0800617C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	movs r0, #0
	mov r8, r0
	mov sl, r0
	ldrb r4, [r5, #0x13]
	adds r0, r4, #0
	bl FUN_08024A28
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _080061C0
	ldr r0, _080061BC @ => 0x03003DF0
	ldr r1, [r0, #0x68]
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	lsls r0, r0, #2
	ldr r1, [r1, #4]
	adds r6, r1, r0
	b _080061C2
	.align 2, 0
_080061BC: .4byte gUnk_03003DF0
_080061C0:
	movs r6, #0
_080061C2:
	movs r0, #1
	mov sb, r0
	ldr r1, _080061DC @ => 0x0000011D
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0xb
	bne _080061D2
	b _08006328
_080061D2:
	cmp r0, #0xb
	bgt _080061E0
	cmp r0, #0
	beq _080061E6
	b _08006340
	.align 2, 0
_080061DC: .4byte 0x0000011D
_080061E0:
	cmp r0, #0x12
	beq _0800623C
	b _08006340
_080061E6:
	adds r0, r5, #0
	movs r1, #4
	bl FUN_08001F20
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #1
	bne _0800620E
	ldrh r0, [r6]
	ldrb r1, [r6, #2]
	ldrb r2, [r6, #3]
	movs r3, #1
	bl FUN_0803B9F4
	movs r2, #0x98
	lsls r2, r2, #1
	adds r1, r5, r2
	str r0, [r1]
_0800620E:
	movs r0, #0x98
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, [r4]
	movs r1, #1
	bl FUN_08002038
	ldr r0, _08006238 @ => 0x03004398
	ldr r0, [r0]
	ldr r2, [r4]
	adds r1, r5, #0
	bl FUN_0803DE34
	adds r0, r5, #0
	movs r1, #0x12
	bl FUN_08001F84
	adds r0, r5, #0
	bl FUN_08001848
	b _0800634C
	.align 2, 0
_08006238: .4byte gUnk_03004398
_0800623C:
	ldr r0, _08006268 @ => 0x030042B0
	lsls r1, r4, #3
	adds r4, r1, r0
	ldrh r2, [r4, #0x14]
	movs r0, #2
	ands r0, r2
	adds r7, r1, #0
	cmp r0, #0
	beq _08006270
	bl FUN_0803E014
	movs r0, #0xb1
	bl FUN_0804DE0C
	movs r1, #1
	mov r8, r1
	ldrh r1, [r4, #0x14]
	ldr r0, _0800626C @ => 0x0000FFFD
	ands r0, r1
	strh r0, [r4, #0x14]
	b _0800634C
	.align 2, 0
_08006268: .4byte gUnk_030042B0
_0800626C: .4byte 0x0000FFFD
_08006270:
	mov r0, sb
	ands r0, r2
	cmp r0, #0
	beq _080062DC
	bl FUN_0803E1C0
	cmp r0, #1
	bne _080062C0
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r4, r5, r2
	ldr r0, [r4]
	cmp r0, #1
	bne _080062AE
	ldrh r0, [r6]
	bl FUN_08007148
	movs r0, #1
	mov sl, r0
	ldr r0, [r4]
	cmp r0, #1
	bne _080062AE
	ldr r0, _080062BC @ => 0x03003DF0
	ldr r0, [r0, #0x68]
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r1, [r1]
	movs r2, #1
	bl FUN_08026260
_080062AE:
	movs r0, #0xad
	bl FUN_0804DE0C
	movs r0, #1
	mov r8, r0
	b _080062C6
	.align 2, 0
_080062BC: .4byte gUnk_03003DF0
_080062C0:
	movs r0, #0xbe
	bl FUN_0804DE0C
_080062C6:
	ldr r0, _080062D4 @ => 0x030042B0
	adds r0, r7, r0
	ldrh r2, [r0, #0x14]
	ldr r1, _080062D8 @ => 0x0000FFFE
	ands r1, r2
	strh r1, [r0, #0x14]
	b _0800634C
	.align 2, 0
_080062D4: .4byte gUnk_030042B0
_080062D8: .4byte 0x0000FFFE
_080062DC:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080062EA
	movs r0, #0
	b _080062F6
_080062EA:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08006302
	movs r0, #1
_080062F6:
	bl FUN_0803E08C
	movs r0, #0xc0
	bl FUN_0804DE0C
	b _0800634C
_08006302:
	cmp r3, #8
	beq _0800634C
	ldr r0, _08006324 @ => 0x0805F974
	adds r0, r3, r0
	ldrb r3, [r0]
	adds r0, r3, #0
	bl FUN_0803E0F0
	movs r0, #0xb2
	bl FUN_0804DE0C
	adds r0, r5, #0
	movs r1, #0xb
	bl FUN_08001F84
	b _0800634C
	.align 2, 0
_08006324: .4byte ROMREF_0805F974
_08006328:
	adds r0, r4, #0
	bl FUN_08024A28
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bne _0800634C
	adds r0, r5, #0
	movs r1, #0x12
	bl FUN_08001F84
	b _0800634C
_08006340:
	bl FUN_0803E014
	movs r1, #0
	mov sb, r1
	movs r2, #1
	mov r8, r2
_0800634C:
	mov r0, r8
	cmp r0, #1
	bne _0800637C
	adds r0, r5, #0
	movs r1, #0xd
	bl FUN_08001FB0
	mov r1, sl
	cmp r1, #1
	bne _08006366
	movs r0, #8
	bl FUN_0804DE0C
_08006366:
	mov r2, sb
	cmp r2, #1
	bne _0800637C
	adds r0, r5, #0
	movs r1, #4
	bl FUN_08001F20
	adds r0, r5, #0
	movs r1, #2
	bl FUN_08001F84
_0800637C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0800638C
FUN_0800638C: @ 0x0800638C
	push {r4, r5, r6, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	ldr r1, _080063AC @ => 0x0000011D
	adds r0, r4, r1
	ldrb r5, [r0]
	cmp r5, #3
	beq _0800645C
	cmp r5, #3
	bgt _080063B0
	cmp r5, #0
	beq _080063BC
	cmp r5, #2
	bne _080063AA
	b _080064C8
_080063AA:
	b _08006504
	.align 2, 0
_080063AC: .4byte 0x0000011D
_080063B0:
	cmp r5, #7
	beq _080064A0
	cmp r5, #0x3d
	bne _080063BA
	b _080064D8
_080063BA:
	b _08006504
_080063BC:
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r6, r4, r2
	ldrb r0, [r6]
	bl FUN_08009BC8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800643E
	ldrb r0, [r6]
	bl FUN_08009BC8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	subs r1, #1
	movs r0, #0
	bl FUN_080424F8
	movs r1, #0x9d
	lsls r1, r1, #1
	adds r2, r4, r1
	strb r0, [r2]
	ldrb r1, [r6]
	ldrb r2, [r2]
	add r0, sp, #4
	bl FUN_08009BE0
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [sp, #0xc]
	lsls r0, r0, #0x10
	str r0, [sp, #0xc]
	add r1, sp, #0xc
	ldr r0, [r1, #4]
	lsls r0, r0, #0x10
	str r0, [r1, #4]
	ldr r0, _08006430 @ => 0x00000123
	adds r2, r4, r0
	str r5, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_08043BB8
	cmp r0, #1
	bne _08006434
	adds r0, r4, #0
	movs r1, #0xa
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #3
	bl FUN_08001F84
	b _08006504
	.align 2, 0
_08006430: .4byte 0x00000123
_08006434:
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08001F20
	b _08006504
_0800643E:
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08001F20
	ldr r1, _08006458 @ => 0x0000013B
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #1
	movs r2, #0x90
	lsls r2, r2, #1
	b _0800648A
	.align 2, 0
_08006458: .4byte 0x0000013B
_0800645C:
	ldr r1, _08006498 @ => 0x00000123
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #3
	beq _0800646E
	cmp r0, #1
	beq _0800646E
	cmp r0, #0
	bne _08006504
_0800646E:
	adds r0, r4, #0
	bl FUN_08043F34
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08001F20
	ldr r2, _0800649C @ => 0x0000013B
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #1
	subs r2, #0x1b
_0800648A:
	adds r0, r4, r2
	strh r1, [r0]
	adds r0, r4, #0
	movs r1, #7
	bl FUN_08001F84
	b _08006504
	.align 2, 0
_08006498: .4byte 0x00000123
_0800649C: .4byte 0x0000013B
_080064A0:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _080064C4 @ => 0xFFFF0000
	cmp r1, r0
	bne _08006504
	adds r0, r4, #0
	bl FUN_08043F34
	adds r0, r4, #0
	movs r1, #0x3d
	bl FUN_08001F84
	b _08006504
	.align 2, 0
_080064C4: .4byte 0xFFFF0000
_080064C8:
	adds r0, r4, #0
	bl FUN_08043F34
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001F84
	b _08006504
_080064D8:
	add r1, sp, #0x14
	add r2, sp, #0x18
	adds r0, r4, #0
	bl FUN_080070A4
	cmp r0, #1
	bne _080064F6
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x18]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r1, r4, #0
	bl FUN_0803C338
	b _080064F8
_080064F6:
	movs r0, #0
_080064F8:
	cmp r0, #0
	bne _08006504
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001F84
_08006504:
	add sp, #0x1c
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start FUN_0800650C
FUN_0800650C: @ 0x0800650C
	push {r4, r5, r6, lr}
	sub sp, #0x2c
	adds r4, r0, #0
	ldr r1, _08006528 @ => 0x0000011D
	adds r0, r4, r1
	ldrb r6, [r0]
	cmp r6, #3
	beq _0800658E
	cmp r6, #3
	bgt _0800652C
	cmp r6, #0
	beq _08006532
	b _080065D0
	.align 2, 0
_08006528: .4byte 0x0000011D
_0800652C:
	cmp r6, #0x2a
	beq _080065C8
	b _080065D0
_08006532:
	movs r0, #0xa
	str r0, [sp]
	movs r0, #0x1a
	movs r1, #0
	movs r2, #0
	add r3, sp, #4
	bl FUN_08001DB4
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0
	add r1, sp, #4
	movs r3, #0
	bl FUN_0803A1E4
	adds r5, r0, #0
	cmp r5, #0
	beq _08006576
	adds r0, r4, #0
	movs r1, #0xa
	bl FUN_08001F20
	adds r1, r5, #0
	adds r1, #0x18
	ldr r0, _08006580 @ => 0x00000123
	adds r2, r4, r0
	str r6, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_08043BB8
	cmp r0, #0
	bne _08006584
_08006576:
	adds r0, r4, #0
	movs r1, #0x2a
	bl FUN_08001F84
	b _080065D0
	.align 2, 0
_08006580: .4byte 0x00000123
_08006584:
	adds r0, r4, #0
	movs r1, #3
	bl FUN_08001F84
	b _080065D0
_0800658E:
	ldr r1, _080065A4 @ => 0x00000123
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _080065D0
	cmp r0, #2
	bgt _080065A8
	cmp r0, #1
	beq _080065AE
	b _080065D0
	.align 2, 0
_080065A4: .4byte 0x00000123
_080065A8:
	cmp r0, #3
	beq _080065B8
	b _080065D0
_080065AE:
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08001FB0
	b _080065C0
_080065B8:
	adds r0, r4, #0
	movs r1, #0x2a
	bl FUN_08001F84
_080065C0:
	adds r0, r4, #0
	bl FUN_08043F34
	b _080065D0
_080065C8:
	adds r0, r4, #0
	movs r1, #0x26
	bl FUN_08001FB0
_080065D0:
	add sp, #0x2c
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start FUN_080065D8
FUN_080065D8: @ 0x080065D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080065EC @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080065F0
	cmp r0, #0x47
	beq _08006626
	b _08006642
	.align 2, 0
_080065EC: .4byte 0x0000011D
_080065F0:
	adds r0, r4, #0
	bl FUN_08001848
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08001FF0
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #0
	movs r2, #5
	movs r3, #1
	bl FUN_0802064C
	adds r0, r4, #0
	movs r1, #0x47
	bl FUN_08001F84
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0xc
	strh r0, [r1]
	b _08006642
_08006626:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08006648 @ => 0xFFFF0000
	cmp r1, r0
	bne _08006642
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08001FB0
_08006642:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08006648: .4byte 0xFFFF0000

	thumb_func_start FUN_0800664C
FUN_0800664C: @ 0x0800664C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldrb r4, [r5, #0x13]
	ldr r1, _08006670 @ => 0x0000011D
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0x42
	beq _080066DC
	cmp r0, #0x42
	bgt _08006674
	cmp r0, #0
	bne _08006668
	b _080068D2
_08006668:
	cmp r0, #0x41
	beq _08006680
	b _080068D2
	.align 2, 0
_08006670: .4byte 0x0000011D
_08006674:
	cmp r0, #0x43
	beq _08006724
	cmp r0, #0x44
	bne _0800667E
	b _080067F0
_0800667E:
	b _080068D2
_08006680:
	movs r0, #0
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	movs r4, #1
	strb r4, [r5, #0x12]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r0, #0x11
	strh r0, [r1]
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080066A2
	b _080068D2
_080066A2:
	adds r0, r5, #0
	movs r1, #0x43
	bl FUN_08001F84
	adds r0, r5, #0
	movs r1, #0
	mov r2, sp
	bl FUN_08001A3C
	movs r3, #0x1a
	ldrsh r1, [r5, r3]
	ldr r0, [sp]
	adds r0, r0, r1
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r1, r5, r2
	strh r0, [r1]
	movs r3, #0x1e
	ldrsh r1, [r5, r3]
	ldr r0, [sp, #4]
	adds r0, r0, r1
	adds r2, #2
	adds r1, r5, r2
	strh r0, [r1]
	movs r3, #0x9c
	lsls r3, r3, #1
	adds r0, r5, r3
	str r4, [r0]
	b _080068D2
_080066DC:
	movs r0, #0
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	movs r0, #3
	strb r0, [r5, #0x12]
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080066F4
	b _080068D2
_080066F4:
	adds r0, r5, #0
	movs r1, #0xd
	bl FUN_08001FB0
	adds r0, r5, #0
	movs r1, #2
	bl FUN_08001F84
	adds r0, r5, #0
	movs r1, #0
	mov r2, sp
	bl FUN_08001A3C
	ldr r1, [sp]
	lsls r1, r1, #0x10
	ldr r0, [r5, #0x18]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	ldr r1, [sp, #4]
	lsls r1, r1, #0x10
	ldr r0, [r5, #0x1c]
	adds r0, r0, r1
	str r0, [r5, #0x1c]
	b _080068D2
_08006724:
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r0, #1
	movs r2, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x13
	bne _0800673C
	strh r2, [r1]
_0800673C:
	movs r3, #0x9c
	lsls r3, r3, #1
	adds r1, r5, r3
	ldr r0, [r1]
	cmp r0, #0
	beq _0800675E
	subs r3, #4
	adds r0, r5, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	str r0, [r5, #0x18]
	adds r3, #2
	adds r0, r5, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	str r0, [r5, #0x1c]
	str r2, [r1]
_0800675E:
	movs r7, #0
	adds r0, r4, #0
	bl FUN_08024A28
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #8
	beq _08006776
	adds r0, r5, #0
	bl FUN_08001FF0
	b _08006778
_08006776:
	movs r7, #1
_08006778:
	cmp r7, #0
	bne _080067D4
	ldr r0, _080067A0 @ => 0x030042B0
	ldrh r1, [r0, #8]
	movs r0, #2
	ands r0, r1
	add r6, sp, #8
	cmp r0, #0
	beq _080067AC
	ldr r1, [r5, #0xc]
	ldrb r2, [r5, #0x12]
	ldr r4, _080067A4 @ => 0x08062C10
	ldr r0, _080067A8 @ => 0x03003DF0
	ldrb r3, [r0, #0x1c]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r4, #0xc
	b _080067BE
	.align 2, 0
_080067A0: .4byte gUnk_030042B0
_080067A4: .4byte ROMREF_08062C10
_080067A8: .4byte gUnk_03003DF0
_080067AC:
	ldr r1, [r5, #0xc]
	ldrb r2, [r5, #0x12]
	ldr r4, _080067CC @ => 0x08062C10
	ldr r0, _080067D0 @ => 0x03003DF0
	ldrb r3, [r0, #0x1c]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r4, #8
_080067BE:
	adds r0, r0, r4
	ldr r3, [r0]
	adds r0, r6, #0
	bl FUN_08001030
	b _080068B8
	.align 2, 0
_080067CC: .4byte ROMREF_08062C10
_080067D0: .4byte gUnk_03003DF0
_080067D4:
	adds r0, r5, #0
	movs r1, #0x44
	bl FUN_08001F84
	adds r0, r5, #0
	movs r1, #0x62
	bl FUN_08001F20
	movs r1, #0
	str r1, [sp, #8]
	add r0, sp, #8
	str r1, [r0, #4]
	adds r6, r0, #0
	b _080068CA
_080067F0:
	movs r7, #1
	movs r0, #0
	str r0, [sp, #8]
	add r2, sp, #8
	str r0, [r2, #4]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0x11
	strh r0, [r1]
	ldr r1, _08006870 @ => 0x03003460
	lsls r0, r4, #3
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0x1f]
	adds r6, r2, #0
	cmp r0, #1
	beq _080068C2
	adds r0, r4, #0
	bl FUN_08024A28
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #8
	beq _08006838
	adds r0, r4, #0
	bl FUN_08024A28
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl FUN_08001FF0
	movs r7, #0
_08006838:
	cmp r7, #0
	bne _080068B8
	ldr r0, _08006874 @ => 0x030042B0
	ldrh r1, [r0, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08006880
	ldr r1, [r5, #0xc]
	ldrb r2, [r5, #0x12]
	ldr r4, _08006878 @ => 0x08062C10
	ldr r0, _0800687C @ => 0x03003DF0
	ldrb r3, [r0, #0x1c]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r4, #0xc
	adds r0, r0, r4
	ldr r3, [r0]
	adds r0, r6, #0
	bl FUN_08001030
	adds r0, r5, #0
	movs r1, #0x62
	bl FUN_08001F20
	b _080068A4
	.align 2, 0
_08006870: .4byte gUnk_03003460
_08006874: .4byte gUnk_030042B0
_08006878: .4byte ROMREF_08062C10
_0800687C: .4byte gUnk_03003DF0
_08006880:
	ldr r1, [r5, #0xc]
	ldrb r2, [r5, #0x12]
	ldr r4, _080068B0 @ => 0x08062C10
	ldr r0, _080068B4 @ => 0x03003DF0
	ldrb r3, [r0, #0x1c]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r4, #8
	adds r0, r0, r4
	ldr r3, [r0]
	adds r0, r6, #0
	bl FUN_08001030
	adds r0, r5, #0
	movs r1, #0x62
	bl FUN_08001F20
_080068A4:
	adds r0, r5, #0
	movs r1, #0x43
	bl FUN_08001F84
	b _080068CA
	.align 2, 0
_080068B0: .4byte ROMREF_08062C10
_080068B4: .4byte gUnk_03003DF0
_080068B8:
	adds r0, r5, #0
	movs r1, #0x62
	bl FUN_08001F20
	b _080068CA
_080068C2:
	adds r0, r5, #0
	movs r1, #0x62
	bl FUN_08001F20
_080068CA:
	ldr r0, [sp, #8]
	str r0, [r5, #0x28]
	ldr r0, [r6, #4]
	str r0, [r5, #0x2c]
_080068D2:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080068DC
FUN_080068DC: @ 0x080068DC
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _08006910 @ => 0x0000011D
	adds r0, r4, r1
	ldrb r5, [r0]
	cmp r5, #0
	bne _08006952
	ldr r0, [r4, #0x58]
	cmp r0, #0
	beq _080068FA
	movs r1, #1
	bl FUN_08001FB0
	str r5, [r4, #0x58]
_080068FA:
	ldrh r0, [r4, #0xa]
	bl FUN_0803AE08
	cmp r0, #2
	beq _08006926
	cmp r0, #2
	bhi _08006914
	cmp r0, #1
	beq _0800691A
	b _08006944
	.align 2, 0
_08006910: .4byte 0x0000011D
_08006914:
	cmp r0, #3
	beq _08006932
	b _08006944
_0800691A:
	movs r2, #0x96
	lsls r2, r2, #1
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0x15
	b _0800693C
_08006926:
	movs r2, #0x96
	lsls r2, r2, #1
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #9
	b _0800693C
_08006932:
	movs r2, #0x96
	lsls r2, r2, #1
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0x1b
_0800693C:
	movs r3, #0
	bl FUN_0800B4BC
	str r0, [r4, #0x58]
_08006944:
	movs r1, #0x91
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl FUN_08001FB0
_08006952:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0800695C
FUN_0800695C: @ 0x0800695C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08006974 @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0x37
	beq _080069C2
	cmp r0, #0x37
	bgt _08006978
	cmp r0, #0
	beq _08006982
	b _08006A26
	.align 2, 0
_08006974: .4byte 0x0000011D
_08006978:
	cmp r0, #0x5c
	beq _0800699A
	cmp r0, #0x5d
	beq _080069FC
	b _08006A26
_08006982:
	adds r0, r4, #0
	bl FUN_08001848
	adds r0, r4, #0
	movs r1, #0x3f
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #0x5c
	bl FUN_08001F84
	b _08006A26
_0800699A:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08006A26
	adds r0, r4, #0
	movs r1, #0x40
	bl FUN_08001F20
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r4, r2
	movs r0, #0xf
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0x37
	bl FUN_08001F84
	b _08006A26
_080069C2:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _080069F8 @ => 0xFFFF0000
	cmp r1, r0
	bne _08006A26
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl FUN_0802B2E0
	adds r0, r4, #0
	movs r1, #0x41
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #0x5d
	bl FUN_08001F84
	b _08006A26
	.align 2, 0
_080069F8: .4byte 0xFFFF0000
_080069FC:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08006A26
	movs r1, #0x91
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl FUN_08001FB0
	ldr r2, _08006A2C @ => 0x00000135
	adds r0, r4, r2
	ldrb r0, [r0]
	subs r2, #1
	adds r1, r4, r2
	ldrb r1, [r1]
	bl FUN_080099A8
_08006A26:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08006A2C: .4byte 0x00000135

	thumb_func_start FUN_08006A30
FUN_08006A30: @ 0x08006A30
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _08006A4C @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0x2f
	bls _08006A40
	b _08006C2E
_08006A40:
	lsls r0, r0, #2
	ldr r1, _08006A50 @ =_08006A54
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08006A4C: .4byte 0x0000011D
_08006A50: .4byte _08006A54
_08006A54: @ jump table
	.4byte _08006B14 @ case 0
	.4byte _08006C2E @ case 1
	.4byte _08006C2E @ case 2
	.4byte _08006C2E @ case 3
	.4byte _08006C2E @ case 4
	.4byte _08006C2E @ case 5
	.4byte _08006C2E @ case 6
	.4byte _08006C2E @ case 7
	.4byte _08006C2E @ case 8
	.4byte _08006C2E @ case 9
	.4byte _08006C2E @ case 10
	.4byte _08006BC8 @ case 11
	.4byte _08006B48 @ case 12
	.4byte _08006C2E @ case 13
	.4byte _08006C2E @ case 14
	.4byte _08006C2E @ case 15
	.4byte _08006C2E @ case 16
	.4byte _08006C2E @ case 17
	.4byte _08006C2E @ case 18
	.4byte _08006C2E @ case 19
	.4byte _08006C2E @ case 20
	.4byte _08006C2E @ case 21
	.4byte _08006C2E @ case 22
	.4byte _08006C2E @ case 23
	.4byte _08006C2E @ case 24
	.4byte _08006C2E @ case 25
	.4byte _08006C2E @ case 26
	.4byte _08006B90 @ case 27
	.4byte _08006C2E @ case 28
	.4byte _08006C2E @ case 29
	.4byte _08006C2E @ case 30
	.4byte _08006C2E @ case 31
	.4byte _08006C2E @ case 32
	.4byte _08006C2E @ case 33
	.4byte _08006C2E @ case 34
	.4byte _08006C2E @ case 35
	.4byte _08006C2E @ case 36
	.4byte _08006C2E @ case 37
	.4byte _08006C2E @ case 38
	.4byte _08006C2E @ case 39
	.4byte _08006C2E @ case 40
	.4byte _08006C2E @ case 41
	.4byte _08006C2E @ case 42
	.4byte _08006C2E @ case 43
	.4byte _08006C2E @ case 44
	.4byte _08006C2E @ case 45
	.4byte _08006C2E @ case 46
	.4byte _08006BF8 @ case 47
_08006B14:
	adds r0, r4, #0
	bl FUN_08001848
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x12
	movs r3, #1
	bl FUN_0802064C
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r4, r2
	movs r0, #7
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0xc
	bl FUN_08001F84
	movs r0, #0x70
	bl FUN_0804DE0C
	b _08006C2E
_08006B48:
	movs r0, #0x90
	lsls r0, r0, #1
	adds r5, r4, r0
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	ldr r1, _08006B8C @ => 0xFFFF0000
	cmp r0, r1
	bne _08006C2E
	ldrh r1, [r4, #0xa]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r4, r2
	strb r1, [r0]
	movs r0, #0xe
	strh r0, [r4, #0xa]
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl FUN_0803A15C
	movs r0, #0x14
	strh r0, [r5]
	adds r0, r4, #0
	movs r1, #0x1b
	bl FUN_08001F84
	b _08006C2E
	.align 2, 0
_08006B8C: .4byte 0xFFFF0000
_08006B90:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r5, r4, r1
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	ldr r1, _08006BC4 @ => 0xFFFF0000
	cmp r0, r1
	bne _08006C2E
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x1b
	movs r3, #1
	bl FUN_0802064C
	movs r0, #0x25
	strh r0, [r5]
	adds r0, r4, #0
	movs r1, #0xb
	bl FUN_08001F84
	movs r0, #0x6f
	bl FUN_0804DE0C
	b _08006C2E
	.align 2, 0
_08006BC4: .4byte 0xFFFF0000
_08006BC8:
	movs r0, #0x90
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _08006BF4 @ => 0xFFFF0000
	cmp r0, r1
	bne _08006C2E
	ldr r0, [r4, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0xc]
	movs r0, #0xf
	strh r0, [r2]
	adds r0, r4, #0
	movs r1, #0x2f
	bl FUN_08001F84
	b _08006C2E
	.align 2, 0
_08006BF4: .4byte 0xFFFF0000
_08006BF8:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08006C34 @ => 0xFFFF0000
	cmp r1, r0
	bne _08006C2E
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrb r0, [r0]
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08001FB0
	movs r0, #0xa
	bl FUN_0804DE0C
	ldr r1, _08006C38 @ => 0x00000131
	adds r0, r4, r1
	ldrb r0, [r0]
	bl FUN_080099D8
_08006C2E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08006C34: .4byte 0xFFFF0000
_08006C38: .4byte 0x00000131

	thumb_func_start FUN_08006C3C
FUN_08006C3C: @ 0x08006C3C
	push {lr}
	adds r2, r0, #0
	ldr r1, _08006C54 @ => 0x0000011D
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0xb
	bhi _08006CB8
	lsls r0, r0, #2
	ldr r1, _08006C58 @ =_08006C5C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08006C54: .4byte 0x0000011D
_08006C58: .4byte _08006C5C
_08006C5C: @ jump table
	.4byte _08006C8C @ case 0
	.4byte _08006CB8 @ case 1
	.4byte _08006CB8 @ case 2
	.4byte _08006CB8 @ case 3
	.4byte _08006CB8 @ case 4
	.4byte _08006CB0 @ case 5
	.4byte _08006CB8 @ case 6
	.4byte _08006C8C @ case 7
	.4byte _08006CB8 @ case 8
	.4byte _08006CB8 @ case 9
	.4byte _08006CB8 @ case 10
	.4byte _08006C8C @ case 11
_08006C8C:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08006CAC @ => 0xFFFF0000
	cmp r1, r0
	bne _08006CB8
	adds r0, r2, #0
	movs r1, #3
	bl FUN_08001F84
	b _08006CB8
	.align 2, 0
_08006CAC: .4byte 0xFFFF0000
_08006CB0:
	adds r0, r2, #0
	movs r1, #1
	bl FUN_08001FB0
_08006CB8:
	pop {r0}
	bx r0

	thumb_func_start FUN_08006CBC
FUN_08006CBC: @ 0x08006CBC
	bx lr
	.align 2, 0

	thumb_func_start FUN_08006CC0
FUN_08006CC0: @ 0x08006CC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	movs r0, #0
	mov sb, r0
	ldr r0, _08006CE0 @ => 0x030042B0
	ldrh r0, [r0, #4]
	cmp r0, #0
	bne _08006CE4
	movs r7, #1
	b _08006CE8
	.align 2, 0
_08006CE0: .4byte gUnk_030042B0
_08006CE4:
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_08006CE8:
	movs r5, #0
	cmp r5, r7
	bhs _08006D42
	mov r8, sp
	add r6, sp, #0x10
	movs r3, #0x82
	lsls r3, r3, #1
	mov sl, r3
_08006CF8:
	mov r0, sp
	adds r1, r5, #0
	bl FUN_08047038
	add r0, sp, #8
	adds r1, r6, #0
	bl FUN_0802C3F8
	ldr r4, [sp]
	adds r0, r4, #0
	subs r0, #0x64
	ldr r3, [sp, #0x10]
	cmp r3, r0
	blt _08006D38
	mov r0, r8
	ldr r2, [r0, #4]
	adds r0, r2, #0
	subs r0, #0x64
	ldr r1, [r6, #4]
	cmp r1, r0
	blt _08006D38
	movs r0, #0x64
	adds r0, #0xf0
	adds r0, r4, r0
	cmp r3, r0
	bgt _08006D38
	mov r3, sl
	adds r0, r2, r3
	cmp r1, r0
	bgt _08006D38
	movs r0, #1
	mov sb, r0
_08006D38:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r7
	blo _08006CF8
_08006D42:
	mov r0, sb
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_08006D54
FUN_08006D54: @ 0x08006D54
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r0, _08006DBC @ => 0x03005B90
	ldr r4, [r0]
	cmp r4, #0
	beq _08006DEA
	ldr r0, _08006DC0 @ => 0x08073A54
	mov r8, r0
	movs r2, #4
	add r2, r8
	mov sl, r2
_08006D78:
	ldr r7, [r4]
	ldrh r1, [r4, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, r8
	adds r1, #0x18
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r4, #0
	mov r1, sb
	bl _call_via_r2
	cmp r0, #0
	beq _08006DE4
	mov r0, sp
	movs r1, #0
	movs r2, #7
	bl FUN_0802CB40
	ldrh r1, [r4, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	add r0, sl
	ldr r2, [r0]
	adds r0, r4, #0
	mov r1, sp
	bl _call_via_r2
	movs r1, #0
	mov r0, sp
	b _08006DD2
	.align 2, 0
_08006DBC: .4byte gUnk_03005B90
_08006DC0: .4byte ROMREF_08073A54
_08006DC4:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #6
	bhi _08006DE4
	mov r2, sp
	adds r0, r2, r1
_08006DD2:
	ldrb r0, [r0]
	cmp r0, #0
	beq _08006DE4
	cmp r0, r5
	bne _08006DC4
	ldr r0, [r4, #0x34]
	str r0, [r6]
	movs r0, #1
	b _08006DEC
_08006DE4:
	adds r4, r7, #0
	cmp r4, #0
	bne _08006D78
_08006DEA:
	movs r0, #0
_08006DEC:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_08006DFC
FUN_08006DFC: @ 0x08006DFC
	push {lr}
	adds r3, r0, #0
	movs r0, #0
	str r0, [r3, #0x64]
	cmp r2, #0
	beq _08006E18
	ldr r0, [r1, #0x34]
	ldr r1, [r0, #0x70]
	subs r1, #1
	str r1, [r3, #0x70]
	str r1, [r3, #0x68]
	ldr r0, [r0, #0x74]
	adds r0, #1
	b _08006E26
_08006E18:
	ldr r0, [r1, #0x34]
	ldr r1, [r0, #0x70]
	adds r1, #1
	str r1, [r3, #0x70]
	str r1, [r3, #0x68]
	ldr r0, [r0, #0x74]
	subs r0, #1
_08006E26:
	str r0, [r3, #0x74]
	str r0, [r3, #0x6c]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08006E30
FUN_08006E30: @ 0x08006E30
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _08006E68 @ => 0x030042B0
	ldrh r1, [r0, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08006E74
	ldr r1, [r5, #0xc]
	ldrb r2, [r5, #0x12]
	ldr r4, _08006E6C @ => 0x08062C10
	ldr r0, _08006E70 @ => 0x03003DF0
	ldrb r3, [r0, #0x1c]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r4, #0xc
	adds r0, r0, r4
	ldr r3, [r0]
	adds r0, r6, #0
	bl FUN_08001030
	adds r0, r5, #0
	movs r1, #0x62
	bl FUN_08001F20
	b _08006E98
	.align 2, 0
_08006E68: .4byte gUnk_030042B0
_08006E6C: .4byte ROMREF_08062C10
_08006E70: .4byte gUnk_03003DF0
_08006E74:
	ldr r1, [r5, #0xc]
	ldrb r2, [r5, #0x12]
	ldr r4, _08006EA0 @ => 0x08062C10
	ldr r0, _08006EA4 @ => 0x03003DF0
	ldrb r3, [r0, #0x1c]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r4, #8
	adds r0, r0, r4
	ldr r3, [r0]
	adds r0, r6, #0
	bl FUN_08001030
	adds r0, r5, #0
	movs r1, #0x62
	bl FUN_08001F20
_08006E98:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08006EA0: .4byte ROMREF_08062C10
_08006EA4: .4byte gUnk_03003DF0

	thumb_func_start FUN_08006EA8
FUN_08006EA8: @ 0x08006EA8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08006EC8 @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0x27
	beq _08006ED8
	cmp r0, #0x27
	bgt _08006ECC
	cmp r0, #6
	beq _08006F12
	cmp r0, #6
	ble _08006F26
	cmp r0, #0xb
	beq _08006EEC
	b _08006F26
	.align 2, 0
_08006EC8: .4byte 0x0000011D
_08006ECC:
	cmp r0, #0x30
	blt _08006F26
	cmp r0, #0x32
	ble _08006ED8
	cmp r0, #0x48
	bne _08006F26
_08006ED8:
	adds r0, r4, #0
	bl FUN_08001848
	adds r0, r4, #0
	movs r1, #0xb
	bl FUN_08001F84
	bl FUN_0802B30C
	b _08006F26
_08006EEC:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08006F26
	adds r0, r4, #0
	bl FUN_08001F78
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x3c
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #6
	bl FUN_08001F84
	b _08006F26
_08006F12:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08006F26
	adds r0, r4, #0
	movs r1, #0x21
	bl FUN_08001FB0
_08006F26:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_08006F2C
FUN_08006F2C: @ 0x08006F2C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	ldr r2, _08006F64 @ => 0x0805A06C
	ldr r0, [r2]
	cmp r0, #0xe6
	beq _08006F4E
	adds r3, r2, #0
_08006F3C:
	ldr r0, [r3]
	cmp r0, r4
	beq _08006F52
	adds r2, #8
	adds r3, #8
	adds r1, #1
	ldr r0, [r2]
	cmp r0, #0xe6
	bne _08006F3C
_08006F4E:
	movs r1, #1
	rsbs r1, r1, #0
_08006F52:
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	mvns r1, r1
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08006F64: .4byte ROMREF_0805A06C

	thumb_func_start FUN_08006F68
FUN_08006F68: @ 0x08006F68
	push {lr}
	subs r0, #0xdd
	cmp r0, #5
	bls _08006F74
	movs r0, #0
	b _08006F76
_08006F74:
	movs r0, #1
_08006F76:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08006F7C
FUN_08006F7C: @ 0x08006F7C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _08006FBC @ => 0x030042B0
	ldrh r1, [r0, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08006FC8
	bl FUN_08023680
	cmp r0, #1
	bne _08006FC8
	ldr r1, [r5, #0xc]
	ldrb r2, [r5, #0x12]
	ldr r4, _08006FC0 @ => 0x08062C10
	ldr r0, _08006FC4 @ => 0x03003DF0
	ldrb r3, [r0, #0x1c]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r4, #4
	adds r0, r0, r4
	ldr r3, [r0]
	adds r0, r6, #0
	bl FUN_08001030
	adds r0, r5, #0
	movs r1, #8
	bl FUN_08001F20
	b _08006FEA
	.align 2, 0
_08006FBC: .4byte gUnk_030042B0
_08006FC0: .4byte ROMREF_08062C10
_08006FC4: .4byte gUnk_03003DF0
_08006FC8:
	ldr r1, [r5, #0xc]
	ldrb r2, [r5, #0x12]
	ldr r4, _08006FF0 @ => 0x08062C10
	ldr r0, _08006FF4 @ => 0x03003DF0
	ldrb r3, [r0, #0x1c]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r3, [r0]
	adds r0, r6, #0
	bl FUN_08001030
	adds r0, r5, #0
	movs r1, #0xa
	bl FUN_08001F20
_08006FEA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08006FF0: .4byte ROMREF_08062C10
_08006FF4: .4byte gUnk_03003DF0

	thumb_func_start FUN_08006FF8
FUN_08006FF8: @ 0x08006FF8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0800700C @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08007010
	cmp r0, #0x13
	beq _08007022
	b _0800704C
	.align 2, 0
_0800700C: .4byte 0x0000011D
_08007010:
	adds r0, r4, #0
	movs r1, #9
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #0x13
	bl FUN_08001F84
	b _0800704C
_08007022:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0800704C
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08001F20
	movs r1, #0x91
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl FUN_08001FB0
	adds r0, r4, #0
	movs r1, #2
	bl FUN_08001F84
_0800704C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08007054
FUN_08007054: @ 0x08007054
	push {lr}
	adds r1, r0, #0
	movs r0, #0x93
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2]
	cmp r0, #0
	beq _0800706E
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08007098
_0800706E:
	ldr r2, _0800708C @ => 0x0000011D
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0x19
	bne _08007098
	adds r0, r1, #0
	movs r1, #0x1f
	bl FUN_08001FB0
	ldr r0, _08007090 @ => 0x03003DF0
	ldr r1, _08007094 @ => 0x000003F9
	adds r0, r0, r1
	movs r1, #0x27
	strb r1, [r0]
	b _0800709E
	.align 2, 0
_0800708C: .4byte 0x0000011D
_08007090: .4byte gUnk_03003DF0
_08007094: .4byte 0x000003F9
_08007098:
	adds r0, r1, #0
	bl FUN_08004D18
_0800709E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080070A4
FUN_080070A4: @ 0x080070A4
	movs r0, #0
	bx lr

	thumb_func_start FUN_080070A8
FUN_080070A8: @ 0x080070A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080070E0 @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080070D8
	ldr r0, [r4, #0x58]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r1, r4, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	bl FUN_08039D30
	adds r0, r4, #0
	movs r1, #0xd
	bl FUN_08001FB0
	adds r0, r4, #0
	movs r1, #2
	bl FUN_08001F84
_080070D8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080070E0: .4byte 0x0000011D

	thumb_func_start FUN_080070E4
FUN_080070E4: @ 0x080070E4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _080070F8 @ => 0x0000011D
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080070FC
	cmp r0, #0xb
	beq _08007128
	b _0800713E
	.align 2, 0
_080070F8: .4byte 0x0000011D
_080070FC:
	adds r0, r5, #0
	bl FUN_08001848
	ldr r4, _08007124 @ => 0x03003E28
	adds r0, r4, #0
	bl FUN_080389BC
	adds r0, r4, #0
	movs r1, #0xf
	bl FUN_08038A84
	adds r0, r5, #0
	movs r1, #0xea
	bl FUN_08001F20
	adds r0, r5, #0
	movs r1, #0xb
	bl FUN_08001F84
	b _0800713E
	.align 2, 0
_08007124: .4byte gUnk_03003E28
_08007128:
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0800713E
	ldr r0, _08007144 @ => 0x03004200
	ldr r0, [r0]
	movs r1, #0x21
	bl FUN_08001FB0
_0800713E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08007144: .4byte gUnk_03004200

	thumb_func_start FUN_08007148
FUN_08007148: @ 0x08007148
	bx lr
	.align 2, 0

	thumb_func_start FUN_0800714C
FUN_0800714C: @ 0x0800714C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0800718C @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800715E
	cmp r0, #2
	bne _08007184
_0800715E:
	movs r0, #0x69
	bl FUN_0804DE0C
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r1, r4, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0x70
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #0x29
	bl FUN_08001FB0
	adds r0, r4, #0
	movs r1, #0x31
	bl FUN_08001F84
_08007184:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800718C: .4byte 0x0000011D

	thumb_func_start FUN_08007190
FUN_08007190: @ 0x08007190
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080071BC @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080071B4
	adds r0, r4, #0
	bl FUN_08001848
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #7
	bl FUN_08001F84
_080071B4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080071BC: .4byte 0x0000011D

	thumb_func_start FUN_080071C0
FUN_080071C0: @ 0x080071C0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080071D4 @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080071D8
	cmp r0, #0xb
	beq _080071F0
	b _0800720A
	.align 2, 0
_080071D4: .4byte 0x0000011D
_080071D8:
	movs r0, #0xa
	bl FUN_0804DE0C
	adds r0, r4, #0
	movs r1, #0x82
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #0xb
	bl FUN_08001F84
	b _0800720A
_080071F0:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0800720A
	movs r1, #0x91
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl FUN_08001FB0
_0800720A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_08007210
FUN_08007210: @ 0x08007210
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08007228 @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0x5c
	beq _0800724E
	cmp r0, #0x5c
	bgt _0800722C
	cmp r0, #0
	beq _08007232
	b _0800727E
	.align 2, 0
_08007228: .4byte 0x0000011D
_0800722C:
	cmp r0, #0x5d
	beq _0800726C
	b _0800727E
_08007232:
	bl FUN_08040FC8
	adds r0, r4, #0
	bl FUN_08001848
	adds r0, r4, #0
	movs r1, #0x3c
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #0x5c
	bl FUN_08001F84
	b _0800727E
_0800724E:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0800727E
	adds r0, r4, #0
	movs r1, #0x3d
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #0x5d
	bl FUN_08001F84
	b _0800727E
_0800726C:
	bl FUN_08040B0C
	movs r1, #0x91
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl FUN_08001FB0
_0800727E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_08007284
FUN_08007284: @ 0x08007284
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _080072A0 @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0x67
	beq _080072B6
	cmp r0, #0x67
	bgt _0800730A
	cmp r0, #0
	beq _080072A4
	cmp r0, #0xb
	beq _080072E8
	b _0800730A
	.align 2, 0
_080072A0: .4byte 0x0000011D
_080072A4:
	adds r0, r4, #0
	movs r1, #0x10
	bl FUN_08002040
	adds r0, r4, #0
	movs r1, #0x67
	bl FUN_08001F84
	b _0800730A
_080072B6:
	ldr r5, _080072D8 @ => 0x03003E28
	adds r0, r5, #0
	bl FUN_08038A80
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x64
	bne _080072DC
	adds r0, r4, #0
	movs r1, #0x10
	bl FUN_08002038
	adds r0, r4, #0
	movs r1, #0xb
	bl FUN_08001F84
	b _0800730A
	.align 2, 0
_080072D8: .4byte gUnk_03003E28
_080072DC:
	adds r0, r5, #0
	movs r1, #4
	movs r2, #7
	bl FUN_08038A30
	b _0800730A
_080072E8:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0800730A
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08001F20
	movs r1, #0x91
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl FUN_08001FB0
_0800730A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_08007310
FUN_08007310: @ 0x08007310
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0800734C @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08007336
	adds r1, #0x13
	adds r0, r4, r1
	ldrb r0, [r0]
	movs r1, #0
	bl FUN_0801EB70
	ldr r2, _08007350 @ => 0x03004230
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r2, #4]
_08007336:
	movs r1, #0x91
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl FUN_08001FB0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800734C: .4byte 0x0000011D
_08007350: .4byte gUnk_03004230

	thumb_func_start FUN_08007354
FUN_08007354: @ 0x08007354
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _08007382
	ldr r0, _08007388 @ => 0x03003E18
	movs r2, #0x98
	lsls r2, r2, #1
	adds r1, r4, r2
	ldrb r1, [r1]
	movs r2, #1
	bl FUN_0804ABF0
	movs r1, #0x91
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl FUN_08001FB0
_08007382:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08007388: .4byte gUnk_03003E18

	thumb_func_start FUN_0800738C
FUN_0800738C: @ 0x0800738C
	push {r4, lr}
	adds r4, r0, #0
	movs r3, #0
	ldr r1, _080073A8 @ => 0x0805A06C
	ldr r0, [r1]
	cmp r0, #0xe6
	beq _080073B8
	adds r2, r1, #0
_0800739C:
	ldr r0, [r2]
	cmp r0, r4
	bne _080073AC
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	b _080073BC
	.align 2, 0
_080073A8: .4byte ROMREF_0805A06C
_080073AC:
	adds r1, #8
	adds r2, #8
	adds r3, #1
	ldr r0, [r1]
	cmp r0, #0xe6
	bne _0800739C
_080073B8:
	movs r0, #1
	rsbs r0, r0, #0
_080073BC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_080073C4
FUN_080073C4: @ 0x080073C4
	push {r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r1, _080073E0 @ => 0x0000011D
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _08007458
	cmp r0, #2
	bgt _080073E4
	cmp r0, #0
	beq _080073EA
	b _0800746E
	.align 2, 0
_080073E0: .4byte 0x0000011D
_080073E4:
	cmp r0, #3
	beq _08007428
	b _0800746E
_080073EA:
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r4, r5, r2
	ldrb r0, [r4]
	bl FUN_08009BC8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	subs r1, #1
	movs r0, #0
	bl FUN_080424F8
	movs r1, #0x9d
	lsls r1, r1, #1
	adds r2, r5, r1
	strb r0, [r2]
	ldrb r1, [r4]
	ldrb r2, [r2]
	mov r0, sp
	bl FUN_08009BE0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r1, sp, #8
	adds r0, r5, #0
	bl FUN_080081E8
	b _08007464
_08007428:
	adds r0, r5, #0
	bl FUN_080081B4
	cmp r0, #0
	beq _08007474
	adds r0, r5, #0
	bl FUN_080081F8
	adds r0, r5, #0
	movs r1, #7
	bl FUN_08001F84
	ldr r2, _08007454 @ => 0x0000013B
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #1
	subs r2, #0x1b
	adds r0, r5, r2
	strh r1, [r0]
	b _08007474
	.align 2, 0
_08007454: .4byte 0x0000013B
_08007458:
	adds r0, r5, #0
	bl FUN_080081F8
	adds r0, r5, #0
	bl FUN_080081B4
_08007464:
	adds r0, r5, #0
	movs r1, #3
	bl FUN_08001F84
	b _08007474
_0800746E:
	adds r0, r5, #0
	bl FUN_08006C3C
_08007474:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_0800747C
FUN_0800747C: @ 0x0800747C
	push {r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r1, _08007498 @ => 0x0000011D
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #3
	beq _0800752A
	cmp r0, #3
	bgt _0800749C
	cmp r0, #0
	beq _080074A2
	b _080075A8
	.align 2, 0
_08007498: .4byte 0x0000011D
_0800749C:
	cmp r0, #7
	beq _08007586
	b _080075A8
_080074A2:
	add r6, sp, #0xc
_080074A4:
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r0, r5, r2
	ldrb r0, [r0]
	bl FUN_08009BC8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	subs r1, #1
	movs r0, #0
	bl FUN_080424F8
	movs r2, #0x9d
	lsls r2, r2, #1
	adds r1, r5, r2
	ldrb r1, [r1]
	cmp r0, r1
	beq _080074A4
	adds r2, r5, r2
	movs r4, #0
	strb r0, [r2]
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r1, [r0]
	ldrb r2, [r2]
	add r0, sp, #4
	bl FUN_08009BE0
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [sp, #0xc]
	lsls r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r6, #4]
	lsls r0, r0, #0x10
	str r0, [r6, #4]
	ldr r0, _0800751C @ => 0x00000123
	adds r2, r5, r0
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r3, #3
	bl FUN_08043BB8
	cmp r0, #1
	bne _08007520
	adds r0, r5, #0
	movs r1, #3
	bl FUN_08001F84
	adds r0, r5, #0
	movs r1, #0xa
	bl FUN_08001F20
	b _080075A8
	.align 2, 0
_0800751C: .4byte 0x00000123
_08007520:
	adds r0, r5, #0
	movs r1, #4
	bl FUN_08001F20
	b _080075A8
_0800752A:
	ldr r1, _08007564 @ => 0x00000123
	adds r4, r5, r1
	ldrb r0, [r4]
	cmp r0, #2
	beq _080075A8
	adds r0, r5, #0
	movs r1, #4
	bl FUN_08001F20
	ldr r2, _08007568 @ => 0x0000013B
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #1
	subs r2, #0x1b
	adds r0, r5, r2
	strh r1, [r0]
	adds r0, r5, #0
	movs r1, #7
	bl FUN_08001F84
	ldrb r0, [r4]
	cmp r0, #3
	bne _0800756C
	adds r0, r5, #0
	bl FUN_08043F34
	b _080075A8
	.align 2, 0
_08007564: .4byte 0x00000123
_08007568: .4byte 0x0000013B
_0800756C:
	cmp r0, #1
	bne _080075A8
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	movs r2, #0x9d
	lsls r2, r2, #1
	adds r1, r5, r2
	ldrb r1, [r1]
	bl FUN_08009C10
	b _080075A8
_08007586:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _080075B0 @ => 0xFFFF0000
	cmp r1, r0
	bne _080075A8
	adds r0, r5, #0
	bl FUN_08043F34
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08001F84
_080075A8:
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080075B0: .4byte 0xFFFF0000

	thumb_func_start FUN_080075B4
FUN_080075B4: @ 0x080075B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r5, r0, #0
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	mov sb, r0
	ldr r2, _080075F4 @ => 0x00000139
	adds r2, r2, r5
	mov sl, r2
	ldrb r0, [r2]
	mov r8, r0
	subs r1, #0x1b
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0x68
	bne _080075E2
	b _08007704
_080075E2:
	cmp r0, #0x68
	ble _080075E8
	b _08007738
_080075E8:
	cmp r0, #0
	beq _080075F8
	cmp r0, #0xa
	beq _0800763E
	b _08007738
	.align 2, 0
_080075F4: .4byte 0x00000139
_080075F8:
	adds r0, r5, #0
	movs r1, #0xa
	bl FUN_08001F84
	ldrh r0, [r5, #8]
	cmp r0, #0
	beq _0800760A
	cmp r0, #5
	bne _08007614
_0800760A:
	adds r0, r5, #0
	movs r1, #0xa
	bl FUN_08001F20
	b _08007620
_08007614:
	cmp r0, #7
	bne _08007620
	adds r0, r5, #0
	movs r1, #1
	bl FUN_08018DE0
_08007620:
	add r0, sp, #4
	mov r1, sb
	mov r2, r8
	bl FUN_08009BE0
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	add r0, sp, #0xc
	adds r1, r5, #0
	adds r1, #0x38
	bl FUN_0802C408
	b _08007738
_0800763E:
	ldr r6, [r5, #0x18]
	ldr r7, [r5, #0x1c]
	ldr r2, [r5, #0x38]
	ldr r3, [r5, #0x3c]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [sp]
	adds r1, r7, #0
	adds r0, r6, #0
	bl FUN_08001D30
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #8
	bne _080076DC
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	mov r0, sb
	bl FUN_08009BC8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r8, r0
	bne _08007688
	ldrb r4, [r5, #0x12]
	adds r0, r5, #0
	bl FUN_08001848
	adds r0, r5, #0
	movs r1, #0x68
	bl FUN_08001F84
	b _080076C4
_08007688:
	mov r0, r8
	mov r2, sl
	strb r0, [r2]
	add r0, sp, #0x14
	mov r1, sb
	mov r2, r8
	bl FUN_08009BE0
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	add r4, sp, #0xc
	adds r1, r5, #0
	adds r1, #0x38
	adds r0, r4, #0
	bl FUN_0802C408
	ldr r0, [sp, #0xc]
	subs r0, r0, r6
	str r0, [sp, #0xc]
	ldr r0, [r4, #4]
	subs r0, r0, r7
	str r0, [r4, #4]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl FUN_0802C4C4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_080076C4:
	ldr r1, [r5, #8]
	ldr r0, _08007700 @ => 0x00080007
	cmp r1, r0
	bne _080076DC
	movs r0, #0xa
	bl FUN_080425E4
	cmp r0, #0
	beq _080076DC
	movs r0, #0x2f
	bl FUN_0804DE0C
_080076DC:
	adds r0, r5, #0
	bl FUN_08001824
	ldrb r0, [r5, #0x12]
	cmp r0, r4
	beq _08007738
	adds r1, r4, #0
	adds r0, r5, #0
	bl FUN_08001FF0
	ldrh r0, [r5, #8]
	cmp r0, #7
	bne _08007738
	adds r0, r5, #0
	movs r1, #1
	bl FUN_08018DE0
	b _08007738
	.align 2, 0
_08007700: .4byte 0x00080007
_08007704:
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r0, [r5, #0xc]
	ldr r1, [r1]
	orrs r0, r1
	str r0, [r5, #0xc]
	movs r1, #0x91
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	bl FUN_08001FB0
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r1, r5, r2
	ldrh r0, [r1]
	cmp r0, #0
	beq _08007738
	ldrb r0, [r1]
	adds r2, #1
	adds r1, r5, r2
	ldrb r1, [r1]
	bl FUN_080099A8
_08007738:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_08007748
FUN_08007748: @ 0x08007748
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08007764 @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08007768
	cmp r0, #3
	beq _0800779C
	adds r0, r4, #0
	bl FUN_08006C3C
	b _08007820
	.align 2, 0
_08007764: .4byte 0x0000011D
_08007768:
	adds r0, r4, #0
	movs r1, #3
	bl FUN_08001F84
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r0, [r0]
	cmp r0, #1
	bne _08007786
	adds r0, r4, #0
	movs r1, #8
	bl FUN_08001F20
	b _0800778E
_08007786:
	adds r0, r4, #0
	movs r1, #0xa
	bl FUN_08001F20
_0800778E:
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r1, r4, r0
	adds r0, r4, #0
	bl FUN_080081E8
	b _08007820
_0800779C:
	adds r0, r4, #0
	bl FUN_080081B4
	cmp r0, #1
	bne _08007814
	movs r1, #0x91
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl FUN_08001FB0
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrb r1, [r0]
	adds r0, r4, #0
	bl FUN_08001FF0
	ldrh r0, [r4, #8]
	cmp r0, #0
	bne _080077D6
	adds r0, r4, #0
	bl FUN_08001848
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08001F20
_080077D6:
	movs r0, #0xa0
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r4, #0xc]
	ldr r1, [r1]
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r1, _08007810 @ => 0x00000145
	adds r0, r4, r1
	ldrb r0, [r0]
	movs r2, #0xa3
	lsls r2, r2, #1
	adds r1, r4, r2
	ldrb r1, [r1]
	bl FUN_080099A8
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _08007820
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r0, [r0]
	str r0, [r4, #0x14]
	b _08007820
	.align 2, 0
_08007810: .4byte 0x00000145
_08007814:
	ldrh r0, [r4, #8]
	cmp r0, #0
	bne _08007820
	adds r0, r4, #0
	bl FUN_08001824
_08007820:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08007828
FUN_08007828: @ 0x08007828
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _08007848 @ => 0x00000123
	adds r0, r4, r1
	ldrb r1, [r0]
	ldr r2, _0800784C @ => 0x0000011D
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #3
	beq _08007856
	cmp r0, #3
	bgt _08007850
	cmp r0, #0
	beq _08007856
	b _08007910
	.align 2, 0
_08007848: .4byte 0x00000123
_0800784C: .4byte 0x0000011D
_08007850:
	cmp r0, #0x13
	beq _080078F2
	b _08007910
_08007856:
	cmp r1, #2
	beq _08007910
	cmp r1, #3
	bne _0800786E
	adds r0, r4, #0
	movs r1, #0x13
	bl FUN_08001F84
	adds r0, r4, #0
	bl FUN_08043F34
	b _08007910
_0800786E:
	cmp r1, #1
	bne _08007910
	adds r0, r4, #0
	bl FUN_08043F34
	movs r0, #0x9b
	lsls r0, r0, #1
	adds r6, r4, r0
	ldrb r1, [r6]
	adds r0, r4, #0
	mov r2, sp
	bl FUN_08006D54
	cmp r0, #0
	beq _080078E8
	ldr r0, [sp]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r5, [r0]
	ldr r7, _080078E4 @ => 0x08073A54
	ldrh r1, [r5, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r7, #0
	adds r1, #0x18
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	bl _call_via_r2
	cmp r0, #0
	beq _080078E8
	ldrh r1, [r5, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r7, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldrb r2, [r6]
	ldr r3, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	bl _call_via_r3
	cmp r0, #0
	beq _080078E8
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_080019C4
	adds r0, r4, #0
	movs r1, #0x2b
	bl FUN_08001F84
	b _08007910
	.align 2, 0
_080078E4: .4byte ROMREF_08073A54
_080078E8:
	adds r0, r4, #0
	movs r1, #0x13
	bl FUN_08001F84
	b _08007910
_080078F2:
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08001F20
	movs r2, #0x91
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrb r1, [r0]
	adds r0, r4, #0
	bl FUN_08001FB0
	adds r0, r4, #0
	movs r1, #2
	bl FUN_08001F84
_08007910:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_08007918
FUN_08007918: @ 0x08007918
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	mov r8, r0
	cmp r0, #0
	bne _08007948
	ldr r2, _08007944 @ => 0x0000011D
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #7
	bne _0800793A
	b _08007A3E
_0800793A:
	adds r0, r6, #0
	movs r1, #7
	bl FUN_08001F84
	b _08007A3E
	.align 2, 0
_08007944: .4byte 0x0000011D
_08007948:
	mov r0, r8
	ldr r4, [r0, #0x18]
	ldr r5, [r0, #0x1c]
	ldr r0, [r6, #0x18]
	ldr r1, [r6, #0x1c]
	adds r3, r5, #0
	adds r2, r4, #0
	bl FUN_0802C538
	lsrs r7, r0, #0x10
	cmp r7, #0xdc
	ble _08007984
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _08007984
	movs r1, #0xaa
	lsls r1, r1, #0xf
	adds r5, r5, r1
	adds r1, r5, #0
	adds r0, r4, #0
	bl FUN_08006CC0
	cmp r0, #0
	beq _08007984
	str r4, [r6, #0x18]
	str r5, [r6, #0x1c]
	b _08007A3E
_08007984:
	ldr r2, _08007998 @ => 0x0000011D
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #7
	beq _080079D2
	cmp r0, #7
	bgt _0800799C
	cmp r0, #3
	beq _080079A2
	b _08007A20
	.align 2, 0
_08007998: .4byte 0x0000011D
_0800799C:
	cmp r0, #0xd
	beq _080079FA
	b _08007A20
_080079A2:
	movs r1, #0xa3
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, r7
	ble _080079C8
	adds r0, r6, #0
	movs r1, #7
	bl FUN_08001F84
	ldr r2, _080079C4 @ => 0x00000143
	adds r0, r6, r2
	ldrb r1, [r0]
	subs r2, #0x23
	adds r0, r6, r2
	strh r1, [r0]
	b _08007A3E
	.align 2, 0
_080079C4: .4byte 0x00000143
_080079C8:
	adds r0, r6, #0
	mov r1, r8
	bl FUN_08007F38
	b _08007A3E
_080079D2:
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r6, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _080079F4
	movs r1, #0xa3
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, r7
	bge _08007A3E
	adds r0, r6, #0
	movs r1, #3
	bl FUN_08001F84
	b _08007A3E
_080079F4:
	subs r0, #1
	strh r0, [r1]
	b _08007A3E
_080079FA:
	movs r2, #0x90
	lsls r2, r2, #1
	adds r4, r6, r2
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	ldr r1, _08007A1C @ => 0xFFFF0000
	cmp r0, r1
	bne _08007A3E
	adds r0, r6, #0
	movs r1, #7
	bl FUN_08001F84
	movs r0, #5
	strh r0, [r4]
	b _08007A3E
	.align 2, 0
_08007A1C: .4byte 0xFFFF0000
_08007A20:
	ldr r1, _08007A48 @ => 0x0000011D
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #5
	beq _08007A3E
	ldr r2, _08007A4C @ => 0x00000143
	adds r0, r6, r2
	ldrb r1, [r0]
	subs r2, #0x23
	adds r0, r6, r2
	strh r1, [r0]
	adds r0, r6, #0
	movs r1, #7
	bl FUN_08001F84
_08007A3E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007A48: .4byte 0x0000011D
_08007A4C: .4byte 0x00000143

	thumb_func_start FUN_08007A50
FUN_08007A50: @ 0x08007A50
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _08007AF0 @ => 0x03004200
	ldr r0, _08007AF4 @ => 0x030042B0
	ldrh r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r5, [r0]
	ldr r1, _08007AF8 @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #9
	beq _08007ADA
	cmp r0, #5
	beq _08007ADA
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, [r5, #0x18]
	ldr r3, [r5, #0x1c]
	bl FUN_0802C538
	lsrs r1, r0, #0x10
	movs r2, #0x9b
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrh r0, [r0]
	cmp r1, r0
	bhs _08007ADA
	adds r0, r4, #0
	movs r1, #9
	bl FUN_08001F84
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r4, #0x14]
	str r0, [r1]
	ldr r2, _08007AFC @ => 0x08062C10
	ldr r0, _08007B00 @ => 0x03003DF0
	ldrb r1, [r0, #0x1c]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r4, #0x14]
	movs r0, #7
	bl FUN_0804254C
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl FUN_08001FF0
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r0, #0xa
	bl FUN_080424F8
	movs r2, #0x93
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
_08007ADA:
	ldr r1, _08007AF8 @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #5
	beq _08007B3C
	cmp r0, #5
	bgt _08007B04
	cmp r0, #3
	beq _08007B0E
	b _08007BFA
	.align 2, 0
_08007AF0: .4byte gUnk_03004200
_08007AF4: .4byte gUnk_030042B0
_08007AF8: .4byte 0x0000011D
_08007AFC: .4byte ROMREF_08062C10
_08007B00: .4byte gUnk_03003DF0
_08007B04:
	cmp r0, #7
	beq _08007B5C
	cmp r0, #9
	beq _08007B80
	b _08007BFA
_08007B0E:
	movs r2, #0x93
	lsls r2, r2, #1
	adds r5, r4, r2
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	ldr r1, _08007B38 @ => 0xFFFF0000
	cmp r0, r1
	bne _08007BFA
	adds r0, r4, #0
	movs r1, #7
	bl FUN_08001F84
	movs r1, #0x9d
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r0, #0xf
	b _08007BF4
	.align 2, 0
_08007B38: .4byte 0xFFFF0000
_08007B3C:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08007BFA
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08001FB0
	ldr r0, [r4, #0xc]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0xc]
	b _08007BFA
_08007B5C:
	movs r2, #0x93
	lsls r2, r2, #1
	adds r5, r4, r2
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	ldr r1, _08007B7C @ => 0xFFFF0000
	cmp r0, r1
	bne _08007BFA
	adds r0, r4, #0
	movs r1, #3
	bl FUN_08001F84
	b _08007BD8
	.align 2, 0
_08007B7C: .4byte 0xFFFF0000
_08007B80:
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, [r5, #0x18]
	ldr r3, [r5, #0x1c]
	bl FUN_0802C538
	lsrs r1, r0, #0x10
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrh r0, [r0]
	cmp r1, r0
	bls _08007BC4
	adds r0, r4, #0
	movs r1, #7
	bl FUN_08001F84
	movs r1, #0x9d
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r0, #0xf
	bl FUN_080424F8
	movs r2, #0x93
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	str r0, [r4, #0x14]
	b _08007BFA
_08007BC4:
	movs r2, #0x93
	lsls r2, r2, #1
	adds r5, r4, r2
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	ldr r1, _08007C00 @ => 0xFFFF0000
	cmp r0, r1
	bne _08007BFA
_08007BD8:
	movs r0, #7
	bl FUN_0804254C
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl FUN_08001FF0
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r0, #0xa
_08007BF4:
	bl FUN_080424F8
	strh r0, [r5]
_08007BFA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08007C00: .4byte 0xFFFF0000

	thumb_func_start FUN_08007C04
FUN_08007C04: @ 0x08007C04
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, _08007CA4 @ => 0x03004200
	ldr r0, _08007CA8 @ => 0x030042B0
	ldrh r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r6, [r0]
	ldr r1, _08007CAC @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08007C90
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, [r6, #0x18]
	ldr r3, [r6, #0x1c]
	bl FUN_0802C538
	lsrs r1, r0, #0x10
	movs r2, #0x9b
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrh r0, [r0]
	cmp r1, r0
	bhs _08007C90
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08001F84
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r4, #0x14]
	str r0, [r1]
	ldr r2, _08007CB0 @ => 0x08062C10
	ldr r0, _08007CB4 @ => 0x03003DF0
	ldrb r1, [r0, #0x1c]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r4, #0x14]
	movs r0, #7
	bl FUN_0804254C
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl FUN_08001FF0
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r0, #0xa
	bl FUN_080424F8
	movs r2, #0x93
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
_08007C90:
	ldr r1, _08007CAC @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #4
	beq _08007D1C
	cmp r0, #4
	bgt _08007CB8
	cmp r0, #3
	beq _08007CC2
	b _08007D98
	.align 2, 0
_08007CA4: .4byte gUnk_03004200
_08007CA8: .4byte gUnk_030042B0
_08007CAC: .4byte 0x0000011D
_08007CB0: .4byte ROMREF_08062C10
_08007CB4: .4byte gUnk_03003DF0
_08007CB8:
	cmp r0, #5
	beq _08007D98
	cmp r0, #7
	beq _08007CF0
	b _08007D98
_08007CC2:
	movs r2, #0x93
	lsls r2, r2, #1
	adds r5, r4, r2
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	ldr r1, _08007CEC @ => 0xFFFF0000
	cmp r0, r1
	bne _08007D98
	adds r0, r4, #0
	movs r1, #7
	bl FUN_08001F84
	movs r1, #0x9d
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r0, #0xf
	b _08007D92
	.align 2, 0
_08007CEC: .4byte 0xFFFF0000
_08007CF0:
	movs r2, #0x93
	lsls r2, r2, #1
	adds r5, r4, r2
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	ldr r1, _08007D18 @ => 0xFFFF0000
	cmp r0, r1
	bne _08007D98
	adds r0, r4, #0
	movs r1, #3
	bl FUN_08001F84
	movs r0, #7
	bl FUN_0804254C
	adds r1, r0, #0
	b _08007D7E
	.align 2, 0
_08007D18: .4byte 0xFFFF0000
_08007D1C:
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, [r6, #0x18]
	ldr r3, [r6, #0x1c]
	bl FUN_0802C538
	lsrs r1, r0, #0x10
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrh r0, [r0]
	cmp r1, r0
	bls _08007D60
	adds r0, r4, #0
	movs r1, #7
	bl FUN_08001F84
	movs r1, #0x9d
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r0, #0xf
	bl FUN_080424F8
	movs r2, #0x93
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	str r0, [r4, #0x14]
	b _08007D98
_08007D60:
	movs r2, #0x93
	lsls r2, r2, #1
	adds r5, r4, r2
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	ldr r1, _08007DA0 @ => 0xFFFF0000
	cmp r0, r1
	bne _08007D98
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_08001BF4
	adds r1, r0, #0
_08007D7E:
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl FUN_08001FF0
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r0, #0xa
_08007D92:
	bl FUN_080424F8
	strh r0, [r5]
_08007D98:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08007DA0: .4byte 0xFFFF0000

	thumb_func_start FUN_08007DA4
FUN_08007DA4: @ 0x08007DA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sl, r0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
	mov r0, sl
	adds r0, #0x90
	ldr r0, [r0]
	str r0, [sp]
	movs r0, #1
	movs r1, #7
	bl FUN_080424F8
	adds r7, r0, #0
	ldr r0, _08007F00 @ => 0x0805F97C
	adds r0, r7, r0
	ldrb r0, [r0]
	str r0, [sp, #0xc]
	adds r7, r0, #0
	ldr r5, _08007F04 @ => 0x03004398
	ldr r0, [r5]
	add r4, sp, #4
	adds r1, r7, #0
	mov r8, r1
	mov r1, sp
	adds r2, r4, #0
	mov r3, r8
	bl FUN_08049A74
	ldr r0, [r5]
	add r6, sp, #8
	adds r1, r4, #0
	adds r2, r6, #0
	mov r3, r8
	bl FUN_08049A74
	mov r8, r5
	add r0, sp, #4
	mov sb, r0
_08007DFE:
	mov r1, r8
	ldr r0, [r1]
	mov r1, sb
	bl FUN_080497F4
	adds r6, r0, #0
	mov r1, r8
	ldr r0, [r1]
	add r1, sp, #8
	bl FUN_080497F4
	adds r5, r0, #0
	mov r1, r8
	ldr r0, [r1]
	mov r1, sb
	bl FUN_080496EC
	adds r4, r0, #0
	mov r1, r8
	ldr r0, [r1]
	add r1, sp, #8
	bl FUN_080496EC
	movs r1, #2
	ands r6, r1
	cmp r6, #0
	bne _08007E5C
	ands r5, r1
	cmp r5, #0
	bne _08007E5C
	movs r1, #0x3d
	ands r4, r1
	cmp r4, #0
	bne _08007E5C
	ands r0, r1
	cmp r0, #0
	bne _08007E5C
	str r7, [sp, #0x10]
	adds r1, r7, #0
	lsls r0, r1, #0x18
	lsrs r4, r0, #0x18
	mov r0, sl
	adds r1, r4, #0
	bl FUN_0800801C
	cmp r0, #1
	beq _08007F08
_08007E5C:
	adds r7, #2
	cmp r7, #8
	ble _08007E64
	subs r7, #8
_08007E64:
	mov r1, r8
	ldr r0, [r1]
	lsls r4, r7, #0x18
	lsrs r4, r4, #0x18
	mov r1, sp
	mov r2, sb
	adds r3, r4, #0
	bl FUN_08049A74
	mov r1, r8
	ldr r0, [r1]
	mov r1, sb
	add r2, sp, #8
	adds r3, r4, #0
	bl FUN_08049A74
	ldr r0, [sp, #0xc]
	cmp r7, r0
	bne _08007DFE
	ldr r1, _08007F04 @ => 0x03004398
	mov r8, r1
	add r5, sp, #4
_08007E90:
	mov r1, r8
	ldr r0, [r1]
	adds r1, r5, #0
	bl FUN_080497F4
	adds r6, r0, #0
	mov r1, r8
	ldr r0, [r1]
	adds r1, r5, #0
	bl FUN_080496EC
	adds r4, r0, #0
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	bne _08007ECC
	movs r0, #0x3d
	ands r0, r4
	cmp r0, #0
	bne _08007ECC
	str r7, [sp, #0x14]
	adds r1, r7, #0
	lsls r0, r1, #0x18
	lsrs r4, r0, #0x18
	mov r0, sl
	adds r1, r4, #0
	bl FUN_0800801C
	cmp r0, #1
	beq _08007F08
_08007ECC:
	adds r7, #2
	cmp r7, #8
	ble _08007ED4
	subs r7, #8
_08007ED4:
	mov r1, r8
	ldr r0, [r1]
	lsls r3, r7, #0x18
	lsrs r3, r3, #0x18
	mov r1, sp
	add r2, sp, #4
	bl FUN_08049A74
	ldr r0, [sp, #0xc]
	cmp r7, r0
	bne _08007E90
	movs r0, #1
	rsbs r0, r0, #0
	ldr r1, [sp, #0x10]
	cmp r1, r0
	beq _08007F14
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r0, sl
	bl FUN_08001FF0
	b _08007F26
	.align 2, 0
_08007F00: .4byte ROMREF_0805F97C
_08007F04: .4byte gUnk_03004398
_08007F08:
	mov r0, sl
	adds r1, r4, #0
	bl FUN_08001FF0
	movs r0, #1
	b _08007F28
_08007F14:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	cmp r0, r1
	beq _08007F26
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	mov r0, sl
	bl FUN_08001FF0
_08007F26:
	movs r0, #0
_08007F28:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_08007F38
FUN_08007F38: @ 0x08007F38
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl FUN_08001BF4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r5, r7, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl FUN_08005DFC
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r6, #0x12]
	cmp r5, r0
	beq _08007F60
	adds r0, r6, #0
	adds r1, r5, #0
	bl FUN_08001FF0
_08007F60:
	cmp r4, #0
	beq _08008016
	cmp r4, #0x25
	beq _08008016
	cmp r4, #1
	beq _08008016
	cmp r4, #0x24
	beq _08008016
	movs r0, #1
	bl FUN_0804254C
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r1, _08007FAC @ => 0x0805F984
	ldrb r0, [r6, #0x12]
	lsls r0, r0, #1
	adds r0, r5, r0
	adds r0, r0, r1
	ldrb r7, [r0]
	adds r1, r7, #0
	adds r0, r6, #0
	bl FUN_08005DFC
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _08007FFC
	cmp r4, #0x25
	beq _08007FFC
	cmp r4, #1
	beq _08007FFC
	cmp r4, #0x24
	beq _08007FFC
	cmp r5, #0
	bne _08007FB0
	movs r5, #1
	b _08007FB2
	.align 2, 0
_08007FAC: .4byte ROMREF_0805F984
_08007FB0:
	movs r5, #0
_08007FB2:
	ldr r0, _08007FF8 @ => 0x0805F984
	ldrb r1, [r6, #0x12]
	lsls r1, r1, #1
	adds r1, r5, r1
	adds r1, r1, r0
	ldrb r7, [r1]
	adds r5, r7, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl FUN_08005DFC
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _08007FFC
	cmp r4, #0x25
	beq _08007FFC
	cmp r4, #1
	beq _08007FFC
	cmp r4, #0x24
	beq _08007FFC
	adds r0, r6, #0
	adds r1, r5, #0
	bl FUN_08001FF0
	adds r0, r6, #0
	movs r1, #7
	bl FUN_08001F84
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #0xa
	b _08008014
	.align 2, 0
_08007FF8: .4byte ROMREF_0805F984
_08007FFC:
	adds r1, r7, #0
	adds r0, r6, #0
	bl FUN_08001FF0
	adds r0, r6, #0
	movs r1, #0xd
	bl FUN_08001F84
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #0x14
_08008014:
	strh r0, [r1]
_08008016:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_0800801C
FUN_0800801C: @ 0x0800801C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r1, [r6, #0xc]
	ldr r3, [r6, #0x14]
	mov r0, sp
	adds r2, r4, #0
	bl FUN_08001030
	ldr r0, [r6, #0x20]
	ldr r1, [sp]
	adds r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [r6, #0x24]
	ldr r1, [sp, #4]
	adds r0, r0, r1
	add r1, sp, #8
	str r0, [r1, #4]
	subs r5, r4, #1
	cmp r5, #0
	bge _08008054
	adds r5, r4, #7
_08008054:
	movs r0, #0
	str r0, [sp, #0x24]
	add r1, sp, #0x18
	mov r8, r1
	add r0, sp, #0x20
	mov sb, r0
	add r7, sp, #0x10
	mov sl, sb
_08008064:
	ldr r1, [r6, #0xc]
	mov r0, sp
	adds r2, r5, #0
	movs r3, #0x80
	lsls r3, r3, #0xb
	bl FUN_08001030
	mov r0, sp
	add r1, sp, #8
	adds r2, r7, #0
	bl FUN_0802C3AC
	ldr r0, [sp, #0x10]
	asrs r0, r0, #0x10
	str r0, [sp, #0x18]
	movs r1, #6
	ldrsh r0, [r7, r1]
	mov r1, r8
	str r0, [r1, #4]
	ldr r1, _080080DC @ => 0x03004398
	ldr r0, [r1]
	mov r1, r8
	mov r2, sl
	bl FUN_0805374C
	cmp r0, #1
	bne _080080E4
	mov r0, sb
	ldrh r2, [r0]
	adds r0, r6, #0
	adds r0, #0x90
	ldrh r3, [r0]
	ldr r1, _080080E0 @ => 0x0000FFFF
	ands r1, r2
	ldr r0, _080080E0 @ => 0x0000FFFF
	ands r0, r3
	cmp r1, r0
	beq _080080E4
	ldr r1, _080080DC @ => 0x03004398
	ldr r0, [r1]
	mov r1, sl
	bl FUN_080497F4
	adds r4, r0, #0
	ldr r1, _080080DC @ => 0x03004398
	ldr r0, [r1]
	mov r1, sl
	bl FUN_080496EC
	adds r1, r0, #0
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	bne _080080D8
	movs r0, #0x3d
	ands r0, r1
	cmp r0, #0
	beq _080080E4
_080080D8:
	movs r0, #0
	b _080080F8
	.align 2, 0
_080080DC: .4byte gUnk_03004398
_080080E0: .4byte 0x0000FFFF
_080080E4:
	adds r5, #1
	cmp r5, #7
	ble _080080EC
	subs r5, #8
_080080EC:
	ldr r0, [sp, #0x24]
	adds r0, #1
	str r0, [sp, #0x24]
	cmp r0, #2
	ble _08008064
	movs r0, #1
_080080F8:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_08008108
FUN_08008108: @ 0x08008108
	push {r4, lr}
	adds r4, r0, #0
	str r1, [r4, #0x38]
	str r2, [r4, #0x3c]
	str r3, [r4, #0x14]
	bl FUN_080397E4
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl FUN_08001FF0
	adds r0, r4, #0
	movs r1, #0xa
	bl FUN_08001FB0
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_08008130
FUN_08008130: @ 0x08008130
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	adds r3, r1, #0
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	ldr r4, _08008158 @ => 0x03004398
	ldr r0, [r4]
	movs r1, #0
	str r1, [sp]
	adds r1, r5, #0
	adds r2, r3, #0
	add r3, sp, #4
	bl FUN_08049524
	adds r6, r0, #0
	cmp r6, #1
	beq _0800815C
	movs r0, #0
	b _080081A6
	.align 2, 0
_08008158: .4byte gUnk_03004398
_0800815C:
	ldr r0, [r4]
	add r4, sp, #8
	add r1, sp, #4
	adds r2, r4, #0
	bl FUN_08053954
	ldr r0, [sp, #8]
	lsls r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	lsls r0, r0, #0x10
	add r1, sp, #0x10
	str r0, [r1, #4]
	ldr r0, _080081B0 @ => 0x00000123
	adds r2, r5, r0
	str r6, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_08043BB8
	adds r0, r5, #0
	movs r1, #0x23
	bl FUN_08001FB0
	adds r0, r5, #0
	movs r1, #3
	bl FUN_08001F84
	adds r0, r5, #0
	movs r1, #0xa
	bl FUN_08001F20
	movs r1, #0x9b
	lsls r1, r1, #1
	adds r0, r5, r1
	strb r7, [r0]
	movs r0, #1
_080081A6:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080081B0: .4byte 0x00000123

	thumb_func_start FUN_080081B4
FUN_080081B4: @ 0x080081B4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r6, #0
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, #0x38]
	ldr r3, [r5, #0x3c]
	ldr r4, [r5, #0x14]
	str r4, [sp]
	bl FUN_08001D30
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #8
	bne _080081D8
	ldrb r1, [r5, #0x12]
	movs r6, #1
_080081D8:
	adds r0, r5, #0
	bl FUN_08001FF0
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_080081E8
FUN_080081E8: @ 0x080081E8
	ldr r2, [r1]
	lsls r2, r2, #0x10
	str r2, [r0, #0x38]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	str r1, [r0, #0x3c]
	bx lr
	.align 2, 0

	thumb_func_start FUN_080081F8
FUN_080081F8: @ 0x080081F8
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	add r5, sp, #8
_08008200:
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	bl FUN_08009BC8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	subs r1, #1
	movs r0, #0
	bl FUN_080424F8
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r1, #0x9d
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r2, r0
	beq _08008200
	adds r0, r4, r1
	strb r2, [r0]
	subs r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	mov r0, sp
	bl FUN_08009BE0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_080081E8
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08008254
FUN_08008254: @ 0x08008254
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	ldr r1, _08008280 @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0x62
	bne _08008266
	b _08008468
_08008266:
	cmp r0, #0x62
	bgt _0800828A
	cmp r0, #0x5f
	beq _080082AA
	cmp r0, #0x5f
	bgt _08008284
	cmp r0, #0
	beq _08008292
	cmp r0, #0x5d
	bne _0800827C
	b _080084B2
_0800827C:
	b _080084CE
	.align 2, 0
_08008280: .4byte 0x0000011D
_08008284:
	cmp r0, #0x60
	beq _0800833C
	b _080084CE
_0800828A:
	cmp r0, #0x63
	bne _08008290
	b _0800840C
_08008290:
	b _080084CE
_08008292:
	adds r0, r4, #0
	bl FUN_08001848
	adds r0, r4, #0
	movs r1, #0x3c
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #0x5f
	bl FUN_08001F84
	b _080084D0
_080082AA:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080082B8
	b _080084D0
_080082B8:
	movs r5, #0
	ldr r0, _08008318 @ => 0x0000016D
	bl FUN_080213F8
	cmp r0, #1
	bne _080082D0
	ldr r0, _0800831C @ => 0x03005C60
	ldr r1, _08008320 @ => 0x000007ED
	strh r1, [r0]
	ldr r0, _08008324 @ => 0x03005C70
	str r6, [r0]
	movs r5, #1
_080082D0:
	ldr r0, _08008328 @ => 0x030017F8
	movs r1, #0x1a
	bl FUN_0803ADAC
	ldr r1, _0800832C @ => 0x03001813
	strb r0, [r1]
	ldr r0, _08008330 @ => 0x03001812
	strb r6, [r0]
	ldr r1, _0800831C @ => 0x03005C60
	lsls r0, r5, #1
	adds r0, r0, r1
	movs r2, #0
	ldr r1, _08008334 @ => 0x000007E7
	strh r1, [r0]
	ldr r1, _08008324 @ => 0x03005C70
	lsls r0, r5, #2
	adds r0, r0, r1
	movs r1, #2
	str r1, [r0]
	ldr r0, _08008338 @ => 0x03005C90
	strb r2, [r0, #4]
	strb r2, [r0, #1]
	strb r2, [r0, #2]
	movs r0, #2
	bl FUN_0802CEC4
	adds r0, r4, #0
	movs r1, #0x3d
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #0x60
	bl FUN_08001F84
	b _080084D0
	.align 2, 0
_08008318: .4byte 0x0000016D
_0800831C: .4byte gChoiceIDs
_08008320: .4byte 0x000007ED
_08008324: .4byte gUnk_03005C70
_08008328: .4byte gUnk_030017F8
_0800832C: .4byte gUnk_03001813
_08008330: .4byte gUnk_03001812
_08008334: .4byte 0x000007E7
_08008338: .4byte gUnk_03005C90
_0800833C:
	ldr r0, _08008360 @ => 0x03004750
	ldr r0, [r0, #0xc]
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	bne _0800834A
	b _080084CE
_0800834A:
	ldr r5, _08008364 @ => 0x03005C70
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #1
	beq _08008374
	cmp r0, #1
	bgt _08008368
	cmp r0, #0
	beq _080083E8
	b _080084D0
	.align 2, 0
_08008360: .4byte gUnk_03004750
_08008364: .4byte gUnk_03005C70
_08008368:
	cmp r0, #2
	beq _080083BC
	cmp r0, #6
	bne _08008372
	b _080084CE
_08008372:
	b _080084D0
_08008374:
	ldr r1, _080083AC @ => 0x03005C60
	movs r2, #0
	movs r0, #0xfd
	lsls r0, r0, #3
	strh r0, [r1]
	movs r0, #3
	str r0, [r5]
	ldr r0, _080083B0 @ => 0x000007EA
	strh r0, [r1, #2]
	movs r3, #4
	movs r0, #5
	str r0, [r5, #4]
	ldr r0, _080083B4 @ => 0x000007E9
	strh r0, [r1, #4]
	str r3, [r5, #8]
	ldr r0, _080083B8 @ => 0x03005C90
	strb r2, [r0, #1]
	strb r2, [r0, #2]
	strb r2, [r0, #4]
	movs r0, #2
	bl FUN_0802CEC4
	adds r0, r4, #0
	movs r1, #0x62
	bl FUN_08001F84
	b _080084D0
	.align 2, 0
_080083AC: .4byte gChoiceIDs
_080083B0: .4byte 0x000007EA
_080083B4: .4byte 0x000007E9
_080083B8: .4byte gUnk_03005C90
_080083BC:
	ldr r1, _080083E0 @ => 0x030017F8
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, r2
	bne _080083D0
	movs r0, #0x24
	strb r0, [r1]
	ldr r1, _080083E4 @ => 0x03001813
	movs r0, #1
	strb r0, [r1]
_080083D0:
	bl FUN_080084EC
	adds r0, r4, #0
	movs r1, #0x63
	bl FUN_08001F84
	b _080084D0
	.align 2, 0
_080083E0: .4byte gUnk_030017F8
_080083E4: .4byte gUnk_03001813
_080083E8:
	movs r0, #0xc6
	lsls r0, r0, #2
	movs r1, #0
	movs r2, #0
	bl FUN_0802B2E0
	movs r0, #0xb7
	lsls r0, r0, #1
	movs r1, #1
	bl FUN_080213A4
	ldr r0, _08008408 @ => 0x0000016D
	movs r1, #0
	bl FUN_080213A4
	b _080084CE
	.align 2, 0
_08008408: .4byte 0x0000016D
_0800840C:
	ldr r0, _08008440 @ => 0x03004750
	ldr r2, [r0, #0xc]
	movs r3, #1
	rsbs r3, r3, #0
	cmp r2, r3
	beq _080084CE
	ldr r0, _08008444 @ => 0x03005C70
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, r3
	bne _08008450
	ldr r2, _08008448 @ => 0x03001812
	ldrb r0, [r2]
	adds r0, #4
	strb r0, [r2]
	ldr r1, _0800844C @ => 0x03001813
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r1]
	cmp r0, r1
	blo _0800843A
	strb r6, [r2]
_0800843A:
	bl FUN_080084EC
	b _080084D0
	.align 2, 0
_08008440: .4byte gUnk_03004750
_08008444: .4byte gUnk_03005C70
_08008448: .4byte gUnk_03001812
_0800844C: .4byte gUnk_03001813
_08008450:
	ldr r0, _08008464 @ => 0x03001812
	ldrb r0, [r0]
	adds r0, r0, r2
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_08008598
	b _080084BE
	.align 2, 0
_08008464: .4byte gUnk_03001812
_08008468:
	ldr r0, _0800848C @ => 0x03004750
	ldr r2, [r0, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _080084CE
	ldr r1, _08008490 @ => 0x03005C70
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #4
	beq _080084AA
	cmp r0, #4
	bgt _08008494
	cmp r0, #3
	beq _0800849A
	b _080084CE
	.align 2, 0
_0800848C: .4byte gUnk_03004750
_08008490: .4byte gUnk_03005C70
_08008494:
	cmp r0, #5
	beq _080084A2
	b _080084CE
_0800849A:
	movs r0, #0
	bl FUN_08039F08
	b _080084CE
_080084A2:
	movs r0, #1
	bl FUN_08039F08
	b _080084CE
_080084AA:
	movs r0, #2
	bl FUN_08039F08
	b _080084CE
_080084B2:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080084D0
_080084BE:
	movs r1, #0x91
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl FUN_08001FB0
	b _080084D0
_080084CE:
	movs r6, #1
_080084D0:
	cmp r6, #1
	bne _080084E4
	adds r0, r4, #0
	movs r1, #0x3e
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #0x5d
	bl FUN_08001F84
_080084E4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080084EC
FUN_080084EC: @ 0x080084EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #1
	ldr r1, _08008580 @ => 0x03005C60
	ldr r0, _08008584 @ => 0x000007EB
	strh r0, [r1]
	ldr r0, _08008588 @ => 0x03005C70
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	ldr r0, _0800858C @ => 0x03001812
	ldrb r5, [r0]
	adds r0, r5, #4
	cmp r5, r0
	bge _08008566
	cmp r5, #0x1a
	beq _08008566
	ldr r2, _08008590 @ => 0x030017F8
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r1
	beq _08008566
	adds r7, r2, #0
	mov r8, r1
_08008522:
	adds r4, r5, r7
	movs r0, #0
	ldrsb r0, [r4, r0]
	bl FUN_0803AE80
	ldr r2, _08008580 @ => 0x03005C60
	lsls r1, r6, #1
	adds r1, r1, r2
	strh r0, [r1]
	ldr r1, _08008588 @ => 0x03005C70
	lsls r0, r6, #2
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r4, r1]
	str r1, [r0]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _0800858C @ => 0x03001812
	ldrb r0, [r0]
	adds r0, #4
	cmp r5, r0
	bge _08008566
	cmp r5, #0x1a
	beq _08008566
	adds r0, r5, r7
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r8
	bne _08008522
_08008566:
	ldr r1, _08008594 @ => 0x03005C90
	movs r0, #0
	strb r0, [r1, #4]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	movs r0, #2
	bl FUN_0802CEC4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008580: .4byte gChoiceIDs
_08008584: .4byte 0x000007EB
_08008588: .4byte gUnk_03005C70
_0800858C: .4byte gUnk_03001812
_08008590: .4byte gUnk_030017F8
_08008594: .4byte gUnk_03005C90

	thumb_func_start FUN_08008598
FUN_08008598: @ 0x08008598
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _080085C0 @ => 0x030017F8
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl FUN_0803B48C
	adds r1, r0, #0
	ldr r0, _080085C4 @ => 0x00000371
	cmp r1, r0
	beq _080085C8
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	bl FUN_0802B2E0
	b _080085D2
	.align 2, 0
_080085C0: .4byte gUnk_030017F8
_080085C4: .4byte 0x00000371
_080085C8:
	ldr r1, _080085D8 @ => 0x03005C60
	ldr r0, _080085DC @ => 0x0000097D
	strh r0, [r1]
	bl FUN_08041BF0
_080085D2:
	pop {r0}
	bx r0
	.align 2, 0
_080085D8: .4byte gChoiceIDs
_080085DC: .4byte 0x0000097D

	thumb_func_start FUN_080085E0
FUN_080085E0: @ 0x080085E0
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldrb r7, [r5, #0x13]
	ldr r0, _08008618 @ => 0x03003460
	lsls r1, r7, #3
	adds r1, r1, r7
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #0x1f]
	cmp r0, #1
	bne _08008600
	adds r0, r5, #0
	movs r1, #2
	bl FUN_08001F84
_08008600:
	ldr r1, _0800861C @ => 0x0000011D
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #7
	bls _0800860C
	b _0800882C
_0800860C:
	lsls r0, r0, #2
	ldr r1, _08008620 @ =_08008624
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08008618: .4byte gUnk_03003460
_0800861C: .4byte 0x0000011D
_08008620: .4byte _08008624
_08008624: @ jump table
	.4byte _08008644 @ case 0
	.4byte _080086FC @ case 1
	.4byte _08008706 @ case 2
	.4byte _08008748 @ case 3
	.4byte _0800882C @ case 4
	.4byte _0800882C @ case 5
	.4byte _0800882C @ case 6
	.4byte _08008824 @ case 7
_08008644:
	adds r0, r5, #0
	movs r1, #0x89
	bl FUN_08001F20
	adds r0, r5, #0
	movs r1, #2
	bl FUN_08001F84
	adds r0, r5, #0
	movs r1, #0
	movs r2, #5
	bl FUN_080018B0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #5
	bl FUN_080018B0
	adds r0, r5, #0
	movs r1, #1
	movs r2, #6
	bl FUN_080018B0
	adds r0, r5, #0
	movs r1, #2
	movs r2, #7
	bl FUN_080018B0
	adds r0, r5, #0
	movs r1, #3
	movs r2, #4
	bl FUN_080018B0
	ldr r0, _0800869C @ => 0x03003DF0
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _080086A4
	ldr r1, _080086A0 @ => 0x03001818
	movs r0, #1
	str r0, [r1, #0x18]
	b _080086AA
	.align 2, 0
_0800869C: .4byte gUnk_03003DF0
_080086A0: .4byte gUnk_03001818
_080086A4:
	ldr r0, _080086D0 @ => 0x03001818
	str r2, [r0, #0x18]
	adds r1, r0, #0
_080086AA:
	ldr r2, [r5, #0xc]
	movs r3, #0x80
	lsls r3, r3, #0x16
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	bne _080086C2
	orrs r2, r3
	str r2, [r5, #0xc]
	ldrb r0, [r5, #0x12]
	lsls r0, r0, #1
	strb r0, [r5, #0x12]
_080086C2:
	ldr r0, [r1, #0x18]
	cmp r0, #0
	bne _080086D4
	strb r0, [r1, #0x10]
	str r0, [r1, #0xc]
	str r0, [r1, #4]
	b _080086E8
	.align 2, 0
_080086D0: .4byte gUnk_03001818
_080086D4:
	adds r0, r5, #0
	movs r1, #3
	bl FUN_08001F84
	ldr r0, _080086F4 @ => 0x03003DF0
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
_080086E8:
	movs r0, #0x63
	bl FUN_0804DE0C
	ldr r1, _080086F8 @ => 0x03001818
	str r0, [r1, #8]
	b _0800882C
	.align 2, 0
_080086F4: .4byte gUnk_03003DF0
_080086F8: .4byte gUnk_03001818
_080086FC:
	adds r0, r5, #0
	movs r1, #4
	bl FUN_08001F20
	b _0800882C
_08008706:
	ldr r1, _08008740 @ => 0x03001818
	movs r0, #0
	str r0, [r1, #0xc]
	ldr r1, _08008744 @ => 0x03003460
	lsls r0, r7, #3
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0x1f]
	cmp r0, #1
	bne _0800871E
	b _0800882C
_0800871E:
	ldrb r1, [r5, #0x12]
	adds r0, r7, #0
	bl FUN_08024A48
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x10
	beq _08008734
	adds r0, r5, #0
	bl FUN_08002014
_08008734:
	adds r0, r5, #0
	movs r1, #3
	bl FUN_08001F84
	b _0800882C
	.align 2, 0
_08008740: .4byte gUnk_03001818
_08008744: .4byte gUnk_03003460
_08008748:
	ldr r0, _0800876C @ => 0x030042B0
	ldrh r1, [r0, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08008774
	ldr r0, _08008770 @ => 0x03003DF0
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08008774
	adds r0, r5, #0
	bl FUN_0800883C
	b _0800882C
	.align 2, 0
_0800876C: .4byte gUnk_030042B0
_08008770: .4byte gUnk_03003DF0
_08008774:
	ldrb r1, [r5, #0x12]
	adds r0, r7, #0
	bl FUN_08024A48
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x10
	beq _0800880C
	ldr r0, _080087C4 @ => 0x030042B0
	ldrh r1, [r0, #8]
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08008808
	ldr r4, _080087C8 @ => 0x03001818
	ldrb r0, [r4, #0x10]
	subs r0, #1
	strb r0, [r4, #0x10]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0800880C
	adds r0, r5, #0
	adds r1, r2, #0
	bl FUN_08002014
	ldr r1, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r1, r0
	bgt _080087CC
	ldr r0, [r4, #0x14]
	cmp r0, #1
	bne _080087CC
	movs r0, #1
	strb r0, [r4, #0x10]
	str r6, [r4, #0xc]
	b _0800880C
	.align 2, 0
_080087C4: .4byte gUnk_030042B0
_080087C8: .4byte gUnk_03001818
_080087CC:
	ldr r4, _080087F4 @ => 0x03001818
	ldr r0, [r4, #0xc]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #0x11
	bl __floatsidf
	ldr r2, _080087F8 @ => 0x3FD99999
	ldr r3, _080087FC @ => 0x9999999A
	bl __muldf3
	ldr r2, _08008800 @ => 0x40000000
	ldr r3, _08008804 @ => 0x00000000
	bl __adddf3
	bl __fixunsdfsi
	strb r0, [r4, #0x10]
	b _0800880C
	.align 2, 0
_080087F4: .4byte gUnk_03001818
_080087F8: .4byte 0x3FD99999
_080087FC: .4byte 0x9999999A
_08008800: .4byte 0x40000000
_08008804: .4byte 0x00000000
_08008808:
	ldr r0, _08008820 @ => 0x03001818
	str r6, [r0, #0x14]
_0800880C:
	adds r0, r5, #0
	mov r1, sp
	bl FUN_0800892C
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r0, [r5, #0x28]
	str r1, [r5, #0x2c]
	b _0800882C
	.align 2, 0
_08008820: .4byte gUnk_03001818
_08008824:
	adds r0, r5, #0
	movs r1, #3
	bl FUN_08001F84
_0800882C:
	adds r0, r7, #0
	bl FUN_08008A14
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0800883C
FUN_0800883C: @ 0x0800883C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0x12]
	lsrs r0, r0, #1
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x1c]
	bl FUN_080447B4
	adds r6, r0, #0
	cmp r6, #0
	beq _0800890E
	adds r0, r5, #0
	movs r1, #0xd
	bl FUN_08001FB0
	adds r0, r5, #0
	movs r1, #2
	bl FUN_08001F84
	movs r1, #0x80
	lsls r1, r1, #0x16
	adds r0, r5, #0
	bl FUN_08002040
	ldrb r1, [r5, #0x12]
	lsrs r1, r1, #1
	adds r0, r5, #0
	bl FUN_08001FF0
	adds r0, r5, #0
	movs r1, #4
	bl FUN_08001F20
	adds r0, r5, #0
	movs r1, #0
	movs r2, #4
	bl FUN_080018B0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #4
	bl FUN_080018B0
	adds r0, r5, #0
	movs r1, #1
	movs r2, #5
	bl FUN_080018B0
	adds r0, r5, #0
	movs r1, #2
	movs r2, #6
	bl FUN_080018B0
	adds r0, r5, #0
	movs r1, #3
	movs r2, #7
	bl FUN_080018B0
	ldr r2, _08008914 @ => 0x03003DF0
	ldr r0, _08008918 @ => 0x00000404
	adds r1, r2, r0
	movs r3, #0
	movs r0, #2
	strb r0, [r1]
	ldr r4, _0800891C @ => 0x03001818
	str r3, [r4, #0x14]
	ldr r0, _08008920 @ => 0x030043A0
	ldr r1, [r0]
	movs r3, #0xf6
	lsls r3, r3, #1
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #0xf2
	lsls r0, r0, #1
	adds r2, r2, r0
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	str r0, [r2]
	str r1, [r2, #4]
	ldr r0, [r4, #8]
	bl FUN_0804E03C
	adds r0, r6, #0
	bl FUN_0803977C
	adds r1, r6, #0
	adds r1, #0x64
	adds r0, r5, #0
	adds r0, #0x64
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	adds r0, r5, #0
	bl FUN_0802333C
	ldr r2, _08008924 @ => 0x03004200
	ldr r0, _08008928 @ => 0x030042B0
	ldrh r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #4
	strb r1, [r0, #0x10]
_0800890E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08008914: .4byte gUnk_03003DF0
_08008918: .4byte 0x00000404
_0800891C: .4byte gUnk_03001818
_08008920: .4byte gUnk_030043A0
_08008924: .4byte gUnk_03004200
_08008928: .4byte gUnk_030042B0

	thumb_func_start FUN_0800892C
FUN_0800892C: @ 0x0800892C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800897C
	ldr r0, _08008950 @ => 0x030042B0
	ldrh r1, [r0, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800895C
	ldr r4, _08008954 @ => 0x03001818
	ldr r0, [r4, #0xc]
	ldr r1, _08008958 @ => 0x00003333
	b _08008962
	.align 2, 0
_08008950: .4byte gUnk_030042B0
_08008954: .4byte gUnk_03001818
_08008958: .4byte 0x00003333
_0800895C:
	ldr r4, _08008974 @ => 0x03001818
	ldr r0, [r4, #0xc]
	ldr r1, _08008978 @ => 0xFFFF999A
_08008962:
	adds r0, r0, r1
	movs r2, #0x80
	lsls r2, r2, #0xc
	movs r1, #0
	bl FUN_0802C644
	str r0, [r4, #0xc]
	b _08008982
	.align 2, 0
_08008974: .4byte gUnk_03001818
_08008978: .4byte 0xFFFF999A
_0800897C:
	ldr r1, _080089B0 @ => 0x03001818
	movs r0, #0
	str r0, [r1, #0xc]
_08008982:
	ldr r1, [r5, #0xc]
	ldrb r2, [r5, #0x12]
	ldr r0, _080089B0 @ => 0x03001818
	ldr r3, [r0, #0xc]
	adds r0, r6, #0
	bl FUN_08001030
	ldr r0, _080089B4 @ => 0x030042B0
	ldrh r1, [r0, #8]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080089B8
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080089B8
	adds r0, r5, #0
	bl FUN_0800205C
	cmp r0, #0
	beq _080089E4
	b _080089D6
	.align 2, 0
_080089B0: .4byte gUnk_03001818
_080089B4: .4byte gUnk_030042B0
_080089B8:
	ldr r0, _080089E0 @ => 0x030042B0
	ldrh r1, [r0, #8]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080089EE
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080089EE
	adds r0, r5, #0
	bl FUN_0800205C
	cmp r0, #0
	bne _080089E4
_080089D6:
	adds r0, r5, #0
	movs r1, #0x8b
	bl FUN_08001F20
	b _08008A0C
	.align 2, 0
_080089E0: .4byte gUnk_030042B0
_080089E4:
	adds r0, r5, #0
	movs r1, #0x8a
	bl FUN_08001F20
	b _08008A0C
_080089EE:
	ldr r0, _08008A00 @ => 0x03001818
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _08008A04
	adds r0, r5, #0
	movs r1, #0x8c
	bl FUN_08001F20
	b _08008A0C
	.align 2, 0
_08008A00: .4byte gUnk_03001818
_08008A04:
	adds r0, r5, #0
	movs r1, #0x89
	bl FUN_08001F20
_08008A0C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08008A14
FUN_08008A14: @ 0x08008A14
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	ldr r1, _08008A58 @ => 0x030042B0
	lsrs r0, r0, #0x15
	adds r5, r0, r1
	ldrh r1, [r5, #0x14]
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08008A3A
	ldr r4, _08008A5C @ => 0x03001818
	ldr r0, [r4, #8]
	bl FUN_0804E03C
	movs r0, #0x63
	bl FUN_0804DE0C
	str r0, [r4, #8]
_08008A3A:
	ldrh r0, [r5, #0x10]
	adds r2, r6, #0
	ands r2, r0
	cmp r2, #0
	beq _08008A64
	ldr r1, _08008A5C @ => 0x03001818
	ldr r0, [r1, #4]
	ldr r2, _08008A60 @ => 0x00001999
	adds r0, r0, r2
	str r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #0xb
	cmp r0, r2
	ble _08008A74
	b _08008A72
	.align 2, 0
_08008A58: .4byte gUnk_030042B0
_08008A5C: .4byte gUnk_03001818
_08008A60: .4byte 0x00001999
_08008A64:
	ldr r1, _08008A90 @ => 0x03001818
	ldr r0, [r1, #4]
	ldr r3, _08008A94 @ => 0xFFFF8003
	adds r0, r0, r3
	str r0, [r1, #4]
	cmp r0, #0
	bge _08008A74
_08008A72:
	str r2, [r1, #4]
_08008A74:
	ldr r4, [r1, #8]
	ldr r0, [r1, #4]
	ldr r1, _08008A98 @ => 0x0000051E
	bl FUN_0802C314
	adds r1, r0, #0
	ldr r0, _08008A9C @ => 0x00001770
	adds r1, r1, r0
	adds r0, r4, #0
	bl FUN_0804E174
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08008A90: .4byte gUnk_03001818
_08008A94: .4byte 0xFFFF8003
_08008A98: .4byte 0x0000051E
_08008A9C: .4byte 0x00001770

	thumb_func_start FUN_08008AA0
FUN_08008AA0: @ 0x08008AA0
	push {lr}
	ldr r0, _08008ABC @ => 0x03003DF0
	ldr r1, _08008AC0 @ => 0x00000404
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08008AB6
	ldr r0, _08008AC4 @ => 0x03001818
	ldr r0, [r0, #8]
	bl FUN_0804E03C
_08008AB6:
	pop {r0}
	bx r0
	.align 2, 0
_08008ABC: .4byte gUnk_03003DF0
_08008AC0: .4byte 0x00000404
_08008AC4: .4byte gUnk_03001818

	thumb_func_start FUN_08008AC8
FUN_08008AC8: @ 0x08008AC8
	push {lr}
	ldr r0, _08008AE4 @ => 0x03003DF0
	ldr r1, _08008AE8 @ => 0x00000404
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08008AE0
	movs r0, #0x63
	bl FUN_0804DE0C
	ldr r1, _08008AEC @ => 0x03001818
	str r0, [r1, #8]
_08008AE0:
	pop {r0}
	bx r0
	.align 2, 0
_08008AE4: .4byte gUnk_03003DF0
_08008AE8: .4byte 0x00000404
_08008AEC: .4byte gUnk_03001818

	thumb_func_start FUN_08008AF0
FUN_08008AF0: @ 0x08008AF0
	bx lr
	.align 2, 0

	thumb_func_start FUN_08008AF4
FUN_08008AF4: @ 0x08008AF4
	bx lr
	.align 2, 0

	thumb_func_start FUN_08008AF8
FUN_08008AF8: @ 0x08008AF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r4, r0, #0
	movs r7, #0
	ldr r1, _08008B14 @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _08008B30
	cmp r0, #2
	bgt _08008B18
	cmp r0, #0
	beq _08008B30
	b _08008C52
	.align 2, 0
_08008B14: .4byte 0x0000011D
_08008B18:
	cmp r0, #7
	bne _08008B1E
	b _08008C20
_08008B1E:
	cmp r0, #0x46
	bne _08008B24
	b _08008C2A
_08008B24:
	b _08008C52
_08008B26:
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r4, r2
	str r5, [r0]
	b _08008B64
_08008B30:
	movs r5, #0
	add r6, sp, #8
	b _08008B4A
_08008B36:
	ldr r0, [sp, #4]
	ldr r2, [sp, #8]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r1, r4, #0
	bl FUN_0803C338
	adds r5, r0, #0
	cmp r5, #1
	beq _08008B26
_08008B4A:
	ldr r1, _08008BE0 @ => 0x0805A110
	movs r2, #0xb2
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	add r1, sp, #4
	adds r2, r6, #0
	bl FUN_08008CD8
	cmp r0, #1
	beq _08008B36
_08008B64:
	cmp r5, #0
	bne _08008C52
	ldr r0, _08008BE0 @ => 0x0805A110
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r6, r4, r1
	ldrh r1, [r6]
	adds r1, r1, r0
	ldrb r0, [r1]
	bl FUN_08008D4C
	adds r5, r0, #0
	cmp r5, #1
	bne _08008B88
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r4, r2
	str r5, [r0]
_08008B88:
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08008B9A
	adds r0, r4, #0
	bl FUN_08008E78
_08008B9A:
	cmp r7, #1
	bne _08008BFA
	movs r1, #0xe6
	str r7, [sp]
	movs r0, #4
	movs r2, #0
	add r3, sp, #4
	bl FUN_08001DB4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08008BE8
	ldr r0, [sp, #4]
	adds r0, #0x18
	add r1, sp, #0xc
	bl FUN_0802C3F8
	ldr r1, [sp, #4]
	adds r1, #0x18
	ldr r0, _08008BE4 @ => 0x00000123
	adds r2, r4, r0
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_08043BB8
	adds r5, r0, #0
	cmp r5, #1
	bne _08008BE8
	adds r0, r4, #0
	movs r1, #0x46
	bl FUN_08001F84
	b _08008C52
	.align 2, 0
_08008BE0: .4byte ROMREF_0805A110
_08008BE4: .4byte 0x00000123
_08008BE8:
	adds r0, r4, #0
	movs r1, #0x26
	bl FUN_08001FB0
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001F84
	b _08008C52
_08008BFA:
	ldr r0, _08008C1C @ => 0x0805A104
	ldrh r1, [r6]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	rsbs r1, r1, #0
	movs r0, #2
	bl FUN_08020DB0
	movs r0, #0xb0
	bl FUN_0804DE0C
	adds r0, r4, #0
	movs r1, #0x1f
	bl FUN_08001FB0
	b _08008C52
	.align 2, 0
_08008C1C: .4byte ROMREF_0805A104
_08008C20:
	adds r0, r4, #0
	movs r1, #2
	bl FUN_08001F84
	b _08008C52
_08008C2A:
	ldr r1, _08008C5C @ => 0x00000123
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _08008C52
	cmp r0, #3
	beq _08008C3C
	cmp r0, #1
	bne _08008C52
_08008C3C:
	adds r0, r4, #0
	bl FUN_08043F34
	adds r0, r4, #0
	movs r1, #0x26
	bl FUN_08001FB0
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001F84
_08008C52:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008C5C: .4byte 0x00000123

	thumb_func_start FUN_08008C60
FUN_08008C60: @ 0x08008C60
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	movs r6, #0
	ldr r0, _08008C98 @ => 0x03005B90
	ldr r4, [r0]
	cmp r4, #0
	beq _08008CCE
	ldr r7, _08008C9C @ => 0x08073A58
_08008C70:
	ldr r5, [r4]
	mov r0, sp
	movs r1, #0
	movs r2, #7
	bl FUN_0802CB40
	ldrh r0, [r4, #8]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r7
	ldr r2, [r1]
	adds r0, r4, #0
	mov r1, sp
	bl _call_via_r2
	movs r1, #0
	adds r2, r4, #0
	adds r2, #0x3c
	b _08008CA6
	.align 2, 0
_08008C98: .4byte gUnk_03005B90
_08008C9C: .4byte ROMREF_08073A58
_08008CA0:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08008CA6:
	cmp r1, #6
	bhi _08008CC8
	mov r3, sp
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08008CC8
	cmp r0, #0xa
	beq _08008CC4
	cmp r0, #0x14
	beq _08008CC4
	cmp r0, #0x20
	beq _08008CC4
	cmp r0, #0x11
	bne _08008CA0
_08008CC4:
	movs r6, #1
	strb r0, [r2]
_08008CC8:
	adds r4, r5, #0
	cmp r4, #0
	bne _08008C70
_08008CCE:
	adds r0, r6, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_08008CD8
FUN_08008CD8: @ 0x08008CD8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	mov ip, r1
	adds r7, r2, #0
	movs r5, #0
	ldr r0, _08008D08 @ => 0x03005B90
	ldr r1, [r0]
	cmp r1, #0
	beq _08008D44
_08008CEA:
	ldr r6, [r1]
	adds r0, r1, #0
	adds r0, #0x3c
	ldrb r3, [r0]
	adds r2, r0, #0
	cmp r3, #0
	beq _08008D3E
	cmp r4, #2
	beq _08008D1C
	cmp r4, #2
	bhi _08008D0C
	cmp r4, #1
	beq _08008D12
	b _08008D28
	.align 2, 0
_08008D08: .4byte gUnk_03005B90
_08008D0C:
	cmp r4, #3
	beq _08008D22
	b _08008D28
_08008D12:
	cmp r3, #0xa
	beq _08008D26
	cmp r3, #0x14
	bne _08008D28
	b _08008D26
_08008D1C:
	cmp r3, #0x20
	bne _08008D28
	b _08008D26
_08008D22:
	cmp r3, #0x11
	bne _08008D28
_08008D26:
	movs r5, #1
_08008D28:
	cmp r5, #1
	bne _08008D3E
	ldrb r0, [r2]
	str r0, [r7]
	movs r0, #0
	strb r0, [r2]
	ldr r0, [r1, #0x34]
	mov r1, ip
	str r0, [r1]
	movs r0, #1
	b _08008D46
_08008D3E:
	adds r1, r6, #0
	cmp r1, #0
	bne _08008CEA
_08008D44:
	movs r0, #0
_08008D46:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_08008D4C
FUN_08008D4C: @ 0x08008D4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, _08008D80 @ => 0x03005B90
	ldr r2, [r0]
	cmp r2, #0
	beq _08008DB2
	movs r6, #0
_08008D68:
	ldr r3, [r2]
	adds r0, r2, #0
	adds r0, #0x6a
	ldrb r1, [r0]
	movs r5, #0
	cmp r4, #2
	beq _08008D90
	cmp r4, #2
	bhi _08008D84
	cmp r4, #1
	beq _08008D8A
	b _08008D9C
	.align 2, 0
_08008D80: .4byte gUnk_03005B90
_08008D84:
	cmp r4, #3
	beq _08008D96
	b _08008D9C
_08008D8A:
	cmp r1, #2
	bne _08008D9C
	b _08008DA0
_08008D90:
	cmp r1, #1
	bne _08008D9C
	b _08008DA0
_08008D96:
	cmp r1, #3
	bne _08008D9C
	movs r5, #1
_08008D9C:
	cmp r5, #0
	beq _08008DAC
_08008DA0:
	strb r6, [r0]
	adds r0, r2, #0
	adds r0, #0x68
	strh r6, [r0]
	movs r1, #1
	str r1, [sp]
_08008DAC:
	adds r2, r3, #0
	cmp r2, #0
	bne _08008D68
_08008DB2:
	movs r1, #0
	ldr r2, _08008E14 @ => 0x03003DF0
	mov sl, r2
_08008DB8:
	ldr r2, _08008E18 @ => 0x03003FD0
	ldr r0, [r2]
	lsls r5, r1, #2
	adds r0, r0, r5
	ldr r2, _08008E1C @ => 0x00000785
	adds r0, r0, r2
	ldrb r6, [r0]
	adds r0, r1, #1
	mov sb, r0
	cmp r6, #0
	beq _08008E5E
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r0, sl
	adds r0, #0x34
	bl FUN_08029724
	cmp r0, #0
	beq _08008E5E
	ldr r1, _08008E18 @ => 0x03003FD0
	ldr r0, [r1]
	adds r0, r0, r5
	ldr r2, _08008E20 @ => 0x00000784
	adds r0, r0, r2
	ldrb r2, [r0]
	mov r8, r2
	adds r0, r2, r6
	cmp r2, r0
	bhs _08008E5E
	adds r7, r1, #0
	movs r0, #0
	mov ip, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r3, r0, #2
_08008DFE:
	ldr r0, [r7]
	adds r0, r0, r3
	ldrb r1, [r0, #6]
	movs r5, #0
	cmp r4, #2
	beq _08008E30
	cmp r4, #2
	bhi _08008E24
	cmp r4, #1
	beq _08008E2A
	b _08008E3C
	.align 2, 0
_08008E14: .4byte gUnk_03003DF0
_08008E18: .4byte gUnk_03003FD0
_08008E1C: .4byte 0x00000785
_08008E20: .4byte 0x00000784
_08008E24:
	cmp r4, #3
	beq _08008E36
	b _08008E3C
_08008E2A:
	cmp r1, #2
	bne _08008E3C
	b _08008E40
_08008E30:
	cmp r1, #1
	bne _08008E3C
	b _08008E40
_08008E36:
	cmp r1, #3
	bne _08008E3C
	movs r5, #1
_08008E3C:
	cmp r5, #0
	beq _08008E52
_08008E40:
	ldr r0, [r7]
	adds r0, r0, r3
	mov r1, ip
	strb r1, [r0, #6]
	ldr r0, [r7]
	adds r0, r0, r3
	strb r1, [r0, #7]
	movs r0, #1
	str r0, [sp]
_08008E52:
	adds r3, #0xc
	adds r2, #1
	mov r1, r8
	adds r0, r1, r6
	cmp r2, r0
	blo _08008DFE
_08008E5E:
	mov r1, sb
	cmp r1, #0x30
	bls _08008DB8
	ldr r0, [sp]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08008E78
FUN_08008E78: @ 0x08008E78
	push {lr}
	ldrh r0, [r0, #0xa]
	cmp r0, #1
	beq _08008EA4
	cmp r0, #1
	bgt _08008E8A
	cmp r0, #0
	beq _08008E90
	b _08008EDC
_08008E8A:
	cmp r0, #2
	beq _08008EB8
	b _08008EDC
_08008E90:
	ldr r1, _08008EA0 @ => 0x03005C60
	movs r0, #0xfe
	lsls r0, r0, #3
	strh r0, [r1]
	movs r0, #0xb5
	movs r1, #0xe3
	b _08008EC2
	.align 2, 0
_08008EA0: .4byte gChoiceIDs
_08008EA4:
	ldr r1, _08008EB0 @ => 0x03005C60
	ldr r0, _08008EB4 @ => 0x000007F1
	strh r0, [r1]
	movs r0, #0xb5
	movs r1, #0xe4
	b _08008EC2
	.align 2, 0
_08008EB0: .4byte gChoiceIDs
_08008EB4: .4byte 0x000007F1
_08008EB8:
	ldr r1, _08008ED0 @ => 0x03005C60
	ldr r0, _08008ED4 @ => 0x000007EF
	strh r0, [r1]
	movs r0, #0xb5
	movs r1, #0xe5
_08008EC2:
	movs r2, #0xf
	movs r3, #0
	bl FUN_0802D5E8
	ldr r1, _08008ED8 @ => 0x03005C90
	str r0, [r1, #8]
	b _08008EE2
	.align 2, 0
_08008ED0: .4byte gChoiceIDs
_08008ED4: .4byte 0x000007EF
_08008ED8: .4byte gUnk_03005C90
_08008EDC:
	ldr r1, _08008EEC @ => 0x03005C60
	ldr r0, _08008EF0 @ => 0x000007EE
	strh r0, [r1]
_08008EE2:
	bl FUN_08041BF0
	pop {r0}
	bx r0
	.align 2, 0
_08008EEC: .4byte gChoiceIDs
_08008EF0: .4byte 0x000007EE

	thumb_func_start FUN_08008EF4
FUN_08008EF4: @ 0x08008EF4
	push {r4, r5, lr}
	ldr r4, _08008F38 @ => 0x03001834
	movs r0, #0xfa
	lsls r0, r0, #4
	bl FUN_0802C9DC
	str r0, [r4]
	movs r3, #0
	movs r2, #0
_08008F06:
	ldr r0, [r4]
	adds r0, r2, r0
	adds r1, r0, #0
	adds r1, #8
	str r1, [r0, #4]
	adds r2, #0x28
	adds r3, #1
	cmp r3, #0x63
	bls _08008F06
	ldr r5, _08008F3C @ => 0x03001838
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r4, #0
	bl FUN_0802C9DC
	str r0, [r5]
	ldr r5, _08008F40 @ => 0x0300183C
	adds r0, r4, #0
	bl FUN_0802C9DC
	str r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08008F38: .4byte gUnk_03001834
_08008F3C: .4byte gUnk_03001838
_08008F40: .4byte gUnk_0300183C

	thumb_func_start FUN_08008F44
FUN_08008F44: @ 0x08008F44
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_08008FB0
	adds r2, r0, #0
	cmp r2, #0
	bne _08008F62
	movs r0, #0
	bl FUN_08008FB0
	adds r2, r0, #0
	cmp r2, #0
	bne _08008F62
	movs r0, #0
	b _08008F70
_08008F62:
	stm r2!, {r4}
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [r4, #0xc]
	adds r0, r2, #0
_08008F70:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08008F78
FUN_08008F78: @ 0x08008F78
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_08008FB0
	movs r1, #0
	str r1, [r0]
	ldr r0, [r4, #0xc]
	ldr r1, _08008F94 @ => 0xFBFFFFFF
	ands r0, r1
	str r0, [r4, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08008F94: .4byte 0xFBFFFFFF

	thumb_func_start FUN_08008F98
FUN_08008F98: @ 0x08008F98
	ldr r0, _08008FA0 @ => 0x03001838
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08008FA0: .4byte gUnk_03001838

	thumb_func_start FUN_08008FA4
FUN_08008FA4: @ 0x08008FA4
	ldr r0, _08008FAC @ => 0x0300183C
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08008FAC: .4byte gUnk_0300183C

	thumb_func_start FUN_08008FB0
FUN_08008FB0: @ 0x08008FB0
	push {lr}
	adds r3, r0, #0
	movs r2, #0
	ldr r0, _08008FC4 @ => 0x03001834
	ldr r1, [r0]
_08008FBA:
	ldr r0, [r1]
	cmp r0, r3
	bne _08008FC8
	adds r0, r1, #0
	b _08008FD2
	.align 2, 0
_08008FC4: .4byte gUnk_03001834
_08008FC8:
	adds r1, #0x28
	adds r2, #1
	cmp r2, #0x63
	bls _08008FBA
	movs r0, #0
_08008FD2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08008FD8
FUN_08008FD8: @ 0x08008FD8
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08009B04
	adds r7, r0, #0
	ldr r0, [r7]
	bl FUN_080012D8
	adds r6, r0, #0
	cmp r6, #0
	bne _08008FF6
	b _0800916E
_08008FF6:
	movs r0, #4
	ldrsh r1, [r7, r0]
	lsls r1, r1, #0x10
	movs r3, #6
	ldrsh r2, [r7, r3]
	lsls r2, r2, #0x10
	adds r0, r6, #0
	bl FUN_08001728
	ldrb r0, [r7, #8]
	movs r5, #0xb2
	lsls r5, r5, #1
	adds r4, r6, r5
	movs r5, #0
	strh r0, [r4]
	ldrb r0, [r7, #9]
	strb r0, [r6, #0x12]
	ldr r0, _080090A0 @ => 0x09FB613C
	ldrh r1, [r4]
	lsls r1, r1, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r2, _080090A4 @ => 0x0805A270
	ldrb r0, [r6, #0x12]
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r1]
	adds r1, r1, r0
	adds r0, r6, #0
	bl FUN_080015B8
	ldr r0, _080090A8 @ => 0x0000011D
	adds r1, r6, r0
	movs r0, #7
	strb r0, [r1]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r6, r1
	strb r5, [r0]
	ldr r0, _080090AC @ => FUN_08009180
	str r0, [r6, #0x50]
	adds r5, r6, #0
	adds r5, #0x94
	ldr r0, _080090B0 @ => FUN_080093F8
	str r0, [r5]
	adds r1, r6, #0
	adds r1, #0x7a
	movs r0, #0x78
	strb r0, [r1]
	adds r3, r6, #0
	adds r3, #0xa5
	ldrb r2, [r3]
	movs r1, #0xd
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r0, r2
	strb r0, [r3]
	adds r2, r6, #0
	adds r2, #0xa9
	ldrb r0, [r2]
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	strb r1, [r2]
	movs r0, #0
	movs r1, #7
	bl FUN_080424F8
	adds r1, r0, #0
	adds r0, r6, #0
	bl FUN_08009430
	movs r2, #0x80
	lsls r2, r2, #0xa
	str r2, [r6, #0x14]
	ldrh r0, [r4]
	cmp r0, #0
	beq _080090B4
	cmp r0, #1
	beq _0800910C
	b _08009168
	.align 2, 0
_080090A0: .4byte ROMREF_09FB613C
_080090A4: .4byte ROMREF_0805A270
_080090A8: .4byte 0x0000011D
_080090AC: .4byte FUN_08009180
_080090B0: .4byte FUN_080093F8
_080090B4:
	adds r1, r6, #0
	adds r1, #0x44
	ldr r0, _080090F4 @ => 0x0805A254
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	str r2, [r6, #0x14]
	ldr r1, _080090F8 @ => 0x80000011
	adds r0, r6, #0
	bl FUN_08002038
	ldr r1, _080090FC @ => 0x0808DD9C
	adds r0, r6, #0
	bl FUN_08048E24
	adds r1, r0, #0
	adds r0, r6, #0
	bl FUN_0803EF14
	ldr r0, _08009100 @ => 0x0805A260
	ldr r1, _08009104 @ => 0x0805A268
	ldr r2, _08009108 @ => 0x03003DF0
	movs r3, #6
	bl FUN_08014408
	cmp r0, #0
	bne _08009168
	adds r0, r6, #0
	movs r1, #1
	bl FUN_08002040
	b _08009168
	.align 2, 0
_080090F4: .4byte ROMREF_0805A254
_080090F8: .4byte 0x80000011
_080090FC: .4byte ROMREF_0808DD9C
_08009100: .4byte ROMREF_0805A260
_08009104: .4byte ROMREF_0805A268
_08009108: .4byte gUnk_03003DF0
_0800910C:
	ldr r1, _08009178 @ => 0x80050651
	adds r0, r6, #0
	bl FUN_08002038
	ldr r1, _0800917C @ => 0x0808DD88
	adds r0, r6, #0
	bl FUN_0803EEE8
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #2
	strb r0, [r1]
	adds r0, r6, #0
	movs r1, #8
	bl FUN_08001FB0
	adds r0, r6, #0
	movs r1, #7
	bl FUN_08001F84
	movs r1, #0x93
	lsls r1, r1, #1
	adds r0, r6, r1
	movs r2, #0x5a
	strh r2, [r0]
	movs r3, #0x9c
	lsls r3, r3, #1
	adds r1, r6, r3
	movs r0, #0x3c
	strh r0, [r1]
	movs r4, #0x9d
	lsls r4, r4, #1
	adds r0, r6, r4
	strh r2, [r0]
	movs r0, #0x9b
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #0x32
	strh r0, [r1]
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r6, r1
	strh r2, [r0]
	movs r0, #0
	str r0, [r5]
_08009168:
	adds r0, r6, #0
	bl FUN_0803977C
_0800916E:
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08009178: .4byte 0x80050651
_0800917C: .4byte ROMREF_0808DD88

	thumb_func_start FUN_08009180
FUN_08009180: @ 0x08009180
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _08009198
	adds r0, r4, #0
	bl FUN_080040DC
	b _080091F6
_08009198:
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080091AA
	cmp r0, #1
	beq _080091DA
	b _080091F6
_080091AA:
	ldr r0, _080091C4 @ => 0x0805A260
	ldr r1, _080091C8 @ => 0x0805A268
	ldr r2, _080091CC @ => 0x03003DF0
	movs r3, #6
	bl FUN_08014408
	cmp r0, #0
	beq _080091D0
	adds r0, r4, #0
	bl FUN_080092D8
	b _080091F6
	.align 2, 0
_080091C4: .4byte ROMREF_0805A260
_080091C8: .4byte ROMREF_0805A268
_080091CC: .4byte gUnk_03003DF0
_080091D0:
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08002040
	b _080091F6
_080091DA:
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	ldrb r0, [r4, #0x10]
	ldrb r1, [r4, #0x11]
	bl FUN_08009B04
	ldrb r2, [r0, #0xa]
	ldrb r1, [r0, #0xb]
	adds r0, r2, #0
	bl FUN_080099A8
	b _080092CA
_080091F6:
	ldrb r6, [r4, #0x12]
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r5, r4, r0
	ldrb r1, [r5]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08009216
	adds r0, r4, #0
	adds r0, #0x28
	ldr r1, [r4, #0xc]
	ldr r3, [r4, #0x14]
	adds r2, r6, #0
	bl FUN_08001030
_08009216:
	ldrb r1, [r5]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08009242
	ldr r1, _08009284 @ => 0x09FB613C
	movs r2, #0xb2
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrh r2, [r0]
	lsls r2, r2, #3
	adds r1, #4
	adds r2, r2, r1
	ldr r0, _08009288 @ => 0x0805A270
	adds r0, r6, r0
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r2]
	adds r1, r1, r0
	adds r0, r4, #0
	bl FUN_080015B8
_08009242:
	ldrb r1, [r5]
	movs r0, #0x12
	ands r0, r1
	cmp r0, #0
	beq _080092C0
	ldr r1, _0800928C @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #9
	beq _0800925A
	cmp r0, #3
	bne _08009290
_0800925A:
	ldr r2, _08009284 @ => 0x09FB613C
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldr r0, _08009288 @ => 0x0805A270
	adds r0, r6, r0
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r1]
	adds r1, r1, r0
	adds r0, r4, #0
	bl FUN_080015B8
	adds r0, r4, #0
	bl FUN_08001824
	b _080092B8
	.align 2, 0
_08009284: .4byte ROMREF_09FB613C
_08009288: .4byte ROMREF_0805A270
_0800928C: .4byte 0x0000011D
_08009290:
	ldr r1, _080092D0 @ => 0x09FB613C
	movs r2, #0xb2
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrh r2, [r0]
	lsls r2, r2, #3
	adds r1, #4
	adds r2, r2, r1
	ldr r0, _080092D4 @ => 0x0805A270
	adds r0, r6, r0
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [r2]
	adds r1, r1, r0
	adds r0, r4, #0
	bl FUN_080015B8
	adds r0, r4, #0
	bl FUN_08001848
_080092B8:
	adds r0, r4, #0
	movs r1, #4
	bl FUN_080017D4
_080092C0:
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0
	strb r0, [r1]
_080092CA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080092D0: .4byte ROMREF_09FB613C
_080092D4: .4byte ROMREF_0805A270

	thumb_func_start FUN_080092D8
FUN_080092D8: @ 0x080092D8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _080092F4 @ => 0x0000011D
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #7
	beq _080092FE
	cmp r0, #7
	bgt _080092F8
	cmp r0, #2
	beq _080093CC
	b _080093EE
	.align 2, 0
_080092F4: .4byte 0x0000011D
_080092F8:
	cmp r0, #9
	beq _08009346
	b _080093EE
_080092FE:
	movs r0, #0x90
	lsls r0, r0, #1
	adds r4, r5, r0
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	ldr r1, _08009338 @ => 0xFFFF0000
	cmp r0, r1
	bne _080093EE
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldr r2, _0800933C @ => 0x03004200
	ldr r2, [r2]
	ldr r3, [r2, #0x1c]
	ldr r2, [r2, #0x18]
	bl FUN_0802C538
	lsrs r0, r0, #0x10
	cmp r0, #0x31
	bgt _08009340
	adds r0, r5, #0
	movs r1, #9
	bl FUN_08001F84
	movs r0, #0x3c
	strh r0, [r4]
	b _080093EE
	.align 2, 0
_08009338: .4byte 0xFFFF0000
_0800933C: .4byte gUnk_03004200
_08009340:
	movs r0, #0x14
	strh r0, [r4]
	b _080093EE
_08009346:
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, #0x38]
	ldr r3, [r5, #0x3c]
	ldr r4, [r5, #0x14]
	str r4, [sp]
	bl FUN_08001D30
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r5, #0x12]
	cmp r0, r1
	beq _0800939E
	cmp r0, #8
	bne _0800938C
	adds r0, r5, #0
	movs r1, #7
	bl FUN_08001F84
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08009388 @ => 0x03004200
	ldr r1, [r0]
	adds r0, r5, #0
	bl FUN_08001CB8
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	b _080093C0
	.align 2, 0
_08009388: .4byte gUnk_03004200
_0800938C:
	strb r0, [r5, #0x12]
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r2, r5, r1
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
	b _080093EE
_0800939E:
	movs r0, #0x90
	lsls r0, r0, #1
	adds r2, r5, r0
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080093C8 @ => 0xFFFF0000
	cmp r0, r1
	bne _080093EE
	movs r0, #0x3c
	strh r0, [r2]
	movs r0, #0
	movs r1, #7
	bl FUN_080424F8
	adds r1, r0, #0
_080093C0:
	adds r0, r5, #0
	bl FUN_08009430
	b _080093EE
	.align 2, 0
_080093C8: .4byte 0xFFFF0000
_080093CC:
	adds r0, r5, #0
	movs r1, #7
	bl FUN_08001F84
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0x14
	strh r0, [r1]
	movs r0, #0
	movs r1, #7
	bl FUN_080424F8
	adds r1, r0, #0
	adds r0, r5, #0
	bl FUN_08009430
_080093EE:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080093F8
FUN_080093F8: @ 0x080093F8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, #0x7a
	ldrb r0, [r0]
	lsls r6, r0, #0x10
	ldr r0, [r5, #0x20]
	ldr r1, [r5, #0x24]
	ldr r2, [r4, #0x20]
	ldr r3, [r4, #0x24]
	bl FUN_0802C538
	adds r1, r0, #0
	ldrh r0, [r4, #8]
	cmp r0, #0
	bne _08009428
	adds r0, r6, #0
	adds r0, #0x14
	cmp r1, r0
	bhi _08009428
	adds r0, r5, #0
	movs r1, #9
	bl FUN_08001F84
_08009428:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08009430
FUN_08009430: @ 0x08009430
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	movs r0, #1
	movs r1, #0x19
	bl FUN_080424F8
	adds r5, r0, #0
	movs r0, #1
	movs r1, #0x19
	bl FUN_080424F8
	adds r2, r0, #0
	cmp r6, #1
	bhi _08009456
	lsls r1, r5, #0x10
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	b _08009484
_08009456:
	cmp r6, #3
	bhi _0800946A
	lsls r1, r5, #0x10
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	lsls r1, r2, #0x10
	ldr r0, [r4, #0x1c]
	subs r0, r0, r1
	b _0800948C
_0800946A:
	cmp r6, #5
	bhi _0800947E
	lsls r1, r5, #0x10
	ldr r0, [r4, #0x18]
	subs r0, r0, r1
	str r0, [r4, #0x38]
	lsls r1, r2, #0x10
	ldr r0, [r4, #0x1c]
	subs r0, r0, r1
	b _0800948C
_0800947E:
	lsls r1, r5, #0x10
	ldr r0, [r4, #0x18]
	subs r0, r0, r1
_08009484:
	str r0, [r4, #0x38]
	lsls r1, r2, #0x10
	ldr r0, [r4, #0x1c]
	adds r0, r0, r1
_0800948C:
	str r0, [r4, #0x3c]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start FUN_08009494
FUN_08009494: @ 0x08009494
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	lsls r1, r1, #8
	orrs r1, r2
	ldrb r2, [r0, #2]
	lsls r2, r2, #0x10
	orrs r2, r1
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	orrs r0, r2
	ldr r0, [r0, #4]
	ldrh r0, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start FUN_080094B0
FUN_080094B0: @ 0x080094B0
	ldr r2, [r0, #4]
	ldrb r0, [r2]
	str r0, [r1]
	ldrb r0, [r2, #1]
	str r0, [r1, #4]
	bx lr

	thumb_func_start FUN_080094BC
FUN_080094BC: @ 0x080094BC
	lsls r2, r2, #0x18
	ldr r3, [r0, #4]
	lsrs r2, r2, #0x17
	adds r0, r3, #0
	adds r0, #0xc
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r0, #0xc
	adds r3, r3, r0
	ldrb r0, [r3, #2]
	str r0, [r1]
	ldrb r0, [r3, #3]
	str r0, [r1, #4]
	bx lr

	thumb_func_start FUN_080094D8
FUN_080094D8: @ 0x080094D8
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	lsls r1, r1, #8
	orrs r1, r2
	ldrb r2, [r0, #2]
	lsls r2, r2, #0x10
	orrs r2, r1
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	orrs r0, r2
	ldr r0, [r0, #4]
	ldrh r0, [r0, #6]
	bx lr
	.align 2, 0

	thumb_func_start FUN_080094F4
FUN_080094F4: @ 0x080094F4
	ldrb r1, [r0]
	movs r0, #0x1f
	ands r0, r1
	bx lr

	thumb_func_start FUN_080094FC
FUN_080094FC: @ 0x080094FC
	push {r4, lr}
	ldr r4, _08009524 @ => 0x0805A2A8
	lsls r3, r1, #1
	adds r3, r3, r1
	lsls r3, r3, #2
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r3, r3, r1
	adds r0, r3, r4
	ldr r0, [r0]
	str r0, [r2]
	adds r4, #4
	adds r3, r3, r4
	ldr r0, [r3]
	str r0, [r2, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08009524: .4byte ROMREF_0805A2A8

	thumb_func_start FUN_08009528
FUN_08009528: @ 0x08009528
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	lsls r6, r1, #0x18
	lsrs r6, r6, #0x18
	ldr r5, _0800957C @ => 0x030031A0
	movs r4, #0x80
	lsls r4, r4, #6
	adds r0, r4, #0
	bl FUN_0802C95C
	str r0, [r5]
	movs r1, #0
	adds r2, r4, #0
	bl FUN_0802CB40
	mov r5, r8
	ldrh r0, [r5]
	adds r4, r5, r0
	ldrh r0, [r4, #0x1c]
	adds r0, r0, r5
	mov r8, r0
	ldrh r0, [r4, #0x24]
	adds r7, r5, r0
	bl FUN_08021320
	adds r1, r6, #0
	mov r2, sp
	bl FUN_0801E0E8
	cmp r0, #1
	bne _08009580
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r4, r0
	ldrh r0, [r0, #0x1c]
	adds r6, r5, r0
	b _08009582
	.align 2, 0
_0800957C: .4byte gUnk_030031A0
_08009580:
	movs r6, #0
_08009582:
	ldr r4, _080095D4 @ => 0x030031A0
	ldr r3, [r4]
	adds r0, r5, #0
	adds r1, r3, #0
	bl FUN_08009CE8
	adds r3, r0, #0
	ldr r0, _080095D8 @ => 0x03003190
	str r3, [r0]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	bl FUN_0800966C
	adds r3, r0, #0
	ldr r0, _080095DC @ => 0x03003194
	str r3, [r0]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	bl FUN_080097D0
	adds r3, r0, #0
	ldr r0, _080095E0 @ => 0x0300319C
	str r3, [r0]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	bl FUN_080098B8
	adds r3, r0, #0
	ldr r0, [r4]
	subs r1, r3, r0
	bl FUN_0802CAA8
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080095D4: .4byte gUnk_030031A0
_080095D8: .4byte gUnk_03003190
_080095DC: .4byte gUnk_03003194
_080095E0: .4byte gUnk_0300319C

	thumb_func_start FUN_080095E4
FUN_080095E4: @ 0x080095E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, _08009660 @ => 0x03003190
	ldr r2, [r0]
	lsls r1, r7, #1
	adds r0, r2, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r6, r2, r0
	ldrb r0, [r6]
	mov r8, r0
	movs r5, #0
	cmp r5, r8
	bhs _08009656
_08009606:
	lsls r0, r5, #1
	adds r1, r6, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r4, r6, r0
	ldr r0, [r4]
	cmp r0, #0
	bne _0800964C
	ldrh r0, [r4, #8]
	ldr r1, _08009664 @ => 0x0805A338
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl _call_via_r2
	str r0, [r4]
	cmp r0, #0
	beq _0800964C
	strb r7, [r0, #0x10]
	ldr r0, [r4]
	strb r5, [r0, #0x11]
	ldr r1, [r4]
	ldr r0, [r1, #0x64]
	cmp r0, #0
	bne _08009640
	ldr r0, _08009668 @ => FUN_08001EBC
	str r0, [r1, #0x64]
_08009640:
	ldr r0, [r4]
	ldr r1, [r0, #0xc]
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r1, r2
	str r1, [r0, #0xc]
_0800964C:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r8
	blo _08009606
_08009656:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009660: .4byte gUnk_03003190
_08009664: .4byte ROMREF_0805A338
_08009668: .4byte FUN_08001EBC

	thumb_func_start FUN_0800966C
FUN_0800966C: @ 0x0800966C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r4, r1, #0
	mov sl, r2
	adds r5, r3, #0
	ldrb r0, [r4, #8]
	mov r8, r0
	cmp r2, #0
	beq _080096A0
	ldrb r1, [r2, #8]
	mov sb, r1
	ldr r1, _08009698 @ => 0x0300318C
	movs r0, #1
	strh r0, [r1]
	ldr r1, _0800969C @ => 0x03003184
	mov r0, r8
	adds r0, #1
	b _080096AE
	.align 2, 0
_08009698: .4byte gUnk_0300318C
_0800969C: .4byte gUnk_03003184
_080096A0:
	movs r0, #0
	mov sb, r0
	ldr r0, _08009744 @ => 0x0300318C
	mov r1, sb
	strh r1, [r0]
	ldr r1, _08009748 @ => 0x03003184
	movs r0, #0xff
_080096AE:
	strb r0, [r1]
	adds r7, r5, #0
	mov r0, sb
	adds r0, #1
	add r0, r8
	strh r0, [r5]
	adds r0, #1
	bl FUN_08009DD4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	strh r0, [r5, #2]
	adds r6, #8
	adds r5, r5, r0
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0
	bl FUN_0800974C
	adds r5, r0, #0
	adds r6, r4, #0
	adds r6, #8
	movs r3, #0
	cmp r3, r8
	bhs _08009700
_080096E0:
	subs r2, r5, r7
	adds r4, r3, #1
	lsls r1, r4, #1
	adds r0, r7, #2
	adds r0, r0, r1
	strh r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r3, #0
	bl FUN_0800974C
	adds r5, r0, #0
	lsls r4, r4, #0x18
	lsrs r3, r4, #0x18
	cmp r3, r8
	blo _080096E0
_08009700:
	mov r0, sl
	cmp r0, #0
	beq _08009734
	mov r6, sl
	adds r6, #8
	movs r3, #0
	cmp r3, sb
	bhs _08009734
_08009710:
	subs r2, r5, r7
	adds r4, r3, #1
	mov r0, r8
	adds r1, r0, r4
	lsls r1, r1, #1
	adds r0, r7, #2
	adds r0, r0, r1
	strh r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r3, #0
	bl FUN_0800974C
	adds r5, r0, #0
	lsls r4, r4, #0x18
	lsrs r3, r4, #0x18
	cmp r3, sb
	blo _08009710
_08009734:
	adds r0, r5, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08009744: .4byte gUnk_0300318C
_08009748: .4byte gUnk_03003184

	thumb_func_start FUN_0800974C
FUN_0800974C: @ 0x0800974C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x17
	adds r1, r0, #2
	adds r1, r1, r2
	ldrh r4, [r1]
	adds r7, r0, r4
	mov sl, r7
	mov sb, r6
	ldrb r0, [r7]
	mov r8, r0
	strh r0, [r6]
	adds r0, #2
	bl FUN_08009DF4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r7, r7, r4
	mov r0, r8
	adds r0, #1
	bl FUN_08009DD4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r5, #0
	cmp r5, r8
	bhs _080097BC
_0800978C:
	adds r6, r6, r4
	lsls r1, r5, #1
	mov r0, sb
	adds r0, #2
	adds r0, r0, r1
	mov r2, sb
	subs r1, r6, r2
	strh r1, [r0]
	mov r0, sl
	adds r0, #2
	adds r0, r0, r5
	ldrb r4, [r0]
	adds r2, r4, #0
	adds r0, r7, #0
	adds r1, r6, #0
	bl FUN_08009D24
	adds r7, r7, r4
	adds r4, #8
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r8
	blo _0800978C
_080097BC:
	adds r6, r6, r4
	adds r0, r6, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_080097D0
FUN_080097D0: @ 0x080097D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r2, [sp]
	adds r6, r3, #0
	ldrh r2, [r0]
	adds r0, r0, r2
	str r0, [sp, #4]
	ldrb r0, [r0]
	mov sb, r0
	ldrh r0, [r1]
	adds r1, r1, r0
	str r1, [sp, #8]
	ldrb r1, [r1]
	mov sl, r1
	ldr r0, [sp]
	cmp r0, #0
	beq _08009806
	ldrh r0, [r0]
	ldr r1, [sp]
	adds r1, r1, r0
	mov r8, r1
	ldrb r0, [r1]
	b _0800980A
_08009806:
	movs r0, #0
	mov r8, r0
_0800980A:
	adds r7, r6, #0
	mov r4, sb
	add r4, sl
	adds r0, r4, r0
	strh r0, [r6]
	adds r0, #1
	bl FUN_08009DD4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r6, r6, r0
	movs r5, #0
	cmp r5, sb
	bhs _08009846
_08009826:
	subs r2, r6, r7
	lsls r1, r5, #1
	adds r0, r7, #2
	adds r0, r0, r1
	strh r2, [r0]
	ldr r0, [sp, #4]
	adds r1, r6, #0
	adds r2, r5, #0
	bl FUN_08009D4C
	adds r6, r0, #0
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, sb
	blo _08009826
_08009846:
	movs r5, #0
	cmp r5, sl
	bhs _08009870
_0800984C:
	subs r2, r6, r7
	mov r0, sb
	adds r1, r0, r5
	lsls r1, r1, #1
	adds r0, r7, #2
	adds r0, r0, r1
	strh r2, [r0]
	ldr r0, [sp, #8]
	adds r1, r6, #0
	adds r2, r5, #0
	bl FUN_08009D4C
	adds r6, r0, #0
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, sl
	blo _0800984C
_08009870:
	ldr r1, [sp]
	cmp r1, #0
	beq _080098A6
	movs r5, #0
	mov r0, r8
	ldrh r0, [r0]
	cmp r5, r0
	bhs _080098A6
_08009880:
	subs r2, r6, r7
	adds r1, r4, r5
	lsls r1, r1, #1
	adds r0, r7, #2
	adds r0, r0, r1
	strh r2, [r0]
	mov r0, r8
	adds r1, r6, #0
	adds r2, r5, #0
	bl FUN_08009D4C
	adds r6, r0, #0
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	mov r1, r8
	ldrh r1, [r1]
	cmp r5, r1
	blo _08009880
_080098A6:
	adds r0, r6, #0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_080098B8
FUN_080098B8: @ 0x080098B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r4, r1, #0
	mov sb, r2
	adds r5, r3, #0
	ldrh r0, [r4, #2]
	adds r0, r4, r0
	ldrb r0, [r0]
	mov r8, r0
	cmp r2, #0
	beq _080098EC
	ldrh r0, [r2, #2]
	add r0, sb
	ldrb r0, [r0]
	mov sl, r0
	ldr r1, _080098E8 @ => 0x03003198
	mov r0, r8
	adds r0, #1
	b _080098F4
	.align 2, 0
_080098E8: .4byte gUnk_03003198
_080098EC:
	movs r0, #0
	mov sl, r0
	ldr r1, _0800998C @ => 0x03003198
	movs r0, #0xff
_080098F4:
	strb r0, [r1]
	adds r7, r5, #0
	mov r0, sl
	adds r0, #1
	add r0, r8
	strh r0, [r5]
	adds r0, #1
	bl FUN_08009DD4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r5, r0
	strh r0, [r7, #2]
	ldrh r0, [r6, #2]
	adds r6, r6, r0
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0
	bl FUN_08009D90
	adds r5, r0, #0
	ldrh r0, [r4, #2]
	adds r6, r4, r0
	movs r3, #0
	cmp r3, r8
	bhs _08009948
_08009928:
	subs r2, r5, r7
	adds r4, r3, #1
	lsls r1, r4, #1
	adds r0, r7, #2
	adds r0, r0, r1
	strh r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r3, #0
	bl FUN_08009D90
	adds r5, r0, #0
	lsls r4, r4, #0x18
	lsrs r3, r4, #0x18
	cmp r3, r8
	blo _08009928
_08009948:
	mov r1, sb
	cmp r1, #0
	beq _0800997C
	ldrh r0, [r1, #2]
	adds r6, r1, r0
	movs r3, #0
	cmp r3, sl
	bhs _0800997C
_08009958:
	subs r2, r5, r7
	adds r4, r3, #1
	mov r0, r8
	adds r1, r0, r4
	lsls r1, r1, #1
	adds r0, r7, #2
	adds r0, r0, r1
	strh r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r3, #0
	bl FUN_08009D90
	adds r5, r0, #0
	lsls r4, r4, #0x18
	lsrs r3, r4, #0x18
	cmp r3, sl
	blo _08009958
_0800997C:
	adds r0, r5, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800998C: .4byte gUnk_03003198

	thumb_func_start FUN_08009990
FUN_08009990: @ 0x08009990
	bx lr
	.align 2, 0

	thumb_func_start FUN_08009994
FUN_08009994: @ 0x08009994
	push {lr}
	ldr r0, _080099A4 @ => 0x030031A0
	ldr r0, [r0]
	bl FUN_0802CA80
	pop {r0}
	bx r0
	.align 2, 0
_080099A4: .4byte gUnk_030031A0

	thumb_func_start FUN_080099A8
FUN_080099A8: @ 0x080099A8
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	adds r0, r4, #0
	bl FUN_08009A30
	cmp r0, #0
	bne _080099C2
	adds r0, r4, #0
	bl FUN_080095E4
_080099C2:
	adds r0, r5, #0
	bl FUN_08009A64
	cmp r0, #0
	bne _080099D2
	adds r0, r5, #0
	bl FUN_080099D8
_080099D2:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_080099D8
FUN_080099D8: @ 0x080099D8
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08009A00 @ => 0x03003188
	strb r0, [r1]
	ldr r1, _08009A04 @ => 0x0300319C
	ldr r2, [r1]
	lsls r0, r0, #1
	adds r1, r2, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r5, r2, r0
	ldr r6, _08009A08 @ => 0x0805F9E4
	ldr r7, _08009A0C @ => 0x0805B270
_080099F4:
	adds r4, r5, #0
	ldr r0, [r4]
	cmp r0, #0
	bne _08009A10
	ldrb r0, [r6]
	b _08009A22
	.align 2, 0
_08009A00: .4byte gUnk_03003188
_08009A04: .4byte gUnk_0300319C
_08009A08: .4byte ROMREF_0805F9E4
_08009A0C: .4byte ROMREF_0805B270
_08009A10:
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r0, [r4]
	adds r0, r0, r6
	ldrb r0, [r0]
_08009A22:
	adds r5, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	bne _080099F4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_08009A30
FUN_08009A30: @ 0x08009A30
	push {lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _08009A4E
	ldr r0, _08009A54 @ => 0x0300318C
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08009A5C
	ldr r0, _08009A58 @ => 0x03003184
	ldrb r0, [r0]
	cmp r2, r0
	bne _08009A5C
_08009A4E:
	movs r0, #1
	b _08009A5E
	.align 2, 0
_08009A54: .4byte gUnk_0300318C
_08009A58: .4byte gUnk_03003184
_08009A5C:
	movs r0, #0
_08009A5E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08009A64
FUN_08009A64: @ 0x08009A64
	push {lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _08009A82
	ldr r0, _08009A88 @ => 0x0300318C
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08009A90
	ldr r0, _08009A8C @ => 0x03003198
	ldrb r0, [r0]
	cmp r2, r0
	bne _08009A90
_08009A82:
	movs r0, #1
	b _08009A92
	.align 2, 0
_08009A88: .4byte gUnk_0300318C
_08009A8C: .4byte gUnk_03003198
_08009A90:
	movs r0, #0
_08009A92:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08009A98
FUN_08009A98: @ 0x08009A98
	lsls r0, r0, #0x18
	ldr r1, _08009AAC @ => 0x03003190
	ldr r2, [r1]
	lsrs r0, r0, #0x17
	adds r1, r2, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r2, r2, r0
	ldrh r0, [r2]
	bx lr
	.align 2, 0
_08009AAC: .4byte gUnk_03003190

	thumb_func_start FUN_08009AB0
FUN_08009AB0: @ 0x08009AB0
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r1, r5, #3
	ldr r0, _08009AE8 @ => 0x09FB614C
	adds r6, r1, r0
	movs r1, #0
	ldr r0, _08009AEC @ => 0x030031A0
	ldr r0, [r0]
	ldrh r2, [r0, #2]
	cmp r1, r2
	bhs _08009AFA
	adds r4, r0, #0
	adds r7, r2, #0
_08009AD2:
	lsls r3, r1, #3
	adds r2, r4, r3
	ldrb r0, [r2, #8]
	cmp r0, ip
	bne _08009AF0
	ldrb r0, [r2, #9]
	cmp r0, r5
	bne _08009AF0
	adds r0, r3, #4
	adds r6, r4, r0
	b _08009AFA
	.align 2, 0
_08009AE8: .4byte ROMREF_09FB614C
_08009AEC: .4byte gUnk_030031A0
_08009AF0:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r7
	blo _08009AD2
_08009AFA:
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08009B04
FUN_08009B04: @ 0x08009B04
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsls r1, r1, #0x18
	ldr r0, _08009B28 @ => 0x03003190
	ldr r0, [r0]
	lsrs r3, r3, #0x17
	adds r2, r0, #2
	adds r2, r2, r3
	ldrh r2, [r2]
	adds r0, r0, r2
	lsrs r1, r1, #0x17
	adds r2, r0, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	adds r0, r0, r1
	adds r0, #8
	bx lr
	.align 2, 0
_08009B28: .4byte gUnk_03003190

	thumb_func_start FUN_08009B2C
FUN_08009B2C: @ 0x08009B2C
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	ldrh r3, [r0]
	adds r0, r0, r3
	lsrs r1, r1, #0x17
	adds r3, r0, #2
	adds r3, r3, r1
	ldrh r1, [r3]
	adds r0, r0, r1
	lsrs r2, r2, #0x17
	adds r1, r0, #2
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r0, #8
	bx lr

	thumb_func_start FUN_08009B4C
FUN_08009B4C: @ 0x08009B4C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	cmp r2, #0
	bne _08009B78
	cmp r3, #0xfe
	bls _08009B78
	movs r0, #0xff
	subs r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08009B74 @ => 0x03004200
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	b _08009B90
	.align 2, 0
_08009B74: .4byte gUnk_03004200
_08009B78:
	ldr r0, _08009B98 @ => 0x03003190
	ldr r1, [r0]
	lsls r2, r2, #1
	adds r0, r1, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r1, r0
	lsls r2, r3, #1
	adds r0, r1, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r1, r0
_08009B90:
	ldr r0, [r1]
	pop {r1}
	bx r1
	.align 2, 0
_08009B98: .4byte gUnk_03003190

	thumb_func_start FUN_08009B9C
FUN_08009B9C: @ 0x08009B9C
	push {r4, lr}
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	ldr r3, _08009BC4 @ => 0x03003190
	ldr r4, [r3]
	lsrs r1, r1, #0x17
	adds r3, r4, #2
	adds r3, r3, r1
	ldrh r1, [r3]
	adds r4, r4, r1
	lsrs r2, r2, #0x17
	adds r1, r4, #2
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r4, r4, r1
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08009BC4: .4byte gUnk_03003190

	thumb_func_start FUN_08009BC8
FUN_08009BC8: @ 0x08009BC8
	lsls r0, r0, #0x18
	ldr r1, _08009BDC @ => 0x03003194
	ldr r2, [r1]
	lsrs r0, r0, #0x17
	adds r1, r2, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r2, r2, r0
	ldrb r0, [r2]
	bx lr
	.align 2, 0
_08009BDC: .4byte gUnk_03003194

	thumb_func_start FUN_08009BE0
FUN_08009BE0: @ 0x08009BE0
	push {r4, r5, r6, lr}
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	ldr r3, _08009C0C @ => 0x03003194
	ldr r4, [r3]
	lsrs r1, r1, #0x17
	adds r3, r4, #2
	adds r3, r3, r1
	ldrh r1, [r3]
	adds r4, r4, r1
	lsrs r2, r2, #0x15
	adds r2, #4
	adds r4, r4, r2
	movs r1, #0
	ldrsh r5, [r4, r1]
	movs r1, #2
	ldrsh r6, [r4, r1]
	str r5, [r0]
	str r6, [r0, #4]
	pop {r4, r5, r6}
	pop {r2}
	bx r2
	.align 2, 0
_08009C0C: .4byte gUnk_03003194

	thumb_func_start FUN_08009C10
FUN_08009C10: @ 0x08009C10
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	ldr r2, _08009C54 @ => 0x03003194
	ldr r3, [r2]
	lsrs r0, r0, #0x17
	adds r2, r3, #2
	adds r2, r2, r0
	ldrh r0, [r2]
	adds r3, r3, r0
	lsrs r1, r1, #0x15
	adds r1, #4
	adds r3, r3, r1
	ldrb r0, [r3, #4]
	cmp r0, #0
	beq _08009C86
	adds r1, r0, #0
	ldr r0, _08009C58 @ => 0x03003188
	strb r1, [r0]
	ldr r0, _08009C5C @ => 0x0300319C
	ldr r2, [r0]
	lsls r1, r1, #1
	adds r0, r2, #2
	adds r0, r0, r1
	ldrh r3, [r0]
	adds r5, r2, r3
	ldr r6, _08009C60 @ => 0x0805F9E4
	ldr r7, _08009C64 @ => 0x0805B270
_08009C48:
	adds r4, r5, #0
	ldr r0, [r4]
	cmp r0, #0
	bne _08009C68
	ldrb r3, [r6]
	b _08009C7A
	.align 2, 0
_08009C54: .4byte gUnk_03003194
_08009C58: .4byte gUnk_03003188
_08009C5C: .4byte gUnk_0300319C
_08009C60: .4byte ROMREF_0805F9E4
_08009C64: .4byte ROMREF_0805B270
_08009C68:
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r0, [r4]
	adds r0, r0, r6
	ldrb r3, [r0]
_08009C7A:
	adds r5, r5, r3
	ldr r0, [r4]
	cmp r0, #0
	bne _08009C48
	movs r0, #1
	b _08009C88
_08009C86:
	movs r0, #0
_08009C88:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_09009C90
FUN_09009C90: @ 0x08009C90
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	mov ip, r2
	adds r7, r3, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r3, #0
	cmp r4, #0
	bne _08009CA6
	ldr r0, _08009CE4 @ => 0x030031A0
	ldr r4, [r0]
_08009CA6:
	ldrh r0, [r4]
	adds r0, r4, r0
	lsls r2, r1, #1
	adds r1, r0, #2
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r5, r0, r1
	ldrh r6, [r5]
	movs r4, #0
	cmp r3, r6
	bhs _08009CDC
	adds r2, r5, #2
_08009CBE:
	ldrh r1, [r2]
	adds r0, r5, r1
	ldrh r1, [r0, #8]
	cmp r1, ip
	bne _08009CD4
	ldr r0, [sp, #0x14]
	cmp r3, r0
	bhs _08009CD2
	adds r0, r7, r3
	strb r4, [r0]
_08009CD2:
	adds r3, #1
_08009CD4:
	adds r2, #2
	adds r4, #1
	cmp r4, r6
	blo _08009CBE
_08009CDC:
	adds r0, r3, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08009CE4: .4byte gUnk_030031A0

	thumb_func_start FUN_08009CE8
FUN_08009CE8: @ 0x08009CE8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r5, #0
	ldrh r0, [r6, #2]
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	movs r3, #0
	cmp r0, #0
	beq _08009D16
_08009CFC:
	lsls r0, r3, #3
	adds r2, r4, r0
	adds r0, r6, r0
	ldr r1, [r0, #8]
	ldr r0, [r0, #4]
	str r0, [r2, #4]
	str r1, [r2, #8]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r4, #2]
	cmp r3, r0
	blo _08009CFC
_08009D16:
	ldrh r0, [r6]
	strh r0, [r4]
	adds r5, r5, r0
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_08009D24
FUN_08009D24: @ 0x08009D24
	push {r4, lr}
	adds r4, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r1, #8
	movs r3, #0
	cmp r3, r2
	bhs _08009D46
_08009D34:
	ldrb r0, [r4]
	strb r0, [r1]
	adds r4, #1
	adds r1, #1
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r2
	blo _08009D34
_08009D46:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_08009D4C
FUN_08009D4C: @ 0x08009D4C
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x17
	adds r1, r0, #2
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r4, r0, r1
	mov ip, r5
	ldrb r3, [r4]
	str r3, [r5]
	movs r2, #0
	cmp r2, r3
	bhs _08009D82
_08009D68:
	lsls r0, r2, #3
	mov r6, ip
	adds r1, r6, r0
	adds r0, r4, r0
	adds r1, #4
	adds r0, #4
	ldm r0!, {r6, r7}
	stm r1!, {r6, r7}
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r3
	blo _08009D68
_08009D82:
	lsls r1, r3, #3
	adds r0, r1, #4
	adds r5, r5, r0
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_08009D90
FUN_08009D90: @ 0x08009D90
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x17
	adds r1, r0, #2
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r2, r0, r1
	ldr r6, _08009DD0 @ => 0x0805F9E4
_08009DA2:
	adds r5, r2, #0
	ldr r0, [r5]
	adds r0, r0, r6
	ldrb r1, [r0]
	movs r3, #0
	cmp r3, r1
	bhs _08009DC2
_08009DB0:
	ldrb r0, [r2]
	strb r0, [r4]
	adds r2, #1
	adds r4, #1
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r1
	blo _08009DB0
_08009DC2:
	ldr r0, [r5]
	cmp r0, #0
	bne _08009DA2
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08009DD0: .4byte ROMREF_0805F9E4

	thumb_func_start FUN_08009DD4
FUN_08009DD4: @ 0x08009DD4
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08009DE8
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_08009DE8:
	lsls r0, r1, #0x11
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08009DF4
FUN_08009DF4: @ 0x08009DF4
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #3
	ands r0, r1
	cmp r0, #1
	bne _08009E06
	movs r0, #3
	b _08009E10
_08009E06:
	cmp r0, #2
	beq _08009E10
	cmp r0, #3
	bne _08009E10
	movs r0, #1
_08009E10:
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0

	arm_func_start FUN_08009E1C
FUN_08009E1C: @ 0x08009E1C
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x1c
	str r0, [sp, #0x18]
	mov r2, #0
	str r1, [sp, #0x14]
	sub r3, r0, #1
	cmp r2, r3
	bhs _0800A090
	str r3, [sp, #4]
_08009E40:
	ldr r0, [sp, #0x14]
	ldr r5, [r0, r2, lsl #2]
	mov r8, #0
	ldrb r3, [r5, #0x7b]
	add r2, r2, #1
	str r2, [sp]
	cmp r8, r3
	bhs _0800A080
_08009E60:
	add r3, r8, r8, lsl #1
	lsl r1, r3, #1
	add r2, r5, #0x80
	ldrsb r3, [r2, r1]
	cmp r3, #0
	beq _0800A06C
	add r3, r1, r5
	ldrh r1, [r3, #0x7c]
	ldrsh r2, [r3, #0x7e]
	ldrsh r0, [r5, #0x26]
	orr r2, r1, r2, lsl #16
	add r1, r0, r2, asr #24
	lsl r2, r2, #8
	str r1, [sp, #0xc]
	add r0, r0, r2, asr #24
	str r0, [sp, #0x10]
	ldrb r3, [r5, #0xa7]
	lsl r2, r2, #8
	ldrsh r0, [r5, #0x22]
	tst r3, #0x10
	subne sb, r0, r2, asr #24
	lslne r2, r2, #8
	subne sl, r0, r2, asr #24
	addeq sl, r0, r2, asr #24
	lsleq r2, r2, #8
	addeq sb, r0, r2, asr #24
	ldr r3, [sp]
	ldr r1, [r5, #0xc]
	ldr r0, [sp, #0x18]
	and r7, r3, #0xff
	cmp r7, r0
	bhs _0800A064
_08009EE0:
	ldr r3, [sp, #0x14]
	ldr r4, [r3, r7, lsl #2]
	ldr r2, [r4, #0xc]
	cmp r8, #0
	lsr r3, r2, #0xa
	andne r3, r3, #1
	moveq r3, #0
	cmp r3, #0
	bne _0800A050
	tst r1, #0x20000
	beq _08009F14
	tst r2, #0x20000
	bne _0800A048
_08009F14:
	tst r2, #4
	beq _0800A048
	mov r6, r3
	ldrb r3, [r4, #0x7b]
	str r6, [sp, #8]
	cmp r6, r3
	bhs _0800A048
_08009F30:
	add r3, r6, r6, lsl #1
	lsl r1, r3, #1
	add r2, r4, #0x80
	ldrsb r3, [r2, r1]
	cmp r3, #0
	beq _0800A010
	add r3, r1, r4
	ldrh r1, [r3, #0x7c]
	ldrsh r2, [r3, #0x7e]
	ldrsh r0, [r4, #0x26]
	orr r2, r1, r2, lsl #16
	add lr, r0, r2, asr #24
	lsl r2, r2, #8
	add ip, r0, r2, asr #24
	ldrb r3, [r4, #0xa7]
	lsl r2, r2, #8
	ldrsh r0, [r4, #0x22]
	tst r3, #0x10
	subne r3, r0, r2, asr #24
	lslne r2, r2, #8
	subne r1, r0, r2, asr #24
	addeq r1, r0, r2, asr #24
	lsleq r2, r2, #8
	addeq r3, r0, r2, asr #24
	cmp sl, r3
	blt _0800A010
	cmp sb, r1
	bgt _0800A010
	ldr r0, [sp, #0x10]
	cmp r0, lr
	bgt _0800A010
	ldr r1, [sp, #0xc]
	cmp r1, ip
	blt _0800A010
	add r3, r5, #0x94
	ldr r3, [r3, r8, lsl #2]
	ldr r0, [sp, #8]
	cmp r3, #0
	eorne r2, r0, #1
	moveq r2, #0
	cmp r2, #0
	beq _08009FF0
	mov r0, r5
	mov r1, r4
	mov lr, pc
	bx r3
	mov r1, #0x1
	str r1, [sp, #0x8]
_08009FF0:
	add r3, r4, #0x94
	ldr r3, [r3, r6, lsl #2]
	cmp r3, #0
	beq _0800A010
	mov r0, r4
	mov r1, r5
	mov lr, pc
	bx r3
_0800A010:
	ldr r3, [r5, #0xc]
	tst r3, #4
	mov r1, r3
	beq _0800A048
	ldr r3, [r4, #0xc]
	tst r3, #4
	beq _0800A048
	tst r1, #0x400
	bne _0800A048
	add r3, r6, #1
	ldrb r2, [r4, #0x7b]
	and r6, r3, #0xff
	cmp r6, r2
	blo _08009F30
_0800A048:
	tst r1, #4
	beq _0800A064
_0800A050:
	add r3, r7, #1
	and r7, r3, #0xff
	ldr r3, [sp, #0x18]
	cmp r7, r3
	blo _08009EE0
_0800A064:
	tst r1, #4
	beq _0800A080
_0800A06C:
	add r3, r8, #1
	ldrb r2, [r5, #0x7b]
	and r8, r3, #0xff
	cmp r8, r2
	blo _08009E60
_0800A080:
	ldm sp, {r0, r1}
	and r2, r0, #0xff
	cmp r2, r1
	blo _08009E40
_0800A090:
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr

	arm_func_start FUN_0800A09C
FUN_0800A09C: @ 0x0800A09C
	bx lr

	arm_func_start FUN_0800A0A0
FUN_0800A0A0: @ 0x0800A0A0
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sb, r1
	mov r7, #0x100
	asr r4, r2, #1
	and r2, r0, #0x1f
	rsb lr, r2, #0x1f
	lsr r0, r0, #3
	bic r0, r0, #3
	add r0, r0, #0x8000000
	cmp r4, #0
	mov r6, r3
	add sl, r6, #0x24
	mov r3, #0x124
	ldr ip, [r0], #4
	add r8, r6, #0x12
	ldrb r5, [r6, r3]
	lsr ip, ip, r2
	ble _0800A188
_0800A0E8:
	mov r1, #0
	mov r2, r5
	cmp r5, r1
	beq _0800A120
_0800A0F8:
	sub r2, r2, #1
	and r3, ip, #1
	orr r1, r3, r1, lsl #1
	sub lr, lr, #1
	cmn lr, #1
	ldreq ip, [r0], #4
	moveq lr, #0x1f
	lsrne ip, ip, #1
	cmp r2, #0
	bne _0800A0F8
_0800A120:
	mov r2, r5
_0800A124:
	and r3, ip, #1
	orr r1, r3, r1, lsl #1
	sub lr, lr, #1
	cmn lr, #1
	ldreq ip, [r0], #4
	moveq lr, #0x1f
	lsrne ip, ip, #1
	ldrb r3, [r6, r2]
	cmp r1, r3
	rsbge r1, r3, r1
	addge r2, r2, #1
	bge _0800A124
	ldrb r3, [r8, r2]
	add r3, r3, r1
	ldrb r3, [sl, r3]
	cmp r7, #0x100
	beq _0800A17C
	sub r4, r4, #1
	add r3, r7, r3, lsl #8
	strh r3, [sb], #2
	mov r7, #0x100
	b _0800A180
_0800A17C:
	mov r7, r3
_0800A180:
	cmp r4, #0
	bgt _0800A0E8
_0800A188:
	pop {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr

	arm_func_start FUN_0800A190
FUN_0800A190: @ 0x0800A190
	bx lr

	arm_func_start FUN_08001A94
FUN_08001A94: @ 0x0800A194
	push {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	mov r4, r1
	mov r0, #0
	mov r5, r0
	mov r8, r2
	ldrb ip, [r6], #1
	mov r7, r4
	cmp ip, r0
	beq _0800A378
_0800A1BC:
	tst ip, #0x80
	beq _0800A284
	and r3, ip, #0x7f
	ldrb ip, [r6], #1
	and r2, ip, #0x1f
	add r1, r2, #2
	cmp r1, #2
	lsr r2, ip, #5
	orr r2, r2, r3, lsl #3
	addeq r1, r2, #0x42
	beq _0800A294
	add r3, r4, r5
	rsb r3, r2, r3
	tst r3, #1
	beq _0800A210
	ldrb lr, [r3], #1
	eors r5, r5, #1
	movne r0, lr
	orreq r0, r0, lr, lsl #8
	strheq r0, [r4], #2
	sub r1, r1, #1
_0800A210:
	lsr ip, r1, #1
	cmp r5, #0
	bne _0800A248
	cmp ip, #0
	and r2, r1, #1
	beq _0800A238
_0800A228:
	ldrh r1, [r3], #2
	strh r1, [r4], #2
	subs ip, ip, #1
	bne _0800A228
_0800A238:
	cmp r2, #0
	ldrbne r0, [r3]
	movne r5, #1
	b _0800A36C
_0800A248:
	cmp ip, #0
	and r2, r1, #1
	beq _0800A26C
_0800A254:
	ldrh lr, [r3], #2
	orr r0, r0, lr, lsl #8
	strh r0, [r4], #2
	subs ip, ip, #1
	lsr r0, lr, #8
	bne _0800A254
_0800A26C:
	cmp r2, #0
	ldrbne r3, [r3]
	orrne r0, r0, r3, lsl #8
	strhne r0, [r4], #2
	movne r5, #0
	b _0800A36C
_0800A284:
	tst ip, #0x40
	beq _0800A2D8
	and r3, ip, #0x3f
	add r1, r3, #3
_0800A294:
	ldrb ip, [r6], #1
	cmp r5, #0
	orrne r0, r0, ip, lsl #8
	subne r1, r1, #1
	strhne r0, [r4], #2
	orr r0, ip, ip, lsl #8
	lsrs ip, r1, #1
	and r2, r1, #1
	beq _0800A2C4
_0800A2B8:
	strh r0, [r4], #2
	subs ip, ip, #1
	bne _0800A2B8
_0800A2C4:
	mov r5, r2
	and r3, r0, #0xff
	cmp r5, #0
	movne r0, r3
	b _0800A36C
_0800A2D8:
	mov r1, ip
	tst r6, #1
	beq _0800A2FC
	eors r5, r5, #1
	ldrbne r0, [r6], #1
	ldrbeq r3, [r6], #1
	orreq r0, r0, r3, lsl #8
	strheq r0, [r4], #2
	sub r1, r1, #1
_0800A2FC:
	lsr ip, r1, #1
	cmp r5, #0
	bne _0800A334
	cmp ip, #0
	and r2, r1, #1
	beq _0800A324
_0800A314:
	ldrh r3, [r6], #2
	strh r3, [r4], #2
	subs ip, ip, #1
	bne _0800A314
_0800A324:
	cmp r2, #0
	ldrbne r0, [r6], #1
	movne r5, #1
	b _0800A36C
_0800A334:
	cmp ip, #0
	and r2, r1, #1
	beq _0800A358
_0800A340:
	ldrh lr, [r6], #2
	orr r0, r0, lr, lsl #8
	strh r0, [r4], #2
	subs ip, ip, #1
	lsr r0, lr, #8
	bne _0800A340
_0800A358:
	cmp r2, #0
	ldrbne r3, [r6], #1
	movne r5, #0
	orrne r0, r0, r3, lsl #8
	strhne r0, [r4], #2
_0800A36C:
	ldrb ip, [r6], #1
	cmp ip, #0
	bne _0800A1BC
_0800A378:
	cmp r5, #0
	strbne r0, [r4], #1
	rsb r3, r7, r4
	str r3, [r8]
	pop {r4, r5, r6, r7, r8, lr}
	bx lr

	arm_func_start FUN_0800A390
FUN_0800A390: @ 0x0800A390
	push {r4, r5, lr}
	mov ip, r2
	mov r5, #0
	mov lr, #1
	mov r4, r1
	add r3, ip, r4
	cmp r3, #0x400
	bhi _0800A43C
_0800A3B0:
	mov r5, ip
	mov lr, r4
	b _0800A3E0
_0800A3BC:
	sub lr, lr, #1
	add r2, r2, #1
	cmp lr, #0
	movle r3, #0
	movgt r3, #1
	cmp r2, #7
	movhi r3, #0
	cmp r3, #0
	bne _0800A40C
_0800A3E0:
	cmp lr, #0
	ble _0800A41C
	ldrb r1, [r0, ip, lsr #3]
	cmp r1, #0xff
	addeq ip, ip, #8
	beq _0800A41C
	cmp r1, #0
	addeq ip, ip, #8
	subeq lr, lr, #8
	beq _0800A3E0
	and r2, ip, #7
_0800A40C:
	add ip, ip, #1
	asr r3, r1, r2
	tst r3, #1
	beq _0800A3BC
_0800A41C:
	add r2, ip, r4
	cmp lr, #0
	movle r3, #0
	movgt r3, #1
	cmp r2, #0x400
	movhi r3, #0
	cmp r3, #0
	bne _0800A3B0
_0800A43C:
	cmp lr, #0
	movgt r0, #0xff00
	addgt r0, r0, #0xff
	movle r0, r5
	pop {r4, r5, lr}
	bx lr

	arm_func_start FUN_0800A454
FUN_0800A454: @ 0x0800A454
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r3, _0800A510 @ => 0x03003178
	ldr r0, _0800A514 @ => 0x15070301
	ldr r1, [r3]
	mov r8, #0
	ldr r7, _0800A518 @ => 0x03002E50
	b _0800A474
_0800A470:
	add r8, r8, #1
_0800A474:
	cmp r8, r1
	bge _0800A48C
	ldr r3, [r7, r8, lsl #2]
	ldr r2, [r3, #0xc]
	tst r2, #0x40000
	beq _0800A470
_0800A48C:
	lsr r1, r0, #0x18
	cmp r1, r8
	mov r6, r1
	lsl sb, r0, #8
	bge _0800A560
_0800A4A0:
	ldr r5, [r7, r1, lsl #2]
	ldrb r3, [r5, #0xa9]
	ldr r2, [r5, #0xc]
	lsl r3, r3, #0x16
	and r4, r3, #0x3000000
	tst r2, #0x80000
	addne r4, r4, #0x20000
	bne _0800A4CC
	tst r2, #0x100000
	add r3, r4, #0x10000
	moveq r4, r3
_0800A4CC:
	mov ip, r1
	cmp ip, r6
	add r3, r4, #0x10000
	ldrsh r2, [r5, #0x26]
	add sl, ip, #1
	rsb r4, r2, r3
	blt _0800A550
_0800A4E8:
	rsb lr, r6, ip
	ldr r2, [r7, lr, lsl #2]
	ldrb r3, [r2, #0xa9]
	lsl r3, r3, #0x16
	ldr r2, [r2, #0xc]
	and r1, r3, #0x3000000
	tst r2, #0x80000
	beq _0800A51C
	add r1, r1, #0x20000
	b _0800A528
	.align 2, 0
_0800A510: .4byte gUnk_03003178
_0800A514: .4byte 0x15070301
_0800A518: .4byte gUnk_03002E50
_0800A51C:
	tst r2, #0x100000
	add r3, r1, #0x10000
	moveq r1, r3
_0800A528:
	ldr r0, [r7, lr, lsl #2]
	ldrsh r2, [r0, #0x26]
	add r3, r1, #0x10000
	rsb r1, r2, r3
	cmp r4, r1
	bhs _0800A550
	str r0, [r7, ip, lsl #2]
	mov ip, lr
	cmp ip, r6
	bge _0800A4E8
_0800A550:
	mov r1, sl
	str r5, [r7, ip, lsl #2]
	cmp r1, r8
	blt _0800A4A0
_0800A560:
	subs r0, sb, #0
	bne _0800A48C
	pop {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr

	arm_func_start FUN_0800A570
FUN_0800A570: @ 0x0800A570
	bx lr

	thumb_func_start FUN_0800A574
FUN_0800A574: @ 0x0800A574
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	movs r6, #1
	ldrh r0, [r4, #6]
	cmp r0, #1
	beq _0800A5E8
	cmp r0, #1
	bgt _0800A58E
	cmp r0, #0
	beq _0800A594
	b _0800A5F6
_0800A58E:
	cmp r0, #0x42
	beq _0800A5C2
	b _0800A5F6
_0800A594:
	ldr r0, [r4]
	bl FUN_08001848
	movs r3, #0x8d
	lsls r3, r3, #1
	movs r0, #6
	str r0, [sp]
	movs r0, #0x34
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xc
	bl FUN_0803DB6C
	ldr r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0x78
	strh r1, [r0]
	movs r0, #0x42
	strh r0, [r4, #6]
	b _0800A5F6
_0800A5C2:
	ldr r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _0800A5E4 @ => 0xFFFF0000
	cmp r1, r0
	bne _0800A5F6
	ldr r0, [r5, #0x34]
	movs r1, #1
	bl FUN_08001FB0
	strh r6, [r4, #6]
	b _0800A5F6
	.align 2, 0
_0800A5E4: .4byte 0xFFFF0000
_0800A5E8:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #6
	movs r3, #4
	bl FUN_0803DC54
	movs r6, #2
_0800A5F6:
	adds r0, r6, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_0800A600
FUN_0800A600: @ 0x0800A600
	movs r0, #1
	bx lr

	thumb_func_start FUN_0800A604
FUN_0800A604: @ 0x0800A604
	movs r0, #0xa
	strb r0, [r1]
	movs r0, #1
	bx lr

	thumb_func_start FUN_0800A60C
FUN_0800A60C: @ 0x0800A60C
	push {lr}
	cmp r2, #0xa
	bne _0800A622
	ldrh r0, [r1, #8]
	cmp r0, #0
	beq _0800A622
	ldrh r0, [r1, #0xa]
	cmp r0, #2
	beq _0800A622
	movs r0, #0
	b _0800A624
_0800A622:
	movs r0, #1
_0800A624:
	pop {r1}
	bx r1

	thumb_func_start FUN_0800A628
FUN_0800A628: @ 0x0800A628
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	bl FUN_0803D1F0
	adds r4, r0, #0
	cmp r4, #0
	beq _0800A662
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
_0800A662:
	adds r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_0800A66C
FUN_0800A66C: @ 0x0800A66C
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0803D8C8
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	cmp r0, #0xa
	bne _0800A684
	adds r0, r4, #0
	bl FUN_0800A574
	b _0800A686
_0800A684:
	movs r0, #0
_0800A686:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_0800A68C
FUN_0800A68C: @ 0x0800A68C
	bx lr
	.align 2, 0
	