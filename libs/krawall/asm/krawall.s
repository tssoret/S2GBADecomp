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

.section .text
.syntax unified

	thumb_func_start dsInit
dsInit: @ 0x08054188
	push {lr}
	ldr r2, _080541D0 @ => gKrawall_DSStereo
	ldr r1, _080541D4 @ => 0x04000084
	ldr r3, _080541C4 @ => 0x00000080
	strb r0, [r2]
	strh r3, [r1]
	ldr r2, _080541C8 @ => 0x00009A0C
	ldr r1, _080541D8 @ => 0x04000082
	strh r2, [r1]
	lsls r2, r0, #0x18
	lsrs r0, r2, #0x18
	cmp r0, #0
	beq _08054244
_080541A2:
	ldr r3, _080541DC @ => gKrawall_LBuffer
	ldr r1, _080541E0 @ => 0x040000BC
	str r3, [r1]
	ldr r3, _080541E4 @ => gKrawall_RBuffer
	adds r1, #0xc
	ldr r2, _080541E8 @ => 0x040000A0
	str r3, [r1]
	subs r1, #8
	str r2, [r1]
	adds r2, #4
	adds r1, #0xc
	str r2, [r1]
	ldr r1, _080541CC @ => 0x0000B640
	adds r2, #0x22
	strh r1, [r2]
	b _080541EC
	.align 2, 0
_080541C4: .4byte 0x00000080
_080541C8: .4byte 0x00009A0C
_080541CC: .4byte 0x0000B640
_080541D0: .4byte gKrawall_DSStereo
_080541D4: .4byte 0x04000084
_080541D8: .4byte 0x04000082
_080541DC: .4byte gKrawall_LBuffer
_080541E0: .4byte 0x040000BC
_080541E4: .4byte gKrawall_RBuffer
_080541E8: .4byte 0x040000A0
_080541EC:
	cmp r0, #0
	beq _080541F6
	ldrh r1, [r2]
	ldr r0, _0805422C @ => 0x040000D2
	strh r1, [r0]
_080541F6:
	ldr r3, _08054220 @ => 0x0000FDF5
	ldr r1, _08054230 @ => 0x04000104
	ldr r0, _08054224 @ => 0x000000C4
	strh r3, [r1]
	adds r1, #2
	ldr r3, _08054228 @ => 0x0000FC00
	strh r0, [r1]
	subs r1, #6
	strh r3, [r1]
	ldr r1, _08054234 @ => gKrawall_CurMixBlock
	movs r0, #2
	str r0, [r1]
	movs r3, #0x8a
	ldr r1, _08054238 @ => gKrawall_NextSample
	lsls r0, r3, #2
	str r0, [r1]
	ldr r0, _0805423C @ => gKrawall_DMABlock
	movs r3, #0
	strb r3, [r0]
	b _08054240
	.align 2, 0
_08054220: .4byte 0x0000FDF5
_08054224: .4byte 0x000000C4
_08054228: .4byte 0x0000FC00
_0805422C: .4byte 0x040000D2
_08054230: .4byte 0x04000104
_08054234: .4byte gKrawall_CurMixBlock
_08054238: .4byte gKrawall_NextSample
_0805423C: .4byte gKrawall_DMABlock
_08054240:
	pop {r0}
	bx r0
_08054244:
	ldrh r3, [r1]
	ldr r2, _08054258 @ => 0x00000100
	orrs r3, r2
	strh r3, [r1]
	ldr r3, _0805425C @ => 0x00000FFF
	ldrh r2, [r1]
	ands r3, r2
	strh r3, [r1]
	b _080541A2
	.align 2, 0
_08054258: .4byte 0x00000100
_0805425C: .4byte 0x00000FFF

	thumb_func_start dsDeInit
dsDeInit: @ 0x08054260
	push {lr}
	ldr r0, _08054290 @ => 0x04000102
	movs r3, #0x81
	ldrh r2, [r0]
	rsbs r1, r3, #0
	ands r1, r2
	strh r1, [r0]
	ldr r1, _08054294 @ => gKrawall_Active
	movs r3, #0
	str r3, [r1]
	ldr r0, _08054298 @ => 0x040000C4
	ldr r2, _0805429C @ => 0x00048440
	ldr r1, _080542A0 @ => gKrawall_DSStereo
	str r2, [r0]
	ldrb r0, [r1]
	cmp r0, #0
	beq _08054286
	ldr r0, _080542A4 @ => 0x040000D0
	str r2, [r0]
_08054286:
	ldr r2, _080542A8 @ => gKrawall_KradInterruptUndoCodeMod
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_08054290: .4byte 0x04000102
_08054294: .4byte gKrawall_Active
_08054298: .4byte 0x040000C4
_0805429C: .4byte 0x00048440
_080542A0: .4byte gKrawall_DSStereo
_080542A4: .4byte 0x040000D0
_080542A8: .4byte gKrawall_KradInterruptUndoCodeMod

	thumb_func_start getDmaAddress
getDmaAddress: @ 0x080542AC
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	ldr r1, _080542FC @ => gKrawall_Active
	adds r5, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	beq _080542F8
	ldr r0, _08054300 @ => gKrawall_DMABlock
	ldrb r3, [r0]
	ldr r0, _08054304 @ => gKrawall_CurMixBlock
	ldr r4, [r0]
	mov ip, r3
	lsrs r2, r4, #1
	cmp ip, r2
	beq _080542F8
	ldr r1, _08054308 @ => gKrawall_NextSample
	ldr r3, _0805430C @ => gKrawall_LBuffer
	ldr r2, [r1]
	adds r3, r2, r3
	str r3, [r5]
	ldr r3, _08054310 @ => gKrawall_RBuffer
	adds r5, r2, r3
	movs r3, #0x8a
	str r5, [r6]
	lsls r5, r3, #1
	adds r3, r2, r5
	adds r2, r4, #1
	str r3, [r1]
	str r2, [r0]
	cmp r2, #3
	bls _080542F0
	movs r2, #0
	str r2, [r0]
	str r2, [r1]
_080542F0:
	adds r0, r5, #0
_080542F2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_080542F8:
	movs r0, #0
	b _080542F2
	.align 2, 0
_080542FC: .4byte gKrawall_Active
_08054300: .4byte gKrawall_DMABlock
_08054304: .4byte gKrawall_CurMixBlock
_08054308: .4byte gKrawall_NextSample
_0805430C: .4byte gKrawall_LBuffer
_08054310: .4byte gKrawall_RBuffer

	thumb_func_start kradActivate
kradActivate: @ 0x08054314
	ldr r0, _08054334 @ => 0x04000200
	ldr r3, _0805432C @ => 0x00000010
	ldrh r1, [r0]
	orrs r1, r3
	strh r1, [r0]
	ldr r3, _08054330 @ => 0x00000080
	ldr r0, _08054338 @ => 0x04000102
	strh r3, [r0]
	ldr r0, _0805433C @ => gKrawall_Active
	movs r1, #1
	str r1, [r0]
	b _08054340
	.align 2, 0
_0805432C: .4byte 0x00000010
_08054330: .4byte 0x00000080
_08054334: .4byte 0x04000200
_08054338: .4byte 0x04000102
_0805433C: .4byte gKrawall_Active
_08054340:
	bx lr
	.align 2, 0

	thumb_func_start kradDeactivate
kradDeactivate: @ 0x08054344
	ldr r0, _08054358 @ => 0x04000102
	movs r3, #0x81
	ldrh r2, [r0]
	rsbs r1, r3, #0
	ands r1, r2
	strh r1, [r0]
	ldr r0, _0805435C @ => gKrawall_Active
	movs r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
_08054358: .4byte 0x04000102
_0805435C: .4byte gKrawall_Active

	thumb_func_start kramResetChannels
kramResetChannels: @ 0x08054360
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _080543E4 @ => gKrawall_Channels
	ldr r1, _080543E8 @ => gKrawall_VolMaster
	adds r4, r0, #0
	ldr r7, _080543EC @ => gKrawall_DSStereo
	movs r5, #0x20
	mov ip, r1
	adds r4, #0x21
