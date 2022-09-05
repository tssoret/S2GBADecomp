@ This file contains some decompression for VRAM and WRAM.
.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_0801ABA0
FUN_0801ABA0: @ 0x0801ABA0, DecompressWRAM
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r4, #0
	ldr r0, [r6]
	lsls r1, r0, #0x18
	lsrs r2, r1, #0x1c
	movs r1, #9
	rsbs r1, r1, #0
	ands r2, r1
	lsrs r0, r0, #8
	str r0, [sp]
	cmp r2, #8
	bhi _0801AC4A
	lsls r0, r2, #2
	ldr r1, _0801ABC8 @ =_0801ABCC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801ABC8: .4byte _0801ABCC
_0801ABCC: @ jump table
	.4byte _0801ABF0 @ case 0
	.4byte _0801AC0A @ case 1
	.4byte _0801AC14 @ case 2
	.4byte _0801AC1E @ case 3
	.4byte _0801AC28 @ case 4
	.4byte _0801AC4A @ case 5
	.4byte _0801AC3C @ case 6
	.4byte _0801AC4A @ case 7
	.4byte _0801AC4A @ case 8
_0801ABF0:
	adds r1, r4, #4
	ldr r0, [r6]
	lsrs r0, r0, #8
	lsls r2, r0, #9
	lsrs r2, r2, #0xb
	movs r0, #0x80
	lsls r0, r0, #0x13
	orrs r2, r0
	adds r0, r1, #0
	adds r1, r5, #0
	bl SVC_CpuSet
	b _0801AC4A
_0801AC0A:
	adds r0, r4, #0
	adds r1, r5, #0
	bl SVC_LZ77UnCompWRAM
	b _0801AC4A
_0801AC14:
	adds r0, r4, #0
	adds r1, r5, #0
	bl SVC_HuffUnComp
	b _0801AC4A
_0801AC1E:
	adds r0, r4, #0
	adds r1, r5, #0
	bl SVC_RLUnCompWRAM
	b _0801AC4A
_0801AC28:
	ldr r0, _0801AC38 @ => 0x030037B0
	ldr r3, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, sp
	bl _call_via_r3
	b _0801AC4A
	.align 2, 0
_0801AC38: .4byte gCustomDecompressFunc2Ptr
_0801AC3C:
	adds r0, r4, #4
	ldr r1, _0801AC6C @ => 0x03003B10
	ldr r3, [r1]
	adds r1, r5, #0
	mov r2, sp
	bl _call_via_r3
_0801AC4A:
	ldr r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0801AC60
	ldr r1, [sp]
	adds r0, r5, #0
	bl FUN_0801ADA0
_0801AC60:
	ldr r0, [r6]
	lsrs r0, r0, #8
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0801AC6C: .4byte gCustomDecompressFunc1Ptr

	thumb_func_start FUN_0801AC70
FUN_0801AC70: @ 0x0801AC70, SetupDecompFuncs
	push {r4, lr}
	ldr r0, _0801AC98 @ => FUN_08001A94
	ldr r4, _0801AC9C @ => 0x03003B20
	ldr r2, _0801ACA0 @ => 0x04000084
	adds r1, r4, #0
	bl SVC_CpuSet
	ldr r0, _0801ACA4 @ => 0x030037B0
	str r4, [r0]
	ldr r0, _0801ACA8 @ =FUN_080002EC
	ldr r4, _0801ACAC @ => 0x030037C0
	ldr r2, _0801ACB0 @ => 0x040000D4
	adds r1, r4, #0
	bl SVC_CpuSet
	ldr r0, _0801ACB4 @ => 0x03003B10
	str r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801AC98: .4byte FUN_08001A94
