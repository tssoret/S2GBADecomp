.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start TestMenu_Init
TestMenu_Init: @ 0x08029070
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	movs r0, #0
	bl FUN_0800C558
	movs r0, #0x80
	lsls r0, r0, #5
	bl FUN_0800C5EC
	ldr r0, _08029178 @ => 0x08063744
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C418
	ldr r0, _0802917C @ => 0x08063748
	ldr r1, [r0]
	movs r0, #2
	bl FUN_0800C418
	ldr r0, _08029180 @ => 0x0806374C
	ldr r1, [r0]
	movs r0, #2
	bl FUN_0800C418
	ldr r0, _08029184 @ => 0x08063750
	ldr r4, [r0]
	movs r0, #1
	adds r1, r4, #0
	bl FUN_0800C418
	movs r0, #3
	bl FUN_0800C5FC
	movs r0, #2
	bl FUN_0800C5FC
	movs r0, #1
	bl FUN_0800C5FC
	adds r0, r4, #0
	bl FUN_0801FE58
	ldr r0, _08029188 @ => 0x0300436C
	movs r4, #0
	str r4, [r0]
	movs r0, #3
	movs r1, #0x38
	bl FUN_08048284
	ldr r0, _0802918C @ => 0xFFFF0000
	mov sb, r0
	ldr r5, _08029190 @ => 0x00FFFFFF
	movs r1, #0
	ldr r2, _08029194 @ => 0x08CDB0F4
	str r4, [sp]
	str r4, [sp, #4]
	movs r0, #0x10
	mov sl, r0
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r1, [sp, #0x10]
	str r4, [sp, #0x14]
	add r0, sp, #0x18
	movs r1, #2
	movs r3, #1
	bl FUN_0800D83C
	movs r1, #2
	mov r2, sb
	ands r6, r2
	orrs r6, r1
	movs r0, #0xa0
	lsls r0, r0, #0xb
	ldr r2, _08029198 @ => 0x0000FFFF
	ands r6, r2
	orrs r6, r0
	ldr r0, _0802919C @ => 0xFFFFFF00
	ands r7, r0
	orrs r7, r1
	movs r0, #0xa0
	lsls r0, r0, #3
	ldr r1, _080291A0 @ => 0xFFFF00FF
	ands r7, r1
	orrs r7, r0
	movs r0, #0xe0
	lsls r0, r0, #0xd
	ldr r2, _080291A4 @ => 0xFF00FFFF
	ands r7, r2
	orrs r7, r0
	movs r0, #0x98
	lsls r0, r0, #0x15
	ands r7, r5
	orrs r7, r0
	ldr r2, _080291A8 @ => 0x08CE1CA0
	str r4, [sp]
	str r4, [sp, #4]
	mov r0, sl
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	str r7, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x14]
	add r0, sp, #0x1c
	movs r1, #2
	movs r3, #0x10
	bl FUN_0800D83C
	movs r0, #1
	movs r1, #5
	movs r2, #2
	movs r3, #2
	bl FUN_08021428
	bl FUN_08029344
	bl FUN_08029448
	ldr r0, _080291AC @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080291B0
	movs r0, #0x3f
	bl FUN_08045864
	b _080291B8
	.align 2, 0
_08029178: .4byte ROMREF_08063744
_0802917C: .4byte ROMREF_08063748
_08029180: .4byte ROMREF_0806374C
_08029184: .4byte ROMREF_08063750
_08029188: .4byte gUnk_0300436C
_0802918C: .4byte 0xFFFF0000
_08029190: .4byte 0x00FFFFFF
_08029194: .4byte ROMREF_08CDB0F4
_08029198: .4byte 0x0000FFFF
_0802919C: .4byte 0xFFFFFF00
_080291A0: .4byte 0xFFFF00FF
_080291A4: .4byte 0xFF00FFFF
_080291A8: .4byte ROMREF_08CE1CA0
_080291AC: .4byte gUnk_03004374
_080291B0:
	movs r0, #0x3f
	movs r1, #0
	bl FUN_080457F4
_080291B8:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start TestMenu_Handler
TestMenu_Handler: @ 0x080291C8
	push {lr}
	ldr r0, _080291E8 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080291F4
	ldr r0, _080291EC @ => 0x03003DF0
	ldr r1, _080291F0 @ => 0x000003F7
	adds r0, r0, r1
	movs r1, #0xb
	strb r1, [r0]
	movs r0, #0xb
	b _0802920A
	.align 2, 0
_080291E8: .4byte gUnk_030042B0
_080291EC: .4byte gUnk_03003DF0
_080291F0: .4byte 0x000003F7
_080291F4:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08029220
	ldr r0, _08029218 @ => 0x03003DF0
	ldr r1, _0802921C @ => 0x000003F7
	adds r0, r0, r1
	movs r1, #0x23
	strb r1, [r0]
	movs r0, #0x23
_0802920A:
	bl FUN_0802CEC4
	movs r0, #0xc2
	bl FUN_0804DE0C
	b _08029256
	.align 2, 0
_08029218: .4byte gUnk_03003DF0
_0802921C: .4byte 0x000003F7
_08029220:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802922E
	bl FUN_08029424
	b _08029256
_0802922E:
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0802923C
	bl FUN_080293F4
	b _08029256
_0802923C:
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _08029256
	ldr r0, _0802925C @ => 0x030043A0
	ldr r2, [r0]
	movs r0, #1
	movs r1, #2
	bl FUN_0802CED4
	movs r0, #0xb1
	bl FUN_0804DE0C
_08029256:
	pop {r0}
	bx r0
	.align 2, 0
_0802925C: .4byte gUnk_030043A0

	thumb_func_start FUN_08029260
FUN_08029260: @ 0x08029260
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	cmp r4, #1
	beq _08029280
	cmp r4, #1
	blo _08029276
	cmp r4, #2
	beq _0802928C
	cmp r4, #3
	beq _08029294
_08029276:
	movs r5, #1
	ldr r0, _0802927C @ => 0x000006F3
	b _08029298
	.align 2, 0
_0802927C: .4byte 0x000006F3
_08029280:
	movs r5, #0x1f
	ldr r0, _08029288 @ => 0x0000074F
	b _08029298
	.align 2, 0
_08029288: .4byte 0x0000074F
_0802928C:
	movs r5, #0x47
	movs r0, #0xea
	lsls r0, r0, #3
	b _08029298
_08029294:
	movs r5, #0x65
	ldr r0, _080292B4 @ => 0x00000752
_08029298:
	cmp r4, #0
	bne _080292BC
	bl FUN_08050820
	adds r3, r0, #0
	ldr r0, _080292B8 @ => 0x08063774
	ldrb r1, [r0]
	ldrb r2, [r0, #1]
	str r4, [sp]
	adds r0, r5, #0
	bl FUN_0801F8B8
	b _080292E2
	.align 2, 0
_080292B4: .4byte 0x00000752
_080292B8: .4byte ROMREF_08063774
_080292BC:
	bl FUN_08050820
	movs r1, #0
	bl FUN_080202F8
	ldr r0, _080292EC @ => 0x000006F4
	bl FUN_08050820
	adds r3, r0, #0
	ldr r1, _080292F0 @ => 0x08063774
	lsls r0, r4, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	ldrb r2, [r0, #1]
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	bl FUN_0801F8B8
_080292E2:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080292EC: .4byte 0x000006F4
_080292F0: .4byte ROMREF_08063774

	thumb_func_start TestMenu_Terminate
TestMenu_Terminate: @ 0x080292F4
	push {r4, lr}
	ldr r0, _0802930C @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08029310
	movs r0, #0x3f
	bl FUN_080458EC
	b _08029318
	.align 2, 0
_0802930C: .4byte gUnk_03004374
_08029310:
	movs r0, #0x3f
	movs r1, #0
	bl FUN_0804582C
_08029318:
	ldr r0, _08029340 @ => 0x03002C40
	bl FUN_08000BF8
	bl FUN_0800CB20
	bl FUN_08015834
	movs r4, #0
_08029328:
	adds r0, r4, #0
	bl FUN_0802D860
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08029328
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08029340: .4byte gUnk_03002C40
