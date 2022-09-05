.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start InventoryMenu_Init
InventoryMenu_Init: @ 0x080266EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x20
	ldr r0, _0802670C @ => 0x03004720
	ldr r1, [r0, #4]
	adds r2, r0, #0
	cmp r1, #1
	bne _08026714
	str r1, [r2, #0x14]
	ldr r1, _08026710 @ => 0x0300203C
	ldr r0, [r2, #8]
	str r0, [r1]
	b _08026724
	.align 2, 0
_0802670C: .4byte gUnk_03004720
_08026710: .4byte gUnk_0300203C
_08026714:
	cmp r1, #2
	beq _08026724
	cmp r1, #3
	bne _08026720
	str r1, [r2, #0x14]
	b _08026724
_08026720:
	movs r0, #0
	str r0, [r2, #0x14]
_08026724:
	movs r0, #4
	str r0, [r2, #8]
	movs r0, #7
	str r0, [r2, #0xc]
	movs r0, #1
	mov sb, r0
	str r0, [r2, #0x10]
	movs r0, #0
	bl FUN_0800C558
	movs r0, #0x80
	lsls r0, r0, #5
	bl FUN_0800C5EC
	movs r0, #0
	bl FUN_0805273C
	ldr r0, _08026828 @ => 0x08062DE4
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C418
	ldr r0, _0802682C @ => 0x08062DF0
	ldr r1, [r0]
	movs r0, #2
	bl FUN_0800C418
	ldr r0, _08026830 @ => 0x08062DEC
	ldr r4, [r0]
	movs r0, #1
	adds r1, r4, #0
	bl FUN_0800C418
	ldr r0, _08026834 @ => 0x08062DE8
	ldr r1, [r0]
	movs r0, #0
	bl FUN_0800C418
	movs r0, #1
	movs r1, #0
	bl FUN_0800C61C
	movs r0, #0
	movs r1, #0
	bl FUN_0800C61C
	adds r0, r4, #0
	bl FUN_0801FE58
	movs r0, #3
	movs r1, #1
	bl FUN_08048284
	movs r0, #0
	movs r7, #0
	ldr r4, _08026838 @ => 0x00FFFFFF
	movs r5, #0
	ldr r2, _0802683C @ => 0x08CDF790
	ldr r3, _08026840 @ => 0x00000191
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	str r5, [sp, #0x10]
	mov r0, sb
	str r0, [sp, #0x14]
	add r0, sp, #0x18
	movs r1, #2
	bl FUN_0800D83C
	ldr r0, _08026844 @ => 0x0000029E
	bl FUN_080213F8
	cmp r0, #1
	bne _080267EC
	movs r1, #0xb
	ldr r0, _08026848 @ => 0xFFFF0000
	ands r6, r0
	orrs r6, r1
	movs r1, #0xa0
	lsls r1, r1, #0xb
	ldr r0, _0802684C @ => 0x0000FFFF
	ands r6, r0
	orrs r6, r1
	ldr r2, _08026850 @ => 0x08CE041C
	movs r3, #0xb9
	lsls r3, r3, #2
	movs r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0xe0
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r0, #0x21
	str r0, [sp, #0x14]
	add r0, sp, #0x1c
	movs r1, #2
	bl FUN_0800D83C
_080267EC:
	movs r0, #1
	movs r1, #6
	movs r2, #6
	movs r3, #6
	bl FUN_08021428
	movs r4, #0
_080267FA:
	adds r0, r4, #0
	bl FUN_080273F4
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #6
	bls _080267FA
	bl FUN_08026C1C
	bl FUN_0802787C
	ldr r0, _08026854 @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08026858
	movs r0, #0x3f
	bl FUN_08045864
	b _08026860
	.align 2, 0
_08026828: .4byte ROMREF_08062DE4
_0802682C: .4byte ROMREF_08062DF0
_08026830: .4byte ROMREF_08062DEC
_08026834: .4byte ROMREF_08062DE8
_08026838: .4byte 0x00FFFFFF
_0802683C: .4byte ROMREF_08CDF790
_08026840: .4byte 0x00000191
_08026844: .4byte 0x0000029E
_08026848: .4byte 0xFFFF0000
_0802684C: .4byte 0x0000FFFF
_08026850: .4byte ROMREF_08CE041C
_08026854: .4byte gUnk_03004374
_08026858:
	movs r0, #0x3f
	movs r1, #0
	bl FUN_080457F4
_08026860:
	add sp, #0x20
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start InventoryMenu_Handler
InventoryMenu_Handler: @ 0x08026870
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080268A4 @ => 0x03004200
	ldr r0, [r0]
	mov r8, r0
	ldr r0, _080268A8 @ => 0x03006440
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080268B4
	ldr r0, _080268AC @ => 0x030043A0
	ldr r2, [r0]
	movs r0, #1
	movs r1, #0
	bl FUN_0802CED4
	ldr r1, _080268B0 @ => 0x030042B0
	movs r2, #0
	movs r0, #1
	strh r0, [r1, #4]
	strh r2, [r1, #6]
	b _08026C0C
	.align 2, 0
_080268A4: .4byte gUnk_03004200
_080268A8: .4byte gUnk_03006440
_080268AC: .4byte gUnk_030043A0
_080268B0: .4byte gUnk_030042B0
_080268B4:
	ldr r0, _080268E4 @ => 0x03004720
	ldr r1, [r0, #0x14]
	adds r3, r0, #0
	cmp r1, #5
	beq _080268C8
	cmp r1, #5
	blo _080268C8
	cmp r1, #7
	bhi _080268C8
	b _08026C0C
_080268C8:
	ldr r2, _080268E8 @ => 0x030042B0
	ldrh r1, [r2, #0xc]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _080269B2
	ldr r0, [r3, #0x14]
	cmp r0, #8
	bhi _080269B2
	lsls r0, r0, #2
	ldr r1, _080268EC @ =_080268F0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080268E4: .4byte gUnk_03004720
_080268E8: .4byte gUnk_030042B0
_080268EC: .4byte _080268F0
_080268F0: @ jump table
	.4byte _08026914 @ case 0
	.4byte _08026914 @ case 1
	.4byte _08026968 @ case 2
	.4byte _08026914 @ case 3
	.4byte _08026914 @ case 4
	.4byte _080269B2 @ case 5
	.4byte _080269B2 @ case 6
	.4byte _080269B2 @ case 7
	.4byte _080269B2 @ case 8
_08026914:
	ldr r0, _08026924 @ => 0x03004720
	ldr r0, [r0, #8]
	cmp r0, #4
	bls _08026928
	bl FUN_08027684
	b _0802693A
	.align 2, 0
_08026924: .4byte gUnk_03004720
_08026928:
	cmp r0, #3
	bhi _08026932
	bl FUN_080275DC
	b _0802693A
_08026932:
	cmp r0, #4
	bne _0802693A
	bl FUN_080279C0
_0802693A:
	ldr r1, _08026960 @ => 0x03004790
	ldr r2, [r1]
	ldr r0, _08026964 @ => 0x03004720
	ldr r0, [r0, #8]
	adds r0, #0x3c
	strh r0, [r2, #8]
	ldr r0, [r1]
	movs r1, #0x3a
	bl FUN_08001F84
	bl FUN_0802781C
	bl FUN_0802787C
	movs r0, #0xb2
	bl FUN_0804DE0C
	b _080269B2
	.align 2, 0
_08026960: .4byte gUnk_03004790
_08026964: .4byte gUnk_03004720
_08026968:
	ldrh r2, [r2, #0xc]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _08026994
	ldr r2, _0802698C @ => 0x03004720
	ldr r0, _08026990 @ => 0x03002038
	ldr r1, [r2, #0xc]
	ldrb r0, [r0]
	cmp r1, r0
	bhs _080269AE
	adds r0, r1, #1
	str r0, [r2, #0xc]
	movs r0, #0xbe
	bl FUN_0804DE0C
	b _080269AE
	.align 2, 0
_0802698C: .4byte gUnk_03004720
_08026990: .4byte gUnk_03002038
_08026994:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _080269AE
	ldr r1, _080269C8 @ => 0x03004720
	ldr r0, [r1, #0xc]
	cmp r0, #1
	bls _080269AE
	subs r0, #1
	str r0, [r1, #0xc]
	movs r0, #0xbe
	bl FUN_0804DE0C
_080269AE:
	bl FUN_080278E0
_080269B2:
	ldr r0, _080269C8 @ => 0x03004720
	ldr r1, [r0, #0x14]
	adds r3, r0, #0
	cmp r1, #8
	bls _080269BE
	b _08026C0C
_080269BE:
	lsls r0, r1, #2
	ldr r1, _080269CC @ =_080269D0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080269C8: .4byte gUnk_03004720
_080269CC: .4byte _080269D0
_080269D0: @ jump table
	.4byte _080269F4 @ case 0
	.4byte _08026AE8 @ case 1
	.4byte _08026B74 @ case 2
	.4byte _08026B24 @ case 3
	.4byte _08026C0C @ case 4
	.4byte _08026C0C @ case 5
	.4byte _08026C0C @ case 6
	.4byte _08026C0C @ case 7
	.4byte _08026BCC @ case 8
_080269F4:
	ldr r7, _08026A10 @ => 0x030042B0
	ldrh r1, [r7, #0xc]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08026A1C
	ldr r0, _08026A14 @ => 0x03003DF0
	ldr r1, _08026A18 @ => 0x000003F7
	adds r0, r0, r1
	movs r1, #0x23
	strb r1, [r0]
	movs r0, #0x23
	b _08026A32
	.align 2, 0
_08026A10: .4byte gUnk_030042B0
_08026A14: .4byte gUnk_03003DF0
_08026A18: .4byte 0x000003F7
_08026A1C:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08026A48
	ldr r0, _08026A40 @ => 0x03003DF0
	ldr r1, _08026A44 @ => 0x000003F7
	adds r0, r0, r1
	movs r1, #0xc
	strb r1, [r0]
	movs r0, #0xc
_08026A32:
	bl FUN_0802CEC4
	movs r0, #0xc2
	bl FUN_0804DE0C
	b _08026C0C
	.align 2, 0
_08026A40: .4byte gUnk_03003DF0
_08026A44: .4byte 0x000003F7
_08026A48:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08026AE4
	ldr r6, _08026A80 @ => 0x03003DF0
	ldr r0, [r6, #0x68]
	ldr r2, [r3, #8]
	ldr r1, [r0, #4]
	lsls r0, r2, #2
	adds r0, r0, r1
	subs r0, #0x14
	ldrh r4, [r0]
	ldrb r5, [r0, #3]
	cmp r2, #4
	bls _08026A96
	cmp r4, #0xe6
	beq _08026ADC
	adds r0, r4, #0
	bl FUN_080278B4
	cmp r0, #0
	beq _08026A84
	mov r0, r8
	adds r1, r4, #0
	bl FUN_08026E24
	b _08026C0C
	.align 2, 0
_08026A80: .4byte gUnk_03003DF0
_08026A84:
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	bl FUN_08026EC8
	cmp r0, #0
	beq _08026A94
	b _08026C0C
_08026A94:
	b _08026ADC
_08026A96:
	cmp r2, #4
	beq _08026A9C
	b _08026C0C
_08026A9C:
	ldr r0, _08026AD0 @ => 0x0000029E
	bl FUN_080213F8
	cmp r0, #0
	beq _08026ADC
	bl FUN_08023680
	cmp r0, #1
	bne _08026ADC
	ldr r1, _08026AD4 @ => 0x00000404
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _08026ADC
	ldr r2, _08026AD8 @ => 0x03004200
	ldrh r1, [r7, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x38
	bl FUN_08001FB0
	b _08026B38
	.align 2, 0
_08026AD0: .4byte 0x0000029E
_08026AD4: .4byte 0x00000404
_08026AD8: .4byte gUnk_03004200
_08026ADC:
	movs r0, #0xbe
	bl FUN_0804DE0C
	b _08026C0C
_08026AE4:
	movs r0, #0xa
	b _08026B02
_08026AE8:
	ldr r0, _08026AFC @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08026B00
	bl FUN_08026F84
	b _08026C0C
	.align 2, 0
_08026AFC: .4byte gUnk_030042B0
_08026B00:
	movs r0, #2
_08026B02:
	ands r0, r1
	cmp r0, #0
	bne _08026B0A
	b _08026C0C
_08026B0A:
	ldr r0, _08026B20 @ => 0x030043A0
	ldr r2, [r0]
	movs r0, #1
	movs r1, #2
	bl FUN_0802CED4
	movs r0, #0xb1
	bl FUN_0804DE0C
	b _08026C0C
	.align 2, 0
_08026B20: .4byte gUnk_030043A0
_08026B24:
	ldr r0, _08026B48 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08026B5E
	bl FUN_08027964
	cmp r0, #1
	bne _08026B50
_08026B38:
	ldr r0, _08026B4C @ => 0x030043A0
	ldr r2, [r0]
	movs r0, #1
	movs r1, #2
	bl FUN_0802CED4
	b _08026C0C
	.align 2, 0
_08026B48: .4byte gUnk_030042B0
_08026B4C: .4byte gUnk_030043A0
_08026B50:
	movs r0, #0xbe
	bl FUN_0804DE0C
	movs r0, #7
	bl FUN_080271B0
	b _08026C0C
_08026B5E:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08026C0C
	movs r0, #0xbe
	bl FUN_0804DE0C
	movs r0, #8
	bl FUN_080271B0
	b _08026C0C
_08026B74:
	ldr r0, _08026B88 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08026B8C
	bl FUN_08027960
	b _08026C0C
	.align 2, 0
_08026B88: .4byte gUnk_030042B0
_08026B8C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08026C0C
	movs r0, #0
	movs r1, #0
	bl FUN_0800C61C
	ldr r0, _08026BC0 @ => 0x03004720
	str r4, [r0, #0x14]
	ldr r0, _08026BC4 @ => 0x08062DEC
	ldr r0, [r0]
	bl FUN_0801FE58
	ldr r3, _08026BC8 @ => 0x03004790
	ldr r1, [r3, #0x2c]
	ldr r0, [r1, #0xc]
	movs r2, #2
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1, #0xc]
	ldr r1, [r3, #0x30]
	ldr r0, [r1, #0xc]
	ands r0, r2
	str r0, [r1, #0xc]
	b _08026C0C
	.align 2, 0
_08026BC0: .4byte gUnk_03004720
_08026BC4: .4byte ROMREF_08062DEC
_08026BC8: .4byte gUnk_03004790
_08026BCC:
	ldr r0, _08026BF8 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08026C0C
	movs r0, #0
	movs r1, #0
	bl FUN_0800C61C
	ldr r1, _08026BFC @ => 0x03004720
	ldr r0, [r1, #4]
	cmp r0, #1
	beq _08026C02
	cmp r0, #1
	blo _08026C00
	cmp r0, #2
	beq _08026C04
	cmp r0, #3
	beq _08026C02
	b _08026C04
	.align 2, 0
_08026BF8: .4byte gUnk_030042B0
_08026BFC: .4byte gUnk_03004720
_08026C00:
	movs r0, #0
_08026C02:
	str r0, [r1, #0x14]
_08026C04:
	ldr r0, _08026C18 @ => 0x08062DEC
	ldr r0, [r0]
	bl FUN_0801FE58
_08026C0C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026C18: .4byte ROMREF_08062DEC

	thumb_func_start FUN_08026C1C
FUN_08026C1C: @ 0x08026C1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08026C88 @ => 0x03003DF0
	ldr r0, [r0, #0x68]
	ldr r0, [r0, #4]
	mov sb, r0
	movs r0, #0x40
	movs r1, #3
	movs r2, #0
	movs r3, #2
	bl FUN_0802D5E8
	ldr r5, _08026C8C @ => 0x03004790
	str r0, [r5]
	ldr r1, [r0, #0xc]
	movs r4, #1
	orrs r1, r4
	str r1, [r0, #0xc]
	ldr r0, _08026C90 @ => 0x03004720
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _08026C94
	movs r0, #0x5c
	movs r1, #0xe0
	movs r2, #9
	movs r3, #1
	bl FUN_0802D5E8
	str r0, [r5, #0x2c]
	ldr r1, [r0, #0xc]
	orrs r1, r4
	str r1, [r0, #0xc]
	movs r0, #0x5d
	movs r1, #0xe1
	movs r2, #9
	movs r3, #1
	bl FUN_0802D5E8
	str r0, [r5, #0x30]
	ldr r1, [r0, #0xc]
	orrs r1, r4
	str r1, [r0, #0xc]
	movs r0, #0x41
	movs r1, #1
	movs r2, #0xf
	movs r3, #0
	bl FUN_0802D5E8
	str r0, [r5, #0x34]
	b _08026CCA
	.align 2, 0
_08026C88: .4byte gUnk_03003DF0
_08026C8C: .4byte gUnk_03004790
_08026C90: .4byte gUnk_03004720
_08026C94:
	cmp r0, #1
	beq _08026C9C
	cmp r0, #4
	bne _08026CCA
_08026C9C:
	movs r1, #0x81
	lsls r1, r1, #1
	movs r0, #0x4a
	movs r2, #0xf
	movs r3, #0
	bl FUN_0802D5E8
	str r0, [r5, #0x30]
	ldr r1, [r0, #0xc]
	movs r4, #2
	rsbs r4, r4, #0
	ands r1, r4
	str r1, [r0, #0xc]
	ldr r1, _08026D14 @ => 0x00000103
	movs r0, #0x49
	movs r2, #0xf
	movs r3, #0
	bl FUN_0802D5E8
	str r0, [r5, #0x2c]
	ldr r1, [r0, #0xc]
	ands r1, r4
	str r1, [r0, #0xc]
_08026CCA:
	movs r5, #5
	ldr r0, _08026D18 @ => 0x0807281C
	mov sl, r0
	ldr r0, _08026D1C @ => 0x03004790
	adds r6, r0, #0
	adds r6, #0x18
	movs r2, #6
	mov r8, r2
	movs r7, #0x46
	mov r4, sb
	adds r4, #0x14
	movs r0, #2
	rsbs r0, r0, #0
	mov sb, r0
_08026CE6:
	ldrh r0, [r4]
	cmp r0, #0xe6
	beq _08026D2C
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	add r1, sl
	ldr r1, [r1]
	movs r0, #0x86
	lsls r0, r0, #1
	cmp r1, r0
	beq _08026D20
	adds r0, r7, #0
	mov r2, r8
	movs r3, #1
	bl FUN_0802D5E8
	str r0, [r6]
	movs r1, #0x3a
	bl FUN_08001F84
	b _08026D42
	.align 2, 0
_08026D14: .4byte 0x00000103
_08026D18: .4byte ItemInfoData
_08026D1C: .4byte gUnk_03004790
_08026D20:
	ldr r1, [r6]
	ldr r0, [r1, #0xc]
	mov r2, sb
	ands r0, r2
	str r0, [r1, #0xc]
	b _08026D42
_08026D2C:
	adds r0, r7, #0
	movs r1, #0xda
	mov r2, r8
	movs r3, #1
	bl FUN_0802D5E8
	str r0, [r6]
	ldr r1, [r0, #0xc]
	mov r2, sb
	ands r1, r2
	str r1, [r0, #0xc]
_08026D42:
	subs r6, #4
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	subs r7, #1
	subs r4, #4
	subs r5, #1
	cmp r5, #0
	bge _08026CE6
	ldr r0, _08026DF0 @ => 0x03004720
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _08026D7A
	ldr r0, _08026DF4 @ => 0x03003DF0
	ldr r0, [r0, #0x68]
	ldr r0, [r0, #4]
	ldrh r0, [r0]
	bl FUN_080278B4
	cmp r0, #0
	bne _08026D7A
	ldr r0, _08026DF8 @ => 0x03004790
	ldr r2, [r0, #0x34]
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
_08026D7A:
	movs r5, #3
	movs r6, #0x28
_08026D7E:
	adds r0, r5, #7
	lsls r2, r5, #4
	ldr r1, _08026DFC @ => 0x08062E14
	adds r2, r2, r1
	ldr r1, _08026E00 @ => 0x09FB6380
	ldr r3, [r1, #0x10]
	ldr r4, _08026E04 @ => 0x08062E54
	lsls r1, r5, #2
	adds r1, r1, r4
	ldr r1, [r1]
	str r1, [sp]
	movs r1, #0
	bl FUN_0802D6FC
	ldr r4, _08026DF8 @ => 0x03004790
	adds r0, r6, r4
	ldr r0, [r0]
	adds r1, r5, #0
	adds r1, #0xa
	movs r2, #1
	bl FUN_08027744
	subs r6, #4
	subs r5, #1
	cmp r5, #0
	bge _08026D7E
	adds r5, r4, #0
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _08026E14
	ldr r0, _08026DF4 @ => 0x03003DF0
	ldr r1, [r0, #0x68]
	ldr r6, _08026DF0 @ => 0x03004720
	ldr r0, [r6, #8]
	ldr r1, [r1, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	subs r0, #0x14
	ldrh r0, [r0]
	bl FUN_080278B4
	cmp r0, #0
	beq _08026E08
	ldr r2, [r5, #0x34]
	ldr r0, [r2, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0xc]
	ldr r0, [r6, #8]
	adds r0, #0x3c
	strh r0, [r2, #8]
	ldr r0, [r5, #0x34]
	movs r1, #0x3a
	bl FUN_08001F84
	b _08026E14
	.align 2, 0
_08026DF0: .4byte gUnk_03004720
_08026DF4: .4byte gUnk_03003DF0
_08026DF8: .4byte gUnk_03004790
_08026DFC: .4byte ROMREF_08062E14
_08026E00: .4byte ROMREF_09FB6380
_08026E04: .4byte ROMREF_08062E54
_08026E08:
	ldr r0, [r4, #0x34]
	ldr r1, [r0, #0xc]
	movs r2, #2
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #0xc]
_08026E14:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_08026E24
FUN_08026E24: @ 0x08026E24
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r6, #0
	ldr r0, _08026E40 @ => 0x03003DF0
	ldr r1, _08026E44 @ => 0x00000404
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _08026E48
	movs r0, #5
	bl FUN_080271B0
	b _08026EC2
	.align 2, 0
_08026E40: .4byte gUnk_03003DF0
_08026E44: .4byte 0x00000404
_08026E48:
	adds r0, r4, #0
	bl FUN_08006F2C
	cmp r0, #1
	bne _08026E6C
	bl FUN_08023680
	cmp r0, #1
	bne _08026E8C
	adds r0, r5, #0
	movs r1, #0x10
	bl FUN_08001FB0
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r5, r2
	strh r4, [r0]
	b _08026E8A
_08026E6C:
	adds r0, r4, #0
	bl FUN_08006F68
	cmp r0, #1
	bne _08026E8C
	adds r0, r5, #0
	movs r1, #0x49
	bl FUN_08001FB0
	adds r1, r4, #0
	adds r1, #0x23
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r5, r2
	strb r1, [r0]
_08026E8A:
	movs r6, #1
_08026E8C:
	cmp r6, #1
	bne _08026EBC
	ldr r0, _08026EB0 @ => 0x03003DF0
	ldr r0, [r0, #0x68]
	ldr r1, _08026EB4 @ => 0x03004720
	ldr r1, [r1, #8]
	subs r1, #5
	movs r2, #1
	bl FUN_08026260
	ldr r0, _08026EB8 @ => 0x030043A0
	ldr r2, [r0]
	movs r0, #1
	movs r1, #2
	bl FUN_0802CED4
	b _08026EC2
	.align 2, 0
_08026EB0: .4byte gUnk_03003DF0
_08026EB4: .4byte gUnk_03004720
_08026EB8: .4byte gUnk_030043A0
_08026EBC:
	movs r0, #3
	bl FUN_080271B0
_08026EC2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start FUN_08026EC8
FUN_08026EC8: @ 0x08026EC8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r6, #0
	cmp r4, #0xe6
	beq _08026EE0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0xd
	beq _08026EE4
_08026EE0:
	movs r6, #1
	b _08026F2A
_08026EE4:
	cmp r4, #0xc7
	bne _08026EF4
	movs r0, #0x5f
	movs r1, #0
	movs r2, #0
	bl FUN_0802B2E0
	b _08026F5C
_08026EF4:
	ldr r0, _08026F08 @ => 0x03003E24
	ldr r1, _08026F0C @ => 0x030043A0
	ldrb r1, [r1]
	bl FUN_08029724
	cmp r0, #0
	bne _08026F10
	movs r6, #1
	b _08026F2A
	.align 2, 0
_08026F08: .4byte gUnk_03003E24
_08026F0C: .4byte gUnk_030043A0
_08026F10:
	cmp r4, #0x6d
	bhi _08026F28
	ldr r0, _08026F20 @ => 0x03005B90
	ldrb r0, [r0, #8]
	cmp r0, #0xb
	bhi _08026F24
	movs r4, #1
	b _08026F2C
	.align 2, 0
_08026F20: .4byte gUnk_03005B90
_08026F24:
	movs r6, #4
	b _08026F2A
_08026F28:
	movs r6, #3
_08026F2A:
	movs r4, #0
_08026F2C:
	cmp r4, #1
	bne _08026F74
	adds r0, r5, #0
	movs r1, #0x13
	bl FUN_08001FB0
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08001F84
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r5, r1
	str r4, [r0]
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r1, r5, r0
	ldr r0, _08026F6C @ => 0x03004720
	ldr r0, [r0, #8]
	subs r0, #5
	str r0, [r1]
	movs r0, #0xb5
	bl FUN_0804DE0C
_08026F5C:
	ldr r0, _08026F70 @ => 0x030043A0
	ldr r2, [r0]
	movs r0, #1
	movs r1, #2
	bl FUN_0802CED4
	movs r0, #1
	b _08026F7C
	.align 2, 0
_08026F6C: .4byte gUnk_03004720
_08026F70: .4byte gUnk_030043A0
_08026F74:
	adds r0, r6, #0
	bl FUN_080271B0
	movs r0, #0
_08026F7C:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08026F84
FUN_08026F84: @ 0x08026F84
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08027000 @ => 0x03003DF0
	mov r8, r0
	ldr r0, [r0, #0x68]
	ldr r1, [r0, #4]
	ldr r0, _08027004 @ => 0x03004720
	ldr r0, [r0, #8]
	cmp r0, #4
	bhi _08026F9E
	b _080271A2
_08026F9E:
	movs r2, #0
	mov sb, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	subs r0, #0x14
	ldrh r6, [r0]
	cmp r6, #0xe6
	bne _08026FB0
	b _0802719C
_08026FB0:
	adds r0, r6, #0
	bl FUN_0803B070
	adds r5, r0, #0
	ldr r7, _08027008 @ => 0x0300203C
	ldr r0, [r7]
	ldrh r0, [r0, #0xa]
	adds r1, r6, #0
	bl FUN_0801EC3C
	adds r4, r0, #0
	cmp r4, #1
	beq _08027010
	movs r0, #1
	mov sb, r0
	ldr r0, [r7]
	ldrh r0, [r0, #0xa]
	adds r1, r4, #0
	bl FUN_0801EBF0
	movs r0, #0xa3
	lsls r0, r0, #2
	add r0, r8
	adds r1, r4, #0
	bl FUN_0801E140
	ldr r4, _0802700C @ => 0x03004200
	ldr r0, [r4]
	movs r1, #0x45
	bl FUN_08001FB0
	ldr r0, [r4]
	ldr r1, [r7]
	ldrh r1, [r1, #0xa]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r0, r2
	strb r1, [r0]
	b _08027144
	.align 2, 0
_08027000: .4byte gUnk_03003DF0
_08027004: .4byte gUnk_03004720
_08027008: .4byte gUnk_0300203C
_0802700C: .4byte gUnk_03004200
_08027010:
	cmp r5, #3
	beq _0802706C
	cmp r5, #1
	beq _0802702A
	cmp r5, #1
	blo _08027022
	cmp r5, #2
	beq _08027054
	b _08027144
_08027022:
	ldr r0, [r7]
	ldrh r0, [r0, #0xa]
	movs r1, #1
	b _0802705A
_0802702A:
	mov r1, r8
	ldrb r0, [r1, #0x1c]
	ldr r1, [r7]
	ldrb r1, [r1, #0xa]
	bl FUN_0803AE8C
	cmp r0, #1
	beq _0802703C
	b _08027144
_0802703C:
	ldr r0, [r7]
	ldrh r0, [r0, #0xa]
	movs r1, #3
	bl FUN_0803AF1C
	ldr r0, [r7]
	movs r1, #0x4a
	bl FUN_08001FB0
	movs r2, #1
	mov sb, r2
	b _08027144
_08027054:
	ldr r0, [r7]
	ldrh r0, [r0, #0xa]
	movs r1, #2
_0802705A:
	bl FUN_0803AF1C
	ldr r0, [r7]
	movs r1, #0x4a
	bl FUN_08001FB0
	movs r0, #1
	mov sb, r0
	b _08027144
_0802706C:
	ldr r0, [r7]
	ldrh r0, [r0, #0xa]
	adds r1, r6, #0
	bl FUN_0803AEC0
	cmp r0, #0
	beq _08027144
	movs r1, #1
	mov sb, r1
	ldr r0, [r7]
	ldrh r0, [r0, #0xa]
	cmp r0, #0x15
	bne _08027090
	cmp r6, #0xc1
	bne _08027090
	movs r0, #0x29
	bl FUN_080213A4
_08027090:
	ldr r0, _08027174 @ => 0x0300203C
	ldr r0, [r0]
	ldrh r0, [r0, #0xa]
	cmp r0, #0x18
	bne _080270B6
	cmp r6, #0xae
	bne _080270B6
	movs r0, #0x52
	movs r1, #1
	bl FUN_080213A4
	ldr r0, _08027178 @ => 0x0000035F
	movs r1, #0
	movs r2, #0
	bl FUN_0802B2E0
	ldr r0, _0802717C @ => 0x0300407C
	bl FUN_0801DFC8
_080270B6:
	ldr r0, _08027174 @ => 0x0300203C
	ldr r0, [r0]
	ldrh r0, [r0, #0xa]
	cmp r0, #0x20
	bne _080270CC
	cmp r6, #0x8c
	bne _080270CC
	movs r0, #0x7c
	movs r1, #1
	bl FUN_080213A4
_080270CC:
	ldr r0, _08027174 @ => 0x0300203C
	ldr r0, [r0]
	ldrh r0, [r0, #0xa]
	cmp r0, #0x17
	bne _080270E2
	cmp r6, #0xa3
	bne _080270E2
	movs r0, #0xa6
	movs r1, #1
	bl FUN_080213A4
_080270E2:
	ldr r0, _08027174 @ => 0x0300203C
	ldr r0, [r0]
	ldrh r0, [r0, #0xa]
	cmp r0, #0x19
	bne _080270F8
	cmp r6, #0x93
	bne _080270F8
	movs r0, #0xae
	movs r1, #1
	bl FUN_080213A4
_080270F8:
	ldr r0, _08027174 @ => 0x0300203C
	ldr r0, [r0]
	ldrh r0, [r0, #0xa]
	cmp r0, #0x11
	bne _0802710E
	cmp r6, #0x7a
	bne _0802710E
	ldr r0, _08027180 @ => 0x00000197
	movs r1, #1
	bl FUN_080213A4
_0802710E:
	ldr r0, _08027174 @ => 0x0300203C
	ldr r0, [r0]
	ldrh r0, [r0, #0xa]
	cmp r0, #0x23
	bne _08027126
	cmp r6, #0xad
	bne _08027126
	movs r0, #0xd4
	lsls r0, r0, #1
	movs r1, #1
	bl FUN_080213A4
_08027126:
	ldr r0, _08027174 @ => 0x0300203C
	ldr r0, [r0]
	ldrh r0, [r0, #0xa]
	cmp r0, #0x1f
	bne _08027144
	cmp r6, #0x26
	bne _08027144
	bl FUN_08021320
	cmp r0, #0x14
	bne _08027144
	ldr r0, _08027184 @ => 0x00000245
	movs r1, #1
	bl FUN_080213A4
_08027144:
	mov r2, sb
	cmp r2, #1
	bne _08027194
	ldr r0, _08027188 @ => 0x03003DF0
	ldr r0, [r0, #0x68]
	ldr r1, _0802718C @ => 0x03004720
	ldr r1, [r1, #8]
	subs r1, #5
	movs r2, #1
	bl FUN_08026260
	movs r0, #0xb5
	bl FUN_0804DE0C
	ldr r0, _08027190 @ => 0x030043A0
	ldr r2, [r0]
	movs r0, #1
	movs r1, #2
	bl FUN_0802CED4
	movs r0, #0xa
	bl FUN_08024C78
	b _080271A2
	.align 2, 0
_08027174: .4byte gUnk_0300203C
_08027178: .4byte 0x0000035F
_0802717C: .4byte gEpisode_Data
_08027180: .4byte 0x00000197
_08027184: .4byte 0x00000245
_08027188: .4byte gUnk_03003DF0
_0802718C: .4byte gUnk_03004720
_08027190: .4byte gUnk_030043A0
_08027194:
	movs r0, #9
	bl FUN_080271B0
	b _080271A2
_0802719C:
	movs r0, #0xb1
	bl FUN_0804DE0C
_080271A2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080271B0
FUN_080271B0: @ 0x080271B0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov sb, r0
	cmp r0, #9
	bls _080271C2
	b _080272D8
_080271C2:
	lsls r0, r0, #2
	ldr r1, _080271CC @ =_080271D0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080271CC: .4byte _080271D0
_080271D0: @ jump table
	.4byte _080271F8 @ case 0
	.4byte _0802721C @ case 1
	.4byte _08027234 @ case 2
	.4byte _08027248 @ case 3
	.4byte _08027260 @ case 4
	.4byte _08027274 @ case 5
	.4byte _080272D8 @ case 6
	.4byte _0802728C @ case 7
	.4byte _080272A0 @ case 8
	.4byte _080272B8 @ case 9
_080271F8:
	ldr r1, _08027214 @ => 0x03004720
	movs r0, #2
	str r0, [r1, #0x14]
	movs r0, #1
	str r0, [r1, #0xc]
	ldr r0, _08027218 @ => 0x000006D9
	bl FUN_08050820
	adds r6, r0, #0
	movs r7, #8
	movs r0, #5
	mov r8, r0
	b _080272E0
	.align 2, 0
_08027214: .4byte gUnk_03004720
_08027218: .4byte 0x000006D9
_0802721C:
	ldr r0, _0802722C @ => 0x03004720
	movs r1, #8
	str r1, [r0, #0x14]
	ldr r0, _08027230 @ => 0x00000872
	bl FUN_08050820
	adds r6, r0, #0
	b _080272DA
	.align 2, 0
_0802722C: .4byte gUnk_03004720
_08027230: .4byte 0x00000872
_08027234:
	ldr r0, _08027240 @ => 0x03004720
	movs r1, #8
	str r1, [r0, #0x14]
	ldr r0, _08027244 @ => 0x00000874
	b _080272C0
	.align 2, 0
_08027240: .4byte gUnk_03004720
_08027244: .4byte 0x00000874
_08027248:
	ldr r0, _08027258 @ => 0x03004720
	movs r1, #8
	str r1, [r0, #0x14]
	ldr r0, _0802725C @ => 0x00000877
	bl FUN_08050820
	adds r6, r0, #0
	b _080272DA
	.align 2, 0
_08027258: .4byte gUnk_03004720
_0802725C: .4byte 0x00000877
_08027260:
	ldr r0, _0802726C @ => 0x03004720
	movs r1, #8
	str r1, [r0, #0x14]
	ldr r0, _08027270 @ => 0x00000874
	b _080272C0
	.align 2, 0
_0802726C: .4byte gUnk_03004720
_08027270: .4byte 0x00000874
_08027274:
	ldr r0, _08027284 @ => 0x03004720
	movs r1, #8
	str r1, [r0, #0x14]
	ldr r0, _08027288 @ => 0x00000884
	bl FUN_08050820
	adds r6, r0, #0
	b _080272DA
	.align 2, 0
_08027284: .4byte gUnk_03004720
_08027288: .4byte 0x00000884
_0802728C:
	ldr r0, _08027298 @ => 0x03004720
	movs r1, #8
	str r1, [r0, #0x14]
	ldr r0, _0802729C @ => 0x0000088C
	b _080272C0
	.align 2, 0
_08027298: .4byte gUnk_03004720
_0802729C: .4byte 0x0000088C
_080272A0:
	ldr r0, _080272B0 @ => 0x03004720
	movs r1, #8
	str r1, [r0, #0x14]
	ldr r0, _080272B4 @ => 0x0000088D
	bl FUN_08050820
	adds r6, r0, #0
	b _080272DA
	.align 2, 0
_080272B0: .4byte gUnk_03004720
_080272B4: .4byte 0x0000088D
_080272B8:
	ldr r0, _080272D0 @ => 0x03004720
	movs r1, #8
	str r1, [r0, #0x14]
	ldr r0, _080272D4 @ => 0x0000088E
_080272C0:
	bl FUN_08050820
	adds r6, r0, #0
	movs r7, #4
	movs r0, #7
	mov r8, r0
	b _080272E0
	.align 2, 0
_080272D0: .4byte gUnk_03004720
_080272D4: .4byte 0x0000088E
_080272D8:
	movs r6, #0
_080272DA:
	movs r7, #4
	movs r1, #7
	mov r8, r1
_080272E0:
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #3
	movs r1, #0
	bl FUN_0801FEA0
	bl FUN_08050814
	cmp r0, #1
	bne _08027304
	mov r0, sb
	cmp r0, #2
	beq _080272FE
	cmp r0, #4
	bne _08027304
_080272FE:
	movs r5, #0x1c
	adds r7, #2
	b _08027320
_08027304:
	adds r0, r6, #0
	bl FUN_0801FF60
	adds r1, r0, #7
	cmp r1, #0
	bge _08027312
	adds r1, #7
_08027312:
	asrs r1, r1, #3
	adds r5, r1, #2
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08027320
	adds r5, r1, #3
_08027320:
	movs r4, #0x1e
	subs r4, r4, r5
	lsrs r4, r4, #1
	ldr r2, _08027388 @ => 0x000002D1
	movs r0, #0
	movs r1, #0
	movs r3, #0
	bl FUN_080410E8
	adds r0, r4, #0
	mov r1, r8
	adds r2, r5, #0
	adds r3, r7, #0
	bl FUN_08041234
	ldr r0, _0802738C @ => 0x08062DE8
	ldr r0, [r0]
	bl FUN_0801FE58
	ldr r7, _08027390 @ => 0x00000259
	mov r1, sb
	cmp r1, #0
	bne _08027398
	movs r0, #0xdb
	lsls r0, r0, #3
	bl FUN_08050820
	adds r6, r0, #0
	mov r4, r8
	adds r4, #1
	lsls r4, r4, #3
	movs r5, #1
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #0x78
	adds r2, r4, #0
	adds r3, r6, #0
	bl FUN_0801F8B8
	adds r7, r0, #0
	ldr r0, _08027394 @ => 0x000006D9
	bl FUN_08050820
	adds r3, r0, #0
	adds r4, #0xc
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #0x78
	adds r2, r4, #0
	bl FUN_0801F8B8
	b _080273E4
	.align 2, 0
_08027388: .4byte 0x000002D1
_0802738C: .4byte ROMREF_08062DE8
_08027390: .4byte 0x00000259
_08027394: .4byte 0x000006D9
_08027398:
	bl FUN_08050814
	adds r4, r0, #0
	cmp r4, #1
	bne _080273CE
	mov r0, sb
	cmp r0, #2
	beq _080273AC
	cmp r0, #4
	bne _080273CE
_080273AC:
	bl FUN_080203E0
	subs r0, #4
	bl FUN_0801FEE8
	mov r2, r8
	adds r2, #1
	lsls r2, r2, #3
	adds r2, #5
	str r6, [sp]
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #0x78
	movs r3, #0xd0
	bl FUN_08020098
	b _080273E4
_080273CE:
	mov r2, r8
	adds r2, #1
	lsls r2, r2, #3
	adds r2, #3
	movs r0, #1
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0x78
	adds r3, r6, #0
	bl FUN_0801F8B8
_080273E4:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080273F4
FUN_080273F4: @ 0x080273F4
	push {r4, r5, r6, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r0, _08027414 @ => 0x03003DF0
	ldr r0, [r0, #0x68]
	ldr r6, [r0, #4]
	cmp r4, #7
	bls _08027406
	b _080275BE
_08027406:
	lsls r0, r4, #2
	ldr r1, _08027418 @ =_0802741C
	adds r1, r0, r1
	ldr r1, [r1]
	adds r5, r0, #0
	mov pc, r1
	.align 2, 0
_08027414: .4byte gUnk_03003DF0
_08027418: .4byte _0802741C
_0802741C: @ jump table
	.4byte _0802743C @ case 0
	.4byte _0802743C @ case 1
	.4byte _0802743C @ case 2
	.4byte _0802743C @ case 3
	.4byte _0802747C @ case 4
	.4byte _08027520 @ case 5
	.4byte _0802754C @ case 6
	.4byte _08027584 @ case 7
_0802743C:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _08027470 @ => 0x03003DF0
	adds r0, #0x5c
	adds r0, r4, r0
	ldrb r0, [r0]
	bl FUN_080203A8
	ldr r0, _08027474 @ => 0x00000762
	bl FUN_08050820
	adds r3, r0, #0
	lsls r0, r4, #3
	adds r0, #0x21
	ldr r2, _08027478 @ => 0x08062DF4
	adds r2, r5, r2
	ldrb r1, [r2]
	ldrb r2, [r2, #1]
	movs r4, #1
	str r4, [sp]
	bl FUN_0801F8B8
	b _080275BE
	.align 2, 0
_08027470: .4byte gUnk_03003DF0
_08027474: .4byte 0x00000762
_08027478: .4byte ROMREF_08062DF4
_0802747C:
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #3
	movs r1, #0
	bl FUN_0801FEA0
	ldr r0, _080274BC @ => 0x03004720
	ldr r0, [r0, #8]
	cmp r0, #4
	bls _080274C4
	lsls r0, r0, #2
	adds r0, r0, r6
	adds r4, r0, #0
	subs r4, #0x14
	ldrh r0, [r4]
	cmp r0, #0xe6
	bne _080274A0
	b _080275BE
_080274A0:
	ldr r0, _080274C0 @ => 0x08062DF4
	adds r0, r5, r0
	ldrb r1, [r0]
	ldrb r2, [r0, #1]
	ldrh r3, [r4]
	ldrb r0, [r4, #3]
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x4f
	bl FUN_0803B98C
	b _080275BE
	.align 2, 0
_080274BC: .4byte gUnk_03004720
_080274C0: .4byte ROMREF_08062DF4
_080274C4:
	cmp r0, #3
	bhi _080274E8
	ldr r1, _080274E0 @ => 0x000006CF
	adds r0, r0, r1
	bl FUN_08050820
	adds r3, r0, #0
	ldr r0, _080274E4 @ => 0x08062DF4
	adds r0, r5, r0
	ldrb r1, [r0]
	ldrb r2, [r0, #1]
	movs r0, #1
	str r0, [sp]
	b _0802750A
	.align 2, 0
_080274E0: .4byte 0x000006CF
_080274E4: .4byte ROMREF_08062DF4
_080274E8:
	cmp r0, #4
	bne _080275BE
	ldr r0, _08027514 @ => 0x0000029E
	bl FUN_080213F8
	adds r4, r0, #0
	cmp r4, #1
	bne _080275BE
	ldr r0, _08027518 @ => 0x000006D7
	bl FUN_08050820
	adds r3, r0, #0
	ldr r0, _0802751C @ => 0x08062DF4
	adds r0, r5, r0
	ldrb r1, [r0]
	ldrb r2, [r0, #1]
	str r4, [sp]
_0802750A:
	movs r0, #0x4f
	bl FUN_0801F8B8
	b _080275BE
	.align 2, 0
_08027514: .4byte 0x0000029E
_08027518: .4byte 0x000006D7
_0802751C: .4byte ROMREF_08062DF4
_08027520:
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _08027544 @ => 0x000006DA
	bl FUN_08050820
	adds r3, r0, #0
	ldr r0, _08027548 @ => 0x08062DF4
	adds r0, r5, r0
	ldrb r1, [r0]
	ldrb r2, [r0, #1]
	movs r0, #1
	str r0, [sp]
	bl FUN_0801F8B8
	b _080275BE
	.align 2, 0
_08027544: .4byte 0x000006DA
_08027548: .4byte ROMREF_08062DF4
_0802754C:
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _0802757C @ => 0x03003DF0
	ldr r0, [r0, #8]
	bl FUN_080203A8
	movs r0, #0xec
	lsls r0, r0, #3
	bl FUN_08050820
	adds r3, r0, #0
	ldr r0, _08027580 @ => 0x08062DF4
	adds r0, r5, r0
	ldrb r1, [r0]
	ldrb r2, [r0, #1]
	movs r0, #1
	str r0, [sp]
	movs r0, #0x41
	bl FUN_0801F8B8
	b _080275BE
	.align 2, 0
_0802757C: .4byte gUnk_03003DF0
_08027580: .4byte ROMREF_08062DF4
_08027584:
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #3
	movs r1, #0
	bl FUN_0801FEA0
	ldr r0, _080275C8 @ => 0x03004720
	ldr r0, [r0, #0xc]
	add r1, sp, #8
	bl FUN_080504E4
	ldr r0, _080275CC @ => 0x08062DE8
	ldr r0, [r0]
	bl FUN_0801FE58
	ldr r0, _080275D0 @ => 0x000002DA
	ldr r2, _080275D4 @ => 0x08062DF4
	adds r2, r5, r2
	ldrb r1, [r2]
	ldrb r2, [r2, #1]
	movs r3, #1
	str r3, [sp]
	add r3, sp, #8
	bl FUN_0801F8B8
	ldr r0, _080275D8 @ => 0x08062DEC
	ldr r0, [r0]
	bl FUN_0801FE58
_080275BE:
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080275C8: .4byte gUnk_03004720
_080275CC: .4byte ROMREF_08062DE8
_080275D0: .4byte 0x000002DA
_080275D4: .4byte ROMREF_08062DF4
_080275D8: .4byte ROMREF_08062DEC

	thumb_func_start FUN_080275DC
FUN_080275DC: @ 0x080275DC
	push {r4, lr}
	ldr r0, _080275F8 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08027600
	ldr r1, _080275FC @ => 0x03004720
	ldr r0, [r1, #8]
	cmp r0, #1
	bhi _0802767C
	adds r0, #2
	b _0802762E
	.align 2, 0
_080275F8: .4byte gUnk_030042B0
_080275FC: .4byte gUnk_03004720
_08027600:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08027618
	ldr r1, _08027614 @ => 0x03004720
	ldr r0, [r1, #8]
	subs r0, #2
	cmp r0, #1
	bhi _0802767C
	b _0802762E
	.align 2, 0
_08027614: .4byte gUnk_03004720
_08027618:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0802763C
	ldr r1, _08027638 @ => 0x03004720
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0802767C
	cmp r0, #2
	beq _0802767C
	subs r0, #1
_0802762E:
	str r0, [r1, #8]
	bl FUN_08027A24
	b _0802767C
	.align 2, 0
_08027638: .4byte gUnk_03004720
_0802763C:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802767C
	ldr r4, _0802766C @ => 0x03004720
	ldr r0, [r4, #8]
	cmp r0, #1
	beq _08027650
	cmp r0, #3
	bne _08027674
_08027650:
	str r0, [r4, #0x10]
	movs r0, #4
	str r0, [r4, #8]
	ldr r2, _08027670 @ => 0x03004790
	ldr r1, [r2]
	movs r0, #3
	strh r0, [r1, #0xa]
	ldr r0, [r2]
	bl FUN_0802D848
	ldr r0, [r4, #8]
	bl FUN_08027A24
	b _0802767C
	.align 2, 0
_0802766C: .4byte gUnk_03004720
_08027670: .4byte gUnk_03004790
_08027674:
	adds r0, #1
	str r0, [r4, #8]
	bl FUN_08027A24
_0802767C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08027684
FUN_08027684: @ 0x08027684
	push {lr}
	ldr r0, _080276A4 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080276B4
	ldr r1, _080276A8 @ => 0x03004720
	ldr r0, [r1, #8]
	cmp r0, #5
	blo _0802773C
	cmp r0, #6
	bhi _080276AC
	adds r0, #2
	b _0802773A
	.align 2, 0
_080276A4: .4byte gUnk_030042B0
_080276A8: .4byte gUnk_03004720
_080276AC:
	cmp r0, #8
	bhi _0802773C
	adds r0, #2
	b _0802773A
_080276B4:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080276D8
	ldr r1, _080276CC @ => 0x03004720
	ldr r0, [r1, #8]
	cmp r0, #7
	blo _0802773C
	cmp r0, #8
	bhi _080276D0
	subs r0, #2
	b _0802773A
	.align 2, 0
_080276CC: .4byte gUnk_03004720
_080276D0:
	cmp r0, #0xa
	bhi _0802773C
	subs r0, #2
	b _0802773A
_080276D8:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08027720
	ldr r0, _080276F4 @ => 0x03004720
	ldr r1, [r0, #8]
	adds r2, r0, #0
	cmp r1, #7
	beq _080276FC
	cmp r1, #7
	bhi _080276F8
	cmp r1, #5
	beq _080276FC
	b _08027718
	.align 2, 0
_080276F4: .4byte gUnk_03004720
_080276F8:
	cmp r1, #9
	bne _08027718
_080276FC:
	ldr r0, [r2, #8]
	str r0, [r2, #0xc]
	movs r0, #4
	str r0, [r2, #8]
	ldr r2, _08027714 @ => 0x03004790
	ldr r1, [r2]
	movs r0, #3
	strh r0, [r1, #0xa]
	ldr r0, [r2]
	bl FUN_0802D848
	b _0802773C
	.align 2, 0
_08027714: .4byte gUnk_03004790
_08027718:
	ldr r0, [r2, #8]
	subs r0, #1
	str r0, [r2, #8]
	b _0802773C
_08027720:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802773C
	ldr r1, _08027740 @ => 0x03004720
	ldr r0, [r1, #8]
	cmp r0, #6
	beq _0802773C
	cmp r0, #8
	beq _0802773C
	cmp r0, #0xa
	beq _0802773C
	adds r0, #1
_0802773A:
	str r0, [r1, #8]
_0802773C:
	pop {r0}
	bx r0
	.align 2, 0
_08027740: .4byte gUnk_03004720

	thumb_func_start FUN_08027744
FUN_08027744: @ 0x08027744
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #0x19
	str r0, [r5, #0xc]
	adds r4, r5, #0
	adds r4, #0xa9
	movs r0, #3
	ands r2, r0
	lsls r2, r2, #2
	ldrb r3, [r4]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	lsls r1, r1, #4
	movs r2, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08001FB0
	adds r0, r5, #0
	movs r1, #0xb
	bl FUN_08001F84
	ldrb r0, [r4]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x1c
	cmp r0, #0xb
	beq _080277A4
	cmp r0, #0xb
	bgt _08027792
	cmp r0, #0xa
	beq _0802779C
	b _080277CE
_08027792:
	cmp r0, #0xc
	beq _080277AC
	cmp r0, #0xd
	beq _080277C0
	b _080277CE
_0802779C:
	ldr r0, _080277A0 @ => 0x08062E14
	b _080277AE
	.align 2, 0
_080277A0: .4byte ROMREF_08062E14
_080277A4:
	ldr r0, _080277A8 @ => 0x08062E24
	b _080277AE
	.align 2, 0
_080277A8: .4byte ROMREF_08062E24
_080277AC:
	ldr r0, _080277BC @ => 0x08062E34
_080277AE:
	ldr r0, [r0, #8]
	lsrs r1, r1, #0x1c
	lsls r1, r1, #4
	movs r2, #0x10
	bl FUN_0801579C
	b _080277CE
	.align 2, 0
_080277BC: .4byte ROMREF_08062E34
_080277C0:
	ldr r0, _080277D8 @ => 0x08062E44
	ldr r0, [r0, #8]
	lsrs r1, r1, #0x1c
	lsls r1, r1, #4
	movs r2, #0x10
	bl FUN_0801579C
_080277CE:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080277D8: .4byte ROMREF_08062E44

	thumb_func_start InventoryMenu_Terminate
InventoryMenu_Terminate: @ 0x080277DC
	push {lr}
	ldr r0, _080277F4 @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080277F8
	movs r0, #0x3f
	bl FUN_080458EC
	b _08027800
	.align 2, 0
_080277F4: .4byte gUnk_03004374
_080277F8:
	movs r0, #0x3f
	movs r1, #0
	bl FUN_0804582C
_08027800:
	ldr r0, _08027818 @ => 0x03002C40
	bl FUN_08000BF8
	bl FUN_0800CB20
	bl FUN_08015834
	bl FUN_0802D8A8
	pop {r0}
	bx r0
	.align 2, 0
_08027818: .4byte gUnk_03002C40
