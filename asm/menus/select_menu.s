.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start SelectMenu_Init
SelectMenu_Init: @ 0x080401CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r0, _080402FC @ => 0x03004720
	mov sb, r0
	movs r1, #0
	ldr r0, _08040300 @ => 0x030043A0
	ldr r0, [r0]
	cmp r0, #0
	bne _080401E8
	movs r1, #1
_080401E8:
	mov r0, sb
	str r1, [r0, #8]
	movs r4, #0
	str r4, [r0, #0x14]
	movs r0, #0
	bl FUN_0800C558
	movs r0, #0x80
	lsls r0, r0, #5
	bl FUN_0800C5EC
	ldr r0, _08040304 @ => 0x080789D4
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C418
	ldr r0, _08040308 @ => 0x080789D8
	ldr r1, [r0]
	movs r0, #2
	bl FUN_0800C418
	ldr r0, _0804030C @ => 0x080789DC
	ldr r1, [r0]
	movs r0, #1
	bl FUN_0800C418
	ldr r0, _08040310 @ => 0x080789E0
	ldr r5, [r0]
	movs r0, #0
	adds r1, r5, #0
	bl FUN_0800C418
	movs r0, #3
	bl FUN_0800C5FC
	movs r0, #2
	bl FUN_0800C5FC
	movs r0, #1
	bl FUN_0800C5FC
	movs r0, #0
	movs r1, #0
	bl FUN_0800C61C
	adds r0, r5, #0
	bl FUN_0801FE58
	movs r0, #3
	movs r1, #1
	bl FUN_08048284
	movs r6, #0
	movs r7, #0
	ldr r2, _08040314 @ => 0x08CE45BC
	ldr r3, _08040318 @ => 0x00000191
	str r4, [sp]
	str r4, [sp, #4]
	movs r5, #0x10
	str r5, [sp, #8]
	str r6, [sp, #0xc]
	str r7, [sp, #0x10]
	str r4, [sp, #0x14]
	add r0, sp, #0x18
	movs r1, #2
	bl FUN_0800D83C
	movs r0, #0
	ldr r2, _0804031C @ => 0x08CE4C10
	ldr r3, _08040320 @ => 0x000001C3
	str r4, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	add r0, sp, #0x1c
	movs r1, #1
	bl FUN_0800D83C
	movs r0, #1
	bl FUN_0800C4D0
	movs r0, #1
	movs r1, #5
	movs r2, #6
	movs r3, #6
	bl FUN_08021428
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #3
	movs r1, #0
	bl FUN_0801FEA0
	ldr r0, _08040324 @ => 0x00000745
	bl FUN_08050820
	adds r3, r0, #0
	ldr r0, _08040328 @ => 0x000001C1
	movs r1, #1
	str r1, [sp]
	movs r1, #0x78
	movs r2, #0x14
	bl FUN_0801F8B8
	mov r5, sb
_080402BE:
	ldr r1, [r5, #8]
	adds r0, r4, #0
	bl FUN_080403F8
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _080402BE
	ldr r0, _0804032C @ => 0x03006440
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080402E2
	bl FUN_080407C0
_080402E2:
	movs r0, #0x3f
	movs r1, #0
	bl FUN_080457F4
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080402FC: .4byte gUnk_03004720
_08040300: .4byte gUnk_030043A0
_08040304: .4byte ROMREF_080789D4
_08040308: .4byte ROMREF_080789D8
_0804030C: .4byte ROMREF_080789DC
_08040310: .4byte ROMREF_080789E0
_08040314: .4byte ROMREF_08CE45BC
_08040318: .4byte 0x00000191
_0804031C: .4byte ROMREF_08CE4C10
_08040320: .4byte 0x000001C3
_08040324: .4byte 0x00000745
_08040328: .4byte 0x000001C1
_0804032C: .4byte gUnk_03006440

	thumb_func_start SelectMenu_Handler
SelectMenu_Handler: @ 0x08040330
	push {r4, lr}
	sub sp, #8
	ldr r4, _08040364 @ => 0x03004374
	ldr r0, [r4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080403A6
	bl FUN_0804C094
	cmp r0, #1
	bne _0804036C
	ldr r0, [r4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	ldr r1, _08040368 @ => 0x03004720
	ldr r0, [r1, #0x14]
	cmp r0, #3
	bne _0804035E
	movs r0, #0
	str r0, [r1, #0x14]
_0804035E:
	bl FUN_080407C0
	b _080403A6
	.align 2, 0
_08040364: .4byte gUnk_03004374
_08040368: .4byte gUnk_03004720
_0804036C:
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	mov r1, sp
	bl FUN_08047B3C
	ldr r4, _080403C0 @ => 0x03006440
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _080403A6
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080403A6
	ldr r0, _080403C4 @ => 0x030043A0
	ldr r2, [r0]
	movs r0, #1
	movs r1, #2
	bl FUN_0802CED4
	ldr r0, [r4]
	ldr r1, _080403C8 @ => 0xFFFF9FFF
	ands r0, r1
	str r0, [r4]
_080403A6:
	ldr r0, _080403CC @ => 0x03004720
	ldr r0, [r0, #0x14]
	cmp r0, #3
	beq _080403EE
	ldr r0, _080403D0 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080403D4
	bl FUN_080404E8
	b _080403EE
	.align 2, 0
_080403C0: .4byte gUnk_03006440
_080403C4: .4byte gUnk_030043A0
_080403C8: .4byte 0xFFFF9FFF
_080403CC: .4byte gUnk_03004720
_080403D0: .4byte gUnk_030042B0
_080403D4:
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _080403E2
	bl FUN_0804063C
	b _080403EE
_080403E2:
	movs r0, #6
	ands r0, r1
	cmp r0, #0
	beq _080403EE
	bl FUN_080406D4
_080403EE:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080403F8
FUN_080403F8: @ 0x080403F8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #1
	cmp r4, #2
	bne _08040410
	bl FUN_08021330
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
_08040410:
	cmp r4, #0
	bne _0804041E
	ldr r0, _08040438 @ => 0x030043A0
	ldr r0, [r0]
	cmp r0, #0
	bne _0804041E
	movs r1, #0
_0804041E:
	ldr r0, _0804043C @ => 0x03004720
	ldr r0, [r0, #0x14]
	cmp r0, #1
	bne _08040428
	movs r1, #1
_08040428:
	cmp r1, #1
	bne _08040440
	movs r1, #0
	cmp r4, r5
	bne _08040442
	movs r1, #1
	b _08040442
	.align 2, 0
_08040438: .4byte gUnk_030043A0
_0804043C: .4byte gUnk_03004720
_08040440:
	movs r1, #2
_08040442:
	movs r0, #3
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _08040480 @ => 0x03004720
	ldr r0, [r0, #0x14]
	subs r0, #1
	cmp r0, #1
	bhi _08040484
	adds r0, r4, #1
	lsls r0, r0, #6
	adds r6, r0, #1
	lsls r0, r4, #3
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r5, r0, #0
	adds r5, #0x3a
	movs r1, #0xef
	lsls r1, r1, #3
	adds r0, r4, r1
	bl FUN_08050820
	adds r3, r0, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0x78
	adds r2, r5, #0
	bl FUN_0801F8B8
	b _080404DA
	.align 2, 0
_08040480: .4byte gUnk_03004720
_08040484:
	lsls r0, r4, #6
	adds r6, r0, #1
	ldr r0, _080404B0 @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080404B8
	ldr r0, _080404B4 @ => 0x03006440
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _080404B8
	lsls r0, r4, #3
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r5, r0, #0
	adds r5, #0x2a
	b _080404C2
	.align 2, 0
_080404B0: .4byte gUnk_03004374
_080404B4: .4byte gUnk_03006440
_080404B8:
	lsls r0, r4, #3
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r5, r0, #0
	adds r5, #0x40
_080404C2:
	ldr r1, _080404E4 @ => 0x00000746
	adds r0, r4, r1
	bl FUN_08050820
	adds r3, r0, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0x78
	adds r2, r5, #0
	bl FUN_0801F8B8
_080404DA:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080404E4: .4byte 0x00000746

	thumb_func_start FUN_080404E8
FUN_080404E8: @ 0x080404E8
	push {r4, r5, lr}
	sub sp, #8
	ldr r5, _08040534 @ => 0x03004720
	ldr r0, [r5, #0x14]
	cmp r0, #1
	bne _08040554
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _08040538
	movs r1, #0
	str r1, [r5, #0x14]
	movs r0, #0x14
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #0
	movs r1, #2
	movs r2, #5
	movs r3, #0x1c
	bl FUN_0800C7A8
	movs r0, #1
	bl FUN_0800C4D0
	movs r0, #2
	bl FUN_0800C4BC
	movs r4, #0
_0804051E:
	ldr r1, [r5, #8]
	adds r0, r4, #0
	bl FUN_080403F8
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0804051E
	b _08040628
	.align 2, 0
_08040534: .4byte gUnk_03004720
_08040538:
	bl FUN_0802ADBC
	ldr r4, _08040550 @ => 0x0300407C
	bl FUN_08021320
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_0801DC80
	movs r0, #5
	movs r1, #1
	b _080405F8
	.align 2, 0
_08040550: .4byte gEpisode_Data
_08040554:
	cmp r0, #2
	bne _080405B4
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _08040596
	movs r1, #0
	str r1, [r5, #0x14]
	movs r0, #0x14
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #0
	movs r1, #2
	movs r2, #5
	movs r3, #0x1c
	bl FUN_0800C7A8
	movs r0, #1
	bl FUN_0800C4D0
	movs r0, #2
	bl FUN_0800C4BC
	movs r4, #0
_08040582:
	ldr r1, [r5, #8]
	adds r0, r4, #0
	bl FUN_080403F8
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08040582
	b _08040628
_08040596:
	bl FUN_0802ADBC
	ldr r4, _080405B0 @ => 0x0300407C
	bl FUN_08021320
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_0801DC80
	movs r0, #0x1e
	bl FUN_0802CEC4
	b _08040628
	.align 2, 0
_080405B0: .4byte gEpisode_Data
_080405B4:
	ldr r0, [r5, #8]
	cmp r0, #4
	bhi _08040628
	lsls r0, r0, #2
	ldr r1, _080405C4 @ =_080405C8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080405C4: .4byte _080405C8
_080405C8: @ jump table
	.4byte _080405DC @ case 0
	.4byte _080405F4 @ case 1
	.4byte _08040600 @ case 2
	.4byte _080405E2 @ case 3
	.4byte _08040620 @ case 4
_080405DC:
	movs r0, #0x11
	movs r1, #0
	b _080405F8
_080405E2:
	ldr r1, _080405F0 @ => 0x03004710
	movs r0, #9
	str r0, [r1]
	movs r0, #6
	movs r1, #1
	b _080405F8
	.align 2, 0
_080405F0: .4byte gUnk_03004710
_080405F4:
	movs r0, #5
	movs r1, #2
_080405F8:
	movs r2, #0
	bl FUN_0802CED4
	b _08040628
_08040600:
	bl FUN_08021330
	cmp r0, #1
	bne _08040618
	ldr r1, _08040614 @ => 0x0000074C
	movs r0, #2
	bl FUN_08040844
	b _08040628
	.align 2, 0
_08040614: .4byte 0x0000074C
_08040618:
	movs r0, #0xbe
	bl FUN_0804DE0C
	b _08040628
_08040620:
	ldr r1, _08040638 @ => 0x0000074B
	movs r0, #1
	bl FUN_08040844
_08040628:
	movs r0, #0xad
	bl FUN_0804DE0C
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08040638: .4byte 0x0000074B

	thumb_func_start FUN_0804063C
FUN_0804063C: @ 0x0804063C
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r4, _08040674 @ => 0x03004720
	ldr r0, [r4, #0x14]
	subs r0, #1
	cmp r0, #1
	bhi _0804067C
	ldr r5, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0xc
	ldr r1, _08040678 @ => 0x030042B0
	ldrh r1, [r1, #6]
	str r1, [sp]
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl FUN_08024A88
	adds r1, r0, #0
	str r1, [r4, #0xc]
	adds r0, r5, #0
	bl FUN_080403F8
	ldr r1, [r4, #0xc]
	adds r0, r1, #0
	bl FUN_080403F8
	b _080406BE
	.align 2, 0
_08040674: .4byte gUnk_03004720
_08040678: .4byte gUnk_030042B0
_0804067C:
	ldr r5, [r4, #8]
	adds r6, r4, #0
	adds r6, #8
_08040682:
	ldr r0, _080406CC @ => 0x030042B0
	ldrh r0, [r0, #6]
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #4
	movs r3, #1
	bl FUN_08024A88
	str r0, [r4, #8]
	cmp r0, #2
	bne _080406A2
	bl FUN_08021330
	cmp r0, #0
	beq _08040682
_080406A2:
	ldr r1, [r4, #8]
	cmp r1, #0
	bne _080406B0
	ldr r0, _080406D0 @ => 0x030043A0
	ldr r0, [r0]
	cmp r0, #0
	beq _08040682
_080406B0:
	adds r0, r5, #0
	bl FUN_080403F8
	ldr r1, [r4, #8]
	adds r0, r1, #0
	bl FUN_080403F8
_080406BE:
	movs r0, #0xb2
	bl FUN_0804DE0C
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080406CC: .4byte gUnk_030042B0
_080406D0: .4byte gUnk_030043A0

	thumb_func_start FUN_080406D4
FUN_080406D4: @ 0x080406D4
	push {r4, r5, lr}
	sub sp, #8
	ldr r5, _0804071C @ => 0x03004720
	ldr r0, [r5, #0x14]
	subs r0, #1
	cmp r0, #1
	bhi _08040720
	movs r1, #0
	str r1, [r5, #0x14]
	movs r0, #0x14
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #0
	movs r1, #2
	movs r2, #5
	movs r3, #0x1c
	bl FUN_0800C7A8
	movs r0, #1
	bl FUN_0800C4D0
	movs r0, #2
	bl FUN_0800C4BC
	movs r4, #0
_08040706:
	ldr r1, [r5, #8]
	adds r0, r4, #0
	bl FUN_080403F8
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08040706
	b _08040766
	.align 2, 0
_0804071C: .4byte gUnk_03004720
_08040720:
	ldr r0, _08040744 @ => 0x03006440
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _08040760
	ldr r0, _08040748 @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804074C
	movs r0, #3
	str r0, [r5, #0x14]
	bl FUN_080407C0
	b _08040766
	.align 2, 0
_08040744: .4byte gUnk_03006440
_08040748: .4byte gUnk_03004374
_0804074C:
	ldr r0, _0804075C @ => 0x030043A0
	ldr r2, [r0]
	movs r0, #1
	movs r1, #2
	bl FUN_0802CED4
	b _08040766
	.align 2, 0
_0804075C: .4byte gUnk_030043A0
_08040760:
	movs r0, #0xbe
	bl FUN_0804DE0C
_08040766:
	movs r0, #0xb1
	bl FUN_0804DE0C
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start SelectMenu_Terminate
SelectMenu_Terminate: @ 0x08040774
	push {lr}
	ldr r1, _080407B4 @ => 0x03004720
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1, #0xc]
	movs r0, #0x3f
	movs r1, #0xc
	bl FUN_0804582C
	ldr r0, _080407B8 @ => 0x03002C40
	bl FUN_08000BF8
	bl FUN_0800CB20
	bl FUN_08015834
	bl FUN_0802D8A8
	bl FUN_0804E070
	bl FUN_0802CEB4
	cmp r0, #5
	bne _080407B0
	ldr r0, _080407BC @ => 0x03004770
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _080407B0
	bl FUN_0802ADBC
_080407B0:
	pop {r0}
	bx r0
	.align 2, 0
_080407B4: .4byte gUnk_03004720
_080407B8: .4byte gUnk_03002C40
_080407BC: .4byte gUnk_03004770
