@ This file contains the menu part used in Griptonite's Games, such as switching Menus, calling the Init, Handler and Terminate functions etc.
.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_0802CE50
FUN_0802CE50: @ 0x0802CE50, SetupInitialMenu
	push {r4, r5, lr}
	ldr r2, _0802CE8C @ => 0x03004720
	movs r0, #0
	str r0, [r2]
	ldr r1, _0802CE90 @ => 0x03004770
	adds r0, r2, #0
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r0, _0802CE94 @ => 0x03004750
	ldm r2!, {r1, r3, r5}
	stm r0!, {r1, r3, r5}
	ldm r2!, {r1, r4, r5}
	stm r0!, {r1, r4, r5}
	ldm r2!, {r3, r4}
	stm r0!, {r3, r4}
	bl FUN_0802B1D0
	ldr r0, _0802CE98 @ => 0x03005E20
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	bne _0802CE9C
	movs r0, #0xa
	bl FUN_0802CEC4
	b _0802CEA2
	.align 2, 0
_0802CE8C: .4byte gUnk_03004720
_0802CE90: .4byte gUnk_03004770
_0802CE94: .4byte gUnk_03004750
_0802CE98: .4byte gUnk_03005E20
_0802CE9C:
	movs r0, #3
	bl FUN_0802CEC4
_0802CEA2:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_0802CEA8
FUN_0802CEA8: @ 0x0802CEA8, GetActiveMenuID
	ldr r0, _0802CEB0 @ => 0x03004720
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0802CEB0: .4byte gUnk_03004720

	thumb_func_start FUN_0802CEB4
FUN_0802CEB4: @ 0x0802CEB4, GetNewMenuID
	ldr r0, _0802CEC0 @ => 0x03004770
	ldr r0, [r0]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	bx lr
	.align 2, 0
_0802CEC0: .4byte gUnk_03004770

	thumb_func_start FUN_0802CEC4
FUN_0802CEC4: @ 0x0802CEC4, SwitchMenu
	push {lr}
	movs r1, #0
	movs r2, #0
	bl FUN_0802CED4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0802CED4
FUN_0802CED4: @ 0x0802CED4, SwitchMenuArg1
	push {r4, lr}
	ldr r4, _0802CEF4 @ => 0x03004770
	movs r3, #0x80
	orrs r3, r0
	str r3, [r4]
	str r1, [r4, #4]
	str r2, [r4, #8]
	movs r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802CEF4: .4byte gUnk_03004770

	thumb_func_start FUN_0802CEF8
FUN_0802CEF8: @ 0x0802CEF8, SwitchMenuArg2
	push {r4, r5, lr}
	ldr r5, _0802CF18 @ => 0x03004770
	movs r4, #0x80
	orrs r4, r0
	str r4, [r5]
	str r1, [r5, #4]
	str r2, [r5, #8]
	movs r0, #0
	str r0, [r5, #0x10]
	str r0, [r5, #0x14]
	str r0, [r5, #0x18]
	str r3, [r5, #0xc]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802CF18: .4byte gUnk_03004770

	thumb_func_start FUN_0802CF1C
FUN_0802CF1C: @ 0x0802CF1C
	push {r4, r5, lr}
	bl FUN_0803FE2C
	movs r4, #0
	ldr r0, _0802CF48 @ => 0x030042B0
	ldrh r1, [r0, #4]
	cmp r4, r1
	bhs _0802CF40
	adds r5, r0, #0
_0802CF2E:
	adds r0, r4, #0
	bl FUN_080238D4
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrh r0, [r5, #4]
	cmp r4, r0
	blo _0802CF2E
_0802CF40:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802CF48: .4byte gUnk_030042B0

	thumb_func_start FUN_0802CF4C
FUN_0802CF4C: @ 0x0802CF4C, MenuSwitched
	push {lr}
	ldr r0, _0802CF60 @ => 0x03004720
	ldr r1, _0802CF64 @ => 0x03004770
	ldr r2, [r0]
	ldr r0, [r1]
	cmp r2, r0
	bne _0802CF68
	movs r0, #0
	b _0802CF6A
	.align 2, 0
_0802CF60: .4byte gUnk_03004720
_0802CF64: .4byte gUnk_03004770
_0802CF68:
	movs r0, #1
_0802CF6A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0802CF70
FUN_0802CF70: @ 0x0802CF70, InitMenu
	push {r4, lr}
	ldr r1, _0802CFA4 @ => MenuPointers
	ldr r0, _0802CFA8 @ => 0x03004720
	ldr r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0802CFEE
	ldr r0, _0802CFAC @ => 0x03004750
	ldr r0, [r0]
	cmp r0, #1
	bne _0802CFB8
	cmp r2, #1
	beq _0802CFCC
	ldr r0, _0802CFB0 @ => 0x030042B0
	ldr r1, [r0, #0x20]
	cmp r1, #1
	bne _0802CFCC
	ldr r0, _0802CFB4 @ => 0x03004740
	str r1, [r0]
	bl FUN_08024A10
	b _0802CFCC
	.align 2, 0
_0802CFA4: .4byte MenuPointers
_0802CFA8: .4byte gUnk_03004720
_0802CFAC: .4byte gUnk_03004750
_0802CFB0: .4byte gUnk_030042B0
_0802CFB4: .4byte gUnk_03004740
_0802CFB8:
	cmp r2, #1
	bne _0802CFCC
	ldr r4, _0802CFF4 @ => gUnk_03004740
	ldr r0, [r4]
	cmp r0, #1
	bne _0802CFCC
	bl FUN_08024A1C
	movs r0, #0
	str r0, [r4]
_0802CFCC:
	ldr r0, _0802CFF8 @ => gUnk_03004750
	ldr r0, [r0]
	ldr r1, _0802CFFC @ => gUnk_03004720
	cmp r0, #2
	bne _0802CFDC
	ldr r0, [r1]
	cmp r0, #1
	beq _0802CFEE
_0802CFDC:
	ldr r2, _0802D000 @ => MenuPointers
	ldr r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	bl _call_via_r0
_0802CFEE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802CFF4: .4byte gUnk_03004740
_0802CFF8: .4byte gUnk_03004750
_0802CFFC: .4byte gUnk_03004720
_0802D000: .4byte MenuPointers

	thumb_func_start FUN_0802D004
FUN_0802D004: @ 0x0802D004, HandleMenu
	push {lr}
	ldr r2, _0802D024 @ => MenuPointers
	ldr r0, _0802D028 @ => gUnk_03004720
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _0802D020
	bl _call_via_r0
_0802D020:
	pop {r0}
	bx r0
	.align 2, 0
_0802D024: .4byte MenuPointers
_0802D028: .4byte gUnk_03004720

	thumb_func_start FUN_0802D02C
FUN_0802D02C: @ 0x0802D02C, TerminateMenu
	push {lr}
	ldr r2, _0802D05C @ => MenuPointers
	ldr r0, _0802D060 @ => gUnk_03004720
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #8
	adds r0, r0, r2
	ldr r2, [r0]
	cmp r2, #0
	beq _0802D056
	ldr r0, _0802D064 @ => gUnk_03004770
	ldr r0, [r0]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	cmp r0, #2
	beq _0802D056
	bl _call_via_r2
_0802D056:
	pop {r0}
	bx r0
	.align 2, 0
_0802D05C: .4byte MenuPointers
_0802D060: .4byte gUnk_03004720
_0802D064: .4byte gUnk_03004770
