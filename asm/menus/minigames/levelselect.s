.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start MinigameLevelSelect_Init
MinigameLevelSelect_Init: @ 0x08034CA4
	push {r4, r5, r6, lr}
	ldr r1, _08034CEC @ => 0x03002300
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1, #0x20]
	ldr r4, _08034CF0 @ => 0x03004720
	ldr r0, [r4, #4]
	bl FUN_080383C0
	ldr r2, [r4, #4]
	movs r1, #0
	ldr r6, _08034CF4 @ => 0x03004750
	ldr r0, [r6]
	cmp r0, #1
	bne _08034CC4
	movs r1, #1
_08034CC4:
	adds r0, r2, #0
	bl FUN_08038430
	ldr r5, _08034CF8 @ => 0x030047F0
	str r0, [r5]
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _08034D00
	ldr r0, [r4, #4]
	ldr r1, _08034CFC @ => 0x03004800
	ldr r1, [r1]
	bl FUN_08038458
	adds r1, r0, #0
	ldr r0, [r5]
	cmp r1, r0
	bhs _08034D0A
	str r1, [r5]
	b _08034D0A
	.align 2, 0
_08034CEC: .4byte gUnk_03002300
_08034CF0: .4byte gUnk_03004720
_08034CF4: .4byte gUnk_03004750
_08034CF8: .4byte gUnk_030047F0
_08034CFC: .4byte gUnk_03004800
_08034D00:
	ldr r0, [r6]
	cmp r0, #7
	bne _08034D0A
	movs r0, #4
	str r0, [r5]
_08034D0A:
	ldr r5, _08034D4C @ => 0x03002300
	ldr r0, _08034D50 @ => 0x030047F0
	ldr r0, [r0]
	adds r1, r5, #0
	adds r1, #0x35
	movs r6, #0
	strb r0, [r1]
	ldr r4, _08034D54 @ => 0x03004720
	ldr r0, [r4, #4]
	ldr r2, _08034D58 @ => 0x0000074D
	adds r1, r0, r2
	movs r2, #0
	bl FUN_08034D60
	bl FUN_0804E0F8
	movs r0, #0x16
	bl FUN_0804E120
	movs r0, #0x3f
	movs r1, #0
	bl FUN_080457F4
	str r6, [r4, #0x14]
	movs r0, #0x19
	str r0, [r4, #0x18]
	ldr r0, _08034D5C @ => 0x03004750
	ldr r0, [r0]
	adds r5, #0x34
	strb r0, [r5]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08034D4C: .4byte gUnk_03002300
_08034D50: .4byte gUnk_030047F0
_08034D54: .4byte gUnk_03004720
_08034D58: .4byte 0x0000074D
_08034D5C: .4byte gUnk_03004750

	thumb_func_start FUN_08034D60
FUN_08034D60: @ 0x08034D60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	adds r4, r0, #0
	str r1, [sp, #0x30]
	str r2, [sp, #0x34]
	add r1, sp, #0x18
	movs r0, #0
	strh r0, [r1]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _08034EE4 @ => 0x01008000
	add r0, sp, #0x18
	bl SVC_CpuSet
	movs r0, #0
	bl FUN_0805273C
	movs r0, #0
	bl FUN_0800C558
	movs r0, #0x80
	lsls r0, r0, #5
	bl FUN_0800C5EC
	ldr r0, _08034EE8 @ => 0x08068D14
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C418
	ldr r0, _08034EEC @ => 0x08068D18
	ldr r1, [r0]
	movs r0, #2
	bl FUN_0800C418
	ldr r0, _08034EF0 @ => 0x08068D1C
	ldr r1, [r0]
	movs r0, #1
	bl FUN_0800C418
	ldr r0, _08034EF4 @ => 0x08068D20
	ldr r1, [r0]
	movs r0, #0
	bl FUN_0800C418
	movs r0, #0
	bl FUN_0800C4D0
	movs r7, #0
	movs r0, #0
	mov r8, r0
	ldr r2, _08034EF8 @ => 0x00FFFFFF
	str r2, [sp, #0x38]
	mov sb, r0
	ldr r2, _08034EFC @ => 0x08E9B6EC
	movs r5, #0xd0
	str r5, [sp]
	str r5, [sp, #4]
	movs r0, #0x30
	str r0, [sp, #8]
	mov r3, r8
	str r3, [sp, #0xc]
	mov r0, sb
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	add r0, sp, #0x1c
	movs r1, #3
	movs r3, #1
	bl FUN_0800D83C
	movs r2, #0
	str r2, [sp, #0x3c]
	movs r3, #0
	ldr r0, _08034F00 @ => 0x08068D44
	lsls r4, r4, #2
	adds r0, r4, r0
	ldr r2, [r0]
	str r7, [sp]
	str r7, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	str r7, [sp, #0x14]
	add r0, sp, #0x20
	movs r1, #2
	movs r3, #0xef
	bl FUN_0800D83C
	ldr r2, [sp, #0x34]
	cmp r2, #0
	beq _08034E44
	movs r3, #0
	movs r0, #0
	str r0, [sp, #0x44]
	ldr r0, _08034F04 @ => 0x08068D64
	adds r0, r4, r0
	ldr r2, [r0]
	str r7, [sp]
	str r7, [sp, #4]
	str r5, [sp, #8]
	str r3, [sp, #0xc]
	ldr r3, [sp, #0x44]
	str r3, [sp, #0x10]
	movs r0, #6
	str r0, [sp, #0x14]
	add r0, sp, #0x24
	movs r1, #2
	movs r3, #0
	bl FUN_0800D83C
_08034E44:
	movs r0, #0
	movs r1, #0x40
	bl FUN_0800C61C
	movs r1, #6
	ldr r0, _08034F08 @ => 0xFFFF0000
	ands r6, r0
	orrs r6, r1
	movs r1, #0xe0
	lsls r1, r1, #0xc
	ldr r0, _08034F0C @ => 0x0000FFFF
	ands r6, r0
	orrs r6, r1
	movs r4, #0
	ldr r2, _08034F10 @ => 0x08E9CF7C
	movs r0, #0xf0
	str r0, [sp]
	str r7, [sp, #4]
	movs r0, #0x10
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	str r4, [sp, #0x10]
	adds r0, #0xf1
	str r0, [sp, #0x14]
	add r0, sp, #0x28
	movs r1, #0
	movs r3, #0x41
	bl FUN_0800D83C
	movs r0, #1
	movs r1, #2
	movs r2, #6
	movs r3, #6
	bl FUN_08021428
	movs r0, #4
	movs r1, #1
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, [sp, #0x30]
	bl FUN_08050820
	str r0, [sp, #0x2c]
	add r0, sp, #0x2c
	bl FUN_08050940
	ldr r1, [r0, #0xc]
	movs r2, #0x80
	lsls r2, r2, #0xe
	orrs r1, r2
	str r1, [r0, #0xc]
	adds r3, r0, #0
	adds r3, #0xa9
	ldrb r2, [r3]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r3]
	movs r1, #0x78
	movs r2, #0x17
	bl FUN_08050BDC
	ldr r1, _08034F14 @ => 0x05000200
	movs r0, #0xa0
	lsls r0, r0, #0x13
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034EE4: .4byte 0x01008000
_08034EE8: .4byte ROMREF_08068D14
_08034EEC: .4byte ROMREF_08068D18
_08034EF0: .4byte ROMREF_08068D1C
_08034EF4: .4byte ROMREF_08068D20
_08034EF8: .4byte 0x00FFFFFF
_08034EFC: .4byte ROMREF_08E9B6EC
_08034F00: .4byte ROMREF_08068D44
_08034F04: .4byte ROMREF_08068D64
_08034F08: .4byte 0xFFFF0000
_08034F0C: .4byte 0x0000FFFF
_08034F10: .4byte ROMREF_08E9CF7C
_08034F14: .4byte 0x05000200

	thumb_func_start MinigameLevelSelect_Handler
MinigameLevelSelect_Handler: @ 0x08034F18
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x10
	ldr r0, _08034F38 @ => 0x03004720
	ldr r1, [r0, #0x14]
	adds r4, r0, #0
	cmp r1, #4
	bls _08034F2E
	b _0803516A
_08034F2E:
	lsls r0, r1, #2
	ldr r1, _08034F3C @ =_08034F40
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08034F38: .4byte gUnk_03004720
_08034F3C: .4byte _08034F40
_08034F40: @ jump table
	.4byte _08034F54 @ case 0
	.4byte _08034F98 @ case 1
	.4byte _08034FCC @ case 2
	.4byte _08035058 @ case 3
	.4byte _08035144 @ case 4
_08034F54:
	ldr r0, [r4, #0x18]
	subs r2, r0, #1
	str r2, [r4, #0x18]
	cmp r2, #0
	beq _08034F60
	b _0803516A
_08034F60:
	ldr r0, [r4, #0x14]
	adds r0, #1
	str r0, [r4, #0x14]
	movs r0, #1
	str r0, [sp]
	ldr r1, _08034F90 @ => 0x08068D64
	ldr r0, [r4, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #2
	str r0, [sp, #4]
	str r2, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0x10
	movs r1, #0xc0
	movs r2, #5
	movs r3, #0x3c
	bl FUN_08015A00
	ldr r1, _08034F94 @ => 0x03002300
	str r0, [r1, #0x28]
	b _0803516A
	.align 2, 0
_08034F90: .4byte ROMREF_08068D64
_08034F94: .4byte gUnk_03002300
_08034F98:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _08034FA0
	b _0803516A
_08034FA0:
	movs r0, #2
	str r0, [r4, #0x14]
	movs r1, #0xc
	bl FUN_08045594
	movs r0, #0
	movs r1, #0x10
	bl FUN_080455AC
	movs r0, #0
	bl FUN_08035358
	ldr r0, _08034FC8 @ => 0x08068D24
	movs r1, #2
	bl FUN_08051EA8
	bl FUN_08052004
	b _0803516A
	.align 2, 0
_08034FC8: .4byte ROMREF_08068D24
_08034FCC:
	ldr r0, [r4, #0x18]
	adds r0, #2
	str r0, [r4, #0x18]
	cmp r0, #0x10
	beq _08034FD8
	b _0803516A
_08034FD8:
	movs r0, #3
	str r0, [r4, #0x14]
	ldr r0, _0803504C @ => 0x08068D20
	ldr r1, [r0]
	movs r0, #0
	bl FUN_0800C418
	bl FUN_08035184
	ldr r6, _08035050 @ => 0x08068D94
	movs r5, #0
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #0x22
	movs r2, #0x2a
	movs r3, #1
	bl FUN_0802D680
	ldr r4, _08035054 @ => 0x03002300
	str r0, [r4, #0x14]
	movs r1, #0x90
	lsls r1, r1, #1
	mov sb, r1
	add r0, sb
	movs r1, #5
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #0x32
	movs r2, #0x76
	movs r3, #1
	bl FUN_0802D680
	str r0, [r4, #0x18]
	movs r1, #5
	bl FUN_08000E44
	ldr r0, [r4, #0x18]
	add r0, sb
	mov r1, r8
	strh r1, [r0]
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #0xb0
	movs r2, #0x76
	movs r3, #1
	bl FUN_0802D680
	str r0, [r4, #0x1c]
	movs r1, #3
	bl FUN_08000E44
_08035044:
	bl FUN_080352D0
	b _0803516A
	.align 2, 0
_0803504C: .4byte ROMREF_08068D20
_08035050: .4byte ROMREF_08068D94
_08035054: .4byte gUnk_03002300
_08035058:
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _08035068
	ldr r0, _08035064 @ => 0x030042B0
	ldrb r4, [r0, #0x14]
	b _0803506C
	.align 2, 0
_08035064: .4byte gUnk_030042B0
_08035068:
	ldr r0, _08035090 @ => 0x030042B0
	ldrb r4, [r0, #0xc]
_0803506C:
	movs r0, #9
	ands r0, r4
	cmp r0, #0
	beq _080350A8
	ldr r0, _08035094 @ => 0x030047F0
	ldr r1, _08035098 @ => 0x03002300
	adds r1, #0x35
	ldr r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bhi _080350A0
	movs r0, #0xad
	bl FUN_0804DE0C
	ldr r1, _0803509C @ => 0x03004720
	movs r0, #4
	str r0, [r1, #0x14]
	b _0803516A
	.align 2, 0
_08035090: .4byte gUnk_030042B0
_08035094: .4byte gUnk_030047F0
_08035098: .4byte gUnk_03002300
_0803509C: .4byte gUnk_03004720
_080350A0:
	movs r0, #0xbe
	bl FUN_0804DE0C
	b _0803516A
_080350A8:
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _080350CA
	ldr r0, _080350C0 @ => 0x030047F0
	ldr r0, [r0]
	cmp r0, #0
	bne _080350C4
	movs r0, #4
	bl FUN_08035238
	b _080350CA
	.align 2, 0
_080350C0: .4byte gUnk_030047F0
_080350C4:
	subs r0, #1
	bl FUN_08035238
_080350CA:
	movs r0, #0x10
	ands r4, r0
	cmp r4, #0
	beq _080350EE
	ldr r0, _080350E4 @ => 0x030047F0
	ldr r0, [r0]
	cmp r0, #4
	bne _080350E8
	movs r0, #0
	bl FUN_08035238
	b _080350EE
	.align 2, 0
_080350E4: .4byte gUnk_030047F0
_080350E8:
	adds r0, #1
	bl FUN_08035238
_080350EE:
	ldr r0, _0803513C @ => 0x03002300
	ldr r1, [r0, #0x30]
	movs r4, #0x30
	rsbs r4, r4, #0
	adds r3, r0, #0
	cmp r1, r4
	ble _08035044
	ldr r2, _08035140 @ => 0x030042B0
	ldrh r1, [r2, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08035114
	ldr r0, [r3, #0x24]
	subs r0, #2
	str r0, [r3, #0x24]
	cmp r0, r4
	bge _08035114
	str r4, [r3, #0x24]
_08035114:
	ldrh r1, [r2, #8]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803512C
	ldr r0, [r3, #0x24]
	adds r0, #2
	str r0, [r3, #0x24]
	ldr r1, [r3, #0x30]
	cmp r0, r1
	ble _0803512C
	str r1, [r3, #0x24]
_0803512C:
	ldr r2, [r3, #0x24]
	lsls r2, r2, #0x10
	movs r0, #1
	movs r1, #0
	bl FUN_0800CB80
	b _08035044
	.align 2, 0
_0803513C: .4byte gUnk_03002300
_08035140: .4byte gUnk_030042B0
_08035144:
	ldr r0, [r4, #0x18]
	subs r0, #2
	str r0, [r4, #0x18]
	cmp r0, #0
	bne _0803516A
	ldr r0, _08035178 @ => 0x08068D84
	ldr r1, [r4, #4]
	adds r0, r1, r0
	ldrb r0, [r0]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl FUN_0802CEF8
	ldr r2, _0803517C @ => 0x03004770
	ldr r1, _08035180 @ => 0x08068D8C
	ldr r0, [r4, #4]
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [r2, #0x10]
_0803516A:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08035178: .4byte ROMREF_08068D84
_0803517C: .4byte gUnk_03004770
_08035180: .4byte ROMREF_08068D8C

	thumb_func_start FUN_08035184
FUN_08035184: @ 0x08035184
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r4, #0
	ldr r0, _080351DC @ => 0x03002300
	movs r1, #0x35
	adds r1, r1, r0
	mov sl, r1
	movs r1, #0x80
	lsls r1, r1, #0xf
	mov sb, r1
	movs r1, #0x80
	lsls r1, r1, #0x11
	mov r8, r1
	movs r7, #0x80
	lsls r7, r7, #0x12
	movs r6, #0xc0
	lsls r6, r6, #0x12
	adds r5, r0, #0
_080351B0:
	mov r0, sb
	asrs r1, r0, #0x10
	movs r0, #0
	str r0, [sp]
	ldr r0, _080351E0 @ => 0x08068DA4
	movs r2, #0x75
	movs r3, #2
	bl FUN_0802D680
	adds r2, r0, #0
	str r2, [r5]
	mov r1, sl
	ldrb r1, [r1]
	cmp r4, r1
	bhi _080351EC
	ldr r0, _080351E4 @ => 0x030047F0
	ldr r0, [r0]
	cmp r4, r0
	bne _080351E8
	lsrs r1, r6, #0x18
	b _080351F8
	.align 2, 0
_080351DC: .4byte gUnk_03002300
_080351E0: .4byte ROMREF_08068DA4
_080351E4: .4byte gUnk_030047F0
_080351E8:
	lsrs r1, r7, #0x18
	b _080351F8
_080351EC:
	ldr r0, _08035200 @ => 0x030047F0
	ldr r0, [r0]
	cmp r4, r0
	bne _08035204
	mov r0, r8
	lsrs r1, r0, #0x18
_080351F8:
	adds r0, r2, #0
	bl FUN_08000E44
	b _0803520E
	.align 2, 0
_08035200: .4byte gUnk_030047F0
_08035204:
	lsls r1, r4, #0x1a
	lsrs r1, r1, #0x18
	adds r0, r2, #0
	bl FUN_08000E44
_0803520E:
	movs r1, #0xc0
	lsls r1, r1, #0xd
	add sb, r1
	movs r0, #0x80
	lsls r0, r0, #0x13
	add r8, r0
	adds r7, r7, r0
	adds r6, r6, r0
	adds r5, #4
	adds r4, #1
	cmp r4, #4
	bls _080351B0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08035238
FUN_08035238: @ 0x08035238
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0803524C @ => 0x030047F0
	ldr r0, [r5]
	cmp r4, r0
	bne _08035250
	movs r0, #0xbe
	bl FUN_0804DE0C
	b _080352CA
	.align 2, 0
_0803524C: .4byte gUnk_030047F0
_08035250:
	movs r0, #0xb2
	bl FUN_0804DE0C
	ldr r2, _08035278 @ => 0x03002300
	adds r0, r2, #0
	adds r0, #0x35
	ldr r1, [r5]
	ldrb r0, [r0]
	cmp r1, r0
	bhi _0803527C
	lsls r1, r1, #2
	adds r0, r1, r2
	ldr r0, [r0]
	adds r1, #2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08000E44
	b _0803528A
	.align 2, 0
_08035278: .4byte gUnk_03002300
_0803527C:
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x18
	bl FUN_08000E44
_0803528A:
	ldr r0, _080352AC @ => 0x030047F0
	str r4, [r0]
	ldr r2, _080352B0 @ => 0x03002300
	adds r0, r2, #0
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r4, r0
	bhi _080352B4
	lsls r1, r4, #2
	adds r0, r1, r2
	ldr r0, [r0]
	adds r1, #3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08000E44
	b _080352C4
	.align 2, 0
_080352AC: .4byte gUnk_030047F0
_080352B0: .4byte gUnk_03002300
_080352B4:
	lsls r1, r4, #2
	adds r0, r1, r2
	ldr r0, [r0]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08000E44
_080352C4:
	movs r0, #1
	bl FUN_08035358
_080352CA:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_080352D0
FUN_080352D0: @ 0x080352D0
	push {lr}
	ldr r1, _080352EC @ => 0x03002300
	ldr r2, [r1, #0x30]
	movs r3, #0x30
	rsbs r3, r3, #0
	cmp r2, r3
	bgt _080352F0
	ldr r0, [r1, #0x14]
	ldr r1, [r0, #0xc]
	movs r2, #2
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #0xc]
	b _08035354
	.align 2, 0
_080352EC: .4byte gUnk_03002300
_080352F0:
	ldr r0, [r1, #0x24]
	cmp r0, r3
	bne _08035300
	ldr r0, [r1, #0x14]
	movs r1, #0
	bl FUN_08000E44
	b _08035316
_08035300:
	cmp r0, r2
	bne _0803530E
	ldr r0, [r1, #0x14]
	movs r1, #2
	bl FUN_08000E44
	b _08035316
_0803530E:
	ldr r0, [r1, #0x14]
	movs r1, #1
	bl FUN_08000E44
_08035316:
	ldr r3, _0803534C @ => 0x03002300
	ldr r1, [r3, #0x14]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	ldr r0, [r3, #0x14]
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0
	bne _08035354
	movs r0, #5
	strh r0, [r1]
	ldr r2, [r3, #0x14]
	ldr r1, [r2, #0xc]
	movs r3, #1
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _08035350
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	b _08035352
	.align 2, 0
_0803534C: .4byte gUnk_03002300
_08035350:
	orrs r1, r3
_08035352:
	str r1, [r2, #0xc]
_08035354:
	pop {r0}
	bx r0

	thumb_func_start FUN_08035358
FUN_08035358: @ 0x08035358
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	mov sb, r0
	ldr r1, _080353EC @ => 0x08068DB4
	add r0, sp, #8
	movs r2, #6
	bl memcpy
	ldr r4, _080353F0 @ => 0x03002300
	ldr r7, _080353F4 @ => 0x030047F0
	ldr r2, [r4, #0x20]
	ldr r0, [r7]
	cmp r2, r0
	bne _0803537C
	b _080354F6
_0803537C:
	adds r6, r4, #0
	adds r6, #0x35
	ldrb r1, [r6]
	cmp r2, r1
	bhi _0803538C
	cmp r0, r1
	bhi _0803538C
	b _080354F6
_0803538C:
	str r0, [r4, #0x20]
	movs r0, #1
	bl FUN_0800C5FC
	movs r2, #0x30
	rsbs r2, r2, #0
	str r2, [r4, #0x24]
	lsls r2, r2, #0x10
	movs r0, #1
	movs r1, #0
	bl FUN_0800CB80
	ldr r0, _080353F8 @ => 0x08068D1C
	ldr r0, [r0]
	bl FUN_0801FE58
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #3
	movs r1, #0
	bl FUN_0801FEA0
	bl FUN_080203E0
	subs r0, #4
	bl FUN_0801FEE8
	movs r5, #0
	str r5, [sp, #0x10]
	ldr r0, [r7]
	ldrb r6, [r6]
	cmp r0, r6
	bhi _08035404
	ldr r0, _080353FC @ => 0x03004720
	ldr r0, [r0, #4]
	ldr r1, _08035400 @ => 0x00000755
	adds r0, r0, r1
	bl FUN_08050820
	add r2, sp, #0x10
	str r0, [sp]
	str r5, [sp, #4]
	movs r0, #1
	movs r1, #0x30
	movs r3, #0x90
	bl FUN_080200E8
	b _080354E4
	.align 2, 0
_080353EC: .4byte ROMREF_08068DB4
_080353F0: .4byte gUnk_03002300
_080353F4: .4byte gUnk_030047F0
_080353F8: .4byte ROMREF_08068D1C
_080353FC: .4byte gUnk_03004720
_08035400: .4byte 0x00000755
_08035404:
	ldr r0, _0803546C @ => 0x00000D69
	bl FUN_08050820
	add r4, sp, #0x10
	str r0, [sp]
	str r5, [sp, #4]
	movs r0, #1
	movs r1, #0x30
	adds r2, r4, #0
	movs r3, #0x90
	bl FUN_080200E8
	adds r6, r0, #0
	ldr r0, [sp, #0x10]
	adds r0, #4
	str r0, [sp, #0x10]
	ldr r0, _08035470 @ => 0x03004720
	ldr r3, [r0, #4]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #4
	ldr r0, _08035474 @ => 0x0806996C
	adds r1, r1, r0
	ldr r2, [r7]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r5, r1, r0
	mov r8, r4
	cmp r3, #0
	beq _08035446
	cmp r3, #7
	bne _08035478
_08035446:
	add r4, sp, #8
	ldr r0, [r5]
	movs r1, #0xa
	bl __udivsi3
	adds r0, #0x30
	strb r0, [r4, #3]
	add r4, sp, #8
	ldr r0, [r5]
	movs r1, #0xa
	bl __umodsi3
	adds r0, #0x30
	strb r0, [r4, #4]
	add r0, sp, #8
	bl FUN_08020320
	b _0803547E
	.align 2, 0
_0803546C: .4byte 0x00000D69
_08035470: .4byte gUnk_03004720
_08035474: .4byte ROMREF_0806996C
_08035478:
	ldr r0, [r5]
	bl FUN_080203A8
_0803547E:
	ldr r0, _08035504 @ => 0x00000D6A
	bl FUN_08050820
	mov r4, r8
	str r0, [sp]
	movs r7, #0
	str r7, [sp, #4]
	adds r0, r6, #0
	movs r1, #0x30
	adds r2, r4, #0
	movs r3, #0x90
	bl FUN_080200E8
	adds r6, r0, #0
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _080354C0
	bl FUN_080203A8
	ldr r0, [r5, #4]
	ldr r1, _08035508 @ => 0x00000D6B
	adds r0, r0, r1
	bl FUN_08050820
	str r0, [sp]
	str r7, [sp, #4]
	adds r0, r6, #0
	movs r1, #0x30
	adds r2, r4, #0
	movs r3, #0x90
	bl FUN_080200E8
	adds r6, r0, #0
_080354C0:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _080354E4
	bl FUN_080203A8
	ldr r0, [r5, #0xc]
	ldr r1, _08035508 @ => 0x00000D6B
	adds r0, r0, r1
	bl FUN_08050820
	str r0, [sp]
	str r7, [sp, #4]
	adds r0, r6, #0
	movs r1, #0x30
	mov r2, r8
	movs r3, #0x90
	bl FUN_080200E8
_080354E4:
	ldr r0, [sp, #0x10]
	ldr r1, _0803550C @ => 0x03002300
	subs r0, #0x64
	str r0, [r1, #0x30]
	mov r0, sb
	cmp r0, #0
	beq _080354F6
	bl FUN_080352D0
_080354F6:
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035504: .4byte 0x00000D6A
_08035508: .4byte 0x00000D6B
_0803550C: .4byte gUnk_03002300

	thumb_func_start MinigameLevelSelect_Terminate
MinigameLevelSelect_Terminate: @ 0x08035510
	push {lr}
	movs r0, #1
	bl FUN_0800C4D0
	bl FUN_08052024
	movs r0, #0x3f
	movs r1, #0
	bl FUN_0804582C
	ldr r0, _08035530 @ => 0x03002C40
	bl FUN_08000BF8
	pop {r0}
	bx r0
	.align 2, 0
_08035530: .4byte gUnk_03002C40
