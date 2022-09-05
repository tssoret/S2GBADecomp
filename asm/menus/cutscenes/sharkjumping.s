.include "asm/constants.s"
.include "asm/macros.s"
.include "data/lists/sounds.inc"

.syntax unified

	thumb_func_start SharkJumpCutscene_Init
SharkJumpCutscene_Init: @ 0x0801BB78
	push {r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r1, sp, #0x18
	movs r0, #0
	strh r0, [r1]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _0801BC18 @ => 0x01008000
	add r0, sp, #0x18
	bl SVC_CpuSet
	movs r0, #0
	bl FUN_0805273C
	movs r0, #0
	bl FUN_0800C558
	movs r0, #0x80
	lsls r0, r0, #5
	bl FUN_0800C5EC
	ldr r5, _0801BC1C @ => 0x03004720
	movs r4, #0
	str r4, [r5, #0x14]
	movs r0, #0x1e
	str r0, [r5, #0x18]
	str r4, [r5, #8]
	ldr r0, _0801BC20 @ => 0x0805F994
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C418
	ldr r0, _0801BC24 @ => 0x0805F998
	ldr r1, [r0]
	movs r0, #2
	bl FUN_0800C418
	movs r0, #2
	bl FUN_0800C5FC
	movs r6, #0
	movs r7, #0
	ldr r1, _0801BC28 @ => 0x0805F99C
	ldr r0, [r5, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	str r7, [sp, #0x10]
	str r4, [sp, #0x14]
	add r0, sp, #0x1c
	movs r1, #3
	movs r3, #0
	bl FUN_0800D83C
	movs r0, SOUNDTRACK_DUSTYHOGG_BLUES
	bl FUN_0804DE84
	movs r0, #0x3f
	movs r1, #0
	bl FUN_080457F4
	str r4, [r5, #0xc]
	str r4, [r5, #0x10]
	movs r0, #4
	movs r1, #8
	bl FUN_08045594
	movs r0, #0
	movs r1, #0x10
	bl FUN_080455AC
	add sp, #0x20
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801BC18: .4byte 0x01008000
_0801BC1C: .4byte gUnk_03004720
_0801BC20: .4byte ROMREF_0805F994
_0801BC24: .4byte ROMREF_0805F998
_0801BC28: .4byte ROMREF_0805F99C

	thumb_func_start SharkJumpCutscene_Handler
SharkJumpCutscene_Handler: @ 0x0801BC2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r4, _0801BC40 @ => 0x03004720
	ldr r3, [r4, #0x14]
	cmp r3, #0
	beq _0801BC44
	cmp r3, #1
	beq _0801BCD4
	b _0801BD32
	.align 2, 0
_0801BC40: .4byte gUnk_03004720
_0801BC44:
	ldr r0, [r4, #0x18]
	cmp r0, #0x1e
	bne _0801BCAA
	ldr r0, [r4, #8]
	adds r2, r0, #1
	str r2, [r4, #8]
	cmp r2, #3
	bhi _0801BCAA
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0801BC88
	movs r5, #0
	movs r7, #0
	ldr r1, _0801BC84 @ => 0x0805F99C
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r2, [r0]
	movs r0, #0x80
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r7, [sp, #0x10]
	str r3, [sp, #0x14]
	add r0, sp, #0x18
	movs r1, #2
	movs r3, #0
	bl FUN_0800D83C
	b _0801BCAA
	.align 2, 0
_0801BC84: .4byte ROMREF_0805F99C
_0801BC88:
	movs r6, #0
	ldr r1, _0801BCC4 @ => 0x0805F99C
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r2, [r0]
	str r3, [sp]
	str r3, [sp, #4]
	movs r0, #0x80
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	str r3, [sp, #0x14]
	add r0, sp, #0x1c
	movs r1, #3
	movs r3, #0
	bl FUN_0800D83C
_0801BCAA:
	ldr r1, _0801BCC8 @ => 0x03004720
	ldr r0, [r1, #0x18]
	subs r0, #1
	str r0, [r1, #0x18]
	cmp r0, #0
	bne _0801BD32
	ldr r0, [r1, #8]
	cmp r0, #3
	bhi _0801BCCC
	movs r0, #1
	str r0, [r1, #0x14]
	b _0801BD32
	.align 2, 0
_0801BCC4: .4byte ROMREF_0805F99C
_0801BCC8: .4byte gUnk_03004720
_0801BCCC:
	movs r0, #0
	bl FUN_0801E04C
	b _0801BD32
_0801BCD4:
	ldr r0, [r4, #0x10]
	subs r0, r3, r0
	str r0, [r4, #0x10]
	cmp r0, #0
	bne _0801BD32
	movs r5, #0
	ldr r0, [r4, #8]
	ands r0, r3
	cmp r0, #0
	beq _0801BD06
	ldr r2, [r4, #0xc]
	adds r2, #1
	str r2, [r4, #0xc]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x10
	subs r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl FUN_080455AC
	ldr r0, [r4, #0xc]
	cmp r0, #0x10
	bne _0801BD24
	b _0801BD28
_0801BD06:
	ldr r2, [r4, #0xc]
	subs r2, #1
	str r2, [r4, #0xc]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x10
	subs r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl FUN_080455AC
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _0801BD24
	movs r5, #1
_0801BD24:
	cmp r5, #0
	beq _0801BD32
_0801BD28:
	ldr r0, _0801BD3C @ => 0x03004720
	movs r1, #0
	str r1, [r0, #0x14]
	movs r1, #0x1e
	str r1, [r0, #0x18]
_0801BD32:
	add sp, #0x20
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801BD3C: .4byte gUnk_03004720

	thumb_func_start SharkJumpCutscene_Terminate
SharkJumpCutscene_Terminate: @ 0x0801BD40
	push {lr}
	movs r0, #0x3f
	movs r1, #0
	bl FUN_0804582C
	bl FUN_0804E0F8
	pop {r0}
	bx r0
	.align 2, 0
