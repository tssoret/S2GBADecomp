.include "asm/constants.s"
.include "asm/macros.s"
.include "data/lists/sounds.inc"

.syntax unified

	thumb_func_start MainMenu_Init
MainMenu_Init: @ 0x080510D4
	push {r4, r5, r6, lr}
	sub sp, #8
	movs r0, SOUNDTRACK_DUSTYHOGG_BLUES
	bl FUN_0804DE84
	ldr r2, _080511AC @ => 0x03004374
	ldr r0, [r2]
	ldr r1, _080511B0 @ => 0xFFEFFFFF
	ands r0, r1
	str r0, [r2]
	movs r0, #0
	bl FUN_0800C558
	movs r0, #0
	bl FUN_0805273C
	movs r0, #0x80
	lsls r0, r0, #5
	bl FUN_0800C5EC
	movs r1, #0
	ldr r3, _080511B4 @ => 0x08090118
	ldr r4, _080511B8 @ => 0x030028D0
	adds r2, r4, #0
_08051104:
	adds r0, r1, r3
	ldrb r0, [r0]
	stm r2!, {r0}
	adds r1, #1
	cmp r1, #3
	bls _08051104
	movs r2, #0
	ldr r0, _080511BC @ => 0x03005E20
	adds r1, r0, #0
	adds r1, #0xdc
	ldr r1, [r1]
	adds r3, r0, #0
	ldr r6, _080511C0 @ => 0x03004720
	cmp r1, #0
	bne _0805113E
