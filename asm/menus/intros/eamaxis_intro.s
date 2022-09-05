.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start EAMaxisIntro_Init
EAMaxisIntro_Init: @ 0x08025108
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x20
	ldr r5, _08025178 @ => 0x03004720
	movs r4, #0
	str r4, [r5, #8]
	movs r0, #0
	bl FUN_0800C558
	movs r0, #0
	bl FUN_0805273C
	ldr r0, _0802517C @ => 0x0805A874
	ldr r1, [r0]
	movs r0, #1
	bl FUN_0800C418
	movs r0, #1
	movs r1, #0
	bl FUN_0800C61C
	ldr r0, _08025180 @ => 0x0805A87C
	ldr r1, [r0]
	movs r0, #0
	bl FUN_0800C418
	movs r0, #0
	movs r1, #0
	bl FUN_0800C61C
	ldr r0, _08025184 @ => 0x03005E20
	ldrb r0, [r0, #0xa]
	cmp r0, #2
	beq _0802518C
	movs r6, #0
	ldr r2, _08025188 @ => 0x08062D04
	ldr r1, [r5, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r2, [r0]
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	str r4, [sp, #0x14]
	add r0, sp, #0x18
	movs r1, #1
	movs r3, #1
	bl FUN_0800D83C
	b _080251B8
	.align 2, 0
_08025178: .4byte gUnk_03004720
_0802517C: .4byte ROMREF_0805A874
_08025180: .4byte ROMREF_0805A87C
_08025184: .4byte gUnk_03005E20
_08025188: .4byte ROMREF_08062D04
_0802518C:
	movs r7, #0
	movs r0, #0
	mov sb, r0
	ldr r2, _08025224 @ => 0x08062D1C
	ldr r1, [r5, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r2, [r0]
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r7, [sp, #0xc]
	mov r0, sb
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	add r0, sp, #0x1c
	movs r1, #1
	movs r3, #1
	bl FUN_0800D83C
_080251B8:
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	movs r1, #2
	movs r2, #6
	movs r3, #6
	bl FUN_0802147C
	ldr r0, _08025228 @ => 0x0805A87C
	ldr r0, [r0]
	bl FUN_0801FE58
	ldr r0, _0802522C @ => 0x03005E20
	ldrb r0, [r0, #0xa]
	cmp r0, #2
	beq _0802523C
	ldr r5, _08025230 @ => 0x08062D04
	ldr r4, _08025234 @ => 0x03004720
	ldr r1, [r4, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrb r0, [r0, #8]
	movs r2, #1
	rsbs r2, r2, #0
	movs r1, #0
	bl FUN_0801FEA0
	ldr r1, [r4, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r5, #4
	adds r0, r0, r1
	ldr r0, [r0]
	bl FUN_08050820
	ldr r3, _08025238 @ => 0x000002EE
	ldr r2, [r4, #8]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r5
	ldrh r2, [r1, #0xa]
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r1, #0x78
	movs r3, #0xee
	bl FUN_08020098
	b _08025286
	.align 2, 0
_08025224: .4byte ROMREF_08062D1C
_08025228: .4byte ROMREF_0805A87C
_0802522C: .4byte gUnk_03005E20
_08025230: .4byte ROMREF_08062D04
_08025234: .4byte gUnk_03004720
_08025238: .4byte 0x000002EE
_0802523C:
	ldr r5, _080252A8 @ => 0x08062D1C
	ldr r4, _080252AC @ => 0x03004720
	ldr r1, [r4, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrb r0, [r0, #8]
	movs r2, #1
	rsbs r2, r2, #0
	movs r1, #0
	bl FUN_0801FEA0
	ldr r1, [r4, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r5, #4
	adds r0, r0, r1
	ldr r0, [r0]
	bl FUN_08050820
	ldr r3, _080252B0 @ => 0x000002EE
	ldr r2, [r4, #8]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r5
	ldrh r2, [r1, #0xa]
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r1, #0x78
	movs r3, #0xee
	bl FUN_08020098
_08025286:
	movs r0, #0x3f
	movs r1, #0x10
	bl FUN_080457A4
	ldr r0, _080252AC @ => 0x03004720
	movs r1, #0
	str r1, [r0, #0x14]
	movs r1, #0x10
	str r1, [r0, #0x18]
	add sp, #0x20
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080252A8: .4byte ROMREF_08062D1C
_080252AC: .4byte gUnk_03004720
_080252B0: .4byte 0x000002EE

	thumb_func_start EAMaxisIntro_Handler
EAMaxisIntro_Handler: @ 0x080252B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r4, _080252D8 @ => 0x03004720
	ldr r0, [r4, #0x14]
	cmp r0, #1
	beq _080252F2
	cmp r0, #1
	blo _080252DC
	cmp r0, #2
	beq _0802530A
	cmp r0, #3
	bne _080252D6
	b _080254B6
_080252D6:
	b _080254C0
	.align 2, 0
_080252D8: .4byte gUnk_03004720
_080252DC:
	ldr r1, [r4, #0x18]
	adds r0, r1, #0
	subs r1, #1
	str r1, [r4, #0x18]
	cmp r0, #0
	bne _0802531A
	movs r0, #1
	str r0, [r4, #0x14]
	movs r0, #0x5a
	str r0, [r4, #0x18]
	b _080254C0
_080252F2:
	ldr r0, [r4, #0x18]
	adds r1, r0, #0
	subs r0, #1
	str r0, [r4, #0x18]
	cmp r1, #0
	beq _08025300
	b _080254C0
_08025300:
	movs r0, #2
	str r0, [r4, #0x14]
	movs r0, #0x10
	str r0, [r4, #0x18]
	b _080254C0
_0802530A:
	ldr r2, [r4, #0x18]
	adds r0, r2, #0
	subs r2, #1
	str r2, [r4, #0x18]
	cmp r0, #0
	beq _08025326
	movs r1, #0x10
	subs r1, r1, r2
_0802531A:
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x3f
	bl FUN_080457A4
	b _080254C0
_08025326:
	movs r0, #0x3f
	movs r1, #0x10
	bl FUN_080457A4
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	cmp r0, #2
	bne _0802533A
	b _080254B0
_0802533A:
	cmp r0, #1
	bne _08025360
	ldr r0, _0802535C @ => 0x0805A870
	ldr r4, [r0]
	movs r0, #1
	adds r1, r4, #0
	bl FUN_0800C418
	adds r0, r4, #0
	bl FUN_0801FE58
	movs r0, #0
	movs r1, #0
	bl FUN_0800C61C
	b _0802537A
	.align 2, 0
_0802535C: .4byte ROMREF_0805A870
_08025360:
	ldr r0, _08025400 @ => 0x0805A874
	ldr r1, [r0]
	movs r0, #1
	bl FUN_0800C418
	ldr r0, _08025404 @ => 0x0805A87C
	ldr r0, [r0]
	bl FUN_0801FE58
	movs r0, #0
	movs r1, #0
	bl FUN_0800C61C
_0802537A:
	ldr r0, _08025408 @ => 0x000002EE
	mov sl, r0
	movs r0, #1
	mov r1, sl
	bl FUN_0800C61C
	ldr r0, _0802540C @ => 0x03005E20
	ldrb r0, [r0, #0xa]
	cmp r0, #2
	beq _08025418
	movs r3, #0
	movs r6, #0
	ldr r5, _08025410 @ => 0x08062D04
	ldr r4, _08025414 @ => 0x03004720
	ldr r1, [r4, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	str r3, [sp, #0x14]
	add r0, sp, #0x18
	movs r1, #1
	movs r3, #1
	bl FUN_0800D83C
	ldr r1, [r4, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrb r0, [r0, #8]
	movs r2, #1
	rsbs r2, r2, #0
	movs r1, #0
	bl FUN_0801FEA0
	ldr r1, [r4, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r5, #4
	adds r0, r0, r1
	ldr r0, [r0]
	bl FUN_08050820
	ldr r2, [r4, #8]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r5
	ldrh r2, [r1, #0xa]
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	mov r0, sl
	movs r1, #0x78
	movs r3, #0xee
	bl FUN_08020098
	b _0802548C
	.align 2, 0
_08025400: .4byte ROMREF_0805A874
_08025404: .4byte ROMREF_0805A87C
_08025408: .4byte 0x000002EE
_0802540C: .4byte gUnk_03005E20
_08025410: .4byte ROMREF_08062D04
_08025414: .4byte gUnk_03004720
_08025418:
	movs r3, #0
	movs r7, #0
	movs r0, #0
	mov sb, r0
	ldr r5, _080254A8 @ => 0x08062D1C
	ldr r4, _080254AC @ => 0x03004720
	ldr r1, [r4, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r7, [sp, #0xc]
	mov r0, sb
	str r0, [sp, #0x10]
	str r3, [sp, #0x14]
	add r0, sp, #0x1c
	movs r1, #1
	movs r3, #1
	bl FUN_0800D83C
	ldr r1, [r4, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrb r0, [r0, #8]
	movs r2, #1
	rsbs r2, r2, #0
	movs r1, #0
	bl FUN_0801FEA0
	ldr r1, [r4, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r5, #4
	adds r0, r0, r1
	ldr r0, [r0]
	bl FUN_08050820
	ldr r2, [r4, #8]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r5
	ldrh r2, [r1, #0xa]
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	mov r0, sl
	movs r1, #0x78
	movs r3, #0xee
	bl FUN_08020098
_0802548C:
	movs r4, #0
	str r4, [sp]
	movs r0, #1
	movs r1, #2
	movs r2, #6
	movs r3, #6
	bl FUN_0802147C
	ldr r1, _080254AC @ => 0x03004720
	str r4, [r1, #0x14]
	movs r0, #0x10
	str r0, [r1, #0x18]
	b _080254C0
	.align 2, 0
_080254A8: .4byte ROMREF_08062D1C
_080254AC: .4byte gUnk_03004720
_080254B0:
	movs r0, #3
	str r0, [r4, #0x14]
	b _080254C0
_080254B6:
	movs r0, #5
	movs r1, #0
	movs r2, #0
	bl FUN_0802CED4
_080254C0:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start EAMaxisIntro_Terminate
EAMaxisIntro_Terminate: @ 0x080254D0
	push {lr}
	movs r0, #0x3f
	movs r1, #0x10
	bl FUN_080457A4
	bl FUN_08015834
	pop {r0}
	bx r0
	.align 2, 0
