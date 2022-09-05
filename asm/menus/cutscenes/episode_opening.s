.include "asm/constants.s"
.include "asm/macros.s"
.include "data/lists/sounds.inc"

.syntax unified

	thumb_func_start FUN_0801C0A8
FUN_0801C0A8: @ 0x0801C0A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x100
	ldr r0, _0801C0CC @ => 0x03004720
	ldr r1, [r0, #0x14]
	cmp r1, #0xd
	bls _0801C0C0
	bl _0801CA3A
_0801C0C0:
	lsls r0, r1, #2
	ldr r1, _0801C0D0 @ =_0801C0D4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801C0CC: .4byte gUnk_03004720
_0801C0D0: .4byte _0801C0D4
_0801C0D4: @ jump table
	.4byte _0801C10C @ case 0
	.4byte _0801C190 @ case 1
	.4byte _0801C2E4 @ case 2
	.4byte _0801C36C @ case 3
	.4byte _0801C414 @ case 4
	.4byte _0801C468 @ case 5
	.4byte _0801C4B4 @ case 6
	.4byte _0801C530 @ case 7
	.4byte _0801C5E0 @ case 8
	.4byte _0801C640 @ case 9
	.4byte _0801C6A0 @ case 10
	.4byte _0801C760 @ case 11
	.4byte _0801C8FC @ case 12
	.4byte _0801C9EC @ case 13
_0801C10C:
	ldr r0, _0801C178 @ => 0x0805FA60
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C418
	ldr r0, _0801C17C @ => 0x0805FA64
	ldr r1, [r0]
	movs r0, #1
	bl FUN_0800C418
	movs r4, #0
	ldr r5, _0801C180 @ => 0x0000FFFF
	movs r6, #0
	movs r7, #0
	ldr r2, _0801C184 @ => 0x080FBA98
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	str r7, [sp, #0x10]
	str r4, [sp, #0x14]
	add r0, sp, #0x18
	movs r1, #3
	movs r3, #1
	bl FUN_0800D83C
	movs r0, #0
	movs r1, #0
	ldr r2, _0801C188 @ => 0x080FDDA4
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r4, [sp, #0x14]
	add r0, sp, #0x1c
	movs r1, #1
	movs r3, #0xec
	bl FUN_0800D83C
	movs r1, #0x90
	lsls r1, r1, #0xa
	movs r0, #3
	bl FUN_0800CE8C
	movs r0, #0xa0
	lsls r0, r0, #0x13
	strh r5, [r0]
	ldr r1, _0801C18C @ => 0x03004720
	movs r0, #0x2d
	str r0, [r1, #0x18]
	bl _0801CA3A
	.align 2, 0
_0801C178: .4byte ROMREF_0805FA60
_0801C17C: .4byte ROMREF_0805FA64
_0801C180: .4byte 0x0000FFFF
_0801C184: .4byte ROMREF_080FBA98
_0801C188: .4byte ROMREF_080FDDA4
_0801C18C: .4byte gUnk_03004720
_0801C190:
	ldr r4, _0801C2B0 @ => 0x03001B90
	movs r2, #1
	mov r8, r2
	str r2, [r4, #8]
	ldr r0, _0801C2B4 @ => 0x0805FA68
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C434
	movs r1, #0x80
	lsls r1, r1, #4
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
	ldr r0, _0801C2B8 @ => 0x0805FA6C
	ldr r1, [r0]
	movs r0, #2
	bl FUN_0800C434
	movs r1, #0x80
	lsls r1, r1, #3
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
	ldr r0, _0801C2BC @ => 0x0805FA70
	ldr r1, [r0]
	movs r0, #1
	bl FUN_0800C434
	movs r1, #0x80
	lsls r1, r1, #2
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
	ldr r1, _0801C2C0 @ => 0xFFFFF7FF
	ldr r0, [r4]
	ands r0, r1
	str r0, [r4]
	ldr r1, _0801C2C4 @ => 0xFFFFFBFF
	ldr r0, [r4]
	ands r0, r1
	str r0, [r4]
	ldr r1, _0801C2C8 @ => 0xFFFFFDFF
	ldr r0, [r4]
	ands r0, r1
	str r0, [r4]
	movs r5, #0
	movs r0, #0
	str r0, [sp, #0x78]
	movs r1, #0
	str r1, [sp, #0x7c]
	ldr r2, _0801C2CC @ => 0x08101E74
	mov r0, r8
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0xff
	str r0, [sp, #8]
	ldr r1, [sp, #0x78]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x7c]
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	add r0, sp, #0x20
	movs r1, #3
	movs r3, #0
	bl FUN_0800D83C
	movs r1, #0
	movs r2, #0
	str r2, [sp, #0x84]
	ldr r2, _0801C2D0 @ => 0x08107640
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x84]
	str r0, [sp, #0x10]
	mov r1, r8
	str r1, [sp, #0x14]
	add r0, sp, #0x24
	movs r1, #2
	movs r3, #0xf4
	bl FUN_0800D83C
	movs r2, #0
	str r2, [sp, #0x88]
	movs r0, #0
	ldr r2, _0801C2D4 @ => 0x08108C28
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	ldr r1, [sp, #0x88]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, r8
	str r0, [sp, #0x14]
	add r0, sp, #0x28
	movs r1, #1
	movs r3, #0
	bl FUN_0800D83C
	ldr r6, _0801C2D8 @ => 0x0805FA40
	movs r1, #0x1e
	rsbs r1, r1, #0
	str r5, [sp]
	adds r0, r6, #0
	movs r2, #0x4b
	movs r3, #0
	bl FUN_0802D680
	str r0, [r4, #0xc]
	ldr r1, _0801C2DC @ => 0x09FB62EC
	ldr r2, [r1]
	adds r1, r6, #0
	movs r3, #0
	bl FUN_0800192C
	movs r1, #0x80
	lsls r1, r1, #0x10
	movs r0, #1
	movs r2, #0
	bl FUN_0800CB80
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl FUN_0800CE60
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl FUN_0800CB80
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl FUN_0800CB80
	ldr r0, _0801C2E0 @ => 0x03004720
	str r5, [r0, #0xc]
	mov r1, r8
	str r1, [r0, #0x18]
	b _0801CA3A
	.align 2, 0
_0801C2B0: .4byte gUnk_03001B90
_0801C2B4: .4byte ROMREF_0805FA68
_0801C2B8: .4byte ROMREF_0805FA6C
_0801C2BC: .4byte ROMREF_0805FA70
_0801C2C0: .4byte 0xFFFFF7FF
_0801C2C4: .4byte 0xFFFFFBFF
_0801C2C8: .4byte 0xFFFFFDFF
_0801C2CC: .4byte ROMREF_08101E74
_0801C2D0: .4byte ROMREF_08107640
_0801C2D4: .4byte ROMREF_08108C28
_0801C2D8: .4byte ROMREF_0805FA40
_0801C2DC: .4byte ROMREF_09FB62EC
_0801C2E0: .4byte gUnk_03004720
_0801C2E4:
	ldr r4, _0801C354 @ => 0x03001B90
	movs r0, #1
	str r0, [r4, #8]
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl FUN_0800CCCC
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl FUN_0800CCCC
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl FUN_0800CCCC
	ldr r1, _0801C358 @ => 0xFFFFF7FF
	ldr r0, [r4]
	ands r0, r1
	str r0, [r4]
	ldr r1, _0801C35C @ => 0xFFFFFBFF
	ldr r0, [r4]
	ands r0, r1
	str r0, [r4]
	ldr r1, _0801C360 @ => 0xFFFFFDFF
	ldr r0, [r4]
	ands r0, r1
	str r0, [r4]
	ldr r0, _0801C364 @ => 0x0805FA74
	ldr r1, [r0]
	movs r0, #0
	bl FUN_0800C434
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
	movs r4, #0
	movs r2, #0
	str r2, [sp, #0x90]
	movs r0, #0
	ldr r2, _0801C368 @ => 0x0810A9E4
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r1, [sp, #0x90]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	add r0, sp, #0x2c
	movs r1, #0
	movs r3, #0xb1
	b _0801C72C
	.align 2, 0
_0801C354: .4byte gUnk_03001B90
_0801C358: .4byte 0xFFFFF7FF
_0801C35C: .4byte 0xFFFFFBFF
_0801C360: .4byte 0xFFFFFDFF
_0801C364: .4byte ROMREF_0805FA74
_0801C368: .4byte ROMREF_0810A9E4
_0801C36C:
	ldr r4, _0801C3FC @ => 0x03001B90
	movs r0, #1
	str r0, [r4, #8]
	ldr r1, _0801C400 @ => 0xFFFFFEFF
	ldr r0, [r4]
	ands r0, r1
	str r0, [r4]
	ldr r0, _0801C404 @ => 0x0805FA78
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C434
	movs r1, #0x80
	lsls r1, r1, #4
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
	ldr r0, _0801C408 @ => 0x0805FA7C
	ldr r1, [r0]
	movs r0, #2
	bl FUN_0800C434
	movs r1, #0x80
	lsls r1, r1, #3
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
	movs r0, #4
	movs r1, #8
	bl FUN_08045594
	movs r0, #0
	movs r1, #0x10
	bl FUN_080455AC
	movs r4, #0
	movs r2, #0
	str r2, [sp, #0x98]
	movs r0, #0
	ldr r2, _0801C40C @ => 0x0810D6AC
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r1, [sp, #0x98]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	add r0, sp, #0x30
	movs r1, #3
	movs r3, #0
	bl FUN_0800D83C
	ldr r5, _0801C410 @ => 0x0805FAFC
	bl FUN_08050814
	lsls r0, r0, #2
	adds r0, r0, r5
	movs r2, #0
	str r2, [sp, #0xa0]
	movs r1, #0
	ldr r2, [r0]
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [sp, #0xa0]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r4, [sp, #0x14]
	add r0, sp, #0x34
	movs r1, #2
	movs r3, #0
	b _0801C72C
	.align 2, 0
_0801C3FC: .4byte gUnk_03001B90
_0801C400: .4byte 0xFFFFFEFF
_0801C404: .4byte ROMREF_0805FA78
_0801C408: .4byte ROMREF_0805FA7C
_0801C40C: .4byte ROMREF_0810D6AC
_0801C410: .4byte ROMREF_0805FAFC
_0801C414:
	ldr r4, _0801C454 @ => 0x03001B90
	ldr r1, _0801C458 @ => 0xFFFFFBFF
	ldr r0, [r4]
	ands r0, r1
	str r0, [r4]
	ldr r0, _0801C45C @ => 0x0805FA80
	ldr r1, [r0]
	movs r0, #0
	bl FUN_0800C434
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
	ldr r1, _0801C460 @ => 0xFFFFFEFF
	ldr r0, [r4]
	ands r0, r1
	str r0, [r4]
	movs r4, #0
	movs r1, #0
	ldr r2, _0801C464 @ => 0x08110898
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	str r1, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x14]
	add r0, sp, #0x38
	movs r3, #0
	b _0801C72C
	.align 2, 0
_0801C454: .4byte gUnk_03001B90
_0801C458: .4byte 0xFFFFFBFF
_0801C45C: .4byte ROMREF_0805FA80
_0801C460: .4byte 0xFFFFFEFF
_0801C464: .4byte ROMREF_08110898
_0801C468:
	ldr r0, _0801C4A4 @ => 0x0805FA84
	ldr r1, [r0]
	movs r0, #1
	bl FUN_0800C434
	ldr r1, _0801C4A8 @ => 0x03001B90
	movs r2, #0x80
	lsls r2, r2, #2
	ldr r0, [r1]
	orrs r0, r2
	str r0, [r1]
	ldr r2, _0801C4AC @ => 0xFFFFFDFF
	ldr r0, [r1]
	ands r0, r2
	str r0, [r1]
	movs r4, #0
	movs r5, #0
	ldr r2, _0801C4B0 @ => 0x08113CCC
	movs r3, #0xd3
	lsls r3, r3, #1
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x14]
	add r0, sp, #0x3c
	movs r1, #1
	b _0801C72C
	.align 2, 0
_0801C4A4: .4byte ROMREF_0805FA84
_0801C4A8: .4byte gUnk_03001B90
_0801C4AC: .4byte 0xFFFFFDFF
_0801C4B0: .4byte ROMREF_08113CCC
_0801C4B4:
	ldr r0, _0801C51C @ => 0x0805FA88
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C434
	ldr r4, _0801C520 @ => 0x03001B90
	movs r1, #0x80
	lsls r1, r1, #4
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
	ldr r0, _0801C524 @ => 0x0805FA8C
	ldr r1, [r0]
	movs r0, #2
	bl FUN_0800C434
	movs r1, #0x80
	lsls r1, r1, #3
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
	movs r4, #0
	movs r2, #0
	str r2, [sp, #0xac]
	ldr r2, _0801C528 @ => 0x08117244
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, [sp, #0xac]
	str r0, [sp, #0x10]
	movs r5, #0x21
	str r5, [sp, #0x14]
	add r0, sp, #0x40
	movs r1, #3
	movs r3, #0
	bl FUN_0800D83C
	movs r1, #0
	movs r2, #0
	str r2, [sp, #0xb4]
	ldr r2, _0801C52C @ => 0x0811B9B8
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0xb4]
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	add r0, sp, #0x44
	b _0801C728
	.align 2, 0
_0801C51C: .4byte ROMREF_0805FA88
_0801C520: .4byte gUnk_03001B90
_0801C524: .4byte ROMREF_0805FA8C
_0801C528: .4byte ROMREF_08117244
_0801C52C: .4byte ROMREF_0811B9B8
_0801C530:
	ldr r4, _0801C5BC @ => 0x03001B90
	ldr r1, _0801C5C0 @ => 0xFFFFFEFF
	ldr r0, [r4]
	ands r0, r1
	str r0, [r4]
	ldr r1, _0801C5C4 @ => 0xFFFFFDFF
	ldr r0, [r4]
	ands r0, r1
	str r0, [r4]
	ldr r1, _0801C5C8 @ => 0xFFFFFBFF
	ldr r0, [r4]
	ands r0, r1
	str r0, [r4]
	ldr r5, _0801C5CC @ => 0xFFFFF7FF
	ldr r0, [r4]
	ands r0, r5
	str r0, [r4]
	ldr r0, _0801C5D0 @ => 0x0805FA98
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C434
	movs r1, #0x80
	lsls r1, r1, #4
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
	movs r0, #3
	movs r1, #0xf0
	movs r2, #0
	bl FUN_0800CCCC
	ldr r0, [r4]
	ands r0, r5
	str r0, [r4]
	movs r5, #0
	movs r1, #0
	movs r2, #0
	str r2, [sp, #0xbc]
	ldr r2, _0801C5D4 @ => 0x0811CCD8
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0xbc]
	str r0, [sp, #0x10]
	movs r0, #0x21
	str r0, [sp, #0x14]
	add r0, sp, #0x48
	movs r1, #3
	movs r3, #0
	bl FUN_0800D83C
	ldr r6, _0801C5D8 @ => 0x0805FA40
	movs r1, #0x80
	lsls r1, r1, #1
	str r5, [sp]
	adds r0, r6, #0
	movs r2, #0x32
	movs r3, #0
	bl FUN_0802D680
	str r0, [r4, #0xc]
	ldr r1, _0801C5DC @ => 0x09FB62EC
	ldr r2, [r1]
	adds r1, r6, #0
	movs r3, #0
	bl FUN_0800192C
	b _0801C8BC
	.align 2, 0
_0801C5BC: .4byte gUnk_03001B90
_0801C5C0: .4byte 0xFFFFFEFF
_0801C5C4: .4byte 0xFFFFFDFF
_0801C5C8: .4byte 0xFFFFFBFF
_0801C5CC: .4byte 0xFFFFF7FF
_0801C5D0: .4byte ROMREF_0805FA98
_0801C5D4: .4byte ROMREF_0811CCD8
_0801C5D8: .4byte ROMREF_0805FA40
_0801C5DC: .4byte ROMREF_09FB62EC
_0801C5E0:
	ldr r4, _0801C630 @ => 0x03001B90
	movs r0, #1
	str r0, [r4, #8]
	ldr r1, _0801C634 @ => 0xFFFFF7FF
	ldr r0, [r4]
	ands r0, r1
	str r0, [r4]
	ldr r0, _0801C638 @ => 0x0805FA9C
	ldr r1, [r0]
	movs r0, #2
	bl FUN_0800C434
	movs r1, #0x80
	lsls r1, r1, #3
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl FUN_0800CCCC
	movs r4, #0
	movs r1, #0
	movs r2, #0
	str r2, [sp, #0xc4]
	ldr r2, _0801C63C @ => 0x08126068
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0xc4]
	str r0, [sp, #0x10]
	movs r0, #0x20
	str r0, [sp, #0x14]
	add r0, sp, #0x4c
	movs r1, #2
	movs r3, #0
	b _0801C72C
	.align 2, 0
_0801C630: .4byte gUnk_03001B90
_0801C634: .4byte 0xFFFFF7FF
_0801C638: .4byte ROMREF_0805FA9C
_0801C63C: .4byte ROMREF_08126068
_0801C640:
	ldr r4, _0801C690 @ => 0x03001B90
	movs r0, #1
	str r0, [r4, #8]
	ldr r1, _0801C694 @ => 0xFFFFFBFF
	ldr r0, [r4]
	ands r0, r1
	str r0, [r4]
	ldr r0, _0801C698 @ => 0x0805FAA0
	ldr r1, [r0]
	movs r0, #1
	bl FUN_0800C434
	movs r1, #0x80
	lsls r1, r1, #2
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl FUN_0800CCCC
	movs r4, #0
	movs r1, #0
	movs r2, #0
	str r2, [sp, #0xcc]
	ldr r2, _0801C69C @ => 0x0812A87C
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0xcc]
	str r0, [sp, #0x10]
	movs r0, #0x20
	str r0, [sp, #0x14]
	add r0, sp, #0x50
	movs r1, #1
	movs r3, #0
	b _0801C72C
	.align 2, 0
_0801C690: .4byte gUnk_03001B90
_0801C694: .4byte 0xFFFFFBFF
_0801C698: .4byte ROMREF_0805FAA0
_0801C69C: .4byte ROMREF_0812A87C
_0801C6A0:
	ldr r4, _0801C738 @ => 0x03001B90
	ldr r1, _0801C73C @ => 0xFFFFFEFF
	ldr r0, [r4]
	ands r0, r1
	str r0, [r4]
	ldr r1, _0801C740 @ => 0xFFFFFDFF
	ldr r0, [r4]
	ands r0, r1
	str r0, [r4]
	ldr r0, _0801C744 @ => 0x0805FAA8
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C434
	movs r1, #0x80
	lsls r1, r1, #4
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
	ldr r0, _0801C748 @ => 0x0805FAAC
	ldr r1, [r0]
	movs r0, #2
	bl FUN_0800C434
	movs r1, #0x80
	lsls r1, r1, #3
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
	ldr r1, _0801C74C @ => 0xFFFFF7FF
	ldr r0, [r4]
	ands r0, r1
	str r0, [r4]
	ldr r1, _0801C750 @ => 0xFFFFFBFF
	ldr r0, [r4]
	ands r0, r1
	str r0, [r4]
	movs r4, #0
	movs r1, #0
	movs r2, #0
	str r2, [sp, #0xd4]
	ldr r2, _0801C754 @ => 0x08130178
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0xd4]
	str r0, [sp, #0x10]
	movs r0, #0x20
	str r0, [sp, #0x14]
	add r0, sp, #0x54
	movs r1, #3
	movs r3, #0
	bl FUN_0800D83C
	movs r1, #0
	movs r2, #0
	str r2, [sp, #0xdc]
	ldr r2, _0801C758 @ => 0x08133DC0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0xdc]
	str r0, [sp, #0x10]
	movs r0, #0x21
	str r0, [sp, #0x14]
	add r0, sp, #0x58
_0801C728:
	movs r1, #2
	movs r3, #1
_0801C72C:
	bl FUN_0800D83C
	ldr r0, _0801C75C @ => 0x03004720
	str r4, [r0, #0xc]
	b _0801CA3A
	.align 2, 0
_0801C738: .4byte gUnk_03001B90
_0801C73C: .4byte 0xFFFFFEFF
_0801C740: .4byte 0xFFFFFDFF
_0801C744: .4byte ROMREF_0805FAA8
_0801C748: .4byte ROMREF_0805FAAC
_0801C74C: .4byte 0xFFFFF7FF
_0801C750: .4byte 0xFFFFFBFF
_0801C754: .4byte ROMREF_08130178
_0801C758: .4byte ROMREF_08133DC0
_0801C75C: .4byte gUnk_03004720
_0801C760:
	ldr r0, _0801C8C4 @ => 0x0805FAB8
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C434
	ldr r4, _0801C8C8 @ => 0x03001B90
	movs r1, #0x80
	lsls r1, r1, #4
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
	ldr r0, _0801C8CC @ => 0x0805FABC
	ldr r1, [r0]
	movs r0, #2
	bl FUN_0800C434
	movs r1, #0x80
	lsls r1, r1, #3
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
	ldr r0, _0801C8D0 @ => 0x0805FAC0
	ldr r1, [r0]
	movs r0, #1
	bl FUN_0800C434
	movs r1, #0x80
	lsls r1, r1, #2
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
	ldr r0, _0801C8D4 @ => 0x0805FAC4
	ldr r1, [r0]
	movs r0, #0
	bl FUN_0800C434
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
	ldr r1, _0801C8D8 @ => 0xFFFFF7FF
	ldr r0, [r4]
	ands r0, r1
	str r0, [r4]
	ldr r1, _0801C8DC @ => 0xFFFFFBFF
	ldr r0, [r4]
	ands r0, r1
	str r0, [r4]
	ldr r1, _0801C8E0 @ => 0xFFFFFDFF
	ldr r0, [r4]
	ands r0, r1
	str r0, [r4]
	ldr r1, _0801C8E4 @ => 0xFFFFFEFF
	ldr r0, [r4]
	ands r0, r1
	str r0, [r4]
	movs r0, #2
	bl FUN_0800C5FC
	movs r0, #1
	bl FUN_0800C5FC
	movs r0, #0
	bl FUN_0800C5FC
	movs r0, #3
	movs r1, #0x88
	movs r2, #0x10
	bl FUN_0800CCCC
	movs r1, #0x70
	rsbs r1, r1, #0
	movs r2, #0x18
	rsbs r2, r2, #0
	movs r0, #2
	bl FUN_0800CCCC
	movs r0, #1
	movs r1, #0x20
	movs r2, #0x78
	bl FUN_0800CCCC
	movs r2, #0x60
	rsbs r2, r2, #0
	movs r0, #0
	movs r1, #0
	bl FUN_0800CCCC
	movs r5, #0
	movs r1, #0
	movs r2, #0
	ldr r4, _0801C8E8 @ => 0x08134F14
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r6, #0x21
	str r6, [sp, #0x14]
	add r0, sp, #0x5c
	movs r1, #3
	adds r2, r4, #0
	movs r3, #0xc1
	bl FUN_0800D83C
	adds r4, #2
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x40
	bl FUN_080156D4
	movs r0, #0
	movs r1, #0
	ldr r4, _0801C8EC @ => 0x08136948
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r6, [sp, #0x14]
	add r0, sp, #0x60
	movs r1, #2
	adds r2, r4, #0
	movs r3, #0x81
	bl FUN_0800D83C
	adds r4, #2
	adds r0, r4, #0
	movs r1, #0x40
	movs r2, #0x40
	bl FUN_080156D4
	movs r2, #0
	movs r0, #0
	ldr r4, _0801C8F0 @ => 0x0813778C
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	add r0, sp, #0x64
	movs r1, #1
	adds r2, r4, #0
	movs r3, #0x41
	bl FUN_0800D83C
	adds r4, #2
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x40
	bl FUN_080156D4
	movs r1, #0
	movs r2, #0
	ldr r4, _0801C8F4 @ => 0x081385D4
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	str r6, [sp, #0x14]
	add r0, sp, #0x68
	adds r2, r4, #0
	movs r3, #1
	bl FUN_0800D83C
	adds r4, #2
	adds r0, r4, #0
	movs r1, #0xc0
	movs r2, #0x40
	bl FUN_080156D4
_0801C8BC:
	ldr r0, _0801C8F8 @ => 0x03004720
	str r5, [r0, #0xc]
	b _0801CA3A
	.align 2, 0
_0801C8C4: .4byte ROMREF_0805FAB8
_0801C8C8: .4byte gUnk_03001B90
_0801C8CC: .4byte ROMREF_0805FABC
_0801C8D0: .4byte ROMREF_0805FAC0
_0801C8D4: .4byte ROMREF_0805FAC4
_0801C8D8: .4byte 0xFFFFF7FF
_0801C8DC: .4byte 0xFFFFFBFF
_0801C8E0: .4byte 0xFFFFFDFF
_0801C8E4: .4byte 0xFFFFFEFF
_0801C8E8: .4byte ROMREF_08134F14
_0801C8EC: .4byte ROMREF_08136948
_0801C8F0: .4byte ROMREF_0813778C
_0801C8F4: .4byte ROMREF_081385D4
_0801C8F8: .4byte gUnk_03004720
_0801C8FC:
	ldr r1, _0801C9CC @ => 0x03004720
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0801C946
	ldr r3, _0801C9D0 @ => 0x03003DF0
	movs r2, #0
	movs r1, #1
	strb r1, [r3, #0x1c]
	strb r2, [r3, #0x1d]
	strb r1, [r3, #0x1e]
	strb r2, [r3, #0x1f]
	adds r0, r3, #0
	adds r0, #0x20
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
	adds r0, #1
	strb r1, [r0]
	movs r0, #0x43
	strb r0, [r3, #0xc]
	movs r0, #0x48
	strb r0, [r3, #0xd]
	movs r0, #0x45
	strb r0, [r3, #0xe]
	movs r0, #0x41
	strb r0, [r3, #0xf]
	movs r0, #0x54
	strb r0, [r3, #0x10]
	strb r2, [r3, #0x11]
_0801C946:
	ldr r5, _0801C9D4 @ => 0x03003E0C
	adds r0, r5, #0
	movs r1, #0xa
	movs r2, #0xb
	bl FUN_08048CB4
	ldr r3, _0801C9D8 @ => 0xFFE00000
	movs r4, #0x81
	lsls r4, r4, #0x10
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #0xa
	movs r2, #0xb
	bl FUN_08028CEC
	movs r1, #0x80
	lsls r1, r1, #0xf
	adds r2, r4, #0
	movs r3, #0x10
	bl FUN_08001800
	ldr r1, _0801C9DC @ => 0x05000004
	ldr r2, _0801C9E0 @ => 0x0000FFFF
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	movs r0, #4
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _0801C9E4 @ => 0x00000ACF
	bl FUN_08050820
	str r0, [sp, #0x6c]
	add r4, sp, #0x6c
	adds r0, r4, #0
	bl FUN_08050940
	movs r1, #0x8c
	movs r2, #0x5c
	bl FUN_08050BDC
	ldr r0, _0801C9E8 @ => 0x00000764
	bl FUN_08050820
	str r0, [sp, #0x6c]
	subs r5, #0x10
	adds r0, r5, #0
	bl FUN_08020320
	adds r0, r4, #0
	bl FUN_08050940
	movs r1, #0x8c
	movs r2, #0x6e
	bl FUN_08050BDC
	movs r0, #0x5a
	ldr r1, _0801C9CC @ => 0x03004720
	str r0, [r1, #0x18]
	b _0801CA3A
	.align 2, 0
_0801C9CC: .4byte gUnk_03004720
_0801C9D0: .4byte gUnk_03003DF0
_0801C9D4: .4byte gUnk_03003E0C
_0801C9D8: .4byte 0xFFE00000
_0801C9DC: .4byte 0x05000004
_0801C9E0: .4byte 0x0000FFFF
_0801C9E4: .4byte 0x00000ACF
_0801C9E8: .4byte 0x00000764
_0801C9EC:
	ldr r4, _0801CA4C @ => 0x03001B90
	ldr r1, _0801CA50 @ => 0xFFFFFDFF
	ldr r0, [r4]
	ands r0, r1
	str r0, [r4]
	ldr r1, _0801CA54 @ => 0xFFFFFEFF
	ldr r0, [r4]
	ands r0, r1
	str r0, [r4]
	ldr r0, _0801CA58 @ => 0x0805FAC8
	ldr r1, [r0]
	movs r0, #2
	bl FUN_0800C434
	movs r1, #0x80
	lsls r1, r1, #3
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
	movs r0, #2
	bl FUN_0800C5FC
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl FUN_0800CB80
	ldr r1, _0801CA5C @ => 0x05000004
	ldr r2, _0801CA60 @ => 0x0000FFFF
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r1, _0801CA64 @ => 0x03004720
	movs r0, #0
	str r0, [r1, #0xc]
_0801CA3A:
	add sp, #0x100
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801CA4C: .4byte gUnk_03001B90
_0801CA50: .4byte 0xFFFFFDFF
_0801CA54: .4byte 0xFFFFFEFF
_0801CA58: .4byte ROMREF_0805FAC8
_0801CA5C: .4byte 0x05000004
_0801CA60: .4byte 0x0000FFFF
_0801CA64: .4byte gUnk_03004720

	thumb_func_start FUN_0801CA68
FUN_0801CA68: @ 0x0801CA68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xb8
	ldr r0, _0801CA8C @ => 0x03004720
	ldr r1, [r0, #0x14]
	adds r6, r0, #0
	cmp r1, #0xd
	bls _0801CA82
	bl _0801D8E6
_0801CA82:
	lsls r0, r1, #2
	ldr r1, _0801CA90 @ =_0801CA94
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801CA8C: .4byte gUnk_03004720
_0801CA90: .4byte _0801CA94
_0801CA94: @ jump table
	.4byte _0801CACC @ case 0
	.4byte _0801CAFC @ case 1
	.4byte _0801CC68 @ case 2
	.4byte _0801CC94 @ case 3
	.4byte _0801CD74 @ case 4
	.4byte _0801CDC0 @ case 5
	.4byte _0801CE00 @ case 6
	.4byte _0801D01C @ case 7
	.4byte _0801D0E8 @ case 8
	.4byte _0801D142 @ case 9
	.4byte _0801D256 @ case 10
	.4byte _0801D51C @ case 11
	.4byte _0801D714 @ case 12
	.4byte _0801D764 @ case 13
_0801CACC:
	ldr r0, [r6, #0x18]
	subs r4, r0, #1
	str r4, [r6, #0x18]
	cmp r4, #0
	beq _0801CADA
	bl _0801D8E6
_0801CADA:
	movs r0, #3
	bl FUN_0800C4D0
	movs r0, #1
	bl FUN_0800C4D0
	ldr r0, _0801CAF8 @ => 0x0805FACC
	movs r1, #3
	bl FUN_08051EA8
	bl FUN_08052004
	bl _0801D740
	.align 2, 0
_0801CAF8: .4byte ROMREF_0805FACC
_0801CAFC:
	ldr r0, [r6, #0xc]
	cmp r0, #4
	bls _0801CB06
	bl _0801D8E6
_0801CB06:
	lsls r0, r0, #2
	ldr r1, _0801CB10 @ =_0801CB14
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801CB10: .4byte _0801CB14
_0801CB14: @ jump table
	.4byte _0801CB28 @ case 0
	.4byte _0801CBA8 @ case 1
	.4byte _0801CBD8 @ case 2
	.4byte _0801CC40 @ case 3
	.4byte _0801D128 @ case 4
_0801CB28:
	ldr r5, _0801CB98 @ => 0x03001B90
	movs r0, #0
	str r0, [r5, #8]
	ldr r0, _0801CB9C @ => 0x0805FA68
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C434
	movs r1, #0x80
	lsls r1, r1, #4
	ldr r0, [r5]
	orrs r0, r1
	str r0, [r5]
	ldr r0, _0801CBA0 @ => 0x0805FA6C
	ldr r1, [r0]
	movs r0, #2
	bl FUN_0800C434
	movs r6, #0x80
	lsls r6, r6, #3
	ldr r0, [r5]
	orrs r0, r6
	str r0, [r5]
	ldr r0, _0801CBA4 @ => 0x0805FA70
	ldr r1, [r0]
	movs r0, #1
	bl FUN_0800C434
	movs r1, #0x80
	lsls r1, r1, #2
	ldr r0, [r5]
	orrs r0, r1
	str r0, [r5]
	movs r4, #0x90
	lsls r4, r4, #0xa
	movs r0, #3
	adds r1, r4, #0
	bl FUN_0800CE8C
	movs r0, #2
	adds r1, r4, #0
	bl FUN_0800CE8C
	ldr r0, [r5, #0xc]
	adds r1, r4, #0
	movs r2, #0
	bl FUN_08001744
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	adds r2, r6, #0
	movs r3, #0xa
	bl FUN_08003E00
	bl _0801D4AA
	.align 2, 0
_0801CB98: .4byte gUnk_03001B90
_0801CB9C: .4byte ROMREF_0805FA68
_0801CBA0: .4byte ROMREF_0805FA6C
_0801CBA4: .4byte ROMREF_0805FA70
_0801CBA8:
	ldr r0, _0801CBD0 @ => 0x03003210
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _0801CBD4 @ => 0x00EEFFFF
	cmp r1, r0
	bgt _0801CBBC
	bl _0801D8E6
_0801CBBC:
	movs r0, #3
	movs r1, #0
	bl FUN_0800CE8C
	movs r0, #2
	movs r1, #0
	bl FUN_0800CE8C
	bl _0801D4AA
	.align 2, 0
_0801CBD0: .4byte gUnk_03003210
_0801CBD4: .4byte 0x00EEFFFF
_0801CBD8:
	ldr r4, _0801CC2C @ => 0x03001B90
	ldr r2, [r4, #0xc]
	ldr r1, [r2, #0x18]
	ldr r0, _0801CC30 @ => 0x00CFFFFF
	cmp r1, r0
	bgt _0801CBE8
	bl _0801D8E6
_0801CBE8:
	adds r0, r2, #0
	movs r1, #0
	movs r2, #0
	bl FUN_08001744
	ldr r0, [r4, #0xc]
	adds r1, r0, #0
	adds r1, #0x46
	ldrh r1, [r1]
	adds r2, r0, #0
	adds r2, #0x4e
	movs r5, #0
	ldrsh r3, [r2, r5]
	movs r2, #0
	bl FUN_08003E00
	ldr r0, [r4, #0xc]
	ldr r1, _0801CC34 @ => 0x0805FA40
	ldr r2, _0801CC38 @ => 0x09FB62EC
	ldr r2, [r2, #4]
	movs r3, #0
	bl FUN_0800192C
	ldr r0, [r4, #0xc]
	movs r1, #3
	bl FUN_080017B8
	ldr r0, [r4, #0xc]
	ldr r1, _0801CC3C @ => 0xFFFECCCD
	movs r2, #0
	bl FUN_08001744
	bl _0801D4AA
	.align 2, 0
_0801CC2C: .4byte gUnk_03001B90
_0801CC30: .4byte 0x00CFFFFF
_0801CC34: .4byte ROMREF_0805FA40
_0801CC38: .4byte ROMREF_09FB62EC
_0801CC3C: .4byte 0xFFFECCCD
_0801CC40:
	ldr r0, _0801CC64 @ => 0x03001B90
	ldr r2, [r0, #0xc]
	ldr r1, [r2, #0x18]
	movs r0, #0xb0
	lsls r0, r0, #0x10
	cmp r1, r0
	ble _0801CC52
	bl _0801D8E6
_0801CC52:
	ldr r0, [r2, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0xc]
	movs r0, #1
	str r0, [r6, #0x18]
	bl _0801D884
	.align 2, 0
_0801CC64: .4byte gUnk_03001B90
_0801CC68:
	ldr r1, [r6, #0xc]
	cmp r1, #1
	bne _0801CC70
	b _0801D118
_0801CC70:
	cmp r1, #1
	blo _0801CC7A
	cmp r1, #2
	beq _0801CC7A
	b _0801D0F6
_0801CC7A:
	ldr r1, _0801CC90 @ => 0x03001B90
	movs r0, #0
	str r0, [r1, #8]
	ldr r0, [r6, #0xc]
	adds r0, #1
	str r0, [r6, #0xc]
	movs r0, #0x1e
	str r0, [r6, #0x18]
	bl _0801D8E6
	.align 2, 0
_0801CC90: .4byte gUnk_03001B90
_0801CC94:
	ldr r0, [r6, #0xc]
	cmp r0, #7
	bls _0801CC9E
	bl _0801D8E6
_0801CC9E:
	lsls r0, r0, #2
	ldr r1, _0801CCA8 @ =_0801CCAC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801CCA8: .4byte _0801CCAC
_0801CCAC: @ jump table
	.4byte _0801CCCC @ case 0
	.4byte _0801CCE4 @ case 1
	.4byte _0801CCCC @ case 2
	.4byte _0801CCF4 @ case 3
	.4byte _0801CD06 @ case 4
	.4byte _0801CD34 @ case 5
	.4byte _0801CD46 @ case 6
	.4byte _0801D128 @ case 7
_0801CCCC:
	ldr r1, _0801CCE0 @ => 0x03001B90
	movs r0, #0
	str r0, [r1, #8]
	ldr r0, [r6, #0xc]
	adds r0, #1
	str r0, [r6, #0xc]
	movs r0, #0xf
	str r0, [r6, #0x18]
	bl _0801D8E6
	.align 2, 0
_0801CCE0: .4byte gUnk_03001B90
_0801CCE4:
	ldr r1, _0801CCF0 @ => 0x03001B90
	movs r0, #1
	str r0, [r1, #8]
	bl _0801D884
	.align 2, 0
_0801CCF0: .4byte gUnk_03001B90
_0801CCF4:
	ldr r0, [r6, #0x18]
	subs r0, #1
	str r0, [r6, #0x18]
	cmp r0, #0
	beq _0801CD02
	bl _0801D8E6
_0801CD02:
	bl _0801D858
_0801CD06:
	ldr r1, [r6, #0x18]
	subs r1, #1
	str r1, [r6, #0x18]
	movs r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl FUN_080455AC
	ldr r0, [r6, #0x18]
	cmp r0, #0
	beq _0801CD26
	bl _0801D8E6
_0801CD26:
	ldr r0, [r6, #0xc]
	adds r0, #1
	str r0, [r6, #0xc]
	movs r0, #0x3c
	str r0, [r6, #0x18]
	bl _0801D8E6
_0801CD34:
	ldr r0, [r6, #0x18]
	subs r0, #1
	str r0, [r6, #0x18]
	cmp r0, #0
	beq _0801CD42
	bl _0801D8E6
_0801CD42:
	bl _0801D858
_0801CD46:
	ldr r2, [r6, #0x18]
	subs r2, #1
	str r2, [r6, #0x18]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x10
	subs r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl FUN_080455AC
	ldr r0, [r6, #0x18]
	cmp r0, #0
	beq _0801CD66
	bl _0801D8E6
_0801CD66:
	ldr r0, [r6, #0xc]
	adds r0, #1
	str r0, [r6, #0xc]
	movs r0, #1
	str r0, [r6, #0x18]
	bl _0801D8E6
_0801CD74:
	ldr r0, [r6, #0xc]
	cmp r0, #0
	beq _0801CD84
_0801CD7A:
	cmp r0, #1
	bne _0801CD80
	b _0801D128
_0801CD80:
	bl _0801D8E6
_0801CD84:
	ldr r0, _0801CDB0 @ => 0x0811089A
	movs r1, #1
	movs r2, #0xff
	bl FUN_080156D4
	ldr r0, _0801CDB4 @ => 0x0805FA80
	ldr r1, [r0]
	movs r0, #0
	bl FUN_0800C434
	ldr r1, _0801CDB8 @ => 0x03001B90
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r0, [r1]
	orrs r0, r2
	str r0, [r1]
	ldr r2, _0801CDBC @ => 0xFFFFF7FF
	ldr r0, [r1]
	ands r0, r2
	str r0, [r1]
	b _0801D104
	.align 2, 0
_0801CDB0: .4byte ROMREF_0811089A
_0801CDB4: .4byte ROMREF_0805FA80
_0801CDB8: .4byte gUnk_03001B90
_0801CDBC: .4byte 0xFFFFF7FF
_0801CDC0:
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _0801CD7A
	ldr r0, _0801CDF0 @ => 0x08113CCE
	movs r1, #1
	movs r2, #0xff
	bl FUN_080156D4
	ldr r0, _0801CDF4 @ => 0x0805FA84
	ldr r1, [r0]
	movs r0, #1
	bl FUN_0800C434
	ldr r1, _0801CDF8 @ => 0x03001B90
	movs r2, #0x80
	lsls r2, r2, #2
	ldr r0, [r1]
	orrs r0, r2
	str r0, [r1]
	ldr r2, _0801CDFC @ => 0xFFFFFEFF
	ldr r0, [r1]
	ands r0, r2
	str r0, [r1]
	b _0801D104
	.align 2, 0
_0801CDF0: .4byte ROMREF_08113CCE
_0801CDF4: .4byte ROMREF_0805FA84
_0801CDF8: .4byte gUnk_03001B90
_0801CDFC: .4byte 0xFFFFFEFF
_0801CE00:
	ldr r0, [r6, #0xc]
	cmp r0, #8
	bls _0801CE0A
	bl _0801D8E6
_0801CE0A:
	lsls r0, r0, #2
	ldr r1, _0801CE14 @ =_0801CE18
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801CE14: .4byte _0801CE18
_0801CE18: @ jump table
	.4byte _0801CE3C @ case 0
	.4byte _0801CE68 @ case 1
	.4byte _0801CED4 @ case 2
	.4byte _0801CF2C @ case 3
	.4byte _0801CF64 @ case 4
	.4byte _0801CF76 @ case 5
	.4byte _0801CFD4 @ case 6
	.4byte _0801CFF4 @ case 7
	.4byte _0801D4F0 @ case 8
_0801CE3C:
	movs r0, #0
	movs r1, #0
	bl FUN_08045594
	ldr r0, _0801CE5C @ => 0x08117246
	movs r1, #1
	movs r2, #0xff
	bl FUN_080156D4
	ldr r2, _0801CE60 @ => 0x03001B90
	ldr r1, _0801CE64 @ => 0xFFFFFDFF
	ldr r0, [r2]
	ands r0, r1
	str r0, [r2]
	b _0801D4AA
	.align 2, 0
_0801CE5C: .4byte ROMREF_08117246
_0801CE60: .4byte gUnk_03001B90
_0801CE64: .4byte 0xFFFFFDFF
_0801CE68:
	ldr r0, _0801CEC4 @ => 0x0805FA94
	ldr r1, [r0]
	movs r0, #0
	bl FUN_0800C434
	ldr r4, _0801CEC8 @ => 0x03001B90
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
	movs r0, #0
	bl FUN_0800C5FC
	movs r0, #0
	movs r1, #0x50
	movs r2, #0
	bl FUN_0800CCCC
	ldr r0, _0801CECC @ => 0x0805FA90
	ldr r1, [r0]
	movs r0, #1
	bl FUN_0800C434
	movs r1, #0x80
	lsls r1, r1, #2
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
	movs r0, #1
	bl FUN_0800C5FC
	movs r1, #0x88
	lsls r1, r1, #1
	movs r0, #1
	movs r2, #0
	bl FUN_0800CCCC
	movs r0, #4
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _0801CED0 @ => 0x00000ACC
	b _0801D320
	.align 2, 0
_0801CEC4: .4byte ROMREF_0805FA94
_0801CEC8: .4byte gUnk_03001B90
_0801CECC: .4byte ROMREF_0805FA90
_0801CED0: .4byte 0x00000ACC
_0801CED4:
	ldr r0, [r6, #0x18]
	subs r5, r0, #1
	str r5, [r6, #0x18]
	cmp r5, #0
	beq _0801CEE2
	bl _0801D8E6
_0801CEE2:
	movs r0, #0
	movs r1, #0
	ldr r2, _0801CF24 @ => 0x081392DC
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	movs r4, #0x21
	str r4, [sp, #0x14]
	add r0, sp, #0x1c
	movs r3, #0x7c
	bl FUN_0800D83C
	movs r2, #0
	str r2, [sp, #0x68]
	movs r0, #0
	ldr r2, _0801CF28 @ => 0x08139D9C
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	ldr r1, [sp, #0x68]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	add r0, sp, #0x20
	movs r1, #1
	movs r3, #0xc9
	bl FUN_0800D83C
	bl _0801D884
	.align 2, 0
_0801CF24: .4byte ROMREF_081392DC
_0801CF28: .4byte ROMREF_08139D9C
_0801CF2C:
	add r5, sp, #0x24
	add r6, sp, #0x28
	movs r0, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl FUN_0800D06C
	ldr r0, [sp, #0x24]
	ldr r2, _0801CF60 @ => 0xFFFB0000
	adds r0, r0, r2
	str r0, [sp, #0x24]
	movs r4, #0
	cmp r0, #0
	bge _0801CF4C
	str r4, [sp, #0x24]
	movs r4, #1
_0801CF4C:
	ldr r1, [sp, #0x24]
	movs r0, #0
	movs r2, #0
	bl FUN_0800CB80
	cmp r4, #0
	beq _0801CF5C
	b _0801D3DE
_0801CF5C:
	b _0801D400
	.align 2, 0
_0801CF60: .4byte 0xFFFB0000
_0801CF64:
	ldr r0, [r6, #0x18]
	subs r0, #1
	str r0, [r6, #0x18]
	cmp r0, #0
	beq _0801CF72
	bl _0801D8E6
_0801CF72:
	bl _0801D884
_0801CF76:
	movs r1, #9
	ldr r0, _0801CFBC @ => 0x00030009
	str r0, [sp, #0x70]
	ldr r0, _0801CFC0 @ => 0xFFFFFF00
	ands r3, r0
	orrs r3, r1
	movs r1, #0xc0
	lsls r1, r1, #2
	ldr r0, _0801CFC4 @ => 0xFFFF00FF
	ands r3, r0
	orrs r3, r1
	movs r1, #0x80
	lsls r1, r1, #0xd
	ldr r0, _0801CFC8 @ => 0xFF00FFFF
	ands r3, r0
	orrs r3, r1
	movs r1, #0xe0
	lsls r1, r1, #0x14
	ldr r0, _0801CFCC @ => 0x00FFFFFF
	ands r3, r0
	orrs r3, r1
	ldr r2, _0801CFD0 @ => 0x0813A5D0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r1, [sp, #0x70]
	str r1, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r0, #0x21
	str r0, [sp, #0x14]
	add r0, sp, #0x2c
	movs r1, #2
	movs r3, #1
	b _0801D4A6
	.align 2, 0
_0801CFBC: .4byte 0x00030009
_0801CFC0: .4byte 0xFFFFFF00
_0801CFC4: .4byte 0xFFFF00FF
_0801CFC8: .4byte 0xFF00FFFF
_0801CFCC: .4byte 0x00FFFFFF
_0801CFD0: .4byte ROMREF_0813A5D0
_0801CFD4:
	movs r0, #0
	movs r5, #0
	ldr r2, _0801CFF0 @ => 0x0813B8E4
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	movs r0, #0x21
	str r0, [sp, #0x14]
	add r0, sp, #0x30
	movs r1, #0
	movs r3, #0x7c
	b _0801D4A6
	.align 2, 0
_0801CFF0: .4byte ROMREF_0813B8E4
_0801CFF4:
	movs r0, #0
	movs r7, #0
	movs r2, #0
	mov sl, r2
	ldr r2, _0801D018 @ => 0x0813C3A4
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	mov r5, sl
	str r5, [sp, #0x10]
	movs r0, #0x21
	str r0, [sp, #0x14]
	add r0, sp, #0x34
	movs r1, #1
	movs r3, #0xc9
	b _0801D4D6
	.align 2, 0
_0801D018: .4byte ROMREF_0813C3A4
_0801D01C:
	ldr r2, [r6, #0xc]
	cmp r2, #1
	beq _0801D060
	cmp r2, #1
	blo _0801D02E
	cmp r2, #2
	beq _0801D0C8
	bl _0801D8E6
_0801D02E:
	ldr r0, _0801D054 @ => 0x0811CCDA
	movs r1, #1
	movs r2, #0xff
	bl FUN_080156D4
	ldr r0, _0801D058 @ => 0x0805FA98
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C434
	ldr r2, _0801D05C @ => 0x03001B90
	movs r1, #0x80
	lsls r1, r1, #4
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	bl _0801D884
	.align 2, 0
_0801D054: .4byte ROMREF_0811CCDA
_0801D058: .4byte ROMREF_0805FA98
_0801D05C: .4byte gUnk_03001B90
_0801D060:
	add r1, sp, #0x24
	add r2, sp, #0x28
	movs r0, #3
	bl FUN_0800D06C
	ldr r1, [sp, #0x24]
	movs r0, #0x80
	lsls r0, r0, #0x10
	cmp r1, r0
	bgt _0801D096
	ldr r4, _0801D0B4 @ => 0x03001B90
	ldr r2, [r4, #0xc]
	ldr r0, [r2, #0x28]
	cmp r0, #0
	bne _0801D096
	ldr r1, _0801D0B8 @ => 0xFFFE1EB9
	adds r0, r2, #0
	movs r2, #0
	bl FUN_08001744
	ldr r0, [r4, #0xc]
	movs r2, #0x80
	lsls r2, r2, #3
	movs r1, #0
	movs r3, #0xa
	bl FUN_08003E00
_0801D096:
	ldr r0, [sp, #0x24]
	ldr r2, _0801D0BC @ => 0xFFFD0000
	adds r1, r0, r2
	str r1, [sp, #0x24]
	cmp r1, #0
	bge _0801D0C4
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl FUN_0800CCCC
	ldr r1, _0801D0C0 @ => 0x03004720
	movs r0, #1
	str r0, [r1, #0x18]
	b _0801D4AC
	.align 2, 0
_0801D0B4: .4byte gUnk_03001B90
_0801D0B8: .4byte 0xFFFE1EB9
_0801D0BC: .4byte 0xFFFD0000
_0801D0C0: .4byte gUnk_03004720
_0801D0C4:
	movs r0, #3
	b _0801D414
_0801D0C8:
	ldr r0, [r6, #0x18]
	subs r3, r0, #1
	str r3, [r6, #0x18]
	cmp r3, #0
	beq _0801D0D6
	bl _0801D8E6
_0801D0D6:
	ldr r0, _0801D0E4 @ => 0x03001B90
	ldr r1, [r0, #0xc]
	ldr r0, [r1, #0xc]
	orrs r0, r2
	str r0, [r1, #0xc]
	b _0801D508
	.align 2, 0
_0801D0E4: .4byte gUnk_03001B90
_0801D0E8:
	ldr r1, [r6, #0xc]
	cmp r1, #1
	beq _0801D118
	cmp r1, #1
	blo _0801D0FE
	cmp r1, #2
	beq _0801D0FE
_0801D0F6:
	cmp r1, #3
	beq _0801D128
	bl _0801D8E6
_0801D0FE:
	ldr r1, _0801D114 @ => 0x03001B90
	movs r0, #0
	str r0, [r1, #8]
_0801D104:
	ldr r0, [r6, #0xc]
	adds r0, #1
	str r0, [r6, #0xc]
	movs r0, #0x14
	str r0, [r6, #0x18]
	bl _0801D8E6
	.align 2, 0
_0801D114: .4byte gUnk_03001B90
_0801D118:
	ldr r0, _0801D124 @ => 0x03001B90
	str r1, [r0, #8]
	movs r0, #2
	str r0, [r6, #0xc]
	bl _0801D8E6
	.align 2, 0
_0801D124: .4byte gUnk_03001B90
_0801D128:
	ldr r0, [r6, #0x18]
	subs r1, r0, #1
	str r1, [r6, #0x18]
	cmp r1, #0
	beq _0801D134
	b _0801D8E6
_0801D134:
	ldr r0, [r6, #0x14]
	adds r0, #1
	str r0, [r6, #0x14]
	str r1, [r6, #0xc]
	bl FUN_0801C0A8
	b _0801D8E6
_0801D142:
	ldr r0, [r6, #0xc]
	cmp r0, #5
	bls _0801D14A
	b _0801D8E6
_0801D14A:
	lsls r0, r0, #2
	ldr r1, _0801D154 @ =_0801D158
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801D154: .4byte _0801D158
_0801D158: @ jump table
	.4byte _0801D170 @ case 0
	.4byte _0801D188 @ case 1
	.4byte _0801D170 @ case 2
	.4byte _0801D194 @ case 3
	.4byte _0801D224 @ case 4
	.4byte _0801D4F0 @ case 5
_0801D170:
	ldr r1, _0801D184 @ => 0x03001B90
	movs r0, #0
	str r0, [r1, #8]
	ldr r0, [r6, #0xc]
	adds r0, #1
	str r0, [r6, #0xc]
	movs r0, #0xc
	str r0, [r6, #0x18]
	b _0801D8E6
	.align 2, 0
_0801D184: .4byte gUnk_03001B90
_0801D188:
	ldr r1, _0801D190 @ => 0x03001B90
	movs r0, #1
	str r0, [r1, #8]
	b _0801D884
	.align 2, 0
_0801D190: .4byte gUnk_03001B90
_0801D194:
	ldr r0, [r6, #0x18]
	subs r5, r0, #1
	str r5, [r6, #0x18]
	cmp r5, #0
	beq _0801D1A0
	b _0801D8E6
_0801D1A0:
	movs r0, #1
	movs r1, #2
	bl FUN_08045594
	movs r0, #0
	movs r1, #0x10
	bl FUN_080455AC
	ldr r0, _0801D214 @ => 0x0805FAA4
	ldr r1, [r0]
	movs r0, #0
	bl FUN_0800C434
	ldr r4, _0801D218 @ => 0x03001B90
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl FUN_0800CCCC
	movs r0, #0xc0
	lsls r0, r0, #0xa
	movs r1, #0
	ldr r2, _0801D21C @ => 0x0813CBEC
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	movs r0, #0x21
	str r0, [sp, #0x14]
	add r0, sp, #0x38
	movs r3, #0
	bl FUN_0800D83C
	movs r0, #4
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _0801D220 @ => 0x00000ACE
	bl FUN_08050820
	str r0, [sp, #0x18]
	add r0, sp, #0x18
	bl FUN_08050940
	str r0, [r4, #0x10]
	movs r1, #0x78
	movs r2, #0x8c
	bl FUN_08050BDC
	b _0801D858
	.align 2, 0
_0801D214: .4byte ROMREF_0805FAA4
_0801D218: .4byte gUnk_03001B90
_0801D21C: .4byte ROMREF_0813CBEC
_0801D220: .4byte 0x00000ACE
_0801D224:
	ldr r1, [r6, #0x18]
	subs r1, #2
	str r1, [r6, #0x18]
	movs r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl FUN_080455AC
	ldr r0, [r6, #0x18]
	cmp r0, #0
	beq _0801D242
	b _0801D8E6
_0801D242:
	movs r0, #0
	movs r1, #0
	bl FUN_08045594
	ldr r0, [r6, #0xc]
	adds r0, #1
	str r0, [r6, #0xc]
	movs r0, #0x46
	str r0, [r6, #0x18]
	b _0801D8E6
_0801D256:
	ldr r0, [r6, #0xc]
	cmp r0, #8
	bls _0801D25E
	b _0801D8E6
_0801D25E:
	lsls r0, r0, #2
	ldr r1, _0801D268 @ =_0801D26C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801D268: .4byte _0801D26C
_0801D26C: @ jump table
	.4byte _0801D290 @ case 0
	.4byte _0801D2C8 @ case 1
	.4byte _0801D358 @ case 2
	.4byte _0801D3B0 @ case 3
	.4byte _0801D41C @ case 4
	.4byte _0801D42A @ case 5
	.4byte _0801D488 @ case 6
	.4byte _0801D4BC @ case 7
	.4byte _0801D4F0 @ case 8
_0801D290:
	ldr r0, _0801D2BC @ => 0x0805FAA8
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C434
	ldr r4, _0801D2C0 @ => 0x03001B90
	movs r1, #0x80
	lsls r1, r1, #4
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
	ldr r0, _0801D2C4 @ => 0x0805FAAC
	ldr r1, [r0]
	movs r0, #2
	bl FUN_0800C434
	movs r1, #0x80
	lsls r1, r1, #3
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
	b _0801D4AA
	.align 2, 0
_0801D2BC: .4byte ROMREF_0805FAA8
_0801D2C0: .4byte gUnk_03001B90
_0801D2C4: .4byte ROMREF_0805FAAC
_0801D2C8:
	ldr r0, _0801D344 @ => 0x0805FAB4
	ldr r1, [r0]
	movs r0, #0
	bl FUN_0800C434
	ldr r4, _0801D348 @ => 0x03001B90
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
	movs r0, #0
	bl FUN_0800C5FC
	movs r0, #0
	movs r1, #0x50
	movs r2, #0
	bl FUN_0800CCCC
	ldr r0, _0801D34C @ => 0x0805FAB0
	ldr r1, [r0]
	movs r0, #1
	bl FUN_0800C434
	movs r1, #0x80
	lsls r1, r1, #2
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
	movs r0, #1
	bl FUN_0800C5FC
	movs r1, #0x88
	lsls r1, r1, #1
	movs r0, #1
	movs r2, #0
	bl FUN_0800CCCC
	movs r0, #4
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _0801D350 @ => 0x00000ACD
_0801D320:
	bl FUN_08050820
	str r0, [sp, #0x18]
	add r0, sp, #0x18
	bl FUN_08050940
	str r0, [r4, #0x10]
	movs r1, #0x78
	movs r2, #0x8c
	bl FUN_08050BDC
	ldr r1, _0801D354 @ => 0x03004720
	ldr r0, [r1, #0xc]
	adds r0, #1
	str r0, [r1, #0xc]
	movs r0, #0xf
	str r0, [r1, #0x18]
	b _0801D8E6
	.align 2, 0
_0801D344: .4byte ROMREF_0805FAB4
_0801D348: .4byte gUnk_03001B90
_0801D34C: .4byte ROMREF_0805FAB0
_0801D350: .4byte 0x00000ACD
_0801D354: .4byte gUnk_03004720
_0801D358:
	ldr r0, [r6, #0x18]
	subs r5, r0, #1
	str r5, [r6, #0x18]
	cmp r5, #0
	beq _0801D364
	b _0801D8E6
_0801D364:
	movs r2, #0
	str r2, [sp, #0x7c]
	movs r0, #0
	ldr r2, _0801D3A8 @ => 0x0813D950
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	ldr r1, [sp, #0x7c]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r4, #0x21
	str r4, [sp, #0x14]
	add r0, sp, #0x3c
	movs r1, #0
	movs r3, #0x86
	bl FUN_0800D83C
	movs r2, #0
	str r2, [sp, #0x84]
	movs r0, #0
	ldr r2, _0801D3AC @ => 0x0813E23C
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	ldr r1, [sp, #0x84]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	add r0, sp, #0x40
	movs r1, #1
	movs r3, #0xc5
	bl FUN_0800D83C
	b _0801D884
	.align 2, 0
_0801D3A8: .4byte ROMREF_0813D950
_0801D3AC: .4byte ROMREF_0813E23C
_0801D3B0:
	add r5, sp, #0x24
	add r6, sp, #0x28
	movs r0, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl FUN_0800D06C
	ldr r0, [sp, #0x24]
	ldr r2, _0801D3F8 @ => 0xFFFB0000
	adds r0, r0, r2
	str r0, [sp, #0x24]
	movs r4, #0
	cmp r0, #0
	bge _0801D3D0
	str r4, [sp, #0x24]
	movs r4, #1
_0801D3D0:
	ldr r1, [sp, #0x24]
	movs r0, #0
	movs r2, #0
	bl FUN_0800CB80
	cmp r4, #0
	beq _0801D400
_0801D3DE:
	movs r1, #0xb0
	lsls r1, r1, #1
	movs r0, #1
	movs r2, #0
	bl FUN_0800CCCC
	ldr r1, _0801D3FC @ => 0x03004720
	ldr r0, [r1, #0xc]
	adds r0, #1
	str r0, [r1, #0xc]
	movs r0, #0x19
	str r0, [r1, #0x18]
	b _0801D8E6
	.align 2, 0
_0801D3F8: .4byte 0xFFFB0000
_0801D3FC: .4byte gUnk_03004720
_0801D400:
	movs r0, #1
	adds r1, r5, #0
	adds r2, r6, #0
	bl FUN_0800D06C
	ldr r1, [sp, #0x24]
	movs r5, #0xa0
	lsls r5, r5, #0xb
	adds r1, r1, r5
	movs r0, #1
_0801D414:
	movs r2, #0
	bl FUN_0800CB80
	b _0801D8E6
_0801D41C:
	ldr r0, [r6, #0x18]
	subs r0, #1
	str r0, [r6, #0x18]
	cmp r0, #0
	beq _0801D428
	b _0801D8E6
_0801D428:
	b _0801D884
_0801D42A:
	movs r1, #8
	ldr r0, _0801D470 @ => 0x00030008
	str r0, [sp, #0x8c]
	ldr r0, _0801D474 @ => 0xFFFFFF00
	ands r4, r0
	orrs r4, r1
	movs r1, #0xc0
	lsls r1, r1, #2
	ldr r0, _0801D478 @ => 0xFFFF00FF
	ands r4, r0
	orrs r4, r1
	movs r2, #0xe0
	lsls r2, r2, #0x14
	movs r1, #0xe0
	lsls r1, r1, #0xc
	ldr r0, _0801D47C @ => 0xFF00FFFF
	ands r4, r0
	orrs r4, r1
	ldr r0, _0801D480 @ => 0x00FFFFFF
	ands r4, r0
	orrs r4, r2
	ldr r2, _0801D484 @ => 0x0813ED3C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r1, [sp, #0x8c]
	str r1, [sp, #0xc]
	str r4, [sp, #0x10]
	movs r0, #0x21
	str r0, [sp, #0x14]
	add r0, sp, #0x44
	movs r1, #2
	movs r3, #1
	b _0801D4A6
	.align 2, 0
_0801D470: .4byte 0x00030008
_0801D474: .4byte 0xFFFFFF00
_0801D478: .4byte 0xFFFF00FF
_0801D47C: .4byte 0xFF00FFFF
_0801D480: .4byte 0x00FFFFFF
_0801D484: .4byte ROMREF_0813ED3C
_0801D488:
	movs r0, #0
	movs r2, #0
	str r2, [sp, #0x90]
	ldr r2, _0801D4B4 @ => 0x08140104
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r5, [sp, #0x90]
	str r5, [sp, #0x10]
	movs r0, #0x21
	str r0, [sp, #0x14]
	add r0, sp, #0x48
	movs r1, #0
	movs r3, #0x86
_0801D4A6:
	bl FUN_0800D83C
_0801D4AA:
	ldr r1, _0801D4B8 @ => 0x03004720
_0801D4AC:
	ldr r0, [r1, #0xc]
	adds r0, #1
	str r0, [r1, #0xc]
	b _0801D8E6
	.align 2, 0
_0801D4B4: .4byte ROMREF_08140104
_0801D4B8: .4byte gUnk_03004720
_0801D4BC:
	movs r0, #0
	movs r1, #0
	ldr r2, _0801D4E8 @ => 0x081409D8
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	movs r0, #0x21
	str r0, [sp, #0x14]
	add r0, sp, #0x4c
	movs r1, #1
	movs r3, #0xc5
_0801D4D6:
	bl FUN_0800D83C
	ldr r1, _0801D4EC @ => 0x03004720
	ldr r0, [r1, #0xc]
	adds r0, #1
	str r0, [r1, #0xc]
	movs r0, #0x2d
	str r0, [r1, #0x18]
	b _0801D8E6
	.align 2, 0
_0801D4E8: .4byte ROMREF_081409D8
_0801D4EC: .4byte gUnk_03004720
_0801D4F0:
	ldr r0, [r6, #0x18]
	subs r3, r0, #1
	str r3, [r6, #0x18]
	cmp r3, #0
	beq _0801D4FC
	b _0801D8E6
_0801D4FC:
	ldr r0, _0801D518 @ => 0x03001B90
	ldr r2, [r0, #0x10]
	ldr r0, [r2, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0xc]
_0801D508:
	ldr r0, [r6, #0x14]
	adds r0, #1
	str r0, [r6, #0x14]
	str r3, [r6, #0xc]
	bl FUN_0801C0A8
	b _0801D8E6
	.align 2, 0
_0801D518: .4byte gUnk_03001B90
_0801D51C:
	ldr r0, [r6, #0xc]
	cmp r0, #1
	beq _0801D5D4
	cmp r0, #1
	blo _0801D52E
	cmp r0, #2
	bne _0801D52C
	b _0801D6CC
_0801D52C:
	b _0801D8E6
_0801D52E:
	ldr r0, _0801D5B0 @ => 0x0805FAB8
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C434
	ldr r4, _0801D5B4 @ => 0x03001B90
	movs r1, #0x80
	lsls r1, r1, #4
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
	ldr r0, _0801D5B8 @ => 0x0805FABC
	ldr r1, [r0]
	movs r0, #2
	bl FUN_0800C434
	movs r1, #0x80
	lsls r1, r1, #3
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
	ldr r0, _0801D5BC @ => 0x0805FAC0
	ldr r1, [r0]
	movs r0, #1
	bl FUN_0800C434
	movs r1, #0x80
	lsls r1, r1, #2
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
	ldr r0, _0801D5C0 @ => 0x0805FAC4
	ldr r1, [r0]
	movs r0, #0
	bl FUN_0800C434
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
	ldr r1, _0801D5C4 @ => 0xFFFAC4ED
	movs r0, #3
	movs r2, #0
	bl FUN_0800CE60
	ldr r1, _0801D5C8 @ => 0x00053B13
	movs r0, #2
	movs r2, #0
	bl FUN_0800CE60
	ldr r2, _0801D5CC @ => 0xFFFCEC4F
	movs r0, #1
	movs r1, #0
	bl FUN_0800CE60
	ldr r2, _0801D5D0 @ => 0x000313B1
	movs r0, #0
	movs r1, #0
	bl FUN_0800CE60
	movs r0, #0x41
	str r0, [r6, #0x18]
	b _0801D884
	.align 2, 0
_0801D5B0: .4byte ROMREF_0805FAB8
_0801D5B4: .4byte gUnk_03001B90
_0801D5B8: .4byte ROMREF_0805FABC
_0801D5BC: .4byte ROMREF_0805FAC0
_0801D5C0: .4byte ROMREF_0805FAC4
_0801D5C4: .4byte 0xFFFAC4ED
_0801D5C8: .4byte 0x00053B13
_0801D5CC: .4byte 0xFFFCEC4F
_0801D5D0: .4byte 0x000313B1
_0801D5D4:
	ldr r0, [r6, #0x18]
	subs r7, r0, #1
	str r7, [r6, #0x18]
	cmp r7, #0
	beq _0801D5E0
	b _0801D8E6
_0801D5E0:
	movs r0, #3
	movs r1, #0x88
	movs r2, #0x10
	bl FUN_0800CCCC
	movs r1, #0x70
	rsbs r1, r1, #0
	movs r2, #0x18
	rsbs r2, r2, #0
	movs r0, #2
	bl FUN_0800CCCC
	movs r0, #1
	movs r1, #0x20
	movs r2, #0x78
	bl FUN_0800CCCC
	movs r2, #0x60
	rsbs r2, r2, #0
	movs r0, #0
	movs r1, #0
	bl FUN_0800CCCC
	movs r2, #0
	movs r5, #0
	ldr r4, _0801D6BC @ => 0x081413EC
	str r7, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	str r2, [sp, #0xc]
	str r5, [sp, #0x10]
	movs r5, #0x21
	str r5, [sp, #0x14]
	add r0, sp, #0x50
	movs r1, #3
	adds r2, r4, #0
	movs r3, #0xc1
	bl FUN_0800D83C
	adds r4, #2
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x3f
	bl FUN_080156D4
	movs r0, #0
	movs r1, #0
	ldr r4, _0801D6C0 @ => 0x08142E48
	str r7, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r5, [sp, #0x14]
	add r0, sp, #0x54
	movs r1, #2
	adds r2, r4, #0
	movs r3, #0x81
	bl FUN_0800D83C
	adds r4, #2
	adds r0, r4, #0
	movs r1, #0x40
	movs r2, #0x40
	bl FUN_080156D4
	movs r2, #0
	movs r0, #0
	ldr r4, _0801D6C4 @ => 0x08143D88
	str r7, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	add r0, sp, #0x58
	movs r1, #1
	adds r2, r4, #0
	movs r3, #0x41
	bl FUN_0800D83C
	adds r4, #2
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x40
	bl FUN_080156D4
	movs r1, #0
	movs r2, #0
	ldr r4, _0801D6C8 @ => 0x08144B90
	str r7, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	str r5, [sp, #0x14]
	add r0, sp, #0x5c
	adds r2, r4, #0
	movs r3, #1
	bl FUN_0800D83C
	adds r4, #2
	adds r0, r4, #0
	movs r1, #0xc0
	movs r2, #0x40
	bl FUN_080156D4
	movs r0, #0x41
	str r0, [r6, #0x18]
	b _0801D884
	.align 2, 0
_0801D6BC: .4byte ROMREF_081413EC
_0801D6C0: .4byte ROMREF_08142E48
_0801D6C4: .4byte ROMREF_08143D88
_0801D6C8: .4byte ROMREF_08144B90
_0801D6CC:
	ldr r0, [r6, #0x18]
	subs r4, r0, #1
	str r4, [r6, #0x18]
	cmp r4, #0
	beq _0801D6D8
	b _0801D8E6
_0801D6D8:
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl FUN_0800CE60
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl FUN_0800CE60
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl FUN_0800CE60
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl FUN_0800CE60
	movs r0, #2
	bl FUN_0800C5FC
	movs r0, #1
	bl FUN_0800C5FC
	movs r0, #0
	bl FUN_0800C5FC
	b _0801D740
_0801D714:
	ldr r0, [r6, #0x18]
	subs r4, r0, #1
	str r4, [r6, #0x18]
	cmp r4, #0
	beq _0801D720
	b _0801D8E6
_0801D720:
	ldr r0, _0801D750 @ => 0x03002C40
	bl FUN_08000BF8
	ldr r1, _0801D754 @ => 0x03001B90
	ldr r2, _0801D758 @ => 0xFFFFFBFF
	ldr r0, [r1]
	ands r0, r2
	str r0, [r1]
	ldr r2, _0801D75C @ => 0xFFFFFDFF
	ldr r0, [r1]
	ands r0, r2
	str r0, [r1]
	ldr r2, _0801D760 @ => 0xFFFFFEFF
	ldr r0, [r1]
	ands r0, r2
	str r0, [r1]
_0801D740:
	ldr r0, [r6, #0x14]
	adds r0, #1
	str r0, [r6, #0x14]
	str r4, [r6, #0xc]
	bl FUN_0801C0A8
	b _0801D8E6
	.align 2, 0
_0801D750: .4byte gUnk_03002C40
_0801D754: .4byte gUnk_03001B90
_0801D758: .4byte 0xFFFFFBFF
_0801D75C: .4byte 0xFFFFFDFF
_0801D760: .4byte 0xFFFFFEFF
_0801D764:
	ldr r0, [r6, #0xc]
	cmp r0, #6
	bls _0801D76C
	b _0801D8E6
_0801D76C:
	lsls r0, r0, #2
	ldr r1, _0801D778 @ =_0801D77C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801D778: .4byte _0801D77C
_0801D77C: @ jump table
	.4byte _0801D798 @ case 0
	.4byte _0801D7EC @ case 1
	.4byte _0801D80E @ case 2
	.4byte _0801D81A @ case 3
	.4byte _0801D7EC @ case 4
	.4byte _0801D868 @ case 5
	.4byte _0801D894 @ case 6
_0801D798:
	movs r0, #4
	movs r1, #8
	bl FUN_08045594
	movs r0, #0
	movs r1, #0x10
	bl FUN_080455AC
	ldr r0, _0801D7E0 @ => 0x0805FAC8
	ldr r0, [r0]
	bl FUN_0801FE58
	movs r0, #4
	movs r1, #1
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _0801D7E4 @ => 0x00000ACA
	bl FUN_08050820
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r1, #0x78
	movs r2, #0x40
	movs r3, #0xec
	bl FUN_08020098
	ldr r1, _0801D7E8 @ => 0x03004720
	ldr r0, [r1, #0xc]
	adds r0, #1
	str r0, [r1, #0xc]
	movs r0, #0x10
	str r0, [r1, #0x18]
	b _0801D8E6
	.align 2, 0
_0801D7E0: .4byte ROMREF_0805FAC8
_0801D7E4: .4byte 0x00000ACA
_0801D7E8: .4byte gUnk_03004720
_0801D7EC:
	ldr r1, [r6, #0x18]
	subs r1, #2
	str r1, [r6, #0x18]
	movs r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl FUN_080455AC
	ldr r0, [r6, #0x18]
	cmp r0, #0
	bne _0801D8E6
	movs r0, #0x1e
	str r0, [r6, #0x18]
	b _0801D884
_0801D80E:
	ldr r0, [r6, #0x18]
	subs r0, #1
	str r0, [r6, #0x18]
	cmp r0, #0
	bne _0801D8E6
	b _0801D858
_0801D81A:
	ldr r2, [r6, #0x18]
	subs r2, #2
	str r2, [r6, #0x18]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x10
	subs r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl FUN_080455AC
	ldr r0, [r6, #0x18]
	cmp r0, #0
	bne _0801D8E6
	movs r0, #2
	bl FUN_0800C5FC
	bl FUN_08021320
	ldr r5, _0801D864 @ => 0x000006FB
	adds r0, r0, r5
	bl FUN_08050820
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r1, #0x78
	movs r2, #0x40
	movs r3, #0xec
	bl FUN_08020098
_0801D858:
	ldr r0, [r6, #0xc]
	adds r0, #1
	str r0, [r6, #0xc]
	movs r0, #0x10
	str r0, [r6, #0x18]
	b _0801D8E6
	.align 2, 0
_0801D864: .4byte 0x000006FB
_0801D868:
	ldr r0, [r6, #0x18]
	subs r1, r0, #1
	str r1, [r6, #0x18]
	cmp r1, #0
	bne _0801D8E6
	ldr r0, _0801D88C @ => 0x0805FA50
	str r1, [sp]
	movs r1, #0x78
	movs r2, #0x74
	movs r3, #0
	bl FUN_0802D680
	ldr r1, _0801D890 @ => 0x03001B90
	str r0, [r1, #0x14]
_0801D884:
	ldr r0, [r6, #0xc]
	adds r0, #1
	str r0, [r6, #0xc]
	b _0801D8E6
	.align 2, 0
_0801D88C: .4byte ROMREF_0805FA50
_0801D890: .4byte gUnk_03001B90
_0801D894:
	ldr r0, [r6, #0x18]
	adds r0, #1
	str r0, [r6, #0x18]
	cmp r0, #0x10
	bne _0801D8C4
	movs r0, #0
	str r0, [r6, #0x18]
	ldr r0, _0801D8BC @ => 0x03001B90
	ldr r2, [r0, #0x14]
	ldr r1, [r2, #0xc]
	movs r3, #1
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0801D8C0
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	b _0801D8C2
	.align 2, 0
_0801D8BC: .4byte gUnk_03001B90
_0801D8C0:
	orrs r1, r3
_0801D8C2:
	str r1, [r2, #0xc]
_0801D8C4:
	ldr r0, _0801D8F8 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801D8E6
	bl FUN_08021320
	bl FUN_0801E0C8
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #1
	movs r1, #4
	bl FUN_0802CED4
_0801D8E6:
	add sp, #0xb8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801D8F8: .4byte gUnk_030042B0

	thumb_func_start EpisodeOpening_Init
EpisodeOpening_Init: @ 0x0801D8FC
	push {lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _0801D94C @ => 0x01008000
	mov r0, sp
	bl SVC_CpuSet
	movs r0, #0
	bl FUN_0805273C
	movs r0, #0
	bl FUN_0800C558
	movs r0, #0x80
	lsls r0, r0, #5
	bl FUN_0800C5EC
	ldr r0, _0801D950 @ => 0x03001B90
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #8]
	str r1, [r0, #4]
	ldr r0, _0801D954 @ => 0x03004720
	str r1, [r0, #0x14]
	bl FUN_0801C0A8
	movs r0, SOUNDTRACK_STRANGETOWN
	bl FUN_0804DE84
	movs r0, #0x3f
	movs r1, #0
	bl FUN_080457F4
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0801D94C: .4byte 0x01008000
_0801D950: .4byte gUnk_03001B90
_0801D954: .4byte gUnk_03004720

	thumb_func_start EpisodeOpening_Handler
EpisodeOpening_Handler: @ 0x0801D958
	push {lr}
	bl FUN_0801CA68
	ldr r0, _0801D974 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801D96E
	bl FUN_0801D994
_0801D96E:
	pop {r0}
	bx r0
	.align 2, 0
_0801D974: .4byte gUnk_030042B0

	thumb_func_start EpisodeOpening_Terminate
EpisodeOpening_Terminate: @ 0x0801D978
	push {lr}
	movs r0, #0x3f
	movs r1, #0
	bl FUN_0804582C
	bl FUN_08051FD8
	ldr r0, _0801D990 @ => 0x03002C40
	bl FUN_08000BF8
	pop {r0}
	bx r0
	.align 2, 0
_0801D990: .4byte gUnk_03002C40

	thumb_func_start FUN_0801D994
FUN_0801D994: @ 0x0801D994
	push {lr}
	bl FUN_08021320
	bl FUN_0801E0C8
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #1
	movs r1, #4
	bl FUN_0802CED4
	pop {r0}
	bx r0
