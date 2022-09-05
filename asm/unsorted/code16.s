.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_08024C90
FUN_08024C90: @ 0x08024C90
	push {r4, lr}
	ldr r1, _08024CF8 @ => 0x0300202C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r2, [r1]
	cmp r2, #1
	beq _08024CA2
	b _08024E7A
_08024CA2:
	ldr r1, _08024CFC @ => 0x03002030
	ldr r0, [r1]
	eors r0, r2
	str r0, [r1]
	ldr r0, _08024D00 @ => 0x030042E0
	ldr r0, [r0]
	ldrh r0, [r0, #0x38]
	cmp r0, #0
	bne _08024CBC
	ldr r0, _08024D04 @ => 0x03003200
	ldr r0, [r0]
	cmp r0, #0
	beq _08024CC6
_08024CBC:
	bl FUN_0800C298
	ldr r1, _08024D04 @ => 0x03003200
	movs r0, #0
	str r0, [r1]
_08024CC6:
	ldr r0, _08024D00 @ => 0x030042E0
	ldr r0, [r0]
	ldrh r0, [r0, #0x38]
	cmp r0, #0
	beq _08024D80
	ldr r0, _08024D08 @ => 0x03004B30
	ldr r0, [r0]
	ldr r2, _08024D0C @ => 0x03004B40
	cmp r0, r2
	bne _08024D1C
	ldr r2, _08024D10 @ => 0x040000B0
	ldr r0, _08024CFC @ => 0x03002030
	ldr r0, [r0]
	lsls r0, r0, #0xa
	ldr r1, _08024D14 @ => 0x03005380
	adds r0, r0, r1
	str r0, [r2]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r2, #4]
	ldr r0, _08024D18 @ => 0x84000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _08024D34
	.align 2, 0
_08024CF8: .4byte gUnk_0300202C
_08024CFC: .4byte gUnk_03002030
_08024D00: .4byte gUnk_030042E0
_08024D04: .4byte gUnk_03003200
_08024D08: .4byte gUnk_03004B30
_08024D0C: .4byte gUnk_03004B40
_08024D10: .4byte 0x040000B0
_08024D14: .4byte gUnk_03005380
_08024D18: .4byte 0x84000100
_08024D1C:
	ldr r1, _08024D58 @ => 0x040000B0
	ldr r0, _08024D5C @ => 0x03002030
	ldr r0, [r0]
	lsls r0, r0, #0xa
	adds r0, r0, r2
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08024D60 @ => 0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08024D34:
	ldr r2, _08024D64 @ => 0x03005370
	ldr r1, _08024D68 @ => 0x03004A20
	ldrb r0, [r1]
	strb r0, [r2]
	movs r0, #0
	strb r0, [r1]
	bl FUN_080158AC
	ldr r1, _08024D6C @ => 0x03004B30
	ldr r2, _08024D70 @ => 0x03005340
	ldr r0, [r2]
	str r0, [r1]
	ldr r1, _08024D74 @ => 0x03004B40
	cmp r0, r1
	bne _08024D7C
	ldr r0, _08024D78 @ => 0x03005380
	str r0, [r2]
	b _08024DD2
	.align 2, 0
_08024D58: .4byte 0x040000B0
_08024D5C: .4byte gUnk_03002030
_08024D60: .4byte 0x84000100
_08024D64: .4byte gUnk_03005370
_08024D68: .4byte gUnk_03004A20
_08024D6C: .4byte gUnk_03004B30
_08024D70: .4byte gUnk_03005340
_08024D74: .4byte gUnk_03004B40
_08024D78: .4byte gUnk_03005380
_08024D7C:
	str r1, [r2]
	b _08024DD2
_08024D80:
	ldr r0, _08024DA4 @ => 0x03004B30
	ldr r2, [r0]
	ldr r0, _08024DA8 @ => 0x03004B40
	cmp r2, r0
	bne _08024DB8
	ldr r1, _08024DAC @ => 0x040000B0
	ldr r0, _08024DB0 @ => 0x03002030
	ldr r0, [r0]
	lsls r0, r0, #0xa
	adds r0, r0, r2
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08024DB4 @ => 0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _08024DD2
	.align 2, 0
_08024DA4: .4byte gUnk_03004B30
_08024DA8: .4byte gUnk_03004B40
_08024DAC: .4byte 0x040000B0
_08024DB0: .4byte gUnk_03002030
_08024DB4: .4byte 0x84000100
_08024DB8:
	ldr r2, _08024E4C @ => 0x040000B0
	ldr r0, _08024E50 @ => 0x03002030
	ldr r0, [r0]
	lsls r0, r0, #0xa
	ldr r1, _08024E54 @ => 0x03005380
	adds r0, r0, r1
	str r0, [r2]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r2, #4]
	ldr r0, _08024E58 @ => 0x84000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_08024DD2:
	bl FUN_08051F44
	bl FUN_0801AFF8
	ldr r4, _08024E5C @ => 0x030042E0
	ldr r0, [r4]
	ldr r0, [r0]
	cmp r0, #0
	beq _08024DE8
	bl _call_via_r0
_08024DE8:
	bl FUN_0805330C
	bl FUN_0801585C
	ldr r1, [r4]
	ldr r0, [r1, #0x1c]
	adds r0, #1
	str r0, [r1, #0x1c]
	ldr r0, [r1, #0x2c]
	adds r0, #1
	str r0, [r1, #0x2c]
	cmp r0, #0x3b
	bls _08024E0C
	ldr r0, [r1, #0x30]
	str r0, [r1, #0x34]
	movs r0, #0
	str r0, [r1, #0x30]
	str r0, [r1, #0x2c]
_08024E0C:
	ldr r1, [r4]
	ldrh r0, [r1, #0x38]
	cmp r0, #0
	beq _08024E18
	movs r0, #0
	strh r0, [r1, #0x38]
_08024E18:
	ldr r1, _08024E60 @ => 0x03006520
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08024E64 @ => 0x04000202
	movs r2, #1
	strh r2, [r0]
	ldr r1, _08024E68 @ => 0x03002028
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	ldr r3, _08024E6C @ => 0x03006528
	ldrb r1, [r3, #6]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08024E70
	ldrb r0, [r3, #6]
	movs r1, #0xbf
	ands r1, r0
	ldrb r0, [r3, #6]
	strb r1, [r3, #6]
	bl kramWorkerSTUB
	b _08024E7A
	.align 2, 0
_08024E4C: .4byte 0x040000B0
_08024E50: .4byte gUnk_03002030
_08024E54: .4byte gUnk_03005380
_08024E58: .4byte 0x84000100
_08024E5C: .4byte gUnk_030042E0
_08024E60: .4byte gUnk_03006520
_08024E64: .4byte 0x04000202
_08024E68: .4byte gUnk_03002028
_08024E6C: .4byte gUnk_03006528
_08024E70:
	ldrb r0, [r3, #6]
	movs r1, #0x40
	ldrb r2, [r3, #6]
	orrs r1, r0
	strb r1, [r3, #6]
_08024E7A:
	ldr r1, _08024E9C @ => 0x0300202C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	ldr r3, _08024EA0 @ => 0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08024EA4 @ => 0x03007FF8
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2]
	strh r1, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024E9C: .4byte gUnk_0300202C
_08024EA0: .4byte 0x04000208
_08024EA4: .4byte INTR_CHECK_FLAG

	thumb_func_start FUN_08024EA8
FUN_08024EA8: @ 0x08024EA8
	ldr r1, _08024ED4 @ => 0x030042E0
	ldr r0, _08024ED8 @ => 0x03004330
	str r0, [r1]
	ldr r1, _08024EDC @ => 0x040000D4
	ldr r0, _08024EE0 @ =IntrMain
	str r0, [r1]
	ldr r2, _08024EE4 @ => 0x03001E28
	str r2, [r1, #4]
	ldr r0, _08024EE8 @ => 0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08024EEC @ => 0x03007FFC
	str r2, [r0]
	ldr r0, _08024EF0 @ => 0x08062CD0
	str r0, [r1]
	ldr r0, _08024EF4 @ => 0x030042F0
	str r0, [r1, #4]
	ldr r0, _08024EF8 @ => 0x8400000D
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bx lr
	.align 2, 0
_08024ED4: .4byte gUnk_030042E0
_08024ED8: .4byte gUnk_03004330
_08024EDC: .4byte 0x040000D4
_08024EE0: .4byte IntrMain
_08024EE4: .4byte gUnk_03001E28
_08024EE8: .4byte 0x84000080
_08024EEC: .4byte INTR_VECTOR
_08024EF0: .4byte ROMREF_08062CD0
_08024EF4: .4byte gIntrTable
_08024EF8: .4byte 0x8400000D

	thumb_func_start FUN_08024EFC
FUN_08024EFC: @ 0x08024EFC
	ldr r1, _08024F10 @ => 0x04000208
	movs r0, #1
	strh r0, [r1]
	subs r1, #8
	movs r0, #0x11
	strh r0, [r1]
	ldr r1, _08024F14 @ => 0x04000004
	movs r0, #8
	strh r0, [r1]
	bx lr
	.align 2, 0
_08024F10: .4byte 0x04000208
_08024F14: .4byte 0x04000004

	thumb_func_start FUN_08024F18
FUN_08024F18: @ 0x08024F18
	ldr r2, _08024F24 @ => 0x030042F0
	lsls r0, r0, #2
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_08024F24: .4byte gIntrTable

	thumb_func_start FUN_08024F28
FUN_08024F28: @ 0x08024F28
	ldr r2, _08024F38 @ => 0x030042F0
	lsls r0, r0, #2
	adds r2, r0, r2
	ldr r1, _08024F3C @ => 0x08062CD0
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	bx lr
	.align 2, 0
_08024F38: .4byte gIntrTable
_08024F3C: .4byte ROMREF_08062CD0

	thumb_func_start FUN_08024F40
FUN_08024F40: @ 0x08024F40
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	bne _08024F5C
	ldr r0, _08024F54 @ => 0x030042E0
	ldr r1, [r0]
	ldr r0, _08024F58 @ => FUN_08025104
	str r0, [r1]
	b _08024F62
	.align 2, 0
_08024F54: .4byte gUnk_030042E0
_08024F58: .4byte FUN_08025104
_08024F5C:
	ldr r0, _08024F68 @ => 0x030042E0
	ldr r0, [r0]
	str r1, [r0]
_08024F62:
	pop {r0}
	bx r0
	.align 2, 0
_08024F68: .4byte gUnk_030042E0

	thumb_func_start FUN_08024F6C
FUN_08024F6C: @ 0x08024F6C
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	bne _08024F88
	ldr r0, _08024F80 @ => 0x030042E0
	ldr r1, [r0]
	ldr r0, _08024F84 @ => FUN_08025104
	str r0, [r1, #4]
	b _08024F8E
	.align 2, 0
_08024F80: .4byte gUnk_030042E0
_08024F84: .4byte FUN_08025104
_08024F88:
	ldr r0, _08024F94 @ => 0x030042E0
	ldr r0, [r0]
	str r1, [r0, #4]
_08024F8E:
	pop {r0}
	bx r0
	.align 2, 0
_08024F94: .4byte gUnk_030042E0

	thumb_func_start FUN_08024F98
FUN_08024F98: @ 0x08024F98
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	bne _08024FB4
	ldr r0, _08024FAC @ => 0x030042E0
	ldr r1, [r0]
	ldr r0, _08024FB0 @ => FUN_08025104
	str r0, [r1, #8]
	b _08024FBA
	.align 2, 0
_08024FAC: .4byte gUnk_030042E0
_08024FB0: .4byte FUN_08025104
_08024FB4:
	ldr r0, _08024FC0 @ => 0x030042E0
	ldr r0, [r0]
	str r1, [r0, #8]
_08024FBA:
	pop {r0}
	bx r0
	.align 2, 0
_08024FC0: .4byte gUnk_030042E0

	thumb_func_start FUN_08024FC4
FUN_08024FC4: @ 0x08024FC4
	push {lr}
	ldr r0, _08024FE4 @ => 0x03002028
	ldrh r2, [r0]
	ldr r1, _08024FE8 @ => 0x0000FFFE
	ands r1, r2
	strh r1, [r0]
	adds r2, r0, #0
	movs r3, #1
_08024FD4:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08024FD4
	pop {r0}
	bx r0
	.align 2, 0
_08024FE4: .4byte gUnk_03002028
_08024FE8: .4byte 0x0000FFFE

	thumb_func_start FUN_08024FEC
FUN_08024FEC: @ 0x08024FEC
	ldr r3, _08025008 @ => 0x04000200
	ldrh r1, [r3]
	movs r2, #4
	orrs r1, r2
	strh r1, [r3]
	ldr r3, _0802500C @ => 0x04000004
	ldrh r1, [r3]
	movs r2, #0x20
	orrs r1, r2
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r3]
	bx lr
	.align 2, 0
_08025008: .4byte 0x04000200
_0802500C: .4byte 0x04000004

	thumb_func_start FUN_08025010
FUN_08025010: @ 0x08025010
	ldr r2, _08025028 @ => 0x04000200
	ldrh r1, [r2]
	ldr r0, _0802502C @ => 0x0000FFFB
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08025030 @ => 0x04000004
	ldrh r1, [r2]
	ldr r0, _08025034 @ => 0x0000FFDF
	ands r0, r1
	strh r0, [r2]
	bx lr
	.align 2, 0
_08025028: .4byte 0x04000200
_0802502C: .4byte 0x0000FFFB
_08025030: .4byte 0x04000004
_08025034: .4byte 0x0000FFDF

	thumb_func_start FUN_08025038
FUN_08025038: @ 0x08025038
	push {lr}
	bl FUN_08000B70
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08025044
FUN_08025044: @ 0x08025044
	push {r4, lr}
	ldr r4, _08025070 @ => 0x030042E0
	ldr r0, [r4]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _08025054
	bl _call_via_r0
_08025054:
	ldr r1, [r4]
	ldr r0, [r1, #0x24]
	adds r0, #1
	str r0, [r1, #0x24]
	ldr r0, _08025074 @ => 0x04000202
	movs r2, #2
	strh r2, [r0]
	ldr r1, _08025078 @ => 0x03002028
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025070: .4byte gUnk_030042E0
_08025074: .4byte 0x04000202
_08025078: .4byte gUnk_03002028

	thumb_func_start FUN_0802507C
FUN_0802507C: @ 0x0802507C
	push {r4, lr}
	ldr r4, _080250A8 @ => 0x030042E0
	ldr r0, [r4]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0802508C
	bl _call_via_r0
_0802508C:
	ldr r1, [r4]
	ldr r0, [r1, #0x28]
	adds r0, #1
	str r0, [r1, #0x28]
	ldr r0, _080250AC @ => 0x04000202
	movs r2, #4
	strh r2, [r0]
	ldr r1, _080250B0 @ => 0x03002028
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080250A8: .4byte gUnk_030042E0
_080250AC: .4byte 0x04000202
_080250B0: .4byte gUnk_03002028

	thumb_func_start FUN_080250B4
FUN_080250B4: @ 0x080250B4
	ldr r0, _080250D0 @ => 0x030042E0
	ldr r1, [r0]
	ldr r0, [r1, #0xc]
	adds r0, #1
	str r0, [r1, #0xc]
	ldr r0, _080250D4 @ => 0x04000202
	movs r2, #8
	strh r2, [r0]
	ldr r1, _080250D8 @ => 0x03002028
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	bx lr
	.align 2, 0
_080250D0: .4byte gUnk_030042E0
_080250D4: .4byte 0x04000202
_080250D8: .4byte gUnk_03002028

	thumb_func_start FUN_080250DC
FUN_080250DC: @ 0x080250DC
	ldr r0, _080250F8 @ => 0x030042E0
	ldr r1, [r0]
	ldr r0, [r1, #0x18]
	adds r0, #1
	str r0, [r1, #0x18]
	ldr r0, _080250FC @ => 0x04000202
	movs r2, #0x40
	strh r2, [r0]
	ldr r1, _08025100 @ => 0x03002028
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	bx lr
	.align 2, 0
_080250F8: .4byte gUnk_030042E0
_080250FC: .4byte 0x04000202
_08025100: .4byte gUnk_03002028

	thumb_func_start FUN_08025104
FUN_08025104: @ 0x08025104
	bx lr
	.align 2, 0
