.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start InGame_Init
InGame_Init: @ 0x0802A5EC
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, _0802A628 @ => 0x03004720
	ldr r1, [r0, #4]
	adds r5, r0, #0
	cmp r1, #3
	bne _0802A634
	ldr r4, _0802A62C @ => 0x030042B0
	ldrh r0, [r4, #6]
	movs r1, #0
	bl FUN_08023750
	ldrh r0, [r4, #6]
	bl FUN_080238D4
	movs r2, #0
	str r2, [r5, #4]
	ldr r1, _0802A630 @ => 0x03002048
	ldr r0, [r1, #8]
	cmp r0, #1
	bne _0802A620
	str r2, [r1, #8]
	ldrb r0, [r1, #0xc]
	ldrb r1, [r1, #0xd]
	bl FUN_080099A8
_0802A620:
	movs r0, #0xa
	bl FUN_08024C78
	b _0802A9D8
	.align 2, 0
_0802A628: .4byte gUnk_03004720
_0802A62C: .4byte gUnk_030042B0
_0802A630: .4byte gUnk_03002048
_0802A634:
	cmp r1, #4
	bne _0802A674
	bl FUN_08021320
	bl FUN_0801E0D8
	ldr r1, _0802A7A8 @ => 0x03004228
	strb r0, [r1]
	movs r0, #4
	bl FUN_08051D34
	cmp r0, #1
	bne _0802A670
	ldr r2, _0802A7AC @ => 0x03003DF0
	movs r0, #0xf6
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #8
	strb r0, [r1]
	movs r0, #0xf2
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #0xd7
	lsls r0, r0, #0x12
	str r0, [r1]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, _0802A7B0 @ => 0x02530000
	str r0, [r1]
_0802A670:
	movs r0, #0
	str r0, [r5, #4]
_0802A674:
	ldr r1, _0802A7B4 @ => 0x030043A0
	ldr r0, [r5, #8]
	str r0, [r1]
	ldr r4, _0802A7B8 @ => 0x03006440
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0802A6D2
	bl FUN_0804C050
	ldr r5, _0802A7BC @ => 0x030042B0
	movs r7, #0
	movs r6, #1
	strh r6, [r5, #4]
	strh r7, [r5, #6]
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0xd
	ands r0, r1
	cmp r0, #0
	bne _0802A6AC
	ldr r0, _0802A7C0 @ => 0x03004230
	ldr r1, [r0, #4]
	movs r2, #0x10
	orrs r1, r2
	str r1, [r0, #4]
_0802A6AC:
	ldr r0, [r4]
	ldr r1, _0802A7C4 @ => 0xFFFF7FFF
	ands r0, r1
	str r0, [r4]
	ldr r0, [r4]
	ldr r1, _0802A7C8 @ => 0xFFEFFFFF
	ands r0, r1
	str r0, [r4]
	bl FUN_0804B13C
	bl FUN_08047E10
	strh r6, [r5, #4]
	strh r7, [r5, #6]
	movs r0, #1
	bl FUN_08047D54
	bl FUN_08047C7C
_0802A6D2:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0802A7CC @ => 0x06010000
	ldr r2, _0802A7D0 @ => 0x01004000
	mov r0, sp
	bl SVC_CpuSet
	bl FUN_08024900
	ldr r2, _0802A7D4 @ => 0x03004374
	ldr r0, [r2]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	ldr r2, _0802A7D8 @ => 0x0300317C
	ldr r0, [r2]
	adds r1, #6
	ands r0, r1
	str r0, [r2]
	ldr r0, _0802A7DC @ => FUN_0802B504
	bl FUN_08024F40
	movs r0, #0
	bl FUN_0800C558
	movs r0, #0x80
	lsls r0, r0, #5
	bl FUN_0800C5EC
	movs r0, #0
	str r0, [sp, #4]
	ldr r1, _0802A7E0 @ => 0x040000D4
	add r0, sp, #4
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _0802A7E4 @ => 0x85006000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	bl FUN_0805273C
	bl FUN_0803EDD4
	movs r0, #0
	bl FUN_0803EE14
	movs r0, #1
	bl FUN_0803EE14
	movs r0, #2
	bl FUN_0803EE14
	ldr r0, _0802A7E8 @ => 0x03004720
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0802A798
	movs r1, #0
	ldr r2, _0802A7BC @ => 0x030042B0
	ldr r5, _0802A7EC @ => 0x03004380
	ldrh r0, [r2, #4]
	cmp r1, r0
	bhs _0802A770
	ldr r4, _0802A7C0 @ => 0x03004230
	movs r3, #0
_0802A75A:
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	str r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldrh r0, [r2, #4]
	cmp r1, r0
	blo _0802A75A
_0802A770:
	movs r0, #0
	str r0, [r5]
	ldr r4, _0802A7B4 @ => 0x030043A0
	ldrb r0, [r4]
	bl FUN_0803A80C
	ldr r2, _0802A7F0 @ => 0x080647B8
	ldr r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #8
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08009528
	bl FUN_08043F14
_0802A798:
	bl FUN_08040F58
	ldr r0, _0802A7B4 @ => 0x030043A0
	ldr r1, [r0]
	cmp r1, #0x18
	beq _0802A7F8
	ldr r0, _0802A7F4 @ => 0x03004390
	b _0802A802
	.align 2, 0
_0802A7A8: .4byte gUnk_03004228
_0802A7AC: .4byte gUnk_03003DF0
_0802A7B0: .4byte 0x02530000
_0802A7B4: .4byte gUnk_030043A0
_0802A7B8: .4byte gUnk_03006440
_0802A7BC: .4byte gUnk_030042B0
_0802A7C0: .4byte gUnk_03004230
_0802A7C4: .4byte 0xFFFF7FFF
_0802A7C8: .4byte 0xFFEFFFFF
_0802A7CC: .4byte 0x06010000
_0802A7D0: .4byte 0x01004000
_0802A7D4: .4byte gUnk_03004374
_0802A7D8: .4byte gUnk_0300317C
_0802A7DC: .4byte FUN_0802B504
_0802A7E0: .4byte 0x040000D4
_0802A7E4: .4byte 0x85006000
_0802A7E8: .4byte gUnk_03004720
_0802A7EC: .4byte gUnk_03004380
_0802A7F0: .4byte ROMREF_080647B8
_0802A7F4: .4byte gUnk_03004390
_0802A7F8:
	ldr r0, _0802A82C @ => 0x03004390
	ldr r1, _0802A830 @ => 0x03003DF0
	adds r1, #0x34
	ldrb r1, [r1]
	adds r1, #0x18
_0802A802:
	str r1, [r0]
	ldr r4, _0802A834 @ => 0x030043A0
	ldr r0, [r4]
	bl FUN_0802B544
	ldr r0, _0802A82C @ => 0x03004390
	ldr r0, [r0]
	bl FUN_0802AE74
	ldr r0, _0802A838 @ => 0x03004720
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0802A83C
	ldr r0, [r4]
	bl FUN_0802AFD4
	ldr r0, [r4]
	bl FUN_0803A898
	b _0802A876
	.align 2, 0
_0802A82C: .4byte gUnk_03004390
_0802A830: .4byte gUnk_03003DF0
_0802A834: .4byte gUnk_030043A0
_0802A838: .4byte gUnk_03004720
_0802A83C:
	cmp r0, #2
	bne _0802A876
	bl FUN_08052790
	ldr r0, _0802A858 @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	bne _0802A85C
	bl FUN_08001488
	b _0802A860
	.align 2, 0
_0802A858: .4byte gUnk_03004374
_0802A85C:
	bl FUN_08001568
_0802A860:
	movs r0, #0x80
	bl FUN_080014C4
	bl FUN_08001508
	ldr r0, _0802A93C @ => 0x03004380
	ldr r0, [r0, #0xc]
	bl FUN_0801580C
	bl FUN_08008AC8
_0802A876:
	ldr r4, _0802A940 @ => 0x03003DF0
	adds r0, r4, #0
	bl FUN_080143D0
	ldr r1, _0802A93C @ => 0x03004380
	str r0, [r1, #4]
	bl FUN_0802B440
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl FUN_08015760
	ldr r1, _0802A944 @ => 0x03003630
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802A948 @ => 0x000003F6
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0x21
	bne _0802A8A4
	movs r0, #8
	strb r0, [r1]
_0802A8A4:
	ldrb r0, [r1]
	bl FUN_0804DE84
	adds r0, r4, #0
	adds r0, #0x58
	ldr r1, _0802A94C @ => 0x030043A0
	ldr r1, [r1]
	bl FUN_08025754
	bl FUN_0802B404
	ldr r2, _0802A950 @ => 0x080647B8
	ldr r0, _0802A954 @ => 0x03004390
	ldr r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _0802A8D2
	bl FUN_080154C8
_0802A8D2:
	ldr r4, _0802A958 @ => 0x03004374
	ldr r0, [r4]
	ldr r1, _0802A95C @ => 0xFFEFFFFF
	ands r0, r1
	str r0, [r4]
	bl FUN_08047468
	ldr r0, [r4]
	ldr r1, _0802A960 @ => 0x00040020
	ands r0, r1
	cmp r0, r1
	beq _0802A968
	movs r5, #0
	ldr r0, _0802A964 @ => 0x030042B0
	ldrh r1, [r0, #4]
	cmp r5, r1
	bge _0802A90C
	adds r4, r0, #0
_0802A8F6:
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08023750
	adds r0, r5, #0
	bl FUN_080238D4
	adds r5, #1
	ldrh r0, [r4, #4]
	cmp r5, r0
	blt _0802A8F6
_0802A90C:
	movs r5, #0
	ldr r0, _0802A964 @ => 0x030042B0
	ldrh r1, [r0, #4]
	cmp r5, r1
	bge _0802A932
	adds r6, r0, #0
_0802A918:
	lsls r4, r5, #0x18
	lsrs r4, r4, #0x18
	movs r0, #1
	adds r1, r4, #0
	bl FUN_0804645C
	adds r0, r4, #0
	bl FUN_08010A9C
	adds r5, #1
	ldrh r0, [r6, #4]
	cmp r5, r0
	blt _0802A918
_0802A932:
	bl FUN_08046398
	bl FUN_0801F0B0
	b _0802A978
	.align 2, 0
_0802A93C: .4byte gUnk_03004380
_0802A940: .4byte gUnk_03003DF0
_0802A944: .4byte gUnk_03003630
_0802A948: .4byte 0x000003F6
_0802A94C: .4byte gUnk_030043A0
_0802A950: .4byte ROMREF_080647B8
_0802A954: .4byte gUnk_03004390
_0802A958: .4byte gUnk_03004374
_0802A95C: .4byte 0xFFEFFFFF
_0802A960: .4byte 0x00040020
_0802A964: .4byte gUnk_030042B0
_0802A968:
	ldr r4, _0802A994 @ => 0x030042B0
	ldrh r0, [r4, #6]
	movs r1, #0
	bl FUN_08023750
	ldrh r0, [r4, #6]
	bl FUN_080238D4
_0802A978:
	bl FUN_0801AE94
	bl FUN_0801F474
	ldr r0, _0802A998 @ => 0x03004374
	ldr r0, [r0]
	ldr r1, _0802A99C @ => 0x00040020
	ands r0, r1
	cmp r0, r1
	bne _0802A9A0
	movs r0, #0x3f
	bl FUN_08045864
	b _0802A9C0
	.align 2, 0
_0802A994: .4byte gUnk_030042B0
_0802A998: .4byte gUnk_03004374
_0802A99C: .4byte 0x00040020
_0802A9A0:
	ldr r0, _0802A9B4 @ => 0x03004750
	ldr r0, [r0]
	cmp r0, #0xd
	bne _0802A9B8
	movs r0, #0x3f
	movs r1, #0xc
	bl FUN_080457F4
	b _0802A9C0
	.align 2, 0
_0802A9B4: .4byte gUnk_03004750
_0802A9B8:
	movs r0, #0x3f
	movs r1, #0
	bl FUN_080457F4
_0802A9C0:
	ldr r0, _0802A9E0 @ => 0x03004390
	ldr r0, [r0]
	bl FUN_0802B528
	ldr r2, _0802A9E4 @ => 0x03004374
	ldr r0, [r2]
	ldr r1, _0802A9E8 @ => 0xFFFBFFFF
	ands r0, r1
	str r0, [r2]
	ldr r1, _0802A9EC @ => 0x03004720
	movs r0, #0
	str r0, [r1, #4]
_0802A9D8:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A9E0: .4byte gUnk_03004390
_0802A9E4: .4byte gUnk_03004374
_0802A9E8: .4byte 0xFFFBFFFF
_0802A9EC: .4byte gUnk_03004720

	thumb_func_start InGame_Handler
InGame_Handler: @ 0x0802A9F0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _0802AA2C @ => 0x03004200
	ldr r0, _0802AA30 @ => 0x030042B0
	mov r8, r0
	ldrh r2, [r0, #6]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r7, [r0]
	ldr r6, _0802AA34 @ => 0x03004394
	ldr r5, [r6]
	cmp r5, #0
	beq _0802AA3C
	ldr r4, _0802AA38 @ => 0x0300439C
	ldrb r1, [r4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_0802CED4
	movs r0, #0xb9
	bl FUN_0804DE0C
	movs r0, #0
	str r0, [r6]
	strb r0, [r4]
	b _0802AC5E
	.align 2, 0
_0802AA2C: .4byte gUnk_03004200
_0802AA30: .4byte gUnk_030042B0
_0802AA34: .4byte gUnk_03004394
_0802AA38: .4byte gUnk_0300439C
_0802AA3C:
	ldr r4, _0802AA58 @ => 0x03002048
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _0802AA5C
	bl FUN_08024900
	bl FUN_0800133C
	ldr r0, [r4]
	bl FUN_0801B914
	str r5, [r4, #4]
	b _0802AC5E
	.align 2, 0
_0802AA58: .4byte gUnk_03002048
_0802AA5C:
	ldr r1, _0802AA8C @ => 0x03004230
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #6
	ands r0, r1
	cmp r0, #0
	bne _0802AA76
	bl FUN_0804A810
_0802AA76:
	bl FUN_0802B284
	cmp r0, #1
	bne _0802AA94
	ldr r0, _0802AA90 @ => 0x03004374
	ldr r1, [r0]
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
	b _0802AC5E
	.align 2, 0
_0802AA8C: .4byte gUnk_03004230
_0802AA90: .4byte gUnk_03004374
_0802AA94:
	movs r4, #0
	mov r1, r8
	ldrh r1, [r1, #4]
	cmp r4, r1
	bhs _0802AABE
_0802AA9E:
	movs r0, #0
	adds r1, r4, #0
	bl FUN_0804645C
	bl FUN_0801F0B0
	adds r0, r4, #0
	bl FUN_08010A9C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _0802AB24 @ => 0x030042B0
	ldrh r0, [r0, #4]
	cmp r4, r0
	blo _0802AA9E
_0802AABE:
	bl FUN_0803FE2C
	bl FUN_08013D3C
	ldr r1, _0802AB28 @ => 0x0000011D
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #5
	bne _0802AAD2
	b _0802AC16
_0802AAD2:
	ldr r4, _0802AB2C @ => 0x03004374
	ldr r0, [r4]
	movs r6, #0x80
	lsls r6, r6, #2
	ands r0, r6
	cmp r0, #0
	beq _0802AAE2
	b _0802AC16
_0802AAE2:
	bl FUN_08021780
	cmp r0, #1
	beq _0802AAEC
	b _0802AC16
_0802AAEC:
	ldr r2, _0802AB30 @ => 0x03003460
	ldr r5, _0802AB24 @ => 0x030042B0
	ldrh r1, [r5, #6]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0x1f]
	cmp r0, #1
	bne _0802AB02
	b _0802AC16
_0802AB02:
	ldr r0, [r4]
	movs r1, #0x81
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0802AB10
	b _0802AC16
_0802AB10:
	ldrh r1, [r5, #0xc]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0802AB3C
	ldr r0, _0802AB34 @ => 0x03003DF0
	ldr r1, _0802AB38 @ => 0x000003F7
	adds r0, r0, r1
	ldrb r0, [r0]
	b _0802AB54
	.align 2, 0
_0802AB24: .4byte gUnk_030042B0
_0802AB28: .4byte 0x0000011D
_0802AB2C: .4byte gUnk_03004374
_0802AB30: .4byte gUnk_03003460
_0802AB34: .4byte gUnk_03003DF0
_0802AB38: .4byte 0x000003F7
_0802AB3C:
	ldrh r3, [r5, #0x14]
	movs r4, #4
	adds r0, r4, #0
	ands r0, r3
	cmp r0, #0
	bne _0802AB52
	ldrh r1, [r5, #0x1c]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0802AB60
_0802AB52:
	movs r0, #9
_0802AB54:
	bl FUN_0802CEC4
	movs r0, #0xb9
	bl FUN_0804DE0C
	b _0802AC16
_0802AB60:
	ldr r2, _0802AB94 @ => 0x03003DF0
	ldr r1, _0802AB98 @ => 0x0000036A
	adds r0, r2, r1
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0802ABA0
	adds r0, r6, #0
	ands r0, r3
	cmp r0, #0
	beq _0802ABDC
	ldr r1, _0802AB9C @ => 0x00000404
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _0802ABD4
	bl FUN_08023680
	cmp r0, #1
	bne _0802ABD4
	adds r0, r7, #0
	movs r1, #0x3d
	bl FUN_08001FB0
	b _0802AC16
	.align 2, 0
_0802AB94: .4byte gUnk_03003DF0
_0802AB98: .4byte 0x0000036A
_0802AB9C: .4byte 0x00000404
_0802ABA0:
	adds r0, r6, #0
	ands r0, r3
	cmp r0, #0
	beq _0802ABDC
	ldr r1, _0802ABD0 @ => 0x00000404
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _0802ABD4
	bl FUN_08023680
	cmp r0, #1
	bne _0802ABD4
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _0802ABD4
	adds r0, r7, #0
	movs r1, #0x37
	bl FUN_08001FB0
	b _0802AC16
	.align 2, 0
_0802ABD0: .4byte 0x00000404
_0802ABD4:
	movs r0, #0xbe
	bl FUN_0804DE0C
	b _0802AC16
_0802ABDC:
	ldr r0, _0802AC08 @ => 0x030042B0
	ldrh r1, [r0, #0x14]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802AC16
	ldr r1, _0802AC0C @ => 0x00000404
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _0802AC10
	bl FUN_08023680
	cmp r0, #1
	bne _0802AC10
	movs r0, #0xb9
	bl FUN_0804DE0C
	bl FUN_080216C8
	b _0802AC16
	.align 2, 0
_0802AC08: .4byte gUnk_030042B0
_0802AC0C: .4byte 0x00000404
_0802AC10:
	movs r0, #0xbe
	bl FUN_0804DE0C
_0802AC16:
	movs r4, #0
	ldr r2, _0802AC68 @ => 0x030042B0
	ldrh r0, [r2, #4]
	cmp r4, r0
	bhs _0802AC5E
	ldr r5, _0802AC6C @ => 0x03004230
_0802AC22:
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802AC42
	ldrh r2, [r2, #6]
	cmp r4, r2
	bne _0802AC42
	bl FUN_0802B4C4
	bl FUN_0802B3BC
_0802AC42:
	bl FUN_0802CF4C
	cmp r0, #0
	bne _0802AC50
	adds r0, r4, #0
	bl FUN_080238D4
_0802AC50:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r2, _0802AC68 @ => 0x030042B0
	ldrh r1, [r2, #4]
	cmp r4, r1
	blo _0802AC22
_0802AC5E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802AC68: .4byte gUnk_030042B0
_0802AC6C: .4byte gUnk_03004230

	thumb_func_start InGame_Terminate
InGame_Terminate: @ 0x0802AC70
	push {r4, r5, lr}
	bl FUN_08023B90
	ldr r0, _0802ACA4 @ => 0x03004374
	ldr r3, [r0]
	movs r2, #0xc0
	lsls r2, r2, #3
	ands r2, r3
	cmp r2, #0
	beq _0802AC86
	b _0802ADB0
_0802AC86:
	ldr r0, _0802ACA8 @ => 0x03002048
	ldr r1, _0802ACAC @ => 0x00000371
	str r1, [r0]
	str r2, [r0, #4]
	str r2, [r0, #8]
	strb r2, [r0, #0xc]
	strb r2, [r0, #0xd]
	ldr r0, _0802ACB0 @ => 0x00020020
	ands r3, r0
	cmp r3, r0
	bne _0802ACB4
	movs r0, #0x3f
	bl FUN_080458EC
	b _0802ACCE
	.align 2, 0
_0802ACA4: .4byte gUnk_03004374
_0802ACA8: .4byte gUnk_03002048
_0802ACAC: .4byte 0x00000371
_0802ACB0: .4byte 0x00020020
_0802ACB4:
	bl FUN_0802CEB4
	cmp r0, #0xd
	bne _0802ACC6
	movs r0, #0x3f
	movs r1, #0xc
	bl FUN_0804582C
	b _0802ACCE
_0802ACC6:
	movs r0, #0x3f
	movs r1, #0
	bl FUN_0804582C
_0802ACCE:
	ldr r2, _0802AD1C @ => 0x03004200
	ldr r1, [r2]
	ldrb r0, [r1, #0x12]
	strb r0, [r2, #0xb]
	movs r3, #0x1a
	ldrsh r0, [r1, r3]
	strh r0, [r2, #0xc]
	movs r3, #0x1e
	ldrsh r0, [r1, r3]
	strh r0, [r2, #0xe]
	ldr r0, _0802AD20 @ => 0x03003E48
	ldr r1, _0802AD24 @ => 0x030043A0
	ldr r1, [r1]
	bl FUN_08025800
	bl FUN_0802CEB4
	cmp r0, #5
	beq _0802AD28
	bl FUN_0802CEB4
	cmp r0, #8
	beq _0802AD28
	bl FUN_0802CEB4
	cmp r0, #1
	beq _0802AD28
	bl FUN_0802CEB4
	cmp r0, #0x18
	beq _0802AD28
	bl FUN_0802CEB4
	cmp r0, #0x1d
	beq _0802AD28
	bl FUN_0802B214
	b _0802AD2C
	.align 2, 0
_0802AD1C: .4byte gUnk_03004200
_0802AD20: .4byte gUnk_03003E48
_0802AD24: .4byte gUnk_030043A0
_0802AD28:
	bl FUN_0802B270
_0802AD2C:
	ldr r0, _0802AD70 @ => 0x03004720
	ldr r5, [r0, #4]
	cmp r5, #0
	bne _0802AD84
	bl FUN_0804E070
	bl FUN_08009994
	ldr r0, _0802AD74 @ => 0x03002C40
	bl FUN_08000BF8
	bl FUN_0803D2FC
	bl FUN_0803FDB8
	ldr r1, _0802AD78 @ => 0x03006528
	ldrb r2, [r1, #6]
	movs r0, #0xf7
	ands r0, r2
	ldrb r2, [r1, #6]
	strb r0, [r1, #6]
	ldr r4, _0802AD7C @ => 0x030043A4
	ldr r0, [r4]
	bl FUN_08049F68
	str r5, [r4]
	ldr r4, _0802AD80 @ => 0x03004398
	ldr r0, [r4]
	bl FUN_080496D4
	str r5, [r4]
	bl FUN_0801F270
	b _0802AD8C
	.align 2, 0
_0802AD70: .4byte gUnk_03004720
_0802AD74: .4byte gUnk_03002C40
_0802AD78: .4byte gUnk_03006528
_0802AD7C: .4byte gUnk_030043A4
_0802AD80: .4byte gUnk_03004398
_0802AD84:
	cmp r5, #2
	bne _0802AD8C
	bl FUN_08052790
_0802AD8C:
	bl FUN_0802B514
	bl FUN_0803FE00
	bl FUN_0802B428
	movs r0, #0
	bl FUN_08001580
	bl FUN_08015834
	bl FUN_0800CB20
	ldr r0, _0802ADB8 @ => FUN_08025038
	bl FUN_08024F40
	bl FUN_0803EE3C
_0802ADB0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802ADB8: .4byte FUN_08025038
