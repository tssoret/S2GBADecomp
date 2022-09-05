.include "asm/constants.s"
.include "asm/macros.s"
.include "data/lists/sounds.inc"

.syntax unified

	thumb_func_start CreditsMenu_Init
CreditsMenu_Init: @ 0x0801A288
	push {r4, r5, r6, r7, lr}
	sub sp, #0x20
	movs r0, SOUNDTRACK_CREDITS
	bl FUN_0804DE84
	movs r0, #0
	bl FUN_0800C558
	movs r0, #0x80
	lsls r0, r0, #5
	bl FUN_0800C5EC
	ldr r0, _0801A368 @ => 0x0805F938
	ldr r1, [r0]
	movs r0, #2
	bl FUN_0800C418
	ldr r0, _0801A36C @ => 0x0805F93C
	ldr r4, [r0]
	movs r0, #1
	adds r1, r4, #0
	bl FUN_0800C418
	movs r0, #2
	bl FUN_0800C5FC
	movs r0, #1
	bl FUN_0800C5FC
	adds r0, r4, #0
	bl FUN_0801FE58
	add r0, sp, #0x18
	movs r5, #0
	strh r5, [r0]
	ldr r4, _0801A370 @ => 0x03001B08
	ldr r2, _0801A374 @ => 0x0100000C
	adds r1, r4, #0
	bl SVC_CpuSet
	movs r2, #0
	movs r0, #0x78
	strh r0, [r4, #8]
	movs r0, #0xa0
	strh r0, [r4, #0xa]
	strb r5, [r4, #0x10]
	ldr r0, _0801A378 @ => 0x00000AE4
	str r0, [r4, #0x14]
	ldr r1, _0801A37C @ => 0x03004720
	adds r0, #2
	str r0, [r1, #0xc]
	str r2, [r1, #0x14]
	movs r0, #2
	str r0, [r1, #4]
	movs r0, #0x10
	str r0, [r1, #0x18]
	movs r6, #0
	movs r7, #0
	ldr r2, _0801A380 @ => 0x08CD7968
	movs r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0xe0
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	str r7, [sp, #0x10]
	adds r0, #0x20
	str r0, [sp, #0x14]
	add r0, sp, #0x1c
	movs r1, #2
	movs r3, #1
	bl FUN_0800D83C
	movs r0, #1
	str r0, [sp]
	movs r1, #2
	movs r2, #6
	movs r3, #6
	bl FUN_0802147C
	movs r0, #1
	movs r1, #2
	movs r2, #6
	movs r3, #6
	bl FUN_08021428
	bl FUN_0801A804
	bl FUN_0801A808
	movs r0, #0
	movs r1, #0
	bl FUN_08045594
	movs r0, #0x3f
	movs r1, #0
	bl FUN_080457F4
	movs r0, #2
	movs r1, #4
	bl FUN_08045594
	movs r0, #0
	movs r1, #0x10
	bl FUN_080455AC
	bl FUN_0801A570
	add sp, #0x20
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801A368: .4byte ROMREF_0805F938
_0801A36C: .4byte ROMREF_0805F93C
_0801A370: .4byte gUnk_03001B08
_0801A374: .4byte 0x0100000C
_0801A378: .4byte 0x00000AE4
_0801A37C: .4byte gUnk_03004720
_0801A380: .4byte ROMREF_08CD7968

	thumb_func_start CreditsMenu_Handler
CreditsMenu_Handler: @ 0x0801A384
	push {lr}
	ldr r0, _0801A394 @ => 0x03004720
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _0801A398
	cmp r0, #1
	beq _0801A3DE
	b _0801A402
	.align 2, 0
_0801A394: .4byte gUnk_03004720
_0801A398:
	ldr r0, _0801A3AC @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801A3B0
	bl FUN_0801A694
	b _0801A3D8
	.align 2, 0
_0801A3AC: .4byte gUnk_030042B0
_0801A3B0:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801A3BE
	bl FUN_0801A698
	b _0801A3D8
_0801A3BE:
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0801A3CC
	bl FUN_0801A6A8
	b _0801A3D8
_0801A3CC:
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0801A3D8
	bl FUN_0801A6AC
_0801A3D8:
	bl FUN_0801A408
	b _0801A402
_0801A3DE:
	ldr r0, _0801A3F4 @ => 0x03004750
	ldr r0, [r0]
	cmp r0, #5
	bne _0801A3F8
	movs r0, #5
	movs r1, #2
	movs r2, #0
	bl FUN_0802CED4
	b _0801A402
	.align 2, 0
_0801A3F4: .4byte gUnk_03004750
_0801A3F8:
	movs r0, #0x1d
	movs r1, #0
	movs r2, #7
	bl FUN_0802CED4
_0801A402:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0801A408
FUN_0801A408: @ 0x0801A408
	push {lr}
	ldr r0, _0801A420 @ => 0x03004720
	ldr r1, [r0, #4]
	adds r2, r0, #0
	cmp r1, #4
	bhi _0801A4AC
	lsls r0, r1, #2
	ldr r1, _0801A424 @ =_0801A428
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801A420: .4byte gUnk_03004720
_0801A424: .4byte _0801A428
_0801A428: @ jump table
	.4byte _0801A478 @ case 0
	.4byte _0801A43C @ case 1
	.4byte _0801A470 @ case 2
	.4byte _0801A4A6 @ case 3
	.4byte _0801A4AC @ case 4
_0801A43C:
	ldr r1, _0801A464 @ => 0x03001B08
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bne _0801A456
	ldr r0, [r1]
	cmp r0, #0
	beq _0801A452
	ldr r1, [r0, #0x1c]
	ldr r0, _0801A468 @ => 0x009FFFFF
	cmp r1, r0
	bgt _0801A456
_0801A452:
	bl FUN_0801A4B0
_0801A456:
	ldr r1, _0801A464 @ => 0x03001B08
	ldr r2, _0801A46C @ => 0x0000FFFF
	adds r0, r2, #0
	ldrh r2, [r1, #0xa]
	adds r0, r0, r2
	strh r0, [r1, #0xa]
	b _0801A4AC
	.align 2, 0
_0801A464: .4byte gUnk_03001B08
_0801A468: .4byte 0x009FFFFF
_0801A46C: .4byte 0x0000FFFF
_0801A470:
	movs r0, #0
	bl FUN_0801A8AC
	b _0801A4AC
_0801A478:
	ldr r0, [r2, #0x18]
	subs r0, #1
	str r0, [r2, #0x18]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0801A4AC
	ldr r1, _0801A49C @ => 0x03001B08
	ldrb r0, [r1, #0x10]
	adds r0, #1
	strb r0, [r1, #0x10]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1c
	bne _0801A4A0
	bl FUN_0801A84C
	b _0801A4AC
	.align 2, 0
_0801A49C: .4byte gUnk_03001B08
_0801A4A0:
	bl FUN_0801A89C
	b _0801A4AC
_0801A4A6:
	movs r0, #1
	bl FUN_0801A8AC
_0801A4AC:
	pop {r0}
	bx r0

	thumb_func_start FUN_0801A4B0
FUN_0801A4B0: @ 0x0801A4B0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r7, _0801A510 @ => 0x03004720
	ldr r0, [r7, #0xc]
	bl FUN_08050820
	str r0, [sp]
	bl FUN_0801A910
	adds r6, r0, #0
	ldr r1, [sp]
	ldrb r0, [r1]
	cmp r0, #0x5e
	bne _0801A4D0
	adds r0, r1, #2
	str r0, [sp]
_0801A4D0:
	movs r0, #1
	cmp r6, #1
	bne _0801A4D8
	movs r0, #3
_0801A4D8:
	movs r1, #1
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, [sp]
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801A53A
	mov r0, sp
	bl FUN_08050940
	adds r4, r0, #0
	ldr r5, _0801A514 @ => 0x03001B08
	movs r0, #8
	ldrsh r1, [r5, r0]
	movs r0, #0xa
	ldrsh r2, [r5, r0]
	adds r0, r4, #0
	bl FUN_08050BDC
	ldr r0, _0801A518 @ => 0xFFFF0000
	str r0, [r4, #0x2c]
	cmp r6, #0
	bne _0801A520
	movs r0, #1
	str r0, [r5, #0xc]
	ldr r0, _0801A51C @ => FUN_0801A774
	b _0801A534
	.align 2, 0
_0801A510: .4byte gUnk_03004720
_0801A514: .4byte gUnk_03001B08
_0801A518: .4byte 0xFFFF0000
_0801A51C: .4byte FUN_0801A774
_0801A520:
	cmp r6, #1
	bne _0801A52C
	ldr r0, _0801A528 @ => FUN_0801A70C
	b _0801A534
	.align 2, 0
_0801A528: .4byte FUN_0801A70C
_0801A52C:
	ldr r0, [r7, #4]
	cmp r0, #1
	bne _0801A536
	ldr r0, _0801A560 @ => FUN_0801A6D0
_0801A534:
	str r0, [r4, #0x50]
_0801A536:
	ldr r0, _0801A564 @ => 0x03001B08
	str r4, [r0]
_0801A53A:
	ldr r1, _0801A564 @ => 0x03001B08
	ldrh r0, [r1, #0xa]
	adds r0, #0xc
	strh r0, [r1, #0xa]
	ldr r2, _0801A568 @ => 0x03004720
	ldr r0, [r2, #0xc]
	adds r0, #1
	str r0, [r2, #0xc]
	ldr r1, _0801A56C @ => 0x00000D86
	cmp r0, r1
	bne _0801A558
	movs r0, #1
	str r0, [r2, #0x14]
	movs r0, #4
	str r0, [r2, #4]
_0801A558:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801A560: .4byte FUN_0801A6D0
_0801A564: .4byte gUnk_03001B08
_0801A568: .4byte gUnk_03004720
_0801A56C: .4byte 0x00000D86

	thumb_func_start FUN_0801A570
FUN_0801A570: @ 0x0801A570
	push {r4, r5, lr}
	sub sp, #0xc
	bl FUN_0801A6B0
	ldr r0, _0801A5B0 @ => 0x0805F93C
	ldr r0, [r0]
	bl FUN_0801FE58
	ldr r0, _0801A5B4 @ => 0x03004720
	ldr r0, [r0, #0xc]
	bl FUN_08050820
	adds r4, r0, #0
	movs r0, #0x28
	str r0, [sp, #8]
	movs r5, #0xab
_0801A590:
	adds r0, r4, #0
	bl FUN_0801A910
	adds r1, r0, #0
	ldrb r0, [r4]
	cmp r0, #0x5e
	bne _0801A5A0
	adds r4, #2
_0801A5A0:
	adds r0, r1, #1
	cmp r0, #5
	bhi _0801A658
	lsls r0, r0, #2
	ldr r1, _0801A5B8 @ =_0801A5BC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801A5B0: .4byte ROMREF_0805F93C
_0801A5B4: .4byte gUnk_03004720
_0801A5B8: .4byte _0801A5BC
_0801A5BC: @ jump table
	.4byte _0801A628 @ case 0
	.4byte _0801A600 @ case 1
	.4byte _0801A5D4 @ case 2
	.4byte _0801A600 @ case 3
	.4byte _0801A650 @ case 4
	.4byte _0801A628 @ case 5
_0801A5D4:
	ldr r2, _0801A5F8 @ => 0x03001B08
	ldr r1, _0801A5FC @ => 0x03004720
	ldr r0, [r1, #0xc]
	str r0, [r2, #0x14]
	adds r5, r1, #0
_0801A5DE:
	ldr r0, [r5, #0xc]
	adds r0, #1
	str r0, [r5, #0xc]
	bl FUN_08050820
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #0x5e
	bne _0801A5DE
	bl FUN_0801A570
	b _0801A66C
	.align 2, 0
_0801A5F8: .4byte gUnk_03001B08
_0801A5FC: .4byte gUnk_03004720
_0801A600:
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #1
	movs r1, #1
	bl FUN_0801FEA0
	str r4, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x78
	add r2, sp, #8
	movs r3, #0xf0
	bl FUN_080200E8
	adds r5, r0, #0
	ldr r0, [sp, #8]
	adds r0, #8
	str r0, [sp, #8]
	b _0801A658
_0801A628:
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #1
	movs r1, #1
	bl FUN_0801FEA0
	str r4, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x78
	add r2, sp, #8
	movs r3, #0xf0
	bl FUN_080200E8
	adds r5, r0, #0
	ldr r0, [sp, #8]
	adds r0, #2
	str r0, [sp, #8]
	b _0801A658
_0801A650:
	ldr r1, _0801A674 @ => 0x03004720
	ldr r0, [r1, #0xc]
	subs r0, #1
	str r0, [r1, #0xc]
_0801A658:
	ldr r1, _0801A674 @ => 0x03004720
	ldr r0, [r1, #0xc]
	adds r0, #1
	str r0, [r1, #0xc]
	bl FUN_08050820
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #0x5e
	bne _0801A590
_0801A66C:
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A674: .4byte gUnk_03004720

	thumb_func_start CreditsMenu_Terminate
CreditsMenu_Terminate: @ 0x0801A678
	push {lr}
	movs r0, #0x3f
	movs r1, #0
	bl FUN_0804582C
	ldr r0, _0801A690 @ => 0x03002C40
	bl FUN_08000BF8
	bl FUN_0800CB20
	pop {r0}
	bx r0
	.align 2, 0
_0801A690: .4byte gUnk_03002C40
