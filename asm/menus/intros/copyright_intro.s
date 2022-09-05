.include "asm/constants.s"
.include "asm/macros.s"
.include "data/lists/sounds.inc"

.syntax unified

	thumb_func_start CopyrightIntro_Init
CopyrightIntro_Init: @ 0x08028A38
	push {r4, r5, r6, lr}
	sub sp, #0x1c
	movs r6, #1
	movs r0, #0
	bl FUN_0800C558
	ldr r0, _08028AF4 @ => 0x0805A874
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C418
	movs r1, #0
	movs r4, #0
	movs r5, #0
	ldr r2, _08028AF8 @ => 0x08CE15DC
	movs r0, #0x10
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0xf0
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r5, [sp, #0x10]
	str r1, [sp, #0x14]
	add r0, sp, #0x18
	movs r1, #3
	movs r3, #0
	bl FUN_0800D83C
	ldr r0, _08028AFC @ => 0x0805A87C
	ldr r4, [r0]
	movs r0, #0
	adds r1, r4, #0
	bl FUN_0800C418
	movs r0, #0
	movs r1, #0
	bl FUN_0800C61C
	ldr r0, _08028B00 @ => 0x08CDACF4
	movs r1, #0
	movs r2, #0x10
	bl FUN_08015760
	adds r0, r4, #0
	bl FUN_0801FE58
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _08028B04 @ => 0x0000062A
	bl FUN_08050820
	str r0, [sp]
	movs r4, #1
	str r6, [sp, #4]
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x38
	movs r3, #0xe0
	bl FUN_08020098
	adds r6, r0, #0
	ldr r0, _08028B08 @ => 0x0000062C
	bl FUN_08050820
	str r0, [sp]
	str r4, [sp, #4]
	adds r0, r6, #0
	movs r1, #0x78
	movs r2, #0x88
	movs r3, #0xf0
	bl FUN_08020098
	movs r0, #0x3f
	movs r1, #1
	bl FUN_080457F4
	movs r0, SOUNDTRACK_DUSTYHOGG_BLUES
	bl FUN_0804DE84
	movs r0, #0
	movs r1, #0x5a
	bl FUN_0805103C
	movs r0, #1
	movs r1, #0x78
	bl FUN_0805103C
	add sp, #0x1c
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08028AF4: .4byte ROMREF_0805A874
_08028AF8: .4byte ROMREF_08CE15DC
_08028AFC: .4byte ROMREF_0805A87C
_08028B00: .4byte ROMREF_08CDACF4
_08028B04: .4byte 0x0000062A
_08028B08: .4byte 0x0000062C

	thumb_func_start CopyrightIntro_Handler
CopyrightIntro_Handler: @ 0x08028B0C
	push {lr}
	movs r0, #0
	bl FUN_08050F94
	cmp r0, #0
	beq _08028B24
	ldr r0, _08028B38 @ => 0x030042B0
	ldrh r1, [r0, #8]
	ldr r0, _08028B3C @ => 0x0000030F
	ands r0, r1
	cmp r0, #0
	bne _08028B2E
_08028B24:
	movs r0, #1
	bl FUN_08050F94
	cmp r0, #0
	beq _08028B34
_08028B2E:
	movs r0, #4
	bl FUN_0802CEC4
_08028B34:
	pop {r0}
	bx r0
	.align 2, 0
_08028B38: .4byte gUnk_030042B0
_08028B3C: .4byte 0x0000030F

	thumb_func_start CopyrightIntro_Terminate
CopyrightIntro_Terminate: @ 0x08028B40
	push {lr}
	movs r0, #0x3f
	movs r1, #0
	bl FUN_0804582C
	pop {r0}
	bx r0
	.align 2, 0
