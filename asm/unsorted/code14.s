.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_080227A4
FUN_080227A4: @ 0x080227A4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r4, r2, #0
	movs r0, #0x32
	bl FUN_080012D8
	adds r5, r0, #0
	movs r1, #0
	movs r0, #0
	strh r0, [r5, #0xa]
	ldr r2, _080227E8 @ => 0x0000011F
	adds r0, r5, r2
	strb r1, [r0]
	adds r2, r5, #0
	adds r2, #0xa9
	ldrb r1, [r2]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _080227EC @ => 0x00200001
	str r0, [r5, #0xc]
	ldr r1, _080227F0 @ => 0x08062B1C
	adds r0, r5, #0
	bl FUN_080015B8
	cmp r4, #0
	bne _080227F4
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08000E44
	b _080227FC
	.align 2, 0
_080227E8: .4byte 0x0000011F
_080227EC: .4byte 0x00200001
_080227F0: .4byte ROMREF_08062B1C
_080227F4:
	adds r0, r5, #0
	movs r1, #1
	bl FUN_08000E44
_080227FC:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl FUN_08001734
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08022810
FUN_08022810: @ 0x08022810
	push {lr}
	sub sp, #0xc
	adds r2, r0, #0
	cmp r1, #0
	beq _08022820
	movs r0, #2
	str r0, [sp]
	b _08022822
_08022820:
	str r1, [sp]
_08022822:
	movs r0, #3
	str r0, [sp, #4]
	str r2, [sp, #8]
	movs r0, #0
	movs r1, #2
	movs r2, #2
	movs r3, #0
	bl FUN_0800CAA4
	add sp, #0xc
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0802283C
FUN_0802283C: @ 0x0802283C
	push {lr}
	ldr r3, _0802285C @ => 0x03001DD8
	ldr r2, [r3]
	ldr r1, [r2, #0xc]
	movs r0, #1
	orrs r1, r0
	str r1, [r2, #0xc]
	ldr r0, [r3, #0xc]
	subs r0, #0x80
	cmp r0, #0
	bgt _08022860
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r2, #0xc]
	b _08022886
	.align 2, 0
_0802285C: .4byte gUnk_03001DD8
_08022860:
	ldr r1, [r3, #8]
	cmp r1, #0
	bgt _08022870
	adds r0, r2, #0
	movs r1, #0
	bl FUN_08000E44
	b _08022886
_08022870:
	cmp r1, r0
	blt _0802287E
	adds r0, r2, #0
	movs r1, #2
	bl FUN_08000E44
	b _08022886
_0802287E:
	adds r0, r2, #0
	movs r1, #1
	bl FUN_08000E44
_08022886:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0802288C
FUN_0802288C: @ 0x0802288C
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08009B04
	adds r5, r0, #0
	ldr r0, [r5]
	bl FUN_080012D8
	adds r4, r0, #0
	cmp r4, #0
	beq _080228E8
	movs r0, #4
	ldrsh r1, [r5, r0]
	lsls r1, r1, #0x10
	movs r0, #6
	ldrsh r2, [r5, r0]
	lsls r2, r2, #0x10
	adds r0, r4, #0
	bl FUN_08001728
	ldr r0, _080228F0 @ => 0x0000011D
	adds r2, r4, r0
	movs r1, #0
	movs r0, #7
	strb r0, [r2]
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, _080228F4 @ => FUN_080228F8
	str r0, [r4, #0x50]
	ldrh r1, [r5, #8]
	adds r2, #0x14
	adds r0, r4, r2
	strb r1, [r0]
	ldrb r0, [r5, #0xa]
	adds r2, #1
	adds r1, r4, r2
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #8
	bl FUN_08002038
_080228E8:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080228F0: .4byte 0x0000011D
_080228F4: .4byte FUN_080228F8

	thumb_func_start FUN_080228F8
FUN_080228F8: @ 0x080228F8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802290E
	cmp r0, #1
	beq _08022950
	b _0802296A
_0802290E:
	ldr r2, _08022928 @ => 0x00000131
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08022930
	ldr r0, _0802292C @ => 0x0300407C
	subs r2, #1
	adds r1, r4, r2
	ldrb r1, [r1]
	bl FUN_0801DF10
	b _0802293E
	.align 2, 0
_08022928: .4byte 0x00000131
_0802292C: .4byte gEpisode_Data
_08022930:
	ldr r0, _0802294C @ => 0x0300407C
	movs r2, #0x98
	lsls r2, r2, #1
	adds r1, r4, r2
	ldrb r1, [r1]
	bl FUN_0801DEE0
_0802293E:
	cmp r0, #0
	beq _0802296A
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08001FB0
	b _0802296A
	.align 2, 0
_0802294C: .4byte gEpisode_Data
_08022950:
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	ldrb r0, [r4, #0x10]
	ldrb r1, [r4, #0x11]
	bl FUN_08009B04
	ldrb r2, [r0, #0xb]
	ldrb r1, [r0, #0xc]
	adds r0, r2, #0
	bl FUN_080099A8
_0802296A:
	pop {r4}
	pop {r0}
	bx r0
