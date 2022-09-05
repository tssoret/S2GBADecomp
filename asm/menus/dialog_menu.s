.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start DialogMenu_Init
DialogMenu_Init: @ 0x0801AEEC
	push {r4, r5, r6, lr}
	ldr r6, _0801AFBC @ => 0x03001B68
	ldr r5, [r6, #4]
	cmp r5, #0
	bne _0801AFB6
	movs r0, #1
	bl FUN_080203F8
	ldr r3, _0801AFC0 @ => 0x03001B20
	ldr r0, _0801AFC4 @ => 0x04000008
	ldrh r2, [r0]
	movs r1, #3
	adds r0, r1, #0
	ands r0, r2
	str r0, [r3]
	ldr r0, _0801AFC8 @ => 0x0400000A
	ldrh r2, [r0]
	adds r0, r1, #0
	ands r0, r2
	str r0, [r3, #4]
	ldr r0, _0801AFCC @ => 0x0400000C
	ldrh r2, [r0]
	adds r0, r1, #0
	ands r0, r2
	str r0, [r3, #8]
	ldr r0, _0801AFD0 @ => 0x0400000E
	ldrh r0, [r0]
	ands r1, r0
	str r1, [r3, #0xc]
	ldr r1, _0801AFD4 @ => 0x03006120
	ldr r0, _0801AFD8 @ => 0x030042B0
	ldrh r0, [r0, #6]
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r4, [r0]
	adds r4, #0xa7
	adds r0, r4, #0
	movs r1, #8
	bl __modsi3
	subs r4, r4, r0
	asrs r4, r4, #3
	adds r2, r4, #2
	adds r0, r2, #0
	cmp r2, #0
	bge _0801AF4E
	adds r0, r4, #0
	adds r0, #0x21
_0801AF4E:
	asrs r1, r0, #5
	lsls r0, r1, #5
	subs r1, r2, r0
	ldr r0, _0801AFDC @ => 0x03001B3C
	str r1, [r0]
	ldr r0, _0801AFE0 @ => 0x050001E0
	ldr r1, _0801AFE4 @ => 0x03003D30
	movs r2, #0x10
	bl SVC_CpuSet
	bl FUN_0801B1F8
	ldr r0, _0801AFE8 @ => 0x080637F8
	ldr r0, [r0]
	bl FUN_0801FE58
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #2
	movs r1, #2
	bl FUN_0801FEA0
	bl FUN_080203E0
	subs r0, #4
	bl FUN_0801FEE8
	movs r0, #0
	bl FUN_0801B998
	movs r0, #1
	bl FUN_0801B9A4
	ldr r0, _0801AFEC @ => 0x03001B30
	str r5, [r0]
	ldr r1, _0801AFF0 @ => 0x03001B34
	movs r0, #0x9f
	str r0, [r1]
	strh r5, [r6, #0x12]
	movs r0, #2
	strb r0, [r6, #0x1f]
	bl FUN_0801B5A8
	movs r0, #1
	str r0, [r6, #4]
	str r5, [r6]
	ldr r0, _0801AFF4 @ => 0x0805F940
	movs r1, #1
	bl FUN_08051EA8
	bl FUN_08052004
_0801AFB6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801AFBC: .4byte gUnk_03001B68
_0801AFC0: .4byte gUnk_03001B20
_0801AFC4: .4byte 0x04000008
_0801AFC8: .4byte 0x0400000A
_0801AFCC: .4byte 0x0400000C
_0801AFD0: .4byte 0x0400000E
_0801AFD4: .4byte gUnk_03006120
_0801AFD8: .4byte gUnk_030042B0
_0801AFDC: .4byte gUnk_03001B3C
_0801AFE0: .4byte 0x050001E0
_0801AFE4: .4byte gMessage_BGPalBackup
_0801AFE8: .4byte ROMREF_080637F8
_0801AFEC: .4byte gUnk_03001B30
_0801AFF0: .4byte gUnk_03001B34
_0801AFF4: .4byte ROMREF_0805F940

	thumb_func_start FUN_0801AFF8
FUN_0801AFF8: @ 0x0801AFF8
	push {r4, r5, lr}
	ldr r5, _0801B06C @ => 0x03001B68
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0801B064
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _0801B070 @ => 0x03003210
	ldrb r3, [r2, #8]
	movs r1, #0xd
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r3
	movs r3, #8
	orrs r0, r3
	strb r0, [r2, #8]
	adds r2, #0x70
	ldrb r0, [r2]
	ands r1, r0
	orrs r1, r3
	strb r1, [r2]
	ldr r4, _0801B074 @ => 0x03001B20
	ldrb r1, [r4]
	movs r0, #0
	bl FUN_0800D004
	ldrb r1, [r4, #4]
	movs r0, #1
	bl FUN_0800D004
	ldrb r1, [r4, #8]
	movs r0, #2
	bl FUN_0800D004
	ldrb r1, [r4, #0xc]
	movs r0, #3
	bl FUN_0800D004
	ldr r0, _0801B078 @ => 0x03003D30
	ldr r1, _0801B07C @ => 0x050001E0
	movs r2, #8
	bl SVC_CpuFastSet
	ldr r0, [r5, #4]
	cmp r0, #2
	bne _0801B064
	movs r0, #0
	str r0, [r5, #4]
_0801B064:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801B06C: .4byte gUnk_03001B68
_0801B070: .4byte gUnk_03003210
_0801B074: .4byte gUnk_03001B20
_0801B078: .4byte gMessage_BGPalBackup
_0801B07C: .4byte 0x050001E0

	thumb_func_start DialogMenu_Handler
DialogMenu_Handler: @ 0x0801B080
	push {r4, r5, lr}
	ldr r0, _0801B098 @ => 0x03001B68
	ldrb r1, [r0, #0x1f]
	adds r3, r0, #0
	cmp r1, #4
	bls _0801B08E
	b _0801B1E2
_0801B08E:
	lsls r0, r1, #2
	ldr r1, _0801B09C @ =_0801B0A0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801B098: .4byte gUnk_03001B68
_0801B09C: .4byte _0801B0A0
_0801B0A0: @ jump table
	.4byte _0801B0B4 @ case 0
	.4byte _0801B0B4 @ case 1
	.4byte _0801B174 @ case 2
	.4byte _0801B190 @ case 3
	.4byte _0801B1C0 @ case 4
_0801B0B4:
	ldr r4, _0801B0CC @ => 0x03001B38
	ldr r0, [r4]
	cmp r0, #0
	bne _0801B0D0
	ldrb r0, [r3, #0x1d]
	cmp r0, #0
	bne _0801B0D0
	bl FUN_0801BA24
	movs r0, #1
	str r0, [r4]
	b _0801B0D4
	.align 2, 0
_0801B0CC: .4byte gUnk_03001B38
_0801B0D0:
	bl FUN_0801BA64
_0801B0D4:
	ldr r5, _0801B0F4 @ => 0x03001B38
	ldr r0, [r5]
	cmp r0, #0
	beq _0801B148
	ldr r0, _0801B0F8 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0801B100
	ldr r0, _0801B0FC @ => 0x03001B64
	str r2, [r0]
	bl FUN_0801B634
	b _0801B1E2
	.align 2, 0
_0801B0F4: .4byte gUnk_03001B38
_0801B0F8: .4byte gUnk_030042B0
_0801B0FC: .4byte gUnk_03001B64
_0801B100:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801B130
	ldr r4, _0801B128 @ => 0x03001B68
	ldrh r0, [r4, #0x10]
	bl FUN_0801BA90
	cmp r0, #0
	beq _0801B1E2
	ldr r0, [r4, #8]
	ldrb r1, [r0]
	cmp r1, #0
	bne _0801B1E2
	ldr r0, _0801B12C @ => 0x03001B64
	str r1, [r0]
	bl FUN_0801B634
	b _0801B1E2
	.align 2, 0
_0801B128: .4byte gUnk_03001B68
_0801B12C: .4byte gUnk_03001B64
_0801B130:
	ldr r0, _0801B144 @ => 0x03001B68
	ldr r0, [r0, #8]
	ldrb r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bl FUN_0801BA20
	b _0801B1E2
	.align 2, 0
_0801B144: .4byte gUnk_03001B68
_0801B148:
	movs r0, #0
	bl FUN_0801BA20
	ldr r0, _0801B16C @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _0801B164
	ldr r0, _0801B170 @ => 0x03001B68
	ldrb r0, [r0, #0x1d]
	cmp r0, #0
	bne _0801B1E2
_0801B164:
	bl FUN_0801BA24
	str r4, [r5]
	b _0801B1E2
	.align 2, 0
_0801B16C: .4byte gUnk_030042B0
_0801B170: .4byte gUnk_03001B68
_0801B174:
	ldr r1, _0801B18C @ => 0x03001B34
	ldr r0, [r1]
	subs r0, #4
	str r0, [r1]
	cmp r0, #0x68
	bhi _0801B1A8
	movs r0, #0
	strb r0, [r3, #0x1f]
	movs r0, #0x68
	str r0, [r1]
	b _0801B1A8
	.align 2, 0
_0801B18C: .4byte gUnk_03001B34
_0801B190:
	ldr r1, _0801B1B8 @ => 0x03001B34
	ldr r0, [r1]
	adds r0, #4
	str r0, [r1]
	cmp r0, #0x9e
	bls _0801B1A4
	movs r0, #4
	strb r0, [r3, #0x1f]
	movs r0, #0x9f
	str r0, [r1]
_0801B1A4:
	movs r0, #1
	str r0, [r3]
_0801B1A8:
	ldrh r1, [r1]
	ldr r3, _0801B1BC @ => FUN_0801B4A4
	movs r0, #0
	movs r2, #0
	bl FUN_08051F74
	b _0801B1E2
	.align 2, 0
_0801B1B8: .4byte gUnk_03001B34
_0801B1BC: .4byte FUN_0801B4A4
_0801B1C0:
	ldr r2, _0801B1E8 @ => 0x03004374
	ldr r0, [r2]
	ldr r1, _0801B1EC @ => 0xFFFFFDFF
	ands r0, r1
	str r0, [r2]
	ldrh r0, [r3, #0x10]
	bl FUN_0801BA98
	cmp r0, #0
	bne _0801B1E2
	ldr r0, _0801B1F0 @ => 0x03004750
	ldr r0, [r0]
	ldr r1, _0801B1F4 @ => 0x030043A0
	ldr r2, [r1]
	movs r1, #3
	bl FUN_0802CED4
_0801B1E2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801B1E8: .4byte gUnk_03004374
_0801B1EC: .4byte 0xFFFFFDFF
_0801B1F0: .4byte gUnk_03004750
_0801B1F4: .4byte gUnk_030043A0

	thumb_func_start FUN_0801B1F8
FUN_0801B1F8: @ 0x0801B1F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	add r0, sp, #0x18
	ldr r1, _0801B2A0 @ => 0x08156188
	bl FUN_0800D4D0
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x34]
	ldr r1, _0801B2A4 @ => 0x03001B3C
	lsrs r0, r0, #0x10
	movs r2, #0x20
	subs r0, r2, r0
	ldr r1, [r1]
	cmp r1, r0
	ble _0801B2B8
	subs r2, r2, r1
	str r2, [sp, #0x38]
	movs r4, #0
	lsls r1, r1, #0x10
	mov r8, r1
	ldr r1, [sp, #0x34]
	lsls r6, r1, #0x18
	lsrs r6, r6, #8
	lsls r0, r2, #0x18
	lsrs r5, r0, #0x18
	ldr r2, _0801B2A8 @ => 0x00FFFFFF
	mov sb, r2
	orrs r0, r6
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r3, r8
	str r3, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r0, #5
	mov r8, r0
	str r0, [sp, #0x14]
	add r0, sp, #0x1c
	movs r1, #2
	ldr r2, _0801B2A0 @ => 0x08156188
	movs r3, #0xcd
	lsls r3, r3, #2
	bl FUN_0800D83C
	movs r1, #0
	str r1, [sp, #0x3c]
	ldr r2, [sp, #0x34]
	lsrs r0, r2, #0x10
	ldr r3, [sp, #0x38]
	subs r0, r0, r3
	ldr r1, _0801B2AC @ => 0xFFFFFF00
	ands r7, r1
	lsls r5, r5, #8
	ldr r2, _0801B2B0 @ => 0xFFFF00FF
	ands r7, r2
	orrs r7, r5
	ldr r3, _0801B2B4 @ => 0xFF00FFFF
	ands r7, r3
	orrs r7, r6
	lsls r0, r0, #0x18
	mov r1, sb
	ands r7, r1
	orrs r7, r0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r2, [sp, #0x3c]
	str r2, [sp, #0xc]
	str r7, [sp, #0x10]
	mov r3, r8
	str r3, [sp, #0x14]
	add r0, sp, #0x20
	movs r1, #2
	ldr r2, _0801B2A0 @ => 0x08156188
	movs r3, #0xcd
	lsls r3, r3, #2
	bl FUN_0800D83C
	b _0801B2DA
	.align 2, 0
_0801B2A0: .4byte ROMREF_08156188
_0801B2A4: .4byte gUnk_03001B3C
_0801B2A8: .4byte 0x00FFFFFF
_0801B2AC: .4byte 0xFFFFFF00
_0801B2B0: .4byte 0xFFFF00FF
_0801B2B4: .4byte 0xFF00FFFF
_0801B2B8:
	movs r0, #0
	lsls r4, r1, #0x10
	movs r5, #0
	movs r3, #0xcd
	lsls r3, r3, #2
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r5, [sp, #0x10]
	movs r0, #5
	str r0, [sp, #0x14]
	add r0, sp, #0x24
	movs r1, #2
	ldr r2, _0801B3AC @ => 0x08156188
	bl FUN_0800D83C
_0801B2DA:
	ldr r1, _0801B3B0 @ => 0x03001B88
	ldr r0, [r1]
	cmp r0, #0
	bne _0801B2E4
	b _0801B40E
_0801B2E4:
	movs r7, #0
	str r7, [r1]
	ldr r1, [sp, #0x34]
	lsrs r0, r1, #0x10
	movs r2, #0x20
	subs r0, r2, r0
	ldr r3, _0801B3B4 @ => 0x03001B3C
	ldr r1, [r3]
	cmp r1, r0
	ble _0801B3D0
	subs r2, r2, r1
	mov r8, r2
	lsls r1, r1, #0x10
	str r1, [sp, #0x40]
	ldr r0, [sp, #0x34]
	lsls r6, r0, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r6, #0x18
	lsrs r4, r4, #8
	lsls r0, r2, #0x18
	lsrs r5, r0, #0x18
	ldr r1, _0801B3B8 @ => 0x00FFFFFF
	str r1, [sp, #0x48]
	orrs r0, r4
	str r7, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	ldr r2, [sp, #0x40]
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r3, #5
	str r3, [sp, #0x14]
	add r0, sp, #0x28
	movs r1, #0
	ldr r2, _0801B3BC @ => 0x0815662C
	ldr r3, _0801B3C0 @ => 0x00000346
	bl FUN_0800D83C
	movs r0, #0
	str r0, [sp, #0x4c]
	ldr r1, [sp, #0x34]
	lsrs r0, r1, #0x10
	mov r2, r8
	subs r0, r0, r2
	mov r3, sl
	ldr r1, _0801B3C4 @ => 0xFFFFFF00
	ands r3, r1
	lsls r5, r5, #8
	ldr r2, _0801B3C8 @ => 0xFFFF00FF
	ands r3, r2
	orrs r3, r5
	ldr r1, _0801B3CC @ => 0xFF00FFFF
	ands r3, r1
	orrs r3, r4
	lsls r0, r0, #0x18
	ldr r2, [sp, #0x48]
	ands r3, r2
	orrs r3, r0
	mov sl, r3
	str r7, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	ldr r3, [sp, #0x4c]
	str r3, [sp, #0xc]
	mov r0, sl
	str r0, [sp, #0x10]
	movs r1, #5
	str r1, [sp, #0x14]
	add r0, sp, #0x2c
	movs r1, #0
	ldr r2, _0801B3BC @ => 0x0815662C
	ldr r3, _0801B3C0 @ => 0x00000346
	bl FUN_0800D83C
	ldr r3, _0801B3B4 @ => 0x03001B3C
	ldr r2, [r3]
	mov r0, r8
	str r0, [sp]
	movs r4, #0xb0
	lsls r4, r4, #2
	str r4, [sp, #4]
	movs r0, #1
	movs r1, #0
	adds r3, r6, #0
	bl FUN_0800C7A8
	ldr r1, [sp, #0x34]
	lsrs r0, r1, #0x10
	mov r2, r8
	subs r0, r0, r2
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	adds r3, r6, #0
	bl FUN_0800C7A8
	b _0801B40E
	.align 2, 0
_0801B3AC: .4byte ROMREF_08156188
_0801B3B0: .4byte gUnk_03001B88
_0801B3B4: .4byte gUnk_03001B3C
_0801B3B8: .4byte 0x00FFFFFF
_0801B3BC: .4byte ROMREF_0815662C
_0801B3C0: .4byte 0x00000346
_0801B3C4: .4byte 0xFFFFFF00
_0801B3C8: .4byte 0xFFFF00FF
_0801B3CC: .4byte 0xFF00FFFF
_0801B3D0:
	lsls r1, r1, #0x10
	movs r3, #0
	str r3, [sp, #0x54]
	ldr r2, _0801B420 @ => 0x0815662C
	ldr r3, _0801B424 @ => 0x00000346
	str r7, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0x10]
	movs r0, #5
	str r0, [sp, #0x14]
	add r0, sp, #0x30
	movs r1, #0
	bl FUN_0800D83C
	ldr r1, _0801B428 @ => 0x03001B3C
	ldr r2, [r1]
	ldr r0, [sp, #0x34]
	lsls r3, r0, #0x10
	lsrs r3, r3, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0xb0
	lsls r0, r0, #2
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0
	bl FUN_0800C7A8
_0801B40E:
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B420: .4byte ROMREF_0815662C
_0801B424: .4byte 0x00000346
_0801B428: .4byte gUnk_03001B3C

	thumb_func_start FUN_0801B42C
FUN_0801B42C: @ 0x0801B42C
	push {r4, r5, lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	bl FUN_080203E0
	adds r5, r0, #0
	ldr r4, _0801B480 @ => 0x03001B68
	ldrb r0, [r4, #0x1c]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x38
	ldrh r0, [r4, #0x18]
	ldrb r2, [r4, #0x1e]
	ldrh r3, [r4, #0x16]
	str r3, [sp]
	adds r3, r4, #0
	adds r3, #8
	str r3, [sp, #4]
	ldrb r3, [r4, #0x1c]
	str r3, [sp, #8]
	add r3, sp, #0x10
	str r3, [sp, #0xc]
	movs r3, #0xb1
	bl FUN_08020054
	adds r1, r0, #0
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0801B484
	movs r0, #0
	strh r0, [r4, #0x14]
	ldrb r0, [r4, #0x1e]
	adds r0, r0, r5
	strb r0, [r4, #0x1e]
	ldrh r0, [r4, #0x16]
	subs r0, r0, r5
	strh r0, [r4, #0x16]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	strh r1, [r4, #0x18]
	b _0801B488
	.align 2, 0
_0801B480: .4byte gUnk_03001B68
_0801B484:
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
_0801B488:
	movs r1, #0
	ldr r0, _0801B4A0 @ => 0x03001B68
	ldrh r0, [r0, #0x16]
	cmp r0, r5
	bhs _0801B494
	movs r1, #1
_0801B494:
	adds r0, r1, #0
	add sp, #0x14
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0801B4A0: .4byte gUnk_03001B68

	thumb_func_start FUN_0801B4A4
FUN_0801B4A4: @ 0x0801B4A4
	push {r4, r5, lr}
	movs r0, #0
	bl FUN_0805203C
	ldr r5, _0801B4C4 @ => 0x03001B40
	ldr r1, _0801B4C8 @ => 0x03001B3C
	ldr r1, [r1]
	lsls r1, r1, #3
	subs r3, r1, r0
	ldr r1, _0801B4CC @ => 0x03001B68
	ldr r0, [r1]
	cmp r0, #2
	bne _0801B4D0
	movs r0, #0
	b _0801B584
	.align 2, 0
_0801B4C4: .4byte gUnk_03001B40
_0801B4C8: .4byte gUnk_03001B3C
_0801B4CC: .4byte gUnk_03001B68
_0801B4D0:
	cmp r0, #1
	bne _0801B4D8
	movs r0, #2
	str r0, [r1]
_0801B4D8:
	ldr r2, _0801B58C @ => 0x04000004
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	lsls r4, r3, #0x10
	cmp r0, #0
	bne _0801B4F2
	movs r3, #2
_0801B4E8:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0801B4E8
_0801B4F2:
	movs r0, #2
	movs r1, #0
	bl FUN_0800D004
	ldr r0, _0801B590 @ => 0x04000018
	str r4, [r0]
	ldr r2, _0801B58C @ => 0x04000004
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801B516
	movs r3, #2
_0801B50C:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0801B50C
_0801B516:
	ldr r2, _0801B594 @ => 0x03003210
	ldrb r3, [r2, #8]
	movs r1, #0xd
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r3
	strb r0, [r2, #8]
	adds r2, #0x70
	ldrb r0, [r2]
	ands r1, r0
	strb r1, [r2]
	ldr r2, _0801B58C @ => 0x04000004
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801B544
	movs r3, #2
_0801B53A:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0801B53A
_0801B544:
	movs r0, #0
	movs r1, #2
	bl FUN_0800D004
	movs r0, #1
	movs r1, #1
	bl FUN_0800D004
	movs r0, #3
	movs r1, #3
	bl FUN_0800D004
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0801B598 @ => 0x0000EFFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0801B59C @ => 0x04000010
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	ldr r1, _0801B5A0 @ => 0x050001E0
	adds r0, r5, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r1, _0801B5A4 @ => 0x03003200
	movs r0, #1
_0801B584:
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801B58C: .4byte 0x04000004
_0801B590: .4byte 0x04000018
_0801B594: .4byte gUnk_03003210
_0801B598: .4byte 0x0000EFFF
_0801B59C: .4byte 0x04000010
_0801B5A0: .4byte 0x050001E0
_0801B5A4: .4byte gUnk_03003200

	thumb_func_start FUN_0801B5A8
FUN_0801B5A8: @ 0x0801B5A8
	push {r4, r5, lr}
	ldr r2, _0801B618 @ => 0x03001B30
	ldr r5, _0801B61C @ => 0x0805CF78
	ldr r4, _0801B620 @ => 0x03001B68
	ldrh r0, [r4, #0x10]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldrh r1, [r4, #0x12]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2]
	bl FUN_0801B9F0
	adds r1, r0, #0
	str r1, [r4, #8]
	ldr r0, _0801B624 @ => 0x03003D50
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #3
	bl FUN_0802014C
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	movs r0, #0
	strh r0, [r4, #0x14]
	ldr r0, _0801B628 @ => 0x03001B3C
	ldr r0, [r0]
	lsls r0, r0, #3
	adds r0, #0xa
	strb r0, [r4, #0x1e]
	movs r0, #0x2b
	strh r0, [r4, #0x16]
	ldr r0, _0801B62C @ => 0x00000372
	strh r0, [r4, #0x18]
	bl FUN_0801B1F8
	ldrh r0, [r4, #0x10]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldrh r1, [r4, #0x12]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl FUN_0801B6C4
	ldrh r0, [r4, #0x14]
	bl FUN_0801B42C
	ldr r1, _0801B630 @ => 0x03001B38
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801B618: .4byte gUnk_03001B30
_0801B61C: .4byte ROMREF_0805CF78
_0801B620: .4byte gUnk_03001B68
_0801B624: .4byte gMessage_TextBuffer
_0801B628: .4byte gUnk_03001B3C
_0801B62C: .4byte 0x00000372
_0801B630: .4byte gUnk_03001B38

	thumb_func_start FUN_0801B634
FUN_0801B634: @ 0x0801B634
	push {r4, lr}
	ldr r4, _0801B668 @ => 0x03001B68
	ldr r0, [r4, #8]
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801B678
	movs r0, #0
	strh r0, [r4, #0x14]
	ldr r0, _0801B66C @ => 0x03001B3C
	ldr r0, [r0]
	lsls r0, r0, #3
	adds r0, #0xa
	strb r0, [r4, #0x1e]
	movs r0, #0x2b
	strh r0, [r4, #0x16]
	ldr r0, _0801B670 @ => 0x00000372
	strh r0, [r4, #0x18]
	bl FUN_0801B1F8
	ldrh r0, [r4, #0x14]
	bl FUN_0801B42C
	ldr r1, _0801B674 @ => 0x03001B38
	str r0, [r1]
	b _0801B6BC
	.align 2, 0
_0801B668: .4byte gUnk_03001B68
_0801B66C: .4byte gUnk_03001B3C
_0801B670: .4byte 0x00000372
_0801B674: .4byte gUnk_03001B38
_0801B678:
	ldrh r0, [r4, #0x12]
	adds r0, #1
	strh r0, [r4, #0x12]
	ldr r2, _0801B698 @ => 0x0805CF78
	ldrh r3, [r4, #0x10]
	lsls r1, r3, #3
	adds r1, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1, #4]
	cmp r0, r1
	bhs _0801B69C
	bl FUN_0801B5A8
	b _0801B6BC
	.align 2, 0
_0801B698: .4byte ROMREF_0805CF78
_0801B69C:
	adds r0, r3, #0
	bl FUN_0801BA90
	cmp r0, #0
	beq _0801B6B8
	ldrh r0, [r4, #0x10]
	ldr r1, _0801B6B4 @ => 0x03001B64
	ldr r1, [r1]
	bl FUN_0801BA94
	b _0801B6BC
	.align 2, 0
_0801B6B4: .4byte gUnk_03001B64
_0801B6B8:
	movs r0, #3
	strb r0, [r4, #0x1f]
_0801B6BC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0801B6C4
FUN_0801B6C4: @ 0x0801B6C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	str r0, [sp, #0x28]
	ldr r0, _0801B704 @ => 0x03001B3C
	ldr r6, [r0]
	ldr r0, _0801B708 @ => 0x09FB6C68
	mov sb, r0
	ldr r1, [sp, #0x28]
	lsls r0, r1, #3
	add r0, sb
	str r0, [sp, #0x2c]
	ldr r0, [r0]
	mov ip, r0
	cmp r0, #0
	bne _0801B70C
	movs r0, #7
	str r0, [sp]
	movs r0, #0xb0
	lsls r0, r0, #2
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0
	adds r2, r6, #0
	movs r3, #6
	bl FUN_0800C7A8
	b _0801B88A
	.align 2, 0
_0801B704: .4byte gUnk_03001B3C
_0801B708: .4byte MsgPicTable
_0801B70C:
	cmp r6, #0x19
	bls _0801B7C8
	movs r1, #0x20
	subs r1, r1, r6
	mov sl, r1
	lsls r2, r6, #0x10
	ldr r4, _0801B7B4 @ => 0xFFFFFF00
	ands r3, r4
	movs r0, #1
	orrs r3, r0
	ldr r1, _0801B7B8 @ => 0xFFFF00FF
	ands r3, r1
	ldr r4, _0801B7BC @ => 0xFF00FFFF
	ands r3, r4
	movs r0, #0xc0
	lsls r0, r0, #0xb
	orrs r3, r0
	mov r1, sl
	lsls r0, r1, #0x18
	lsrs r4, r0, #0x18
	ldr r1, _0801B7C0 @ => 0x00FFFFFF
	ands r3, r1
	orrs r3, r0
	movs r0, #0xf0
	mov sb, r0
	str r0, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r0, #0x10
	mov r8, r0
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r6, _0801B7C4 @ => 0x00000105
	str r6, [sp, #0x14]
	add r0, sp, #0x18
	movs r1, #1
	mov r2, ip
	movs r3, #0xd2
	lsls r3, r3, #2
	bl FUN_0800D83C
	movs r1, #0
	str r1, [sp, #0x30]
	movs r0, #7
	mov r3, sl
	subs r0, r0, r3
	ldr r1, _0801B7B4 @ => 0xFFFFFF00
	ands r7, r1
	movs r3, #1
	orrs r7, r3
	lsls r4, r4, #8
	ldr r1, _0801B7B8 @ => 0xFFFF00FF
	ands r7, r1
	orrs r7, r4
	ldr r3, _0801B7BC @ => 0xFF00FFFF
	ands r7, r3
	movs r4, #0xc0
	lsls r4, r4, #0xb
	orrs r7, r4
	lsls r0, r0, #0x18
	ldr r1, _0801B7C0 @ => 0x00FFFFFF
	ands r7, r1
	orrs r7, r0
	ldr r3, [sp, #0x2c]
	ldr r2, [r3]
	mov r4, sb
	str r4, [sp]
	movs r0, #0
	str r0, [sp, #4]
	mov r1, r8
	str r1, [sp, #8]
	ldr r3, [sp, #0x30]
	str r3, [sp, #0xc]
	str r7, [sp, #0x10]
	str r6, [sp, #0x14]
	add r0, sp, #0x1c
	movs r1, #1
	movs r3, #0xd2
	lsls r3, r3, #2
	bl FUN_0800D83C
	b _0801B80E
	.align 2, 0
_0801B7B4: .4byte 0xFFFFFF00
_0801B7B8: .4byte 0xFFFF00FF
_0801B7BC: .4byte 0xFF00FFFF
_0801B7C0: .4byte 0x00FFFFFF
_0801B7C4: .4byte 0x00000105
_0801B7C8:
	movs r2, #0
	lsls r6, r6, #0x10
	mov r8, r6
	movs r1, #1
	ldr r0, _0801B89C @ => 0xFFFFFF00
	ands r4, r0
	orrs r4, r1
	ldr r0, _0801B8A0 @ => 0xFFFF00FF
	ands r4, r0
	movs r1, #0xc0
	lsls r1, r1, #0xb
	ldr r0, _0801B8A4 @ => 0xFF00FFFF
	ands r4, r0
	orrs r4, r1
	movs r1, #0xe0
	lsls r1, r1, #0x13
	ldr r0, _0801B8A8 @ => 0x00FFFFFF
	ands r4, r0
	orrs r4, r1
	movs r3, #0xd2
	lsls r3, r3, #2
	movs r0, #0xf0
	str r0, [sp]
	str r2, [sp, #4]
	movs r0, #0x10
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	str r4, [sp, #0x10]
	adds r0, #0xf5
	str r0, [sp, #0x14]
	add r0, sp, #0x20
	movs r1, #1
	mov r2, ip
	bl FUN_0800D83C
_0801B80E:
	movs r6, #0
	ldr r0, _0801B8AC @ => 0x03001B3C
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	str r0, [sp, #0x34]
	movs r1, #1
	ldr r0, _0801B89C @ => 0xFFFFFF00
	ands r5, r0
	orrs r5, r1
	ldr r0, _0801B8A0 @ => 0xFFFF00FF
	ands r5, r0
	movs r1, #0xc0
	lsls r1, r1, #0xb
	ldr r0, _0801B8A4 @ => 0xFF00FFFF
	ands r5, r0
	orrs r5, r1
	movs r1, #0xe0
	lsls r1, r1, #0x13
	ldr r0, _0801B8A8 @ => 0x00FFFFFF
	ands r5, r0
	orrs r5, r1
	ldr r0, _0801B8B0 @ => 0x09FB6C68
	ldr r1, [sp, #0x28]
	lsls r4, r1, #3
	adds r4, r4, r0
	ldr r2, [r4]
	movs r3, #0xd2
	lsls r3, r3, #2
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [sp, #0x34]
	str r0, [sp, #0xc]
	str r5, [sp, #0x10]
	movs r0, #3
	str r0, [sp, #0x14]
	add r0, sp, #0x24
	movs r1, #2
	bl FUN_0800D83C
	ldr r0, [r4]
	adds r0, #2
	movs r1, #0xf0
	movs r2, #0x10
	bl FUN_0801571C
	ldr r2, _0801B8B4 @ => 0x050001E0
	ldr r1, _0801B8B8 @ => 0x03001B40
	adds r0, r2, #0
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r0, _0801B8BC @ => 0x03003D30
	ldm r0!, {r1, r3, r5}
	stm r2!, {r1, r3, r5}
	ldm r0!, {r1, r4, r5}
	stm r2!, {r1, r4, r5}
	ldm r0!, {r3, r4}
	stm r2!, {r3, r4}
_0801B88A:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B89C: .4byte 0xFFFFFF00
_0801B8A0: .4byte 0xFFFF00FF
_0801B8A4: .4byte 0xFF00FFFF
_0801B8A8: .4byte 0x00FFFFFF
_0801B8AC: .4byte gUnk_03001B3C
_0801B8B0: .4byte MsgPicTable
_0801B8B4: .4byte 0x050001E0
_0801B8B8: .4byte gUnk_03001B40
_0801B8BC: .4byte gMessage_BGPalBackup

	thumb_func_start DialogMenu_Terminate
DialogMenu_Terminate: @ 0x0801B8C0
	push {r4, lr}
	movs r0, #0
	bl FUN_080203F8
	bl FUN_08052024
	ldr r1, _0801B908 @ => 0x03001B68
	movs r0, #2
	str r0, [r1, #4]
	ldr r4, _0801B90C @ => 0x03001B20
	ldrb r1, [r4]
	movs r0, #0
	bl FUN_0800D004
	ldrb r1, [r4, #4]
	movs r0, #1
	bl FUN_0800D004
	ldrb r1, [r4, #8]
	movs r0, #2
	bl FUN_0800D004
	ldrb r1, [r4, #0xc]
	movs r0, #3
	bl FUN_0800D004
	ldr r2, _0801B910 @ => 0x0300317C
	ldr r0, [r2]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801B908: .4byte gUnk_03001B68
_0801B90C: .4byte gUnk_03001B20
_0801B910: .4byte gUnk_0300317C
