.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_080540E4
FUN_080540E4: @ 0x080540E4
	push {r4, r5, r6, r7, lr}
	ldr r2, _08054150 @ => 0x03002B88
	lsls r3, r1, #2
	adds r2, #4
	adds r3, r3, r2
	ldr r3, [r3]
	mov ip, r3
	ldr r3, _08054154 @ => 0x080902F8
	movs r2, #0x2c
	adds r4, r1, #0
	muls r4, r2, r4
	adds r5, r4, r3
	mov r1, ip
	adds r1, #0x7d
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	mov r2, ip
	adds r2, #0x7c
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	subs r1, r1, r2
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r1, r1, #1
	ldr r2, [r5]
	adds r6, r2, r1
	adds r3, #4
	adds r4, r4, r3
	mov r1, ip
	adds r1, #0x7f
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	mov r2, ip
	adds r2, #0x7e
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	subs r1, r1, r2
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r1, r1, #1
	ldr r2, [r4]
	adds r7, r2, r1
	lsls r6, r6, #0x10
	lsls r7, r7, #0x10
	str r6, [r0]
	str r7, [r0, #4]
	pop {r4, r5, r6, r7}
	pop {r2}
	bx r2
	.align 2, 0
_08054150: .4byte gUnk_03002B88
_08054154: .4byte ROMREF_080902F8