_08054372:
	ldrb r1, [r0, #2]
	cmp r1, #0
	beq _08054382
	ldrb r2, [r4, #3]
	adds r1, r0, #0
	adds r1, #0x24
	cmp r2, r6
	beq _08054392
_08054382:
	subs r5, #1
	adds r4, #0x2c
	adds r0, #0x2c
	cmp r5, #0
	bne _08054372
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08054392:
	ldrb r2, [r7]
	cmp r2, #0
	beq _080543DC
	ldrb r3, [r0, #1]
	lsls r2, r3, #0x18
	asrs r3, r2, #0x18
	cmp r3, #0
	beq _080543D8
	cmp r3, #0
	ble _080543D2
	asrs r3, r2, #0x1e
	adds r3, #2
_080543AA:
	strb r3, [r4]
_080543AC:
	ldrb r3, [r1]
	mov r1, ip
	ldrb r2, [r0]
	ldrb r3, [r1, r3]
	adds r1, r3, #0
	muls r1, r2, r1
	movs r2, #1
	ldrsb r2, [r0, r2]
	movs r3, #0x40
	subs r3, r3, r2
	muls r3, r1, r3
	adds r2, #0x40
	lsrs r3, r3, #0xd
	strb r3, [r0, #0x1e]
	adds r3, r2, #0
	muls r3, r1, r3
	lsrs r1, r3, #0xd
	strb r1, [r0, #0x1f]
	b _08054382
_080543D2:
	rsbs r2, r3, #0
	lsrs r3, r2, #6
	b _080543AA
_080543D8:
	movs r3, #4
	b _080543AA
_080543DC:
	movs r3, #1
	strb r3, [r4]
	strb r2, [r0, #1]
	b _080543AC
	.align 2, 0
_080543E4: .4byte gKrawall_Channels
_080543E8: .4byte gKrawall_VolMaster
_080543EC: .4byte gKrawall_DSStereo

	thumb_func_start kramGetActiveChannels
kramGetActiveChannels: @ 0x080543F0
	push {lr}
	ldr r2, _08054410 @ => gKrawall_Channels
	movs r0, #0
	movs r1, #0x20
_080543F8:
	ldrb r3, [r2, #2]
	cmp r3, #1
	beq _0805440A
_080543FE:
	subs r1, #1
	adds r2, #0x2c
	cmp r1, #0
	bne _080543F8
	pop {r1}
	bx r1
_0805440A:
	adds r0, #1
	b _080543FE
	.align 2, 0
_08054410: .4byte gKrawall_Channels

	thumb_func_start kramQualityMode
kramQualityMode: @ 0x08054414
	push {r4, r5, lr}
	movs r1, #0x20
	ands r1, r0
	cmp r1, #0
	beq _08054468
	ldr r1, _08054470 @ => gKrawall_HQRamp
	movs r3, #0
	strb r3, [r1]
_08054424:
	movs r2, #0xf
	ands r0, r2
	ldr r2, _08054474 @ => gKrawall_HQMode
	cmp r0, #2
	bgt _08054464
_0805442E:
	strb r0, [r2]
	ldr r0, _08054478 @ => gKrawall_Channels
	ldr r5, _08054474 @ => gKrawall_HQMode
	adds r1, r0, #0
	movs r4, #0x20
	adds r1, #0x20
_0805443A:
	ldrb r2, [r0, #2]
	cmp r2, #0
	beq _08054450
	ldrb r2, [r5]
	adds r3, r2, #0
	cmp r3, #2
	beq _08054460
	ldrb r3, [r1, #2]
	ands r3, r2
	lsls r3, r3, #3
_0805444E:
	strb r3, [r1]
_08054450:
	subs r4, #1
	adds r1, #0x2c
	adds r0, #0x2c
	cmp r4, #0
	bne _0805443A
	pop {r4, r5}
	pop {r0}
	bx r0
_08054460:
	movs r3, #8
	b _0805444E
_08054464:
	movs r0, #0
	b _0805442E
_08054468:
	ldr r4, _08054470 @ => gKrawall_HQRamp
	movs r5, #1
	strb r5, [r4]
	b _08054424
	.align 2, 0
_08054470: .4byte gKrawall_HQRamp
_08054474: .4byte gKrawall_HQMode
_08054478: .4byte gKrawall_Channels

	thumb_func_start kramSetSFXVol
kramSetSFXVol: @ 0x0805447C
	push {lr}
	cmp r0, #0xff
	bls _08054484
	movs r0, #0xff
_08054484:
	ldr r1, _08054494 @ => gKrawall_VolMaster
	strb r0, [r1, #1]
	movs r0, #1
	bl kramResetChannels
	pop {r0}
	bx r0
	.align 2, 0
_08054494: .4byte gKrawall_VolMaster

	thumb_func_start kramGetSFXVol
kramGetSFXVol: @ 0x08054498
	ldr r1, _080544A0 @ => gKrawall_VolMaster
	ldrb r0, [r1, #1]
	bx lr
	.align 2, 0
_080544A0: .4byte gKrawall_VolMaster

	thumb_func_start kramSetMasterVol
kramSetMasterVol: @ 0x080544A4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	lsrs r0, r4, #0x10
	cmp r0, #0
	beq _08054502
	ldr r1, _0805450C @ => gKrawall_Mix16to8patch
	bl _call_via_r1
_080544B4:
	movs r0, #0xff
	ldr r5, _08054510 @ => gKrawall_VolClipTableMid
	ldr r6, _08054514 @ => 0x000003FF
	ands r4, r0
	movs r1, #0
	movs r0, #0
_080544C0:
	asrs r3, r0, #7
	adds r2, r3, #0
	cmp r3, #0x7f
	ble _080544CA
	movs r2, #0x7f
_080544CA:
	strb r2, [r5, r1]
	rsbs r2, r1, #0
	cmp r3, #0x80
	bgt _080544FA
	rsbs r3, r3, #0
_080544D4:
	adds r1, #1
	strb r3, [r5, r2]
	adds r0, r0, r4
	cmp r1, r6
	ble _080544C0
	asrs r3, r0, #7
	rsbs r1, r1, #0
	cmp r3, #0x80
	bgt _080544F2
	rsbs r2, r3, #0
_080544E8:
	ldr r0, _08054510 @ => gKrawall_VolClipTableMid
	strb r2, [r0, r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080544F2:
	movs r2, #0x80
	rsbs r0, r2, #0
	adds r2, r0, #0
	b _080544E8
_080544FA:
	movs r3, #0x80
	rsbs r7, r3, #0
	adds r3, r7, #0
	b _080544D4
_08054502:
	movs r0, #5
	ldr r1, _0805450C @ => gKrawall_Mix16to8patch
	bl _call_via_r1
	b _080544B4
	.align 2, 0
_0805450C: .4byte gKrawall_Mix16to8patch
_08054510: .4byte gKrawall_VolClipTableMid
_08054514: .4byte 0x000003FF

	thumb_func_start kramStopSFXChannels
kramStopSFXChannels: @ 0x08054518
	push {lr}
	ldr r2, _08054540 @ => gKrawall_Channels
	movs r1, #0x20
	movs r0, #0
_08054520:
	adds r3, r2, #0
	adds r3, #0x24
	ldrb r3, [r3]
	cmp r3, #0
	beq _08054530
	ldrb r3, [r2, #2]
	cmp r3, #1
	beq _0805453C
_08054530:
	subs r1, #1
	adds r2, #0x2c
	cmp r1, #0
	bne _08054520
	pop {r0}
	bx r0
_0805453C:
	strb r0, [r2, #2]
	b _08054530
	.align 2, 0
_08054540: .4byte gKrawall_Channels

	thumb_func_start kramHandleValid
kramHandleValid: @ 0x08054544
	push {r4, lr}
	lsls r2, r0, #0x18
	lsrs r3, r2, #0x18
	movs r2, #0x2c
	muls r2, r3, r2
	ldr r1, _08054570 @ => gKrawall_Channels
	adds r3, r2, #0
	adds r3, #0x18
	ldr r3, [r1, r3]
	movs r4, #0
	cmp r3, r0
	beq _08054564
_0805455C:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
_08054564:
	adds r3, r2, r1
	ldrb r0, [r3, #2]
	cmp r0, #0
	beq _0805455C
	movs r4, #1
	b _0805455C
	.align 2, 0
_08054570: .4byte gKrawall_Channels

	thumb_func_start kramGetFreq
kramGetFreq: @ 0x08054574
	lsls r2, r0, #0x18
	lsrs r1, r2, #0x18
	movs r3, #0x2c
	muls r3, r1, r3
	ldr r0, _08054588 @ => gKrawall_Channels
	adds r3, #0x14
	ldr r1, [r0, r3]
	asrs r0, r1, #2
	bx lr
	.align 2, 0
_08054588: .4byte gKrawall_Channels

	thumb_func_start kramGetVol
kramGetVol: @ 0x0805458C
	lsls r1, r0, #0x18
	lsrs r3, r1, #0x18
	movs r2, #0x2c
	adds r1, r3, #0
	muls r1, r2, r1
	ldr r2, _0805459C @ => gKrawall_Channels
	ldrb r0, [r2, r1]
	bx lr
	.align 2, 0
_0805459C: .4byte gKrawall_Channels

	thumb_func_start kramGetPan
kramGetPan: @ 0x080545A0
	lsls r2, r0, #0x18
	lsrs r1, r2, #0x18
	movs r3, #0x2c
	muls r3, r1, r3
	ldr r0, _080545B4 @ => gKrawall_Channels
	adds r1, r3, r0
	movs r0, #1
	ldrsb r0, [r1, r0]
	bx lr
	.align 2, 0
_080545B4: .4byte gKrawall_Channels

	thumb_func_start kramGetPos
kramGetPos: @ 0x080545B8
	lsls r3, r0, #0x18
	lsrs r2, r3, #0x18
	movs r3, #0x2c
	muls r3, r2, r3
	ldr r1, _080545D0 @ => gKrawall_Channels
	adds r2, r3, #0
	adds r2, #8
	adds r3, #4
	ldr r0, [r1, r2]
	ldr r2, [r1, r3]
	subs r0, r0, r2
	bx lr
	.align 2, 0
_080545D0: .4byte gKrawall_Channels

	thumb_func_start kramSetMusicVol
kramSetMusicVol: @ 0x080545D4
	push {lr}
	cmp r0, #0xff
	bls _080545DC
	movs r0, #0xff
_080545DC:
	ldr r1, _080545EC @ => gKrawall_VolMaster
	strb r0, [r1]
	movs r0, #0
	bl kramResetChannels
	pop {r0}
	bx r0
	.align 2, 0
_080545EC: .4byte gKrawall_VolMaster

	thumb_func_start kramSetSoundTimer
kramSetSoundTimer: @ 0x080545F0
	push {lr}
	ldr r1, _0805460C @ => gKrawall_SoundTimerFunc
	str r0, [r1]
	cmp r0, #0
	beq _08054606
	ldr r2, _08054610 @ => gKrawall_SoundTimerCountBackup
	ldr r0, _08054614 @ => gKrawall_SoundTimerCount
_080545FE:
	ldrh r1, [r2]
	strh r1, [r0]
	pop {r0}
	bx r0
_08054606:
	ldr r2, _08054614 @ => gKrawall_SoundTimerCount
	ldr r0, _08054610 @ => gKrawall_SoundTimerCountBackup
	b _080545FE
	.align 2, 0
_0805460C: .4byte gKrawall_SoundTimerFunc
_08054610: .4byte gKrawall_SoundTimerCountBackup
_08054614: .4byte gKrawall_SoundTimerCount

	thumb_func_start kramSetSoundTimerBPM
kramSetSoundTimerBPM: @ 0x08054618
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xc0
	lsls r3, r0, #1
	sub sp, #8
	cmp r5, r3
	bge _08054628
	adds r5, r3, #0
_08054628:
	movs r1, #0xf0
	add r2, sp, #4
	lsls r4, r1, #0xa
	str r2, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	beq _08054638
	svc #6
_08054638:
	ldr r2, [sp]
	str r0, [r2]
	ldr r3, [sp, #4]
	ldr r0, _08054654 @ => gKrawall_SoundTimerSpeed
	lsls r1, r3, #2
	strh r1, [r0]
	ldr r0, _08054658 @ => gKrawall_SoundTimerCount
	strh r1, [r0]
	ldr r0, _0805465C @ => gKrawall_SoundTimerCountBackup
	add sp, #8
	strh r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08054654: .4byte gKrawall_SoundTimerSpeed
_08054658: .4byte gKrawall_SoundTimerCount
_0805465C: .4byte gKrawall_SoundTimerCountBackup

	thumb_func_start kramPauseChannels
kramPauseChannels: @ 0x08054660
	push {r4, lr}
	ldr r2, _08054694 @ => gKrawall_Channels
	adds r4, r0, #0
	adds r0, r1, #0
	movs r1, #0x20
_0805466A:
	ldrb r3, [r2, #2]
	cmp r3, #1
	beq _0805467E
_08054670:
	subs r1, #1
	adds r2, #0x2c
	cmp r1, #0
	bne _0805466A
	pop {r4}
	pop {r0}
	bx r0
_0805467E:
	cmp r4, #0
	beq _08054686
_08054682:
	strb r0, [r2, #2]
	b _08054670
_08054686:
	adds r3, r2, #0
	adds r3, #0x24
	ldrb r3, [r3]
	cmp r3, #0
	bne _08054670
	b _08054682
	.align 2, 0
_08054694: .4byte gKrawall_Channels

	thumb_func_start kramUnpauseChannels
kramUnpauseChannels: @ 0x08054698
	push {r4, lr}
	ldr r2, _080546B8 @ => gKrawall_Channels
	movs r1, #0x20
	movs r4, #1
_080546A0:
	ldrb r3, [r2, #2]
	cmp r3, r0
	beq _080546B4
_080546A6:
	subs r1, #1
	adds r2, #0x2c
	cmp r1, #0
	bne _080546A0
	pop {r4}
	pop {r0}
	bx r0
_080546B4:
	strb r4, [r2, #2]
	b _080546A6
	.align 2, 0
_080546B8: .4byte gKrawall_Channels

	thumb_func_start kramStopChannels
kramStopChannels: @ 0x080546BC
	push {r4, lr}
	ldr r2, _080546DC @ => gKrawall_Channels
	movs r1, #0x20
	movs r4, #0
_080546C4:
	ldrb r3, [r2, #2]
	cmp r3, r0
	beq _080546D8
_080546CA:
	subs r1, #1
	adds r2, #0x2c
	cmp r1, #0
	bne _080546C4
	pop {r4}
	pop {r0}
	bx r0
_080546D8:
	strb r4, [r2, #2]
	b _080546CA
	.align 2, 0
_080546DC: .4byte gKrawall_Channels

	arm_func_start mixRampOut
mixRampOut: @ 0x080546E0
	mov ip, sp
	push {r4, r5, fp, ip, lr, pc}
	sub fp, ip, #4
	mov ip, r0
	ldrb r4, [ip, #0x24]
	mov r5, r2
	cmp r4, r5
	movhs r4, r5
	cmp r4, #0
	mov lr, r1
	beq _0805485C
_0805470C:
	ldrh r0, [ip, #0x28]
	lsl r3, r0, #0x10
	ldrb r0, [ip, #0x1e]
	asr r1, r3, #0x14
	mul r3, r1, r0
	ldrh r1, [lr]
	add r2, r1, r3, asr #3
	strh r2, [lr]
	ldrh r0, [ip, #0x28]
	lsl r3, r0, #0x10
	ldrb r0, [ip, #0x1f]
	asr r1, r3, #0x14
	mul r3, r1, r0
	ldrh r2, [lr, #8]
	add r1, r2, r3, asr #3
	strh r1, [lr, #8]
	ldrh r2, [ip, #0x28]
	ldrh r0, [ip, #0x2a]
	add r1, r2, r0
	ldrb r3, [ip, #0x1e]
	lsl r0, r1, #0x10
	asr r2, r0, #0x14
	mul r0, r2, r3
	strh r1, [ip, #0x28]
	ldrh r1, [lr, #2]!
	add r2, r1, r0, asr #3
	strh r2, [lr]
	ldrh r0, [ip, #0x28]
	lsl r3, r0, #0x10
	ldrb r0, [ip, #0x1f]
	asr r1, r3, #0x14
	mul r3, r1, r0
	ldrh r2, [lr, #8]
	add r1, r2, r3, asr #3
	strh r1, [lr, #8]
	ldrh r2, [ip, #0x28]
	ldrh r0, [ip, #0x2a]
	add r1, r2, r0
	ldrb r3, [ip, #0x1e]
	lsl r0, r1, #0x10
	asr r2, r0, #0x14
	mul r0, r2, r3
	strh r1, [ip, #0x28]
	ldrh r1, [lr, #2]!
	add r2, r1, r0, asr #3
	strh r2, [lr]
	ldrh r0, [ip, #0x28]
	lsl r3, r0, #0x10
	ldrb r0, [ip, #0x1f]
	asr r1, r3, #0x14
	mul r3, r1, r0
	ldrh r2, [lr, #8]
	add r1, r2, r3, asr #3
	strh r1, [lr, #8]
	ldrh r2, [ip, #0x28]
	ldrh r0, [ip, #0x2a]
	add r1, r2, r0
	lsl r0, r1, #0x10
	ldrb r3, [ip, #0x1e]
	asr r2, r0, #0x14
	mul r0, r2, r3
	strh r1, [ip, #0x28]
	ldrh r1, [lr, #2]!
	add r2, r1, r0, asr #3
	strh r2, [lr]
	ldrh r0, [ip, #0x28]
	lsl r3, r0, #0x10
	ldrb r0, [ip, #0x1f]
	asr r1, r3, #0x14
	mul r3, r1, r0
	ldrh r2, [lr, #8]
	add r1, r2, r3, asr #3
	strh r1, [lr, #8]
	ldrh r0, [ip, #0x28]
	ldrb r1, [ip, #0x24]
	ldrh r3, [ip, #0x2a]
	subs r4, r4, #4
	add r2, r0, r3
	sub r0, r1, #4
	strh r2, [ip, #0x28]
	strb r0, [ip, #0x24]
	sub r5, r5, #4
	add lr, lr, #0xa
	bne _0805470C
_0805485C:
	ldrb r3, [ip, #0x24]
	cmp r3, #0
	strbeq r3, [ip, #2]
	cmp r5, #0
	beq _0805488C
	ldrb r3, [ip, #0x1f]
	ldrb r2, [ip, #0x1e]
	mov r0, lr
	mov r1, r5
	ldr ip, _08054894 @ => gKrawall_MixBias
	mov lr, pc
	bx ip
_0805488C:
	ldmdb fp, {r4, r5, fp, sp, lr}
	bx lr
	.align 2, 0
_08054894: .4byte gKrawall_MixBias

	thumb_func_start pDataSet
pDataSet: @ 0x08054898
	push {r4, r5, lr}
	ldr r0, _08054918 @ => gKrawall_Player
	ldr r1, [r0, #8]
	ldrb r2, [r0, #0x12]
	adds r3, r1, #3
	ldrb r3, [r3, r2]
	movs r2, #0xb6
	lsls r3, r3, #2
	lsls r2, r2, #1
	adds r3, r3, r2
	ldr r1, [r1, r3]
	ldrh r5, [r0, #0xe]
	str r1, [r0, #0x30]
	cmp r5, #0
	beq _0805490E
	asrs r4, r5, #2
	movs r3, #0xf
	ands r4, r3
	lsls r2, r4, #1
	ldrh r4, [r1, r2]
	adds r2, r1, r4
	movs r4, #3
	adds r2, #0x22
	ands r4, r5
	str r2, [r0, #0x14]
	cmp r4, #0
	beq _08054904
_080548CE:
	ldr r2, [r0, #0x14]
	ldrb r1, [r2]
	adds r2, #1
	str r2, [r0, #0x14]
	cmp r1, #0
	beq _0805490A
	movs r3, #0x20
	ands r3, r1
	cmp r3, #0
	beq _080548E6
	adds r3, r2, #2
	str r3, [r0, #0x14]
_080548E6:
	movs r2, #0x40
	ands r2, r1
	cmp r2, #0
	beq _080548F4
	ldr r2, [r0, #0x14]
	adds r2, #1
	str r2, [r0, #0x14]
_080548F4:
	lsrs r2, r1, #7
	cmp r2, #0
	beq _08054900
	ldr r1, [r0, #0x14]
	adds r1, #2
	str r1, [r0, #0x14]
_08054900:
	cmp r4, #0
	bne _080548CE
_08054904:
	pop {r4, r5}
	pop {r0}
	bx r0
_0805490A:
	subs r4, #1
	b _08054900
_0805490E:
	adds r2, r1, #0
	adds r2, #0x22
	str r2, [r0, #0x14]
	b _08054904
	.align 2, 0
_08054918: .4byte gKrawall_Player

	thumb_func_start advanceRow
advanceRow: @ 0x0805491C
	push {r4, r5, r6, lr}
	ldr r1, _0805495C @ => gKrawall_Player
	movs r0, #0x13
	ldrsb r0, [r1, r0]
	ldrb r2, [r1, #0x13]
	cmp r0, #0
	blt _0805493A
	subs r0, r2, #1
	strb r0, [r1, #0x12]
	movs r0, #1
	ldr r2, _08054958 @ => 0x00002000
	rsbs r3, r0, #0
	adds r0, r3, #0
	strh r2, [r1, #0xe]
	strb r0, [r1, #0x13]
_0805493A:
	ldrh r3, [r1, #0xe]
	ldr r2, [r1, #0x30]
	adds r3, #1
	lsls r0, r3, #0x10
	strh r3, [r1, #0xe]
	lsrs r3, r0, #0x10
	ldrh r0, [r2, #0x20]
	cmp r3, r0
	bhs _08054960
	movs r2, #0x18
	ldrsh r0, [r1, r2]
	cmp r0, #0
	blt _08054A00
	b _08054960
	.align 2, 0
_08054958: .4byte 0x00002000
_0805495C: .4byte gKrawall_Player
_08054960:
	ldrb r6, [r1, #0x12]
	ldr r4, [r1, #8]
	adds r2, r6, #1
	lsls r3, r2, #0x18
	adds r0, r4, #3
	lsrs r3, r3, #0x18
	ldrb r3, [r0, r3]
	movs r5, #0
	strb r2, [r1, #0x12]
	movs r6, #0xff
	cmp r3, #0xfe
	beq _08054A38
_08054978:
	cmp r5, #0
	beq _0805498C
	ldr r1, _080549F8 @ => gKrawall_Callback
	ldr r3, [r1]
	cmp r3, #0
	beq _0805498C
	movs r0, #4
	movs r1, #0
	bl _call_via_r3
_0805498C:
	ldr r4, _080549FC @ => gKrawall_Player
	ldr r2, [r4, #8]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r2, #1]
	cmp r1, r0
	bhs _080549A6
	cmp r5, #0
	beq _080549C4
	ldr r0, [r4]
	movs r3, #2
	ands r0, r3
	cmp r0, #0
	beq _080549C4
_080549A6:
	ldr r2, [r4, #0x2c]
	strb r2, [r4, #0x12]
	ldr r2, [r4]
	movs r1, #1
	ands r1, r2
	cmp r1, #0
	beq _08054A0A
	ldr r2, _080549F8 @ => gKrawall_Callback
	ldr r3, [r2]
	cmp r3, #0
	beq _080549C4
	movs r0, #6
	movs r1, #0
	bl _call_via_r3
_080549C4:
	ldr r0, _080549F0 @ => 0x00000000
	strh r0, [r4, #0xe]
	bl pDataSet
	movs r3, #0x18
	ldrsh r2, [r4, r3]
	ldrh r1, [r4, #0x18]
	cmp r2, #0
	blt _08054A00
	ldr r3, [r4, #0x30]
	ldrh r0, [r3, #0x20]
	cmp r2, r0
	bge _08054A06
	adds r3, r1, #0
_080549E0:
	strh r3, [r4, #0xe]
	bl pDataSet
	ldr r3, _080549F4 @ => 0xFFFFFFFF
	ldr r1, _080549FC @ => gKrawall_Player
	strh r3, [r1, #0x18]
	b _08054A00
	.align 2, 0
_080549F0: .4byte 0x00000000
_080549F4: .4byte 0xFFFFFFFF
_080549F8: .4byte gKrawall_Callback
_080549FC: .4byte gKrawall_Player
_08054A00:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08054A06:
	ldr r3, _08054A30 @ => 0x00000000
	b _080549E0
_08054A0A:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08054A18
	bl jingleDone
	b _08054A00
_08054A18:
	bl krapStop
	ldr r1, _08054A34 @ => gKrawall_Callback
	ldr r3, [r1]
	cmp r3, #0
	beq _08054A00
	movs r0, #2
	movs r1, #0
	bl _call_via_r3
	b _08054A00
	.align 2, 0
_08054A30: .4byte 0x00000000
_08054A34: .4byte gKrawall_Callback
_08054A38:
	lsls r3, r2, #0x18
	ldrb r2, [r4, #1]
	lsrs r3, r3, #0x18
	cmp r3, r2
	blo _08054A44
	b _08054978
_08054A44:
	ldrb r3, [r1, #0x12]
	adds r2, r3, #1
	adds r3, r2, #0
	ands r3, r6
	ldrb r3, [r0, r3]
	movs r5, #1
	strb r2, [r1, #0x12]
	cmp r3, #0xfe
	beq _08054A58
	b _08054978
_08054A58:
	b _08054A38
	.align 2, 0

	thumb_func_start processRow
processRow: @ 0x08054A5C
	push {r4, r5, r6, r7, lr}
	mov r7, fp
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6, r7}
	ldr r2, _08054C88 @ => gKrawall_Player
	ldr r0, [r2, #0x14]
	ldrb r4, [r0]
	adds r0, #1
	sub sp, #0x10
	str r0, [r2, #0x14]
	cmp r4, #0
	bne _08054A7A
	b _08054D2A
_08054A7A:
	movs r0, #0
	mov r8, r2
	mov fp, r0
_08054A80:
	movs r0, #0x1f
	movs r1, #0x64
	ands r0, r4
	muls r0, r1, r0
	ldr r1, _08054C8C @ => 0x02001674
	adds r5, r0, r1
	movs r2, #0
	adds r0, r5, #0
	str r2, [sp, #0xc]
	movs r6, #0
	mov ip, r2
	mov sl, r2
	adds r0, #0x4e
	movs r2, #1
	str r6, [sp, #8]
	strb r2, [r0]
	movs r2, #0x20
	ands r2, r4
	movs r7, #0
	mov sb, r6
	cmp r2, #0
	beq _08054AD6
	adds r0, r1, #0
	subs r0, #0x20
	ldr r2, [r0]
	ldrb r7, [r2]
	adds r2, #1
	str r2, [r0]
	adds r1, r2, #1
	lsrs r3, r7, #7
	ldrb r6, [r2]
	str r1, [r0]
	cmp r3, #0
	beq _08054AD6
	ldrb r3, [r2, #1]
	lsls r2, r3, #8
	orrs r6, r2
	lsls r2, r6, #0x10
	asrs r6, r2, #0x10
	adds r2, r1, #1
	str r2, [r0]
	movs r2, #0x7f
	ands r7, r2
_08054AD6:
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _08054AEA
	mov r1, r8
	ldr r0, [r1, #0x14]
	ldrb r2, [r0]
	adds r0, #1
	str r0, [r1, #0x14]
	mov ip, r2
_08054AEA:
	lsrs r1, r4, #7
	cmp r1, #0
	beq _08054B06
	mov r1, r8
	ldr r4, [r1, #0x14]
	ldrb r2, [r4]
	adds r4, #1
	str r4, [r1, #0x14]
	ldrb r3, [r4]
	mov sl, r2
	adds r4, #1
	mov r2, r8
	str r3, [sp, #0xc]
	str r4, [r2, #0x14]
_08054B06:
	ldrb r1, [r5, #0xa]
	lsls r2, r6, #0x10
	mov r0, sl
	lsrs r3, r2, #0x10
	strb r1, [r5, #0x1c]
	strb r0, [r5, #0xa]
	cmp r3, #0
	beq _08054B56
	ldr r0, _08054C90 @ => 0x0000FFFF
	adds r6, r3, r0
	ldr r3, _08054C94 @ => 0xgKrawall_PlayerInstrBased
	ldrb r4, [r3]
	lsls r2, r6, #0x10
	asrs r6, r2, #0x10
	cmp r4, #0
	bne _08054B28
	b _08054EBC
_08054B28:
	cmp r7, #0
	beq _08054B56
	lsls r1, r6, #0x10
	ldr r0, _08054C98 @ => 0x09B4104C
	lsrs r2, r1, #0xe
	ldr r6, [r0, r2]
	lsls r4, r7, #1
	str r6, [r5, #0x18]
	subs r4, #2
	ldrh r1, [r6, r4]
	ldr r0, _08054C9C @ =samples
	lsls r6, r1, #2
	ldr r4, [r0, r6]
	str r4, [r5, #0x14]
	ldrb r2, [r4, #0xe]
	ldrb r1, [r4, #0xf]
	strb r2, [r5, #8]
	strb r2, [r5, #4]
	movs r2, #1
	mov sb, r2
	strb r1, [r5, #9]
	strb r1, [r5, #6]
	str r2, [sp, #8]
_08054B56:
	mov r3, ip
	cmp r3, #0
	beq _08054B84
	cmp r3, #0x60
	bls _08054B62
	b _08054E9E
_08054B62:
	subs r3, #0x10
	movs r0, #0x80
	lsls r6, r3, #0x18
	lsls r4, r0, #0x17
	strb r3, [r5, #4]
	cmp r6, r4
	ble _08054B74
	movs r2, #0x40
	strb r2, [r5, #4]
_08054B74:
	ldrb r4, [r5, #4]
	adds r1, r5, #0
	mov r3, fp
	adds r1, #0x61
	strb r4, [r5, #8]
	strb r3, [r1]
	movs r3, #1
	mov sb, r3
_08054B84:
	adds r4, r5, #0
	adds r4, #0x4d
	mov r3, fp
	strb r3, [r4]
	cmp r7, #0
	beq _08054BF0
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _08054BF0
	adds r2, r7, #0
	adds r2, #0xff
	lsls r0, r2, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x7e
	bne _08054BA4
	b _08054E50
_08054BA4:
	ldrb r6, [r1, #0xd]
	adds r2, r6, r7
	lsls r0, r2, #0x18
	mov r2, sl
	lsrs r7, r0, #0x18
	cmp r2, #0x13
	bne _08054BB4
	b _08054E42
_08054BB4:
	cmp r2, #0x18
	bne _08054BBA
	b _08054E42
_08054BBA:
	ldr r3, _08054C94 @ => 0xgKrawall_PlayerInstrBased
	ldrb r0, [r3]
	cmp r0, #0
	beq _08054BCA
	ldr r1, [sp, #8]
	cmp r1, #0
	bne _08054BCA
	b _08054E32
_08054BCA:
	mov r2, r8
	ldr r6, [r2, #0x24]
	ldr r1, [r5, #0x14]
	strh r7, [r5, #0x22]
	strh r7, [r5, #0xc]
	adds r0, r7, #0
	bl _call_via_r6
	strh r0, [r5, #0x20]
	strh r0, [r5, #0x10]
	strh r0, [r5, #0xe]
	adds r0, r5, #0
	mov r1, fp
	adds r0, #0x3d
	mov r6, fp
	movs r2, #1
	strb r1, [r5, #7]
	strb r6, [r0]
	strb r2, [r4]
_08054BF0:
	mov r3, sp
	ldrb r2, [r3, #0xc]
	mov r1, sl
	strb r2, [r5, #0x1d]
	cmp r1, #0
	beq _08054C14
	movs r1, #0xc
	mov r3, sl
	muls r3, r1, r3
	ldr r6, _08054CA0 @ => 0x09FB4C34
	adds r0, r3, #0
	ldr r2, [r6, r0]
	cmp r2, #0
	beq _08054C14
	adds r0, r5, #0
	movs r1, #1
	bl _call_via_r2
_08054C14:
	ldrb r2, [r4]
	cmp r2, #0
	bne _08054C1C
	b _08054E04
_08054C1C:
	ldr r0, _08054C94 @ => 0xgKrawall_PlayerInstrBased
	ldrb r4, [r0]
	cmp r4, #0
	beq _08054CD2
	ldr r6, [r5, #0x18]
	adds r7, r6, #0
	adds r7, #0xf3
	adds r4, r5, #0
	adds r1, r5, #0
	movs r0, #0
	adds r1, #0x62
	ldrb r2, [r7]
	adds r4, #0x4f
	movs r7, #1
	strb r0, [r4]
	strb r0, [r1]
	adds r1, r7, #0
	ands r1, r2
	cmp r1, #0
	bne _08054C46
	b _08054DF6
_08054C46:
	adds r1, r5, #0
	adds r1, #0x50
	movs r2, #3
	strb r2, [r1]
	adds r1, r5, #0
	adds r1, #0x55
	movs r3, #0xff
	strb r3, [r1]
	subs r1, #1
	strb r3, [r1]
	adds r1, #2
	strb r0, [r1]
	ldr r2, _08054C84 @ => 0x00007FFF
	adds r1, r5, #0
	adds r1, #0x58
	strh r2, [r1]
	adds r2, r5, #0
	adds r2, #0x57
	strb r0, [r2]
	strb r7, [r4]
_08054C6E:
	ldr r3, _08054CA4 @ => 0x00000127
	adds r2, r6, r3
	ldrb r0, [r2]
	movs r1, #1
	adds r2, r1, #0
	ands r2, r0
	cmp r2, #0
	bne _08054C80
	b _08054DEA
_08054C80:
	b _08054CA8
	.align 2, 0
_08054C84: .4byte 0x00007FFF
_08054C88: .4byte gKrawall_Player
_08054C8C: .4byte gKrawall_PlayerChannel
_08054C90: .4byte 0x0000FFFF
_08054C94: .4byte gKrawall_PlayerInstrBased
_08054C98: .4byte instruments
_08054C9C: .4byte samples
_08054CA0: .4byte playerEffects
_08054CA4: .4byte 0x00000127
_08054CA8:
	adds r0, r5, #0
	adds r0, #0x5a
	movs r2, #3
	strb r2, [r0]
	adds r0, r5, #0
	movs r3, #0xff
	adds r0, #0x5f
	strb r3, [r0]
	subs r0, #1
	strb r3, [r0]
	adds r0, #2
	mov r3, fp
	strb r3, [r0]
	strb r1, [r4]
_08054CC4:
	ldr r3, _08054ED4 @ => 0x0000012D
	adds r0, r6, r3
	ldrb r6, [r0]
	cmp r6, #0
	beq _08054CD2
	movs r2, #1
	strb r2, [r4]
_08054CD2:
	adds r1, r5, #0
	adds r1, #0x4c
	mov r0, fp
	strb r0, [r1]
	mov r1, r8
	ldr r2, [r1, #0x28]
	movs r3, #0xe
	ldrsh r0, [r5, r3]
	bl _call_via_r2
	movs r6, #4
	ldrsb r6, [r5, r6]
	movs r1, #5
	ldrsb r1, [r5, r1]
	muls r1, r6, r1
	asrs r6, r1, #6
	adds r3, r0, #0
	ldr r2, [r5]
	ldr r0, [r5, #0x14]
	str r6, [sp]
	movs r4, #6
	ldrsb r4, [r5, r4]
	movs r1, #0
	str r4, [sp, #4]
	ldr r6, _08054ED8 @ => gKrawall_KramPlayExt
	bl _call_via_r6
	ldrb r3, [r5, #7]
	str r0, [r5]
	cmp r3, #0
	beq _08054D1A
	adds r6, r3, #0
	lsls r1, r6, #8
	ldr r4, _08054EDC @ => gKrawall_KramSetPos
	bl _call_via_r4
_08054D1A:
	mov r1, r8
	ldr r0, [r1, #0x14]
	ldrb r4, [r0]
	adds r0, #1
	str r0, [r1, #0x14]
	cmp r4, #0
	beq _08054D2A
	b _08054A80
_08054D2A:
	ldr r4, _08054EE0 @ => 0x02001674
	adds r6, r4, #0
	subs r6, #0x34
	ldr r2, [r6, #8]
	ldrb r6, [r2]
	cmp r6, #0
	beq _08054DC8
	movs r5, #0x40
	rsbs r7, r5, #0
	adds r5, r4, #0
	adds r5, #0x4c
_08054D40:
	ldrb r2, [r5, #2]
	cmp r2, #0
	beq _08054DDE
	movs r0, #0
	strb r0, [r5, #2]
_08054D4A:
	ldrb r2, [r5]
	cmp r2, #0
	beq _08054DBE
	ldrb r3, [r4, #0xa]
	ldrb r1, [r4, #0x1c]
	cmp r3, r1
	beq _08054DBE
	ldrh r1, [r4, #0xe]
	ldr r2, _08054EE4 @ => gKrawall_Player
	lsls r3, r1, #0x10
	asrs r0, r3, #0x10
	strh r1, [r4, #0x10]
	ldr r1, [r2, #0x28]
	bl _call_via_r1
	ldr r2, _08054EE8 @ => gKrawall_KramSetFreq
	adds r1, r0, #0
	ldr r0, [r4]
	bl _call_via_r2
	ldrb r1, [r4, #4]
	strb r1, [r4, #8]
	lsls r3, r1, #0x18
	movs r1, #5
	ldrsb r1, [r4, r1]
	asrs r2, r3, #0x18
	muls r2, r1, r2
	movs r3, #5
	ldrsb r3, [r5, r3]
	adds r1, r3, #0
	muls r1, r2, r1
	ldr r0, [r4]
	asrs r1, r1, #0xc
	ldr r2, _08054EEC @ => gKrawall_KramSetVol
	bl _call_via_r2
	ldrb r1, [r4, #6]
	strb r1, [r4, #9]
	ldrb r2, [r5, #0xf]
	adds r0, r1, r2
	lsls r1, r0, #0x18
	asrs r0, r1, #0x18
	cmp r0, r7
	bge _08054DA6
	movs r0, #0xc0
	lsls r1, r0, #0x18
_08054DA6:
	movs r3, #0x80
	lsls r2, r3, #0x17
	cmp r1, r2
	ble _08054DB0
	adds r1, r2, #0
_08054DB0:
	ldr r2, _08054EF0 @ => gKrawall_KramSetPan
	ldr r0, [r4]
	asrs r1, r1, #0x18
	bl _call_via_r2
	movs r2, #0
	strb r2, [r5]
_08054DBE:
	subs r6, #1
	adds r5, #0x64
	adds r4, #0x64
	cmp r6, #0
	bne _08054D40
_08054DC8:
	bl advanceRow
	add sp, #0x10
	pop {r3, r4, r5, r6}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	mov fp, r6
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08054DDE:
	ldrb r1, [r4, #0xa]
	strb r2, [r4, #0x1d]
	strb r1, [r4, #0x1c]
	strb r2, [r4, #0xa]
	strb r2, [r5, #0x15]
	b _08054D4A
_08054DEA:
	adds r1, r5, #0
	adds r1, #0x5b
	strb r2, [r1]
	subs r1, #1
	strb r2, [r1]
	b _08054CC4
_08054DF6:
	adds r0, r5, #0
	adds r0, #0x51
	movs r3, #0x40
	strb r3, [r0]
	subs r0, #1
	strb r1, [r0]
	b _08054C6E
_08054E04:
	mov r2, sb
	cmp r2, #0
	bne _08054E0C
	b _08054D1A
_08054E0C:
	ldrb r1, [r5, #4]
	movs r6, #5
	ldrsb r6, [r5, r6]
	lsls r3, r1, #0x18
	strb r1, [r5, #8]
	asrs r1, r3, #0x18
	muls r1, r6, r1
	adds r4, r5, #0
	adds r4, #0x51
	movs r6, #0
	ldrsb r6, [r4, r6]
	adds r4, r6, #0
	muls r4, r1, r4
	ldr r0, [r5]
	asrs r1, r4, #0xc
	ldr r2, _08054EEC @ => gKrawall_KramSetVol
	bl _call_via_r2
	b _08054D1A
_08054E32:
	ldr r3, [r5, #0x18]
	lsls r6, r7, #1
	ldrh r1, [r3, r6]
	ldr r0, _08054EF4 @ =samples
	lsls r6, r1, #2
	ldr r2, [r0, r6]
	str r2, [r5, #0x14]
	b _08054BCA
_08054E42:
	mov r2, r8
	ldr r6, [r2, #0x24]
	adds r0, r7, #0
	bl _call_via_r6
	strh r0, [r5, #0x20]
	b _08054BF0
_08054E50:
	adds r1, r5, #0
	adds r1, #0x50
	ldrb r2, [r1]
	cmp r2, #0
	beq _08054E8E
	adds r0, r5, #0
	adds r0, #0x57
	movs r3, #1
	strb r3, [r0]
	ldrb r6, [r1]
	cmp r6, #2
	beq _08054E88
	movs r6, #4
	strb r6, [r1]
_08054E6C:
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r3, [r2]
	cmp r3, #0
	bne _08054E78
	b _08054BF0
_08054E78:
	cmp r3, #2
	beq _08054E82
	movs r0, #4
	strb r0, [r2]
	b _08054BF0
_08054E82:
	movs r1, #3
	strb r1, [r2]
	b _08054BF0
_08054E88:
	movs r2, #3
	strb r2, [r1]
	b _08054E6C
_08054E8E:
	adds r6, r5, #0
	adds r6, #0x4f
	strb r2, [r6]
	ldr r2, _08054EF8 @ => gkrawall_KramStop
	ldr r0, [r5]
	bl _call_via_r2
	b _08054BF0
_08054E9E:
	mov r3, ip
	subs r3, #0x60
	lsls r4, r3, #0x18
	ldr r1, _08054EFC @ => 0x09FB4E98
	adds r6, r5, #0
	lsrs r2, r4, #0x1c
	adds r6, #0x61
	lsls r0, r2, #3
	strb r3, [r6]
	ldr r6, [r1, r0]
	adds r0, r5, #0
	movs r1, #1
	bl _call_via_r6
	b _08054B84
_08054EBC:
	lsls r1, r6, #0x10
	ldr r2, _08054EF4 @ =samples
	lsrs r0, r1, #0xe
	ldr r6, [r2, r0]
	str r6, [r5, #0x14]
	ldrb r4, [r6, #0xe]
	movs r2, #1
	strb r4, [r5, #8]
	strb r4, [r5, #4]
	mov sb, r2
	b _08054B56
	.align 2, 0
_08054ED4: .4byte 0x0000012D
_08054ED8: .4byte gKrawall_KramPlayExt
_08054EDC: .4byte gKrawall_KramSetPos
_08054EE0: .4byte gKrawall_PlayerChannel
_08054EE4: .4byte gKrawall_Player
_08054EE8: .4byte gKrawall_KramSetFreq
_08054EEC: .4byte gKrawall_KramSetVol
_08054EF0: .4byte gKrawall_KramSetPan
_08054EF4: .4byte samples
_08054EF8: .4byte gkrawall_KramStop
_08054EFC: .4byte effectsVC

	thumb_func_start processInbetweenRow
processInbetweenRow: @ 0x08054F00
	push {r4, r5, r6, r7, lr}
	ldr r4, _08054F7C @ => 0x02001674
	adds r1, r4, #0
	subs r1, #0x34
	ldr r0, [r1, #8]
	ldrb r6, [r0]
	cmp r6, #0
	beq _08054F76
_08054F10:
	adds r2, r4, #0
	adds r2, #0x61
	ldrb r0, [r2]
	lsls r3, r0, #0x18
	cmp r3, #0
	beq _08054F34
	lsrs r0, r3, #0x1c
	lsls r2, r0, #3
	ldr r1, _08054F80 @ => 0x09FB4E98
	adds r3, r2, #4
	ldrb r0, [r1, r3]
	cmp r0, #0
	beq _08054F34
	ldr r3, [r1, r2]
	adds r0, r4, #0
	movs r1, #0
	bl _call_via_r3
_08054F34:
	ldrb r3, [r4, #0xa]
	cmp r3, #0
	beq _08054F6E
	adds r2, r3, #0
	movs r7, #0xc
	adds r1, r2, #0
	muls r1, r7, r1
	ldr r5, _08054F84 @ => 0x09FB4C34
	adds r3, r1, #0
	adds r3, #8
	ldrb r0, [r5, r3]
	cmp r0, #0
	beq _08054F5A
	ldr r2, [r5, r1]
	adds r0, r4, #0
	movs r1, #0
	bl _call_via_r2
	ldrb r2, [r4, #0xa]
_08054F5A:
	adds r1, r2, #0
	muls r1, r7, r1
	adds r1, #4
	ldr r3, [r5, r1]
	cmp r3, #0
	beq _08054F6E
	adds r0, r4, #0
	movs r1, #0
	bl _call_via_r3
_08054F6E:
	subs r6, #1
	adds r4, #0x64
	cmp r6, #0
	bne _08054F10
_08054F76:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08054F7C: .4byte gKrawall_PlayerChannel
_08054F80: .4byte effectsVC
_08054F84: .4byte playerEffects

	thumb_func_start processInstruments
processInstruments: @ 0x08054F88
	push {r4, r5, r6, r7, lr}
	mov r7, fp
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	str r1, [sp, #8]
	cmp r1, #0
	bne _08054FA0
	b _08055124
_08054FA0:
	adds r4, r5, #0
	adds r4, #0x52
_08054FA4:
	movs r1, #0x4f
	adds r0, r1, r5
	ldrb r1, [r0]
	mov sb, r0
	cmp r1, #0
	bne _08054FB2
	b _08055114
_08054FB2:
	adds r7, r5, #0
	adds r7, #0x50
	ldr r1, [r5, #0x18]
	ldrb r2, [r7]
	mov r8, r1
	cmp r2, #0
	beq _0805505C
	ldrb r1, [r4, #5]
	movs r2, #0
	mov sl, r2
	cmp r1, #0
	beq _08054FE4
	movs r2, #0x94
	lsls r1, r2, #1
	movs r3, #1
	add r1, r8
	ldrh r2, [r4, #6]
	mov sl, r3
	ldrh r3, [r1]
	subs r1, r2, r3
	lsls r3, r1, #0x10
	strh r1, [r4, #6]
	cmp r3, #0
	bgt _08054FE4
	b _0805525A
_08054FE4:
	ldrb r0, [r7]
	cmp r0, #2
	bls _08055024
	movs r1, #1
	mov sl, r1
	ldrb r1, [r4, #2]
	mov r0, r8
	lsls r2, r1, #2
	adds r0, #0xc0
	str r4, [sp, #4]
	adds r3, r0, r2
	ldrh r3, [r3, #2]
	ldrh r2, [r4]
	adds r2, r2, r3
	movs r3, #0x55
	strh r2, [r4]
	adds r2, r3, r5
	ldrb r3, [r4, #3]
	mov lr, r2
	movs r2, #0x56
	adds r3, #1
	adds r2, r2, r5
	mov fp, r2
	lsls r2, r3, #0x18
	strb r3, [r4, #3]
	lsrs r3, r2, #0x18
	ldrb r2, [r4, #4]
	adds r6, r5, #0
	adds r6, #0x54
	cmp r3, r2
	bne _08055024
	b _080551C2
_08055024:
	mov r3, sl
	cmp r3, #0
	beq _0805505C
	movs r0, #6
	ldrsh r2, [r4, r0]
	ldrh r1, [r4]
	muls r1, r2, r1
	adds r0, r5, #0
	asrs r2, r1, #0x17
	adds r0, #0x51
	strb r2, [r0]
	movs r1, #8
	ldrsb r1, [r5, r1]
	movs r3, #5
	ldrsb r3, [r5, r3]
	muls r3, r1, r3
	lsls r1, r2, #0x18
	asrs r2, r1, #0x18
	adds r1, r2, #0
	muls r1, r3, r1
	ldr r0, [r5]
	asrs r1, r1, #0xc
	ldr r2, _08055268 @ => gKrawall_KramSetVol
	bl _call_via_r2
	cmp r0, #0
	bne _0805505C
	b _080551BC
_0805505C:
	movs r6, #0x5a
	ldrb r3, [r4, #8]
	adds r2, r6, r5
	mov fp, r2
	mov ip, r3
	cmp r3, #2
	bls _080550D2
	movs r6, #0x5c
	adds r1, r6, r5
	mov sl, r1
	ldrb r1, [r4, #0xc]
	mov r0, r8
	lsls r2, r1, #2
	adds r0, #0xf4
	adds r3, r0, r2
	ldrh r3, [r3, #2]
	ldrh r2, [r4, #0xa]
	adds r2, r2, r3
	movs r3, #0x5f
	strh r2, [r4, #0xa]
	adds r2, r3, r5
	ldrb r3, [r4, #0xd]
	mov lr, r2
	adds r3, #1
	adds r2, #1
	str r2, [sp]
	lsls r2, r3, #0x18
	strb r3, [r4, #0xd]
	lsrs r3, r2, #0x18
	ldrb r2, [r4, #0xe]
	adds r6, r5, #0
	adds r6, #0x5e
	cmp r3, r2
	beq _0805513C
_080550A0:
	mov r0, sl
	ldrh r2, [r0]
	lsrs r0, r2, #8
	subs r0, #0x20
	lsls r1, r0, #1
	strb r1, [r4, #9]
	lsls r1, r0, #0x19
	movs r2, #9
	ldrsb r2, [r5, r2]
	asrs r0, r1, #0x18
	adds r1, r2, r0
	movs r0, #0x40
	rsbs r3, r0, #0
	cmp r1, r3
	bge _080550C0
	adds r1, r3, #0
_080550C0:
	cmp r1, #0x40
	ble _080550C6
	movs r1, #0x40
_080550C6:
	ldr r0, [r5]
	ldr r2, _0805526C @ => gKrawall_KramSetPan
	bl _call_via_r2
	cmp r0, #0
	beq _08055136
_080550D2:
	ldr r6, _08055270 @ => 0x0000012D
	add r6, r8
	ldrb r0, [r6]
	cmp r0, #0
	beq _08055114
	movs r1, #0x96
	ldrb r2, [r4, #0x10]
	lsls r0, r1, #1
	add r0, r8
	ldrb r1, [r0]
	lsrs r0, r2, #2
	ldr r2, [r5, #0x28]
	lsls r3, r0, #1
	ldrsh r3, [r3, r2]
	muls r3, r1, r3
	ldrh r2, [r5, #0x10]
	asrs r0, r3, #8
	adds r1, r2, r0
	ldr r2, _08055274 @ => gKrawall_Player
	lsls r3, r1, #0x10
	lsrs r0, r3, #0x10
	ldr r1, [r2, #0x28]
	bl _call_via_r1
	ldr r2, _08055278 @ => gKrawall_KramSetFreq
	adds r1, r0, #0
	ldr r0, [r5]
	bl _call_via_r2
	ldrb r0, [r4, #0x10]
	ldrb r3, [r6]
	adds r1, r0, r3
	strb r1, [r4, #0x10]
_08055114:
	ldr r3, [sp, #8]
	subs r3, #1
	str r3, [sp, #8]
	adds r4, #0x64
	adds r5, #0x64
	cmp r3, #0
	beq _08055124
	b _08054FA4
_08055124:
	add sp, #0xc
	pop {r3, r4, r5, r6}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	mov fp, r6
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08055136:
	mov r1, sb
	strb r0, [r1]
	b _0805525E
_0805513C:
	ldr r7, _0805527C @ => 0x00000127
	add r7, r8
	ldrb r2, [r7]
	movs r7, #2
	adds r3, r7, #0
	adds r1, #1
	ands r3, r2
	strb r1, [r4, #0xc]
	cmp r3, #0
	beq _0805515E
	ldr r3, _08055280 @ => 0x00000125
	add r3, r8
	lsls r2, r1, #0x18
	ldrb r1, [r3]
	lsrs r2, r2, #0x18
	cmp r2, r1
	beq _080551B2
_0805515E:
	adds r3, r0, #0
	adds r3, #0x30
	ldrb r2, [r6]
	ldrb r1, [r3]
	cmp r2, r1
	beq _08055186
_0805516A:
	ldrb r2, [r6]
	lsls r1, r2, #2
	ldrh r2, [r0, r1]
	lsrs r1, r2, #9
	lsls r2, r1, #8
	mov r1, sl
	strh r2, [r1]
	ldrb r2, [r6]
	lsls r1, r2, #2
	adds r1, #4
	ldrh r2, [r0, r1]
	ldr r0, [sp]
	strb r2, [r0]
	b _080550A0
_08055186:
	adds r1, r0, #0
	adds r1, #0x33
	ldrb r2, [r1]
	movs r1, #4
	ands r1, r2
	cmp r1, #0
	beq _080551AA
	adds r2, r0, #0
	adds r2, #0x32
	ldrb r1, [r2]
	strb r1, [r6]
	ldrb r2, [r6]
	lsls r1, r2, #2
	ldrb r2, [r0, r1]
	mov r1, lr
	adds r2, #1
	strb r2, [r1]
	b _0805516A
_080551AA:
	movs r1, #1
	mov r2, fp
	strb r1, [r2]
	b _0805516A
_080551B2:
	mov r3, ip
	cmp r3, #4
	beq _0805515E
	strb r7, [r4, #8]
	b _0805515E
_080551BC:
	mov r1, sb
	strb r0, [r1]
	b _0805525E
_080551C2:
	mov r3, r8
	adds r3, #0xf3
	ldrb r2, [r3]
	movs r3, #2
	adds r1, #1
	mov ip, r3
	ands r3, r2
	strb r1, [r4, #2]
	cmp r3, #0
	beq _080551E4
	mov r3, r8
	adds r3, #0xf1
	lsls r2, r1, #0x18
	ldrb r1, [r3]
	lsrs r2, r2, #0x18
	cmp r2, r1
	beq _0805524E
_080551E4:
	adds r3, r0, #0
	adds r3, #0x30
	ldrb r2, [r6]
	ldrb r1, [r3]
	cmp r2, r1
	beq _0805520E
_080551F0:
	ldrb r1, [r6]
	lsls r2, r1, #2
	ldrh r1, [r0, r2]
	lsrs r2, r1, #9
	lsls r1, r2, #8
	ldr r2, [sp, #4]
	strh r1, [r2]
	ldrb r1, [r6]
	lsls r2, r1, #2
	adds r2, #4
	ldrb r1, [r0, r2]
	mov r2, fp
	adds r1, #1
	strb r1, [r2]
	b _08055024
_0805520E:
	adds r1, r0, #0
	adds r1, #0x33
	ldrb r2, [r1]
	movs r1, #4
	ands r1, r2
	cmp r1, #0
	beq _08055230
	adds r1, r0, #0
	adds r1, #0x32
	ldrb r2, [r1]
	strb r2, [r6]
	ldrb r1, [r6]
	lsls r2, r1, #2
	ldrh r1, [r0, r2]
	mov r2, lr
	strb r1, [r2]
	b _080551F0
_08055230:
	movs r1, #1
	strb r1, [r7]
	ldrb r2, [r6]
	lsls r1, r2, #2
	ldrh r2, [r0, r1]
	lsrs r3, r2, #9
	cmp r3, #0
	bne _080551F0
	mov r0, sb
	strb r3, [r0]
	ldr r2, _08055284 @ => gkrawall_KramStop
	ldr r0, [r5]
	bl _call_via_r2
	b _08055114
_0805524E:
	ldrb r2, [r7]
	cmp r2, #4
	beq _080551E4
	mov r3, ip
	strb r3, [r7]
	b _080551E4
_0805525A:
	movs r2, #0
	strb r2, [r0]
_0805525E:
	ldr r1, _08055284 @ => gkrawall_KramStop
	ldr r0, [r5]
	bl _call_via_r1
	b _08055114
	.align 2, 0
_08055268: .4byte gKrawall_KramSetVol
_0805526C: .4byte gKrawall_KramSetPan
_08055270: .4byte 0x0000012D
_08055274: .4byte gKrawall_Player
_08055278: .4byte gKrawall_KramSetFreq
_0805527C: .4byte 0x00000127
_08055280: .4byte 0x00000125
_08055284: .4byte gkrawall_KramStop

	thumb_func_start timerRoutine
timerRoutine: @ 0x08055288
	push {r4, lr}
	ldr r1, _0805531C @ => gKrawall_Player
	ldrb r4, [r1, #0x11]
	adds r4, #1
	lsls r0, r4, #0x18
	lsrs r2, r0, #0x18
	ldrb r0, [r1, #0x10]
	strb r4, [r1, #0x11]
	cmp r2, r0
	blo _08055314
	movs r2, #0
	strb r2, [r1, #0x11]
	bl processRow
_080552A4:
	ldr r4, _0805531C @ => gKrawall_Player
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r1, [r0]
	cmp r1, #0
	beq _080552BC
	ldr r2, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x34
	ldrb r1, [r2]
	bl processInstruments
_080552BC:
	ldr r0, _08055320 @ => gKrawall_MusicVolumeFadeInc
	ldr r1, [r0]
	cmp r1, #0
	beq _080552F2
	ldr r2, _08055324 @ => gKrawall_MusicVolume
	ldr r3, [r2]
	adds r0, r3, r1
	ldr r3, [r4, #8]
	str r0, [r2]
	cmp r3, #0
	beq _0805530E
	ldr r2, _08055328 @ => 0x00000163
	adds r1, r3, r2
	ldrb r2, [r1]
	movs r1, #0x1d
	ldrsb r1, [r4, r1]
	muls r1, r2, r1
	muls r1, r0, r1
	asrs r0, r1, #0xd
_080552E2:
	bl kramSetMusicVol
	ldr r0, _08055324 @ => gKrawall_MusicVolume
	ldr r2, _0805532C @ => gKrawall_MusicVolumeTarget
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r1, r0
	beq _080552F8
_080552F2:
	pop {r4}
	pop {r0}
	bx r0
_080552F8:
	ldr r0, _08055320 @ => gKrawall_MusicVolumeFadeInc
	movs r2, #0
	str r2, [r0]
	ldr r2, _08055330 @ => gKrawall_Callback
	ldr r3, [r2]
	cmp r3, #0
	beq _080552F2
	movs r0, #1
	bl _call_via_r3
	b _080552F2
_0805530E:
	lsls r2, r0, #0xd
	asrs r0, r2, #0xd
	b _080552E2
_08055314:
	bl processInbetweenRow
	b _080552A4
	.align 2, 0
_0805531C: .4byte gKrawall_Player
_08055320: .4byte gKrawall_MusicVolumeFadeInc
_08055324: .4byte gKrawall_MusicVolume
_08055328: .4byte 0x00000163
_0805532C: .4byte gKrawall_MusicVolumeTarget
_08055330: .4byte gKrawall_Callback

	thumb_func_start krapPlay
krapPlay: @ 0x08055334
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	movs r0, #2
	adds r7, r1, #0
	mov sl, r2
	bl kramStopChannels
	movs r0, #3
	bl kramStopChannels
	movs r2, #4
	adds r0, r7, #0
	ands r0, r2
	cmp r0, #0
	bne _0805535C
	b _08055590
_0805535C:
	ldr r1, _08055474 @ => gKrawall_Player
	ldr r0, [r1, #4]
	mov sb, r1
	cmp r0, #0
	bne _08055368
	b _08055588
_08055368:
	ldr r4, [r1]
	ands r4, r2
	cmp r4, #0
	bne _08055372
	b _08055574
_08055372:
	movs r1, #0
	mov r2, sb
	str r1, [r2, #4]
	movs r0, #0
	bl kramSetSoundTimer
	mov r1, sb
	ldr r0, [r1, #8]
	ldrb r5, [r0]
	movs r4, #0
	cmp r4, r5
	bge _080553B6
	mov r6, sb
	adds r6, #0x34
	mov r5, sb
_08055390:
	movs r2, #0x64
	adds r0, r4, #0
	muls r0, r2, r0
	adds r2, r0, r6
	adds r0, r2, #0
	adds r0, #0x4f
	movs r1, #0
	strb r1, [r0]
	ldr r1, _08055478 @ => gkrawall_KramStop
	ldr r0, [r2]
	bl _call_via_r1
	ldr r0, [r5, #8]
	ldrb r2, [r0]
	adds r4, #1
	cmp r4, r2
	blt _08055390
	ldr r2, _08055474 @ => gKrawall_Player
	mov sb, r2
_080553B6:
	mov r1, sb
	mov r2, r8
	str r2, [r1, #8]
	movs r2, #0xb2
	str r7, [r1]
	lsls r4, r2, #1
	add r4, r8
	ldrb r5, [r4]
	movs r0, #0x40
	movs r2, #0
	strb r5, [r1, #0x10]
	strb r5, [r1, #0x11]
	strb r0, [r1, #0x1d]
	strb r2, [r1, #0x1e]
	ldr r5, _0805547C @ => gKrawall_MusicVolume
	ldr r1, _08055480 @ => gKrawall_MusicVolumeFadeInc
	ldr r0, [r5]
	movs r3, #0
	ldr r4, _08055484 @ => gKrawall_MusicVolumeTarget
	str r3, [r1]
	mov r3, r8
	str r0, [r4]
	str r0, [r5]
	cmp r3, #0
	bne _080553EA
	b _0805556E
_080553EA:
	ldr r4, _08055488 @ => 0x00000163
	add r4, r8
	ldrb r5, [r4]
	lsls r1, r5, #6
	muls r1, r0, r1
	asrs r0, r1, #0xd
_080553F6:
	bl kramSetMusicVol
	ldr r4, _08055474 @ => gKrawall_Player
	ldr r3, _0805548C @ => 0x00000165
	ldr r2, [r4, #8]
	adds r0, r2, r3
	ldrb r5, [r0]
	movs r1, #0x18
	strh r5, [r4, #0xc]
	adds r0, r5, #0
	muls r0, r1, r0
	bl kramSetSoundTimerBPM
	mov r2, sl
	cmp r2, #0x3f
	ble _0805541A
	movs r3, #0
	mov sl, r3
_0805541A:
	movs r5, #0x90
	ldr r1, [r4, #8]
	lsls r3, r5, #1
	adds r0, r1, #3
	add r3, sl
	ldrb r5, [r0, r3]
	str r5, [r4, #0x2c]
	strb r5, [r4, #0x12]
	ldr r5, [r4]
	movs r0, #2
	ands r5, r0
	cmp r5, #0
	bne _08055436
	b _08055568
_08055436:
	ldr r5, _0805546C @ => 0x00000000
	strh r5, [r4, #0xe]
	bl pDataSet
	ldr r2, [r4, #8]
	movs r0, #0xb3
	ldr r1, _08055470 @ => 0xFFFFFFFF
	lsls r3, r0, #1
	adds r0, r2, r3
	strh r1, [r4, #0x18]
	strb r1, [r4, #0x13]
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x20
	strb r5, [r4, #0x1c]
	strb r5, [r4, #0x1b]
	strb r5, [r4, #0x1a]
	strb r1, [r0]
	movs r0, #0xb4
	lsls r3, r0, #1
	adds r0, r2, r3
	ldrb r3, [r0]
	adds r0, r4, #0
	adds r0, #0x21
	strb r3, [r0]
	lsls r0, r1, #0x18
	b _08055490
	.align 2, 0
_0805546C: .4byte 0x00000000
_08055470: .4byte 0xFFFFFFFF
_08055474: .4byte gKrawall_Player
_08055478: .4byte gkrawall_KramStop
_0805547C: .4byte gKrawall_MusicVolume
_08055480: .4byte gKrawall_MusicVolumeFadeInc
_08055484: .4byte gKrawall_MusicVolumeTarget
_08055488: .4byte 0x00000163
_0805548C: .4byte 0x00000165
_08055490:
	cmp r0, #0
	beq _08055496
	movs r5, #0x20
_08055496:
	strb r5, [r4, #0x1f]
	ldr r2, _080555F0 @ => gKrawall_Player
	ldr r3, _080555F4 @ => 0x00000167
	ldr r5, [r2, #8]
	adds r0, r5, r3
	ldrb r4, [r0]
	cmp r4, #0
	beq _0805555E
	ldr r4, _080555F8 @ => calcPeriodLinear
	ldr r1, _080555FC @ => calcFinalFreqLinear
	str r4, [r2, #0x24]
	str r1, [r2, #0x28]
_080554AE:
	ldr r4, _08055600 @ => 0x02001674
	movs r3, #0xfa
	adds r0, r4, #0
	lsls r1, r3, #3
	subs r4, #0x34
	bl bzero
	ldr r1, [r4, #8]
	ldrb r2, [r1]
	movs r5, #0
	cmp r5, r2
	bge _08055544
	movs r6, #1
	movs r0, #0x40
	ldr r7, _08055604 @ => 0xtable_sine
	mov lr, r6
	mov ip, r0
	movs r6, #0
_080554D2:
	movs r2, #0x64
	adds r1, r5, #0
	muls r1, r2, r1
	ldrb r0, [r4, #0x1f]
	adds r2, r1, #0
	adds r2, #0x58
	strb r0, [r4, r2]
	adds r0, r2, r4
	adds r2, r1, #0
	mov r3, lr
	adds r2, #0x5c
	strb r3, [r0, #3]
	str r7, [r4, r2]
	adds r2, #4
	adds r0, r2, r4
	mov r2, lr
	strb r2, [r0, #3]
	adds r2, r1, #0
	adds r2, #0x64
	str r7, [r4, r2]
	adds r2, #4
	adds r0, r2, r4
	movs r2, #0
	strb r2, [r0, #3]
	adds r0, r1, #0
	adds r0, #0x6c
	str r7, [r4, r0]
	subs r0, #0x24
	str r6, [r4, r0]
	adds r0, #4
	str r6, [r4, r0]
	ldr r3, [r4, #8]
	movs r2, #0x80
	mov r8, r3
	lsls r3, r2, #1
	adds r2, r5, r3
	mov r3, r8
	adds r0, r1, #0
	adds r3, #3
	ldrb r3, [r3, r2]
	adds r0, #0x38
	adds r2, r1, #0
	adds r0, r0, r4
	adds r2, #0x84
	strb r3, [r0, #2]
	adds r1, #0x8c
	adds r3, r2, r4
	mov r2, ip
	strb r2, [r3, #1]
	adds r3, r1, r4
	strb r6, [r3, #3]
	strb r2, [r0, #1]
	ldr r1, [r4, #8]
	ldrb r2, [r1]
	adds r5, #1
	cmp r5, r2
	blt _080554D2
_08055544:
	ldr r1, _080555F0 @ => gKrawall_Player
	movs r3, #2
	str r3, [r1, #4]
	ldr r0, _08055608 @ => timerRoutine
	bl kramSetSoundTimer
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805555E:
	ldr r5, _0805560C @ => calcPeriodAmiga
	ldr r0, _08055610 @ => calcFinalFreqAmiga
	str r5, [r2, #0x24]
	str r0, [r2, #0x28]
	b _080554AE
_08055568:
	ldrb r2, [r1, #2]
	str r2, [r4, #0x2c]
	b _08055436
_0805556E:
	lsls r2, r0, #0xd
	asrs r0, r2, #0xd
	b _080553F6
_08055574:
	movs r0, #0
	movs r1, #4
	bl kramPauseChannels
	mov r1, sb
	ldr r2, _08055614 @ => 0x00000804
	ldr r0, _08055618 @ => gKrawall_PlayerBackup
	bl memcpy
	b _080553B6
_08055588:
	movs r2, #5
	rsbs r1, r2, #0
	ands r7, r1
	b _080553B6
_08055590:
	ldr r3, _080555F0 @ => gKrawall_Player
	ldr r4, [r3]
	movs r5, #4
	ands r4, r5
	mov sb, r3
	cmp r4, #0
	beq _080555A4
	movs r0, #4
	bl kramStopChannels
_080555A4:
	mov r1, sb
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _080555AE
	b _080553B6
_080555AE:
	movs r2, #0
	str r2, [r1, #4]
	movs r0, #0
	bl kramSetSoundTimer
	mov r2, sb
	ldr r4, [r2, #8]
	ldrb r1, [r4]
	movs r5, #0
	cmp r5, r1
	blt _080555C6
	b _080553B6
_080555C6:
	mov r6, sb
	adds r4, r6, #0
	adds r4, #0x34
_080555CC:
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x4f
	strb r1, [r0]
	ldr r2, _0805561C @ => gkrawall_KramStop
	ldr r0, [r4]
	bl _call_via_r2
	ldr r1, [r6, #8]
	ldrb r0, [r1]
	adds r5, #1
	adds r4, #0x64
	cmp r5, r0
	blt _080555CC
	ldr r3, _080555F0 @ => gKrawall_Player
	mov sb, r3
	b _080553B6
	.align 2, 0
_080555F0: .4byte gKrawall_Player
_080555F4: .4byte 0x00000167
_080555F8: .4byte calcPeriodLinear
_080555FC: .4byte calcFinalFreqLinear
_08055600: .4byte gKrawall_PlayerChannel
_08055604: .4byte table_sine
_08055608: .4byte timerRoutine
_0805560C: .4byte calcPeriodAmiga
_08055610: .4byte calcFinalFreqAmiga
_08055614: .4byte 0x00000804
_08055618: .4byte gKrawall_PlayerBackup
_0805561C: .4byte gkrawall_KramStop

	thumb_func_start jingleDone
jingleDone: @ 0x08055620
	push {r4, r5, r6, lr}
	ldr r4, _080556D4 @ => gKrawall_Player
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _08055660
	movs r2, #0
	movs r0, #0
	str r2, [r4, #4]
	bl kramSetSoundTimer
	ldr r1, [r4, #8]
	ldrb r0, [r1]
	movs r5, #0
	cmp r5, r0
	bge _08055660
	adds r6, r4, #0
	adds r4, #0x34
_08055642:
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x4f
	strb r1, [r0]
	ldr r2, _080556D8 @ => gkrawall_KramStop
	ldr r0, [r4]
	bl _call_via_r2
	ldr r1, [r6, #8]
	ldrb r0, [r1]
	adds r5, #1
	adds r4, #0x64
	cmp r5, r0
	blt _08055642
	ldr r4, _080556D4 @ => gKrawall_Player
_08055660:
	ldr r2, _080556DC @ => 0x00000804
	ldr r1, _080556E0 @ => gKrawall_PlayerBackup
	adds r0, r4, #0
	bl memcpy
	ldrh r3, [r4, #0xc]
	movs r1, #0x18
	adds r0, r3, #0
	muls r0, r1, r0
	strh r3, [r4, #0xc]
	bl kramSetSoundTimerBPM
	ldr r1, _080556E4 @ => gKrawall_MusicVolume
	ldr r3, _080556E8 @ => gKrawall_MusicVolumeFadeInc
	movs r2, #0
	ldr r0, [r1]
	str r2, [r3]
	ldr r2, _080556EC @ => gKrawall_MusicVolumeTarget
	ldr r3, [r4, #8]
	str r0, [r2]
	str r0, [r1]
	cmp r3, #0
	beq _080556CE
	ldr r2, _080556F0 @ => 0x00000163
	adds r1, r3, r2
	ldrb r2, [r1]
	movs r1, #0x1d
	ldrsb r1, [r4, r1]
	muls r1, r2, r1
	muls r1, r0, r1
	asrs r0, r1, #0xd
_0805569E:
	bl kramSetMusicVol
	ldr r1, _080556D4 @ => gKrawall_Player
	ldr r0, [r1, #4]
	cmp r0, #2
	beq _080556C0
_080556AA:
	ldr r2, _080556F4 @ => gKrawall_Callback
	ldr r3, [r2]
	cmp r3, #0
	beq _080556BA
	movs r0, #5
	movs r1, #0
	bl _call_via_r3
_080556BA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080556C0:
	ldr r0, _080556F8 @ => timerRoutine
	bl kramSetSoundTimer
	movs r0, #4
	bl kramUnpauseChannels
	b _080556AA
_080556CE:
	lsls r2, r0, #0xd
	asrs r0, r2, #0xd
	b _0805569E
	.align 2, 0
_080556D4: .4byte gKrawall_Player
_080556D8: .4byte gkrawall_KramStop
_080556DC: .4byte 0x00000804
_080556E0: .4byte gKrawall_PlayerBackup
_080556E4: .4byte gKrawall_MusicVolume
_080556E8: .4byte gKrawall_MusicVolumeFadeInc
_080556EC: .4byte gKrawall_MusicVolumeTarget
_080556F0: .4byte 0x00000163
_080556F4: .4byte gKrawall_Callback
_080556F8: .4byte timerRoutine

	thumb_func_start krapInstPlay
krapInstPlay: @ 0x080556FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r8
	push {r6, r7}
	adds r6, r2, #0
	lsls r2, r6, #0x18
	mov r8, r0
	mov sl, r1
	lsrs r0, r2, #0x18
	movs r1, #0x64
	muls r0, r1, r0
	ldr r2, _08055748 @ => gKrawall_Effchns
	adds r5, r0, r2
	ldr r0, [r5, #0x38]
	sub sp, #8
	cmp r0, r6
	beq _0805575A
	ldr r7, _0805574C @ => gKrawall_KramActive
	adds r5, r2, #0
	movs r4, #0
_08055724:
	ldr r0, [r5]
	bl _call_via_r7
	cmp r0, #0
	beq _08055734
	cmp r4, #5
	bhi _08055734
	b _080558D0
_08055734:
	cmp r4, #5
	bls _08055750
	movs r0, #0
_0805573A:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sl, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08055748: .4byte gKrawall_Effchns
_0805574C: .4byte gKrawall_KramActive
_08055750:
	ldr r7, _08055804 @ => 0xFFFFFF00
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
	ands r6, r7
	orrs r6, r4
_0805575A:
	ldr r3, _08055808 @ => gKrawall_IidCounter
	ldr r4, [r3]
	adds r4, #1
	str r4, [r3]
	lsls r0, r4, #8
	movs r4, #0xff
	ands r6, r4
	orrs r6, r0
	mov r2, r8
	str r2, [r5, #0x18]
	str r6, [r5, #0x38]
	mov r2, sl
	lsls r1, r2, #1
	mov r2, r8
	ldrh r7, [r2, r1]
	ldr r0, _0805580C @ =samples
	lsls r2, r7, #2
	ldr r7, [r0, r2]
	str r7, [r5, #0x14]
	ldrb r1, [r7, #0xe]
	strb r1, [r5, #8]
	strb r1, [r5, #4]
	ldrb r1, [r7, #0xc]
	ldrb r0, [r7, #0xf]
	mov r3, sl
	lsls r7, r1, #0x18
	strb r0, [r5, #9]
	strb r0, [r5, #6]
	asrs r2, r7, #0x19
	lsls r0, r3, #6
	adds r7, r2, r0
	movs r0, #0xc0
	lsls r1, r0, #3
	adds r0, r7, r1
	lsls r7, r0, #0x10
	lsrs r1, r7, #0x10
	adds r0, r5, #0
	adds r2, r5, #0
	mov r3, r8
	strh r1, [r5, #0x10]
	strh r1, [r5, #0xe]
	adds r2, #0x62
	movs r1, #0
	adds r3, #0xf3
	adds r0, #0x4f
	strb r1, [r0]
	movs r7, #1
	strb r1, [r2]
	ldrb r2, [r3]
	adds r3, r7, #0
	ands r3, r2
	cmp r3, #0
	bne _080557C6
	b _080558C2
_080557C6:
	adds r2, r5, #0
	adds r2, #0x50
	movs r3, #3
	strb r3, [r2]
	adds r3, r5, #0
	adds r3, #0x55
	strb r4, [r3]
	subs r3, #1
	strb r4, [r3]
	ldr r4, _08055800 @ => 0x00007FFF
	adds r2, #8
	adds r3, #2
	strb r1, [r3]
	strh r4, [r2]
	adds r2, r5, #0
	adds r2, #0x57
	strb r1, [r2]
	movs r1, #1
	strb r7, [r0]
_080557EC:
	ldr r2, _08055810 @ => 0x00000127
	add r2, r8
	ldrb r3, [r2]
	movs r4, #1
	adds r2, r4, #0
	ands r2, r3
	cmp r2, #0
	beq _080558B6
	b _08055814
	.align 2, 0
_08055800: .4byte 0x00007FFF
_08055804: .4byte 0xFFFFFF00
_08055808: .4byte gKrawall_IidCounter
_0805580C: .4byte samples
_08055810: .4byte 0x00000127
_08055814:
	adds r2, r5, #0
	adds r2, #0x5a
	movs r3, #3
	strb r3, [r2]
	adds r3, r5, #0
	movs r2, #0xff
	adds r3, #0x5f
	strb r2, [r3]
	subs r3, #1
	strb r2, [r3]
	adds r2, r5, #0
	adds r2, #0x60
	movs r3, #0
	strb r3, [r2]
	strb r4, [r0]
_08055832:
	ldr r4, _080558D8 @ => 0x0000012D
	add r4, r8
	ldrb r2, [r4]
	cmp r2, #0
	beq _08055840
	movs r2, #1
	strb r2, [r0]
_08055840:
	cmp r1, #0
	beq _0805588E
	movs r3, #0xe
	ldrsh r0, [r5, r3]
	ldr r1, _080558DC @ => 0x0000AAAB
	lsrs r3, r0, #6
	adds r4, r3, #0
	muls r4, r1, r4
	lsrs r2, r4, #0x13
	lsls r3, r2, #1
	adds r4, r3, r2
	lsls r3, r4, #8
	subs r4, r0, r3
	ldr r1, _080558E0 @ => 0x09FB5258
	lsls r0, r4, #2
	movs r3, #0x17
	subs r4, r3, r2
	ldr r3, [r1, r0]
	lsrs r3, r4
	movs r4, #0
_08055868:
	ldr r0, [r5, #0x14]
	ldr r2, [r5]
	str r4, [sp]
	movs r4, #6
	ldrsb r4, [r5, r4]
	movs r1, #1
	str r4, [sp, #4]
	ldr r4, _080558E4 @ => gKrawall_KramPlayExt
	bl _call_via_r4
	str r0, [r5]
	ldr r3, [r5]
	cmp r3, #0
	beq _08055888
	adds r0, r6, #0
	b _0805573A
_08055888:
	movs r0, #0
	str r3, [r5, #0x38]
	b _0805573A
_0805588E:
	movs r2, #0xe
	ldrsh r0, [r5, r2]
	ldr r1, _080558DC @ => 0x0000AAAB
	lsrs r3, r0, #6
	adds r4, r3, #0
	muls r4, r1, r4
	lsrs r2, r4, #0x13
	lsls r3, r2, #1
	adds r4, r3, r2
	lsls r3, r4, #8
	subs r4, r0, r3
	ldr r1, _080558E0 @ => 0x09FB5258
	lsls r0, r4, #2
	movs r3, #0x17
	subs r4, r3, r2
	ldr r3, [r1, r0]
	lsrs r3, r4
	movs r4, #4
	ldrsb r4, [r5, r4]
	b _08055868
_080558B6:
	adds r4, r5, #0
	adds r4, #0x5b
	strb r2, [r4]
	subs r4, #1
	strb r2, [r4]
	b _08055832
_080558C2:
	adds r4, r5, #0
	adds r4, #0x51
	movs r3, #0x40
	strb r3, [r4]
	subs r4, #1
	strb r1, [r4]
	b _080557EC
_080558D0:
	adds r4, #1
	adds r5, #0x64
	b _08055724
	.align 2, 0
_080558D8: .4byte 0x0000012D
_080558DC: .4byte 0x0000AAAB
_080558E0: .4byte table_linear
_080558E4: .4byte gKrawall_KramPlayExt

@ Couldn't find a function that looks similar.
	thumb_func_start FUN_080558E8
FUN_080558E8: @ 0x080558E8
	push {r4, lr}
	lsls r2, r0, #0x18
	lsrs r4, r2, #0x18
	movs r2, #0x64
	muls r2, r4, r2
	ldr r1, _08055954 @ => gKrawall_Effchns
	adds r4, r2, r1
	ldr r1, [r4, #0x38]
	cmp r1, r0
	beq _08055904
	movs r0, #0
_080558FE:
	pop {r4}
	pop {r1}
	bx r1
_08055904:
	adds r1, r4, #0
	adds r1, #0x50
	ldrb r2, [r1]
	cmp r2, #0
	beq _08055942
	adds r0, r4, #0
	adds r0, #0x57
	movs r3, #1
	strb r3, [r0]
	ldrb r0, [r1]
	cmp r0, #2
	beq _0805593C
	movs r0, #4
	strb r0, [r1]
_08055920:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r3, [r0]
	cmp r3, #0
	beq _08055932
	cmp r3, #2
	beq _08055936
	movs r2, #4
	strb r2, [r0]
_08055932:
	movs r0, #1
	b _080558FE
_08055936:
	movs r1, #3
	strb r1, [r0]
	b _08055932
_0805593C:
	movs r2, #3
	strb r2, [r1]
	b _08055920
_08055942:
	adds r0, r4, #0
	adds r0, #0x4f
	strb r2, [r0]
	ldr r1, _08055958 @ => gkrawall_KramStop
	ldr r0, [r4]
	bl _call_via_r1
	b _08055932
	.align 2, 0
_08055954: .4byte gKrawall_Effchns
_08055958: .4byte gkrawall_KramStop

	thumb_func_start eff_volslide_s3m
eff_volslide_s3m: @ 0x0805595C
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r4, r0, #0
	cmp r6, #0
	bne _08055968
	b _08055AD6
_08055968:
	ldrb r2, [r4, #0x1d]
	adds r0, r2, #0
	cmp r0, #0
	bne _08055972
	b _08055AD0
_08055972:
	adds r3, r4, #0
	adds r3, #0x40
	strb r2, [r3]
_08055978:
	ldrb r0, [r3]
	adds r5, r4, #0
	adds r5, #0x43
	lsrs r2, r0, #4
	movs r1, #0xf
	movs r3, #0
	ands r1, r0
	strb r3, [r5]
	adds r0, r5, #0
	cmp r2, #0
	beq _08055994
	cmp r1, #0xf
	bne _08055994
	b _08055A92
_08055994:
	cmp r1, #0
	beq _0805599C
	cmp r2, #0xf
	beq _08055A56
_0805599C:
	ldrb r0, [r4, #0xa]
	cmp r0, #0x17
	beq _08055A40
_080559A2:
	cmp r6, #0
	beq _080559B0
	ldr r0, _08055ADC @ => gKrawall_Player
	adds r0, #0x21
	ldrb r2, [r0]
	cmp r2, #0
	beq _080559B6
_080559B0:
	ldrb r0, [r5]
	cmp r0, #0
	beq _080559BC
_080559B6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080559BC:
	adds r1, r4, #0
	adds r1, #0x40
	ldrb r3, [r1]
	movs r2, #0xf
	ands r2, r3
	lsrs r1, r3, #4
	cmp r2, #0
	beq _08055A02
	ldrb r3, [r4, #4]
	subs r1, r3, r2
	lsls r2, r1, #0x18
	strb r1, [r4, #4]
	cmp r2, #0
	blt _080559FE
_080559D8:
	ldrb r1, [r4, #4]
	lsls r2, r1, #0x18
	strb r1, [r4, #8]
	asrs r1, r2, #0x18
	movs r2, #5
	ldrsb r2, [r4, r2]
	muls r2, r1, r2
	adds r1, r4, #0
	adds r1, #0x51
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r1, r3, #0
	muls r1, r2, r1
	ldr r0, [r4]
	asrs r1, r1, #0xc
	ldr r2, _08055AE0 @ => gKrawall_KramSetVol
	bl _call_via_r2
	b _080559B6
_080559FE:
	strb r0, [r4, #4]
	b _080559D8
_08055A02:
	cmp r1, #0
	beq _080559B6
	ldrb r0, [r4, #4]
	adds r2, r0, r1
	strb r2, [r4, #4]
	lsls r1, r2, #0x18
	movs r2, #0x80
	lsls r0, r2, #0x17
	cmp r1, r0
	ble _08055A1A
	movs r1, #0x40
	strb r1, [r4, #4]
_08055A1A:
	ldrb r1, [r4, #4]
	lsls r2, r1, #0x18
	strb r1, [r4, #8]
	asrs r1, r2, #0x18
	movs r2, #5
	ldrsb r2, [r4, r2]
	muls r2, r1, r2
	adds r1, r4, #0
	adds r1, #0x51
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r1, r3, #0
	muls r1, r2, r1
	ldr r0, [r4]
	asrs r1, r1, #0xc
	ldr r2, _08055AE0 @ => gKrawall_KramSetVol
	bl _call_via_r2
	b _080559B6
_08055A40:
	adds r2, r4, #0
	adds r2, #0x4c
	ldrb r1, [r2]
	cmp r1, #0
	beq _080559A2
	ldrb r0, [r4, #0x1c]
	cmp r0, #0x14
	bne _080559A2
	movs r1, #0
	strb r1, [r2]
	b _080559A2
_08055A56:
	movs r2, #1
	strb r2, [r0]
	ldrb r0, [r4, #4]
	subs r2, r0, r1
	lsls r0, r2, #0x18
	strb r2, [r4, #4]
	cmp r0, #0
	blt _08055A8C
_08055A66:
	ldrb r1, [r4, #4]
	lsls r2, r1, #0x18
	strb r1, [r4, #8]
	asrs r1, r2, #0x18
	movs r2, #5
	ldrsb r2, [r4, r2]
	muls r2, r1, r2
	adds r1, r4, #0
	adds r1, #0x51
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r1, r3, #0
	muls r1, r2, r1
	ldr r0, [r4]
	asrs r1, r1, #0xc
	ldr r2, _08055AE0 @ => gKrawall_KramSetVol
	bl _call_via_r2
	b _0805599C
_08055A8C:
	movs r1, #0
	strb r1, [r4, #4]
	b _08055A66
_08055A92:
	movs r1, #1
	strb r1, [r5]
	ldrb r0, [r4, #4]
	adds r1, r0, r2
	movs r2, #0x80
	strb r1, [r4, #4]
	lsls r0, r1, #0x18
	lsls r1, r2, #0x17
	cmp r0, r1
	ble _08055AAA
	movs r2, #0x40
	strb r2, [r4, #4]
_08055AAA:
	ldrb r1, [r4, #4]
	lsls r2, r1, #0x18
	strb r1, [r4, #8]
	asrs r1, r2, #0x18
	movs r2, #5
	ldrsb r2, [r4, r2]
	muls r2, r1, r2
	adds r1, r4, #0
	adds r1, #0x51
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r1, r3, #0
	muls r1, r2, r1
	ldr r0, [r4]
	asrs r1, r1, #0xc
	ldr r2, _08055AE0 @ => gKrawall_KramSetVol
	bl _call_via_r2
	b _0805599C
_08055AD0:
	adds r3, r4, #0
	adds r3, #0x40
	b _08055978
_08055AD6:
	adds r5, r4, #0
	adds r5, #0x43
	b _080559B0
	.align 2, 0
_08055ADC: .4byte gKrawall_Player
_08055AE0: .4byte gKrawall_KramSetVol

	thumb_func_start eff_volslide_xm
eff_volslide_xm: @ 0x08055AE4
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #0
	beq _08055B1C
	ldrb r2, [r4, #0x1d]
	adds r0, r2, #0
	cmp r0, #0
	beq _08055AFA
	adds r0, r4, #0
	adds r0, #0x40
	strb r2, [r0]
_08055AFA:
	ldrb r1, [r4, #0xa]
	cmp r1, #0x31
	beq _08055B06
_08055B00:
	pop {r4}
	pop {r0}
	bx r0
_08055B06:
	adds r2, r4, #0
	adds r2, #0x4c
	ldrb r0, [r2]
	cmp r0, #0
	beq _08055B00
	ldrb r1, [r4, #0x1c]
	cmp r1, #0x14
	bne _08055B00
	movs r0, #0
	strb r0, [r2]
	b _08055B00
_08055B1C:
	adds r2, r4, #0
	adds r2, #0x40
	ldrb r3, [r2]
	movs r2, #0xf
	ands r2, r3
	lsrs r0, r3, #4
	cmp r2, #0
	beq _08055B62
	ldrb r0, [r4, #4]
	subs r3, r0, r2
	lsls r0, r3, #0x18
	strb r3, [r4, #4]
	cmp r0, #0
	blt _08055B5E
_08055B38:
	ldrb r1, [r4, #4]
	lsls r2, r1, #0x18
	strb r1, [r4, #8]
	asrs r1, r2, #0x18
	movs r2, #5
	ldrsb r2, [r4, r2]
	muls r2, r1, r2
	adds r1, r4, #0
	adds r1, #0x51
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r1, r3, #0
	muls r1, r2, r1
	ldr r0, [r4]
	asrs r1, r1, #0xc
	ldr r2, _08055BA0 @ => gKrawall_KramSetVol
	bl _call_via_r2
	b _08055B00
_08055B5E:
	strb r1, [r4, #4]
	b _08055B38
_08055B62:
	cmp r0, #0
	beq _08055B00
	ldrb r1, [r4, #4]
	adds r2, r1, r0
	strb r2, [r4, #4]
	lsls r1, r2, #0x18
	movs r2, #0x80
	lsls r0, r2, #0x17
	cmp r1, r0
	ble _08055B7A
	movs r0, #0x40
	strb r0, [r4, #4]
_08055B7A:
	ldrb r1, [r4, #4]
	lsls r2, r1, #0x18
	strb r1, [r4, #8]
	asrs r1, r2, #0x18
	movs r2, #5
	ldrsb r2, [r4, r2]
	muls r2, r1, r2
	adds r1, r4, #0
	adds r1, #0x51
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r1, r3, #0
	muls r1, r2, r1
	ldr r0, [r4]
	asrs r1, r1, #0xc
	ldr r2, _08055BA0 @ => gKrawall_KramSetVol
	bl _call_via_r2
	b _08055B00
	.align 2, 0
_08055BA0: .4byte gKrawall_KramSetVol

	thumb_func_start eff_gvolslide
eff_gvolslide: @ 0x08055BA4
	push {r4, lr}
	adds r4, r1, #0
	cmp r4, #0
	beq _08055BBE
	ldrb r0, [r0, #0x1d]
	adds r1, r0, #0
	cmp r1, #0
	beq _08055BB8
	ldr r1, _08055C48 @ => gKrawall_Player
	strb r0, [r1, #0x1e]
_08055BB8:
	pop {r4}
	pop {r0}
	bx r0
_08055BBE:
	ldr r0, _08055C48 @ => gKrawall_Player
	ldrb r3, [r0, #0x1e]
	movs r2, #0xf
	ands r2, r3
	lsrs r1, r3, #4
	cmp r2, #0
	beq _08055C06
	ldrb r3, [r0, #0x1d]
	subs r1, r3, r2
	lsls r2, r1, #0x18
	strb r1, [r0, #0x1d]
	cmp r2, #0
	blt _08055C02
_08055BD8:
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _08055BF8
	ldr r2, _08055C4C @ => 0x00000163
	adds r1, r3, r2
	ldrb r2, [r1]
	movs r1, #0x1d
	ldrsb r1, [r0, r1]
	muls r2, r1, r2
	ldr r0, _08055C50 @ => gKrawall_MusicVolume
	ldr r1, [r0]
	muls r1, r2, r1
	asrs r0, r1, #0xd
_08055BF2:
	bl kramSetMusicVol
	b _08055BB8
_08055BF8:
	ldr r1, _08055C50 @ => gKrawall_MusicVolume
	ldr r0, [r1]
	lsls r2, r0, #0xd
	asrs r0, r2, #0xd
	b _08055BF2
_08055C02:
	strb r4, [r0, #0x1d]
	b _08055BD8
_08055C06:
	cmp r1, #0
	beq _08055BB8
	ldrb r3, [r0, #0x1d]
	adds r2, r3, r1
	strb r2, [r0, #0x1d]
	lsls r3, r2, #0x18
	movs r2, #0x80
	lsls r1, r2, #0x17
	cmp r3, r1
	ble _08055C1E
	movs r1, #0x40
	strb r1, [r0, #0x1d]
_08055C1E:
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _08055C3E
	ldr r2, _08055C4C @ => 0x00000163
	adds r1, r3, r2
	ldrb r2, [r1]
	movs r1, #0x1d
	ldrsb r1, [r0, r1]
	muls r2, r1, r2
	ldr r0, _08055C50 @ => gKrawall_MusicVolume
	ldr r1, [r0]
	muls r1, r2, r1
	asrs r0, r1, #0xd
_08055C38:
	bl kramSetMusicVol
	b _08055BB8
_08055C3E:
	ldr r1, _08055C50 @ => gKrawall_MusicVolume
	ldr r0, [r1]
	lsls r2, r0, #0xd
	asrs r0, r2, #0xd
	b _08055C38
	.align 2, 0
_08055C48: .4byte gKrawall_Player
_08055C4C: .4byte 0x00000163
_08055C50: .4byte gKrawall_MusicVolume

	thumb_func_start eff_cvolslide
eff_cvolslide: @ 0x08055C54
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #0
	beq _08055C70
	ldrb r2, [r4, #0x1d]
	adds r0, r2, #0
	cmp r0, #0
	beq _08055C6A
	adds r0, r4, #0
	adds r0, #0x42
	strb r2, [r0]
_08055C6A:
	pop {r4}
	pop {r0}
	bx r0
_08055C70:
	adds r2, r4, #0
	adds r2, #0x42
	ldrb r3, [r2]
	movs r2, #0xf
	ands r2, r3
	lsrs r0, r3, #4
	cmp r2, #0
	beq _08055CB2
	ldrb r0, [r4, #5]
	subs r3, r0, r2
	lsls r0, r3, #0x18
	strb r3, [r4, #5]
	cmp r0, #0
	blt _08055CAE
_08055C8C:
	movs r1, #5
	ldrsb r1, [r4, r1]
	movs r2, #8
	ldrsb r2, [r4, r2]
	muls r2, r1, r2
	adds r1, r4, #0
	adds r1, #0x51
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r1, r3, #0
	muls r1, r2, r1
	ldr r0, [r4]
	asrs r1, r1, #0xc
	ldr r2, _08055CEC @ => gKrawall_KramSetVol
	bl _call_via_r2
	b _08055C6A
_08055CAE:
	strb r1, [r4, #5]
	b _08055C8C
_08055CB2:
	cmp r0, #0
	beq _08055C6A
	ldrb r1, [r4, #5]
	adds r2, r1, r0
	strb r2, [r4, #5]
	lsls r1, r2, #0x18
	movs r2, #0x80
	lsls r0, r2, #0x17
	cmp r1, r0
	ble _08055CCA
	movs r0, #0x40
	strb r0, [r4, #5]
_08055CCA:
	movs r1, #5
	ldrsb r1, [r4, r1]
	movs r2, #8
	ldrsb r2, [r4, r2]
	muls r2, r1, r2
	adds r1, r4, #0
	adds r1, #0x51
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r1, r3, #0
	muls r1, r2, r1
	ldr r0, [r4]
	asrs r1, r1, #0xc
	ldr r2, _08055CEC @ => gKrawall_KramSetVol
	bl _call_via_r2
	b _08055C6A
	.align 2, 0
_08055CEC: .4byte gKrawall_KramSetVol

	thumb_func_start eff_panslide
eff_panslide: @ 0x08055CF0
	push {r4, r5, lr}
	cmp r1, #0
	beq _08055D78
	ldrb r2, [r0, #0x1d]
	adds r1, r2, #0
	cmp r1, #0
	beq _08055D72
	adds r3, r0, #0
	adds r3, #0x44
	strb r2, [r3]
_08055D04:
	ldrb r4, [r3]
	movs r1, #0xf
	lsrs r2, r4, #4
	ands r1, r4
	adds r4, r0, #0
	adds r4, #0x45
	movs r3, #0
	strb r3, [r4]
	cmp r2, #0
	beq _08055D1C
	cmp r1, #0xf
	beq _08055D38
_08055D1C:
	cmp r1, #0
	beq _08055D24
	cmp r2, #0xf
	beq _08055D2A
_08055D24:
	pop {r4, r5}
	pop {r0}
	bx r0
_08055D2A:
	adds r2, r0, #0
	adds r2, #0x43
	movs r3, #1
	strb r3, [r2]
	ldrb r3, [r0, #6]
	lsls r2, r1, #1
	b _08055D96
_08055D38:
	movs r1, #1
	strb r1, [r4]
	ldrb r4, [r0, #6]
	lsls r3, r2, #1
	subs r5, r4, r3
	movs r2, #0xc0
	lsls r1, r5, #0x18
	lsls r4, r2, #0x18
	strb r5, [r0, #6]
	asrs r5, r4, #0x18
	cmp r1, r4
	bge _08055D52
	strb r5, [r0, #6]
_08055D52:
	ldrb r1, [r0, #6]
	adds r3, r0, #0
	strb r1, [r0, #9]
	adds r3, #0x5b
	ldrb r2, [r3]
	adds r3, r1, r2
	lsls r1, r3, #0x18
	asrs r2, r1, #0x18
	cmp r2, r5
	bge _08055D68
	adds r1, r4, #0
_08055D68:
	movs r3, #0x80
	lsls r2, r3, #0x17
	cmp r1, r2
	ble _08055DD0
	b _08055DCC
_08055D72:
	adds r3, r0, #0
	adds r3, #0x44
	b _08055D04
_08055D78:
	adds r2, r0, #0
	adds r2, #0x45
	ldrb r1, [r2]
	cmp r1, #0
	bne _08055D24
	adds r1, r0, #0
	adds r1, #0x44
	ldrb r3, [r1]
	movs r2, #0xf
	ands r2, r3
	lsrs r1, r3, #4
	cmp r2, #0
	beq _08055DDC
	ldrb r3, [r0, #6]
	lsls r2, r2, #1
_08055D96:
	adds r1, r3, r2
	movs r2, #0x80
	strb r1, [r0, #6]
	lsls r3, r1, #0x18
	lsls r1, r2, #0x17
	cmp r3, r1
	ble _08055DA8
	movs r2, #0x40
	strb r2, [r0, #6]
_08055DA8:
	ldrb r1, [r0, #6]
	adds r3, r0, #0
	strb r1, [r0, #9]
	adds r3, #0x5b
	ldrb r2, [r3]
	adds r3, r1, r2
	lsls r1, r3, #0x18
	movs r2, #0x40
	asrs r3, r1, #0x18
	rsbs r2, r2, #0
	cmp r3, r2
	bge _08055DC4
	movs r2, #0xc0
	lsls r1, r2, #0x18
_08055DC4:
	movs r2, #0x80
	lsls r3, r2, #0x17
	cmp r1, r3
	ble _08055DD0
_08055DCC:
	movs r1, #0x80
	lsls r1, r1, #0x17
_08055DD0:
	asrs r1, r1, #0x18
	ldr r2, _08055E24 @ => gKrawall_KramSetPan
	ldr r0, [r0]
	bl _call_via_r2
	b _08055D24
_08055DDC:
	cmp r1, #0
	beq _08055D24
	lsls r3, r1, #1
	ldrb r1, [r0, #6]
	movs r5, #0xc0
	subs r4, r1, r3
	strb r4, [r0, #6]
	lsls r1, r4, #0x18
	lsls r4, r5, #0x18
	asrs r5, r4, #0x18
	cmp r1, r4
	bge _08055DF6
	strb r5, [r0, #6]
_08055DF6:
	ldrb r1, [r0, #6]
	adds r3, r0, #0
	strb r1, [r0, #9]
	adds r3, #0x5b
	ldrb r2, [r3]
	adds r3, r1, r2
	lsls r1, r3, #0x18
	asrs r2, r1, #0x18
	cmp r2, r5
	bge _08055E0C
	adds r1, r4, #0
_08055E0C:
	movs r3, #0x80
	lsls r2, r3, #0x17
	cmp r1, r2
	ble _08055E16
	adds r1, r2, #0
_08055E16:
	ldr r0, [r0]
	asrs r1, r1, #0x18
	ldr r2, _08055E24 @ => gKrawall_KramSetPan
	bl _call_via_r2
	b _08055D24
	.align 2, 0
_08055E24: .4byte gKrawall_KramSetPan

	thumb_func_start eff_portaup_s3m
eff_portaup_s3m: @ 0x08055E28
	push {r4, r5, lr}
	adds r4, r0, #0
	cmp r1, #0
	beq _08055EB4
	ldrb r2, [r4, #0x1d]
	adds r1, r2, #0
	cmp r1, #0
	beq _08055EAE
	adds r0, #0x48
	strb r2, [r0]
_08055E3C:
	ldrb r1, [r0]
	adds r2, r1, #0
	cmp r2, #0xdf
	bls _08055E78
	movs r5, #0xf0
	adds r2, r5, #0
	ands r2, r1
	cmp r2, #0xf0
	beq _08055E9E
_08055E4E:
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0xe0
	beq _08055E92
_08055E56:
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	ldrh r0, [r4, #0xe]
	cmp r1, #0
	ble _08055E7E
_08055E60:
	ldr r2, _08055F00 @ => gKrawall_Player
	lsls r3, r0, #0x10
	strh r0, [r4, #0x10]
	ldr r1, [r2, #0x28]
	asrs r0, r3, #0x10
	bl _call_via_r1
	ldr r2, _08055F04 @ => gKrawall_KramSetFreq
	adds r1, r0, #0
	ldr r0, [r4]
	bl _call_via_r2
_08055E78:
	pop {r4, r5}
	pop {r0}
	bx r0
_08055E7E:
	adds r0, r4, #0
	adds r0, #0x4f
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r4]
	ldr r2, _08055F08 @ => gkrawall_KramStop
	bl _call_via_r2
	ldrh r0, [r4, #0xe]
	b _08055E60
_08055E92:
	ldrh r0, [r4, #0xe]
	movs r3, #0xf
	ands r3, r1
	subs r1, r0, r3
	strh r1, [r4, #0xe]
	b _08055E56
_08055E9E:
	movs r3, #0xf
	ands r3, r1
	lsls r2, r3, #2
	ldrh r3, [r4, #0xe]
	subs r1, r3, r2
	strh r1, [r4, #0xe]
	ldrb r1, [r0]
	b _08055E4E
_08055EAE:
	adds r0, r4, #0
	adds r0, #0x48
	b _08055E3C
_08055EB4:
	adds r2, r4, #0
	adds r2, #0x48
	ldrb r0, [r2]
	adds r0, #0xff
	lsls r3, r0, #0x18
	movs r0, #0xde
	lsls r0, r0, #0x18
	cmp r3, r0
	bhi _08055E78
	ldrb r0, [r2]
	lsls r3, r0, #2
	ldrh r0, [r4, #0xe]
	subs r2, r0, r3
	lsls r3, r2, #0x10
	asrs r0, r3, #0x10
	strh r2, [r4, #0xe]
	cmp r0, #0
	ble _08055EEE
	strh r2, [r4, #0x10]
	ldr r2, _08055F00 @ => gKrawall_Player
	ldr r1, [r2, #0x28]
	bl _call_via_r1
	ldr r2, _08055F04 @ => gKrawall_KramSetFreq
	adds r1, r0, #0
	ldr r0, [r4]
	bl _call_via_r2
	b _08055E78
_08055EEE:
	adds r2, r4, #0
	adds r2, #0x4f
	strb r1, [r2]
	ldr r1, _08055F08 @ => gkrawall_KramStop
	ldr r0, [r4]
	bl _call_via_r1
	b _08055E78
	.align 2, 0
_08055F00: .4byte gKrawall_Player
_08055F04: .4byte gKrawall_KramSetFreq
_08055F08: .4byte gkrawall_KramStop

	thumb_func_start eff_portadown_s3m
eff_portadown_s3m: @ 0x08055F0C
	push {r4, r5, lr}
	adds r4, r0, #0
	cmp r1, #0
	beq _08055F7C
	ldrb r2, [r4, #0x1d]
	adds r1, r2, #0
	cmp r1, #0
	beq _08055F76
	adds r0, #0x48
	strb r2, [r0]
_08055F20:
	ldrb r1, [r0]
	adds r2, r1, #0
	cmp r2, #0xdf
	bls _08055F54
	movs r5, #0xf0
	adds r2, r5, #0
	ands r2, r1
	cmp r2, #0xf0
	beq _08055F66
_08055F32:
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0xe0
	beq _08055F5A
_08055F3A:
	ldrh r1, [r4, #0xe]
	ldr r2, _08055FB4 @ => gKrawall_Player
	lsls r3, r1, #0x10
	strh r1, [r4, #0x10]
	asrs r0, r3, #0x10
	ldr r1, [r2, #0x28]
	bl _call_via_r1
	ldr r2, _08055FB8 @ => gKrawall_KramSetFreq
	adds r1, r0, #0
	ldr r0, [r4]
	bl _call_via_r2
_08055F54:
	pop {r4, r5}
	pop {r0}
	bx r0
_08055F5A:
	ldrh r0, [r4, #0xe]
	movs r3, #0xf
	ands r3, r1
	adds r1, r0, r3
	strh r1, [r4, #0xe]
	b _08055F3A
_08055F66:
	movs r3, #0xf
	ands r3, r1
	lsls r2, r3, #2
	ldrh r3, [r4, #0xe]
	adds r1, r3, r2
	strh r1, [r4, #0xe]
	ldrb r1, [r0]
	b _08055F32
_08055F76:
	adds r0, r4, #0
	adds r0, #0x48
	b _08055F20
_08055F7C:
	adds r2, r4, #0
	adds r2, #0x48
	ldrb r1, [r2]
	adds r1, #0xff
	lsls r3, r1, #0x18
	movs r1, #0xde
	lsls r0, r1, #0x18
	cmp r3, r0
	bhi _08055F54
	ldrb r1, [r2]
	ldrh r2, [r4, #0xe]
	lsls r0, r1, #2
	adds r1, r2, r0
	ldr r2, _08055FB4 @ => gKrawall_Player
	lsls r3, r1, #0x10
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x10]
	asrs r0, r3, #0x10
	ldr r1, [r2, #0x28]
	bl _call_via_r1
	ldr r2, _08055FB8 @ => gKrawall_KramSetFreq
	adds r1, r0, #0
	ldr r0, [r4]
	bl _call_via_r2
	b _08055F54
	.align 2, 0
_08055FB4: .4byte gKrawall_Player
_08055FB8: .4byte gKrawall_KramSetFreq

	thumb_func_start eff_portanote
eff_portanote: @ 0x08055FBC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	cmp r1, #0
	beq _08055FD2
	ldrb r3, [r4, #0x1d]
	cmp r3, #0
	beq _08055FCC
	strh r3, [r4, #0x1e]
_08055FCC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08055FD2:
	movs r0, #0xe
	ldrsh r3, [r4, r0]
	movs r5, #0x20
	ldrsh r2, [r4, r5]
	ldrh r1, [r4, #0xe]
	ldrh r0, [r4, #0x20]
	cmp r3, r2
	ble _0805608C
	ldrh r3, [r4, #0x1e]
	lsls r6, r3, #2
	subs r3, r1, r6
	lsls r6, r3, #0x10
	asrs r1, r6, #0x10
	strh r3, [r4, #0xe]
	cmp r1, r2
	bge _08055FF4
	strh r0, [r4, #0xe]
_08055FF4:
	adds r6, r4, #0
	adds r6, #0x3c
	ldrb r0, [r6]
	cmp r0, #0
	beq _08056070
	ldr r3, _080560FC @ => 0x09FB50E8
	ldrh r1, [r4, #0x22]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	mov ip, r3
	lsls r2, r1, #0x10
	asrs r3, r2, #0xf
	mov r2, ip
	ldrh r3, [r2, r3]
	mov lr, r0
	ldrh r5, [r4, #0xe]
	mov r7, ip
	adds r0, r1, #0
	cmp lr, r3
	bge _08056036
	mov ip, lr
_0805601E:
	adds r2, r0, #1
	lsls r1, r2, #0x10
	asrs r5, r1, #0xf
	ldrh r1, [r7, r5]
	adds r0, r2, #0
	cmp ip, r1
	blt _0805601E
	ldr r3, _080560FC @ => 0x09FB50E8
	strh r2, [r4, #0x22]
	ldrh r5, [r4, #0xe]
	mov ip, r3
	adds r1, r2, #0
_08056036:
	lsls r2, r5, #0x10
	lsls r5, r1, #0x10
	asrs r3, r2, #0x10
	asrs r2, r5, #0xf
	mov r5, ip
	ldrh r0, [r5, r2]
	cmp r3, r0
	ble _0805604A
	subs r0, r1, #1
_08056048:
	strh r0, [r4, #0x22]
_0805604A:
	ldrb r1, [r6]
	cmp r1, #0
	beq _08056070
	movs r0, #0x22
	ldrsh r2, [r4, r0]
	lsls r1, r2, #1
	ldr r2, _080560FC @ => 0x09FB50E8
	ldrh r0, [r2, r1]
	ldr r2, _08056100 @ => gKrawall_Player
	strh r0, [r4, #0x10]
	ldr r1, [r2, #0x28]
	bl _call_via_r1
	ldr r2, _08056104 @ => gKrawall_KramSetFreq
	adds r1, r0, #0
	ldr r0, [r4]
	bl _call_via_r2
	b _08055FCC
_08056070:
	ldrh r1, [r4, #0xe]
	ldr r2, _08056100 @ => gKrawall_Player
	lsls r3, r1, #0x10
	strh r1, [r4, #0x10]
	asrs r0, r3, #0x10
	ldr r1, [r2, #0x28]
	bl _call_via_r1
	ldr r2, _08056104 @ => gKrawall_KramSetFreq
	adds r1, r0, #0
	ldr r0, [r4]
	bl _call_via_r2
	b _08055FCC
_0805608C:
	cmp r3, r2
	blt _08056092
	b _08055FCC
_08056092:
	ldrh r6, [r4, #0x1e]
	lsls r3, r6, #2
	adds r6, r1, r3
	lsls r1, r6, #0x10
	strh r6, [r4, #0xe]
	asrs r6, r1, #0x10
	cmp r6, r2
	ble _080560A4
	strh r0, [r4, #0xe]
_080560A4:
	adds r6, r4, #0
	adds r6, #0x3c
	ldrb r2, [r6]
	cmp r2, #0
	beq _08056070
	ldr r3, _080560FC @ => 0x09FB50E8
	ldrh r1, [r4, #0x22]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	mov ip, r3
	lsls r2, r1, #0x10
	asrs r3, r2, #0xf
	mov r2, ip
	ldrh r3, [r2, r3]
	mov lr, r0
	ldrh r5, [r4, #0xe]
	mov r7, ip
	adds r0, r1, #0
	cmp lr, r3
	ble _080560E6
	mov ip, lr
_080560CE:
	subs r2, r0, #1
	lsls r5, r2, #0x10
	asrs r1, r5, #0xf
	ldrh r5, [r7, r1]
	adds r0, r2, #0
	cmp ip, r5
	bgt _080560CE
	ldr r3, _080560FC @ => 0x09FB50E8
	strh r2, [r4, #0x22]
	ldrh r5, [r4, #0xe]
	mov ip, r3
	adds r1, r2, #0
_080560E6:
	lsls r2, r5, #0x10
	lsls r5, r1, #0x10
	asrs r3, r2, #0x10
	asrs r2, r5, #0xf
	mov r5, ip
	ldrh r0, [r5, r2]
	cmp r3, r0
	bge _0805604A
	adds r0, r1, #1
	b _08056048
	.align 2, 0
_080560FC: .4byte table_periods
_08056100: .4byte gKrawall_Player
_08056104: .4byte gKrawall_KramSetFreq

	thumb_func_start eff_fvibrato
eff_fvibrato: @ 0x08056108
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r1, #0
	beq _08056182
	adds r1, r5, #0
	adds r1, #0x4d
	ldrb r0, [r1]
	cmp r0, #0
	beq _0805612E
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r0, [r2]
	cmp r0, #0
	beq _0805612E
	ldr r2, _080561CC @ => gKrawall_Player
	adds r1, r5, #0
	ldrb r0, [r2, #0x1f]
	adds r1, #0x24
	strb r0, [r1]
_0805612E:
	ldrb r2, [r5, #0x1d]
	movs r3, #0xf
	ands r3, r2
	cmp r3, #0
	beq _08056142
	adds r1, r5, #0
	lsls r0, r3, #2
	adds r1, #0x26
	strb r0, [r1]
	ldrb r2, [r5, #0x1d]
_08056142:
	movs r1, #0xf0
	ands r1, r2
	cmp r1, #0
	beq _08056152
	adds r0, r5, #0
	lsrs r3, r2, #4
	adds r0, #0x25
	strb r3, [r0]
_08056152:
	adds r2, r5, #0
	adds r2, #0x4c
	ldrb r1, [r2]
	cmp r1, #0
	beq _08056162
	ldrb r0, [r5, #0x1c]
	cmp r0, #0x17
	beq _0805617C
_08056162:
	ldrb r3, [r5, #0x1d]
	movs r0, #0xf
	ands r0, r3
	cmp r0, #0
	beq _08056176
	adds r1, r5, #0
	adds r1, #0x26
	ldrb r0, [r1]
	lsrs r2, r0, #2
_08056174:
	strb r2, [r1]
_08056176:
	pop {r4, r5}
	pop {r0}
	bx r0
_0805617C:
	movs r1, #0
	strb r1, [r2]
	b _08056162
_08056182:
	adds r4, r5, #0
	adds r4, #0x26
	ldrb r1, [r4]
	adds r4, r5, #0
	adds r4, #0x24
	ldrb r0, [r4]
	ldr r2, [r5, #0x28]
	lsls r3, r0, #1
	ldrsh r3, [r3, r2]
	muls r3, r1, r3
	ldrh r2, [r5, #0xe]
	asrs r0, r3, #7
	adds r1, r2, r0
	lsls r3, r1, #0x10
	ldr r2, _080561CC @ => gKrawall_Player
	lsrs r0, r3, #0x10
	ldr r1, [r2, #0x28]
	strh r0, [r5, #0x10]
	bl _call_via_r1
	ldr r2, _080561D0 @ => gKrawall_KramSetFreq
	adds r1, r0, #0
	ldr r0, [r5]
	bl _call_via_r2
	adds r0, r5, #0
	adds r0, #0x25
	ldrb r1, [r4]
	ldrb r3, [r0]
	adds r0, r1, r3
	movs r1, #0x3f
	ands r0, r1
	adds r1, r5, #0
	adds r1, #0x4c
	movs r2, #1
	strb r0, [r4]
	b _08056174
	.align 2, 0
_080561CC: .4byte gKrawall_Player
_080561D0: .4byte gKrawall_KramSetFreq

	thumb_func_start eff_tremolo
eff_tremolo: @ 0x080561D4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	cmp r0, #0
	beq _08056222
	adds r1, r4, #0
	adds r1, #0x4d
	ldrb r0, [r1]
	cmp r0, #0
	beq _080561FA
	adds r2, r4, #0
	adds r2, #0x2f
	ldrb r0, [r2]
	cmp r0, #0
	beq _080561FA
	adds r1, r4, #0
	adds r1, #0x2c
	movs r0, #0
	strb r0, [r1]
_080561FA:
	ldrb r2, [r4, #0x1d]
	movs r1, #0xf
	ands r1, r2
	cmp r1, #0
	beq _0805620C
	adds r2, r4, #0
	adds r2, #0x2e
	strb r1, [r2]
	ldrb r2, [r4, #0x1d]
_0805620C:
	movs r1, #0xf0
	ands r1, r2
	cmp r1, #0
	beq _0805621C
	adds r0, r4, #0
	lsrs r3, r2, #4
	adds r0, #0x2d
	strb r3, [r0]
_0805621C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08056222:
	adds r5, r4, #0
	adds r5, #0x2e
	ldrb r1, [r5]
	adds r5, r4, #0
	adds r5, #0x2c
	ldrb r6, [r5]
	ldr r2, [r4, #0x30]
	lsls r3, r6, #1
	ldrsh r3, [r3, r2]
	muls r3, r1, r3
	ldrb r2, [r4, #4]
	lsls r1, r3, #0x12
	asrs r3, r1, #0x18
	adds r1, r3, r2
	lsls r2, r1, #0x18
	strb r1, [r4, #8]
	cmp r2, #0
	blt _0805628E
_08056246:
	movs r0, #8
	ldrsb r0, [r4, r0]
	ldrb r2, [r4, #8]
	cmp r0, #0x40
	ble _08056254
	movs r2, #0x40
	strb r2, [r4, #8]
_08056254:
	lsls r3, r2, #0x18
	movs r2, #5
	ldrsb r2, [r4, r2]
	asrs r1, r3, #0x18
	muls r2, r1, r2
	adds r1, r4, #0
	adds r1, #0x51
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r1, r3, #0
	muls r1, r2, r1
	ldr r0, [r4]
	asrs r1, r1, #0xc
	ldr r2, _08056294 @ => gKrawall_KramSetVol
	bl _call_via_r2
	adds r1, r4, #0
	adds r1, #0x2d
	ldrb r0, [r5]
	ldrb r3, [r1]
	adds r1, r0, r3
	movs r0, #0x3f
	ands r1, r0
	strb r1, [r5]
	adds r1, r4, #0
	adds r1, #0x4c
	movs r0, #1
	strb r0, [r1]
	b _0805621C
_0805628E:
	strb r0, [r4, #8]
	b _08056246
	.align 2, 0
_08056294: .4byte gKrawall_KramSetVol

	thumb_func_start eff_panbrello
eff_panbrello: @ 0x08056298
	push {r4, r5, lr}
	adds r4, r0, #0
	cmp r1, #0
	beq _080562E4
	adds r1, r4, #0
	adds r1, #0x4d
	ldrb r0, [r1]
	cmp r0, #0
	beq _080562BC
	adds r2, r4, #0
	adds r2, #0x37
	ldrb r0, [r2]
	cmp r0, #0
	beq _080562BC
	adds r1, r4, #0
	adds r1, #0x34
	movs r0, #0
	strb r0, [r1]
_080562BC:
	ldrb r2, [r4, #0x1d]
	movs r1, #0xf
	ands r1, r2
	cmp r1, #0
	beq _080562CE
	adds r2, r4, #0
	adds r2, #0x36
	strb r1, [r2]
	ldrb r2, [r4, #0x1d]
_080562CE:
	movs r1, #0xf0
	ands r1, r2
	cmp r1, #0
	beq _080562DE
	adds r0, r4, #0
	lsrs r3, r2, #4
	adds r0, #0x35
	strb r3, [r0]
_080562DE:
	pop {r4, r5}
	pop {r0}
	bx r0
_080562E4:
	adds r1, r4, #0
	adds r1, #0x36
	ldrb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x34
	ldrb r2, [r1]
	lsrs r5, r2, #2
	ldr r2, [r4, #0x38]
	lsls r3, r5, #1
	ldrsh r3, [r3, r2]
	muls r3, r0, r3
	ldrb r2, [r4, #6]
	lsls r0, r3, #0x12
	asrs r3, r0, #0x18
	adds r0, r3, r2
	strb r0, [r4, #9]
	adds r0, r4, #0
	adds r0, #0x35
	ldrb r3, [r1]
	ldrb r2, [r0]
	adds r0, r3, r2
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x5b
	movs r2, #9
	ldrsb r2, [r4, r2]
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r1, r2, r0
	movs r2, #0x40
	rsbs r3, r2, #0
	cmp r1, r3
	bge _08056328
	adds r1, r3, #0
_08056328:
	cmp r1, #0x40
	ble _0805632E
	movs r1, #0x40
_0805632E:
	ldr r2, _08056340 @ => gKrawall_KramSetPan
	ldr r0, [r4]
	bl _call_via_r2
	adds r0, r4, #0
	adds r0, #0x4c
	movs r2, #1
	strb r2, [r0]
	b _080562DE
	.align 2, 0
_08056340: .4byte gKrawall_KramSetPan

	thumb_func_start eff_tremor
eff_tremor: @ 0x08056344
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	cmp r1, #0
	beq _080563D6
	ldrb r1, [r5, #0x1d]
	lsls r2, r1, #0x18
	cmp r2, #0
	beq _080563D6
	lsrs r2, r2, #0x1c
	adds r2, #1
	adds r0, #0x3e
	strb r2, [r0]
	ldrb r6, [r5, #0x1d]
	movs r3, #0xf
	ands r3, r6
	adds r6, r2, r3
	adds r1, r5, #0
	adds r6, #1
	adds r1, #0x3f
	strb r6, [r1]
_0805636C:
	adds r6, r5, #0
	adds r6, #0x3d
	ldrb r2, [r6]
	ldrb r1, [r0]
	cmp r2, r1
	beq _080563BE
	adds r1, r5, #0
	adds r1, #0x3f
	ldrb r0, [r1]
	cmp r2, r0
	beq _0805638E
_08056382:
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0805638E:
	movs r4, #0
	strb r4, [r6]
	ldrb r1, [r5, #4]
	lsls r2, r1, #0x18
	strb r1, [r5, #8]
	asrs r1, r2, #0x18
	movs r2, #5
	ldrsb r2, [r5, r2]
	muls r2, r1, r2
	adds r1, r5, #0
	adds r1, #0x51
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r1, r3, #0
	muls r1, r2, r1
	ldr r0, [r5]
	ldr r2, _080563DC @ => gKrawall_KramSetVol
	asrs r1, r1, #0xc
	bl _call_via_r2
	adds r2, r5, #0
	adds r2, #0x4c
	strb r4, [r2]
	b _08056382
_080563BE:
	movs r1, #0
	strb r1, [r5, #8]
	ldr r2, _080563DC @ => gKrawall_KramSetVol
	ldr r0, [r5]
	movs r1, #0
	bl _call_via_r2
	adds r0, r5, #0
	adds r0, #0x4c
	movs r2, #1
	strb r2, [r0]
	b _08056382
_080563D6:
	adds r0, r5, #0
	adds r0, #0x3e
	b _0805636C
	.align 2, 0
_080563DC: .4byte gKrawall_KramSetVol

	thumb_func_start eff_retrig
eff_retrig: @ 0x080563E0
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	cmp r1, #0
	beq _08056420
	ldrb r2, [r6, #0x1d]
	adds r0, r2, #0
	cmp r0, #0
	beq _080563F8
	adds r0, r6, #0
	adds r0, #0x4b
	strb r2, [r0]
_080563F8:
	adds r2, r6, #0
	adds r2, #0x4d
	ldrb r1, [r2]
	cmp r1, #0
	beq _0805640A
_08056402:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805640A:
	adds r1, r6, #0
	adds r1, #0x4b
	ldrb r0, [r1]
	cmp r0, #0
	beq _08056402
	ldr r0, [r6]
	movs r1, #0
	ldr r2, _0805655C @ => gKrawall_KramSetPos
	bl _call_via_r2
	b _08056402
_08056420:
	adds r7, r6, #0
	adds r7, #0x4b
	ldrb r2, [r7]
	adds r0, r2, #0
	cmp r0, #0
	beq _08056402
	ldr r4, _08056560 @ => gKrawall_Player
	add r1, sp, #4
	ldrb r5, [r4, #0x11]
	movs r4, #0xf
	ands r4, r2
	str r1, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	beq _08056440
	svc #6
_08056440:
	ldr r2, [sp]
	str r1, [r2]
	ldr r4, [sp, #4]
	cmp r4, #0
	bne _08056402
	ldr r2, _0805655C @ => gKrawall_KramSetPos
	ldr r0, [r6]
	movs r1, #0
	bl _call_via_r2
	ldrb r0, [r7]
	lsrs r2, r0, #4
	cmp r2, #0
	beq _08056402
	adds r1, r2, #0
	adds r1, #0xff
	lsls r3, r1, #0x18
	movs r1, #0x80
	lsls r0, r1, #0x13
	cmp r3, r0
	bhi _08056480
	subs r0, r2, #1
	ldrb r1, [r6, #4]
	movs r2, #1
	lsls r2, r0
	subs r0, r1, r2
	lsls r2, r0, #0x18
	strb r0, [r6, #4]
	cmp r2, #0
	bge _08056534
	strb r4, [r6, #4]
	b _08056534
_08056480:
	adds r1, r2, #0
	adds r1, #0xf7
	lsls r3, r1, #0x18
	movs r1, #0x80
	lsls r0, r1, #0x13
	cmp r3, r0
	bhi _080564A2
	adds r0, r2, #0
	ldrb r1, [r6, #4]
	subs r0, #9
	movs r2, #1
	lsls r2, r0
	adds r0, r1, r2
	movs r2, #0x80
	strb r0, [r6, #4]
	lsls r1, r0, #0x18
	b _08056518
_080564A2:
	cmp r2, #7
	beq _08056524
	cmp r2, #7
	bgt _080564EA
	cmp r2, #6
	bne _08056402
	movs r0, #4
	ldrsb r0, [r6, r0]
	movs r2, #0xab
	lsls r1, r2, #1
	muls r1, r0, r1
	asrs r0, r1, #9
	strb r0, [r6, #4]
	cmp r0, #0x40
	ble _080564C4
	movs r1, #0x40
	strb r1, [r6, #4]
_080564C4:
	ldrb r1, [r6, #4]
	lsls r2, r1, #0x18
	strb r1, [r6, #8]
	asrs r1, r2, #0x18
	movs r2, #5
	ldrsb r2, [r6, r2]
	muls r2, r1, r2
	adds r1, r6, #0
	adds r1, #0x51
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r1, r3, #0
	muls r1, r2, r1
	ldr r0, [r6]
	asrs r1, r1, #0xc
	ldr r2, _08056564 @ => gKrawall_KramSetVol
	bl _call_via_r2
	b _08056402
_080564EA:
	cmp r2, #0xe
	beq _08056508
	cmp r2, #0xf
	beq _080564F4
	b _08056402
_080564F4:
	movs r1, #4
	ldrsb r1, [r6, r1]
	lsls r3, r1, #1
	lsls r2, r1, #0x19
	movs r1, #0x80
	lsls r0, r1, #0x17
	strb r3, [r6, #4]
	cmp r2, r0
	ble _08056534
	b _08056530
_08056508:
	movs r3, #4
	ldrsb r3, [r6, r3]
	lsls r1, r3, #1
	adds r0, r1, r3
	asrs r2, r0, #1
	strb r2, [r6, #4]
	lsls r1, r2, #0x18
	movs r2, #0x80
_08056518:
	lsls r0, r2, #0x17
	cmp r1, r0
	ble _08056534
	movs r2, #0x40
	strb r2, [r6, #4]
	b _08056534
_08056524:
	ldrb r1, [r6, #4]
	lsls r2, r1, #0x18
	asrs r0, r2, #0x19
	strb r0, [r6, #4]
	cmp r0, #0x40
	ble _08056534
_08056530:
	movs r0, #0x40
	strb r0, [r6, #4]
_08056534:
	ldrb r1, [r6, #4]
	lsls r2, r1, #0x18
	strb r1, [r6, #8]
	asrs r1, r2, #0x18
	movs r2, #5
	ldrsb r2, [r6, r2]
	muls r2, r1, r2
	adds r1, r6, #0
	adds r1, #0x51
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r1, r3, #0
	muls r1, r2, r1
	ldr r0, [r6]
	asrs r1, r1, #0xc
	ldr r2, _08056564 @ => gKrawall_KramSetVol
	bl _call_via_r2
	b _08056402
	.align 2, 0
_0805655C: .4byte gKrawall_KramSetPos
_08056560: .4byte gKrawall_Player
_08056564: .4byte gKrawall_KramSetVol

	thumb_func_start eff_arpeggio
eff_arpeggio: @ 0x08056568
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #0
	beq _080565B2
	ldrb r2, [r4, #0x1d]
	adds r0, r2, #0
	cmp r0, #0
	beq _0805657E
	adds r0, r4, #0
	adds r0, #0x46
	strb r2, [r0]
_0805657E:
	adds r2, r4, #0
	adds r2, #0x4d
	ldrb r1, [r2]
	cmp r1, #0
	beq _08056596
_08056588:
	adds r0, r4, #0
	adds r0, #0x47
	movs r2, #0
	strb r2, [r0]
_08056590:
	pop {r4}
	pop {r0}
	bx r0
_08056596:
	ldrh r1, [r4, #0xe]
	ldr r2, _08056654 @ => gKrawall_Player
	lsls r3, r1, #0x10
	strh r1, [r4, #0x10]
	asrs r0, r3, #0x10
	ldr r1, [r2, #0x28]
	bl _call_via_r1
	ldr r2, _08056658 @ => gKrawall_KramSetFreq
	adds r1, r0, #0
	ldr r0, [r4]
	bl _call_via_r2
	b _08056588
_080565B2:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _08056590
	adds r2, r4, #0
	adds r2, #0x47
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r3, r0, #0x18
	movs r0, #0x80
	lsls r0, r0, #0x12
	cmp r3, r0
	bls _080565CE
	strb r1, [r2]
_080565CE:
	ldrb r3, [r2]
	cmp r3, #0
	beq _0805664E
	cmp r3, #1
	beq _08056640
	adds r2, r4, #0
	adds r2, #0x46
	ldrb r0, [r2]
	ldrh r1, [r4, #0xc]
	movs r2, #0xf
	ands r2, r0
	adds r0, r1, r2
_080565E6:
	lsls r1, r0, #0x10
	asrs r2, r1, #0x10
_080565EA:
	movs r3, #0xee
	lsls r2, r2, #0x10
	lsls r0, r3, #0xf
	cmp r2, r0
	bls _080565F6
	adds r2, r0, #0
_080565F6:
	ldr r1, [r4, #0x14]
	ldrb r0, [r1, #0xc]
	lsls r1, r0, #0x18
	lsrs r2, r2, #0xa
	asrs r0, r1, #0x19
	adds r1, r0, r2
	movs r0, #0xc0
	lsls r2, r0, #3
	adds r0, r1, r2
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	lsls r2, r0, #0x10
	asrs r3, r2, #0x10
	ldr r1, _0805665C @ => 0x0000AAAB
	strh r0, [r4, #0x10]
	lsrs r0, r3, #6
	muls r0, r1, r0
	lsrs r1, r0, #0x13
	lsls r2, r1, #1
	adds r0, r2, r1
	lsls r2, r0, #8
	subs r0, r3, r2
	movs r2, #0x17
	lsls r3, r0, #2
	subs r0, r2, r1
	ldr r1, _08056660 @ => 0x09FB5258
	ldr r1, [r1, r3]
	ldr r2, _08056658 @ => gKrawall_KramSetFreq
	lsrs r1, r0
	ldr r0, [r4]
	bl _call_via_r2
	adds r1, r4, #0
	adds r1, #0x4c
	movs r0, #1
	strb r0, [r1]
	b _08056590
_08056640:
	adds r2, r4, #0
	adds r2, #0x46
	ldrb r0, [r2]
	ldrh r1, [r4, #0xc]
	lsrs r3, r0, #4
	adds r0, r1, r3
	b _080565E6
_0805664E:
	movs r3, #0xc
	ldrsh r2, [r4, r3]
	b _080565EA
	.align 2, 0
_08056654: .4byte gKrawall_Player
_08056658: .4byte gKrawall_KramSetFreq
_0805665C: .4byte 0x0000AAAB
_08056660: .4byte table_linear

	thumb_func_start eff_notedelay
eff_notedelay: @ 0x08056664
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	cmp r1, #0
	beq _08056684
	ldrb r0, [r5, #0x1d]
	cmp r0, #0
	beq _0805667C
	adds r0, r5, #0
	adds r0, #0x4d
	movs r1, #0
	strb r1, [r0]
_0805667C:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08056684:
	ldr r0, _080566F4 @ => gKrawall_Player
	ldrb r2, [r5, #0x1d]
	ldrb r3, [r0, #0x11]
	cmp r2, r3
	bne _0805667C
	adds r4, r0, #0
	adds r4, #0x20
	ldrb r2, [r4]
	cmp r2, #0
	beq _08056728
	ldr r6, [r5, #0x18]
	adds r7, r6, #0
	adds r7, #0xf3
	adds r4, r5, #0
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r2, [r7]
	adds r4, #0x4f
	movs r7, #1
	strb r1, [r4]
	strb r1, [r0]
	adds r0, r7, #0
	ands r0, r2
	cmp r0, #0
	beq _08056780
	adds r0, r5, #0
	adds r0, #0x50
	movs r2, #3
	strb r2, [r0]
	adds r0, r5, #0
	adds r0, #0x55
	movs r3, #0xff
	strb r3, [r0]
	subs r0, #1
	strb r3, [r0]
	adds r0, #2
	strb r1, [r0]
	ldr r2, _080566F0 @ => 0x00007FFF
	adds r0, r5, #0
	adds r0, #0x58
	strh r2, [r0]
	adds r2, r5, #0
	adds r2, #0x57
	strb r1, [r2]
	strb r7, [r4]
_080566DE:
	ldr r3, _080566F8 @ => 0x00000127
	adds r1, r6, r3
	ldrb r0, [r1]
	movs r1, #1
	adds r2, r1, #0
	ands r2, r0
	cmp r2, #0
	beq _08056774
	b _080566FC
	.align 2, 0
_080566F0: .4byte 0x00007FFF
_080566F4: .4byte gKrawall_Player
_080566F8: .4byte 0x00000127
_080566FC:
	adds r0, r5, #0
	adds r0, #0x5a
	movs r2, #3
	strb r2, [r0]
	adds r0, r5, #0
	adds r0, #0x5f
	movs r3, #0xff
	strb r3, [r0]
	subs r0, #1
	strb r3, [r0]
	adds r0, r5, #0
	adds r0, #0x60
	movs r2, #0
	strb r2, [r0]
	strb r1, [r4]
_0805671A:
	ldr r3, _08056790 @ => 0x0000012D
	adds r1, r6, r3
	ldrb r0, [r1]
	cmp r0, #0
	beq _08056728
	movs r2, #1
	strb r2, [r4]
_08056728:
	adds r0, r5, #0
	adds r0, #0x4c
	movs r4, #0
	strb r4, [r0]
	ldr r2, _08056794 @ => gKrawall_Player
	movs r3, #0xe
	ldrsh r0, [r5, r3]
	ldr r1, [r2, #0x28]
	bl _call_via_r1
	movs r4, #4
	ldrsb r4, [r5, r4]
	movs r1, #5
	ldrsb r1, [r5, r1]
	muls r1, r4, r1
	asrs r4, r1, #6
	str r4, [sp]
	movs r4, #6
	ldrsb r4, [r5, r4]
	adds r3, r0, #0
	str r4, [sp, #4]
	ldr r0, [r5, #0x14]
	ldr r2, [r5]
	movs r1, #0
	ldr r4, _08056798 @ => gKrawall_KramPlayExt
	bl _call_via_r4
	ldrb r3, [r5, #7]
	str r0, [r5]
	cmp r3, #0
	bne _08056768
	b _0805667C
_08056768:
	adds r2, r3, #0
	lsls r1, r2, #8
	ldr r2, _0805679C @ => gKrawall_KramSetPos
	bl _call_via_r2
	b _0805667C
_08056774:
	adds r1, r5, #0
	adds r1, #0x5b
	strb r2, [r1]
	subs r1, #1
	strb r2, [r1]
	b _0805671A
_08056780:
	adds r1, r5, #0
	adds r1, #0x51
	movs r3, #0x40
	strb r3, [r1]
	subs r1, #1
	strb r0, [r1]
	b _080566DE
	.align 2, 0
_08056790: .4byte 0x0000012D
_08056794: .4byte gKrawall_Player
_08056798: .4byte gKrawall_KramPlayExt
_0805679C: .4byte gKrawall_KramSetPos

	thumb_func_start eff_VC_vibrato
eff_VC_vibrato: @ 0x080567A0
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r1, #0
	beq _080567C4
	adds r0, #0x61
	ldrb r2, [r0]
	adds r0, r2, #0
	cmp r0, #0
	beq _080567BE
	movs r0, #0xf
	ands r0, r2
	adds r1, r5, #0
	lsls r2, r0, #2
	adds r1, #0x26
_080567BC:
	strb r2, [r1]
_080567BE:
	pop {r4, r5}
	pop {r0}
	bx r0
_080567C4:
	adds r4, r5, #0
	adds r4, #0x26
	ldrb r1, [r4]
	adds r4, r5, #0
	adds r4, #0x24
	ldrb r0, [r4]
	ldr r2, [r5, #0x28]
	lsls r3, r0, #1
	ldrsh r3, [r3, r2]
	muls r3, r1, r3
	ldrh r2, [r5, #0xe]
	asrs r0, r3, #7
	adds r1, r2, r0
	lsls r3, r1, #0x10
	ldr r2, _08056810 @ => gKrawall_Player
	lsrs r0, r3, #0x10
	ldr r1, [r2, #0x28]
	strh r0, [r5, #0x10]
	bl _call_via_r1
	ldr r2, _08056814 @ => gKrawall_KramSetFreq
	adds r1, r0, #0
	ldr r0, [r5]
	bl _call_via_r2
	adds r0, r5, #0
	adds r0, #0x25
	ldrb r1, [r4]
	ldrb r3, [r0]
	adds r0, r1, r3
	movs r1, #0x3f
	ands r0, r1
	adds r1, r5, #0
	adds r1, #0x4c
	movs r2, #1
	strb r0, [r4]
	b _080567BC
	.align 2, 0
_08056810: .4byte gKrawall_Player
_08056814: .4byte gKrawall_KramSetFreq

	thumb_func_start krapStop
krapStop: @ 0x08056818
	push {r4, r5, r6, lr}
	ldr r4, _0805685C @ => gKrawall_Player
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _08056856
	movs r2, #0
	movs r0, #0
	str r2, [r4, #4]
	bl kramSetSoundTimer
	ldr r1, [r4, #8]
	ldrb r0, [r1]
	movs r5, #0
	cmp r5, r0
	bge _08056856
	adds r6, r4, #0
	adds r4, #0x34
_0805683A:
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x4f
	strb r1, [r0]
	ldr r2, _08056860 @ => gkrawall_KramStop
	ldr r0, [r4]
	bl _call_via_r2
	ldr r1, [r6, #8]
	ldrb r0, [r1]
	adds r5, #1
	adds r4, #0x64
	cmp r5, r0
	blt _0805683A
_08056856:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805685C: .4byte gKrawall_Player
_08056860: .4byte gkrawall_KramStop

	thumb_func_start krapStopJingle
krapStopJingle: @ 0x08056864
	push {lr}
	ldr r2, _0805687C @ => gKrawall_Player
	ldr r0, [r2]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08056876
	bl jingleDone
_08056876:
	pop {r0}
	bx r0
	.align 2, 0
_0805687C: .4byte gKrawall_Player

	thumb_func_start krapCallback
krapCallback: @ 0x08056880
	ldr r1, _08056888 @ => gKrawall_Callback
	str r0, [r1]
	bx lr
	.align 2, 0
_08056888: .4byte gKrawall_Callback

	thumb_func_start krapPause
krapPause: @ 0x0805688C
	push {lr}
	ldr r2, _080568BC @ => gKrawall_Player
	ldr r1, [r2, #4]
	cmp r1, #2
	beq _0805689A
_08056896:
	pop {r0}
	bx r0
_0805689A:
	movs r1, #1
	str r1, [r2, #4]
	ldr r1, [r2]
	movs r3, #4
	ands r1, r3
	cmp r1, #0
	beq _080568B6
	movs r1, #3
_080568AA:
	bl kramPauseChannels
	movs r0, #0
	bl kramSetSoundTimer
	b _08056896
_080568B6:
	movs r1, #2
	b _080568AA
	.align 2, 0
_080568BC: .4byte gKrawall_Player

	thumb_func_start krapUnpause
krapUnpause: @ 0x080568C0
	push {lr}
	ldr r2, _080568F0 @ => gKrawall_Player
	ldr r0, [r2, #4]
	cmp r0, #1
	beq _080568CE
_080568CA:
	pop {r0}
	bx r0
_080568CE:
	movs r0, #2
	str r0, [r2, #4]
	ldr r0, [r2]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080568EA
	movs r0, #3
_080568DE:
	bl kramUnpauseChannels
	ldr r0, _080568F4 @ => timerRoutine
	bl kramSetSoundTimer
	b _080568CA
_080568EA:
	movs r0, #2
	b _080568DE
	.align 2, 0
_080568F0: .4byte gKrawall_Player
_080568F4: .4byte timerRoutine

	thumb_func_start krapIsPaused
krapIsPaused: @ 0x080568F8
	push {lr}
	ldr r2, _0805690C @ => gKrawall_Player
	ldr r1, [r2, #4]
	movs r0, #0
	cmp r1, #1
	beq _08056908
_08056904:
	pop {r1}
	bx r1
_08056908:
	movs r0, #1
	b _08056904
	.align 2, 0
_0805690C: .4byte gKrawall_Player

	thumb_func_start krapSetMusicVol
krapSetMusicVol: @ 0x08056910
	push {lr}
	cmp r1, #0
	beq _0805691E
	ldr r2, _08056970 @ => gKrawall_Player
	ldr r1, [r2, #4]
	cmp r1, #2
	beq _08056952
_0805691E:
	ldr r1, _08056974 @ => gKrawall_MusicVolumeFadeInc
	movs r3, #0
	str r3, [r1]
	ldr r1, _08056978 @ => gKrawall_MusicVolumeTarget
	str r0, [r1]
	ldr r1, _08056970 @ => gKrawall_Player
	ldr r2, _0805697C @ => gKrawall_MusicVolume
	ldr r3, [r1, #8]
	str r0, [r2]
	cmp r3, #0
	beq _0805694C
	ldr r2, _08056980 @ => 0x00000163
	adds r3, r3, r2
	ldrb r2, [r3]
	movs r3, #0x1d
	ldrsb r3, [r1, r3]
	muls r3, r2, r3
	muls r3, r0, r3
	asrs r0, r3, #0xd
_08056944:
	bl kramSetMusicVol
_08056948:
	pop {r0}
	bx r0
_0805694C:
	lsls r2, r0, #0xd
	asrs r0, r2, #0xd
	b _08056944
_08056952:
	ldr r1, _0805697C @ => gKrawall_MusicVolume
	ldr r2, [r1]
	cmp r0, r2
	beq _08056948
	ldr r1, _08056978 @ => gKrawall_MusicVolumeTarget
	str r0, [r1]
	cmp r0, r2
	bge _0805696C
	movs r0, #1
	rsbs r2, r0, #0
_08056966:
	ldr r1, _08056974 @ => gKrawall_MusicVolumeFadeInc
	str r2, [r1]
	b _08056948
_0805696C:
	movs r2, #1
	b _08056966
	.align 2, 0
_08056970: .4byte gKrawall_Player
_08056974: .4byte gKrawall_MusicVolumeFadeInc
_08056978: .4byte gKrawall_MusicVolumeTarget
_0805697C: .4byte gKrawall_MusicVolume
_08056980: .4byte 0x00000163

	thumb_func_start krapGetMusicVol
krapGetMusicVol: @ 0x08056984
	ldr r1, _0805698C @ => gKrawall_MusicVolumeTarget
	ldr r0, [r1]
	bx lr
	.align 2, 0
_0805698C: .4byte gKrawall_MusicVolumeTarget

@ Couldn't find a function that looks similar.
	thumb_func_start FUN_08056990
FUN_08056990: @ 0x08056990
	push {lr}
	lsls r2, r0, #0x18
	lsrs r1, r2, #0x18
	movs r2, #0x64
	muls r2, r1, r2
	ldr r3, _080569C0 @ => gKrawall_Effchns
	adds r1, r2, r3
	ldr r2, [r1, #0x38]
	cmp r2, r0
	beq _080569AA
	movs r0, #0
_080569A6:
	pop {r1}
	bx r1
_080569AA:
	adds r0, r1, #0
	adds r0, #0x4f
	movs r2, #0
	strb r2, [r0]
	ldr r0, [r1]
	ldr r1, _080569C4 @ => gkrawall_KramStop
	bl _call_via_r1
	movs r0, #1
	b _080569A6
	.align 2, 0
_080569C0: .4byte gKrawall_Effchns
_080569C4: .4byte gkrawall_KramStop

	thumb_func_start krapInstProcess
krapInstProcess: @ 0x080569C8
	push {lr}
	ldr r0, _080569D8 @ => gKrawall_Effchns
	movs r1, #6
	bl processInstruments
	pop {r0}
	bx r0
	.align 2, 0
_080569D8: .4byte gKrawall_Effchns

	thumb_func_start krapInstHandleValid
krapInstHandleValid: @ 0x080569DC
	push {lr}
	lsls r1, r0, #0x18
	lsrs r2, r1, #0x18
	movs r1, #0x64
	muls r1, r2, r1
	ldr r3, _08056A00 @ => gKrawall_Effchns
	adds r2, r1, r3
	ldr r1, [r2, #0x38]
	cmp r1, r0
	beq _080569F6
	movs r0, #0
_080569F2:
	pop {r1}
	bx r1
_080569F6:
	ldr r0, [r2]
	bl kramHandleValid
	b _080569F2
	.align 2, 0
_08056A00: .4byte gKrawall_Effchns

	thumb_func_start krapSetChannelVol
krapSetChannelVol: @ 0x08056A04
	push {lr}
	cmp r0, #0x13
	bhi _08056A1C
	cmp r1, #0x40
	bls _08056A10
	movs r1, #0x40
_08056A10:
	movs r3, #0x64
	muls r3, r0, r3
	ldr r2, _08056A20 @ => gKrawall_Player
	adds r3, #0x38
	adds r0, r3, r2
	strb r1, [r0, #1]
_08056A1C:
	pop {r0}
	bx r0
	.align 2, 0
_08056A20: .4byte gKrawall_Player

	thumb_func_start krapGetChannelVol
krapGetChannelVol: @ 0x08056A24
	push {lr}
	cmp r0, #0x13
	bls _08056A30
	movs r0, #0
_08056A2C:
	pop {r1}
	bx r1
_08056A30:
	movs r3, #0x64
	muls r3, r0, r3
	ldr r0, _08056A40 @ => gKrawall_Player
	adds r3, #0x38
	adds r1, r3, r0
	movs r0, #1
	ldrsb r0, [r1, r0]
	b _08056A2C
	.align 2, 0
_08056A40: .4byte gKrawall_Player

	thumb_func_start krapInit
krapInit: @ 0x08056A44
	push {lr}
	ldr r3, _08056A60 @ => gKrawall_Effchns
	ldr r0, _08056A64 @ => 0xtable_sine
	movs r2, #6
	movs r1, #0x40
_08056A4E:
	subs r2, #1
	str r0, [r3, #0x28]
	strb r1, [r3, #5]
	adds r3, #0x64
	cmp r2, #0
	bne _08056A4E
	pop {r0}
	bx r0
	.align 2, 0
_08056A60: .4byte gKrawall_Effchns
_08056A64: .4byte table_sine

	thumb_func_start calcPeriodAmiga
calcPeriodAmiga: @ 0x08056A68
	ldr r3, _08056A84 @ => 0x09FB50E8
	lsls r2, r0, #1
	ldrh r0, [r3, r2]
	ldrb r2, [r1, #0xc]
	lsls r1, r2, #0x18
	asrs r2, r1, #0x1a
	lsls r3, r2, #1
	ldr r2, _08056A88 @ => 0x09FB51D8
	adds r3, #0x40
	ldrh r1, [r2, r3]
	muls r0, r1, r0
	lsls r1, r0, #1
	lsrs r0, r1, #0x10
	bx lr
	.align 2, 0
_08056A84: .4byte table_periods
_08056A88: .4byte table_finetune

	thumb_func_start calcFinalFreqAmiga
calcFinalFreqAmiga: @ 0x08056A8C
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	add r0, sp, #4
	ldr r4, _08056AB0 @ => 0x00DA7790
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	beq _08056AA0
	svc #6
_08056AA0:
	ldr r2, [sp]
	str r0, [r2]
	ldr r0, [sp, #4]
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08056AB0: .4byte 0x00DA7790

	thumb_func_start calcPeriodLinear
calcPeriodLinear: @ 0x08056AB4
	ldrb r2, [r1, #0xc]
	lsls r1, r2, #0x18
	asrs r2, r1, #0x19
	lsls r0, r0, #6
	movs r1, #0xc0
	adds r3, r2, r0
	lsls r0, r1, #3
	adds r1, r3, r0
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	bx lr

	thumb_func_start calcFinalFreqLinear
calcFinalFreqLinear: @ 0x08056ACC
	ldr r2, _08056AEC @ => 0x0000AAAB
	lsrs r1, r0, #6
	muls r1, r2, r1
	lsrs r2, r1, #0x13
	lsls r3, r2, #1
	adds r1, r3, r2
	lsls r3, r1, #8
	subs r1, r0, r3
	movs r3, #0x17
	lsls r0, r1, #2
	subs r1, r3, r2
	ldr r2, _08056AF0 @ => 0x09FB5258
	ldr r0, [r2, r0]
	lsrs r0, r1
	bx lr
	.align 2, 0
_08056AEC: .4byte 0x0000AAAB
_08056AF0: .4byte table_linear

	thumb_func_start eff_speed
eff_speed: @ 0x08056AF4
	push {lr}
	ldrb r2, [r0, #0x1d]
	adds r0, r2, #0
	cmp r0, #0
	beq _08056B02
	ldr r0, _08056B08 @ => gKrawall_Player
	strb r2, [r0, #0x10]
_08056B02:
	pop {r0}
	bx r0
	.align 2, 0
_08056B08: .4byte gKrawall_Player

	thumb_func_start eff_bpm
eff_bpm: @ 0x08056B0C
	push {lr}
	ldrb r3, [r0, #0x1d]
	cmp r3, #0x1f
	bls _08056B24
	ldr r0, _08056B28 @ => gKrawall_Player
	adds r2, r3, #0
	movs r1, #0x18
	strh r2, [r0, #0xc]
	adds r0, r2, #0
	muls r0, r1, r0
	bl kramSetSoundTimerBPM
_08056B24:
	pop {r0}
	bx r0
	.align 2, 0
_08056B28: .4byte gKrawall_Player

	thumb_func_start eff_speedbpm
eff_speedbpm: @ 0x08056B2C
	push {lr}
	ldrb r2, [r0, #0x1d]
	adds r1, r2, #0
	cmp r1, #0x1f
	bls _08056B4A
	ldrb r2, [r0, #0x1d]
	ldr r0, _08056B50 @ => gKrawall_Player
	movs r1, #0x18
	strh r2, [r0, #0xc]
	adds r0, r2, #0
	muls r0, r1, r0
	bl kramSetSoundTimerBPM
_08056B46:
	pop {r0}
	bx r0
_08056B4A:
	ldr r1, _08056B50 @ => gKrawall_Player
	strb r2, [r1, #0x10]
	b _08056B46
	.align 2, 0
_08056B50: .4byte gKrawall_Player

	thumb_func_start eff_mark
eff_mark: @ 0x08056B54
	push {lr}
	ldr r1, _08056B6C @ => gKrawall_Callback
	ldr r3, [r1]
	cmp r3, #0
	beq _08056B66
	ldrb r1, [r0, #0x1d]
	movs r0, #3
	bl _call_via_r3
_08056B66:
	pop {r0}
	bx r0
	.align 2, 0
_08056B6C: .4byte gKrawall_Callback

	thumb_func_start eff_volslide_df
eff_volslide_df: @ 0x08056B70
	push {lr}
	adds r1, r0, #0
	ldrb r2, [r1, #0x1d]
	adds r0, r2, #0
	cmp r0, #0
	beq _08056BC0
	adds r3, r1, #0
	adds r3, #0x41
	strb r2, [r3]
_08056B82:
	ldrb r0, [r1, #4]
	ldrb r2, [r3]
	subs r3, r0, r2
	lsls r0, r3, #0x18
	strb r3, [r1, #4]
	cmp r0, #0
	blt _08056BBA
_08056B90:
	ldrb r3, [r1, #4]
	lsls r2, r3, #0x18
	strb r3, [r1, #8]
	asrs r3, r2, #0x18
	movs r2, #5
	ldrsb r2, [r1, r2]
	muls r2, r3, r2
	adds r3, r1, #0
	adds r3, #0x51
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	ldr r0, [r1]
	adds r1, r3, #0
	muls r1, r2, r1
	ldr r2, _08056BC8 @ => gKrawall_KramSetVol
	asrs r1, r1, #0xc
	bl _call_via_r2
	pop {r0}
	bx r0
_08056BBA:
	movs r2, #0
	strb r2, [r1, #4]
	b _08056B90
_08056BC0:
	adds r3, r1, #0
	adds r3, #0x41
	b _08056B82
	.align 2, 0
_08056BC8: .4byte gKrawall_KramSetVol

	thumb_func_start eff_volslide_uf
eff_volslide_uf: @ 0x08056BCC
	push {lr}
	adds r1, r0, #0
	ldrb r2, [r1, #0x1d]
	adds r0, r2, #0
	cmp r0, #0
	beq _08056C1E
	adds r3, r1, #0
	adds r3, #0x41
	strb r2, [r3]
_08056BDE:
	ldrb r2, [r3]
	ldrb r3, [r1, #4]
	adds r0, r3, r2
	movs r2, #0x80
	strb r0, [r1, #4]
	lsls r3, r0, #0x18
	lsls r0, r2, #0x17
	cmp r3, r0
	ble _08056BF4
	movs r2, #0x40
	strb r2, [r1, #4]
_08056BF4:
	ldrb r3, [r1, #4]
	lsls r2, r3, #0x18
	strb r3, [r1, #8]
	asrs r3, r2, #0x18
	movs r2, #5
	ldrsb r2, [r1, r2]
	muls r2, r3, r2
	adds r3, r1, #0
	adds r3, #0x51
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	ldr r0, [r1]
	adds r1, r3, #0
	muls r1, r2, r1
	ldr r2, _08056C24 @ => gKrawall_KramSetVol
	asrs r1, r1, #0xc
	bl _call_via_r2
	pop {r0}
	bx r0
_08056C1E:
	adds r3, r1, #0
	adds r3, #0x41
	b _08056BDE
	.align 2, 0
_08056C24: .4byte gKrawall_KramSetVol

	thumb_func_start eff_gvolume
eff_gvolume: @ 0x08056C28
	push {lr}
	ldrb r2, [r0, #0x1d]
	adds r0, r2, #0
	cmp r0, #0x40
	bls _08056C34
	movs r2, #0x40
_08056C34:
	ldr r0, _08056C64 @ => gKrawall_Player
	strb r2, [r0, #0x1d]
	adds r1, r0, #0
	ldr r3, [r1, #8]
	cmp r3, #0
	beq _08056C5C
	ldr r0, _08056C68 @ => 0x00000163
	adds r3, r3, r0
	movs r2, #0x1d
	ldrsb r2, [r1, r2]
	ldrb r0, [r3]
	muls r0, r2, r0
	ldr r2, _08056C6C @ => gKrawall_MusicVolume
	ldr r1, [r2]
	muls r1, r0, r1
_08056C52:
	asrs r0, r1, #0xd
	bl kramSetMusicVol
	pop {r0}
	bx r0
_08056C5C:
	ldr r0, _08056C6C @ => gKrawall_MusicVolume
	ldr r2, [r0]
	lsls r1, r2, #0xd
	b _08056C52
	.align 2, 0
_08056C64: .4byte gKrawall_Player
_08056C68: .4byte 0x00000163
_08056C6C: .4byte gKrawall_MusicVolume

	thumb_func_start eff_cvolume
eff_cvolume: @ 0x08056C70
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0x1d]
	movs r2, #0x80
	strb r0, [r1, #5]
	lsls r3, r0, #0x18
	lsls r0, r2, #0x17
	cmp r3, r0
	ble _08056C86
	movs r2, #0x40
	strb r2, [r1, #5]
_08056C86:
	movs r3, #5
	ldrsb r3, [r1, r3]
	movs r2, #8
	ldrsb r2, [r1, r2]
	muls r2, r3, r2
	adds r3, r1, #0
	adds r3, #0x51
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	ldr r0, [r1]
	adds r1, r3, #0
	muls r1, r2, r1
	ldr r2, _08056CAC @ => gKrawall_KramSetVol
	asrs r1, r1, #0xc
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_08056CAC: .4byte gKrawall_KramSetVol

	thumb_func_start eff_portaup_xm
eff_portaup_xm: @ 0x08056CB0
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #0
	beq _08056CCC
	ldrb r2, [r4, #0x1d]
	adds r0, r2, #0
	cmp r0, #0
	beq _08056CC6
	adds r0, r4, #0
	adds r0, #0x48
	strb r2, [r0]
_08056CC6:
	pop {r4}
	pop {r0}
	bx r0
_08056CCC:
	adds r2, r4, #0
	adds r2, #0x48
	ldrb r1, [r2]
	ldrh r2, [r4, #0xe]
	lsls r0, r1, #2
	adds r1, r2, r0
	ldr r2, _08056CF4 @ => gKrawall_Player
	lsls r3, r1, #0x10
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x10]
	asrs r0, r3, #0x10
	ldr r1, [r2, #0x28]
	bl _call_via_r1
	ldr r2, _08056CF8 @ => gKrawall_KramSetFreq
	adds r1, r0, #0
	ldr r0, [r4]
	bl _call_via_r2
	b _08056CC6
	.align 2, 0
_08056CF4: .4byte gKrawall_Player
_08056CF8: .4byte gKrawall_KramSetFreq

	thumb_func_start eff_portaup_f
eff_portaup_f: @ 0x08056CFC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0x1d]
	adds r0, r2, #0
	cmp r0, #0
	beq _08056D36
	adds r3, r4, #0
	adds r3, #0x49
	strb r2, [r3]
_08056D0E:
	ldrb r1, [r3]
	ldrh r2, [r4, #0xe]
	lsls r0, r1, #2
	adds r1, r2, r0
	ldr r2, _08056D3C @ => gKrawall_Player
	lsls r3, r1, #0x10
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x10]
	asrs r0, r3, #0x10
	ldr r1, [r2, #0x28]
	bl _call_via_r1
	ldr r2, _08056D40 @ => gKrawall_KramSetFreq
	adds r1, r0, #0
	ldr r0, [r4]
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0
_08056D36:
	adds r3, r4, #0
	adds r3, #0x49
	b _08056D0E
	.align 2, 0
_08056D3C: .4byte gKrawall_Player
_08056D40: .4byte gKrawall_KramSetFreq

	thumb_func_start eff_portaup_ef
eff_portaup_ef: @ 0x08056D44
	push {r4, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0x1d]
	adds r0, r2, #0
	cmp r0, #0
	beq _08056D7C
	adds r3, r4, #0
	adds r3, #0x4a
	strb r2, [r3]
_08056D56:
	ldrb r0, [r3]
	ldrh r2, [r4, #0xe]
	adds r1, r2, r0
	ldr r2, _08056D84 @ => gKrawall_Player
	lsls r3, r1, #0x10
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x10]
	asrs r0, r3, #0x10
	ldr r1, [r2, #0x28]
	bl _call_via_r1
	ldr r2, _08056D88 @ => gKrawall_KramSetFreq
	adds r1, r0, #0
	ldr r0, [r4]
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0
_08056D7C:
	adds r3, r4, #0
	adds r3, #0x4a
	b _08056D56
	.align 2, 0
_08056D84: .4byte gKrawall_Player
_08056D88: .4byte gKrawall_KramSetFreq

	thumb_func_start eff_portadown_xm
eff_portadown_xm: @ 0x08056D8C
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #0
	beq _08056DA8
	ldrb r2, [r4, #0x1d]
	adds r0, r2, #0
	cmp r0, #0
	beq _08056DA2
	adds r0, r4, #0
	adds r0, #0x48
	strb r2, [r0]
_08056DA2:
	pop {r4}
	pop {r0}
	bx r0
_08056DA8:
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r2, [r0]
	ldrh r0, [r4, #0xe]
	lsls r3, r2, #2
	subs r2, r0, r3
	lsls r3, r2, #0x10
	asrs r0, r3, #0x10
	strh r2, [r4, #0xe]
	cmp r0, #0
	ble _08056DD4
	strh r2, [r4, #0x10]
	ldr r2, _08056DE4 @ => gKrawall_Player
	ldr r1, [r2, #0x28]
	bl _call_via_r1
	ldr r2, _08056DE8 @ => gKrawall_KramSetFreq
	adds r1, r0, #0
	ldr r0, [r4]
	bl _call_via_r2
	b _08056DA2
_08056DD4:
	adds r2, r4, #0
	adds r2, #0x4f
	strb r1, [r2]
	ldr r1, _08056DEC @ => gkrawall_KramStop
	ldr r0, [r4]
	bl _call_via_r1
	b _08056DA2
	.align 2, 0
_08056DE4: .4byte gKrawall_Player
_08056DE8: .4byte gKrawall_KramSetFreq
_08056DEC: .4byte gkrawall_KramStop

	thumb_func_start eff_portadown_f
eff_portadown_f: @ 0x08056DF0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0x1d]
	adds r0, r2, #0
	cmp r0, #0
	beq _08056E40
	adds r3, r4, #0
	adds r3, #0x49
	strb r2, [r3]
_08056E02:
	ldrb r2, [r3]
	ldrh r0, [r4, #0xe]
	lsls r1, r2, #2
	subs r2, r0, r1
	lsls r1, r2, #0x10
	asrs r0, r1, #0x10
	strh r2, [r4, #0xe]
	cmp r0, #0
	ble _08056E2E
	strh r2, [r4, #0x10]
	ldr r2, _08056E48 @ => gKrawall_Player
	ldr r1, [r2, #0x28]
	bl _call_via_r1
	ldr r2, _08056E4C @ => gKrawall_KramSetFreq
	adds r1, r0, #0
	ldr r0, [r4]
	bl _call_via_r2
_08056E28:
	pop {r4}
	pop {r0}
	bx r0
_08056E2E:
	adds r0, r4, #0
	adds r0, #0x4f
	movs r2, #0
	strb r2, [r0]
	ldr r1, _08056E50 @ => gkrawall_KramStop
	ldr r0, [r4]
	bl _call_via_r1
	b _08056E28
_08056E40:
	adds r3, r4, #0
	adds r3, #0x49
	b _08056E02
	.align 2, 0
_08056E48: .4byte gKrawall_Player
_08056E4C: .4byte gKrawall_KramSetFreq
_08056E50: .4byte gkrawall_KramStop

	thumb_func_start eff_portadown_ef
eff_portadown_ef: @ 0x08056E54
	push {r4, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0x1d]
	adds r0, r2, #0
	cmp r0, #0
	beq _08056EA2
	adds r3, r4, #0
	adds r3, #0x4a
	strb r2, [r3]
_08056E66:
	ldrb r1, [r3]
	ldrh r0, [r4, #0xe]
	subs r2, r0, r1
	lsls r1, r2, #0x10
	asrs r0, r1, #0x10
	strh r2, [r4, #0xe]
	cmp r0, #0
	ble _08056E90
	strh r2, [r4, #0x10]
	ldr r2, _08056EA8 @ => gKrawall_Player
	ldr r1, [r2, #0x28]
	bl _call_via_r1
	ldr r2, _08056EAC @ => gKrawall_KramSetFreq
	adds r1, r0, #0
	ldr r0, [r4]
	bl _call_via_r2
_08056E8A:
	pop {r4}
	pop {r0}
	bx r0
_08056E90:
	adds r0, r4, #0
	adds r0, #0x4f
	movs r1, #0
	strb r1, [r0]
	ldr r2, _08056EB0 @ => gkrawall_KramStop
	ldr r0, [r4]
	bl _call_via_r2
	b _08056E8A
_08056EA2:
	adds r3, r4, #0
	adds r3, #0x4a
	b _08056E66
	.align 2, 0
_08056EA8: .4byte gKrawall_Player
_08056EAC: .4byte gKrawall_KramSetFreq
_08056EB0: .4byte gkrawall_KramStop

	thumb_func_start eff_vibrato
eff_vibrato: @ 0x08056EB4
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r1, #0
	beq _08056F1A
	adds r1, r5, #0
	adds r1, #0x4d
	ldrb r0, [r1]
	cmp r0, #0
	beq _08056EDA
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r0, [r2]
	cmp r0, #0
	beq _08056EDA
	ldr r2, _08056F68 @ => gKrawall_Player
	adds r1, r5, #0
	ldrb r0, [r2, #0x1f]
	adds r1, #0x24
	strb r0, [r1]
_08056EDA:
	ldrb r2, [r5, #0x1d]
	movs r3, #0xf
	ands r3, r2
	cmp r3, #0
	beq _08056EEE
	adds r1, r5, #0
	lsls r0, r3, #2
	adds r1, #0x26
	strb r0, [r1]
	ldrb r2, [r5, #0x1d]
_08056EEE:
	movs r1, #0xf0
	ands r1, r2
	cmp r1, #0
	beq _08056EFE
	adds r0, r5, #0
	lsrs r3, r2, #4
	adds r0, #0x25
	strb r3, [r0]
_08056EFE:
	adds r2, r5, #0
	adds r2, #0x4c
	ldrb r1, [r2]
	cmp r1, #0
	beq _08056F0E
	ldrb r0, [r5, #0x1c]
	cmp r0, #0x17
	beq _08056F14
_08056F0E:
	pop {r4, r5}
	pop {r0}
	bx r0
_08056F14:
	movs r1, #0
	strb r1, [r2]
	b _08056F0E
_08056F1A:
	adds r4, r5, #0
	adds r4, #0x26
	ldrb r1, [r4]
	adds r4, r5, #0
	adds r4, #0x24
	ldrb r0, [r4]
	ldr r2, [r5, #0x28]
	lsls r3, r0, #1
	ldrsh r3, [r3, r2]
	muls r3, r1, r3
	ldrh r2, [r5, #0xe]
	asrs r0, r3, #7
	adds r1, r2, r0
	lsls r3, r1, #0x10
	ldr r2, _08056F68 @ => gKrawall_Player
	lsrs r0, r3, #0x10
	ldr r1, [r2, #0x28]
	strh r0, [r5, #0x10]
	bl _call_via_r1
	ldr r2, _08056F6C @ => gKrawall_KramSetFreq
	adds r1, r0, #0
	ldr r0, [r5]
	bl _call_via_r2
	adds r1, r5, #0
	adds r1, #0x25
	ldrb r0, [r4]
	ldrb r3, [r1]
	adds r1, r0, r3
	movs r0, #0x3f
	ands r1, r0
	adds r0, r5, #0
	adds r0, #0x4c
	movs r2, #1
	strb r1, [r4]
	strb r2, [r0]
	b _08056F0E
	.align 2, 0
_08056F68: .4byte gKrawall_Player
_08056F6C: .4byte gKrawall_KramSetFreq

	thumb_func_start eff_offset
eff_offset: @ 0x08056F70
	push {lr}
	ldrb r2, [r0, #0x1d]
	adds r1, r2, #0
	cmp r1, #0
	beq _08056F86
	adds r3, r0, #0
	adds r3, #0x4d
	ldrb r1, [r3]
	cmp r1, #0
	beq _08056F8A
	strb r2, [r0, #7]
_08056F86:
	pop {r0}
	bx r0
_08056F8A:
	ldrb r3, [r0, #0x1d]
	ldr r2, _08056F98 @ => gKrawall_KramSetPos
	lsls r1, r3, #8
	ldr r0, [r0]
	bl _call_via_r2
	b _08056F86
	.align 2, 0
_08056F98: .4byte gKrawall_KramSetPos

	thumb_func_start eff_glissando
eff_glissando: @ 0x08056F9C
	push {lr}
	ldrb r1, [r0, #0x1d]
	movs r2, #0
	cmp r1, #0
	beq _08056FA8
	movs r2, #1
_08056FA8:
	adds r1, r0, #0
	adds r1, #0x3c
	strb r2, [r1]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start eff_wave_vibr
eff_wave_vibr: @ 0x08056FB4
	push {lr}
	ldrb r2, [r0, #0x1d]
	movs r3, #3
	ands r3, r2
	cmp r3, #1
	beq _08057002
	cmp r3, #1
	bgt _08056FEE
	cmp r3, #0
	beq _08056FE8
_08056FC8:
	lsls r3, r2, #0x18
	movs r2, #0xc0
	lsls r1, r2, #0x12
	cmp r3, r1
	bhi _08056FDE
	adds r1, r0, #0
	adds r1, #0x27
	movs r0, #1
	strb r0, [r1]
_08056FDA:
	pop {r0}
	bx r0
_08056FDE:
	adds r1, r0, #0
	adds r1, #0x27
	movs r2, #0
	strb r2, [r1]
	b _08056FDA
_08056FE8:
	ldr r1, _08057008 @ => 0xtable_sine
	str r1, [r0, #0x28]
	b _08056FC8
_08056FEE:
	cmp r3, #2
	beq _08056FFC
	cmp r3, #3
	bne _08056FC8
	ldr r1, _0805700C @ => 0x09FB5068
	str r1, [r0, #0x28]
	b _08056FC8
_08056FFC:
	ldr r1, _08057010 @ => 0x09FB4FE8
	str r1, [r0, #0x28]
	b _08056FC8
_08057002:
	ldr r1, _08057014 @ => 0x09FB4F68
	str r1, [r0, #0x28]
	b _08056FC8
	.align 2, 0
_08057008: .4byte table_sine
_0805700C: .4byte table_rand
_08057010: .4byte table_square
_08057014: .4byte table_ramp

	thumb_func_start eff_wave_trem
eff_wave_trem: @ 0x08057018
	push {lr}
	ldrb r2, [r0, #0x1d]
	movs r3, #3
	ands r3, r2
	cmp r3, #1
	beq _08057066
	cmp r3, #1
	bgt _08057052
	cmp r3, #0
	beq _0805704C
_0805702C:
	lsls r3, r2, #0x18
	movs r2, #0xc0
	lsls r1, r2, #0x12
	cmp r3, r1
	bhi _08057042
	adds r1, r0, #0
	adds r1, #0x2f
	movs r0, #1
	strb r0, [r1]
_0805703E:
	pop {r0}
	bx r0
_08057042:
	adds r1, r0, #0
	adds r1, #0x2f
	movs r2, #0
	strb r2, [r1]
	b _0805703E
_0805704C:
	ldr r1, _0805706C @ => 0xtable_sine
	str r1, [r0, #0x30]
	b _0805702C
_08057052:
	cmp r3, #2
	beq _08057060
	cmp r3, #3
	bne _0805702C
	ldr r1, _08057070 @ => 0x09FB5068
	str r1, [r0, #0x30]
	b _0805702C
_08057060:
	ldr r1, _08057074 @ => 0x09FB4FE8
	str r1, [r0, #0x30]
	b _0805702C
_08057066:
	ldr r1, _08057078 @ => 0x09FB4F68
	str r1, [r0, #0x30]
	b _0805702C
	.align 2, 0
_0805706C: .4byte table_sine
_08057070: .4byte table_rand
_08057074: .4byte table_square
_08057078: .4byte table_ramp

	thumb_func_start eff_wave_panb
eff_wave_panb: @ 0x0805707C
	push {lr}
	ldrb r2, [r0, #0x1d]
	movs r3, #3
	ands r3, r2
	cmp r3, #1
	beq _080570CA
	cmp r3, #1
	bgt _080570B6
	cmp r3, #0
	beq _080570B0
_08057090:
	lsls r3, r2, #0x18
	movs r2, #0xc0
	lsls r1, r2, #0x12
	cmp r3, r1
	bhi _080570A6
	adds r1, r0, #0
	adds r1, #0x37
	movs r0, #1
	strb r0, [r1]
_080570A2:
	pop {r0}
	bx r0
_080570A6:
	adds r1, r0, #0
	adds r1, #0x37
	movs r2, #0
	strb r2, [r1]
	b _080570A2
_080570B0:
	ldr r1, _080570D0 @ => 0xtable_sine
	str r1, [r0, #0x38]
	b _08057090
_080570B6:
	cmp r3, #2
	beq _080570C4
	cmp r3, #3
	bne _08057090
	ldr r1, _080570D4 @ => 0x09FB5068
	str r1, [r0, #0x38]
	b _08057090
_080570C4:
	ldr r1, _080570D8 @ => 0x09FB4FE8
	str r1, [r0, #0x38]
	b _08057090
_080570CA:
	ldr r1, _080570DC @ => 0x09FB4F68
	str r1, [r0, #0x38]
	b _08057090
	.align 2, 0
_080570D0: .4byte table_sine
_080570D4: .4byte table_rand
_080570D8: .4byte table_square
_080570DC: .4byte table_ramp

	thumb_func_start eff_pan
eff_pan: @ 0x080570E0
	push {lr}
	ldrb r2, [r0, #0x1d]
	adds r1, r2, #0
	cmp r1, #0x80
	bls _08057122
	movs r1, #0
_080570EC:
	strb r1, [r0, #6]
	ldrb r1, [r0, #6]
	adds r3, r0, #0
	strb r1, [r0, #9]
	adds r3, #0x5b
	ldrb r2, [r3]
	adds r3, r1, r2
	lsls r1, r3, #0x18
	movs r2, #0x40
	asrs r3, r1, #0x18
	rsbs r2, r2, #0
	cmp r3, r2
	bge _0805710A
	movs r2, #0xc0
	lsls r1, r2, #0x18
_0805710A:
	movs r2, #0x80
	lsls r3, r2, #0x17
	cmp r1, r3
	ble _08057114
	adds r1, r3, #0
_08057114:
	asrs r1, r1, #0x18
	ldr r2, _08057128 @ => gKrawall_KramSetPan
	ldr r0, [r0]
	bl _call_via_r2
	pop {r0}
	bx r0
_08057122:
	adds r1, r2, #0
	subs r1, #0x40
	b _080570EC
	.align 2, 0
_08057128: .4byte gKrawall_KramSetPan

	thumb_func_start eff_patt_jump
eff_patt_jump: @ 0x0805712C
	ldrb r1, [r0, #0x1d]
	ldr r0, _08057134 @ => gKrawall_Player
	strb r1, [r0, #0x13]
	bx lr
	.align 2, 0
_08057134: .4byte gKrawall_Player

	thumb_func_start eff_patt_break
eff_patt_break: @ 0x08057138
	ldrb r1, [r0, #0x1d]
	movs r0, #0xa
	lsrs r2, r1, #4
	muls r2, r0, r2
	movs r0, #0xf
	ands r0, r1
	adds r1, r0, r2
	ldr r0, _0805714C @ => gKrawall_Player
	strh r1, [r0, #0x18]
	bx lr
	.align 2, 0
_0805714C: .4byte gKrawall_Player

	thumb_func_start eff_patternloop
eff_patternloop: @ 0x08057150
	push {lr}
	ldrb r1, [r0, #0x1d]
	adds r0, r1, #0
	cmp r0, #0
	beq _0805718E
	ldr r2, _08057198 @ => gKrawall_Player
	movs r0, #0x1c
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _08057186
_08057164:
	ldrb r0, [r2, #0x1b]
	subs r0, #1
	lsls r1, r0, #0x18
	asrs r3, r1, #0x18
	movs r1, #1
	strb r0, [r2, #0x1b]
	rsbs r0, r1, #0
	cmp r3, r0
	beq _08057180
	movs r0, #0x1a
	ldrsb r0, [r2, r0]
	strh r0, [r2, #0x18]
_0805717C:
	pop {r0}
	bx r0
_08057180:
	movs r1, #0
	strb r1, [r2, #0x1c]
	b _0805717C
_08057186:
	strb r1, [r2, #0x1b]
	movs r1, #1
	strb r1, [r2, #0x1c]
	b _08057164
_0805718E:
	ldr r1, _08057198 @ => gKrawall_Player
	ldrh r2, [r1, #0xe]
	strb r2, [r1, #0x1a]
	b _0805717C
	.align 2, 0
_08057198: .4byte gKrawall_Player

	thumb_func_start eff_notecut
eff_notecut: @ 0x0805719C
	push {lr}
	cmp r1, #0
	beq _080571B4
	ldrb r2, [r0, #0x1d]
	cmp r2, #0
	beq _080571AC
_080571A8:
	pop {r0}
	bx r0
_080571AC:
	adds r1, r0, #0
	adds r1, #0x4d
	strb r2, [r1]
	b _080571A8
_080571B4:
	ldr r2, _080571D0 @ => gKrawall_Player
	ldrb r3, [r0, #0x1d]
	ldrb r2, [r2, #0x11]
	cmp r3, r2
	bne _080571A8
	strb r1, [r0, #4]
	movs r1, #0
	strb r1, [r0, #8]
	ldr r2, _080571D4 @ => gKrawall_KramSetVol
	ldr r0, [r0]
	movs r1, #0
	bl _call_via_r2
	b _080571A8
	.align 2, 0
_080571D0: .4byte gKrawall_Player
_080571D4: .4byte gKrawall_KramSetVol

	thumb_func_start eff_volume
eff_volume: @ 0x080571D8
	push {r4, lr}
	ldrb r2, [r0, #0x1d]
	lsls r1, r2, #0x18
	strb r2, [r0, #4]
	strb r2, [r0, #8]
	asrs r2, r1, #0x18
	movs r1, #5
	ldrsb r1, [r0, r1]
	muls r1, r2, r1
	ldr r4, [r0]
	adds r0, #0x51
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r2, #0
	muls r0, r1, r0
	ldr r2, _08057208 @ => gKrawall_KramSetVol
	asrs r1, r0, #0xc
	adds r0, r4, #0
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08057208: .4byte gKrawall_KramSetVol

	thumb_func_start eff_VC_volslide_down
eff_VC_volslide_down: @ 0x0805720C
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #0
	beq _0805721A
_08057214:
	pop {r4}
	pop {r0}
	bx r0
_0805721A:
	adds r2, r4, #0
	adds r2, #0x61
	ldrb r0, [r2]
	movs r2, #0xf
	ands r2, r0
	ldrb r0, [r4, #4]
	subs r3, r0, r2
	lsls r0, r3, #0x18
	strb r3, [r4, #4]
	cmp r0, #0
	blt _08057256
_08057230:
	ldrb r1, [r4, #4]
	lsls r2, r1, #0x18
	strb r1, [r4, #8]
	asrs r1, r2, #0x18
	movs r2, #5
	ldrsb r2, [r4, r2]
	muls r2, r1, r2
	adds r1, r4, #0
	adds r1, #0x51
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r1, r3, #0
	muls r1, r2, r1
	ldr r0, [r4]
	asrs r1, r1, #0xc
	ldr r2, _0805725C @ => gKrawall_KramSetVol
	bl _call_via_r2
	b _08057214
_08057256:
	strb r1, [r4, #4]
	b _08057230
	.align 2, 0
_0805725C: .4byte gKrawall_KramSetVol

	thumb_func_start eff_VC_volslide_up
eff_VC_volslide_up: @ 0x08057260
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #0
	beq _0805726E
_08057268:
	pop {r4}
	pop {r0}
	bx r0
_0805726E:
	adds r2, r4, #0
	adds r2, #0x61
	ldrb r0, [r2]
	ldrb r1, [r4, #4]
	movs r2, #0xf
	ands r2, r0
	adds r0, r1, r2
	movs r2, #0x80
	strb r0, [r4, #4]
	lsls r1, r0, #0x18
	lsls r0, r2, #0x17
	cmp r1, r0
	ble _0805728C
	movs r1, #0x40
	strb r1, [r4, #4]
_0805728C:
	ldrb r1, [r4, #4]
	lsls r2, r1, #0x18
	strb r1, [r4, #8]
	asrs r1, r2, #0x18
	movs r2, #5
	ldrsb r2, [r4, r2]
	muls r2, r1, r2
	adds r1, r4, #0
	adds r1, #0x51
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r1, r3, #0
	muls r1, r2, r1
	ldr r0, [r4]
	asrs r1, r1, #0xc
	ldr r2, _080572B4 @ => gKrawall_KramSetVol
	bl _call_via_r2
	b _08057268
	.align 2, 0
_080572B4: .4byte gKrawall_KramSetVol

	thumb_func_start eff_VC_fvolslide_down
eff_VC_fvolslide_down: @ 0x080572B8
	push {lr}
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x61
	ldrb r0, [r2]
	movs r2, #0xf
	ands r2, r0
	ldrb r0, [r1, #4]
	subs r3, r0, r2
	lsls r0, r3, #0x18
	strb r3, [r1, #4]
	cmp r0, #0
	blt _080572FC
_080572D2:
	ldrb r3, [r1, #4]
	lsls r2, r3, #0x18
	strb r3, [r1, #8]
	asrs r3, r2, #0x18
	movs r2, #5
	ldrsb r2, [r1, r2]
	muls r2, r3, r2
	adds r3, r1, #0
	adds r3, #0x51
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	ldr r0, [r1]
	adds r1, r3, #0
	muls r1, r2, r1
	ldr r2, _08057304 @ => gKrawall_KramSetVol
	asrs r1, r1, #0xc
	bl _call_via_r2
	pop {r0}
	bx r0
_080572FC:
	movs r0, #0
	strb r0, [r1, #4]
	b _080572D2
	.align 2, 0
_08057304: .4byte gKrawall_KramSetVol

	thumb_func_start eff_VC_fvolslide_up
eff_VC_fvolslide_up: @ 0x08057308
	push {lr}
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x61
	ldrb r0, [r2]
	ldrb r3, [r1, #4]
	movs r2, #0xf
	ands r2, r0
	adds r0, r3, r2
	movs r2, #0x80
	strb r0, [r1, #4]
	lsls r3, r0, #0x18
	lsls r0, r2, #0x17
	cmp r3, r0
	ble _0805732A
	movs r0, #0x40
	strb r0, [r1, #4]
_0805732A:
	ldrb r3, [r1, #4]
	lsls r2, r3, #0x18
	strb r3, [r1, #8]
	asrs r3, r2, #0x18
	movs r2, #5
	ldrsb r2, [r1, r2]
	muls r2, r3, r2
	adds r3, r1, #0
	adds r3, #0x51
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	ldr r0, [r1]
	adds r1, r3, #0
	muls r1, r2, r1
	ldr r2, _08057354 @ => gKrawall_KramSetVol
	asrs r1, r1, #0xc
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_08057354: .4byte gKrawall_KramSetVol

	thumb_func_start eff_VC_vibrato_setspeed
eff_VC_vibrato_setspeed: @ 0x08057358
	push {lr}
	adds r2, r0, #0
	adds r2, #0x61
	ldrb r1, [r2]
	adds r2, r1, #0
	cmp r2, #0
	beq _08057370
	movs r2, #0xf
	ands r2, r1
	adds r1, r0, #0
	adds r1, #0x25
	strb r2, [r1]
_08057370:
	pop {r0}
	bx r0

	thumb_func_start eff_VC_pan
eff_VC_pan: @ 0x08057374
	push {lr}
	adds r1, r0, #0
	adds r1, #0x61
	ldrb r2, [r1]
	adds r1, r2, #0
	cmp r1, #7
	beq _080573C4
	ldr r1, _080573CC @ => 0x00088900
	movs r3, #0xf
	ands r3, r2
	muls r3, r1, r3
	asrs r1, r3, #0x10
	subs r1, #0x40
	strb r1, [r0, #6]
_08057390:
	ldrb r1, [r0, #6]
	adds r3, r0, #0
	strb r1, [r0, #9]
	adds r3, #0x5b
	ldrb r2, [r3]
	adds r3, r1, r2
	lsls r1, r3, #0x18
	movs r2, #0x40
	asrs r3, r1, #0x18
	rsbs r2, r2, #0
	cmp r3, r2
	bge _080573AC
	movs r2, #0xc0
	lsls r1, r2, #0x18
_080573AC:
	movs r2, #0x80
	lsls r3, r2, #0x17
	cmp r1, r3
	ble _080573B6
	adds r1, r3, #0
_080573B6:
	asrs r1, r1, #0x18
	ldr r2, _080573D0 @ => gKrawall_KramSetPan
	ldr r0, [r0]
	bl _call_via_r2
	pop {r0}
	bx r0
_080573C4:
	movs r2, #0
	strb r2, [r0, #6]
	b _08057390
	.align 2, 0
_080573CC: .4byte 0x00088900
_080573D0: .4byte gKrawall_KramSetPan

	thumb_func_start eff_VC_panslide_left
eff_VC_panslide_left: @ 0x080573D4
	push {r4, r5, lr}
	cmp r1, #0
	beq _080573E0
_080573DA:
	pop {r4, r5}
	pop {r0}
	bx r0
_080573E0:
	adds r2, r0, #0
	adds r2, #0x61
	ldrb r4, [r2]
	ldrb r1, [r0, #6]
	movs r5, #0xf
	ands r5, r4
	subs r4, r1, r5
	movs r3, #0xc0
	strb r4, [r0, #6]
	lsls r1, r4, #0x18
	lsls r4, r3, #0x18
	asrs r5, r4, #0x18
	cmp r1, r4
	bge _080573FE
	strb r5, [r0, #6]
_080573FE:
	ldrb r1, [r0, #6]
	adds r3, r0, #0
	strb r1, [r0, #9]
	adds r3, #0x5b
	ldrb r2, [r3]
	adds r3, r1, r2
	lsls r1, r3, #0x18
	asrs r2, r1, #0x18
	cmp r2, r5
	bge _08057414
	adds r1, r4, #0
_08057414:
	movs r2, #0x80
	lsls r3, r2, #0x17
	cmp r1, r3
	ble _0805741E
	adds r1, r3, #0
_0805741E:
	ldr r0, [r0]
	asrs r1, r1, #0x18
	ldr r2, _0805742C @ => gKrawall_KramSetPan
	bl _call_via_r2
	b _080573DA
	.align 2, 0
_0805742C: .4byte gKrawall_KramSetPan

	thumb_func_start eff_VC_panslide_right
eff_VC_panslide_right: @ 0x08057430
	push {lr}
	cmp r1, #0
	beq _0805743A
_08057436:
	pop {r0}
	bx r0
_0805743A:
	adds r2, r0, #0
	adds r2, #0x61
	ldrb r1, [r2]
	ldrb r3, [r0, #6]
	movs r2, #0xf
	ands r2, r1
	adds r1, r3, r2
	movs r2, #0x80
	strb r1, [r0, #6]
	lsls r3, r1, #0x18
	lsls r1, r2, #0x17
	cmp r3, r1
	ble _08057458
	movs r1, #0x40
	strb r1, [r0, #6]
_08057458:
	ldrb r1, [r0, #6]
	adds r3, r0, #0
	strb r1, [r0, #9]
	adds r3, #0x5b
	ldrb r2, [r3]
	adds r3, r1, r2
	lsls r1, r3, #0x18
	movs r2, #0x40
	asrs r3, r1, #0x18
	rsbs r2, r2, #0
	cmp r3, r2
	bge _08057474
	movs r2, #0xc0
	lsls r1, r2, #0x18
_08057474:
	movs r2, #0x80
	lsls r3, r2, #0x17
	cmp r1, r3
	ble _0805747E
	adds r1, r3, #0
_0805747E:
	ldr r0, [r0]
	asrs r1, r1, #0x18
	ldr r2, _0805748C @ => gKrawall_KramSetPan
	bl _call_via_r2
	b _08057436
	.align 2, 0
_0805748C: .4byte gKrawall_KramSetPan

	thumb_func_start eff_VC_portanote
eff_VC_portanote: @ 0x08057490
	push {lr}
	cmp r1, #0
	beq _080574AE
	ldrb r1, [r0, #0x1d]
	cmp r1, #0
	beq _080574AA
	adds r2, r0, #0
	adds r2, #0x61
	ldrb r1, [r2]
	movs r3, #0xf
	ands r3, r1
	lsls r1, r3, #4
	strh r1, [r0, #0x1e]
_080574AA:
	pop {r0}
	bx r0
_080574AE:
	movs r1, #1
	bl eff_portanote
	b _080574AA
	nop

	thumb_func_start kramWorkerSTUB
kramWorkerSTUB: @ 0x080574B8
	ldr r3, _080574E0 @ => gKrawall_KramWorker
	bx r3

	thumb_func_start kramPlaySTUB
kramPlaySTUB: @ 0x080574BC
	ldr r3, _080574E4 @ => gKrawall_KramPlay
	bx r3

	thumb_func_start kramPlayExtSTUB
kramPlayExtSTUB: @ 0x080574C0
	bx pc
	nop
	.arm

	ldr ip, _080574E8 @ => gKrawall_KramPlayExt
	bx ip
	.thumb

	thumb_func_start kramStopSTUB
kramStopSTUB: @ 0x080574CC
	ldr r3, _080574EC @ => gkrawall_KramStop
	bx r3

	thumb_func_start kramSetFreqSTUB
kramSetFreqSTUB: @ 0x080574D0
	ldr r3, _080574F0 @ => gKrawall_KramSetFreq
	bx r3

	thumb_func_start kramSetVolSTUB
kramSetVolSTUB: @ 0x080574D4
	ldr r3, _080574F4 @ => gKrawall_KramSetVol
	bx r3

	thumb_func_start kramSetPanSTUB
kramSetPanSTUB: @ 0x080574D8
	ldr r3, _080574F8 @ => gKrawall_KramSetPan
	bx r3

	thumb_func_start kramSetPosSTUB
kramSetPosSTUB: @ 0x080574DC
	ldr r3, _080574FC @ => gKrawall_KramSetPos
	bx r3
_080574E0: .4byte gKrawall_KramWorker
_080574E4: .4byte gKrawall_KramPlay
_080574E8: .4byte gKrawall_KramPlayExt
_080574EC: .4byte gkrawall_KramStop
_080574F0: .4byte gKrawall_KramSetFreq
_080574F4: .4byte gKrawall_KramSetVol
_080574F8: .4byte gKrawall_KramSetPan
_080574FC: .4byte gKrawall_KramSetPos
