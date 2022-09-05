.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_0802A1A8
FUN_0802A1A8: @ 0x0802A1A8
	push {r4, lr}
	sub sp, #4
	ldr r0, _0802A1D8 @ => 0x0300472C
	ldr r4, _0802A1DC @ => 0x030042B0
	ldrh r1, [r4, #6]
	str r1, [sp]
	movs r1, #0
	movs r2, #3
	movs r3, #1
	bl FUN_08024B30
	ldrh r1, [r4, #0xc]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #3
	bl FUN_08029EA4
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802A1D8: .4byte gUnk_0300472C
_0802A1DC: .4byte gUnk_030042B0

	thumb_func_start FUN_0802A1E0
FUN_0802A1E0: @ 0x0802A1E0
	push {lr}
	ldr r0, _0802A1F8 @ => 0x03004750
	ldr r0, [r0]
	cmp r0, #5
	bne _0802A1FC
	movs r0, #5
	movs r1, #1
	movs r2, #0
	bl FUN_0802CED4
	b _0802A20E
	.align 2, 0
_0802A1F8: .4byte gUnk_03004750
_0802A1FC:
	cmp r0, #0x1e
	bne _0802A208
	movs r0, #0x1e
	bl FUN_0802CEC4
	b _0802A20E
_0802A208:
	movs r0, #9
	bl FUN_0802CEC4
_0802A20E:
	movs r0, #0xb1
	bl FUN_0804DE0C
	pop {r0}
	bx r0

	thumb_func_start FUN_0802A218
FUN_0802A218: @ 0x0802A218
	push {r4, lr}
	movs r1, #0x82
	lsls r1, r1, #1
	movs r0, #0x7d
	movs r2, #8
	movs r3, #0
	bl FUN_0802D5E8
	ldr r4, _0802A240 @ => 0x03004790
	str r0, [r4, #4]
	ldr r1, _0802A244 @ => 0x00000105
	movs r0, #0x7e
	movs r2, #8
	movs r3, #0
	bl FUN_0802D5E8
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802A240: .4byte gUnk_03004790
_0802A244: .4byte 0x00000105

	thumb_func_start FUN_0802A248
FUN_0802A248: @ 0x0802A248
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	movs r2, #0
	cmp r6, r1
	bne _0802A256
	movs r2, #1
_0802A256:
	movs r0, #3
	adds r1, r2, #0
	movs r2, #0
	bl FUN_0801FEA0
	lsls r5, r6, #2
	adds r5, r5, r6
	lsls r5, r5, #2
	adds r5, #0xe6
	lsls r4, r6, #1
	adds r4, r4, r6
	lsls r4, r4, #3
	adds r4, #0x34
	movs r1, #0xef
	lsls r1, r1, #3
	adds r0, r6, r1
	bl FUN_08050820
	adds r3, r0, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0x78
	adds r2, r4, #0
	bl FUN_0801F8B8
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0802A294
FUN_0802A294: @ 0x0802A294
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _0802A2EC @ => 0x03002040
	ldr r1, [r0]
	ldr r5, _0802A2F0 @ => 0x03004720
	ldr r0, [r5, #0xc]
	lsls r0, r0, #2
	adds r1, #4
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #1
	bne _0802A300
	ldr r4, _0802A2F4 @ => 0x03002044
	ldr r0, [r4]
	cmp r0, #0
	beq _0802A2C0
	movs r1, #1
	bl FUN_08001FB0
	movs r0, #0
	str r0, [r4]
_0802A2C0:
	ldr r1, [r5, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0802A2F8 @ => 0x03005E60
	adds r0, r0, r1
	ldr r2, _0802A2FC @ => 0x080637E0
	lsls r1, r6, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r3, [r1, r2]
	lsls r3, r3, #0x10
	movs r2, #2
	ldrsh r1, [r1, r2]
	lsls r1, r1, #0x10
	str r1, [sp]
	movs r1, #0
	movs r2, #1
	bl FUN_08028CEC
	str r0, [r4]
	b _0802A30E
	.align 2, 0
_0802A2EC: .4byte gUnk_03002040
_0802A2F0: .4byte gUnk_03004720
_0802A2F4: .4byte gUnk_03002044
_0802A2F8: .4byte gUnk_03005E60
_0802A2FC: .4byte ROMREF_080637E0
_0802A300:
	ldr r0, _0802A318 @ => 0x03002044
	ldr r0, [r0]
	cmp r0, #0
	beq _0802A30E
	movs r1, #1
	bl FUN_08001FB0
_0802A30E:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802A318: .4byte gUnk_03002044

	thumb_func_start FUN_0802A31C
FUN_0802A31C: @ 0x0802A31C
	push {r4, r5, lr}
	sub sp, #8
	adds r2, r0, #0
	adds r4, r1, #0
	movs r5, #1
	ldrh r0, [r4, #6]
	cmp r0, #1
	beq _0802A396
	cmp r0, #1
	bgt _0802A336
	cmp r0, #0
	beq _0802A340
	b _0802A3A4
_0802A336:
	cmp r0, #5
	beq _0802A386
	cmp r0, #9
	beq _0802A35A
	b _0802A3A4
_0802A340:
	movs r3, #0x8d
	lsls r3, r3, #1
	str r5, [sp]
	movs r0, #0x42
	str r0, [sp, #4]
	adds r0, r2, #0
	adds r1, r4, #0
	movs r2, #0xc
	bl FUN_0803DB6C
	movs r0, #9
	strh r0, [r4, #6]
	b _0802A3A4
_0802A35A:
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0802A3A4
	adds r2, #0x54
	ldrb r0, [r2]
	movs r1, #4
	eors r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x10
	movs r1, #0
	movs r2, #4
	bl FUN_0802CED4
	movs r0, #5
	strh r0, [r4, #6]
	b _0802A3A4
_0802A386:
	adds r0, r2, #0
	adds r0, #0x54
	ldrb r1, [r0]
	movs r2, #8
	eors r1, r2
	strb r1, [r0]
	strh r5, [r4, #6]
	b _0802A3A4
_0802A396:
	adds r0, r2, #0
	adds r1, r4, #0
	movs r2, #6
	movs r3, #4
	bl FUN_0803DC54
	movs r5, #2
_0802A3A4:
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0802A3B0
FUN_0802A3B0: @ 0x0802A3B0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0802A3E0 @ => 0x03003DF0
	ldr r0, [r4, #0x6c]
	bl FUN_08026300
	cmp r0, #0
	bne _0802A3D6
	ldr r0, [r4, #0x6c]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #3]
	cmp r0, #0
	bne _0802A3D6
	adds r2, r5, #0
	adds r2, #0x54
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
_0802A3D6:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802A3E0: .4byte gUnk_03003DF0

	thumb_func_start FUN_0802A3E4
FUN_0802A3E4: @ 0x0802A3E4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	movs r4, #1
	bl FUN_08001D8C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802A400
	ldr r1, [r5, #0x40]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r4, r0, #0x1f
_0802A400:
	adds r0, r5, #0
	adds r0, #0x54
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802A40C
	movs r4, #0
_0802A40C:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start FUN_0802A414
FUN_0802A414: @ 0x0802A414
	push {lr}
	adds r2, r1, #0
	movs r1, #0
	strb r1, [r2]
	adds r0, #0x54
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0802A42C
	movs r0, #0x2d
	strb r0, [r2]
_0802A42C:
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0802A434
FUN_0802A434: @ 0x0802A434
	push {lr}
	cmp r2, #0x2d
	bne _0802A444
	ldrh r0, [r1, #8]
	cmp r0, #0
	beq _0802A444
	movs r0, #0
	b _0802A446
_0802A444:
	movs r0, #1
_0802A446:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0802A44C
FUN_0802A44C: @ 0x0802A44C
	push {r4, lr}
	adds r4, r2, #0
	bl FUN_0803D1F0
	cmp r0, #0
	beq _0802A45A
	strh r4, [r0, #4]
_0802A45A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_0802A460
FUN_0802A460: @ 0x0802A460
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	bl FUN_0803D8C8
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	cmp r0, #0x2d
	bne _0802A47A
	adds r0, r4, #0
	bl FUN_0802A31C
	adds r5, r0, #0
_0802A47A:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0802A484
FUN_0802A484: @ 0x0802A484
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r6, #0
	adds r4, #0x54
	ldrb r1, [r4]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0802A4B4
	ldr r5, _0802A4D8 @ => 0x03003DF0
	ldr r0, [r5, #0x6c]
	bl FUN_08026300
	cmp r0, #0
	bne _0802A4B4
	ldr r0, [r5, #0x6c]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #3]
	cmp r0, #0
	bne _0802A4B4
	ldrb r1, [r4]
	movs r0, #4
	orrs r0, r1
	strb r0, [r4]
_0802A4B4:
	adds r0, r6, #0
	adds r0, #0x54
	ldrb r0, [r0]
	movs r1, #0xf7
	ands r0, r1
	movs r1, #4
	ands r0, r1
	movs r1, #0
	cmp r0, #0
	beq _0802A4CA
	movs r1, #7
_0802A4CA:
	ldr r0, [r6, #0x34]
	bl FUN_08000E44
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802A4D8: .4byte gUnk_03003DF0

	thumb_func_start FUN_0802A4DC
FUN_0802A4DC: @ 0x0802A4DC
	push {lr}
	adds r3, r0, #0
	movs r2, #0
	b _0802A4F6
_0802A4E4:
	ldr r1, [r3, #4]
	lsls r0, r2, #2
	adds r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #0
	beq _0802A4F4
	subs r0, #1
	strb r0, [r1, #3]
_0802A4F4:
	adds r2, #1
_0802A4F6:
	ldrb r0, [r3]
	cmp r2, r0
	blo _0802A4E4
	pop {r0}
	bx r0

	thumb_func_start AgbMain
AgbMain: @ 0x0802A500
	push {r4, r5, lr}
	ldr r2, _0802A5D0 @ => 0x04000204
	ldrh r1, [r2]
	ldr r0, _0802A5D4 @ => 0x0000FFE3
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	ldr r3, _0802A5D8 @ => 0x00004014
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x3f
	movs r1, #0x10
	bl FUN_080457CC
	bl FUN_080421C4
	bl FUN_08024EA8
	bl FUN_0802C928
	bl FUN_0801FE28
	bl FUN_08050784
	bl FUN_0804444C
	bl FUN_0802CE50
	bl FUN_08052720
	bl FUN_08001280
	bl FUN_0800C3F8
	bl FUN_08015694
	bl FUN_0801AC70
	bl FUN_08021188
	bl FUN_0803B66C
	bl FUN_0803F034
	bl FUN_08045578
	bl FUN_08046C88
	bl FUN_08039550
	bl FUN_0804242C
	bl FUN_0802C1D0
	bl FUN_080249D4
	bl FUN_08050FF8
	bl FUN_08009990
	ldr r1, _0802A5DC @ => 0x03004374
	movs r0, #0
	str r0, [r1]
	movs r0, #5
	bl FUN_0804C12C
	movs r0, #1
	bl FUN_0804C144
	bl FUN_0804DF0C
	bl FUN_08024EFC
	ldr r0, _0802A5E0 @ => FUN_08025038
	bl FUN_08024F40
	bl FUN_08051E68
	bl FUN_0801B96C
	bl FUN_0800B978
	ldr r1, _0802A5E4 @ => 0x03004370
	movs r0, #2
	str r0, [r1]
	ldr r5, _0802A5E8 @ => 0x030042E0
	adds r4, r1, #0
_0802A5B0:
	bl FUN_0802CDA4
_0802A5B4:
	bl SVC_VBlankIntrWait
	ldr r2, [r5]
	ldr r3, [r2, #0x1c]
	ldr r0, [r2, #0x20]
	subs r1, r3, r0
	cmp r1, #0
	bge _0802A5C6
	rsbs r1, r1, #0
_0802A5C6:
	ldr r0, [r4]
	cmp r1, r0
	blo _0802A5B4
	str r3, [r2, #0x20]
	b _0802A5B0
	.align 2, 0
_0802A5D0: .4byte 0x04000204
_0802A5D4: .4byte 0x0000FFE3
_0802A5D8: .4byte 0x00004014
_0802A5DC: .4byte gUnk_03004374
_0802A5E0: .4byte FUN_08025038
_0802A5E4: .4byte gUnk_03004370
_0802A5E8: .4byte gUnk_030042E0
