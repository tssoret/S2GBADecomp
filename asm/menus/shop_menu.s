.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start ShopMenu_Init
ShopMenu_Init: @ 0x0804E768
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x20
	movs r0, #0
	bl FUN_0800C558
	movs r0, #0x80
	lsls r0, r0, #5
	bl FUN_0800C5EC
	ldr r0, _0804E7DC @ => 0x0808FFBC
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C418
	ldr r0, _0804E7E0 @ => 0x0808FFB8
	ldr r1, [r0]
	movs r0, #2
	bl FUN_0800C418
	ldr r0, _0804E7E4 @ => 0x0808FFC4
	ldr r1, [r0]
	movs r0, #1
	bl FUN_0800C418
	ldr r0, _0804E7E8 @ => 0x0808FFC0
	ldr r4, [r0]
	movs r0, #0
	adds r1, r4, #0
	bl FUN_0800C418
	movs r0, #3
	bl FUN_0800C5FC
	movs r0, #2
	bl FUN_0800C5FC
	movs r0, #1
	movs r1, #0
	bl FUN_0800C61C
	movs r0, #0
	movs r1, #0
	bl FUN_0800C61C
	adds r0, r4, #0
	bl FUN_0801FE58
	ldr r2, _0804E7EC @ => 0x03004720
	ldr r0, [r2, #4]
	cmp r0, #0
	bne _0804E7F4
	ldr r1, _0804E7F0 @ => 0x03002870
	ldr r0, [r2, #8]
	strb r0, [r1, #4]
	adds r4, r1, #0
	b _0804E7FE
	.align 2, 0
_0804E7DC: .4byte ROMREF_0808FFBC
_0804E7E0: .4byte ROMREF_0808FFB8
_0804E7E4: .4byte ROMREF_0808FFC4
_0804E7E8: .4byte ROMREF_0808FFC0
_0804E7EC: .4byte gUnk_03004720
_0804E7F0: .4byte gUnk_03002870
_0804E7F4:
	ldr r4, _0804E830 @ => 0x03002870
	cmp r0, #3
	bne _0804E7FE
	movs r0, #0
	str r0, [r2, #4]
_0804E7FE:
	ldr r2, _0804E834 @ => 0x03004720
	movs r1, #0
	str r1, [r2, #8]
	str r1, [r2, #0xc]
	str r1, [r2, #0x14]
	strb r1, [r4]
	strb r1, [r4, #2]
	ldr r3, _0804E838 @ => 0x03003DF0
	ldr r0, [r3, #0x68]
	ldrb r0, [r0]
	strb r0, [r4, #1]
	ldrb r0, [r4, #4]
	lsls r0, r0, #3
	adds r0, r0, r3
	adds r0, #0x70
	ldrb r0, [r0]
	strb r0, [r4, #3]
	str r1, [r2, #4]
	ldrb r0, [r4, #4]
	cmp r0, #3
	bne _0804E840
	ldr r1, _0804E83C @ => 0x03002878
	movs r0, #5
	b _0804E844
	.align 2, 0
_0804E830: .4byte gUnk_03002870
_0804E834: .4byte gUnk_03004720
_0804E838: .4byte gUnk_03003DF0
_0804E83C: .4byte gUnk_03002878
_0804E840:
	ldr r1, _0804E87C @ => 0x03002878
	movs r0, #6
_0804E844:
	strb r0, [r1]
	movs r0, #3
	movs r1, #1
	bl FUN_08048284
	ldr r0, _0804E880 @ => 0x03002870
	ldrb r0, [r0, #4]
	cmp r0, #3
	bne _0804E88C
	movs r0, #0
	movs r5, #0
	movs r7, #0
	ldr r2, _0804E884 @ => 0x08CEB2E4
	ldr r3, _0804E888 @ => 0x00000191
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x10
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r7, [sp, #0x10]
	adds r0, #0xf0
	str r0, [sp, #0x14]
	add r0, sp, #0x18
	movs r1, #2
	bl FUN_0800D83C
	b _0804E8AC
	.align 2, 0
_0804E87C: .4byte gUnk_03002878
_0804E880: .4byte gUnk_03002870
_0804E884: .4byte ROMREF_08CEB2E4
_0804E888: .4byte 0x00000191
_0804E88C:
	movs r0, #0
	movs r6, #0
	ldr r2, _0804E92C @ => 0x08CEBE4C
	ldr r3, _0804E930 @ => 0x00000191
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	adds r0, #0xf0
	str r0, [sp, #0x14]
	add r0, sp, #0x1c
	movs r1, #2
	bl FUN_0800D83C
_0804E8AC:
	bl FUN_0804EF74
	movs r4, #1
	str r4, [sp]
	movs r0, #1
	movs r1, #2
	movs r2, #6
	movs r3, #6
	bl FUN_0802147C
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _0804E934 @ => 0x00000804
	bl FUN_08050820
	adds r3, r0, #0
	str r4, [sp]
	movs r0, #1
	movs r1, #0x3d
	movs r2, #9
	bl FUN_0801F8B8
	adds r5, r0, #0
	ldr r1, _0804E938 @ => 0x08090008
	ldr r0, _0804E93C @ => 0x03002870
	ldrb r0, [r0, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl FUN_08050820
	adds r3, r0, #0
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #0xb3
	movs r2, #9
	bl FUN_0801F8B8
	movs r0, #0
	movs r1, #0
	bl FUN_0804ED38
	movs r0, #0
	movs r1, #0
	bl FUN_0804EC4C
	bl FUN_0804F800
	bl FUN_0804EB34
	movs r0, #0x3f
	movs r1, #0
	bl FUN_080457F4
	add sp, #0x20
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E92C: .4byte ROMREF_08CEBE4C
_0804E930: .4byte 0x00000191
_0804E934: .4byte 0x00000804
_0804E938: .4byte ROMREF_08090008
_0804E93C: .4byte gUnk_03002870

	thumb_func_start ShopMenu_Handler
ShopMenu_Handler: @ 0x0804E940
	push {r4, r5, lr}
	ldr r4, _0804E958 @ => 0x03004720
	ldr r0, [r4, #0x14]
	cmp r0, #1
	beq _0804EA1C
	cmp r0, #1
	blo _0804E95C
	cmp r0, #2
	bne _0804E954
	b _0804EB10
_0804E954:
	b _0804EB28
	.align 2, 0
_0804E958: .4byte gUnk_03004720
_0804E95C:
	ldr r0, _0804E978 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _0804E9B4
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804E97C
	bl FUN_0804F98C
	b _0804E9A4
	.align 2, 0
_0804E978: .4byte gUnk_030042B0
_0804E97C:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0804E98A
	bl FUN_0804F938
	b _0804E9A4
_0804E98A:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804E998
	bl FUN_0804F570
	b _0804E9A4
_0804E998:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0804E9A4
	bl FUN_0804F5EC
_0804E9A4:
	bl FUN_0804F418
	movs r0, #0xb2
	bl FUN_0804DE0C
	bl FUN_0804EB34
	b _0804EB28
_0804E9B4:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804EA00
	ldr r0, _0804E9CC @ => 0x03002870
	ldrb r2, [r0, #4]
	cmp r2, #3
	bne _0804E9D0
	bl FUN_0804F4A0
	b _0804EB28
	.align 2, 0
_0804E9CC: .4byte gUnk_03002870
_0804E9D0:
	ldr r1, _0804E9E0 @ => 0x03002878
	ldr r0, [r4, #8]
	ldrb r1, [r1]
	cmp r0, r1
	blo _0804E9E4
	bl FUN_0804F0EC
	b _0804E9EC
	.align 2, 0
_0804E9E0: .4byte gUnk_03002878
_0804E9E4:
	cmp r2, #4
	beq _0804E9EC
	bl FUN_0804F2AC
_0804E9EC:
	ldr r0, _0804E9FC @ => 0x03004720
	ldr r0, [r0, #0x14]
	cmp r0, #1
	bne _0804E9F6
	b _0804EB28
_0804E9F6:
	bl FUN_0804F418
	b _0804EB28
	.align 2, 0
_0804E9FC: .4byte gUnk_03004720
_0804EA00:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0804EA0A
	b _0804EB28
_0804EA0A:
	ldr r0, _0804EA18 @ => 0x030043A0
	ldr r2, [r0]
	movs r0, #1
	movs r1, #2
	bl FUN_0802CED4
	b _0804EAFE
	.align 2, 0
_0804EA18: .4byte gUnk_030043A0
_0804EA1C:
	ldr r0, _0804EA44 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0804EA4C
	ldr r0, _0804EA48 @ => 0x03003DF0
	adds r0, #0x5c
	ldr r1, [r4, #8]
	adds r1, r1, r0
	ldr r0, [r4, #0xc]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _0804EA64
	adds r0, #1
	str r0, [r4, #0xc]
	movs r0, #0xad
	bl FUN_0804DE0C
	b _0804EA64
	.align 2, 0
_0804EA44: .4byte gUnk_030042B0
_0804EA48: .4byte gUnk_03003DF0
_0804EA4C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804EA64
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bls _0804EA64
	subs r0, #1
	str r0, [r4, #0xc]
	movs r0, #0xad
	bl FUN_0804DE0C
_0804EA64:
	bl FUN_0804F850
	ldr r0, _0804EAD0 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r5, #1
	ands r5, r1
	cmp r5, #0
	beq _0804EAE0
	ldr r4, _0804EAD4 @ => 0x03003DF0
	ldr r5, _0804EAD8 @ => 0x03004720
	adds r1, r4, #0
	adds r1, #0x5c
	ldr r0, [r5, #8]
	adds r2, r0, r1
	ldrb r1, [r2]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	blo _0804EA94
	subs r0, r1, r0
	strb r0, [r2]
	ldr r0, [r5, #8]
	ldrb r1, [r5, #0xc]
	bl FUN_080145B8
_0804EA94:
	adds r1, r4, #0
	adds r1, #0x60
	ldr r0, [r5, #8]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r0, [r5, #0xc]
	muls r1, r0, r1
	movs r0, #2
	bl FUN_08020DB0
	movs r4, #0
	str r4, [r5, #0xc]
	movs r0, #1
	movs r1, #0
	bl FUN_0800C61C
	str r4, [r5, #0x14]
	ldr r0, _0804EADC @ => 0x0808FFC0
	ldr r0, [r0]
	bl FUN_0801FE58
	bl FUN_0804F800
	bl FUN_0804F68C
	movs r0, #0xb0
	bl FUN_0804DE0C
	b _0804EB28
	.align 2, 0
_0804EAD0: .4byte gUnk_030042B0
_0804EAD4: .4byte gUnk_03003DF0
_0804EAD8: .4byte gUnk_03004720
_0804EADC: .4byte ROMREF_0808FFC0
_0804EAE0:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804EB28
	ldr r4, _0804EB08 @ => 0x03004720
	str r5, [r4, #0xc]
	movs r0, #1
	movs r1, #0
	bl FUN_0800C61C
	str r5, [r4, #0x14]
	ldr r0, _0804EB0C @ => 0x0808FFC0
	ldr r0, [r0]
	bl FUN_0801FE58
_0804EAFE:
	movs r0, #0xb1
	bl FUN_0804DE0C
	b _0804EB28
	.align 2, 0
_0804EB08: .4byte gUnk_03004720
_0804EB0C: .4byte ROMREF_0808FFC0
_0804EB10:
	ldr r0, _0804EB30 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0804EB28
	movs r0, #1
	movs r1, #0
	bl FUN_0800C61C
	movs r0, #0
	str r0, [r4, #0x14]
_0804EB28:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804EB30: .4byte gUnk_030042B0

	thumb_func_start FUN_0804EB34
FUN_0804EB34: @ 0x0804EB34
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _0804EB4C @ => 0x03004720
	ldr r2, [r0, #8]
	ldr r3, _0804EB50 @ => 0x03002870
	ldrb r0, [r3, #4]
	cmp r0, #3
	beq _0804EB54
	cmp r2, #5
	bls _0804EB58
	subs r2, #6
	b _0804EB66
	.align 2, 0
_0804EB4C: .4byte gUnk_03004720
_0804EB50: .4byte gUnk_03002870
_0804EB54:
	cmp r2, #4
	bhi _0804EB64
_0804EB58:
	ldr r0, _0804EB60 @ => 0x03003DF0
	ldr r0, [r0, #0x68]
	ldr r1, [r0, #4]
	b _0804EB72
	.align 2, 0
_0804EB60: .4byte gUnk_03003DF0
_0804EB64:
	subs r2, #5
_0804EB66:
	ldr r1, _0804EBC0 @ => 0x03003DF0
	ldrb r0, [r3, #4]
	lsls r0, r0, #3
	adds r1, #0x74
	adds r0, r0, r1
	ldr r1, [r0]
_0804EB72:
	lsls r0, r2, #2
	adds r5, r1, r0
	adds r6, r5, #0
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	movs r0, #2
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0x13
	movs r2, #3
	movs r3, #8
	bl FUN_0800C7A8
	ldr r4, _0804EBC4 @ => 0x00000D86
	ldr r0, _0804EBC8 @ => 0x03002870
	ldrb r2, [r0, #4]
	cmp r2, #3
	beq _0804EBE2
	ldr r3, _0804EBCC @ => 0x03004720
	ldr r1, _0804EBD0 @ => 0x03002878
	ldr r0, [r3, #8]
	ldrb r1, [r1]
	cmp r0, r1
	blo _0804EBD8
	ldr r0, [r3, #4]
	cmp r0, #0
	bne _0804EBE4
	ldrh r0, [r5]
	cmp r0, #0xe6
	beq _0804EBE4
	ldr r4, _0804EBD4 @ => 0x00000805
	cmp r2, #4
	bne _0804EBE4
	adds r4, #2
	b _0804EBE4
	.align 2, 0
_0804EBC0: .4byte gUnk_03003DF0
_0804EBC4: .4byte 0x00000D86
_0804EBC8: .4byte gUnk_03002870
_0804EBCC: .4byte gUnk_03004720
_0804EBD0: .4byte gUnk_03002878
_0804EBD4: .4byte 0x00000805
_0804EBD8:
	ldrh r0, [r6]
	cmp r0, #0xe6
	beq _0804EBE4
	cmp r2, #4
	beq _0804EBE4
_0804EBE2:
	ldr r4, _0804EC14 @ => 0x00000806
_0804EBE4:
	ldr r0, _0804EC18 @ => 0x00000D86
	cmp r4, r0
	beq _0804EC24
	adds r0, r4, #0
	bl FUN_08050820
	adds r3, r0, #0
	movs r4, #1
	str r4, [sp]
	movs r0, #0x33
	movs r1, #0xb8
	movs r2, #0x1a
	bl FUN_0801F8B8
	ldr r0, _0804EC1C @ => 0x03002870
	ldrb r0, [r0, #4]
	cmp r0, #3
	beq _0804EC3A
	ldr r0, _0804EC20 @ => 0x03004790
	ldr r1, [r0, #0x34]
	ldr r0, [r1, #0xc]
	orrs r0, r4
	str r0, [r1, #0xc]
	b _0804EC3A
	.align 2, 0
_0804EC14: .4byte 0x00000806
_0804EC18: .4byte 0x00000D86
_0804EC1C: .4byte gUnk_03002870
_0804EC20: .4byte gUnk_03004790
_0804EC24:
	ldr r0, _0804EC44 @ => 0x03002870
	ldrb r0, [r0, #4]
	cmp r0, #3
	beq _0804EC3A
	ldr r0, _0804EC48 @ => 0x03004790
	ldr r2, [r0, #0x34]
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
_0804EC3A:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804EC44: .4byte gUnk_03002870
_0804EC48: .4byte gUnk_03004790

	thumb_func_start FUN_0804EC4C
FUN_0804EC4C: @ 0x0804EC4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r1, _0804EC90 @ => 0x03002870
	ldrb r0, [r1, #4]
	cmp r0, #3
	beq _0804ED28
	movs r5, #0xb
	adds r0, r1, #0
	mov r8, r0
	ldr r1, _0804EC94 @ => 0x03003DF0
	mov sb, r1
	movs r2, #0x74
	add r2, sb
	mov sl, r2
	ldr r0, _0804EC98 @ => 0x03004790
	adds r4, r0, #0
	adds r4, #0x30
_0804EC78:
	adds r2, r5, #0
	mov r1, r8
	ldrb r0, [r1, #4]
	cmp r0, #3
	beq _0804ECA0
	cmp r5, #5
	bhi _0804EC9C
	mov r1, sb
	ldr r0, [r1, #0x68]
	lsls r1, r7, #2
	ldr r0, [r0, #4]
	b _0804ECBC
	.align 2, 0
_0804EC90: .4byte gUnk_03002870
_0804EC94: .4byte gUnk_03003DF0
_0804EC98: .4byte gUnk_03004790
_0804EC9C:
	subs r2, r5, #6
	b _0804ECB0
_0804ECA0:
	cmp r5, #4
	bhi _0804ECAE
	mov r1, sb
	ldr r0, [r1, #0x68]
	lsls r1, r7, #2
	ldr r0, [r0, #4]
	b _0804ECBC
_0804ECAE:
	subs r2, r5, #5
_0804ECB0:
	mov r1, r8
	ldrb r0, [r1, #4]
	lsls r0, r0, #3
	add r0, sl
	lsls r1, r6, #2
	ldr r0, [r0]
_0804ECBC:
	adds r1, r0, r1
	lsls r0, r2, #2
	adds r3, r1, r0
	ldrh r0, [r3]
	cmp r0, #0xe6
	beq _0804ED14
	ldr r2, _0804ED0C @ => 0x0807281C
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	movs r0, #0x86
	lsls r0, r0, #1
	cmp r1, r0
	beq _0804ED14
	ldr r2, _0804ED10 @ => 0x03002870
	ldrb r0, [r2, #4]
	cmp r0, #4
	bne _0804ECF0
	ldrb r0, [r3, #3]
	cmp r0, #0
	beq _0804ECF0
	cmp r5, #5
	bgt _0804ED14
_0804ECF0:
	ldr r0, [r4]
	strh r1, [r0, #0xa]
	ldr r0, [r4]
	bl FUN_0802D848
	ldr r0, [r4]
	ldr r1, [r0, #0xc]
	movs r2, #1
	orrs r1, r2
	str r1, [r0, #0xc]
	movs r1, #0x3a
	bl FUN_08001F84
	b _0804ED20
	.align 2, 0
_0804ED0C: .4byte ItemInfoData
_0804ED10: .4byte gUnk_03002870
_0804ED14:
	ldr r0, [r4]
	ldr r1, [r0, #0xc]
	movs r2, #2
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #0xc]
_0804ED20:
	subs r4, #4
	subs r5, #1
	cmp r5, #0
	bge _0804EC78
_0804ED28:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0804ED38
FUN_0804ED38: @ 0x0804ED38
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	adds r7, r1, #0
	movs r5, #0
	movs r4, #2
	str r4, [sp]
	str r5, [sp, #4]
	movs r0, #0
	movs r1, #2
	movs r2, #0x11
	movs r3, #0x14
	bl FUN_0800C7A8
	str r4, [sp]
	str r5, [sp, #4]
	movs r0, #0
	movs r1, #0x17
	movs r2, #0x11
	movs r3, #5
	bl FUN_0800C7A8
	ldr r0, _0804ED84 @ => 0x03004720
	ldr r2, [r0, #8]
	ldr r3, _0804ED88 @ => 0x03002870
	ldrb r0, [r3, #4]
	cmp r0, #3
	beq _0804ED94
	cmp r2, #5
	bhi _0804ED90
	ldr r0, _0804ED8C @ => 0x03003DF0
	ldr r0, [r0, #0x68]
	lsls r1, r6, #2
	ldr r0, [r0, #4]
	b _0804EDB8
	.align 2, 0
_0804ED84: .4byte gUnk_03004720
_0804ED88: .4byte gUnk_03002870
_0804ED8C: .4byte gUnk_03003DF0
_0804ED90:
	subs r2, #6
	b _0804EDAA
_0804ED94:
	cmp r2, #4
	bhi _0804EDA8
	ldr r0, _0804EDA4 @ => 0x03003DF0
	ldr r0, [r0, #0x68]
	lsls r1, r6, #2
	ldr r0, [r0, #4]
	b _0804EDB8
	.align 2, 0
_0804EDA4: .4byte gUnk_03003DF0
_0804EDA8:
	subs r2, #5
_0804EDAA:
	ldr r1, _0804EDF8 @ => 0x03003DF0
	ldrb r0, [r3, #4]
	lsls r0, r0, #3
	adds r1, #0x74
	adds r0, r0, r1
	lsls r1, r7, #2
	ldr r0, [r0]
_0804EDB8:
	adds r1, r0, r1
	lsls r0, r2, #2
	adds r4, r1, r0
	ldr r0, _0804EDFC @ => 0x03002870
	ldrb r1, [r0, #4]
	cmp r1, #3
	beq _0804EE96
	ldrh r0, [r4]
	cmp r0, #0xe6
	beq _0804EE8E
	cmp r1, #4
	beq _0804EE00
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #3
	movs r1, #0
	bl FUN_0801FEA0
	movs r0, #0xc
	bl FUN_0801FEE8
	ldrh r3, [r4]
	ldrb r0, [r4, #3]
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x47
	movs r1, #0x5f
	movs r2, #0x8d
	bl FUN_0803B98C
	b _0804EE34
	.align 2, 0
_0804EDF8: .4byte gUnk_03003DF0
_0804EDFC: .4byte gUnk_03002870
_0804EE00:
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _0804EE0E
	ldr r0, _0804EE64 @ => 0x03004720
	ldr r0, [r0, #8]
	cmp r0, #5
	bhi _0804EE34
_0804EE0E:
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #3
	movs r1, #0
	bl FUN_0801FEA0
	movs r0, #0xc
	bl FUN_0801FEE8
	ldrh r3, [r4]
	ldrb r0, [r4, #3]
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x47
	movs r1, #0x5f
	movs r2, #0x8d
	bl FUN_0803B98C
_0804EE34:
	ldrh r0, [r4]
	cmp r0, #0xe6
	beq _0804EE8E
	ldr r0, _0804EE68 @ => 0x03002870
	ldrb r0, [r0, #4]
	cmp r0, #4
	beq _0804EE8E
	cmp r0, #3
	beq _0804EE96
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #3
	movs r1, #0
	bl FUN_0801FEA0
	ldr r0, _0804EE64 @ => 0x03004720
	ldr r0, [r0, #8]
	cmp r0, #4
	bhi _0804EE6C
	adds r0, r4, #0
	bl FUN_0804F79C
	b _0804EE72
	.align 2, 0
_0804EE64: .4byte gUnk_03004720
_0804EE68: .4byte gUnk_03002870
_0804EE6C:
	adds r0, r4, #0
	bl FUN_0804F704
_0804EE72:
	bl FUN_080203A8
	movs r0, #0xec
	lsls r0, r0, #3
	bl FUN_08050820
	adds r3, r0, #0
	ldr r0, _0804EF50 @ => 0x00000213
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc0
	movs r2, #0x8d
	bl FUN_0801F8B8
_0804EE8E:
	ldr r0, _0804EF54 @ => 0x03002870
	ldrb r0, [r0, #4]
	cmp r0, #3
	bne _0804EF42
_0804EE96:
	movs r0, #6
	str r0, [sp]
	movs r0, #0
	movs r1, #4
	movs r2, #9
	movs r3, #8
	bl FUN_0800C790
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r6, _0804EF58 @ => 0x0000023B
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #8
	movs r3, #0xf
	bl FUN_0800C7A8
	movs r5, #0
	ldr r0, _0804EF5C @ => 0x03003E4C
	mov r8, r0
	ldr r4, _0804EF60 @ => 0x0808FFC8
_0804EECC:
	mov r1, r8
	adds r0, r5, r1
	ldrb r0, [r0]
	bl FUN_080203A8
	ldr r0, _0804EF64 @ => 0x00000762
	bl FUN_08050820
	adds r3, r0, #0
	ldrb r1, [r4]
	ldrb r2, [r4, #1]
	movs r7, #1
	str r7, [sp]
	adds r0, r6, #0
	bl FUN_0801F8B8
	adds r6, r0, #0
	adds r4, #4
	adds r5, #1
	cmp r5, #3
	bls _0804EECC
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #3
	movs r1, #0
	bl FUN_0801FEA0
	ldr r4, _0804EF68 @ => 0x03004720
	ldr r0, [r4, #8]
	ldr r1, _0804EF6C @ => 0x000006CF
	adds r0, r0, r1
	bl FUN_08050820
	adds r3, r0, #0
	str r7, [sp]
	movs r0, #0x47
	movs r1, #0x5f
	movs r2, #0x8d
	bl FUN_0801F8B8
	adds r5, r0, #0
	ldr r1, _0804EF70 @ => 0x03003DF0
	adds r1, #0x60
	ldr r0, [r4, #8]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl FUN_080203A8
	movs r0, #0xec
	lsls r0, r0, #3
	bl FUN_08050820
	adds r3, r0, #0
	str r7, [sp]
	adds r0, r5, #0
	movs r1, #0xcf
	movs r2, #0x8d
	bl FUN_0801F8B8
_0804EF42:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804EF50: .4byte 0x00000213
_0804EF54: .4byte gUnk_03002870
_0804EF58: .4byte 0x0000023B
_0804EF5C: .4byte gUnk_03003E4C
_0804EF60: .4byte ROMREF_0808FFC8
_0804EF64: .4byte 0x00000762
_0804EF68: .4byte gUnk_03004720
_0804EF6C: .4byte 0x000006CF
_0804EF70: .4byte gUnk_03003DF0

	thumb_func_start FUN_0804EF74
FUN_0804EF74: @ 0x0804EF74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0804EFA8 @ => 0x03002870
	ldrb r4, [r0, #4]
	cmp r4, #3
	bne _0804EFB4
	movs r0, #0x85
	movs r1, #2
	movs r2, #1
	movs r3, #1
	bl FUN_0802D5E8
	ldr r1, _0804EFAC @ => 0x03004790
	str r0, [r1]
	ldr r0, _0804EFB0 @ => 0x0809001C
	str r4, [sp]
	movs r1, #0xa0
	movs r2, #0x39
	movs r3, #0xa
	bl FUN_0802D680
	b _0804EFD2
	.align 2, 0
_0804EFA8: .4byte gUnk_03002870
_0804EFAC: .4byte gUnk_03004790
_0804EFB0: .4byte ROMREF_0809001C
_0804EFB4:
	movs r0, #0x2b
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl FUN_0802D5E8
	ldr r4, _0804F008 @ => 0x03004790
	str r0, [r4]
	movs r0, #0x3b
	movs r1, #0xde
	movs r2, #0xf
	movs r3, #1
	bl FUN_0802D5E8
	str r0, [r4, #0x34]
_0804EFD2:
	ldr r1, _0804F00C @ => 0x03002870
	ldrb r0, [r1, #4]
	cmp r0, #3
	beq _0804F0B2
	movs r4, #0xb
	adds r0, r1, #0
	mov r8, r0
	ldr r1, _0804F010 @ => 0x03003DF0
	mov sb, r1
	movs r7, #0xd
	movs r6, #0x36
	ldr r3, _0804F014 @ => 0x0807281C
	mov sl, r3
	ldr r0, _0804F008 @ => 0x03004790
	adds r5, r0, #0
	adds r5, #0x30
_0804EFF2:
	adds r2, r4, #0
	mov r1, r8
	ldrb r0, [r1, #4]
	cmp r0, #3
	beq _0804F02C
	cmp r4, #5
	bhi _0804F018
	mov r3, sb
	ldr r0, [r3, #0x68]
	ldr r1, [r0, #4]
	b _0804F046
	.align 2, 0
_0804F008: .4byte gUnk_03004790
_0804F00C: .4byte gUnk_03002870
_0804F010: .4byte gUnk_03003DF0
_0804F014: .4byte ItemInfoData
_0804F018:
	subs r2, r4, #6
	mov r1, r8
	ldrb r0, [r1, #4]
	lsls r0, r0, #3
	ldr r3, _0804F028 @ => 0x03003E64
	adds r0, r0, r3
	b _0804F044
	.align 2, 0
_0804F028: .4byte gUnk_03003E64
_0804F02C:
	cmp r4, #4
	bhi _0804F038
	mov r1, sb
	ldr r0, [r1, #0x68]
	ldr r1, [r0, #4]
	b _0804F046
_0804F038:
	subs r2, r4, #5
	mov r3, r8
	ldrb r0, [r3, #4]
	lsls r0, r0, #3
	ldr r1, _0804F060 @ => 0x03003E64
	adds r0, r0, r1
_0804F044:
	ldr r1, [r0]
_0804F046:
	lsls r0, r2, #2
	adds r1, r1, r0
	adds r2, r1, #0
	ldrh r0, [r1]
	cmp r0, #0xe6
	beq _0804F08C
	ldr r3, _0804F064 @ => 0x03002870
	ldrb r0, [r3, #4]
	cmp r0, #4
	beq _0804F068
	ldrh r1, [r1]
	b _0804F074
	.align 2, 0
_0804F060: .4byte gUnk_03003E64
_0804F064: .4byte gUnk_03002870
_0804F068:
	ldrb r0, [r1, #3]
	cmp r0, #0
	beq _0804F072
	cmp r4, #5
	bgt _0804F08C
_0804F072:
	ldrh r1, [r2]
_0804F074:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0]
	adds r0, r6, #0
	adds r2, r7, #0
	movs r3, #1
	bl FUN_0802D5E8
	str r0, [r5]
	b _0804F0A4
_0804F08C:
	adds r0, r6, #0
	movs r1, #0xda
	adds r2, r7, #0
	movs r3, #1
	bl FUN_0802D5E8
	str r0, [r5]
	ldr r1, [r0, #0xc]
	movs r2, #2
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #0xc]
_0804F0A4:
	subs r5, #4
	subs r7, #1
	subs r6, #1
	subs r4, #1
	cmp r4, #0
	bge _0804EFF2
	b _0804F0D8
_0804F0B2:
	movs r4, #0
	ldr r5, _0804F0E8 @ => 0x03004790
_0804F0B6:
	adds r0, r4, #0
	adds r0, #0x85
	adds r1, r4, #0
	adds r1, #0xda
	adds r2, r4, #2
	movs r3, #1
	bl FUN_0802D5E8
	adds r4, #1
	lsls r1, r4, #2
	adds r1, r1, r5
	str r0, [r1]
	movs r1, #0xb
	bl FUN_08001F84
	cmp r4, #3
	ble _0804F0B6
_0804F0D8:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804F0E8: .4byte gUnk_03004790

	thumb_func_start FUN_0804F0EC
FUN_0804F0EC: @ 0x0804F0EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r0, #0
	mov sb, r0
	ldr r0, _0804F110 @ => 0x03002870
	ldrb r1, [r0, #4]
	mov r8, r0
	cmp r1, #3
	beq _0804F118
	ldr r0, _0804F114 @ => 0x03004720
	mov r2, r8
	ldrb r1, [r2, #2]
	subs r1, #6
	b _0804F120
	.align 2, 0
_0804F110: .4byte gUnk_03002870
_0804F114: .4byte gUnk_03004720
_0804F118:
	ldr r0, _0804F174 @ => 0x03004720
	mov r3, r8
	ldrb r1, [r3, #2]
	subs r1, #5
_0804F120:
	ldr r0, [r0, #8]
	adds r7, r0, r1
	mov r1, r8
	ldrb r0, [r1, #4]
	lsls r0, r0, #3
	ldr r4, _0804F178 @ => 0x03003E60
	adds r0, r0, r4
	mov sl, r0
	lsls r1, r7, #2
	ldr r0, [r0, #4]
	adds r5, r0, r1
	ldrh r6, [r5]
	adds r0, r4, #0
	subs r0, #0x70
	ldr r0, [r0, #0x68]
	str r0, [sp]
	cmp r6, #0xe6
	bne _0804F146
	b _0804F29A
_0804F146:
	adds r0, r6, #0
	bl FUN_08006F68
	cmp r0, #0
	beq _0804F184
	ldrh r2, [r5]
	adds r0, r4, r2
	ldr r3, _0804F17C @ => 0xFFFFFEE1
	adds r0, r0, r3
	ldrb r3, [r0]
	ldr r1, _0804F180 @ => 0x0807281C
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, #8
	adds r0, r0, r1
	adds r3, #1
	adds r1, r3, #0
	muls r1, r3, r1
	ldr r0, [r0]
	adds r3, r0, #0
	muls r3, r1, r3
	b _0804F1A6
	.align 2, 0
_0804F174: .4byte gUnk_03004720
_0804F178: .4byte gUnk_03003E60
_0804F17C: .4byte 0xFFFFFEE1
_0804F180: .4byte ItemInfoData
_0804F184:
	ldr r2, _0804F1D8 @ => 0x0807281C
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #8
	adds r0, r0, r2
	ldr r2, _0804F1DC @ => 0x0808FFD8
	mov r3, r8
	ldrb r1, [r3, #4]
	lsls r1, r1, #3
	adds r2, #4
	adds r1, r1, r2
	ldr r2, [r0]
	ldr r0, [r1]
	muls r0, r2, r0
	lsrs r3, r0, #0x10
_0804F1A6:
	ldr r2, _0804F1E0 @ => 0x03003DF0
	ldr r1, _0804F1E4 @ => 0x0000036A
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	ldr r1, _0804F1E8 @ => 0x03002870
	mov r8, r1
	cmp r0, #0
	beq _0804F1C4
	ldrb r0, [r1, #4]
	cmp r0, #1
	bhi _0804F1C4
	lsrs r0, r3, #2
	subs r3, r3, r0
_0804F1C4:
	adds r4, r3, #0
	mov r3, r8
	ldrb r0, [r3, #4]
	cmp r0, #4
	beq _0804F1EC
	ldr r0, [r2, #8]
	cmp r0, r4
	blt _0804F234
	b _0804F1F2
	.align 2, 0
_0804F1D8: .4byte ItemInfoData
_0804F1DC: .4byte ROMREF_0808FFD8
_0804F1E0: .4byte gUnk_03003DF0
_0804F1E4: .4byte 0x0000036A
_0804F1E8: .4byte gUnk_03002870
_0804F1EC:
	ldrb r0, [r5, #3]
	cmp r0, #0
	bne _0804F240
_0804F1F2:
	ldrb r2, [r5, #2]
	ldrb r3, [r5, #3]
	ldr r0, [sp]
	adds r1, r6, #0
	bl FUN_080261BC
	cmp r0, #0
	beq _0804F220
	mov r0, sl
	adds r1, r7, #0
	movs r2, #1
	bl FUN_08026260
	ldr r1, _0804F21C @ => 0x03002870
	ldrb r0, [r1, #3]
	subs r0, #1
	strb r0, [r1, #3]
	movs r0, #1
	mov sb, r0
	b _0804F240
	.align 2, 0
_0804F21C: .4byte gUnk_03002870
_0804F220:
	movs r1, #0
	mov sb, r1
	movs r0, #0x87
	lsls r0, r0, #4
	bl FUN_0804F894
	movs r0, #0xbe
	bl FUN_0804DE0C
	b _0804F240
_0804F234:
	ldr r0, _0804F284 @ => 0x00000871
	bl FUN_0804F894
	movs r0, #0xbe
	bl FUN_0804DE0C
_0804F240:
	mov r2, sb
	cmp r2, #1
	bne _0804F29A
	ldr r0, _0804F288 @ => 0x03002870
	ldrb r0, [r0, #4]
	cmp r0, #4
	beq _0804F290
	rsbs r1, r4, #0
	movs r0, #2
	bl FUN_08020DB0
	bl FUN_0804F800
	movs r0, #0xb0
	bl FUN_0804DE0C
	adds r0, r6, #0
	bl FUN_08006F68
	cmp r0, #1
	bne _0804F29A
	ldr r1, _0804F28C @ => 0x03003DF0
	adds r1, r1, r6
	subs r1, #0xaf
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	bl FUN_0804EB34
	movs r0, #0xad
	bl FUN_0804DE0C
	b _0804F29A
	.align 2, 0
_0804F284: .4byte 0x00000871
_0804F288: .4byte gUnk_03002870
_0804F28C: .4byte gUnk_03003DF0
_0804F290:
	bl FUN_0804EB34
	movs r0, #0xad
	bl FUN_0804DE0C
_0804F29A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0804F2AC
FUN_0804F2AC: @ 0x0804F2AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0804F304 @ => 0x03004720
	ldr r3, _0804F308 @ => 0x03002870
	ldrb r1, [r3]
	ldr r0, [r0, #8]
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _0804F30C @ => 0x03003DF0
	ldr r7, [r0, #0x68]
	mov r0, r8
	lsls r1, r0, #2
	ldr r0, [r7, #4]
	adds r5, r0, r1
	ldrh r1, [r5]
	cmp r1, #0xe6
	bne _0804F2D2
	b _0804F3FE
_0804F2D2:
	ldrb r0, [r3, #4]
	cmp r0, #4
	bne _0804F2DA
	b _0804F3FE
_0804F2DA:
	cmp r1, #0x6d
	bhi _0804F318
	ldrb r0, [r5, #2]
	cmp r0, #4
	beq _0804F318
	ldr r2, _0804F310 @ => 0x0807281C
	adds r0, r1, #0
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r2, #8
	adds r1, r1, r2
	ldr r2, _0804F314 @ => 0x0808FFD8
	ldrb r0, [r3, #4]
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r1, [r1]
	ldr r0, [r0]
	muls r0, r1, r0
	lsrs r4, r0, #0x10
	b _0804F31A
	.align 2, 0
_0804F304: .4byte gUnk_03004720
_0804F308: .4byte gUnk_03002870
_0804F30C: .4byte gUnk_03003DF0
_0804F310: .4byte ItemInfoData
_0804F314: .4byte ROMREF_0808FFD8
_0804F318:
	movs r4, #0
_0804F31A:
	bl FUN_08021320
	cmp r0, #0
	bne _0804F330
	ldr r0, _0804F344 @ => 0x0300407C
	movs r1, #2
	bl FUN_0801DF10
	cmp r0, #0
	bne _0804F330
	movs r4, #0
_0804F330:
	cmp r4, #0
	bne _0804F34C
	ldr r0, _0804F348 @ => 0x00000873
	bl FUN_0804F894
	movs r0, #0xbe
	bl FUN_0804DE0C
	b _0804F3FE
	.align 2, 0
_0804F344: .4byte gEpisode_Data
_0804F348: .4byte 0x00000873
_0804F34C:
	ldrh r0, [r5]
	cmp r0, #0x6d
	bhi _0804F388
	ldrb r0, [r5, #2]
	cmp r0, #4
	beq _0804F388
	ldr r2, _0804F37C @ => 0x0807281C
	ldrh r0, [r5]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r2, #8
	adds r1, r1, r2
	ldr r2, _0804F380 @ => 0x0808FFD8
	ldr r0, _0804F384 @ => 0x03002870
	ldrb r0, [r0, #4]
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r1, [r1]
	ldr r0, [r0]
	muls r0, r1, r0
	lsrs r4, r0, #0x10
	b _0804F38A
	.align 2, 0
_0804F37C: .4byte ItemInfoData
_0804F380: .4byte ROMREF_0808FFD8
_0804F384: .4byte gUnk_03002870
_0804F388:
	movs r4, #0
_0804F38A:
	bl FUN_08021320
	cmp r0, #0
	bne _0804F3A0
	ldr r0, _0804F408 @ => 0x0300407C
	movs r1, #2
	bl FUN_0801DF10
	cmp r0, #0
	bne _0804F3A0
	movs r4, #0
_0804F3A0:
	movs r0, #2
	adds r1, r4, #0
	bl FUN_08020DB0
	bl FUN_0804F800
	movs r0, #0xb0
	bl FUN_0804DE0C
	ldrh r0, [r5]
	bl FUN_08006F68
	cmp r0, #1
	bne _0804F3CA
	ldr r0, _0804F40C @ => 0x03003DF0
	ldrh r1, [r5]
	adds r0, r0, r1
	subs r0, #0xaf
	ldrb r1, [r0]
	subs r1, #1
	strb r1, [r0]
_0804F3CA:
	ldr r6, _0804F410 @ => 0x03002870
	ldrb r0, [r6, #4]
	lsls r0, r0, #3
	ldr r1, _0804F414 @ => 0x03003E60
	adds r4, r0, r1
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	cmp r0, r1
	bhs _0804F3EE
	ldrh r1, [r5]
	ldrb r2, [r5, #2]
	ldrb r3, [r5, #3]
	adds r0, r4, #0
	bl FUN_080261BC
	ldrb r0, [r6, #3]
	adds r0, #1
	strb r0, [r6, #3]
_0804F3EE:
	adds r0, r7, #0
	mov r1, r8
	movs r2, #1
	bl FUN_08026260
	ldrb r0, [r6, #1]
	subs r0, #1
	strb r0, [r6, #1]
_0804F3FE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804F408: .4byte gEpisode_Data
_0804F40C: .4byte gUnk_03003DF0
_0804F410: .4byte gUnk_03002870
_0804F414: .4byte gUnk_03003E60

	thumb_func_start FUN_0804F418
FUN_0804F418: @ 0x0804F418
	push {r4, r5, lr}
	ldr r4, _0804F460 @ => 0x03002870
	ldrb r0, [r4, #4]
	cmp r0, #3
	bne _0804F46C
	ldr r5, _0804F464 @ => 0x03004790
	ldr r1, [r5]
	ldrh r0, [r1, #0xa]
	cmp r0, #0
	bne _0804F43C
	movs r0, #2
	strh r0, [r1, #0xa]
	ldr r0, [r5]
	bl FUN_0802D848
	ldr r1, _0804F468 @ => 0x03004720
	movs r0, #4
	str r0, [r1, #8]
_0804F43C:
	ldr r1, [r5]
	ldr r0, _0804F468 @ => 0x03004720
	ldr r0, [r0, #8]
	adds r0, #0x85
	strh r0, [r1, #8]
	ldr r0, [r5]
	movs r1, #0x3a
	bl FUN_08001F84
	ldrb r0, [r4]
	ldrb r1, [r4, #2]
	bl FUN_0804ED38
	ldrb r0, [r4]
	ldrb r1, [r4, #2]
	bl FUN_0804EC4C
	b _0804F490
	.align 2, 0
_0804F460: .4byte gUnk_03002870
_0804F464: .4byte gUnk_03004790
_0804F468: .4byte gUnk_03004720
_0804F46C:
	ldr r1, _0804F498 @ => 0x03004790
	ldr r2, [r1]
	ldr r0, _0804F49C @ => 0x03004720
	ldr r0, [r0, #8]
	adds r0, #0x2b
	strh r0, [r2, #8]
	ldr r0, [r1]
	movs r1, #0x3a
	bl FUN_08001F84
	ldrb r0, [r4]
	ldrb r1, [r4, #2]
	bl FUN_0804ED38
	ldrb r0, [r4]
	ldrb r1, [r4, #2]
	bl FUN_0804EC4C
_0804F490:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804F498: .4byte gUnk_03004790
_0804F49C: .4byte gUnk_03004720

	thumb_func_start FUN_0804F4A0
FUN_0804F4A0: @ 0x0804F4A0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _0804F4C0 @ => 0x03003DF0
	ldr r2, _0804F4C4 @ => 0x03004720
	adds r0, #0x5c
	ldr r1, [r2, #8]
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r6, r0, #0
	cmp r6, #0
	bne _0804F4C8
	movs r0, #0xbe
	bl FUN_0804DE0C
	b _0804F558
	.align 2, 0
_0804F4C0: .4byte gUnk_03003DF0
_0804F4C4: .4byte gUnk_03004720
_0804F4C8:
	movs r5, #1
	str r5, [r2, #0x14]
	str r5, [r2, #0xc]
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #3
	movs r1, #1
	bl FUN_0801FEA0
	ldr r2, _0804F560 @ => 0x00000213
	movs r0, #1
	movs r1, #0
	movs r3, #0
	bl FUN_080410E8
	ldr r7, _0804F564 @ => 0x000006CD
	adds r0, r7, #0
	bl FUN_08050820
	bl FUN_0801FF60
	adds r2, r0, #0
	adds r0, r2, #7
	lsrs r1, r0, #3
	adds r2, r1, #2
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	beq _0804F504
	adds r2, r1, #3
_0804F504:
	movs r0, #0x1e
	subs r0, r0, r2
	lsrs r0, r0, #1
	movs r1, #5
	movs r3, #8
	bl FUN_08041234
	ldr r0, _0804F568 @ => 0x0808FFC4
	ldr r0, [r0]
	bl FUN_0801FE58
	movs r4, #0x87
	lsls r4, r4, #2
	adds r0, r6, #0
	bl FUN_080203A8
	ldr r0, _0804F56C @ => 0x000006CC
	bl FUN_08050820
	adds r3, r0, #0
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x30
	bl FUN_0801F8B8
	adds r4, r0, #0
	adds r0, r7, #0
	bl FUN_08050820
	adds r3, r0, #0
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x3c
	bl FUN_0801F8B8
	bl FUN_0804F850
	movs r0, #0xad
	bl FUN_0804DE0C
_0804F558:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804F560: .4byte 0x00000213
_0804F564: .4byte 0x000006CD
_0804F568: .4byte ROMREF_0808FFC4
_0804F56C: .4byte 0x000006CC

	thumb_func_start FUN_0804F570
FUN_0804F570: @ 0x0804F570
	push {lr}
	ldr r0, _0804F58C @ => 0x03002870
	ldrb r0, [r0, #4]
	cmp r0, #3
	bne _0804F598
	ldr r2, _0804F590 @ => 0x03004720
	ldr r1, [r2, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804F594
	subs r0, r1, #1
	b _0804F5E6
	.align 2, 0
_0804F58C: .4byte gUnk_03002870
_0804F590: .4byte gUnk_03004720
_0804F594:
	adds r0, r1, #1
	b _0804F5E6
_0804F598:
	bl FUN_0804F9DC
	cmp r0, #0
	beq _0804F5BE
	ldr r0, _0804F5B4 @ => 0x03004720
	ldr r1, [r0, #8]
	adds r2, r0, #0
	cmp r1, #3
	beq _0804F5E2
	cmp r1, #3
	bhi _0804F5B8
	cmp r1, #1
	beq _0804F5E2
	b _0804F5E8
	.align 2, 0
_0804F5B4: .4byte gUnk_03004720
_0804F5B8:
	cmp r1, #5
	bne _0804F5E8
	b _0804F5E2
_0804F5BE:
	ldr r0, _0804F5D4 @ => 0x03004720
	ldr r1, [r0, #8]
	adds r2, r0, #0
	cmp r1, #8
	beq _0804F5DC
	cmp r1, #8
	bhi _0804F5D8
	cmp r1, #6
	beq _0804F5DC
	b _0804F5E2
	.align 2, 0
_0804F5D4: .4byte gUnk_03004720
_0804F5D8:
	cmp r1, #0xa
	bne _0804F5E2
_0804F5DC:
	ldr r0, [r2, #8]
	subs r0, #5
	b _0804F5E6
_0804F5E2:
	ldr r0, [r2, #8]
	subs r0, #1
_0804F5E6:
	str r0, [r2, #8]
_0804F5E8:
	pop {r0}
	bx r0

	thumb_func_start FUN_0804F5EC
FUN_0804F5EC: @ 0x0804F5EC
	push {lr}
	ldr r0, _0804F608 @ => 0x03002870
	ldrb r0, [r0, #4]
	cmp r0, #3
	bne _0804F614
	ldr r2, _0804F60C @ => 0x03004720
	ldr r1, [r2, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804F610
	subs r0, r1, #1
	b _0804F660
	.align 2, 0
_0804F608: .4byte gUnk_03002870
_0804F60C: .4byte gUnk_03004720
_0804F610:
	adds r0, r1, #1
	b _0804F660
_0804F614:
	bl FUN_0804F9DC
	cmp r0, #0
	beq _0804F63E
	ldr r0, _0804F630 @ => 0x03004720
	ldr r1, [r0, #8]
	adds r2, r0, #0
	cmp r1, #3
	beq _0804F638
	cmp r1, #3
	bhi _0804F634
	cmp r1, #1
	beq _0804F638
	b _0804F65C
	.align 2, 0
_0804F630: .4byte gUnk_03004720
_0804F634:
	cmp r1, #5
	bne _0804F65C
_0804F638:
	ldr r0, [r2, #8]
	adds r0, #5
	b _0804F660
_0804F63E:
	ldr r0, _0804F654 @ => 0x03004720
	ldr r1, [r0, #8]
	adds r2, r0, #0
	cmp r1, #8
	beq _0804F65C
	cmp r1, #8
	bhi _0804F658
	cmp r1, #6
	beq _0804F65C
	b _0804F662
	.align 2, 0
_0804F654: .4byte gUnk_03004720
_0804F658:
	cmp r1, #0xa
	bne _0804F662
_0804F65C:
	ldr r0, [r2, #8]
	adds r0, #1
_0804F660:
	str r0, [r2, #8]
_0804F662:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start ShopMenu_Terminate
ShopMenu_Terminate: @ 0x0804F668
	push {lr}
	movs r0, #0x3f
	movs r1, #0
	bl FUN_0804582C
	ldr r0, _0804F688 @ => 0x03002C40
	bl FUN_08000BF8
	bl FUN_0800CB20
	bl FUN_08015834
	bl FUN_0802D8A8
	pop {r0}
	bx r0
	.align 2, 0
_0804F688: .4byte gUnk_03002C40
