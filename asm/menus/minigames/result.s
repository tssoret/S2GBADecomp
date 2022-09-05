.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start MinigameResult_Init
MinigameResult_Init: @ 0x08037AD4
	push {r4, lr}
	ldr r4, _08037B04 @ => 0x03004720
	ldr r0, [r4, #4]
	ldr r2, _08037B08 @ => 0x0000074D
	adds r1, r0, r2
	movs r2, #1
	bl FUN_08034D60
	ldr r3, _08037B0C @ => 0x03002440
	movs r2, #0
	str r2, [r3, #8]
	str r2, [r3, #0xc]
	str r2, [r3]
	str r2, [r3, #4]
	movs r0, #0x3c
	str r0, [r4, #0x18]
	str r2, [r4, #0x14]
	ldr r1, [r4, #4]
	subs r0, #0x3d
	cmp r1, r0
	bne _08037B10
	movs r0, #1
	str r0, [r3, #0x10]
	b _08037B12
	.align 2, 0
_08037B04: .4byte gUnk_03004720
_08037B08: .4byte 0x0000074D
_08037B0C: .4byte gUnk_03002440
_08037B10:
	str r2, [r3, #0x10]
_08037B12:
	bl FUN_08037F2C
	bl FUN_08037CDC
	bl FUN_08035580
	cmp r0, #1
	bne _08037B3A
	ldr r3, _08037B58 @ => 0x03004720
	ldr r0, [r3, #4]
	ldr r1, [r3, #8]
	ldr r2, _08037B5C @ => 0x030047F0
	ldr r2, [r2]
	ldr r3, [r3, #0xc]
	bl FUN_08038308
	cmp r0, #0
	beq _08037B3A
	bl FUN_08037E68
_08037B3A:
	ldr r0, _08037B60 @ => 0x0300407C
	bl FUN_0801E138
	cmp r0, #0x15
	bne _08037BB0
	ldr r0, _08037B58 @ => 0x03004720
	ldr r0, [r0, #4]
	cmp r0, #6
	bhi _08037BB0
	lsls r0, r0, #2
	ldr r1, _08037B64 @ =_08037B68
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08037B58: .4byte gUnk_03004720
_08037B5C: .4byte gUnk_030047F0
_08037B60: .4byte gEpisode_Data
_08037B64: .4byte _08037B68
_08037B68: @ jump table
	.4byte _08037B8C @ case 0
	.4byte _08037BB0 @ case 1
	.4byte _08037BA8 @ case 2
	.4byte _08037B84 @ case 3
	.4byte _08037BB0 @ case 4
	.4byte _08037B94 @ case 5
	.4byte _08037B9C @ case 6
_08037B84:
	ldr r0, _08037B88 @ => 0x00000265
	b _08037BA0
	.align 2, 0
_08037B88: .4byte 0x00000265
_08037B8C:
	ldr r0, _08037B90 @ => 0x00000266
	b _08037BA0
	.align 2, 0
_08037B90: .4byte 0x00000266
_08037B94:
	ldr r0, _08037B98 @ => 0x00000267
	b _08037BA0
	.align 2, 0
_08037B98: .4byte 0x00000267
_08037B9C:
	movs r0, #0x9a
	lsls r0, r0, #2
_08037BA0:
	movs r1, #1
	bl FUN_080213A4
	b _08037BB0
_08037BA8:
	ldr r0, _08037BC0 @ => 0x00000269
	movs r1, #1
	bl FUN_080213A4
_08037BB0:
	movs r0, #0x3f
	movs r1, #0
	bl FUN_080457F4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08037BC0: .4byte 0x00000269

	thumb_func_start MinigameResult_Handler
MinigameResult_Handler: @ 0x08037BC4
	push {r4, r5, r6, lr}
	ldr r5, _08037BDC @ => 0x03004720
	ldr r2, [r5, #0x14]
	adds r6, r5, #0
	cmp r2, #1
	beq _08037C60
	cmp r2, #1
	blo _08037BE0
	cmp r2, #2
	beq _08037CC2
	b _08037CD2
	.align 2, 0
_08037BDC: .4byte gUnk_03004720
_08037BE0:
	ldr r0, [r5, #0x18]
	subs r0, #1
	str r0, [r5, #0x18]
	cmp r0, #0
	bne _08037BEE
	movs r0, #1
	str r0, [r5, #0x14]
_08037BEE:
	ldr r0, [r5, #4]
	ldr r4, _08037C28 @ => 0x030047F0
	cmp r0, #0
	bne _08037C34
	ldr r0, [r4]
	cmp r0, #4
	bne _08037C34
	ldr r4, _08037C2C @ => 0x03002440
	adds r0, r4, #0
	adds r0, #0x18
	str r0, [r4, #0x14]
	ldr r3, _08037C30 @ => 0x08069470
	ldr r0, [r3, #0x48]
	str r0, [r4, #0x20]
	ldr r0, [r3, #0x4c]
	str r0, [r4, #0x24]
	movs r0, #1
	str r0, [r4, #0x18]
	ldr r1, [r5, #8]
	adds r2, r1, #0
	adds r2, #0x78
	ldr r0, [r3, #0x34]
	muls r0, r2, r0
	bl __udivsi3
	lsls r0, r0, #1
	str r0, [r4, #0x1c]
	b _08037CD2
	.align 2, 0
_08037C28: .4byte gUnk_030047F0
_08037C2C: .4byte gUnk_03002440
_08037C30: .4byte ROMREF_08069470
_08037C34:
	ldr r3, _08037C58 @ => 0x03002440
	ldr r0, [r6, #4]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #5
	ldr r2, [r6, #0xc]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	ldr r2, _08037C5C @ => 0x08069470
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r0, [r4]
	lsls r0, r0, #4
	adds r1, r1, r0
	str r1, [r3, #0x14]
	b _08037CD2
	.align 2, 0
_08037C58: .4byte gUnk_03002440
_08037C5C: .4byte ROMREF_08069470
_08037C60:
	ldr r4, _08037C88 @ => 0x03002440
	ldr r0, [r4, #0x14]
	ldr r1, [r5, #8]
	ldr r0, [r0]
	cmp r1, r0
	bhs _08037C90
	movs r0, #0
	str r0, [r5, #8]
	movs r0, #2
	str r0, [r5, #0x14]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _08037CBC
	ldr r0, _08037C8C @ => 0x03003DF0
	ldr r1, [r0, #8]
	ldr r2, [r4, #8]
	adds r1, r1, r2
	str r1, [r0, #8]
	b _08037CBC
	.align 2, 0
_08037C88: .4byte gUnk_03002440
_08037C8C: .4byte gUnk_03003DF0
_08037C90:
	ldr r0, [r4, #0xc]
	adds r0, #1
	str r0, [r4, #0xc]
	ands r0, r2
	cmp r0, #0
	beq _08037CA2
	movs r0, #0xbb
	bl FUN_0804DE0C
_08037CA2:
	ldr r2, [r4, #0x14]
	ldr r0, [r5, #8]
	ldr r1, [r2]
	subs r0, r0, r1
	str r0, [r5, #8]
	ldr r0, [r4, #8]
	ldr r1, [r2, #4]
	adds r0, r0, r1
	ldr r1, [r2, #8]
	ldr r2, [r2, #0xc]
	bl FUN_0802C644
	str r0, [r4, #8]
_08037CBC:
	bl FUN_08037CDC
	b _08037CD2
_08037CC2:
	ldr r0, _08037CD8 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08037CD2
	bl FUN_08035534
_08037CD2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08037CD8: .4byte gUnk_030042B0

	thumb_func_start FUN_08037CDC
FUN_08037CDC: @ 0x08037CDC
	push {r4, r5, lr}
	sub sp, #0xc
	mov r4, sp
	mov r0, sp
	movs r1, #0
	movs r2, #5
	bl memset
	movs r0, #0x3a
	strb r0, [r4, #1]
	movs r0, #4
	movs r1, #1
	movs r2, #0
	bl FUN_0801FEA0
	ldr r1, _08037D08 @ => 0x03004720
	ldr r0, [r1, #4]
	cmp r0, #6
	bhi _08037D0C
	cmp r0, #1
	bhs _08037D8C
	b _08037D10
	.align 2, 0
_08037D08: .4byte gUnk_03004720
_08037D0C:
	cmp r0, #7
	bne _08037DDE
_08037D10:
	ldr r0, _08037D5C @ => 0x03004720
	ldr r5, [r0, #8]
	adds r0, r5, #0
	movs r1, #0x3c
	bl __udivsi3
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0x3c
	bl __umodsi3
	adds r5, r0, #0
	mov r0, sp
	adds r4, #0x30
	strb r4, [r0]
	mov r4, sp
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	adds r0, #0x30
	strb r0, [r4, #2]
	mov r4, sp
	adds r0, r5, #0
	movs r1, #0xa
	bl __umodsi3
	adds r0, #0x30
	strb r0, [r4, #3]
	ldr r4, _08037D60 @ => 0x03002440
	ldr r0, [r4]
	cmp r0, #0
	beq _08037D64
	mov r1, sp
	bl FUN_08050BC8
	b _08037DDE
	.align 2, 0
_08037D5C: .4byte gUnk_03004720
_08037D60: .4byte gUnk_03002440
_08037D64:
	mov r0, sp
	str r0, [sp, #8]
	add r0, sp, #8
	bl FUN_08050940
	adds r2, r0, #0
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2, #0xc]
	adds r3, r2, #0
	adds r3, #0xa9
	ldrb r1, [r3]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	str r2, [r4]
	b _08037DDE
_08037D8C:
	ldr r0, [r1, #8]
	bl FUN_080203A8
	ldr r5, _08037DAC @ => 0x03002440
	ldr r4, [r5]
	cmp r4, #0
	beq _08037DB4
	ldr r0, _08037DB0 @ => 0x00000762
	bl FUN_08050820
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_08050BC8
	b _08037DDE
	.align 2, 0
_08037DAC: .4byte gUnk_03002440
_08037DB0: .4byte 0x00000762
_08037DB4:
	ldr r0, _08037DF4 @ => 0x00000762
	bl FUN_08050820
	str r0, [sp, #8]
	add r0, sp, #8
	bl FUN_08050940
	adds r2, r0, #0
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2, #0xc]
	adds r3, r2, #0
	adds r3, #0xa9
	ldrb r1, [r3]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	str r2, [r5]
_08037DDE:
	ldr r4, _08037DF8 @ => 0x03002440
	ldr r0, [r4]
	movs r1, #0x78
	movs r2, #0x4a
	bl FUN_08050BDC
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _08037E00
	ldr r0, _08037DFC @ => 0x00000619
	b _08037E04
	.align 2, 0
_08037DF4: .4byte 0x00000762
_08037DF8: .4byte gUnk_03002440
_08037DFC: .4byte 0x00000619
_08037E00:
	movs r0, #0xec
	lsls r0, r0, #3
_08037E04:
	bl FUN_08050820
	str r0, [sp, #8]
	ldr r4, _08037E20 @ => 0x03002440
	ldr r0, [r4, #8]
	bl FUN_080203A8
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _08037E24
	ldr r1, [sp, #8]
	bl FUN_08050BC8
	b _08037E50
	.align 2, 0
_08037E20: .4byte gUnk_03002440
_08037E24:
	movs r0, #4
	movs r1, #1
	movs r2, #0
	bl FUN_0801FEA0
	add r0, sp, #8
	bl FUN_08050940
	adds r2, r0, #0
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2, #0xc]
	adds r3, r2, #0
	adds r3, #0xa9
	ldrb r1, [r3]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	str r2, [r4, #4]
_08037E50:
	ldr r0, _08037E64 @ => 0x03002440
	ldr r0, [r0, #4]
	movs r1, #0x78
	movs r2, #0x72
	bl FUN_08050BDC
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08037E64: .4byte gUnk_03002440

	thumb_func_start FUN_08037E68
FUN_08037E68: @ 0x08037E68
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, _08037F1C @ => 0x03004720
	ldr r0, [r0, #4]
	bl FUN_080383F8
	movs r0, #3
	movs r1, #1
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _08037F20 @ => 0x0000075E
	bl FUN_08050820
	str r0, [sp, #4]
	add r0, sp, #4
	bl FUN_08050940
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r4, #0xc]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0xf
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0xa9
	ldrb r1, [r2]
	subs r0, #0x1c
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08037F24 @ => FUN_08037FC8
	str r0, [r4, #0x50]
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x2b
	bl FUN_08050BDC
	movs r7, #0xa0
	lsls r7, r7, #0xe
	movs r6, #1
_08037EC2:
	asrs r1, r7, #0x10
	movs r0, #0
	str r0, [sp]
	ldr r0, _08037F28 @ => 0x08069970
	movs r2, #0x27
	movs r3, #1
	bl FUN_0802D680
	str r0, [r4, #0x58]
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, _08037F1C @ => 0x03004720
	ldr r5, [r0, #4]
	bl FUN_08035580
	movs r1, #0
	cmp r0, #1
	bne _08037EF0
	movs r1, #1
_08037EF0:
	adds r0, r5, #0
	bl FUN_08038430
	adds r1, r0, #0
	lsls r1, r1, #2
	adds r1, #2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl FUN_08000E44
	movs r0, #0x90
	lsls r0, r0, #0x10
	adds r7, r7, r0
	subs r6, #1
	cmp r6, #0
	bge _08037EC2
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037F1C: .4byte gUnk_03004720
_08037F20: .4byte 0x0000075E
_08037F24: .4byte FUN_08037FC8
_08037F28: .4byte ROMREF_08069970

	thumb_func_start FUN_08037F2C
FUN_08037F2C: @ 0x08037F2C
	push {r4, lr}
	sub sp, #8
	ldr r0, _08037F54 @ => 0x0806946C
	ldr r0, [r0]
	bl FUN_0801FE58
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #3
	movs r1, #0
	bl FUN_0801FEA0
	ldr r0, _08037F58 @ => 0x03004720
	ldr r0, [r0, #4]
	cmp r0, #6
	bhi _08037F5C
	cmp r0, #1
	bhs _08037F68
	b _08037F60
	.align 2, 0
_08037F54: .4byte ROMREF_0806946C
_08037F58: .4byte gUnk_03004720
_08037F5C:
	cmp r0, #7
	bne _08037F70
_08037F60:
	ldr r0, _08037F64 @ => 0x0000075F
	b _08037F72
	.align 2, 0
_08037F64: .4byte 0x0000075F
_08037F68:
	ldr r0, _08037F6C @ => 0x00000616
	b _08037F72
	.align 2, 0
_08037F6C: .4byte 0x00000616
_08037F70:
	ldr r0, _08037F9C @ => 0x00000615
_08037F72:
	bl FUN_08050820
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r1, #0x78
	movs r2, #0x3c
	movs r3, #0xc8
	bl FUN_08020098
	adds r4, r0, #0
	ldr r0, _08037FA0 @ => 0x03002440
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _08037FA4
	movs r0, #0xc3
	lsls r0, r0, #3
	bl FUN_08050820
	b _08037FAA
	.align 2, 0
_08037F9C: .4byte 0x00000615
_08037FA0: .4byte gUnk_03002440
_08037FA4:
	ldr r0, _08037FC4 @ => 0x00000617
	bl FUN_08050820
_08037FAA:
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #0xc8
	bl FUN_08020098
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08037FC4: .4byte 0x00000617

	thumb_func_start FUN_08037FC8
FUN_08037FC8: @ 0x08037FC8
	push {r4, lr}
	adds r1, r0, #0
	movs r0, #0x90
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08038008
	movs r0, #0xf
	strh r0, [r2]
	ldr r2, [r1, #0xc]
	movs r0, #1
	ands r2, r0
	cmp r1, #0
	beq _08038008
	movs r4, #2
	rsbs r4, r4, #0
	movs r3, #1
_08037FF2:
	cmp r2, #0
	beq _08037FFC
	ldr r0, [r1, #0xc]
	ands r0, r4
	b _08038000
_08037FFC:
	ldr r0, [r1, #0xc]
	orrs r0, r3
_08038000:
	str r0, [r1, #0xc]
	ldr r1, [r1, #0x58]
	cmp r1, #0
	bne _08037FF2
_08038008:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start MinigameResult_Terminate
MinigameResult_Terminate: @ 0x08038010
	push {lr}
	movs r0, #0x3f
	movs r1, #0
	bl FUN_0804582C
	ldr r0, _08038034 @ => 0x03002C40
	bl FUN_08000BF8
	bl FUN_0804E0F8
	ldr r1, _08038038 @ => 0x03006528
	ldrb r2, [r1, #6]
	movs r0, #2
	ldrb r3, [r1, #6]
	orrs r0, r2
	strb r0, [r1, #6]
	pop {r0}
	bx r0
	.align 2, 0
_08038034: .4byte gUnk_03002C40
_08038038: .4byte gUnk_03006528
