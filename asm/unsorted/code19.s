.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_08028814
FUN_08028814: @ 0x08028814
	push {lr}
	ldr r0, _08028840 @ => 0x03004720
	ldr r0, [r0, #0xc]
	bl FUN_080507A4
	bl FUN_080444A4
	bl FUN_0804DF78
	bl FUN_080443E0
	bl FUN_0804DF84
	ldr r0, _08028844 @ => 0x03004750
	ldr r0, [r0]
	cmp r0, #0
	bne _08028848
	movs r0, #3
	bl FUN_0802CEC4
	b _08028852
	.align 2, 0
_08028840: .4byte gUnk_03004720
_08028844: .4byte gUnk_03004750
_08028848:
	movs r0, #5
	movs r1, #2
	movs r2, #0
	bl FUN_0802CED4
_08028852:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08028858
FUN_08028858: @ 0x08028858
	push {lr}
	ldr r0, _08028870 @ => 0x03004750
	ldr r0, [r0]
	cmp r0, #5
	bne _0802886C
	movs r0, #5
	movs r1, #2
	movs r2, #0
	bl FUN_0802CED4
_0802886C:
	pop {r0}
	bx r0
	.align 2, 0
_08028870: .4byte gUnk_03004750

	thumb_func_start FUN_08028874
FUN_08028874: @ 0x08028874
	push {r4, r5, lr}
	sub sp, #4
	ldr r4, _080288AC @ => 0x03004720
	ldr r5, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0xc
	ldr r1, _080288B0 @ => 0x030042B0
	ldrh r1, [r1, #6]
	str r1, [sp]
	movs r1, #0
	movs r2, #5
	movs r3, #1
	bl FUN_08024A88
	adds r0, r5, #0
	bl FUN_08028918
	ldr r0, [r4, #0xc]
	bl FUN_08028918
	ldr r0, [r4, #0xc]
	bl FUN_0802875C
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080288AC: .4byte gUnk_03004720
_080288B0: .4byte gUnk_030042B0

	thumb_func_start FUN_080288B4
FUN_080288B4: @ 0x080288B4
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080288CC @ => 0x03004720
	ldr r0, [r0, #0xc]
	cmp r4, r0
	beq _080288D0
	movs r1, #0
	movs r5, #1
	rsbs r5, r5, #0
	b _080288D4
	.align 2, 0
_080288CC: .4byte gUnk_03004720
_080288D0:
	movs r1, #1
	movs r5, #0
_080288D4:
	movs r0, #3
	movs r2, #0
	bl FUN_0801FEA0
	ldr r1, _08028910 @ => 0x00000732
	adds r0, r4, r1
	bl FUN_08050820
	str r0, [sp]
	mov r0, sp
	adds r1, r4, #0
	bl FUN_08050B78
	ldr r1, _08028914 @ => 0x03006530
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r2, r4, #4
	adds r2, #0x20
	adds r2, r2, r5
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #0x78
	bl FUN_08050BDC
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08028910: .4byte 0x00000732
_08028914: .4byte gUnk_03006530

	thumb_func_start FUN_08028918
FUN_08028918: @ 0x08028918
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _08028940 @ => 0x03006530
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0xc]
	ldr r0, _08028944 @ => 0x03004720
	ldr r0, [r0, #0xc]
	cmp r4, r0
	beq _08028948
	movs r1, #0
	movs r5, #1
	rsbs r5, r5, #0
	b _0802894C
	.align 2, 0
_08028940: .4byte gUnk_03006530
_08028944: .4byte gUnk_03004720
_08028948:
	movs r1, #1
	movs r5, #0
_0802894C:
	movs r0, #3
	movs r2, #0
	bl FUN_0801FEA0
	ldr r1, _08028988 @ => 0x00000732
	adds r0, r4, r1
	bl FUN_08050820
	str r0, [sp]
	mov r0, sp
	adds r1, r4, #0
	bl FUN_08050B78
	ldr r1, _0802898C @ => 0x03006530
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r2, r4, #4
	adds r2, #0x20
	adds r2, r2, r5
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #0x78
	bl FUN_08050BDC
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08028988: .4byte 0x00000732
_0802898C: .4byte gUnk_03006530

	thumb_func_start FUN_08028990
FUN_08028990: @ 0x08028990
	ldr r0, _0802899C @ => 0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	bx lr
	.align 2, 0
_0802899C: .4byte 0x04000004

	thumb_func_start FUN_080289A0
FUN_080289A0: @ 0x080289A0
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr

	thumb_func_start FUN_080289B0
FUN_080289B0: @ 0x080289B0
	push {lr}
	ldr r2, _080289C4 @ => 0x04000004
	movs r3, #1
_080289B6:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080289B6
	pop {r0}
	bx r0
	.align 2, 0
_080289C4: .4byte 0x04000004

	thumb_func_start FUN_080289C9
FUN_080289C9: @ 0x080289C8
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _080289D8 @ => 0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	bx lr
	.align 2, 0
_080289D8: .4byte 0x0000FF7F

	thumb_func_start FUN_080289DC
FUN_080289DC: @ 0x080289DC
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start FUN_080289EC
FUN_080289EC: @ 0x080289EC
	push {lr}
	ldr r2, _08028A0C @ => 0x04000004
	movs r3, #1
_080289F2:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080289F2
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08028A10 @ => 0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08028A0C: .4byte 0x04000004
_08028A10: .4byte 0x0000FF7F

	thumb_func_start FUN_08028A14
FUN_08028A14: @ 0x08028A14
	push {lr}
	ldr r2, _08028A34 @ => 0x04000004
	movs r3, #1
_08028A1A:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08028A1A
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strh r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08028A34: .4byte 0x04000004
