.include "asm/constants.s"
.include "asm/macros.s"
.include "data/lists/sounds.inc"

.syntax unified

	thumb_func_start CreateASim_Init
CreateASim_Init: @ 0x080191D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	ldr r0, _08019280 @ => 0x030036B0
	movs r1, #0
	str r1, [r0]
	ldr r0, _08019284 @ => 0x030037A8
	str r1, [r0]
	add r0, sp, #0x18
	strh r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _08019288 @ => 0x01008000
	bl SVC_CpuSet
	movs r0, #0
	bl FUN_0805273C
	movs r0, #0
	bl FUN_0800C558
	movs r0, #0x80
	lsls r0, r0, #5
	bl FUN_0800C5EC
	ldr r0, _0801928C @ => 0x0805F560
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C418
	ldr r0, _08019290 @ => 0x0805F564
	ldr r1, [r0]
	movs r0, #2
	bl FUN_0800C434
	ldr r0, _08019294 @ => 0x0805F568
	ldr r1, [r0]
	movs r0, #1
	bl FUN_0800C434
	ldr r0, _08019298 @ => 0x0805F570
	ldr r1, [r0]
	movs r0, #0
	bl FUN_0800C434
	movs r0, #2
	bl FUN_0800C5FC
	movs r0, #1
	bl FUN_0800C5FC
	movs r0, #0
	bl FUN_0800C5FC
	movs r0, SOUNDTRACK_BOARDROOM
	bl FUN_0804DE84
	ldr r0, _0801929C @ => 0x03004770
	ldr r1, [r0, #8]
	cmp r1, #0
	bne _080192B0
	ldr r0, _080192A0 @ => 0x03004720
	str r1, [r0, #0x14]
	ldr r4, _080192A4 @ => 0x030036C0
	str r1, [r4, #4]
	str r1, [r4, #8]
	movs r0, #0
	str r0, [sp, #0x28]
	ldr r2, _080192A8 @ => 0x00000276
	str r2, [sp, #0x2c]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xe8
	bl FUN_0802CB40
	adds r4, #0x40
	ldr r1, _080192AC @ => 0x0805F6B8
	adds r0, r4, #0
	movs r2, #0xc
	bl FUN_0802CBAC
	b _080192C4
	.align 2, 0
_08019280: .4byte gUnk_030036B0
_08019284: .4byte gUnk_030037A8
_08019288: .4byte 0x01008000
_0801928C: .4byte ROMREF_0805F560
_08019290: .4byte ROMREF_0805F564
_08019294: .4byte ROMREF_0805F568
_08019298: .4byte ROMREF_0805F570
_0801929C: .4byte gUnk_03004770
_080192A0: .4byte gUnk_03004720
_080192A4: .4byte gUnk_030036C0
_080192A8: .4byte 0x00000276
_080192AC: .4byte ROMREF_0805F6B8
_080192B0:
	ldr r1, _0801937C @ => 0x03004720
	movs r0, #1
	str r0, [r1, #0x14]
	ldr r1, _08019380 @ => 0x030036C0
	movs r0, #2
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [sp, #0x28]
	ldr r2, _08019384 @ => 0x000002E1
	str r2, [sp, #0x2c]
_080192C4:
	bl FUN_0801A15C
	ldr r1, _0801937C @ => 0x03004720
	movs r0, #0x1f
	str r0, [r1, #0x18]
	movs r6, #0
	str r6, [r1, #4]
	bl FUN_08019D64
	movs r5, #0
	movs r7, #0
	ldr r2, _08019388 @ => 0x08CD3230
	movs r0, #0x10
	str r0, [sp]
	str r0, [sp, #4]
	movs r4, #0xf0
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r7, [sp, #0x10]
	str r6, [sp, #0x14]
	add r0, sp, #0x1c
	movs r1, #3
	movs r3, #1
	bl FUN_0800D83C
	movs r0, #0
	ldr r2, _0801938C @ => 0x08CD7300
	ldr r3, _08019390 @ => 0x0000024F
	str r4, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r5, #1
	str r5, [sp, #0x14]
	add r0, sp, #0x20
	movs r1, #2
	bl FUN_0800D83C
	movs r2, #0
	mov sl, r2
	movs r0, #0
	str r0, [sp, #0x30]
	ldr r1, _08019394 @ => 0x0805F588
	ldr r2, [sp, #0x28]
	lsls r0, r2, #3
	adds r0, r0, r1
	ldr r2, [r0]
	str r4, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	mov r0, sl
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	add r0, sp, #0x24
	movs r1, #1
	ldr r3, [sp, #0x2c]
	bl FUN_0800D83C
	str r5, [sp]
	movs r0, #1
	movs r1, #2
	movs r2, #6
	movs r3, #6
	bl FUN_0802147C
	movs r0, #1
	movs r1, #5
	movs r2, #2
	movs r3, #2
	bl FUN_08021428
	bl FUN_080194C0
	ldr r0, _08019398 @ => FUN_0801A258
	bl FUN_08024F40
	movs r0, #0x3f
	movs r1, #0
	bl FUN_080457F4
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801937C: .4byte gUnk_03004720
_08019380: .4byte gUnk_030036C0
_08019384: .4byte 0x000002E1
_08019388: .4byte ROMREF_08CD3230
_0801938C: .4byte ROMREF_08CD7300
_08019390: .4byte 0x0000024F
_08019394: .4byte ROMREF_0805F588
_08019398: .4byte FUN_0801A258

	thumb_func_start CreateASim_Handler
CreateASim_Handler: @ 0x0801939C
	push {lr}
	ldr r0, _080193AC @ => 0x03004720
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _080193B0
	cmp r1, #1
	beq _08019426
	b _080194BA
	.align 2, 0
_080193AC: .4byte gUnk_03004720
_080193B0:
	ldr r0, [r0, #4]
	cmp r0, #5
	bls _080193B8
	b _080194BA
_080193B8:
	lsls r0, r0, #2
	ldr r1, _080193C4 @ =_080193C8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080193C4: .4byte _080193C8
_080193C8: @ jump table
	.4byte _08019454 @ case 0
	.4byte _0801945A @ case 1
	.4byte _08019480 @ case 2
	.4byte _080193E0 @ case 3
	.4byte _080193F8 @ case 4
	.4byte _08019420 @ case 5
_080193E0:
	ldr r1, _080193F4 @ => 0x030036C0
	movs r0, #0
	str r0, [r1, #0x18]
	movs r0, #5
	movs r1, #1
	movs r2, #0
	bl FUN_0802CED4
	b _080194AE
	.align 2, 0
_080193F4: .4byte gUnk_030036C0
_080193F8:
	ldr r0, _08019418 @ => 0x03003DF0
	ldr r1, _0801941C @ => 0x0000036A
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801940C
	bl FUN_080211AC
_0801940C:
	movs r0, #0x1e
	movs r1, #0
	movs r2, #1
	bl FUN_0802CED4
	b _080194AE
	.align 2, 0
_08019418: .4byte gUnk_03003DF0
_0801941C: .4byte 0x0000036A
_08019420:
	bl FUN_08019D18
	b _080194BA
_08019426:
	ldr r0, [r0, #4]
	cmp r0, #5
	bhi _080194BA
	lsls r0, r0, #2
	ldr r1, _08019438 @ =_0801943C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08019438: .4byte _0801943C
_0801943C: @ jump table
	.4byte _08019454 @ case 0
	.4byte _0801945A @ case 1
	.4byte _08019480 @ case 2
	.4byte _08019490 @ case 3
	.4byte _080194A8 @ case 4
	.4byte _080194B6 @ case 5
_08019454:
	bl FUN_08019574
	b _080194BA
_0801945A:
	bl FUN_08019B44
	ldr r1, _08019478 @ => 0x030036C0
	ldr r0, [r1, #0x18]
	cmp r0, #0
	bne _080194BA
	ldr r0, _0801947C @ => 0x0805F5B8
	ldr r1, [r1, #4]
	lsls r1, r1, #4
	adds r0, #8
	adds r1, r1, r0
	ldr r0, [r1]
	bl _call_via_r0
	b _080194BA
	.align 2, 0
_08019478: .4byte gUnk_030036C0
_0801947C: .4byte ROMREF_0805F5B8
_08019480:
	ldr r1, _0801948C @ => 0x030036C0
	ldrb r0, [r1, #4]
	ldrb r1, [r1, #8]
	bl FUN_08019774
	b _080194BA
	.align 2, 0
_0801948C: .4byte gUnk_030036C0
_08019490:
	ldr r1, _080194A4 @ => 0x030036C0
	movs r0, #0
	str r0, [r1, #0x18]
	movs r0, #5
	movs r1, #1
	movs r2, #0
	bl FUN_0802CED4
	b _080194AE
	.align 2, 0
_080194A4: .4byte gUnk_030036C0
_080194A8:
	movs r0, #0x1e
	bl FUN_0802CEC4
_080194AE:
	movs r0, #0xb9
	bl FUN_0804DE0C
	b _080194BA
_080194B6:
	bl FUN_08019D18
_080194BA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080194C0
FUN_080194C0: @ 0x080194C0
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r4, _0801955C @ => 0x03003700
	movs r0, #0
	adds r1, r4, #0
	bl FUN_0801A1DC
	movs r0, #1
	adds r1, r4, #0
	bl FUN_0801A1DC
	ldr r0, _08019560 @ => 0x030036B0
	ldr r1, [r0]
	ldr r0, [r1, #0xc]
	movs r2, #2
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1, #0xc]
	ldr r0, _08019564 @ => 0x030037A8
	ldr r1, [r0]
	ldr r0, [r1, #0xc]
	ands r0, r2
	str r0, [r1, #0xc]
	ldr r4, _08019568 @ => 0x0805F6C4
	ldr r6, _0801956C @ => 0x0805F854
	ldr r0, [r6, #8]
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0
	bl FUN_0802D6FC
	movs r0, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl FUN_08019FEC
	ldr r0, [r4, #8]
	ldr r5, _08019570 @ => 0x03004790
	ldr r1, [r5]
	adds r1, #0xa9
	ldrb r1, [r1]
	lsrs r1, r1, #4
	lsls r1, r1, #4
	movs r2, #0x10
	bl FUN_0801579C
	adds r4, #0x10
	ldr r0, [r6, #0xc]
	str r0, [sp]
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0
	bl FUN_0802D6FC
	movs r0, #1
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl FUN_08019FEC
	ldr r0, [r4, #8]
	ldr r1, [r5, #4]
	adds r1, #0xa9
	ldrb r1, [r1]
	lsrs r1, r1, #4
	lsls r1, r1, #4
	movs r2, #0x10
	bl FUN_0801579C
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801955C: .4byte gUnk_03003700
_08019560: .4byte gUnk_030036B0
_08019564: .4byte gUnk_030037A8
_08019568: .4byte ROMREF_0805F6C4
_0801956C: .4byte ROMREF_0805F854
_08019570: .4byte gUnk_03004790

	thumb_func_start FUN_08019574
FUN_08019574: @ 0x08019574
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r6, _08019710 @ => 0x03004720
	ldr r0, [r6, #0x18]
	cmp r0, #0x1e
	beq _08019588
	b _08019728
_08019588:
	ldr r7, _08019714 @ => 0x0805F578
	ldr r0, [r6, #0x14]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldr r0, [r0]
	bl _call_via_r0
	ldr r0, _08019718 @ => 0x03004790
	mov r8, r0
	ldr r4, [r0, #4]
	cmp r4, #0
	beq _080195EA
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, _0801971C @ => FUN_0802D34C
	str r0, [r4, #0x50]
	adds r0, r4, #0
	movs r1, #0xb
	bl FUN_08001FB0
	ldr r0, _08019720 @ => 0x030036C0
	ldrb r0, [r0, #4]
	bl FUN_0801A1A4
	ldr r1, [r4, #0x18]
	movs r0, #0xf6
	lsls r0, r0, #0xf
	adds r1, r1, r0
	ldr r2, [r4, #0x1c]
	adds r0, r4, #0
	bl FUN_08001728
	ldr r1, [r4, #0x18]
	ldr r0, _08019724 @ => 0xFF850000
	adds r1, r1, r0
	ldr r2, [r4, #0x1c]
	ldr r3, [r6, #0x18]
	adds r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r4, #0
	bl FUN_08003C0C
	adds r0, r4, #0
	movs r1, #3
	bl FUN_08001F84
_080195EA:
	movs r5, #0
	ldr r0, [r6, #0x14]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r0, [r0, #4]
	subs r0, #1
	cmp r5, r0
	bge _0801965E
	mov sb, r8
	mov r8, r7
	movs r7, #0xf6
	lsls r7, r7, #0xf
_08019602:
	ldr r0, [r6, #0x14]
	lsls r0, r0, #3
	add r0, r8
	ldrb r0, [r0, #5]
	adds r0, r0, r5
	lsls r0, r0, #2
	add r0, sb
	ldr r4, [r0]
	cmp r4, #0
	beq _0801964A
	ldr r0, _0801971C @ => FUN_0802D34C
	str r0, [r4, #0x50]
	adds r0, r4, #0
	movs r1, #0xb
	bl FUN_08001FB0
	ldr r1, [r4, #0x18]
	adds r1, r1, r7
	ldr r2, [r4, #0x1c]
	adds r0, r4, #0
	bl FUN_08001728
	ldr r1, [r4, #0x18]
	subs r1, r1, r7
	ldr r2, [r4, #0x1c]
	ldr r3, [r6, #0x18]
	adds r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r4, #0
	bl FUN_08003C0C
	adds r0, r4, #0
	movs r1, #3
	bl FUN_08001F84
_0801964A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [r6, #0x14]
	lsls r0, r0, #3
	add r0, r8
	ldrb r0, [r0, #4]
	subs r0, #1
	cmp r5, r0
	blt _08019602
_0801965E:
	bl FUN_0801A15C
	bl FUN_0801985C
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #1
	movs r1, #0
	bl FUN_0801FEA0
	ldr r0, _08019710 @ => 0x03004720
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _0801968A
	ldr r0, _08019720 @ => 0x030036C0
	ldrh r0, [r0, #0xc]
	adds r0, #0x1a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl FUN_08013408
_0801968A:
	ldr r4, _08019724 @ => 0xFF850000
	movs r0, #2
	adds r1, r4, #0
	movs r2, #0
	bl FUN_0800CB80
	movs r0, #1
	adds r1, r4, #0
	movs r2, #0
	bl FUN_0800CB80
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0
	bl FUN_0800CB80
	movs r0, #1
	movs r1, #0x28
	movs r2, #0x3f
	bl FUN_080534D8
	movs r3, #0xf0
	lsls r3, r3, #0x10
	movs r4, #0xa0
	lsls r4, r4, #0x10
	str r4, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl FUN_08053548
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0x1e
	bl FUN_0800CAFC
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0x1e
	bl FUN_0800CAFC
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0x1e
	bl FUN_0800CAFC
	movs r0, #0x1e
	str r0, [sp]
	movs r0, #1
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl FUN_08053598
	movs r0, #0
	bl FUN_0800C4BC
	movs r0, #1
	bl FUN_0800C4BC
	movs r0, #2
	bl FUN_0800C4BC
	b _08019754
	.align 2, 0
_08019710: .4byte gUnk_03004720
_08019714: .4byte ROMREF_0805F578
_08019718: .4byte gUnk_03004790
_0801971C: .4byte FUN_0802D34C
_08019720: .4byte gUnk_030036C0
_08019724: .4byte 0xFF850000
_08019728:
	cmp r0, #0x1d
	beq _08019754
	cmp r0, #0
	bne _08019754
	movs r0, #1
	bl FUN_080534A8
	ldr r0, [r6, #0x14]
	cmp r0, #1
	bne _0801974E
	movs r0, #5
	str r0, [r6, #0x18]
	ldr r0, _0801976C @ => 0x030036B0
	ldr r0, [r0]
	cmp r0, #0
	beq _0801974E
	movs r1, #2
	bl FUN_08001FB0
_0801974E:
	ldr r1, _08019770 @ => 0x03004720
	movs r0, #1
	str r0, [r1, #4]
_08019754:
	ldr r1, _08019770 @ => 0x03004720
	ldr r0, [r1, #0x18]
	subs r0, #1
	str r0, [r1, #0x18]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801976C: .4byte gUnk_030036B0
_08019770: .4byte gUnk_03004720

	thumb_func_start FUN_08019774
FUN_08019774: @ 0x08019774
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	ldr r1, _080197A8 @ => 0x030036C0
	movs r0, #0
	str r0, [r1, #0x10]
	ldr r0, _080197AC @ => 0x03004720
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0801979C
	ldr r0, _080197B0 @ => 0x0805F5B8
	lsls r1, r2, #4
	adds r0, #0xc
	adds r1, r1, r0
	ldr r0, [r1]
	bl _call_via_r0
_0801979C:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	bne _080197B8
	ldr r0, _080197B4 @ => 0x0805F568
	b _080197BA
	.align 2, 0
_080197A8: .4byte gUnk_030036C0
_080197AC: .4byte gUnk_03004720
_080197B0: .4byte ROMREF_0805F5B8
_080197B4: .4byte ROMREF_0805F568
_080197B8:
	ldr r0, _080197D0 @ => 0x0805F56C
_080197BA:
	ldr r1, [r0]
	movs r0, #1
	bl FUN_0800C47C
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	bne _080197D8
	ldr r0, _080197D4 @ => 0x0805F570
	b _080197DA
	.align 2, 0
_080197D0: .4byte ROMREF_0805F56C
_080197D4: .4byte ROMREF_0805F570
_080197D8:
	ldr r0, _0801984C @ => 0x0805F574
_080197DA:
	ldr r1, [r0]
	movs r0, #0
	bl FUN_0800C47C
	ldr r7, _08019850 @ => 0x03004720
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _0801981C
	movs r0, #1
	bl FUN_0800C5FC
	movs r4, #0
	movs r6, #0
	ldr r0, _08019854 @ => 0x0805F588
	lsls r1, r5, #3
	adds r2, r1, r0
	ldr r2, [r2]
	adds r0, #4
	adds r1, r1, r0
	ldr r3, [r1]
	movs r0, #0x10
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0xf0
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r6, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x14]
	add r0, sp, #0x18
	movs r1, #1
	bl FUN_0800D83C
_0801981C:
	adds r0, r5, #0
	bl FUN_0801A1A4
	bl FUN_0801A15C
	bl FUN_0801985C
	ldr r4, _08019858 @ => 0x0805F5B8
	lsls r5, r5, #4
	adds r0, r5, r4
	ldr r0, [r0]
	bl _call_via_r0
	adds r4, #4
	adds r5, r5, r4
	ldr r0, [r5]
	bl _call_via_r0
	movs r0, #1
	str r0, [r7, #4]
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801984C: .4byte ROMREF_0805F574
_08019850: .4byte gUnk_03004720
_08019854: .4byte ROMREF_0805F588
_08019858: .4byte ROMREF_0805F5B8

	thumb_func_start FUN_0801985C
FUN_0801985C: @ 0x0801985C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, _08019890 @ => 0x030036C0
	ldr r4, [r0, #4]
	movs r0, #0x14
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0x11
	movs r2, #0
	movs r3, #0xd
	bl FUN_0800C7A8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	cmp r4, #5
	bls _08019886
	b _08019B32
_08019886:
	lsls r0, r4, #2
	ldr r1, _08019894 @ =_08019898
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08019890: .4byte gUnk_030036C0
_08019894: .4byte _08019898
_08019898: @ jump table
	.4byte _080198B0 @ case 0
	.4byte _080198DC @ case 1
	.4byte _0801991C @ case 2
	.4byte _0801995C @ case 3
	.4byte _080199A0 @ case 4
	.4byte _08019A1C @ case 5
_080198B0:
	ldr r4, _080198D4 @ => 0x0805F630
	ldr r0, [r4]
	bl FUN_08050820
	adds r3, r0, #0
	ldr r0, _080198D8 @ => 0x030036C0
	ldrh r0, [r0, #0xc]
	adds r0, #1
	movs r2, #4
	ldrsh r1, [r4, r2]
	movs r5, #6
	ldrsh r2, [r4, r5]
	movs r4, #1
	str r4, [sp]
	bl FUN_0801F8B8
	b _08019B32
	.align 2, 0
_080198D4: .4byte ROMREF_0805F630
_080198D8: .4byte gUnk_030036C0
_080198DC:
	ldr r4, _08019914 @ => 0x0805F630
	ldr r0, [r4, #8]
	bl FUN_08050820
	adds r3, r0, #0
	ldr r6, _08019918 @ => 0x030036C0
	ldrh r0, [r6, #0xc]
	adds r0, #1
	movs r7, #0xc
	ldrsh r1, [r4, r7]
	movs r5, #0xe
	ldrsh r2, [r4, r5]
	movs r5, #1
	str r5, [sp]
	bl FUN_0801F8B8
	ldr r0, [r4, #0x10]
	bl FUN_08050820
	adds r3, r0, #0
	ldrh r0, [r6, #0xc]
	adds r0, #0x1a
	movs r6, #0x14
	ldrsh r1, [r4, r6]
	movs r7, #0x16
	ldrsh r2, [r4, r7]
	b _08019990
	.align 2, 0
_08019914: .4byte ROMREF_0805F630
_08019918: .4byte gUnk_030036C0
_0801991C:
	ldr r4, _08019954 @ => 0x0805F630
	ldr r0, [r4, #0x18]
	bl FUN_08050820
	adds r3, r0, #0
	ldr r6, _08019958 @ => 0x030036C0
	ldrh r0, [r6, #0xc]
	adds r0, #1
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	movs r5, #0x1e
	ldrsh r2, [r4, r5]
	movs r5, #1
	str r5, [sp]
	bl FUN_0801F8B8
	ldr r0, [r4, #0x20]
	bl FUN_08050820
	adds r3, r0, #0
	ldrh r0, [r6, #0xc]
	adds r0, #0x1a
	movs r6, #0x24
	ldrsh r1, [r4, r6]
	movs r7, #0x26
	ldrsh r2, [r4, r7]
	b _08019990
	.align 2, 0
_08019954: .4byte ROMREF_0805F630
_08019958: .4byte gUnk_030036C0
_0801995C:
	ldr r4, _08019998 @ => 0x0805F630
	ldr r0, [r4, #0x28]
	bl FUN_08050820
	adds r3, r0, #0
	ldr r6, _0801999C @ => 0x030036C0
	ldrh r0, [r6, #0xc]
	adds r0, #1
	movs r2, #0x2c
	ldrsh r1, [r4, r2]
	movs r5, #0x2e
	ldrsh r2, [r4, r5]
	movs r5, #1
	str r5, [sp]
	bl FUN_0801F8B8
	ldr r0, [r4, #0x30]
	bl FUN_08050820
	adds r3, r0, #0
	ldrh r0, [r6, #0xc]
	adds r0, #0x1a
	movs r6, #0x34
	ldrsh r1, [r4, r6]
	movs r7, #0x36
	ldrsh r2, [r4, r7]
_08019990:
	str r5, [sp]
	bl FUN_0801F8B8
	b _08019B32
	.align 2, 0
_08019998: .4byte ROMREF_0805F630
_0801999C: .4byte gUnk_030036C0
_080199A0:
	ldr r4, _08019A14 @ => 0x0805F630
	ldr r0, [r4, #0x38]
	bl FUN_08050820
	adds r3, r0, #0
	ldr r5, _08019A18 @ => 0x030036C0
	ldrh r0, [r5, #0xc]
	adds r0, #1
	movs r2, #0x3c
	ldrsh r1, [r4, r2]
	movs r6, #0x3e
	ldrsh r2, [r4, r6]
	movs r6, #1
	str r6, [sp]
	bl FUN_0801F8B8
	ldr r0, [r4, #0x40]
	bl FUN_08050820
	adds r3, r0, #0
	ldrh r0, [r5, #0xc]
	adds r0, #0x1a
	adds r1, r4, #0
	adds r1, #0x44
	movs r7, #0
	ldrsh r1, [r1, r7]
	adds r2, r4, #0
	adds r2, #0x46
	movs r7, #0
	ldrsh r2, [r2, r7]
	str r6, [sp]
	bl FUN_0801F8B8
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r0, [r0]
	cmp r0, #0
	beq _080199EE
	b _08019B32
_080199EE:
	ldr r0, [r4, #0x48]
	bl FUN_08050820
	adds r3, r0, #0
	ldrh r0, [r5, #0xc]
	adds r0, #0x6a
	adds r1, r4, #0
	adds r1, #0x4c
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r2, r4, #0
	adds r2, #0x4e
	movs r4, #0
	ldrsh r2, [r2, r4]
	str r6, [sp]
	bl FUN_0801F8B8
	b _08019B32
	.align 2, 0
_08019A14: .4byte ROMREF_0805F630
_08019A18: .4byte gUnk_030036C0
_08019A1C:
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #0
	movs r1, #0
	bl FUN_0801FEA0
	ldr r4, _08019A64 @ => 0x0805F630
	ldr r0, [r4, #0x50]
	bl FUN_08050820
	adds r3, r0, #0
	ldr r5, _08019A68 @ => 0x030036C0
	ldrh r0, [r5, #0xc]
	adds r0, #1
	adds r1, r4, #0
	adds r1, #0x54
	movs r6, #0
	ldrsh r1, [r1, r6]
	adds r4, #0x56
	movs r7, #0
	ldrsh r2, [r4, r7]
	movs r4, #1
	str r4, [sp]
	bl FUN_0801F8B8
	adds r5, #0xe4
	ldr r5, [r5]
	cmp r5, #1
	beq _08019A70
	cmp r5, #1
	blo _08019A5E
	cmp r5, #2
	beq _08019A78
_08019A5E:
	ldr r0, _08019A6C @ => 0x000007BF
	b _08019A7C
	.align 2, 0
_08019A64: .4byte ROMREF_0805F630
_08019A68: .4byte gUnk_030036C0
_08019A6C: .4byte 0x000007BF
_08019A70:
	ldr r0, _08019A74 @ => 0x000007BE
	b _08019A7C
	.align 2, 0
_08019A74: .4byte 0x000007BE
_08019A78:
	movs r0, #0xf8
	lsls r0, r0, #3
_08019A7C:
	bl FUN_08050820
	adds r3, r0, #0
	ldr r5, _08019B3C @ => 0x030036C0
	ldrh r0, [r5, #0xc]
	adds r0, #0x1a
	ldr r6, _08019B40 @ => 0x0805F630
	adds r1, r6, #0
	adds r1, #0x5c
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r2, r6, #0
	adds r2, #0x5e
	movs r4, #0
	ldrsh r2, [r2, r4]
	str r3, [sp]
	movs r4, #1
	str r4, [sp, #4]
	movs r3, #0x48
	bl FUN_08020098
	ldr r0, [r6, #0x68]
	bl FUN_08050820
	adds r3, r0, #0
	ldrh r0, [r5, #0xc]
	adds r0, #0x6a
	adds r1, r6, #0
	adds r1, #0x6c
	movs r7, #0
	ldrsh r1, [r1, r7]
	adds r2, r6, #0
	adds r2, #0x6e
	movs r7, #0
	ldrsh r2, [r2, r7]
	str r4, [sp]
	bl FUN_0801F8B8
	ldr r0, [r6, #0x70]
	bl FUN_08050820
	adds r3, r0, #0
	ldrh r0, [r5, #0xc]
	adds r0, #0x7e
	adds r1, r6, #0
	adds r1, #0x74
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r2, r6, #0
	adds r2, #0x76
	movs r7, #0
	ldrsh r2, [r2, r7]
	str r4, [sp]
	bl FUN_0801F8B8
	ldr r0, [r6, #0x78]
	bl FUN_08050820
	adds r3, r0, #0
	ldrh r0, [r5, #0xc]
	adds r0, #0x92
	adds r1, r6, #0
	adds r1, #0x7c
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r2, r6, #0
	adds r2, #0x7e
	movs r7, #0
	ldrsh r2, [r2, r7]
	str r4, [sp]
	bl FUN_0801F8B8
	adds r0, r6, #0
	adds r0, #0x80
	ldr r0, [r0]
	bl FUN_08050820
	adds r3, r0, #0
	ldrh r0, [r5, #0xc]
	adds r0, #0xa6
	adds r1, r6, #0
	adds r1, #0x84
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r2, r6, #0
	adds r2, #0x86
	movs r5, #0
	ldrsh r2, [r2, r5]
	str r4, [sp]
	bl FUN_0801F8B8
_08019B32:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019B3C: .4byte gUnk_030036C0
_08019B40: .4byte ROMREF_0805F630

	thumb_func_start FUN_08019B44
FUN_08019B44: @ 0x08019B44
	push {lr}
	sub sp, #4
	ldr r2, _08019B74 @ => 0x030042B0
	ldrh r1, [r2, #0xc]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08019B80
	ldr r2, _08019B78 @ => 0x030036C0
	ldr r0, [r2, #4]
	cmp r0, #0
	bne _08019BEE
	adds r0, r2, #0
	adds r0, #0x94
	ldrb r0, [r0]
	cmp r0, #0
	bne _08019BEE
	ldr r0, _08019B7C @ => 0x03004720
	movs r1, #3
	str r1, [r0, #4]
	movs r0, #1
	str r0, [r2, #0x18]
	b _08019BEE
	.align 2, 0
_08019B74: .4byte gUnk_030042B0
_08019B78: .4byte gUnk_030036C0
_08019B7C: .4byte gUnk_03004720
_08019B80:
	movs r0, #0xc0
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08019BEE
	ldr r1, _08019BAC @ => 0x030036C0
	ldr r0, [r1, #4]
	str r0, [r1, #8]
	ldr r0, _08019BB0 @ => 0x03004720
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _08019BB4
	adds r0, r1, #4
	ldrh r1, [r2, #6]
	str r1, [sp]
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl FUN_08024BD8
	b _08019BC4
	.align 2, 0
_08019BAC: .4byte gUnk_030036C0
_08019BB0: .4byte gUnk_03004720
_08019BB4:
	adds r0, r1, #4
	ldrh r1, [r2, #6]
	str r1, [sp]
	movs r1, #2
	movs r2, #5
	movs r3, #0
	bl FUN_08024BD8
_08019BC4:
	ldr r0, _08019BE4 @ => 0x030036C0
	ldr r2, [r0, #4]
	ldr r1, [r0, #8]
	cmp r2, r1
	beq _08019BE8
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08019774
	movs r0, #0xb1
	bl FUN_0804DE0C
	b _08019BEE
	.align 2, 0
_08019BE4: .4byte gUnk_030036C0
_08019BE8:
	movs r0, #0xbe
	bl FUN_0804DE0C
_08019BEE:
	add sp, #4
	pop {r0}
	bx r0

	thumb_func_start FUN_08019BF4
FUN_08019BF4: @ 0x08019BF4
	push {r4, lr}
	ldr r1, _08019C0C @ => 0x030036C0
	ldr r0, [r1, #4]
	adds r2, r1, #0
	cmp r0, #5
	bhi _08019CDE
	lsls r0, r0, #2
	ldr r1, _08019C10 @ =_08019C14
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08019C0C: .4byte gUnk_030036C0
_08019C10: .4byte _08019C14
_08019C14: @ jump table
	.4byte _08019CDE @ case 0
	.4byte _08019C2C @ case 1
	.4byte _08019C4C @ case 2
	.4byte _08019C82 @ case 3
	.4byte _08019CAC @ case 4
	.4byte _08019CDE @ case 5
_08019C2C:
	adds r0, r2, #0
	adds r0, #0xa1
	ldrb r0, [r0]
	movs r1, #1
	eors r0, r1
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	adds r1, r2, #0
	adds r1, #0x40
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0xa4
	ldr r1, [r0]
	subs r0, #0x63
	strb r1, [r0]
	b _08019CDE
_08019C4C:
	adds r0, r2, #0
	adds r0, #0xad
	ldrb r0, [r0]
	adds r1, r2, #0
	adds r1, #0x42
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0xb0
	ldr r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r3, r2, #0
	adds r0, r2, #0
	adds r0, #0xb8
	ldr r0, [r0]
	cmp r0, #0
	beq _08019C74
	adds r0, r2, #0
	adds r0, #0xb4
	b _08019C78
_08019C74:
	adds r0, r2, #0
	adds r0, #0xdc
_08019C78:
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x4a
	strb r1, [r0]
	b _08019CDE
_08019C82:
	adds r0, r2, #0
	adds r0, #0xbd
	ldrb r1, [r0]
	subs r0, #0x79
	strb r1, [r0]
	adds r0, #0x80
	ldr r0, [r0]
	adds r1, r2, #0
	adds r1, #0x45
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0xc8
	ldr r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0xc0
	ldr r1, [r0]
	subs r0, #0x79
	strb r1, [r0]
	b _08019CDE
_08019CAC:
	adds r0, r2, #0
	adds r0, #0xd6
	ldrb r1, [r0]
	subs r0, #0x8e
	strb r1, [r0]
	adds r0, #0x90
	ldr r0, [r0]
	adds r1, r2, #0
	adds r1, #0x49
	strb r0, [r1]
	adds r1, r2, #0
	adds r0, r1, #0
	adds r0, #0xb8
	ldr r0, [r0]
	cmp r0, #0
	beq _08019CD2
	adds r0, r1, #0
	adds r0, #0xb4
	b _08019CD6
_08019CD2:
	adds r0, r1, #0
	adds r0, #0xdc
_08019CD6:
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x4a
	strb r2, [r0]
_08019CDE:
	ldr r4, _08019D0C @ => 0x03003700
	adds r0, r4, #0
	movs r1, #1
	movs r2, #2
	bl FUN_08028E14
	ldr r0, _08019D10 @ => 0x030036B0
	ldr r0, [r0]
	adds r1, r4, #0
	movs r2, #1
	movs r3, #2
	bl FUN_08028DFC
	ldr r0, _08019D14 @ => 0x030037A8
	ldr r0, [r0]
	adds r1, r4, #0
	movs r2, #1
	movs r3, #2
	bl FUN_08028E08
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08019D0C: .4byte gUnk_03003700
_08019D10: .4byte gUnk_030036B0
_08019D14: .4byte gUnk_030037A8

	thumb_func_start FUN_08019D18
FUN_08019D18: @ 0x08019D18
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08019D58 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r7, #1
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08019D4E
	movs r0, #0
	bl FUN_0800C5FC
	movs r5, #5
	movs r6, #0
	movs r0, #2
	mov r8, r0
	ldr r4, _08019D5C @ => 0x03004720
	movs r0, #0xb1
	bl FUN_0804DE0C
	ldr r0, _08019D60 @ => 0x030036C0
	str r7, [r0, #0x10]
	str r5, [r0, #8]
	str r6, [r0, #4]
	mov r0, r8
	str r0, [r4, #4]
_08019D4E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019D58: .4byte gUnk_030042B0
_08019D5C: .4byte gUnk_03004720
_08019D60: .4byte gUnk_030036C0

	thumb_func_start FUN_08019D64
FUN_08019D64: @ 0x08019D64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08019DF4 @ => 0x030036C0
	mov ip, r0
	movs r4, #0
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	str r4, [r0, #0x18]
	ldr r0, _08019DF8 @ => 0x03004720
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _08019DFC
	mov r0, ip
	adds r0, #0xa0
	strb r4, [r0]
	adds r0, #1
	movs r1, #1
	strb r1, [r0]
	adds r0, #3
	str r4, [r0]
	adds r0, #4
	strb r4, [r0]
	adds r0, #4
	strb r4, [r0]
	adds r0, #2
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	strb r4, [r0]
	adds r0, #2
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	strb r4, [r0]
	adds r0, #2
	strb r4, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	strb r1, [r0]
	adds r0, #2
	strb r4, [r0]
	adds r0, #2
	str r4, [r0]
	subs r0, #3
	strb r1, [r0]
	b _08019F7E
	.align 2, 0
_08019DF4: .4byte gUnk_030036C0
_08019DF8: .4byte gUnk_03004720
_08019DFC:
	ldr r5, _08019F8C @ => 0x03003DF0
	ldrb r2, [r5, #0x1c]
	mov r0, ip
	adds r0, #0x40
	strb r2, [r0]
	ldrb r0, [r5, #0x1d]
	movs r1, #0x41
	add r1, ip
	mov sb, r1
	strb r0, [r1]
	ldrb r3, [r5, #0x1e]
	ldr r7, _08019F90 @ => 0x03003702
	strb r3, [r7]
	ldrb r0, [r5, #0x1f]
	ldr r1, _08019F94 @ => 0x03003703
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r6, [r0]
	mov r0, ip
	adds r0, #0x44
	strb r6, [r0]
	adds r0, r5, #0
	adds r0, #0x21
	ldrb r0, [r0]
	ldr r7, _08019F98 @ => 0x03003705
	strb r0, [r7]
	adds r0, r5, #0
	adds r0, #0x22
	ldrb r0, [r0]
	ldr r1, _08019F9C @ => 0x03003706
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x23
	ldrb r0, [r0]
	ldr r7, _08019FA0 @ => 0x03003707
	strb r0, [r7]
	adds r0, r5, #0
	adds r0, #0x24
	ldrb r0, [r0]
	mov sl, r0
	mov r0, ip
	adds r0, #0x48
	mov r1, sl
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x25
	ldrb r0, [r0]
	ldr r7, _08019FA4 @ => 0x03003709
	strb r0, [r7]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r0, [r0]
	ldr r1, _08019FA8 @ => 0x0300370A
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x98
	movs r7, #1
	mov r8, r7
	mov r1, r8
	str r1, [r0]
	adds r0, #8
	strb r4, [r0]
	mov r1, ip
	adds r1, #0xa4
	mov r7, sb
	ldrb r0, [r7]
	str r0, [r1]
	mov r0, ip
	adds r0, #0xa8
	strb r4, [r0]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r0, r8
	eors r2, r0
	rsbs r2, r2, #0
	lsrs r2, r2, #0x1f
	mov r0, ip
	adds r0, #0xa1
	strb r2, [r0]
	adds r0, #0xb
	strb r4, [r0]
	adds r0, #1
	strb r3, [r0]
	ldr r1, _08019F90 @ => 0x03003702
	ldrb r0, [r1]
	mov r2, r8
	ands r0, r2
	mov r1, ip
	adds r1, #0xae
	strb r0, [r1]
	movs r1, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	cmp r3, #1
	bls _08019EBE
	movs r1, #1
_08019EBE:
	mov r0, ip
	adds r0, #0xaf
	strb r1, [r0]
	mov r1, ip
	adds r1, #0xb0
	ldr r7, _08019F94 @ => 0x03003703
	ldrb r0, [r7]
	str r0, [r1]
	adds r1, #4
	ldr r2, _08019FA8 @ => 0x0300370A
	ldrb r0, [r2]
	str r0, [r1]
	adds r1, #4
	movs r0, #0
	ldrb r7, [r2]
	cmp r3, #3
	bne _08019EE2
	movs r0, #1
_08019EE2:
	str r0, [r1]
	mov r0, ip
	adds r0, #0xbc
	strb r4, [r0]
	adds r0, #1
	strb r6, [r0]
	adds r1, r6, #0
	lsls r0, r1, #0x18
	lsrs r2, r0, #0x18
	adds r0, r1, #0
	cmp r2, #2
	bls _08019EFC
	subs r1, r0, #3
_08019EFC:
	mov r0, ip
	adds r0, #0xbe
	strb r1, [r0]
	movs r1, #0
	cmp r2, #2
	bls _08019F0A
	movs r1, #1
_08019F0A:
	mov r0, ip
	adds r0, #0xbf
	strb r1, [r0]
	mov r1, ip
	adds r1, #0xc0
	ldr r3, _08019FA0 @ => 0x03003707
	ldrb r0, [r3]
	str r0, [r1]
	adds r1, #4
	ldr r3, _08019F98 @ => 0x03003705
	ldrb r0, [r3]
	str r0, [r1]
	adds r1, #4
	ldr r3, _08019F9C @ => 0x03003706
	ldrb r0, [r3]
	str r0, [r1]
	adds r1, #4
	movs r0, #0
	cmp r2, #1
	bls _08019F34
	movs r0, #1
_08019F34:
	str r0, [r1]
	mov r1, ip
	adds r1, #0xd0
	movs r0, #0
	cmp r2, #5
	bne _08019F42
	movs r0, #1
_08019F42:
	str r0, [r1]
	mov r0, ip
	adds r0, #0xd4
	strb r4, [r0]
	adds r0, #2
	mov r1, sl
	strb r1, [r0]
	adds r0, #1
	mov r2, r8
	strb r2, [r0]
	mov r1, ip
	adds r1, #0xd8
	ldr r3, _08019FA4 @ => 0x03003709
	ldrb r0, [r3]
	str r0, [r1]
	mov r0, ip
	adds r0, #0xdc
	str r7, [r0]
	adds r0, #4
	strb r2, [r0]
	adds r0, #2
	strb r4, [r0]
	adds r1, #0xc
	adds r0, r5, #0
	adds r0, #0x54
	ldrb r0, [r0]
	str r0, [r1]
	mov r0, ip
	adds r0, #0xe1
	strb r2, [r0]
_08019F7E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019F8C: .4byte gUnk_03003DF0
_08019F90: .4byte gUnk_03003702
_08019F94: .4byte gUnk_03003703
_08019F98: .4byte gUnk_03003705
_08019F9C: .4byte gUnk_03003706
_08019FA0: .4byte gUnk_03003707
_08019FA4: .4byte gUnk_03003709
_08019FA8: .4byte gUnk_0300370A

	thumb_func_start CreateASim_Terminate
CreateASim_Terminate: @ 0x08019FAC
	push {r4, lr}
	ldr r0, _08019FE4 @ => FUN_08025038
	bl FUN_08024F40
	movs r0, #0x3f
	movs r1, #0
	bl FUN_0804582C
	bl FUN_0800CB20
	bl FUN_08015834
	ldr r0, _08019FE8 @ => 0x03002C40
	bl FUN_08000BF8
	movs r4, #0
_08019FCC:
	adds r0, r4, #0
	bl FUN_0802D860
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x15
	bls _08019FCC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08019FE4: .4byte FUN_08025038
_08019FE8: .4byte gUnk_03002C40
