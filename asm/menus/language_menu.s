.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start LanguageMenu_Init
LanguageMenu_Init: @ 0x08028650
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x1c
	ldr r0, _08028734 @ => 0x03004720
	mov r8, r0
	ldr r0, _08028738 @ => 0x03005E20
	ldrb r0, [r0, #0xa]
	mov r1, r8
	str r0, [r1, #0xc]
	movs r0, #0
	bl FUN_0800C558
	movs r0, #0
	bl FUN_0805273C
	movs r0, #0x80
	lsls r0, r0, #5
	bl FUN_0800C5EC
	ldr r0, _0802873C @ => 0x0805A870
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C418
	movs r0, #3
	movs r1, #0
	movs r2, #0x31
	bl FUN_0800C62C
	movs r4, #7
	str r4, [sp]
	movs r5, #1
	str r5, [sp, #4]
	movs r0, #3
	movs r1, #4
	movs r2, #4
	movs r3, #9
	bl FUN_0800C810
	str r4, [sp]
	str r5, [sp, #4]
	movs r0, #3
	movs r1, #0x14
	movs r2, #4
	movs r3, #9
	bl FUN_0800C810
	str r4, [sp]
	str r5, [sp, #4]
	movs r0, #3
	movs r1, #4
	movs r2, #0x14
	movs r3, #9
	bl FUN_0800C810
	str r4, [sp]
	str r5, [sp, #4]
	movs r0, #3
	movs r1, #0x14
	movs r2, #0x14
	movs r3, #9
	bl FUN_0800C810
	movs r2, #0x80
	lsls r2, r2, #8
	movs r0, #3
	adds r1, r2, #0
	bl FUN_0800CE60
	movs r0, #0
	movs r7, #0
	movs r6, #0
	ldr r2, _08028740 @ => 0x08CE0CAC
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	str r6, [sp, #0x10]
	movs r0, #0xe
	str r0, [sp, #0x14]
	add r0, sp, #0x18
	movs r1, #0
	movs r3, #0
	bl FUN_0800D83C
	mov r1, r8
	ldr r0, [r1, #0xc]
	bl FUN_0802875C
	str r5, [sp]
	movs r0, #1
	movs r1, #5
	movs r2, #6
	movs r3, #6
	bl FUN_0802147C
	movs r4, #0
_08028714:
	adds r0, r4, #0
	bl FUN_080288B4
	adds r4, #1
	cmp r4, #5
	bls _08028714
	ldr r0, _08028744 @ => 0x03004750
	ldr r0, [r0]
	cmp r0, #0
	bne _08028748
	movs r0, #0x3f
	movs r1, #1
	bl FUN_080457F4
	b _08028750
	.align 2, 0
_08028734: .4byte gUnk_03004720
_08028738: .4byte gUnk_03005E20
_0802873C: .4byte ROMREF_0805A870
_08028740: .4byte ROMREF_08CE0CAC
_08028744: .4byte gUnk_03004750
_08028748:
	movs r0, #0x3f
	movs r1, #0
	bl FUN_080457F4
_08028750:
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_0802875C
FUN_0802875C: @ 0x0802875C
	push {r4, r5, lr}
	sub sp, #0x1c
	movs r3, #0
	movs r4, #0
	movs r5, #0
	ldr r1, _08028790 @ => 0x09FB6394
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r4, [sp, #0xc]
	str r5, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x14]
	add r0, sp, #0x18
	movs r1, #3
	movs r3, #1
	bl FUN_0800D83C
	add sp, #0x1c
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08028790: .4byte ROMREF_09FB6394

	thumb_func_start LanguageMenu_Handler
LanguageMenu_Handler: @ 0x08028794
	push {lr}
	ldr r0, _080287B0 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080287B4
	bl FUN_08028814
	movs r0, #0xad
	bl FUN_0804DE0C
	b _080287D4
	.align 2, 0
_080287B0: .4byte gUnk_030042B0
_080287B4:
	movs r0, #6
	ands r0, r1
	cmp r0, #0
	beq _080287C2
	bl FUN_08028858
	b _080287D4
_080287C2:
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _080287D4
	bl FUN_08028874
	movs r0, #0xb2
	bl FUN_0804DE0C
_080287D4:
	pop {r0}
	bx r0

	thumb_func_start LanguageMenu_Terminate
LanguageMenu_Terminate: @ 0x080287D8
	push {lr}
	ldr r0, _080287EC @ => 0x03004750
	ldr r0, [r0]
	cmp r0, #0
	bne _080287F0
	movs r0, #0x3f
	movs r1, #1
	bl FUN_0804582C
	b _080287F8
	.align 2, 0
_080287EC: .4byte gUnk_03004750
_080287F0:
	movs r0, #0x3f
	movs r1, #0
	bl FUN_0804582C
_080287F8:
	ldr r0, _08028810 @ => 0x03002C40
	bl FUN_08000BF8
	bl FUN_08050C80
	bl FUN_08015834
	bl FUN_0800CB20
	pop {r0}
	bx r0
	.align 2, 0
_08028810: .4byte gUnk_03002C40
