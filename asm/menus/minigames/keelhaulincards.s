.include "asm/constants.s"
.include "asm/macros.s"
.include "data/lists/sounds.inc"

.syntax unified

	thumb_func_start KeelhaulinCards_Init
KeelhaulinCards_Init: @ 0x0803562C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	add r1, sp, #0x18
	movs r0, #0
	strh r0, [r1]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _080356AC @ => 0x01008000
	add r0, sp, #0x18
	bl SVC_CpuSet
	movs r0, #0
	bl FUN_0805273C
	movs r0, #0
	bl FUN_0800C558
	movs r0, #0x80
	lsls r0, r0, #5
	bl FUN_0800C5EC
	mov r0, sp
	adds r0, #0x1c
	str r0, [sp, #0x30]
	mov r1, sp
	adds r1, #0x20
	str r1, [sp, #0x34]
	adds r0, #8
	str r0, [sp, #0x38]
	movs r2, #0
	ldr r7, _080356B0 @ => 0x03002338
	movs r1, #9
	adds r0, r7, #0
	adds r0, #0x48
_08035678:
	str r2, [r0]
	subs r0, #4
	subs r1, #1
	cmp r1, #0
	bge _08035678
	adds r0, r7, #0
	adds r0, #0x61
	movs r1, #0
	strb r1, [r0]
	ldr r0, _080356B4 @ => 0x03004720
	ldr r0, [r0, #0xc]
	cmp r0, #1
	bne _080356C8
	ldr r0, _080356B8 @ => 0x030047F8
	strb r1, [r0, #4]
	adds r1, r7, #0
	adds r1, #0xc4
	ldr r0, _080356BC @ => FUN_08037A78
	str r0, [r1]
	adds r1, #4
	ldr r0, _080356C0 @ => FUN_08037478
	str r0, [r1]
	adds r1, #4
	ldr r0, _080356C4 @ => FUN_08037AB4
	b _080356DA
	.align 2, 0
_080356AC: .4byte 0x01008000
_080356B0: .4byte gUnk_03002338
_080356B4: .4byte gUnk_03004720
_080356B8: .4byte gUnk_030047F8
_080356BC: .4byte FUN_08037A78
_080356C0: .4byte FUN_08037478
_080356C4: .4byte FUN_08037AB4
_080356C8:
	adds r1, r7, #0
	adds r1, #0xc4
	ldr r0, _08035890 @ => FUN_08037984
	str r0, [r1]
	adds r1, #4
	ldr r0, _08035894 @ => FUN_08036FAC
	str r0, [r1]
	adds r1, #4
	ldr r0, _08035898 @ => FUN_080379B0
_080356DA:
	str r0, [r1]
	adds r0, r7, #0
	adds r0, #0xb0
	movs r4, #0
	str r4, [r0]
	subs r0, #7
	movs r1, #1
	strb r1, [r0]
	adds r1, r7, #0
	adds r1, #0xaa
	movs r0, #9
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0xb4
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	str r4, [r7, #0x18]
	subs r0, #0x56
	strb r4, [r0]
	str r4, [r7, #8]
	str r4, [r7, #0xc]
	adds r0, #0x5a
	str r4, [r0]
	subs r0, #0x59
	strb r4, [r0]
	adds r0, #0x48
	strb r4, [r0]
	ldr r5, _0803589C @ => 0x080693E8
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #5
	bl FUN_0802D680
	str r0, [r7]
	strh r4, [r0, #0xa]
	ldr r0, [r7]
	movs r1, #1
	strh r1, [r0, #8]
	ldr r0, [r7]
	ldr r1, [r0, #0xc]
	movs r2, #2
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #0xc]
	ldr r1, _080358A0 @ => FUN_08036578
	str r1, [r0, #0x50]
	ldr r1, _080358A4 @ => 0x09FB665C
	ldr r2, [r1]
	adds r1, r5, #0
	movs r3, #0
	bl FUN_0800192C
	ldr r0, _080358A8 @ => 0x08069408
	movs r5, #2
	str r5, [sp]
	movs r1, #6
	movs r2, #6
	movs r3, #0
	bl FUN_0802D680
	str r0, [r7, #4]
	ldr r1, _080358AC @ => FUN_0803775C
	str r1, [r0, #0x50]
	ldr r0, _080358B0 @ => 0x08069418
	str r5, [sp]
	movs r1, #0x63
	movs r2, #0x25
	movs r3, #2
	bl FUN_0802D680
	str r0, [r7, #0x10]
	movs r1, #3
	strh r1, [r0, #8]
	ldr r0, _080358B4 @ => 0x08069428
	str r1, [sp]
	movs r1, #0x9c
	movs r2, #0x2a
	movs r3, #3
	bl FUN_0802D680
	str r0, [r7, #0x14]
	movs r1, #5
	strh r1, [r0, #8]
	ldr r0, _080358B8 @ => 0x08068DD4
	movs r1, #0
	bl FUN_0802D11C
	str r4, [r7, #0x20]
	movs r0, #0
	bl FUN_08037910
	bl FUN_080360D4
	bl FUN_08036190
	ldr r0, _080358BC @ => 0x08068DBC
	ldr r1, [r0]
	movs r0, #1
	bl FUN_0800C418
	ldr r0, _080358C0 @ => 0x08068DC0
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C418
	ldr r0, _080358C4 @ => 0x08068DC4
	ldr r1, [r0]
	movs r0, #2
	bl FUN_0800C418
	ldr r0, _080358C8 @ => 0x08068DC8
	ldr r5, [r0]
	movs r0, #0
	adds r1, r5, #0
	bl FUN_0800C418
	movs r6, #0
	ldr r2, _080358CC @ => 0x08E9D1B8
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	str r4, [sp, #0x14]
	ldr r0, [sp, #0x30]
	movs r1, #1
	movs r3, #1
	bl FUN_0800D83C
	ldr r2, _080358D0 @ => 0x08E9EA98
	ldr r3, _080358D4 @ => 0x00000171
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x34]
	movs r1, #3
	bl FUN_0800D83C
	movs r1, #0
	movs r0, #0
	ldr r2, _080358D8 @ => 0x08EA12AC
	ldr r3, _080358DC @ => 0x000003CF
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r1, #1
	str r1, [sp, #0x14]
	ldr r0, [sp, #0x38]
	movs r1, #2
	bl FUN_0800D83C
	movs r0, #1
	movs r1, #2
	movs r2, #6
	movs r3, #6
	bl FUN_08021428
	adds r0, r5, #0
	bl FUN_0801FE58
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #1
	movs r1, #0
	bl FUN_0801FEA0
	ldr r1, _080358E0 @ => 0x00006666
	movs r0, #3
	movs r2, #0
	bl FUN_0800CE60
	ldr r1, _080358E4 @ => 0x0000CCCC
	movs r0, #2
	movs r2, #0
	bl FUN_0800CE60
	ldr r2, _080358E8 @ => 0xFFFC0000
	movs r0, #2
	movs r1, #0
	bl FUN_0800CB80
	movs r2, #0xc0
	lsls r2, r2, #1
	movs r0, #2
	movs r1, #0
	movs r3, #4
	bl FUN_0800CF8C
	bl FUN_08037790
	movs r0, SOUNDTRACK_KEELHAULIN_CARDS
	bl FUN_0804DE84
	movs r0, #0x3f
	movs r1, #0
	bl FUN_080457F4
	adds r0, r7, #0
	adds r0, #0xc4
	ldr r0, [r0]
	bl _call_via_r0
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035890: .4byte FUN_08037984
_08035894: .4byte FUN_08036FAC
_08035898: .4byte FUN_080379B0
_0803589C: .4byte ROMREF_080693E8
_080358A0: .4byte FUN_08036578
_080358A4: .4byte ROMREF_09FB665C
_080358A8: .4byte ROMREF_08069408
_080358AC: .4byte FUN_0803775C
_080358B0: .4byte ROMREF_08069418
_080358B4: .4byte ROMREF_08069428
_080358B8: .4byte ROMREF_08068DD4
_080358BC: .4byte ROMREF_08068DBC
_080358C0: .4byte ROMREF_08068DC0
_080358C4: .4byte ROMREF_08068DC4
_080358C8: .4byte ROMREF_08068DC8
_080358CC: .4byte ROMREF_08E9D1B8
_080358D0: .4byte ROMREF_08E9EA98
_080358D4: .4byte 0x00000171
_080358D8: .4byte ROMREF_08EA12AC
_080358DC: .4byte 0x000003CF
_080358E0: .4byte 0x00006666
_080358E4: .4byte 0x0000CCCC
_080358E8: .4byte 0xFFFC0000

	thumb_func_start KeelhaulinCards_Handler
KeelhaulinCards_Handler: @ 0x080358EC
	push {r4, r5, r6, lr}
	sub sp, #0x24
	ldr r0, _08035908 @ => 0x03004720
	ldr r1, [r0, #0x14]
	adds r4, r0, #0
	cmp r1, #0x10
	bls _080358FC
	b _0803603E
_080358FC:
	lsls r0, r1, #2
	ldr r1, _0803590C @ =_08035910
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08035908: .4byte gUnk_03004720
_0803590C: .4byte _08035910
_08035910: @ jump table
	.4byte _08035954 @ case 0
	.4byte _080359F0 @ case 1
	.4byte _08035AAC @ case 2
	.4byte _08035B88 @ case 3
	.4byte _08035C20 @ case 4
	.4byte _08035C44 @ case 5
	.4byte _08035E1C @ case 6
	.4byte _08035C84 @ case 7
	.4byte _08035D14 @ case 8
	.4byte _08035D94 @ case 9
	.4byte _08035E2C @ case 10
	.4byte _08035E84 @ case 11
	.4byte _08035ED2 @ case 12
	.4byte _08035F00 @ case 13
	.4byte _08035F54 @ case 14
	.4byte _08035F88 @ case 15
	.4byte _08036000 @ case 16
_08035954:
	ldr r5, _080359D4 @ => 0x03002338
	adds r4, r5, #0
	adds r4, #0x61
	ldrb r0, [r4]
	cmp r0, #0
	beq _080359DC
	bl FUN_0802D13C
	adds r5, r0, #0
	adds r6, r4, #0
_08035968:
	bl FUN_0802D068
	bl FUN_0802D13C
	adds r4, r0, #0
	ldrb r0, [r6]
	cmp r4, r0
	bge _08035968
	cmp r5, r4
	beq _080359B2
	movs r0, #0xb2
	bl FUN_0804DE0C
	ldr r6, _080359D4 @ => 0x03002338
	ldr r5, [r6]
	adds r0, r4, #0
	movs r1, #5
	bl __modsi3
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, #5
	movs r2, #0x72
	cmp r4, #4
	bgt _0803599E
	movs r2, #0x48
_0803599E:
	adds r0, r5, #0
	movs r3, #4
	bl FUN_08001810
	ldr r1, [r6]
	ldrh r0, [r1, #0xa]
	cmp r0, #1
	bne _080359B2
	movs r0, #0
	strh r0, [r1, #0xa]
_080359B2:
	ldr r0, _080359D8 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080359C0
	b _0803603E
_080359C0:
	ldr r0, _080359D4 @ => 0x03002338
	ldr r0, [r0]
	adds r0, #0x40
	ldrh r0, [r0]
	cmp r0, #0
	beq _080359CE
	b _0803603E
_080359CE:
	bl FUN_08036618
	b _0803603E
	.align 2, 0
_080359D4: .4byte gUnk_03002338
_080359D8: .4byte gUnk_030042B0
_080359DC:
	movs r0, #0
	bl FUN_08036AEC
	adds r0, r5, #0
	adds r0, #0xcc
	ldr r4, [r0]
	movs r0, #5
	movs r1, #0
	movs r2, #0
	b _08035C12
_080359F0:
	bl FUN_0802D068
	cmp r0, #0
	beq _08035A26
	movs r0, #0xb2
	bl FUN_0804DE0C
	bl FUN_0802D13C
	adds r0, #2
	bl FUN_080377A0
	bl FUN_0802D13C
	adds r1, r0, #0
	add r0, sp, #0xc
	bl FUN_0802D1A8
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	ldr r0, _08035A40 @ => 0x03002338
	ldr r0, [r0]
	adds r1, r2, #0
	adds r2, r3, #0
	movs r3, #4
	bl FUN_08001810
_08035A26:
	ldr r0, _08035A44 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r5, #1
	ands r5, r1
	cmp r5, #0
	beq _08035A58
	bl FUN_0802D13C
	cmp r0, #0
	beq _08035A48
	bl FUN_0803681C
	b _0803603E
	.align 2, 0
_08035A40: .4byte gUnk_03002338
_08035A44: .4byte gUnk_030042B0
_08035A48:
	ldr r0, _08035A54 @ => 0x03002338
	adds r0, #0xa8
	ldrb r0, [r0]
	bl FUN_08036508
	b _0803603E
	.align 2, 0
_08035A54: .4byte gUnk_03002338
_08035A58:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08035A62
	b _0803603E
_08035A62:
	movs r0, #0xb1
	bl FUN_0804DE0C
	movs r0, #0
	bl FUN_08037910
	movs r0, #1
	bl FUN_080377A0
	ldr r4, _08035AA4 @ => 0x03002338
	ldr r0, [r4]
	strh r5, [r0, #0xa]
	ldr r0, _08035AA8 @ => 0x08068DD4
	adds r1, r4, #0
	adds r1, #0xa8
	ldrb r1, [r1]
	bl FUN_0802D11C
	bl FUN_0802D13C
	adds r1, r0, #0
	add r0, sp, #0x14
	bl FUN_0802D1A8
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	ldr r0, [r4]
	adds r1, r2, #0
	adds r2, r3, #0
	bl FUN_08001734
	b _0803603E
	.align 2, 0
_08035AA4: .4byte gUnk_03002338
_08035AA8: .4byte ROMREF_08068DD4
_08035AAC:
	ldr r0, [r4, #0x18]
	subs r0, #1
	str r0, [r4, #0x18]
	cmp r0, #0
	bne _08035B3C
	ldr r5, _08035AE0 @ => 0x03002338
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #1
	bne _08035B10
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _08035AE4
	bl FUN_0804C084
	cmp r0, #1
	bne _08035AE4
	adds r1, r5, #0
	adds r1, #0xf8
	movs r0, #8
	strb r0, [r1]
	movs r0, #0
	bl FUN_08036AEC
	b _08035B24
	.align 2, 0
_08035AE0: .4byte gUnk_03002338
_08035AE4:
	ldr r4, _08035B30 @ => 0x03002338
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #1
	bne _08035B10
	ldr r0, _08035B34 @ => 0x03004720
	ldr r0, [r0, #0xc]
	cmp r0, #1
	bne _08035B10
	bl FUN_0804C084
	cmp r0, #0
	bne _08035B10
	adds r1, r4, #0
	adds r1, #0xf8
	movs r0, #7
	strb r0, [r1]
	subs r1, #0x58
	ldrb r0, [r1]
	adds r0, #7
	strb r0, [r1]
_08035B10:
	movs r0, #1
	bl FUN_080377A0
	ldr r0, _08035B38 @ => 0x08068DD4
	movs r1, #0
	bl FUN_0802D11C
	movs r0, #0
	bl FUN_08037910
_08035B24:
	ldr r0, _08035B30 @ => 0x03002338
	adds r0, #0xac
	movs r1, #0
	str r1, [r0]
	b _0803603E
	.align 2, 0
_08035B30: .4byte gUnk_03002338
_08035B34: .4byte gUnk_03004720
_08035B38: .4byte ROMREF_08068DD4
_08035B3C:
	cmp r0, #5
	bne _08035B7C
	ldr r0, _08035B78 @ => 0x03002338
	adds r2, r0, #0
	adds r2, #0xa6
	ldrb r1, [r2]
	cmp r1, #0
	bne _08035B4E
	b _0803603E
_08035B4E:
	adds r0, #0x61
	ldrb r0, [r0]
	cmp r0, #9
	bls _08035B58
	b _0803603E
_08035B58:
	subs r0, r1, #1
	strb r0, [r2]
	movs r0, #0x93
	bl FUN_0804DE0C
	bl FUN_080376B8
	movs r1, #6
	movs r2, #6
	bl FUN_080376EC
	bl FUN_08037728
	movs r0, #0x14
	str r0, [r4, #0x18]
	b _0803603E
	.align 2, 0
_08035B78: .4byte gUnk_03002338
_08035B7C:
	cmp r0, #0xa
	beq _08035B82
	b _0803603E
_08035B82:
	bl FUN_080362D4
	b _0803603E
_08035B88:
	bl FUN_0802D068
	cmp r0, #0
	beq _08035BB4
	movs r0, #0xb2
	bl FUN_0804DE0C
	bl FUN_0802D13C
	adds r1, r0, #0
	add r0, sp, #0x1c
	bl FUN_0802D1A8
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	ldr r0, _08035BF4 @ => 0x03002338
	ldr r0, [r0]
	adds r1, r2, #0
	adds r2, r3, #0
	movs r3, #4
	bl FUN_08001810
_08035BB4:
	ldr r0, _08035BF8 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08035BC2
	b _0803603E
_08035BC2:
	bl FUN_0802D13C
	cmp r0, #0
	beq _08035C00
	ldr r4, _08035BF4 @ => 0x03002338
	ldr r0, [r4, #8]
	bl FUN_08037728
	movs r0, #0
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0xa6
	strb r0, [r1]
	movs r0, #2
	bl FUN_08037910
	ldr r1, _08035BFC @ => 0x03004720
	movs r0, #0xa
	str r0, [r1, #0x18]
	bl FUN_080362D4
	adds r4, #0xcc
	ldr r4, [r4]
	movs r0, #4
	b _08035C0E
	.align 2, 0
_08035BF4: .4byte gUnk_03002338
_08035BF8: .4byte gUnk_030042B0
_08035BFC: .4byte gUnk_03004720
_08035C00:
	movs r0, #1
	bl FUN_08036204
	ldr r0, _08035C1C @ => 0x03002338
	adds r0, #0xcc
	ldr r4, [r0]
	movs r0, #3
_08035C0E:
	movs r1, #0
	movs r2, #1
_08035C12:
	movs r3, #0
	bl _call_via_r4
	b _0803603E
	.align 2, 0
_08035C1C: .4byte gUnk_03002338
_08035C20:
	ldr r0, [r4, #0x18]
	subs r5, r0, #1
	str r5, [r4, #0x18]
	cmp r5, #0
	beq _08035C2C
	b _0803603E
_08035C2C:
	ldr r4, _08035C40 @ => 0x03002338
	ldr r0, [r4, #0x20]
	bl FUN_080378C0
	str r5, [r4, #0x20]
	movs r0, #1
	bl FUN_08036AEC
	b _0803603E
	.align 2, 0
_08035C40: .4byte gUnk_03002338
_08035C44:
	ldr r0, [r4, #0x18]
	subs r0, #1
	str r0, [r4, #0x18]
	cmp r0, #0
	beq _08035C50
	b _0803603E
_08035C50:
	movs r6, #0
	ldr r0, _08035C80 @ => 0x03002338
	adds r5, r0, #0
	adds r5, #0x4c
	movs r4, #4
_08035C5A:
	ldr r0, [r5]
	cmp r0, #0
	beq _08035C66
	adds r6, #1
	bl FUN_080378E8
_08035C66:
	adds r5, #4
	subs r4, #1
	cmp r4, #0
	bge _08035C5A
	ldr r0, _08035C80 @ => 0x03002338
	adds r0, #0xa7
	ldrb r0, [r0]
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0
	bl FUN_08036984
	b _0803603E
	.align 2, 0
_08035C80: .4byte gUnk_03002338
_08035C84:
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _08035C9E
	ldr r1, _08035CC0 @ => 0x03002338
	ldr r0, [r1, #0x18]
	ldrh r0, [r0, #0xa]
	cmp r0, #1
	bhi _08035C9E
	adds r0, r1, #0
	adds r0, #0xc8
	ldr r0, [r0]
	bl _call_via_r0
_08035C9E:
	ldr r2, _08035CC0 @ => 0x03002338
	ldr r1, [r2, #0x18]
	ldrh r0, [r1, #0xa]
	cmp r0, #3
	beq _08035CAA
	b _0803603E
_08035CAA:
	ldrh r0, [r1, #8]
	subs r0, #1
	cmp r0, #7
	bgt _08035CC4
	adds r0, r2, #0
	adds r0, #0xc0
	ldr r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r5, r0, #1
	b _08035CC6
	.align 2, 0
_08035CC0: .4byte gUnk_03002338
_08035CC4:
	movs r5, #0x14
_08035CC6:
	ldr r4, _08035CEC @ => 0x03004720
	ldr r0, [r4, #8]
	bl FUN_08037910
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _08035CF4
	movs r0, #1
	bl FUN_080377A0
	ldr r0, _08035CF0 @ => 0x08068DD4
	movs r1, #0
	bl FUN_0802D11C
	movs r0, #1
	adds r1, r5, #0
	bl FUN_080377B4
	b _08035CFC
	.align 2, 0
_08035CEC: .4byte gUnk_03004720
_08035CF0: .4byte ROMREF_08068DD4
_08035CF4:
	movs r0, #0
	adds r1, r5, #0
	bl FUN_080377B4
_08035CFC:
	ldr r3, _08035D10 @ => 0x03002338
	ldr r2, [r3, #0x18]
	ldr r0, [r2, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0xc]
	movs r0, #0
	str r0, [r3, #0x18]
	b _0803603E
	.align 2, 0
_08035D10: .4byte gUnk_03002338
_08035D14:
	ldr r5, _08035D6C @ => 0x03002338
	ldr r1, [r5, #0x1c]
	ldrh r0, [r1, #0xa]
	subs r0, #1
	strh r0, [r1, #0xa]
	ldr r2, [r5, #0x1c]
	ldrh r3, [r2, #0xa]
	cmp r3, #0
	beq _08035D28
	b _0803603E
_08035D28:
	ldr r0, [r2, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0xc]
	str r3, [r5, #0x1c]
	ldr r0, [r4, #8]
	bl FUN_08037910
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _08035D74
	movs r0, #1
	bl FUN_080377A0
	ldr r0, _08035D70 @ => 0x08068DD4
	movs r1, #0
	bl FUN_0802D11C
	adds r2, r5, #0
	adds r2, #0xa5
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	adds r1, #0xa1
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0
	bl FUN_080377B4
	b _0803603E
	.align 2, 0
_08035D6C: .4byte gUnk_03002338
_08035D70: .4byte ROMREF_08068DD4
_08035D74:
	adds r2, r5, #0
	adds r2, #0xa5
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	adds r1, #0xa1
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	bl FUN_080377B4
	b _0803603E
_08035D94:
	ldr r6, _08035DDC @ => 0x03002338
	movs r1, #0x80
	lsls r1, r1, #1
	adds r5, r6, r1
	ldr r2, [r5]
	cmp r2, #0
	bne _08035DEC
	movs r0, #0x93
	bl FUN_0804DE0C
	ldr r0, _08035DE0 @ => 0x08069408
	movs r1, #1
	str r1, [sp]
	movs r1, #6
	movs r2, #6
	movs r3, #0
	bl FUN_0802D680
	str r0, [r5]
	ldr r2, _08035DE4 @ => 0xFFFB8000
	movs r1, #0
	bl FUN_08001744
	ldr r0, _08035DE8 @ => 0x03004720
	ldr r0, [r0, #0xc]
	cmp r0, #1
	beq _08035DCC
	b _0803603E
_08035DCC:
	adds r1, r6, #0
	adds r1, #0xf8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	bl FUN_08037790
	b _0803603E
	.align 2, 0
_08035DDC: .4byte gUnk_03002338
_08035DE0: .4byte ROMREF_08069408
_08035DE4: .4byte 0xFFFB8000
_08035DE8: .4byte gUnk_03004720
_08035DEC:
	ldr r1, [r2, #0x1c]
	ldr r0, _08035E18 @ => 0xFFD80000
	cmp r1, r0
	ble _08035DF6
	b _0803603E
_08035DF6:
	ldr r0, [r2, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0xc]
	movs r0, #0
	str r0, [r5]
	ldr r0, [r4, #8]
	subs r0, #1
	str r0, [r4, #8]
	cmp r0, #0
	beq _08035E0E
	b _0803603E
_08035E0E:
	movs r0, #6
	bl FUN_08037910
	b _0803603E
	.align 2, 0
_08035E18: .4byte 0xFFD80000
_08035E1C:
	ldr r0, _08035E28 @ => 0x03002338
	adds r0, #0xc8
	ldr r0, [r0]
	bl _call_via_r0
	b _0803603E
	.align 2, 0
_08035E28: .4byte gUnk_03002338
_08035E2C:
	ldr r0, _08035E5C @ => 0x03002338
	movs r1, #0x80
	lsls r1, r1, #1
	adds r5, r0, r1
	ldr r1, [r5]
	cmp r1, #0
	bne _08035E60
	ldr r0, [r4, #8]
	movs r2, #0x28
	rsbs r2, r2, #0
	movs r1, #0x8f
	bl FUN_080376EC
	str r0, [r5]
	movs r1, #1
	bl FUN_080017B8
	ldr r0, [r5]
	movs r1, #0
	bl FUN_080017B8
	ldr r0, [r5]
	movs r1, #0x8f
	b _08035EAA
	.align 2, 0
_08035E5C: .4byte gUnk_03002338
_08035E60:
	adds r0, r1, #0
	adds r0, #0x40
	ldrh r0, [r0]
	cmp r0, #0
	beq _08035E6C
	b _0803603E
_08035E6C:
	adds r0, r1, #0
	bl FUN_080378E8
	ldr r1, _08035E80 @ => 0x03004720
	ldr r0, [r1, #8]
	ldrb r1, [r1, #0x10]
	movs r2, #6
	bl FUN_08036984
	b _0803603E
	.align 2, 0
_08035E80: .4byte gUnk_03004720
_08035E84:
	ldr r0, _08035EB4 @ => 0x03002338
	movs r1, #0x80
	lsls r1, r1, #1
	adds r5, r0, r1
	ldr r1, [r5]
	cmp r1, #0
	bne _08035EB8
	ldr r0, [r4, #8]
	movs r2, #0x28
	rsbs r2, r2, #0
	movs r1, #0x29
	bl FUN_080376EC
	str r0, [r5]
	movs r1, #0
	bl FUN_080017B8
	ldr r0, [r5]
	movs r1, #0x29
_08035EAA:
	movs r2, #6
	movs r3, #0xc
	bl FUN_08001810
	b _0803603E
	.align 2, 0
_08035EB4: .4byte gUnk_03002338
_08035EB8:
	adds r0, r1, #0
	adds r0, #0x40
	ldrh r0, [r0]
	cmp r0, #0
	beq _08035EC4
	b _0803603E
_08035EC4:
	adds r0, r1, #0
	bl FUN_080378C0
	movs r0, #1
	bl FUN_08036BA4
	b _0803603E
_08035ED2:
	bl FUN_0803764C
	cmp r0, #0
	beq _08035EDC
	b _0803603E
_08035EDC:
	movs r0, #0xe
	bl FUN_08037910
	ldr r0, _08035EFC @ => 0x00000AD5
	movs r1, #6
	str r1, [sp]
	movs r1, #2
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	movs r1, #0x78
	movs r2, #0x58
	movs r3, #0x1e
	bl FUN_0800B984
	b _0803603E
	.align 2, 0
_08035EFC: .4byte 0x00000AD5
_08035F00:
	bl FUN_0803764C
	cmp r0, #0
	beq _08035F0A
	b _0803603E
_08035F0A:
	movs r0, #0xf
	bl FUN_08037910
	ldr r0, _08035F48 @ => 0x03002338
	adds r1, r0, #0
	adds r1, #0xb4
	adds r0, #0xb8
	ldr r1, [r1]
	ldr r0, [r0]
	ldr r4, _08035F4C @ => 0x00000623
	cmp r1, r0
	bgt _08035F2A
	adds r4, #1
	cmp r1, r0
	bne _08035F2A
	ldr r4, _08035F50 @ => 0x00000CE2
_08035F2A:
	movs r3, #1
	rsbs r3, r3, #0
	movs r0, #6
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x58
	bl FUN_0800B984
	b _0803603E
	.align 2, 0
_08035F48: .4byte gUnk_03002338
_08035F4C: .4byte 0x00000623
_08035F50: .4byte 0x00000CE2
_08035F54:
	bl FUN_0800B66C
	cmp r0, #0
	bne _08036042
	ldr r4, _08035F6C @ => 0x03004720
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _08035F70
	subs r0, #1
	str r0, [r4, #0x18]
	b _08036042
	.align 2, 0
_08035F6C: .4byte gUnk_03004720
_08035F70:
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _08035F82
	movs r0, #0x10
	bl FUN_08037910
	movs r0, #0xa
	str r0, [r4, #0x18]
	b _0803603E
_08035F82:
	bl FUN_08036054
	b _0803603E
_08035F88:
	bl FUN_0800B66C
	ldr r0, _08035FB4 @ => 0x03004720
	ldr r6, [r0, #0xc]
	cmp r6, #1
	bne _08035FBC
	ldr r5, _08035FB8 @ => 0x030042B0
	ldrb r0, [r5, #0x14]
	movs r4, #9
	ands r4, r0
	cmp r4, #0
	beq _0803603E
	bl FUN_0804C050
	bl FUN_0804B13C
	bl FUN_08047E10
	movs r0, #0
	strh r6, [r5, #4]
	strh r0, [r5, #6]
	b _08035FC4
	.align 2, 0
_08035FB4: .4byte gUnk_03004720
_08035FB8: .4byte gUnk_030042B0
_08035FBC:
	ldr r0, _08035FF4 @ => 0x030042B0
	ldrb r0, [r0, #0xc]
	movs r4, #9
	ands r4, r0
_08035FC4:
	cmp r4, #0
	beq _0803603E
	ldr r4, _08035FF8 @ => 0x03002338
	adds r2, r4, #0
	adds r2, #0xb4
	ldr r0, [r2]
	cmp r0, #0
	bge _08035FD8
	movs r0, #0
	str r0, [r2]
_08035FD8:
	ldr r0, _08035FFC @ => 0x03004720
	ldr r1, [r0, #4]
	ldr r2, [r2]
	movs r3, #0
	adds r0, r4, #0
	adds r0, #0xb8
	ldr r0, [r0]
	cmp r2, r0
	ble _08035FEC
	movs r3, #1
_08035FEC:
	movs r0, #0x19
	bl FUN_0802CEF8
	b _0803603E
	.align 2, 0
_08035FF4: .4byte gUnk_030042B0
_08035FF8: .4byte gUnk_03002338
_08035FFC: .4byte gUnk_03004720
_08036000:
	ldr r1, _08036014 @ => 0x030047F8
	ldrb r0, [r1, #4]
	cmp r0, #7
	bne _08036018
	movs r0, #0
	strb r0, [r1, #4]
	bl FUN_08036054
	b _08036042
	.align 2, 0
_08036014: .4byte gUnk_030047F8
_08036018:
	bl FUN_0804C084
	cmp r0, #0
	bne _0803603E
	ldr r1, _0803604C @ => 0x03004720
	ldr r0, [r1, #0x18]
	subs r0, #1
	str r0, [r1, #0x18]
	cmp r0, #0
	bne _0803603E
	ldr r0, _08036050 @ => 0x03002338
	adds r0, #0xcc
	ldr r4, [r0]
	movs r0, #7
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl _call_via_r4
_0803603E:
	bl FUN_08036CCC
_08036042:
	add sp, #0x24
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803604C: .4byte gUnk_03004720
_08036050: .4byte gUnk_03002338

	thumb_func_start FUN_08036054
FUN_08036054: @ 0x08036054
	push {r4, r5, r6, lr}
	ldr r1, _080360CC @ => 0x03002338
	adds r2, r1, #0
	adds r2, #0x61
	movs r0, #0
	strb r0, [r2]
	adds r5, r1, #0
	movs r6, #2
	movs r4, #0
	adds r2, r5, #0
	adds r2, #0x24
	movs r3, #9
_0803606C:
	ldr r1, [r2]
	cmp r1, #0
	beq _0803607A
	ldr r0, [r1, #0xc]
	orrs r0, r6
	str r0, [r1, #0xc]
	str r4, [r2]
_0803607A:
	adds r2, #4
	subs r3, #1
	cmp r3, #0
	bge _0803606C
	adds r3, r5, #0
	adds r0, r3, #0
	adds r0, #0x62
	movs r4, #0
	strb r4, [r0]
	ldr r2, [r3, #8]
	cmp r2, #0
	beq _0803609C
	ldr r0, [r2, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0xc]
	str r4, [r3, #8]
_0803609C:
	ldr r2, [r3, #0xc]
	cmp r2, #0
	beq _080360AC
	ldr r0, [r2, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0xc]
	str r4, [r3, #0xc]
_080360AC:
	bl FUN_080360D4
	bl FUN_08036190
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r0, [r0]
	bl _call_via_r0
	ldr r0, _080360D0 @ => 0x08068DD4
	movs r1, #0
	bl FUN_0802D11C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080360CC: .4byte gUnk_03002338
_080360D0: .4byte ROMREF_08068DD4

	thumb_func_start FUN_080360D4
FUN_080360D4: @ 0x080360D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _08036178 @ => 0x08069164
	ldr r0, _0803617C @ => 0x030047F0
	ldr r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08036180 @ => 0x03004720
	ldr r0, [r0, #0xc]
	cmp r0, #1
	bne _080360F6
	adds r1, #3
_080360F6:
	movs r0, #0
	mov ip, r0
	movs r2, #0
	ldr r4, _08036184 @ => 0x09FB6604
	lsls r1, r1, #2
	adds r3, r1, r4
	ldr r0, [r3]
	ldrb r0, [r0]
	cmp r0, #0x13
	beq _08036160
	str r1, [sp, #4]
	mov sl, r3
	mov r1, sl
	str r1, [sp]
_08036112:
	movs r6, #0
	ldr r5, [sp, #4]
	mov r1, sl
	ldr r0, [r1]
	lsls r4, r2, #2
	adds r0, r4, r0
	adds r7, r2, #1
	ldrb r0, [r0, #1]
	cmp r6, r0
	bge _08036150
	ldr r0, _08036188 @ => 0x0300239C
	mov sb, r0
	ldr r1, _08036184 @ => 0x09FB6604
	mov r8, r1
_0803612E:
	mov r3, ip
	add r3, sb
	mov r0, r8
	adds r2, r5, r0
	ldr r0, [r2]
	adds r1, r4, #0
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r3]
	movs r0, #1
	add ip, r0
	adds r6, #1
	ldr r0, [r2]
	adds r1, r1, r0
	ldrb r1, [r1, #1]
	cmp r6, r1
	blt _0803612E
_08036150:
	adds r2, r7, #0
	ldr r1, [sp]
	ldr r0, [r1]
	lsls r1, r2, #2
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0x13
	bne _08036112
_08036160:
	ldr r0, _0803618C @ => 0x03002338
	adds r0, #0x60
	mov r5, ip
	strb r5, [r0]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036178: .4byte ROMREF_08069164
_0803617C: .4byte gUnk_030047F0
_08036180: .4byte gUnk_03004720
_08036184: .4byte ROMREF_09FB6604
_08036188: .4byte gUnk_0300239C
_0803618C: .4byte gUnk_03002338

	thumb_func_start FUN_08036190
FUN_08036190: @ 0x08036190
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r2, _08036200 @ => 0x03002338
	adds r1, r2, #0
	adds r1, #0x60
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r4, r0
	bge _080361CA
	adds r6, r1, #0
	adds r5, r2, #0
	adds r5, #0x64
_080361A8:
	movs r1, #0
	ldrsb r1, [r6, r1]
	subs r1, #1
	movs r0, #0
	bl FUN_080424F8
	adds r0, r0, r5
	ldrb r3, [r0]
	adds r2, r4, r5
	ldrb r1, [r2]
	strb r1, [r0]
	strb r3, [r2]
	adds r4, #1
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r4, r0
	blt _080361A8
_080361CA:
	ldr r2, _08036200 @ => 0x03002338
	adds r1, r2, #0
	adds r1, #0xa0
	movs r0, #0
	strb r0, [r1]
	movs r4, #0
	adds r5, r2, #0
	adds r5, #0xa1
_080361DA:
	movs r0, #1
	movs r1, #3
	bl FUN_080424F8
	adds r2, r4, r5
	lsls r1, r0, #2
	adds r1, r1, r0
	rsbs r1, r1, #0
	strb r1, [r2]
	adds r4, #1
	cmp r4, #3
	ble _080361DA
	ldr r0, _08036200 @ => 0x03002338
	adds r0, #0xa5
	movs r1, #0
	strb r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08036200: .4byte gUnk_03002338

	thumb_func_start FUN_08036204
FUN_08036204: @ 0x08036204
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r2, _08036248 @ => 0x03002338
	adds r0, r2, #0
	adds r0, #0x60
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, #0x40
	ldrb r0, [r0]
	subs r0, r1, r0
	cmp r3, r0
	ble _08036224
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08036224:
	cmp r3, #0
	beq _080362C4
	subs r0, r3, #1
	adds r1, r2, #0
	adds r1, #0xa6
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x61
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _080362C4
	cmp r3, #1
	bne _0803624C
	movs r0, #0
	bl FUN_080377A0
	b _0803625E
	.align 2, 0
_08036248: .4byte gUnk_03002338
_0803624C:
	cmp r3, #2
	bne _08036258
	movs r0, #6
	bl FUN_080377A0
	b _0803625E
_08036258:
	movs r0, #5
	bl FUN_080377A0
_0803625E:
	movs r0, #0x93
	bl FUN_0804DE0C
	ldr r2, _08036280 @ => 0x03002338
	adds r0, r2, #0
	adds r0, #0x60
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r2, #0
	adds r3, #0xa0
	ldrb r1, [r3]
	cmp r0, r1
	bne _08036284
	movs r4, #0x13
	b _08036290
	.align 2, 0
_08036280: .4byte gUnk_03002338
_08036284:
	adds r0, r1, #1
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x64
	adds r0, r1, r0
	ldrb r4, [r0]
_08036290:
	movs r3, #0
	adds r0, r4, #0
	subs r0, #8
	cmp r0, #7
	bhi _0803629C
	movs r3, #1
_0803629C:
	lsls r0, r4, #4
	ldr r1, _080362CC @ => 0x08069178
	adds r0, r0, r1
	movs r1, #1
	str r1, [sp]
	movs r1, #6
	movs r2, #6
	bl FUN_0802D680
	movs r1, #0
	strh r1, [r0, #8]
	strh r4, [r0, #0xa]
	bl FUN_08037728
	movs r0, #2
	bl FUN_08037910
	ldr r1, _080362D0 @ => 0x03004720
	movs r0, #0x14
	str r0, [r1, #0x18]
_080362C4:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080362CC: .4byte ROMREF_08069178
_080362D0: .4byte gUnk_03004720

	thumb_func_start FUN_080362D4
FUN_080362D4: @ 0x080362D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r4, #0
	ldr r0, _0803631C @ => 0x03002338
	mov sl, r0
_080362E4:
	adds r7, r4, #1
	adds r6, r7, #0
	cmp r7, #9
	bgt _0803634E
	ldr r1, _08036320 @ => 0x0300235C
	mov sb, r1
	lsls r4, r4, #2
	mov r8, r4
	mov r0, r8
	add r0, sb
	mov ip, r0
	lsls r0, r7, #2
	adds r0, #0x24
	mov r1, sl
	adds r4, r0, r1
_08036302:
	movs r5, #0
	ldr r3, [r4]
	cmp r3, #0
	beq _08036336
	mov r0, r8
	add r0, sb
	ldr r2, [r0]
	cmp r2, #0
	bne _08036324
	str r3, [r0]
	str r5, [r4]
	b _08036336
	.align 2, 0
_0803631C: .4byte gUnk_03002338
_08036320: .4byte gUnk_0300235C
_08036324:
	ldrh r1, [r2, #0xa]
	ldrh r0, [r3, #0xa]
	cmp r1, r0
	bhi _0803633A
	cmp r1, r0
	bne _08036336
	cmp r2, r3
	bhs _08036336
	movs r5, #1
_08036336:
	cmp r5, #0
	beq _08036346
_0803633A:
	mov r0, ip
	ldr r5, [r0]
	ldr r0, [r4]
	mov r1, ip
	str r0, [r1]
	str r5, [r4]
_08036346:
	adds r4, #4
	adds r6, #1
	cmp r6, #9
	ble _08036302
_0803634E:
	adds r4, r7, #0
	cmp r4, #8
	ble _080362E4
	movs r4, #0
	ldr r1, _0803637C @ => 0x03002338
	ldr r0, [r1, #0x24]
	cmp r0, #0
	beq _080363D4
	movs r6, #0
	movs r0, #0xd
	rsbs r0, r0, #0
	adds r7, r0, #0
_08036366:
	adds r0, r1, #0
	adds r0, #0x24
	adds r0, r6, r0
	ldr r5, [r0]
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	cmp r4, #4
	bgt _08036380
	cmp r0, #0x48
	beq _08036384
	b _08036390
	.align 2, 0
_0803637C: .4byte gUnk_03002338
_08036380:
	cmp r0, #0x72
	bne _08036390
_08036384:
	adds r2, r5, #0
	adds r2, #0xa9
	ldrb r0, [r2]
	ands r0, r7
	movs r1, #8
	b _0803639A
_08036390:
	adds r2, r5, #0
	adds r2, #0xa9
	ldrb r0, [r2]
	ands r0, r7
	movs r1, #4
_0803639A:
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #5
	bl __modsi3
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, #5
	movs r2, #0x72
	cmp r4, #4
	bgt _080363B6
	movs r2, #0x48
_080363B6:
	adds r0, r5, #0
	movs r3, #8
	bl FUN_08001810
	adds r6, #4
	adds r4, #1
	ldr r1, _080363E4 @ => 0x03002338
	adds r0, r1, #0
	adds r0, #0x24
	adds r0, r6, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _080363D4
	cmp r4, #9
	ble _08036366
_080363D4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080363E4: .4byte gUnk_03002338

	thumb_func_start FUN_080363E8
FUN_080363E8: @ 0x080363E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	movs r7, #0
	movs r5, #0
	ldr r0, _08036450 @ => 0x03002338
	mov sb, r0
	mov r4, sb
	adds r4, #0x61
	movs r2, #2
	mov r1, sb
	adds r1, #0x24
_08036406:
	ldr r3, [r1]
	cmp r3, #0
	beq _08036424
	ldrh r0, [r3, #0xa]
	cmp r0, r8
	bne _08036424
	adds r7, #1
	ldr r0, [r3, #0xc]
	orrs r0, r2
	str r0, [r3, #0xc]
	movs r0, #0
	str r0, [r1]
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
_08036424:
	adds r1, #4
	adds r5, #1
	cmp r5, #9
	ble _08036406
	bl FUN_080362D4
	ldr r0, _08036454 @ => 0x03004720
	ldr r0, [r0, #0xc]
	cmp r0, #1
	bne _08036458
	ldr r0, _08036450 @ => 0x03002338
	adds r0, #0xcc
	lsls r2, r7, #0x18
	lsrs r2, r2, #0x18
	ldr r4, [r0]
	movs r0, #8
	movs r1, #0
	movs r3, #0
	bl _call_via_r4
	b _08036482
	.align 2, 0
_08036450: .4byte gUnk_03002338
_08036454: .4byte gUnk_03004720
_08036458:
	ldr r1, _080364FC @ => 0x03002338
	adds r0, r1, #0
	adds r0, #0xf8
	ldrb r0, [r0]
	subs r5, r0, #1
	cmp r5, #0
	blt _08036482
	lsls r0, r5, #2
	adds r0, #0xd0
	adds r4, r0, r1
_0803646C:
	ldr r0, [r4]
	cmp r0, r8
	bne _0803647A
	adds r7, #1
	adds r0, r5, #0
	bl FUN_08037A3C
_0803647A:
	subs r4, #4
	subs r5, #1
	cmp r5, #0
	bge _0803646C
_08036482:
	ldr r1, _080364FC @ => 0x03002338
	adds r3, r1, #0
	adds r3, #0xa0
	ldrb r5, [r3]
	adds r0, r1, #0
	adds r0, #0x60
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov sb, r1
	cmp r5, r0
	bge _080364DA
	adds r2, r3, #0
	mov ip, r0
	mov sl, sb
_080364A0:
	ldr r1, _08036500 @ => 0x0300239C
	adds r0, r5, r1
	ldrb r0, [r0]
	adds r6, r5, #1
	cmp r0, r8
	bne _080364D4
	adds r7, #1
	adds r4, r5, #0
	ldrb r0, [r2]
	cmp r5, r0
	ble _080364CE
	ldr r1, _08036504 @ => 0x030023D8
	adds r0, r5, #0
	adds r0, #0x63
	mov r5, sl
	adds r3, r0, r5
_080364C0:
	ldrb r0, [r3]
	strb r0, [r3, #1]
	subs r3, #1
	subs r4, #1
	ldrb r0, [r1]
	cmp r4, r0
	bgt _080364C0
_080364CE:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_080364D4:
	adds r5, r6, #0
	cmp r5, ip
	blt _080364A0
_080364DA:
	mov r2, sb
	adds r2, #0xbc
	lsls r1, r7, #2
	adds r1, r1, r7
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	bl FUN_08037790
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080364FC: .4byte gUnk_03002338
_08036500: .4byte gUnk_0300239C
_08036504: .4byte gUnk_030023D8

	thumb_func_start FUN_08036508
FUN_08036508: @ 0x08036508
	push {r4, r5, r6, r7, lr}
	ldr r6, _08036570 @ => 0x03002338
	adds r4, r6, #0
	adds r4, #0xcc
	lsls r0, r0, #2
	adds r1, r6, #0
	adds r1, #0x24
	adds r5, r0, r1
	ldr r0, [r5]
	ldrb r1, [r0, #0xa]
	movs r3, #0
	adds r7, r6, #0
	adds r7, #0x61
	ldrb r0, [r7]
	cmp r0, #1
	bne _0803652A
	movs r3, #1
_0803652A:
	ldr r4, [r4]
	movs r0, #1
	movs r2, #1
	bl _call_via_r4
	ldr r0, [r5]
	movs r1, #0
	bl FUN_080017B8
	ldr r0, [r5]
	movs r1, #0x29
	movs r2, #6
	movs r3, #8
	bl FUN_08001810
	ldr r0, [r6]
	movs r1, #0
	strh r1, [r0, #0xa]
	ldr r0, [r5]
	str r0, [r6, #0x20]
	str r1, [r5]
	ldrb r0, [r7]
	subs r0, #1
	strb r0, [r7]
	bl FUN_080362D4
	movs r0, #4
	bl FUN_08037910
	ldr r1, _08036574 @ => 0x03004720
	movs r0, #0xa
	str r0, [r1, #0x18]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036570: .4byte gUnk_03002338
_08036574: .4byte gUnk_03004720

	thumb_func_start FUN_08036578
FUN_08036578: @ 0x08036578
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrh r6, [r5, #8]
	cmp r6, #1
	beq _08036588
	cmp r6, #2
	beq _080365FC
	b _0803660C
_08036588:
	ldr r1, [r5, #0xc]
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	beq _080365AC
	ldr r0, _080365A8 @ => 0x03004720
	ldr r0, [r0, #0x14]
	cmp r0, #1
	bls _0803660C
	cmp r0, #3
	beq _0803660C
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #0xc]
	b _0803660C
	.align 2, 0
_080365A8: .4byte gUnk_03004720
_080365AC:
	ldr r0, _080365F4 @ => 0x03002338
	adds r7, r0, #0
	adds r7, #0x61
	ldrb r0, [r7]
	cmp r0, #0
	beq _0803660C
	ldr r0, _080365F8 @ => 0x03004720
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _0803660C
	bl FUN_0802D13C
	adds r4, r0, #0
	ldrb r0, [r7]
	cmp r4, r0
	blt _080365D4
	subs r4, r0, #1
	adds r0, r4, #0
	bl FUN_0802D16C
_080365D4:
	adds r0, r4, #0
	movs r1, #5
	bl __modsi3
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, #5
	movs r2, #0x72
	cmp r4, #4
	bgt _080365EC
	movs r2, #0x48
_080365EC:
	adds r0, r5, #0
	bl FUN_08001734
	b _08036606
	.align 2, 0
_080365F4: .4byte gUnk_03002338
_080365F8: .4byte gUnk_03004720
_080365FC:
	ldr r0, _08036614 @ => 0x03002338
	ldr r0, [r0]
	ldrh r0, [r0, #0xa]
	cmp r0, #0
	bne _0803660C
_08036606:
	ldr r0, [r5, #0xc]
	orrs r0, r6
	str r0, [r5, #0xc]
_0803660C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036614: .4byte gUnk_03002338

	thumb_func_start FUN_08036618
FUN_08036618: @ 0x08036618
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	bl FUN_0802D13C
	adds r6, r0, #0
	movs r0, #0
	mov r8, r0
	ldr r2, _08036730 @ => 0x03002338
	lsls r0, r6, #2
	adds r1, r2, #0
	adds r1, #0x24
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r1, #0xa]
	cmp r0, #0xf
	bls _0803666C
	adds r0, r2, #0
	adds r0, #0x63
	ldrb r0, [r0]
	mov r8, r0
	ldrh r0, [r1, #0xa]
	adds r1, r0, #0
	subs r1, #0x10
	mov r3, r8
	asrs r3, r1
	movs r1, #1
	ands r3, r1
	mov r8, r3
	cmp r0, #0x10
	bne _0803666C
	adds r0, r2, #0
	adds r0, #0x60
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, #0x40
	ldrb r0, [r0]
	cmp r1, r0
	bne _0803666C
	movs r0, #1
	mov r8, r0
_0803666C:
	movs r0, #0x95
	bl FUN_0804DE0C
	ldr r4, _08036730 @ => 0x03002338
	ldr r0, [r4]
	movs r1, #1
	strh r1, [r0, #0xa]
	adds r0, r4, #0
	adds r0, #0xa8
	strb r6, [r0]
	movs r0, #1
	bl FUN_08037910
	movs r3, #0
	adds r0, r4, #0
	adds r0, #0x61
	ldrb r2, [r0]
	lsls r7, r6, #2
	cmp r2, #0
	beq _080366B2
	subs r0, #0x3d
	adds r1, r7, r0
	ldr r1, [r1]
	ldrh r4, [r1, #0xa]
	adds r1, r0, #0
	adds r5, r2, #0
_080366A0:
	ldr r0, [r1]
	ldrh r0, [r0, #0xa]
	cmp r0, r4
	bne _080366AA
	adds r3, #1
_080366AA:
	adds r1, #4
	subs r5, #1
	cmp r5, #0
	bne _080366A0
_080366B2:
	cmp r3, #2
	ble _08036740
	ldr r2, _08036730 @ => 0x03002338
	adds r3, r2, #0
	adds r3, #0x24
	adds r1, r7, r3
	ldr r0, [r1]
	ldrh r0, [r0, #0xa]
	cmp r0, #7
	bhi _08036740
	movs r5, #0
	adds r0, r2, #0
	adds r0, #0x61
	ldrb r2, [r0]
	cmp r5, r2
	bge _0803672C
	adds r7, r1, #0
	adds r6, r3, #0
	mov r8, r0
_080366D8:
	ldr r0, [r6]
	ldr r1, [r7]
	ldrh r0, [r0, #0xa]
	ldrh r1, [r1, #0xa]
	cmp r0, r1
	bne _08036720
	ldr r4, _08036734 @ => 0x080693E8
	adds r0, r5, #0
	movs r1, #5
	bl __modsi3
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #0x11
	movs r3, #0xa0
	lsls r3, r3, #0xb
	adds r1, r1, r3
	asrs r1, r1, #0x10
	movs r2, #0x72
	cmp r5, #4
	bgt _08036704
	movs r2, #0x48
_08036704:
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #5
	bl FUN_0802D680
	adds r4, r0, #0
	movs r1, #4
	bl FUN_08000E44
	movs r0, #2
	strh r0, [r4, #8]
	ldr r0, _08036738 @ => FUN_08036578
	str r0, [r4, #0x50]
_08036720:
	adds r6, #4
	adds r5, #1
	mov r0, r8
	ldrb r0, [r0]
	cmp r5, r0
	blt _080366D8
_0803672C:
	ldr r0, _0803673C @ => 0x08068F4C
	b _080367AC
	.align 2, 0
_08036730: .4byte gUnk_03002338
_08036734: .4byte ROMREF_080693E8
_08036738: .4byte FUN_08036578
_0803673C: .4byte ROMREF_08068F4C
_08036740:
	ldr r4, _080367B4 @ => 0x080693E8
	adds r0, r6, #0
	movs r1, #5
	bl __modsi3
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #0x11
	movs r2, #0xa0
	lsls r2, r2, #0xb
	adds r1, r1, r2
	asrs r1, r1, #0x10
	movs r2, #0x72
	cmp r6, #4
	bgt _08036760
	movs r2, #0x48
_08036760:
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #5
	bl FUN_0802D680
	adds r4, r0, #0
	movs r1, #4
	bl FUN_08000E44
	movs r0, #2
	strh r0, [r4, #8]
	ldr r0, _080367B8 @ => FUN_08036578
	str r0, [r4, #0x50]
	ldr r1, _080367BC @ => 0x03002338
	adds r0, r1, #0
	adds r0, #0x24
	adds r0, r7, r0
	ldr r2, [r0]
	ldrh r0, [r2, #0xa]
	cmp r0, #7
	bls _080367CA
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bhi _080367C4
	adds r0, r1, #0
	adds r0, #0x62
	ldrb r1, [r0]
	ldrh r0, [r2, #0xa]
	subs r0, #8
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080367CA
	ldr r0, _080367C0 @ => 0x08068EF0
_080367AC:
	movs r1, #1
	bl FUN_0802D11C
	b _080367E0
	.align 2, 0
_080367B4: .4byte ROMREF_080693E8
_080367B8: .4byte FUN_08036578
_080367BC: .4byte gUnk_03002338
_080367C0: .4byte ROMREF_08068EF0
_080367C4:
	mov r3, r8
	cmp r3, #0
	beq _080367D8
_080367CA:
	ldr r0, _080367D4 @ => 0x08068F2C
	movs r1, #0
	bl FUN_0802D11C
	b _080367E0
	.align 2, 0
_080367D4: .4byte ROMREF_08068F2C
_080367D8:
	ldr r0, _08036814 @ => 0x08068EF0
	movs r1, #1
	bl FUN_0802D11C
_080367E0:
	bl FUN_0802D13C
	adds r0, #2
	bl FUN_080377A0
	bl FUN_0802D13C
	adds r1, r0, #0
	add r0, sp, #4
	bl FUN_0802D1A8
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	ldr r0, _08036818 @ => 0x03002338
	ldr r0, [r0]
	adds r1, r2, #0
	adds r2, r3, #0
	bl FUN_08001734
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036814: .4byte ROMREF_08068EF0
_08036818: .4byte gUnk_03002338

	thumb_func_start FUN_0803681C
FUN_0803681C: @ 0x0803681C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	str r0, [sp]
	ldr r4, _080368FC @ => 0x03002338
	ldr r0, [r4]
	mov r1, sp
	ldrh r1, [r1]
	strh r1, [r0, #0xa]
	movs r0, #5
	bl FUN_08037910
	ldr r1, _08036900 @ => 0x03004720
	movs r0, #0xa
	str r0, [r1, #0x18]
	adds r0, r4, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x24
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0, #0xa]
	mov sl, r0
	adds r0, r4, #0
	adds r0, #0xa7
	mov r2, sl
	strb r2, [r0]
	movs r1, #0
	adds r6, r4, #0
	movs r5, #4
	adds r0, r6, #0
	adds r0, #0x5c
_08036868:
	str r1, [r0]
	subs r0, #4
	subs r5, #1
	cmp r5, #0
	bge _08036868
	mov r3, sl
	cmp r3, #7
	bgt _08036908
	adds r0, r6, #0
	adds r0, #0x61
	ldrb r1, [r0]
	mov r8, r1
	movs r2, #0
	mov sb, r2
	movs r5, #0
	lsls r3, r3, #0x18
	str r3, [sp, #4]
	cmp sb, r8
	bge _080368E2
	adds r7, r6, #0
_08036890:
	lsls r1, r5, #2
	adds r0, r7, #0
	adds r0, #0x24
	adds r4, r1, r0
	ldr r0, [r4]
	ldrh r3, [r0, #0xa]
	cmp sl, r3
	bne _080368DC
	movs r1, #1
	add sb, r1
	movs r1, #0
	bl FUN_080017B8
	ldr r0, [r4]
	movs r1, #0x8f
	movs r2, #6
	movs r3, #8
	bl FUN_08001810
	ldr r0, [r4]
	movs r1, #1
	bl FUN_080017B8
	ldr r2, [sp]
	lsls r1, r2, #2
	adds r0, r7, #0
	adds r0, #0x4c
	adds r1, r1, r0
	ldr r0, [r4]
	str r0, [r1]
	adds r2, #1
	str r2, [sp]
	movs r0, #0
	str r0, [r4]
	ldr r3, _08036904 @ => 0x03002399
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
_080368DC:
	adds r5, #1
	cmp r5, r8
	blt _08036890
_080368E2:
	adds r0, r6, #0
	adds r0, #0xcc
	ldr r2, [sp, #4]
	lsrs r1, r2, #0x18
	mov r3, sb
	lsls r2, r3, #0x18
	lsrs r2, r2, #0x18
	ldr r4, [r0]
	movs r0, #2
	movs r3, #0
	bl _call_via_r4
	b _0803696E
	.align 2, 0
_080368FC: .4byte gUnk_03002338
_08036900: .4byte gUnk_03004720
_08036904: .4byte gUnk_03002399
_08036908:
	adds r5, r6, #0
	adds r5, #0xa8
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r4, r6, #0
	adds r4, #0x24
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0
	bl FUN_080017B8
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0x8f
	movs r2, #6
	movs r3, #8
	bl FUN_08001810
	ldr r0, [sp]
	lsls r1, r0, #2
	adds r0, r6, #0
	adds r0, #0x4c
	adds r1, r1, r0
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	str r0, [r1]
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r1, #0
	str r1, [r0]
	adds r1, r6, #0
	adds r1, #0x61
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0xcc
	mov r2, sl
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	ldr r4, [r0]
	movs r0, #2
	movs r2, #1
	movs r3, #0
	bl _call_via_r4
_0803696E:
	bl FUN_080362D4
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08036984
FUN_08036984: @ 0x08036984
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r2, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	cmp r4, #0x12
	bls _08036994
	b _08036AE4
_08036994:
	lsls r0, r4, #2
	ldr r1, _080369A0 @ =_080369A4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080369A0: .4byte _080369A4
_080369A4: @ jump table
	.4byte _080369F0 @ case 0
	.4byte _080369F0 @ case 1
	.4byte _080369F0 @ case 2
	.4byte _080369F0 @ case 3
	.4byte _080369F0 @ case 4
	.4byte _080369F0 @ case 5
	.4byte _080369F0 @ case 6
	.4byte _080369F0 @ case 7
	.4byte _08036A14 @ case 8
	.4byte _08036A14 @ case 9
	.4byte _08036A14 @ case 10
	.4byte _08036A14 @ case 11
	.4byte _08036A14 @ case 12
	.4byte _08036A14 @ case 13
	.4byte _08036A14 @ case 14
	.4byte _08036A14 @ case 15
	.4byte _08036A7C @ case 16
	.4byte _08036A64 @ case 17
	.4byte _08036A20 @ case 18
_080369F0:
	adds r0, r4, #0
	bl FUN_080363E8
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl FUN_080377E4
	ldr r0, _08036A10 @ => 0x03002338
	adds r0, #0x62
	movs r1, #1
	lsls r1, r4
	ldrb r2, [r0]
	orrs r1, r2
	strb r1, [r0]
	b _08036AE4
	.align 2, 0
_08036A10: .4byte gUnk_03002338
_08036A14:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl FUN_080377E4
	b _08036AE4
_08036A20:
	ldr r0, _08036A58 @ => 0x03002338
	adds r0, #0x63
	ldrb r2, [r0]
	movs r1, #4
	orrs r1, r2
	strb r1, [r0]
	movs r0, #0
	cmp r5, #0
	bne _08036A34
	movs r0, #1
_08036A34:
	movs r1, #5
	bl FUN_080377B4
	adds r0, r5, #0
	bl FUN_08037910
	ldr r0, _08036A5C @ => 0x03004720
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _08036AE4
	movs r0, #1
	bl FUN_080377A0
	ldr r0, _08036A60 @ => 0x08068DD4
	movs r1, #0
	bl FUN_0802D11C
	b _08036AE4
	.align 2, 0
_08036A58: .4byte gUnk_03002338
_08036A5C: .4byte gUnk_03004720
_08036A60: .4byte ROMREF_08068DD4
_08036A64:
	ldr r0, _08036A78 @ => 0x03002338
	adds r0, #0x63
	ldrb r2, [r0]
	movs r1, #2
	orrs r1, r2
	strb r1, [r0]
	adds r0, r5, #0
	bl FUN_0803785C
	b _08036AE4
	.align 2, 0
_08036A78: .4byte gUnk_03002338
_08036A7C:
	movs r0, #0x92
	bl FUN_0804DE0C
	ldr r4, _08036AA4 @ => 0x03002338
	adds r2, r4, #0
	adds r2, #0x63
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	cmp r5, #0
	bne _08036AAC
	ldr r0, _08036AA8 @ => 0x08068DD4
	movs r1, #0
	bl FUN_0802D11C
	movs r0, #2
	bl FUN_08036204
	b _08036AE4
	.align 2, 0
_08036AA4: .4byte gUnk_03002338
_08036AA8: .4byte ROMREF_08068DD4
_08036AAC:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #0
	str r1, [r0]
	ldr r5, _08036AD4 @ => 0x03004720
	ldr r0, [r5, #0xc]
	cmp r0, #1
	bne _08036AD8
	movs r0, #9
	bl FUN_08037910
	movs r0, #2
	str r0, [r5, #8]
	adds r1, r4, #0
	adds r1, #0xa0
	ldrb r0, [r1]
	adds r0, #2
	strb r0, [r1]
	b _08036AE0
	.align 2, 0
_08036AD4: .4byte gUnk_03004720
_08036AD8:
	movs r0, #2
	movs r1, #1
	bl FUN_080379B4
_08036AE0:
	bl FUN_08037790
_08036AE4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08036AEC
FUN_08036AEC: @ 0x08036AEC
	push {r4, lr}
	ldr r2, _08036B24 @ => 0x03002338
	adds r3, r2, #0
	adds r3, #0x63
	movs r1, #0
	strb r1, [r3]
	adds r3, r2, #0
	cmp r0, #0
	beq _08036B28
	adds r0, r3, #0
	adds r0, #0x61
	ldrb r0, [r0]
	cmp r0, #0
	bne _08036B28
	adds r0, r3, #0
	adds r0, #0xb4
	ldr r1, [r0]
	adds r0, #4
	ldr r2, [r0]
	adds r0, #4
	ldr r0, [r0]
	adds r1, r1, r0
	cmp r1, #0xc7
	bgt _08036B52
	cmp r2, #0xc7
	bgt _08036B52
	b _08036B58
	.align 2, 0
_08036B24: .4byte gUnk_03002338
_08036B28:
	adds r2, r3, #0
	adds r0, r2, #0
	adds r0, #0x60
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, #0x40
	ldrb r0, [r0]
	cmp r1, r0
	bne _08036B90
	adds r0, r2, #0
	adds r0, #0xb4
	ldr r1, [r0]
	adds r0, #4
	ldr r4, [r0]
	adds r0, #4
	ldr r0, [r0]
	adds r1, r1, r0
	cmp r1, #0xc7
	bgt _08036B52
	cmp r4, #0xc7
	ble _08036B58
_08036B52:
	bl FUN_08037978
	b _08036B6A
_08036B58:
	adds r1, r3, #0
	adds r1, #0xaa
	movs r0, #9
	strb r0, [r1]
	bl FUN_08037790
	movs r0, #0xc
	bl FUN_08037910
_08036B6A:
	ldr r1, _08036B88 @ => 0x03004720
	movs r0, #0
	str r0, [r1, #0x18]
	movs r0, #1
	str r0, [r1, #0x10]
	ldr r0, _08036B8C @ => 0x03002338
	adds r0, #0xcc
	ldr r4, [r0]
	movs r0, #6
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl _call_via_r4
	b _08036B9C
	.align 2, 0
_08036B88: .4byte gUnk_03004720
_08036B8C: .4byte gUnk_03002338
_08036B90:
	movs r0, #6
	bl FUN_08037910
	movs r0, #7
	bl FUN_080377A0
_08036B9C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08036BA4
FUN_08036BA4: @ 0x08036BA4
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r1, _08036BE4 @ => 0x03002338
	adds r0, r1, #0
	adds r0, #0x63
	movs r3, #0
	strb r3, [r0]
	ldr r0, _08036BE8 @ => 0x03004720
	ldr r0, [r0, #0xc]
	adds r5, r1, #0
	cmp r0, #1
	bne _08036BEC
	adds r1, #0xb0
	ldr r0, [r1]
	cmp r0, #0
	beq _08036C16
	str r3, [r1]
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r1, [r0]
	adds r0, #4
	ldr r2, [r0]
	adds r0, #4
	ldr r0, [r0]
	adds r2, r2, r0
	cmp r1, #0xc7
	bgt _08036C40
	cmp r2, #0xc7
	bgt _08036C40
	adds r1, r5, #0
	b _08036C48
	.align 2, 0
_08036BE4: .4byte gUnk_03002338
_08036BE8: .4byte gUnk_03004720
_08036BEC:
	cmp r2, #0
	beq _08036C16
	adds r0, r5, #0
	adds r0, #0xf8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08036C16
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r1, [r0]
	adds r0, #4
	ldr r2, [r0]
	adds r0, #4
	ldr r0, [r0]
	adds r2, r2, r0
	cmp r1, #0xc7
	bgt _08036C40
	cmp r2, #0xc7
	bgt _08036C40
	adds r1, r5, #0
	b _08036C48
_08036C16:
	adds r4, r5, #0
	adds r0, r4, #0
	adds r0, #0x60
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, #0x40
	ldrb r0, [r0]
	cmp r1, r0
	bne _08036C68
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r1, [r0]
	adds r0, #4
	ldr r2, [r0]
	adds r0, #4
	ldr r0, [r0]
	adds r2, r2, r0
	cmp r1, #0xc7
	bgt _08036C40
	cmp r2, #0xc7
	ble _08036C46
_08036C40:
	bl FUN_08037978
	b _08036C58
_08036C46:
	adds r1, r4, #0
_08036C48:
	adds r1, #0xaa
	movs r0, #9
	strb r0, [r1]
	bl FUN_08037790
	movs r0, #0xc
	bl FUN_08037910
_08036C58:
	ldr r0, _08036C64 @ => 0x03004720
	movs r1, #0
	str r1, [r0, #0x18]
	str r1, [r0, #0x10]
	b _08036CC2
	.align 2, 0
_08036C64: .4byte gUnk_03004720
_08036C68:
	adds r0, r4, #0
	adds r0, #0xfc
	movs r6, #1
	str r6, [r0]
	ldr r0, _08036CA0 @ => 0x08068DD4
	movs r1, #0
	bl FUN_0802D11C
	movs r0, #0
	bl FUN_080377A0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _08036CA4
	movs r0, #1
	bl FUN_08036204
	adds r0, r4, #0
	adds r0, #0xcc
	ldr r4, [r0]
	movs r0, #3
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl _call_via_r4
	b _08036CC2
	.align 2, 0
_08036CA0: .4byte ROMREF_08068DD4
_08036CA4:
	ldr r0, _08036CC8 @ => 0x08068F6C
	movs r1, #0
	bl FUN_0802D11C
	movs r0, #3
	bl FUN_08037910
	ldr r0, [r5]
	ldr r1, [r0, #0xc]
	orrs r1, r6
	str r1, [r0, #0xc]
	movs r1, #6
	movs r2, #6
	bl FUN_08001734
_08036CC2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08036CC8: .4byte ROMREF_08068F6C

	thumb_func_start FUN_08036CCC
FUN_08036CCC: @ 0x08036CCC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	ldr r4, _08036D2C @ => 0x03002338
	adds r1, r4, #0
	adds r1, #0xab
	ldrb r0, [r1]
	cmp r0, #0
	bne _08036CE4
	b _08036E84
_08036CE4:
	movs r0, #0
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0xa9
	ldrb r1, [r2]
	movs r0, #1
	subs r0, r0, r1
	strb r0, [r2]
	ldrb r2, [r2]
	lsls r0, r2, #7
	adds r7, r0, #1
	lsls r2, r2, #4
	adds r2, #4
	movs r0, #5
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r3, #0x1e
	bl FUN_0800C790
	adds r2, r4, #0
	adds r2, #0xaa
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #9
	beq _08036D86
	cmp r0, #7
	bne _08036D30
	adds r0, r4, #0
	adds r0, #0xf8
	ldrb r0, [r0]
	cmp r0, #1
	beq _08036D30
	adds r0, r1, #1
	b _08036D46
	.align 2, 0
_08036D2C: .4byte gUnk_03002338
_08036D30:
	ldr r0, _08036E94 @ => 0x03002338
	adds r2, r0, #0
	adds r2, #0xaa
	ldrb r1, [r2]
	cmp r1, #8
	bne _08036D48
	adds r0, #0xf8
	ldrb r0, [r0]
	cmp r0, #1
	bne _08036D48
	subs r0, r1, #1
_08036D46:
	strb r0, [r2]
_08036D48:
	ldr r4, _08036E94 @ => 0x03002338
	adds r0, r4, #0
	adds r0, #0xf8
	ldrb r0, [r0]
	bl FUN_080203A8
	ldr r1, _08036E98 @ => 0x08069448
	adds r0, r4, #0
	adds r0, #0xaa
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl FUN_08050820
	adds r1, r4, #0
	adds r1, #0xa9
	ldrb r2, [r1]
	lsls r2, r2, #4
	adds r2, #6
	lsls r2, r2, #3
	adds r2, #3
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #6
	movs r3, #0x4b
	bl FUN_08020098
	adds r7, r0, #0
_08036D86:
	ldr r0, _08036E9C @ => 0x00000743
	bl FUN_08050820
	ldr r1, _08036E94 @ => 0x03002338
	mov r8, r1
	movs r1, #0xa9
	add r1, r8
	mov sb, r1
	ldrb r2, [r1]
	lsls r2, r2, #4
	adds r2, #6
	lsls r2, r2, #3
	adds r2, #3
	str r0, [sp]
	movs r6, #0
	str r6, [sp, #4]
	adds r0, r7, #0
	movs r1, #0x56
	movs r3, #0x40
	bl FUN_08020098
	adds r7, r0, #0
	mov r0, r8
	adds r0, #0xb4
	ldr r0, [r0]
	bl FUN_080203A8
	ldr r5, _08036EA0 @ => 0x00000762
	adds r0, r5, #0
	bl FUN_08050820
	mov r1, sb
	ldrb r2, [r1]
	lsls r2, r2, #4
	adds r2, #6
	lsls r2, r2, #3
	adds r2, #3
	str r0, [sp]
	movs r4, #2
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xac
	movs r3, #0x28
	bl FUN_08020098
	adds r7, r0, #0
	ldr r0, _08036EA4 @ => 0x00000744
	bl FUN_08050820
	mov r1, sb
	ldrb r2, [r1]
	lsls r2, r2, #4
	adds r2, #6
	lsls r2, r2, #3
	adds r2, #0xb
	str r0, [sp]
	str r6, [sp, #4]
	adds r0, r7, #0
	movs r1, #0x56
	movs r3, #0x40
	bl FUN_08020098
	adds r7, r0, #0
	mov r0, r8
	adds r0, #0xb8
	ldr r0, [r0]
	bl FUN_080203A8
	adds r0, r5, #0
	bl FUN_08050820
	mov r1, sb
	ldrb r2, [r1]
	lsls r2, r2, #4
	adds r2, #6
	lsls r2, r2, #3
	adds r2, #0xb
	str r0, [sp]
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xac
	movs r3, #0x28
	bl FUN_08020098
	adds r7, r0, #0
	mov r0, r8
	adds r0, #0xbc
	ldr r0, [r0]
	bl FUN_080203A8
	adds r0, r5, #0
	bl FUN_08050820
	mov r1, sb
	ldrb r2, [r1]
	lsls r2, r2, #4
	adds r2, #6
	lsls r2, r2, #3
	subs r2, #0xd
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0x6c
	movs r3, #0x18
	bl FUN_08020098
	ldr r1, _08036EA8 @ => 0x04000004
	ldrh r0, [r1]
	ands r4, r0
	cmp r4, #0
	bne _08036E74
	adds r2, r1, #0
	movs r3, #2
_08036E6A:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08036E6A
_08036E74:
	ldr r0, _08036E94 @ => 0x03002338
	adds r0, #0xa9
	ldrb r2, [r0]
	lsls r2, r2, #7
	movs r0, #0
	movs r1, #0
	bl FUN_0800CCCC
_08036E84:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036E94: .4byte gUnk_03002338
_08036E98: .4byte ROMREF_08069448
_08036E9C: .4byte 0x00000743
_08036EA0: .4byte 0x00000762
_08036EA4: .4byte 0x00000744
_08036EA8: .4byte 0x04000004

	thumb_func_start FUN_08036EAC
FUN_08036EAC: @ 0x08036EAC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0xa]
	cmp r0, #1
	beq _08036F08
	cmp r0, #1
	bgt _08036EC0
	cmp r0, #0
	beq _08036EC6
	b _08036FA2
_08036EC0:
	cmp r0, #2
	beq _08036F90
	b _08036FA2
_08036EC6:
	adds r0, r4, #0
	adds r0, #0x40
	ldrh r0, [r0]
	cmp r0, #0
	bne _08036FA2
	movs r0, #1
	strh r0, [r4, #0xa]
	ldrh r3, [r4, #8]
	lsls r1, r3, #4
	ldr r0, _08036F00 @ => 0x08069298
	adds r1, r1, r0
	ldr r5, _08036F04 @ => 0x09FB661C
	subs r2, r3, #1
	adds r0, r2, #0
	cmp r2, #0
	bge _08036EE8
	adds r0, r3, #6
_08036EE8:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r2, r0
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_0800192C
	b _08036FA2
	.align 2, 0
_08036F00: .4byte ROMREF_08069298
_08036F04: .4byte ROMREF_09FB661C
_08036F08:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08036FA2
	ldr r0, _08036F74 @ => 0x03002338
	ldr r0, [r0, #0x14]
	movs r1, #0x9c
	movs r2, #0x2a
	movs r3, #0xf
	bl FUN_08001810
	ldr r1, _08036F78 @ => 0x080693A8
	ldrh r0, [r4, #8]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl FUN_0804DE0C
	ldrh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xa]
	ldrh r3, [r4, #8]
	lsls r1, r3, #4
	ldr r0, _08036F7C @ => 0x08069298
	adds r1, r1, r0
	ldr r5, _08036F80 @ => 0x09FB661C
	subs r2, r3, #1
	adds r0, r2, #0
	cmp r2, #0
	bge _08036F4C
	adds r0, r3, #6
_08036F4C:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r2, r0
	adds r0, #8
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_0800192C
	ldr r1, _08036F84 @ => 0x00009999
	ldr r2, _08036F88 @ => 0xFFFE0000
	adds r0, r4, #0
	bl FUN_08001744
	ldr r0, _08036F8C @ => 0x00003333
	str r0, [r4, #0x34]
	b _08036FA2
	.align 2, 0
_08036F74: .4byte gUnk_03002338
_08036F78: .4byte ROMREF_080693A8
_08036F7C: .4byte ROMREF_08069298
_08036F80: .4byte ROMREF_09FB661C
_08036F84: .4byte 0x00009999
_08036F88: .4byte 0xFFFE0000
_08036F8C: .4byte 0x00003333
_08036F90:
	ldr r1, [r4, #0x1c]
	ldr r0, _08036FA8 @ => 0x00C7FFFF
	cmp r1, r0
	ble _08036FA2
	bl FUN_0803791C
	ldrh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xa]
_08036FA2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08036FA8: .4byte 0x00C7FFFF

	thumb_func_start FUN_08036FAC
FUN_08036FAC: @ 0x08036FAC
	push {r4, r5, lr}
	ldr r4, _08037000 @ => 0x03002338
	adds r1, r4, #0
	adds r1, #0xfc
	ldr r0, [r1]
	cmp r0, #0
	beq _08037024
	movs r5, #0
	str r5, [r1]
	bl FUN_08037058
	cmp r0, #0
	beq _0803700C
	adds r2, r4, #0
	adds r2, #0xf8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x16
	adds r0, r4, #0
	adds r0, #0xd0
	adds r1, r1, r0
	ldr r0, [r4, #8]
	ldrh r2, [r0, #0xa]
	str r2, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r4, r2
	str r0, [r1]
	str r5, [r4, #8]
	ldr r2, _08037004 @ => 0xFFFB8000
	movs r1, #0
	bl FUN_08001744
	movs r0, #9
	bl FUN_08037910
	ldr r1, _08037008 @ => 0x03004720
	movs r0, #1
	str r0, [r1, #8]
	b _08037014
	.align 2, 0
_08037000: .4byte gUnk_03002338
_08037004: .4byte 0xFFFB8000
_08037008: .4byte gUnk_03004720
_0803700C:
	movs r0, #1
	movs r1, #1
	bl FUN_080379B4
_08037014:
	ldr r0, _08037020 @ => 0x03002338
	adds r0, #0xab
	movs r1, #1
	strb r1, [r0]
	b _08037046
	.align 2, 0
_08037020: .4byte gUnk_03002338
_08037024:
	adds r0, r4, #0
	adds r0, #0xf8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08037040
	cmp r0, #1
	bls _0803703A
	bl FUN_080370F8
	cmp r0, #0
	bne _08037046
_0803703A:
	bl FUN_08037354
	b _08037046
_08037040:
	movs r0, #0
	bl FUN_08036BA4
_08037046:
	ldr r0, _08037054 @ => 0x03002338
	adds r0, #0xab
	movs r1, #1
	strb r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08037054: .4byte gUnk_03002338

	thumb_func_start FUN_08037058
FUN_08037058: @ 0x08037058
	push {r4, r5, lr}
	ldr r0, _080370EC @ => 0x03002338
	mov ip, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _080370F0
	ldrh r5, [r0, #0xa]
	cmp r5, #0xf
	bhi _080370E6
	adds r2, r5, #0
	subs r2, #8
	cmp r2, #7
	bhi _080370BA
	mov r0, ip
	adds r0, #0x62
	ldrb r0, [r0]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080370E6
	movs r3, #0
	mov r0, ip
	adds r0, #0xf8
	ldrb r0, [r0]
	cmp r3, r0
	bge _080370A6
	adds r4, r2, #0
	mov r2, ip
	adds r2, #0xd0
	adds r1, r0, #0
_08037096:
	ldr r0, [r2]
	cmp r0, r4
	bne _0803709E
	adds r3, #1
_0803709E:
	adds r2, #4
	subs r1, #1
	cmp r1, #0
	bne _08037096
_080370A6:
	cmp r3, #2
	bgt _080370E6
	cmp r3, #2
	bne _080370BA
	movs r0, #0
	movs r1, #1
	bl FUN_080424F8
	cmp r0, #0
	bne _080370E6
_080370BA:
	cmp r5, #7
	bhi _080370F0
	movs r3, #0
	ldr r1, _080370EC @ => 0x03002338
	adds r0, r1, #0
	adds r0, #0xf8
	ldrb r0, [r0]
	cmp r3, r0
	bge _080370E2
	adds r2, r1, #0
	adds r2, #0xd0
	adds r1, r0, #0
_080370D2:
	ldr r0, [r2]
	cmp r0, r5
	bne _080370DA
	adds r3, #1
_080370DA:
	adds r2, #4
	subs r1, #1
	cmp r1, #0
	bne _080370D2
_080370E2:
	cmp r3, #0
	ble _080370F0
_080370E6:
	movs r0, #1
	b _080370F2
	.align 2, 0
_080370EC: .4byte gUnk_03002338
_080370F0:
	movs r0, #0
_080370F2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start FUN_080370F8
FUN_080370F8: @ 0x080370F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r2, _08037148 @ => 0x03002338
	adds r0, r2, #0
	adds r0, #0x63
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0803715C
	movs r5, #0
	adds r0, r2, #0
	adds r0, #0xf8
	ldrb r0, [r0]
	cmp r5, r0
	bge _0803715C
	ldr r3, _0803714C @ => 0x03004720
	movs r0, #0x80
	lsls r0, r0, #1
	adds r4, r2, r0
_08037128:
	lsls r0, r5, #2
	adds r1, r2, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0x11
	bne _08037150
	str r0, [r3, #8]
	movs r0, #1
	str r0, [r3, #0x10]
	movs r0, #0xa
	bl FUN_08037910
	movs r0, #0
	str r0, [r4]
	b _08037268
	.align 2, 0
_08037148: .4byte gUnk_03002338
_0803714C: .4byte gUnk_03004720
_08037150:
	adds r5, #1
	adds r0, r2, #0
	adds r0, #0xf8
	ldrb r0, [r0]
	cmp r5, r0
	blt _08037128
_0803715C:
	adds r0, r2, #0
	adds r0, #0x63
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080371CC
	adds r0, r2, #0
	adds r0, #0x60
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r2, #0
	adds r1, #0xa0
	ldrb r1, [r1]
	subs r0, r0, r1
	cmp r0, #0
	ble _080371CC
	adds r1, r2, #0
	adds r1, #0xf8
	ldrb r0, [r1]
	cmp r0, #8
	bhi _080371CC
	movs r5, #0
	ldrb r1, [r1]
	cmp r5, r1
	bge _080371CC
	ldr r3, _080371BC @ => 0x03004720
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r2, r1
_0803719A:
	lsls r0, r5, #2
	adds r1, r2, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0x10
	bne _080371C0
	str r0, [r3, #8]
	movs r0, #1
	str r0, [r3, #0x10]
	movs r0, #0xa
	bl FUN_08037910
	movs r0, #0
	str r0, [r4]
	b _08037268
	.align 2, 0
_080371BC: .4byte gUnk_03004720
_080371C0:
	adds r5, #1
	adds r0, r2, #0
	adds r0, #0xf8
	ldrb r0, [r0]
	cmp r5, r0
	blt _0803719A
_080371CC:
	adds r0, r2, #0
	adds r0, #0x63
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08037220
	movs r5, #0
	adds r0, r2, #0
	adds r0, #0xf8
	ldrb r0, [r0]
	cmp r5, r0
	bge _08037220
	ldr r3, _08037210 @ => 0x03004720
	movs r0, #0x80
	lsls r0, r0, #1
	adds r4, r2, r0
_080371EE:
	lsls r0, r5, #2
	adds r1, r2, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0x12
	bne _08037214
	str r0, [r3, #8]
	movs r0, #1
	str r0, [r3, #0x10]
	movs r0, #0xa
	bl FUN_08037910
	movs r0, #0
	str r0, [r4]
	b _08037268
	.align 2, 0
_08037210: .4byte gUnk_03004720
_08037214:
	adds r5, #1
	adds r0, r2, #0
	adds r0, #0xf8
	ldrb r0, [r0]
	cmp r5, r0
	blt _080371EE
_08037220:
	movs r5, #0
	adds r4, r2, #0
	adds r0, r2, #0
	adds r0, #0xf8
	ldrb r0, [r0]
	cmp r5, r0
	bge _08037286
	adds r6, r2, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r7, r2, r1
_08037236:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r3, [r0]
	adds r1, r3, #0
	subs r1, #8
	cmp r1, #7
	bhi _08037278
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r0, [r0]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08037278
	ldr r0, _08037274 @ => 0x03004720
	str r3, [r0, #8]
	str r1, [r0, #0x10]
	movs r0, #0xa
	bl FUN_08037910
	movs r0, #0
	str r0, [r7]
_08037268:
	adds r0, r5, #0
	bl FUN_08037A3C
_0803726E:
	movs r0, #1
	b _08037344
	.align 2, 0
_08037274: .4byte gUnk_03004720
_08037278:
	adds r5, #1
	adds r4, r2, #0
	adds r0, r2, #0
	adds r0, #0xf8
	ldrb r0, [r0]
	cmp r5, r0
	blt _08037236
_08037286:
	movs r3, #0
	adds r0, r2, #0
	adds r0, #0xf8
	ldrb r1, [r0]
	cmp r3, r1
	bge _08037342
	adds r7, r0, #0
	mov r8, r2
	ldr r2, _0803732C @ => 0x03004720
	mov sl, r2
	mov sb, r8
	mov r6, r8
	adds r6, #0xd0
_080372A0:
	ldr r1, [r6]
	cmp r1, #7
	bhi _08037338
	movs r4, #0
	ldrb r0, [r7]
	cmp r0, #0
	beq _080372C8
	adds r2, r1, #0
	ldr r0, _08037330 @ => 0x03002430
	mov r1, sb
	adds r1, #0xd0
	ldrb r5, [r0]
_080372B8:
	ldr r0, [r1]
	cmp r0, r2
	bne _080372C0
	adds r4, #1
_080372C0:
	adds r1, #4
	subs r5, #1
	cmp r5, #0
	bne _080372B8
_080372C8:
	movs r0, #0
	movs r1, #0x63
	str r3, [sp]
	bl FUN_080424F8
	ldr r1, _08037334 @ => 0x08068DCC
	adds r1, r4, r1
	ldr r3, [sp]
	ldrb r1, [r1]
	cmp r0, r1
	blt _080372E8
	cmp r4, #2
	ble _08037338
	ldrb r0, [r7]
	cmp r0, r4
	bne _08037338
_080372E8:
	ldr r0, [r6]
	mov r1, sl
	str r0, [r1, #8]
	str r4, [r1, #0x10]
	movs r0, #0xa
	bl FUN_08037910
	movs r1, #0x80
	lsls r1, r1, #1
	add r1, r8
	movs r0, #0
	str r0, [r1]
	ldrb r0, [r7]
	subs r5, r0, #1
	cmp r5, #0
	blt _0803726E
	lsls r0, r5, #2
	adds r0, #0xd0
	mov r2, sb
	adds r4, r0, r2
_08037310:
	ldr r1, [r4]
	mov r2, sl
	ldr r0, [r2, #8]
	cmp r1, r0
	bne _08037320
	adds r0, r5, #0
	bl FUN_08037A3C
_08037320:
	subs r4, #4
	subs r5, #1
	cmp r5, #0
	bge _08037310
	b _0803726E
	.align 2, 0
_0803732C: .4byte gUnk_03004720
_08037330: .4byte gUnk_03002430
_08037334: .4byte ROMREF_08068DCC
_08037338:
	adds r6, #4
	adds r3, #1
	ldrb r0, [r7]
	cmp r3, r0
	blt _080372A0
_08037342:
	movs r0, #0
_08037344:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_08037354
FUN_08037354: @ 0x08037354
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _080373CC @ => 0x03002338
	adds r1, r0, #0
	adds r1, #0xf8
	adds r5, r0, #0
	ldrb r0, [r1]
	cmp r7, r0
	bge _080373E4
	ldr r2, _080373D0 @ => 0x03004720
	mov sl, r2
	mov sb, r5
	mov ip, r1
	mov r8, r5
	adds r3, r5, #0
	adds r3, #0xd0
_0803737C:
	ldr r1, [r3]
	cmp r1, #7
	bhi _080373D8
	movs r6, #0
	mov r2, ip
	ldrb r0, [r2]
	cmp r0, #0
	beq _080373A4
	adds r2, r1, #0
	mov r1, r8
	adds r1, #0xd0
	adds r4, r0, #0
_08037394:
	ldr r0, [r1]
	cmp r0, r2
	bne _0803739C
	adds r6, #1
_0803739C:
	adds r1, #4
	subs r4, #1
	cmp r4, #0
	bne _08037394
_080373A4:
	cmp r6, #1
	bne _080373D8
	ldr r0, [r3]
	mov r1, sl
	str r0, [r1, #8]
	movs r0, #0xb
	bl FUN_08037910
	movs r1, #0x80
	lsls r1, r1, #1
	add r1, sb
	movs r0, #0
	str r0, [r1]
	adds r0, r7, #0
	bl FUN_08037A3C
	ldr r2, _080373D4 @ => 0x030023E3
	strb r6, [r2]
	b _08037464
	.align 2, 0
_080373CC: .4byte gUnk_03002338
_080373D0: .4byte gUnk_03004720
_080373D4: .4byte gUnk_030023E3
_080373D8:
	adds r3, #4
	adds r7, #1
	mov r0, ip
	ldrb r0, [r0]
	cmp r7, r0
	blt _0803737C
_080373E4:
	movs r4, #0
	adds r0, r5, #0
	adds r0, #0xf8
	ldrb r0, [r0]
	cmp r4, r0
	bge _08037428
	movs r1, #0x80
	lsls r1, r1, #1
	adds r6, r5, r1
_080373F6:
	lsls r0, r4, #2
	adds r1, r5, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r1, #0
	subs r0, #8
	cmp r0, #7
	bhi _0803741C
	ldr r0, _08037418 @ => 0x03004720
	str r1, [r0, #8]
	movs r0, #0xb
	bl FUN_08037910
	movs r0, #0
	str r0, [r6]
	b _08037456
	.align 2, 0
_08037418: .4byte gUnk_03004720
_0803741C:
	adds r4, #1
	adds r0, r5, #0
	adds r0, #0xf8
	ldrb r0, [r0]
	cmp r4, r0
	blt _080373F6
_08037428:
	adds r0, r5, #0
	adds r0, #0xf8
	ldrb r1, [r0]
	subs r1, #1
	movs r0, #0
	bl FUN_080424F8
	adds r4, r0, #0
	ldr r2, _08037474 @ => 0x03004720
	lsls r0, r4, #2
	adds r1, r5, #0
	adds r1, #0xd0
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2, #8]
	movs r0, #0xb
	bl FUN_08037910
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r0, #0
	str r0, [r1]
_08037456:
	adds r0, r4, #0
	bl FUN_08037A3C
	adds r1, r5, #0
	adds r1, #0xab
	movs r0, #1
	strb r0, [r1]
_08037464:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037474: .4byte gUnk_03004720

	thumb_func_start FUN_08037478
FUN_08037478: @ 0x08037478
	push {r4, r5, lr}
	ldr r1, _08037498 @ => 0x030047F8
	ldrb r0, [r1, #4]
	cmp r0, #0
	bne _08037484
	b _0803763C
_08037484:
	subs r0, #1
	cmp r0, #7
	bls _0803748C
	b _08037636
_0803748C:
	lsls r0, r0, #2
	ldr r1, _0803749C @ =_080374A0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08037498: .4byte gUnk_030047F8
_0803749C: .4byte _080374A0
_080374A0: @ jump table
	.4byte _080374C0 @ case 0
	.4byte _08037508 @ case 1
	.4byte _08037550 @ case 2
	.4byte _08037584 @ case 3
	.4byte _080375CC @ case 4
	.4byte _080375D4 @ case 5
	.4byte _08037636 @ case 6
	.4byte _0803761C @ case 7
_080374C0:
	ldr r5, _080374FC @ => 0x03002338
	adds r1, r5, #0
	adds r1, #0xf8
	ldrb r0, [r1]
	subs r0, #1
	movs r2, #0
	strb r0, [r1]
	movs r0, #7
	subs r1, #0x4e
	strb r0, [r1]
	adds r1, #1
	movs r0, #1
	strb r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, r1
	str r2, [r0]
	ldr r1, _08037500 @ => 0x03004720
	ldr r4, _08037504 @ => 0x030047F8
	ldrb r0, [r4, #5]
	str r0, [r1, #8]
	movs r0, #0xb
	bl FUN_08037910
	adds r1, r5, #0
	adds r1, #0xb0
	ldrb r0, [r4, #7]
	str r0, [r1]
	b _08037636
	.align 2, 0
_080374FC: .4byte gUnk_03002338
_08037500: .4byte gUnk_03004720
_08037504: .4byte gUnk_030047F8
_08037508:
	ldr r5, _08037544 @ => 0x03002338
	adds r3, r5, #0
	adds r3, #0xf8
	ldr r2, _08037548 @ => 0x030047F8
	ldrb r0, [r3]
	ldrb r1, [r2, #6]
	subs r0, r0, r1
	movs r4, #0
	strb r0, [r3]
	movs r0, #7
	adds r1, r5, #0
	adds r1, #0xaa
	strb r0, [r1]
	adds r1, #1
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0803754C @ => 0x03004720
	ldrb r0, [r2, #5]
	str r0, [r1, #8]
	ldrb r0, [r2, #6]
	str r0, [r1, #0x10]
	movs r0, #0xa
	bl FUN_08037910
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, r1
	str r4, [r0]
	b _08037636
	.align 2, 0
_08037544: .4byte gUnk_03002338
_08037548: .4byte gUnk_030047F8
_0803754C: .4byte gUnk_03004720
_08037550:
	ldr r4, _08037578 @ => 0x03002338
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0
	str r0, [r1]
	movs r0, #9
	bl FUN_08037910
	ldr r2, _0803757C @ => 0x03004720
	ldr r1, _08037580 @ => 0x030047F8
	ldrb r0, [r1, #6]
	str r0, [r2, #8]
	adds r4, #0xa0
	ldrb r0, [r1, #6]
	ldrb r1, [r4]
	adds r0, r0, r1
	strb r0, [r4]
	b _08037636
	.align 2, 0
_08037578: .4byte gUnk_03002338
_0803757C: .4byte gUnk_03004720
_08037580: .4byte gUnk_030047F8
_08037584:
	ldr r3, _080375C0 @ => 0x03002338
	adds r1, r3, #0
	adds r1, #0xf8
	ldrb r0, [r1]
	adds r0, #1
	movs r2, #0
	strb r0, [r1]
	movs r0, #7
	subs r1, #0x4e
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0xab
	movs r4, #1
	strb r4, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r3, #8]
	str r0, [r1]
	str r2, [r3, #8]
	ldr r2, _080375C4 @ => 0xFFFB8000
	movs r1, #0
	bl FUN_08001744
	movs r0, #9
	bl FUN_08037910
	ldr r0, _080375C8 @ => 0x03004720
	str r4, [r0, #8]
	b _08037636
	.align 2, 0
_080375C0: .4byte gUnk_03002338
_080375C4: .4byte 0xFFFB8000
_080375C8: .4byte gUnk_03004720
_080375CC:
	movs r0, #0
	bl FUN_08036BA4
	b _08037636
_080375D4:
	ldr r2, _080375F4 @ => 0x03002338
	adds r0, r2, #0
	adds r0, #0xb4
	ldr r1, [r0]
	adds r0, #4
	ldr r3, [r0]
	adds r0, #4
	ldr r0, [r0]
	adds r1, r1, r0
	cmp r1, #0xc7
	bgt _080375EE
	cmp r3, #0xc7
	ble _080375F8
_080375EE:
	bl FUN_08037978
	b _0803760A
	.align 2, 0
_080375F4: .4byte gUnk_03002338
_080375F8:
	adds r1, r2, #0
	adds r1, #0xaa
	movs r0, #9
	strb r0, [r1]
	bl FUN_08037790
	movs r0, #0xc
	bl FUN_08037910
_0803760A:
	ldr r0, _08037618 @ => 0x03004720
	movs r1, #0
	str r1, [r0, #0x18]
	movs r1, #1
	str r1, [r0, #0x10]
	b _08037636
	.align 2, 0
_08037618: .4byte gUnk_03004720
_0803761C:
	ldr r2, _08037644 @ => 0x03002338
	adds r3, r2, #0
	adds r3, #0xbc
	ldr r0, _08037648 @ => 0x030047F8
	ldrb r0, [r0, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	adds r2, #0xab
	movs r0, #1
	strb r0, [r2]
_08037636:
	ldr r1, _08037648 @ => 0x030047F8
	movs r0, #0
	strb r0, [r1, #4]
_0803763C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08037644: .4byte gUnk_03002338
_08037648: .4byte gUnk_030047F8

	thumb_func_start FUN_0803764C
FUN_0803764C: @ 0x0803764C
	push {lr}
	ldr r1, _0803766C @ => 0x03002338
	adds r0, r1, #0
	adds r0, #0xbc
	ldr r0, [r0]
	adds r2, r1, #0
	cmp r0, #0
	beq _08037694
	ldr r0, _08037670 @ => 0x03004720
	ldr r1, [r0, #0x10]
	adds r3, r0, #0
	cmp r1, #0
	beq _08037674
	adds r1, r2, #0
	adds r1, #0xb4
	b _08037678
	.align 2, 0
_0803766C: .4byte gUnk_03002338
_08037670: .4byte gUnk_03004720
_08037674:
	adds r1, r2, #0
	adds r1, #0xb8
_08037678:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #0xf
	str r0, [r3, #0x18]
	adds r1, r2, #0
	adds r1, #0xbc
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	subs r1, #0x11
	movs r0, #1
	strb r0, [r1]
	b _08037696
_08037694:
	movs r0, #0
_08037696:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start KeelhaulinCards_Terminate
KeelhaulinCards_Terminate: @ 0x0803769C
	push {lr}
	movs r0, #0x3f
	movs r1, #0
	bl FUN_0804582C
	bl FUN_0800B9D0
	ldr r0, _080376B4 @ => 0x03002C40
	bl FUN_08000BF8
	pop {r0}
	bx r0
	.align 2, 0
_080376B4: .4byte gUnk_03002C40
