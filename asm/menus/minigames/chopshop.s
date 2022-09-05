.include "asm/constants.s"
.include "asm/macros.s"
.include "data/lists/sounds.inc"

.syntax unified

	thumb_func_start ChopShop_Init
ChopShop_Init: @ 0x080333F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x20
	bl FUN_08042448
	add r0, sp, #0x1c
	mov r8, r0
	ldr r0, _080334D8 @ => 0x03002258
	movs r2, #0
	movs r1, #9
	adds r0, #0x38
_08033410:
	str r2, [r0]
	subs r0, #4
	subs r1, #1
	cmp r1, #0
	bge _08033410
	movs r4, #0
	movs r0, #0
	movs r1, #5
	bl FUN_080424F8
	ldr r5, _080334D8 @ => 0x03002258
	adds r1, r5, #0
	adds r1, #0x41
	strb r0, [r1]
	add r0, sp, #0x18
	strh r4, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _080334DC @ => 0x01008000
	bl SVC_CpuSet
	movs r0, #0
	bl FUN_0805273C
	movs r0, #0
	bl FUN_0800C558
	movs r0, #0x80
	lsls r0, r0, #5
	bl FUN_0800C5EC
	ldr r0, _080334E0 @ => 0x0806790C
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C418
	movs r6, #0
	movs r7, #0
	ldr r2, _080334E4 @ => 0x08E7D6EC
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	str r7, [sp, #0x10]
	str r4, [sp, #0x14]
	mov r0, r8
	movs r1, #3
	movs r3, #0
	bl FUN_0800D83C
	bl FUN_080336F0
	bl FUN_0803389C
	movs r0, SOUNDTRACK_HEAVY_METAL
	bl FUN_0804DE84
	ldr r1, _080334E8 @ => 0x03004720
	str r4, [r1, #0x14]
	movs r0, #5
	str r0, [r1, #0x18]
	str r4, [r5, #0x48]
	ldr r2, _080334EC @ => 0x08067940
	ldr r0, _080334F0 @ => 0x030047F0
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, r0, r2
	ldr r1, [r1]
	str r1, [r5, #0x4c]
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r5, #0x50]
	str r4, [r5, #0x54]
	movs r0, #0x96
	lsls r0, r0, #2
	str r0, [r5, #0x58]
	movs r0, #0x3f
	movs r1, #0
	bl FUN_080457F4
	ldr r0, _080334F4 @ => 0x00000621
	movs r1, #1
	str r1, [sp]
	movs r1, #2
	str r1, [sp, #4]
	str r4, [sp, #8]
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #0x3c
	bl FUN_0800B984
	add sp, #0x20
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080334D8: .4byte gUnk_03002258
_080334DC: .4byte 0x01008000
_080334E0: .4byte ROMREF_0806790C
_080334E4: .4byte ROMREF_08E7D6EC
_080334E8: .4byte gUnk_03004720
_080334EC: .4byte ROMREF_08067940
_080334F0: .4byte gUnk_030047F0
_080334F4: .4byte 0x00000621

	thumb_func_start ChopShop_Handler
ChopShop_Handler: @ 0x080334F8
	push {r4, r5, lr}
	bl FUN_0800B66C
	ldr r4, _08033514 @ => 0x03004720
	ldr r0, [r4, #0x14]
	cmp r0, #1
	beq _0803352C
	cmp r0, #1
	blo _08033518
	cmp r0, #2
	bne _08033510
	b _08033634
_08033510:
	b _0803365C
	.align 2, 0
_08033514: .4byte gUnk_03004720
_08033518:
	ldr r0, [r4, #0x18]
	subs r0, #1
	str r0, [r4, #0x18]
	cmp r0, #0
	beq _08033524
	b _0803365C
_08033524:
	movs r0, #1
	str r0, [r4, #0x18]
	str r0, [r4, #0x14]
	b _0803365C
_0803352C:
	bl FUN_08033C08
	ldr r0, [r4, #0x18]
	subs r0, #1
	str r0, [r4, #0x18]
	cmp r0, #0
	bne _08033544
	ldr r0, _0803355C @ => 0x03002258
	ldr r0, [r0, #0x50]
	str r0, [r4, #0x18]
	bl FUN_08033A3C
_08033544:
	ldr r0, _0803355C @ => 0x03002258
	ldr r2, [r0, #0x48]
	adds r5, r0, #0
	cmp r2, #4
	bls _08033550
	b _0803365C
_08033550:
	lsls r0, r2, #2
	ldr r1, _08033560 @ =_08033564
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803355C: .4byte gUnk_03002258
_08033560: .4byte _08033564
_08033564: @ jump table
	.4byte _08033578 @ case 0
	.4byte _08033590 @ case 1
	.4byte _080335AE @ case 2
	.4byte _080335E8 @ case 3
	.4byte _08033602 @ case 4
_08033578:
	ldr r0, _0803358C @ => 0x030042B0
	ldrh r1, [r0, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803365C
	bl FUN_08033D3C
	b _0803365C
	.align 2, 0
_0803358C: .4byte gUnk_030042B0
_08033590:
	ldr r1, [r5]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	ldr r0, [r5]
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, #0
	bne _0803365C
	movs r0, #2
	str r0, [r5, #0x48]
	b _0803365C
_080335AE:
	ldr r0, _080335C4 @ => 0x030042B0
	ldrh r1, [r0, #8]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080335C8
	movs r0, #0
	bl FUN_08033E28
	b _0803365C
	.align 2, 0
_080335C4: .4byte gUnk_030042B0
_080335C8:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080335D8
	movs r0, #1
	bl FUN_08033E28
	b _0803365C
_080335D8:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803365C
	movs r0, #2
	bl FUN_08033E28
	b _0803365C
_080335E8:
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0803365C
	movs r0, #0
	bl FUN_080337DC
	movs r0, #0
	str r0, [r5, #0x48]
	b _0803365C
_08033602:
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0803365C
	ldr r0, [r5, #0x3c]
	ldr r1, _08033630 @ => FUN_08034088
	str r1, [r0, #0x50]
	ldr r1, [r0, #0x18]
	movs r2, #0x81
	lsls r2, r2, #0x10
	movs r3, #2
	bl FUN_08001800
	movs r4, #0
	str r4, [r5, #0x3c]
	movs r0, #0
	bl FUN_080337DC
	str r4, [r5, #0x48]
	b _0803365C
	.align 2, 0
_08033630: .4byte FUN_08034088
_08033634:
	ldr r2, _08033664 @ => 0x03002258
	ldr r0, [r2]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0803365C
	ldr r0, _08033668 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0803365C
	ldr r1, [r4, #4]
	ldr r2, [r2, #0x5c]
	movs r0, #0x19
	movs r3, #0
	bl FUN_0802CEF8
_0803365C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08033664: .4byte gUnk_03002258
_08033668: .4byte gUnk_030042B0

	thumb_func_start FUN_0803366C
FUN_0803366C: @ 0x0803366C
	push {lr}
	bl FUN_08035580
	cmp r0, #1
	beq _080336A2
	ldr r3, _080336E8 @ => 0x03003DF0
	movs r1, #0
	strb r1, [r3, #0x1c]
	strb r1, [r3, #0x1d]
	movs r2, #1
	strb r2, [r3, #0x1e]
	strb r1, [r3, #0x1f]
	adds r0, r3, #0
	adds r0, #0x20
	strb r2, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r2, [r0]
_080336A2:
	ldr r2, _080336EC @ => 0x03002258
	movs r1, #0
	ldr r3, _080336E8 @ => 0x03003DF0
	ldrb r0, [r3, #0x1c]
	cmp r0, #0
	bne _080336B0
	movs r1, #1
_080336B0:
	adds r0, r2, #0
	adds r0, #0x60
	strb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x24
	ldrb r0, [r0]
	movs r1, #4
	cmp r0, #0
	bne _080336C4
	movs r1, #5
_080336C4:
	adds r0, r2, #0
	adds r0, #0x61
	strb r1, [r0]
	ldrb r1, [r3, #0x1e]
	movs r0, #3
	ands r0, r1
	adds r1, r2, #0
	adds r1, #0x62
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x1c
	movs r1, #2
	movs r2, #3
	bl FUN_08048CB4
	pop {r0}
	bx r0
	.align 2, 0
_080336E8: .4byte gUnk_03003DF0
_080336EC: .4byte gUnk_03002258

	thumb_func_start FUN_080336F0
FUN_080336F0: @ 0x080336F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	bl FUN_0803366C
	ldr r7, _080337D4 @ => 0x03002258
	adds r0, r7, #0
	adds r0, #0x61
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	movs r1, #0x60
	adds r1, r1, r7
	mov sl, r1
	ldrb r2, [r1]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080337D8 @ => 0x08067ABC
	mov sb, r1
	add r0, sb
	movs r1, #2
	mov r8, r1
	str r1, [sp]
	movs r1, #0x60
	movs r2, #0x81
	movs r3, #0xf
	bl FUN_0802D680
	adds r5, r0, #0
	str r5, [r7]
	adds r2, r5, #0
	adds r2, #0xa9
	ldrb r1, [r2]
	movs r4, #0xf
	adds r0, r4, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	mov r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #0xa8
	lsls r1, r1, #2
	add r1, sb
	adds r0, r0, r1
	mov r1, r8
	str r1, [sp]
	movs r1, #0x60
	movs r2, #0x81
	movs r3, #0xf
	bl FUN_0802D680
	adds r6, r0, #0
	str r6, [r5, #0x58]
	adds r2, r6, #0
	adds r2, #0xa9
	ldrb r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	movs r1, #0x30
	orrs r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x62
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	mov r1, sl
	ldrb r2, [r1]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r2
	adds r0, r0, r1
	lsls r0, r0, #4
	add r0, sb
	mov r1, r8
	str r1, [sp]
	movs r1, #0x60
	movs r2, #0x81
	movs r3, #0xf
	bl FUN_0802D680
	str r0, [r6, #0x58]
	adds r0, #0xa9
	ldrb r1, [r0]
	ands r4, r1
	movs r1, #0x20
	orrs r4, r1
	strb r4, [r0]
	movs r0, #0
	bl FUN_080337DC
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080337D4: .4byte gUnk_03002258
_080337D8: .4byte ROMREF_08067ABC

	thumb_func_start FUN_080337DC
FUN_080337DC: @ 0x080337DC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r7, _08033890 @ => 0x03002258
	ldr r5, [r7]
	adds r0, r7, #0
	adds r0, #0x61
	ldrb r0, [r0]
	lsls r1, r0, #3
	subs r1, r1, r0
	adds r1, r4, r1
	movs r0, #0x60
	adds r0, r0, r7
	mov r8, r0
	ldrb r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r0, r0, r2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r6, _08033894 @ => 0x08067ABC
	adds r1, r1, r6
	ldr r0, _08033898 @ => 0x09FB656C
	mov sb, r0
	lsls r0, r2, #3
	subs r0, r0, r2
	adds r0, r4, r0
	lsls r0, r0, #2
	add r0, sb
	ldr r2, [r0]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_0800192C
	ldr r5, [r5, #0x58]
	mov r0, r8
	ldrb r2, [r0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r2
	adds r1, #0x2a
	adds r1, r4, r1
	lsls r1, r1, #4
	adds r1, r1, r6
	lsls r0, r2, #3
	subs r0, r0, r2
	adds r0, r4, r0
	lsls r0, r0, #2
	add r0, sb
	ldr r2, [r0]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_0800192C
	ldr r5, [r5, #0x58]
	adds r0, r7, #0
	adds r0, #0x62
	ldrb r0, [r0]
	lsls r1, r0, #3
	subs r1, r1, r0
	adds r1, r4, r1
	mov r0, r8
	ldrb r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r0, r0, r2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r6
	lsls r0, r2, #3
	subs r0, r0, r2
	adds r4, r4, r0
	lsls r4, r4, #2
	add r4, sb
	ldr r2, [r4]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_0800192C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033890: .4byte gUnk_03002258
_08033894: .4byte ROMREF_08067ABC
_08033898: .4byte ROMREF_09FB656C

	thumb_func_start FUN_0803389C
FUN_0803389C: @ 0x0803389C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08033A10 @ => 0x08067AAC
	movs r4, #1
	str r4, [sp]
	movs r1, #0xcc
	movs r2, #4
	movs r3, #0
	bl FUN_0802D680
	ldr r5, _08033A14 @ => 0x03002258
	ldr r0, _08033A18 @ => 0x00000709
	str r0, [r5, #0x44]
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0x3d
	strb r0, [r1]
	movs r0, #0
	bl FUN_080203A8
	ldr r0, _08033A1C @ => 0x00000762
	bl FUN_08050820
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	add r0, sp, #4
	bl FUN_08050940
	str r0, [r5, #0x10]
	bl FUN_08033C08
	ldr r0, _08033A20 @ => 0x08067A8C
	str r4, [sp]
	movs r1, #0x47
	movs r2, #0x7e
	movs r3, #0
	bl FUN_0802D680
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	movs r7, #0
	ldr r0, _08033A24 @ => 0x08067910
	mov sl, r0
	movs r1, #0x41
	adds r1, r1, r5
	mov sb, r1
	adds r5, #4
	str r5, [sp, #8]
	ldr r2, _08033A28 @ => 0x08067928
	mov r8, r2
_08033916:
	mov r4, sb
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r7, r0
	add r0, sl
	ldrb r3, [r0]
	lsls r0, r3, #4
	ldr r1, _08033A2C @ => 0x080679CC
	adds r0, r0, r1
	lsls r4, r7, #5
	adds r5, r4, #0
	adds r5, #0x58
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r3, #8
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r1, #0
	str r1, [sp]
	adds r1, r5, #0
	movs r2, #0xa3
	bl FUN_0802D680
	adds r6, r0, #0
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r6, #0xc]
	movs r0, #0
	bl FUN_080203A8
	ldr r0, _08033A1C @ => 0x00000762
	bl FUN_08050820
	str r0, [sp, #4]
	add r0, sp, #4
	bl FUN_08050940
	ldr r2, [sp, #8]
	str r0, [r2]
	movs r1, #0
	strh r1, [r0, #0xa]
	ldr r0, [r2]
	adds r4, #0x59
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, #0
	movs r2, #0x94
	bl FUN_08050BDC
	mov r2, sb
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r7, r0
	add r0, sl
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r4, _08033A30 @ => 0x08067A5C
	adds r0, r0, r4
	movs r1, #0
	str r1, [sp]
	adds r1, r5, #0
	movs r2, #0xa3
	movs r3, #4
	bl FUN_0802D680
	adds r6, r0, #0
	mov r2, sb
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r7, r0
	add r0, sl
	ldrb r1, [r0]
	lsls r1, r1, #4
	adds r1, r1, r4
	ldr r0, _08033A34 @ => 0x09FB6568
	ldr r2, [r0]
	adds r0, r6, #0
	movs r3, #0
	bl FUN_0800192C
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	str r0, [r6, #0xc]
	ldr r4, [sp, #8]
	ldm r4!, {r0}
	str r4, [sp, #8]
	str r6, [r0, #0x58]
	mov r5, sb
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r7, r0
	add r0, sl
	ldrb r3, [r0]
	lsls r0, r3, #4
	ldr r1, _08033A38 @ => 0x08067A2C
	adds r0, r0, r1
	mov r2, r8
	movs r4, #0
	ldrsh r1, [r2, r4]
	movs r5, #4
	ldrsh r2, [r2, r5]
	adds r3, #5
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r4, #3
	str r4, [sp]
	bl FUN_0802D680
	movs r0, #8
	add r8, r0
	adds r7, #1
	cmp r7, #2
	ble _08033916
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033A10: .4byte ROMREF_08067AAC
_08033A14: .4byte gUnk_03002258
_08033A18: .4byte 0x00000709
_08033A1C: .4byte 0x00000762
_08033A20: .4byte ROMREF_08067A8C
_08033A24: .4byte ROMREF_08067910
_08033A28: .4byte ROMREF_08067928
_08033A2C: .4byte ROMREF_080679CC
_08033A30: .4byte ROMREF_08067A5C
_08033A34: .4byte ROMREF_09FB6568
_08033A38: .4byte ROMREF_08067A2C

	thumb_func_start FUN_08033A3C
FUN_08033A3C: @ 0x08033A3C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	movs r0, #0
	mov r8, r0
	mov sb, r0
	movs r1, #0x63
	bl FUN_080424F8
	adds r6, r0, #0
	movs r7, #0
	ldr r2, _08033A68 @ => 0x08068118
	ldr r0, _08033A6C @ => 0x030047F0
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, r0, r2
	b _08033A7A
	.align 2, 0
_08033A68: .4byte ROMREF_08068118
_08033A6C: .4byte gUnk_030047F0
_08033A70:
	ldm r1!, {r0}
	subs r6, r6, r0
	adds r7, #1
	cmp r7, #5
	bgt _08033A80
_08033A7A:
	ldr r0, [r1]
	cmp r6, r0
	bge _08033A70
_08033A80:
	cmp r7, #4
	bne _08033B0A
	movs r6, #0
_08033A86:
	lsls r4, r6, #4
	ldr r0, _08033AC8 @ => 0x080679CC
	adds r4, r4, r0
	adds r3, r6, #0
	adds r3, #8
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xfc
	movs r2, #0x84
	bl FUN_0802D680
	adds r5, r0, #0
	ldr r0, _08033ACC @ => 0x09FB6548
	ldr r2, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0
	bl FUN_0800192C
	movs r0, #0
	strh r6, [r5, #8]
	strh r0, [r5, #0xa]
	ldr r0, _08033AD0 @ => FUN_08033B78
	str r0, [r5, #0x50]
	cmp r6, #0
	beq _08033AD4
	cmp r6, #2
	beq _08033ADC
	b _08033AE6
	.align 2, 0
_08033AC8: .4byte ROMREF_080679CC
_08033ACC: .4byte ROMREF_09FB6548
_08033AD0: .4byte FUN_08033B78
_08033AD4:
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xc
	b _08033AE2
_08033ADC:
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xd
_08033AE2:
	orrs r0, r1
	str r0, [r5, #0xc]
_08033AE6:
	mov r0, r8
	cmp r0, #0
	beq _08033AF4
	str r0, [r5, #0x5c]
	mov r0, sb
	str r5, [r0, #0x58]
	b _08033AFA
_08033AF4:
	mov r8, r5
	movs r0, #4
	strh r0, [r5, #8]
_08033AFA:
	mov sb, r5
	adds r6, #1
	cmp r6, #2
	ble _08033A86
	mov r5, r8
	b _08033B40
_08033B06:
	str r5, [r1]
	b _08033B58
_08033B0A:
	lsls r4, r7, #4
	ldr r0, _08033B68 @ => 0x080679CC
	adds r4, r4, r0
	adds r3, r7, #0
	adds r3, #8
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xfc
	movs r2, #0x84
	bl FUN_0802D680
	adds r5, r0, #0
	ldr r0, _08033B6C @ => 0x09FB6548
	ldr r2, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0
	bl FUN_0800192C
	movs r0, #0
	strh r7, [r5, #8]
	strh r0, [r5, #0xa]
	ldr r0, _08033B70 @ => FUN_08033B78
	str r0, [r5, #0x50]
_08033B40:
	ldr r1, _08033B74 @ => 0x03002258
	ldr r0, [r1, #0x4c]
	str r0, [r5, #0x28]
	movs r6, #0
	adds r1, #0x14
_08033B4A:
	ldr r0, [r1]
	cmp r0, #0
	beq _08033B06
	adds r1, #4
	adds r6, #1
	cmp r6, #9
	ble _08033B4A
_08033B58:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033B68: .4byte ROMREF_080679CC
_08033B6C: .4byte ROMREF_09FB6548
_08033B70: .4byte FUN_08033B78
_08033B74: .4byte gUnk_03002258

	thumb_func_start FUN_08033B78
FUN_08033B78: @ 0x08033B78
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _08033BBE
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _08033BF8
	str r0, [r4, #0x28]
	ldrh r0, [r4, #8]
	cmp r0, #5
	bne _08033BAC
	adds r0, r4, #0
	movs r1, #0x60
	movs r2, #0x78
	movs r3, #6
	bl FUN_08001810
	b _08033BB8
_08033BAC:
	adds r0, r4, #0
	movs r1, #0x60
	movs r2, #0x75
	movs r3, #6
	bl FUN_08001810
_08033BB8:
	movs r0, #0
	str r0, [r4, #0x50]
	b _08033BF8
_08033BBE:
	ldr r1, [r4, #0x28]
	cmp r1, #0
	beq _08033BCE
	ldr r0, _08033C00 @ => 0x03002258
	ldr r0, [r0, #0x4c]
	cmp r1, r0
	beq _08033BCE
	str r0, [r4, #0x28]
_08033BCE:
	ldr r1, [r4, #0x18]
	ldr r0, _08033C04 @ => 0xFFF00000
	cmp r1, r0
	bge _08033BF8
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, _08033C00 @ => 0x03002258
	movs r3, #0
	adds r1, r0, #0
	adds r1, #0x14
	movs r2, #9
_08033BE8:
	ldr r0, [r1]
	cmp r0, r4
	bne _08033BF0
	str r3, [r1]
_08033BF0:
	adds r1, #4
	subs r2, #1
	cmp r2, #0
	bge _08033BE8
_08033BF8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08033C00: .4byte gUnk_03002258
_08033C04: .4byte 0xFFF00000

	thumb_func_start FUN_08033C08
FUN_08033C08: @ 0x08033C08
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	add r4, sp, #0xc
	adds r0, r4, #0
	movs r1, #0
	movs r2, #5
	bl memset
	movs r0, #0x3a
	strb r0, [r4, #1]
	ldr r4, _08033D24 @ => 0x03002258
	ldr r0, [r4, #0x58]
	subs r0, #1
	str r0, [r4, #0x58]
	cmp r0, #0
	bne _08033C58
	ldr r3, [r4, #0x54]
	cmp r3, #1
	bgt _08033C58
	movs r0, #0x96
	lsls r0, r0, #2
	str r0, [r4, #0x58]
	adds r3, #1
	str r3, [r4, #0x54]
	ldr r2, _08033D28 @ => 0x08067940
	ldr r0, _08033D2C @ => 0x030047F0
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r1, r0, r2
	ldr r1, [r1]
	str r1, [r4, #0x4c]
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r4, #0x50]
_08033C58:
	ldr r6, _08033D24 @ => 0x03002258
	ldr r0, [r6, #0x44]
	cmp r0, #0
	beq _08033D18
	subs r0, #1
	str r0, [r6, #0x44]
	movs r1, #0x1e
	bl __divsi3
	adds r7, r0, #0
	movs r1, #0x3c
	bl __udivsi3
	adds r4, r0, #0
	mov r8, r4
	adds r0, r7, #0
	movs r1, #0x3c
	bl __umodsi3
	adds r5, r0, #0
	adds r7, r5, #0
	adds r0, r6, #0
	adds r0, #0x40
	ldrb r0, [r0]
	cmp r5, r0
	beq _08033CCC
	add r1, sp, #0xc
	adds r0, r4, #0
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
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, [r6, #0x10]
	add r1, sp, #0xc
	bl FUN_08050BC8
	ldr r0, [r6, #0x10]
	movs r1, #0xdc
	movs r2, #8
	bl FUN_08050BDC
_08033CCC:
	mov r0, r8
	cmp r0, #0
	bne _08033D18
	cmp r5, #0
	bne _08033D18
	movs r0, #6
	bl FUN_0804DE0C
	movs r0, #3
	bl FUN_080337DC
	ldr r3, [r6, #0x3c]
	cmp r3, #0
	beq _08033CFC
	ldr r0, _08033D30 @ => FUN_08034088
	str r0, [r3, #0x50]
	ldr r1, [r3, #0x18]
	movs r2, #0x81
	lsls r2, r2, #0x10
	adds r0, r3, #0
	movs r3, #2
	bl FUN_08001800
	str r5, [r6, #0x3c]
_08033CFC:
	ldr r0, _08033D34 @ => 0x03004720
	movs r2, #2
	str r2, [r0, #0x14]
	ldr r0, _08033D38 @ => 0x00000622
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #1
	str r1, [sp]
	str r2, [sp, #4]
	str r7, [sp, #8]
	movs r1, #0x78
	movs r2, #0x38
	bl FUN_0800B984
_08033D18:
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033D24: .4byte gUnk_03002258
_08033D28: .4byte ROMREF_08067940
_08033D2C: .4byte gUnk_030047F0
_08033D30: .4byte FUN_08034088
_08033D34: .4byte gUnk_03004720
_08033D38: .4byte 0x00000622

	thumb_func_start FUN_08033D3C
FUN_08033D3C: @ 0x08033D3C
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	movs r6, #0
	movs r3, #0
	ldr r0, _08033D84 @ => 0x03002258
	adds r4, r0, #0
	adds r4, #0x14
	ldr r0, _08033D88 @ => 0xFFA40000
	mov ip, r0
	movs r7, #0x80
	lsls r7, r7, #0xe
	movs r2, #9
_08033D54:
	ldr r1, [r4]
	cmp r1, #0
	beq _08033D6C
	ldr r0, [r1, #0x18]
	add r0, ip
	cmp r0, r7
	bhi _08033D6C
	adds r3, #1
	cmp r6, #0
	bne _08033D6A
	adds r5, r1, #0
_08033D6A:
	adds r6, r1, #0
_08033D6C:
	adds r4, #4
	subs r2, #1
	cmp r2, #0
	bge _08033D54
	cmp r3, #1
	beq _08033DC0
	cmp r3, #1
	bgt _08033D8C
	cmp r3, #0
	beq _08033E1C
	b _08033DC0
	.align 2, 0
_08033D84: .4byte gUnk_03002258
_08033D88: .4byte 0xFFA40000
_08033D8C:
	cmp r3, #2
	bne _08033DC0
	ldr r2, [r5, #0x18]
	ldr r3, _08033DB0 @ => 0xFFA00000
	adds r1, r2, r3
	cmp r1, #0
	bge _08033DA0
	movs r0, #0xc0
	lsls r0, r0, #0xf
	subs r1, r0, r2
_08033DA0:
	ldr r2, [r6, #0x18]
	adds r0, r2, r3
	cmp r0, #0
	blt _08033DB4
	cmp r1, r0
	bgt _08033DBE
	b _08033DC0
	.align 2, 0
_08033DB0: .4byte 0xFFA00000
_08033DB4:
	movs r0, #0xc0
	lsls r0, r0, #0xf
	subs r0, r0, r2
	cmp r1, r0
	ble _08033DC0
_08033DBE:
	adds r5, r6, #0
_08033DC0:
	ldrh r0, [r5, #8]
	cmp r0, #5
	bne _08033DE0
	movs r0, #2
	bl FUN_080337DC
	ldr r1, _08033DDC @ => 0x03002258
	movs r0, #4
	str r0, [r1, #0x48]
	movs r0, #0x27
	bl FUN_0804DE0C
	b _08033DEC
	.align 2, 0
_08033DDC: .4byte gUnk_03002258
_08033DE0:
	movs r0, #1
	bl FUN_080337DC
	ldr r1, _08033E24 @ => 0x03002258
	movs r0, #1
	str r0, [r1, #0x48]
_08033DEC:
	ldr r3, _08033E24 @ => 0x03002258
	str r5, [r3, #0x3c]
	ldr r0, [r3]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r0, r2
	movs r1, #0xe
	strh r1, [r0]
	movs r0, #1
	strh r0, [r5, #0xa]
	adds r2, r5, r2
	movs r0, #8
	strh r0, [r2]
	movs r1, #0
	adds r3, #0x14
	movs r2, #9
_08033E0C:
	ldr r0, [r3]
	cmp r0, r5
	bne _08033E14
	str r1, [r3]
_08033E14:
	adds r3, #4
	subs r2, #1
	cmp r2, #0
	bge _08033E0C
_08033E1C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033E24: .4byte gUnk_03002258

	thumb_func_start FUN_08033E28
FUN_08033E28: @ 0x08033E28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	movs r0, #0x2a
	bl FUN_0804DE0C
	adds r0, r4, #4
	bl FUN_080337DC
	ldr r5, _08033E88 @ => 0x03002258
	movs r0, #3
	str r0, [r5, #0x48]
	ldr r1, [r5, #0x3c]
	ldrh r0, [r1, #8]
	cmp r0, #4
	bne _08033F04
	movs r0, #0
	strh r0, [r1, #8]
	ldr r3, [r5, #0x3c]
	cmp r3, #0
	beq _08033F3E
	adds r0, r5, #0
	adds r0, #0x41
	mov sl, r0
_08033E5E:
	movs r2, #0
	mov r1, sl
	ldrb r0, [r1]
	lsls r0, r0, #2
	ldr r5, _08033E8C @ => 0x08067910
	adds r0, r0, r5
	ldrh r1, [r3, #8]
	ldrb r0, [r0]
	ldr r5, _08033E90 @ => 0x080680DC
	ldr r6, _08033E94 @ => FUN_08034028
	ldr r7, _08033E98 @ => 0x08068100
	mov ip, r7
	ldr r7, _08033E9C @ => 0x080680F4
	mov r8, r7
	ldr r7, _08033EA0 @ => 0x0806810C
	mov sb, r7
	cmp r0, r1
	bne _08033EA4
	movs r4, #0
	b _08033EBE
	.align 2, 0
_08033E88: .4byte gUnk_03002258
_08033E8C: .4byte ROMREF_08067910
_08033E90: .4byte ROMREF_080680DC
_08033E94: .4byte FUN_08034028
_08033E98: .4byte ROMREF_08068100
_08033E9C: .4byte ROMREF_080680F4
_08033EA0: .4byte ROMREF_0806810C
_08033EA4:
	adds r2, #1
	cmp r2, #2
	bgt _08033EBE
	mov r7, sl
	ldrb r0, [r7]
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r7, _08033EFC @ => 0x08067910
	adds r0, r0, r7
	ldrb r0, [r0]
	cmp r0, r1
	bne _08033EA4
	adds r4, r2, #0
_08033EBE:
	strh r4, [r3, #0xa]
	lsls r1, r4, #2
	adds r0, r1, r5
	ldr r2, [r0]
	movs r5, #0x90
	lsls r5, r5, #1
	adds r0, r3, r5
	strh r2, [r0]
	str r6, [r3, #0x50]
	ldr r7, _08033F00 @ => 0x080680E8
	adds r0, r1, r7
	ldr r0, [r0]
	str r0, [r3, #0x28]
	mov r2, ip
	adds r0, r1, r2
	ldr r0, [r0]
	str r0, [r3, #0x2c]
	mov r5, r8
	adds r0, r1, r5
	ldr r0, [r0]
	str r0, [r3, #0x30]
	add r1, sb
	ldr r0, [r1]
	str r0, [r3, #0x34]
	movs r7, #0
	str r7, [r3, #0x5c]
	ldr r3, [r3, #0x58]
	cmp r3, #0
	bne _08033E5E
	b _08033F3E
	.align 2, 0
_08033EFC: .4byte ROMREF_08067910
_08033F00: .4byte ROMREF_080680E8
_08033F04:
	strh r4, [r1, #0xa]
	ldr r1, [r5, #0x3c]
	ldr r0, _08033F54 @ => 0x080680DC
	lsls r2, r4, #2
	adds r0, r2, r0
	ldr r0, [r0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r1, r1, r3
	strh r0, [r1]
	ldr r1, [r5, #0x3c]
	ldr r0, _08033F58 @ => FUN_08034028
	str r0, [r1, #0x50]
	ldr r0, _08033F5C @ => 0x080680E8
	adds r0, r2, r0
	ldr r0, [r0]
	str r0, [r1, #0x28]
	ldr r0, _08033F60 @ => 0x08068100
	adds r0, r2, r0
	ldr r0, [r0]
	str r0, [r1, #0x2c]
	ldr r0, _08033F64 @ => 0x080680F4
	adds r0, r2, r0
	ldr r0, [r0]
	str r0, [r1, #0x30]
	ldr r0, _08033F68 @ => 0x0806810C
	adds r2, r2, r0
	ldr r0, [r2]
	str r0, [r1, #0x34]
_08033F3E:
	movs r0, #0
	ldr r5, _08033F6C @ => 0x03002258
	str r0, [r5, #0x3c]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033F54: .4byte ROMREF_080680DC
_08033F58: .4byte FUN_08034028
_08033F5C: .4byte ROMREF_080680E8
_08033F60: .4byte ROMREF_08068100
_08033F64: .4byte ROMREF_080680F4
_08033F68: .4byte ROMREF_0806810C
_08033F6C: .4byte gUnk_03002258

	thumb_func_start FUN_08033F70
FUN_08033F70: @ 0x08033F70
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r6, _08033FEC @ => 0x03002258
	lsls r5, r4, #2
	adds r0, r6, #4
	adds r5, r5, r0
	ldr r1, [r5]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	ldr r0, [r5]
	ldrh r0, [r0, #0xa]
	bl FUN_080203A8
	ldr r0, _08033FF0 @ => 0x00000762
	bl FUN_08050820
	adds r1, r0, #0
	ldr r0, [r5]
	bl FUN_08050BC8
	ldr r0, [r5]
	lsls r4, r4, #0x15
	movs r1, #0xb2
	lsls r1, r1, #0xf
	adds r4, r4, r1
	asrs r4, r4, #0x10
	adds r1, r4, #0
	movs r2, #0x94
	bl FUN_08050BDC
	ldr r0, [r6, #4]
	ldrh r0, [r0, #0xa]
	str r0, [r6, #0x5c]
	adds r2, r6, #0
	adds r2, #8
	movs r3, #1
_08033FBA:
	ldr r0, [r2]
	ldrh r1, [r0, #0xa]
	ldr r0, [r6, #0x5c]
	cmp r0, r1
	ble _08033FC6
	str r1, [r6, #0x5c]
_08033FC6:
	adds r2, #4
	subs r3, #1
	cmp r3, #0
	bge _08033FBA
	ldr r5, _08033FEC @ => 0x03002258
	adds r4, r5, #4
	movs r7, #1
	movs r6, #2
	rsbs r6, r6, #0
	movs r3, #2
_08033FDA:
	ldr r2, [r4]
	ldrh r1, [r2, #0xa]
	ldr r0, [r5, #0x5c]
	cmp r1, r0
	bne _08033FF4
	ldr r1, [r2, #0x58]
	ldr r0, [r1, #0xc]
	orrs r0, r7
	b _08033FFA
	.align 2, 0
_08033FEC: .4byte gUnk_03002258
_08033FF0: .4byte 0x00000762
_08033FF4:
	ldr r1, [r2, #0x58]
	ldr r0, [r1, #0xc]
	ands r0, r6
_08033FFA:
	str r0, [r1, #0xc]
	adds r4, #4
	subs r3, #1
	cmp r3, #0
	bge _08033FDA
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start ChopShop_Terminate
ChopShop_Terminate: @ 0x0803400C
	push {lr}
	movs r0, #0x3f
	movs r1, #0
	bl FUN_0804582C
	bl FUN_0800B9D0
	ldr r0, _08034024 @ => 0x03002C40
	bl FUN_08000BF8
	pop {r0}
	bx r0
	.align 2, 0
_08034024: .4byte gUnk_03002C40