_08051122:
	adds r2, #1
	cmp r2, #3
	bhi _0805114A
	lsls r0, r2, #2
	adds r1, r3, #0
	adds r1, #0xdc
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08051122
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r0, r0, r3
_0805113E:
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	beq _08051122
	movs r0, #1
	str r0, [r4, #4]
_0805114A:
	adds r4, r6, #0
	movs r5, #0
	str r5, [r4, #0x14]
	ldr r0, [r4, #4]
	cmp r0, #1
	bhi _08051178
	bl FUN_080209F8
	str r5, [r4, #8]
	ldr r1, _080511C4 @ => 0x03004710
	ldr r0, [r4]
	str r0, [r1]
	ldr r2, _080511AC @ => 0x03004374
	ldr r0, [r2]
	ldr r1, _080511C8 @ => 0xFFD8D7C7
	ands r0, r1
	str r0, [r2]
	ldr r0, _080511CC @ => 0x03006440
	str r5, [r0]
	bl FUN_0804C050
	bl FUN_0804B13C
_08051178:
	ldr r0, _080511D0 @ => 0x08090124
	ldr r1, [r0]
	movs r0, #1
	bl FUN_0800C418
	ldr r0, [r6, #4]
	cmp r0, #2
	bne _080511E4
	ldr r0, _080511D4 @ => 0x03005BD0
	ldrh r0, [r0]
	cmp r0, #9
	beq _08051198
	ldr r0, _080511D8 @ => 0x03004750
	ldr r0, [r0]
	cmp r0, #9
	bne _080511E4
_08051198:
	ldr r0, _080511DC @ => 0x0809011C
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C418
	ldr r1, _080511E0 @ => 0x0000013D
	movs r0, #3
	bl FUN_08048284
	b _080511E8
	.align 2, 0
_080511AC: .4byte gUnk_03004374
_080511B0: .4byte 0xFFEFFFFF
_080511B4: .4byte ROMREF_08090118
_080511B8: .4byte gUnk_030028D0
_080511BC: .4byte gUnk_03005E20
_080511C0: .4byte gUnk_03004720
_080511C4: .4byte gUnk_03004710
_080511C8: .4byte 0xFFD8D7C7
_080511CC: .4byte gUnk_03006440
_080511D0: .4byte ROMREF_08090124
_080511D4: .4byte gUnk_03005BD0
_080511D8: .4byte gUnk_03004750
_080511DC: .4byte ROMREF_0809011C
_080511E0: .4byte 0x0000013D
_080511E4:
	bl FUN_08051498
_080511E8:
	ldr r0, _08051290 @ => 0x0809012C
	ldr r4, [r0]
	movs r0, #0
	adds r1, r4, #0
	bl FUN_0800C418
	adds r0, r4, #0
	bl FUN_0801FE58
	movs r0, #0
	movs r1, #0
	bl FUN_0800C61C
	movs r0, #2
	movs r1, #5
	movs r2, #1
	movs r3, #6
	bl FUN_08021428
	ldr r5, _08051294 @ => 0x03004720
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0805123C
	ldr r0, _08051298 @ => 0x0000062A
	bl FUN_08050820
	adds r4, r0, #0
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #1
	movs r1, #1
	bl FUN_0801FEA0
	str r4, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x33
	movs r1, #0xc3
	movs r2, #0x6d
	movs r3, #0x4c
	bl FUN_08020098
_0805123C:
	ldr r0, [r5, #4]
	cmp r0, #1
	bne _0805126C
	movs r0, #2
	str r0, [r5, #0x14]
	movs r0, #8
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0xf
	movs r3, #0x1e
	bl FUN_0800C7A8
	movs r0, #9
	str r0, [sp]
	movs r0, #0
	movs r1, #0x13
	movs r2, #0xb
	movs r3, #0xb
	bl FUN_0800C790
	bl FUN_080513E8
_0805126C:
	ldr r0, [r5, #4]
	cmp r0, #2
	bne _080512C6
	ldr r0, _0805129C @ => 0x03005BD0
	ldrh r0, [r0]
	cmp r0, #9
	beq _08051282
	ldr r0, _080512A0 @ => 0x03004750
	ldr r0, [r0]
	cmp r0, #9
	bne _080512A4
_08051282:
	movs r0, #1
	bl FUN_0800C5FC
	movs r0, #0
	bl FUN_0800C5FC
	b _080512C6
	.align 2, 0
_08051290: .4byte ROMREF_0809012C
_08051294: .4byte gUnk_03004720
_08051298: .4byte 0x0000062A
_0805129C: .4byte gUnk_03005BD0
_080512A0: .4byte gUnk_03004750
_080512A4:
	movs r0, #8
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0xf
	movs r3, #0x1e
	bl FUN_0800C7A8
	movs r0, #9
	str r0, [sp]
	movs r0, #0
	movs r1, #0x13
	movs r2, #0xb
	movs r3, #0xb
	bl FUN_0800C790
_080512C6:
	movs r0, #0x3f
	movs r1, #0
	bl FUN_080457F4
	ldr r1, _080512DC @ => 0x03004720
	movs r0, #0
	str r0, [r1, #8]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080512DC: .4byte gUnk_03004720

	thumb_func_start MainMenu_Handler
MainMenu_Handler: @ 0x080512E0
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, _080512F8 @ => 0x03004720
	ldr r1, [r0, #0x14]
	adds r5, r0, #0
	cmp r1, #4
	bhi _080513D4
	lsls r0, r1, #2
	ldr r1, _080512FC @ =_08051300
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080512F8: .4byte gUnk_03004720
_080512FC: .4byte _08051300
_08051300: @ jump table
	.4byte _08051314 @ case 0
	.4byte _08051360 @ case 1
	.4byte _08051388 @ case 2
	.4byte _080513BE @ case 3
	.4byte _080513C4 @ case 4
_08051314:
	ldr r0, [r5, #4]
	cmp r0, #1
	beq _0805134C
	cmp r0, #1
	blo _08051324
	cmp r0, #2
	beq _0805135A
	b _080513D4
_08051324:
	movs r4, #1
	str r4, [r5, #0x14]
	movs r0, #1
	movs r1, #1
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _08051348 @ => 0x0000062F
	bl FUN_08050820
	adds r3, r0, #0
	str r4, [sp]
	movs r0, #0x83
	movs r1, #0xc4
	movs r2, #0x5f
	bl FUN_0801F8B8
	b _080513D4
	.align 2, 0
_08051348: .4byte 0x0000062F
_0805134C:
	ldr r1, [r5, #8]
	movs r0, #4
	bl FUN_08051744
	movs r0, #2
	str r0, [r5, #0x14]
	b _080513D4
_0805135A:
	bl FUN_0803E5B4
	b _080513D4
_08051360:
	ldr r0, _08051384 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r2, #8
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080513D4
	str r2, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0xf
	movs r3, #0x1e
	bl FUN_0800C7A8
	bl FUN_08051894
	b _080513D4
	.align 2, 0
_08051384: .4byte gUnk_030042B0
_08051388:
	ldr r0, _080513A8 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _080513B0
	ldr r0, _080513AC @ => 0x030028D0
	ldr r1, [r5, #8]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _080513D4
	bl FUN_080515E4
	b _080513D4
	.align 2, 0
_080513A8: .4byte gUnk_030042B0
_080513AC: .4byte gUnk_030028D0
_080513B0:
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _080513D4
	bl FUN_08051698
	b _080513D4
_080513BE:
	bl FUN_0803E6D0
	b _080513D4
_080513C4:
	ldr r0, _080513DC @ => 0x030028E0
	ldr r0, [r0]
	ldr r1, _080513E0 @ => 0x030028E4
	ldr r1, [r1]
	ldr r2, _080513E4 @ => 0x030028E8
	ldr r2, [r2]
	bl FUN_0802CED4
_080513D4:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080513DC: .4byte gUnk_030028E0
_080513E0: .4byte gUnk_030028E4
_080513E4: .4byte gUnk_030028E8

	thumb_func_start FUN_080513E8
FUN_080513E8: @ 0x080513E8
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r1, _08051478 @ => 0x03004720
	movs r0, #2
	str r0, [r1, #0x14]
	movs r1, #0x13
	movs r2, #0xb0
	lsls r2, r2, #0xc
	adds r5, r1, #0
	orrs r5, r2
	ldr r0, _0805147C @ => 0xFFFFFF00
	ands r4, r0
	orrs r4, r1
	movs r1, #0xb0
	lsls r1, r1, #4
	ldr r0, _08051480 @ => 0xFFFF00FF
	ands r4, r0
	orrs r4, r1
	ldr r0, _08051484 @ => 0xFF00FFFF
	ands r4, r0
	orrs r4, r2
	movs r1, #0x90
	lsls r1, r1, #0x14
	ldr r0, _08051488 @ => 0x00FFFFFF
	ands r4, r0
	orrs r4, r1
	ldr r2, _0805148C @ => 0x08CEEB14
	ldr r3, _08051490 @ => 0x00000107
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r4, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x14]
	add r0, sp, #0x18
	movs r1, #1
	bl FUN_0800D83C
	movs r4, #0
_0805143A:
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08051838
	adds r4, #1
	cmp r4, #3
	ble _0805143A
	ldr r0, _08051478 @ => 0x03004720
	ldr r1, [r0, #8]
	movs r0, #4
	bl FUN_08051744
	ldr r0, _08051494 @ => 0x03004790
	movs r3, #2
	rsbs r3, r3, #0
	adds r2, r0, #4
	movs r4, #3
_0805145C:
	ldr r1, [r2]
	cmp r1, #0
	beq _08051468
	ldr r0, [r1, #0xc]
	ands r0, r3
	str r0, [r1, #0xc]
_08051468:
	adds r2, #4
	subs r4, #1
	cmp r4, #0
	bge _0805145C
	add sp, #0x1c
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08051478: .4byte gUnk_03004720
_0805147C: .4byte 0xFFFFFF00
_08051480: .4byte 0xFFFF00FF
_08051484: .4byte 0xFF00FFFF
_08051488: .4byte 0x00FFFFFF
_0805148C: .4byte ROMREF_08CEEB14
_08051490: .4byte 0x00000107
_08051494: .4byte gUnk_03004790

	thumb_func_start FUN_08051498
FUN_08051498: @ 0x08051498
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	ldr r0, _080515B0 @ => 0x08090120
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C418
	movs r0, #0
	mov sb, r0
	movs r4, #0
	ldr r1, _080515B4 @ => 0x00FFFFFF
	str r1, [sp, #0x28]
	ldr r2, _080515B8 @ => 0x08CEF148
	ldr r3, _080515BC @ => 0x0000013D
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x14]
	add r0, sp, #0x18
	movs r1, #3
	bl FUN_0800D83C
	movs r1, #0
	movs r2, #0
	str r2, [sp, #0x30]
	ldr r2, _080515C0 @ => 0x08CF0D68
	mov r3, sb
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0x10]
	str r3, [sp, #0x14]
	add r0, sp, #0x1c
	movs r1, #1
	movs r3, #1
	bl FUN_0800D83C
	ldr r4, _080515C4 @ => 0x08090130
	bl FUN_08050814
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r1, #2
	ldr r2, _080515C8 @ => 0xFFFF0000
	ands r5, r2
	orrs r5, r1
	movs r2, #0xc0
	lsls r2, r2, #0xb
	ldr r3, _080515CC @ => 0x0000FFFF
	ands r5, r3
	orrs r5, r2
	ldr r3, _080515D0 @ => 0xFFFFFF00
	ands r7, r3
	orrs r7, r1
	movs r1, #0xc0
	lsls r1, r1, #3
	ldr r3, _080515D4 @ => 0xFFFF00FF
	ands r7, r3
	orrs r7, r1
	ldr r1, _080515D8 @ => 0xFF00FFFF
	ands r7, r1
	orrs r7, r2
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r2, [sp, #0x28]
	ands r7, r2
	orrs r7, r1
	ldr r2, [r0]
	movs r3, #0x92
	lsls r3, r3, #1
	mov r0, sb
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r7, [sp, #0x10]
	movs r1, #1
	str r1, [sp, #0x14]
	add r0, sp, #0x20
	bl FUN_0800D83C
	movs r0, #0x13
	mov r2, sl
	ldr r3, _080515C8 @ => 0xFFFF0000
	ands r2, r3
	orrs r2, r0
	movs r1, #0xb0
	lsls r1, r1, #0xc
	ldr r3, _080515CC @ => 0x0000FFFF
	ands r2, r3
	orrs r2, r1
	mov sl, r2
	ldr r2, _080515D0 @ => 0xFFFFFF00
	ands r6, r2
	orrs r6, r0
	movs r0, #0xb0
	lsls r0, r0, #4
	ldr r3, _080515D4 @ => 0xFFFF00FF
	ands r6, r3
	orrs r6, r0
	ldr r0, _080515D8 @ => 0xFF00FFFF
	ands r6, r0
	orrs r6, r1
	movs r0, #0x90
	lsls r0, r0, #0x14
	ldr r1, [sp, #0x28]
	ands r6, r1
	orrs r6, r0
	ldr r2, _080515DC @ => 0x08CF26D4
	ldr r3, _080515E0 @ => 0x00000107
	mov r0, sb
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r1, sl
	str r1, [sp, #0xc]
	str r6, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x14]
	add r0, sp, #0x24
	movs r1, #1
	bl FUN_0800D83C
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080515B0: .4byte ROMREF_08090120
_080515B4: .4byte 0x00FFFFFF
_080515B8: .4byte ROMREF_08CEF148
_080515BC: .4byte 0x0000013D
_080515C0: .4byte ROMREF_08CF0D68
_080515C4: .4byte ROMREF_08090130
_080515C8: .4byte 0xFFFF0000
_080515CC: .4byte 0x0000FFFF
_080515D0: .4byte 0xFFFFFF00
_080515D4: .4byte 0xFFFF00FF
_080515D8: .4byte 0xFF00FFFF
_080515DC: .4byte ROMREF_08CF26D4
_080515E0: .4byte 0x00000107

	thumb_func_start FUN_080515E4
FUN_080515E4: @ 0x080515E4
	push {r4, lr}
	ldr r4, _08051610 @ => 0x030028C8
	ldr r0, [r4]
	bl FUN_0804E168
	cmp r0, #0
	beq _080515F8
	ldr r0, [r4]
	bl FUN_0804E03C
_080515F8:
	ldr r3, _08051614 @ => 0x03004720
	ldr r0, [r3, #8]
	cmp r0, #1
	beq _08051624
	cmp r0, #1
	blo _08051618
	cmp r0, #2
	beq _08051650
	cmp r0, #3
	beq _0805165E
	b _08051672
	.align 2, 0
_08051610: .4byte gUnk_030028C8
_08051614: .4byte gUnk_03004720
_08051618:
	movs r0, #0x17
	movs r1, #0
	movs r2, #0
	bl FUN_0802CED4
	b _08051672
_08051624:
	movs r1, #6
	movs r2, #0
	ldr r0, _08051640 @ => 0x030028E0
	str r1, [r0]
	ldr r0, _08051644 @ => 0x030028E4
	str r2, [r0]
	ldr r0, _08051648 @ => 0x030028E8
	str r2, [r0]
	movs r0, #4
	str r0, [r3, #0x14]
	ldr r1, _0805164C @ => 0x03004710
	movs r0, #5
	str r0, [r1]
	b _08051672
	.align 2, 0
_08051640: .4byte gUnk_030028E0
_08051644: .4byte gUnk_030028E4
_08051648: .4byte gUnk_030028E8
_0805164C: .4byte gUnk_03004710
_08051650:
	movs r0, #2
	movs r1, #4
	bl FUN_08051744
	bl FUN_0803E5B4
	b _08051672
_0805165E:
	movs r1, #0x27
	movs r2, #0
	ldr r0, _08051688 @ => 0x030028E0
	str r1, [r0]
	ldr r0, _0805168C @ => 0x030028E4
	str r2, [r0]
	ldr r0, _08051690 @ => 0x030028E8
	str r2, [r0]
	movs r0, #4
	str r0, [r3, #0x14]
_08051672:
	movs r0, #0xad
	bl FUN_0804DE0C
	ldr r1, _08051694 @ => 0x030028C8
	str r0, [r1]
	bl FUN_08042448
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08051688: .4byte gUnk_030028E0
_0805168C: .4byte gUnk_030028E4
_08051690: .4byte gUnk_030028E8
_08051694: .4byte gUnk_030028C8

	thumb_func_start FUN_08051698
FUN_08051698: @ 0x08051698
	push {r4, r5, lr}
	sub sp, #4
	ldr r3, _080516C0 @ => 0x03004720
	ldr r4, [r3, #8]
	ldr r5, _080516C4 @ => 0x030042B0
	ldrh r1, [r5, #0xc]
	movs r2, #0xc0
	ands r2, r1
	cmp r2, #0
	beq _080516C8
	adds r0, r3, #0
	adds r0, #8
	ldrh r1, [r5, #6]
	str r1, [sp]
	movs r1, #0
	movs r2, #3
	movs r3, #1
	bl FUN_08024A88
	b _080516F0
	.align 2, 0
_080516C0: .4byte gUnk_03004720
_080516C4: .4byte gUnk_030042B0
_080516C8:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080516DC
	cmp r4, #2
	bls _080516D8
	str r2, [r3, #8]
	b _080516F0
_080516D8:
	adds r0, r4, #1
	b _080516EE
_080516DC:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080516F0
	cmp r4, #0
	bne _080516EC
	movs r0, #3
	b _080516EE
_080516EC:
	subs r0, r4, #1
_080516EE:
	str r0, [r3, #8]
_080516F0:
	ldr r0, _08051738 @ => 0x03004720
	ldr r1, [r0, #8]
	adds r2, r0, #0
	cmp r4, r1
	beq _08051730
	cmp r1, #1
	bne _0805170E
	ldr r0, _0805173C @ => 0x030028D0
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0805170E
	cmp r4, #1
	bhs _0805170C
	movs r0, #2
_0805170C:
	str r0, [r2, #8]
_0805170E:
	ldr r1, [r2, #8]
	adds r0, r4, #0
	bl FUN_08051744
	ldr r4, _08051740 @ => 0x030028C8
	ldr r0, [r4]
	bl FUN_0804E168
	cmp r0, #0
	beq _08051728
	ldr r0, [r4]
	bl FUN_0804E03C
_08051728:
	movs r0, #0xb2
	bl FUN_0804DE0C
	str r0, [r4]
_08051730:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08051738: .4byte gUnk_03004720
_0805173C: .4byte gUnk_030028D0
_08051740: .4byte gUnk_030028C8

	thumb_func_start FUN_08051744
FUN_08051744: @ 0x08051744
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r2, r0, #0
	adds r7, r1, #0
	cmp r2, #4
	beq _08051798
	ldr r0, _080517EC @ => 0x030028D0
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #2
	mov r8, r1
	cmp r0, #0
	beq _08051768
	movs r0, #0
	mov r8, r0
_08051768:
	lsls r4, r2, #5
	adds r4, #0x83
	lsls r5, r2, #4
	adds r5, #0x5f
	movs r1, #0xc6
	lsls r1, r1, #3
	adds r0, r2, r1
	bl FUN_08050820
	adds r6, r0, #0
	movs r0, #1
	mov r1, r8
	movs r2, #1
	rsbs r2, r2, #0
	bl FUN_0801FEA0
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xc4
	adds r2, r5, #0
	adds r3, r6, #0
	bl FUN_0801F8B8
_08051798:
	cmp r7, #4
	beq _080517E0
	ldr r0, _080517EC @ => 0x030028D0
	lsls r1, r7, #2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #2
	mov r8, r1
	cmp r0, #0
	beq _080517B0
	movs r0, #1
	mov r8, r0
_080517B0:
	lsls r4, r7, #5
	adds r4, #0x83
	lsls r5, r7, #4
	adds r5, #0x5f
	movs r1, #0xc6
	lsls r1, r1, #3
	adds r0, r7, r1
	bl FUN_08050820
	adds r6, r0, #0
	movs r0, #1
	mov r1, r8
	movs r2, #1
	rsbs r2, r2, #0
	bl FUN_0801FEA0
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xc4
	adds r2, r5, #0
	adds r3, r6, #0
	bl FUN_0801F8B8
_080517E0:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080517EC: .4byte gUnk_030028D0

	thumb_func_start MainMenu_Terminate
MainMenu_Terminate: @ 0x080517F0
	push {lr}
	movs r0, #0x3f
	bl FUN_08045978
	ldr r0, _08051810 @ => 0x03002C40
	bl FUN_08000BF8
	bl FUN_08015834
	bl FUN_0802D8A8
	bl FUN_0804E070
	pop {r0}
	bx r0
	.align 2, 0
_08051810: .4byte gUnk_03002C40
