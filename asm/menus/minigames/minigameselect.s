.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start MinigameSelect_Init
MinigameSelect_Init: @ 0x080384F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	add r1, sp, #0x18
	movs r0, #0
	strh r0, [r1]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _08038628 @ => 0x01008000
	add r0, sp, #0x18
	bl SVC_CpuSet
	movs r0, #0
	bl FUN_0805273C
	movs r0, #0
	bl FUN_0800C558
	movs r0, #0x80
	lsls r0, r0, #5
	bl FUN_0800C5EC
	ldr r0, _0803862C @ => 0x08069C00
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C418
	ldr r0, _08038630 @ => 0x08069C04
	ldr r0, [r0]
	mov sl, r0
	movs r0, #2
	mov r1, sl
	bl FUN_0800C418
	ldr r0, _08038634 @ => 0x08069C08
	ldr r1, [r0]
	movs r0, #1
	bl FUN_0800C418
	movs r0, #1
	bl FUN_0800C5FC
	movs r0, #3
	movs r1, #1
	bl FUN_08048284
	movs r0, #1
	movs r1, #5
	movs r2, #6
	movs r3, #6
	bl FUN_08021428
	movs r4, #0
	ldr r0, _08038638 @ => 0xFFFF0000
	mov sb, r0
	ldr r5, _0803863C @ => 0x00FFFFFF
	movs r1, #0
	ldr r2, _08038640 @ => 0x08CDB0F4
	ldr r3, _08038644 @ => 0x00000191
	str r4, [sp]
	str r4, [sp, #4]
	movs r0, #0x10
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r1, [sp, #0x10]
	str r4, [sp, #0x14]
	add r0, sp, #0x1c
	movs r1, #2
	bl FUN_0800D83C
	mov r0, sb
	ands r6, r0
	movs r1, #1
	orrs r6, r1
	movs r0, #0x80
	lsls r0, r0, #0xb
	ldr r1, _08038648 @ => 0x0000FFFF
	ands r6, r1
	orrs r6, r0
	ldr r0, _0803864C @ => 0xFFFFFF00
	ands r7, r0
	movs r1, #1
	orrs r7, r1
	movs r0, #0x80
	lsls r0, r0, #3
	ldr r1, _08038650 @ => 0xFFFF00FF
	ands r7, r1
	orrs r7, r0
	movs r0, #0xe0
	lsls r0, r0, #0xd
	ldr r1, _08038654 @ => 0xFF00FFFF
	ands r7, r1
	orrs r7, r0
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r7, r5
	orrs r7, r0
	ldr r2, _08038658 @ => 0x08CDB86C
	movs r3, #0xd0
	lsls r3, r3, #1
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	str r7, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x14]
	add r0, sp, #0x20
	movs r1, #2
	bl FUN_0800D83C
	mov r0, sl
	bl FUN_0801FE58
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #3
	movs r1, #0
	bl FUN_0801FEA0
	ldr r0, _0803865C @ => 0x00000633
	bl FUN_08050820
	adds r3, r0, #0
	ldr r0, _08038660 @ => 0x000001BD
	movs r1, #1
	str r1, [sp]
	movs r1, #0x78
	movs r2, #0xc
	bl FUN_0801F8B8
	bl FUN_08038704
	ldr r0, _08038664 @ => 0x03004720
	str r4, [r0, #0x1c]
	movs r0, #0
	movs r1, #1
	bl FUN_080387D4
	movs r0, #0x3f
	movs r1, #0
	bl FUN_080457F4
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08038628: .4byte 0x01008000
_0803862C: .4byte MinigameLevelSelectLCDTiles
_08038630: .4byte MinigameLevelSelectLCDTiles + 4
_08038634: .4byte MinigameLevelSelectLCDTiles + 8
_08038638: .4byte 0xFFFF0000
_0803863C: .4byte 0x00FFFFFF
_08038640: .4byte ROMREF_08CDB0F4
_08038644: .4byte 0x00000191
_08038648: .4byte 0x0000FFFF
_0803864C: .4byte 0xFFFFFF00
_08038650: .4byte 0xFFFF00FF
_08038654: .4byte 0xFF00FFFF
_08038658: .4byte ROMREF_08CDB86C
_0803865C: .4byte 0x00000633
_08038660: .4byte 0x000001BD
_08038664: .4byte gUnk_03004720

	thumb_func_start MinigameSelect_Handler
MinigameSelect_Handler: @ 0x08038668
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r5, _080386C4 @ => 0x03004720
	ldr r4, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x1c
	ldr r6, _080386C8 @ => 0x03002468
	adds r1, r6, #0
	adds r1, #0x90
	ldr r2, [r1]
	subs r2, #1
	movs r1, #0
	str r1, [sp]
	movs r3, #1
	bl FUN_08024A88
	ldr r0, [r5, #0x1c]
	cmp r4, r0
	beq _080386A4
	adds r0, r4, #0
	movs r1, #0
	bl FUN_080387D4
	ldr r0, [r5, #0x1c]
	movs r1, #1
	bl FUN_080387D4
	movs r0, #0xb2
	bl FUN_0804DE0C
_080386A4:
	ldr r0, _080386CC @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080386D0
	movs r0, #0xb1
	bl FUN_0804DE0C
	movs r0, #5
	movs r1, #1
	movs r2, #3
	bl FUN_0802CED4
	b _080386FC
	.align 2, 0
_080386C4: .4byte gUnk_03004720
_080386C8: .4byte gUnk_03002468
_080386CC: .4byte gUnk_030042B0
_080386D0:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080386FC
	movs r0, #0xad
	bl FUN_0804DE0C
	ldr r0, [r5, #0x1c]
	lsls r0, r0, #4
	adds r0, r0, r6
	ldr r1, [r0]
	cmp r1, #8
	bne _080386F2
	movs r0, #8
	bl FUN_0802CEC4
	b _080386FC
_080386F2:
	movs r0, #0x18
	movs r2, #0
	movs r3, #0
	bl FUN_0802CEF8
_080386FC:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start FUN_08038704
FUN_08038704: @ 0x08038704
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r7, #0x2b
	movs r0, #1
	mov r8, r0
	ldr r0, _080387B4 @ => 0x03002468
	adds r2, r0, #0
	adds r2, #0x90
	movs r1, #0
	str r1, [r2]
	movs r4, #0
	adds r6, r0, #0
	adds r5, r2, #0
	movs r1, #0xc
	adds r1, r1, r6
	mov sb, r1
_08038728:
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08038464
	cmp r0, #0
	beq _08038768
	ldr r0, [r5]
	lsls r0, r0, #4
	adds r1, r6, #0
	adds r1, #8
	adds r0, r0, r1
	mov r3, r8
	str r3, [r0]
	ldr r2, [r5]
	lsls r2, r2, #4
	adds r0, r2, r6
	str r4, [r0]
	adds r0, r6, #4
	adds r0, r2, r0
	ldr r3, _080387B8 @ => 0x0000074D
	adds r1, r4, r3
	str r1, [r0]
	add r2, sb
	str r7, [r2]
	ldr r0, [r5]
	adds r1, r0, #1
	str r1, [r5]
	movs r1, #0
	bl FUN_080387D4
	mov r8, r0
	adds r7, #0xb
_08038768:
	adds r4, #1
	cmp r4, #6
	ble _08038728
	adds r7, #5
	ldr r3, _080387B4 @ => 0x03002468
	adds r4, r3, #0
	adds r4, #0x90
	ldr r0, [r4]
	lsls r0, r0, #4
	adds r1, r3, #0
	adds r1, #8
	adds r0, r0, r1
	mov r1, r8
	str r1, [r0]
	ldr r1, [r4]
	lsls r1, r1, #4
	adds r2, r1, r3
	movs r0, #8
	str r0, [r2]
	adds r0, r3, #4
	adds r0, r1, r0
	ldr r2, _080387BC @ => 0x000009A8
	str r2, [r0]
	adds r3, #0xc
	adds r1, r1, r3
	str r7, [r1]
	ldr r0, [r4]
	adds r1, r0, #1
	str r1, [r4]
	movs r1, #0
	bl FUN_080387D4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080387B4: .4byte gUnk_03002468
_080387B8: .4byte 0x0000074D
_080387BC: .4byte 0x000009A8

	thumb_func_start MinigameSelect_Terminate
MinigameSelect_Terminate: @ 0x080387C0
	push {lr}
	movs r0, #0x3f
	movs r1, #0
	bl FUN_0804582C
	bl FUN_08015834
	pop {r0}
	bx r0
	.align 2, 0
