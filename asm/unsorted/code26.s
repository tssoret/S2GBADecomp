.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_0802EA4C
FUN_0802EA4C: @ 0x0802EA4C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x90
	lsls r0, r0, #1
	adds r4, r5, r0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0802EA98
	adds r1, r0, #0
	movs r0, #0x2d
	subs r2, r0, r1
	cmp r2, #8
	bgt _0802EA78
	lsls r2, r2, #1
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x10
	subs r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl FUN_080455AC
_0802EA78:
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802EA98
	ldr r0, [r5, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0xc]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl FUN_08001744
_0802EA98:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0802EAA0
FUN_0802EAA0: @ 0x0802EAA0
	push {lr}
	sub sp, #4
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	ldr r0, _0802EAF8 @ => 0x03002080
	lsls r1, r3, #2
	adds r0, #0x10
	adds r1, r1, r0
	ldr r1, [r1]
	ldrh r0, [r1, #0xa]
	cmp r0, r2
	beq _0802EAF0
	strh r2, [r1, #0xa]
	ldr r0, _0802EAFC @ => 0x03004720
	ldr r1, [r0, #0x10]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #5
	ldr r1, _0802EB00 @ => 0x08066ABC
	adds r0, r0, r1
	lsls r1, r2, #4
	adds r0, r0, r1
	movs r2, #0x3c
	rsbs r2, r2, #0
	adds r3, #0xc
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r1, #3
	str r1, [sp]
	adds r1, r2, #0
	bl FUN_0802D680
	ldr r1, [r0, #0xc]
	movs r2, #2
	rsbs r2, r2, #0
	ands r1, r2
	movs r2, #2
	orrs r1, r2
	str r1, [r0, #0xc]
_0802EAF0:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0802EAF8: .4byte gUnk_03002080
_0802EAFC: .4byte gUnk_03004720
_0802EB00: .4byte ROMREF_08066ABC

	thumb_func_start FUN_0802EB04
FUN_0802EB04: @ 0x0802EB04
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r6, _0802EB40 @ => 0x03002080
	ldr r0, [r6, #0xc]
	ldr r0, [r0, #0xc]
	movs r5, #1
	ands r0, r5
	cmp r0, #0
	bne _0802EB1E
	movs r0, #0xae
	bl FUN_0804DE0C
_0802EB1E:
	ldr r0, _0802EB44 @ => 0x03004720
	str r4, [r0, #0x1c]
	ldr r1, [r6, #0xc]
	ldr r0, [r1, #0xc]
	orrs r0, r5
	str r0, [r1, #0xc]
	movs r3, #0x78
	cmp r4, #3
	bhi _0802EB48
	movs r3, #0x20
	lsls r0, r4, #3
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	adds r2, r0, #0
	adds r2, #0x2c
	b _0802EB4A
	.align 2, 0
_0802EB40: .4byte gUnk_03002080
_0802EB44: .4byte gUnk_03004720
_0802EB48:
	movs r2, #0x30
_0802EB4A:
	adds r0, r1, #0
	adds r1, r3, #0
	bl FUN_08001734
	ldr r0, _0802EB74 @ => 0x03002080
	ldr r0, [r0, #0xc]
	ldr r1, _0802EB78 @ => 0x03004720
	ldr r2, [r1, #0x10]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #5
	ldr r2, _0802EB7C @ => 0x08066AFC
	adds r1, r1, r2
	ldr r2, _0802EB80 @ => 0x09FB64AC
	ldr r2, [r2]
	movs r3, #0
	bl FUN_0800192C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802EB74: .4byte gUnk_03002080
_0802EB78: .4byte gUnk_03004720
_0802EB7C: .4byte ROMREF_08066AFC
_0802EB80: .4byte ROMREF_09FB64AC
