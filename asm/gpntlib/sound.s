.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_0804DE0C
FUN_0804DE0C: @ 0x0804DE0C
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r5, #0
	ldr r0, _0804DE70 @ => 0x03005E20
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _0804DE68
	ldr r1, _0804DE74 @ => 0x09FC1918
	lsls r0, r2, #2
	adds r0, r0, r1
	ldrh r4, [r0, #2]
	ldrh r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_08042570
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0804DE78 @ => 0x09FC148C
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r4, [r4]
	ldr r1, _0804DE7C @ => 0x03006528
	ldrb r2, [r1, #6]
	movs r0, #0x80
	ldrb r3, [r1, #6]
	orrs r0, r2
	strb r0, [r1, #6]
	ldr r1, _0804DE80 @ =samples
	lsls r0, r4, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	movs r2, #0
	bl kramPlaySTUB
	adds r5, r0, #0
	lsrs r4, r4, #0x10
	adds r1, r4, #0
	bl kramSetFreqSTUB
	bl FUN_0804E244
_0804DE68:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0804DE70: .4byte gUnk_03005E20
_0804DE74: .4byte ROMREF_09FC1918
_0804DE78: .4byte ROMREF_09FC148C
_0804DE7C: .4byte gUnk_03006528
_0804DE80: .4byte samples

	thumb_func_start FUN_0804DE84
FUN_0804DE84: @ 0x0804DE84
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _0804DEEC @ => 0x03005E20
	ldrb r0, [r0, #9]
	cmp r0, #0
	beq _0804DEFC
	ldr r5, _0804DEF0 @ => 0x03006528
	ldrb r0, [r5, #5]
	cmp r6, r0
	bne _0804DEA4
	ldrb r1, [r5, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804DF00
_0804DEA4:
	ldrb r1, [r5, #6]
	movs r0, #0x80
	ldrb r2, [r5, #6]
	orrs r0, r1
	strb r0, [r5, #6]
	ldr r1, _0804DEF4 @ => 0x09FC1D7C
	lsls r0, r6, #3
	adds r0, r0, r1
	ldr r3, [r0]
	ldr r4, [r0, #4]
	ldrb r1, [r0, #4]
	lsrs r2, r4, #8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r3, #0
	bl krapPlay
	bl FUN_0804E244
	ldrb r1, [r5, #6]
	movs r0, #0xfd
	ands r0, r1
	ldrb r1, [r5, #6]
	strb r0, [r5, #6]
	ldr r0, _0804DEF8 @ => 0x030043A0
	ldr r0, [r0]
	movs r0, #8
	strb r0, [r5, #4]
	ldr r2, _0804DEF0 @ => 0x03006528
	ldrb r1, [r2, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0804DF00
	strb r6, [r2, #5]
	b _0804DF00
	.align 2, 0
_0804DEEC: .4byte gUnk_03005E20
_0804DEF0: .4byte gUnk_03006528
_0804DEF4: .4byte ModuleTable
_0804DEF8: .4byte gUnk_030043A0
_0804DEFC:
	ldr r0, _0804DF08 @ => 0x03006528
	strb r6, [r0, #5]
_0804DF00:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804DF08: .4byte gUnk_03006528

	thumb_func_start FUN_0804DF0C
FUN_0804DF0C: @ 0x0804DF0C
	push {lr}
	ldr r1, _0804DF1C @ => 0x03006528
	movs r0, #8
	strb r0, [r1, #4]
	bl FUN_0804DF20
	pop {r0}
	bx r0
	.align 2, 0
_0804DF1C: .4byte gUnk_03006528

	thumb_func_start FUN_0804DF20
FUN_0804DF20: @ 0x0804DF20
	push {r4, r5, lr}
	movs r0, #1
	bl kragInit
	ldr r0, _0804DF60 @ => 0x00040080
	bl kramSetMasterVol
	movs r0, #0
	bl kramQualityMode
	ldr r5, _0804DF64 @ => 0x03006528
	ldrb r0, [r5, #4]
	bl FUN_0804DFA8
	ldr r4, _0804DF68 @ => 0x03005E20
	ldrb r0, [r4, #8]
	bl FUN_0804DFB4
	ldrb r0, [r4, #9]
	bl FUN_0804DFD0
	movs r0, #0xff
	strb r0, [r5, #5]
	ldrb r0, [r5, #6]
	movs r0, #0
	strb r0, [r5, #6]
	bl FUN_0804DF90
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804DF60: .4byte 0x00040080
_0804DF64: .4byte gUnk_03006528
_0804DF68: .4byte gUnk_03005E20

	thumb_func_start FUN_0804DF6C
FUN_0804DF6C: @ 0x0804DF6C
	push {lr}
	bl kradDeactivate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0804DF78
FUN_0804DF78: @ 0x0804DF78
	push {lr}
	bl kradDeactivate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0804DF84
FUN_0804DF84: @ 0x0804DF84
	push {lr}
	bl kradActivate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0804DF90
FUN_0804DF90: @ 0x0804DF90
	push {lr}
	ldr r1, _0804DFA4 @ => 0x0808F134
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl krapCallback
	pop {r0}
	bx r0
	.align 2, 0
_0804DFA4: .4byte ROMREF_0808F134

	thumb_func_start FUN_0804DFA8
FUN_0804DFA8: @ 0x0804DFA8
	ldr r1, _0804DFB0 @ => 0x03006528
	strb r0, [r1, #4]
	bx lr
	.align 2, 0
_0804DFB0: .4byte gUnk_03006528

	thumb_func_start FUN_0804DFB4
FUN_0804DFB4: @ 0x0804DFB4
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl kramSetSFXVol
	ldr r0, _0804DFCC @ => 0x03005E20
	strb r4, [r0, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804DFCC: .4byte gUnk_03005E20

	thumb_func_start FUN_0804DFD0
FUN_0804DFD0: @ 0x0804DFD0
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	movs r1, #0
	bl krapSetMusicVol
	ldr r0, _0804DFEC @ => 0x03005E20
	strb r4, [r0, #9]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804DFEC: .4byte gUnk_03005E20

	thumb_func_start FUN_0804DFF0
FUN_0804DFF0: @ 0x0804DFF0
	push {lr}
	bl krapSetChannelVol
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0804DFFC
FUN_0804DFFC: @ 0x0804DFFC
	push {lr}
	bl krapGetChannelVol
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0804E008
FUN_0804E008: @ 0x0804E008
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r6, #0
	ldr r0, _0804E02C @ => 0x03005E20
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _0804E032
	adds r0, r4, #0
	bl FUN_0804E168
	cmp r0, #0
	bne _0804E030
	adds r0, r5, #0
	bl FUN_0804DE0C
	b _0804E032
	.align 2, 0
_0804E02C: .4byte gUnk_03005E20
_0804E030:
	adds r6, r4, #0
_0804E032:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0804E03C
FUN_0804E03C: @ 0x0804E03C
	push {lr}
	adds r1, r0, #0
	ldr r0, _0804E054 @ => 0x03005E20
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _0804E04E
	adds r0, r1, #0
	bl kramStopSTUB
_0804E04E:
	pop {r0}
	bx r0
	.align 2, 0
_0804E054: .4byte gUnk_03005E20

	thumb_func_start FUN_0804E058
FUN_0804E058: @ 0x0804E058
	push {lr}
	ldr r0, _0804E06C @ => 0x03005E20
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _0804E066
	bl kramStopSFXChannels
_0804E066:
	pop {r0}
	bx r0
	.align 2, 0
_0804E06C: .4byte gUnk_03005E20

	thumb_func_start FUN_0804E070
FUN_0804E070: @ 0x0804E070
	push {lr}
	ldr r0, _0804E084 @ => 0x03005E20
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _0804E07E
	bl kramStopSFXChannels
_0804E07E:
	pop {r0}
	bx r0
	.align 2, 0
_0804E084: .4byte gUnk_03005E20

	thumb_func_start FUN_0804E088
FUN_0804E088: @ 0x0804E088
	push {lr}
	bl FUN_0804E094
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0804E094
FUN_0804E094: @ 0x0804E094
	push {lr}
	ldr r0, _0804E0BC @ => 0x03005E20
	ldrb r0, [r0, #9]
	cmp r0, #0
	beq _0804E0B8
	bl krapIsPaused
	cmp r0, #0
	bne _0804E0B8
	movs r0, #0
	bl krapPause
	ldr r1, _0804E0C0 @ => 0x03006528
	ldrb r2, [r1, #6]
	movs r0, #1
	ldrb r3, [r1, #6]
	orrs r0, r2
	strb r0, [r1, #6]
_0804E0B8:
	pop {r0}
	bx r0
	.align 2, 0
_0804E0BC: .4byte gUnk_03005E20
_0804E0C0: .4byte gUnk_03006528

	thumb_func_start FUN_0804E0C4
FUN_0804E0C4: @ 0x0804E0C4
	push {r4, lr}
	ldr r0, _0804E0F0 @ => 0x03005E20
	ldrb r0, [r0, #9]
	cmp r0, #0
	beq _0804E0E8
	ldr r4, _0804E0F4 @ => 0x03006528
	ldrb r1, [r4, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804E0E8
	bl krapUnpause
	ldrb r0, [r4, #6]
	movs r1, #0xfe
	ands r1, r0
	ldrb r0, [r4, #6]
	strb r1, [r4, #6]
_0804E0E8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804E0F0: .4byte gUnk_03005E20
_0804E0F4: .4byte gUnk_03006528

	thumb_func_start FUN_0804E0F8
FUN_0804E0F8: @ 0x0804E0F8
	push {lr}
	ldr r0, _0804E118 @ => 0x03005E20
	ldrb r0, [r0, #9]
	cmp r0, #0
	beq _0804E112
	bl krapStop
	ldr r1, _0804E11C @ => 0x03006528
	ldrb r2, [r1, #6]
	movs r0, #0xfe
	ands r0, r2
	ldrb r2, [r1, #6]
	strb r0, [r1, #6]
_0804E112:
	pop {r0}
	bx r0
	.align 2, 0
_0804E118: .4byte gUnk_03005E20
_0804E11C: .4byte gUnk_03006528

	thumb_func_start FUN_0804E120
FUN_0804E120: @ 0x0804E120
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _0804E15C @ => 0x03005E20
	ldrb r0, [r0, #9]
	cmp r0, #0
	beq _0804E154
	ldr r1, _0804E160 @ => 0x03006528
	ldrb r2, [r1, #6]
	movs r0, #0x80
	ldrb r3, [r1, #6]
	orrs r0, r2
	strb r0, [r1, #6]
	ldr r1, _0804E164 @ => 0x09FC1D7C
	lsls r0, r4, #3
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	lsrs r2, r1, #8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r1, #4
	bl krapPlay
	bl FUN_0804E244
_0804E154:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804E15C: .4byte gUnk_03005E20
_0804E160: .4byte gUnk_03006528
_0804E164: .4byte ModuleTable

	thumb_func_start FUN_0804E168
FUN_0804E168: @ 0x0804E168
	push {lr}
	bl kramHandleValid
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0804E174
FUN_0804E174: @ 0x0804E174
	push {lr}
	bl kramSetFreqSTUB
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0804E180
FUN_0804E180: @ 0x0804E180
	push {lr}
	cmp r1, #0x40
	ble _0804E188
	movs r1, #0x40
_0804E188:
	movs r2, #0x40
	rsbs r2, r2, #0
	cmp r1, r2
	bge _0804E192
	adds r1, r2, #0
_0804E192:
	bl kramSetPanSTUB
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0804E19C
FUN_0804E19C: @ 0x0804E19C
	push {lr}
	cmp r1, #0x40
	ble _0804E1A4
	movs r1, #0x40
_0804E1A4:
	cmp r1, #0
	bge _0804E1AA
	movs r1, #0
_0804E1AA:
	bl kramSetVolSTUB
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0804E1B4
FUN_0804E1B4: @ 0x0804E1B4
	ldr r3, _0804E1CC @ => 0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _0804E1D0 @ => 0x04000200
	ldrh r1, [r2]
	ldr r0, _0804E1D4 @ => 0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	bx lr
	.align 2, 0
_0804E1CC: .4byte 0x04000208
_0804E1D0: .4byte 0x04000200
_0804E1D4: .4byte 0x0000FFEF

	thumb_func_start FUN_0804E1D8
FUN_0804E1D8: @ 0x0804E1D8
	ldr r3, _0804E1F0 @ => 0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _0804E1F4 @ => 0x04000200
	ldrh r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	bx lr
	.align 2, 0
_0804E1F0: .4byte 0x04000208
_0804E1F4: .4byte 0x04000200

	thumb_func_start FUN_0804E1F8
FUN_0804E1F8: @ 0x0804E1F8
	push {lr}
	adds r2, r1, #0
	cmp r0, #3
	beq _0804E220
	cmp r0, #3
	bgt _0804E20A
	cmp r0, #2
	beq _0804E212
	b _0804E23C
_0804E20A:
	cmp r0, #5
	beq _0804E230
	cmp r0, #6
	bne _0804E23C
_0804E212:
	ldr r1, _0804E21C @ => 0x03006528
	ldrb r2, [r1, #6]
	movs r0, #2
	b _0804E236
	.align 2, 0
_0804E21C: .4byte gUnk_03006528
_0804E220:
	ldr r1, _0804E22C @ => 0x03006528
	str r2, [r1]
	ldrb r2, [r1, #6]
	movs r0, #4
	b _0804E236
	.align 2, 0
_0804E22C: .4byte gUnk_03006528
_0804E230:
	ldr r1, _0804E240 @ => 0x03006528
	ldrb r2, [r1, #6]
	movs r0, #0x10
_0804E236:
	ldrb r3, [r1, #6]
	orrs r0, r2
	strb r0, [r1, #6]
_0804E23C:
	pop {r0}
	bx r0
	.align 2, 0
_0804E240: .4byte gUnk_03006528

	thumb_func_start FUN_0804E244
FUN_0804E244: @ 0x0804E244
	push {r4, lr}
	ldr r4, _0804E268 @ => 0x03006528
	ldrb r1, [r4, #6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0804E256
	bl kramWorkerSTUB
_0804E256:
	ldrb r0, [r4, #6]
	movs r1, #0x7f
	ands r1, r0
	ldrb r0, [r4, #6]
	strb r1, [r4, #6]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804E268: .4byte gUnk_03006528
