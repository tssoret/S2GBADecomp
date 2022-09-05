.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_0800B0A8
FUN_0800B0A8: @ 0x0800B0A8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r3, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r0, #0x19
	str r0, [r5, #0xc]
	adds r6, r5, #0
	adds r6, #0xa9
	movs r0, #3
	ands r2, r0
	lsls r2, r2, #2
	ldrb r3, [r6]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	lsls r1, r1, #4
	movs r2, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r6]
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08001FB0
	adds r0, r5, #0
	movs r1, #0xb
	bl FUN_08001F84
	lsls r4, r4, #4
	ldr r0, _0800B104 @ => 0x0805A3F8
	adds r4, r4, r0
	ldr r0, [r4, #8]
	ldrb r1, [r6]
	lsrs r1, r1, #4
	lsls r1, r1, #4
	movs r2, #0x10
	bl FUN_0801579C
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800B104: .4byte ROMREF_0805A3F8

	thumb_func_start FUN_0800B108
FUN_0800B108: @ 0x0800B108
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _0800B160 @ => 0x030031EC
	ldr r5, [r6]
	ldr r0, _0800B164 @ => 0x030042B0
	ldrh r0, [r0, #6]
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl FUN_08024B30
	ldr r4, [r6]
	cmp r5, r4
	beq _0800B170
	ldr r0, _0800B168 @ => 0x03004790
	ldr r0, [r0, #0x24]
	ldr r3, _0800B16C @ => 0x0805A498
	movs r2, #0x24
	ldrsh r1, [r3, r2]
	lsls r2, r4, #2
	adds r2, r2, r4
	lsls r2, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #0x10
	movs r4, #0x26
	ldrsh r2, [r3, r4]
	lsls r2, r2, #0x10
	bl FUN_08001728
	movs r0, #3
	str r0, [sp]
	movs r0, #1
	movs r1, #0xc
	movs r2, #6
	movs r3, #0x10
	bl FUN_0800C790
	ldrb r1, [r6]
	movs r0, #8
	bl FUN_0800AC98
	b _0800B17C
	.align 2, 0
_0800B160: .4byte gUnk_030031EC
_0800B164: .4byte gUnk_030042B0
_0800B168: .4byte gUnk_03004790
_0800B16C: .4byte ROMREF_0805A498
_0800B170:
	cmp r5, #0
	bne _0800B17C
	movs r0, #9
	movs r1, #0xc
	bl FUN_0800B31C
_0800B17C:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start FUN_0800B184
FUN_0800B184: @ 0x0800B184
	push {r4, r5, lr}
	sub sp, #4
	ldr r4, _0800B1CC @ => 0x030031E4
	ldr r5, [r4]
	ldr r0, _0800B1D0 @ => 0x030042B0
	ldrh r0, [r0, #6]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl FUN_08024A88
	ldr r4, [r4]
	cmp r5, r4
	beq _0800B1C2
	ldr r0, _0800B1D4 @ => 0x03004790
	ldr r0, [r0, #0x30]
	ldr r2, _0800B1D8 @ => 0x0805A498
	movs r3, #0x30
	ldrsh r1, [r2, r3]
	lsls r1, r1, #0x10
	movs r3, #0x32
	ldrsh r2, [r2, r3]
	lsls r3, r4, #3
	adds r3, r3, r4
	lsls r3, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #0x10
	bl FUN_08001728
_0800B1C2:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800B1CC: .4byte gUnk_030031E4
_0800B1D0: .4byte gUnk_030042B0
_0800B1D4: .4byte gUnk_03004790
_0800B1D8: .4byte ROMREF_0805A498

	thumb_func_start FUN_0800B1DC
FUN_0800B1DC: @ 0x0800B1DC
	push {lr}
	movs r1, #0
	ldr r0, _0800B1F8 @ => 0x03004720
	ldr r0, [r0, #0x14]
	cmp r0, #1
	beq _0800B23C
	cmp r0, #1
	blo _0800B1FC
	cmp r0, #2
	beq _0800B240
	cmp r0, #3
	beq _0800B24E
	b _0800B25A
	.align 2, 0
_0800B1F8: .4byte gUnk_03004720
_0800B1FC:
	ldr r0, _0800B210 @ => 0x030031EC
	ldr r0, [r0]
	cmp r0, #1
	beq _0800B214
	cmp r0, #1
	blo _0800B22C
	cmp r0, #2
	beq _0800B21C
	b _0800B228
	.align 2, 0
_0800B210: .4byte gUnk_030031EC
_0800B214:
	ldr r0, _0800B218 @ => 0x030031B4
	b _0800B21E
	.align 2, 0
_0800B218: .4byte gUnk_030031B4
_0800B21C:
	ldr r0, _0800B230 @ => 0x030031E8
_0800B21E:
	ldr r0, [r0]
	cmp r0, #0
	beq _0800B226
	movs r0, #1
_0800B226:
	adds r1, r0, #0
_0800B228:
	cmp r1, #0
	beq _0800B234
_0800B22C:
	movs r0, #0
	b _0800B242
	.align 2, 0
_0800B230: .4byte gUnk_030031E8
_0800B234:
	movs r0, #0xbe
	bl FUN_0804DE0C
	b _0800B25A
_0800B23C:
	movs r0, #1
	b _0800B242
_0800B240:
	movs r0, #2
_0800B242:
	bl FUN_0800AF24
	movs r0, #0xad
	bl FUN_0804DE0C
	b _0800B25A
_0800B24E:
	movs r0, #3
	bl FUN_0800AF24
	movs r0, #0xad
	bl FUN_0804DE0C
_0800B25A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0800B260
FUN_0800B260: @ 0x0800B260
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0800B2B0 @ => 0x03003DF0
	add r1, sp, #4
	adds r0, #0x28
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r2, _0800B2B4 @ => 0x0805A3F8
	ldr r0, _0800B2B8 @ => 0x0805A498
	lsls r5, r4, #2
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl FUN_0802D6FC
	ldr r0, _0800B2BC @ => 0x03004790
	adds r5, r5, r0
	ldr r0, [r5]
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl FUN_0800B0A8
	ldr r0, [r5]
	mov r1, sp
	adds r1, r1, r4
	adds r1, #4
	ldrb r1, [r1]
	bl FUN_08000E44
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800B2B0: .4byte gUnk_03003DF0
_0800B2B4: .4byte ROMREF_0805A3F8
_0800B2B8: .4byte ROMREF_0805A498
_0800B2BC: .4byte gUnk_03004790

	thumb_func_start FUN_0800B2C0
FUN_0800B2C0: @ 0x0800B2C0
	push {r4, lr}
	movs r4, #0
_0800B2C4:
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0800AC98
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #9
	bls _0800B2C4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_0800B2DC
FUN_0800B2DC: @ 0x0800B2DC
	push {lr}
	ldr r0, _0800B30C @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0800B308
	movs r0, #0xb1
	bl FUN_0804DE0C
	movs r0, #0
	movs r1, #0
	bl FUN_0800C61C
	ldr r0, _0800B310 @ => 0x0805A3F0
	ldr r0, [r0]
	bl FUN_0801FE58
	ldr r1, _0800B314 @ => 0x03004720
	ldr r0, _0800B318 @ => 0x030031BC
	ldrb r0, [r0]
	str r0, [r1, #0x14]
_0800B308:
	pop {r0}
	bx r0
	.align 2, 0
_0800B30C: .4byte gUnk_030042B0
_0800B310: .4byte ROMREF_0805A3F0
_0800B314: .4byte gUnk_03004720
_0800B318: .4byte gUnk_030031BC

	thumb_func_start FUN_0800B31C
FUN_0800B31C: @ 0x0800B31C
	push {r4, lr}
	adds r4, r1, #0
	ldr r3, _0800B358 @ => 0x03004790
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r2, [r0]
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
	lsls r0, r4, #2
	adds r0, r0, r3
	ldr r2, [r0]
	ldr r0, [r2, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0xc]
	cmp r4, #9
	beq _0800B35C
	cmp r4, #9
	blo _0800B380
	cmp r4, #0xa
	beq _0800B368
	cmp r4, #0xb
	beq _0800B36C
	cmp r4, #0xc
	beq _0800B370
	b _0800B380
	.align 2, 0
_0800B358: .4byte gUnk_03004790
_0800B35C:
	ldr r1, _0800B364 @ => 0x030031EC
	movs r0, #0
	str r0, [r1]
	b _0800B380
	.align 2, 0
_0800B364: .4byte gUnk_030031EC
_0800B368:
	movs r1, #1
	b _0800B382
_0800B36C:
	movs r1, #2
	b _0800B382
_0800B370:
	ldr r1, _0800B37C @ => 0x030031E4
	movs r0, #0
	str r0, [r1]
	movs r1, #3
	b _0800B382
	.align 2, 0
_0800B37C: .4byte gUnk_030031E4
_0800B380:
	movs r1, #0
_0800B382:
	ldr r0, _0800B38C @ => 0x03004720
	str r1, [r0, #0x14]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800B38C: .4byte gUnk_03004720
