.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_0804E26C
FUN_0804E26C: @ 0x0804E26C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	bl FUN_080012FC
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_08009B04
	adds r4, r0, #0
	movs r0, #4
	ldrsh r1, [r4, r0]
	movs r3, #6
	ldrsh r2, [r4, r3]
	adds r0, r6, #0
	bl FUN_08001734
	ldr r0, [r4]
	movs r2, #0
	strh r0, [r6, #8]
	ldrb r0, [r4, #0xa]
	strh r0, [r6, #0xa]
	movs r0, #0x88
	lsls r0, r0, #0xa
	str r0, [r6, #0xc]
	ldrb r1, [r4, #0xb]
	movs r3, #0x98
	lsls r3, r3, #1
	adds r0, r6, r3
	strb r1, [r0]
	ldrb r0, [r4, #8]
	adds r3, #1
	adds r1, r6, r3
	strb r0, [r1]
	ldrb r0, [r4, #9]
	adds r3, #1
	adds r1, r6, r3
	strb r0, [r1]
	str r2, [r6, #0x50]
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_0804E2CC
FUN_0804E2CC: @ 0x0804E2CC
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08009B04
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_080012D8
	adds r5, r0, #0
	cmp r5, #0
	beq _0804E3CC
	movs r0, #4
	ldrsh r1, [r4, r0]
	lsls r1, r1, #0x10
	movs r0, #6
	ldrsh r2, [r4, r0]
	lsls r2, r2, #0x10
	adds r0, r5, #0
	bl FUN_08001728
	ldr r0, [r4]
	movs r6, #0
	strh r0, [r5, #8]
	ldrb r0, [r4, #8]
	strh r0, [r5, #0xa]
	adds r2, r5, #0
	adds r2, #0xa5
	ldrb r1, [r2]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #9]
	adds r0, r5, #0
	bl FUN_080017B8
	ldr r1, _0804E39C @ => 0x00060011
	adds r0, r5, #0
	bl FUN_08002038
	ldr r4, _0804E3A0 @ => 0x0808FDD4
	ldrh r1, [r5, #0xa]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl FUN_080015B8
	ldrh r1, [r5, #0xa]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r4, #4
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	ldrh r1, [r5, #0xa]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, #8
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl FUN_08048E24
	adds r1, r0, #0
	adds r0, r5, #0
	bl FUN_0803EF14
	ldrh r0, [r5, #0xa]
	cmp r0, #0x1c
	bne _0804E380
	movs r0, #6
	strb r0, [r5, #0x12]
	adds r0, r5, #0
	movs r1, #4
	bl FUN_080017D4
_0804E380:
	ldrh r0, [r5, #0xa]
	cmp r0, #4
	bne _0804E3A8
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r5, #0x14]
	ldr r0, _0804E3A4 @ => FUN_0804E5F0
	str r0, [r5, #0x50]
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0x4d
	strb r0, [r1]
	b _0804E3CC
	.align 2, 0
_0804E39C: .4byte 0x00060011
_0804E3A0: .4byte ROMREF_0808FDD4
_0804E3A4: .4byte FUN_0804E5F0
_0804E3A8:
	cmp r0, #2
	bne _0804E3C0
	ldr r0, _0804E3BC @ => FUN_0804E3D8
	str r0, [r5, #0x50]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r5, r1
	strb r6, [r0]
	b _0804E3CC
	.align 2, 0
_0804E3BC: .4byte FUN_0804E3D8
_0804E3C0:
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r5, r1
	strb r6, [r0]
	ldr r0, _0804E3D4 @ => FUN_080040DC
	str r0, [r5, #0x50]
_0804E3CC:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0804E3D4: .4byte FUN_080040DC

	thumb_func_start FUN_0804E3D8
FUN_0804E3D8: @ 0x0804E3D8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x24
	adds r5, r0, #0
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	mov sb, r0
	ldr r2, _0804E414 @ => 0x00000139
	adds r6, r5, r2
	ldrb r0, [r6]
	mov r8, r0
	subs r1, #0x1b
	adds r0, r5, r1
	ldrb r4, [r0]
	adds r0, r5, #0
	bl FUN_0803977C
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804E418
	cmp r0, #0x4c
	beq _0804E424
	b _0804E5DA
	.align 2, 0
_0804E414: .4byte 0x00000139
_0804E418:
	ldr r0, [r5, #0xc]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0xc]
	b _0804E5DA
_0804E424:
	cmp r4, #0
	beq _0804E43A
	cmp r4, #0
	bge _0804E42E
	b _0804E5DA
_0804E42E:
	cmp r4, #0xa
	beq _0804E45E
	cmp r4, #0xb
	bne _0804E438
	b _0804E55C
_0804E438:
	b _0804E5DA
_0804E43A:
	ldr r0, [r5, #0xc]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5, #0xc]
	adds r0, r5, #0
	movs r1, #0xb
	bl FUN_08001F84
	movs r1, #0xe1
	lsls r1, r1, #1
	movs r0, #0x78
	bl FUN_080424F8
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r5, r2
	strh r0, [r1]
	b _0804E5DA
_0804E45E:
	ldr r0, _0804E47C @ => 0x0000011F
	adds r2, r5, r0
	ldrb r0, [r2]
	cmp r0, #1
	bne _0804E484
	ldr r0, [r5, #0x14]
	ldr r1, _0804E480 @ => 0x0000051E
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	cmp r0, r1
	ble _0804E496
	movs r0, #0
	b _0804E494
	.align 2, 0
_0804E47C: .4byte 0x0000011F
_0804E480: .4byte 0x0000051E
_0804E484:
	ldr r0, [r5, #0x14]
	ldr r1, _0804E4FC @ => 0xFFFFFAE2
	adds r0, r0, r1
	str r0, [r5, #0x14]
	ldr r1, _0804E500 @ => 0x0000FFFF
	cmp r0, r1
	bgt _0804E496
	movs r0, #1
_0804E494:
	strb r0, [r2]
_0804E496:
	ldr r6, [r5, #0x18]
	ldr r7, [r5, #0x1c]
	ldr r2, [r5, #0x38]
	ldr r3, [r5, #0x3c]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [sp]
	adds r1, r7, #0
	adds r0, r6, #0
	bl FUN_08001D30
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #8
	bne _0804E542
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	mov r0, sb
	bl FUN_08009BC8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r8, r0
	bne _0804E504
	ldrb r4, [r5, #0x12]
	adds r0, r5, #0
	bl FUN_08001848
	adds r0, r5, #0
	movs r1, #0xb
	bl FUN_08001F84
	movs r1, #0xe1
	lsls r1, r1, #1
	movs r0, #0x78
	bl FUN_080424F8
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r5, r2
	strh r0, [r1]
	ldr r0, [r5, #0xc]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0xc]
	b _0804E542
	.align 2, 0
_0804E4FC: .4byte 0xFFFFFAE2
_0804E500: .4byte 0x0000FFFF
_0804E504:
	ldr r1, _0804E558 @ => 0x00000139
	adds r0, r5, r1
	mov r2, r8
	strb r2, [r0]
	add r0, sp, #4
	mov r1, sb
	mov r2, r8
	bl FUN_08009BE0
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	add r4, sp, #0xc
	adds r1, r5, #0
	adds r1, #0x38
	adds r0, r4, #0
	bl FUN_0802C408
	ldr r0, [sp, #0xc]
	subs r0, r0, r6
	str r0, [sp, #0xc]
	ldr r0, [r4, #4]
	subs r0, r0, r7
	str r0, [r4, #4]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl FUN_0802C4C4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0804E542:
	adds r0, r5, #0
	bl FUN_08001824
	ldrb r0, [r5, #0x12]
	cmp r0, r4
	beq _0804E5DA
	adds r1, r4, #0
	adds r0, r5, #0
	bl FUN_08001FF0
	b _0804E5DA
	.align 2, 0
_0804E558: .4byte 0x00000139
_0804E55C:
	adds r0, r5, #0
	bl FUN_08001848
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _0804E5E8 @ => 0xFFFF0000
	cmp r1, r0
	bne _0804E5DA
	ldr r0, [r5, #0xc]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5, #0xc]
	add r0, sp, #0x14
	mov r1, sb
	movs r2, #0
	bl FUN_08009BE0
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	add r4, sp, #0xc
	adds r1, r5, #0
	adds r1, #0x18
	adds r0, r4, #0
	bl FUN_0802C408
	movs r0, #1
	strb r0, [r6]
	add r0, sp, #0x1c
	mov r1, sb
	movs r2, #1
	bl FUN_08009BE0
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	adds r1, r5, #0
	adds r1, #0x38
	adds r0, r4, #0
	bl FUN_0802C408
	adds r0, r5, #0
	movs r1, #0xa
	bl FUN_08001F84
	ldr r2, _0804E5EC @ => 0x0000011F
	adds r1, r5, r2
	movs r0, #0
	strb r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #9
	movs r1, #0xc0
	lsls r1, r1, #0xa
	bl FUN_080424F8
	str r0, [r5, #0x14]
_0804E5DA:
	add sp, #0x24
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E5E8: .4byte 0xFFFF0000
_0804E5EC: .4byte 0x0000011F

	thumb_func_start FUN_0804E5F0
FUN_0804E5F0: @ 0x0804E5F0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrb r0, [r2]
	cmp r0, #0x4d
	beq _0804E606
	cmp r0, #0x4e
	beq _0804E63C
	b _0804E64E
_0804E606:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0804E64E
	movs r0, #0x4e
	strb r0, [r2]
	ldr r1, _0804E630 @ => 0x0808FFA8
	ldr r0, _0804E634 @ => 0x09FC1E84
	ldr r2, [r0]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_0800192C
	ldr r2, _0804E638 @ => 0xFFFD0000
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001744
	b _0804E64E
	.align 2, 0
_0804E630: .4byte ROMREF_0808FFA8
_0804E634: .4byte ROMREF_09FC1E84
_0804E638: .4byte 0xFFFD0000
_0804E63C:
	ldr r1, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	bne _0804E64E
	movs r0, #2
	orrs r1, r0
	str r1, [r4, #0xc]
_0804E64E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_0804E654
FUN_0804E654: @ 0x0804E654
	movs r0, #1
	bx lr

	thumb_func_start FUN_0804E658
FUN_0804E658: @ 0x0804E658
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl FUN_08001D8C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804E672
	ldr r0, [r4, #0x40]
	cmp r0, #1
	bne _0804E672
	movs r0, #0
	b _0804E674
_0804E672:
	movs r0, #1
_0804E674:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0804E67C
FUN_0804E67C: @ 0x0804E67C
	push {r4, lr}
	adds r4, r1, #0
	bl FUN_0803CE64
	cmp r0, #0
	bne _0804E68C
	movs r0, #0xe
	b _0804E68E
_0804E68C:
	movs r0, #0x20
_0804E68E:
	strb r0, [r4]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_0804E698
FUN_0804E698: @ 0x0804E698
	push {r4, lr}
	adds r4, r1, #0
	cmp r2, #0xe
	beq _0804E6A8
	cmp r2, #0x20
	beq _0804E6E0
_0804E6A4:
	movs r0, #0
	b _0804E6EE
_0804E6A8:
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _0804E6EC
	ldrb r0, [r4, #0xa]
	movs r1, #0x21
	bl FUN_0803A10C
	cmp r0, #1
	bne _0804E6A4
	ldrb r0, [r4, #0xa]
	movs r1, #0x22
	bl FUN_0803A10C
	cmp r0, #1
	bne _0804E6A4
	ldrb r0, [r4, #0xa]
	movs r1, #0x23
	bl FUN_0803A10C
	cmp r0, #1
	bne _0804E6A4
	ldrb r0, [r4, #0xa]
	movs r1, #0x24
	bl FUN_0803A10C
	cmp r0, #1
	beq _0804E6EC
	b _0804E6A4
_0804E6E0:
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _0804E6EC
	ldrh r0, [r4, #0xa]
	cmp r0, #1
	bne _0804E6A4
_0804E6EC:
	movs r0, #1
_0804E6EE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_0804E6F4
FUN_0804E6F4: @ 0x0804E6F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	bl FUN_0803D1F0
	adds r4, r0, #0
	cmp r4, #0
	beq _0804E72E
	strh r7, [r4, #4]
	ldr r0, [r6, #0x34]
	movs r1, #0
	add r2, sp, #4
	bl FUN_08001A84
	adds r2, r4, #0
	adds r2, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	add r1, sp, #4
	movs r3, #0
	bl FUN_08043BB8
	adds r0, r5, #0
	movs r1, #0xa
	bl FUN_08001F20
_0804E72E:
	adds r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_0804E738
FUN_0804E738: @ 0x0804E738
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0803D8C8
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	cmp r0, #0xe
	beq _0804E750
	cmp r0, #0x20
	beq _0804E758
	movs r0, #0
	b _0804E75E
_0804E750:
	adds r0, r4, #0
	bl FUN_0803CA6C
	b _0804E75E
_0804E758:
	adds r0, r4, #0
	bl FUN_0803CC7C
_0804E75E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_0804E764
FUN_0804E764: @ 0x0804E764
	bx lr
	.align 2, 0
