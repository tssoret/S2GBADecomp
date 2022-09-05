.include "asm/constants.s"
.include "asm/macros.s"
.include "data/lists/sounds.inc"

.syntax unified

	thumb_func_start LetsWatchTheShow_Init
LetsWatchTheShow_Init: @ 0x08022970
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x24
	bl FUN_08042448
	add r1, sp, #0x18
	movs r0, #0
	strh r0, [r1]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _080229E0 @ => 0x01008000
	add r0, sp, #0x18
	bl SVC_CpuSet
	movs r0, #0
	bl FUN_0805273C
	movs r0, #0
	bl FUN_0800C558
	movs r0, #0x80
	lsls r0, r0, #5
	bl FUN_0800C5EC
	ldr r0, _080229E4 @ => 0x08062B4C
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C418
	ldr r0, _080229E8 @ => 0x08062B50
	ldr r1, [r0]
	movs r0, #2
	bl FUN_0800C418
	ldr r0, _080229EC @ => 0x08062B54
	ldr r1, [r0]
	movs r0, #0
	bl FUN_0800C418
	movs r0, #2
	bl FUN_0800C5FC
	movs r0, #0
	bl FUN_0800C5FC
	ldr r0, _080229F0 @ => 0x03004770
	ldr r0, [r0, #8]
	cmp r0, #7
	bne _080229F8
	ldr r0, _080229F4 @ => 0x03004720
	movs r1, #0
	str r1, [r0, #0x14]
	movs r1, #0x1e
	b _08022A00
	.align 2, 0
_080229E0: .4byte 0x01008000
_080229E4: .4byte ROMREF_08062B4C
_080229E8: .4byte ROMREF_08062B50
_080229EC: .4byte ROMREF_08062B54
_080229F0: .4byte gUnk_03004770
_080229F4: .4byte gUnk_03004720
_080229F8:
	ldr r0, _08022A80 @ => 0x03004720
	movs r1, #1
	str r1, [r0, #0x14]
	movs r1, #0x10
_08022A00:
	str r1, [r0, #0x18]
	ldr r0, _08022A84 @ => 0x03001DE8
	adds r0, #0x20
	movs r1, #0
	strb r1, [r0]
	movs r6, #0
	movs r7, #0
	ldr r2, _08022A88 @ => 0x08146694
	movs r4, #0x10
	str r4, [sp]
	str r4, [sp, #4]
	movs r5, #0xf0
	str r5, [sp, #8]
	str r6, [sp, #0xc]
	str r7, [sp, #0x10]
	str r1, [sp, #0x14]
	add r0, sp, #0x1c
	movs r1, #3
	movs r3, #1
	bl FUN_0800D83C
	movs r0, #0
	ldr r2, _08022A8C @ => 0x081498F8
	movs r3, #0x86
	lsls r3, r3, #2
	str r4, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x14]
	add r0, sp, #0x20
	movs r1, #2
	bl FUN_0800D83C
	movs r0, #1
	movs r1, #5
	movs r2, #2
	movs r3, #2
	bl FUN_08021428
	movs r0, #1
	movs r1, #2
	movs r2, #6
	movs r3, #6
	bl FUN_08021428
	bl FUN_08022BCC
	movs r0, SOUNDTRACK_STRANGETOWN
	bl FUN_0804DE84
	movs r0, #0x3f
	movs r1, #0
	bl FUN_080457F4
	add sp, #0x24
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022A80: .4byte gUnk_03004720
_08022A84: .4byte gUnk_03001DE8
_08022A88: .4byte ROMREF_08146694
_08022A8C: .4byte ROMREF_081498F8

	thumb_func_start LetsWatchTheShow_Handler
LetsWatchTheShow_Handler: @ 0x08022A90
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, _08022AAC @ => 0x03004720
	ldr r1, [r0, #0x14]
	adds r4, r0, #0
	cmp r1, #4
	bls _08022AA0
	b _08022BC4
_08022AA0:
	lsls r0, r1, #2
	ldr r1, _08022AB0 @ =_08022AB4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08022AAC: .4byte gUnk_03004720
_08022AB0: .4byte _08022AB4
_08022AB4: @ jump table
	.4byte _08022AC8 @ case 0
	.4byte _08022ADC @ case 1
	.4byte _08022B2C @ case 2
	.4byte _08022BB0 @ case 3
	.4byte _08022B4C @ case 4
_08022AC8:
	ldr r0, [r4, #0x18]
	subs r0, #1
	str r0, [r4, #0x18]
	cmp r0, #0
	bne _08022BC4
	bl FUN_08022CFC
	movs r0, #4
	str r0, [r4, #0x14]
	b _08022BA4
_08022ADC:
	ldr r0, _08022B1C @ => 0x03001DE8
	ldr r0, [r0]
	movs r4, #1
	strh r4, [r0, #0xa]
	movs r0, #0
	bl FUN_0800C5FC
	ldr r0, _08022B20 @ => 0x08062B54
	ldr r0, [r0]
	bl FUN_0801FE58
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _08022B24 @ => 0x00000AD4
	bl FUN_08050820
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x90
	movs r3, #0xec
	bl FUN_08020098
	ldr r1, _08022B28 @ => 0x03004720
	movs r0, #2
	str r0, [r1, #0x14]
	b _08022BC4
	.align 2, 0
_08022B1C: .4byte gUnk_03001DE8
_08022B20: .4byte ROMREF_08062B54
_08022B24: .4byte 0x00000AD4
_08022B28: .4byte gUnk_03004720
_08022B2C:
	ldr r0, _08022B48 @ => 0x03001DE8
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08022BC4
	movs r0, #1
	str r0, [r4, #0x18]
	movs r0, #3
	str r0, [r4, #0x14]
	b _08022BC4
	.align 2, 0
_08022B48: .4byte gUnk_03001DE8
_08022B4C:
	ldr r0, [r4, #0x18]
	subs r1, r0, #1
	str r1, [r4, #0x18]
	cmp r1, #0
	bne _08022BC4
	ldr r3, _08022B70 @ => 0x03001DE8
	adds r5, r3, #0
	adds r5, #0x20
	ldrb r0, [r5]
	cmp r0, #4
	bne _08022B74
	strb r1, [r5]
	movs r0, #0x1e
	movs r1, #0
	movs r2, #4
	bl FUN_0802CED4
	b _08022BC4
	.align 2, 0
_08022B70: .4byte gUnk_03001DE8
_08022B74:
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0xc]
	ldr r1, _08022BAC @ => 0x08062BF8
	adds r0, r3, #0
	adds r0, #0x1c
	ldrb r2, [r5]
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl FUN_0804DE0C
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
_08022BA4:
	movs r0, #0x28
	str r0, [r4, #0x18]
	b _08022BC4
	.align 2, 0
_08022BAC: .4byte ROMREF_08062BF8
_08022BB0:
	ldr r0, [r4, #0x18]
	subs r0, #1
	str r0, [r4, #0x18]
	cmp r0, #0
	bne _08022BC4
	ldr r2, [r4, #8]
	movs r0, #0x1c
	movs r1, #0
	bl FUN_0802CED4
_08022BC4:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_08022BCC
FUN_08022BCC: @ 0x08022BCC
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r5, #0
	ldr r6, _08022C30 @ => 0x08062B58
_08022BD4:
	lsls r4, r5, #4
	ldr r0, _08022C34 @ => 0x08062B68
	adds r4, r4, r0
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r0, #4
	ldrsh r2, [r6, r0]
	ldrb r3, [r6, #8]
	ldrb r0, [r6, #9]
	str r0, [sp]
	adds r0, r4, #0
	bl FUN_0802D680
	ldr r1, _08022C38 @ => 0x03001DE8
	lsls r2, r5, #2
	adds r2, r2, r1
	str r0, [r2]
	movs r1, #0
	strh r5, [r0, #8]
	ldr r0, [r2]
	strh r1, [r0, #0xa]
	ldr r0, [r2]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #1
	str r1, [r0]
	ldr r0, [r2]
	ldr r1, _08022C3C @ => FUN_08022C44
	str r1, [r0, #0x50]
	ldr r2, _08022C40 @ => 0x09FB6334
	lsls r1, r5, #3
	adds r1, r1, r2
	ldr r2, [r1, #4]
	adds r1, r4, #0
	movs r3, #0
	bl FUN_0800192C
	adds r6, #0x10
	adds r5, #1
	cmp r5, #0
	ble _08022BD4
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08022C30: .4byte ROMREF_08062B58
_08022C34: .4byte ROMREF_08062B68
_08022C38: .4byte gUnk_03001DE8
_08022C3C: .4byte FUN_08022C44
_08022C40: .4byte ROMREF_09FB6334

	thumb_func_start FUN_08022C44
FUN_08022C44: @ 0x08022C44
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r7, #2
	ldrh r0, [r5, #8]
	cmp r0, #3
	bne _08022C54
	strh r0, [r5, #8]
_08022C54:
	ldrh r0, [r5, #0xa]
	cmp r0, #0
	beq _08022C60
	cmp r0, #1
	beq _08022C80
	b _08022CB4
_08022C60:
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _08022CB4
	cmp r0, #0
	bne _08022CB4
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08022CB4
	movs r7, #1
	b _08022CB4
_08022C80:
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r6, [r0]
	cmp r6, #1
	bne _08022CB4
	movs r7, #0
	ldr r4, _08022CE4 @ => 0x08062B78
	ldr r0, _08022CE8 @ => 0x08062B58
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r3, #4
	ldrsh r2, [r0, r3]
	ldrb r3, [r0, #8]
	str r6, [sp]
	adds r0, r4, #0
	bl FUN_0802D680
	ldr r1, _08022CEC @ => 0x03001DE8
	str r0, [r1, #4]
	ldr r1, _08022CF0 @ => 0x09FB633C
	ldr r2, [r1]
	adds r1, r4, #0
	movs r3, #0
	bl FUN_0800192C
_08022CB4:
	cmp r7, #2
	beq _08022CDC
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r5, r1
	str r7, [r0]
	ldrh r2, [r5, #8]
	lsls r1, r2, #4
	ldr r0, _08022CF4 @ => 0x08062B68
	adds r1, r1, r0
	ldr r3, _08022CF8 @ => 0x09FB6334
	lsls r0, r7, #2
	lsls r2, r2, #3
	adds r0, r0, r2
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_0800192C
_08022CDC:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022CE4: .4byte ROMREF_08062B78
_08022CE8: .4byte ROMREF_08062B58
_08022CEC: .4byte gUnk_03001DE8
_08022CF0: .4byte ROMREF_09FB633C
_08022CF4: .4byte ROMREF_08062B68
_08022CF8: .4byte ROMREF_09FB6334

	thumb_func_start FUN_08022CFC
FUN_08022CFC: @ 0x08022CFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	bl FUN_08021320
	adds r7, r0, #0
	movs r6, #0
	ldr r0, _08022D2C @ => 0x03001E04
	mov r8, r0
	ldr r1, _08022D30 @ => 0x08062BB8
	mov sb, r1
	movs r2, #0xc
	add r2, sb
	mov sl, r2
_08022D1E:
	cmp r6, #1
	beq _08022D48
	cmp r6, #1
	bgt _08022D34
	cmp r6, #0
	beq _08022D3E
	b _08022D66
	.align 2, 0
_08022D2C: .4byte gUnk_03001E04
_08022D30: .4byte ROMREF_08062BB8
_08022D34:
	cmp r6, #2
	beq _08022D52
	cmp r6, #3
	beq _08022D5C
	b _08022D66
_08022D3E:
	adds r0, r7, #0
	movs r1, #0
	bl FUN_08021350
	b _08022D68
_08022D48:
	adds r0, r7, #0
	movs r1, #1
	bl FUN_08021350
	b _08022D68
_08022D52:
	adds r0, r7, #0
	movs r1, #2
	bl FUN_08021350
	b _08022D68
_08022D5C:
	adds r0, r7, #0
	movs r1, #3
	bl FUN_08021350
	b _08022D68
_08022D66:
	movs r0, #0
_08022D68:
	cmp r0, #0x19
	bne _08022D78
	mov r4, r8
	adds r1, r6, r4
	movs r0, #3
	strb r0, [r1]
	movs r0, #2
	b _08022D98
_08022D78:
	cmp r0, #0x10
	bls _08022D84
	mov r5, r8
	adds r1, r6, r5
	movs r0, #2
	b _08022D96
_08022D84:
	cmp r0, #8
	bhi _08022D90
	mov r0, r8
	adds r1, r6, r0
	movs r0, #0
	b _08022D96
_08022D90:
	mov r2, r8
	adds r1, r6, r2
	movs r0, #1
_08022D96:
	strb r0, [r1]
_08022D98:
	lsls r0, r0, #4
	ldr r1, _08022E04 @ => 0x08062B88
	adds r0, r0, r1
	lsls r5, r6, #4
	mov r4, sb
	adds r3, r5, r4
	movs r2, #0
	ldrsh r1, [r3, r2]
	mov r2, sb
	adds r2, #4
	adds r2, r5, r2
	movs r4, #0
	ldrsh r2, [r2, r4]
	ldrb r3, [r3, #8]
	movs r4, #0
	str r4, [sp]
	bl FUN_0802D680
	lsls r4, r6, #2
	ldr r1, _08022E08 @ => 0x03001DF4
	adds r4, r4, r1
	str r0, [r4]
	add r5, sl
	ldr r3, [r5]
	adds r0, #0xa7
	movs r1, #1
	ands r3, r1
	lsls r3, r3, #4
	ldrb r1, [r0]
	movs r5, #0x11
	rsbs r5, r5, #0
	adds r2, r5, #0
	ands r1, r2
	orrs r1, r3
	strb r1, [r0]
	ldr r2, [r4]
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08022D1E
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022E04: .4byte ROMREF_08062B88
_08022E08: .4byte gUnk_03001DF4

	thumb_func_start LetsWatchTheShow_Terminate
LetsWatchTheShow_Terminate: @ 0x08022E0C
	push {lr}
	movs r0, #0x3f
	movs r1, #0
	bl FUN_0804582C
	ldr r0, _08022E28 @ => 0x03002C40
	bl FUN_08000BF8
	bl FUN_0800CB20
	bl FUN_08015834
	pop {r0}
	bx r0
	.align 2, 0
_08022E28: .4byte gUnk_03002C40
