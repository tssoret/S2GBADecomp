.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_080376B8
FUN_080376B8: @ 0x080376B8
	push {lr}
	ldr r2, _080376E0 @ => 0x03002338
	adds r0, r2, #0
	adds r0, #0x60
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r2, #0
	adds r3, #0xa0
	ldrb r1, [r3]
	cmp r0, r1
	beq _080376E4
	adds r0, r1, #1
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x64
	adds r0, r1, r0
	ldrb r0, [r0]
	b _080376E6
	.align 2, 0
_080376E0: .4byte gUnk_03002338
_080376E4:
	movs r0, #0x13
_080376E6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_080376EC
FUN_080376EC: @ 0x080376EC
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r3, r1, #0
	movs r5, #0
	subs r0, #8
	cmp r0, #7
	bhi _080376FE
	movs r5, #1
_080376FE:
	lsls r0, r4, #4
	ldr r1, _08037724 @ => 0x08069178
	adds r0, r0, r1
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r3, #1
	str r3, [sp]
	adds r3, r5, #0
	bl FUN_0802D680
	movs r1, #0
	strh r1, [r0, #8]
	strh r4, [r0, #0xa]
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08037724: .4byte ROMREF_08069178

	thumb_func_start FUN_08037728
FUN_08037728: @ 0x08037728
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0
	ldr r0, _08037748 @ => 0x03002338
	adds r3, r0, #0
	adds r3, #0x61
	adds r1, r0, #0
	adds r1, #0x24
_08037738:
	ldr r0, [r1]
	cmp r0, #0
	bne _0803774C
	str r4, [r1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	b _08037754
	.align 2, 0
_08037748: .4byte gUnk_03002338
_0803774C:
	adds r1, #4
	adds r2, #1
	cmp r2, #9
	ble _08037738
_08037754:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0803775C
FUN_0803775C: @ 0x0803775C
	push {lr}
	adds r2, r0, #0
	ldr r0, _0803777C @ => 0x03002338
	adds r1, r0, #0
	adds r1, #0x60
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, #0xa0
	ldrb r0, [r0]
	cmp r1, r0
	beq _08037780
	ldr r0, [r2, #0xc]
	movs r1, #1
	orrs r0, r1
	b _08037788
	.align 2, 0
_0803777C: .4byte gUnk_03002338
_08037780:
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_08037788:
	str r0, [r2, #0xc]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08037790
FUN_08037790: @ 0x08037790
	ldr r0, _0803779C @ => 0x03002338
	adds r0, #0xab
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803779C: .4byte gUnk_03002338

	thumb_func_start FUN_080377A0
FUN_080377A0: @ 0x080377A0
	ldr r1, _080377B0 @ => 0x03002338
	adds r2, r1, #0
	adds r2, #0xaa
	strb r0, [r2]
	adds r1, #0xab
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_080377B0: .4byte gUnk_03002338

	thumb_func_start FUN_080377B4
FUN_080377B4: @ 0x080377B4
	push {lr}
	adds r3, r1, #0
	cmp r0, #0
	beq _080377C8
	ldr r2, _080377C4 @ => 0x03002338
	adds r1, r2, #0
	adds r1, #0xb4
	b _080377CE
	.align 2, 0
_080377C4: .4byte gUnk_03002338
_080377C8:
	ldr r2, _080377E0 @ => 0x03002338
	adds r1, r2, #0
	adds r1, #0xb8
_080377CE:
	ldr r0, [r1]
	adds r0, r0, r3
	str r0, [r1]
	adds r1, r2, #0
	adds r1, #0xab
	movs r0, #1
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080377E0: .4byte gUnk_03002338

	thumb_func_start FUN_080377E4
FUN_080377E4: @ 0x080377E4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r2, #0
	ldr r5, _0803784C @ => 0x03002338
	adds r0, r5, #0
	adds r0, #0xc0
	str r1, [r0]
	lsls r0, r4, #4
	ldr r1, _08037850 @ => 0x080692A8
	adds r0, r0, r1
	movs r1, #3
	str r1, [sp]
	movs r1, #0xa5
	movs r2, #0x30
	movs r3, #4
	bl FUN_0802D680
	str r0, [r5, #0x18]
	adds r4, #1
	movs r1, #0
	strh r4, [r0, #8]
	ldr r0, [r5, #0x18]
	strh r1, [r0, #0xa]
	ldr r0, [r5, #0x18]
	ldr r1, _08037854 @ => FUN_08036EAC
	str r1, [r0, #0x50]
	movs r1, #0
	bl FUN_08000E44
	ldr r0, [r5, #0x18]
	movs r1, #0xbd
	movs r2, #0x30
	movs r3, #0xf
	bl FUN_08001810
	ldr r0, [r5, #0x14]
	movs r1, #0xb4
	movs r2, #0x2a
	movs r3, #0xf
	bl FUN_08001810
	movs r0, #7
	bl FUN_08037910
	ldr r0, _08037858 @ => 0x03004720
	str r6, [r0, #8]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803784C: .4byte gUnk_03002338
_08037850: .4byte ROMREF_080692A8
_08037854: .4byte FUN_08036EAC
_08037858: .4byte gUnk_03004720

	thumb_func_start FUN_0803785C
FUN_0803785C: @ 0x0803785C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	movs r5, #0
	cmp r6, #0
	bne _0803786A
	movs r5, #1
_0803786A:
	movs r0, #0x91
	bl FUN_0804DE0C
	ldr r4, _080378B0 @ => 0x080693F8
	movs r0, #0xd
	adds r2, r5, #0
	muls r2, r0, r2
	adds r2, #0x34
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xa4
	movs r3, #4
	bl FUN_0802D680
	ldr r2, _080378B4 @ => 0x03002338
	str r0, [r2, #0x1c]
	movs r1, #0x1e
	strh r1, [r0, #0xa]
	ldr r0, [r2, #0x1c]
	ldr r1, _080378B8 @ => 0x09FB6660
	ldr r2, [r1]
	adds r1, r4, #0
	movs r3, #0
	bl FUN_0800192C
	movs r0, #8
	bl FUN_08037910
	ldr r0, _080378BC @ => 0x03004720
	str r6, [r0, #8]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080378B0: .4byte ROMREF_080693F8
_080378B4: .4byte gUnk_03002338
_080378B8: .4byte ROMREF_09FB6660
_080378BC: .4byte gUnk_03004720

	thumb_func_start FUN_080378C0
FUN_080378C0: @ 0x080378C0
	push {r4, lr}
	adds r3, r0, #0
	ldr r4, _080378E4 @ => 0x03002338
	ldr r2, [r4, #8]
	cmp r2, #0
	beq _080378D4
	ldr r0, [r2, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0xc]
_080378D4:
	str r3, [r4, #8]
	adds r0, r3, #0
	movs r1, #2
	bl FUN_080017B8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080378E4: .4byte gUnk_03002338

	thumb_func_start FUN_080378E8
FUN_080378E8: @ 0x080378E8
	push {r4, lr}
	adds r3, r0, #0
	ldr r4, _0803790C @ => 0x03002338
	ldr r2, [r4, #0xc]
	cmp r2, #0
	beq _080378FC
	ldr r0, [r2, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0xc]
_080378FC:
	str r3, [r4, #0xc]
	adds r0, r3, #0
	movs r1, #2
	bl FUN_080017B8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803790C: .4byte gUnk_03002338

	thumb_func_start FUN_08037910
FUN_08037910: @ 0x08037910
	ldr r1, _08037918 @ => 0x03004720
	str r0, [r1, #0x14]
	bx lr
	.align 2, 0
_08037918: .4byte gUnk_03004720

	thumb_func_start FUN_0803791C
FUN_0803791C: @ 0x0803791C
	push {r4, lr}
	sub sp, #4
	movs r0, #0x96
	bl FUN_0804DE0C
	ldr r4, _08037950 @ => 0x08069438
	movs r0, #3
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xd8
	movs r2, #0x8e
	movs r3, #7
	bl FUN_0802D680
	ldr r1, _08037954 @ => FUN_0803795C
	str r1, [r0, #0x50]
	ldr r1, _08037958 @ => 0x09FB6664
	ldr r2, [r1]
	adds r1, r4, #0
	movs r3, #0
	bl FUN_0800192C
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08037950: .4byte ROMREF_08069438
_08037954: .4byte FUN_0803795C
_08037958: .4byte ROMREF_09FB6664

	thumb_func_start FUN_0803795C
FUN_0803795C: @ 0x0803795C
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08037972
	movs r0, #2
	orrs r1, r0
	str r1, [r2, #0xc]
_08037972:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08037978
FUN_08037978: @ 0x08037978
	push {lr}
	movs r0, #0xd
	bl FUN_08037910
	pop {r0}
	bx r0

	thumb_func_start FUN_08037984
FUN_08037984: @ 0x08037984
	push {r4, lr}
	ldr r4, _080379AC @ => 0x03002338
	adds r1, r4, #0
	adds r1, #0xf8
	movs r0, #0
	strb r0, [r1]
	movs r0, #7
	movs r1, #0
	bl FUN_080379B4
	adds r4, #0xfc
	movs r0, #1
	str r0, [r4]
	movs r0, #8
	bl FUN_08036204
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080379AC: .4byte gUnk_03002338

	thumb_func_start FUN_080379B0
FUN_080379B0: @ 0x080379B0
	bx lr
	.align 2, 0

	thumb_func_start FUN_080379B4
FUN_080379B4: @ 0x080379B4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	mov sb, r1
	ldr r1, _08037A34 @ => 0x03002338
	adds r2, r1, #0
	adds r2, #0xf8
	ldrb r3, [r2]
	adds r0, r3, r4
	mov ip, r1
	cmp r0, #0xa
	ble _080379D4
	movs r0, #0xa
	subs r4, r0, r3
_080379D4:
	cmp r4, #0
	ble _08037A0C
	adds r6, r2, #0
	mov r5, ip
	adds r5, #0xa0
	movs r0, #0x64
	add r0, ip
	mov r8, r0
	adds r3, r4, #0
	mov r7, ip
	adds r7, #0xd0
_080379EA:
	ldrb r2, [r6]
	adds r0, r2, #1
	strb r0, [r6]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x16
	adds r2, r2, r7
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r0, r8
	ldrb r0, [r0]
	str r0, [r2]
	subs r3, #1
	cmp r3, #0
	bne _080379EA
_08037A0C:
	mov r0, sb
	cmp r0, #0
	beq _08037A26
	movs r0, #0x80
	lsls r0, r0, #1
	add r0, ip
	movs r1, #0
	str r1, [r0]
	movs r0, #9
	bl FUN_08037910
	ldr r0, _08037A38 @ => 0x03004720
	str r4, [r0, #8]
_08037A26:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037A34: .4byte gUnk_03002338
_08037A38: .4byte gUnk_03004720

	thumb_func_start FUN_08037A3C
FUN_08037A3C: @ 0x08037A3C
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _08037A74 @ => 0x03002338
	adds r3, r0, #0
	adds r3, #0xf8
	adds r4, r0, #0
	ldrb r0, [r3]
	cmp r2, r0
	bge _08037A62
	adds r1, r3, #0
	lsls r0, r2, #2
	adds r0, #0xd0
	adds r3, r0, r4
_08037A56:
	ldr r0, [r3, #4]
	stm r3!, {r0}
	adds r2, #1
	ldrb r0, [r1]
	cmp r2, r0
	blt _08037A56
_08037A62:
	adds r1, r4, #0
	adds r1, #0xf8
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08037A74: .4byte gUnk_03002338

	thumb_func_start FUN_08037A78
FUN_08037A78: @ 0x08037A78
	push {r4, lr}
	ldr r4, _08037AA4 @ => 0x03002338
	adds r1, r4, #0
	adds r1, #0xf8
	movs r0, #0
	strb r0, [r1]
	subs r1, #0x4c
	movs r0, #1
	str r0, [r1]
	bl FUN_0804C084
	cmp r0, #1
	bne _08037AA8
	adds r1, r4, #0
	adds r1, #0xa0
	ldrb r0, [r1]
	adds r0, #8
	strb r0, [r1]
	movs r0, #7
	bl FUN_08036204
	b _08037AAE
	.align 2, 0
_08037AA4: .4byte gUnk_03002338
_08037AA8:
	movs r0, #8
	bl FUN_08036204
_08037AAE:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_08037AB4
FUN_08037AB4: @ 0x08037AB4
	push {r4, lr}
	sub sp, #8
	mov r4, sp
	strb r0, [r4, #4]
	mov r0, sp
	strb r1, [r0, #5]
	strb r2, [r0, #6]
	strb r3, [r0, #7]
	movs r0, #0xc
	mov r1, sp
	bl FUN_08047B3C
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
