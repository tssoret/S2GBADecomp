.include "asm/constants.s"
.include "asm/macros.s"
.include "data/lists/sounds.inc"

.syntax unified

	thumb_func_start BoardroomMenu_Init
BoardroomMenu_Init: @ 0x0800DB28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	ldr r1, _0800DC24 @ => 0x03004720
	ldr r0, [r1, #8]
	cmp r0, #2
	bne _0800DB40
	bl FUN_0802ADBC
_0800DB40:
	movs r0, SOUNDTRACK_BOARDROOM
	bl FUN_0804DE84
	add r1, sp, #0x18
	movs r0, #0
	strh r0, [r1]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _0800DC28 @ => 0x01008000
	add r0, sp, #0x18
	bl SVC_CpuSet
	movs r0, #0
	bl FUN_0805273C
	movs r0, #0
	bl FUN_0800C558
	movs r0, #0x80
	lsls r0, r0, #5
	bl FUN_0800C5EC
	ldr r0, _0800DC2C @ => 0x0805A880
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C418
	ldr r0, _0800DC30 @ => 0x0805A884
	ldr r1, [r0]
	movs r0, #2
	bl FUN_0800C434
	ldr r0, _0800DC34 @ => 0x0805A888
	ldr r4, [r0]
	movs r0, #1
	adds r1, r4, #0
	bl FUN_0800C418
	ldr r0, _0800DC38 @ => 0x0805A88C
	ldr r1, [r0]
	movs r0, #0
	bl FUN_0800C418
	movs r0, #2
	bl FUN_0800C5FC
	movs r0, #1
	bl FUN_0800C5FC
	movs r0, #0
	bl FUN_0800C5FC
	adds r0, r4, #0
	bl FUN_0801FE58
	bl FUN_08042448
	bl FUN_0800F40C
	movs r4, #0
	ldr r6, _0800DC3C @ => 0xFFFF0000
	ldr r7, _0800DC40 @ => 0x0000FFFF
	movs r0, #0
	str r0, [sp, #0x28]
	ldr r1, _0800DC44 @ => 0xFFFFFF00
	mov r8, r1
	ldr r0, _0800DC48 @ => 0xFFFF00FF
	mov sb, r0
	ldr r1, _0800DC4C @ => 0xFF00FFFF
	mov sl, r1
	ldr r5, _0800DC50 @ => 0x00FFFFFF
	movs r0, #0
	ldr r2, _0800DC54 @ => 0x080BBFA8
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r1, [sp, #0x28]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	add r0, sp, #0x1c
	movs r1, #3
	movs r3, #1
	bl FUN_0800D83C
	ldr r0, _0800DC24 @ => 0x03004720
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _0800DC60
	movs r1, #0
	movs r0, #0
	str r0, [sp, #0x34]
	ldr r2, _0800DC58 @ => 0x080BF984
	ldr r3, _0800DC5C @ => 0x00000259
	str r4, [sp]
	str r4, [sp, #4]
	movs r0, #0x10
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x34]
	str r1, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x14]
	add r0, sp, #0x20
	movs r1, #2
	bl FUN_0800D83C
	movs r0, #2
	bl FUN_0800C4BC
	movs r0, #1
	bl FUN_0800C4D0
	b _0800DC84
	.align 2, 0
_0800DC24: .4byte gUnk_03004720
_0800DC28: .4byte 0x01008000
_0800DC2C: .4byte ROMREF_0805A880
_0800DC30: .4byte ROMREF_0805A884
_0800DC34: .4byte ROMREF_0805A888
_0800DC38: .4byte ROMREF_0805A88C
_0800DC3C: .4byte 0xFFFF0000
_0800DC40: .4byte 0x0000FFFF
_0800DC44: .4byte 0xFFFFFF00
_0800DC48: .4byte 0xFFFF00FF
_0800DC4C: .4byte 0xFF00FFFF
_0800DC50: .4byte 0x00FFFFFF
_0800DC54: .4byte ROMREF_080BBFA8
_0800DC58: .4byte ROMREF_080BF984
_0800DC5C: .4byte 0x00000259
_0800DC60:
	movs r0, #0
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	ldr r2, _0800DCB0 @ => 0x080C0E88
	ldr r3, _0800DCB4 @ => 0x00000259
	str r1, [sp]
	str r1, [sp, #4]
	movs r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x38]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	add r0, sp, #0x24
	movs r1, #2
	bl FUN_0800D83C
_0800DC84:
	movs r0, #1
	movs r1, #2
	movs r2, #6
	movs r3, #6
	bl FUN_08021428
	bl FUN_0800E77C
	ldr r6, _0800DCB8 @ => 0x03004720
	ldr r5, [r6, #8]
	cmp r5, #1
	bne _0800DCC0
	ldr r0, _0800DCBC @ => 0x0805AC18
	ldr r0, [r0]
	bl FUN_0800F5B4
	str r5, [r6, #0x14]
	movs r0, #0
	str r0, [r6, #4]
	str r0, [r6, #8]
	b _0800DD24
	.align 2, 0
_0800DCB0: .4byte ROMREF_080C0E88
_0800DCB4: .4byte 0x00000259
_0800DCB8: .4byte gUnk_03004720
_0800DCBC: .4byte ROMREF_0805AC18
_0800DCC0:
	cmp r5, #3
	bne _0800DCE0
	ldr r4, _0800DCDC @ => 0x0805ABE8
	bl FUN_0800F718
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r0, [r0]
	bl FUN_0800F5B4
	str r5, [r6, #0x14]
	str r5, [r6, #4]
	b _0800DCF2
	.align 2, 0
_0800DCDC: .4byte ROMREF_0805ABE8
_0800DCE0:
	cmp r5, #2
	bne _0800DCFC
	ldr r0, _0800DCF8 @ => 0x0805AC18
	ldr r0, [r0, #0x1c]
	bl FUN_0800F5B4
	str r5, [r6, #0x14]
	movs r0, #8
	str r0, [r6, #4]
_0800DCF2:
	movs r0, #0
	str r0, [r6, #8]
	b _0800DD24
	.align 2, 0
_0800DCF8: .4byte ROMREF_0805AC18
_0800DCFC:
	cmp r5, #4
	bne _0800DD12
	movs r0, #0
	str r0, [r6, #0x14]
	movs r0, #1
	bl FUN_0800C4BC
	movs r0, #0xc
	bl FUN_0800F7C8
	b _0800DD24
_0800DD12:
	movs r0, #0
	str r0, [r6, #0x14]
	movs r0, #0xb
	str r0, [r6, #4]
	movs r0, #0x1e
	str r0, [r6, #0x18]
	movs r0, #1
	bl FUN_0800F14C
_0800DD24:
	movs r0, #0x3f
	movs r1, #0
	bl FUN_080457F4
	ldr r0, _0800DD68 @ => 0x03004720
	ldr r0, [r0, #0x14]
	cmp r0, #1
	beq _0800DD3C
	cmp r0, #3
	beq _0800DD3C
	cmp r0, #2
	bne _0800DD58
_0800DD3C:
	movs r0, #2
	movs r1, #0x1c
	bl FUN_08045594
	movs r0, #0
	movs r1, #0x10
	bl FUN_080455AC
	ldr r0, _0800DD6C @ => 0x0805AD1C
	movs r1, #2
	bl FUN_08051EA8
	bl FUN_08052004
_0800DD58:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800DD68: .4byte gUnk_03004720
_0800DD6C: .4byte ROMREF_0805AD1C

	thumb_func_start BoardroomMenu_Handler
BoardroomMenu_Handler: @ 0x0800DD70
	push {r4, r5, r6, lr}
	sub sp, #0x1c
	ldr r4, _0800DD90 @ => 0x03004720
	ldr r0, [r4, #0x14]
	cmp r0, #1
	bne _0800DD7E
	b _0800DEEC
_0800DD7E:
	cmp r0, #1
	blo _0800DD94
	cmp r0, #2
	bne _0800DD88
	b _0800DFB4
_0800DD88:
	cmp r0, #3
	bne _0800DD8E
	b _0800DF12
_0800DD8E:
	b _0800DFE8
	.align 2, 0
_0800DD90: .4byte gUnk_03004720
_0800DD94:
	ldr r0, [r4, #4]
	subs r0, #0xb
	cmp r0, #0x10
	bls _0800DD9E
	b _0800DFE8
_0800DD9E:
	lsls r0, r0, #2
	ldr r1, _0800DDA8 @ =_0800DDAC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800DDA8: .4byte _0800DDAC
_0800DDAC: @ jump table
	.4byte _0800DE16 @ case 0
	.4byte _0800DDF0 @ case 1
	.4byte _0800DDF6 @ case 2
	.4byte _0800DE10 @ case 3
	.4byte _0800DE1C @ case 4
	.4byte _0800DE22 @ case 5
	.4byte _0800DE28 @ case 6
	.4byte _0800DE2E @ case 7
	.4byte _0800DE34 @ case 8
	.4byte _0800DE3A @ case 9
	.4byte _0800DE40 @ case 10
	.4byte _0800DE64 @ case 11
	.4byte _0800DFCC @ case 12
	.4byte _0800DECC @ case 13
	.4byte _0800DED2 @ case 14
	.4byte _0800DED2 @ case 15
	.4byte _0800DECC @ case 16
_0800DDF0:
	bl FUN_080103DC
	b _0800DFE8
_0800DDF6:
	bl FUN_0800FF6C
	ldr r0, _0800DE0C @ => 0x030033D0
	adds r0, #0x50
	ldrb r0, [r0]
	cmp r0, #4
	bne _0800DE06
	b _0800DFE8
_0800DE06:
	bl FUN_080100CC
	b _0800DFE8
	.align 2, 0
_0800DE0C: .4byte gUnk_030033D0
_0800DE10:
	bl FUN_08010408
	b _0800DFE8
_0800DE16:
	bl FUN_0800E2D0
	b _0800DFE8
_0800DE1C:
	bl FUN_08010828
	b _0800DFE8
_0800DE22:
	bl FUN_080104E8
	b _0800DFE8
_0800DE28:
	bl FUN_08010858
	b _0800DFE8
_0800DE2E:
	bl FUN_0800FE30
	b _0800DFE8
_0800DE34:
	bl FUN_0800F9E4
	b _0800DFE8
_0800DE3A:
	bl FUN_0800FE60
	b _0800DFE8
_0800DE40:
	bl FUN_0802ADBC
	ldr r4, _0800DE60 @ => 0x0300407C
	bl FUN_08021320
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_0801DC80
	movs r0, #5
	movs r1, #1
	movs r2, #0
	bl FUN_0802CED4
	b _0800DFE8
	.align 2, 0
_0800DE60: .4byte gEpisode_Data
_0800DE64:
	movs r0, #2
	bl FUN_0800C4D0
	movs r0, #0
	movs r5, #0
	movs r6, #0
	ldr r2, _0800DEBC @ => 0x080BF984
	ldr r3, _0800DEC0 @ => 0x00000259
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x10
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r6, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x14]
	add r0, sp, #0x18
	movs r1, #2
	bl FUN_0800D83C
	movs r0, #2
	bl FUN_0800C4BC
	movs r0, #1
	bl FUN_0800C4D0
	movs r0, #1
	movs r1, #2
	movs r2, #6
	movs r3, #6
	bl FUN_08021428
	ldr r1, _0800DEC4 @ => 0x0805AC18
	ldr r0, _0800DEC8 @ => 0x030033D0
	ldr r0, [r0, #8]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl FUN_0800F5B4
_0800DEB6:
	bl FUN_0800F644
	b _0800DFE8
	.align 2, 0
_0800DEBC: .4byte ROMREF_080BF984
_0800DEC0: .4byte 0x00000259
_0800DEC4: .4byte ROMREF_0805AC18
_0800DEC8: .4byte gUnk_030033D0
_0800DECC:
	bl FUN_0800ECD4
	b _0800DFE8
_0800DED2:
	ldr r0, _0800DEE8 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0800DEE0
	b _0800DFE8
_0800DEE0:
	bl FUN_0800F6E8
	b _0800DFE8
	.align 2, 0
_0800DEE8: .4byte gUnk_030042B0
_0800DEEC:
	ldr r0, [r4, #4]
	cmp r0, #1
	beq _0800DFCC
	cmp r0, #1
	blo _0800DEB6
	cmp r0, #2
	bne _0800DFE8
	bl FUN_08021320
	bl FUN_0801E0C8
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #1
	movs r1, #4
	bl FUN_0802CED4
	b _0800DFE8
_0800DF12:
	ldr r0, [r4, #4]
	subs r0, #3
	cmp r0, #4
	bhi _0800DFE8
	lsls r0, r0, #2
	ldr r1, _0800DF24 @ =_0800DF28
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800DF24: .4byte _0800DF28
_0800DF28: @ jump table
	.4byte _0800DEB6 @ case 0
	.4byte _0800DFCC @ case 1
	.4byte _0800DF3C @ case 2
	.4byte _0800DFCC @ case 3
	.4byte _0800DFAC @ case 4
_0800DF3C:
	bl FUN_08042448
	ldr r0, _0800DF9C @ => 0x030033C0
	ldr r2, [r0]
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
	movs r0, #1
	bl FUN_0800C5FC
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl FUN_0800CCCC
	movs r0, #2
	movs r1, #0x1c
	bl FUN_08045594
	movs r0, #0
	movs r1, #0x10
	bl FUN_080455AC
	ldr r0, _0800DFA0 @ => 0x0805AD1C
	movs r1, #2
	bl FUN_08051EA8
	bl FUN_08052004
	movs r0, #4
	bl FUN_0804254C
	adds r1, r0, #0
	ldr r0, _0800DFA4 @ => 0x0805ABE8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [r0, #0x2c]
	adds r0, r0, r1
	bl FUN_0800F5B4
	bl FUN_0800F644
	ldr r1, _0800DFA8 @ => 0x03004720
	movs r0, #6
	str r0, [r1, #4]
	b _0800DFE8
	.align 2, 0
_0800DF9C: .4byte gUnk_030033C0
_0800DFA0: .4byte ROMREF_0805AD1C
_0800DFA4: .4byte ROMREF_0805ABE8
_0800DFA8: .4byte gUnk_03004720
_0800DFAC:
	movs r0, #0x1d
	bl FUN_0802CEC4
	b _0800DFE8
_0800DFB4:
	ldr r0, [r4, #4]
	cmp r0, #9
	beq _0800DFCC
	cmp r0, #9
	bhi _0800DFC6
	cmp r0, #8
	bne _0800DFC4
	b _0800DEB6
_0800DFC4:
	b _0800DFE8
_0800DFC6:
	cmp r0, #0xa
	beq _0800DFD2
	b _0800DFE8
_0800DFCC:
	bl FUN_0800F20C
	b _0800DFE8
_0800DFD2:
	bl FUN_0800F7E4
	movs r0, #0
	str r0, [r4, #0x14]
	bl FUN_08021320
	bl FUN_0800F848
	movs r0, #0xc
	bl FUN_0800F7C8
_0800DFE8:
	add sp, #0x1c
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start FUN_0800DFF0
FUN_0800DFF0: @ 0x0800DFF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r0, _0800E010 @ => 0x03004720
	ldr r1, [r0, #4]
	adds r7, r0, #0
	cmp r1, #0xf
	beq _0800E01E
	cmp r1, #0xf
	bhi _0800E014
	cmp r1, #0xc
	beq _0800E024
	b _0800E02A
	.align 2, 0
_0800E010: .4byte gUnk_03004720
_0800E014:
	cmp r1, #0x12
	bne _0800E02A
	movs r0, #0
	str r0, [sp, #0x18]
	b _0800E02E
_0800E01E:
	movs r1, #1
	str r1, [sp, #0x18]
	b _0800E02E
_0800E024:
	movs r2, #2
	str r2, [sp, #0x18]
	b _0800E02E
_0800E02A:
	movs r3, #0
	str r3, [sp, #0x18]
_0800E02E:
	ldr r3, _0800E0D0 @ => 0x0805AC74
	ldr r0, [sp, #0x18]
	lsls r1, r0, #3
	subs r0, r1, r0
	lsls r2, r0, #3
	adds r0, r3, #0
	adds r0, #8
	adds r0, r2, r0
	ldr r6, [r0]
	adds r0, r3, #0
	adds r0, #0xc
	adds r0, r2, r0
	ldr r0, [r0]
	mov sl, r0
	adds r0, r3, #0
	adds r0, #0x10
	adds r0, r2, r0
	ldr r0, [r0]
	mov r8, r0
	adds r0, r3, #0
	adds r0, #0x14
	adds r0, r2, r0
	ldr r0, [r0]
	str r0, [sp, #4]
	adds r0, r3, #0
	adds r0, #0x18
	adds r0, r2, r0
	ldr r0, [r0]
	str r0, [sp, #8]
	adds r0, r3, #0
	adds r0, #0x1c
	adds r0, r2, r0
	ldr r0, [r0]
	str r0, [sp, #0xc]
	adds r0, r3, #0
	adds r0, #0x20
	adds r0, r2, r0
	ldr r0, [r0]
	str r0, [sp, #0x10]
	adds r0, r3, #0
	adds r0, #0x34
	adds r0, r2, r0
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldr r0, [r7, #4]
	str r1, [sp, #0x1c]
	cmp r0, #0xc
	beq _0800E122
	adds r0, r2, r3
	ldr r0, [r0]
	bl _call_via_r0
	lsls r0, r6, #0x18
	lsrs r6, r0, #0x18
	cmp r6, sl
	bhs _0800E122
	mov sb, r7
	mov r1, r8
	lsls r7, r1, #0x10
_0800E0A4:
	ldr r1, _0800E0D4 @ => 0x03004790
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r4, [r0]
	cmp r4, #0
	beq _0800E118
	ldr r0, _0800E0D8 @ => FUN_0802D34C
	str r0, [r4, #0x50]
	adds r0, r4, #0
	movs r1, #0xb
	bl FUN_08001FB0
	mov r2, sb
	ldr r0, [r2, #4]
	cmp r0, #0x12
	bne _0800E0DC
	ldr r0, [r4, #0x18]
	subs r1, r0, r7
	mov r3, r8
	lsls r5, r3, #0x10
	b _0800E0E4
	.align 2, 0
_0800E0D0: .4byte ROMREF_0805AC74
_0800E0D4: .4byte gUnk_03004790
_0800E0D8: .4byte FUN_0802D34C
_0800E0DC:
	ldr r0, [r4, #0x18]
	adds r1, r0, r7
	mov r0, r8
	lsls r5, r0, #0x10
_0800E0E4:
	ldr r2, [r4, #0x1c]
	adds r0, r4, #0
	bl FUN_08001728
	mov r1, sb
	ldr r0, [r1, #4]
	cmp r0, #0x12
	bne _0800E0FA
	ldr r0, [r4, #0x18]
	adds r1, r0, r5
	b _0800E0FE
_0800E0FA:
	ldr r0, [r4, #0x18]
	subs r1, r0, r5
_0800E0FE:
	ldr r2, [r4, #0x1c]
	mov r0, sb
	ldr r3, [r0, #0x18]
	adds r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r4, #0
	bl FUN_08003C0C
	adds r0, r4, #0
	movs r1, #3
	bl FUN_08001F84
_0800E118:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, sl
	blo _0800E0A4
_0800E122:
	ldr r1, [sp, #4]
	lsls r4, r1, #0x10
	ldr r2, [sp, #8]
	lsls r5, r2, #0x10
	movs r0, #2
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #0x1e
	bl FUN_0800CAFC
	movs r0, #1
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #0x1e
	bl FUN_0800CAFC
	movs r0, #2
	bl FUN_0800C4BC
	ldr r1, _0800E188 @ => 0x0805AC74
	ldr r3, [sp, #0x1c]
	ldr r2, [sp, #0x18]
	subs r0, r3, r2
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0

	thumb_func_start FUN_0800E15C
FUN_0800E15C: @ 0x0800E15C
	ldr r0, _0800E18C @ => 0x03004720
	ldr r0, [r0, #4]
	cmp r0, #0xc
	beq _0800E178
	ldr r3, [sp, #0xc]
	lsls r2, r3, #0x10
	ldr r0, [sp, #0x10]
	lsls r3, r0, #0x10
	movs r0, #0x1e
	str r0, [sp]
	movs r0, #0
	ldr r1, [sp, #0x14]
	bl FUN_08053598
_0800E178:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E188: .4byte ROMREF_0805AC74
_0800E18C: .4byte gUnk_03004720

	thumb_func_start FUN_0800E190
FUN_0800E190: @ 0x0800E190
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _0800E1B0 @ => 0x03004720
	ldr r1, [r0, #4]
	adds r4, r0, #0
	cmp r1, #0x11
	beq _0800E1B4
	cmp r1, #0x11
	bhi _0800E1BC
	cmp r1, #0xe
	beq _0800E1B8
	b _0800E1BC
	.align 2, 0
_0800E1B0: .4byte gUnk_03004720
_0800E1B4:
	movs r0, #1
	b _0800E1BE
_0800E1B8:
	movs r0, #2
	b _0800E1BE
_0800E1BC:
	movs r0, #0
_0800E1BE:
	ldr r1, _0800E24C @ => 0x0805AC74
	mov ip, r1
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	mov r0, ip
	adds r0, #8
	adds r0, r1, r0
	ldr r3, [r0]
	mov r0, ip
	adds r0, #0xc
	adds r0, r1, r0
	ldr r0, [r0]
	mov r8, r0
	mov r0, ip
	adds r0, #0x10
	adds r0, r1, r0
	ldr r2, [r0]
	mov r0, ip
	adds r0, #0x24
	adds r0, r1, r0
	ldr r0, [r0]
	mov sl, r0
	mov r0, ip
	adds r0, #0x28
	adds r0, r1, r0
	ldr r0, [r0]
	mov sb, r0
	mov r0, ip
	adds r0, #0x2c
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r0, ip
	adds r0, #0x30
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp, #8]
	mov r0, ip
	adds r0, #0x34
	adds r1, r1, r0
	ldr r1, [r1]
	str r1, [sp, #0xc]
	ldr r0, [r4, #4]
	cmp r0, #0xe
	beq _0800E27E
	lsls r0, r3, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r8
	bhs _0800E27E
	adds r7, r4, #0
	lsls r6, r2, #0x10
_0800E226:
	ldr r1, _0800E250 @ => 0x03004790
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r4, [r0]
	cmp r4, #0
	beq _0800E274
	ldr r0, _0800E254 @ => FUN_0802D34C
	str r0, [r4, #0x50]
	adds r0, r4, #0
	movs r1, #0xb
	bl FUN_08001FB0
	ldr r0, [r7, #4]
	cmp r0, #0x14
	bne _0800E258
	ldr r0, [r4, #0x18]
	subs r1, r0, r6
	b _0800E25C
	.align 2, 0
_0800E24C: .4byte ROMREF_0805AC74
_0800E250: .4byte gUnk_03004790
_0800E254: .4byte FUN_0802D34C
_0800E258:
	ldr r0, [r4, #0x18]
	adds r1, r0, r6
_0800E25C:
	ldr r2, [r4, #0x1c]
	ldr r3, [r7, #0x18]
	adds r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r4, #0
	bl FUN_08003C0C
	adds r0, r4, #0
	movs r1, #3
	bl FUN_08001F84
_0800E274:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r8
	blo _0800E226
_0800E27E:
	mov r0, sl
	lsls r4, r0, #0x10
	mov r1, sb
	lsls r5, r1, #0x10
	movs r0, #2
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #0x1e
	bl FUN_0800CAFC
	movs r0, #1
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #0x1e
	bl FUN_0800CAFC
	ldr r0, _0800E2CC @ => 0x03004720
	ldr r0, [r0, #4]
	cmp r0, #0xe
	beq _0800E2BA
	ldr r0, [sp, #4]
	lsls r2, r0, #0x10
	ldr r1, [sp, #8]
	lsls r3, r1, #0x10
	movs r0, #0x1e
	str r0, [sp]
	movs r0, #0
	ldr r1, [sp, #0xc]
	bl FUN_08053598
_0800E2BA:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E2CC: .4byte gUnk_03004720

	thumb_func_start FUN_0800E2D0
FUN_0800E2D0: @ 0x0800E2D0
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _0800E314 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0800E3AE
	ldr r0, _0800E318 @ => 0x03003DF0
	ldr r1, _0800E31C @ => 0x0000036A
	adds r3, r0, r1
	ldrh r2, [r3]
	ldr r1, _0800E320 @ => 0x0805AC5C
	ldr r4, _0800E324 @ => 0x030033D0
	ldr r0, [r4, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0800E398
	movs r0, #0xb9
	bl FUN_0804DE0C
	ldr r0, [r4, #8]
	cmp r0, #5
	bhi _0800E3A6
	lsls r0, r0, #2
	ldr r1, _0800E328 @ =_0800E32C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800E314: .4byte gUnk_030042B0
_0800E318: .4byte gUnk_03003DF0
_0800E31C: .4byte 0x0000036A
_0800E320: .4byte ROMREF_0805AC5C
_0800E324: .4byte gUnk_030033D0
_0800E328: .4byte _0800E32C
_0800E32C: @ jump table
	.4byte _0800E344 @ case 0
	.4byte _0800E34C @ case 1
	.4byte _0800E34C @ case 2
	.4byte _0800E34C @ case 3
	.4byte _0800E388 @ case 4
	.4byte _0800E390 @ case 5
_0800E344:
	movs r0, #0xc
	bl FUN_0800F7C8
	b _0800E3A6
_0800E34C:
	ldr r1, _0800E37C @ => 0x03004710
	movs r0, #0x1e
	str r0, [r1]
	movs r0, #1
	bl FUN_0800C5FC
	ldr r3, _0800E380 @ => 0x0805AC38
	ldr r0, _0800E384 @ => 0x030033D0
	ldr r0, [r0, #8]
	subs r0, #1
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r0, r2, r3
	ldr r0, [r0]
	adds r1, r3, #4
	adds r1, r2, r1
	ldr r1, [r1]
	adds r3, #8
	adds r2, r2, r3
	ldr r2, [r2]
	bl FUN_0802CED4
	b _0800E3A6
	.align 2, 0
_0800E37C: .4byte gUnk_03004710
_0800E380: .4byte ROMREF_0805AC38
_0800E384: .4byte gUnk_030033D0
_0800E388:
	movs r0, #0xf
	bl FUN_0800F7C8
	b _0800E3A6
_0800E390:
	movs r0, #0x12
	bl FUN_0800F7C8
	b _0800E3A6
_0800E398:
	orrs r2, r1
	strh r2, [r3]
	movs r0, #0
	bl FUN_0800F14C
	bl FUN_0800F7BC
_0800E3A6:
	movs r0, #0xad
	bl FUN_0804DE0C
	b _0800E5C8
_0800E3AE:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800E41C
	ldr r0, _0800E3CC @ => 0x030033D0
	ldr r1, [r0, #8]
	adds r6, r0, #0
	cmp r1, #5
	bhi _0800E3F4
	lsls r0, r1, #2
	ldr r1, _0800E3D0 @ =_0800E3D4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800E3CC: .4byte gUnk_030033D0
_0800E3D0: .4byte _0800E3D4
_0800E3D4: @ jump table
	.4byte _0800E3F4 @ case 0
	.4byte _0800E3EC @ case 1
	.4byte _0800E3F4 @ case 2
	.4byte _0800E3F4 @ case 3
	.4byte _0800E3F0 @ case 4
	.4byte _0800E3F4 @ case 5
_0800E3EC:
	movs r0, #0
	b _0800E3F2
_0800E3F0:
	movs r0, #5
_0800E3F2:
	str r0, [r6, #8]
_0800E3F4:
	movs r2, #0
	ldr r5, _0800E418 @ => 0x03004790
	adds r4, r5, #0
	movs r3, #2
	rsbs r3, r3, #0
_0800E3FE:
	adds r2, #1
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldr r0, [r1, #0xc]
	ands r0, r3
	str r0, [r1, #0xc]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #5
	bls _0800E3FE
	b _0800E54E
	.align 2, 0
_0800E418: .4byte gUnk_03004790
_0800E41C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800E46C
	ldr r0, _0800E434 @ => 0x030033D0
	ldr r1, [r0, #8]
	adds r6, r0, #0
	cmp r1, #4
	bls _0800E438
	cmp r1, #5
	beq _0800E440
	b _0800E444
	.align 2, 0
_0800E434: .4byte gUnk_030033D0
_0800E438:
	cmp r1, #1
	bhs _0800E444
	str r2, [r6, #8]
	b _0800E444
_0800E440:
	movs r0, #4
	str r0, [r6, #8]
_0800E444:
	movs r2, #0
	ldr r5, _0800E468 @ => 0x03004790
	adds r4, r5, #0
	movs r3, #2
	rsbs r3, r3, #0
_0800E44E:
	adds r2, #1
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldr r0, [r1, #0xc]
	ands r0, r3
	str r0, [r1, #0xc]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #5
	bls _0800E44E
	b _0800E54E
	.align 2, 0
_0800E468: .4byte gUnk_03004790
_0800E46C:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800E4E0
	ldr r0, _0800E488 @ => 0x030033D0
	ldr r1, [r0, #8]
	adds r6, r0, #0
	cmp r1, #5
	bhi _0800E4BA
	lsls r0, r1, #2
	ldr r1, _0800E48C @ =_0800E490
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800E488: .4byte gUnk_030033D0
_0800E48C: .4byte _0800E490
_0800E490: @ jump table
	.4byte _0800E4A8 @ case 0
	.4byte _0800E4AC @ case 1
	.4byte _0800E4B0 @ case 2
	.4byte _0800E4B0 @ case 3
	.4byte _0800E4B0 @ case 4
	.4byte _0800E4B6 @ case 5
_0800E4A8:
	movs r0, #5
	b _0800E4B8
_0800E4AC:
	movs r0, #4
	b _0800E4B8
_0800E4B0:
	ldr r0, [r6, #8]
	subs r0, #1
	b _0800E4B8
_0800E4B6:
	movs r0, #0
_0800E4B8:
	str r0, [r6, #8]
_0800E4BA:
	movs r2, #0
	ldr r5, _0800E4DC @ => 0x03004790
	adds r4, r5, #0
	movs r3, #2
	rsbs r3, r3, #0
_0800E4C4:
	adds r2, #1
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldr r0, [r1, #0xc]
	ands r0, r3
	str r0, [r1, #0xc]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #5
	bls _0800E4C4
	b _0800E54E
	.align 2, 0
_0800E4DC: .4byte gUnk_03004790
_0800E4E0:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800E5B4
	ldr r0, _0800E4FC @ => 0x030033D0
	ldr r1, [r0, #8]
	adds r6, r0, #0
	cmp r1, #5
	bhi _0800E52E
	lsls r0, r1, #2
	ldr r1, _0800E500 @ =_0800E504
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800E4FC: .4byte gUnk_030033D0
_0800E500: .4byte _0800E504
_0800E504: @ jump table
	.4byte _0800E51C @ case 0
	.4byte _0800E520 @ case 1
	.4byte _0800E520 @ case 2
	.4byte _0800E520 @ case 3
	.4byte _0800E526 @ case 4
	.4byte _0800E52A @ case 5
_0800E51C:
	movs r0, #5
	b _0800E52C
_0800E520:
	ldr r0, [r6, #8]
	adds r0, #1
	b _0800E52C
_0800E526:
	movs r0, #1
	b _0800E52C
_0800E52A:
	movs r0, #0
_0800E52C:
	str r0, [r6, #8]
_0800E52E:
	movs r2, #0
	ldr r5, _0800E5A8 @ => 0x03004790
	adds r4, r5, #0
	movs r3, #2
	rsbs r3, r3, #0
_0800E538:
	adds r2, #1
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldr r0, [r1, #0xc]
	ands r0, r3
	str r0, [r1, #0xc]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #5
	bls _0800E538
_0800E54E:
	ldr r0, [r6, #8]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldr r0, [r1, #0xc]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0xc]
	movs r0, #3
	str r0, [sp]
	movs r0, #1
	movs r1, #8
	movs r2, #0x11
	movs r3, #0x10
	bl FUN_0800C790
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #3
	movs r1, #0
	bl FUN_0801FEA0
	ldr r1, _0800E5AC @ => 0x0805AA60
	ldr r0, [r6, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl FUN_08050820
	adds r3, r0, #0
	ldr r0, _0800E5B0 @ => 0x0805AB6C
	movs r2, #0x30
	ldrsh r1, [r0, r2]
	movs r5, #0x32
	ldrsh r2, [r0, r5]
	str r4, [sp]
	movs r0, #0x65
	bl FUN_0801F8B8
	movs r0, #0xb2
	bl FUN_0804DE0C
	b _0800E5C8
	.align 2, 0
_0800E5A8: .4byte gUnk_03004790
_0800E5AC: .4byte ROMREF_0805AA60
_0800E5B0: .4byte ROMREF_0805AB6C
_0800E5B4:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0800E5C8
	movs r0, #0xad
	bl FUN_0804DE0C
	movs r0, #4
	bl FUN_0800EB04
_0800E5C8:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start FUN_0800E5D0
FUN_0800E5D0: @ 0x0800E5D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	movs r0, #2
	bl FUN_0800C4D0
	movs r0, #2
	bl FUN_0800C5FC
	ldr r2, _0800E624 @ => 0x04000004
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0800E600
	movs r3, #2
_0800E5F6:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0800E5F6
_0800E600:
	ldr r4, _0800E628 @ => 0x030033D0
	ldr r2, _0800E624 @ => 0x04000004
	movs r3, #2
_0800E606:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0800E606
	ldr r0, [r4, #8]
	cmp r0, #5
	bls _0800E618
	b _0800E754
_0800E618:
	lsls r0, r0, #2
	ldr r1, _0800E62C @ =_0800E630
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800E624: .4byte 0x04000004
_0800E628: .4byte gUnk_030033D0
_0800E62C: .4byte _0800E630
_0800E630: @ jump table
	.4byte _0800E6B0 @ case 0
	.4byte _0800E754 @ case 1
	.4byte _0800E754 @ case 2
	.4byte _0800E754 @ case 3
	.4byte _0800E648 @ case 4
	.4byte _0800E6F4 @ case 5
_0800E648:
	movs r1, #0
	movs r5, #0
	ldr r2, _0800E6A0 @ => 0x080C1A24
	ldr r3, _0800E6A4 @ => 0x00000259
	str r1, [sp]
	str r1, [sp, #4]
	movs r0, #0x10
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	str r1, [sp, #0x14]
	add r0, sp, #0x18
	movs r1, #2
	bl FUN_0800D83C
	ldr r4, _0800E6A8 @ => 0xFF500000
	movs r0, #2
	adds r1, r4, #0
	movs r2, #0
	bl FUN_0800CB80
	movs r0, #1
	adds r1, r4, #0
	movs r2, #0
	bl FUN_0800CB80
	movs r3, #0xb0
	lsls r3, r3, #0x10
	movs r0, #0xa0
	lsls r0, r0, #0x10
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl FUN_08053548
	movs r0, #0
	movs r1, #0x3c
	movs r2, #0x3f
	bl FUN_080534D8
	ldr r1, _0800E6AC @ => 0x03004720
	movs r0, #0xf
	b _0800E752
	.align 2, 0
_0800E6A0: .4byte ROMREF_080C1A24
_0800E6A4: .4byte 0x00000259
_0800E6A8: .4byte 0xFF500000
_0800E6AC: .4byte gUnk_03004720
_0800E6B0:
	movs r1, #0
	movs r6, #0
	ldr r2, _0800E6E8 @ => 0x080C0E88
	ldr r3, _0800E6EC @ => 0x00000259
	str r1, [sp]
	str r1, [sp, #4]
	movs r0, #0x10
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	str r1, [sp, #0x14]
	add r0, sp, #0x1c
	movs r1, #2
	bl FUN_0800D83C
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl FUN_0800CB80
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl FUN_0800CB80
	ldr r1, _0800E6F0 @ => 0x03004720
	movs r0, #0xc
	b _0800E752
	.align 2, 0
_0800E6E8: .4byte ROMREF_080C0E88
_0800E6EC: .4byte 0x00000259
_0800E6F0: .4byte gUnk_03004720
_0800E6F4:
	movs r1, #0
	movs r7, #0
	movs r0, #0
	mov sl, r0
	ldr r2, _0800E770 @ => 0x080C2430
	ldr r3, _0800E774 @ => 0x00000259
	str r1, [sp]
	str r1, [sp, #4]
	movs r0, #0x10
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	mov r0, sl
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	add r0, sp, #0x20
	movs r1, #2
	bl FUN_0800D83C
	movs r4, #0xb1
	lsls r4, r4, #0x10
	movs r0, #2
	adds r1, r4, #0
	movs r2, #0
	bl FUN_0800CB80
	movs r0, #1
	adds r1, r4, #0
	movs r2, #0
	bl FUN_0800CB80
	movs r3, #0xf0
	lsls r3, r3, #0x10
	movs r0, #0xa0
	lsls r0, r0, #0x10
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl FUN_08053548
	movs r0, #0
	movs r1, #0x3c
	movs r2, #0x3f
	bl FUN_080534D8
	ldr r1, _0800E778 @ => 0x03004720
	movs r0, #0x12
_0800E752:
	str r0, [r1, #4]
_0800E754:
	movs r0, #2
	bl FUN_0800C4BC
	ldr r1, _0800E778 @ => 0x03004720
	movs r0, #0x1f
	str r0, [r1, #0x18]
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E770: .4byte ROMREF_080C2430
_0800E774: .4byte 0x00000259
_0800E778: .4byte gUnk_03004720

	thumb_func_start FUN_0800E77C
FUN_0800E77C: @ 0x0800E77C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0800E894 @ => 0x0805A8B0
	ldr r4, _0800E898 @ => 0x0805AB08
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r3, #2
	ldrsh r2, [r4, r3]
	movs r3, #3
	str r3, [sp]
	movs r3, #0
	bl FUN_0802D680
	ldr r1, _0800E89C @ => 0x03004790
	str r0, [r1]
	movs r5, #0
	adds r7, r1, #0
_0800E7A6:
	lsls r6, r5, #4
	ldr r0, _0800E8A0 @ => 0x0805A8D0
	mov sb, r0
	add r6, sb
	adds r0, r5, #3
	lsls r0, r0, #2
	ldr r1, _0800E898 @ => 0x0805AB08
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r3, #2
	ldrsh r2, [r0, r3]
	movs r0, #3
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #1
	bl FUN_0802D680
	adds r5, #1
	lsls r4, r5, #2
	adds r4, r4, r7
	str r0, [r4]
	ldr r1, _0800E8A4 @ => 0x09FB6204
	mov sl, r1
	ldr r2, [r1, #8]
	adds r1, r6, #0
	movs r3, #0
	bl FUN_0800192C
	ldr r1, [r4]
	ldr r0, [r1, #0xc]
	movs r2, #2
	rsbs r2, r2, #0
	mov r8, r2
	ands r0, r2
	str r0, [r1, #0xc]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #5
	bls _0800E7A6
	ldr r7, _0800E89C @ => 0x03004790
	ldr r1, [r7, #4]
	ldr r0, [r1, #0xc]
	movs r6, #1
	orrs r0, r6
	str r0, [r1, #0xc]
	mov r0, sb
	adds r0, #0x60
	ldr r4, _0800E898 @ => 0x0805AB08
	movs r3, #0x24
	ldrsh r1, [r4, r3]
	movs r3, #0x26
	ldrsh r2, [r4, r3]
	movs r3, #2
	str r3, [sp]
	movs r3, #3
	bl FUN_0802D680
	str r0, [r7, #0x1c]
	mov r5, sb
	subs r5, #0x10
	movs r0, #8
	ldrsh r1, [r4, r0]
	movs r3, #0xa
	ldrsh r2, [r4, r3]
	str r6, [sp]
	adds r0, r5, #0
	movs r3, #2
	bl FUN_0802D680
	str r0, [r7, #0x20]
	mov r4, sl
	ldr r2, [r4, #0xc]
	adds r1, r5, #0
	movs r3, #0
	bl FUN_0800192C
	ldr r0, _0800E8A8 @ => 0x03004720
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0800E8AC
	ldr r0, [r7]
	mov r1, sb
	subs r1, #0x20
	ldr r2, [r4, #4]
	movs r3, #0
	bl FUN_0800192C
	ldr r1, [r7, #4]
	ldr r0, [r1, #0xc]
	mov r2, r8
	ands r0, r2
	str r0, [r1, #0xc]
	ldr r1, [r7, #8]
	ldr r0, [r1, #0xc]
	ands r0, r2
	str r0, [r1, #0xc]
	ldr r1, [r7, #0xc]
	ldr r0, [r1, #0xc]
	ands r0, r2
	str r0, [r1, #0xc]
	ldr r1, [r7, #0x10]
	ldr r0, [r1, #0xc]
	ands r0, r2
	str r0, [r1, #0xc]
	ldr r1, [r7, #0x14]
	ldr r0, [r1, #0xc]
	ands r0, r2
	str r0, [r1, #0xc]
	ldr r1, [r7, #0x18]
	ldr r0, [r1, #0xc]
	ands r0, r2
	str r0, [r1, #0xc]
	ldr r1, [r7, #0x1c]
	ldr r0, [r1, #0xc]
	ands r0, r2
	str r0, [r1, #0xc]
	b _0800E8BC
	.align 2, 0
_0800E894: .4byte ROMREF_0805A8B0
_0800E898: .4byte ROMREF_0805AB08
_0800E89C: .4byte gUnk_03004790
_0800E8A0: .4byte ROMREF_0805A8D0
_0800E8A4: .4byte ROMREF_09FB6204
_0800E8A8: .4byte gUnk_03004720
_0800E8AC:
	ldr r0, [r7]
	mov r1, sb
	subs r1, #0x20
	mov r3, sl
	ldr r2, [r3]
	movs r3, #0
	bl FUN_0800192C
_0800E8BC:
	ldr r0, _0800E8DC @ => 0x03004790
	ldr r2, [r0, #0x20]
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E8DC: .4byte gUnk_03004790

	thumb_func_start FUN_0800E8E0
FUN_0800E8E0: @ 0x0800E8E0
	push {r4, r5, lr}
	movs r5, #0
	movs r4, #0
	ldr r0, _0800E928 @ => 0x03004720
	ldr r3, [r0, #4]
	ldr r2, _0800E92C @ => 0x030033D0
	cmp r3, #0x10
	bne _0800E8FE
	ldr r1, _0800E930 @ => 0x0805A890
	adds r0, r2, #0
	adds r0, #0x84
	ldr r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r4, [r0]
_0800E8FE:
	cmp r3, #0x13
	bne _0800E912
	ldr r1, _0800E930 @ => 0x0805A890
	adds r0, r2, #0
	adds r0, #0x8a
	ldrb r0, [r0]
	adds r0, #6
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r4, [r0]
_0800E912:
	adds r0, r2, #0
	strb r3, [r0, #0xc]
	cmp r3, #0x10
	bne _0800E934
	adds r0, #0x84
	ldr r0, [r0]
	bl FUN_08051D34
	cmp r0, #0
	beq _0800E950
	b _0800E954
	.align 2, 0
_0800E928: .4byte gUnk_03004720
_0800E92C: .4byte gUnk_030033D0
_0800E930: .4byte ROMREF_0805A890
_0800E934:
	cmp r3, #0x13
	bne _0800E950
	ldr r0, _0800E964 @ => 0x03004004
	adds r1, r2, #0
	adds r1, #0x89
	ldrb r1, [r1]
	adds r2, #0x88
	ldrb r2, [r2]
	adds r2, #2
	bl FUN_0804C504
	cmp r0, #0
	beq _0800E950
	movs r5, #1
_0800E950:
	cmp r5, #0
	beq _0800E968
_0800E954:
	movs r0, #0xbe
	bl FUN_0804DE0C
	movs r0, #3
	bl FUN_0800EB04
	b _0800E998
	.align 2, 0
_0800E964: .4byte gSocialMove_Data
_0800E968:
	ldr r0, _0800E984 @ => 0x03003DF0
	ldr r1, _0800E988 @ => 0x00000372
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r4, r0
	bgt _0800E98C
	movs r0, #0xad
	bl FUN_0804DE0C
	movs r0, #2
	bl FUN_0800EB04
	b _0800E998
	.align 2, 0
_0800E984: .4byte gUnk_03003DF0
_0800E988: .4byte 0x00000372
_0800E98C:
	movs r0, #0xbe
	bl FUN_0804DE0C
	movs r0, #1
	bl FUN_0800EB04
_0800E998:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0800E9A0
FUN_0800E9A0: @ 0x0800E9A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	movs r0, #0
	mov r8, r0
	movs r6, #0
	ldr r3, _0800E9C0 @ => 0x030033D0
	ldrb r0, [r3, #0xc]
	cmp r0, #0x10
	beq _0800E9C4
	cmp r0, #0x13
	beq _0800E9E4
	mov r7, r8
	b _0800EA26
	.align 2, 0
_0800E9C0: .4byte gUnk_030033D0
_0800E9C4:
	movs r7, #0x10
	movs r2, #0x14
	mov r8, r2
	ldr r2, _0800E9E0 @ => 0x0805A890
	adds r0, r3, #0
	adds r0, #0x84
	ldr r0, [r0]
	lsls r1, r0, #1
	adds r1, r1, r2
	ldrh r6, [r1]
	bl FUN_08051C9C
	b _0800EA26
	.align 2, 0
_0800E9E0: .4byte ROMREF_0805A890
_0800E9E4:
	movs r7, #0x19
	movs r4, #0x1d
	mov r8, r4
	ldr r1, _0800EAE0 @ => 0x0805A890
	adds r0, r3, #0
	adds r0, #0x8a
	ldrb r0, [r0]
	adds r0, #6
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r6, [r0]
	ldr r0, _0800EAE4 @ => 0x03004004
	adds r5, r3, #0
	adds r5, #0x89
	ldrb r1, [r5]
	adds r4, r3, #0
	adds r4, #0x88
	ldrb r2, [r4]
	adds r2, #2
	bl FUN_0804C4F0
	ldr r2, _0800EAE8 @ => 0x0805AD4C
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldrb r5, [r5]
	adds r0, r0, r5
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #4
	movs r1, #0x10
	bl FUN_08015B50
_0800EA26:
	ldr r4, _0800EAEC @ => 0x03003DF0
	ldr r5, _0800EAF0 @ => 0x00000372
	adds r4, r4, r5
	ldrh r0, [r4]
	subs r0, r0, r6
	strh r0, [r4]
	ldr r0, _0800EAF4 @ => 0x0805A888
	ldr r0, [r0]
	bl FUN_0801FE58
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldrh r0, [r4]
	add r1, sp, #8
	movs r2, #8
	movs r3, #4
	bl FUN_08050878
	add r0, sp, #8
	movs r1, #0
	bl FUN_080202F8
	ldr r0, _0800EAF8 @ => 0x0000081B
	bl FUN_08050820
	adds r3, r0, #0
	ldr r1, _0800EAFC @ => 0x0805AB6C
	lsls r0, r7, #2
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r4, #2
	ldrsh r2, [r0, r4]
	movs r0, #1
	str r0, [sp]
	movs r0, #0xa8
	bl FUN_0801F8B8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	movs r1, #0
	mov r0, r8
	lsls r5, r0, #2
	movs r2, #0
_0800EA8A:
	mov r0, sp
	adds r0, r0, r1
	adds r0, #8
	strb r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #7
	bls _0800EA8A
	movs r4, #1
	str r4, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0x1a
	movs r2, #0xb
	movs r3, #4
	bl FUN_0800C7A8
	movs r0, #0
	bl FUN_080203A8
	ldr r0, _0800EB00 @ => 0x0000081F
	bl FUN_08050820
	adds r3, r0, #0
	ldr r0, _0800EAFC @ => 0x0805AB6C
	adds r0, r5, r0
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r5, #2
	ldrsh r2, [r0, r5]
	str r4, [sp]
	movs r0, #0xfe
	bl FUN_0801F8B8
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EAE0: .4byte ROMREF_0805A890
_0800EAE4: .4byte gSocialMove_Data
_0800EAE8: .4byte ROMREF_0805AD4C
_0800EAEC: .4byte gUnk_03003DF0
_0800EAF0: .4byte 0x00000372
_0800EAF4: .4byte ROMREF_0805A888
_0800EAF8: .4byte 0x0000081B
_0800EAFC: .4byte ROMREF_0805AB6C
_0800EB00: .4byte 0x0000081F

	thumb_func_start FUN_0800EB04
FUN_0800EB04: @ 0x0800EB04
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #3
	movs r1, #0
	bl FUN_0801FEA0
	cmp r5, #4
	bls _0800EB1C
	b _0800EC5C
_0800EB1C:
	lsls r0, r5, #2
	ldr r1, _0800EB28 @ =_0800EB2C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800EB28: .4byte _0800EB2C
_0800EB2C: @ jump table
	.4byte _0800EB40 @ case 0
	.4byte _0800EBF4 @ case 1
	.4byte _0800EB74 @ case 2
	.4byte _0800EC0C @ case 3
	.4byte _0800EC30 @ case 4
_0800EB40:
	ldr r1, _0800EB68 @ => 0x03004720
	movs r0, #0x18
	str r0, [r1, #4]
	ldr r4, _0800EB6C @ => 0x030033D0
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldr r1, _0800EB70 @ => 0x0000082A
	adds r0, r0, r1
	bl FUN_08050820
	bl FUN_08020320
	adds r4, #0x2c
	movs r1, #0x82
	lsls r1, r1, #4
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	b _0800EC44
	.align 2, 0
_0800EB68: .4byte gUnk_03004720
_0800EB6C: .4byte gUnk_030033D0
_0800EB70: .4byte 0x0000082A
_0800EB74:
	ldr r0, _0800EB9C @ => 0x03004720
	movs r1, #0x18
	str r1, [r0, #4]
	ldr r2, _0800EBA0 @ => 0x030033D0
	ldrb r0, [r2, #0xc]
	cmp r0, #0x13
	bne _0800EBA8
	ldr r1, _0800EBA4 @ => 0x0805AA78
	adds r0, r2, #0
	adds r0, #0x8a
	ldrb r0, [r0]
	adds r0, #6
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0]
	bl FUN_08050820
	bl FUN_08020320
	b _0800EBBE
	.align 2, 0
_0800EB9C: .4byte gUnk_03004720
_0800EBA0: .4byte gUnk_030033D0
_0800EBA4: .4byte ROMREF_0805AA78
_0800EBA8:
	ldr r1, _0800EBEC @ => 0x0805AA78
	adds r0, r2, #0
	adds r0, #0x84
	ldr r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0]
	bl FUN_08050820
	bl FUN_08020320
_0800EBBE:
	ldr r4, _0800EBF0 @ => 0x030033FC
	movs r1, #0x82
	lsls r1, r1, #4
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0xb
	movs r3, #1
	bl FUN_0804139C
	bl FUN_08050814
	cmp r0, #2
	bne _0800EC6C
	adds r0, r4, #0
	subs r0, #0x2c
	ldr r1, [r0, #0x40]
	subs r1, #1
	str r1, [r0, #0x40]
	ldr r1, [r0, #0x34]
	adds r1, #2
	str r1, [r0, #0x34]
	b _0800EC6C
	.align 2, 0
_0800EBEC: .4byte ROMREF_0805AA78
_0800EBF0: .4byte gUnk_030033FC
_0800EBF4:
	ldr r1, _0800EC00 @ => 0x03004720
	movs r0, #0x19
	str r0, [r1, #4]
	ldr r0, _0800EC04 @ => 0x030033FC
	ldr r1, _0800EC08 @ => 0x00000828
	b _0800EC16
	.align 2, 0
_0800EC00: .4byte gUnk_03004720
_0800EC04: .4byte gUnk_030033FC
_0800EC08: .4byte 0x00000828
_0800EC0C:
	ldr r1, _0800EC24 @ => 0x03004720
	movs r0, #0x1a
	str r0, [r1, #4]
	ldr r0, _0800EC28 @ => 0x030033FC
	ldr r1, _0800EC2C @ => 0x00000829
_0800EC16:
	movs r2, #0x1e
	str r2, [sp]
	movs r2, #0xb
	movs r3, #0
	bl FUN_0804139C
	b _0800EC6C
	.align 2, 0
_0800EC24: .4byte gUnk_03004720
_0800EC28: .4byte gUnk_030033FC
_0800EC2C: .4byte 0x00000829
_0800EC30:
	ldr r0, _0800EC50 @ => 0x030033D0
	ldr r2, _0800EC54 @ => 0x03004720
	ldr r1, [r2, #4]
	strb r1, [r0, #0xc]
	movs r1, #0x1b
	str r1, [r2, #4]
	adds r0, #0x2c
	ldr r1, _0800EC58 @ => 0x0000074B
	movs r2, #0x1e
	str r2, [sp]
_0800EC44:
	movs r2, #0xb
	movs r3, #1
	bl FUN_0804139C
	b _0800EC6C
	.align 2, 0
_0800EC50: .4byte gUnk_030033D0
_0800EC54: .4byte gUnk_03004720
_0800EC58: .4byte 0x0000074B
_0800EC5C:
	ldr r0, _0800ECA0 @ => 0x030033FC
	movs r1, #0x1e
	str r1, [sp]
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl FUN_0804139C
_0800EC6C:
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #3
	movs r1, #0
	bl FUN_0801FEA0
	ldr r0, _0800ECA4 @ => 0x0805A88C
	ldr r0, [r0]
	bl FUN_0801FE58
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl FUN_080410E8
	ldr r4, _0800ECA0 @ => 0x030033FC
	movs r0, #8
	adds r1, r4, #0
	bl FUN_08041150
	cmp r5, #2
	bne _0800ECA8
	bl FUN_0800ED84
	b _0800ECCC
	.align 2, 0
_0800ECA0: .4byte gUnk_030033FC
_0800ECA4: .4byte ROMREF_0805A88C
_0800ECA8:
	cmp r5, #4
	bne _0800ECB2
	bl FUN_0800F000
	b _0800ECCC
_0800ECB2:
	subs r4, #0x2c
	ldr r0, [r4, #0x30]
	ldr r2, [r4, #0x3c]
	adds r2, #1
	lsls r2, r2, #3
	adds r2, #3
	ldr r3, [r4, #0x2c]
	movs r1, #1
	str r1, [sp]
	movs r1, #0x78
	bl FUN_0801F8B8
	str r0, [r4, #0x30]
_0800ECCC:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_0800ECD4
FUN_0800ECD4: @ 0x0800ECD4
	push {r4, lr}
	ldr r0, _0800ED04 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0800ED1C
	ldr r0, _0800ED08 @ => 0x030033D0
	ldr r0, [r0, #0x10]
	cmp r0, #1
	bne _0800ED24
	ldr r4, _0800ED0C @ => 0x03004720
	ldr r0, [r4, #4]
	cmp r0, #0x18
	bne _0800ED10
	movs r0, #0xb0
	bl FUN_0804DE0C
	bl FUN_0800E9A0
	bl FUN_0800F6E8
	b _0800ED54
	.align 2, 0
_0800ED04: .4byte gUnk_030042B0
_0800ED08: .4byte gUnk_030033D0
_0800ED0C: .4byte gUnk_03004720
_0800ED10:
	movs r0, #0xad
	bl FUN_0804DE0C
	movs r0, #0x15
	str r0, [r4, #4]
	b _0800ED54
_0800ED1C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800ED30
_0800ED24:
	movs r0, #0xb1
	bl FUN_0804DE0C
	bl FUN_0800F6E8
	b _0800ED54
_0800ED30:
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0800ED48
	ldr r0, _0800ED44 @ => 0x030033D0
	str r3, [r0, #0x10]
	b _0800ED54
	.align 2, 0
_0800ED44: .4byte gUnk_030033D0
_0800ED48:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800ED7E
	ldr r0, _0800ED68 @ => 0x030033D0
	str r2, [r0, #0x10]
_0800ED54:
	ldr r0, _0800ED6C @ => 0x03004720
	ldr r0, [r0, #4]
	cmp r0, #0x18
	bne _0800ED70
	movs r0, #0xad
	bl FUN_0804DE0C
	bl FUN_0800ED84
	b _0800ED7E
	.align 2, 0
_0800ED68: .4byte gUnk_030033D0
_0800ED6C: .4byte gUnk_03004720
_0800ED70:
	cmp r0, #0x1b
	bne _0800ED7E
	movs r0, #0xad
	bl FUN_0804DE0C
	bl FUN_0800F000
_0800ED7E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_0800ED84
FUN_0800ED84: @ 0x0800ED84
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	movs r6, #0
	bl FUN_08050814
	cmp r0, #2
	bne _0800EE0E
	movs r6, #8
	ldr r1, _0800EDB0 @ => 0x030033D0
	ldrb r0, [r1, #0xc]
	cmp r0, #0x13
	beq _0800EE0E
	adds r0, r1, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #5
	bhi _0800EDE2
	lsls r0, r0, #2
	ldr r1, _0800EDB4 @ =_0800EDB8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800EDB0: .4byte gUnk_030033D0
_0800EDB4: .4byte _0800EDB8
_0800EDB8: @ jump table
	.4byte _0800EDD8 @ case 0
	.4byte _0800EDD0 @ case 1
	.4byte _0800EDD4 @ case 2
	.4byte _0800EDD8 @ case 3
	.4byte _0800EDDC @ case 4
	.4byte _0800EDE0 @ case 5
_0800EDD0:
	subs r6, #1
	b _0800EDE2
_0800EDD4:
	subs r6, #4
	b _0800EDE2
_0800EDD8:
	subs r6, #2
	b _0800EDE2
_0800EDDC:
	subs r6, #3
	b _0800EDE2
_0800EDE0:
	subs r6, #5
_0800EDE2:
	ldr r0, _0800EDF4 @ => 0x030033D0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _0800EDF0
	cmp r0, #4
	bne _0800EDF8
_0800EDF0:
	subs r6, #6
	b _0800EE0E
	.align 2, 0
_0800EDF4: .4byte gUnk_030033D0
_0800EDF8:
	cmp r0, #2
	bne _0800EE00
	subs r6, #2
	b _0800EE0E
_0800EE00:
	cmp r0, #3
	bne _0800EE08
	subs r6, #7
	b _0800EE0E
_0800EE08:
	cmp r0, #5
	bne _0800EE0E
	adds r6, #1
_0800EE0E:
	ldr r7, _0800EE84 @ => 0x030033D0
	movs r0, #0xb
	str r0, [r7, #0x30]
	ldr r0, [r7, #0x40]
	adds r0, #2
	str r0, [r7, #0x44]
	movs r5, #1
	rsbs r5, r5, #0
	movs r0, #3
	movs r1, #0
	adds r2, r5, #0
	bl FUN_0801FEA0
	ldr r0, _0800EE88 @ => 0x00000821
	bl FUN_08050820
	adds r3, r0, #0
	str r3, [r7, #0x2c]
	ldr r0, [r7, #0x30]
	ldr r1, [r7, #0x44]
	lsls r1, r1, #3
	adds r1, r1, r6
	ldr r2, [r7, #0x3c]
	adds r2, #1
	lsls r2, r2, #3
	movs r4, #0
	str r4, [sp]
	bl FUN_0801F8B8
	str r0, [r7, #0x30]
	ldr r0, [r7, #0x2c]
	bl FUN_0801FF60
	ldr r1, [r7, #0x44]
	lsls r1, r1, #3
	adds r1, r1, r6
	adds r1, r1, r0
	adds r6, r1, #5
	movs r0, #3
	movs r1, #1
	adds r2, r5, #0
	bl FUN_0801FEA0
	ldrb r0, [r7, #0xc]
	cmp r0, #0x13
	bne _0800EE90
	ldr r1, _0800EE8C @ => 0x0805AA78
	adds r0, r7, #0
	adds r0, #0x8a
	ldrb r0, [r0]
	adds r0, #6
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0]
	bl FUN_08050820
	bl FUN_08020320
	b _0800EEA6
	.align 2, 0
_0800EE84: .4byte gUnk_030033D0
_0800EE88: .4byte 0x00000821
_0800EE8C: .4byte ROMREF_0805AA78
_0800EE90:
	ldr r1, _0800EF10 @ => 0x0805AA78
	adds r0, r7, #0
	adds r0, #0x84
	ldr r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0]
	bl FUN_08050820
	bl FUN_08020320
_0800EEA6:
	ldr r0, _0800EF14 @ => 0x00000822
	bl FUN_08050820
	adds r3, r0, #0
	ldr r4, _0800EF18 @ => 0x030033D0
	str r3, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	ldr r2, [r4, #0x3c]
	adds r2, #1
	lsls r2, r2, #3
	movs r5, #0
	str r5, [sp]
	adds r1, r6, #0
	bl FUN_0801F8B8
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x2c]
	bl FUN_0801FF60
	adds r6, r6, r0
	movs r7, #1
	rsbs r7, r7, #0
	movs r0, #3
	movs r1, #0
	adds r2, r7, #0
	bl FUN_0801FEA0
	ldr r0, _0800EF1C @ => 0x00000823
	bl FUN_08050820
	adds r3, r0, #0
	str r3, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	ldr r2, [r4, #0x3c]
	adds r2, #1
	lsls r2, r2, #3
	str r5, [sp]
	adds r1, r6, #0
	bl FUN_0801F8B8
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x4c]
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0800EF20
	movs r0, #3
	movs r1, #0
	adds r2, r7, #0
	bl FUN_0801FEA0
	b _0800EF2A
	.align 2, 0
_0800EF10: .4byte ROMREF_0805AA78
_0800EF14: .4byte 0x00000822
_0800EF18: .4byte gUnk_030033D0
_0800EF1C: .4byte 0x00000823
_0800EF20:
	movs r0, #3
	movs r1, #2
	adds r2, r7, #0
	bl FUN_0801FEA0
_0800EF2A:
	ldr r0, _0800EFB4 @ => 0x00000825
	bl FUN_08050820
	ldr r5, _0800EFB8 @ => 0x030033D0
	str r0, [r5, #0x2c]
	bl FUN_0801FF60
	adds r2, r0, #7
	cmp r2, #0
	bge _0800EF40
	adds r2, #7
_0800EF40:
	asrs r2, r2, #3
	str r2, [r5, #0x48]
	ldr r0, [r5, #0x30]
	ldr r1, [r5, #0x44]
	subs r1, r1, r2
	subs r1, #1
	lsls r1, r1, #3
	ldr r2, [r5, #0x3c]
	lsls r2, r2, #3
	adds r2, #0x14
	ldr r3, [r5, #0x2c]
	movs r4, #0
	str r4, [sp]
	bl FUN_0801F8B8
	str r0, [r5, #0x30]
	movs r6, #1
	rsbs r6, r6, #0
	movs r0, #3
	movs r1, #0
	adds r2, r6, #0
	bl FUN_0801FEA0
	ldr r0, _0800EFBC @ => 0x00000826
	bl FUN_08050820
	str r0, [r5, #0x2c]
	bl FUN_0801FF60
	adds r1, r0, #0
	adds r0, r1, #7
	cmp r0, #0
	bge _0800EF84
	adds r0, #7
_0800EF84:
	asrs r0, r0, #3
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x30]
	ldr r1, [r5, #0x44]
	lsls r1, r1, #3
	ldr r2, [r5, #0x3c]
	lsls r2, r2, #3
	adds r2, #0x14
	ldr r3, [r5, #0x2c]
	movs r4, #1
	str r4, [sp]
	bl FUN_0801F8B8
	str r0, [r5, #0x30]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0800EFC0
	movs r0, #3
	movs r1, #2
	adds r2, r6, #0
	bl FUN_0801FEA0
	b _0800EFCA
	.align 2, 0
_0800EFB4: .4byte 0x00000825
_0800EFB8: .4byte gUnk_030033D0
_0800EFBC: .4byte 0x00000826
_0800EFC0:
	movs r0, #3
	movs r1, #0
	adds r2, r6, #0
	bl FUN_0801FEA0
_0800EFCA:
	ldr r0, _0800EFF8 @ => 0x00000827
	bl FUN_08050820
	adds r3, r0, #0
	ldr r5, _0800EFFC @ => 0x030033D0
	str r3, [r5, #0x2c]
	ldr r0, [r5, #0x30]
	ldr r1, [r5, #0x44]
	adds r1, #1
	lsls r1, r1, #3
	ldr r2, [r5, #0x3c]
	lsls r2, r2, #3
	adds r2, #0x14
	movs r4, #0
	str r4, [sp]
	bl FUN_0801F8B8
	str r0, [r5, #0x30]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EFF8: .4byte 0x00000827
_0800EFFC: .4byte gUnk_030033D0

	thumb_func_start FUN_0800F000
FUN_0800F000: @ 0x0800F000
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r5, _0800F054 @ => 0x030033D0
	movs r0, #0xb
	str r0, [r5, #0x30]
	ldr r0, [r5, #0x40]
	adds r0, #2
	str r0, [r5, #0x44]
	movs r6, #1
	rsbs r6, r6, #0
	movs r0, #3
	movs r1, #0
	adds r2, r6, #0
	bl FUN_0801FEA0
	ldr r0, _0800F058 @ => 0x0000074B
	bl FUN_08050820
	adds r3, r0, #0
	str r3, [r5, #0x2c]
	ldr r0, [r5, #0x30]
	ldr r1, [r5, #0x44]
	lsls r1, r1, #3
	ldr r2, [r5, #0x3c]
	adds r2, #1
	lsls r2, r2, #3
	movs r4, #0
	str r4, [sp]
	bl FUN_0801F8B8
	str r0, [r5, #0x30]
	ldr r0, [r5, #0x4c]
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0800F05C
	movs r0, #3
	movs r1, #0
	adds r2, r6, #0
	bl FUN_0801FEA0
	b _0800F066
	.align 2, 0
_0800F054: .4byte gUnk_030033D0
_0800F058: .4byte 0x0000074B
_0800F05C:
	movs r0, #3
	movs r1, #2
	adds r2, r6, #0
	bl FUN_0801FEA0
_0800F066:
	ldr r0, _0800F0F0 @ => 0x00000825
	bl FUN_08050820
	ldr r5, _0800F0F4 @ => 0x030033D0
	str r0, [r5, #0x2c]
	bl FUN_0801FF60
	adds r2, r0, #7
	cmp r2, #0
	bge _0800F07C
	adds r2, #7
_0800F07C:
	asrs r2, r2, #3
	str r2, [r5, #0x48]
	ldr r0, [r5, #0x30]
	ldr r1, [r5, #0x44]
	subs r1, r1, r2
	subs r1, #1
	lsls r1, r1, #3
	ldr r2, [r5, #0x3c]
	lsls r2, r2, #3
	adds r2, #0x14
	ldr r3, [r5, #0x2c]
	movs r4, #0
	str r4, [sp]
	bl FUN_0801F8B8
	str r0, [r5, #0x30]
	movs r6, #1
	rsbs r6, r6, #0
	movs r0, #3
	movs r1, #0
	adds r2, r6, #0
	bl FUN_0801FEA0
	ldr r0, _0800F0F8 @ => 0x00000826
	bl FUN_08050820
	str r0, [r5, #0x2c]
	bl FUN_0801FF60
	adds r1, r0, #0
	adds r0, r1, #7
	cmp r0, #0
	bge _0800F0C0
	adds r0, #7
_0800F0C0:
	asrs r0, r0, #3
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x30]
	ldr r1, [r5, #0x44]
	lsls r1, r1, #3
	ldr r2, [r5, #0x3c]
	lsls r2, r2, #3
	adds r2, #0x14
	ldr r3, [r5, #0x2c]
	movs r4, #1
	str r4, [sp]
	bl FUN_0801F8B8
	str r0, [r5, #0x30]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0800F0FC
	movs r0, #3
	movs r1, #2
	adds r2, r6, #0
	bl FUN_0801FEA0
	b _0800F106
	.align 2, 0
_0800F0F0: .4byte 0x00000825
_0800F0F4: .4byte gUnk_030033D0
_0800F0F8: .4byte 0x00000826
_0800F0FC:
	movs r0, #3
	movs r1, #0
	adds r2, r6, #0
	bl FUN_0801FEA0
_0800F106:
	ldr r0, _0800F144 @ => 0x00000827
	bl FUN_08050820
	ldr r5, _0800F148 @ => 0x030033D0
	str r0, [r5, #0x2c]
	bl FUN_0801FF60
	adds r1, r0, #0
	adds r0, r1, #7
	cmp r0, #0
	bge _0800F11E
	adds r0, #7
_0800F11E:
	asrs r0, r0, #3
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x30]
	ldr r1, [r5, #0x44]
	adds r1, #1
	lsls r1, r1, #3
	ldr r2, [r5, #0x3c]
	lsls r2, r2, #3
	adds r2, #0x14
	ldr r3, [r5, #0x2c]
	movs r4, #0
	str r4, [sp]
	bl FUN_0801F8B8
	str r0, [r5, #0x30]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800F144: .4byte 0x00000827
_0800F148: .4byte gUnk_030033D0

	thumb_func_start FUN_0800F14C
FUN_0800F14C: @ 0x0800F14C
	push {r4, r5, lr}
	sub sp, #8
	adds r1, r0, #0
	cmp r1, #0
	beq _0800F1C8
	movs r0, #3
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #8
	movs r2, #0x11
	movs r3, #0x10
	bl FUN_0800C7A8
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #3
	movs r1, #0
	bl FUN_0801FEA0
	ldr r1, _0800F1B8 @ => 0x0805AA60
	ldr r5, _0800F1BC @ => 0x030033D0
	ldr r0, [r5, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl FUN_08050820
	adds r3, r0, #0
	ldr r0, _0800F1C0 @ => 0x0805AB6C
	movs r2, #0x30
	ldrsh r1, [r0, r2]
	movs r4, #0x32
	ldrsh r2, [r0, r4]
	movs r4, #1
	str r4, [sp]
	movs r0, #0x65
	bl FUN_0801F8B8
	ldr r2, _0800F1C4 @ => 0x03004790
	ldr r0, [r5, #8]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	ldr r0, [r1, #0xc]
	orrs r0, r4
	str r0, [r1, #0xc]
	ldr r1, [r2, #0x1c]
	ldr r0, [r1, #0xc]
	orrs r0, r4
	b _0800F1F8
	.align 2, 0
_0800F1B8: .4byte ROMREF_0805AA60
_0800F1BC: .4byte gUnk_030033D0
_0800F1C0: .4byte ROMREF_0805AB6C
_0800F1C4: .4byte gUnk_03004790
_0800F1C8:
	movs r0, #3
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #1
	movs r1, #8
	movs r2, #0x11
	movs r3, #0x10
	bl FUN_0800C7A8
	ldr r3, _0800F204 @ => 0x03004790
	ldr r0, _0800F208 @ => 0x030033D0
	ldr r0, [r0, #8]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r1, [r0]
	ldr r0, [r1, #0xc]
	movs r2, #2
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1, #0xc]
	ldr r1, [r3, #0x1c]
	ldr r0, [r1, #0xc]
	ands r0, r2
_0800F1F8:
	str r0, [r1, #0xc]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800F204: .4byte gUnk_03004790
_0800F208: .4byte gUnk_030033D0

	thumb_func_start FUN_0800F20C
FUN_0800F20C: @ 0x0800F20C
	push {r4, r5, lr}
	movs r5, #1
	ldr r2, _0800F240 @ => 0x030033C0
	ldr r1, [r2, #0xc]
	cmp r1, #0
	ble _0800F278
	ldr r0, _0800F244 @ => 0x030042B0
	ldrh r3, [r0, #8]
	movs r0, #0x80
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0800F248
	ldr r0, [r2, #8]
	adds r0, #2
	str r0, [r2, #8]
	cmp r0, r1
	blt _0800F234
	str r1, [r2, #8]
_0800F234:
	ldr r2, [r2, #8]
	movs r0, #1
	movs r1, #0
	bl FUN_0800CCCC
	b _0800F266
	.align 2, 0
_0800F240: .4byte gUnk_030033C0
_0800F244: .4byte gUnk_030042B0
_0800F248:
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	beq _0800F266
	ldr r0, [r2, #8]
	subs r0, #2
	str r0, [r2, #8]
	cmp r0, #0
	bge _0800F25C
	str r4, [r2, #8]
_0800F25C:
	ldr r2, [r2, #8]
	movs r0, #1
	movs r1, #0
	bl FUN_0800CCCC
_0800F266:
	ldr r0, _0800F2C0 @ => 0x030033C0
	ldr r1, [r0, #0xc]
	subs r1, #4
	ldr r0, [r0, #8]
	cmp r0, r1
	bge _0800F274
	movs r5, #0
_0800F274:
	bl FUN_0800F388
_0800F278:
	cmp r5, #0
	beq _0800F34A
	ldr r3, _0800F2C4 @ => 0x03004790
	ldr r2, [r3, #0x20]
	ldr r0, [r2, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0xc]
	ldr r0, _0800F2C8 @ => 0x030042B0
	ldrh r0, [r0, #0xc]
	ands r1, r0
	cmp r1, #0
	beq _0800F358
	movs r0, #1
	bl FUN_0800C4D0
	bl FUN_08052024
	ldr r1, _0800F2CC @ => 0x03004720
	ldr r0, [r1, #4]
	cmp r0, #0x17
	bne _0800F344
	bl FUN_0800F7E4
	movs r0, #0xb9
	bl FUN_0804DE0C
	ldr r0, _0800F2D0 @ => 0x030033D0
	ldr r0, [r0, #8]
	cmp r0, #5
	bhi _0800F374
	lsls r0, r0, #2
	ldr r1, _0800F2D4 @ =_0800F2D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800F2C0: .4byte gUnk_030033C0
_0800F2C4: .4byte gUnk_03004790
_0800F2C8: .4byte gUnk_030042B0
_0800F2CC: .4byte gUnk_03004720
_0800F2D0: .4byte gUnk_030033D0
_0800F2D4: .4byte _0800F2D8
_0800F2D8: @ jump table
	.4byte _0800F2F0 @ case 0
	.4byte _0800F2F8 @ case 1
	.4byte _0800F2F8 @ case 2
	.4byte _0800F2F8 @ case 3
	.4byte _0800F334 @ case 4
	.4byte _0800F33C @ case 5
_0800F2F0:
	movs r0, #0xc
	bl FUN_0800F7C8
	b _0800F374
_0800F2F8:
	ldr r1, _0800F328 @ => 0x03004710
	movs r0, #0x1e
	str r0, [r1]
	movs r0, #1
	bl FUN_0800C5FC
	ldr r3, _0800F32C @ => 0x0805AC38
	ldr r0, _0800F330 @ => 0x030033D0
	ldr r0, [r0, #8]
	subs r0, #1
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r0, r2, r3
	ldr r0, [r0]
	adds r1, r3, #4
	adds r1, r2, r1
	ldr r1, [r1]
	adds r3, #8
	adds r2, r2, r3
	ldr r2, [r2]
	bl FUN_0802CED4
	b _0800F374
	.align 2, 0
_0800F328: .4byte gUnk_03004710
_0800F32C: .4byte ROMREF_0805AC38
_0800F330: .4byte gUnk_030033D0
_0800F334:
	movs r0, #0xf
	bl FUN_0800F7C8
	b _0800F374
_0800F33C:
	movs r0, #0x12
	bl FUN_0800F7C8
	b _0800F374
_0800F344:
	adds r0, #1
	str r0, [r1, #4]
	b _0800F374
_0800F34A:
	ldr r3, _0800F37C @ => 0x03004790
	ldr r2, [r3, #0x20]
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
_0800F358:
	ldr r3, [r3]
	ldr r0, [r3, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0800F374
	ldr r1, _0800F380 @ => 0x0805A8B0
	ldr r0, _0800F384 @ => 0x09FB6204
	ldr r2, [r0, #4]
	adds r0, r3, #0
	movs r3, #0
	bl FUN_0800192C
_0800F374:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800F37C: .4byte gUnk_03004790
_0800F380: .4byte ROMREF_0805A8B0
_0800F384: .4byte ROMREF_09FB6204

	thumb_func_start FUN_0800F388
FUN_0800F388: @ 0x0800F388
	push {lr}
	ldr r0, _0800F3A0 @ => 0x030033C0
	ldr r2, [r0, #0xc]
	cmp r2, #0
	bgt _0800F3A4
	ldr r0, [r0]
	ldr r1, [r0, #0xc]
	movs r2, #2
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #0xc]
	b _0800F408
	.align 2, 0
_0800F3A0: .4byte gUnk_030033C0
_0800F3A4:
	ldr r1, [r0, #8]
	cmp r1, #0
	bne _0800F3B4
	ldr r0, [r0]
	movs r1, #0
	bl FUN_08000E44
	b _0800F3CA
_0800F3B4:
	cmp r1, r2
	bne _0800F3C2
	ldr r0, [r0]
	movs r1, #2
	bl FUN_08000E44
	b _0800F3CA
_0800F3C2:
	ldr r0, [r0]
	movs r1, #1
	bl FUN_08000E44
_0800F3CA:
	ldr r3, _0800F400 @ => 0x030033C0
	ldr r1, [r3]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	ldr r0, [r3]
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0
	bne _0800F408
	movs r0, #0xf
	strh r0, [r1]
	ldr r1, [r3]
	ldr r2, [r1, #0xc]
	movs r3, #1
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _0800F404
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
	b _0800F406
	.align 2, 0
_0800F400: .4byte gUnk_030033C0
_0800F404:
	orrs r2, r3
_0800F406:
	str r2, [r1, #0xc]
_0800F408:
	pop {r0}
	bx r0

	thumb_func_start FUN_0800F40C
FUN_0800F40C: @ 0x0800F40C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl FUN_08021320
	adds r7, r0, #0
	ldr r1, _0800F44C @ => 0x030033D0
	movs r2, #0
	str r2, [r1]
	str r2, [r1, #4]
	str r2, [r1, #8]
	movs r0, #0x10
	str r0, [r1, #0x14]
	movs r0, #0x20
	str r0, [r1, #0x18]
	movs r0, #0x40
	str r0, [r1, #0x1c]
	movs r0, #0x80
	str r0, [r1, #0x20]
	adds r0, #0x80
	str r0, [r1, #0x24]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r1, #0x28]
	ldr r0, _0800F450 @ => 0x03004720
	ldr r0, [r0, #8]
	cmp r0, #4
	bne _0800F454
	adds r0, r7, #0
	bl FUN_0800F848
	b _0800F4A4
	.align 2, 0
_0800F44C: .4byte gUnk_030033D0
_0800F450: .4byte gUnk_03004720
_0800F454:
	adds r0, r1, #0
	adds r0, #0x50
	strb r2, [r0]
	str r2, [r1, #0x78]
	movs r5, #0
	adds r4, r1, #0
	movs r0, #0x54
	adds r0, r0, r4
	mov r8, r0
_0800F466:
	adds r0, r7, #0
	adds r1, r5, #0
	bl FUN_08021350
	lsls r2, r5, #2
	adds r6, r4, #0
	adds r6, #0x64
	adds r2, r2, r6
	str r0, [r2]
	ldr r1, [r4, #0x78]
	adds r1, r1, r0
	str r1, [r4, #0x78]
	ldr r0, [r2]
	mov r1, r8
	adds r1, #4
	mov r8, r1
	subs r1, #4
	stm r1!, {r0}
	adds r5, #1
	cmp r5, #3
	ble _0800F466
	adds r4, r6, #0
	subs r4, #0x64
	ldr r0, [r4, #0x78]
	str r0, [r4, #0x74]
	bl FUN_08021394
	str r0, [r4, #0x7c]
	bl FUN_080215E0
	str r0, [r6, #0x1c]
_0800F4A4:
	ldr r2, _0800F4C8 @ => 0x030033D0
	adds r0, r2, #0
	adds r0, #0x84
	movs r1, #0
	str r1, [r0]
	adds r0, #4
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #2
	str r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F4C8: .4byte gUnk_030033D0

	thumb_func_start FUN_0800F4CC
FUN_0800F4CC: @ 0x0800F4CC
	push {lr}
	lsls r0, r0, #0x18
	ldr r1, _0800F4EC @ => 0x03004790
	ldr r3, [r1]
	ldr r1, _0800F4F0 @ => 0x0805A8B0
	ldr r2, _0800F4F4 @ => 0x09FB6204
	lsrs r0, r0, #0x16
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r3, #0
	movs r3, #0
	bl FUN_0800192C
	pop {r0}
	bx r0
	.align 2, 0
_0800F4EC: .4byte gUnk_03004790
_0800F4F0: .4byte ROMREF_0805A8B0
_0800F4F4: .4byte ROMREF_09FB6204

	thumb_func_start FUN_0800F4F8
FUN_0800F4F8: @ 0x0800F4F8
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r0, [sp, #0x20]
	ldr r4, [sp, #0x24]
	bl FUN_08050820
	str r0, [sp]
	str r4, [sp, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	mov r2, r8
	mov r3, sb
	bl FUN_08020098
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start BoardroomMenu_Terminate
BoardroomMenu_Terminate: @ 0x0800F530
	push {lr}
	movs r0, #0x3f
	movs r1, #0
	bl FUN_0804582C
	bl FUN_08052024
	ldr r0, _0800F560 @ => 0x03002C40
	bl FUN_08000BF8
	bl FUN_0800CB20
	bl FUN_0802CEB4
	cmp r0, #5
	bne _0800F55C
	ldr r0, _0800F564 @ => 0x03004770
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _0800F55C
	bl FUN_0802ADBC
_0800F55C:
	pop {r0}
	bx r0
	.align 2, 0
_0800F560: .4byte gUnk_03002C40
_0800F564: .4byte gUnk_03004770
