.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_0800B4BC
FUN_0800B4BC: @ 0x0800B4BC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov sb, r1
	adds r4, r3, #0
	ldr r5, [sp, #0x1c]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	movs r0, #0x2d
	bl FUN_080012D8
	adds r7, r0, #0
	ldr r1, [r6, #0x18]
	ldr r2, [r6, #0x1c]
	bl FUN_08001728
	str r6, [r7, #0x58]
	ldr r0, _0800B534 @ => 0x00140019
	str r0, [r7, #0xc]
	mov r0, sb
	strh r0, [r7, #0xa]
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r0, r7, r1
	mov r2, sb
	strh r2, [r0]
	subs r1, #0x34
	adds r0, r7, r1
	lsls r4, r4, #0x10
	str r4, [r0]
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r0, r7, r2
	lsls r5, r5, #0x10
	str r5, [r0]
	adds r0, r7, #0
	movs r1, #0
	bl FUN_08001FB0
	mov r0, r8
	cmp r0, #0
	beq _0800B538
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r7, r1
	mov r2, r8
	strh r2, [r0]
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #1
	str r0, [r1]
	b _0800B542
	.align 2, 0
_0800B534: .4byte 0x00140019
_0800B538:
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r7, r1
	mov r2, r8
	str r2, [r0]
_0800B542:
	mov r0, sb
	lsls r1, r0, #4
	ldr r0, _0800B590 @ => 0x0805A520
	adds r1, r1, r0
	adds r0, r7, #0
	bl FUN_080015B8
	ldr r1, _0800B594 @ => 0x09FB615C
	mov r2, sb
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r7, #0
	bl FUN_08048E24
	adds r1, r0, #0
	adds r0, r7, #0
	bl FUN_0803EF14
	ldr r0, _0800B598 @ => FUN_0800B5A4
	str r0, [r7, #0x50]
	adds r0, r7, #0
	movs r1, #1
	bl FUN_080017B8
	ldr r0, _0800B59C @ => FUN_08001EBC
	str r0, [r7, #0x64]
	ldr r1, _0800B5A0 @ => 0x0805A514
	adds r0, r7, #0
	bl FUN_08003DDC
	adds r0, r7, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800B590: .4byte ROMREF_0805A520
_0800B594: .4byte ROMREF_09FB615C
_0800B598: .4byte FUN_0800B5A4
_0800B59C: .4byte FUN_08001EBC
_0800B5A0: .4byte ROMREF_0805A514

	thumb_func_start FUN_0800B5A4
FUN_0800B5A4: @ 0x0800B5A4
	push {lr}
	adds r3, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800B5BA
	cmp r0, #1
	beq _0800B62C
	b _0800B634
_0800B5BA:
	ldr r2, [r3, #0x58]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r2, #0x18]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r3, #0x18]
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r2, #0x1c]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r3, #0x1c]
	ldr r0, [r2, #0xc]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800B5E8
	ldr r0, [r3, #0xc]
	orrs r0, r1
	b _0800B5F0
_0800B5E8:
	ldr r0, [r3, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0800B5F0:
	str r0, [r3, #0xc]
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _0800B618
	subs r1, #4
	adds r0, r3, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _0800B614 @ => 0xFFFF0000
	cmp r1, r0
	bne _0800B634
	b _0800B622
	.align 2, 0
_0800B614: .4byte 0xFFFF0000
_0800B618:
	ldr r0, [r2, #0xc]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0800B634
_0800B622:
	adds r0, r3, #0
	movs r1, #1
	bl FUN_08001FB0
	b _0800B634
_0800B62C:
	ldr r0, [r3, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r3, #0xc]
_0800B634:
	pop {r0}
	bx r0

	thumb_func_start FUN_0800B638
FUN_0800B638: @ 0x0800B638
	push {r4, lr}
	ldr r0, _0800B668 @ => 0x03002C40
	ldr r2, [r0]
	cmp r2, #0
	beq _0800B660
	movs r4, #2
	movs r3, #0
_0800B646:
	ldr r1, [r2, #0x58]
	cmp r1, #0
	beq _0800B65A
	ldrh r0, [r1, #8]
	cmp r0, #0x2d
	bne _0800B65A
	ldr r0, [r1, #0xc]
	orrs r0, r4
	str r0, [r1, #0xc]
	str r3, [r2, #0x58]
_0800B65A:
	ldr r2, [r2]
	cmp r2, #0
	bne _0800B646
_0800B660:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800B668: .4byte gUnk_03002C40

	thumb_func_start FUN_0800B66C
FUN_0800B66C: @ 0x0800B66C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r7, #0
	movs r0, #0
	mov r8, r0
	ldr r1, _0800B688 @ => 0x03001840
	ldr r0, [r1]
	cmp r0, #0
	bne _0800B68C
	movs r0, #0
	b _0800B748
	.align 2, 0
_0800B688: .4byte gUnk_03001840
_0800B68C:
	movs r6, #0
	ldr r0, [r1, #0x20]
	cmp r7, r0
	bge _0800B73E
	adds r5, r1, #0
	movs r1, #0x24
	adds r1, r1, r5
	mov sb, r1
_0800B69C:
	lsls r3, r6, #2
	adds r0, r5, #0
	adds r0, #0xa4
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r0, #0
	bne _0800B736
	movs r2, #1
	add r8, r2
	lsls r1, r6, #1
	movs r2, #0x92
	lsls r2, r2, #1
	adds r0, r5, r2
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r2, r0, #1
	strh r2, [r1]
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r0, r5, r1
	adds r4, r3, r0
	ldr r0, [r4]
	cmp r0, #1
	beq _0800B6F6
	cmp r0, #1
	blo _0800B6DA
	cmp r0, #2
	beq _0800B70E
	cmp r0, #3
	beq _0800B734
	b _0800B736
_0800B6DA:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _0800B6EA
	adds r0, r6, #0
	bl FUN_0800BAA0
	b _0800B736
_0800B6EA:
	cmp r0, #0
	ble _0800B736
	adds r0, r6, #0
	bl FUN_0800B874
	b _0800B736
_0800B6F6:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x10
	ldrsh r1, [r5, r2]
	cmp r0, r1
	bne _0800B736
	adds r0, r6, #0
	bl FUN_0800BB10
	movs r0, #2
	str r0, [r4]
	b _0800B736
_0800B70E:
	mov r1, sb
	adds r0, r3, r1
	ldr r2, [r0]
	ldr r0, [r2, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r0, r0, r1
	movs r1, #0xe0
	lsls r1, r1, #0x10
	cmp r0, r1
	bls _0800B736
	movs r0, #3
	str r0, [r4]
	adds r0, r2, #0
	movs r1, #0
	movs r2, #0
	bl FUN_08001744
	b _0800B736
_0800B734:
	adds r7, #1
_0800B736:
	adds r6, #1
	ldr r0, [r5, #0x20]
	cmp r6, r0
	blt _0800B69C
_0800B73E:
	cmp r7, r8
	bne _0800B746
	bl FUN_0800B9D0
_0800B746:
	movs r0, #1
_0800B748:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_0800B754
FUN_0800B754: @ 0x0800B754
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r4, _0800B7A4 @ => 0x03001840
	ldr r7, [r4, #8]
	ldr r0, [r4, #0xc]
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	bl FUN_08050820
	adds r1, r0, #0
	movs r2, #0
	str r2, [sp, #4]
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800B84A
	mov r8, r4
	adds r6, r1, #0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #0xc]
	movs r1, #0xa4
	add r1, r8
	mov sb, r1
	mov sl, r2
_0800B78C:
	ldrb r0, [r6]
	cmp r0, #0xa
	bne _0800B7A8
	mov r2, r8
	ldr r7, [r2, #8]
	ldr r0, [sp, #8]
	adds r0, #0x20
	str r0, [sp, #8]
	movs r0, #1
	mov r1, sb
	str r0, [r1]
	b _0800B830
	.align 2, 0
_0800B7A4: .4byte gUnk_03001840
_0800B7A8:
	cmp r0, #0x20
	bne _0800B7B6
	adds r7, #0xe
	movs r0, #1
	mov r2, sb
	str r0, [r2]
	b _0800B830
_0800B7B6:
	ldrb r0, [r6]
	bl FUN_0800B918
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	movs r0, #0
	mov r1, sb
	str r0, [r1]
	adds r0, r7, #0
	bl FUN_0800BA38
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r0, [sp, #8]
	bl FUN_0800BA6C
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, r8
	ldrb r3, [r0, #0x1c]
	movs r1, #0
	str r1, [sp]
	ldr r0, _0800B864 @ => 0x0805A810
	adds r1, r4, #0
	bl FUN_0802D680
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	movs r1, #0xc0
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r4, #0xc]
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_08000E44
	ldr r2, [sp, #4]
	lsls r0, r2, #1
	movs r1, #0x92
	lsls r1, r1, #1
	add r1, r8
	adds r0, r0, r1
	mov r1, sp
	ldrh r1, [r1, #0xc]
	strh r1, [r0]
	movs r0, #0xb2
	lsls r0, r0, #1
	add r0, r8
	add r0, sl
	movs r2, #0
	str r2, [r0]
	ldr r0, _0800B868 @ => 0x03001864
	add r0, sl
	str r4, [r0]
	ldr r0, _0800B86C @ => 0x0805A7EC
	adds r5, r5, r0
	ldrb r0, [r5]
	adds r7, r7, r0
_0800B830:
	adds r6, #1
	ldr r0, [sp, #0xc]
	subs r0, #3
	str r0, [sp, #0xc]
	movs r1, #4
	add sb, r1
	add sl, r1
	ldr r2, [sp, #4]
	adds r2, #1
	str r2, [sp, #4]
	ldrb r0, [r6]
	cmp r0, #0
	bne _0800B78C
_0800B84A:
	ldr r0, _0800B870 @ => 0x03001840
	ldr r1, [sp, #4]
	str r1, [r0, #0x20]
	movs r0, #1
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800B864: .4byte ROMREF_0805A810
_0800B868: .4byte gUnk_03001864
_0800B86C: .4byte ROMREF_0805A7EC
_0800B870: .4byte gUnk_03001840

	thumb_func_start FUN_0800B874
FUN_0800B874: @ 0x0800B874
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r2, _0800B8A8 @ => 0x03001840
	lsls r0, r6, #2
	adds r1, r2, #0
	adds r1, #0x24
	adds r0, r0, r1
	ldr r5, [r0]
	ldr r0, [r2, #0x14]
	cmp r0, #3
	bhi _0800B90A
	lsls r1, r6, #1
	movs r3, #0x92
	lsls r3, r3, #1
	adds r0, r2, r3
	adds r0, r1, r0
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r7, r1, #0
	cmp r2, #0x16
	bne _0800B8AC
	adds r0, r5, #0
	bl FUN_08003EC4
	b _0800B8D0
	.align 2, 0
_0800B8A8: .4byte gUnk_03001840
_0800B8AC:
	cmp r2, #0xa
	bgt _0800B8B6
	movs r2, #0x80
	lsls r2, r2, #0xa
	b _0800B8C6
_0800B8B6:
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r4, #0
	bl __divsi3
	adds r2, r0, r4
_0800B8C6:
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #0
	bl FUN_08003E3C
_0800B8D0:
	ldr r4, _0800B910 @ => 0x03001840
	movs r3, #0x92
	lsls r3, r3, #1
	adds r0, r4, r3
	adds r7, r7, r0
	movs r1, #0
	ldrsh r0, [r7, r1]
	cmp r0, #0x16
	bne _0800B90A
	ldr r0, [r5, #0x20]
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x24]
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	bl FUN_08003DBC
	ldr r1, _0800B914 @ => 0x0805A7E0
	adds r0, r5, #0
	bl FUN_08003DDC
	lsls r0, r6, #2
	movs r2, #0xb2
	lsls r2, r2, #1
	adds r1, r4, r2
	adds r0, r0, r1
	movs r1, #1
	str r1, [r0]
	movs r0, #0
	strh r0, [r7]
_0800B90A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B910: .4byte gUnk_03001840
_0800B914: .4byte ROMREF_0805A7E0

	thumb_func_start FUN_0800B918
FUN_0800B918: @ 0x0800B918
	push {lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r2, r1, #0
	adds r0, r1, #0
	subs r0, #0x41
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bls _0800B972
	adds r0, r1, #0
	subs r0, #0x61
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bls _0800B972
	cmp r1, #0x27
	bne _0800B940
	movs r0, #0x1f
	b _0800B972
_0800B940:
	cmp r1, #0x21
	bne _0800B948
	movs r0, #0x20
	b _0800B972
_0800B948:
	cmp r1, #0x2d
	bne _0800B950
	movs r0, #0x1d
	b _0800B972
_0800B950:
	cmp r1, #0x88
	bne _0800B958
	movs r0, #0x1e
	b _0800B972
_0800B958:
	cmp r1, #0x8c
	bne _0800B960
	movs r0, #0x1c
	b _0800B972
_0800B960:
	cmp r1, #0x8f
	bne _0800B968
	movs r0, #0x1b
	b _0800B972
_0800B968:
	cmp r2, #0x98
	beq _0800B970
	movs r0, #0x17
	b _0800B972
_0800B970:
	movs r0, #0x1a
_0800B972:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0800B978
FUN_0800B978: @ 0x0800B978
	ldr r1, _0800B980 @ => 0x03001840
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_0800B980: .4byte gUnk_03001840

	thumb_func_start FUN_0800B984
FUN_0800B984: @ 0x0800B984
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r7, [sp, #0x20]
	bl FUN_0800B9D0
	ldr r4, _0800B9CC @ => 0x03001840
	str r5, [r4, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	bl FUN_0800BB54
	str r0, [r4, #8]
	mov r0, r8
	str r0, [r4, #0xc]
	mov r0, sb
	str r0, [r4, #0x10]
	str r7, [r4, #0x14]
	ldr r0, [sp, #0x24]
	str r0, [r4, #0x18]
	ldr r0, [sp, #0x1c]
	str r0, [r4, #0x1c]
	bl FUN_0800B754
	str r0, [r4]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B9CC: .4byte gUnk_03001840

	thumb_func_start FUN_0800B9D0
FUN_0800B9D0: @ 0x0800B9D0
	push {r4, r5, r6, r7, lr}
	movs r2, #0
	ldr r0, _0800BA1C @ => 0x03001840
	ldr r1, [r0, #0x20]
	adds r5, r0, #0
	cmp r2, r1
	bge _0800BA04
	adds r7, r5, #0
	adds r4, r5, #0
	adds r4, #0x24
	adds r3, r5, #0
	adds r3, #0xa4
	movs r6, #2
_0800B9EA:
	ldr r0, [r3]
	cmp r0, #0
	bne _0800B9F8
	ldr r1, [r4]
	ldr r0, [r1, #0xc]
	orrs r0, r6
	str r0, [r1, #0xc]
_0800B9F8:
	adds r4, #4
	adds r3, #4
	adds r2, #1
	ldr r0, [r7, #0x20]
	cmp r2, r0
	blt _0800B9EA
_0800BA04:
	movs r2, #0xf2
	lsls r2, r2, #1
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0802CB40
	movs r0, #0
	str r0, [r5]
	str r0, [r5, #0x20]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BA1C: .4byte gUnk_03001840

	thumb_func_start FUN_0800BA20
FUN_0800BA20: @ 0x0800BA20
	ldr r0, _0800BA34 @ => 0x03001840
	ldr r1, [r0, #0x20]
	subs r1, #1
	lsls r1, r1, #2
	movs r2, #0xb2
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r0, [r1]
	bx lr
	.align 2, 0
_0800BA34: .4byte gUnk_03001840

	thumb_func_start FUN_0800BA38
FUN_0800BA38: @ 0x0800BA38
	push {lr}
	adds r1, r0, #0
	ldr r0, _0800BA54 @ => 0x03001840
	ldr r0, [r0, #0x14]
	cmp r0, #1
	beq _0800BA64
	cmp r0, #1
	blo _0800BA64
	cmp r0, #2
	beq _0800BA58
	cmp r0, #3
	beq _0800BA5E
	movs r0, #0
	b _0800BA68
	.align 2, 0
_0800BA54: .4byte gUnk_03001840
_0800BA58:
	adds r0, r1, #0
	subs r0, #0xf0
	b _0800BA68
_0800BA5E:
	adds r0, r1, #0
	subs r0, #0xf0
	b _0800BA68
_0800BA64:
	adds r0, r1, #0
	adds r0, #0xf0
_0800BA68:
	pop {r1}
	bx r1

	thumb_func_start FUN_0800BA6C
FUN_0800BA6C: @ 0x0800BA6C
	push {lr}
	adds r1, r0, #0
	ldr r0, _0800BA88 @ => 0x03001840
	ldr r0, [r0, #0x14]
	cmp r0, #1
	beq _0800BA98
	cmp r0, #1
	blo _0800BA92
	cmp r0, #2
	beq _0800BA8C
	cmp r0, #3
	beq _0800BA98
	movs r0, #0
	b _0800BA9C
	.align 2, 0
_0800BA88: .4byte gUnk_03001840
_0800BA8C:
	adds r0, r1, #0
	subs r0, #0x30
	b _0800BA9C
_0800BA92:
	adds r0, r1, #0
	subs r0, #0x30
	b _0800BA9C
_0800BA98:
	adds r0, r1, #0
	adds r0, #0x30
_0800BA9C:
	pop {r1}
	bx r1

	thumb_func_start FUN_0800BAA0
FUN_0800BAA0: @ 0x0800BAA0
	push {lr}
	ldr r1, _0800BAB8 @ => 0x03001840
	ldr r2, [r1, #0x14]
	cmp r2, #1
	beq _0800BAF8
	cmp r2, #1
	blo _0800BAE4
	cmp r2, #2
	beq _0800BABC
	cmp r2, #3
	beq _0800BAD0
	b _0800BB06
	.align 2, 0
_0800BAB8: .4byte gUnk_03001840
_0800BABC:
	lsls r0, r0, #2
	adds r1, #0x24
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0800BACC @ => 0x0805A7BC
	bl FUN_08003DDC
	b _0800BB06
	.align 2, 0
_0800BACC: .4byte ROMREF_0805A7BC
_0800BAD0:
	lsls r0, r0, #2
	adds r1, #0x24
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0800BAE0 @ => 0x0805A7B0
	bl FUN_08003DDC
	b _0800BB06
	.align 2, 0
_0800BAE0: .4byte ROMREF_0805A7B0
_0800BAE4:
	lsls r0, r0, #2
	adds r1, #0x24
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0800BAF4 @ => 0x0805A7C8
	bl FUN_08003DDC
	b _0800BB06
	.align 2, 0
_0800BAF4: .4byte ROMREF_0805A7C8
_0800BAF8:
	lsls r0, r0, #2
	adds r1, #0x24
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0800BB0C @ => 0x0805A7D4
	bl FUN_08003DDC
_0800BB06:
	pop {r0}
	bx r0
	.align 2, 0
_0800BB0C: .4byte ROMREF_0805A7D4

	thumb_func_start FUN_0800BB10
FUN_0800BB10: @ 0x0800BB10
	push {lr}
	ldr r1, _0800BB20 @ => 0x03001840
	ldr r2, [r1, #0x18]
	cmp r2, #0
	beq _0800BB24
	cmp r2, #1
	beq _0800BB3C
	b _0800BB4E
	.align 2, 0
_0800BB20: .4byte gUnk_03001840
_0800BB24:
	lsls r0, r0, #2
	adds r1, #0x24
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, _0800BB38 @ => 0xFFF60000
	movs r1, #0
	bl FUN_08001744
	b _0800BB4E
	.align 2, 0
_0800BB38: .4byte 0xFFF60000
_0800BB3C:
	lsls r0, r0, #2
	adds r1, #0x24
	adds r0, r0, r1
	ldr r0, [r0]
	movs r2, #0xa0
	lsls r2, r2, #0xc
	movs r1, #0
	bl FUN_08001744
_0800BB4E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0800BB54
FUN_0800BB54: @ 0x0800BB54
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	movs r5, #0
	bl FUN_08050820
	ldrb r1, [r0]
	cmp r1, #0
	beq _0800BB92
	cmp r1, #0xa
	beq _0800BB92
	adds r4, r0, #0
_0800BB6A:
	ldrb r0, [r4]
	cmp r0, #0x20
	bne _0800BB74
	adds r5, #0xe
	b _0800BB86
_0800BB74:
	ldrb r0, [r4]
	bl FUN_0800B918
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0800BBA0 @ => 0x0805A7EC
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r5, r5, r0
_0800BB86:
	adds r4, #1
	ldrb r0, [r4]
	cmp r0, #0
	beq _0800BB92
	cmp r0, #0xa
	bne _0800BB6A
_0800BB92:
	lsrs r0, r5, #0x1f
	adds r0, r5, r0
	asrs r0, r0, #1
	subs r0, r6, r0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800BBA0: .4byte ROMREF_0805A7EC

	thumb_func_start FUN_0800BBA4
FUN_0800BBA4: @ 0x0800BBA4
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08009B04
	adds r5, r0, #0
	ldr r0, [r5]
	bl FUN_080012D8
	adds r4, r0, #0
	movs r0, #4
	ldrsh r1, [r5, r0]
	lsls r1, r1, #0x10
	movs r0, #6
	ldrsh r2, [r5, r0]
	lsls r2, r2, #0x10
	adds r0, r4, #0
	bl FUN_08001728
	ldr r0, _0800BC3C @ => 0x00060015
	str r0, [r4, #0xc]
	ldrb r0, [r5, #8]
	strh r0, [r4, #0xa]
	ldrb r0, [r5, #8]
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r5, r4, r1
	strh r0, [r5]
	adds r2, r4, #0
	adds r2, #0xa5
	ldrb r1, [r2]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl FUN_0803977C
	ldr r0, _0800BC40 @ => FUN_0800BC50
	str r0, [r4, #0x50]
	adds r1, r4, #0
	adds r1, #0x94
	ldr r0, _0800BC44 @ => FUN_0801519C
	str r0, [r1]
	subs r1, #0x1a
	movs r0, #0x18
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001FB0
	ldr r1, _0800BC48 @ => 0x09FB6200
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl FUN_0803EF14
	ldrh r1, [r5]
	lsls r1, r1, #4
	ldr r0, _0800BC4C @ => 0x0805A820
	adds r1, r1, r0
	adds r0, r4, #0
	bl FUN_080015B8
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800BC3C: .4byte 0x00060015
_0800BC40: .4byte FUN_0800BC50
_0800BC44: .4byte FUN_0801519C
_0800BC48: .4byte ROMREF_09FB6200
_0800BC4C: .4byte ROMREF_0805A820

	thumb_func_start FUN_0800BC50
FUN_0800BC50: @ 0x0800BC50
	push {lr}
	adds r2, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800BC7C
	cmp r0, #1
	bne _0800BC7C
	ldr r1, [r2, #0xc]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	bne _0800BC7C
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r2, #0xc]
_0800BC7C:
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #0
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0800BC8C
FUN_0800BC8C: @ 0x0800BC8C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	movs r6, #1
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _0800BC9E
	strh r6, [r4, #6]
_0800BC9E:
	ldrh r2, [r4, #6]
	cmp r2, #1
	beq _0800BD1E
	cmp r2, #1
	bgt _0800BCAE
	cmp r2, #0
	beq _0800BCB4
	b _0800BD2C
_0800BCAE:
	cmp r2, #0xc
	beq _0800BCFC
	b _0800BD2C
_0800BCB4:
	adds r0, r5, #0
	adds r0, #0x68
	movs r1, #0
	strh r2, [r0]
	adds r0, #2
	strb r1, [r0]
	movs r3, #0x8d
	lsls r3, r3, #1
	movs r0, #6
	str r0, [sp]
	movs r0, #0x19
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xa
	bl FUN_0803DB6C
	ldr r2, [r4]
	ldr r1, _0800BCF8 @ => 0x0805A850
	ldr r0, [r5, #0x34]
	ldrb r0, [r0, #0x12]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0x12]
	ldr r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0xe
	strh r1, [r0]
	movs r0, #0xc
	strh r0, [r4, #6]
	b _0800BD2C
	.align 2, 0
_0800BCF8: .4byte ROMREF_0805A850
_0800BCFC:
	ldr r2, [r4]
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0800BD2C
	adds r0, r2, #0
	movs r1, #0xa
	bl FUN_08001F20
	ldr r0, [r5, #0x34]
	movs r1, #1
	bl FUN_0803BC7C
	strh r6, [r4, #6]
	b _0800BD2C
_0800BD1E:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #6
	movs r3, #4
	bl FUN_0803DC54
	movs r6, #2
_0800BD2C:
	adds r0, r6, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0800BD38
FUN_0800BD38: @ 0x0800BD38
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	movs r7, #1
	ldrh r0, [r4, #6]
	cmp r0, #0x32
	beq _0800BDC0
	cmp r0, #0x32
	bgt _0800BD58
	cmp r0, #0
	beq _0800BD64
	cmp r0, #1
	bne _0800BD56
	b _0800BEEC
_0800BD56:
	b _0800BF16
_0800BD58:
	cmp r0, #0x33
	beq _0800BE02
	cmp r0, #0x34
	bne _0800BD62
	b _0800BEB4
_0800BD62:
	b _0800BF16
_0800BD64:
	movs r3, #0x8d
	lsls r3, r3, #1
	movs r0, #6
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xa
	bl FUN_0803DB6C
	ldr r2, [r4]
	ldr r1, _0800BDA0 @ => 0x0805A830
	ldr r0, [r5, #0x34]
	ldrb r0, [r0, #0x12]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0x12]
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	bne _0800BDA4
	ldr r0, [r5, #0x34]
	ldr r2, [r4]
	adds r2, #0x18
	movs r1, #1
	bl FUN_08001A84
	b _0800BDB0
	.align 2, 0
_0800BDA0: .4byte ROMREF_0805A830
_0800BDA4:
	ldr r0, [r5, #0x34]
	ldr r2, [r4]
	adds r2, #0x18
	movs r1, #4
	bl FUN_08001A84
_0800BDB0:
	ldr r0, [r4]
	adds r1, r5, #0
	movs r2, #1
	bl FUN_08006DFC
	movs r0, #0x32
	strh r0, [r4, #6]
	b _0800BF16
_0800BDC0:
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0800BDD0
	b _0800BF16
_0800BDD0:
	ldr r0, [r5, #0x34]
	movs r1, #3
	bl FUN_0803BC7C
	movs r0, #0x5e
	bl FUN_0804DE0C
	ldr r0, [r4]
	bl FUN_08001F78
	movs r0, #0xa9
	bl FUN_0804DE0C
	adds r1, r5, #0
	adds r1, #0xe0
	str r0, [r1]
	movs r0, #0x33
	strh r0, [r4, #6]
	ldr r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0x78
	strh r1, [r0]
	b _0800BF16
_0800BE02:
	ldr r6, _0800BE50 @ => 0x03003E28
	ldrh r0, [r5, #8]
	bl FUN_0803DCFC
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	movs r1, #1
	bl FUN_08038A30
	ldr r0, _0800BE54 @ => 0x03004200
	ldr r1, [r4]
	ldr r0, [r0]
	cmp r1, r0
	bne _0800BE28
	movs r0, #1
	bl FUN_0804A870
_0800BE28:
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _0800BE58
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800BE4A
	ldrh r0, [r5, #8]
	bl FUN_0803DCFC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	bl FUN_08038B24
_0800BE4A:
	movs r1, #1
	b _0800BE5A
	.align 2, 0
_0800BE50: .4byte gUnk_03003E28
_0800BE54: .4byte gUnk_03004200
_0800BE58:
	movs r1, #0
_0800BE5A:
	ldr r0, _0800BE8C @ => 0x03003DF0
	ldrb r0, [r0, #2]
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x11
	bls _0800BE6A
	movs r1, #1
_0800BE6A:
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _0800BE72
	movs r1, #0
_0800BE72:
	cmp r1, #0
	bne _0800BF16
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	bne _0800BE90
	ldr r0, [r5, #0x34]
	ldr r2, [r4]
	adds r2, #0x18
	movs r1, #1
	bl FUN_08001A84
	b _0800BE9C
	.align 2, 0
_0800BE8C: .4byte gUnk_03003DF0
_0800BE90:
	ldr r0, [r5, #0x34]
	ldr r2, [r4]
	adds r2, #0x18
	movs r1, #4
	bl FUN_08001A84
_0800BE9C:
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r0, [r0]
	bl FUN_0804E03C
	movs r0, #0x34
	strh r0, [r4, #6]
	ldr r0, [r4]
	movs r1, #0x1a
	bl FUN_08001F20
	b _0800BF16
_0800BEB4:
	ldr r2, [r4]
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0800BF16
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	bne _0800BED4
	ldr r0, [r5, #0x34]
	adds r2, #0x18
	movs r1, #0
	bl FUN_08001A84
	b _0800BEDE
_0800BED4:
	ldr r0, [r5, #0x34]
	adds r2, #0x18
	movs r1, #3
	bl FUN_08001A84
_0800BEDE:
	ldr r0, [r4]
	movs r1, #4
	bl FUN_08001F20
	movs r0, #1
	strh r0, [r4, #6]
	b _0800BF16
_0800BEEC:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #6
	movs r3, #4
	bl FUN_0803DC54
	ldr r1, [r4]
	ldr r0, _0800BF20 @ => FUN_08001EBC
	str r0, [r1, #0x64]
	ldr r0, [r5, #0x34]
	movs r1, #0
	bl FUN_0803BC7C
	adds r0, r5, #0
	bl FUN_0803D868
	cmp r0, #1
	bne _0800BF14
	movs r0, #0
	str r0, [r5, #0x60]
_0800BF14:
	movs r7, #2
_0800BF16:
	adds r0, r7, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800BF20: .4byte FUN_08001EBC

	thumb_func_start FUN_0800BF24
FUN_0800BF24: @ 0x0800BF24
	push {lr}
	adds r3, r0, #0
	adds r0, #0x68
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0xa0
	lsls r0, r0, #4
	cmp r1, r0
	bne _0800BF46
	ldr r0, [r3, #0x34]
	adds r0, #0xd8
	movs r2, #2
	movs r1, #2
	strh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x6a
	strb r2, [r0]
_0800BF46:
	movs r0, #0
	str r0, [r3, #0x60]
	adds r1, r3, #0
	adds r1, #0x5c
	movs r0, #0x1e
	strh r0, [r1]
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start FUN_0800BF58
FUN_0800BF58: @ 0x0800BF58
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl FUN_08001D8C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800BF72
	ldr r0, [r4, #0x40]
	cmp r0, #1
	bne _0800BF72
	movs r0, #0
	b _0800BF74
_0800BF72:
	movs r0, #1
_0800BF74:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0800BF7C
FUN_0800BF7C: @ 0x0800BF7C
	push {r4, lr}
	adds r4, r1, #0
	bl FUN_0803D868
	cmp r0, #0
	bne _0800BF8C
	movs r0, #0x23
	b _0800BF8E
_0800BF8C:
	movs r0, #0
_0800BF8E:
	strb r0, [r4]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_0800BF98
FUN_0800BF98: @ 0x0800BF98
	push {r4, lr}
	adds r4, r1, #0
	cmp r2, #0x14
	beq _0800BFC2
	cmp r2, #0x23
	bne _0800BFD8
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _0800BFD8
	ldrb r0, [r4, #0xa]
	movs r1, #0x1b
	bl FUN_0803A10C
	cmp r0, #0
	beq _0800BFD4
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _0800BFD8
	ldrb r0, [r4, #0xa]
	movs r1, #0x1a
	b _0800BFCC
_0800BFC2:
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _0800BFD8
	ldrb r0, [r4, #0xa]
	movs r1, #0x19
_0800BFCC:
	bl FUN_0803A10C
	cmp r0, #0
	bne _0800BFD8
_0800BFD4:
	movs r0, #0
	b _0800BFDA
_0800BFD8:
	movs r0, #1
_0800BFDA:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_0800BFE0
FUN_0800BFE0: @ 0x0800BFE0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	bl FUN_0803D1F0
	adds r5, r0, #0
	cmp r5, #0
	beq _0800C032
	strh r6, [r5, #4]
	cmp r6, #0x23
	bne _0800C006
	movs r0, #1
	str r0, [r4, #0x60]
	movs r1, #0
	movs r0, #0
	strb r0, [r5, #0x11]
	b _0800C008
_0800C006:
	movs r1, #2
_0800C008:
	ldr r0, [r4, #0x34]
	add r2, sp, #4
	bl FUN_08001A84
	ldr r0, [r7, #0x18]
	ldr r1, [r7, #0x1c]
	str r0, [r4, #0x54]
	str r1, [r4, #0x58]
	adds r2, r5, #0
	adds r2, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, r7, #0
	add r1, sp, #4
	movs r3, #0
	bl FUN_08043BB8
	adds r0, r7, #0
	movs r1, #0xa
	bl FUN_08001F20
_0800C032:
	adds r0, r5, #0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_0800C03C
FUN_0800C03C: @ 0x0800C03C
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0803D8C8
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	cmp r0, #0x14
	beq _0800C058
	cmp r0, #0x23
	bne _0800C060
	adds r0, r4, #0
	bl FUN_0800BD38
	b _0800C062
_0800C058:
	adds r0, r4, #0
	bl FUN_0800BC8C
	b _0800C062
_0800C060:
	movs r0, #0
_0800C062:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start FUN_0800C068
FUN_0800C068: @ 0x0800C068
	bx lr
	.align 2, 0

	thumb_func_start FUN_0800C06C
FUN_0800C06C: @ 0x0800C06C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r1, #4
	ldr r0, _0800C0C4 @ => 0x03003210
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0800C084
	b _0800C288
_0800C084:
	movs r0, #0
	mov sl, r0
_0800C088:
	movs r0, #0x68
	mov r1, sl
	muls r1, r0, r1
	ldr r0, _0800C0C8 @ => 0x03003218
	adds r7, r1, r0
	ldr r0, [r7, #0x14]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0800C09E
	b _0800C27C
_0800C09E:
	ldr r0, [r7, #0x14]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C104
	ldrh r0, [r7, #0x38]
	cmp r0, #0
	beq _0800C0F8
	cmp r0, #1
	bne _0800C0CC
	ldr r0, [r7, #0x30]
	str r0, [r7, #0x20]
	ldr r0, [r7, #0x34]
	str r0, [r7, #0x24]
	ldr r0, [r7, #0x14]
	subs r1, #3
	ands r0, r1
	str r0, [r7, #0x14]
	b _0800C0F0
	.align 2, 0
_0800C0C4: .4byte gUnk_03003210
_0800C0C8: .4byte gUnk_03003218
_0800C0CC:
	ldr r0, [r7, #0x30]
	ldr r1, [r7, #0x20]
	subs r0, r0, r1
	ldrh r1, [r7, #0x38]
	bl FUN_0802C364
	ldr r1, [r7, #0x20]
	adds r1, r1, r0
	str r1, [r7, #0x20]
	ldr r0, [r7, #0x34]
	ldr r1, [r7, #0x24]
	subs r0, r0, r1
	ldrh r1, [r7, #0x38]
	bl FUN_0802C364
	ldr r1, [r7, #0x24]
	adds r1, r1, r0
	str r1, [r7, #0x24]
_0800C0F0:
	ldrh r0, [r7, #0x38]
	subs r0, #1
	strh r0, [r7, #0x38]
	b _0800C104
_0800C0F8:
	ldr r0, [r7, #0x28]
	ldr r1, [r7, #0x2c]
	adds r2, r7, #0
	adds r2, #0x20
	bl FUN_0802C3C4
_0800C104:
	ldr r0, [r7, #0x20]
	str r0, [r7, #0x18]
	ldr r0, [r7, #0x24]
	str r0, [r7, #0x1c]
	ldr r0, [r7, #0x14]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800C11C
	mov r0, sl
	bl FUN_0800C384
_0800C11C:
	ldr r0, [r7, #0x14]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0800C180
	ldrh r4, [r7, #0x3c]
	ldrh r2, [r7, #0x3a]
	adds r1, r4, r2
	strh r1, [r7, #0x3a]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	ble _0800C154
	adds r2, r7, #0
	adds r2, #0x40
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r3, [r2]
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r1, r0
	blt _0800C178
	strh r3, [r7, #0x3a]
	movs r0, #0x3e
	ldrsh r1, [r7, r0]
	movs r3, #0
	ldrsh r0, [r2, r3]
	b _0800C170
_0800C154:
	cmp r0, #0
	bge _0800C178
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r7, #0x3e]
	movs r5, #0x3e
	ldrsh r1, [r7, r5]
	cmp r0, r1
	bgt _0800C178
	strh r2, [r7, #0x3a]
	adds r0, r7, #0
	adds r0, #0x40
	movs r2, #0
	ldrsh r0, [r0, r2]
_0800C170:
	cmp r1, r0
	beq _0800C178
	rsbs r0, r4, #0
	strh r0, [r7, #0x3c]
_0800C178:
	ldr r0, [r7, #0x14]
	movs r1, #8
	orrs r0, r1
	str r0, [r7, #0x14]
_0800C180:
	ldr r0, [r7, #0x14]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0800C1A2
	adds r1, r7, #0
	adds r1, #0x42
	adds r0, r7, #0
	adds r0, #0x44
	ldrh r0, [r0]
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	ldr r0, [r7, #0x14]
	movs r1, #8
	orrs r0, r1
	str r0, [r7, #0x14]
_0800C1A2:
	ldr r0, [r7, #0x14]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0800C272
	adds r0, r7, #0
	adds r0, #0x42
	ldrh r5, [r0]
	lsrs r5, r5, #8
	ldrh r4, [r7, #0x3a]
	adds r0, r5, #0
	bl FUN_0802C2B4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, #0
	bl FUN_0802C2C8
	movs r1, #0x4a
	adds r1, r1, r7
	mov sb, r1
	strh r0, [r1]
	adds r0, r5, #0
	bl FUN_0802C2A0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl FUN_0802C2C8
	adds r6, r7, #0
	adds r6, #0x4c
	strh r0, [r6]
	adds r0, r5, #0
	bl FUN_0802C2A0
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl FUN_0802C2C8
	movs r2, #0x4e
	adds r2, r2, r7
	mov r8, r2
	strh r0, [r2]
	adds r0, r5, #0
	bl FUN_0802C2B4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl FUN_0802C2C8
	adds r4, r7, #0
	adds r4, #0x50
	strh r0, [r4]
	mov r3, sb
	movs r5, #0
	ldrsh r0, [r3, r5]
	movs r1, #0x22
	ldrsh r3, [r7, r1]
	muls r0, r3, r0
	movs r1, #0xf0
	lsls r1, r1, #7
	subs r1, r1, r0
	adds r0, r7, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	subs r1, r1, r0
	movs r5, #0
	ldrsh r0, [r6, r5]
	movs r5, #0x26
	ldrsh r2, [r7, r5]
	muls r0, r2, r0
	subs r1, r1, r0
	str r1, [r7, #0x54]
	mov r1, r8
	movs r5, #0
	ldrsh r0, [r1, r5]
	muls r0, r3, r0
	movs r1, #0xa0
	lsls r1, r1, #7
	subs r1, r1, r0
	adds r0, r7, #0
	adds r0, #0x48
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #8
	subs r1, r1, r0
	movs r5, #0
	ldrsh r0, [r4, r5]
	muls r0, r2, r0
	subs r1, r1, r0
	str r1, [r7, #0x58]
	ldr r0, [r7, #0x14]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x14]
_0800C272:
	ldr r0, [r7, #0x14]
	movs r1, #0xa0
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r7, #0x14]
_0800C27C:
	movs r0, #1
	add sl, r0
	mov r1, sl
	cmp r1, #3
	bhi _0800C288
	b _0800C088
_0800C288:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0800C298
FUN_0800C298: @ 0x0800C298
	push {r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r0, _0800C314 @ => 0x03003218
	mov ip, r0
	ldr r6, _0800C318 @ => 0x0400002A
	ldr r5, _0800C31C @ => 0x0FFF0000
_0800C2A4:
	movs r0, #0x68
	muls r0, r4, r0
	mov r1, ip
	adds r3, r0, r1
	ldr r0, [r3, #0x14]
	movs r1, #0xa0
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0800C374
	lsls r1, r4, #2
	ldr r7, _0800C320 @ => 0x04000010
	adds r2, r1, r7
	movs r7, #0x1a
	ldrsh r0, [r3, r7]
	strh r0, [r2]
	ldr r0, _0800C324 @ => 0x04000012
	adds r1, r1, r0
	movs r2, #0x1e
	ldrsh r0, [r3, r2]
	strh r0, [r1]
	ldr r0, [r3, #0x14]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0800C374
	cmp r4, #2
	bne _0800C32C
	ldr r1, _0800C328 @ => 0x04000020
	adds r0, r3, #0
	adds r0, #0x4a
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r3, #0
	adds r0, #0x4c
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r3, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r3, #0
	adds r0, #0x50
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r3, #0x54]
	strh r0, [r1]
	ands r0, r5
	asrs r0, r0, #0x10
	strh r0, [r6]
	adds r1, #4
	b _0800C368
	.align 2, 0
_0800C314: .4byte gUnk_03003218
_0800C318: .4byte 0x0400002A
_0800C31C: .4byte 0x0FFF0000
_0800C320: .4byte 0x04000010
_0800C324: .4byte 0x04000012
_0800C328: .4byte 0x04000020
_0800C32C:
	cmp r4, #3
	bne _0800C374
	ldr r1, _0800C380 @ => 0x04000030
	adds r0, r3, #0
	adds r0, #0x4a
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r3, #0
	adds r0, #0x4c
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r3, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r3, #0
	adds r0, #0x50
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r3, #0x54]
	strh r0, [r1]
	adds r1, #2
	ands r0, r5
	asrs r0, r0, #0x10
	strh r0, [r1]
	adds r1, #2
_0800C368:
	ldr r0, [r3, #0x58]
	strh r0, [r1]
	adds r1, #2
	ands r0, r5
	asrs r0, r0, #0x10
	strh r0, [r1]
_0800C374:
	adds r4, #1
	cmp r4, #3
	bls _0800C2A4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C380: .4byte 0x04000030

	thumb_func_start FUN_0800C384
FUN_0800C384: @ 0x0800C384
	push {r4, lr}
	movs r1, #0x68
	muls r1, r0, r1
	ldr r0, _0800C3F4 @ => 0x03003218
	adds r4, r1, r0
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r2, [r0]
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0800C3BE
	adds r1, r4, #0
	adds r1, #0x5c
	ldrh r3, [r1]
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	bl FUN_0802C254
	adds r1, r4, #0
	adds r1, #0x64
	movs r2, #0
	ldrsh r1, [r1, r2]
	muls r1, r0, r1
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
_0800C3BE:
	adds r0, r4, #0
	adds r0, #0x62
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _0800C3EE
	adds r1, r4, #0
	adds r1, #0x5e
	ldrh r3, [r1]
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	bl FUN_0802C210
	adds r1, r4, #0
	adds r1, #0x66
	movs r2, #0
	ldrsh r1, [r1, r2]
	muls r1, r0, r1
	ldr r0, [r4, #0x1c]
	adds r0, r0, r1
	str r0, [r4, #0x1c]
_0800C3EE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800C3F4: .4byte gUnk_03003218

	thumb_func_start FUN_0800C3F8
FUN_0800C3F8: @ 0x0800C3F8
	push {lr}
	movs r0, #0
	bl FUN_0800C558
	ldr r1, _0800C414 @ => 0x03003210
	movs r0, #0
	str r0, [r1]
	movs r0, #3
_0800C408:
	subs r0, #1
	cmp r0, #0
	bge _0800C408
	pop {r0}
	bx r0
	.align 2, 0
_0800C414: .4byte gUnk_03003210

	thumb_func_start FUN_0800C418
FUN_0800C418: @ 0x0800C418
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0800C434
	movs r0, #0x80
	lsls r0, r0, #0x11
	lsls r0, r4
	lsrs r0, r0, #0x10
	bl FUN_0800C5EC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0800C434
FUN_0800C434: @ 0x0800C434
	sub sp, #4
	str r1, [sp]
	movs r1, #0x68
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r1, _0800C474 @ => 0x03003218
	adds r2, r2, r1
	ldr r1, [sp]
	str r1, [r2]
	ldr r1, [sp]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x1b
	lsls r1, r1, #0xb
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r1, r1, r3
	str r1, [r2, #0xc]
	str r1, [r2, #8]
	ldr r1, [sp]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xe
	adds r1, r1, r3
	str r1, [r2, #0x10]
	lsls r0, r0, #1
	ldr r1, _0800C478 @ => 0x04000008
	adds r0, r0, r1
	mov r1, sp
	ldrh r1, [r1]
	strh r1, [r0]
	add sp, #4
	bx lr
	.align 2, 0
_0800C474: .4byte gUnk_03003218
_0800C478: .4byte 0x04000008

	thumb_func_start FUN_0800C47C
FUN_0800C47C: @ 0x0800C47C
	movs r2, #0x68
	muls r2, r0, r2
	ldr r0, _0800C4A4 @ => 0x03003218
	adds r2, r2, r0
	str r1, [r2]
	lsls r0, r1, #0x13
	lsrs r0, r0, #0x1b
	lsls r0, r0, #0xb
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r0, r0, r3
	str r0, [r2, #0xc]
	str r0, [r2, #8]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xe
	adds r1, r1, r3
	str r1, [r2, #0x10]
	bx lr
	.align 2, 0
_0800C4A4: .4byte gUnk_03003218

	thumb_func_start FUN_0800C4A8
FUN_0800C4A8: @ 0x0800C4A8
	ldr r1, _0800C4B8 @ => 0x03003210
	movs r2, #0x68
	muls r0, r2, r0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0800C4B8: .4byte gUnk_03003210

	thumb_func_start FUN_0800C4BC
FUN_0800C4BC: @ 0x0800C4BC
	push {lr}
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0x11
	lsls r0, r1
	lsrs r0, r0, #0x10
	bl FUN_0800C5EC
	pop {r0}
	bx r0

	thumb_func_start FUN_0800C4D0
FUN_0800C4D0: @ 0x0800C4D0
	push {lr}
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0x11
	lsls r0, r1
	lsrs r0, r0, #0x10
	bl FUN_0800C5DC
	pop {r0}
	bx r0

	thumb_func_start FUN_0800C4E4
FUN_0800C4E4: @ 0x0800C4E4
	push {r4, r5, lr}
	movs r3, #0
	ldr r1, _0800C518 @ => 0x03003218
	movs r5, #0xa0
	lsls r5, r5, #3
	movs r4, #0x80
	lsls r4, r4, #2
	ldr r2, _0800C51C @ => 0x04000008
_0800C4F4:
	ldr r0, [r1, #0x14]
	ands r0, r5
	cmp r0, #0
	beq _0800C508
	ldr r0, [r1, #0x14]
	ands r0, r4
	cmp r0, #0
	beq _0800C508
	ldrh r0, [r1]
	strh r0, [r2]
_0800C508:
	adds r1, #0x68
	adds r2, #2
	adds r3, #1
	cmp r3, #3
	bls _0800C4F4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800C518: .4byte gUnk_03003218
_0800C51C: .4byte 0x04000008

	thumb_func_start FUN_0800C520
FUN_0800C520: @ 0x0800C520
	push {lr}
	movs r2, #0
	subs r0, #1
	cmp r0, #1
	bhi _0800C530
	cmp r1, #1
	ble _0800C530
	movs r2, #1
_0800C530:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0800C538
FUN_0800C538: @ 0x0800C538
	ldr r2, _0800C548 @ => 0x03003210
	movs r1, #0x68
	muls r0, r1, r0
	adds r0, r0, r2
	ldrb r0, [r0, #8]
	lsrs r0, r0, #7
	bx lr
	.align 2, 0
_0800C548: .4byte gUnk_03003210

	thumb_func_start FUN_0800C54C
FUN_0800C54C: @ 0x0800C54C
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r1, [r0]
	movs r0, #7
	ands r0, r1
	bx lr

	thumb_func_start FUN_0800C558
FUN_0800C558: @ 0x0800C558
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x13
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0800C59C @ => 0x03003210
	movs r0, #0x89
	lsls r0, r0, #1
	adds r2, r1, r0
	subs r0, #0x12
	strh r0, [r2]
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r1, r1, r2
	strh r0, [r1]
	ldr r0, _0800C5A0 @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ands r0, r1
	cmp r0, #0
	bne _0800C592
	ldr r0, _0800C5A4 @ => 0x030042B0
	ldrb r0, [r0, #6]
	bl FUN_08047074
_0800C592:
	bl FUN_0800CB20
	pop {r0}
	bx r0
	.align 2, 0
_0800C59C: .4byte gUnk_03003210
_0800C5A0: .4byte gUnk_03004374
_0800C5A4: .4byte gUnk_030042B0

	thumb_func_start FUN_0800C5A8
FUN_0800C5A8: @ 0x0800C5A8
	movs r0, #0
	bx lr

	thumb_func_start FUN_0800C5AC
FUN_0800C5AC: @ 0x0800C5AC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r2, [r3]
	ldr r1, _0800C5C0 @ => 0x0000FFF8
	ands r1, r2
	orrs r0, r1
	strh r0, [r3]
	bx lr
	.align 2, 0
_0800C5C0: .4byte 0x0000FFF8

	thumb_func_start FUN_0800C5C4
FUN_0800C5C4: @ 0x0800C5C4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r2, [r3]
	ldr r1, _0800C5D8 @ => 0x0000E0FF
	ands r1, r2
	orrs r0, r1
	strh r0, [r3]
	bx lr
	.align 2, 0
_0800C5D8: .4byte 0x0000E0FF

	thumb_func_start FUN_0800C5DC
FUN_0800C5DC: @ 0x0800C5DC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	bics r1, r0
	strh r1, [r2]
	bx lr

	thumb_func_start FUN_0800C5EC
FUN_0800C5EC: @ 0x0800C5EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	bx lr

	thumb_func_start FUN_0800C5FC
FUN_0800C5FC: @ 0x0800C5FC
	push {lr}
	movs r1, #0
	movs r2, #0
	bl FUN_0800C62C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0800C60C
FUN_0800C60C: @ 0x0800C60C
	push {lr}
	movs r1, #0
	movs r2, #0
	bl FUN_0800C64C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0800C61C
FUN_0800C61C: @ 0x0800C61C
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0
	bl FUN_0800C62C
	pop {r0}
	bx r0

	thumb_func_start FUN_0800C62C
FUN_0800C62C: @ 0x0800C62C
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r3, #0x68
	muls r0, r3, r0
	ldr r3, _0800C648 @ => 0x03003218
	adds r0, r0, r3
	bl FUN_0800C64C
	pop {r0}
	bx r0
	.align 2, 0
_0800C648: .4byte gUnk_03003218

	thumb_func_start FUN_0800C64C
FUN_0800C64C: @ 0x0800C64C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r6, r2, #0x10
	lsrs r2, r6, #0x10
	adds r1, r5, #0
	bl FUN_0800C6E8
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0800C674
	lsrs r0, r6, #0x14
	lsls r0, r0, #0xc
	orrs r5, r0
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
_0800C674:
	ldr r1, [r4]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bgt _0800C688
	cmp r0, #1
	bge _0800C694
	cmp r0, #0
	beq _0800C68E
	b _0800C6A0
_0800C688:
	cmp r0, #3
	beq _0800C69A
	b _0800C6A0
_0800C68E:
	movs r2, #0x80
	lsls r2, r2, #4
	b _0800C6A2
_0800C694:
	movs r2, #0x80
	lsls r2, r2, #5
	b _0800C6A2
_0800C69A:
	movs r2, #0x80
	lsls r2, r2, #6
	b _0800C6A2
_0800C6A0:
	movs r2, #0
_0800C6A2:
	mov r0, sp
	strh r5, [r0]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x1b
	lsls r1, r1, #0xb
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	lsrs r2, r2, #1
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	bl SVC_CpuSet
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start FUN_0800C6C8
FUN_0800C6C8: @ 0x0800C6C8
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r3, #0x68
	muls r0, r3, r0
	ldr r3, _0800C6E4 @ => 0x03003218
	adds r0, r0, r3
	bl FUN_0800C6E8
	pop {r0}
	bx r0
	.align 2, 0
_0800C6E4: .4byte gUnk_03003218

	thumb_func_start FUN_0800C6E8
FUN_0800C6E8: @ 0x0800C6E8
	push {r4, r5, lr}
	sub sp, #4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	ldr r3, [r0]
	lsls r2, r3, #0x18
	lsrs r2, r2, #0x1f
	adds r2, #1
	lsls r5, r2, #5
	lsls r3, r3, #0x1c
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xe
	muls r1, r5, r1
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	adds r3, r3, r1
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0800C728
	movs r0, #0xf
	ands r4, r0
	lsls r0, r4, #0xc
	lsls r1, r4, #8
	adds r0, r0, r1
	lsls r1, r4, #4
	adds r0, r0, r1
	b _0800C72E
_0800C728:
	movs r0, #0xff
	ands r4, r0
	lsls r0, r4, #8
_0800C72E:
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r0, sp
	strh r4, [r0]
	lsrs r2, r5, #1
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	adds r1, r3, #0
	bl SVC_CpuSet
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start FUN_0800C750
FUN_0800C750: @ 0x0800C750
	push {r4, r5, lr}
	adds r5, r3, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0x68
	muls r1, r0, r1
	ldr r0, _0800C78C @ => 0x03003218
	adds r4, r1, r0
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800C776
	lsls r0, r3, #0x11
	lsrs r3, r0, #0x10
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
_0800C776:
	lsls r0, r3, #5
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	lsls r2, r2, #4
	adds r0, r5, #0
	bl SVC_CpuSet
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800C78C: .4byte gUnk_03003218

	thumb_func_start FUN_0800C790
FUN_0800C790: @ 0x0800C790
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	movs r4, #0
	str r4, [sp, #4]
	bl FUN_0800C7A8
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_0800C7A8
FUN_0800C7A8: @ 0x0800C7A8
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r6, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r4, #0x68
	muls r0, r4, r0
	ldr r4, _0800C7D0 @ => 0x03003218
	adds r0, r0, r4
	ldr r0, [r0, #0xc]
	str r6, [sp]
	str r5, [sp, #4]
	bl FUN_0800C7D4
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800C7D0: .4byte gUnk_03003218

	thumb_func_start FUN_0800C7D4
FUN_0800C7D4: @ 0x0800C7D4
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	adds r7, r2, #0
	ldr r6, [sp, #0x14]
	ldr r0, [sp, #0x18]
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r2, #0
	cmp r2, r6
	bge _0800C808
	lsls r5, r1, #1
_0800C7EA:
	adds r0, r7, r2
	lsls r0, r0, #6
	add r0, ip
	adds r1, r0, r5
	adds r2, #1
	cmp r3, #0
	ble _0800C804
	adds r0, r3, #0
_0800C7FA:
	strh r4, [r1]
	adds r1, #2
	subs r0, #1
	cmp r0, #0
	bne _0800C7FA
_0800C804:
	cmp r2, r6
	blt _0800C7EA
_0800C808:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0800C810
FUN_0800C810: @ 0x0800C810
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r6, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r4, #0x68
	muls r0, r4, r0
	ldr r4, _0800C834 @ => 0x03003218
	adds r0, r0, r4
	str r6, [sp]
	str r5, [sp, #4]
	bl FUN_0800C838
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800C834: .4byte gUnk_03003218

	thumb_func_start FUN_0800C838
FUN_0800C838: @ 0x0800C838
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r1, #0
	mov sb, r2
	adds r5, r3, #0
	ldr r1, [sp, #0x1c]
	mov r8, r1
	ldr r1, [sp, #0x20]
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r0, [r0]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1b
	bl FUN_0800D0C0
	adds r7, r0, #0
	movs r2, #0
	cmp r2, r8
	bge _0800C88C
	lsls r6, r6, #1
_0800C864:
	mov r1, sb
	adds r0, r1, r2
	lsls r0, r0, #6
	adds r0, r7, r0
	adds r3, r0, r6
	adds r1, r2, #1
	cmp r5, #0
	ble _0800C886
	adds r2, r5, #0
_0800C876:
	strh r4, [r3]
	adds r3, #2
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	subs r2, #1
	cmp r2, #0
	bne _0800C876
_0800C886:
	adds r2, r1, #0
	cmp r2, r8
	blt _0800C864
_0800C88C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_0800C898
FUN_0800C898: @ 0x0800C898
	push {r4, lr}
	ldr r3, _0800C8B0 @ => 0x03003210
	movs r4, #0x68
	muls r0, r4, r0
	adds r3, #0x14
	adds r0, r0, r3
	ldr r0, [r0]
	bl FUN_0800C8B4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800C8B0: .4byte gUnk_03003210

	thumb_func_start FUN_0800C8B4
FUN_0800C8B4: @ 0x0800C8B4
	lsls r2, r2, #5
	adds r2, r2, r1
	lsls r2, r2, #1
	adds r2, r2, r0
	ldrh r0, [r2]
	lsrs r0, r0, #0xc
	bx lr
	.align 2, 0

	thumb_func_start FUN_0800C8C4
FUN_0800C8C4: @ 0x0800C8C4
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r6, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r4, #0x68
	muls r0, r4, r0
	ldr r4, _0800C8EC @ => 0x03003218
	adds r0, r0, r4
	ldr r0, [r0, #0xc]
	str r6, [sp]
	str r5, [sp, #4]
	bl FUN_0800C8F0
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800C8EC: .4byte gUnk_03003218

	thumb_func_start FUN_0800C8F0
FUN_0800C8F0: @ 0x0800C8F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	mov sl, r1
	mov sb, r2
	adds r7, r3, #0
	ldr r0, [sp, #0x24]
	mov ip, r0
	ldr r0, [sp, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r3, #0
	cmp r3, ip
	bge _0800C94C
_0800C916:
	mov r1, sb
	adds r0, r1, r3
	lsls r0, r0, #6
	ldr r2, [sp]
	adds r0, r2, r0
	mov r2, sl
	lsls r1, r2, #1
	adds r2, r0, r1
	adds r5, r3, #1
	cmp r7, #0
	ble _0800C946
	ldr r6, _0800C95C @ => 0x00000FFF
	mov r0, r8
	lsls r4, r0, #0xc
	adds r3, r7, #0
_0800C934:
	ldrh r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	orrs r0, r4
	strh r0, [r2]
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bne _0800C934
_0800C946:
	adds r3, r5, #0
	cmp r3, ip
	blt _0800C916
_0800C94C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C95C: .4byte 0x00000FFF

	thumb_func_start FUN_0800C960
FUN_0800C960: @ 0x0800C960
	push {r4, lr}
	adds r3, r1, #0
	adds r4, r2, #0
	ldr r2, _0800C980 @ => 0x03003210
	movs r1, #0x68
	muls r0, r1, r0
	adds r0, r0, r2
	ldrb r0, [r0, #9]
	lsrs r0, r0, #6
	cmp r0, #2
	beq _0800C99A
	cmp r0, #2
	bgt _0800C984
	cmp r0, #1
	beq _0800C98A
	b _0800C9B0
	.align 2, 0
_0800C980: .4byte gUnk_03003210
_0800C984:
	cmp r0, #3
	beq _0800C9AA
	b _0800C9B0
_0800C98A:
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	strh r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	b _0800C9B8
_0800C99A:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	strh r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	b _0800C9B8
_0800C9AA:
	movs r1, #0x80
	lsls r1, r1, #2
	b _0800C9B4
_0800C9B0:
	movs r1, #0x80
	lsls r1, r1, #1
_0800C9B4:
	adds r0, r1, #0
	strh r0, [r3]
_0800C9B8:
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_0800C9C0
FUN_0800C9C0: @ 0x0800C9C0
	muls r2, r3, r2
	adds r2, r2, r1
	lsls r2, r2, #1
	adds r2, r2, r0
	ldrh r0, [r2]
	bx lr

	thumb_func_start FUN_0800C9CC
FUN_0800C9CC: @ 0x0800C9CC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	adds r6, r1, #0
	mov r8, r2
	ldr r0, [r4]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1b
	bl FUN_0800D0C0
	adds r5, r0, #0
	ldr r0, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1e
	adds r1, r6, #0
	mov r2, r8
	bl FUN_0800D0CC
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0800CA04
FUN_0800CA04: @ 0x0800CA04
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r5, r0, #0
	mov r8, r1
	mov sb, r2
	lsls r4, r3, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r5]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1b
	bl FUN_0800D0C0
	adds r6, r0, #0
	ldr r0, [r5]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1e
	mov r1, r8
	mov r2, sb
	bl FUN_0800D0CC
	lsls r0, r0, #1
	adds r0, r0, r6
	strh r4, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0800CA44
FUN_0800CA44: @ 0x0800CA44
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r7, [sp, #0x18]
	ldr r6, [sp, #0x28]
	ldr r4, [sp, #0x14]
	adds r0, r3, #0
	muls r0, r4, r0
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r7, r7, r0
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	adds r0, r2, #0
	muls r0, r3, r0
	ldr r4, [sp, #0x1c]
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r6, r6, r0
	adds r3, r1, #0
	cmp r3, #0
	ble _0800CA9C
	ldr r1, [sp, #0x14]
	subs r0, r1, r5
	ldr r2, [sp, #0x24]
	subs r1, r2, r5
	lsls r0, r0, #1
	mov ip, r0
	lsls r4, r1, #1
_0800CA7C:
	adds r2, r5, #0
	subs r1, r3, #1
	cmp r2, #0
	ble _0800CA92
_0800CA84:
	ldrh r0, [r7]
	strh r0, [r6]
	adds r7, #2
	adds r6, #2
	subs r2, #1
	cmp r2, #0
	bgt _0800CA84
_0800CA92:
	add r7, ip
	adds r6, r6, r4
	adds r3, r1, #0
	cmp r3, #0
	bgt _0800CA7C
_0800CA9C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0800CAA4
FUN_0800CAA4: @ 0x0800CAA4
	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0
	ldr r4, [sp, #0x14]
	ldr r6, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	movs r1, #0x68
	muls r0, r1, r0
	ldr r1, _0800CAF8 @ => 0x03003218
	adds r0, r0, r1
	lsls r4, r4, #6
	ldr r0, [r0, #0xc]
	adds r4, r0, r4
	lsls r3, r3, #1
	adds r4, r4, r3
	lsls r5, r5, #6
	adds r0, r0, r5
	lsls r6, r6, #1
	adds r3, r0, r6
	cmp r2, #0
	ble _0800CAF0
	movs r0, #0x20
	subs r0, r0, r7
	lsls r5, r0, #1
_0800CAD2:
	adds r1, r7, #0
	subs r2, #1
	cmp r1, #0
	ble _0800CAE8
_0800CADA:
	ldrh r0, [r4]
	strh r0, [r3]
	adds r4, #2
	adds r3, #2
	subs r1, #1
	cmp r1, #0
	bgt _0800CADA
_0800CAE8:
	adds r4, r4, r5
	adds r3, r3, r5
	cmp r2, #0
	bgt _0800CAD2
_0800CAF0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800CAF8: .4byte gUnk_03003218

	thumb_func_start FUN_0800CAFC
FUN_0800CAFC: @ 0x0800CAFC
	push {r4, lr}
	movs r4, #0x68
	muls r0, r4, r0
	ldr r4, _0800CB1C @ => 0x03003218
	adds r0, r0, r4
	str r1, [r0, #0x30]
	str r2, [r0, #0x34]
	strh r3, [r0, #0x38]
	ldr r1, [r0, #0x14]
	movs r2, #1
	orrs r1, r2
	str r1, [r0, #0x14]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800CB1C: .4byte gUnk_03003218

	thumb_func_start FUN_0800CB20
FUN_0800CB20: @ 0x0800CB20
	push {r4, lr}
	movs r4, #0
_0800CB24:
	adds r0, r4, #0
	bl FUN_0800CB38
	adds r4, #1
	cmp r4, #3
	bls _0800CB24
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0800CB38
FUN_0800CB38: @ 0x0800CB38
	push {r4, lr}
	movs r1, #0x68
	adds r3, r0, #0
	muls r3, r1, r3
	ldr r1, _0800CB70 @ => 0x03003218
	adds r3, r3, r1
	movs r4, #0
	str r4, [r3, #0x14]
	strh r4, [r3, #0x38]
	ldr r1, _0800CB74 @ => 0x08064F7C
	ldr r2, [r1, #4]
	ldr r1, [r1]
	str r1, [r3, #0x28]
	str r2, [r3, #0x2c]
	str r1, [r3, #0x20]
	str r2, [r3, #0x24]
	str r1, [r3, #0x18]
	str r2, [r3, #0x1c]
	lsls r0, r0, #2
	ldr r2, _0800CB78 @ => 0x04000010
	adds r1, r0, r2
	strh r4, [r1]
	ldr r1, _0800CB7C @ => 0x04000012
	adds r0, r0, r1
	strh r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800CB70: .4byte gUnk_03003218
_0800CB74: .4byte ROMREF_08064F7C
_0800CB78: .4byte 0x04000010
_0800CB7C: .4byte 0x04000012

	thumb_func_start FUN_0800CB80
FUN_0800CB80: @ 0x0800CB80
	ldr r3, _0800CBBC @ => 0x03003210
	mov ip, r3
	movs r3, #0x68
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x28
	adds r0, r3, r0
	str r1, [r0]
	mov r0, ip
	adds r0, #0x2c
	adds r0, r3, r0
	str r2, [r0]
	mov r0, ip
	adds r0, #0x20
	adds r0, r3, r0
	str r1, [r0]
	mov r0, ip
	adds r0, #0x24
	adds r0, r3, r0
	str r2, [r0]
	mov r0, ip
	adds r0, #0x1c
	adds r3, r3, r0
	ldr r0, [r3]
	movs r1, #0xa0
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r3]
	bx lr
	.align 2, 0
_0800CBBC: .4byte gUnk_03003210

	thumb_func_start FUN_0800CBC0
FUN_0800CBC0: @ 0x0800CBC0
	push {r4, lr}
	ldr r3, _0800CC14 @ => 0x03003210
	mov ip, r3
	movs r3, #0x68
	adds r4, r0, #0
	muls r4, r3, r4
	mov r3, ip
	adds r3, #0x28
	adds r3, r4, r3
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	mov r3, ip
	adds r3, #0x2c
	adds r3, r4, r3
	ldr r0, [r3]
	adds r0, r0, r2
	str r0, [r3]
	mov r3, ip
	adds r3, #0x20
	adds r3, r4, r3
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	mov r1, ip
	adds r1, #0x24
	adds r1, r4, r1
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
	mov r0, ip
	adds r0, #0x1c
	adds r4, r4, r0
	ldr r0, [r4]
	movs r1, #0xa0
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800CC14: .4byte gUnk_03003210

	thumb_func_start FUN_0800CC18
FUN_0800CC18: @ 0x0800CC18
	push {r4, lr}
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	ldr r3, _0800CC70 @ => 0x03003210
	mov ip, r3
	movs r3, #0x68
	adds r4, r0, #0
	muls r4, r3, r4
	mov r3, ip
	adds r3, #0x28
	adds r3, r4, r3
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	mov r3, ip
	adds r3, #0x2c
	adds r3, r4, r3
	ldr r0, [r3]
	adds r0, r0, r2
	str r0, [r3]
	mov r3, ip
	adds r3, #0x20
	adds r3, r4, r3
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	mov r1, ip
	adds r1, #0x24
	adds r1, r4, r1
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
	mov r0, ip
	adds r0, #0x1c
	adds r4, r4, r0
	ldr r0, [r4]
	movs r1, #0xa0
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800CC70: .4byte gUnk_03003210

	thumb_func_start FUN_0800CC74
FUN_0800CC74: @ 0x0800CC74
	ldr r3, _0800CC9C @ => 0x03003210
	movs r2, #0x68
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x28
	adds r0, r2, r0
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x20
	adds r0, r2, r0
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x1c
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #0xa0
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_0800CC9C: .4byte gUnk_03003210

	thumb_func_start FUN_0800CCA0
FUN_0800CCA0: @ 0x0800CCA0
	ldr r3, _0800CCC8 @ => 0x03003210
	movs r2, #0x68
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x2c
	adds r0, r2, r0
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x24
	adds r0, r2, r0
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x1c
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #0xa0
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_0800CCC8: .4byte gUnk_03003210

	thumb_func_start FUN_0800CCCC
FUN_0800CCCC: @ 0x0800CCCC
	ldr r3, _0800CD0C @ => 0x03003210
	mov ip, r3
	movs r3, #0x68
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x28
	adds r0, r3, r0
	lsls r1, r1, #0x10
	str r1, [r0]
	mov r0, ip
	adds r0, #0x2c
	adds r0, r3, r0
	lsls r2, r2, #0x10
	str r2, [r0]
	mov r0, ip
	adds r0, #0x20
	adds r0, r3, r0
	str r1, [r0]
	mov r0, ip
	adds r0, #0x24
	adds r0, r3, r0
	str r2, [r0]
	mov r0, ip
	adds r0, #0x1c
	adds r3, r3, r0
	ldr r0, [r3]
	movs r1, #0xa0
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r3]
	bx lr
	.align 2, 0
_0800CD0C: .4byte gUnk_03003210

	thumb_func_start FUN_0800CD10
FUN_0800CD10: @ 0x0800CD10
	ldr r3, _0800CD3C @ => 0x03003210
	movs r2, #0x68
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x28
	adds r0, r2, r0
	lsls r1, r1, #0x10
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x20
	adds r0, r2, r0
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x1c
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #0xa0
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_0800CD3C: .4byte gUnk_03003210

	thumb_func_start FUN_0800CD40
FUN_0800CD40: @ 0x0800CD40
	ldr r3, _0800CD6C @ => 0x03003210
	movs r2, #0x68
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x2c
	adds r0, r2, r0
	lsls r1, r1, #0x10
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x24
	adds r0, r2, r0
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x1c
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #0xa0
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_0800CD6C: .4byte gUnk_03003210

	thumb_func_start FUN_0800CD70
FUN_0800CD70: @ 0x0800CD70
	push {r4, r5, lr}
	ldr r4, _0800CD94 @ => 0x03003210
	movs r3, #0x68
	muls r3, r0, r3
	adds r0, r3, r4
	movs r5, #0x4a
	strh r1, [r5, r0]
	adds r0, #0x4c
	strh r2, [r0]
	adds r4, #0x1c
	adds r3, r3, r4
	ldr r0, [r3]
	movs r1, #2
	orrs r0, r1
	str r0, [r3]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800CD94: .4byte gUnk_03003210

	thumb_func_start FUN_0800CD98
FUN_0800CD98: @ 0x0800CD98
	ldr r3, _0800CDBC @ => 0x03003210
	movs r2, #0x68
	muls r2, r0, r2
	adds r0, r2, r3
	adds r0, #0x4a
	strh r1, [r0]
	adds r3, #0x1c
	adds r2, r2, r3
	ldr r0, [r2]
	movs r1, #8
	orrs r0, r1
	str r0, [r2]
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_0800CDBC: .4byte gUnk_03003210

	thumb_func_start FUN_0800CDC0
FUN_0800CDC0: @ 0x0800CDC0
	ldr r3, _0800CDDC @ => 0x03003210
	movs r2, #0x68
	muls r2, r0, r2
	adds r0, r2, r3
	adds r0, #0x4c
	strh r1, [r0]
	adds r3, #0x1c
	adds r2, r2, r3
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_0800CDDC: .4byte gUnk_03003210

	thumb_func_start FUN_0800CDE0
FUN_0800CDE0: @ 0x0800CDE0
	push {r4, lr}
	ldr r4, _0800CDFC @ => 0x03003210
	movs r3, #0x68
	muls r0, r3, r0
	adds r0, r0, r4
	adds r3, r0, #0
	adds r3, #0x4e
	strh r1, [r3]
	adds r0, #0x50
	strh r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800CDFC: .4byte gUnk_03003210

	thumb_func_start FUN_0800CE00
FUN_0800CE00: @ 0x0800CE00
	push {r4, lr}
	ldr r4, _0800CE1C @ => 0x03003210
	movs r3, #0x68
	muls r0, r3, r0
	adds r0, r0, r4
	adds r3, r0, #0
	adds r3, #0x46
	strh r1, [r3]
	adds r0, #0x48
	strh r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800CE1C: .4byte gUnk_03003210

	thumb_func_start FUN_0800CE20
FUN_0800CE20: @ 0x0800CE20
	ldr r3, _0800CE3C @ => 0x03003210
	movs r2, #0x68
	muls r2, r0, r2
	adds r0, r2, r3
	adds r0, #0x44
	strh r1, [r0]
	adds r3, #0x1c
	adds r2, r2, r3
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_0800CE3C: .4byte gUnk_03003210

	thumb_func_start FUN_0800CE40
FUN_0800CE40: @ 0x0800CE40
	ldr r3, _0800CE5C @ => 0x03003210
	movs r2, #0x68
	muls r2, r0, r2
	adds r0, r2, r3
	adds r0, #0x42
	strh r1, [r0]
	adds r3, #0x1c
	adds r2, r2, r3
	ldr r0, [r2]
	movs r1, #8
	orrs r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_0800CE5C: .4byte gUnk_03003210

	thumb_func_start FUN_0800CE60
FUN_0800CE60: @ 0x0800CE60
	ldr r3, _0800CE88 @ => 0x03003210
	mov ip, r3
	movs r3, #0x68
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x30
	adds r0, r3, r0
	str r1, [r0]
	mov r0, ip
	adds r0, #0x34
	adds r0, r3, r0
	str r2, [r0]
	mov r0, ip
	adds r0, #0x1c
	adds r3, r3, r0
	ldr r0, [r3]
	movs r1, #1
	orrs r0, r1
	str r0, [r3]
	bx lr
	.align 2, 0
_0800CE88: .4byte gUnk_03003210

	thumb_func_start FUN_0800CE8C
FUN_0800CE8C: @ 0x0800CE8C
	ldr r3, _0800CEA8 @ => 0x03003210
	movs r2, #0x68
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x30
	adds r0, r2, r0
	str r1, [r0]
	adds r3, #0x1c
	adds r2, r2, r3
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_0800CEA8: .4byte gUnk_03003210

	thumb_func_start FUN_0800CEAC
FUN_0800CEAC: @ 0x0800CEAC
	ldr r3, _0800CEC8 @ => 0x03003210
	movs r2, #0x68
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x34
	adds r0, r2, r0
	str r1, [r0]
	adds r3, #0x1c
	adds r2, r2, r3
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_0800CEC8: .4byte gUnk_03003210

	thumb_func_start FUN_0800CECC
FUN_0800CECC: @ 0x0800CECC
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x68
	adds r5, r4, #0
	muls r5, r0, r5
	ldr r0, _0800CEF8 @ => 0x03003218
	adds r5, r5, r0
	adds r0, r4, #0
	bl FUN_0800CEFC
	adds r0, r4, #0
	bl FUN_0800CF1C
	ldr r0, [r5, #0x14]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x14]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800CEF8: .4byte gUnk_03003218

	thumb_func_start FUN_0800CEFC
FUN_0800CEFC: @ 0x0800CEFC
	movs r1, #0x68
	muls r1, r0, r1
	ldr r0, _0800CF18 @ => 0x03003218
	adds r2, r1, r0
	adds r0, r2, #0
	adds r0, #0x5c
	movs r1, #0
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	bx lr
	.align 2, 0
_0800CF18: .4byte gUnk_03003218

	thumb_func_start FUN_0800CF1C
FUN_0800CF1C: @ 0x0800CF1C
	movs r1, #0x68
	muls r1, r0, r1
	ldr r0, _0800CF38 @ => 0x03003218
	adds r0, r1, r0
	adds r2, r0, #0
	adds r2, #0x5e
	movs r1, #0
	strh r1, [r2]
	adds r2, #4
	strh r1, [r2]
	adds r0, #0x66
	strh r1, [r0]
	bx lr
	.align 2, 0
_0800CF38: .4byte gUnk_03003218

	thumb_func_start FUN_0800CF3C
FUN_0800CF3C: @ 0x0800CF3C
	push {r4, r5, lr}
	movs r2, #0x68
	muls r2, r0, r2
	ldr r0, _0800CF5C @ => 0x03003218
	adds r2, r2, r0
	adds r0, r2, #0
	adds r0, #0x5c
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r0, [r2, #0x14]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r2, #0x14]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800CF5C: .4byte gUnk_03003218

	thumb_func_start FUN_0800CF60
FUN_0800CF60: @ 0x0800CF60
	push {r4, lr}
	movs r4, #0x68
	muls r4, r0, r4
	ldr r0, _0800CF88 @ => 0x03003218
	adds r4, r4, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	adds r0, #0x5c
	strh r1, [r0]
	adds r0, #4
	strh r2, [r0]
	adds r0, #4
	strh r3, [r0]
	ldr r0, [r4, #0x14]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #0x14]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800CF88: .4byte gUnk_03003218

	thumb_func_start FUN_0800CF8C
FUN_0800CF8C: @ 0x0800CF8C
	push {r4, lr}
	movs r4, #0x68
	muls r4, r0, r4
	ldr r0, _0800CFB4 @ => 0x03003218
	adds r4, r4, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	adds r0, #0x5e
	strh r1, [r0]
	adds r0, #4
	strh r2, [r0]
	adds r0, #4
	strh r3, [r0]
	ldr r0, [r4, #0x14]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #0x14]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800CFB4: .4byte gUnk_03003218

	thumb_func_start FUN_0800CFB8
FUN_0800CFB8: @ 0x0800CFB8
	movs r3, #0x68
	muls r3, r0, r3
	ldr r0, _0800CFD0 @ => 0x03003218
	adds r3, r3, r0
	lsls r1, r1, #8
	adds r0, r3, #0
	adds r0, #0x5c
	strh r1, [r0]
	lsls r2, r2, #8
	adds r3, #0x5e
	strh r2, [r3]
	bx lr
	.align 2, 0
_0800CFD0: .4byte gUnk_03003218

	thumb_func_start FUN_0800CFD4
FUN_0800CFD4: @ 0x0800CFD4
	movs r3, #0x68
	muls r0, r3, r0
	ldr r3, _0800CFE8 @ => 0x03003218
	adds r0, r0, r3
	adds r3, r0, #0
	adds r3, #0x60
	strh r1, [r3]
	adds r0, #0x62
	strh r2, [r0]
	bx lr
	.align 2, 0
_0800CFE8: .4byte gUnk_03003218

	thumb_func_start FUN_0800CFEC
FUN_0800CFEC: @ 0x0800CFEC
	movs r3, #0x68
	muls r0, r3, r0
	ldr r3, _0800D000 @ => 0x03003218
	adds r0, r0, r3
	adds r3, r0, #0
	adds r3, #0x64
	strh r1, [r3]
	adds r0, #0x66
	strh r2, [r0]
	bx lr
	.align 2, 0
_0800D000: .4byte gUnk_03003218

	thumb_func_start FUN_0800D004
FUN_0800D004: @ 0x0800D004
	push {r4, lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0x68
	adds r3, r0, #0
	muls r3, r2, r3
	ldr r2, _0800D034 @ => 0x03003218
	adds r3, r3, r2
	movs r2, #3
	ands r1, r2
	ldrb r4, [r3]
	movs r2, #4
	rsbs r2, r2, #0
	ands r2, r4
	orrs r2, r1
	strb r2, [r3]
	lsls r0, r0, #1
	ldr r1, _0800D038 @ => 0x04000008
	adds r0, r0, r1
	ldrh r1, [r3]
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D034: .4byte gUnk_03003218
_0800D038: .4byte 0x04000008

	thumb_func_start FUN_0800D03C
FUN_0800D03C: @ 0x0800D03C
	ldr r3, _0800D068 @ => 0x03003210
	mov ip, r3
	movs r3, #0x68
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x30
	adds r0, r3, r0
	lsls r1, r1, #0x10
	str r1, [r0]
	mov r0, ip
	adds r0, #0x34
	adds r0, r3, r0
	lsls r2, r2, #0x10
	str r2, [r0]
	mov r0, ip
	adds r0, #0x1c
	adds r3, r3, r0
	ldr r0, [r3]
	movs r1, #1
	orrs r0, r1
	str r0, [r3]
	bx lr
	.align 2, 0
_0800D068: .4byte gUnk_03003210

	thumb_func_start FUN_0800D06C
FUN_0800D06C: @ 0x0800D06C
	push {r4, lr}
	ldr r4, _0800D08C @ => 0x03003210
	movs r3, #0x68
	muls r3, r0, r3
	adds r0, r4, #0
	adds r0, #0x28
	adds r0, r3, r0
	ldr r0, [r0]
	str r0, [r1]
	adds r4, #0x2c
	adds r3, r3, r4
	ldr r0, [r3]
	str r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D08C: .4byte gUnk_03003210

	thumb_func_start FUN_0800D090
FUN_0800D090: @ 0x0800D090
	push {r4, r5, lr}
	ldr r4, _0800D0B0 @ => 0x03003210
	movs r3, #0x68
	muls r3, r0, r3
	adds r0, r4, r3
	movs r5, #0x2a
	ldrsh r0, [r0, r5]
	str r0, [r1]
	adds r4, r4, r3
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	str r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800D0B0: .4byte gUnk_03003210

	thumb_func_start FUN_0800D0B4
FUN_0800D0B4: @ 0x0800D0B4
	lsls r0, r0, #0xe
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	bx lr
	.align 2, 0

	thumb_func_start FUN_0800D0C0
FUN_0800D0C0: @ 0x0800D0C0
	lsls r0, r0, #0xb
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	bx lr
	.align 2, 0

	thumb_func_start FUN_0800D0CC
FUN_0800D0CC: @ 0x0800D0CC
	push {lr}
	cmp r0, #1
	beq _0800D0E4
	cmp r0, #1
	bgt _0800D0DC
	cmp r0, #0
	beq _0800D0EC
	b _0800D122
_0800D0DC:
	cmp r0, #2
	beq _0800D0EC
	cmp r0, #3
	bne _0800D122
_0800D0E4:
	cmp r2, #0x1f
	bgt _0800D0FE
	cmp r1, #0x1f
	bgt _0800D0F2
_0800D0EC:
	lsls r0, r2, #5
	adds r0, r0, r1
	b _0800D124
_0800D0F2:
	lsls r0, r2, #5
	adds r0, r1, r0
	movs r1, #0xf8
	lsls r1, r1, #2
	adds r0, r0, r1
	b _0800D124
_0800D0FE:
	cmp r1, #0x1f
	bgt _0800D112
	adds r0, r2, #0
	subs r0, #0x20
	lsls r0, r0, #5
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r1, r2
	adds r0, r0, r1
	b _0800D124
_0800D112:
	adds r0, r2, #0
	subs r0, #0x20
	lsls r0, r0, #5
	adds r0, r1, r0
	movs r1, #0xbe
	lsls r1, r1, #4
	adds r0, r0, r1
	b _0800D124
_0800D122:
	movs r0, #0
_0800D124:
	pop {r1}
	bx r1

	thumb_func_start FUN_0800D128
FUN_0800D128: @ 0x0800D128
	lsls r0, r0, #0xe
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r0, r0, r2
	lsls r1, r1, #5
	adds r0, r0, r1
	bx lr
	.align 2, 0

	thumb_func_start FUN_0800D138
FUN_0800D138: @ 0x0800D138
	ldr r0, _0800D148 @ => 0x03003210
	ldr r1, [r0]
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_0800D148: .4byte gUnk_03003210

	thumb_func_start FUN_0800D14C
FUN_0800D14C: @ 0x0800D14C
	ldr r0, _0800D158 @ => 0x03003210
	ldr r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_0800D158: .4byte gUnk_03003210

	thumb_func_start FUN_0800D15C
FUN_0800D15C: @ 0x0800D15C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0
	bl FUN_080212A0
	ldr r5, _0800D1A8 @ => 0x03003DF0
	ldr r1, [r5, #8]
	cmp r1, r0
	bge _0800D1B4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	rsbs r1, r1, #0
	movs r0, #0
	bl FUN_08020DB0
	movs r0, #2
	bl FUN_080212DC
	movs r3, #0
	ldr r2, _0800D1AC @ => 0x03004230
	ldr r0, _0800D1B0 @ => 0x030042B0
	ldrh r1, [r0, #6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r1, [r0]
	movs r2, #2
	orrs r1, r2
	str r1, [r0]
	cmp r4, #0
	beq _0800D1C4
	movs r0, #0x84
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #9
	strb r0, [r1]
	b _0800D1D0
	.align 2, 0
_0800D1A8: .4byte gUnk_03003DF0
_0800D1AC: .4byte gUnk_03004230
_0800D1B0: .4byte gUnk_030042B0
_0800D1B4:
	rsbs r1, r0, #0
	movs r0, #2
	bl FUN_08020DB0
	movs r0, #0
	bl FUN_080212DC
	movs r3, #1
_0800D1C4:
	ldr r0, _0800D1D8 @ => 0x03003DF0
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
_0800D1D0:
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800D1D8: .4byte gUnk_03003DF0

	thumb_func_start FUN_0800D1DC
FUN_0800D1DC: @ 0x0800D1DC
	push {lr}
	movs r0, #0
	movs r1, #0x14
	bl FUN_08020DB0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0800D1EC
FUN_0800D1EC: @ 0x0800D1EC
	push {lr}
	ldr r0, _0800D214 @ => 0x03003DF0
	ldr r1, _0800D218 @ => 0x0000020E
	adds r0, r0, r1
	ldrh r0, [r0]
	bl __floatsidf
	ldr r2, _0800D21C @ => 0x3FB99999
	ldr r3, _0800D220 @ => 0x9999999A
	bl __muldf3
	bl __fixdfsi
	adds r1, r0, #0
	movs r0, #0
	bl FUN_08020DB0
	pop {r0}
	bx r0
	.align 2, 0
_0800D214: .4byte gUnk_03003DF0
_0800D218: .4byte 0x0000020E
_0800D21C: .4byte 0x3FB99999
_0800D220: .4byte 0x9999999A

	thumb_func_start FUN_0800D224
FUN_0800D224: @ 0x0800D224
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0
	bl FUN_08020DB0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0800D238
FUN_0800D238: @ 0x0800D238
	push {r4, lr}
	ldr r4, _0800D264 @ => 0x03003FFC
	adds r0, r4, #0
	movs r1, #2
	bl FUN_08044644
	adds r0, r4, #2
	movs r1, #2
	bl FUN_08044644
	adds r0, r4, #4
	movs r1, #1
	bl FUN_08044644
	adds r4, #5
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08044644
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D264: .4byte gUnk_03003FFC

	thumb_func_start FUN_0800D268
FUN_0800D268: @ 0x0800D268
	push {r4, lr}
	ldr r4, _0800D294 @ => 0x03003FFC
	adds r0, r4, #0
	movs r1, #2
	bl FUN_08044558
	adds r0, r4, #2
	movs r1, #2
	bl FUN_08044558
	adds r0, r4, #4
	movs r1, #1
	bl FUN_08044558
	adds r4, #5
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08044558
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D294: .4byte gUnk_03003FFC

	thumb_func_start FUN_0800D298
FUN_0800D298: @ 0x0800D298
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r3, [sp, #0x28]
	ldr r7, [sp, #0x50]
	ldr r4, [sp, #0x64]
	mov sb, r2
	movs r0, #2
	add r0, sb
	mov sl, r0
	movs r1, #0
	mov r8, r1
	ldrb r0, [r2, #1]
	lsrs r1, r0, #4
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _0800D2CA
	lsls r5, r1, #8
	b _0800D2CC
_0800D2CA:
	lsls r5, r1, #4
_0800D2CC:
	ldr r2, [sp, #0x58]
	cmp r2, #0
	bgt _0800D2D8
	movs r3, #0x80
	lsls r3, r3, #1
	str r3, [sp, #0x58]
_0800D2D8:
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	bl FUN_0800D948
	adds r6, r0, #0
	cmp r6, #0
	bne _0800D2EE
	movs r0, #1
	orrs r4, r0
_0800D2EE:
	ldr r2, [sp, #0x54]
	adds r2, r2, r5
	str r2, [sp, #0x54]
	adds r7, r7, r5
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	bne _0800D318
	lsrs r1, r6, #0x1f
	adds r1, r6, r1
	asrs r1, r1, #1
	movs r3, #0x40
	ands r3, r4
	ldr r0, [sp, #0x4c]
	str r0, [sp]
	str r7, [sp, #4]
	str r2, [sp, #8]
	mov r0, sl
	ldr r2, [sp, #0x58]
	bl FUN_0800D968
_0800D318:
	mov r3, sl
	adds r5, r3, r6
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	cmp r0, #6
	bls _0800D32A
	b _0800D426
_0800D32A:
	lsls r0, r0, #2
	ldr r1, _0800D334 @ =_0800D338
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800D334: .4byte _0800D338
_0800D338: @ jump table
	.4byte _0800D426 @ case 0
	.4byte _0800D354 @ case 1
	.4byte _0800D36A @ case 2
	.4byte _0800D426 @ case 3
	.4byte _0800D400 @ case 4
	.4byte _0800D426 @ case 5
	.4byte _0800D36E @ case 6
_0800D354:
	movs r0, #8
	ands r4, r0
	cmp r4, #0
	bne _0800D426
	add r0, sp, #0x14
	adds r1, r5, #0
	bl FUN_0800D988
	ldr r2, [sp, #0x14]
	mov r8, r2
	b _0800D426
_0800D36A:
	movs r0, #4
	orrs r4, r0
_0800D36E:
	movs r1, #2
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _0800D3E6
	ldr r3, [sp, #0x24]
	lsls r0, r3, #0x13
	lsrs r2, r0, #0x1b
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x1e
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	bne _0800D394
	lsrs r0, r4, #4
	movs r1, #1
	ands r0, r1
	str r0, [sp]
	b _0800D396
_0800D394:
	str r1, [sp]
_0800D396:
	ldr r0, [sp, #0x60]
	str r0, [sp, #4]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	str r0, [sp, #0xc]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0800D3D6
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _0800D3C0
	adds r0, r7, #0
	cmp r7, #0
	bge _0800D3BC
	adds r0, #0xff
_0800D3BC:
	asrs r0, r0, #8
	b _0800D3D6
_0800D3C0:
	adds r0, r7, #0
	cmp r0, #0
	bge _0800D3C8
	adds r0, #0xf
_0800D3C8:
	asrs r1, r0, #4
	ldr r0, [sp, #0x54]
	cmp r0, #0
	bge _0800D3D2
	adds r0, #0xf
_0800D3D2:
	asrs r0, r0, #4
	subs r0, r1, r0
_0800D3D6:
	str r0, [sp, #0x10]
	add r0, sp, #0x18
	adds r1, r5, #0
	bl FUN_0800D50C
	ldr r1, [sp, #0x18]
	mov r8, r1
	b _0800D3F2
_0800D3E6:
	add r0, sp, #0x1c
	adds r1, r5, #0
	bl FUN_0800D9E8
	ldr r2, [sp, #0x1c]
	mov r8, r2
_0800D3F2:
	movs r1, #0x10
	ands r1, r4
	adds r0, r5, #0
	bl FUN_0800D9C0
	adds r0, #4
	adds r5, r5, r0
_0800D400:
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	bne _0800D426
	ldr r3, [sp, #0x24]
	lsls r1, r3, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #0x20
	ands r4, r0
	mov r2, sb
	ldrb r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	str r0, [sp]
	adds r0, r5, #0
	ldr r2, [sp, #0x28]
	adds r3, r4, #0
	bl FUN_0800D9F4
_0800D426:
	mov r3, r8
	ldr r0, [sp, #0x20]
	str r3, [r0]
	ldr r0, [sp, #0x20]
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0800D440
FUN_0800D440: @ 0x0800D440
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	mov sb, r0
	adds r5, r1, #0
	mov sl, r2
	movs r7, #0
	movs r0, #0
	mov r8, r0
	bl FUN_0800C54C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r5, #0
	bl FUN_0800C520
	rsbs r1, r0, #0
	orrs r1, r0
	asrs r4, r1, #0x1f
	movs r6, #0x10
	ands r4, r6
	adds r0, r5, #0
	bl FUN_0800C538
	cmp r0, #0
	beq _0800D492
	movs r0, #0x20
	orrs r4, r0
	adds r0, r4, #0
	ands r0, r6
	cmp r0, #0
	bne _0800D492
	bl FUN_0800C5A8
	cmp r0, #0
	beq _0800D492
	movs r0, #0x40
	orrs r4, r0
_0800D492:
	adds r0, r5, #0
	bl FUN_0800C4A8
	adds r1, r0, #0
	str r5, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r7, [sp, #0x10]
	mov r0, r8
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	add r0, sp, #0x1c
	mov r2, sl
	movs r3, #1
	bl FUN_0800D298
	ldr r0, [sp, #0x1c]
	mov r1, sb
	str r0, [r1]
	mov r0, sb
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0800D4D0
FUN_0800D4D0: @ 0x0800D4D0
	push {r4, r5, r6, lr}
	sub sp, #0x20
	adds r4, r0, #0
	adds r2, r1, #0
	movs r3, #0
	movs r5, #0
	movs r6, #0
	ldr r0, _0800D508 @ => 0x03001A24
	ldr r1, [r0]
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	str r5, [sp, #0x10]
	str r6, [sp, #0x14]
	movs r0, #0xf
	str r0, [sp, #0x18]
	add r0, sp, #0x1c
	bl FUN_0800D298
	ldr r0, [sp, #0x1c]
	str r0, [r4]
	adds r0, r4, #0
	add sp, #0x20
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800D508: .4byte gUnk_03001A24

	thumb_func_start FUN_0800D50C
FUN_0800D50C: @ 0x0800D50C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sl, r0
	adds r7, r1, #0
	adds r0, r2, #0
	mov sb, r3
	ldr r4, [sp, #0x34]
	bl FUN_0800D0C0
	mov ip, r0
	ldrh r0, [r7, #2]
	lsls r0, r0, #0x10
	ldrh r6, [r7]
	orrs r6, r0
	adds r2, r6, #0
	adds r7, #4
	cmp r4, #0
	bne _0800D542
	lsls r1, r2, #0x18
	lsrs r0, r2, #0x10
	lsls r0, r0, #0x18
	lsrs r4, r1, #8
	orrs r4, r0
_0800D542:
	lsrs r1, r4, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	subs r0, r5, r0
	cmp r1, r0
	ble _0800D562
	subs r0, r2, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	ldr r1, _0800D59C @ => 0xFF00FFFF
	ands r4, r1
	orrs r4, r0
_0800D562:
	lsrs r0, r4, #0x18
	lsrs r1, r6, #0x10
	lsls r3, r4, #0x10
	lsrs r2, r3, #0x18
	subs r1, r1, r2
	cmp r0, r1
	ble _0800D57E
	adds r0, r2, #0
	lsrs r1, r6, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x18
	ldr r0, _0800D5A0 @ => 0x00FFFFFF
	ands r4, r0
	orrs r4, r1
_0800D57E:
	ldr r0, [sp, #0x30]
	cmp r0, #1
	bne _0800D5A4
	str r4, [sp]
	ldr r0, [sp, #0x38]
	str r0, [sp, #4]
	ldr r1, [sp, #0x3c]
	str r1, [sp, #8]
	adds r0, r7, #0
	adds r1, r5, #0
	mov r2, ip
	mov r3, sb
	bl FUN_0800DA80
	b _0800D5BE
	.align 2, 0
_0800D59C: .4byte 0xFF00FFFF
_0800D5A0: .4byte 0x00FFFFFF
_0800D5A4:
	str r4, [sp]
	ldr r0, [sp, #0x38]
	str r0, [sp, #4]
	ldr r1, [sp, #0x3c]
	str r1, [sp, #8]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0xc]
	adds r0, r7, #0
	adds r1, r5, #0
	mov r2, ip
	mov r3, sb
	bl FUN_0800D5E4
_0800D5BE:
	movs r1, #0xff
	lsls r1, r1, #0x10
	ands r1, r4
	lsrs r0, r4, #0x18
	lsls r0, r0, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	orrs r1, r0
	mov r0, sl
	str r1, [r0]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0800D5E4
FUN_0800D5E4: @ 0x0800D5E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp]
	mov sb, r1
	str r3, [sp, #4]
	ldr r3, [sp, #0x3c]
	ldr r1, [sp, #0x38]
	lsrs r0, r1, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r1, sb
	muls r1, r0, r1
	ldr r4, [sp, #0x38]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r1, r1, #1
	ldr r5, [sp]
	adds r4, r5, r1
	asrs r7, r3, #0x10
	mov sl, r7
	mov r5, sl
	lsls r0, r5, #5
	lsls r3, r3, #0x10
	mov r8, r3
	asrs r1, r3, #0x10
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r3, r2, r0
	ldr r0, [sp, #0x38]
	lsls r0, r0, #8
	mov ip, r0
	lsrs r2, r0, #0x18
	movs r0, #0x20
	subs r6, r0, r1
	cmp r6, r2
	ble _0800D638
	adds r6, r2, #0
_0800D638:
	ldr r2, [sp, #0x38]
	lsrs r1, r2, #0x18
	subs r7, r0, r5
	cmp r7, r1
	ble _0800D644
	adds r7, r1, #0
_0800D644:
	adds r2, r7, #0
	mov r5, sl
	str r5, [sp, #0x10]
	mov r1, r8
	str r1, [sp, #0xc]
	mov r5, ip
	str r5, [sp, #8]
	cmp r2, #0
	ble _0800D690
	mov r5, sb
	subs r1, r5, r6
	subs r0, r0, r6
	lsls r0, r0, #1
	mov r8, r0
	lsls r1, r1, #1
	mov ip, r1
_0800D664:
	adds r1, r6, #0
	subs r5, r2, #1
	cmp r1, #0
	ble _0800D686
	ldr r0, [sp, #0x44]
	lsls r0, r0, #0xc
	mov sl, r0
_0800D672:
	ldrh r0, [r4]
	add r0, sl
	ldr r2, [sp, #0x40]
	adds r0, r0, r2
	strh r0, [r3]
	adds r3, #2
	adds r4, #2
	subs r1, #1
	cmp r1, #0
	bgt _0800D672
_0800D686:
	add r3, r8
	add r4, ip
	adds r2, r5, #0
	cmp r2, #0
	bgt _0800D664
_0800D690:
	ldr r5, [sp, #0xc]
	asrs r1, r5, #0x10
	ldr r2, [sp, #8]
	lsrs r0, r2, #0x18
	adds r0, r1, r0
	cmp r0, #0x1f
	ble _0800D71C
	ldr r5, [sp, #4]
	cmp r5, #1
	beq _0800D6A8
	cmp r5, #3
	bne _0800D71C
_0800D6A8:
	movs r5, #0x20
	subs r0, r5, r7
	lsls r0, r0, #5
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r3, r3, r0
	rsbs r0, r7, #0
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r6
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r2, [sp, #8]
	lsrs r0, r2, #0x18
	subs r6, r0, r6
	cmp r6, #0x20
	ble _0800D6CE
	movs r6, #0x20
_0800D6CE:
	adds r2, r7, #0
	ldr r0, [sp, #0x38]
	lsls r0, r0, #0x18
	mov sl, r0
	cmp r2, #0
	ble _0800D716
	mov r0, sb
	subs r1, r0, r6
	subs r0, r5, r6
	lsls r0, r0, #1
	mov r8, r0
	lsls r1, r1, #1
	mov ip, r1
_0800D6E8:
	adds r1, r6, #0
	subs r5, r2, #1
	cmp r1, #0
	ble _0800D70C
	ldr r2, [sp, #0x44]
	lsls r2, r2, #0xc
	str r2, [sp, #0x14]
_0800D6F6:
	ldrh r0, [r4]
	ldr r2, [sp, #0x14]
	adds r0, r0, r2
	ldr r2, [sp, #0x40]
	adds r0, r0, r2
	strh r0, [r3]
	adds r3, #2
	adds r4, #2
	subs r1, #1
	cmp r1, #0
	bgt _0800D6F6
_0800D70C:
	add r3, r8
	add r4, ip
	adds r2, r5, #0
	cmp r2, #0
	bgt _0800D6E8
_0800D716:
	mov r5, sl
	lsrs r0, r5, #0x17
	adds r3, r3, r0
_0800D71C:
	ldr r1, [sp, #0x38]
	lsrs r0, r1, #0x18
	ldr r2, [sp, #0x10]
	adds r0, r2, r0
	cmp r0, #0x1f
	ble _0800D7A8
	ldr r0, [sp, #4]
	subs r0, #2
	cmp r0, #1
	bhi _0800D7A8
	lsrs r0, r1, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r7
	mov r1, sb
	muls r1, r0, r1
	lsls r1, r1, #1
	ldr r4, [sp]
	adds r1, r4, r1
	ldr r5, [sp, #0x38]
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x17
	adds r4, r1, r0
	ldr r0, [sp, #8]
	lsrs r1, r0, #0x18
	ldr r2, [sp, #0xc]
	asrs r0, r2, #0x10
	movs r5, #0x20
	subs r6, r5, r0
	cmp r6, r1
	ble _0800D75C
	adds r6, r1, #0
_0800D75C:
	ldr r1, [sp, #0x38]
	lsrs r0, r1, #0x18
	subs r7, r0, r7
	cmp r7, #0x20
	ble _0800D768
	movs r7, #0x20
_0800D768:
	adds r2, r7, #0
	cmp r2, #0
	ble _0800D7A8
	mov r0, sb
	subs r1, r0, r6
	subs r0, r5, r6
	lsls r0, r0, #1
	mov r8, r0
	lsls r1, r1, #1
	mov ip, r1
_0800D77C:
	adds r1, r6, #0
	subs r5, r2, #1
	cmp r1, #0
	ble _0800D79E
	ldr r2, [sp, #0x44]
	lsls r2, r2, #0xc
	mov sl, r2
_0800D78A:
	ldrh r0, [r4]
	add r0, sl
	ldr r2, [sp, #0x40]
	adds r0, r0, r2
	strh r0, [r3]
	adds r3, #2
	adds r4, #2
	subs r1, #1
	cmp r1, #0
	bgt _0800D78A
_0800D79E:
	add r3, r8
	add r4, ip
	adds r2, r5, #0
	cmp r2, #0
	bgt _0800D77C
_0800D7A8:
	ldr r5, [sp, #0xc]
	asrs r1, r5, #0x10
	ldr r2, [sp, #8]
	lsrs r0, r2, #0x18
	adds r0, r1, r0
	cmp r0, #0x1f
	ble _0800D82C
	ldr r5, [sp, #0x38]
	lsrs r0, r5, #0x18
	ldr r2, [sp, #0x10]
	adds r0, r2, r0
	cmp r0, #0x1f
	ble _0800D82C
	ldr r5, [sp, #4]
	cmp r5, #3
	bne _0800D82C
	movs r5, #0x20
	subs r0, r5, r7
	lsls r0, r0, #5
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r3, r3, r0
	rsbs r0, r7, #0
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r6
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r2, [sp, #8]
	lsrs r0, r2, #0x18
	subs r6, r0, r6
	cmp r6, #0x20
	ble _0800D7EE
	movs r6, #0x20
_0800D7EE:
	adds r2, r7, #0
	cmp r2, #0
	ble _0800D82C
	mov r7, sb
	subs r1, r7, r6
	subs r0, r5, r6
	lsls r0, r0, #1
	mov r8, r0
	lsls r1, r1, #1
	mov sb, r1
_0800D802:
	adds r1, r6, #0
	subs r5, r2, #1
	cmp r1, #0
	ble _0800D822
	ldr r0, [sp, #0x44]
	lsls r2, r0, #0xc
_0800D80E:
	ldrh r0, [r4]
	adds r0, r0, r2
	ldr r7, [sp, #0x40]
	adds r0, r0, r7
	strh r0, [r3]
	adds r3, #2
	adds r4, #2
	subs r1, #1
	cmp r1, #0
	bgt _0800D80E
_0800D822:
	add r3, r8
	add r4, sb
	adds r2, r5, #0
	cmp r2, #0
	bgt _0800D802
_0800D82C:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_0800D83C
FUN_0800D83C: @ 0x0800D83C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x20
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r4, [sp, #0x4c]
	bl FUN_0800C54C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r5, #0
	bl FUN_0800C520
	cmp r0, #0
	beq _0800D864
	movs r0, #0x10
	orrs r4, r0
_0800D864:
	adds r0, r5, #0
	bl FUN_0800C538
	cmp r0, #0
	beq _0800D886
	movs r0, #0x20
	orrs r4, r0
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	bne _0800D886
	bl FUN_0800C5A8
	cmp r0, #0
	beq _0800D886
	movs r0, #0x40
	orrs r4, r0
_0800D886:
	adds r0, r5, #0
	bl FUN_0800C4A8
	adds r1, r0, #0
	str r5, [sp]
	ldr r0, [sp, #0x38]
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #8]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x44]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	add r0, sp, #0x1c
	adds r2, r7, #0
	mov r3, r8
	bl FUN_0800D298
	ldr r0, [sp, #0x1c]
	str r0, [r6]
	adds r0, r6, #0
	add sp, #0x20
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0800D8C4
FUN_0800D8C4: @ 0x0800D8C4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	adds r6, r3, #0
	ldrb r0, [r5]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	bl FUN_0800D948
	lsls r4, r4, #1
	adds r4, #2
	adds r5, r5, r4
	lsls r6, r6, #1
	cmp r6, r0
	ble _0800D8E6
	adds r6, r0, #0
_0800D8E6:
	lsrs r2, r6, #0x1f
	adds r2, r6, r2
	lsls r2, r2, #0xa
	lsrs r2, r2, #0xb
	adds r0, r5, #0
	adds r1, r7, #0
	bl SVC_CpuSet
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_0800D8FC
FUN_0800D8FC: @ 0x0800D8FC
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	ldrb r0, [r5]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	bl FUN_0800D948
	adds r0, #2
	adds r4, r5, r0
	ldrb r0, [r5]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #8
	beq _0800D91E
	cmp r1, #0x18
	bne _0800D928
_0800D91E:
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0800D9C0
	adds r4, r4, r0
_0800D928:
	ldrh r6, [r4]
	adds r4, #2
	cmp r7, #0
	beq _0800D940
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl FUN_0800DA24
_0800D940:
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_0800D948
FUN_0800D948: @ 0x0800D948
	push {lr}
	cmp r0, #1
	beq _0800D958
	cmp r0, #1
	ble _0800D962
	cmp r0, #2
	beq _0800D95E
	b _0800D962
_0800D958:
	movs r0, #0x80
	lsls r0, r0, #2
	b _0800D964
_0800D95E:
	movs r0, #0x20
	b _0800D964
_0800D962:
	movs r0, #0
_0800D964:
	pop {r1}
	bx r1

	thumb_func_start FUN_0800D968
FUN_0800D968: @ 0x0800D968
	push {lr}
	adds r3, r0, #0
	ldr r0, [sp, #0xc]
	subs r1, r1, r0
	cmp r2, r1
	ble _0800D976
	adds r2, r1, #0
_0800D976:
	cmp r2, #0
	ble _0800D984
	lsls r0, r0, #1
	adds r0, r3, r0
	ldr r1, [sp, #8]
	bl FUN_08015760
_0800D984:
	pop {r0}
	bx r0

	thumb_func_start FUN_0800D988
FUN_0800D988: @ 0x0800D988
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	ldrh r2, [r0]
	adds r0, #2
	ldrh r1, [r0]
	adds r0, #2
	lsls r2, r2, #0x10
	orrs r2, r1
	ldrh r5, [r0]
	adds r0, #2
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	orrs r5, r1
	adds r0, #2
	movs r1, #0xc0
	lsls r1, r1, #0x13
	lsrs r3, r2, #0x1f
	adds r2, r2, r3
	lsls r2, r2, #0xa
	lsrs r2, r2, #0xb
	bl SVC_CpuSet
	str r5, [r4]
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start FUN_0800D9C0
FUN_0800D9C0: @ 0x0800D9C0
	push {lr}
	ldrh r2, [r0, #2]
	lsls r2, r2, #0x10
	ldrh r3, [r0]
	orrs r3, r2
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	lsrs r2, r3, #0x10
	muls r0, r2, r0
	cmp r1, #0
	bne _0800D9D8
	lsls r0, r0, #1
_0800D9D8:
	adds r2, r0, #3
	movs r0, #4
	rsbs r0, r0, #0
	ands r2, r0
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0800D9E8
FUN_0800D9E8: @ 0x0800D9E8
	ldrh r2, [r1]
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x10
	orrs r2, r1
	str r2, [r0]
	bx lr

	thumb_func_start FUN_0800D9F4
FUN_0800D9F4: @ 0x0800D9F4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	bl FUN_0800D0B4
	adds r2, r0, #0
	cmp r4, #0
	beq _0800DA0C
	lsls r0, r6, #6
	b _0800DA0E
_0800DA0C:
	lsls r0, r6, #5
_0800DA0E:
	adds r2, r2, r0
	ldrh r3, [r5]
	adds r5, #2
	ldr r0, [sp, #0x10]
	adds r1, r5, #0
	bl FUN_0800DA24
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0800DA24
FUN_0800DA24: @ 0x0800DA24
	push {r4, lr}
	adds r4, r2, #0
	cmp r0, #1
	beq _0800DA54
	cmp r0, #1
	bgt _0800DA36
	cmp r0, #0
	beq _0800DA40
	b _0800DA76
_0800DA36:
	cmp r0, #2
	beq _0800DA5E
	cmp r0, #3
	beq _0800DA68
	b _0800DA76
_0800DA40:
	cmp r3, #0
	bge _0800DA46
	adds r3, #3
_0800DA46:
	lsls r2, r3, #9
	lsrs r2, r2, #0xb
	adds r0, r1, #0
	adds r1, r4, #0
	bl SVC_CpuFastSet
	b _0800DA76
_0800DA54:
	adds r0, r1, #0
	adds r1, r4, #0
	bl SVC_RLUnCompVRAM
	b _0800DA76
_0800DA5E:
	adds r0, r1, #0
	adds r1, r4, #0
	bl SVC_LZ77UnCompVRAM
	b _0800DA76
_0800DA68:
	ldr r0, _0800DA7C @ => 0x03003B10
	ldr r3, [r0]
	adds r0, r1, #0
	adds r1, r4, #0
	movs r2, #0
	bl _call_via_r3
_0800DA76:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800DA7C: .4byte gCustomDecompressFunc1Ptr

	thumb_func_start FUN_0800DA80
FUN_0800DA80: @ 0x0800DA80
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r1
	adds r4, r2, #0
	ldr r1, [sp, #0x1c]
	mov sb, r1
	ldr r2, [sp, #0x20]
	ldr r7, [sp, #0x24]
	movs r6, #0x10
	lsls r6, r3
	asrs r1, r2, #0x10
	muls r1, r6, r1
	adds r1, r4, r1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r5, r1, r2
	adds r2, r0, #0
	mov r3, sb
	lsrs r1, r3, #0x18
	cmp r1, #0
	ble _0800DB1A
	mov r0, ip
	subs r0, r6, r0
	mov r8, r0
_0800DAB4:
	movs r4, #2
	rsbs r4, r4, #0
	ands r4, r5
	mov r3, sb
	lsrs r0, r3, #0x10
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	subs r6, r1, #1
	cmp r3, #0
	ble _0800DB12
	movs r0, #0xff
	lsls r0, r0, #8
	mov ip, r0
_0800DACE:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _0800DADE
	ldrb r1, [r4]
	ldrb r0, [r2]
	lsls r0, r0, #8
	b _0800DAEA
_0800DADE:
	cmp r3, #1
	bne _0800DAF2
	ldrh r0, [r4]
	mov r1, ip
	ands r1, r0
	ldrb r0, [r2]
_0800DAEA:
	adds r0, r0, r7
	orrs r1, r0
	strh r1, [r4]
	b _0800DB06
_0800DAF2:
	ldrb r1, [r2]
	adds r1, r1, r7
	ldrb r0, [r2, #1]
	adds r0, r0, r7
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r4]
	adds r5, #1
	adds r2, #1
	subs r3, #1
_0800DB06:
	adds r4, #2
	adds r5, #1
	adds r2, #1
	subs r3, #1
	cmp r3, #0
	bgt _0800DACE
_0800DB12:
	add r5, r8
	adds r1, r6, #0
	cmp r1, #0
	bgt _0800DAB4
_0800DB1A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