_0801AC9C: .4byte gCustomDecompressFunc2Data
_0801ACA0: .4byte 0x04000084
_0801ACA4: .4byte gCustomDecompressFunc2Ptr
_0801ACA8: .4byte FUN_080002EC
_0801ACAC: .4byte gCustomDecompressFunc1Data
_0801ACB0: .4byte 0x040000D4
_0801ACB4: .4byte gCustomDecompressFunc1Ptr

	thumb_func_start FUN_0801ACB8
FUN_0801ACB8: @ 0x0801ACB8, GetDataSize
	ldr r0, [r0]
	lsrs r0, r0, #8
	bx lr
	.align 2, 0

	thumb_func_start FUN_0801ACC0
FUN_0801ACC0: @ 0x0801ACC0
	push {r4, lr}
	movs r3, #1
	lsrs r1, r1, #1
	cmp r3, r1
	bhs _0801ACDC
	adds r2, r0, #0
_0801ACCC:
	ldrh r0, [r2]
	ldrh r4, [r2, #2]
	adds r0, r0, r4
	strh r0, [r2, #2]
	adds r2, #2
	adds r3, #1
	cmp r3, r1
	blo _0801ACCC
_0801ACDC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0801ACE4
FUN_0801ACE4: @ 0x0801ACE4, DecompVRAM
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r4, #0
	ldr r0, [r6]
	lsls r1, r0, #0x18
	lsrs r2, r1, #0x1c
	movs r1, #9
	rsbs r1, r1, #0
	ands r2, r1
	lsrs r0, r0, #8
	str r0, [sp]
	cmp r2, #8
	bhi _0801AD7A
	lsls r0, r2, #2
	ldr r1, _0801AD0C @ =_0801AD10
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801AD0C: .4byte _0801AD10
_0801AD10: @ jump table
	.4byte _0801AD34 @ case 0
	.4byte _0801AD44 @ case 1
	.4byte _0801AD7A @ case 2
	.4byte _0801AD4E @ case 3
	.4byte _0801AD58 @ case 4
	.4byte _0801AD7A @ case 5
	.4byte _0801AD6C @ case 6
	.4byte _0801AD7A @ case 7
	.4byte _0801AD7A @ case 8
_0801AD34:
	adds r0, r4, #4
	ldr r2, [sp]
	lsls r2, r2, #9
	lsrs r2, r2, #0xb
	adds r1, r5, #0
	bl SVC_CpuFastSet
	b _0801AD7A
_0801AD44:
	adds r0, r4, #0
	adds r1, r5, #0
	bl SVC_LZ77UnCompVRAM
	b _0801AD7A
_0801AD4E:
	adds r0, r4, #0
	adds r1, r5, #0
	bl SVC_RLUnCompVRAM
	b _0801AD7A
_0801AD58:
	ldr r0, _0801AD68 @ => 0x030037B0
	ldr r3, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, sp
	bl _call_via_r3
	b _0801AD7A
	.align 2, 0
_0801AD68: .4byte gCustomDecompressFunc2Ptr
_0801AD6C:
	adds r0, r4, #4
	ldr r1, _0801AD9C @ => 0x03003B10
	ldr r3, [r1]
	adds r1, r5, #0
	mov r2, sp
	bl _call_via_r3
_0801AD7A:
	ldr r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0801AD90
	ldr r1, [sp]
	adds r0, r5, #0
	bl FUN_0801ADA0
_0801AD90:
	ldr r0, [r6]
	lsrs r0, r0, #8
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0801AD9C: .4byte gCustomDecompressFunc1Ptr

	thumb_func_start FUN_0801ADA0
FUN_0801ADA0: @ 0x0801ADA0
	push {r4, lr}
	movs r3, #1
	lsrs r1, r1, #1
	cmp r3, r1
	bhs _0801ADBC
	adds r2, r0, #0
_0801ADAC:
	ldrh r0, [r2]
	ldrh r4, [r2, #2]
	adds r0, r0, r4
	strh r0, [r2, #2]
	adds r2, #2
	adds r3, #1
	cmp r3, r1
	blo _0801ADAC
_0801ADBC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
