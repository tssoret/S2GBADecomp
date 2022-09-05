.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_08022130
FUN_08022130: @ 0x08022130
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_08022310
	cmp r0, #0
	beq _0802219E
	adds r0, r5, #0
	bl FUN_08022310
	cmp r0, #0
	beq _08022154
	movs r1, #0
	cmp r5, r4
	bne _08022156
	movs r1, #1
	b _08022156
_08022154:
	movs r1, #2
_08022156:
	movs r0, #2
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _080221A8 @ => 0x08062ADC
	lsls r4, r5, #3
	adds r4, r4, r0
	ldrh r0, [r4, #4]
	bl FUN_08050820
	adds r3, r0, #0
	bl FUN_08020320
	ldrb r0, [r4, #6]
	add r1, sp, #4
	bl FUN_080504E4
	adds r3, r0, #0
	bl FUN_08020344
	ldr r0, _080221AC @ => 0x000007D1
	bl FUN_08050820
	adds r3, r0, #0
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	ldr r1, _080221B0 @ => 0x00000195
	adds r0, r0, r1
	lsls r2, r5, #4
	adds r2, #0x38
	movs r1, #1
	str r1, [sp]
	movs r1, #0x78
	bl FUN_0801F8B8
_0802219E:
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080221A8: .4byte ROMREF_08062ADC
_080221AC: .4byte 0x000007D1
_080221B0: .4byte 0x00000195

	thumb_func_start FUN_080221B4
FUN_080221B4: @ 0x080221B4
	push {r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	movs r2, #0
	cmp r4, r1
	bne _080221C2
	movs r2, #1
_080221C2:
	movs r0, #2
	adds r1, r2, #0
	movs r2, #0
	bl FUN_0801FEA0
	adds r0, r4, #1
	add r1, sp, #4
	bl FUN_080504E4
	adds r3, r0, #0
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	ldr r1, _080221F8 @ => 0x00000195
	adds r0, r0, r1
	lsls r2, r4, #4
	adds r2, #0x38
	movs r1, #1
	str r1, [sp]
	movs r1, #0x78
	bl FUN_0801F8B8
	add sp, #0x14
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080221F8: .4byte 0x00000195

	thumb_func_start FUN_080221FC
FUN_080221FC: @ 0x080221FC
	push {lr}
	bl FUN_0804C050
	movs r0, #0x27
	movs r1, #0
	movs r2, #0
	bl FUN_0802CED4
	ldr r0, _0802221C @ => 0x030042B0
	movs r2, #0
	movs r1, #1
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	pop {r0}
	bx r0
	.align 2, 0
_0802221C: .4byte gUnk_030042B0

	thumb_func_start FUN_08022220
FUN_08022220: @ 0x08022220
	push {r4, r5, lr}
	adds r1, r0, #0
	subs r0, r1, #2
	movs r3, #1
	cmp r0, #2
	bhi _0802222E
	adds r3, r1, #0
_0802222E:
	movs r2, #0
	cmp r2, r3
	bge _0802224A
	movs r4, #1
	ldr r5, _0802226C @ => 0x03001DC8
	adds r2, r3, #0
_0802223A:
	ldm r5!, {r1}
	ldr r0, [r1, #0xc]
	orrs r0, r4
	str r0, [r1, #0xc]
	subs r2, #1
	cmp r2, #0
	bne _0802223A
	adds r2, r3, #0
_0802224A:
	cmp r2, #1
	bgt _08022266
	ldr r1, _0802226C @ => 0x03001DC8
	movs r4, #2
	rsbs r4, r4, #0
	lsls r0, r2, #2
	adds r3, r0, r1
_08022258:
	ldm r3!, {r1}
	ldr r0, [r1, #0xc]
	ands r0, r4
	str r0, [r1, #0xc]
	adds r2, #1
	cmp r2, #1
	ble _08022258
_08022266:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802226C: .4byte gUnk_03001DC8

	thumb_func_start FUN_08022270
FUN_08022270: @ 0x08022270
	push {lr}
	bl FUN_0804C084
	movs r1, #2
	cmp r0, #0
	bne _0802227E
	movs r1, #1
_0802227E:
	adds r0, r1, #0
	bl FUN_08021F40
	pop {r0}
	bx r0

	thumb_func_start FUN_08022288
FUN_08022288: @ 0x08022288
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #2
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0x1e
	bl FUN_0800C790
	ldr r0, _080222E4 @ => 0x08062AC8
	ldr r0, [r0]
	bl FUN_0801FE58
	adds r0, r4, #0
	bl FUN_08050820
	adds r5, r0, #0
	ldr r0, _080222E8 @ => 0x000009A8
	cmp r4, r0
	bne _080222EC
	bl FUN_08050814
	cmp r0, #2
	beq _080222C4
	cmp r0, #5
	beq _080222C4
	cmp r0, #4
	bne _080222EC
_080222C4:
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #1
	movs r1, #0
	bl FUN_0801FEA0
	str r5, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r1, #0x78
	movs r2, #9
	movs r3, #0xc0
	bl FUN_08020098
	b _08022306
	.align 2, 0
_080222E4: .4byte ROMREF_08062AC8
_080222E8: .4byte 0x000009A8
_080222EC:
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #3
	movs r1, #0
	bl FUN_0801FEA0
	movs r0, #1
	str r0, [sp]
	movs r1, #0x78
	movs r2, #0xc
	adds r3, r5, #0
	bl FUN_0801F8B8
_08022306:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08022310
FUN_08022310: @ 0x08022310
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _08022344 @ => 0x08062ADC
	lsls r0, r5, #3
	adds r0, r0, r1
	ldr r5, [r0]
	ldr r0, _08022348 @ => 0x03004800
	ldr r1, [r0]
	adds r0, r5, #0
	bl FUN_08038498
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08038464
	adds r1, r0, #0
	movs r0, #0
	cmp r4, #0
	beq _0802233E
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
_0802233E:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08022344: .4byte ROMREF_08062ADC
_08022348: .4byte gUnk_03004800

	thumb_func_start FUN_0802234C
FUN_0802234C: @ 0x0802234C
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	movs r6, #0
_08022352:
	ldr r1, _08022390 @ => 0x08062ADC
	lsls r0, r6, #3
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r0, _08022394 @ => 0x03004800
	ldr r1, [r0]
	adds r0, r4, #0
	bl FUN_08038498
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08038464
	adds r1, r0, #0
	movs r0, #0
	cmp r5, #0
	beq _0802237C
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
_0802237C:
	cmp r0, #0
	beq _08022382
	adds r7, #1
_08022382:
	adds r6, #1
	cmp r6, #2
	ble _08022352
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08022390: .4byte ROMREF_08062ADC
_08022394: .4byte gUnk_03004800
