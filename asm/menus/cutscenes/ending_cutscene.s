.include "asm/constants.s"
.include "asm/macros.s"
.include "data/lists/sounds.inc"

.syntax unified

	thumb_func_start EndingCutscene_Init
EndingCutscene_Init: @ 0x0801BE74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x20
	bl FUN_0802ADBC
	add r1, sp, #0x18
	movs r0, #0
	strh r0, [r1]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _0801BF20 @ => 0x01008000
	add r0, sp, #0x18
	bl SVC_CpuSet
	movs r0, #0
	bl FUN_0805273C
	movs r0, #0
	bl FUN_0800C558
	movs r0, #0x80
	lsls r0, r0, #5
	bl FUN_0800C5EC
	ldr r5, _0801BF24 @ => 0x03004720
	movs r4, #0
	str r4, [r5, #0x14]
	movs r0, #0x2e
	str r0, [r5, #0x18]
	str r4, [r5, #8]
	ldr r0, _0801BF28 @ => 0x0805F9AC
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C418
	ldr r0, _0801BF2C @ => 0x0805F9B0
	ldr r1, [r0]
	movs r0, #2
	bl FUN_0800C418
	movs r0, #2
	bl FUN_0800C5FC
	movs r6, #0
	movs r7, #0
	ldr r3, _0801BF30 @ => 0x0805F9B4
	ldr r1, [r5, #8]
	lsls r1, r1, #2
	ldr r2, [r5, #4]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r3
	ldr r2, [r1]
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
	movs r0, SOUNDTRACK_STRANGETOWN_EDIT
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
_0801BF20: .4byte 0x01008000
_0801BF24: .4byte gUnk_03004720
_0801BF28: .4byte ROMREF_0805F9AC
_0801BF2C: .4byte ROMREF_0805F9B0
_0801BF30: .4byte ROMREF_0805F9B4

	thumb_func_start EndingCutscene_Handler
EndingCutscene_Handler: @ 0x0801BF34
	push {r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r0, _0801BF48 @ => 0x03004720
	ldr r2, [r0, #0x14]
	adds r4, r0, #0
	cmp r2, #0
	beq _0801BF4C
	cmp r2, #1
	beq _0801C012
	b _0801C088
	.align 2, 0
_0801BF48: .4byte gUnk_03004720
_0801BF4C:
	ldr r0, [r4, #0x18]
	cmp r0, #0x2e
	bne _0801BFDA
	ldr r0, [r4, #8]
	adds r2, r0, #1
	str r2, [r4, #8]
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0801BF64
	cmp r2, #3
	bls _0801BF68
	b _0801BFDA
_0801BF64:
	cmp r2, #5
	bhi _0801BFDA
_0801BF68:
	ldr r0, _0801BFA4 @ => 0x03004720
	ldr r1, [r0, #8]
	movs r4, #1
	ands r4, r1
	cmp r4, #0
	beq _0801BFAC
	movs r4, #0
	movs r6, #0
	ldr r3, _0801BFA8 @ => 0x0805F9B4
	lsls r1, r1, #2
	ldr r2, [r0, #4]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r3
	ldr r2, [r1]
	movs r0, #0x80
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	str r4, [sp, #0x14]
	add r0, sp, #0x18
	movs r1, #2
	movs r3, #0
	bl FUN_0800D83C
	b _0801BFDA
	.align 2, 0
_0801BFA4: .4byte gUnk_03004720
_0801BFA8: .4byte ROMREF_0805F9B4
_0801BFAC:
	movs r5, #0
	movs r7, #0
	ldr r3, _0801BFF8 @ => 0x0805F9B4
	lsls r1, r1, #2
	ldr r2, [r0, #4]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r3
	ldr r2, [r1]
	str r4, [sp]
	str r4, [sp, #4]
	movs r0, #0x80
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r7, [sp, #0x10]
	str r4, [sp, #0x14]
	add r0, sp, #0x1c
	movs r1, #3
	movs r3, #0
	bl FUN_0800D83C
_0801BFDA:
	ldr r1, _0801BFFC @ => 0x03004720
	ldr r0, [r1, #0x18]
	subs r0, #1
	str r0, [r1, #0x18]
	adds r4, r1, #0
	cmp r0, #0
	bne _0801C088
	ldr r1, [r4, #8]
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0801C000
	cmp r1, #3
	bls _0801C004
	b _0801C00A
	.align 2, 0
_0801BFF8: .4byte ROMREF_0805F9B4
_0801BFFC: .4byte gUnk_03004720
_0801C000:
	cmp r1, #5
	bhi _0801C00A
_0801C004:
	movs r0, #1
	str r0, [r4, #0x14]
	b _0801C088
_0801C00A:
	movs r0, #1
	bl FUN_0801E04C
	b _0801C088
_0801C012:
	ldr r1, [r4, #8]
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0801C020
	cmp r1, #3
	beq _0801C024
	b _0801C032
_0801C020:
	cmp r1, #5
	bne _0801C032
_0801C024:
	ldr r0, [r4, #0x10]
	adds r0, #1
	str r0, [r4, #0x10]
	cmp r0, #1
	bls _0801C088
	movs r0, #0
	str r0, [r4, #0x10]
_0801C032:
	movs r5, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801C05C
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
	bne _0801C07A
	b _0801C07E
_0801C05C:
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
	bne _0801C07A
	movs r5, #1
_0801C07A:
	cmp r5, #0
	beq _0801C088
_0801C07E:
	ldr r0, _0801C090 @ => 0x03004720
	movs r1, #0
	str r1, [r0, #0x14]
	movs r1, #0x2e
	str r1, [r0, #0x18]
_0801C088:
	add sp, #0x20
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C090: .4byte gUnk_03004720

	thumb_func_start EndingCutscene_Terminate
EndingCutscene_Terminate: @ 0x0801C094
	push {lr}
	movs r0, #0x3f
	movs r1, #0
	bl FUN_0804582C
	bl FUN_0804E0F8
	pop {r0}
	bx r0
	.align 2, 0
