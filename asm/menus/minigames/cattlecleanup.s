.include "asm/constants.s"
.include "asm/macros.s"
.include "data/lists/sounds.inc"

.syntax unified

	thumb_func_start CattleCleanup_Init
CattleCleanup_Init: @ 0x08031B2C
	push {r4, r5, r6, lr}
	sub sp, #0xc
	ldr r0, _08031B44 @ => 0x03004720
	ldr r0, [r0, #0xc]
	cmp r0, #1
	bne _08031B4C
	ldr r2, _08031B48 @ => 0x030021B0
	adds r1, r2, #0
	adds r1, #0x90
	movs r0, #2
	b _08031B54
	.align 2, 0
_08031B44: .4byte gUnk_03004720
_08031B48: .4byte gUnk_030021B0
_08031B4C:
	ldr r2, _08031C0C @ => 0x030021B0
	adds r1, r2, #0
	adds r1, #0x90
	movs r0, #1
_08031B54:
	strb r0, [r1]
	adds r3, r2, #0
	ldr r1, _08031C10 @ => 0x08067888
	ldr r0, _08031C14 @ => 0x030047F0
	ldr r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r3, #0
	adds r0, #0x8c
	movs r2, #0
	strh r1, [r0]
	adds r1, r3, #0
	adds r1, #0x8e
	movs r0, #0x3d
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x93
	strb r2, [r0]
	movs r2, #0
	adds r1, r3, #0
	movs r5, #0
	movs r4, #1
_08031B82:
	adds r6, r3, #0
	adds r6, #0x2c
	adds r0, r5, r6
	str r2, [r0]
	strb r2, [r1, #0x16]
	adds r0, r3, #0
	adds r0, #0x18
	adds r0, r5, r0
	str r2, [r0]
	strb r2, [r1, #0x1c]
	adds r0, r3, #0
	adds r0, #0x20
	adds r0, r5, r0
	str r2, [r0]
	adds r0, r3, #0
	adds r0, #0x24
	adds r0, r5, r0
	str r2, [r0]
	str r2, [r1]
	adds r0, r3, #0
	adds r0, #8
	adds r0, r5, r0
	str r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1, #0xc]
	strh r2, [r1, #0x12]
	strh r2, [r1, #0x14]
	adds r1, #0x30
	adds r5, #0x30
	subs r4, #1
	cmp r4, #0
	bge _08031B82
	movs r4, #0x96
	lsls r4, r4, #1
	adds r0, r4, #0
	bl FUN_0802C95C
	str r0, [r6, #0x6c]
	movs r1, #0
	adds r2, r4, #0
	bl FUN_0802CB40
	movs r0, #0
	str r0, [r6, #0x68]
	movs r0, #0x4b
	bl FUN_0802C95C
	str r0, [r6, #0x70]
	movs r1, #0
	movs r2, #0x4b
	bl FUN_0802CB40
	ldr r2, _08031C18 @ => 0x080678E0
	movs r0, #2
	movs r1, #2
	bl FUN_080300A8
	ldr r0, _08031C1C @ => 0x03004720
	ldr r0, [r0, #0xc]
	cmp r0, #1
	bne _08031C20
	movs r4, #7
_08031C00:
	bl FUN_08032974
	subs r4, #1
	cmp r4, #0
	bge _08031C00
	b _08031C2C
	.align 2, 0
_08031C0C: .4byte gUnk_030021B0
_08031C10: .4byte ROMREF_08067888
_08031C14: .4byte gUnk_030047F0
_08031C18: .4byte ROMREF_080678E0
_08031C1C: .4byte gUnk_03004720
_08031C20:
	movs r4, #0x18
_08031C22:
	bl FUN_08032974
	subs r4, #1
	cmp r4, #0
	bge _08031C22
_08031C2C:
	bl FUN_08032170
	movs r0, SOUNDTRACK_DUSTYHOGG_BLUES
	bl FUN_0804DE84
	movs r0, #0x3f
	movs r1, #0
	bl FUN_080457F4
	movs r0, #0x1a
	bl FUN_0804DE0C
	ldr r1, _08031C6C @ => 0x030021B0
	adds r1, #0xa0
	str r0, [r1]
	ldr r0, _08031C70 @ => 0x00000621
	movs r1, #8
	str r1, [sp]
	movs r1, #2
	str r1, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #0x3c
	bl FUN_0800B984
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08031C6C: .4byte gUnk_030021B0
_08031C70: .4byte 0x00000621

	thumb_func_start CattleCleanup_Handler
CattleCleanup_Handler: @ 0x08031C74
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl FUN_0800B66C
	ldr r0, _08031C9C @ => 0x030021B0
	adds r0, #0xa0
	ldr r5, [r0]
	ldr r4, _08031CA0 @ => 0x030042B0
	ldrb r0, [r4, #6]
	bl FUN_080316C4
	cmp r0, #0
	bge _08031CA4
	ldrb r0, [r4, #6]
	bl FUN_080316C4
	rsbs r0, r0, #0
	b _08031CAA
	.align 2, 0
_08031C9C: .4byte gUnk_030021B0
_08031CA0: .4byte gUnk_030042B0
_08031CA4:
	ldrb r0, [r4, #6]
	bl FUN_080316C4
_08031CAA:
	ldr r1, _08031D88 @ => 0x0000051E
	bl FUN_0802C314
	adds r1, r0, #0
	ldr r0, _08031D8C @ => 0x00001388
	adds r1, r1, r0
	adds r0, r5, #0
	bl FUN_0804E174
	ldr r0, _08031D90 @ => 0x03004720
	ldr r0, [r0, #0xc]
	cmp r0, #1
	beq _08031CC8
	bl FUN_08033360
_08031CC8:
	ldr r0, _08031D94 @ => 0x030021B0
	adds r3, r0, #0
	adds r3, #0x91
	movs r1, #0
	strb r1, [r3]
	adds r2, r0, #0
	adds r2, #0x90
	adds r4, r0, #0
	ldrb r0, [r2]
	cmp r1, r0
	bhs _08031D08
	adds r6, r2, #0
	adds r5, r4, #0
	adds r5, #0x18
_08031CE4:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r0, r1, r5
	ldr r2, [r0]
	cmp r2, #0
	bne _08031CF8
	adds r0, r1, r4
	strb r2, [r0, #0x16]
_08031CF8:
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r6]
	cmp r0, r1
	blo _08031CE4
_08031D08:
	bl FUN_0803168C
	ldr r1, _08031D94 @ => 0x030021B0
	adds r2, r1, #0
	adds r2, #0x91
	movs r0, #0
	strb r0, [r2]
	adds r1, #0x90
	ldrb r3, [r1]
	cmp r0, r3
	bhs _08031D36
	adds r4, r2, #0
	adds r5, r1, #0
_08031D22:
	bl FUN_08031DF8
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r5]
	cmp r0, r1
	blo _08031D22
_08031D36:
	ldr r3, _08031D94 @ => 0x030021B0
	mov r8, r3
	ldr r0, [r3, #0x2c]
	cmp r0, #3
	bne _08031DC8
	ldr r6, _08031D98 @ => 0x030042B0
	ldrb r7, [r6, #6]
	ldr r0, _08031D90 @ => 0x03004720
	ldr r5, [r0, #0xc]
	cmp r5, #1
	bne _08031D9C
	ldrb r0, [r6, #0x14]
	movs r4, #9
	ands r4, r0
	cmp r4, #0
	beq _08031D68
	bl FUN_0804C050
	bl FUN_0804B13C
	bl FUN_08047E10
	movs r0, #0
	strh r5, [r6, #4]
	strh r0, [r6, #6]
_08031D68:
	movs r3, #0
	lsls r1, r7, #1
	adds r1, r1, r7
	lsls r1, r1, #4
	add r1, r8
	subs r2, r5, r7
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #4
	add r0, r8
	ldrh r1, [r1, #0x14]
	ldrh r0, [r0, #0x14]
	cmp r1, r0
	bls _08031DA4
	b _08031DA2
	.align 2, 0
_08031D88: .4byte 0x0000051E
_08031D8C: .4byte 0x00001388
_08031D90: .4byte gUnk_03004720
_08031D94: .4byte gUnk_030021B0
_08031D98: .4byte gUnk_030042B0
_08031D9C:
	ldrb r0, [r6, #0xc]
	movs r4, #9
	ands r4, r0
_08031DA2:
	movs r3, #1
_08031DA4:
	cmp r4, #0
	beq _08031DDA
	ldr r1, _08031DC0 @ => 0x030021B0
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r2, [r0, #0x14]
	ldr r0, _08031DC4 @ => 0x03004720
	ldr r1, [r0, #4]
	movs r0, #0x19
	bl FUN_0802CEF8
	b _08031DDA
	.align 2, 0
_08031DC0: .4byte gUnk_030021B0
_08031DC4: .4byte gUnk_03004720
_08031DC8:
	mov r2, r8
	adds r2, #0x8c
	ldrh r0, [r2]
	cmp r0, #0
	beq _08031DDA
	subs r0, #1
	strh r0, [r2]
	bl FUN_08032068
_08031DDA:
	ldr r0, _08031DF0 @ => 0x030021B0
	ldr r1, _08031DF4 @ => 0x030042B0
	ldrh r1, [r1, #6]
	adds r0, #0x91
	strb r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031DF0: .4byte gUnk_030021B0
_08031DF4: .4byte gUnk_030042B0

	thumb_func_start FUN_08031DF8
FUN_08031DF8: @ 0x08031DF8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r6, _08031E24 @ => 0x030021B0
	adds r5, r6, #0
	adds r5, #0x91
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r2, r0, #4
	movs r0, #0x2c
	adds r0, r0, r6
	mov r8, r0
	adds r0, r2, r0
	ldr r4, [r0]
	cmp r4, #1
	beq _08031E68
	cmp r4, #1
	bgt _08031E28
	cmp r4, #0
	beq _08031E36
	b _08032042
	.align 2, 0
_08031E24: .4byte gUnk_030021B0
_08031E28:
	cmp r4, #2
	bne _08031E2E
	b _08031F44
_08031E2E:
	cmp r4, #3
	bne _08031E34
	b _08031FD4
_08031E34:
	b _08032042
_08031E36:
	adds r0, r1, #0
	bl FUN_080303CC
	ldr r1, _08031E64 @ => 0x030042B0
	ldrb r2, [r5]
	lsls r0, r2, #3
	adds r0, r0, r1
	ldrh r1, [r0, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08031E5C
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r1, r6, #0
	adds r1, #0x24
	adds r0, r0, r1
	str r4, [r0]
_08031E5C:
	ldrb r0, [r5]
	bl sub_08030774
	b _08032042
	.align 2, 0
_08031E64: .4byte gUnk_030042B0
_08031E68:
	adds r0, r1, #0
	bl sub_08030774
	ldrb r0, [r5]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r7, r6, #0
	adds r7, #0xc
	adds r1, r1, r7
	ldr r0, [r1]
	adds r0, #4
	str r0, [r1]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r7
	ldrb r0, [r0]
	bl FUN_0802C2A0
	ldrb r2, [r5]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r6
	ldr r4, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	movs r1, #5
	bl __divsi3
	adds r4, #0x62
	movs r2, #0
	strh r0, [r4]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r1, r7
	ldr r0, [r0]
	cmp r0, #0x7f
	ble _08031EEC
	mov r3, r8
	adds r0, r1, r3
	str r2, [r0]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r7
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r6
	ldr r0, [r0]
	adds r0, #0x62
	strh r2, [r0]
	bl FUN_080332B0
	b _08032042
_08031EEC:
	cmp r0, #0x47
	bgt _08031EF2
	b _08032042
_08031EF2:
	adds r1, r1, r6
	ldr r3, [r1]
	adds r0, r3, #0
	adds r0, #0xb4
	ldr r4, _08031F38 @ => 0x09FB6524
	ldr r0, [r0]
	ldr r2, [r4, #8]
	cmp r0, r2
	bne _08031F06
	b _08032042
_08031F06:
	ldrb r1, [r1, #0x10]
	lsls r1, r1, #4
	ldr r0, _08031F3C @ => 0x08067154
	adds r1, r1, r0
	adds r0, r3, #0
	movs r3, #0
	bl FUN_0800192C
	ldrb r0, [r5]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r0, r6, #4
	adds r0, r1, r0
	ldr r0, [r0]
	adds r1, r1, r6
	ldrb r1, [r1, #0x10]
	lsls r1, r1, #4
	ldr r2, _08031F40 @ => 0x08067394
	adds r1, r1, r2
	ldr r2, [r4, #8]
	movs r3, #0
	bl FUN_0800192C
	b _08032042
	.align 2, 0
_08031F38: .4byte ROMREF_09FB6524
_08031F3C: .4byte ROMREF_08067154
_08031F40: .4byte ROMREF_08067394
_08031F44:
	adds r7, r6, #0
	adds r7, #0xc
	adds r1, r2, r7
	ldr r0, [r1]
	cmp r0, #0
	ble _08031F9A
	subs r0, #4
	str r0, [r1]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r7
	ldrb r0, [r0]
	bl FUN_0802C2A0
	ldrb r2, [r5]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r6
	ldr r4, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	movs r1, #5
	bl __divsi3
	adds r4, #0x62
	strh r0, [r4]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r0, r7
	ldr r0, [r1]
	cmp r0, #0
	bgt _08031F9A
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	bl FUN_080332B0
_08031F9A:
	ldr r3, _08031FD0 @ => 0x030021B0
	adds r4, r3, #0
	adds r4, #0x91
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r2, r3, #0
	adds r2, #0x28
	adds r1, r1, r2
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r2, r1, r2
	ldr r2, [r2]
	cmp r2, #0
	bne _08032042
	adds r0, r3, #0
	adds r0, #0x2c
	adds r0, r1, r0
	str r2, [r0]
	b _08032042
	.align 2, 0
_08031FD0: .4byte gUnk_030021B0
_08031FD4:
	adds r0, r1, #0
	bl sub_08030774
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r7, r6, #0
	adds r7, #0xc
	adds r1, r0, r7
	ldr r0, [r1]
	cmp r0, #0
	ble _08032038
	subs r0, #4
	str r0, [r1]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r7
	ldrb r0, [r0]
	bl FUN_0802C2A0
	ldrb r2, [r5]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r6
	ldr r4, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	movs r1, #5
	bl __divsi3
	adds r4, #0x62
	strh r0, [r4]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r0, r7
	ldr r0, [r1]
	cmp r0, #0
	bgt _08032038
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	bl FUN_080332B0
_08032038:
	ldr r0, _08032064 @ => 0x030021B0
	adds r0, #0x91
	ldrb r0, [r0]
	bl FUN_0803171C
_08032042:
	ldr r2, _08032064 @ => 0x030021B0
	adds r0, r2, #0
	adds r0, #0x91
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, #0x18
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032064: .4byte gUnk_030021B0

	thumb_func_start FUN_08032068
FUN_08032068: @ 0x08032068
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r6, _080320FC @ => 0x030021B0
	adds r0, r6, #0
	adds r0, #0x8c
	ldrh r0, [r0]
	movs r1, #0x1e
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r7, #0
	movs r1, #0x3c
	bl __udivsi3
	adds r4, r0, #0
	mov r8, r4
	adds r0, r7, #0
	movs r1, #0x3c
	bl __umodsi3
	adds r5, r0, #0
	adds r7, r5, #0
	adds r0, r6, #0
	adds r0, #0x8e
	ldrh r1, [r0]
	cmp r5, r1
	beq _080320E4
	strh r5, [r0]
	subs r0, #0xe
	ldr r0, [r0]
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08000E44
	adds r0, r6, #0
	adds r0, #0x84
	ldr r4, [r0]
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl FUN_08000E44
	adds r0, r6, #0
	adds r0, #0x88
	ldr r4, [r0]
	adds r0, r5, #0
	movs r1, #0xa
	bl __umodsi3
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl FUN_08000E44
_080320E4:
	mov r0, r8
	cmp r0, #0
	bne _080320F2
	cmp r7, #0
	bne _080320F2
	bl FUN_08032F84
_080320F2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080320FC: .4byte gUnk_030021B0

	thumb_func_start FUN_08032100
FUN_08032100: @ 0x08032100
	push {r4, r5, r6, lr}
	ldr r5, _08032168 @ => 0x030021B0
	adds r6, r5, #0
	adds r6, #0x91
	ldrb r2, [r6]
	ldr r0, _0803216C @ => 0x030042B0
	ldrh r0, [r0, #6]
	cmp r2, r0
	bne _08032162
	ldr r0, [r5, #0x64]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r5
	ldrb r1, [r1, #0x12]
	bl FUN_08000E44
	ldr r4, [r5, #0x70]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	ldrh r0, [r0, #0x14]
	movs r1, #0xa
	bl __udivsi3
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl FUN_08000E44
	ldr r4, [r5, #0x74]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	ldrh r0, [r0, #0x14]
	movs r1, #0xa
	bl __umodsi3
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl FUN_08000E44
_08032162:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08032168: .4byte gUnk_030021B0
_0803216C: .4byte gUnk_030042B0

	thumb_func_start FUN_08032170
FUN_08032170: @ 0x08032170
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _080321C4 @ => 0x030021B0
	adds r7, r0, #0
	adds r7, #0x60
	ldr r5, _080321C8 @ => 0x08067654
	movs r6, #0xa
_0803217E:
	ldr r0, [r5]
	movs r2, #4
	ldrsh r1, [r5, r2]
	movs r3, #6
	ldrsh r2, [r5, r3]
	ldrb r3, [r5, #8]
	movs r4, #9
	ldrsb r4, [r5, r4]
	str r4, [sp]
	bl FUN_0802D680
	stm r7!, {r0}
	ldr r1, [r5, #0xc]
	str r1, [r0, #0x50]
	movs r1, #0
	strh r1, [r0, #0xa]
	ldr r1, [r0, #0xc]
	movs r2, #0x80
	lsls r2, r2, #0xe
	orrs r1, r2
	str r1, [r0, #0xc]
	ldrb r1, [r5, #0xb]
	bl FUN_08000E44
	adds r5, #0x10
	subs r6, #1
	cmp r6, #0
	bge _0803217E
	bl FUN_08032068
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080321C4: .4byte gUnk_030021B0
_080321C8: .4byte ROMREF_08067654

	thumb_func_start FUN_080321CC
FUN_080321CC: @ 0x080321CC
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x18
	asrs r5, r1, #0x18
	ldr r2, _08032244 @ => 0x030021B0
	movs r0, #0x91
	adds r0, r0, r2
	mov ip, r0
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r6, r2, #0
	adds r6, #0x20
	adds r0, r1, r6
	ldr r0, [r0]
	cmp r0, #0
	beq _08032218
	adds r0, r1, r2
	ldr r3, [r0]
	ldr r1, [r3, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080322DE
	ldr r0, _08032248 @ => 0xFFBFFFFF
	ands r1, r0
	str r1, [r3, #0xc]
	mov r0, ip
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r6
	movs r1, #0
	str r1, [r0]
_08032218:
	adds r0, r2, #0
	adds r0, #0x91
	ldrb r0, [r0]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r2
	movs r0, #0x1c
	ldrsb r0, [r1, r0]
	cmp r5, r0
	bne _08032268
	adds r1, r0, #0
	cmp r1, #0
	beq _08032252
	cmp r1, #0
	bgt _0803224C
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08032256
	b _08032268
	.align 2, 0
_08032244: .4byte gUnk_030021B0
_08032248: .4byte 0xFFBFFFFF
_0803224C:
	cmp r1, #1
	beq _08032262
	b _08032268
_08032252:
	movs r0, #0
	b _080322E0
_08032256:
	adds r0, r4, #0
	movs r1, #1
_0803225A:
	movs r2, #0
	bl FUN_080330CC
	b _080322DE
_08032262:
	adds r0, r4, #0
	movs r1, #2
	b _0803225A
_08032268:
	adds r3, r2, #0
	adds r3, #0x91
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r2, #0
	adds r1, #0x20
	adds r0, r0, r1
	movs r1, #1
	str r1, [r0]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r0, r2
	movs r3, #0x1c
	ldrsb r3, [r1, r3]
	cmp r3, #0
	beq _080322BE
	cmp r3, #0
	bgt _0803229E
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _080322A4
	b _080322DE
_0803229E:
	cmp r3, #1
	beq _080322AE
	b _080322DE
_080322A4:
	movs r0, #0
	strb r0, [r1, #0x1c]
	adds r0, r4, #0
	movs r1, #1
	b _080322B6
_080322AE:
	movs r0, #0
	strb r0, [r1, #0x1c]
	adds r0, r4, #0
	movs r1, #2
_080322B6:
	movs r2, #2
	bl FUN_080330CC
	b _080322DE
_080322BE:
	strb r5, [r1, #0x1c]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	bne _080322D4
	adds r0, r4, #0
	movs r1, #1
	movs r2, #1
	bl FUN_080330CC
	b _080322DE
_080322D4:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	bl FUN_080330CC
_080322DE:
	movs r0, #1
_080322E0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_080322E8
FUN_080322E8: @ 0x080322E8
	push {r4, r5, lr}
	adds r5, r2, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r2, _08032328 @ => 0x030021B0
	ldrh r0, [r0, #0xa]
	adds r1, r2, #0
	adds r1, #0x91
	strb r0, [r1]
	ldrb r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, #0x2c
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #1
	beq _0803239A
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r5, r0
	ble _0803234C
	ldr r0, _0803232C @ => 0xFFC50000
	cmp r3, r0
	bge _08032330
	movs r1, #1
	rsbs r1, r1, #0
	adds r0, r4, #0
	bl FUN_080321CC
	b _08032354
	.align 2, 0
_08032328: .4byte gUnk_030021B0
_0803232C: .4byte 0xFFC50000
_08032330:
	movs r0, #0xec
	lsls r0, r0, #0xe
	cmp r3, r0
	ble _08032342
	adds r0, r4, #0
	movs r1, #1
	bl FUN_080321CC
	b _08032354
_08032342:
	adds r0, r4, #0
	movs r1, #0
	bl FUN_080321CC
	b _08032354
_0803234C:
	adds r0, r4, #0
	movs r1, #0
	bl FUN_080321CC
_08032354:
	cmp r0, #0
	beq _08032374
	ldr r2, _08032370 @ => 0x030021B0
	adds r0, r2, #0
	adds r0, #0x91
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, #0x24
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
	b _0803239A
	.align 2, 0
_08032370: .4byte gUnk_030021B0
_08032374:
	ldr r2, _080323A0 @ => 0x030021B0
	adds r0, r2, #0
	adds r0, #0x91
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, #0x24
	adds r2, r0, r2
	ldr r0, [r2]
	cmp r0, #0
	bne _0803239A
	movs r0, #1
	str r0, [r2]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl FUN_080331B4
_0803239A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080323A0: .4byte gUnk_030021B0

	thumb_func_start FUN_080323A4
FUN_080323A4: @ 0x080323A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r2
	mov sb, r3
	ldr r1, _0803251C @ => 0x030021B0
	adds r3, r1, #0
	adds r3, #0x91
	movs r0, #0
	strb r0, [r3]
	adds r2, r1, #0
	adds r2, #0x90
	ldrb r4, [r2]
	cmp r0, r4
	blo _080323CA
	b _08032500
_080323CA:
	adds r6, r1, #0
	adds r4, r3, #0
	movs r7, #3
	adds r5, r6, #4
	ldr r0, _08032520 @ => 0x080678F4
	mov r8, r0
_080323D6:
	ldrb r3, [r4]
	adds r3, #1
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r7, [sp]
	ldr r0, _08032524 @ => 0x08067154
	movs r1, #0
	movs r2, #0
	bl FUN_0802D680
	ldrb r2, [r4]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r6
	str r0, [r1]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r6
	ldr r2, [r0]
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	str r0, [r2, #0xc]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r6
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r1, #8]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r6
	ldr r0, [r0]
	strh r1, [r0, #0xa]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08032440
	ldr r0, _08032528 @ => 0x08067144
	ldr r0, [r0, #8]
	ldrb r1, [r4]
	adds r1, #1
	lsls r1, r1, #4
	movs r2, #0x10
	bl FUN_0801579C
_08032440:
	ldrb r2, [r4]
	lsls r2, r2, #3
	mov r1, r8
	adds r0, r2, r1
	ldr r1, [r0]
	add r1, sl
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, _0803252C @ => 0x080678F8
	adds r2, r2, r0
	ldr r2, [r2]
	add r2, sb
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r7, [sp]
	ldr r0, _08032530 @ => 0x08067394
	movs r3, #5
	bl FUN_0802D680
	ldrb r2, [r4]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r5
	str r0, [r1]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	ldr r0, [r0]
	adds r0, #0x94
	ldr r1, _08032534 @ => FUN_08033228
	str r1, [r0]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	ldr r0, [r0]
	adds r0, #0x98
	ldr r1, _08032538 @ => FUN_08033154
	str r1, [r0]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	ldr r1, [r0]
	movs r0, #1
	strh r0, [r1, #8]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	ldr r0, [r0]
	strh r1, [r0, #0xa]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r0, r1
	strb r7, [r0]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r0, r6
	ldr r1, [r1]
	adds r0, r0, r5
	ldr r0, [r0]
	str r0, [r1, #0x5c]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r0, r5
	ldr r1, [r1]
	adds r0, r0, r6
	ldr r0, [r0]
	str r0, [r1, #0x58]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0803253C @ => 0x03002240
	ldrb r2, [r2]
	cmp r0, r2
	bhs _08032500
	b _080323D6
_08032500:
	ldr r1, _0803251C @ => 0x030021B0
	ldr r2, [r1, #4]
	ldr r0, [sp, #0x24]
	str r2, [r0]
	adds r0, r1, #0
	adds r0, #0x90
	ldrb r0, [r0]
	cmp r0, #1
	bls _08032540
	ldr r0, [r1, #0x34]
	ldr r4, [sp, #0x28]
	str r0, [r4]
	b _08032546
	.align 2, 0
_0803251C: .4byte gUnk_030021B0
_08032520: .4byte ROMREF_080678F4
_08032524: .4byte ROMREF_08067154
_08032528: .4byte ROMREF_08067144
_0803252C: .4byte ROMREF_080678F8
_08032530: .4byte ROMREF_08067394
_08032534: .4byte FUN_08033228
_08032538: .4byte FUN_08033154
_0803253C: .4byte gUnk_03002240
_08032540:
	movs r0, #0
	ldr r2, [sp, #0x28]
	str r0, [r2]
_08032546:
	ldr r0, _08032568 @ => 0x030042B0
	ldrh r0, [r0, #6]
	adds r2, r1, #0
	adds r2, #0x91
	strb r0, [r2]
	adds r0, r1, #0
	adds r0, #0x90
	ldrb r0, [r0]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08032568: .4byte gUnk_030042B0

	thumb_func_start FUN_0803256C
FUN_0803256C: @ 0x0803256C
	push {r4, r5, r6, r7, lr}
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r7, _08032618 @ => 0x030021B0
	adds r6, r7, #0
	adds r6, #0x91
	strb r0, [r6]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r7
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	cmp r0, #0
	blt _08032612
	movs r0, #0x1b
	bl FUN_0804DE0C
	bl FUN_08032100
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r7, #0
	adds r1, #0x2c
	adds r0, r0, r1
	movs r1, #1
	str r1, [r0]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r7, #0
	adds r1, #0xc
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	ldrb r0, [r6]
	bl FUN_08031700
	ldrb r0, [r6]
	ldr r1, _0803261C @ => 0x00043333
	bl FUN_080316AC
	adds r4, #0x1b
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r7
	strb r4, [r0, #0x10]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r7
	ldr r0, [r0]
	lsls r4, r4, #4
	ldr r1, _08032620 @ => 0x08067154
	adds r1, r4, r1
	ldr r5, _08032624 @ => 0x09FB6524
	ldr r2, [r5]
	movs r3, #0
	bl FUN_0800192C
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r7, #4
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08032628 @ => 0x08067394
	adds r4, r4, r1
	ldr r2, [r5]
	adds r1, r4, #0
	movs r3, #0
	bl FUN_0800192C
_08032612:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032618: .4byte gUnk_030021B0
_0803261C: .4byte 0x00043333
_08032620: .4byte ROMREF_08067154
_08032624: .4byte ROMREF_09FB6524
_08032628: .4byte ROMREF_08067394

	thumb_func_start FUN_0803262C
FUN_0803262C: @ 0x0803262C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	bl FUN_08032750
	ldr r1, _0803266C @ => 0x030021B0
	adds r0, r1, #0
	adds r0, #0x91
	ldrb r4, [r0]
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r2, r0, #4
	adds r0, r1, #0
	adds r0, #0x2c
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r0, #1
	bne _08032688
	ldrh r0, [r5, #8]
	cmp r0, #1
	bne _08032670
	adds r0, r4, #0
	bl FUN_080316C4
	adds r1, r0, #0
	rsbs r1, r1, #0
	adds r0, r4, #0
	bl FUN_080316AC
	b _08032742
	.align 2, 0
_0803266C: .4byte gUnk_030021B0
_08032670:
	adds r0, r1, #0
	adds r0, #0xc
	adds r2, r2, r0
	ldr r1, [r2]
	cmp r1, #0x18
	ble _08032680
	cmp r1, #0x67
	ble _08032742
_08032680:
	movs r0, #0x80
	subs r0, r0, r1
	str r0, [r2]
	b _08032742
_08032688:
	adds r0, r1, #4
	adds r0, r2, r0
	ldr r1, [r0]
	adds r0, r5, #0
	bl FUN_08001BF4
	lsls r0, r0, #0x1d
	movs r1, #0xc0
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r6, r0, #0x18
	movs r0, #0
	movs r1, #2
	bl FUN_080424F8
	cmp r0, #1
	beq _080326C8
	cmp r0, #1
	bgt _080326B4
	cmp r0, #0
	beq _080326BA
	b _080326C8
_080326B4:
	cmp r0, #2
	beq _080326C0
	b _080326C8
_080326BA:
	adds r0, r6, #0
	adds r0, #0x20
	b _080326C4
_080326C0:
	adds r0, r6, #0
	subs r0, #0x20
_080326C4:
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080326C8:
	adds r0, r6, #0
	bl FUN_0802C210
	movs r5, #0x80
	lsls r5, r5, #0xb
	adds r1, r5, #0
	bl FUN_0802C314
	ldr r7, _0803274C @ => 0x030021B0
	movs r1, #0x91
	adds r1, r1, r7
	mov r8, r1
	ldrb r2, [r1]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r4, r7, #4
	adds r1, r1, r4
	ldr r1, [r1]
	str r0, [r1, #0x2c]
	adds r0, r6, #0
	bl FUN_0802C254
	adds r1, r5, #0
	bl FUN_0802C314
	mov r1, r8
	ldrb r2, [r1]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r4
	ldr r1, [r1]
	str r0, [r1, #0x28]
	mov r1, r8
	ldrb r0, [r1]
	movs r1, #0
	bl FUN_080316AC
	mov r0, r8
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r7, #0
	adds r1, #0x2c
	adds r0, r0, r1
	movs r1, #2
	str r1, [r0]
	mov r0, r8
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r7, #0
	adds r1, #0x28
	adds r0, r0, r1
	movs r1, #8
	str r1, [r0]
	bl FUN_080332F0
_08032742:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803274C: .4byte gUnk_030021B0

	thumb_func_start FUN_08032750
FUN_08032750: @ 0x08032750
	push {r4, r5, lr}
	ldr r5, _08032784 @ => 0x030021B0
	adds r4, r5, #0
	adds r4, #0x91
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	ldrb r0, [r0, #0x16]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080327A0
	adds r0, r1, #0
	bl FUN_080316C4
	cmp r0, #0
	ble _08032788
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r5
	movs r0, #1
	b _0803279E
	.align 2, 0
_08032784: .4byte gUnk_030021B0
_08032788:
	ldrb r0, [r4]
	bl FUN_080316C4
	cmp r0, #0
	bge _080327A0
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r5
	movs r0, #2
_0803279E:
	strb r0, [r1, #0x16]
_080327A0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080327A8
FUN_080327A8: @ 0x080327A8
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r3, _08032808 @ => 0x030021B0
	ldr r0, [r4, #0x58]
	ldrh r0, [r0, #0xa]
	movs r1, #0x91
	adds r1, r1, r3
	mov ip, r1
	strb r0, [r1]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r4, r2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0803280C
	ldr r0, [r4, #0x58]
	movs r1, #0
	mov r2, sp
	bl FUN_08001A3C
	cmp r0, #0
	beq _080328A2
	ldr r1, [sp]
	lsls r1, r1, #0x10
	ldr r0, [r4, #0x58]
	ldr r2, [r0, #0x18]
	adds r1, r1, r2
	str r1, [sp]
	ldr r2, [sp, #4]
	lsls r2, r2, #0x10
	ldr r3, [r0, #0x1c]
	adds r2, r2, r3
	str r2, [sp, #4]
	adds r3, r0, #0
	adds r3, #0x40
	ldrh r3, [r3]
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	bl FUN_08001800
	b _080328A2
	.align 2, 0
_08032808: .4byte gUnk_030021B0
_0803280C:
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	adds r0, r3, #0
	adds r0, #0x9c
	ldr r1, [r0]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r0, [r0]
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1]
	ldrh r0, [r4, #0xa]
	cmp r0, #2
	bne _08032838
	adds r1, r3, #0
	adds r1, #0x93
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
_08032838:
	mov r1, ip
	ldrb r0, [r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r3
	ldr r2, _080328AC @ => 0x08067874
	ldrh r0, [r4, #0xa]
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r2, [r1, #0x12]
	adds r0, r0, r2
	strh r0, [r1, #0x12]
	mov r4, ip
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r0, r3
	ldrh r2, [r1, #0x12]
	movs r4, #0x12
	ldrsh r0, [r1, r4]
	cmp r0, #0x10
	ble _08032884
	adds r0, r2, #0
	subs r0, #0x10
	strh r0, [r1, #0x12]
	mov r0, ip
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	ldrh r1, [r0, #0x14]
	adds r1, #1
	strh r1, [r0, #0x14]
_08032884:
	mov r1, ip
	ldrb r0, [r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r3
	movs r2, #0x12
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _0803289A
	strh r5, [r1, #0x12]
_0803289A:
	bl FUN_08032100
	bl FUN_08032974
_080328A2:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080328AC: .4byte ROMREF_08067874

	thumb_func_start FUN_080328B0
FUN_080328B0: @ 0x080328B0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _08032958 @ => 0x03004720
	ldr r0, [r0, #0xc]
	cmp r0, #1
	beq _08032964
	adds r0, r2, #0
	bl FUN_08009B04
	adds r4, r0, #0
	movs r0, #0
	movs r1, #7
	bl FUN_080424F8
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	adds r0, r5, #0
	bl FUN_08033124
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x14
	ldr r6, _0803295C @ => 0x08067704
	adds r0, r0, r6
	movs r2, #4
	ldrsh r1, [r4, r2]
	movs r3, #6
	ldrsh r2, [r4, r3]
	movs r3, #3
	str r3, [sp]
	bl FUN_0802D680
	adds r4, r0, #0
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r2, #0
	mov r8, r2
	strb r5, [r0]
	ldrb r0, [r0]
	bl FUN_08033124
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x14
	adds r1, r1, r6
	ldr r0, _08032960 @ => 0x09FB6530
	ldr r2, [r0]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_0800192C
	movs r0, #2
	strh r0, [r4, #8]
	mov r3, r8
	strh r3, [r4, #0xa]
	adds r0, r5, #0
	bl FUN_08033140
	adds r3, r4, #0
	adds r3, #0xa7
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #4
	ldrb r2, [r3]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldr r0, [r4, #0xc]
	movs r1, #0x81
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	adds r0, r4, #0
	b _08032966
	.align 2, 0
_08032958: .4byte gUnk_03004720
_0803295C: .4byte ROMREF_08067704
_08032960: .4byte ROMREF_09FB6530
_08032964:
	movs r0, #0
_08032966:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08032974
FUN_08032974: @ 0x08032974
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	movs r0, #0
	mov r8, r0
	ldr r0, _08032A90 @ => 0x030021B0
	adds r0, #0x90
	ldrb r1, [r0]
	cmp r8, r1
	bge _080329D8
	adds r7, r0, #0
	mov r5, sp
	mov r6, sp
_08032994:
	mov r2, r8
	lsls r4, r2, #3
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	adds r0, r6, #0
	bl FUN_08047038
	ldr r0, [r5]
	subs r0, #8
	str r0, [r5]
	add r2, sp, #4
	adds r2, r2, r4
	ldr r0, [r2]
	subs r0, #8
	str r0, [r2]
	add r1, sp, #0x10
	adds r1, r1, r4
	ldr r0, [r5]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r1]
	add r1, sp, #0x14
	adds r1, r1, r4
	ldr r0, [r2]
	adds r0, #0xb0
	str r0, [r1]
	adds r5, #8
	adds r6, #8
	movs r0, #1
	add r8, r0
	ldrb r1, [r7]
	cmp r8, r1
	blt _08032994
_080329D8:
	ldr r2, _08032A90 @ => 0x030021B0
	mov sb, r2
_080329DC:
	mov r4, sb
	adds r4, #0x94
	ldr r1, [r4]
	subs r1, #1
	movs r0, #0
	bl FUN_080424F8
	mov r8, r0
	mov r0, sb
	adds r0, #0x98
	ldr r1, [r0]
	mov r3, r8
	lsls r0, r3, #2
	adds r0, r0, r1
	movs r1, #0
	ldrsh r2, [r0, r1]
	movs r3, #2
	ldrsh r6, [r0, r3]
	movs r0, #1
	mov ip, r0
	mov r0, sb
	adds r0, #0x9c
	ldr r0, [r0]
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	bne _080329DC
	ldr r0, _08032A94 @ => 0x03004720
	ldr r0, [r0, #0xc]
	movs r1, #0x94
	rsbs r1, r1, #0
	adds r1, r1, r4
	mov sl, r1
	cmp r0, #1
	beq _08032A64
	movs r5, #0
	ldr r3, _08032A98 @ => 0x03002240
	ldrb r3, [r3]
	cmp r5, r3
	bge _08032A64
	subs r0, r4, #4
	ldrb r7, [r0]
	mov r1, sp
	add r4, sp, #0x10
_08032A34:
	lsls r3, r5, #3
	ldr r0, [r1]
	cmp r2, r0
	ble _08032A5A
	ldr r0, [r4]
	cmp r2, r0
	bge _08032A5A
	add r0, sp, #4
	adds r0, r0, r3
	ldr r0, [r0]
	cmp r6, r0
	ble _08032A5A
	add r0, sp, #0x14
	adds r0, r0, r3
	ldr r0, [r0]
	cmp r6, r0
	bge _08032A5A
	movs r0, #0
	mov ip, r0
_08032A5A:
	adds r1, #8
	adds r4, #8
	adds r5, #1
	cmp r5, r7
	blt _08032A34
_08032A64:
	mov r1, ip
	cmp r1, #0
	beq _080329DC
	mov r0, sl
	adds r0, #0x9c
	ldr r0, [r0]
	add r0, r8
	movs r1, #1
	strb r1, [r0]
	adds r1, r2, #0
	adds r2, r6, #0
	mov r0, r8
	bl FUN_08032E98
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032A90: .4byte gUnk_030021B0
_08032A94: .4byte gUnk_03004720
_08032A98: .4byte gUnk_03002240

	thumb_func_start FUN_08032A9C
FUN_08032A9C: @ 0x08032A9C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r6, _08032B58 @ => 0x030047F0
	ldr r0, [r6]
	cmp r0, #0
	beq _08032B68
	adds r0, r2, #0
	bl FUN_08009B04
	adds r5, r0, #0
	movs r0, #0
	movs r1, #7
	bl FUN_080424F8
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl FUN_08033124
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x14
	ldr r1, _08032B5C @ => 0x08067754
	adds r0, r0, r1
	movs r2, #4
	ldrsh r1, [r5, r2]
	movs r3, #6
	ldrsh r2, [r5, r3]
	movs r5, #3
	str r5, [sp]
	movs r3, #4
	bl FUN_0802D680
	adds r7, r0, #0
	movs r0, #0
	mov r8, r0
	movs r0, #0
	strh r5, [r7, #8]
	strh r0, [r7, #0xa]
	ldr r0, _08032B60 @ => FUN_08032B78
	str r0, [r7, #0x50]
	adds r0, r4, #0
	bl FUN_08033140
	adds r3, r7, #0
	adds r3, #0xa7
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #4
	ldrb r2, [r3]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r7, #0xc]
	movs r1, #0x81
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r7, #0xc]
	ldr r1, _08032B64 @ => 0x080678A4
	ldr r0, [r6]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r1, #0
	bl FUN_080424F8
	movs r3, #0x90
	lsls r3, r3, #1
	adds r1, r7, r3
	strh r0, [r1]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r7, r1
	strb r4, [r0]
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r7, r2
	mov r3, r8
	strb r3, [r0]
	adds r0, r7, #0
	b _08032B6A
	.align 2, 0
_08032B58: .4byte gUnk_030047F0
_08032B5C: .4byte ROMREF_08067754
_08032B60: .4byte FUN_08032B78
_08032B64: .4byte ROMREF_080678A4
_08032B68:
	movs r0, #0
_08032B6A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08032B78
FUN_08032B78: @ 0x08032B78
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r6, [r0]
	cmp r6, #1
	bne _08032B90
	b _08032CB4
_08032B90:
	cmp r6, #1
	bgt _08032B9A
	cmp r6, #0
	beq _08032BA2
	b _08032CEA
_08032B9A:
	cmp r6, #2
	bne _08032BA0
	b _08032CD0
_08032BA0:
	b _08032CEA
_08032BA2:
	ldr r0, _08032BDC @ => 0x030021B0
	adds r1, r0, #0
	adds r1, #0x90
	ldrb r1, [r1]
	adds r7, r0, #0
	cmp r1, #1
	beq _08032BD4
	ldr r0, [r7, #4]
	ldr r1, [r0, #0x1c]
	ldr r0, [r0, #0x18]
	ldr r2, [r5, #0x18]
	ldr r3, [r5, #0x1c]
	bl FUN_0802C538
	adds r4, r0, #0
	ldr r0, [r7, #0x34]
	ldr r1, [r0, #0x1c]
	ldr r0, [r0, #0x18]
	ldr r2, [r5, #0x18]
	ldr r3, [r5, #0x1c]
	bl FUN_0802C538
	cmp r4, r0
	bhs _08032BE0
	adds r0, r7, #0
_08032BD4:
	adds r0, #0x91
	strb r6, [r0]
	b _08032BE8
	.align 2, 0
_08032BDC: .4byte gUnk_030021B0
_08032BE0:
	adds r1, r7, #0
	adds r1, #0x91
	movs r0, #1
	strb r0, [r1]
_08032BE8:
	adds r6, r7, #0
	adds r6, #0x91
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r7, #4
	mov sb, r1
	add r0, sb
	ldr r1, [r0]
	adds r0, r5, #0
	bl FUN_08001BF4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	adds r0, r5, #0
	mov r1, r8
	bl FUN_0803339C
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r7, #0
	adds r1, #0x2c
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #3
	beq _08032CEA
	movs r0, #0x90
	lsls r0, r0, #1
	adds r4, r5, r0
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08032CEA
	adds r1, r5, #0
	adds r1, #0x28
	adds r2, r5, #0
	adds r2, #0x2c
	adds r0, r5, #0
	bl FUN_080332FC
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldrb r3, [r6]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #4
	add r2, sb
	ldr r2, [r2]
	ldr r3, [r2, #0x1c]
	ldr r2, [r2, #0x18]
	bl FUN_0802C538
	ldr r2, _08032CA4 @ => 0x080678CC
	ldr r1, _08032CA8 @ => 0x030047F0
	ldr r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl __divsi3
	strh r0, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1d
	bhi _08032C84
	movs r0, #0x1e
	strh r0, [r4]
_08032C84:
	mov r0, r8
	bl FUN_08033124
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x14
	ldr r0, _08032CAC @ => 0x080677A4
	adds r1, r1, r0
	ldr r0, _08032CB0 @ => 0x09FB6538
	ldr r2, [r0]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_0800192C
	b _08032CEA
	.align 2, 0
_08032CA4: .4byte ROMREF_080678CC
_08032CA8: .4byte gUnk_030047F0
_08032CAC: .4byte ROMREF_080677A4
_08032CB0: .4byte ROMREF_09FB6538
_08032CB4:
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r5, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08032CEA
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08032CF8
	b _08032CEA
_08032CD0:
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r5, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08032CEA
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08032CF8
_08032CEA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08032CF8
FUN_08032CF8: @ 0x08032CF8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	cmp r1, #0
	beq _08032D74
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrb r5, [r0]
	lsls r5, r5, #0x1d
	movs r2, #0xc0
	lsls r2, r2, #0x18
	adds r5, r5, r2
	lsrs r5, r5, #0x18
	adds r0, r5, #0
	bl FUN_0802C254
	ldr r1, _08032D6C @ => 0x080678CC
	mov r8, r1
	ldr r6, _08032D70 @ => 0x030047F0
	ldr r1, [r6]
	lsls r1, r1, #2
	add r1, r8
	ldr r1, [r1]
	bl FUN_0802C314
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_0802C210
	ldr r1, [r6]
	lsls r1, r1, #2
	add r1, r8
	ldr r1, [r1]
	bl FUN_0802C314
	lsrs r1, r4, #0x1f
	adds r4, r4, r1
	asrs r4, r4, #1
	rsbs r4, r4, #0
	str r4, [r7, #0x28]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x2c]
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #0x1e
	strh r0, [r1]
	b _08032DBC
	.align 2, 0
_08032D6C: .4byte ROMREF_080678CC
_08032D70: .4byte gUnk_030047F0
_08032D74:
	str r1, [r7, #0x2c]
	str r1, [r7, #0x28]
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r7, r2
	strb r1, [r0]
	ldr r1, _08032DC8 @ => 0x080678A4
	ldr r0, _08032DCC @ => 0x030047F0
	ldr r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r1, #0
	bl FUN_080424F8
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r7, r2
	strh r0, [r1]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrb r0, [r0]
	bl FUN_08033124
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x14
	ldr r0, _08032DD0 @ => 0x08067754
	adds r1, r1, r0
	ldr r0, _08032DD4 @ => 0x09FB6534
	ldr r2, [r0]
	adds r0, r7, #0
	movs r3, #0
	bl FUN_0800192C
_08032DBC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032DC8: .4byte ROMREF_080678A4
_08032DCC: .4byte gUnk_030047F0
_08032DD0: .4byte ROMREF_08067754
_08032DD4: .4byte ROMREF_09FB6534

	thumb_func_start FUN_08032DD8
FUN_08032DD8: @ 0x08032DD8
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _08032E84 @ => 0x08067904
	ldr r1, [r0]
	ldr r2, [r0, #4]
	adds r0, r7, #0
	bl FUN_08001C08
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r0, #0x98
	lsls r0, r0, #1
	adds r4, r7, r0
	ldrb r0, [r4]
	cmp r5, r0
	beq _08032E32
	strb r5, [r4]
	adds r0, r5, #0
	bl FUN_08033124
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x14
	ldr r0, _08032E88 @ => 0x08067754
	adds r1, r1, r0
	ldr r0, _08032E8C @ => 0x09FB6534
	ldr r2, [r0]
	adds r0, r7, #0
	movs r3, #0
	bl FUN_0800192C
	adds r0, r5, #0
	bl FUN_08033140
	adds r3, r7, #0
	adds r3, #0xa7
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #4
	ldrb r2, [r3]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_08032E32:
	ldrb r4, [r4]
	lsls r4, r4, #0x1d
	movs r0, #0xc0
	lsls r0, r0, #0x18
	adds r4, r4, r0
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl FUN_0802C254
	ldr r6, _08032E90 @ => 0x080678CC
	ldr r5, _08032E94 @ => 0x030047F0
	ldr r1, [r5]
	lsls r1, r1, #2
	adds r1, r1, r6
	ldr r1, [r1]
	bl FUN_0802C314
	str r0, [r7, #0x28]
	adds r0, r4, #0
	bl FUN_0802C210
	ldr r1, [r5]
	lsls r1, r1, #2
	adds r1, r1, r6
	ldr r1, [r1]
	bl FUN_0802C314
	str r0, [r7, #0x2c]
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #0x1e
	strh r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032E84: .4byte ROMREF_08067904
_08032E88: .4byte ROMREF_08067754
_08032E8C: .4byte ROMREF_09FB6534
_08032E90: .4byte ROMREF_080678CC
_08032E94: .4byte gUnk_030047F0

	thumb_func_start FUN_08032E98
FUN_08032E98: @ 0x08032E98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #8]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov sb, r2
	ldr r7, _08032F68 @ => 0x08067877
	ldr r0, _08032F6C @ => 0x03002243
	mov sl, r0
	ldr r5, _08032F70 @ => 0x030047F0
	mov r8, r7
_08032EBC:
	movs r4, #1
	movs r0, #0
	movs r1, #0x63
	bl FUN_080424F8
	adds r2, r0, #0
	movs r6, #0
	ldr r0, [r5]
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r0, r1, r7
	ldrb r0, [r0]
	cmp r2, r0
	ble _08032EE8
	add r1, r8
_08032EDA:
	ldrb r0, [r1]
	subs r2, r2, r0
	adds r1, #1
	adds r6, #1
	ldrb r0, [r1]
	cmp r2, r0
	bgt _08032EDA
_08032EE8:
	cmp r6, #2
	bne _08032EFE
	ldr r0, _08032F74 @ => 0x0806789C
	ldr r1, [r5]
	adds r1, r1, r0
	mov r2, sl
	ldrb r0, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08032EFE
	movs r4, #0
_08032EFE:
	cmp r4, #0
	beq _08032EBC
	lsls r5, r6, #4
	ldr r0, _08032F78 @ => 0x08067844
	adds r5, r5, r0
	adds r3, r6, #0
	adds r3, #0xd
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r0, #3
	str r0, [sp]
	adds r0, r5, #0
	ldr r1, [sp, #8]
	mov r2, sb
	bl FUN_0802D680
	adds r4, r0, #0
	ldr r1, _08032F7C @ => 0x09FB653C
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #0
	bl FUN_0800192C
	movs r1, #4
	strh r1, [r4, #8]
	strh r6, [r4, #0xa]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r2, [sp, #4]
	str r2, [r0]
	ldr r0, [r4, #0xc]
	orrs r0, r1
	str r0, [r4, #0xc]
	cmp r6, #2
	bne _08032F56
	ldr r1, _08032F80 @ => 0x030021B0
	adds r1, #0x93
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08032F56:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032F68: .4byte ROMREF_08067877
_08032F6C: .4byte gUnk_03002243
_08032F70: .4byte gUnk_030047F0
_08032F74: .4byte ROMREF_0806789C
_08032F78: .4byte ROMREF_08067844
_08032F7C: .4byte ROMREF_09FB653C
_08032F80: .4byte gUnk_030021B0

	thumb_func_start FUN_08032F84
FUN_08032F84: @ 0x08032F84
	push {r4, lr}
	sub sp, #0xc
	movs r1, #0
	ldr r3, _08032FE4 @ => 0x030021B0
	adds r0, r3, #0
	adds r0, #0x90
	ldrb r2, [r0]
	cmp r1, r2
	bge _08032FA8
	movs r4, #3
	adds r2, r0, #0
	subs r0, #0x64
_08032F9C:
	str r4, [r0]
	adds r0, #0x30
	adds r1, #1
	ldrb r3, [r2]
	cmp r1, r3
	blt _08032F9C
_08032FA8:
	movs r0, #0x19
	bl FUN_0804DE0C
	ldr r0, _08032FE8 @ => 0x03004720
	ldr r4, [r0, #0xc]
	cmp r4, #1
	bne _08032FFC
	ldr r3, _08032FE4 @ => 0x030021B0
	ldr r0, _08032FEC @ => 0x030042B0
	ldrh r2, [r0, #6]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r3
	subs r2, r4, r2
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r0, r0, r3
	ldrh r1, [r1, #0x14]
	ldrh r2, [r0, #0x14]
	ldr r4, _08032FF0 @ => 0x00000623
	cmp r1, r2
	bhi _08032FFE
	ldr r4, _08032FF4 @ => 0x00000CE2
	cmp r1, r2
	bhs _08032FFE
	ldr r4, _08032FF8 @ => 0x00000624
	b _08032FFE
	.align 2, 0
_08032FE4: .4byte gUnk_030021B0
_08032FE8: .4byte gUnk_03004720
_08032FEC: .4byte gUnk_030042B0
_08032FF0: .4byte 0x00000623
_08032FF4: .4byte 0x00000CE2
_08032FF8: .4byte 0x00000624
_08032FFC:
	ldr r4, _08033024 @ => 0x00000622
_08032FFE:
	bl FUN_0800B9D0
	movs r3, #1
	rsbs r3, r3, #0
	movs r0, #8
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x50
	bl FUN_0800B984
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08033024: .4byte 0x00000622

	thumb_func_start CattleCleanup_Terminate
CattleCleanup_Terminate: @ 0x08033028
	push {r4, r5, r6, lr}
	movs r0, #0x3f
	movs r1, #0
	bl FUN_0804582C
	ldr r6, _08033080 @ => 0x030021B0
	adds r0, r6, #0
	adds r0, #0xa0
	ldr r0, [r0]
	bl FUN_0804E03C
	bl FUN_08009994
	bl FUN_0800B9D0
	ldr r0, _08033084 @ => 0x03002C40
	bl FUN_08000BF8
	bl FUN_08046D60
	bl FUN_08039574
	bl FUN_08047464
	ldr r0, _08033088 @ => 0x030042B0
	ldrb r0, [r0, #6]
	bl FUN_08047074
	adds r4, r6, #0
	adds r4, #0x98
	ldr r0, [r4]
	bl FUN_0802CA80
	movs r5, #0
	str r5, [r4]
	adds r4, #4
	ldr r0, [r4]
	bl FUN_0802CA80
	str r5, [r4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08033080: .4byte gUnk_030021B0
_08033084: .4byte gUnk_03002C40
_08033088: .4byte gUnk_030042B0
