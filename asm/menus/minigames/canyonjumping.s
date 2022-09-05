.include "asm/constants.s"
.include "asm/macros.s"
.include "data/lists/sounds.inc"

.syntax unified

	thumb_func_start CanyonJumping_Init
CanyonJumping_Init: @ 0x0802EB84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x5c
	movs r1, #0
	ldr r0, _0802EF64 @ => 0x030020B8
	adds r0, #0x68
	strb r1, [r0]
	add r0, sp, #0x18
	strh r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _0802EF68 @ => 0x01008000
	bl SVC_CpuSet
	movs r0, #0
	bl FUN_0800C558
	movs r0, #0x80
	lsls r0, r0, #5
	bl FUN_0800C5EC
	movs r0, #0
	bl FUN_0805273C
	ldr r0, _0802EF6C @ => 0x08066B20
	ldr r0, [r0]
	mov sb, r0
	movs r0, #0
	mov r1, sb
	bl FUN_0800C418
	ldr r0, _0802EF70 @ => 0x08066B24
	ldr r0, [r0]
	mov r8, r0
	movs r0, #1
	mov r1, r8
	bl FUN_0800C418
	movs r0, #0
	bl FUN_0800C4D0
	movs r0, #1
	bl FUN_0800C4D0
	ldr r0, _0802EF74 @ => 0x08066B28
	ldr r6, [r0]
	movs r0, #2
	adds r1, r6, #0
	bl FUN_0800C418
	ldr r0, _0802EF78 @ => 0x08066B2C
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C418
	ldr r5, _0802EF7C @ => 0x08066D00
	ldr r0, [r5]
	adds r1, r5, #0
	adds r1, #0x2c
	ldrb r1, [r1]
	bl FUN_08009528
	movs r0, #0
	bl FUN_080095E4
	movs r0, #1
	bl FUN_080095E4
	ldr r0, [r5, #0x28]
	str r0, [sp]
	ldr r3, [r5, #0x24]
	adds r0, r6, #0
	mov r1, sb
	mov r2, r8
	bl FUN_08046FC8
	ldr r0, [r5, #4]
	bl FUN_080470E8
	ldr r0, [r5, #8]
	bl FUN_080470AC
	ldr r0, [r5, #0xc]
	bl FUN_0804713C
	ldr r0, [r5, #0x10]
	movs r1, #0
	movs r2, #0
	bl FUN_08047174
	ldr r0, [r5, #0x14]
	movs r1, #0
	movs r2, #0
	bl FUN_08047204
	ldr r0, [r5, #0x18]
	movs r1, #0
	movs r2, #0
	bl FUN_08047294
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	bl FUN_080395C4
	bl FUN_0803EDD4
	movs r7, #0
	mov r1, sp
	adds r1, #0x1c
	str r1, [sp, #0x54]
	mov r0, sp
	adds r0, #0x20
	str r0, [sp, #0x58]
_0802EC6C:
	movs r0, #0x94
	adds r6, r7, #0
	muls r6, r0, r6
	adds r1, r6, #0
	adds r1, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	mov sb, r0
	str r0, [sp]
	ldr r0, _0802EF80 @ => 0x08066B88
	movs r2, #4
	movs r3, #5
	bl FUN_0802D680
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	movs r1, #0xa0
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r5, #0xc]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r1, _0802EF84 @ => 0x00000743
	adds r0, r7, r1
	bl FUN_08050820
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x54]
	bl FUN_08050940
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	movs r1, #0xc0
	lsls r1, r1, #0xe
	mov r8, r1
	orrs r0, r1
	str r0, [r5, #0xc]
	adds r6, #0x30
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	str r1, [sp, #0x28]
	adds r0, r5, #0
	movs r2, #6
	bl FUN_08050BDC
	adds r7, #1
	cmp r7, #1
	ble _0802EC6C
	ldr r0, _0802EF88 @ => 0x08066B68
	mov r1, sb
	str r1, [sp]
	movs r1, #0
	movs r2, #0x70
	movs r3, #0xa
	bl FUN_0802D680
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r5, #0xc]
	ldr r0, _0802EF8C @ => 0x08066B78
	mov r1, sb
	str r1, [sp]
	movs r1, #0
	movs r2, #0x70
	movs r3, #0xa
	bl FUN_0802D680
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, r8
	orrs r0, r1
	str r0, [r5, #0xc]
	ldr r0, _0802EF90 @ => FUN_0802FF68
	str r0, [r5, #0x50]
	ldr r4, _0802EF64 @ => 0x030020B8
	str r5, [r4, #8]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	movs r0, #0
	bl FUN_080203A8
	movs r7, #0
	mov r8, r4
_0802ED26:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r6, r0, #3
	mov r0, r8
	adds r0, #0x1c
	adds r0, r6, r0
	movs r1, #0
	str r1, [r0]
	mov r0, r8
	adds r0, #0x20
	adds r0, r6, r0
	str r1, [r0]
	mov r0, r8
	adds r0, #0x30
	adds r0, r6, r0
	str r1, [r0]
	mov r0, r8
	adds r0, #0x24
	adds r0, r6, r0
	str r1, [r0]
	movs r0, #0xa
	movs r1, #0x1e
	bl FUN_080424F8
	mov r1, r8
	adds r1, #0x2c
	adds r1, r6, r1
	str r0, [r1]
	mov r0, r8
	adds r0, #0x34
	adds r0, r6, r0
	movs r1, #0
	str r1, [r0]
	ldr r0, _0802EF94 @ => 0x00000762
	bl FUN_08050820
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x54]
	bl FUN_08050940
	mov r1, r8
	adds r1, #0x14
	adds r1, r6, r1
	str r0, [r1]
	ldr r1, [r0, #0xc]
	movs r2, #0x80
	lsls r2, r2, #0xe
	orrs r1, r2
	str r1, [r0, #0xc]
	ldr r1, _0802EF98 @ => 0x030042B0
	ldrh r1, [r1, #6]
	eors r1, r7
	rsbs r2, r1, #0
	orrs r2, r1
	lsrs r2, r2, #0x1f
	movs r1, #0x94
	muls r1, r2, r1
	adds r1, #0x2f
	movs r2, #0xf
	bl FUN_08050BDC
	lsls r0, r7, #7
	mov sl, r0
	ldr r0, _0802EF9C @ => 0x08066BD8
	add r0, sl
	lsls r1, r7, #3
	adds r1, r1, r7
	lsls r1, r1, #2
	subs r1, r1, r7
	adds r1, #0xdf
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov sb, r1
	adds r1, r7, #1
	str r1, [sp, #0x30]
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x18
	movs r1, #1
	str r1, [sp]
	movs r1, #0x64
	mov r2, sb
	bl FUN_0802D680
	adds r5, r0, #0
	movs r0, #0
	strh r0, [r5, #8]
	strh r7, [r5, #0xa]
	ldr r0, [r5, #0xc]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x94
	ldr r0, _0802EFA0 @ => FUN_0802FBB8
	str r0, [r1]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	mov r0, r8
	adds r0, #0x10
	adds r0, r6, r0
	str r0, [sp, #0x34]
	str r5, [r0]
	ldr r0, _0802EFA4 @ => 0x08066C18
	add r0, sl
	str r0, [sp, #0x38]
	adds r4, r7, #3
	lsls r3, r4, #0x18
	lsrs r3, r3, #0x18
	movs r1, #0
	str r1, [sp]
	movs r1, #0x64
	mov r2, sb
	bl FUN_0802D680
	str r0, [r5, #0x58]
	movs r1, #1
	bl FUN_080017B8
	ldr r0, [r5, #0x58]
	movs r1, #0
	strh r1, [r0, #8]
	ldr r0, [r5, #0x58]
	str r5, [r0, #0x5c]
	cmp r7, #0
	beq _0802EE32
	ldr r0, _0802EFA8 @ => 0x08066CD8
	ldr r0, [r0, #8]
	lsls r1, r4, #4
	movs r2, #0x10
	bl FUN_0801579C
_0802EE32:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0802EFAC @ => 0x08066B98
	movs r1, #0x64
	mov r2, sb
	movs r3, #6
	bl FUN_0802D680
	adds r5, r0, #0
	ldr r1, [sp, #0x34]
	ldr r0, [r1]
	str r0, [r5, #0x5c]
	ldr r1, _0802EFB0 @ => 0x030020D0
	adds r0, r6, r1
	str r5, [r0]
	ldr r7, [sp, #0x30]
	cmp r7, #1
	bgt _0802EE58
	b _0802ED26
_0802EE58:
	movs r7, #1
	ldr r1, _0802EFB4 @ => 0x08066D30
	ldr r2, _0802EFB8 @ => 0x030047F0
	ldr r0, [r2]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r7, r0
	bgt _0802EE9C
	adds r6, r1, #0
	adds r5, r2, #0
_0802EE6E:
	ldr r0, [r5]
	lsls r0, r0, #3
	adds r1, r6, #4
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r7, #0
	muls r1, r0, r1
	str r1, [sp, #0x3c]
	movs r0, #0x10
	movs r1, #0xe9
	bl FUN_080424F8
	adds r1, r0, #0
	ldr r0, [sp, #0x3c]
	bl FUN_0802FE84
	adds r7, #1
	ldr r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r6
	ldr r0, [r0]
	cmp r7, r0
	ble _0802EE6E
_0802EE9C:
	movs r7, #1
	ldr r1, _0802EFBC @ => 0x08066D58
	ldr r2, _0802EFB8 @ => 0x030047F0
	ldr r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r7, r0
	bgt _0802EEEA
	adds r6, r1, #0
	adds r5, r2, #0
_0802EEB2:
	ldr r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldr r0, _0802EFC0 @ => 0x0D110000
	bl __udivsi3
	adds r1, r0, #0
	muls r1, r7, r1
	ldr r0, _0802EFC4 @ => 0x02AD0000
	adds r0, r1, r0
	lsrs r1, r0, #0x10
	str r1, [sp, #0x48]
	movs r0, #0x10
	movs r1, #0xc1
	bl FUN_080424F8
	adds r1, r0, #0
	ldr r0, [sp, #0x48]
	bl FUN_0802FEE8
	adds r7, #1
	ldr r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	cmp r7, r0
	ble _0802EEB2
_0802EEEA:
	ldr r6, _0802EF98 @ => 0x030042B0
	ldrb r0, [r6, #6]
	bl FUN_08010A08
	ldrb r1, [r6, #6]
	movs r0, #0
	bl FUN_08011300
	ldrb r1, [r6, #6]
	movs r0, #0
	bl FUN_08011024
	ldr r5, _0802EF64 @ => 0x030020B8
	ldrh r3, [r6, #6]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r1, r5, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0802EFC8 @ => 0x08066CF8
	ldr r2, [r1, #4]
	ldr r1, [r1]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	bl FUN_0801119C
	bl FUN_08047468
	ldrb r1, [r6, #6]
	movs r0, #1
	bl FUN_0804645C
	bl FUN_0801F0B0
	ldrb r0, [r6, #6]
	bl FUN_08010A9C
	bl FUN_08046398
	movs r6, #0
	movs r0, #0
	movs r1, #0
	ldr r2, _0802EFCC @ => 0x08E7A0F0
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x58]
	movs r1, #3
	movs r3, #0
	bl FUN_0800D83C
	bl FUN_0802FCD8
	b _0802EFD0
	.align 2, 0
_0802EF64: .4byte gUnk_030020B8
_0802EF68: .4byte 0x01008000
_0802EF6C: .4byte ROMREF_08066B20
_0802EF70: .4byte ROMREF_08066B24
_0802EF74: .4byte ROMREF_08066B28
_0802EF78: .4byte ROMREF_08066B2C
_0802EF7C: .4byte ROMREF_08066D00
_0802EF80: .4byte ROMREF_08066B88
_0802EF84: .4byte 0x00000743
_0802EF88: .4byte ROMREF_08066B68
_0802EF8C: .4byte ROMREF_08066B78
_0802EF90: .4byte FUN_0802FF68
_0802EF94: .4byte 0x00000762
_0802EF98: .4byte gUnk_030042B0
_0802EF9C: .4byte ROMREF_08066BD8
_0802EFA0: .4byte FUN_0802FBB8
_0802EFA4: .4byte ROMREF_08066C18
_0802EFA8: .4byte ROMREF_08066CD8
_0802EFAC: .4byte ROMREF_08066B98
_0802EFB0: .4byte gUnk_030020D0
_0802EFB4: .4byte ROMREF_08066D30
_0802EFB8: .4byte gUnk_030047F0
_0802EFBC: .4byte ROMREF_08066D58
_0802EFC0: .4byte 0x0D110000
_0802EFC4: .4byte 0x02AD0000
_0802EFC8: .4byte ROMREF_08066CF8
_0802EFCC: .4byte ROMREF_08E7A0F0
_0802EFD0:
	ldr r0, _0802F004 @ => 0x08066CE8
	ldr r0, [r0, #8]
	movs r1, #0
	movs r2, #0x10
	bl FUN_0801579C
	str r6, [r5, #0x60]
	ldr r1, _0802F008 @ => 0x03004720
	movs r0, #0xa
	str r0, [r1, #0x18]
	str r6, [r1, #0x14]
	movs r0, SOUNDTRACK_SPEED_METAL
	bl FUN_0804DE84
	movs r0, #0x3f
	movs r1, #0
	bl FUN_080457F4
	add sp, #0x5c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F004: .4byte ROMREF_08066CE8
_0802F008: .4byte gUnk_03004720

	thumb_func_start CanyonJumping_Handler
CanyonJumping_Handler: @ 0x0802F00C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0802F03C @ => 0x030042B0
	ldrb r1, [r5, #6]
	movs r0, #0
	bl FUN_0804645C
	bl FUN_0801F0B0
	ldrb r0, [r5, #6]
	bl FUN_08010A9C
	bl FUN_0800B66C
	ldr r6, _0802F040 @ => 0x03004720
	ldr r3, [r6, #0x14]
	cmp r3, #1
	beq _0802F0D8
	cmp r3, #1
	blo _0802F044
	cmp r3, #2
	beq _0802F11A
	b _0802F18A
	.align 2, 0
_0802F03C: .4byte gUnk_030042B0
_0802F040: .4byte gUnk_03004720
_0802F044:
	ldr r0, [r6, #0x18]
	subs r4, r0, #1
	str r4, [r6, #0x18]
	cmp r4, #0
	beq _0802F050
	b _0802F18A
_0802F050:
	ldr r5, _0802F088 @ => 0x030020B8
	ldr r0, [r5, #0x60]
	cmp r0, #0
	bne _0802F090
	movs r0, #0xb6
	bl FUN_0804DE0C
	ldr r0, _0802F08C @ => 0x08066CE8
	str r4, [sp]
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #0
	bl FUN_0802D680
	str r0, [r5, #0xc]
	ldr r1, [r0, #0xc]
	movs r2, #0x80
	lsls r2, r2, #0xe
	orrs r1, r2
	str r1, [r0, #0xc]
	movs r1, #0x23
	bl FUN_08000E44
	movs r0, #0x1e
	str r0, [r6, #0x18]
	movs r0, #0x23
	str r0, [r5, #0x60]
	b _0802F18A
	.align 2, 0
_0802F088: .4byte gUnk_030020B8
_0802F08C: .4byte ROMREF_08066CE8
_0802F090:
	subs r0, #1
	str r0, [r5, #0x60]
	cmp r0, #0x20
	bgt _0802F0C0
	movs r0, #1
	str r0, [r6, #0x14]
	ldr r1, [r5, #0xc]
	ldr r0, [r1, #0xc]
	movs r2, #2
	orrs r0, r2
	str r0, [r1, #0xc]
	ldr r0, _0802F0BC @ => 0x00000621
	str r4, [sp]
	str r2, [sp, #4]
	str r4, [sp, #8]
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #0x3c
	bl FUN_0800B984
	b _0802F18A
	.align 2, 0
_0802F0BC: .4byte 0x00000621
_0802F0C0:
	movs r0, #0xb6
	bl FUN_0804DE0C
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x60]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08000E44
	movs r0, #0x1e
	str r0, [r6, #0x18]
	b _0802F18A
_0802F0D8:
	ldr r1, _0802F110 @ => 0x030020B8
	adds r0, r1, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #2
	beq _0802F10A
	ldr r0, [r6, #0xc]
	cmp r0, #1
	beq _0802F114
	ldrh r2, [r5, #6]
	subs r0, r3, r2
	cmp r0, r2
	beq _0802F114
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #5
	bne _0802F114
_0802F10A:
	bl FUN_0802FD14
	b _0802F18E
	.align 2, 0
_0802F110: .4byte gUnk_030020B8
_0802F114:
	bl FUN_0802FC84
	b _0802F18A
_0802F11A:
	ldr r0, [r6, #0xc]
	cmp r0, #1
	beq _0802F124
	bl FUN_0802FC84
_0802F124:
	ldrb r7, [r5, #6]
	ldr r6, [r6, #0xc]
	cmp r6, #1
	bne _0802F14A
	ldrb r0, [r5, #0x14]
	movs r4, #9
	ands r4, r0
	cmp r4, #0
	beq _0802F18A
	bl FUN_0804C050
	bl FUN_0804B13C
	bl FUN_08047E10
	movs r0, #0
	strh r6, [r5, #4]
	strh r0, [r5, #6]
	b _0802F150
_0802F14A:
	ldrb r0, [r5, #0xc]
	movs r4, #9
	ands r4, r0
_0802F150:
	cmp r4, #0
	beq _0802F18A
	ldr r0, _0802F198 @ => 0x03004720
	ldr r6, [r0, #4]
	ldr r2, _0802F19C @ => 0x030020B8
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #3
	adds r2, #0x1c
	adds r0, r0, r2
	ldr r3, [r0]
	lsrs r4, r3, #4
	movs r5, #0
	movs r1, #1
	subs r1, r1, r7
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r3, r0
	bls _0802F17E
	movs r5, #1
_0802F17E:
	movs r0, #0x19
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl FUN_0802CEF8
_0802F18A:
	bl FUN_0802FCD8
_0802F18E:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F198: .4byte gUnk_03004720
_0802F19C: .4byte gUnk_030020B8

	thumb_func_start FUN_0802F1A0
FUN_0802F1A0: @ 0x0802F1A0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r2, _0802F1E0 @ => 0x030020B8
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r1, r2, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r7, r2, #0
	cmp r0, #5
	bls _0802F1D4
	b _0802F43C
_0802F1D4:
	lsls r0, r0, #2
	ldr r1, _0802F1E4 @ =_0802F1E8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802F1E0: .4byte gUnk_030020B8
_0802F1E4: .4byte _0802F1E8
_0802F1E8: @ jump table
	.4byte _0802F200 @ case 0
	.4byte _0802F25A @ case 1
	.4byte _0802F2A4 @ case 2
	.4byte _0802F2B0 @ case 3
	.4byte _0802F3CC @ case 4
	.4byte _0802F43C @ case 5
_0802F200:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r4, r0, #3
	adds r0, r7, #0
	adds r0, #0x10
	adds r6, r4, r0
	ldr r0, [r6]
	ldr r1, [r0, #0x18]
	ldr r0, _0802F24C @ => 0x026BFFFF
	cmp r1, r0
	ble _0802F250
	movs r0, #0x1d
	bl FUN_0804DE0C
	adds r1, r7, #0
	adds r1, #0x28
	adds r1, r4, r1
	adds r2, r7, #0
	adds r2, #0x24
	adds r2, r4, r2
	ldr r0, [r2]
	str r0, [r1]
	ldr r0, [r6]
	movs r3, #0x8e
	lsls r3, r3, #1
	adds r0, r0, r3
	movs r1, #1
	strb r1, [r0]
	ldr r1, [r6]
	ldr r0, [r2]
	rsbs r0, r0, #0
	str r0, [r1, #0x2c]
	adds r0, r5, #0
	movs r1, #1
	bl FUN_0802F874
	b _0802F43C
	.align 2, 0
_0802F24C: .4byte 0x026BFFFF
_0802F250:
	adds r0, r5, #0
	adds r1, r3, #0
	bl FUN_0802F700
	b _0802F43C
_0802F25A:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r1, r7, #0
	adds r1, #0x10
	adds r4, r0, r1
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0802F27C
	adds r0, r5, #0
	movs r1, #2
	bl FUN_0802F874
_0802F27C:
	ldr r0, [r4]
	ldr r1, [r0, #0x18]
	ldr r0, _0802F2A0 @ => 0x02ACFFFF
	cmp r1, r0
	bgt _0802F288
	b _0802F43C
_0802F288:
	adds r0, r5, #0
	movs r1, #3
	bl FUN_0802F874
	ldr r0, [r4]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #2
	strb r1, [r0]
	b _0802F43C
	.align 2, 0
_0802F2A0: .4byte 0x02ACFFFF
_0802F2A4:
	adds r0, r5, #0
	adds r1, r3, #0
	mov r2, r8
	bl FUN_0802F448
	b _0802F43C
_0802F2B0:
	ldr r7, _0802F314 @ => 0x030020B8
	lsls r2, r5, #2
	adds r0, r2, r5
	lsls r6, r0, #3
	adds r0, r7, #0
	adds r0, #0x20
	adds r0, r6, r0
	ldr r1, [r0]
	movs r0, #0xa0
	lsls r0, r0, #0xd
	mov sb, r2
	cmp r1, r0
	ble _0802F318
	adds r4, r7, #0
	adds r4, #0x10
	adds r4, r6, r4
	ldr r0, [r4]
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r0, r2
	movs r1, #2
	strb r1, [r0]
	ldr r0, [r4]
	bl FUN_08003DBC
	ldr r0, [r4]
	ldr r0, [r0, #0x58]
	bl FUN_08003DBC
	ldr r1, [r4]
	ldr r0, [r1, #0x2c]
	asrs r0, r0, #2
	str r0, [r1, #0x2c]
	adds r0, r7, #0
	adds r0, #0x24
	adds r1, r6, r0
	adds r0, #4
	adds r0, r6, r0
	ldr r0, [r0]
	cmp r0, #0
	bge _0802F304
	adds r0, #3
_0802F304:
	asrs r0, r0, #2
	str r0, [r1]
	adds r0, r5, #0
	mov r1, r8
	movs r2, #1
	bl FUN_0802F910
	b _0802F322
	.align 2, 0
_0802F314: .4byte gUnk_030020B8
_0802F318:
	adds r0, r5, #0
	mov r1, r8
	movs r2, #0
	bl FUN_0802F910
_0802F322:
	ldr r3, _0802F368 @ => 0x030020B8
	mov r1, sb
	adds r0, r1, r5
	lsls r0, r0, #3
	adds r1, r3, #0
	adds r1, #0x10
	adds r4, r0, r1
	ldr r2, [r4]
	lsls r0, r5, #3
	adds r0, r0, r5
	lsls r0, r0, #2
	subs r0, r0, r5
	adds r0, #0xdf
	lsls r0, r0, #0x10
	ldr r1, [r2, #0x1c]
	adds r7, r3, #0
	cmp r1, r0
	blt _0802F370
	ldr r1, [r2, #0x18]
	ldr r0, _0802F36C @ => 0x0D79FFFF
	cmp r1, r0
	ble _0802F370
	adds r0, r2, #0
	bl FUN_08003DBC
	ldr r0, [r4]
	ldr r0, [r0, #0x58]
	bl FUN_08003DBC
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0802F62C
	b _0802F43C
	.align 2, 0
_0802F368: .4byte gUnk_030020B8
_0802F36C: .4byte 0x0D79FFFF
_0802F370:
	mov r2, sb
	adds r0, r2, r5
	lsls r4, r0, #3
	adds r0, r7, #0
	adds r0, #0x10
	adds r3, r4, r0
	ldr r1, [r3]
	ldr r0, [r1, #0x2c]
	ldr r2, _0802F3C4 @ => 0x00006666
	adds r0, r0, r2
	str r0, [r1, #0x2c]
	movs r2, #0x80
	lsls r2, r2, #0xc
	cmp r0, r2
	ble _0802F390
	str r2, [r1, #0x2c]
_0802F390:
	ldr r2, [r3]
	ldr r1, [r2, #0x1c]
	ldr r0, _0802F3C8 @ => 0x0160FFFF
	cmp r1, r0
	ble _0802F43C
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r2, #0
	movs r0, #5
	strb r0, [r1]
	adds r1, r7, #0
	adds r1, #0x68
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r3]
	str r2, [r0, #0x28]
	str r2, [r0, #0x2c]
	adds r0, r7, #0
	adds r0, #0x34
	adds r0, r4, r0
	movs r1, #1
	str r1, [r0]
	b _0802F43C
	.align 2, 0
_0802F3C4: .4byte 0x00006666
_0802F3C8: .4byte 0x0160FFFF
_0802F3CC:
	adds r2, r7, #0
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r4, r0, #3
	adds r0, r2, #0
	adds r0, #0x24
	adds r1, r4, r0
	ldr r0, [r1]
	ldr r3, _0802F408 @ => 0xFFFFB334
	adds r0, r0, r3
	str r0, [r1]
	cmp r0, #0
	bge _0802F3EA
	movs r0, #0
	str r0, [r1]
_0802F3EA:
	adds r0, r2, #0
	adds r0, #0x10
	adds r0, r4, r0
	ldr r2, [r0]
	ldr r3, [r1]
	str r3, [r2, #0x28]
	ldr r1, [r2, #0x18]
	ldr r0, _0802F40C @ => 0x0FBDFFFF
	cmp r1, r0
	ble _0802F410
	adds r0, r5, #0
	movs r1, #1
	bl FUN_0802F62C
	b _0802F43C
	.align 2, 0
_0802F408: .4byte 0xFFFFB334
_0802F40C: .4byte 0x0FBDFFFF
_0802F410:
	cmp r3, #0
	bne _0802F43C
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #5
	strb r0, [r1]
	adds r1, r7, #0
	adds r1, #0x68
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	subs r1, #0x4c
	adds r1, r4, r1
	ldr r0, [r1]
	movs r2, #0xfa
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r5, #0
	bl FUN_0802FD84
_0802F43C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_0802F448
FUN_0802F448: @ 0x0802F448
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sb, r2
	ldr r6, _0802F4C0 @ => 0x030020B8
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r4, r0, #3
	adds r2, r6, #0
	adds r2, #0x1c
	adds r2, r4, r2
	adds r0, r6, #0
	adds r0, #0x24
	adds r0, r4, r0
	ldr r1, [r0]
	asrs r1, r1, #0xe
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r5, #0
	bl FUN_0802FD84
	adds r0, r6, #0
	adds r0, #0x10
	adds r7, r4, r0
	ldr r1, [r7]
	lsls r0, r5, #3
	adds r0, r0, r5
	lsls r0, r0, #2
	subs r0, r0, r5
	adds r0, #0xdf
	lsls r0, r0, #0x10
	ldr r2, [r1, #0x1c]
	cmp r2, r0
	blt _0802F50C
	ldr r1, [r1, #0x18]
	ldr r0, _0802F4C4 @ => 0x0D79FFFF
	cmp r1, r0
	ble _0802F50C
	adds r0, r6, #0
	adds r0, #0x20
	adds r0, r4, r0
	ldr r1, [r0]
	ldr r0, _0802F4C8 @ => 0x0027FFFF
	cmp r1, r0
	ble _0802F4CC
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0802F62C
	b _0802F610
	.align 2, 0
_0802F4C0: .4byte gUnk_030020B8
_0802F4C4: .4byte 0x0D79FFFF
_0802F4C8: .4byte 0x0027FFFF
_0802F4CC:
	ldr r0, _0802F508 @ => 0x010DFFFF
	cmp r2, r0
	bgt _0802F526
	movs r0, #0x1d
	bl FUN_0804DE0C
	ldr r0, [r7]
	movs r1, #0
	str r1, [r0, #0x2c]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #4
	strb r1, [r0]
	ldr r0, [r7]
	ldr r1, [r0, #0xc]
	movs r2, #5
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #0xc]
	movs r1, #0xd
	bl FUN_08000E44
	ldr r0, [r7]
	ldr r0, [r0, #0x58]
	movs r1, #0xd
	bl FUN_08000E44
	b _0802F610
	.align 2, 0
_0802F508: .4byte 0x010DFFFF
_0802F50C:
	ldr r4, _0802F530 @ => 0x030020B8
	lsls r2, r5, #2
	adds r0, r2, r5
	lsls r6, r0, #3
	adds r0, r4, #0
	adds r0, #0x10
	adds r7, r6, r0
	ldr r3, [r7]
	ldr r1, [r3, #0x18]
	ldr r0, _0802F534 @ => 0x0FBDFFFF
	mov r8, r2
	cmp r1, r0
	ble _0802F538
_0802F526:
	adds r0, r5, #0
	movs r1, #1
	bl FUN_0802F62C
	b _0802F610
	.align 2, 0
_0802F530: .4byte gUnk_030020B8
_0802F534: .4byte 0x0FBDFFFF
_0802F538:
	ldr r1, [r3, #0x1c]
	ldr r0, _0802F568 @ => 0x0160FFFF
	cmp r1, r0
	ble _0802F56C
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r1, r3, r2
	movs r2, #0
	movs r0, #5
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x68
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x34
	adds r0, r6, r0
	movs r1, #1
	str r1, [r0]
	ldr r0, [r7]
	str r2, [r0, #0x28]
	str r2, [r0, #0x2c]
	b _0802F610
	.align 2, 0
_0802F568: .4byte 0x0160FFFF
_0802F56C:
	adds r0, r4, #0
	adds r0, #0x30
	adds r1, r6, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0802F586
	adds r0, r5, #0
	mov r1, sb
	movs r2, #1
	bl FUN_0802F910
	adds r4, r0, #0
	b _0802F59E
_0802F586:
	ldr r4, _0802F620 @ => 0x00006666
	movs r0, #2
	mov r2, sl
	ands r0, r2
	cmp r0, #0
	beq _0802F59E
	movs r0, #1
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #4
	bl FUN_0802F874
_0802F59E:
	ldr r2, _0802F624 @ => 0x030020B8
	mov r1, r8
	adds r0, r1, r5
	lsls r0, r0, #3
	adds r1, r2, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #0x2c]
	adds r0, r0, r4
	str r0, [r1, #0x2c]
	adds r6, r2, #0
	cmp r0, #0
	bge _0802F5CA
	ldr r3, [r1, #0x1c]
	adds r0, r3, r0
	movs r4, #0x80
	lsls r4, r4, #0xd
	cmp r0, r4
	bgt _0802F5CA
	subs r0, r4, r3
	str r0, [r1, #0x2c]
_0802F5CA:
	mov r2, r8
	adds r0, r2, r5
	lsls r2, r0, #3
	adds r0, r6, #0
	adds r0, #0x10
	adds r3, r2, r0
	ldr r1, [r3]
	ldr r0, [r1, #0x2c]
	movs r4, #0x80
	lsls r4, r4, #0xc
	cmp r0, r4
	ble _0802F5E4
	str r4, [r1, #0x2c]
_0802F5E4:
	ldr r1, [r3]
	ldr r0, [r1, #0x2c]
	ldr r3, _0802F628 @ => 0xFFF80000
	cmp r0, r3
	bge _0802F5F0
	str r3, [r1, #0x2c]
_0802F5F0:
	adds r0, r6, #0
	adds r0, #0x2c
	adds r4, r2, r0
	ldr r0, [r4]
	subs r0, #1
	str r0, [r4]
	cmp r0, #0
	bne _0802F610
	movs r0, #0xa
	movs r1, #0x1e
	bl FUN_080424F8
	str r0, [r4]
	adds r0, r5, #0
	bl FUN_0802FE10
_0802F610:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F620: .4byte 0x00006666
_0802F624: .4byte gUnk_030020B8
_0802F628: .4byte 0xFFF80000

	thumb_func_start FUN_0802F62C
FUN_0802F62C: @ 0x0802F62C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r4, r1, #0
	movs r0, #0x91
	bl FUN_0804DE0C
	ldr r1, _0802F684 @ => 0x030020B8
	mov r2, r8
	lsls r0, r2, #2
	add r0, r8
	lsls r0, r0, #3
	adds r1, #0x10
	adds r7, r0, r1
	ldr r3, [r7]
	movs r0, #0
	str r0, [r3, #0x28]
	str r0, [r3, #0x2c]
	ldr r0, [r3, #0xc]
	ldr r1, _0802F688 @ => 0xFFBFFFFF
	ands r0, r1
	str r0, [r3, #0xc]
	cmp r4, #0
	beq _0802F694
	lsls r6, r2, #7
	ldr r4, _0802F68C @ => 0x08066BF8
	adds r1, r6, r4
	ldr r5, _0802F690 @ => 0x09FB64BC
	ldr r2, [r5]
	adds r0, r3, #0
	movs r3, #0
	bl FUN_0800192C
	ldr r0, [r7]
	ldr r0, [r0, #0x58]
	adds r4, r4, r6
	adds r4, #0x40
	ldr r2, [r5]
	adds r1, r4, #0
	movs r3, #0
	bl FUN_0800192C
	b _0802F6BA
	.align 2, 0
_0802F684: .4byte gUnk_030020B8
_0802F688: .4byte 0xFFBFFFFF
_0802F68C: .4byte ROMREF_08066BF8
_0802F690: .4byte ROMREF_09FB64BC
_0802F694:
	mov r0, r8
	lsls r6, r0, #7
	ldr r4, _0802F6F4 @ => 0x08066C08
	adds r1, r6, r4
	ldr r5, _0802F6F8 @ => 0x09FB64BC
	ldr r2, [r5]
	adds r0, r3, #0
	movs r3, #0
	bl FUN_0800192C
	ldr r0, [r7]
	ldr r0, [r0, #0x58]
	adds r4, r4, r6
	adds r4, #0x40
	ldr r2, [r5]
	adds r1, r4, #0
	movs r3, #0
	bl FUN_0800192C
_0802F6BA:
	ldr r3, _0802F6FC @ => 0x030020B8
	adds r1, r3, #0
	adds r1, #0x68
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	mov r2, r8
	lsls r1, r2, #2
	add r1, r8
	lsls r1, r1, #3
	adds r0, r3, #0
	adds r0, #0x10
	adds r0, r1, r0
	ldr r0, [r0]
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r0, r2
	movs r2, #5
	strb r2, [r0]
	adds r0, r3, #0
	adds r0, #0x34
	adds r1, r1, r0
	movs r0, #1
	str r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F6F4: .4byte ROMREF_08066C08
_0802F6F8: .4byte ROMREF_09FB64BC
_0802F6FC: .4byte gUnk_030020B8

	thumb_func_start FUN_0802F700
FUN_0802F700: @ 0x0802F700
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	movs r0, #1
	ands r3, r0
	cmp r3, #0
	beq _0802F738
	ldr r1, _0802F734 @ => 0x030020B8
	lsls r2, r5, #2
	adds r0, r2, r5
	lsls r0, r0, #3
	adds r1, #0x24
	adds r1, r0, r1
	ldr r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	str r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #0xc
	adds r4, r2, #0
	cmp r0, r3
	ble _0802F754
	b _0802F752
	.align 2, 0
_0802F734: .4byte gUnk_030020B8
_0802F738:
	ldr r1, _0802F7A4 @ => 0x030020B8
	lsls r2, r5, #2
	adds r0, r2, r5
	lsls r0, r0, #3
	adds r1, #0x24
	adds r1, r0, r1
	ldr r0, [r1]
	ldr r4, _0802F7A8 @ => 0xFFFFE148
	adds r0, r0, r4
	str r0, [r1]
	adds r4, r2, #0
	cmp r0, #0
	bge _0802F754
_0802F752:
	str r3, [r1]
_0802F754:
	ldr r2, _0802F7A4 @ => 0x030020B8
	adds r0, r4, r5
	lsls r1, r0, #3
	adds r0, r2, #0
	adds r0, #0x10
	adds r0, r1, r0
	ldr r0, [r0]
	ldr r0, [r0, #0x28]
	cmp r0, #0
	bne _0802F788
	adds r0, r2, #0
	adds r0, #0x24
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _0802F788
	adds r0, r2, #0
	adds r0, #0x18
	adds r0, r1, r0
	ldr r0, [r0]
	ldr r1, _0802F7AC @ => 0x08066B98
	ldr r2, _0802F7B0 @ => 0x09FB64C0
	ldr r2, [r2]
	movs r3, #0
	bl FUN_0800192C
_0802F788:
	ldr r2, _0802F7A4 @ => 0x030020B8
	adds r1, r4, r5
	lsls r1, r1, #3
	adds r0, r2, #0
	adds r0, #0x10
	adds r0, r1, r0
	ldr r3, [r0]
	adds r2, #0x24
	adds r1, r1, r2
	ldr r0, [r1]
	str r0, [r3, #0x28]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802F7A4: .4byte gUnk_030020B8
_0802F7A8: .4byte 0xFFFFE148
_0802F7AC: .4byte ROMREF_08066B98
_0802F7B0: .4byte ROMREF_09FB64C0

	thumb_func_start FUN_0802F7B4
FUN_0802F7B4: @ 0x0802F7B4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #0
	movs r1, #0x80
	lsls r1, r1, #0xc
	bl FUN_0802FDE8
	adds r6, r0, #0
	ldr r0, _0802F7E8 @ => 0x030020B8
	mov ip, r0
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r3, r0, #3
	mov r0, ip
	adds r0, #0x10
	adds r0, r3, r0
	ldr r2, [r0]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802F7EC
	cmp r0, #2
	beq _0802F7FC
	b _0802F868
	.align 2, 0
_0802F7E8: .4byte gUnk_030020B8
_0802F7EC:
	movs r0, #0
	movs r1, #0x64
	bl FUN_080424F8
	cmp r0, #0x37
	bgt _0802F868
	movs r5, #1
	b _0802F868
_0802F7FC:
	mov r0, ip
	adds r0, #0x30
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r0, #0
	bne _0802F818
	movs r0, #0
	movs r1, #0x64
	bl FUN_080424F8
	cmp r0, #0x14
	bgt _0802F868
	movs r5, #2
	b _0802F868
_0802F818:
	ldr r1, [r2, #0x18]
	ldr r0, _0802F834 @ => 0x0DF9FFFF
	cmp r1, r0
	ble _0802F83C
	mov r0, ip
	adds r0, #0x20
	adds r0, r3, r0
	ldr r1, [r0]
	ldr r0, _0802F838 @ => 0x0013FFFF
	cmp r1, r0
	ble _0802F856
	movs r0, #0xf0
	lsls r0, r0, #0xd
	b _0802F862
	.align 2, 0
_0802F834: .4byte 0x0DF9FFFF
_0802F838: .4byte 0x0013FFFF
_0802F83C:
	ldr r1, [r2, #0x1c]
	ldr r0, _0802F85C @ => 0x0031B333
	cmp r1, r0
	bgt _0802F860
	movs r0, #0
	movs r1, #0x64
	bl FUN_080424F8
	movs r1, #0x10
	subs r1, r1, r6
	lsls r1, r1, #2
	cmp r0, r1
	bgt _0802F868
_0802F856:
	movs r5, #0x80
	b _0802F868
	.align 2, 0
_0802F85C: .4byte 0x0031B333
_0802F860:
	ldr r0, _0802F870 @ => 0x00536665
_0802F862:
	cmp r1, r0
	ble _0802F868
	movs r5, #0x40
_0802F868:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0802F870: .4byte 0x00536665

	thumb_func_start FUN_0802F874
FUN_0802F874: @ 0x0802F874
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r2, r0, #0
	adds r5, r1, #0
	cmp r5, #4
	beq _0802F8C8
	ldr r0, _0802F8BC @ => 0x030020B8
	lsls r4, r2, #2
	adds r4, r4, r2
	lsls r4, r4, #3
	adds r0, #0x10
	adds r4, r4, r0
	ldr r0, [r4]
	lsls r2, r2, #7
	mov r8, r2
	ldr r6, _0802F8C0 @ => 0x08066BD8
	adds r1, r2, r6
	ldr r2, _0802F8C4 @ => 0x09FB64D0
	lsls r5, r5, #2
	adds r5, r5, r2
	ldr r2, [r5]
	movs r3, #0
	bl FUN_0800192C
	ldr r0, [r4]
	ldr r0, [r0, #0x58]
	adds r6, #0x40
	add r8, r6
	ldr r2, [r5]
	mov r1, r8
	movs r3, #0
	bl FUN_0800192C
	b _0802F8FA
	.align 2, 0
_0802F8BC: .4byte gUnk_030020B8
_0802F8C0: .4byte ROMREF_08066BD8
_0802F8C4: .4byte ROMREF_09FB64D0
_0802F8C8:
	ldr r0, _0802F904 @ => 0x030020B8
	lsls r4, r2, #2
	adds r4, r4, r2
	lsls r4, r4, #3
	adds r0, #0x10
	adds r4, r4, r0
	ldr r0, [r4]
	lsls r2, r2, #7
	mov r8, r2
	ldr r5, _0802F908 @ => 0x08066BE8
	adds r1, r2, r5
	ldr r6, _0802F90C @ => 0x09FB64D0
	ldr r2, [r6, #0x10]
	movs r3, #0
	bl FUN_0800192C
	ldr r0, [r4]
	ldr r0, [r0, #0x58]
	add r5, r8
	adds r5, #0x40
	ldr r2, [r6, #0x10]
	adds r1, r5, #0
	movs r3, #0
	bl FUN_0800192C
_0802F8FA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802F904: .4byte gUnk_030020B8
_0802F908: .4byte ROMREF_08066BE8
_0802F90C: .4byte ROMREF_09FB64D0

	thumb_func_start FUN_0802F910
FUN_0802F910: @ 0x0802F910
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	mov sl, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0
	beq _0802F958
	ldr r1, _0802F94C @ => 0x030020B8
	lsls r2, r7, #2
	adds r0, r2, r7
	lsls r0, r0, #3
	adds r1, #0x20
	adds r1, r0, r1
	ldr r0, [r1]
	ldr r3, _0802F950 @ => 0xFFFA0000
	adds r0, r0, r3
	str r0, [r1]
	ldr r3, _0802F954 @ => 0xFFC40000
	mov r8, r2
	cmp r0, r3
	bge _0802F982
	str r3, [r1]
	b _0802F982
	.align 2, 0
_0802F94C: .4byte gUnk_030020B8
_0802F950: .4byte 0xFFFA0000
_0802F954: .4byte 0xFFC40000
_0802F958:
	movs r0, #0x90
	ands r0, r1
	lsls r1, r7, #2
	mov r8, r1
	cmp r0, #0
	beq _0802F982
	ldr r0, _0802F9C4 @ => 0x030020B8
	adds r1, r1, r7
	lsls r1, r1, #3
	adds r0, #0x20
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0xc0
	lsls r2, r2, #0xb
	adds r0, r0, r2
	str r0, [r1]
	movs r2, #0xf0
	lsls r2, r2, #0xe
	cmp r0, r2
	ble _0802F982
	str r2, [r1]
_0802F982:
	movs r1, #0xd0
	lsls r1, r1, #0xc
	adds r0, r7, #0
	bl FUN_0802FDE8
	adds r6, r0, #0
	ldr r0, _0802F9C4 @ => 0x030020B8
	mov r3, r8
	adds r4, r3, r7
	lsls r4, r4, #3
	adds r0, #0x10
	adds r4, r4, r0
	ldr r0, [r4]
	lsls r5, r6, #0x18
	lsrs r5, r5, #0x18
	adds r1, r5, #0
	bl FUN_08000E44
	ldr r0, [r4]
	ldr r0, [r0, #0x58]
	adds r1, r5, #0
	bl FUN_08000E44
	cmp r6, #0xc
	bgt _0802F9D0
	adds r0, r6, #0
	subs r0, #0xd
	ldr r1, _0802F9C8 @ => 0x000011EB
	muls r0, r1, r0
	ldr r1, _0802F9CC @ => 0x00001999
	adds r1, r1, r0
	mov sb, r1
	b _0802F9DE
	.align 2, 0
_0802F9C4: .4byte gUnk_030020B8
_0802F9C8: .4byte 0x000011EB
_0802F9CC: .4byte 0x00001999
_0802F9D0:
	adds r0, r6, #0
	subs r0, #0xd
	ldr r1, _0802FA04 @ => 0x000007AE
	muls r0, r1, r0
	ldr r2, _0802FA08 @ => 0x00001999
	adds r2, r2, r0
	mov sb, r2
_0802F9DE:
	mov r3, sl
	cmp r3, #0
	beq _0802FABE
	ldr r0, _0802FA0C @ => 0x030020B8
	mov r2, r8
	adds r1, r2, r7
	lsls r1, r1, #3
	adds r2, r0, #0
	adds r2, #0x24
	adds r2, r1, r2
	ldr r3, [r2]
	adds r4, r0, #0
	cmp r6, #0xa
	bgt _0802FA14
	adds r1, r6, #0
	subs r1, #0xb
	ldr r0, _0802FA10 @ => 0x00000A3D
	b _0802FA1A
	.align 2, 0
_0802FA04: .4byte 0x000007AE
_0802FA08: .4byte 0x00001999
_0802FA0C: .4byte gUnk_030020B8
_0802FA10: .4byte 0x00000A3D
_0802FA14:
	adds r1, r6, #0
	subs r1, #0xb
	ldr r0, _0802FA3C @ => 0x0000147A
_0802FA1A:
	muls r0, r1, r0
	adds r0, r3, r0
	str r0, [r2]
	mov r3, r8
	adds r0, r3, r7
	lsls r0, r0, #3
	adds r1, r4, #0
	adds r1, #0x24
	adds r2, r0, r1
	adds r1, #4
	adds r0, r0, r1
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	ble _0802FA40
	str r0, [r2]
	b _0802FAA6
	.align 2, 0
_0802FA3C: .4byte 0x0000147A
_0802FA40:
	ldr r0, _0802FA5C @ => 0x03004720
	ldr r0, [r0, #0xc]
	cmp r0, #1
	beq _0802FA68
	ldr r0, _0802FA60 @ => 0x030042B0
	ldrh r0, [r0, #6]
	cmp r7, r0
	beq _0802FA68
	ldr r0, _0802FA64 @ => 0x0001FFFF
	cmp r1, r0
	bgt _0802FAA6
	adds r0, #1
	str r0, [r2]
	b _0802FAA6
	.align 2, 0
_0802FA5C: .4byte gUnk_03004720
_0802FA60: .4byte gUnk_030042B0
_0802FA64: .4byte 0x0001FFFF
_0802FA68:
	ldr r4, _0802FAD0 @ => 0x030020B8
	mov r1, r8
	adds r0, r1, r7
	lsls r3, r0, #3
	adds r0, r4, #0
	adds r0, #0x24
	adds r2, r3, r0
	ldr r1, [r2]
	ldr r0, _0802FAD4 @ => 0x00001998
	cmp r1, r0
	bgt _0802FAA6
	adds r0, #1
	str r0, [r2]
	adds r4, #0x10
	adds r4, r3, r4
	ldr r0, [r4]
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r0, r2
	movs r1, #3
	strb r1, [r0]
	ldr r0, [r4]
	ldr r5, _0802FAD8 @ => 0x08066B30
	adds r1, r5, #0
	bl FUN_08003DDC
	ldr r0, [r4]
	ldr r0, [r0, #0x58]
	adds r1, r5, #0
	bl FUN_08003DDC
_0802FAA6:
	ldr r2, _0802FAD0 @ => 0x030020B8
	mov r3, r8
	adds r1, r3, r7
	lsls r1, r1, #3
	adds r0, r2, #0
	adds r0, #0x10
	adds r0, r1, r0
	ldr r3, [r0]
	adds r2, #0x24
	adds r1, r1, r2
	ldr r0, [r1]
	str r0, [r3, #0x28]
_0802FABE:
	mov r0, sb
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802FAD0: .4byte gUnk_030020B8
_0802FAD4: .4byte 0x00001998
_0802FAD8: .4byte ROMREF_08066B30

	thumb_func_start FUN_0802FADC
FUN_0802FADC: @ 0x0802FADC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrh r0, [r5, #0xa]
	cmp r0, #0
	beq _0802FB10
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0802FB9A
	movs r0, #0
	strh r0, [r5, #0xa]
	ldr r1, _0802FB08 @ => 0x08066BB8
	ldr r0, _0802FB0C @ => 0x09FB64C8
	ldr r2, [r0]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_0800192C
	b _0802FB9A
	.align 2, 0
_0802FB08: .4byte ROMREF_08066BB8
_0802FB0C: .4byte ROMREF_09FB64C8
_0802FB10:
	movs r0, #0x98
	lsls r0, r0, #1
	adds r6, r5, r0
	ldr r1, [r6]
	cmp r1, #0
	beq _0802FB30
	ldr r4, [r5, #0xc]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r4, r0
	cmp r4, #0
	bne _0802FB30
	adds r0, r1, #0
	bl FUN_0804E03C
	str r4, [r6]
_0802FB30:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bge _0802FB9A
	movs r3, #0x98
	lsls r3, r3, #1
	adds r4, r5, r3
	ldr r0, [r4]
	cmp r0, #0
	beq _0802FB4A
	bl FUN_0804E03C
	movs r0, #0
	str r0, [r4]
_0802FB4A:
	ldr r0, [r5, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0xc]
	movs r0, #0x10
	movs r1, #0xe9
	bl FUN_080424F8
	adds r2, r0, #0
	ldr r1, _0802FBA4 @ => 0x00000FFE
	ldr r5, _0802FBA8 @ => 0x08066BB8
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r4, #1
	str r4, [sp]
	adds r0, r5, #0
	movs r3, #8
	bl FUN_0802D680
	ldr r1, [r0, #0xc]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #0xc]
	movs r2, #0
	strh r4, [r0, #8]
	strh r2, [r0, #0xa]
	ldr r1, _0802FBAC @ => FUN_0802FADC
	str r1, [r0, #0x50]
	ldr r1, _0802FBB0 @ => 0xFFFF0000
	str r1, [r0, #0x28]
	movs r3, #0x98
	lsls r3, r3, #1
	adds r1, r0, r3
	str r2, [r1]
	ldr r1, _0802FBB4 @ => 0x09FB64C8
	ldr r2, [r1]
	adds r1, r5, #0
	movs r3, #0
	bl FUN_0800192C
_0802FB9A:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802FBA4: .4byte 0x00000FFE
_0802FBA8: .4byte ROMREF_08066BB8
_0802FBAC: .4byte FUN_0802FADC
_0802FBB0: .4byte 0xFFFF0000
_0802FBB4: .4byte ROMREF_09FB64C8

	thumb_func_start FUN_0802FBB8
FUN_0802FBB8: @ 0x0802FBB8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldrh r1, [r4, #8]
	cmp r1, #1
	beq _0802FBCA
	cmp r1, #2
	beq _0802FC0C
	b _0802FC6E
_0802FBCA:
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	bne _0802FC36
	strh r1, [r4, #0xa]
	ldr r1, _0802FC04 @ => 0x08066BC8
	ldr r0, _0802FC08 @ => 0x09FB64CC
	ldr r2, [r0]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_0800192C
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0802FC36
	movs r0, #0x98
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r0, [r4]
	cmp r0, #0
	bne _0802FC36
	movs r0, #0x2c
	bl FUN_0804DE0C
	str r0, [r4]
	b _0802FC36
	.align 2, 0
_0802FC04: .4byte ROMREF_08066BC8
_0802FC08: .4byte ROMREF_09FB64CC
_0802FC0C:
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	bne _0802FC36
	movs r0, #1
	strh r0, [r4, #0xa]
	ldr r1, _0802FC74 @ => 0x08066B58
	ldr r0, _0802FC78 @ => 0x09FB64B8
	ldr r2, [r0]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_0800192C
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0802FC36
	movs r0, #0xba
	bl FUN_0804DE0C
_0802FC36:
	ldr r2, _0802FC7C @ => 0x030020B8
	ldrh r0, [r5, #0xa]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r2, #0x24
	adds r1, r1, r2
	ldr r0, [r1]
	ldr r3, _0802FC80 @ => 0xFFFFB334
	adds r0, r0, r3
	str r0, [r1]
	ldrh r1, [r5, #0xa]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, r0, r2
	ldr r0, [r1]
	cmp r0, #0
	bge _0802FC60
	movs r0, #0
	str r0, [r1]
_0802FC60:
	ldrh r0, [r5, #0xa]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r2
	ldr r0, [r1]
	str r0, [r5, #0x28]
_0802FC6E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802FC74: .4byte ROMREF_08066B58
_0802FC78: .4byte ROMREF_09FB64B8
_0802FC7C: .4byte gUnk_030020B8
_0802FC80: .4byte 0xFFFFB334

	thumb_func_start FUN_0802FC84
FUN_0802FC84: @ 0x0802FC84
	push {r4, lr}
	movs r4, #0
_0802FC88:
	ldr r0, _0802FC9C @ => 0x03004720
	ldr r0, [r0, #0xc]
	cmp r0, #1
	bne _0802FCA4
	ldr r1, _0802FCA0 @ => 0x030042B0
	lsls r0, r4, #3
	adds r0, r0, r1
	ldrb r1, [r0, #0x14]
	ldrb r2, [r0, #0x10]
	b _0802FCC4
	.align 2, 0
_0802FC9C: .4byte gUnk_03004720
_0802FCA0: .4byte gUnk_030042B0
_0802FCA4:
	ldr r0, _0802FCB4 @ => 0x030042B0
	ldrh r1, [r0, #6]
	cmp r4, r1
	bne _0802FCB8
	ldrb r1, [r0, #0xc]
	ldrb r2, [r0, #8]
	b _0802FCC4
	.align 2, 0
_0802FCB4: .4byte gUnk_030042B0
_0802FCB8:
	adds r0, r4, #0
	bl FUN_0802F7B4
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r1, r2, #0
_0802FCC4:
	adds r0, r4, #0
	bl FUN_0802F1A0
	adds r4, #1
	cmp r4, #1
	ble _0802FC88
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0802FCD8
FUN_0802FCD8: @ 0x0802FCD8
	push {r4, lr}
	ldr r2, _0802FD0C @ => 0x03006120
	ldr r0, _0802FD10 @ => 0x030042B0
	ldrh r0, [r0, #6]
	lsls r1, r0, #3
	adds r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	bge _0802FCEC
	adds r0, #3
_0802FCEC:
	asrs r4, r0, #2
	adds r0, r2, #4
	adds r0, r1, r0
	ldr r0, [r0]
	movs r1, #3
	bl __divsi3
	adds r2, r0, #0
	movs r0, #3
	adds r1, r4, #0
	bl FUN_0800CCCC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802FD0C: .4byte gUnk_03006120
_0802FD10: .4byte gUnk_030042B0

	thumb_func_start FUN_0802FD14
FUN_0802FD14: @ 0x0802FD14
	push {r4, r5, r6, lr}
	sub sp, #0xc
	ldr r1, _0802FD74 @ => 0x03004720
	movs r0, #2
	str r0, [r1, #0x14]
	ldr r6, _0802FD78 @ => 0x030020B8
	ldr r0, _0802FD7C @ => 0x030042B0
	ldrh r2, [r0, #6]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r5, r0, #3
	adds r3, r6, #0
	adds r3, #0x1c
	adds r4, r5, r3
	movs r1, #1
	subs r1, r1, r2
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	ldr r1, [r4]
	ldr r0, [r0]
	ldr r2, _0802FD80 @ => 0x00000624
	cmp r1, r0
	bls _0802FD54
	adds r0, r6, #0
	adds r0, #0x34
	adds r0, r5, r0
	ldr r0, [r0]
	cmp r0, #0
	bne _0802FD54
	subs r2, #1
_0802FD54:
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0
	str r1, [sp]
	movs r0, #2
	str r0, [sp, #4]
	str r1, [sp, #8]
	adds r0, r2, #0
	movs r1, #0x78
	movs r2, #0x58
	bl FUN_0800B984
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802FD74: .4byte gUnk_03004720
_0802FD78: .4byte gUnk_030020B8
_0802FD7C: .4byte gUnk_030042B0
_0802FD80: .4byte 0x00000624

	thumb_func_start FUN_0802FD84
FUN_0802FD84: @ 0x0802FD84
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r0, #0
	ldr r0, _0802FDDC @ => 0x00000762
	bl FUN_08050820
	mov r8, r0
	ldr r5, _0802FDE0 @ => 0x030020B8
	lsls r4, r6, #2
	adds r4, r4, r6
	lsls r4, r4, #3
	adds r0, r5, #0
	adds r0, #0x1c
	adds r0, r4, r0
	ldr r0, [r0]
	lsrs r0, r0, #4
	bl FUN_080203A8
	adds r5, #0x14
	adds r4, r4, r5
	ldr r0, [r4]
	mov r1, r8
	bl FUN_08050BC8
	ldr r0, _0802FDE4 @ => 0x030042B0
	ldrh r0, [r0, #6]
	eors r0, r6
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	ldr r0, [r4]
	movs r2, #0x94
	muls r1, r2, r1
	adds r1, #0x2f
	movs r2, #0xf
	bl FUN_08050BDC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802FDDC: .4byte 0x00000762
_0802FDE0: .4byte gUnk_030020B8
_0802FDE4: .4byte gUnk_030042B0

	thumb_func_start FUN_0802FDE8
FUN_0802FDE8: @ 0x0802FDE8
	push {r4, lr}
	adds r4, r1, #0
	ldr r2, _0802FE0C @ => 0x030020B8
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r2, #0x20
	adds r1, r1, r2
	ldr r0, [r1]
	lsls r0, r0, #4
	movs r1, #0xb4
	bl __divsi3
	adds r0, r0, r4
	asrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0802FE0C: .4byte gUnk_030020B8

	thumb_func_start FUN_0802FE10
FUN_0802FE10: @ 0x0802FE10
	push {r4, lr}
	sub sp, #4
	ldr r2, _0802FE58 @ => 0x030020B8
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r2, #0x10
	adds r1, r1, r2
	ldr r0, [r1]
	movs r2, #0x1a
	ldrsh r1, [r0, r2]
	subs r1, #0x18
	ldr r4, _0802FE5C @ => 0x08066BA8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #0x1e
	ldrsh r2, [r0, r3]
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #7
	bl FUN_0802D680
	ldr r1, _0802FE60 @ => FUN_0802FE68
	str r1, [r0, #0x50]
	ldr r1, _0802FE64 @ => 0x09FB64C4
	ldr r2, [r1]
	adds r1, r4, #0
	movs r3, #0
	bl FUN_0800192C
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802FE58: .4byte gUnk_030020B8
_0802FE5C: .4byte ROMREF_08066BA8
_0802FE60: .4byte FUN_0802FE68
_0802FE64: .4byte ROMREF_09FB64C4

	thumb_func_start FUN_0802FE68
FUN_0802FE68: @ 0x0802FE68
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0802FE7E
	movs r0, #2
	orrs r1, r0
	str r1, [r2, #0xc]
_0802FE7E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0802FE84
FUN_0802FE84: @ 0x0802FE84
	push {r4, r5, lr}
	sub sp, #4
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r5, _0802FED8 @ => 0x08066BB8
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r4, #1
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r3, #0
	movs r3, #8
	bl FUN_0802D680
	ldr r1, [r0, #0xc]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #0xc]
	movs r2, #0
	strh r4, [r0, #8]
	strh r2, [r0, #0xa]
	ldr r1, _0802FEDC @ => FUN_0802FADC
	str r1, [r0, #0x50]
	ldr r1, _0802FEE0 @ => 0xFFFF0000
	str r1, [r0, #0x28]
	movs r3, #0x98
	lsls r3, r3, #1
	adds r1, r0, r3
	str r2, [r1]
	ldr r1, _0802FEE4 @ => 0x09FB64C8
	ldr r2, [r1]
	adds r1, r5, #0
	movs r3, #0
	bl FUN_0800192C
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802FED8: .4byte ROMREF_08066BB8
_0802FEDC: .4byte FUN_0802FADC
_0802FEE0: .4byte 0xFFFF0000
_0802FEE4: .4byte ROMREF_09FB64C8

	thumb_func_start FUN_0802FEE8
FUN_0802FEE8: @ 0x0802FEE8
	push {r4, r5, lr}
	sub sp, #4
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r5, _0802FF38 @ => 0x08066B48
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r3, #0
	movs r3, #0xb
	bl FUN_0802D680
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0xc]
	movs r0, #2
	strh r0, [r4, #8]
	ldr r0, _0802FF3C @ => FUN_0802FF48
	str r0, [r4, #0x50]
	ldr r1, _0802FF40 @ => 0x08066B3C
	adds r0, r4, #0
	bl FUN_08003DDC
	ldr r0, _0802FF44 @ => 0x09FB64B4
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #0
	bl FUN_0800192C
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802FF38: .4byte ROMREF_08066B48
_0802FF3C: .4byte FUN_0802FF48
_0802FF40: .4byte ROMREF_08066B3C
_0802FF44: .4byte ROMREF_09FB64B4

	thumb_func_start FUN_0802FF48
FUN_0802FF48: @ 0x0802FF48
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0xa]
	cmp r0, #0
	beq _0802FF64
	ldr r1, [r2, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0802FF64
	movs r0, #2
	orrs r1, r0
	str r1, [r2, #0xc]
_0802FF64:
	pop {r0}
	bx r0

	thumb_func_start FUN_0802FF68
FUN_0802FF68: @ 0x0802FF68
	push {lr}
	adds r3, r0, #0
	ldr r2, _0802FF98 @ => 0x030020B8
	ldr r0, _0802FF9C @ => 0x030042B0
	ldrh r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x24
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	bge _0802FF86
	ldr r1, _0802FFA0 @ => 0x00007FFF
	adds r0, r0, r1
_0802FF86:
	asrs r1, r0, #0xf
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r3, #0
	bl FUN_08000E44
	pop {r0}
	bx r0
	.align 2, 0
_0802FF98: .4byte gUnk_030020B8
_0802FF9C: .4byte gUnk_030042B0
_0802FFA0: .4byte 0x00007FFF

	thumb_func_start CanyonJumping_Terminate
CanyonJumping_Terminate: @ 0x0802FFA4
	push {lr}
	movs r0, #0x3f
	movs r1, #0
	bl FUN_0804582C
	bl FUN_08009994
	bl FUN_0800B9D0
	ldr r0, _0802FFD4 @ => 0x03002C40
	bl FUN_08000BF8
	bl FUN_08046D60
	bl FUN_08039574
	bl FUN_08047464
	ldr r0, _0802FFD8 @ => 0x030042B0
	ldrb r0, [r0, #6]
	bl FUN_08047074
	pop {r0}
	bx r0
	.align 2, 0
_0802FFD4: .4byte gUnk_03002C40
_0802FFD8: .4byte gUnk_030042B0
