.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_08028B50
FUN_08028B50: @ 0x08028B50
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl FUN_08048DBC
	adds r5, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _08028B68
	b _08028CD8
_08028B68:
	cmp r0, #1
	bgt _08028B72
	cmp r0, #0
	beq _08028B78
	b _08028CE6
_08028B72:
	cmp r0, #2
	beq _08028BA0
	b _08028CE6
_08028B78:
	ldr r1, _08028B98 @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08028B84
	b _08028CE6
_08028B84:
	ldr r0, _08028B9C @ => 0x09FB642C
	lsls r1, r5, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	movs r2, #0
	bl FUN_080018F4
	b _08028BFA
	.align 2, 0
_08028B98: .4byte 0x0000011D
_08028B9C: .4byte ROMREF_09FB642C
_08028BA0:
	ldr r1, _08028BB4 @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #7
	beq _08028C08
	cmp r0, #7
	bgt _08028BB8
	cmp r0, #0
	beq _08028BBE
	b _08028CE6
	.align 2, 0
_08028BB4: .4byte 0x0000011D
_08028BB8:
	cmp r0, #0x17
	beq _08028C94
	b _08028CE6
_08028BBE:
	ldr r0, [r4, #0xc]
	movs r2, #1
	orrs r0, r2
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x58]
	cmp r1, #0
	beq _08028BD2
	ldr r0, [r1, #0xc]
	orrs r0, r2
	str r0, [r1, #0xc]
_08028BD2:
	ldr r0, _08028C04 @ => 0x09FB642C
	lsls r1, r5, #2
	adds r5, r1, r0
	ldr r1, [r5]
	adds r0, r4, #0
	movs r2, #0
	bl FUN_080018F4
	ldr r0, [r4, #0x58]
	cmp r0, #0
	beq _08028BF0
	ldr r1, [r5]
	movs r2, #0
	bl FUN_080018F4
_08028BF0:
	movs r0, #0x93
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x32
	strh r0, [r1]
_08028BFA:
	adds r0, r4, #0
	movs r1, #7
	bl FUN_08001F84
	b _08028CE6
	.align 2, 0
_08028C04: .4byte ROMREF_09FB642C
_08028C08:
	movs r0, #0x93
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	ldr r1, _08028C54 @ => 0xFFFF0000
	cmp r0, r1
	bne _08028CE6
	movs r0, #9
	bl FUN_0804254C
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	blt _08028CE6
	cmp r2, #3
	ble _08028C5C
	cmp r2, #9
	bgt _08028CE6
	ldr r0, _08028C58 @ => 0x09FB642C
	lsls r1, r5, #2
	adds r5, r1, r0
	ldr r1, [r5]
	adds r0, r4, #0
	movs r2, #0
	bl FUN_080018F4
	ldr r0, [r4, #0x58]
	cmp r0, #0
	beq _08028CC6
	ldr r1, [r5]
	movs r2, #0
	bl FUN_080018F4
	b _08028CC6
	.align 2, 0
_08028C54: .4byte 0xFFFF0000
_08028C58: .4byte ROMREF_09FB642C
_08028C5C:
	ldr r1, _08028C90 @ => 0x09FB6454
	lsls r0, r5, #2
	adds r6, r0, r1
	ldr r0, [r6]
	lsls r5, r2, #2
	adds r0, r5, r0
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0
	bl FUN_080018F4
	ldr r2, [r4, #0x58]
	cmp r2, #0
	beq _08028C86
	ldr r0, [r6]
	adds r0, r5, r0
	ldr r1, [r0]
	adds r0, r2, #0
	movs r2, #0
	bl FUN_080018F4
_08028C86:
	adds r0, r4, #0
	movs r1, #0x17
	bl FUN_08001F84
	b _08028CE6
	.align 2, 0
_08028C90: .4byte ROMREF_09FB6454
_08028C94:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08028CE6
	ldr r0, _08028CD4 @ => 0x09FB642C
	lsls r1, r5, #2
	adds r5, r1, r0
	ldr r1, [r5]
	adds r0, r4, #0
	movs r2, #0
	bl FUN_080018F4
	ldr r0, [r4, #0x58]
	cmp r0, #0
	beq _08028CBE
	ldr r1, [r5]
	movs r2, #0
	bl FUN_080018F4
_08028CBE:
	adds r0, r4, #0
	movs r1, #7
	bl FUN_08001F84
_08028CC6:
	movs r0, #0x93
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x32
	strh r0, [r1]
	b _08028CE6
	.align 2, 0
_08028CD4: .4byte ROMREF_09FB642C
_08028CD8:
	ldr r0, [r4, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x82
	orrs r0, r1
	str r0, [r4, #0xc]
_08028CE6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start FUN_08028CEC
FUN_08028CEC: @ 0x08028CEC
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	adds r5, r3, #0
	ldr r6, [sp, #0x1c]
	movs r0, #0
	bl FUN_080012D8
	adds r4, r0, #0
	movs r0, #0x19
	str r0, [r4, #0xc]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl FUN_08001728
	movs r0, #0
	strb r0, [r4, #0x12]
	adds r0, r4, #0
	movs r1, #1
	bl FUN_080017B8
	adds r0, r4, #0
	bl FUN_08001628
	mov r0, r8
	mov r1, sb
	mov r2, sl
	bl FUN_08028E14
	adds r0, r4, #0
	mov r1, r8
	mov r2, sb
	mov r3, sl
	bl FUN_08028DFC
	adds r0, r4, #0
	adds r0, #0xd8
	ldrb r1, [r0]
	adds r0, r4, #0
	movs r2, #0
	bl FUN_080015DC
	ldr r0, _08028D80 @ => FUN_08028B50
	str r0, [r4, #0x50]
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001FB0
	ldr r1, _08028D84 @ => 0x09FB642C
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0
	bl FUN_080018F4
	bl FUN_08042448
	adds r0, r4, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08028D80: .4byte FUN_08028B50
_08028D84: .4byte ROMREF_09FB642C

	thumb_func_start FUN_08028D88
FUN_08028D88: @ 0x08028D88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	mov r8, r1
	mov sb, r2
	mov sl, r3
	ldr r5, [sp, #0x20]
	ldr r6, [sp, #0x24]
	movs r0, #0
	bl FUN_080012D8
	adds r4, r0, #0
	movs r0, #0x19
	str r0, [r4, #0xc]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl FUN_08001728
	movs r0, #0
	strb r0, [r7, #0x12]
	adds r0, r4, #0
	movs r1, #1
	bl FUN_080017B8
	adds r0, r4, #0
	bl FUN_08001628
	mov r0, r8
	mov r1, sb
	mov r2, sl
	bl FUN_08028E14
	adds r0, r4, #0
	mov r1, r8
	mov r2, sb
	mov r3, sl
	bl FUN_08028E08
	adds r0, r4, #0
	adds r0, #0xd8
	ldrb r1, [r0]
	adds r0, r4, #0
	movs r2, #0
	bl FUN_080015DC
	str r4, [r7, #0x58]
	adds r0, r4, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_08028DFC
FUN_08028DFC: @ 0x08028DFC
	push {lr}
	bl FUN_08028E20
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08028E08
FUN_08028E08: @ 0x08028E08
	push {lr}
	bl FUN_08028EC8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08028E14
FUN_08028E14: @ 0x08028E14
	push {lr}
	bl FUN_08048CB4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08028E20
FUN_08028E20: @ 0x08028E20
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	adds r7, r3, #0
	ldrb r0, [r6, #8]
	cmp r0, #0
	bne _08028E54
	ldrb r0, [r6]
	lsls r0, r0, #2
	ldr r1, _08028E50 @ => 0x09FB63B4
	adds r2, r0, r1
	lsls r4, r4, #0x18
	lsrs r3, r4, #0x18
	adds r0, r5, #0
	movs r1, #0
	bl FUN_080016D4
	adds r0, r5, #0
	movs r1, #0
	movs r2, #4
	bl FUN_080018B0
	b _08028E72
	.align 2, 0
_08028E50: .4byte ROMREF_09FB63B4
_08028E54:
	ldrb r0, [r6]
	lsls r0, r0, #2
	ldr r1, _08028EBC @ => 0x09FB63BC
	adds r2, r0, r1
	lsls r4, r4, #0x18
	lsrs r3, r4, #0x18
	adds r0, r5, #0
	movs r1, #0
	bl FUN_080016D4
	adds r0, r5, #0
	movs r1, #0
	movs r2, #4
	bl FUN_080018B0
_08028E72:
	ldrb r0, [r6]
	lsls r0, r0, #2
	ldr r1, _08028EC0 @ => 0x09FB63AC
	adds r2, r0, r1
	lsls r3, r7, #0x18
	lsrs r3, r3, #0x18
	adds r0, r5, #0
	movs r1, #1
	bl FUN_080016D4
	adds r0, r5, #0
	movs r1, #1
	movs r2, #6
	bl FUN_080018B0
	ldr r0, _08028EC4 @ => 0x09FB63E4
	ldrb r1, [r6]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r6, #2]
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r2, r1, r0
	lsrs r3, r4, #0x18
	adds r0, r5, #0
	movs r1, #2
	bl FUN_080016D4
	adds r0, r5, #0
	movs r1, #2
	movs r2, #7
	bl FUN_080018B0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028EBC: .4byte ROMREF_09FB63BC
_08028EC0: .4byte ROMREF_09FB63AC
_08028EC4: .4byte ROMREF_09FB63E4

	thumb_func_start FUN_08028EC8
FUN_08028EC8: @ 0x08028EC8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	adds r7, r3, #0
	ldrb r0, [r6, #8]
	cmp r0, #0
	bne _08028EFC
	ldrb r0, [r6]
	lsls r0, r0, #2
	ldr r1, _08028EF8 @ => 0x09FB63F4
	adds r2, r0, r1
	lsls r4, r4, #0x18
	lsrs r3, r4, #0x18
	adds r0, r5, #0
	movs r1, #0
	bl FUN_080016D4
	adds r0, r5, #0
	movs r1, #0
	movs r2, #4
	bl FUN_080018B0
	b _08028F1A
	.align 2, 0
_08028EF8: .4byte ROMREF_09FB63F4
_08028EFC:
	ldrb r0, [r6]
	lsls r0, r0, #2
	ldr r1, _08028F64 @ => 0x09FB63FC
	adds r2, r0, r1
	lsls r4, r4, #0x18
	lsrs r3, r4, #0x18
	adds r0, r5, #0
	movs r1, #0
	bl FUN_080016D4
	adds r0, r5, #0
	movs r1, #0
	movs r2, #4
	bl FUN_080018B0
_08028F1A:
	ldrb r0, [r6]
	lsls r0, r0, #2
	ldr r1, _08028F68 @ => 0x09FB63EC
	adds r2, r0, r1
	lsls r3, r7, #0x18
	lsrs r3, r3, #0x18
	adds r0, r5, #0
	movs r1, #1
	bl FUN_080016D4
	adds r0, r5, #0
	movs r1, #1
	movs r2, #6
	bl FUN_080018B0
	ldr r0, _08028F6C @ => 0x09FB6424
	ldrb r1, [r6]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r6, #2]
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r2, r1, r0
	lsrs r3, r4, #0x18
	adds r0, r5, #0
	movs r1, #2
	bl FUN_080016D4
	adds r0, r5, #0
	movs r1, #2
	movs r2, #7
	bl FUN_080018B0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028F64: .4byte ROMREF_09FB63FC
_08028F68: .4byte ROMREF_09FB63EC
_08028F6C: .4byte ROMREF_09FB6424

	thumb_func_start FUN_08028F70
FUN_08028F70: @ 0x08028F70
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	adds r2, r6, #0
	muls r2, r7, r2
	movs r1, #0
	bl FUN_0802CB40
	movs r0, #0
	str r0, [sp]
	movs r5, #0
	cmp r5, r6
	bhs _08028F9E
_08028F8E:
	mov r0, sp
	adds r1, r4, #0
	bl FUN_08029018
	adds r4, r4, r7
	adds r5, #1
	cmp r5, r6
	blo _08028F8E
_08028F9E:
	ldr r0, [sp]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_08028FA8
FUN_08028FA8: @ 0x08028FA8
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r0, [r3]
	cmp r0, #0
	beq _08028FD2
	adds r0, r3, #0
	bl FUN_08028FF8
	adds r4, r0, #0
	movs r1, #0
	adds r2, r5, #0
	bl FUN_0802CB40
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_08029018
	adds r0, r4, #0
	b _08028FD4
_08028FD2:
	movs r0, #0
_08028FD4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08028FDC
FUN_08028FDC: @ 0x08028FDC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r5, r2, #0
	adds r1, r5, #0
	bl FUN_08029030
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_08029018
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_08028FF8
FUN_08028FF8: @ 0x08028FF8
	push {lr}
	ldr r2, [r0]
	cmp r2, #0
	beq _08029010
	ldr r1, [r2]
	str r1, [r0]
	cmp r1, #0
	beq _0802900C
	movs r0, #0
	str r0, [r1, #4]
_0802900C:
	movs r0, #0
	str r0, [r2]
_08029010:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08029018
FUN_08029018: @ 0x08029018
	push {lr}
	adds r3, r0, #0
	ldr r2, [r3]
	str r2, [r1]
	movs r0, #0
	str r0, [r1, #4]
	cmp r2, #0
	beq _0802902A
	str r1, [r2, #4]
_0802902A:
	str r1, [r3]
	pop {r0}
	bx r0

	thumb_func_start FUN_08029030
FUN_08029030: @ 0x08029030
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2]
	cmp r0, r1
	bne _0802903E
	ldr r0, [r1]
	str r0, [r2]
_0802903E:
	ldr r2, [r1]
	cmp r2, #0
	beq _08029048
	ldr r0, [r1, #4]
	str r0, [r2, #4]
_08029048:
	ldr r2, [r1, #4]
	cmp r2, #0
	beq _08029052
	ldr r0, [r1]
	str r0, [r2]
_08029052:
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	pop {r0}
	bx r0

	thumb_func_start FUN_0802905C
FUN_0802905C: @ 0x0802905C
	push {lr}
	movs r1, #0
	b _08029064
_08029062:
	adds r1, #1
_08029064:
	ldr r0, [r0]
	cmp r0, #0
	bne _08029062
	adds r0, r1, #0
	pop {r1}
	bx r1
