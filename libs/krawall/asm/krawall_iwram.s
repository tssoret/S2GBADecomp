@
@   Krawall, XM/S3M Modplayer Library
@   Copyright (C) 2001-2005, 2013 Sebastian Kienzl
@   
@   This library is free software; you can redistribute it and/or
@   modify it under the terms of the GNU Lesser General Public
@   License as published by the Free Software Foundation; either
@   version 2.1 of the License, or (at your option) any later version.
@   
@   This library is distributed in the hope that it will be useful,
@   but WITHOUT ANY WARRANTY; without even the implied warranty of
@   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
@   Lesser General Public License in COPYING for more details.
@

.include "asm/macros.s"

	.SECTION .iwram, "axw", %progbits
	.syntax unified

	.global KrawallIWRAMStart

@ Start of Krawall IWRAM stuff.
KrawallIWRAMStart:
    .4byte 0x0

	arm_func_start kradInterrupt
kradInterrupt: @ 0x09FC1ED0
	ldr r0, _09FC1F78 @ =0x020008AC
	ldrb r1, [r0]
	tst r1, #1
	eor r1, r1, #1
	strb r1, [r0]
Lnewend:
	b Lreprogram
	ldr r0, _09FC1F7C
	ldrh r1, [r0, #0x0]
	bic  r1, r1, #0x8000
	strh r1, [r0, #0x0]
	orr r1, r1, #0x8000
	strh r1, [r0, #0x0]
	ldr r0, _09FC1F80
	ldrh r1, [r0, #0x0]
	tst r1, #0x8000
	bxeq lr
	bic r1, r1, #0x8000
	strh r1, [r0, #0x0]
	orr r1, r1, #0x8000
	strh r1, [r0, #0x0]
	bx lr
Lreprogram:
	ldr r0, _09FC1F84 @ =0x04000104
	ldr r1, [r0]
	bic r2, r1, #0x800000
	str r2, [r0]
	ldr r2, _09FC1F88 @ =0x0000FDD8
	lsr r1, r1, #0x10
	add r1, r2, r1, lsl #16
	str r1, [r0]
	ldr r1, Lnewend @ =0xEA00000E
	add r0, pc, #0x24 @ =_09FC1F74
	str r1, [r0]
	ldr r1, Lop @ =0x012FFF1E
	sub r0, pc, #0x78
	str r1, [r0]
	bx lr

	arm_func_start kradInterruptUndoCodeMod
kradInterruptUndoCodeMod: @ 0x09FC1F60
	ldr r1, LopBackup @ =0x00000000
	sub r0, pc, #0x88
	str r1, [r0]
	bx lr

Lop: bxeq lr
LopBackup: .word 0

_09FC1F78: .4byte gKrawall_DMABlock
_09FC1F7C: .4byte 0x040000C6
_09FC1F80: .4byte 0x040000D2
_09FC1F84: .4byte 0x04000104
_09FC1F88: .4byte 0x0000FDD8
_09FC1F8C: .4byte 0x01008080

	arm_func_start kramPlayExt
kramPlayExt: @ 0x09FC1F90
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r5, r2
	and r4, r5, #0xff
	ldr r6, _09FC21D0 @ =0x030000C3
	add r2, r4, r4, lsl #2
	ldrb r8, [r6]
	ldr r7, _09FC21D4 @ =0x020008B0
	add r6, r4, r2, lsl #1
	lsl r2, r6, #2
	cmp r8, #0
	add lr, r2, r7
	mov r6, r0
	mov sl, r1
	mov sb, r3
	ldr r8, [sp, #0x24]
	ldreq ip, [lr, #0x18]
	beq _09FC1FE0
	ldr ip, [lr, #0x18]
	cmp ip, r5
	beq _09FC215C
_09FC1FE0:
	cmp ip, r5
	beq _09FC203C
	ldr lr, _09FC21D4 @ =0x020008B0
	ldrb r0, [lr, #2]
	cmp r0, #0
	mov r1, #0
	beq _09FC2028
_09FC1FFC:
	add lr, lr, #0x2c
	add r1, r1, #1
	ldrb r3, [lr, #2]
	cmp r1, #0x1f
	movgt ip, #0
	movle ip, #1
	cmp r3, #0
	moveq ip, #0
	andne ip, ip, #1
	cmp ip, #0
	bne _09FC1FFC
_09FC2028:
	cmp r1, #0x1f
	movgt r0, #0
	bgt _09FC2154
	and r5, r1, #0xff
	mov r4, r5
_09FC203C:
	ldr r1, _09FC21D8 @ =0x03000630
	ldr r3, [r1]
	and r5, sl, #1
	add r0, r3, #1
	str r0, [r1]
	ldr ip, _09FC21DC @ =0x030000C2
	strb r5, [lr, #0x24]
	ldrb r1, [ip]
	cmp r1, #2
	orr r5, r4, r0, lsl #8
	ldrbne r0, [lr, #0x22]
	andne r2, r0, r1
	lslne r3, r2, #3
	moveq r3, #8
	str r5, [lr, #0x18]
	strb r3, [lr, #0x20]
	ldr ip, _09FC21E0 @ =0x03000000
	ldrb r2, [ip]
	cmp r2, #0
	moveq r0, #1
	strbeq r0, [lr, #0x21]
	strbeq r2, [lr, #1]
	beq _09FC20C4
	cmp r8, #0
	moveq r1, #4
	strbeq r1, [lr, #0x21]
	beq _09FC20C0
	asrgt r2, r8, #6
	rsble ip, r8, #0
	addgt r1, r2, #2
	asrle r0, ip, #6
	strbgt r1, [lr, #0x21]
	strble r0, [lr, #0x21]
_09FC20C0:
	strb r8, [lr, #1]
_09FC20C4:
	ldr r1, [sp, #0x20]
	lsl r2, sb, #2
	strb r1, [lr]
	str r2, [lr, #0x14]
	ldrb ip, [lr, #0x24]
	ldr r0, _09FC21E4 @ =0x030000C0
	ldrb r2, [lr]
	ldrb r1, [r0, ip]
	mul ip, r1, r2
	ldrsb r1, [lr, #1]
	rsb r2, r1, #0x40
	add r3, r1, #0x40
	mul r1, r3, ip
	mul r3, r2, ip
	lsr r2, r1, #0xd
	lsr r0, r3, #0xd
	strb r0, [lr, #0x1e]
	strb r2, [lr, #0x1f]
	ldrb ip, [r6, #0x11]
	add r0, r6, #0x12
	strb ip, [lr, #0x22]
	str r0, [lr, #8]
	str r0, [lr, #4]
	ldr r2, [r6]
	str r2, [lr, #0x10]
	ldr r3, [r6, #4]
	str r3, [lr, #0xc]
	rsb ip, r2, r3
	ldrb r0, [r6, #0x10]
	mov r1, #1
	mov r2, #0
	strb r1, [lr, #2]
	str ip, [lr, #0x28]
	strh r2, [lr, #0x1c]
	strb r0, [lr, #3]
	mov r0, r5
_09FC2154:
	pop {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
_09FC215C:
	ldrb r0, [lr, #2]
	cmp r0, #1
	beq _09FC2178
_09FC2168:
	ldr ip, [lr, #0x18]
	mov r1, #0
	strb r1, [lr, #2]
	b _09FC1FE0
_09FC2178:
	ldrb r1, [r2, r7]
	cmp r1, #5
	bls _09FC2168
	mov ip, #0x10
	ldr r1, [lr, #8]
	strb ip, [lr, #0x24]
	ldrb r2, [r1]
	lsl r0, r2, #4
	strh r0, [lr, #0x28]
	ldrb ip, [r1]
	ldr r0, [lr, #4]
	mov r1, #0
	rsb r3, ip, #0x80
	mov r2, #7
	mov ip, r1
	strh r3, [lr, #0x2a]
	strb r2, [lr, #0x21]
	str r0, [lr, #8]
	str r1, [lr, #0x14]
	strb r1, [lr, #0x20]
	str r1, [lr, #0x18]
	b _09FC1FE0
	.align 2, 0
_09FC21D0: .4byte gKrawall_HQRamp
_09FC21D4: .4byte gKrawall_Channels
_09FC21D8: .4byte gKrawall_CidCounter
_09FC21DC: .4byte gKrawall_HQMode
_09FC21E0: .4byte gKrawall_DSStereo
_09FC21E4: .4byte gKrawall_VolMaster

	arm_func_start kramPlay
kramPlay: @ 0x09FC21E8
	mov ip, sp
	push {r4, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #8
	mov ip, r0
	ldrsb r4, [ip, #0xf]
	ldrb lr, [ip, #0xe]
	ldr r3, [ip, #8]
	str lr, [sp]
	str r4, [sp, #4]
	bl kramPlayExt
	ldmdb fp, {r4, fp, sp, lr}
	bx lr

	arm_func_start kramStop
kramStop: @ 0x09FC221C
	and r1, r0, #0xff
	str lr, [sp, #-4]!
	add r3, r1, r1, lsl #2
	add ip, r1, r3, lsl #1
	ldr r1, _09FC22DC @ =0x020008B0
	lsl r2, ip, #2
	add ip, r2, r1
	ldr r3, [ip, #0x18]
	cmp r3, r0
	mov r0, #0
	ldmne sp!, {lr}
	bxne lr
	ldr r0, _09FC22E0 @ =0x030000C3
	ldrb r3, [r0]
	cmp r3, #0
	mov r0, #1
	strbeq r3, [ip, #2]
	ldmeq sp!, {lr}
	bxeq lr
	ldrb r0, [ip, #2]
	cmp r0, #1
	beq _09FC2288
_09FC2274:
	mov r2, #0
	strb r2, [ip, #2]
_09FC227C:
	mov r0, #1
	ldm sp!, {lr}
	bx lr
_09FC2288:
	ldrb r0, [r2, r1]
	cmp r0, #5
	mov lr, #0
	bls _09FC2274
	mov r0, #0x10
	ldr r2, [ip, #8]
	strb r0, [ip, #0x24]
	ldrb r3, [r2]
	lsl r1, r3, #4
	strh r1, [ip, #0x28]
	ldrb r3, [r2]
	ldr r0, [ip, #4]
	rsb r1, r3, #0x80
	mov r2, #7
	str lr, [ip, #0x18]
	strh r1, [ip, #0x2a]
	strb r2, [ip, #0x21]
	str r0, [ip, #8]
	str lr, [ip, #0x14]
	strb lr, [ip, #0x20]
	b _09FC227C
	.align 2, 0
_09FC22DC: .4byte gKrawall_Channels
_09FC22E0: .4byte gKrawall_HQRamp

	arm_func_start kramSetFreq
kramSetFreq: @ 0x09FC22E4
	and ip, r0, #0xff
	add r2, ip, ip, lsl #2
	add r3, ip, r2, lsl #1
	ldr r2, _09FC232C @ =0x020008B0
	add ip, r2, r3, lsl #2
	ldr r3, [ip, #0x18]
	cmp r3, r0
	mov r0, #0
	bxne lr
	ldr r0, [ip, #0x14]
	lsl r2, r1, #2
	cmp r0, #0
	rsb r3, r2, #0
	lsl r1, r1, #2
	strge r1, [ip, #0x14]
	strlt r3, [ip, #0x14]
	mov r0, #1
	bx lr
	.align 2, 0
_09FC232C: .4byte gKrawall_Channels

	arm_func_start kramSetVolume
kramSetVolume: @ 0x09FC2330
	and ip, r0, #0xff
	push {r4, lr}
	add r3, ip, ip, lsl #2
	add r4, ip, r3, lsl #1
	ldr ip, _09FC23A8 @ =0x020008B0
	lsl r2, r4, #2
	add r4, r2, ip
	ldr r3, [r4, #0x18]
	cmp r3, r0
	mov r0, #0
	beq _09FC2364
_09FC235C:
	pop {r4, lr}
	bx lr
_09FC2364:
	strb r1, [r2, ip]
	ldr r1, _09FC23AC @ =0x030000C0
	ldrb lr, [r4, #0x24]
	ldrb ip, [r2, ip]
	ldrb r2, [r1, lr]
	mul lr, r2, ip
	ldrsb r2, [r4, #1]
	rsb r3, r2, #0x40
	add r1, r2, #0x40
	mul r2, r1, lr
	mul r1, r3, lr
	lsr r3, r2, #0xd
	lsr ip, r1, #0xd
	strb r3, [r4, #0x1f]
	strb ip, [r4, #0x1e]
	mov r0, #1
	b _09FC235C
	.align 2, 0
_09FC23A8: .4byte gKrawall_Channels
_09FC23AC: .4byte gKrawall_VolMaster

	arm_func_start kramSetPan
kramSetPan: @ 0x09FC23B0
	str lr, [sp, #-4]!
	and lr, r0, #0xff
	add r3, lr, lr, lsl #2
	ldr r2, _09FC2468 @ =0x020008B0
	add ip, lr, r3, lsl #1
	add lr, r2, ip, lsl #2
	ldr r3, [lr, #0x18]
	cmp r3, r0
	movne r0, #0
	ldmne sp!, {lr}
	bxne lr
	ldr r0, _09FC246C @ =0x03000000
	ldrb r2, [r0]
	cmp r2, #0
	moveq r1, #1
	strbeq r1, [lr, #0x21]
	strbeq r2, [lr, #1]
	beq _09FC2424
	cmp r1, #0
	moveq ip, #4
	strbeq ip, [lr, #0x21]
	beq _09FC2420
	asrgt ip, r1, #6
	rsble r2, r1, #0
	addgt r2, ip, #2
	asrle r0, r2, #6
	strbgt r2, [lr, #0x21]
	strble r0, [lr, #0x21]
_09FC2420:
	strb r1, [lr, #1]
_09FC2424:
	ldrb ip, [lr, #0x24]
	ldr r0, _09FC2470 @ =0x030000C0
	ldrb r3, [lr]
	ldrb r2, [r0, ip]
	mul ip, r2, r3
	ldrsb r2, [lr, #1]
	rsb r3, r2, #0x40
	add r1, r2, #0x40
	mul r2, r1, ip
	mul r1, r3, ip
	lsr r0, r2, #0xd
	lsr r3, r1, #0xd
	strb r0, [lr, #0x1f]
	strb r3, [lr, #0x1e]
	mov r0, #1
	ldm sp!, {lr}
	bx lr
	.align 2, 0
_09FC2468: .4byte gKrawall_Channels
_09FC246C: .4byte gKrawall_DSStereo
_09FC2470: .4byte gKrawall_VolMaster

	arm_func_start kramSetPos
kramSetPos: @ 0x09FC2474
	and ip, r0, #0xff
	add r2, ip, ip, lsl #2
	add r3, ip, r2, lsl #1
	ldr r2, _09FC24C0 @ =0x020008B0
	add ip, r2, r3, lsl #2
	ldr r3, [ip, #0x18]
	cmp r3, r0
	mov r0, #0
	bxne lr
	ldr r3, [ip, #4]
	ldr r2, [ip, #0xc]
	add r1, r3, r1
	cmp r1, r2
	mov r0, #1
	bxhs lr
	str r1, [ip, #8]
	mov r1, #0
	strh r1, [ip, #0x1c]
	bx lr
	.align 2, 0
_09FC24C0: .4byte gKrawall_Channels

	arm_func_start kramActive
kramActive: @ 0x09FC24C4
	and r1, r0, #0xff
	add r3, r1, r1, lsl #2
	ldr r2, _09FC24F8 @ =0x020008B0
	add ip, r1, r3, lsl #1
	add r3, r2, ip, lsl #2
	ldr r1, [r3, #0x18]
	cmp r1, r0
	mov r0, #0
	bxne lr
	ldrb ip, [r3, #2]
	subs r0, ip, #0
	movne r0, #1
	bx lr
	.align 2, 0
_09FC24F8: .4byte gKrawall_Channels
_09FC24FC:
	.byte 0x00, 0x00, 0x00, 0x00

	arm_func_start mixLeft
mixLeft: @ 0x09FC2500
	push {r4, r5, r6, r7, r8, sb, sl, fp}
	ldr r5, [r0, #8]
	ldr r6, [r0, #0x14]
	ldrh r7, [r0, #0x1c]
	ldrb r3, [r0, #0x1e]
	lsr r2, r2, #2
_09FC2518:
	ldrb r8, [r5, r7, asr #16]
	add r7, r7, r6
	ldrb sb, [r5, r7, asr #16]
	add r7, r7, r6
	add sb, r8, sb, lsl #16
	mul r8, sb, r3
	bic sl, r8, #0x70000
	ldrb r8, [r5, r7, asr #16]
	add r7, r7, r6
	ldrb sb, [r5, r7, asr #16]
	add r7, r7, r6
	add sb, r8, sb, lsl #16
	mul r8, sb, r3
	bic fp, r8, #0x70000
	ldm r1, {r8, sb}
	add r8, r8, sl, lsr #3
	add sb, sb, fp, lsr #3
	stm r1!, {r8, sb}
	add r1, r1, #8
	subs r2, r2, #1
	bne _09FC2518
	add r5, r5, r7, asr #16
	str r5, [r0, #8]
	strh r7, [r0, #0x1c]
	pop {r4, r5, r6, r7, r8, sb, sl, fp}
	bx lr

	arm_func_start mixRight
mixRight: @ 0x09FC2580
	push {r4, r5, r6, r7, r8, sb, sl, fp}
	ldr r5, [r0, #8]
	ldr r6, [r0, #0x14]
	ldrh r7, [r0, #0x1c]
	ldrb r3, [r0, #0x1f]
	lsr r2, r2, #2
	add r1, r1, #8
	b _09FC2518

	arm_func_start mixCenter
mixCenter: @ 0x09FC25A0
	push {r4, r5, r6, r7, r8, sb, sl, fp}
	ldr r5, [r0, #8]
	ldr r6, [r0, #0x14]
	ldrh r7, [r0, #0x1c]
	ldrb r3, [r0, #0x1e]
	lsr r2, r2, #2
_09FC25B8:
	ldrb r8, [r5, r7, asr #16]
	add r7, r7, r6
	ldrb sb, [r5, r7, asr #16]
	add r7, r7, r6
	add sb, r8, sb, lsl #16
	mul r8, sb, r3
	bic ip, r8, #0x70000
	ldrb r8, [r5, r7, asr #16]
	add r7, r7, r6
	ldrb sb, [r5, r7, asr #16]
	add r7, r7, r6
	add sb, r8, sb, lsl #16
	mul r8, sb, r3
	bic r4, r8, #0x70000
	ldm r1, {r8, sb, sl, fp}
	add r8, r8, ip, lsr #3
	add sl, sl, ip, lsr #3
	add sb, sb, r4, lsr #3
	add fp, fp, r4, lsr #3
	stm r1!, {r8, sb, sl, fp}
	subs r2, r2, #1
	bne _09FC25B8
	add r5, r5, r7, asr #16
	str r5, [r0, #8]
	strh r7, [r0, #0x1c]
	pop {r4, r5, r6, r7, r8, sb, sl, fp}
	bx lr

	arm_func_start mixStereo
mixStereo: @ 0x09FC2624
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r5, [r0, #8]
	ldr r6, [r0, #0x14]
	ldrh r7, [r0, #0x1c]
	ldrb r3, [r0, #0x1e]
	ldrb r4, [r0, #0x1f]
	lsr r2, r2, #2
_09FC2640:
	ldm r1, {r8, sb, sl, fp}
	ldrb ip, [r5, r7, asr #16]
	add r7, r7, r6
	ldrb lr, [r5, r7, asr #16]
	add r7, r7, r6
	add ip, ip, lr, lsl #16
	mul lr, ip, r3
	bic lr, lr, #0x70000
	add r8, r8, lr, lsr #3
	mul lr, ip, r4
	bic lr, lr, #0x70000
	add sl, sl, lr, lsr #3
	ldrb ip, [r5, r7, asr #16]
	add r7, r7, r6
	ldrb lr, [r5, r7, asr #16]
	add r7, r7, r6
	add ip, ip, lr, lsl #16
	mul lr, ip, r3
	bic lr, lr, #0x70000
	add sb, sb, lr, lsr #3
	mul lr, ip, r4
	bic lr, lr, #0x70000
	add fp, fp, lr, lsr #3
	stm r1!, {r8, sb, sl, fp}
	subs r2, r2, #1
	bne _09FC2640
	add r5, r5, r7, asr #16
	str r5, [r0, #8]
	strh r7, [r0, #0x1c]
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr

	arm_func_start mixLeftHQ
mixLeftHQ: @ 0x09FC26BC
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r5, [r0, #8]
	ldr r6, [r0, #0x14]
	ldrh r7, [r0, #0x1c]
	ldrb r3, [r0, #0x1e]
	lsr r2, r2, #2
	add lr, r5, #1
_09FC26D8:
	ldrb r8, [r5, r7, asr #16]
	ldrb sl, [lr, r7, asr #16]
	sub sl, sl, r8
	lsl fp, r7, #0x10
	lsr fp, fp, #0x10
	mul sl, fp, sl
	add r8, r8, sl, lsr #16
	add r7, r7, r6
	ldrb sb, [r5, r7, asr #16]
	ldrb sl, [lr, r7, asr #16]
	sub sl, sl, sb
	lsl fp, r7, #0x10
	lsr fp, fp, #0x10
	mul sl, fp, sl
	add sb, sb, sl, lsr #16
	add r7, r7, r6
	add sb, r8, sb, lsl #16
	mul r8, sb, r3
	bic ip, r8, #0x70000
	ldrb r8, [r5, r7, asr #16]
	ldrb sl, [lr, r7, asr #16]
	sub sl, sl, r8
	lsl fp, r7, #0x10
	lsr fp, fp, #0x10
	mul sl, fp, sl
	add r8, r8, sl, lsr #16
	add r7, r7, r6
	ldrb sb, [r5, r7, asr #16]
	ldrb sl, [lr, r7, asr #16]
	sub sl, sl, sb
	lsl fp, r7, #0x10
	lsr fp, fp, #0x10
	mul sl, fp, sl
	add sb, sb, sl, lsr #16
	add r7, r7, r6
	add sb, r8, sb, lsl #16
	mul r8, sb, r3
	bic r4, r8, #0x70000
	ldm r1, {r8, sb}
	add r8, r8, ip, lsr #3
	add sb, sb, r4, lsr #3
	stm r1!, {r8, sb}
	add r1, r1, #8
	subs r2, r2, #1
	bne _09FC26D8
	add r5, r5, r7, asr #16
	str r5, [r0, #8]
	strh r7, [r0, #0x1c]
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr

	arm_func_start mixRightHQ
mixRightHQ: @ 0x09FC27A0
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r5, [r0, #8]
	ldr r6, [r0, #0x14]
	ldrh r7, [r0, #0x1c]
	ldrb r3, [r0, #0x1f]
	lsr r2, r2, #2
	add r1, r1, #8
	add lr, r5, #1
	b _09FC26D8

	arm_func_start mixCenterHQ
mixCenterHQ: @ 0x09FC27C4
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r5, [r0, #8]
	ldr r6, [r0, #0x14]
	ldrh r7, [r0, #0x1c]
	ldrb r3, [r0, #0x1e]
	lsr r2, r2, #2
	add lr, r5, #1
_09FC27E0:
	ldrb r8, [r5, r7, asr #16]
	ldrb sl, [lr, r7, asr #16]
	sub sl, sl, r8
	lsl fp, r7, #0x10
	lsr fp, fp, #0x10
	mul sl, fp, sl
	add r8, r8, sl, lsr #16
	add r7, r7, r6
	ldrb sb, [r5, r7, asr #16]
	ldrb sl, [lr, r7, asr #16]
	sub sl, sl, sb
	lsl fp, r7, #0x10
	lsr fp, fp, #0x10
	mul sl, fp, sl
	add sb, sb, sl, lsr #16
	add r7, r7, r6
	add r8, r8, sb, lsl #16
	mul sb, r8, r3
	bic ip, sb, #0x70000
	ldrb r8, [r5, r7, asr #16]
	ldrb sl, [lr, r7, asr #16]
	sub sl, sl, r8
	lsl fp, r7, #0x10
	lsr fp, fp, #0x10
	mul sl, fp, sl
	add r8, r8, sl, lsr #16
	add r7, r7, r6
	ldrb sb, [r5, r7, asr #16]
	ldrb sl, [lr, r7, asr #16]
	sub sl, sl, sb
	lsl fp, r7, #0x10
	lsr fp, fp, #0x10
	mul sl, fp, sl
	add sb, sb, sl, lsr #16
	add r7, r7, r6
	add r8, r8, sb, lsl #16
	mul sb, r8, r3
	bic r4, sb, #0x70000
	ldm r1, {r8, sb, sl, fp}
	add r8, r8, ip, lsr #3
	add sb, sb, r4, lsr #3
	add sl, sl, ip, lsr #3
	add fp, fp, r4, lsr #3
	stm r1!, {r8, sb, sl, fp}
	subs r2, r2, #1
	bne _09FC27E0
	add r5, r5, r7, asr #16
	str r5, [r0, #8]
	strh r7, [r0, #0x1c]
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr

	arm_func_start mixStereoHQ
mixStereoHQ: @ 0x09FC28AC
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r5, [r0, #8]
	ldr r6, [r0, #0x14]
	ldrh r7, [r0, #0x1c]
	ldrb r3, [r0, #0x1e]
	ldrb r4, [r0, #0x1f]
	lsr r2, r2, #2
	stmdb sp!, {r0}
_09FC28CC:
	add lr, r5, #1
	ldrb r8, [r5, r7, asr #16]
	ldrb sl, [lr, r7, asr #16]
	sub sl, sl, r8
	lsl fp, r7, #0x10
	lsr fp, fp, #0x10
	mul sl, fp, sl
	add r8, r8, sl, lsr #16
	add r7, r7, r6
	ldrb sb, [r5, r7, asr #16]
	ldrb sl, [lr, r7, asr #16]
	sub sl, sl, sb
	lsl fp, r7, #0x10
	lsr fp, fp, #0x10
	mul sl, fp, sl
	add sb, sb, sl, lsr #16
	add r7, r7, r6
	add ip, r8, sb, lsl #16
	ldrb r8, [r5, r7, asr #16]
	ldrb sl, [lr, r7, asr #16]
	sub sl, sl, r8
	lsl fp, r7, #0x10
	lsr fp, fp, #0x10
	mul sl, fp, sl
	add r8, r8, sl, lsr #16
	add r7, r7, r6
	ldrb sb, [r5, r7, asr #16]
	ldrb sl, [lr, r7, asr #16]
	sub sl, sl, sb
	lsl fp, r7, #0x10
	lsr fp, fp, #0x10
	mul sl, fp, sl
	add sb, sb, sl, lsr #16
	add r7, r7, r6
	add r0, r8, sb, lsl #16
	ldm r1, {r8, sb, sl, fp}
	mul lr, ip, r3
	bic lr, lr, #0x70000
	add r8, r8, lr, lsr #3
	mul lr, ip, r4
	bic lr, lr, #0x70000
	add sl, sl, lr, lsr #3
	mul lr, r0, r3
	bic lr, lr, #0x70000
	add sb, sb, lr, lsr #3
	mul lr, r0, r4
	bic lr, lr, #0x70000
	add fp, fp, lr, lsr #3
	stm r1!, {r8, sb, sl, fp}
	subs r2, r2, #1
	bne _09FC28CC
	ldm sp!, {r0}
	add r5, r5, r7, asr #16
	str r5, [r0, #8]
	strh r7, [r0, #0x1c]
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr

	arm_func_start mixBias
mixBias: @ 0x09FC29B0
	push {r4, r5, r6, r7}
	lsl r2, r2, #7
	lsr r2, r2, #3
	add r2, r2, r2, lsl #16
	lsl r3, r3, #7
	lsr r3, r3, #3
	add r3, r3, r3, lsl #16
	lsr r1, r1, #2
_09FC29D0:
	ldm r0, {r4, r5, r6, r7}
	add r4, r4, r2
	add r5, r5, r2
	add r6, r6, r3
	add r7, r7, r3
	stm r0!, {r4, r5, r6, r7}
	subs r1, r1, #1
	bne _09FC29D0
	pop {r4, r5, r6, r7}
	bx lr

	arm_func_start mixClear
mixClear: @ 0x09FC29F8
	push {r4, r5}
	mov r2, #0
	mov r3, #0
	mov r4, #0
	mov r5, #0
	str r2, [pc, #0x18]
	str r2, [pc, #0x18]
	lsr r1, r1, #2
_09FC2A18:
	stm r0!, {r2, r3, r4, r5}
	subs r1, r1, #1
	bne _09FC2A18
	pop {r4, r5}
	bx lr
	.align 2, 0
_09FC2A2C: .4byte 0x00000000
_09FC2A30: .4byte 0x00000000

	arm_func_start mix16To8
mix16To8: @ 0x09FC2A34
	push {r4, r5, r6, r7, r8, sb, sl, fp}
	ldr r8, _09FC2A2C @ =0x00000000
	lsl r8, r8, #7
	ldr sb, _09FC2A30 @ =0x00000000
	lsl sb, sb, #7
	lsr r8, r8, #3
	lsr sb, sb, #3
	lsr r3, r3, #2
	ldr ip, _09FC2B40 @ =0x02001234
_09FC2A58:
	ldm r0!, {r4, r5, r6, r7}
	lsr sl, r4, #0x10
	sub fp, r4, sl, lsl #16
	sub sl, sl, r8
	sub fp, fp, r8
	ldrb sl, [ip, sl, asr #5]
	ldrb fp, [ip, fp, asr #5]
	add r4, fp, sl, lsl #8
	lsr sl, r5, #0x10
	sub fp, r5, sl, lsl #16
	sub sl, sl, r8
	sub fp, fp, r8
	ldrb sl, [ip, sl, asr #5]
	ldrb fp, [ip, fp, asr #5]
	add fp, fp, sl, lsl #8
	add r4, r4, fp, lsl #16
	str r4, [r1], #4
	lsr sl, r6, #0x10
	sub fp, r6, sl, lsl #16
	sub sl, sl, sb
	sub fp, fp, sb
	ldrb sl, [ip, sl, asr #5]
	ldrb fp, [ip, fp, asr #5]
	add r6, fp, sl, lsl #8
	lsr sl, r7, #0x10
	sub fp, r7, sl, lsl #16
	sub sl, sl, sb
	sub fp, fp, sb
	ldrb sl, [ip, sl, asr #5]
	ldrb fp, [ip, fp, asr #5]
	add fp, fp, sl, lsl #8
	add r6, r6, fp, lsl #16
	str r6, [r2], #4
	subs r3, r3, #1
	bne _09FC2A58
	pop {r4, r5, r6, r7, r8, sb, sl, fp}
	bx lr

	arm_func_start mix16To8Patch
mix16To8Patch: @ 0x09FC2AEC
	sub r1, pc, #0x88
	ldr r1, [r1]
	sub r2, pc, #0x8c
	ldr r2, [r2]
	bic r1, r1, #0xf80
	bic r2, r2, #0xf80
	orr r1, r1, r0, lsl #7
	orr r2, r2, r0, lsl #7
	sub r0, pc, #0xa8
	str r1, [r0]
	str r2, [r0, #4]
	sub r0, pc, #0x98
	str r1, [r0]
	str r2, [r0, #4]
	sub r0, pc, #0x80
	str r1, [r0]
	str r2, [r0, #4]
	sub r0, pc, #0x70
	str r1, [r0]
	str r2, [r0, #4]
	bx lr
	.align 2, 0
_09FC2B40: .4byte gKrawall_VolClipTableMid

	arm_func_start mixReal
mixReal: @ 0x09FC2B44
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	mov sl, r2
	sub sp, sp, #0x20
	ldr r2, _09FC2F44 @ =0x03000B2C
	str r0, [fp, #-0x44]
	str r1, [fp, #-0x48]
	ldr r0, _09FC2F48 @ =0x03001174
	mov r1, sl
	mov lr, pc
	bx r2
	ldr r7, _09FC2F4C
	mov r9, #0x20
_09FC2B7C:
	ldrb r0, [r7, #0x2]
	cmp r0, #0x1
	beq _09FC2BB8
_09FC2B88:
	subs r9, r9, #0x1
	add r7, r7, #0x2C
	bne _09FC2B7C
	ldr r1, [fp, #-0x44]
	ldr r0, _09FC2F48
	ldr r2, [fp, #-0x48]
	mov r3, sl
	ldr ip, _09FC2F50
	mov lr, pc
	bx ip
	ldmdb fp, {r4-fp, sp, lr }
	bx lr
_09FC2BB8:
	ldrb lr, [r7, #0x0]
	cmp lr, #0x0
	mov r8, sl
	beq _09FC2E08
	ldr r5, _09FC2F54
	ldr r6, _09FC2F58
	ldr r2, [r5, #0x0]
	ldr r1, [r6, #0x0]
	ldrb ip, [r7, #0x1E]
	ldrb lr, [r7, #0x1F]
	ldrb r3, [r7, #0x21]
	ldrb r0, [r7, #0x20]
	ldr r4, _09FC2F5C
	add r2, r2, ip
	add r1, r1, lr
	add ip, r3, r0
	str r2, [r5, #0x0]
	str r1, [r6, #0x0]
	ldr r5, _09FC2F48
	ldr r6, [r4, ip, lsl #0x2]
_09FC2C08:
	ldr ip, [r7, #0x14]
	cmp ip, #0x0
	blt _09FC2D9C
	mov lr, ip, asr #0x10
	mla r4, lr, r8, r8
	ldr r3, [r7, #0x8]
	ldr r1, [r7, #0xC]
	add r0, r3, r4
	cmp r0, r1
	movcs r4, #0x0
	movcc r4, #0x1
	cmp r4, #0x0
	bne _09FC2D84
	ldrh r0, [r7, #0x1C]
	rsb r1, r3, r1
	sub r2, fp, #0x2C
	mov r3, r0, lsr #0x2
	sub r0, fp, #0x30
	rsb lr, r3, r1, lsl #0xE
	str r2, [fp, #-0x34]
	str r0, [fp, #-0x38]
	mov ip, ip, asr #0x2
	mov r0, lr
	movs r1, ip
	swine 0x00060000
	ldr r2, [fp, #-0x34]
	str r0, [r2, #0x0]
	ldr r2, [fp, #-0x38]
	str r1, [r2, #0x0]
_09FC2C7C:
	cmp r4, #0x0
	bne _09FC2D84
	ldr ip, [fp, #-0x30]
	cmp ip, #0x0
	ldrne r1, [fp, #-0x2C]
	addne lr, r1, #0x1
	strne lr, [fp, #-0x2C]
	ldr r2, [fp, #-0x2C]
	cmp r2, r8
	bgt _09FC2D84
	tst r2, #0x3
	bicne ip, r2, #0x3
	addne r0, ip, #0x4
	movne r2, r0
	strne r0, [fp, #-0x2C]
	cmp r2, r8
	bge _09FC2D40
	cmp r2, #0x0
	beq _09FC2CE4
	mov r1, r5
	mov r0, r7
	mov lr, pc
	bx r6
	ldr r2, [fp, #-0x2C]
	add r5, r5, r2, lsl #0x2
	rsb r8, r2, r8
_09FC2CE4:
	ldrb lr, [r7, #0x3]
	cmp lr, #0x0
	beq _09FC2D1C
	cmp lr, #0x2
	ldreq r1, [r7, #0x14]
	ldrne ip, [r7, #0x8]
	ldrne r3, [r7, #0x10]
	rsbeq lr, r1, #0x0
	rsbne r0, r3, ip
	streq lr, [r7, #0x14]
	strne r0, [r7, #0x8]
	cmp r8, #0x0
	beq _09FC2B88
	b   _09FC2C08
_09FC2D1C:
	ldrb r2, [r7, #0x1E]
	ldrb r3, [r7, #0x1F]
	mov r0, r5
	mov r1, r8
	ldr ip, _09FC2F60
	strb lr, [r7, #0x2]
	mov lr, pc
	bx ip
	b  _09FC2B88
_09FC2D40:
	mov r1, r5
	mov r0, r7
	mov lr, pc
	bx r6
	ldrb r3, [r7, #0x3]
	cmp r3, #0x0
	strbeq r3, [r7, #0x2]
	beq _09FC2B88
	cmp r3, #0x2
	ldreq lr, [r7, #0x14]
	ldrne r0, [r7, #0x8]
	ldrne ip, [r7, #0x10]
	rsbeq r2, lr, #0x0
	rsbne r1, ip, r0
	streq r2, [r7, #0x14]
	strne r1, [r7, #0x8]
	b     _09FC2B88
_09FC2D84:
	mov r1, r5
	mov r2, r8
	mov r0, r7
	mov lr, pc
	bx r6
	b _09FC2B88
_09FC2D9C:
	ldr r0, [r7, #0x8]
	mov r1, ip, asr #0x10
	mla lr, r1, r8, r0
	ldr r1, [r7, #0x28]
	cmp lr, r1
	movls r4, #0x0
	movhi r4, #0x1
	cmp r4, #0x0
	bne _09FC2D84
	ldrh r2, [r7, #0x1C]
	rsb r1, r1, r0
	mov lr, r2, lsr #0x2
	rsb r0, ip, #0x0
	sub r3, fp, #0x2C
	sub r2, fp, #0x30
	add lr, lr, r1, lsl #0xE
	str r3, [fp, #-0x3C]
	str r2, [fp, #-0x40]
	mov ip, r0, asr #0x2
	mov r0, lr
	movs r1, ip
	swine 0x00060000
	ldr r2, [fp, #-0x3C]
	str r0, [r2, #0x0]
	ldr r2, [fp, #-0x40]
	str r1, [r2, #0x0]
	b _09FC2C7C
_09FC2E08:
	ldr r0, [r7, #0x14]
	ldrb r2, [r7, #0x3]
	mov ip, r0, asr #0x10
	cmp r2, #0x0
	mla r1, ip, sl, sl
	beq _09FC2F24
	cmp r2, #0x2
	beq _09FC2E5C
	ldr lr, [r7, #0x8]
	ldr r2, [r7, #0xC]
	add r0, lr, r1
	cmp r0, r2
	str r0, [r7, #0x8]
	bcc _09FC2B88
	ldr r1, [r7, #0x10]
_09FC2E44:
	ldr r0, [r7, #0x8]
	rsb ip, r1, r0
	cmp ip, r2
	str ip, [r7, #0x8]
	bcs _09FC2E44
	b _09FC2B88
_09FC2E5C:
	cmp r0, #0x0
	blt _09FC2EC0
	add r2, r7, #0x8
	ldmia r2, {r2, ip}
	add r3, r2, r1
	cmp r3, ip
	str r3, [r7, #0x8]
	mov r0, lr
	bcc _09FC2E9C
	ldr r1, [r7, #0x10]
	mov r2, ip
_09FC2E88:
	rsb r3, r1, r3
	cmp r3, r2
	add r0, r0, #0x1
	bcs _09FC2E88
	str r3, [r7, #0x8]
_09FC2E9C:
	tst r0, #0x1
	beq _09FC2B88
	ldr lr, [r7, #0x8]
	ldr r3, [r7, #0x28]
	ldr r0, [r7, #0x14]
	rsb r2, r3, lr
	rsb lr, r2, ip
	rsb r1, r0, #0x0
	b _09FC2F18
_09FC2EC0:
	ldr ip, [r7, #0x8]
	ldr r0, [r7, #0x28]
	add r3, ip, r1
	cmp r3, r0
	str r3, [r7, #0x8]
	mov ip, lr
	bcs _09FC2EF8
	ldr r1, [r7, #0x10]
	mov r2, r0
_09FC2EE4:
	add r3, r3, r1
	cmp r3, r2
	add ip, ip, #0x1
	bcc _09FC2EE4
	str r3, [r7, #0x8]
_09FC2EF8:
	tst ip, #0x1
	beq _09FC2B88
	add r2, r7, #0xC
	ldmda r2, {r1, r2}
	sub r1, r2, r1
	ldr ip, [r7, #0x14]
	add lr, r0, r1
	rsb r1, ip, #0x0
_09FC2F18:
	str lr, [r7, #0x8]
	str r1, [r7, #0x14]
	b _09FC2B88
_09FC2F24:
	add r2, r7, #0x8
	ldmia r2, {r2, lr}
	add r3, r2, r1
	cmp r3, lr
	movcs r1, #0x0
	strbcs r1, [r7, #0x2]
	strcc r3, [r7, #0x8]
	b _09FC2B88
_09FC2F44: .4byte gKrawall_MixClear
_09FC2F48: .4byte gKrawall_MixBuffer
_09FC2F4C: .4byte gKrawall_Channels
_09FC2F50: .4byte gKrawall_Mix16to8
_09FC2F54: .4byte gKrawall_VolSumLeft
_09FC2F58: .4byte gKrawall_VolSumRight
_09FC2F5C: .4byte mixPanTable
_09FC2F60: .4byte gKrawall_MixBias

	arm_func_start kramWorker
kramWorker: @ 0x09FC2F64
	mov ip, sp
	push {r4, r5, r6, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #8
	sub r0, fp, #0x1c
	sub r1, fp, #0x20
	ldr r2, _09FC3030 @ =0x080542AD
	mov lr, pc
	bx r2
	mov r4, r0
	cmp r4, #0x0
	beq _09FC2FCC
	ldr r5, _09FC3034
_09FC2F98:
	ldrh r0, [r5, #0x0]
	cmp r0, r4
	ldr r6, _09FC3038
	mov r2, r0
	bls _09FC2FD4
_09FC2FAC:
	ldr r0, [fp, #-0x1C]
	mov r2, r4
	ldr r1, [fp, #-0x20]
	bl mixReal
	ldrh r0, [r5, #0x0]
	rsb r2, r4, r0
	strh r2, [r5, #0x0]
_09FC2FC8:
	mov r0, #0x1
_09FC2FCC:
	ldmdb fp, {r4-r6, fp, sp, lr}
	bx lr
_09FC2FD4:
	ldr r1, [r6, #0x0]
	cmp r1, #0x0
	beq _09FC2FAC
	ldr r0, [fp, #-0x1C]
	ldr r1, [fp, #-0x20]
	bl mixReal
	ldrh lr, [r5, #0x0]
	sub r3, fp, #0x20
	ldmia r3, {r3, ip}
	add r1, ip, lr
	add r0, r3, lr
	str r1, [fp, #-0x1C]
	str r0, [fp, #-0x20]
	rsb r4, lr, r4
	ldr ip, [r6, #0x0]
	mov lr, pc
	bx ip
	ldr ip, _09FC303C
	ldrh r2, [ip, #0x0]
	strh r2, [r5, #0x0]
	cmp r4, #0x0
	bne _09FC2F98
	b   _09FC2FC8
_09FC3030: .4byte getDmaAddress + 1 @ + 1 for THUMB.
_09FC3034: .4byte gKrawall_SoundTimerCount
_09FC3038: .4byte gKrawall_SoundTimerFunc
_09FC303C: .4byte gKrawall_SoundTimerSpeed
