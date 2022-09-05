.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start EpisodeSelectMenu_Init
EpisodeSelectMenu_Init: @ 0x0801E1E0
	push {r4, r5, r6, lr}
	sub sp, #0x1c
	movs r0, #0
	bl FUN_0800C558
	movs r0, #0x80
	lsls r0, r0, #5
	bl FUN_0800C5EC
	ldr r0, _0801E2B8 @ => 0x08060558
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C418
	ldr r0, _0801E2BC @ => 0x0806055C
	ldr r1, [r0]
	movs r0, #2
	bl FUN_0800C418
	ldr r0, _0801E2C0 @ => 0x08060560
	ldr r4, [r0]
	movs r0, #1
	adds r1, r4, #0
	bl FUN_0800C418
	ldr r0, _0801E2C4 @ => 0x08060564
	ldr r1, [r0]
	movs r0, #0
	bl FUN_0800C418
	movs r0, #2
	bl FUN_0800C5FC
	movs r0, #1
	bl FUN_0800C5FC
	movs r0, #0
	bl FUN_0800C5FC
	adds r0, r4, #0
	bl FUN_0801FE58
	ldr r2, _0801E2C8 @ => 0x03003D60
	adds r1, r2, #0
	adds r1, #0xc
	ldr r0, _0801E2CC @ => 0x09FB630C
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	adds r1, r2, #0
	adds r1, #0x14
	ldr r0, _0801E2D0 @ => 0x09FB6314
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	adds r1, r2, #0
	adds r1, #0x1c
	ldr r0, _0801E2D4 @ => 0x09FB631C
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	movs r4, #0
	str r4, [r2]
	str r4, [r2, #4]
	movs r0, #3
	movs r1, #0x77
	bl FUN_08048284
	movs r5, #0
	movs r6, #0
	ldr r2, _0801E2D8 @ => 0x08CDA398
	movs r0, #0x10
	str r0, [sp]
	str r4, [sp, #4]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r6, [sp, #0x10]
	adds r0, #0xf0
	str r0, [sp, #0x14]
	add r0, sp, #0x18
	movs r1, #2
	movs r3, #1
	bl FUN_0800D83C
	movs r0, #1
	movs r1, #5
	movs r2, #2
	movs r3, #2
	bl FUN_08021428
	movs r0, #1
	str r0, [sp]
	movs r1, #2
	movs r2, #6
	movs r3, #6
	bl FUN_0802147C
	bl FUN_0801E3CC
	bl FUN_0801E848
	ldr r0, _0801E2DC @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801E2E0
	movs r0, #0x3f
	bl FUN_08045864
	b _0801E2E8
	.align 2, 0
_0801E2B8: .4byte ROMREF_08060558
_0801E2BC: .4byte ROMREF_0806055C
_0801E2C0: .4byte ROMREF_08060560
_0801E2C4: .4byte ROMREF_08060564
_0801E2C8: .4byte gEpisodeSelect_Index
_0801E2CC: .4byte ROMREF_09FB630C
_0801E2D0: .4byte ROMREF_09FB6314
_0801E2D4: .4byte ROMREF_09FB631C
_0801E2D8: .4byte ROMREF_08CDA398
_0801E2DC: .4byte gUnk_03004374
_0801E2E0:
	movs r0, #0x3f
	movs r1, #0
	bl FUN_080457F4
_0801E2E8:
	add sp, #0x1c
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start EpisodeSelectMenu_Handler
EpisodeSelectMenu_Handler: @ 0x0801E2F0
	push {r4, r5, r6, lr}
	ldr r0, _0801E300 @ => 0x03004720
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0801E304
	cmp r0, #1
	beq _0801E3C2
	b _0801E3C6
	.align 2, 0
_0801E300: .4byte gUnk_03004720
_0801E304:
	ldr r0, _0801E354 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801E36E
	ldr r6, _0801E358 @ => 0x0300407C
	ldr r4, _0801E35C @ => 0x03003D60
	ldr r1, [r4, #4]
	lsls r1, r1, #3
	ldr r0, [r4]
	adds r0, r0, r1
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r0, r5
	ldrb r1, [r0]
	adds r0, r6, #0
	bl FUN_0801DDD4
	cmp r0, #0
	beq _0801E360
	ldr r0, [r4, #4]
	lsls r0, r0, #3
	ldr r1, [r4]
	adds r1, r1, r0
	adds r1, r1, r5
	ldrb r1, [r1]
	adds r0, r6, #0
	bl FUN_0801DE38
	movs r0, #0xad
	bl FUN_0804DE0C
	movs r0, #0x1e
	movs r1, #0
	movs r2, #3
	bl FUN_0802CED4
	b _0801E3C6
	.align 2, 0
_0801E354: .4byte gUnk_030042B0
_0801E358: .4byte gEpisode_Data
_0801E35C: .4byte gEpisodeSelect_Index
_0801E360:
	movs r0, #0xbe
	bl FUN_0804DE0C
	movs r0, #0
	bl FUN_0801E998
	b _0801E3C6
_0801E36E:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801E384
	movs r0, #0xb1
	bl FUN_0804DE0C
	movs r0, #0x1e
	bl FUN_0802CEC4
	b _0801E3C6
_0801E384:
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0801E398
	movs r0, #0xb2
	bl FUN_0804DE0C
	bl FUN_0801E8D4
	b _0801E3C6
_0801E398:
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0801E3AC
	movs r0, #0xb2
	bl FUN_0804DE0C
	bl FUN_0801E924
	b _0801E3C6
_0801E3AC:
	movs r0, #0xc0
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801E3C6
	movs r0, #0xb2
	bl FUN_0804DE0C
	bl FUN_0801E958
	b _0801E3C6
_0801E3C2:
	bl FUN_0801EA34
_0801E3C6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start FUN_0801E3CC
FUN_0801E3CC: @ 0x0801E3CC
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r4, _0801E47C @ => 0x09FB62F4
	movs r0, #0
	bl FUN_0801DF90
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r6, _0801E480 @ => 0x08060594
	ldr r3, [r0]
	ldr r5, _0801E484 @ => 0x08060614
	ldr r0, [r5]
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	adds r2, r6, #0
	bl FUN_0802D6FC
	ldr r4, _0801E488 @ => 0x03004790
	ldr r0, [r4]
	movs r1, #1
	movs r2, #1
	bl FUN_0801E490
	adds r2, r6, #0
	adds r2, #0x10
	ldr r0, _0801E48C @ => 0x09FB6308
	ldr r3, [r0]
	ldr r0, [r5, #4]
	str r0, [sp]
	movs r0, #1
	movs r1, #0
	bl FUN_0802D6FC
	ldr r0, [r4, #4]
	movs r1, #2
	movs r2, #1
	bl FUN_0801E490
	adds r2, r6, #0
	adds r2, #0x20
	ldr r0, [r5, #8]
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	movs r3, #0
	bl FUN_0802D6FC
	ldr r0, [r4, #8]
	movs r1, #3
	movs r2, #1
	bl FUN_0801E490
	bl FUN_0801EAAC
	adds r2, r6, #0
	adds r2, #0x30
	ldr r0, [r5, #0xc]
	str r0, [sp]
	movs r0, #3
	movs r1, #0
	movs r3, #0
	bl FUN_0802D6FC
	ldr r0, [r4, #0xc]
	movs r1, #4
	movs r2, #0
	bl FUN_0801E490
	adds r2, r6, #0
	adds r2, #0x40
	ldr r0, [r5, #0x10]
	str r0, [sp]
	movs r0, #4
	movs r1, #0
	movs r3, #0
	bl FUN_0802D6FC
	ldr r0, [r4, #0x10]
	movs r1, #4
	movs r2, #1
	bl FUN_0801E490
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801E47C: .4byte ROMREF_09FB62F4
_0801E480: .4byte ROMREF_08060594
_0801E484: .4byte ROMREF_08060614
_0801E488: .4byte gUnk_03004790
_0801E48C: .4byte ROMREF_09FB6308

	thumb_func_start FUN_0801E490
FUN_0801E490: @ 0x0801E490
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r3, r1, #0
	movs r0, #0x18
	str r0, [r5, #0xc]
	cmp r2, #0
	beq _0801E4A0
	movs r0, #0x19
_0801E4A0:
	str r0, [r5, #0xc]
	adds r4, r5, #0
	adds r4, #0xa9
	ldrb r1, [r4]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	lsls r2, r3, #4
	movs r1, #0xf
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08001FB0
	adds r0, r5, #0
	movs r1, #0xb
	bl FUN_08001F84
	ldrb r0, [r4]
	lsls r2, r0, #0x18
	lsrs r0, r2, #0x1c
	cmp r0, #2
	beq _0801E4F4
	cmp r0, #2
	bgt _0801E4E0
	cmp r0, #1
	beq _0801E4EA
	b _0801E52E
_0801E4E0:
	cmp r0, #3
	beq _0801E50C
	cmp r0, #4
	beq _0801E520
	b _0801E52E
_0801E4EA:
	ldr r0, _0801E4F0 @ => 0x08060594
	b _0801E50E
	.align 2, 0
_0801E4F0: .4byte ROMREF_08060594
_0801E4F4:
	ldr r0, _0801E504 @ => 0x03003DF0
	adds r0, #0x54
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, _0801E508 @ => 0x080605E4
	adds r0, r0, r1
	b _0801E50E
	.align 2, 0
_0801E504: .4byte gUnk_03003DF0
_0801E508: .4byte ROMREF_080605E4
_0801E50C:
	ldr r0, _0801E51C @ => 0x080605B4
_0801E50E:
	ldr r0, [r0, #8]
	lsrs r1, r2, #0x1c
	lsls r1, r1, #4
	movs r2, #0x10
	bl FUN_0801579C
	b _0801E52E
	.align 2, 0
_0801E51C: .4byte ROMREF_080605B4
_0801E520:
	ldr r0, _0801E538 @ => 0x080605C4
	ldr r0, [r0, #8]
	lsrs r1, r2, #0x1c
	lsls r1, r1, #4
	movs r2, #0x10
	bl FUN_0801579C
_0801E52E:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0801E538: .4byte ROMREF_080605C4

	thumb_func_start FUN_0801E53C
FUN_0801E53C: @ 0x0801E53C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #1
	movs r2, #6
	movs r3, #0x1c
	bl FUN_0800C7A8
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #0
	movs r1, #0
	bl FUN_0801FEA0
	ldr r0, _0801E644 @ => 0x000006F6
	bl FUN_08050820
	adds r3, r0, #0
	ldr r4, _0801E648 @ => 0x08060568
	movs r0, #8
	ldrsh r1, [r4, r0]
	movs r0, #0xa
	ldrsh r2, [r4, r0]
	movs r0, #1
	str r0, [sp]
	movs r0, #0x15
	bl FUN_0801F8B8
	movs r0, #0xdf
	lsls r0, r0, #3
	bl FUN_08050820
	adds r3, r0, #0
	movs r2, #0xc
	ldrsh r1, [r4, r2]
	movs r0, #0xe
	ldrsh r2, [r4, r0]
	movs r0, #1
	str r0, [sp]
	movs r0, #0x29
	bl FUN_0801F8B8
	ldr r0, _0801E64C @ => 0x03004790
	ldr r0, [r0]
	mov r8, r0
	ldr r1, _0801E650 @ => 0x08060594
	mov sb, r1
	ldr r7, _0801E654 @ => 0x03003D60
	ldr r0, [r7, #4]
	lsls r0, r0, #3
	ldr r2, [sp, #8]
	adds r0, r2, r0
	movs r3, #0xc
	adds r3, r3, r7
	mov sl, r3
	add r0, sl
	ldrb r0, [r0]
	bl FUN_0801DF90
	subs r0, #1
	lsls r0, r0, #2
	ldr r1, _0801E658 @ => 0x09FB62F4
	adds r0, r0, r1
	ldr r2, [r0]
	mov r0, r8
	mov r1, sb
	movs r3, #0
	bl FUN_0800192C
	ldr r0, [r7, #4]
	lsls r0, r0, #3
	ldr r2, [sp, #8]
	adds r0, r2, r0
	add r0, sl
	ldrb r0, [r0]
	bl FUN_08021368
	bl FUN_080203A8
	ldr r0, _0801E65C @ => 0x000006F9
	bl FUN_08050820
	adds r3, r0, #0
	movs r0, #0x10
	ldrsh r1, [r4, r0]
	movs r0, #0x12
	ldrsh r2, [r4, r0]
	movs r0, #1
	str r0, [sp]
	movs r0, #0x3d
	bl FUN_0801F8B8
	movs r6, #0
	ldr r0, [r7, #4]
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0x18
	beq _0801E6CC
	mov r8, r7
	mov sb, sl
_0801E61C:
	mov r1, r8
	ldr r0, [r1, #4]
	lsls r0, r0, #3
	adds r0, r6, r0
	add r0, sb
	ldrb r1, [r0]
	ldr r0, _0801E660 @ => 0x0300407C
	bl FUN_0801DDD4
	cmp r0, #0
	beq _0801E664
	mov r2, r8
	ldr r0, [r2]
	movs r7, #0
	cmp r6, r0
	bne _0801E63E
	movs r7, #1
_0801E63E:
	movs r2, #1
	b _0801E668
	.align 2, 0
_0801E644: .4byte 0x000006F6
_0801E648: .4byte ROMREF_08060568
_0801E64C: .4byte gUnk_03004790
_0801E650: .4byte ROMREF_08060594
_0801E654: .4byte gEpisodeSelect_Index
_0801E658: .4byte ROMREF_09FB62F4
_0801E65C: .4byte 0x000006F9
_0801E660: .4byte gEpisode_Data
_0801E664:
	movs r2, #0
	movs r7, #0xb
_0801E668:
	ldr r1, _0801E740 @ => 0x0806063C
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r5, [r0]
	adds r4, r6, #6
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r3, r8
	ldr r0, [r3, #4]
	lsls r0, r0, #3
	adds r0, r6, r0
	add r0, sb
	ldrb r0, [r0]
	ldr r1, _0801E744 @ => 0x000006FB
	adds r0, r0, r1
	str r2, [sp, #0x10]
	bl FUN_08050820
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	adds r0, r2, #0
	adds r1, r7, #0
	movs r2, #1
	rsbs r2, r2, #0
	bl FUN_0801FEA0
	ldr r0, _0801E748 @ => 0x08060568
	lsls r4, r4, #2
	adds r4, r4, r0
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r3, #2
	ldrsh r2, [r4, r3]
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	ldr r3, [sp, #0xc]
	bl FUN_0801F8B8
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	mov r1, r8
	ldr r0, [r1, #4]
	lsls r0, r0, #3
	adds r0, r6, r0
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0x18
	bne _0801E61C
_0801E6CC:
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #1
	movs r1, #0
	bl FUN_0801FEA0
	ldr r0, _0801E748 @ => 0x08060568
	movs r3, #4
	ldrsh r2, [r0, r3]
	mov sb, r2
	movs r2, #6
	ldrsh r1, [r0, r2]
	mov r8, r1
	ldr r7, _0801E74C @ => 0x03003D60
	ldr r0, [r7, #4]
	lsls r0, r0, #3
	ldr r3, [sp, #8]
	adds r0, r3, r0
	adds r1, r7, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r1, _0801E750 @ => 0x00000713
	adds r0, r0, r1
	movs r4, #0
	bl FUN_08050820
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #0x99
	lsls r0, r0, #1
	mov r1, sb
	mov r2, r8
	movs r3, #0xd8
	bl FUN_08020098
	ldr r0, _0801E754 @ => 0x03004790
	ldr r0, [r0, #4]
	ldr r1, _0801E758 @ => 0x08060628
	ldr r2, [r7]
	lsls r2, r2, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r1, r1, #0x10
	movs r3, #2
	ldrsh r2, [r2, r3]
	lsls r2, r2, #0x10
	bl FUN_08001728
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E740: .4byte ROMREF_0806063C
_0801E744: .4byte 0x000006FB
_0801E748: .4byte ROMREF_08060568
_0801E74C: .4byte gEpisodeSelect_Index
_0801E750: .4byte 0x00000713
_0801E754: .4byte gUnk_03004790
_0801E758: .4byte ROMREF_08060628

	thumb_func_start FUN_0801E75C
FUN_0801E75C: @ 0x0801E75C
	push {r4, r5, r6, lr}
	ldr r6, _0801E7A0 @ => 0x03004790
	ldr r0, [r6, #8]
	ldr r4, _0801E7A4 @ => 0x03003D60
	ldrb r1, [r4, #4]
	bl FUN_08000E44
	ldr r0, [r4, #8]
	ldr r5, _0801E7A8 @ => 0x08060568
	movs r2, #0x14
	ldrsh r1, [r5, r2]
	ldr r3, [r4, #4]
	lsls r2, r3, #3
	adds r2, r2, r3
	lsls r2, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #0x10
	movs r3, #0x16
	ldrsh r2, [r5, r3]
	lsls r2, r2, #0x10
	bl FUN_08001728
	movs r0, #0
	str r0, [r4]
	bl FUN_0801E53C
	ldr r2, [r4, #4]
	cmp r2, #1
	beq _0801E7C8
	cmp r2, #1
	bgt _0801E7AC
	cmp r2, #0
	beq _0801E7B2
	b _0801E7EE
	.align 2, 0
_0801E7A0: .4byte gUnk_03004790
_0801E7A4: .4byte gEpisodeSelect_Index
_0801E7A8: .4byte ROMREF_08060568
_0801E7AC:
	cmp r2, #2
	beq _0801E7DA
	b _0801E7EE
_0801E7B2:
	ldr r2, [r6, #0xc]
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
	ldr r2, [r6, #0x10]
	ldr r0, [r2, #0xc]
	movs r1, #1
	orrs r0, r1
	b _0801E7EC
_0801E7C8:
	ldr r1, [r6, #0xc]
	ldr r0, [r1, #0xc]
	orrs r0, r2
	str r0, [r1, #0xc]
	ldr r1, [r6, #0x10]
	ldr r0, [r1, #0xc]
	orrs r0, r2
	str r0, [r1, #0xc]
	b _0801E7EE
_0801E7DA:
	ldr r2, [r6, #0xc]
	ldr r0, [r2, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0xc]
	ldr r2, [r6, #0x10]
	ldr r0, [r2, #0xc]
	subs r1, #3
	ands r0, r1
_0801E7EC:
	str r0, [r2, #0xc]
_0801E7EE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start EpisodeSelectMenu_Terminate
EpisodeSelectMenu_Terminate: @ 0x0801E7F4
	push {r4, lr}
	ldr r0, _0801E80C @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801E810
	movs r0, #0x3f
	bl FUN_080458EC
	b _0801E818
	.align 2, 0
_0801E80C: .4byte gUnk_03004374
_0801E810:
	movs r0, #0x3f
	movs r1, #0
	bl FUN_0804582C
_0801E818:
	bl FUN_08050C80
	ldr r0, _0801E844 @ => 0x03002C40
	bl FUN_08000BF8
	bl FUN_0800CB20
	bl FUN_08015834
	movs r4, #0
_0801E82C:
	adds r0, r4, #0
	bl FUN_0802D860
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0801E82C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801E844: .4byte gUnk_03002C40
