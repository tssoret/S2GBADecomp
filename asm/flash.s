.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_0800B390
FUN_0800B390: @ 0x0800B390
	push {lr}
	bl IdentifyFlash
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0800B39C
FUN_0800B39C: @ 0x0800B39C
	bx lr
	.align 2, 0

	thumb_func_start FUN_0800B3A0
FUN_0800B3A0: @ 0x0800B3A0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	bl FUN_0800B464
	cmp r0, #0
	bne _0800B3B4
	movs r0, #0
	b _0800B3E4
_0800B3B4:
	lsrs r6, r4, #0xc
	cmp r5, #0
	beq _0800B3DE
_0800B3BA:
	adds r4, r5, #0
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r5, r0
	bls _0800B3C6
	adds r4, r0, #0
_0800B3C6:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl ReadFlash
	adds r7, r7, r4
	subs r5, r5, r4
	adds r6, #1
	cmp r5, #0
	bne _0800B3BA
_0800B3DE:
	bl FUN_0800B4A8
	movs r0, #1
_0800B3E4:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0800B3EC
FUN_0800B3EC: @ 0x0800B3EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r8, r2
	lsrs r7, r0, #0xc
	lsrs r4, r1, #0xc
	bl FUN_0800B464
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _0800B40C
	movs r0, #0
	b _0800B452
_0800B40C:
	cmp r4, #0
	beq _0800B446
	ldr r0, _0800B460 @ => gProgramFlashSector
	mov sb, r0
_0800B414:
	movs r6, #3
	lsls r3, r7, #0x10
	adds r7, #1
	subs r4, #1
_0800B41C:
	mov r0, sb
	ldr r2, [r0]
	lsrs r0, r3, #0x10
	mov r1, r8
	str r3, [sp]
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r3, [sp]
	cmp r5, #0
	beq _0800B43C
	adds r0, r6, #0
	subs r6, #1
	cmp r0, #0
	bne _0800B41C
_0800B43C:
	movs r0, #0x80
	lsls r0, r0, #5
	add r8, r0
	cmp r4, #0
	bne _0800B414
_0800B446:
	bl FUN_0800B4A8
	movs r0, #0
	cmp r5, #0
	bne _0800B452
	movs r0, #1
_0800B452:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800B460: .4byte gProgramFlashSector

	thumb_func_start FUN_0800B464
FUN_0800B464: @ 0x0800B464
	push {lr}
	ldr r1, _0800B48C @ => 0x030031F4
	ldr r2, _0800B490 @ => 0x04000004
	ldrh r0, [r2]
	strh r0, [r1]
	ldr r1, _0800B494 @ => 0x04000202
	ldr r3, _0800B498 @ => 0x00003FFF
	adds r0, r3, #0
	strh r0, [r1]
	movs r0, #0
	strh r0, [r2]
	ldr r1, _0800B49C @ => 0x03004308
	movs r0, #2
	bl SetFlashTimerIntr
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800B4A0
	movs r0, #1
	b _0800B4A2
	.align 2, 0
_0800B48C: .4byte gUnk_030031F4
_0800B490: .4byte 0x04000004
_0800B494: .4byte 0x04000202
_0800B498: .4byte 0x00003FFF
_0800B49C: .4byte gUnk_03004308
_0800B4A0:
	movs r0, #0
_0800B4A2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0800B4A8
FUN_0800B4A8: @ 0x0800B4A8
	ldr r0, _0800B4B4 @ => 0x04000004
	ldr r1, _0800B4B8 @ => 0x030031F4
	ldrh r1, [r1]
	strh r1, [r0]
	bx lr
	.align 2, 0
_0800B4B4: .4byte 0x04000004
_0800B4B8: .4byte gUnk_030031F4
