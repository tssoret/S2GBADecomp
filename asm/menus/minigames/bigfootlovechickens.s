.include "asm/constants.s"
.include "asm/macros.s"
.include "data/lists/sounds.inc"

.syntax unified

	thumb_func_start BigfootLoveChickens_Init
BigfootLoveChickens_Init: @ 0x0802DA8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	ldr r0, _0802DCE0 @ => 0x08066B1C
	str r0, [sp, #0x28]
	bl FUN_08042448
	add r0, sp, #0x18
	movs r1, #0
	mov r8, r1
	strh r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _0802DCE4 @ => 0x01008000
	bl SVC_CpuSet
	movs r0, #0
	bl FUN_0805273C
	movs r0, #0
	bl FUN_0800C558
	movs r0, #0x80
	lsls r0, r0, #5
	bl FUN_0800C5EC
	ldr r0, _0802DCE8 @ => 0x080669F8
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C418
	ldr r0, _0802DCEC @ => 0x080669FC
	ldr r1, [r0]
	movs r0, #2
	bl FUN_0800C418
	ldr r0, _0802DCF0 @ => 0x08066A00
	ldr r1, [r0]
	movs r0, #1
	bl FUN_0800C418
	movs r4, #0
	movs r5, #0
	movs r6, #0
	ldr r2, _0802DCF4 @ => 0x08E76720
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r6, [sp, #0x10]
	str r4, [sp, #0x14]
	add r0, sp, #0x1c
	movs r1, #3
	movs r3, #0
	bl FUN_0800D83C
	movs r7, #0
	movs r2, #0
	mov sb, r2
	ldr r2, _0802DCF8 @ => 0x08E77A10
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r7, [sp, #0xc]
	mov r0, sb
	str r0, [sp, #0x10]
	movs r5, #1
	str r5, [sp, #0x14]
	add r0, sp, #0x20
	movs r1, #2
	movs r3, #0
	bl FUN_0800D83C
	movs r1, #0
	movs r2, #0
	str r2, [sp, #0x2c]
	ldr r2, _0802DCFC @ => 0x08E78864
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	add r0, sp, #0x24
	movs r1, #1
	movs r3, #0
	bl FUN_0800D83C
	ldr r0, _0802DD00 @ => 0x08066A6C
	ldr r0, [r0, #8]
	movs r1, #0
	movs r2, #0x10
	bl FUN_0801579C
	ldr r1, _0802DD04 @ => 0x03004720
	mov sb, r1
	ldr r1, [r1, #0x10]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #5
	ldr r6, _0802DD08 @ => 0x08066A7C
	adds r0, r0, r6
	movs r1, #3
	str r1, [sp]
	movs r1, #0xc2
	movs r2, #0x74
	movs r3, #1
	bl FUN_0802D680
	ldr r7, _0802DD0C @ => 0x03002080
	str r0, [r7]
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r0, r2
	mov r1, r8
	strb r1, [r0]
	ldr r0, [r7]
	adds r2, #4
	mov sl, r2
	add r0, sl
	movs r1, #5
	strh r1, [r0]
	ldr r1, [r7]
	ldr r0, _0802DD10 @ => FUN_0802E704
	str r0, [r1, #0x50]
	mov r0, sb
	ldr r1, [r0, #0x10]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r1, r6, #0
	adds r1, #0x90
	adds r0, r0, r1
	str r4, [sp]
	movs r1, #0xc2
	movs r2, #0x74
	movs r3, #1
	bl FUN_0802D680
	str r0, [r7, #4]
	ldr r1, [r0, #0xc]
	movs r2, #2
	rsbs r2, r2, #0
	mov r8, r2
	ands r1, r2
	str r1, [r0, #0xc]
	mov r0, sb
	ldr r1, [r0, #0x10]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r1, r6, #0
	adds r1, #0x20
	adds r0, r0, r1
	str r4, [sp]
	movs r1, #0x90
	movs r2, #0x48
	movs r3, #2
	bl FUN_0802D680
	str r0, [r7, #8]
	ldr r1, [r0, #0xc]
	mov r2, r8
	ands r1, r2
	str r1, [r0, #0xc]
	adds r0, #0xa5
	ldrb r2, [r0]
	subs r5, #0xe
	adds r1, r5, #0
	ands r1, r2
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
	ldr r0, [r7, #8]
	add r0, sl
	strh r4, [r0]
	ldr r1, [r7, #8]
	ldr r0, _0802DD14 @ => FUN_0802EA4C
	str r0, [r1, #0x50]
	mov r0, sb
	ldr r1, [r0, #0x10]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r6, #0x80
	adds r0, r0, r6
	movs r1, #2
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0x2c
	movs r3, #3
	bl FUN_0802D680
	str r0, [r7, #0xc]
	ldr r1, [r0, #0xc]
	mov r2, r8
	ands r1, r2
	str r1, [r0, #0xc]
	movs r0, #4
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	add r0, sp, #0x28
	bl FUN_08050940
	str r0, [r7, #0x20]
	ldr r1, [r0, #0xc]
	movs r2, #0x80
	lsls r2, r2, #0xe
	orrs r1, r2
	str r1, [r0, #0xc]
	adds r0, #0xa9
	ldrb r1, [r0]
	ands r5, r1
	strb r5, [r0]
	ldr r0, [r7, #0x20]
	movs r1, #0xcb
	movs r2, #0xb
	bl FUN_08001734
	ldr r0, _0802DD18 @ => 0x030047F0
	ldr r1, [r0]
	adds r0, r7, #0
	adds r0, #0x28
	strb r1, [r0]
	movs r5, #0
	adds r4, r7, #0
	movs r7, #0
	ldr r0, _0802DD1C @ => 0x08066A44
	mov sl, r0
	movs r1, #0x2a
	adds r1, r1, r4
	mov sb, r1
_0802DC68:
	movs r2, #0x2e
	adds r2, r2, r4
	mov r8, r2
	adds r0, r5, r2
	strb r7, [r0]
	lsls r0, r5, #2
	adds r1, r4, #0
	adds r1, #0x10
	adds r0, r0, r1
	str r7, [r0]
	adds r6, r4, #0
	adds r6, #0x28
	ldrb r0, [r6]
	lsls r0, r0, #3
	add r0, sl
	ldr r1, [r0]
	adds r1, #1
	movs r0, #0
	bl FUN_080424F8
	mov r2, sb
	adds r1, r5, r2
	strb r0, [r1]
	adds r5, #1
	cmp r5, #3
	ble _0802DC68
	ldr r1, _0802DD04 @ => 0x03004720
	movs r0, #0
	str r0, [r1, #0x14]
	movs r0, #5
	str r0, [r1, #0x18]
	mov r2, r8
	subs r2, #0x2e
	ldr r1, _0802DD1C @ => 0x08066A44
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2, #0x24]
	mov r1, r8
	subs r1, #5
	movs r0, #0x3d
	strb r0, [r1]
	movs r0, SOUNDTRACK_BIGFOOT_LOVE_CHICKENS
	bl FUN_0804DE84
	movs r0, #0x3f
	movs r1, #0
	bl FUN_080457F4
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802DCE0: .4byte ROMREF_08066B1C
_0802DCE4: .4byte 0x01008000
_0802DCE8: .4byte ROMREF_080669F8
_0802DCEC: .4byte ROMREF_080669FC
_0802DCF0: .4byte ROMREF_08066A00
_0802DCF4: .4byte ROMREF_08E76720
_0802DCF8: .4byte ROMREF_08E77A10
_0802DCFC: .4byte ROMREF_08E78864
_0802DD00: .4byte ROMREF_08066A6C
_0802DD04: .4byte gUnk_03004720
_0802DD08: .4byte ROMREF_08066A7C
_0802DD0C: .4byte gUnk_03002080
_0802DD10: .4byte FUN_0802E704
_0802DD14: .4byte FUN_0802EA4C
_0802DD18: .4byte gUnk_030047F0
_0802DD1C: .4byte ROMREF_08066A44

	thumb_func_start BigfootLoveChickens_Handler
BigfootLoveChickens_Handler: @ 0x0802DD20
	push {r4, lr}
	bl FUN_0800B66C
	ldr r0, _0802DD3C @ => 0x03004720
	ldr r0, [r0, #0x14]
	cmp r0, #5
	bls _0802DD30
	b _0802DF8E
_0802DD30:
	lsls r0, r0, #2
	ldr r1, _0802DD40 @ =_0802DD44
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802DD3C: .4byte gUnk_03004720
_0802DD40: .4byte _0802DD44
_0802DD44: @ jump table
	.4byte _0802DD5C @ case 0
	.4byte _0802DD74 @ case 1
	.4byte _0802DDB0 @ case 2
	.4byte _0802DEBC @ case 3
	.4byte _0802DF68 @ case 4
	.4byte _0802DF10 @ case 5
_0802DD5C:
	ldr r1, _0802DD70 @ => 0x03004720
	ldr r0, [r1, #0x18]
	subs r0, #1
	str r0, [r1, #0x18]
	cmp r0, #0
	beq _0802DD6A
	b _0802DF8E
_0802DD6A:
	bl FUN_0802E14C
	b _0802DF8E
	.align 2, 0
_0802DD70: .4byte gUnk_03004720
_0802DD74:
	bl FUN_0802DFA0
	movs r3, #0
	ldr r0, _0802DDA8 @ => 0x03002080
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r1, r0, #0
	adds r1, #0x10
_0802DD84:
	ldr r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802DD90
	b _0802DF8E
_0802DD90:
	adds r1, #4
	adds r3, #1
	cmp r3, #3
	ble _0802DD84
	movs r0, #0
	bl FUN_0802EB04
	ldr r1, _0802DDAC @ => 0x03004720
	movs r0, #2
	str r0, [r1, #0x14]
	b _0802DF8E
	.align 2, 0
_0802DDA8: .4byte gUnk_03002080
_0802DDAC: .4byte gUnk_03004720
_0802DDB0:
	bl FUN_0802DFA0
	ldr r0, _0802DDD0 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802DDDC
	ldr r0, _0802DDD4 @ => 0x03004720
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	bne _0802DDD8
	movs r0, #3
	bl FUN_0802E234
	b _0802DF8E
	.align 2, 0
_0802DDD0: .4byte gUnk_030042B0
_0802DDD4: .4byte gUnk_03004720
_0802DDD8:
	subs r0, #1
	b _0802DDFA
_0802DDDC:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802DE04
	ldr r0, _0802DDF4 @ => 0x03004720
	ldr r0, [r0, #0x1c]
	cmp r0, #3
	bne _0802DDF8
	movs r0, #0
	bl FUN_0802E234
	b _0802DF8E
	.align 2, 0
_0802DDF4: .4byte gUnk_03004720
_0802DDF8:
	adds r0, #1
_0802DDFA:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0802E234
	b _0802DF8E
_0802DE04:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0802DE4C
	ldr r0, _0802DE3C @ => 0x03004720
	ldr r1, [r0, #0x1c]
	adds r4, r0, #0
	cmp r1, #3
	bhi _0802DE4C
	ldr r2, _0802DE40 @ => 0x03002080
	lsls r0, r1, #2
	adds r1, r2, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0, #0xa]
	cmp r3, #0
	bne _0802DE48
	ldr r1, _0802DE44 @ => 0x08066A44
	adds r0, r2, #0
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0]
	adds r3, r0, #1
	b _0802DE9A
	.align 2, 0
_0802DE3C: .4byte gUnk_03004720
_0802DE40: .4byte gUnk_03002080
_0802DE44: .4byte ROMREF_08066A44
_0802DE48:
	subs r3, #1
	b _0802DE9A
_0802DE4C:
	ldr r2, _0802DE88 @ => 0x030042B0
	ldrh r1, [r2, #0xc]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802DEA6
	ldr r0, _0802DE8C @ => 0x03004720
	ldr r1, [r0, #0x1c]
	adds r4, r0, #0
	cmp r1, #3
	bhi _0802DEA6
	ldr r2, _0802DE90 @ => 0x03002080
	lsls r0, r1, #2
	adds r1, r2, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0, #0xa]
	ldr r1, _0802DE94 @ => 0x08066A44
	adds r2, #0x28
	ldrb r0, [r2]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #1
	cmp r3, r0
	bne _0802DE98
	movs r3, #0
	b _0802DE9A
	.align 2, 0
_0802DE88: .4byte gUnk_030042B0
_0802DE8C: .4byte gUnk_03004720
_0802DE90: .4byte gUnk_03002080
_0802DE94: .4byte ROMREF_08066A44
_0802DE98:
	adds r3, #1
_0802DE9A:
	ldr r0, [r4, #0x1c]
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x18
	bl FUN_0802EAA0
	b _0802DF8E
_0802DEA6:
	ldrh r1, [r2, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802DF8E
	movs r0, #0x16
	bl FUN_0804DE0C
	bl FUN_0802E06C
	b _0802DF8E
_0802DEBC:
	ldr r4, _0802DF08 @ => 0x03002080
	adds r0, r4, #0
	adds r0, #0x33
	ldrb r0, [r0]
	cmp r0, #3
	bhi _0802DF8E
	bl FUN_0802DFA0
	movs r3, #0
	adds r1, r4, #0
	adds r2, r1, #0
	adds r2, #0x10
_0802DED4:
	ldr r0, [r2]
	cmp r0, #0
	bne _0802DF60
	adds r2, #4
	adds r3, #1
	cmp r3, #3
	ble _0802DED4
	adds r1, r4, #0
	adds r1, #0x34
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _0802DF8E
	ldr r1, [r4, #0x24]
	cmp r1, #0
	beq _0802DEFC
	b _0802DD6A
_0802DEFC:
	ldr r0, _0802DF0C @ => 0x03004720
	str r1, [r0, #0x14]
	bl FUN_0802DFA0
	b _0802DF8E
	.align 2, 0
_0802DF08: .4byte gUnk_03002080
_0802DF0C: .4byte gUnk_03004720
_0802DF10:
	ldr r3, _0802DF50 @ => 0x03002080
	ldr r0, [r3]
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0
	bne _0802DF8E
	ldr r2, _0802DF54 @ => 0x03004720
	movs r0, #4
	str r0, [r2, #0x14]
	movs r0, #5
	strb r0, [r1]
	ldr r0, [r3]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #2
	strh r1, [r0]
	ldr r0, [r3]
	ldr r2, [r2, #0x10]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #5
	ldr r2, _0802DF58 @ => 0x08066A7C
	adds r1, r1, r2
	ldr r2, _0802DF5C @ => 0x09FB6490
	ldr r2, [r2, #0xc]
	movs r3, #0
	bl FUN_0800192C
	b _0802DF8E
	.align 2, 0
_0802DF50: .4byte gUnk_03002080
_0802DF54: .4byte gUnk_03004720
_0802DF58: .4byte ROMREF_08066A7C
_0802DF5C: .4byte ROMREF_09FB6490
_0802DF60:
	adds r1, #0x34
	movs r0, #0
	strb r0, [r1]
	b _0802DF8E
_0802DF68:
	ldr r0, _0802DF94 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0802DF8E
	ldr r0, _0802DF98 @ => 0x03004720
	ldr r4, [r0, #4]
	ldr r0, _0802DF9C @ => 0x03002080
	ldr r0, [r0, #0x24]
	movs r1, #0x1e
	bl __udivsi3
	adds r2, r0, #0
	movs r0, #0x19
	adds r1, r4, #0
	movs r3, #0
	bl FUN_0802CEF8
_0802DF8E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802DF94: .4byte gUnk_030042B0
_0802DF98: .4byte gUnk_03004720
_0802DF9C: .4byte gUnk_03002080

	thumb_func_start FUN_0802DFA0
FUN_0802DFA0: @ 0x0802DFA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, sp, #0xc
	adds r0, r4, #0
	movs r1, #0
	movs r2, #5
	bl memset
	movs r0, #0x3a
	strb r0, [r4, #1]
	ldr r6, _0802E060 @ => 0x03002080
	ldr r0, [r6, #0x24]
	cmp r0, #0
	beq _0802DFC0
	subs r0, #1
	str r0, [r6, #0x24]
_0802DFC0:
	ldr r0, [r6, #0x24]
	movs r1, #0x1e
	bl __udivsi3
	adds r5, r0, #0
	movs r1, #0x3c
	bl __udivsi3
	adds r7, r0, #0
	adds r0, r5, #0
	movs r1, #0x3c
	bl __umodsi3
	adds r5, r0, #0
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r5, r0
	beq _0802E01C
	add r1, sp, #0xc
	adds r0, r7, #0
	adds r0, #0x30
	strb r0, [r1]
	adds r4, r1, #0
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	adds r0, #0x30
	strb r0, [r4, #2]
	add r4, sp, #0xc
	adds r0, r5, #0
	movs r1, #0xa
	bl __umodsi3
	adds r0, #0x30
	strb r0, [r4, #3]
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, [r6, #0x20]
	add r1, sp, #0xc
	bl FUN_08050BC8
_0802E01C:
	cmp r7, #0
	bne _0802E058
	cmp r5, #0
	bne _0802E058
	ldr r4, _0802E064 @ => 0x03004720
	ldr r0, [r4, #0x14]
	cmp r0, #3
	beq _0802E058
	movs r0, #0
	bl FUN_0803558C
	movs r0, #5
	str r0, [r4, #0x14]
	ldr r2, [r6, #0xc]
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
	ldr r0, _0802E068 @ => 0x00000622
	movs r3, #1
	rsbs r3, r3, #0
	str r5, [sp]
	movs r1, #2
	str r1, [sp, #4]
	str r5, [sp, #8]
	movs r1, #0x78
	movs r2, #0x50
	bl FUN_0800B984
_0802E058:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E060: .4byte gUnk_03002080
_0802E064: .4byte gUnk_03004720
_0802E068: .4byte 0x00000622

	thumb_func_start FUN_0802E06C
FUN_0802E06C: @ 0x0802E06C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _0802E134 @ => 0x03002080
	ldr r2, [r3, #0xc]
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
	ldr r1, _0802E138 @ => 0x03004720
	movs r0, #3
	str r0, [r1, #0x14]
	adds r1, r3, #0
	adds r1, #0x33
	movs r0, #0
	strb r0, [r1]
	movs r4, #0
	adds r5, r3, #0
	mov sl, r1
_0802E098:
	lsls r0, r4, #2
	movs r1, #0x10
	adds r1, r1, r5
	mov sb, r1
	add r0, sb
	ldr r3, [r0]
	adds r0, r5, #0
	adds r0, #0x2a
	adds r0, r4, r0
	ldrh r1, [r3, #0xa]
	ldrb r0, [r0]
	cmp r1, r0
	bne _0802E0BA
	mov r2, sl
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_0802E0BA:
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r1, r3, r0
	movs r0, #2
	strb r0, [r1]
	ldr r0, [r3, #0xc]
	ldr r1, _0802E13C @ => 0xFFBFFFFF
	mov r8, r1
	ands r0, r1
	str r0, [r3, #0xc]
	ldr r7, _0802E138 @ => 0x03004720
	ldr r2, [r7, #0x10]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #5
	ldr r6, _0802E140 @ => 0x08066A8C
	adds r1, r1, r6
	movs r0, #0x34
	muls r0, r2, r0
	ldr r2, _0802E144 @ => 0x09FB6468
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r3, #0
	movs r3, #0
	bl FUN_0800192C
	adds r4, #1
	cmp r4, #3
	ble _0802E098
	mov r0, sb
	subs r0, #0x10
	ldr r3, [r0]
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r1, r3, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #0xc]
	mov r1, r8
	ands r0, r1
	str r0, [r3, #0xc]
	ldr r0, [r7, #0x10]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #5
	adds r0, r6, #0
	subs r0, #0x10
	adds r1, r1, r0
	ldr r0, _0802E148 @ => 0x09FB6490
	ldr r2, [r0, #8]
	adds r0, r3, #0
	movs r3, #0
	bl FUN_0800192C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E134: .4byte gUnk_03002080
_0802E138: .4byte gUnk_03004720
_0802E13C: .4byte 0xFFBFFFFF
_0802E140: .4byte ROMREF_08066A8C
_0802E144: .4byte ROMREF_09FB6468
_0802E148: .4byte ROMREF_09FB6490

	thumb_func_start FUN_0802E14C
FUN_0802E14C: @ 0x0802E14C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r5, #0
	ldr r7, _0802E21C @ => 0x03002080
	ldr r0, _0802E220 @ => 0x08066A8C
	mov sl, r0
	movs r1, #0xa0
	lsls r1, r1, #0xe
	mov sb, r1
_0802E166:
	lsls r1, r5, #2
	adds r0, r7, #0
	adds r0, #0x10
	adds r6, r1, r0
	ldr r2, [r6]
	cmp r2, #0
	beq _0802E17C
	ldr r0, [r2, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0xc]
_0802E17C:
	ldr r0, _0802E224 @ => 0x03004720
	ldr r1, [r0, #0x10]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #5
	add r0, sl
	mov r1, sb
	asrs r2, r1, #0x10
	adds r3, r5, #0
	adds r3, #0xc
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r1, #1
	mov r8, r1
	str r1, [sp]
	subs r1, #0x11
	bl FUN_0802D680
	adds r4, r0, #0
	strh r5, [r4, #8]
	movs r0, #0xff
	strh r0, [r4, #0xa]
	ldr r0, _0802E228 @ => FUN_0802E328
	str r0, [r4, #0x50]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x19
	strh r0, [r1]
	ldr r1, _0802E224 @ => 0x03004720
	ldr r2, [r1, #0x10]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #5
	add r1, sl
	ldr r3, _0802E22C @ => 0x09FB645C
	movs r0, #0x34
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_0800192C
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0xa
	movs r2, #0
	bl FUN_08001744
	str r4, [r6]
	ldr r1, _0802E230 @ => 0x030020AE
	adds r0, r5, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	bl FUN_0802EAA0
	movs r0, #0x94
	lsls r0, r0, #0xe
	add sb, r0
	adds r5, #1
	cmp r5, #3
	ble _0802E166
	ldr r0, _0802E224 @ => 0x03004720
	mov r1, r8
	str r1, [r0, #0x14]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E21C: .4byte gUnk_03002080
_0802E220: .4byte ROMREF_08066A8C
_0802E224: .4byte gUnk_03004720
_0802E228: .4byte FUN_0802E328
_0802E22C: .4byte ROMREF_09FB645C
_0802E230: .4byte gUnk_030020AE

	thumb_func_start FUN_0802E234
FUN_0802E234: @ 0x0802E234
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r6, _0802E278 @ => 0x03004720
	ldr r0, [r6, #0x1c]
	cmp r0, #4
	bne _0802E2B4
	ldr r7, _0802E27C @ => 0x03002080
	ldr r0, [r7, #0xc]
	ldr r0, [r0, #0xc]
	movs r4, #1
	ands r0, r4
	cmp r0, #0
	bne _0802E256
	movs r0, #0xae
	bl FUN_0804DE0C
_0802E256:
	str r5, [r6, #0x1c]
	ldr r1, [r7, #0xc]
	ldr r0, [r1, #0xc]
	orrs r0, r4
	str r0, [r1, #0xc]
	movs r3, #0x78
	cmp r5, #3
	bhi _0802E280
	movs r3, #0x20
	lsls r0, r5, #3
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r5
	adds r2, r0, #0
	adds r2, #0x2c
	b _0802E282
	.align 2, 0
_0802E278: .4byte gUnk_03004720
_0802E27C: .4byte gUnk_03002080
_0802E280:
	movs r2, #0x30
_0802E282:
	adds r0, r1, #0
	adds r1, r3, #0
	bl FUN_08001734
	ldr r0, _0802E2A4 @ => 0x03002080
	ldr r0, [r0, #0xc]
	ldr r1, _0802E2A8 @ => 0x03004720
	ldr r2, [r1, #0x10]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #5
	ldr r2, _0802E2AC @ => 0x08066AFC
	adds r1, r1, r2
	ldr r2, _0802E2B0 @ => 0x09FB64AC
	ldr r2, [r2]
	b _0802E2D6
	.align 2, 0
_0802E2A4: .4byte gUnk_03002080
_0802E2A8: .4byte gUnk_03004720
_0802E2AC: .4byte ROMREF_08066AFC
_0802E2B0: .4byte ROMREF_09FB64AC
_0802E2B4:
	cmp r5, #4
	bne _0802E2EC
	ldr r4, _0802E2E0 @ => 0x03002080
	ldr r0, [r4, #0xc]
	movs r1, #0x78
	movs r2, #0x30
	bl FUN_08001734
	ldr r0, [r4, #0xc]
	ldr r2, [r6, #0x10]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #5
	ldr r2, _0802E2E4 @ => 0x08066AFC
	adds r1, r1, r2
	ldr r2, _0802E2E8 @ => 0x09FB64AC
	ldr r2, [r2, #4]
_0802E2D6:
	movs r3, #0
	bl FUN_0800192C
	b _0802E31A
	.align 2, 0
_0802E2E0: .4byte gUnk_03002080
_0802E2E4: .4byte ROMREF_08066AFC
_0802E2E8: .4byte ROMREF_09FB64AC
_0802E2EC:
	movs r0, #0xb2
	bl FUN_0804DE0C
	ldr r0, _0802E30C @ => 0x03002080
	ldr r3, [r0, #0xc]
	movs r1, #0x78
	cmp r5, #3
	bhi _0802E310
	movs r1, #0x20
	lsls r0, r5, #3
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r5
	adds r2, r0, #0
	adds r2, #0x2c
	b _0802E312
	.align 2, 0
_0802E30C: .4byte gUnk_03002080
_0802E310:
	movs r2, #0x30
_0802E312:
	adds r0, r3, #0
	movs r3, #3
	bl FUN_08001810
_0802E31A:
	ldr r0, _0802E324 @ => 0x03004720
	str r5, [r0, #0x1c]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E324: .4byte gUnk_03004720

	thumb_func_start FUN_0802E328
FUN_0802E328: @ 0x0802E328
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #7
	bls _0802E33A
	b _0802E6F6
_0802E33A:
	lsls r0, r0, #2
	ldr r1, _0802E344 @ =_0802E348
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802E344: .4byte _0802E348
_0802E348: @ jump table
	.4byte _0802E368 @ case 0
	.4byte _0802E3E4 @ case 1
	.4byte _0802E4C0 @ case 2
	.4byte _0802E528 @ case 3
	.4byte _0802E5DC @ case 4
	.4byte _0802E644 @ case 5
	.4byte _0802E698 @ case 6
	.4byte _0802E6D8 @ case 7
_0802E368:
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _0802E3B8
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r5, r2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0802E384
	b _0802E6F6
_0802E384:
	str r0, [r5, #0x28]
	ldr r0, _0802E3AC @ => 0x03004720
	ldr r3, [r0, #0x10]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #5
	ldr r0, _0802E3B0 @ => 0x08066A8C
	adds r1, r1, r0
	ldr r2, _0802E3B4 @ => 0x09FB645C
	movs r0, #0x34
	muls r0, r3, r0
	adds r2, #4
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_0800192C
	b _0802E6F6
	.align 2, 0
_0802E3AC: .4byte gUnk_03004720
_0802E3B0: .4byte ROMREF_08066A8C
_0802E3B4: .4byte ROMREF_09FB645C
_0802E3B8:
	ldr r1, [r5, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0802E3C6
	b _0802E6F6
_0802E3C6:
	ldr r0, _0802E3E0 @ => 0xFFBFFFFF
	ands r1, r0
	str r1, [r5, #0xc]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #1
	strb r1, [r0]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r5, r2
	strh r1, [r0]
	b _0802E6F6
	.align 2, 0
_0802E3E0: .4byte 0xFFBFFFFF
_0802E3E4:
	movs r0, #0x90
	lsls r0, r0, #1
	adds r6, r5, r0
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802E3F8
	b _0802E6F6
_0802E3F8:
	movs r0, #0
	movs r1, #0x64
	bl FUN_080424F8
	cmp r0, #0x1d
	bgt _0802E440
	ldr r0, _0802E434 @ => 0x03004720
	ldr r3, [r0, #0x10]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #5
	ldr r0, _0802E438 @ => 0x08066A8C
	adds r1, r1, r0
	ldr r2, _0802E43C @ => 0x09FB645C
	movs r0, #0x34
	muls r0, r3, r0
	adds r2, #8
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_0800192C
	movs r0, #0x1e
	movs r1, #0x5a
	bl FUN_080424F8
	strh r0, [r6]
	b _0802E6F6
	.align 2, 0
_0802E434: .4byte gUnk_03004720
_0802E438: .4byte ROMREF_08066A8C
_0802E43C: .4byte ROMREF_09FB645C
_0802E440:
	cmp r0, #0x59
	bgt _0802E48C
	ldr r0, _0802E480 @ => 0x03004720
	ldr r3, [r0, #0x10]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #5
	ldr r0, _0802E484 @ => 0x08066A8C
	adds r1, r1, r0
	ldr r4, _0802E488 @ => 0x09FB645C
	ldrh r0, [r5, #0xa]
	adds r0, #5
	lsls r0, r0, #2
	movs r2, #0x34
	muls r2, r3, r2
	adds r0, r0, r2
	adds r0, r0, r4
	ldr r2, [r0]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_0800192C
	movs r0, #1
	movs r1, #4
	bl FUN_080424F8
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #1
	strh r1, [r6]
	b _0802E6F6
	.align 2, 0
_0802E480: .4byte gUnk_03004720
_0802E484: .4byte ROMREF_08066A8C
_0802E488: .4byte ROMREF_09FB645C
_0802E48C:
	ldr r0, _0802E4B4 @ => 0x03004720
	ldr r3, [r0, #0x10]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #5
	ldr r0, _0802E4B8 @ => 0x08066A8C
	adds r1, r1, r0
	ldr r2, _0802E4BC @ => 0x09FB645C
	movs r0, #0x34
	muls r0, r3, r0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_0800192C
	movs r0, #0x3c
	strh r0, [r6]
	b _0802E6F6
	.align 2, 0
_0802E4B4: .4byte gUnk_03004720
_0802E4B8: .4byte ROMREF_08066A8C
_0802E4BC: .4byte ROMREF_09FB645C
_0802E4C0:
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0802E4CE
	b _0802E6F6
_0802E4CE:
	movs r1, #0xc0
	lsls r1, r1, #9
	adds r0, r5, #0
	movs r2, #0
	bl FUN_08001744
	ldr r0, _0802E51C @ => 0x03004720
	ldr r2, [r0, #0x10]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #5
	ldr r0, _0802E520 @ => 0x08066A8C
	adds r1, r1, r0
	ldr r3, _0802E524 @ => 0x09FB645C
	movs r0, #0x34
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_0800192C
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r0, #3
	strb r0, [r1]
	ldrh r1, [r5, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x10
	adds r2, #4
	adds r1, r5, r2
	strh r0, [r1]
	movs r0, #0x10
	bl FUN_0804DE0C
	b _0802E6F6
	.align 2, 0
_0802E51C: .4byte gUnk_03004720
_0802E520: .4byte ROMREF_08066A8C
_0802E524: .4byte ROMREF_09FB645C
_0802E528:
	movs r0, #0x90
	lsls r0, r0, #1
	adds r4, r5, r0
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0802E542
	movs r0, #0x10
	bl FUN_0804DE0C
_0802E542:
	ldrh r0, [r4]
	cmp r0, #0
	beq _0802E54A
	b _0802E6F6
_0802E54A:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl FUN_08001744
	ldr r0, _0802E590 @ => 0x03002080
	adds r0, #0x33
	ldrb r6, [r0]
	cmp r6, #4
	bne _0802E5A0
	ldr r0, _0802E594 @ => 0x03004720
	ldr r3, [r0, #0x10]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #5
	ldr r0, _0802E598 @ => 0x08066A8C
	adds r1, r1, r0
	ldr r2, _0802E59C @ => 0x09FB645C
	movs r0, #0x34
	muls r0, r3, r0
	adds r2, #0x24
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_0800192C
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r0, #5
	strb r0, [r1]
	strh r6, [r4]
	b _0802E6F6
	.align 2, 0
_0802E590: .4byte gUnk_03002080
_0802E594: .4byte gUnk_03004720
_0802E598: .4byte ROMREF_08066A8C
_0802E59C: .4byte ROMREF_09FB645C
_0802E5A0:
	ldr r0, _0802E5D0 @ => 0x03004720
	ldr r3, [r0, #0x10]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #5
	ldr r0, _0802E5D4 @ => 0x08066A8C
	adds r1, r1, r0
	ldr r2, _0802E5D8 @ => 0x09FB645C
	movs r0, #0x34
	muls r0, r3, r0
	adds r2, #0x30
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_0800192C
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #4
	strb r0, [r1]
	strh r0, [r4]
	b _0802E6F6
	.align 2, 0
_0802E5D0: .4byte gUnk_03004720
_0802E5D4: .4byte ROMREF_08066A8C
_0802E5D8: .4byte ROMREF_09FB645C
_0802E5DC:
	ldr r3, [r5, #0xc]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r3, r0
	cmp r3, #0
	bne _0802E608
	ldr r2, _0802E604 @ => 0x03002080
	adds r0, r2, #0
	adds r0, #0x2e
	ldrh r1, [r5, #8]
	adds r0, r0, r1
	ldrh r1, [r5, #0xa]
	strb r1, [r0]
	ldrh r0, [r5, #8]
	lsls r0, r0, #2
	adds r2, #0x10
	adds r0, r0, r2
	str r3, [r0]
	b _0802E6EE
	.align 2, 0
_0802E604: .4byte gUnk_03002080
_0802E608:
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r5, r2
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802E6F6
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802E6F6
	ldr r1, _0802E634 @ => 0x00023333
	ldr r2, _0802E638 @ => 0xFFFC0000
	adds r0, r5, #0
	bl FUN_08001744
	ldr r0, _0802E63C @ => 0xFFFFF334
	str r0, [r5, #0x30]
	ldr r0, _0802E640 @ => 0x00004CCC
	str r0, [r5, #0x34]
	b _0802E6F6
	.align 2, 0
_0802E634: .4byte 0x00023333
_0802E638: .4byte 0xFFFC0000
_0802E63C: .4byte 0xFFFFF334
_0802E640: .4byte 0x00004CCC
_0802E644:
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r5, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802E6F6
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r0, #6
	strb r0, [r1]
	ldr r4, _0802E694 @ => 0x08066A04
	ldrh r0, [r5, #8]
	lsls r0, r0, #4
	adds r1, r0, r4
	ldr r1, [r1]
	adds r2, r4, #4
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r5, #0
	bl FUN_08001744
	ldrh r0, [r5, #8]
	lsls r0, r0, #4
	adds r1, r4, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r5, #0x30]
	ldrh r0, [r5, #8]
	lsls r0, r0, #4
	adds r4, #0xc
	adds r0, r0, r4
	ldr r0, [r0]
	str r0, [r5, #0x34]
	b _0802E6F6
	.align 2, 0
_0802E694: .4byte ROMREF_08066A04
_0802E698:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	ble _0802E6F6
	ldr r0, _0802E6CC @ => 0x03004720
	ldr r3, [r0, #0x10]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #5
	ldr r0, _0802E6D0 @ => 0x08066A8C
	adds r1, r1, r0
	ldr r2, _0802E6D4 @ => 0x09FB645C
	movs r0, #0x34
	muls r0, r3, r0
	adds r2, #0x28
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_0800192C
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #7
	strb r0, [r1]
	b _0802E6F6
	.align 2, 0
_0802E6CC: .4byte gUnk_03004720
_0802E6D0: .4byte ROMREF_08066A8C
_0802E6D4: .4byte ROMREF_09FB645C
_0802E6D8:
	ldr r1, [r5, #0x1c]
	ldr r0, _0802E6FC @ => 0x005FFFFF
	cmp r1, r0
	ble _0802E6F6
	ldr r1, _0802E700 @ => 0x03002080
	ldrh r0, [r5, #8]
	lsls r0, r0, #2
	adds r1, #0x10
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
_0802E6EE:
	ldr r0, [r5, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0xc]
_0802E6F6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802E6FC: .4byte 0x005FFFFF
_0802E700: .4byte gUnk_03002080

	thumb_func_start FUN_0802E704
FUN_0802E704: @ 0x0802E704
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #5
	bls _0802E718
	b _0802EA20
_0802E718:
	lsls r0, r0, #2
	ldr r1, _0802E724 @ =_0802E728
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802E724: .4byte _0802E728
_0802E728: @ jump table
	.4byte _0802E740 @ case 0
	.4byte _0802E7E0 @ case 1
	.4byte _0802E824 @ case 2
	.4byte _0802E88C @ case 3
	.4byte _0802E958 @ case 4
	.4byte _0802E9C4 @ case 5
_0802E740:
	movs r0, #0x90
	lsls r0, r0, #1
	adds r4, r6, r0
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802E754
	b _0802EA20
_0802E754:
	movs r0, #0
	movs r1, #0x64
	bl FUN_080424F8
	cmp r0, #0x4a
	ble _0802E774
	ldr r0, _0802E7A4 @ => 0x03002080
	adds r5, r0, #0
	adds r5, #0x32
	ldrb r0, [r5]
	cmp r0, #0
	bne _0802E774
	ldr r1, _0802E7A8 @ => 0x03004720
	ldr r0, [r1, #0x14]
	cmp r0, #4
	bne _0802E7B4
_0802E774:
	ldr r0, _0802E7A8 @ => 0x03004720
	ldr r0, [r0, #0x10]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #5
	ldr r0, _0802E7AC @ => 0x08066A7C
	adds r1, r1, r0
	ldr r0, _0802E7B0 @ => 0x09FB6490
	ldr r2, [r0]
	adds r0, r6, #0
	movs r3, #0
	bl FUN_0800192C
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r2, #0
	movs r0, #0x1e
	strh r0, [r1]
	ldr r0, _0802E7A4 @ => 0x03002080
	adds r0, #0x32
	strb r2, [r0]
	b _0802EA20
	.align 2, 0
_0802E7A4: .4byte gUnk_03002080
_0802E7A8: .4byte gUnk_03004720
_0802E7AC: .4byte ROMREF_08066A7C
_0802E7B0: .4byte ROMREF_09FB6490
_0802E7B4:
	ldr r0, [r1, #0x10]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #5
	ldr r0, _0802E7D8 @ => 0x08066A7C
	adds r1, r1, r0
	ldr r0, _0802E7DC @ => 0x09FB6490
	ldr r2, [r0, #4]
	adds r0, r6, #0
	movs r3, #0
	bl FUN_0800192C
	movs r0, #0x37
	strh r0, [r4]
	movs r0, #1
	strb r0, [r5]
	b _0802EA20
	.align 2, 0
_0802E7D8: .4byte ROMREF_08066A7C
_0802E7DC: .4byte ROMREF_09FB6490
_0802E7E0:
	ldr r1, [r6, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0802E7EE
	b _0802EA20
_0802E7EE:
	ldr r0, _0802E814 @ => 0xFFBFFFFF
	ands r1, r0
	str r1, [r6, #0xc]
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0802E818 @ => 0x03004720
	ldr r0, [r0, #0x10]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #5
	ldr r0, _0802E81C @ => 0x08066A7C
	adds r1, r1, r0
	ldr r0, _0802E820 @ => 0x09FB6490
	ldr r2, [r0, #0x18]
	b _0802E9AE
	.align 2, 0
_0802E814: .4byte 0xFFBFFFFF
_0802E818: .4byte gUnk_03004720
_0802E81C: .4byte ROMREF_08066A7C
_0802E820: .4byte ROMREF_09FB6490
_0802E824:
	ldr r1, [r6, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0802E832
	b _0802EA20
_0802E832:
	ldr r0, _0802E878 @ => 0xFFBFFFFF
	ands r1, r0
	str r1, [r6, #0xc]
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #3
	strb r0, [r1]
	ldr r0, _0802E87C @ => 0x03004720
	ldr r0, [r0, #0x10]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #5
	ldr r0, _0802E880 @ => 0x08066A7C
	adds r1, r1, r0
	ldr r0, _0802E884 @ => 0x09FB6490
	ldr r2, [r0, #0x14]
	adds r0, r6, #0
	movs r3, #0
	bl FUN_0800192C
	ldr r1, _0802E888 @ => 0x03002080
	adds r0, r1, #0
	adds r0, #0x33
	ldrb r0, [r0]
	cmp r0, #4
	beq _0802E86A
	b _0802EA20
_0802E86A:
	ldr r0, [r1, #4]
	ldr r1, [r0, #0xc]
	movs r2, #1
	orrs r1, r2
	str r1, [r0, #0xc]
	b _0802EA20
	.align 2, 0
_0802E878: .4byte 0xFFBFFFFF
_0802E87C: .4byte gUnk_03004720
_0802E880: .4byte ROMREF_08066A7C
_0802E884: .4byte ROMREF_09FB6490
_0802E888: .4byte gUnk_03002080
_0802E88C:
	movs r2, #0
	ldr r5, _0802E914 @ => 0x03002080
	adds r1, r5, #0
	adds r1, #0x10
_0802E894:
	ldr r0, [r1]
	cmp r0, #0
	beq _0802E89C
	b _0802EA20
_0802E89C:
	adds r1, #4
	adds r2, #1
	cmp r2, #3
	ble _0802E894
	ldr r2, [r5, #4]
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
	adds r7, r5, #0
	adds r7, #0x33
	ldrb r4, [r7]
	ldr r0, [r5, #8]
	movs r1, #0x90
	movs r2, #0x48
	bl FUN_08001734
	ldr r0, [r5, #8]
	movs r1, #0
	ldr r2, _0802E918 @ => 0xFFFF6667
	bl FUN_08001744
	ldr r0, [r5, #8]
	adds r1, r4, #0
	bl FUN_08000E44
	ldr r2, [r5, #8]
	ldr r0, [r2, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0xc]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r0, #0x2d
	strh r0, [r2]
	movs r0, #0
	movs r1, #8
	bl FUN_08045594
	movs r0, #0
	movs r1, #0x10
	bl FUN_080455AC
	ldrb r2, [r7]
	cmp r2, #4
	bne _0802E924
	ldr r0, [r6, #0xc]
	ldr r1, _0802E91C @ => 0xFFBFFFFF
	ands r0, r1
	str r0, [r6, #0xc]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r6, r1
	strb r2, [r0]
	ldr r0, _0802E920 @ => 0x03004720
	ldr r0, [r0, #0x10]
	b _0802E9A0
	.align 2, 0
_0802E914: .4byte gUnk_03002080
_0802E918: .4byte 0xFFFF6667
_0802E91C: .4byte 0xFFBFFFFF
_0802E920: .4byte gUnk_03004720
_0802E924:
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #5
	strb r0, [r1]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #2
	strh r0, [r1]
	ldr r0, _0802E94C @ => 0x03004720
	ldr r0, [r0, #0x10]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #5
	ldr r0, _0802E950 @ => 0x08066A7C
	adds r1, r1, r0
	ldr r0, _0802E954 @ => 0x09FB6490
	ldr r2, [r0, #0xc]
	b _0802E9AE
	.align 2, 0
_0802E94C: .4byte gUnk_03004720
_0802E950: .4byte ROMREF_08066A7C
_0802E954: .4byte ROMREF_09FB6490
_0802E958:
	ldr r1, [r6, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0802EA20
	ldr r4, _0802E990 @ => 0x03004720
	ldr r0, [r4, #0x14]
	cmp r0, #4
	beq _0802E998
	movs r0, #1
	bl FUN_0803558C
	movs r0, #4
	str r0, [r4, #0x14]
	ldr r0, _0802E994 @ => 0x00000623
	movs r3, #1
	rsbs r3, r3, #0
	movs r2, #0
	str r2, [sp]
	movs r1, #2
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r1, #0x78
	movs r2, #0x50
	bl FUN_0800B984
	b _0802EA20
	.align 2, 0
_0802E990: .4byte gUnk_03004720
_0802E994: .4byte 0x00000623
_0802E998:
	ldr r0, _0802E9B8 @ => 0xFFBFFFFF
	ands r1, r0
	str r1, [r6, #0xc]
	ldr r0, [r4, #0x10]
_0802E9A0:
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #5
	ldr r0, _0802E9BC @ => 0x08066A7C
	adds r1, r1, r0
	ldr r0, _0802E9C0 @ => 0x09FB6490
	ldr r2, [r0, #0x10]
_0802E9AE:
	adds r0, r6, #0
	movs r3, #0
	bl FUN_0800192C
	b _0802EA20
	.align 2, 0
_0802E9B8: .4byte 0xFFBFFFFF
_0802E9BC: .4byte ROMREF_08066A7C
_0802E9C0: .4byte ROMREF_09FB6490
_0802E9C4:
	ldr r1, [r6, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0802EA20
	ldr r0, _0802EA00 @ => 0xFFBFFFFF
	ands r1, r0
	str r1, [r6, #0xc]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r6, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	ldr r2, _0802EA04 @ => 0x03004720
	cmp r0, #0
	bne _0802EA08
	ldr r0, [r2, #0x14]
	cmp r0, #4
	beq _0802EA08
	movs r0, #1
	strh r0, [r1]
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #0
	strb r0, [r1]
	b _0802EA20
	.align 2, 0
_0802EA00: .4byte 0xFFBFFFFF
_0802EA04: .4byte gUnk_03004720
_0802EA08:
	ldr r0, [r2, #0x10]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #5
	ldr r0, _0802EA28 @ => 0x08066A7C
	adds r1, r1, r0
	ldr r0, _0802EA2C @ => 0x09FB6490
	ldr r2, [r0, #0xc]
	adds r0, r6, #0
	movs r3, #0
	bl FUN_0800192C
_0802EA20:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802EA28: .4byte ROMREF_08066A7C
_0802EA2C: .4byte ROMREF_09FB6490

	thumb_func_start BigfootLoveChickens_Terminate
BigfootLoveChickens_Terminate: @ 0x0802EA30
	push {lr}
	movs r0, #0x3f
	movs r1, #0
	bl FUN_0804582C
	bl FUN_0800B9D0
	ldr r0, _0802EA48 @ => 0x03002C40
	bl FUN_08000BF8
	pop {r0}
	bx r0
	.align 2, 0
_0802EA48: .4byte gUnk_03002C40
