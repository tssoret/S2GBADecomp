.include "asm/constants.s"
.include "asm/macros.s"
.include "data/lists/sounds.inc"

.syntax unified

	thumb_func_start FUN_0802ADBC
FUN_0802ADBC: @ 0x0802ADBC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r4, _0802AE58 @ => 0x03004374
	ldr r3, [r4]
	movs r0, #8
	ands r0, r3
	cmp r0, #0
	beq _0802AE4C
	ldr r6, _0802AE5C @ => 0x03003170
	ldr r1, [r6]
	ldr r2, [r6, #4]
	ldr r5, _0802AE60 @ => 0x03002C40
	ldr r0, [r5]
	str r0, [r6]
	ldr r0, [r5, #4]
	str r0, [r6, #4]
	str r1, [r5]
	str r2, [r5, #4]
	movs r0, #9
	rsbs r0, r0, #0
	ands r3, r0
	str r3, [r4]
	bl FUN_08009994
	adds r0, r5, #0
	bl FUN_08000BF8
	movs r0, #0
	mov r8, r0
	str r0, [r6]
	str r0, [r6, #4]
	bl FUN_0803D2FC
	bl FUN_0803FDB8
	bl FUN_0803FE00
	bl FUN_0802B514
	bl FUN_0801F270
	ldr r4, _0802AE64 @ => 0x030043A4
	ldr r0, [r4]
	bl FUN_08049F68
	mov r0, r8
	str r0, [r4]
	ldr r4, _0802AE68 @ => 0x03004398
	ldr r0, [r4]
	bl FUN_080496D4
	mov r0, r8
	str r0, [r4]
	ldr r1, _0802AE6C @ => 0x03006528
	ldrb r2, [r1, #6]
	movs r0, #0xf6
	ands r0, r2
	ldrb r2, [r1, #6]
	strb r0, [r1, #6]
	ldr r0, _0802AE70 @ => 0x030042B0
	ldrb r0, [r0, #6]
	bl FUN_08047074
	ldr r1, [r5]
	ldr r2, [r5, #4]
	ldr r0, [r6]
	str r0, [r5]
	ldr r0, [r6, #4]
	str r0, [r5, #4]
	str r1, [r6]
	str r2, [r6, #4]
_0802AE4C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802AE58: .4byte gUnk_03004374
_0802AE5C: .4byte gUnk_03003170
_0802AE60: .4byte gUnk_03002C40
_0802AE64: .4byte gUnk_030043A4
_0802AE68: .4byte gUnk_03004398
_0802AE6C: .4byte gUnk_03006528
_0802AE70: .4byte gUnk_030042B0

	thumb_func_start FUN_0802AE74
FUN_0802AE74: @ 0x0802AE74
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	ldr r6, _0802AFB4 @ => 0x0806384C
	movs r1, #0x54
	adds r5, r0, #0
	muls r5, r1, r5
	adds r7, r5, r6
	adds r0, r7, #0
	adds r0, #0x50
	ldrb r0, [r0]
	bl FUN_08001580
	ldr r0, _0802AFB8 @ => 0x03004720
	mov r8, r0
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0802AEB6
	ldr r4, _0802AFBC @ => 0x03004398
	movs r0, #0x14
	bl FUN_0802C9DC
	str r0, [r4]
	adds r0, r6, #0
	adds r0, #0x40
	adds r0, r5, r0
	ldr r0, [r0]
	ldrb r0, [r0]
	bl FUN_08049F1C
	ldr r1, _0802AFC0 @ => 0x030043A4
	str r0, [r1]
_0802AEB6:
	ldr r0, _0802AFC4 @ => 0x080637F8
	ldr r0, [r0]
	ldr r1, _0802AFC8 @ => 0x080637F0
	ldr r1, [r1]
	ldr r2, _0802AFCC @ => 0x080637F4
	ldr r2, [r2]
	adds r3, r6, #0
	adds r3, #0x48
	adds r3, r5, r3
	ldr r4, [r3, #4]
	ldr r3, [r3]
	str r4, [sp]
	bl FUN_08046FC8
	ldr r0, [r7]
	bl FUN_080470E8
	adds r0, r6, #0
	adds r0, #0x20
	adds r0, r5, r0
	ldr r0, [r0]
	bl FUN_080470AC
	adds r0, r6, #0
	adds r0, #0x10
	adds r0, r5, r0
	ldr r0, [r0]
	bl FUN_0804713C
	adds r0, r6, #4
	adds r0, r5, r0
	ldr r0, [r0]
	adds r1, r6, #0
	adds r1, #8
	adds r1, r5, r1
	ldr r1, [r1]
	adds r2, r6, #0
	adds r2, #0xc
	adds r2, r5, r2
	ldr r2, [r2]
	bl FUN_08047174
	adds r0, r6, #0
	adds r0, #0x24
	adds r0, r5, r0
	ldr r0, [r0]
	adds r1, r6, #0
	adds r1, #0x28
	adds r1, r5, r1
	ldr r1, [r1]
	adds r2, r6, #0
	adds r2, #0x2c
	adds r2, r5, r2
	ldr r2, [r2]
	bl FUN_08047204
	adds r0, r6, #0
	adds r0, #0x14
	adds r0, r5, r0
	ldr r0, [r0]
	adds r1, r6, #0
	adds r1, #0x18
	adds r1, r5, r1
	ldr r1, [r1]
	adds r2, r6, #0
	adds r2, #0x1c
	adds r2, r5, r2
	ldr r2, [r2]
	bl FUN_08047294
	adds r0, r6, #0
	adds r0, #0x30
	adds r0, r5, r0
	ldr r0, [r0]
	adds r1, r6, #0
	adds r1, #0x34
	adds r1, r5, r1
	ldr r1, [r1]
	bl FUN_080395C4
	add r0, sp, #4
	bl FUN_0804708C
	ldr r4, _0802AFBC @ => 0x03004398
	ldr r0, [r4]
	ldr r1, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [sp, #8]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r3, #0x10
	bl FUN_080537C0
	mov r1, r8
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _0802AF92
	adds r0, r6, #0
	adds r0, #0x40
	adds r0, r5, r0
	ldr r0, [r0]
	adds r0, #4
	ldr r1, _0802AFC0 @ => 0x030043A4
	ldr r1, [r1]
	ldr r1, [r1]
	bl FUN_0801ABA0
	bl FUN_0801F270
_0802AF92:
	ldr r1, [r4]
	ldr r0, _0802AFC0 @ => 0x030043A4
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _0802AFD0 @ => 0x00000111
	movs r0, #3
	movs r1, #0
	movs r3, #0
	bl FUN_080410E8
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802AFB4: .4byte ROMREF_0806384C
_0802AFB8: .4byte gUnk_03004720
_0802AFBC: .4byte gUnk_03004398
_0802AFC0: .4byte gUnk_030043A4
_0802AFC4: .4byte ROMREF_080637F8
_0802AFC8: .4byte ROMREF_080637F0
_0802AFCC: .4byte ROMREF_080637F4
_0802AFD0: .4byte 0x00000111

	thumb_func_start FUN_0802AFD4
FUN_0802AFD4: @ 0x0802AFD4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _0802AFEC @ => 0x030042B0
	ldrh r1, [r0, #4]
	adds r2, r0, #0
	cmp r1, #1
	bhi _0802AFF0
	movs r1, #0
	movs r0, #1
	strh r0, [r2, #4]
	strh r1, [r2, #6]
	b _0802AFF4
	.align 2, 0
_0802AFEC: .4byte gUnk_030042B0
_0802AFF0:
	movs r0, #0
	strh r0, [r2, #6]
_0802AFF4:
	movs r6, #0
	ldrh r2, [r2, #4]
	cmp r6, r2
	bge _0802B02E
_0802AFFC:
	lsls r4, r6, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl FUN_08022E94
	adds r5, r0, #0
	adds r0, r4, #0
	bl FUN_08010A08
	movs r0, #0
	adds r1, r4, #0
	bl FUN_08011024
	ldr r0, _0802B0DC @ => 0x08062C08
	ldr r1, [r0]
	ldr r2, [r0, #4]
	adds r0, r5, #0
	adds r3, r4, #0
	bl FUN_0801119C
	adds r6, #1
	ldr r0, _0802B0E0 @ => 0x030042B0
	ldrh r0, [r0, #4]
	cmp r6, r0
	blt _0802AFFC
_0802B02E:
	ldr r2, _0802B0E4 @ => 0x03003DF0
	movs r1, #0xf6
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, r7
	bne _0802B05A
	ldr r3, _0802B0E8 @ => 0x00000404
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802B05A
	subs r1, #8
	adds r0, r2, r1
	ldr r1, [r0]
	movs r3, #0xf4
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r2, [r0]
	movs r0, #1
	bl FUN_080447B4
_0802B05A:
	movs r0, #0
	bl FUN_080095E4
	movs r0, #0
	bl FUN_080099D8
	movs r0, #1
	bl FUN_080095E4
	movs r0, #1
	bl FUN_080099D8
	ldr r0, _0802B0EC @ => 0x0300318C
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802B08E
	ldr r0, _0802B0F0 @ => 0x03003184
	ldrb r0, [r0]
	bl FUN_080095E4
	ldr r0, _0802B0F4 @ => 0x03003198
	ldrb r0, [r0]
	bl FUN_080099D8
_0802B08E:
	ldr r5, _0802B0F8 @ => 0x03003E48
	ldr r4, _0802B0FC @ => 0x030043A0
	ldr r1, [r4]
	adds r0, r5, #0
	bl FUN_080263B0
	ldr r1, [r4]
	adds r0, r5, #0
	bl FUN_0802638C
	bl FUN_0803E478
	ldr r1, _0802B100 @ => 0x03005BCC
	str r0, [r1]
	cmp r7, #0xc
	bne _0802B0B0
	b _0802B1C6
_0802B0B0:
	cmp r7, #0x1c
	bne _0802B0B6
	b _0802B1C6
_0802B0B6:
	adds r0, r5, #0
	subs r0, #0x24
	lsls r1, r7, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08029724
	cmp r0, #0
	beq _0802B0C8
	b _0802B1C6
_0802B0C8:
	movs r4, #0
	movs r0, #0x4a
	bl FUN_080213F8
	cmp r0, #0
	beq _0802B108
	ldr r0, _0802B104 @ => 0x03004200
	ldr r0, [r0]
	movs r1, #0x24
	b _0802B1AA
	.align 2, 0
_0802B0DC: .4byte ROMREF_08062C08
_0802B0E0: .4byte gUnk_030042B0
_0802B0E4: .4byte gUnk_03003DF0
_0802B0E8: .4byte 0x00000404
_0802B0EC: .4byte gUnk_0300318C
_0802B0F0: .4byte gUnk_03003184
_0802B0F4: .4byte gUnk_03003198
_0802B0F8: .4byte gUnk_03003E48
_0802B0FC: .4byte gUnk_030043A0
_0802B100: .4byte gUnk_03005BCC
_0802B104: .4byte gUnk_03004200
_0802B108:
	movs r0, #0x49
	bl FUN_080213F8
	cmp r0, #0
	beq _0802B120
	ldr r0, _0802B11C @ => 0x03004200
	ldr r0, [r0]
	movs r1, #0x10
	b _0802B1AA
	.align 2, 0
_0802B11C: .4byte gUnk_03004200
_0802B120:
	movs r0, #0x4b
	bl FUN_080213F8
	cmp r0, #0
	beq _0802B138
	ldr r0, _0802B134 @ => 0x03004200
	ldr r0, [r0]
	movs r1, #0x18
	b _0802B1AA
	.align 2, 0
_0802B134: .4byte gUnk_03004200
_0802B138:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl FUN_080213F8
	cmp r0, #0
	beq _0802B150
	ldr r0, _0802B14C @ => 0x03004200
	ldr r0, [r0]
	movs r1, #0x23
	b _0802B1AA
	.align 2, 0
_0802B14C: .4byte gUnk_03004200
_0802B150:
	movs r0, #0xb4
	lsls r0, r0, #1
	bl FUN_080213F8
	cmp r0, #0
	beq _0802B168
	ldr r0, _0802B164 @ => 0x03004200
	ldr r0, [r0]
	movs r1, #0x12
	b _0802B1AA
	.align 2, 0
_0802B164: .4byte gUnk_03004200
_0802B168:
	movs r0, #0x85
	lsls r0, r0, #2
	bl FUN_080213F8
	cmp r0, #0
	beq _0802B180
	ldr r0, _0802B17C @ => 0x03004200
	ldr r0, [r0]
	movs r1, #0x11
	b _0802B1AA
	.align 2, 0
_0802B17C: .4byte gUnk_03004200
_0802B180:
	movs r0, #0xfb
	lsls r0, r0, #1
	bl FUN_080213F8
	cmp r0, #0
	beq _0802B198
	ldr r0, _0802B194 @ => 0x03004200
	ldr r0, [r0]
	movs r1, #0x21
	b _0802B1AA
	.align 2, 0
_0802B194: .4byte gUnk_03004200
_0802B198:
	movs r0, #0xe3
	lsls r0, r0, #1
	bl FUN_080213F8
	cmp r0, #0
	beq _0802B1B0
	ldr r0, _0802B1CC @ => 0x03004200
	ldr r0, [r0]
	movs r1, #0x1e
_0802B1AA:
	bl FUN_08039F60
	adds r4, r0, #0
_0802B1B0:
	cmp r4, #0
	beq _0802B1C6
	adds r0, r4, #0
	movs r1, #0x2a
	bl FUN_08001FB0
	movs r0, #0x91
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x2a
	strb r0, [r1]
_0802B1C6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B1CC: .4byte gUnk_03004200

	thumb_func_start FUN_0802B1D0
FUN_0802B1D0: @ 0x0802B1D0
	push {lr}
	ldr r0, _0802B1FC @ => 0x03004398
	movs r1, #0
	str r1, [r0]
	ldr r0, _0802B200 @ => 0x030043A4
	str r1, [r0]
	ldr r0, _0802B204 @ => 0x03004394
	str r1, [r0]
	ldr r0, _0802B208 @ => 0x0300439C
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	bl FUN_0802C9DC
	ldr r1, _0802B20C @ => 0x03004380
	str r0, [r1, #0xc]
	ldr r1, _0802B210 @ => 0x030043A0
	movs r0, #0x31
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0802B1FC: .4byte gUnk_03004398
_0802B200: .4byte gUnk_030043A4
_0802B204: .4byte gUnk_03004394
_0802B208: .4byte gUnk_0300439C
_0802B20C: .4byte gUnk_03004380
_0802B210: .4byte gUnk_030043A0

	thumb_func_start FUN_0802B214
FUN_0802B214: @ 0x0802B214
	push {r4, lr}
	bl FUN_08008AA0
	bl FUN_0800B638
	ldr r4, _0802B25C @ => 0x03004374
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ands r0, r1
	cmp r0, #0
	bne _0802B238
	bl FUN_08001440
	ldr r0, [r4]
	movs r1, #8
	orrs r0, r1
	str r0, [r4]
_0802B238:
	ldr r1, _0802B260 @ => 0x03004720
	movs r0, #2
	str r0, [r1, #4]
	ldr r0, _0802B264 @ => 0x05000200
	ldr r1, _0802B268 @ => 0x03004380
	ldr r1, [r1, #0xc]
	movs r2, #0x80
	lsls r2, r2, #1
	bl SVC_CpuSet
	ldr r0, _0802B26C @ => 0x030042B0
	ldrb r0, [r0, #6]
	bl FUN_08047074
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802B25C: .4byte gUnk_03004374
_0802B260: .4byte gUnk_03004720
_0802B264: .4byte 0x05000200
_0802B268: .4byte gUnk_03004380
_0802B26C: .4byte gUnk_030042B0

	thumb_func_start FUN_0802B270
FUN_0802B270: @ 0x0802B270
	push {lr}
	ldr r0, _0802B280 @ => 0x030042B0
	ldrb r0, [r0, #6]
	bl FUN_08047074
	pop {r0}
	bx r0
	.align 2, 0
_0802B280: .4byte gUnk_030042B0

	thumb_func_start FUN_0802B284
FUN_0802B284: @ 0x0802B284
	movs r0, #0
	bx lr

	thumb_func_start FUN_0802B288
FUN_0802B288: @ 0x0802B288
	ldr r0, _0802B294 @ => 0x03003DF0
	ldr r1, _0802B298 @ => 0x000003F6
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0802B294: .4byte gUnk_03003DF0
_0802B298: .4byte 0x000003F6

	thumb_func_start FUN_0802B29C
FUN_0802B29C: @ 0x0802B29C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0802B2B0 @ => 0x080647B8
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r0, [r1, #4]
	bx lr
	.align 2, 0
_0802B2B0: .4byte ROMREF_080647B8

	thumb_func_start FUN_0802B2B4
FUN_0802B2B4: @ 0x0802B2B4
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x18
	beq _0802B2C2
	movs r0, #2
	b _0802B2C4
_0802B2C2:
	movs r0, #1
_0802B2C4:
	pop {r1}
	bx r1

	thumb_func_start FUN_0802B2C8
FUN_0802B2C8: @ 0x0802B2C8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0802B2DC @ => 0x080647B8
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r0, [r1, #0xc]
	bx lr
	.align 2, 0
_0802B2DC: .4byte ROMREF_080647B8

	thumb_func_start FUN_0802B2E0
FUN_0802B2E0: @ 0x0802B2E0
	ldr r3, _0802B2F0 @ => 0x03002048
	str r0, [r3]
	movs r0, #1
	str r0, [r3, #4]
	str r0, [r3, #8]
	strb r1, [r3, #0xc]
	strb r2, [r3, #0xd]
	bx lr
	.align 2, 0
_0802B2F0: .4byte gUnk_03002048

	thumb_func_start FUN_0802B2F4
FUN_0802B2F4: @ 0x0802B2F4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0802B308 @ => 0x0806384C
	movs r2, #0x54
	muls r0, r2, r0
	adds r1, #0x44
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0802B308: .4byte ROMREF_0806384C

	thumb_func_start FUN_0802B30C
FUN_0802B30C: @ 0x0802B30C
	push {lr}
	sub sp, #8
	bl FUN_08008FA4
	movs r1, #1
	str r1, [sp]
	str r0, [sp, #4]
	movs r0, #0x10
	movs r1, #0xf0
	movs r2, #0xa
	movs r3, #0xa
	bl FUN_08015A64
	ldr r1, _0802B330 @ => 0x03004380
	str r0, [r1, #8]
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_0802B330: .4byte gUnk_03004380

	thumb_func_start FUN_0802B334
FUN_0802B334: @ 0x0802B334
	push {r4, lr}
	sub sp, #8
	bl FUN_08008F98
	adds r4, r0, #0
	bl FUN_0802B440
	adds r1, r0, #0
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r4, #0
	bl FUN_080155EC
	movs r0, #1
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #0x10
	movs r1, #0xf0
	movs r2, #0xa
	movs r3, #0xa
	bl FUN_08015A64
	ldr r1, _0802B378 @ => 0x03004380
	str r0, [r1, #8]
	movs r0, #0xa8
	lsls r0, r0, #2
	movs r1, #1
	bl FUN_080213A4
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802B378: .4byte gUnk_03004380

	thumb_func_start FUN_0802B37C
FUN_0802B37C: @ 0x0802B37C
	push {lr}
	sub sp, #8
	movs r0, #0xa8
	lsls r0, r0, #2
	movs r1, #0
	bl FUN_080213A4
	ldr r0, _0802B3B4 @ => 0x0000029B
	movs r1, #0
	bl FUN_080213A4
	bl FUN_0802B440
	movs r1, #1
	str r1, [sp]
	str r0, [sp, #4]
	movs r0, #0x10
	movs r1, #0xf0
	movs r2, #0xa
	movs r3, #0xa
	bl FUN_08015A64
	ldr r1, _0802B3B8 @ => 0x03004380
	str r0, [r1, #8]
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_0802B3B4: .4byte 0x0000029B
_0802B3B8: .4byte gUnk_03004380

	thumb_func_start FUN_0802B3BC
FUN_0802B3BC: @ 0x0802B3BC
	push {r4, r5, lr}
	sub sp, #8
	movs r4, #0
	ldr r0, _0802B3FC @ => 0x03003DF0
	bl FUN_080143D0
	adds r1, r0, #0
	ldr r5, _0802B400 @ => 0x03004380
	ldr r0, [r5, #4]
	cmp r0, r1
	beq _0802B3DA
	str r1, [r5, #4]
	bl FUN_0802B440
	adds r4, r0, #0
_0802B3DA:
	cmp r4, #0
	beq _0802B3F2
	movs r0, #0x21
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #0x10
	movs r1, #0xf0
	movs r2, #0x1e
	movs r3, #0x1e
	bl FUN_08015A64
	str r0, [r5, #8]
_0802B3F2:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802B3FC: .4byte gUnk_03003DF0
_0802B400: .4byte gUnk_03004380

	thumb_func_start FUN_0802B404
FUN_0802B404: @ 0x0802B404
	push {lr}
	ldr r2, _0802B420 @ => 0x080789B4
	movs r0, #0
	movs r1, #0
	bl FUN_0803F0D4
	ldr r2, _0802B424 @ => 0x080789C4
	movs r0, #0
	movs r1, #1
	bl FUN_0803F0D4
	pop {r0}
	bx r0
	.align 2, 0
_0802B420: .4byte ROMREF_080789B4
_0802B424: .4byte ROMREF_080789C4

	thumb_func_start FUN_0802B428
FUN_0802B428: @ 0x0802B428
	push {lr}
	movs r0, #0
	movs r1, #0
	bl FUN_0803FD04
	movs r0, #0
	movs r1, #1
	bl FUN_0803FD04
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0802B440
FUN_0802B440: @ 0x0802B440
	push {lr}
	ldr r0, _0802B45C @ => 0x03004380
	ldr r0, [r0, #4]
	cmp r0, #1
	beq _0802B456
	cmp r0, #1
	blo _0802B464
	cmp r0, #2
	beq _0802B47C
	cmp r0, #3
	beq _0802B490
_0802B456:
	ldr r2, _0802B460 @ => 0x03004390
	b _0802B4A2
	.align 2, 0
_0802B45C: .4byte gUnk_03004380
_0802B460: .4byte gUnk_03004390
_0802B464:
	ldr r2, _0802B474 @ => 0x08064B64
	ldr r1, _0802B478 @ => 0x03004390
	ldr r0, [r1]
	lsls r0, r0, #4
	adds r0, r0, r2
	ldr r0, [r0]
	adds r2, r1, #0
	b _0802B49E
	.align 2, 0
_0802B474: .4byte ROMREF_08064B64
_0802B478: .4byte gUnk_03004390
_0802B47C:
	ldr r0, _0802B488 @ => 0x08064B64
	ldr r2, _0802B48C @ => 0x03004390
	ldr r1, [r2]
	lsls r1, r1, #4
	adds r0, #4
	b _0802B49A
	.align 2, 0
_0802B488: .4byte ROMREF_08064B64
_0802B48C: .4byte gUnk_03004390
_0802B490:
	ldr r0, _0802B4B8 @ => 0x08064B64
	ldr r2, _0802B4BC @ => 0x03004390
	ldr r1, [r2]
	lsls r1, r1, #4
	adds r0, #8
_0802B49A:
	adds r1, r1, r0
	ldr r0, [r1]
_0802B49E:
	cmp r0, #0
	bne _0802B4B0
_0802B4A2:
	ldr r1, _0802B4C0 @ => 0x0806384C
	ldr r2, [r2]
	movs r0, #0x54
	muls r0, r2, r0
	adds r1, #0x4c
	adds r0, r0, r1
	ldr r0, [r0]
_0802B4B0:
	bl FUN_08048E6C
	pop {r1}
	bx r1
	.align 2, 0
_0802B4B8: .4byte ROMREF_08064B64
_0802B4BC: .4byte gUnk_03004390
_0802B4C0: .4byte ROMREF_0806384C

	thumb_func_start FUN_0802B4C4
FUN_0802B4C4: @ 0x0802B4C4
	push {r4, lr}
	ldr r4, _0802B4F4 @ => 0x03003DF0
	adds r0, r4, #0
	bl FUN_080143D0
	ldr r1, _0802B4F8 @ => 0x03004380
	ldr r1, [r1, #4]
	cmp r1, r0
	beq _0802B4EC
	ldr r0, _0802B4FC @ => 0x03006528
	ldrb r1, [r0, #6]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0802B4EC
	ldr r1, _0802B500 @ => 0x000003F6
	adds r0, r4, r1
	ldrb r0, [r0]
	bl FUN_0804DE84
_0802B4EC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802B4F4: .4byte gUnk_03003DF0
_0802B4F8: .4byte gUnk_03004380
_0802B4FC: .4byte gUnk_03006528
_0802B500: .4byte 0x000003F6

	thumb_func_start FUN_0802B504
FUN_0802B504: @ 0x0802B504
	push {lr}
	bl FUN_08000B70
	bl FUN_08013D3C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0802B514
FUN_0802B514: @ 0x0802B514
	push {lr}
	bl FUN_08046D60
	bl FUN_08039574
	bl FUN_08047464
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0802B528
FUN_0802B528: @ 0x0802B528
	push {lr}
	movs r0, #3
	movs r1, #0x10
	bl FUN_08045594
	ldr r1, _0802B540 @ => 0x08064E54
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	bl FUN_080455AC
	pop {r0}
	bx r0
	.align 2, 0
_0802B540: .4byte ROMREF_08064E54

	thumb_func_start FUN_0802B544
FUN_0802B544: @ 0x0802B544
	push {lr}
	ldr r0, _0802B574 @ => 0x080637F0
	ldr r1, [r0]
	movs r0, #0
	bl FUN_0800C418
	ldr r0, _0802B578 @ => 0x080637F4
	ldr r1, [r0]
	movs r0, #1
	bl FUN_0800C418
	ldr r0, _0802B57C @ => 0x080637F8
	ldr r1, [r0]
	movs r0, #2
	bl FUN_0800C418
	ldr r0, _0802B580 @ => 0x080637EC
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C418
	pop {r0}
	bx r0
	.align 2, 0
_0802B574: .4byte ROMREF_080637F0
_0802B578: .4byte ROMREF_080637F4
_0802B57C: .4byte ROMREF_080637F8
_0802B580: .4byte ROMREF_080637EC

	thumb_func_start FUN_0802B584
FUN_0802B584: @ 0x0802B584
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08009B04
	adds r4, r0, #0
	bl FUN_080012FC
	adds r5, r0, #0
	movs r0, #4
	ldrsh r1, [r4, r0]
	lsls r1, r1, #0x10
	movs r0, #6
	ldrsh r2, [r4, r0]
	lsls r2, r2, #0x10
	adds r0, r5, #0
	bl FUN_08001728
	ldr r0, [r4]
	strh r0, [r5, #8]
	ldrb r0, [r4, #0xc]
	strh r0, [r5, #0xa]
	ldr r0, _0802B630 @ => 0x000A0404
	str r0, [r5, #0xc]
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08001FB0
	ldrb r1, [r4, #0xb]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r5, r2
	strh r1, [r0]
	ldrb r0, [r4, #0xa]
	adds r2, #2
	adds r1, r5, r2
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x94
	ldr r0, _0802B634 @ => FUN_080149CC
	str r0, [r1]
	ldrb r0, [r4, #9]
	rsbs r0, r0, #0
	subs r1, #0x16
	strb r0, [r1]
	ldrb r0, [r4, #9]
	adds r1, #1
	strb r0, [r1]
	ldrb r0, [r4, #8]
	rsbs r0, r0, #0
	subs r1, #3
	strb r0, [r1]
	ldrb r0, [r4, #8]
	adds r1, #1
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x80
	movs r1, #1
	strb r1, [r0]
	subs r0, #5
	strb r1, [r0]
	ldr r0, _0802B638 @ => FUN_0802B800
	str r0, [r5, #0x50]
	subs r2, #0x15
	adds r0, r5, r2
	strb r1, [r0]
	ldr r0, _0802B63C @ => 0x03002C40
	ldr r3, [r0]
	cmp r3, #0
	beq _0802B628
	ldr r4, _0802B640 @ => 0x0000011F
	movs r6, #0xfe
_0802B618:
	adds r2, r3, r4
	ldrb r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r2]
	ldr r3, [r3]
	cmp r3, #0
	bne _0802B618
_0802B628:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0802B630: .4byte 0x000A0404
_0802B634: .4byte FUN_080149CC
_0802B638: .4byte FUN_0802B800
_0802B63C: .4byte gUnk_03002C40
_0802B640: .4byte 0x0000011F

	thumb_func_start FUN_0802B644
FUN_0802B644: @ 0x0802B644
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08009B04
	adds r4, r0, #0
	bl FUN_080012FC
	adds r5, r0, #0
	movs r0, #4
	ldrsh r1, [r4, r0]
	lsls r1, r1, #0x10
	movs r0, #6
	ldrsh r2, [r4, r0]
	lsls r2, r2, #0x10
	adds r0, r5, #0
	bl FUN_08001728
	ldr r0, [r4]
	strh r0, [r5, #8]
	ldr r0, _0802B734 @ => 0x000A0404
	str r0, [r5, #0xc]
	ldrb r1, [r4, #0xc]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r5, r2
	strb r1, [r0]
	ldrb r0, [r4, #0xe]
	adds r2, #1
	adds r1, r5, r2
	strb r0, [r1]
	ldrb r0, [r4, #0x10]
	adds r2, #1
	adds r1, r5, r2
	strb r0, [r1]
	ldrb r0, [r4, #0x12]
	adds r2, #1
	adds r1, r5, r2
	strb r0, [r1]
	ldrb r1, [r4, #0x14]
	adds r2, #1
	adds r0, r5, r2
	strb r1, [r0]
	ldrb r0, [r4, #0x16]
	adds r2, #1
	adds r1, r5, r2
	strb r0, [r1]
	ldrb r0, [r4, #0xd]
	adds r2, #1
	adds r1, r5, r2
	strb r0, [r1]
	ldrb r0, [r4, #0xf]
	adds r2, #1
	adds r1, r5, r2
	strb r0, [r1]
	ldrb r1, [r4, #0x11]
	adds r2, #1
	adds r0, r5, r2
	strb r1, [r0]
	ldrb r0, [r4, #0x13]
	adds r2, #1
	adds r1, r5, r2
	strb r0, [r1]
	ldrb r0, [r4, #0x15]
	adds r2, #1
	adds r1, r5, r2
	strb r0, [r1]
	ldrb r0, [r4, #0x17]
	adds r2, #1
	adds r1, r5, r2
	strb r0, [r1]
	ldrb r1, [r4, #0xb]
	adds r2, #1
	adds r0, r5, r2
	strb r1, [r0]
	ldrb r0, [r4, #0xa]
	adds r2, #1
	adds r1, r5, r2
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x94
	ldr r0, _0802B738 @ => FUN_08015330
	str r0, [r1]
	ldrb r0, [r4, #9]
	rsbs r0, r0, #0
	subs r1, #0x16
	strb r0, [r1]
	ldrb r0, [r4, #9]
	adds r1, #1
	strb r0, [r1]
	ldrb r0, [r4, #8]
	rsbs r0, r0, #0
	subs r1, #3
	strb r0, [r1]
	ldrb r0, [r4, #8]
	adds r1, #1
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x80
	movs r1, #1
	strb r1, [r0]
	subs r0, #5
	strb r1, [r0]
	ldr r0, _0802B73C @ => FUN_0802BA94
	str r0, [r5, #0x50]
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08001FB0
	adds r0, r5, #0
	movs r1, #1
	bl FUN_08001F84
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802B734: .4byte 0x000A0404
_0802B738: .4byte FUN_08015330
_0802B73C: .4byte FUN_0802BA94

	thumb_func_start FUN_0802B740
FUN_0802B740: @ 0x0802B740
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08009B04
	adds r4, r0, #0
	bl FUN_080012FC
	adds r5, r0, #0
	movs r0, #4
	ldrsh r1, [r4, r0]
	movs r0, #6
	ldrsh r2, [r4, r0]
	adds r0, r5, #0
	bl FUN_08001734
	ldr r0, _0802B7F4 @ => 0x00020404
	str r0, [r5, #0xc]
	ldr r0, [r4]
	strh r0, [r5, #8]
	ldrb r0, [r4, #0x12]
	strh r0, [r5, #0xa]
	ldrb r1, [r4, #0x10]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r5, r2
	strb r1, [r0]
	ldrb r0, [r4, #0x11]
	adds r2, #1
	adds r1, r5, r2
	strb r0, [r1]
	ldrb r0, [r4, #0x12]
	adds r2, #1
	adds r1, r5, r2
	strb r0, [r1]
	ldrb r0, [r4, #0x13]
	adds r2, #1
	adds r1, r5, r2
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x94
	ldr r0, _0802B7F8 @ => FUN_08014AE4
	str r0, [r1]
	ldrb r0, [r4, #8]
	ldrb r1, [r4, #4]
	subs r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x7c
	strb r0, [r1]
	ldrb r0, [r4, #0xa]
	ldrb r1, [r4, #6]
	subs r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x7e
	strb r0, [r1]
	ldrb r0, [r4, #0xc]
	ldrb r1, [r4, #4]
	subs r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x7d
	strb r0, [r1]
	ldrb r0, [r4, #0xe]
	ldrb r1, [r4, #6]
	subs r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x7f
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x80
	movs r1, #1
	strb r1, [r0]
	subs r0, #5
	strb r1, [r0]
	ldr r0, _0802B7FC @ => FUN_0802BCB0
	str r0, [r5, #0x50]
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08001FB0
	adds r0, r5, #0
	movs r1, #1
	bl FUN_08001F84
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802B7F4: .4byte 0x00020404
_0802B7F8: .4byte FUN_08014AE4
_0802B7FC: .4byte FUN_0802BCB0

	thumb_func_start FUN_0802B800
FUN_0802B800: @ 0x0802B800
	push {r4, r5, r6, lr}
	sub sp, #0x24
	adds r6, r0, #0
	ldr r0, _0802B82C @ => 0x0805B1C8
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	str r1, [sp, #0x20]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0xf
	bls _0802B822
	b _0802B9D8
_0802B822:
	lsls r0, r0, #2
	ldr r1, _0802B830 @ =_0802B834
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802B82C: .4byte ROMREF_0805B1C8
_0802B830: .4byte _0802B834
_0802B834: @ jump table
	.4byte _0802B874 @ case 0
	.4byte _0802B8D8 @ case 1
	.4byte _0802B8E0 @ case 2
	.4byte _0802B904 @ case 3
	.4byte _0802B9B8 @ case 4
	.4byte _0802B9D8 @ case 5
	.4byte _0802B9D8 @ case 6
	.4byte _0802B9D8 @ case 7
	.4byte _0802B9D8 @ case 8
	.4byte _0802B9D8 @ case 9
	.4byte _0802B9D8 @ case 10
	.4byte _0802B9D8 @ case 11
	.4byte _0802B9D8 @ case 12
	.4byte _0802B9D8 @ case 13
	.4byte _0802B9D8 @ case 14
	.4byte _0802B8D0 @ case 15
_0802B874:
	ldr r2, _0802B8C4 @ => 0x0000011D
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #1
	bne _0802B880
	b _0802B9D8
_0802B880:
	cmp r0, #0xb
	beq _0802B886
	b _0802B9D8
_0802B886:
	movs r1, #0x80
	lsls r1, r1, #0xf
	adds r0, r6, #0
	bl FUN_08002048
	cmp r0, #0
	bne _0802B896
	b _0802B9D8
_0802B896:
	adds r0, r6, #0
	movs r1, #1
	bl FUN_08001F84
	ldr r1, _0802B8C8 @ => 0x00400010
	adds r0, r6, #0
	bl FUN_08002040
	ldr r1, _0802B8CC @ => 0x03004228
	movs r2, #0x99
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrb r0, [r0]
	strb r0, [r1]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrh r2, [r0]
	movs r0, #1
	movs r1, #0
	bl FUN_0802CED4
	b _0802B9D8
	.align 2, 0
_0802B8C4: .4byte 0x0000011D
_0802B8C8: .4byte 0x00400010
_0802B8CC: .4byte gUnk_03004228
_0802B8D0:
	adds r0, r6, #0
	bl FUN_0802B9E0
	b _0802B9D8
_0802B8D8:
	adds r0, r6, #0
	bl FUN_080040DC
	b _0802B9D8
_0802B8E0:
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _0802B900 @ => 0xFFFF0000
	cmp r1, r0
	bne _0802B9D8
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #0
	strb r0, [r1]
	b _0802B9D8
	.align 2, 0
_0802B900: .4byte 0xFFFF0000
_0802B904:
	ldr r1, _0802B9A0 @ => 0x00000133
	adds r0, r6, r1
	ldrb r1, [r0]
	lsls r1, r1, #0x10
	ldr r4, _0802B9A4 @ => 0xFF00FFFF
	ldr r0, [sp, #0x14]
	ands r0, r4
	orrs r0, r1
	str r0, [sp, #0x14]
	add r0, sp, #0x14
	ldr r5, _0802B9A8 @ => 0x00000766
	mov r1, sp
	adds r2, r5, #0
	bl FUN_08013FDC
	mov r0, sp
	bl FUN_08020344
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrb r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, [sp, #0x1c]
	ands r0, r4
	orrs r0, r1
	str r0, [sp, #0x1c]
	add r0, sp, #0x1c
	mov r1, sp
	adds r2, r5, #0
	bl FUN_08013FDC
	mov r0, sp
	bl FUN_0802036C
	ldr r1, _0802B9AC @ => 0x03005C60
	movs r2, #0
	ldr r0, _0802B9B0 @ => 0x0000073A
	strh r0, [r1]
	ldr r1, _0802B9B4 @ => 0x03005C90
	strb r2, [r1, #4]
	movs r0, #1
	strb r0, [r1, #1]
	movs r4, #4
	strb r4, [r1, #2]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	bl FUN_0802B29C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_08050820
	bl FUN_08020320
	movs r0, #2
	bl FUN_0802CEC4
	ldr r0, [r6, #0x58]
	movs r1, #4
	bl FUN_08001FF0
	ldr r0, [r6, #0x58]
	movs r1, #0x81
	bl FUN_08001F20
	ldr r0, [r6, #0x58]
	movs r1, #0x36
	bl FUN_08001F84
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r6, r2
	strb r4, [r0]
	b _0802B9D8
	.align 2, 0
_0802B9A0: .4byte 0x00000133
_0802B9A4: .4byte 0xFF00FFFF
_0802B9A8: .4byte 0x00000766
_0802B9AC: .4byte gChoiceIDs
_0802B9B0: .4byte 0x0000073A
_0802B9B4: .4byte gUnk_03005C90
_0802B9B8:
	ldr r1, [r6, #0x58]
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	movs r0, #0xd
	strb r0, [r1]
	str r3, [r6, #0x58]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #0x3c
	strh r0, [r1]
	adds r2, r6, r2
	movs r0, #2
	strb r0, [r2]
_0802B9D8:
	add sp, #0x24
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start FUN_0802B9E0
FUN_0802B9E0: @ 0x0802B9E0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x58]
	bl FUN_08001848
	movs r5, #0
	ldr r1, _0802B9FC @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802BA00
	cmp r0, #0x37
	beq _0802BA2C
	b _0802BA62
	.align 2, 0
_0802B9FC: .4byte 0x0000011D
_0802BA00:
	ldr r2, _0802BA20 @ => 0x03005C60
	movs r1, #0
	ldr r0, _0802BA24 @ => 0x000009CB
	strh r0, [r2]
	ldr r0, _0802BA28 @ => 0x03005C90
	strb r1, [r0, #4]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	movs r0, #2
	bl FUN_0802CEC4
	adds r0, r4, #0
	movs r1, #0x37
	bl FUN_08001F84
	b _0802BA62
	.align 2, 0
_0802BA20: .4byte gChoiceIDs
_0802BA24: .4byte 0x000009CB
_0802BA28: .4byte gUnk_03005C90
_0802BA2C:
	ldr r0, _0802BA58 @ => 0x03004750
	ldr r1, [r0, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0802BA60
	ldr r1, _0802BA5C @ => 0x03004228
	movs r2, #0x99
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r1]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r2, [r0]
	movs r0, #1
	movs r1, #0
	bl FUN_0802CED4
	b _0802BA62
	.align 2, 0
_0802BA58: .4byte gUnk_03004750
_0802BA5C: .4byte gUnk_03004228
_0802BA60:
	movs r5, #1
_0802BA62:
	cmp r5, #1
	bne _0802BA8E
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001FB0
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08001F84
	ldr r0, [r4, #0x58]
	movs r1, #0xd
	bl FUN_08001FB0
	ldr r0, [r4, #0x58]
	movs r1, #2
	bl FUN_08001F84
	ldr r0, [r4, #0x58]
	movs r1, #4
	bl FUN_08001F20
_0802BA8E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_0802BA94
FUN_0802BA94: @ 0x0802BA94
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0x32
	bls _0802BAA6
	b _0802BC9C
_0802BAA6:
	lsls r0, r0, #2
	ldr r1, _0802BAB0 @ =_0802BAB4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802BAB0: .4byte _0802BAB4
_0802BAB4: @ jump table
	.4byte _0802BC9C @ case 0
	.4byte _0802BB80 @ case 1
	.4byte _0802BC9C @ case 2
	.4byte _0802BB88 @ case 3
	.4byte _0802BBE8 @ case 4
	.4byte _0802BC9C @ case 5
	.4byte _0802BC9C @ case 6
	.4byte _0802BC9C @ case 7
	.4byte _0802BC9C @ case 8
	.4byte _0802BC9C @ case 9
	.4byte _0802BC9C @ case 10
	.4byte _0802BC9C @ case 11
	.4byte _0802BC9C @ case 12
	.4byte _0802BC9C @ case 13
	.4byte _0802BC9C @ case 14
	.4byte _0802BC9C @ case 15
	.4byte _0802BC9C @ case 16
	.4byte _0802BC9C @ case 17
	.4byte _0802BC9C @ case 18
	.4byte _0802BC9C @ case 19
	.4byte _0802BC9C @ case 20
	.4byte _0802BC9C @ case 21
	.4byte _0802BC9C @ case 22
	.4byte _0802BC9C @ case 23
	.4byte _0802BC9C @ case 24
	.4byte _0802BC9C @ case 25
	.4byte _0802BC9C @ case 26
	.4byte _0802BC9C @ case 27
	.4byte _0802BC9C @ case 28
	.4byte _0802BC9C @ case 29
	.4byte _0802BC9C @ case 30
	.4byte _0802BC9C @ case 31
	.4byte _0802BC9C @ case 32
	.4byte _0802BC9C @ case 33
	.4byte _0802BC9C @ case 34
	.4byte _0802BC9C @ case 35
	.4byte _0802BC9C @ case 36
	.4byte _0802BC9C @ case 37
	.4byte _0802BC9C @ case 38
	.4byte _0802BC9C @ case 39
	.4byte _0802BC9C @ case 40
	.4byte _0802BC9C @ case 41
	.4byte _0802BC9C @ case 42
	.4byte _0802BC9C @ case 43
	.4byte _0802BC9C @ case 44
	.4byte _0802BC9C @ case 45
	.4byte _0802BC9C @ case 46
	.4byte _0802BC9C @ case 47
	.4byte _0802BC9C @ case 48
	.4byte _0802BC9C @ case 49
	.4byte _0802BC5E @ case 50
_0802BB80:
	adds r0, r5, #0
	bl FUN_080040DC
	b _0802BC9C
_0802BB88:
	ldr r0, [r5, #0x58]
	bl FUN_08001848
	ldr r0, [r5, #0x58]
	movs r1, #0
	bl FUN_08001FB0
	ldr r0, [r5, #0x58]
	movs r1, #4
	bl FUN_08001F20
	ldr r0, _0802BBE0 @ => 0x03005C90
	movs r2, #0
	movs r1, #2
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r2, [r0, #4]
	movs r4, #0
	ldr r6, _0802BBE4 @ => 0x03005C60
_0802BBAE:
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r5, r2
	adds r1, r0, r4
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802BBD0
	bl FUN_0802B29C
	lsls r1, r4, #1
	adds r1, r1, r6
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	bls _0802BBAE
_0802BBD0:
	adds r0, r5, #0
	movs r1, #4
	bl FUN_08001FB0
	movs r0, #2
	bl FUN_0802CEC4
	b _0802BC9C
	.align 2, 0
_0802BBE0: .4byte gUnk_03005C90
_0802BBE4: .4byte gChoiceIDs
_0802BBE8:
	ldr r0, _0802BC28 @ => 0x03004750
	ldr r1, [r0, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0802BC42
	movs r3, #0x9e
	lsls r3, r3, #1
	adds r2, r5, r3
	ldrh r1, [r2]
	cmp r1, #0
	beq _0802BC30
	ldr r1, _0802BC2C @ => 0x0000013D
	adds r0, r5, r1
	ldrb r0, [r0]
	ldrb r1, [r2]
	bl FUN_08009B04
	movs r3, #4
	ldrsh r2, [r0, r3]
	movs r3, #6
	ldrsh r1, [r0, r3]
	adds r0, r2, #0
	bl FUN_0801F294
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0x12
	strh r0, [r1]
	b _0802BC38
	.align 2, 0
_0802BC28: .4byte gUnk_03004750
_0802BC2C: .4byte 0x0000013D
_0802BC30:
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r5, r2
	strh r1, [r0]
_0802BC38:
	adds r0, r5, #0
	movs r1, #0x32
	bl FUN_08001FB0
	b _0802BC9C
_0802BC42:
	ldr r0, [r5, #0x58]
	movs r3, #0x91
	lsls r3, r3, #1
	adds r1, r0, r3
	ldrb r1, [r1]
	bl FUN_08001FB0
	movs r1, #0
	str r1, [r5, #0x58]
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r5, r2
	strb r1, [r0]
	b _0802BC9C
_0802BC5E:
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r5, r3
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _0802BCA4 @ => 0xFFFF0000
	cmp r1, r0
	bne _0802BC9C
	ldr r2, _0802BCA8 @ => 0x03004228
	ldr r1, _0802BCAC @ => 0x03004750
	adds r3, #0x16
	adds r0, r5, r3
	ldr r1, [r1, #0xc]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r5, r2
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r0, #1
	movs r1, #0
	bl FUN_0802CED4
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08001FB0
_0802BC9C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802BCA4: .4byte 0xFFFF0000
_0802BCA8: .4byte gUnk_03004228
_0802BCAC: .4byte gUnk_03004750

	thumb_func_start FUN_0802BCB0
FUN_0802BCB0: @ 0x0802BCB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r6, r0, #0
	ldr r0, _0802BCDC @ => 0x0805B1C8
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	str r1, [sp, #0x20]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0x32
	bls _0802BCD2
	b _0802BF3E
_0802BCD2:
	lsls r0, r0, #2
	ldr r1, _0802BCE0 @ =_0802BCE4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802BCDC: .4byte ROMREF_0805B1C8
_0802BCE0: .4byte _0802BCE4
_0802BCE4: @ jump table
	.4byte _0802BF3E @ case 0
	.4byte _0802BDB0 @ case 1
	.4byte _0802BF3E @ case 2
	.4byte _0802BDB8 @ case 3
	.4byte _0802BEE8 @ case 4
	.4byte _0802BF3E @ case 5
	.4byte _0802BF3E @ case 6
	.4byte _0802BF3E @ case 7
	.4byte _0802BF3E @ case 8
	.4byte _0802BF3E @ case 9
	.4byte _0802BF3E @ case 10
	.4byte _0802BF3E @ case 11
	.4byte _0802BF3E @ case 12
	.4byte _0802BF3E @ case 13
	.4byte _0802BF3E @ case 14
	.4byte _0802BF3E @ case 15
	.4byte _0802BF3E @ case 16
	.4byte _0802BF3E @ case 17
	.4byte _0802BF3E @ case 18
	.4byte _0802BF3E @ case 19
	.4byte _0802BF3E @ case 20
	.4byte _0802BF3E @ case 21
	.4byte _0802BF3E @ case 22
	.4byte _0802BF3E @ case 23
	.4byte _0802BF3E @ case 24
	.4byte _0802BF3E @ case 25
	.4byte _0802BF3E @ case 26
	.4byte _0802BF3E @ case 27
	.4byte _0802BF3E @ case 28
	.4byte _0802BF3E @ case 29
	.4byte _0802BF3E @ case 30
	.4byte _0802BF3E @ case 31
	.4byte _0802BF3E @ case 32
	.4byte _0802BF3E @ case 33
	.4byte _0802BF3E @ case 34
	.4byte _0802BF3E @ case 35
	.4byte _0802BF3E @ case 36
	.4byte _0802BF3E @ case 37
	.4byte _0802BF3E @ case 38
	.4byte _0802BF3E @ case 39
	.4byte _0802BF3E @ case 40
	.4byte _0802BF3E @ case 41
	.4byte _0802BF3E @ case 42
	.4byte _0802BF3E @ case 43
	.4byte _0802BF3E @ case 44
	.4byte _0802BF3E @ case 45
	.4byte _0802BF3E @ case 46
	.4byte _0802BF3E @ case 47
	.4byte _0802BF3E @ case 48
	.4byte _0802BF3E @ case 49
	.4byte _0802BF08 @ case 50
_0802BDB0:
	adds r0, r6, #0
	bl FUN_080040DC
	b _0802BF3E
_0802BDB8:
	ldr r0, _0802BDE0 @ => 0x08064E60
	ldr r2, _0802BDE4 @ => 0x00000133
	adds r1, r6, r2
	ldrb r2, [r1]
	lsls r1, r2, #2
	adds r1, r1, r0
	ldrb r3, [r1]
	ldrb r7, [r1, #1]
	movs r1, #0
	cmp r2, #2
	beq _0802BE04
	cmp r3, r7
	bhs _0802BDEC
	ldr r0, _0802BDE8 @ => 0x03003DF0
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r3
	blt _0802BE06
	b _0802BDF8
	.align 2, 0
_0802BDE0: .4byte ROMREF_08064E60
_0802BDE4: .4byte 0x00000133
_0802BDE8: .4byte gUnk_03003DF0
_0802BDEC:
	ldr r0, _0802BE00 @ => 0x03003DF0
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r3
	bge _0802BE0A
_0802BDF8:
	cmp r0, r7
	bge _0802BE06
	b _0802BE0A
	.align 2, 0
_0802BE00: .4byte gUnk_03003DF0
_0802BE04:
	movs r1, #1
_0802BE06:
	cmp r1, #0
	beq _0802BE60
_0802BE0A:
	movs r3, #0x99
	lsls r3, r3, #1
	adds r4, r6, r3
	ldrb r0, [r4]
	cmp r0, #0x42
	beq _0802BE4C
	adds r0, r6, #0
	bl FUN_0801F4AC
	ldr r0, [r6, #0x58]
	bl FUN_08001848
	ldr r0, [r6, #0x58]
	movs r1, #0
	bl FUN_08001FB0
	ldr r0, [r6, #0x58]
	movs r1, #4
	bl FUN_08001F20
	ldrb r0, [r4]
	movs r2, #0x1a
	ldrsh r1, [r6, r2]
	movs r3, #0x1e
	ldrsh r2, [r6, r3]
	movs r3, #0
	bl FUN_0801F050
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #0x14
	b _0802BE54
_0802BE4C:
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r6, r2
	movs r0, #0
_0802BE54:
	strh r0, [r1]
	adds r0, r6, #0
	movs r1, #0x32
	bl FUN_08001FB0
	b _0802BF3E
_0802BE60:
	lsls r1, r3, #0x10
	ldr r4, _0802BED4 @ => 0xFF00FFFF
	ldr r0, [sp, #0x14]
	ands r0, r4
	orrs r0, r1
	str r0, [sp, #0x14]
	add r0, sp, #0x14
	ldr r5, _0802BED8 @ => 0x00000766
	mov r1, sp
	adds r2, r5, #0
	bl FUN_08013FDC
	mov r0, sp
	bl FUN_08020344
	lsls r1, r7, #0x10
	ldr r0, [sp, #0x1c]
	ands r0, r4
	orrs r0, r1
	str r0, [sp, #0x1c]
	add r0, sp, #0x1c
	mov r1, sp
	adds r2, r5, #0
	bl FUN_08013FDC
	mov r0, sp
	bl FUN_0802036C
	ldr r1, _0802BEDC @ => 0x03005C60
	movs r2, #0
	ldr r0, _0802BEE0 @ => 0x0000073A
	strh r0, [r1]
	ldr r1, _0802BEE4 @ => 0x03005C90
	strb r2, [r1, #4]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #4
	strb r0, [r1, #2]
	movs r3, #0x98
	lsls r3, r3, #1
	adds r0, r6, r3
	ldrb r0, [r0]
	bl FUN_0802B29C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_08050820
	bl FUN_08020320
	movs r0, #2
	bl FUN_0802CEC4
	adds r0, r6, #0
	movs r1, #4
	bl FUN_08001FB0
	b _0802BF3E
	.align 2, 0
_0802BED4: .4byte 0xFF00FFFF
_0802BED8: .4byte 0x00000766
_0802BEDC: .4byte gChoiceIDs
_0802BEE0: .4byte 0x0000073A
_0802BEE4: .4byte gUnk_03005C90
_0802BEE8:
	adds r0, r6, #0
	movs r1, #0xd
	bl FUN_08001FB0
	movs r0, #0
	str r0, [r6, #0x58]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #0x3c
	strh r0, [r1]
	adds r0, r6, #0
	movs r1, #0
	bl FUN_08001FB0
	b _0802BF3E
_0802BF08:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _0802BF48 @ => 0xFFFF0000
	cmp r1, r0
	bne _0802BF3E
	ldr r1, _0802BF4C @ => 0x03004228
	ldr r2, _0802BF50 @ => 0x00000131
	adds r0, r6, r2
	ldrb r0, [r0]
	strb r0, [r1]
	movs r3, #0x98
	lsls r3, r3, #1
	adds r0, r6, r3
	ldrb r2, [r0]
	movs r0, #1
	movs r1, #0
	bl FUN_0802CED4
	adds r0, r6, #0
	movs r1, #0
	bl FUN_08001FB0
_0802BF3E:
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802BF48: .4byte 0xFFFF0000
_0802BF4C: .4byte gUnk_03004228
_0802BF50: .4byte 0x00000131

	thumb_func_start FUN_0802BF54
FUN_0802BF54: @ 0x0802BF54
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_0802B584
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_08009B04
	ldrb r1, [r0, #0xd]
	ldr r3, _0802BF90 @ => 0x00000133
	adds r2, r6, r3
	strb r1, [r2]
	ldrb r1, [r0, #0xe]
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r0, r6, r2
	strb r1, [r0]
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0802BF90: .4byte 0x00000133

	thumb_func_start FUN_0802BF94
FUN_0802BF94: @ 0x0802BF94
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0xf
	beq _0802C01A
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _0802C01A
	adds r0, r6, #0
	adds r1, r5, #0
	bl FUN_080010C0
	adds r1, r0, #0
	movs r2, #0
	ldrh r0, [r6, #8]
	cmp r0, #0
	bne _0802BFC4
	movs r2, #1
_0802BFC4:
	ldr r0, _0802C024 @ => 0x030042B0
	ldrh r0, [r0, #0xc]
	movs r7, #1
	ands r7, r0
	cmp r2, #0
	beq _0802C01A
	cmp r1, #0
	beq _0802C01A
	ldr r0, _0802C028 @ => 0x03005BCC
	ldr r0, [r0]
	movs r2, #0x1a
	ldrsh r1, [r5, r2]
	movs r3, #0x1e
	ldrsh r2, [r5, r3]
	adds r3, r5, #0
	adds r3, #0xa9
	ldrb r3, [r3]
	lsls r3, r3, #0x1c
	lsrs r3, r3, #0x1e
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r4, #3
	str r4, [sp]
	bl FUN_0803E4F4
	cmp r7, #0
	beq _0802C01A
	adds r0, r5, #0
	movs r1, #0xf
	bl FUN_08001FB0
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08001F84
	adds r0, r6, #0
	movs r1, #0
	bl FUN_08001FB0
	str r6, [r5, #0x58]
	bl FUN_08024900
_0802C01A:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C024: .4byte gUnk_030042B0
_0802C028: .4byte gUnk_03005BCC

	thumb_func_start FUN_0802C02C
FUN_0802C02C: @ 0x0802C02C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r1, #0
	adds r5, r0, #0
	mov r8, r2
	mov sb, r5
	adds r0, r5, #0
	cmp r5, #0
	bge _0802C046
	mov r0, sb
	adds r0, #0x3f
_0802C046:
	asrs r0, r0, #6
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _0802C054
	adds r0, #0xf
_0802C054:
	asrs r1, r0, #4
	adds r7, r6, #0
	adds r0, r7, #0
	cmp r7, #0
	bge _0802C060
	adds r0, #0x3f
_0802C060:
	asrs r0, r0, #6
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	cmp r0, #0
	bge _0802C06E
	adds r0, #0xf
_0802C06E:
	asrs r0, r0, #4
	adds r0, r1, r0
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _0802C07C
	rsbs r1, r0, #0
_0802C07C:
	adds r0, r1, #0
	bl SVC_Sqrt
	lsls r4, r0, #0x10
	cmp r4, #0
	bne _0802C090
	mov r0, r8
	str r5, [r0]
	str r7, [r0, #4]
	b _0802C0B0
_0802C090:
	mov r1, sb
	lsls r0, r1, #6
	asrs r4, r4, #6
	adds r1, r4, #0
	bl SVC_Div
	lsls r0, r0, #4
	mov r2, r8
	str r0, [r2]
	lsls r0, r7, #6
	adds r1, r4, #0
	bl SVC_Div
	lsls r0, r0, #4
	mov r1, r8
	str r0, [r1, #4]
_0802C0B0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_0802C0BC
FUN_0802C0BC: @ 0x0802C0BC
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	subs r0, r0, r5
	bl SVC_Sqrt
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r5, #0
	cmp r5, #0
	bge _0802C0D6
	adds r0, #0x3f
_0802C0D6:
	asrs r1, r0, #6
	movs r0, #0x13
	rsbs r0, r0, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _0802C0E4
	adds r0, #0xf
_0802C0E4:
	asrs r4, r0, #4
	ldr r0, _0802C13C @ => 0x00001302
	adds r4, r4, r0
	adds r0, r4, #0
	cmp r4, #0
	bge _0802C0F2
	adds r0, #0x3f
_0802C0F2:
	asrs r0, r0, #6
	muls r0, r1, r0
	cmp r0, #0
	bge _0802C0FC
	adds r0, #0xf
_0802C0FC:
	asrs r4, r0, #4
	ldr r0, _0802C140 @ => 0xFFFFC9B3
	adds r4, r4, r0
	adds r0, r4, #0
	cmp r4, #0
	bge _0802C10A
	adds r0, #0x3f
_0802C10A:
	asrs r0, r0, #6
	muls r0, r1, r0
	cmp r0, #0
	bge _0802C114
	adds r0, #0xf
_0802C114:
	asrs r4, r0, #4
	ldr r0, _0802C144 @ => 0x0001921B
	adds r4, r4, r0
	adds r0, r2, #0
	asrs r1, r0, #6
	adds r0, r4, #0
	cmp r4, #0
	bge _0802C126
	adds r0, #0x3f
_0802C126:
	asrs r0, r0, #6
	muls r0, r1, r0
	cmp r0, #0
	bge _0802C130
	adds r0, #0xf
_0802C130:
	asrs r4, r0, #4
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802C13C: .4byte 0x00001302
_0802C140: .4byte 0xFFFFC9B3
_0802C144: .4byte 0x0001921B

	thumb_func_start FUN_0802C148
FUN_0802C148: @ 0x0802C148
	push {r4, lr}
	sub sp, #0x24
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	add r1, sp, #0xc
	mov r0, sp
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r1, sp, #0x18
	mov r0, sp
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0xc]
	cmp r1, #0
	bge _0802C16C
	adds r1, #0x3f
_0802C16C:
	asrs r1, r1, #6
	cmp r0, #0
	bge _0802C174
	adds r0, #0x3f
_0802C174:
	asrs r0, r0, #6
	muls r0, r1, r0
	cmp r0, #0
	bge _0802C17E
	adds r0, #0xf
_0802C17E:
	asrs r3, r0, #4
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x10]
	cmp r2, #0
	bge _0802C18A
	adds r2, #0x3f
_0802C18A:
	asrs r2, r2, #6
	cmp r0, #0
	bge _0802C192
	adds r0, #0x3f
_0802C192:
	asrs r0, r0, #6
	muls r0, r2, r0
	cmp r0, #0
	bge _0802C19C
	adds r0, #0xf
_0802C19C:
	asrs r1, r0, #4
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x14]
	cmp r2, #0
	bge _0802C1A8
	adds r2, #0x3f
_0802C1A8:
	asrs r2, r2, #6
	cmp r0, #0
	bge _0802C1B0
	adds r0, #0x3f
_0802C1B0:
	asrs r0, r0, #6
	muls r0, r2, r0
	cmp r0, #0
	bge _0802C1BA
	adds r0, #0xf
_0802C1BA:
	asrs r0, r0, #4
	adds r1, r3, r1
	adds r1, r1, r0
	asrs r0, r1, #0x10
	bl SVC_Sqrt
	lsls r0, r0, #0x10
	add sp, #0x24
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_0802C1D0
FUN_0802C1D0: @ 0x0802C1D0
	push {r4, lr}
	ldr r0, _0802C1F8 @ => FUN_08000618
	ldr r4, _0802C1FC @ => 0x030043C0
	ldr r2, _0802C200 @ => 0x040000D0
	adds r1, r4, #0
	bl SVC_CpuSet
	ldr r0, _0802C204 @ => 0x03004700
	str r4, [r0]
	ldr r1, _0802C208 @ => 0x030043B4
	adds r0, r4, #0
	adds r0, #0x28
	str r0, [r1]
	ldr r0, _0802C20C @ => 0x030043B0
	adds r4, #0x64
	str r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802C1F8: .4byte FUN_08000618
_0802C1FC: .4byte gUnk_030043C0
_0802C200: .4byte 0x040000D0
_0802C204: .4byte gUnk_03004700
_0802C208: .4byte gUnk_030043B4
_0802C20C: .4byte gUnk_030043B0

	thumb_func_start FUN_0802C210
FUN_0802C210: @ 0x0802C210
	push {lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	lsrs r0, r0, #0x1e
	adds r2, r0, #0
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0802C22A
	movs r0, #0x80
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_0802C22A:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	bne _0802C240
	ldr r0, _0802C23C @ => 0x08064E68
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	b _0802C24C
	.align 2, 0
_0802C23C: .4byte ROMREF_08064E68
_0802C240:
	ldr r0, _0802C250 @ => 0x08064E68
	subs r1, #0x80
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	rsbs r0, r0, #0
_0802C24C:
	pop {r1}
	bx r1
	.align 2, 0
_0802C250: .4byte ROMREF_08064E68

	thumb_func_start FUN_0802C254
FUN_0802C254: @ 0x0802C254
	push {lr}
	lsls r0, r0, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x17
	adds r0, r0, r1
	lsrs r2, r0, #0x18
	lsrs r0, r0, #0x1e
	adds r1, r0, #0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802C274
	movs r0, #0x80
	subs r0, r0, r2
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0802C274:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802C290
	ldr r0, _0802C28C @ => 0x08064E68
	adds r1, r2, #0
	subs r1, #0x80
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	rsbs r0, r0, #0
	b _0802C298
	.align 2, 0
_0802C28C: .4byte ROMREF_08064E68
_0802C290:
	ldr r1, _0802C29C @ => 0x08064E68
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
_0802C298:
	pop {r1}
	bx r1
	.align 2, 0
_0802C29C: .4byte ROMREF_08064E68

	thumb_func_start FUN_0802C2A0
FUN_0802C2A0: @ 0x0802C2A0
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0802C210
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0802C2B4
FUN_0802C2B4: @ 0x0802C2B4
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0802C254
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0802C2C8
FUN_0802C2C8: @ 0x0802C2C8
	push {lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	adds r1, r0, #0
	cmp r0, #0
	bge _0802C2DC
	adds r1, #0xff
_0802C2DC:
	lsls r0, r1, #8
	asrs r0, r0, #0x10
	pop {r1}
	bx r1

	thumb_func_start FUN_0802C2E4
FUN_0802C2E4: @ 0x0802C2E4
	push {lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	asrs r0, r0, #8
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0802C2FC
FUN_0802C2FC: @ 0x0802C2FC
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #9
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1

	thumb_func_start FUN_0802C314
FUN_0802C314: @ 0x0802C314
	push {lr}
	cmp r0, #0
	bge _0802C31C
	adds r0, #0x3f
_0802C31C:
	asrs r2, r0, #6
	cmp r1, #0
	bge _0802C324
	adds r1, #0x3f
_0802C324:
	asrs r0, r1, #6
	muls r0, r2, r0
	cmp r0, #0
	bge _0802C32E
	adds r0, #0xf
_0802C32E:
	asrs r0, r0, #4
	pop {r1}
	bx r1

	thumb_func_start FUN_0802C334
FUN_0802C334: @ 0x0802C334
	push {lr}
	lsls r0, r0, #0x10
	bl __divsi3
	pop {r1}
	bx r1

	thumb_func_start FUN_0802C340
FUN_0802C340: @ 0x0802C340
	push {lr}
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	bl __divsi3
	lsls r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0802C354
FUN_0802C354: @ 0x0802C354
	push {lr}
	lsls r0, r0, #6
	asrs r1, r1, #6
	bl SVC_Div
	lsls r0, r0, #4
	pop {r1}
	bx r1

	thumb_func_start FUN_0802C364
FUN_0802C364: @ 0x0802C364
	push {lr}
	ldr r2, _0802C374 @ => 0x03004700
	ldr r2, [r2]
	bl _call_via_r2
	pop {r1}
	bx r1
	.align 2, 0
_0802C374: .4byte gUnk_03004700

	thumb_func_start FUN_0802C378
FUN_0802C378: @ 0x0802C378
	push {lr}
	adds r2, r1, #0
	adds r1, r0, #0
	adds r3, r1, #0
	cmp r1, #0
	bge _0802C386
	rsbs r3, r3, #0
_0802C386:
	adds r1, r3, #0
	adds r0, r2, #0
	cmp r0, #0
	bge _0802C390
	rsbs r0, r0, #0
_0802C390:
	adds r2, r0, #0
	cmp r1, r2
	ble _0802C3A0
	lsls r0, r0, #1
	adds r0, r0, r2
	asrs r0, r0, #3
	adds r0, r0, r1
	b _0802C3A8
_0802C3A0:
	lsls r0, r3, #1
	adds r0, r0, r1
	asrs r0, r0, #3
	adds r0, r0, r2
_0802C3A8:
	pop {r1}
	bx r1

	thumb_func_start FUN_0802C3AC
FUN_0802C3AC: @ 0x0802C3AC
	push {r4, lr}
	ldr r3, [r0]
	ldr r4, [r1]
	adds r3, r3, r4
	str r3, [r2]
	ldr r0, [r0, #4]
	ldr r1, [r1, #4]
	adds r0, r0, r1
	str r0, [r2, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_0802C3C4
FUN_0802C3C4: @ 0x0802C3C4
	ldr r3, [r2]
	adds r3, r3, r0
	str r3, [r2]
	ldr r3, [r2, #4]
	adds r3, r3, r1
	str r3, [r2, #4]
	bx lr
	.align 2, 0

	thumb_func_start FUN_0802C3D4
FUN_0802C3D4: @ 0x0802C3D4
	push {r4, lr}
	ldr r3, [r0]
	ldr r4, [r1]
	subs r3, r3, r4
	str r3, [r2]
	ldr r0, [r0, #4]
	ldr r1, [r1, #4]
	subs r0, r0, r1
	str r0, [r2, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_0802C3EC
FUN_0802C3EC: @ 0x0802C3EC
	ldr r2, [r0]
	str r2, [r1]
	ldr r0, [r0, #4]
	str r0, [r1, #4]
	bx lr
	.align 2, 0

	thumb_func_start FUN_0802C3F8
FUN_0802C3F8: @ 0x0802C3F8
	movs r3, #2
	ldrsh r2, [r0, r3]
	str r2, [r1]
	movs r2, #6
	ldrsh r0, [r0, r2]
	str r0, [r1, #4]
	bx lr
	.align 2, 0

	thumb_func_start FUN_0802C408
FUN_0802C408: @ 0x0802C408
	ldr r2, [r0]
	lsls r2, r2, #0x10
	str r2, [r1]
	ldr r0, [r0, #4]
	lsls r0, r0, #0x10
	str r0, [r1, #4]
	bx lr
	.align 2, 0

	thumb_func_start FUN_0802C418
FUN_0802C418: @ 0x0802C418
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	movs r4, #0
	ldr r1, [r2]
	ldr r0, [r3]
	cmp r1, r0
	bne _0802C432
	ldr r1, [r2, #4]
	ldr r0, [r3, #4]
	cmp r1, r0
	bne _0802C432
	movs r4, #1
_0802C432:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0802C43C
FUN_0802C43C: @ 0x0802C43C
	sub sp, #4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	mov r8, r0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #0x28]
	ldr r0, [sp]
	rsbs r4, r0, #0
	ldr r1, [sp, #4]
	rsbs r5, r1, #0
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	bl FUN_0802C6B0
	adds r4, r0, #0
	ldr r1, [sp, #0x28]
	cmp r1, #0
	bge _0802C46C
	adds r1, #0x3f
_0802C46C:
	asrs r5, r1, #6
	adds r1, r4, #0
	cmp r4, #0
	bge _0802C476
	adds r1, #0x3f
_0802C476:
	asrs r3, r1, #6
	adds r1, r5, #0
	muls r1, r3, r1
	cmp r1, #0
	bge _0802C482
	adds r1, #0xf
_0802C482:
	asrs r1, r1, #4
	ldr r2, [sp, #0x2c]
	cmp r2, #0
	bge _0802C48C
	adds r2, #0x3f
_0802C48C:
	asrs r0, r2, #6
	muls r0, r3, r0
	cmp r0, #0
	bge _0802C496
	adds r0, #0xf
_0802C496:
	asrs r0, r0, #4
	adds r7, r0, #0
	lsls r6, r1, #1
	lsls r7, r0, #1
	ldr r2, [sp]
	adds r2, r2, r6
	str r2, [sp, #8]
	ldr r0, [sp, #4]
	adds r6, r0, r7
	str r6, [sp, #0xc]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	mov r2, r8
	str r0, [r2]
	str r1, [r2, #4]
	mov r0, r8
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #4
	bx r3

	thumb_func_start FUN_0802C4C4
FUN_0802C4C4: @ 0x0802C4C4
	push {lr}
	adds r2, r1, #0
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	bge _0802C4D4
	rsbs r1, r1, #0
	movs r3, #1
_0802C4D4:
	cmp r2, #0
	bge _0802C4DE
	rsbs r2, r2, #0
	movs r0, #2
	orrs r3, r0
_0802C4DE:
	lsls r0, r2, #1
	adds r0, r0, r2
	cmp r1, r0
	ble _0802C4EE
	movs r0, #4
	orrs r3, r0
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
_0802C4EE:
	lsls r0, r1, #1
	adds r0, r0, r1
	cmp r0, r2
	bge _0802C4FE
	movs r0, #8
	orrs r3, r0
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
_0802C4FE:
	ldr r0, _0802C508 @ => 0x08064F6C
	adds r0, r3, r0
	ldrb r0, [r0]
	pop {r1}
	bx r1
	.align 2, 0
_0802C508: .4byte ROMREF_08064F6C

	thumb_func_start FUN_0802C50C
FUN_0802C50C: @ 0x0802C50C
	push {lr}
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl SVC_ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xb
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	adds r0, #8
	movs r1, #0x1f
	ands r0, r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0802C538
FUN_0802C538: @ 0x0802C538
	push {lr}
	sub sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	add r2, sp, #0x10
	ldr r0, [sp]
	ldr r1, [sp, #8]
	subs r0, r0, r1
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	subs r0, r0, r1
	str r0, [r2, #4]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bge _0802C55E
	rsbs r0, r0, #0
_0802C55E:
	str r0, [sp, #0x10]
	ldr r1, [r2, #4]
	cmp r1, #0
	bge _0802C568
	rsbs r1, r1, #0
_0802C568:
	str r1, [r2, #4]
	ldr r2, [sp, #0x10]
	cmp r2, r1
	ble _0802C57A
	lsls r0, r1, #1
	adds r0, r0, r1
	asrs r0, r0, #3
	adds r0, r2, r0
	b _0802C582
_0802C57A:
	lsls r0, r2, #1
	adds r0, r0, r2
	asrs r0, r0, #3
	adds r0, r1, r0
_0802C582:
	add sp, #0x18
	pop {r1}
	bx r1

	thumb_func_start FUN_0802C588
FUN_0802C588: @ 0x0802C588
	push {lr}
	adds r3, r2, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	subs r1, r2, r1
	movs r0, #0x1f
	ands r1, r0
	cmp r1, #0x10
	bgt _0802C5A6
	movs r1, #1
	rsbs r1, r1, #0
	adds r0, r1, #0
	b _0802C5A8
_0802C5A6:
	movs r0, #1
_0802C5A8:
	strb r0, [r3]
	ldrb r0, [r3]
	adds r0, r2, r0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x1f
	bhi _0802C5BA
	adds r0, r2, #0
	b _0802C5C4
_0802C5BA:
	cmp r2, #0x20
	beq _0802C5C2
	movs r0, #0x1f
	b _0802C5C4
_0802C5C2:
	movs r0, #0
_0802C5C4:
	pop {r1}
	bx r1

	thumb_func_start FUN_0802C5C8
FUN_0802C5C8: @ 0x0802C5C8
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	muls r0, r1, r0
	movs r1, #0x64
	bl SVC_Div
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0802C5DC
FUN_0802C5DC: @ 0x0802C5DA
	push {lr}
	movs r2, #0x64
	muls r0, r2, r0
	bl SVC_Div
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0802C5EC
FUN_0802C5EC: @ 0x0802C5EC
	push {r4, lr}
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	cmp r3, #0
	ble _0802C620
	movs r0, #0x64
	muls r0, r3, r0
	bl SVC_Div
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r4, #1
	muls r0, r1, r0
	movs r1, #0x64
	bl SVC_Div
	cmp r0, r4
	ble _0802C61C
	adds r0, r4, #0
	b _0802C622
_0802C61C:
	cmp r0, #0
	bge _0802C622
_0802C620:
	movs r0, #0
_0802C622:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_0802C628
FUN_0802C628: @ 0x0802C628
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r2, r0, #8
	ldr r1, _0802C640 @ => 0x007FFFFF
	ands r2, r1
	cmp r0, #0
	bge _0802C63A
	rsbs r2, r2, #0
_0802C63A:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
_0802C640: .4byte 0x007FFFFF

	thumb_func_start FUN_0802C644
FUN_0802C644: @ 0x0802C644
	push {lr}
	cmp r1, r2
	bge _0802C65C
	cmp r1, r0
	bge _0802C650
	adds r1, r0, #0
_0802C650:
	adds r0, r1, #0
	cmp r2, r0
	ble _0802C658
	adds r2, r0, #0
_0802C658:
	adds r0, r2, #0
	b _0802C66C
_0802C65C:
	cmp r2, r0
	bge _0802C662
	adds r2, r0, #0
_0802C662:
	adds r0, r2, #0
	cmp r1, r0
	ble _0802C66A
	adds r1, r0, #0
_0802C66A:
	adds r0, r1, #0
_0802C66C:
	pop {r1}
	bx r1

	thumb_func_start FUN_0802C670
FUN_0802C670: @ 0x0802C670
	push {lr}
	adds r3, r0, #0
	subs r0, r2, r1
	cmp r0, #0
	bge _0802C67C
	subs r0, r1, r2
_0802C67C:
	adds r0, #1
	cmp r1, r2
	bge _0802C69A
	cmp r3, r1
	bge _0802C68C
_0802C686:
	adds r3, r3, r0
	cmp r3, r1
	blt _0802C686
_0802C68C:
	cmp r3, r2
	ble _0802C6A8
_0802C690:
	subs r3, r3, r0
	cmp r3, r2
	bgt _0802C690
	b _0802C6A8
_0802C698:
	subs r3, r3, r0
_0802C69A:
	cmp r3, r1
	bgt _0802C698
	cmp r3, r2
	bge _0802C6A8
_0802C6A2:
	adds r3, r3, r0
	cmp r3, r2
	blt _0802C6A2
_0802C6A8:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0802C6B0
FUN_0802C6B0: @ 0x0802C6B0
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r4, #0
	cmp r4, #0
	bge _0802C6BE
	adds r0, #0x3f
_0802C6BE:
	asrs r1, r0, #6
	adds r0, r2, #0
	cmp r2, #0
	bge _0802C6C8
	adds r0, #0x3f
_0802C6C8:
	asrs r0, r0, #6
	muls r0, r1, r0
	cmp r0, #0
	bge _0802C6D2
	adds r0, #0xf
_0802C6D2:
	asrs r6, r0, #4
	adds r2, r3, #0
	adds r0, r5, #0
	cmp r0, #0
	bge _0802C6DE
	adds r0, #0x3f
_0802C6DE:
	asrs r1, r0, #6
	adds r0, r2, #0
	cmp r0, #0
	bge _0802C6E8
	adds r0, #0x3f
_0802C6E8:
	asrs r0, r0, #6
	muls r0, r1, r0
	cmp r0, #0
	bge _0802C6F2
	adds r0, #0xf
_0802C6F2:
	asrs r0, r0, #4
	adds r0, r6, r0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_0802C6FC
FUN_0802C6FC: @ 0x0802C6FC
	push {lr}
	adds r2, r1, #0
	adds r1, r0, #0
	adds r0, r1, #0
	cmp r1, #0
	bge _0802C70A
	adds r0, #0x3f
_0802C70A:
	asrs r0, r0, #6
	adds r3, r0, #0
	muls r3, r0, r3
	adds r0, r3, #0
	cmp r0, #0
	bge _0802C718
	adds r0, #0xf
_0802C718:
	asrs r3, r0, #4
	adds r0, r2, #0
	adds r1, r0, #0
	cmp r0, #0
	bge _0802C724
	adds r1, #0x3f
_0802C724:
	asrs r1, r1, #6
	adds r0, r1, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _0802C730
	adds r0, #0xf
_0802C730:
	asrs r0, r0, #4
	adds r0, r3, r0
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _0802C73E
	rsbs r1, r0, #0
_0802C73E:
	adds r0, r1, #0
	bl SVC_Sqrt
	lsls r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0802C74C
FUN_0802C74C: @ 0x0802C74C
	sub sp, #4
	push {lr}
	sub sp, #0xc
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0x10]
	adds r0, r3, #0
	ldr r1, [sp]
	cmp r1, #0
	bge _0802C764
	adds r1, #0x3f
_0802C764:
	asrs r1, r1, #6
	cmp r0, #0
	bge _0802C76C
	adds r0, #0x3f
_0802C76C:
	asrs r0, r0, #6
	muls r0, r1, r0
	cmp r0, #0
	bge _0802C776
	adds r0, #0xf
_0802C776:
	asrs r3, r0, #4
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #4]
	cmp r1, #0
	bge _0802C782
	adds r1, #0x3f
_0802C782:
	asrs r1, r1, #6
	cmp r0, #0
	bge _0802C78A
	adds r0, #0x3f
_0802C78A:
	asrs r0, r0, #6
	muls r0, r1, r0
	cmp r0, #0
	bge _0802C794
	adds r0, #0xf
_0802C794:
	asrs r2, r0, #4
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #8]
	cmp r1, #0
	bge _0802C7A0
	adds r1, #0x3f
_0802C7A0:
	asrs r1, r1, #6
	cmp r0, #0
	bge _0802C7A8
	adds r0, #0x3f
_0802C7A8:
	asrs r0, r0, #6
	muls r0, r1, r0
	cmp r0, #0
	bge _0802C7B2
	adds r0, #0xf
_0802C7B2:
	asrs r1, r0, #4
	adds r0, r3, r2
	adds r0, r0, r1
	add sp, #0xc
	pop {r3}
	add sp, #4
	bx r3

	thumb_func_start FUN_0802C7C0
FUN_0802C7C0: @ 0x0802C7C0
	push {r4, r5, lr}
	sub sp, #0xc
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	adds r5, r3, #0
	bl FUN_0802C148
	adds r4, r0, #0
	cmp r4, #0
	bne _0802C7E2
	ldr r0, [sp]
	str r0, [r5]
	ldr r0, [sp, #4]
	str r0, [r5, #4]
	ldr r0, [sp, #8]
	b _0802C80C
_0802C7E2:
	ldr r0, [sp]
	lsls r0, r0, #6
	asrs r4, r4, #6
	adds r1, r4, #0
	bl SVC_Div
	lsls r0, r0, #4
	str r0, [r5]
	ldr r0, [sp, #4]
	lsls r0, r0, #6
	adds r1, r4, #0
	bl SVC_Div
	lsls r0, r0, #4
	str r0, [r5, #4]
	ldr r0, [sp, #8]
	lsls r0, r0, #6
	adds r1, r4, #0
	bl SVC_Div
	lsls r0, r0, #4
_0802C80C:
	str r0, [r5, #8]
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0802C818
FUN_0802C818: @ 0x0802C818
	push {lr}
	adds r3, r0, #0
	movs r2, #1
	cmp r2, r1
	bhs _0802C82A
_0802C822:
	muls r0, r3, r0
	adds r2, #1
	cmp r2, r1
	blo _0802C822
_0802C82A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0802C830
FUN_0802C830: @ 0x0802C830
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	adds r0, r5, r4
	cmp r0, r6
	blo _0802C846
	cmp r5, r6
	bls _0802C8A8
_0802C846:
	mov ip, r5
	adds r7, r6, #0
	movs r1, #3
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _0802C85C
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0802C874
_0802C85C:
	movs r3, #0
	cmp r3, r4
	bhs _0802C91C
_0802C862:
	adds r0, r7, r3
	mov r2, ip
	adds r1, r2, r3
	ldrb r1, [r1]
	strb r1, [r0]
	adds r3, #1
	cmp r3, r4
	blo _0802C862
	b _0802C91C
_0802C874:
	lsrs r2, r4, #2
	movs r3, #0
	cmp r3, r2
	bhs _0802C88A
	adds r1, r5, #0
	adds r5, r6, #0
_0802C880:
	ldm r1!, {r0}
	stm r5!, {r0}
	adds r3, #1
	cmp r3, r2
	blo _0802C880
_0802C88A:
	movs r2, #3
	ands r2, r4
	subs r3, r4, r2
	b _0802C89E
_0802C892:
	adds r1, r7, r3
	mov r4, ip
	adds r0, r4, r3
	ldrb r0, [r0]
	strb r0, [r1]
	adds r3, #1
_0802C89E:
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne _0802C892
	b _0802C91C
_0802C8A8:
	mov ip, r5
	adds r7, r6, #0
	movs r1, #3
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _0802C8BE
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0802C8D6
_0802C8BE:
	subs r2, r4, #1
	cmp r2, #0
	blt _0802C91C
_0802C8C4:
	adds r0, r7, r2
	mov r3, ip
	adds r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	subs r2, #1
	cmp r2, #0
	bge _0802C8C4
	b _0802C91C
_0802C8D6:
	adds r3, r4, #0
	ands r3, r1
	subs r2, r4, #1
	adds r0, r3, #0
	subs r3, #1
	lsrs r4, r4, #2
	mov r8, r4
	cmp r0, #0
	beq _0802C8FC
_0802C8E8:
	adds r1, r7, r2
	mov r4, ip
	adds r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r1]
	subs r2, #1
	adds r0, r3, #0
	subs r3, #1
	cmp r0, #0
	bne _0802C8E8
_0802C8FC:
	adds r1, r5, r3
	adds r3, r6, r3
	mov r2, r8
	subs r2, #1
	cmp r2, #0
	blt _0802C91C
	lsls r0, r2, #2
	adds r1, r0, r1
	adds r3, r0, r3
_0802C90E:
	ldr r0, [r1]
	str r0, [r3]
	subs r1, #4
	subs r3, #4
	subs r2, #1
	cmp r2, #0
	bge _0802C90E
_0802C91C:
	adds r0, r6, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
