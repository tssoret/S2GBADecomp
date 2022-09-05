.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start SocialConversation_Init
SocialConversation_Init: @ 0x0804C5DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r0, #0
	bl FUN_0800C558
	movs r0, #0x80
	lsls r0, r0, #5
	bl FUN_0800C5EC
	movs r0, #0
	bl FUN_0805273C
	bl FUN_0804DDC0
	ldr r0, _0804C728 @ => 0x0808F114
	ldr r1, [r0]
	movs r0, #2
	bl FUN_0800C418
	ldr r0, _0804C72C @ => 0x0808F118
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C418
	ldr r0, _0804C730 @ => 0x0808F11C
	ldr r4, [r0]
	movs r0, #1
	adds r1, r4, #0
	bl FUN_0800C418
	movs r0, #1
	movs r1, #0
	bl FUN_0800C61C
	ldr r0, _0804C734 @ => 0x0808F120
	ldr r1, [r0]
	movs r0, #0
	bl FUN_0800C418
	movs r0, #0
	movs r1, #0
	bl FUN_0800C61C
	adds r0, r4, #0
	bl FUN_0801FE58
	ldr r6, _0804C738 @ => 0x03002770
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r6, #0
	movs r1, #0
	bl FUN_0802CB40
	adds r2, r6, #0
	adds r2, #0x9c
	ldr r1, _0804C73C @ => 0x03004720
	ldr r0, [r1, #8]
	str r0, [r2]
	adds r5, r6, #0
	adds r5, #0xac
	ldr r1, [r1, #4]
	str r1, [r5]
	adds r1, r6, #0
	adds r1, #0xe4
	movs r4, #0
	str r4, [r1]
	subs r1, #4
	str r4, [r1]
	bl FUN_0803AE08
	adds r1, r6, #0
	adds r1, #0xa0
	str r0, [r1]
	ldr r0, _0804C740 @ => 0x030043A0
	ldr r0, [r0]
	adds r1, #0x5e
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0xd8
	movs r1, #0
	strh r4, [r0]
	adds r0, #0x20
	str r4, [r0]
	subs r0, #4
	str r4, [r0]
	adds r0, #8
	strh r4, [r0]
	subs r0, #0x1d
	strb r1, [r0]
	bl FUN_0804D7FC
	adds r1, r6, #0
	adds r1, #0xa4
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	movs r0, #0
	bl FUN_0804DDA0
	bl FUN_0804D6A8
	movs r0, #0
	mov sl, r0
	mov r8, r0
	adds r7, r6, #0
	mov sb, r5
_0804C6B8:
	mov r2, sb
	ldr r1, [r2]
	ldr r0, _0804C744 @ => 0x03004004
	mov r2, r8
	bl FUN_0804C504
	adds r2, r0, #0
	cmp r2, #0
	beq _0804C7AC
	mov r3, sb
	ldr r2, [r3]
	ldrb r1, [r3]
	mov r0, r8
	lsls r4, r0, #3
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r4, r0
	ldr r2, _0804C748 @ => 0x03003DF0
	adds r0, r0, r2
	movs r3, #0x86
	lsls r3, r3, #2
	adds r0, r0, r3
	ldrb r3, [r0]
	mov r0, r8
	mov r2, r8
	bl FUN_0804DBA0
	mov r2, r8
	subs r1, r4, r2
	lsls r5, r1, #2
	adds r3, r5, r7
	str r0, [r3]
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _0804C744 @ => 0x03004004
	str r3, [sp]
	bl FUN_0804C53C
	adds r6, r0, #0
	ldr r3, [sp]
	cmp r6, #1
	bne _0804C74C
	mov r0, sl
	movs r1, #0
	bl FUN_0804DC40
	adds r1, r7, #4
	adds r1, r5, r1
	str r0, [r1]
	adds r0, r7, #0
	adds r0, #0x10
	adds r0, r5, r0
	str r6, [r0]
	b _0804C758
	.align 2, 0
_0804C728: .4byte ROMREF_0808F114
_0804C72C: .4byte ROMREF_0808F118
_0804C730: .4byte ROMREF_0808F11C
_0804C734: .4byte ROMREF_0808F120
_0804C738: .4byte gUnk_03002770
_0804C73C: .4byte gUnk_03004720
_0804C740: .4byte gUnk_030043A0
_0804C744: .4byte gSocialMove_Data
_0804C748: .4byte gUnk_03003DF0
_0804C74C:
	adds r0, r7, #0
	adds r0, #0x10
	adds r0, r5, r0
	movs r1, #0
	str r1, [r0]
	strb r1, [r3, #0x18]
_0804C758:
	mov r1, r8
	subs r2, r4, r1
	lsls r2, r2, #2
	adds r0, r7, #0
	adds r0, #8
	adds r0, r2, r0
	str r1, [r0]
	adds r3, r7, #0
	adds r3, #0xc
	adds r3, r2, r3
	mov r0, sb
	ldr r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r4, r0
	ldr r1, _0804C7A4 @ => 0x03003DF0
	adds r0, r0, r1
	movs r4, #0x86
	lsls r4, r4, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	str r0, [r3]
	adds r0, r7, #0
	adds r0, #0x14
	adds r2, r2, r0
	movs r0, #1
	str r0, [r2]
	ldr r0, _0804C7A8 @ => 0x0300284A
	add r0, sl
	mov r1, r8
	strb r1, [r0]
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	b _0804C7BC
	.align 2, 0
_0804C7A4: .4byte gUnk_03003DF0
_0804C7A8: .4byte gUnk_0300284A
_0804C7AC:
	mov r3, r8
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x14
	adds r0, r0, r1
	str r2, [r0]
_0804C7BC:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #4
	bhi _0804C7CC
	b _0804C6B8
_0804C7CC:
	ldr r6, _0804C8F8 @ => 0x03002770
	adds r1, r6, #0
	adds r1, #0xe0
	mov r0, sl
	subs r0, #1
	str r0, [r1]
	bl FUN_0804D16C
	adds r1, r6, #0
	adds r1, #0x8c
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #0xac
	ldrb r0, [r0]
	bl FUN_0804DCC4
	adds r5, r0, #0
	adds r0, r6, #0
	adds r0, #0x98
	str r5, [r0]
	adds r0, #0xe
	movs r4, #0
	ldrsh r0, [r0, r4]
	bl __floatsisf
	adds r4, r0, #0
	adds r0, r6, #0
	adds r0, #0xa4
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl __floatsisf
	adds r1, r0, #0
	adds r0, r4, #0
	bl __divsf3
	ldr r4, _0804C8FC @ => 0x42C80000
	adds r1, r4, #0
	bl __mulsf3
	adds r1, r0, #0
	adds r0, r4, #0
	bl __subsf3
	bl __fixunssfsi
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl FUN_0801F740
	bl FUN_0804DD34
	ldr r4, _0804C900 @ => 0x030042B0
	ldrh r0, [r4, #6]
	movs r1, #1
	bl FUN_08023750
	ldrh r0, [r4, #6]
	bl FUN_080238D4
	adds r1, r6, #0
	adds r1, #0xb0
	ldr r0, _0804C904 @ => 0x03004200
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #0
	bl FUN_08022E94
	adds r4, r6, #0
	adds r4, #0x90
	str r0, [r4]
	adds r0, #0xa9
	ldrb r1, [r0]
	movs r2, #0xc
	orrs r1, r2
	strb r1, [r0]
	ldr r1, [r4]
	ldr r0, _0804C908 @ => FUN_0804D1F4
	str r0, [r1, #0x50]
	ldr r0, [r4]
	movs r1, #0x4f
	movs r2, #0x64
	bl FUN_08001734
	ldr r0, [r4]
	movs r1, #0
	bl FUN_08001FF0
	ldr r0, [r4]
	movs r1, #1
	bl FUN_08001FB0
	adds r0, r6, #0
	adds r0, #0x9c
	ldr r0, [r0]
	cmp r0, #0xe
	bne _0804C8A8
	bl FUN_08021320
	movs r2, #0xa2
	cmp r0, #0
	beq _0804C8AA
_0804C8A8:
	movs r2, #0x8d
_0804C8AA:
	ldr r4, _0804C8F8 @ => 0x03002770
	adds r0, r4, #0
	adds r0, #0x9c
	ldr r0, [r0]
	lsls r2, r2, #0x10
	movs r3, #0xc8
	lsls r3, r3, #0xf
	movs r1, #0
	bl FUN_08039914
	adds r4, #0x94
	str r0, [r4]
	adds r0, #0xa9
	ldrb r1, [r0]
	movs r2, #0xc
	orrs r1, r2
	strb r1, [r0]
	ldr r1, [r4]
	ldr r0, _0804C90C @ => FUN_0804D28C
	str r0, [r1, #0x50]
	ldr r0, [r4]
	movs r1, #2
	bl FUN_08001FB0
	bl FUN_0800133C
	movs r0, #0x3f
	movs r1, #0xc
	bl FUN_080457F4
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C8F8: .4byte gUnk_03002770
_0804C8FC: .4byte 0x42C80000
_0804C900: .4byte gUnk_030042B0
_0804C904: .4byte gUnk_03004200
_0804C908: .4byte FUN_0804D1F4
_0804C90C: .4byte FUN_0804D28C

	thumb_func_start FUN_0804C910
FUN_0804C910: @ 0x0804C910
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r0, _0804C95C @ => 0x03003E28
	bl FUN_08038A80
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804C968
	ldr r5, _0804C960 @ => 0x03002770
	adds r0, r5, #0
	adds r0, #0x9c
	ldr r4, [r0]
	bl FUN_08021320
	adds r2, r0, #0
	adds r0, r5, #0
	adds r0, #0xac
	ldr r3, [r0]
	movs r0, #0
	adds r1, r4, #0
	bl FUN_0804D5C8
	bl FUN_0804DDD8
	ldr r0, _0804C964 @ => 0x030042B0
	ldrh r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r5, #0
	adds r1, #0xb0
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x36
	bl FUN_08001FB0
	b _0804CAB2
	.align 2, 0
_0804C95C: .4byte gUnk_03003E28
_0804C960: .4byte gUnk_03002770
_0804C964: .4byte gUnk_030042B0
_0804C968:
	ldr r3, _0804C980 @ => 0x03002770
	adds r0, r3, #0
	adds r0, #0xa6
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0804C984
	movs r0, #2
	bl FUN_0804DDA0
	b _0804CAB2
	.align 2, 0
_0804C980: .4byte gUnk_03002770
_0804C984:
	ldr r0, _0804CA28 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0804C9B8
	adds r2, r3, #0
	adds r2, #0xdf
	ldrb r0, [r2]
	cmp r0, #0
	beq _0804C9B8
	subs r0, #1
	strb r0, [r2]
	adds r1, r3, #0
	adds r1, #0xe4
	adds r0, r3, #0
	adds r0, #0xda
	ldrb r2, [r2]
	adds r0, r0, r2
	ldrb r0, [r0]
	str r0, [r1]
	ldr r0, _0804CA2C @ => 0x0808EF84
	ldr r0, [r0]
	bl FUN_0804DE0C
	movs r4, #1
_0804C9B8:
	ldr r0, _0804CA28 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804C9F4
	ldr r2, _0804CA30 @ => 0x03002770
	adds r3, r2, #0
	adds r3, #0xdf
	ldrb r1, [r3]
	adds r0, r2, #0
	adds r0, #0xe0
	ldr r0, [r0]
	cmp r1, r0
	bhs _0804C9F4
	adds r0, r1, #1
	strb r0, [r3]
	adds r1, r2, #0
	adds r1, #0xe4
	adds r0, r2, #0
	adds r0, #0xda
	ldrb r3, [r3]
	adds r0, r0, r3
	ldrb r0, [r0]
	str r0, [r1]
	ldr r0, _0804CA2C @ => 0x0808EF84
	ldr r0, [r0]
	bl FUN_0804DE0C
	movs r4, #1
_0804C9F4:
	ldr r0, _0804CA28 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804CA3C
	ldr r2, _0804CA30 @ => 0x03002770
	adds r0, r2, #0
	adds r0, #0xe4
	ldr r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _0804CA34
	ldr r0, _0804CA2C @ => 0x0808EF84
	ldr r0, [r0, #4]
	bl FUN_0804DE0C
	movs r0, #1
	bl FUN_0804DDA0
	b _0804CA3C
	.align 2, 0
_0804CA28: .4byte gUnk_030042B0
_0804CA2C: .4byte ROMREF_0808EF84
_0804CA30: .4byte gUnk_03002770
_0804CA34:
	ldr r0, _0804CAB8 @ => 0x0808EF84
	ldr r0, [r0, #4]
	bl FUN_0804DE0C
_0804CA3C:
	cmp r4, #1
	bne _0804CA5E
	ldr r1, _0804CABC @ => 0x03002770
	adds r0, r1, #0
	adds r0, #0x8c
	ldr r0, [r0]
	ldr r3, _0804CAC0 @ => 0x0808F0E8
	adds r1, #0xe4
	ldr r2, [r1]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldrb r1, [r2]
	ldrb r2, [r2, #1]
	bl FUN_08001734
	bl FUN_0804DD34
_0804CA5E:
	ldr r6, _0804CAC4 @ => 0x030042B0
	ldrh r1, [r6, #0xc]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804CAB2
	bl FUN_08021320
	cmp r0, #0
	bne _0804CA7E
	ldr r0, _0804CAC8 @ => 0x0300407C
	movs r1, #2
	bl FUN_0801DEE0
	cmp r0, #0
	beq _0804CAB2
_0804CA7E:
	ldr r4, _0804CABC @ => 0x03002770
	ldrh r1, [r6, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r5, r4, #0
	adds r5, #0xb0
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #4
	bl FUN_08001F20
	ldrh r1, [r6, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl FUN_08023120
	bl FUN_0804DDD8
	adds r4, #0x9c
	ldr r0, [r4]
	bl FUN_0803AD30
_0804CAB2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804CAB8: .4byte ROMREF_0808EF84
_0804CABC: .4byte gUnk_03002770
_0804CAC0: .4byte ROMREF_0808F0E8
_0804CAC4: .4byte gUnk_030042B0
_0804CAC8: .4byte gEpisode_Data

	thumb_func_start FUN_0804CACC
FUN_0804CACC: @ 0x0804CACC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r3, _0804CB20 @ => 0x03002770
	adds r0, r3, #0
	adds r0, #0x90
	ldr r0, [r0]
	mov r8, r0
	adds r0, r3, #0
	adds r0, #0x94
	ldr r6, [r0]
	adds r0, #0x18
	ldr r7, [r0]
	adds r0, #0x38
	ldr r0, [r0]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r0, r3, #0
	adds r0, #8
	adds r0, r1, r0
	ldr r0, [r0]
	mov sb, r0
	adds r0, r3, #0
	adds r0, #0xc
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, #0xe0
	ldr r0, [r0]
	adds r5, r3, #0
	cmp r0, #8
	bls _0804CB14
	b _0804CFFC
_0804CB14:
	lsls r0, r0, #2
	ldr r1, _0804CB24 @ =_0804CB28
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804CB20: .4byte gUnk_03002770
_0804CB24: .4byte _0804CB28
_0804CB28: @ jump table
	.4byte _0804CB4C @ case 0
	.4byte _0804CBAC @ case 1
	.4byte _0804CC80 @ case 2
	.4byte _0804CFFC @ case 3
	.4byte _0804CE40 @ case 4
	.4byte _0804CF6C @ case 5
	.4byte _0804CFD0 @ case 6
	.4byte _0804CF18 @ case 7
	.4byte _0804CD36 @ case 8
_0804CB4C:
	mov r0, r8
	movs r1, #0
	bl FUN_08001FB0
	adds r0, r6, #0
	movs r1, #0
	bl FUN_08001FB0
	ldr r5, _0804CBA0 @ => 0x03002770
	adds r0, r5, #0
	adds r0, #0xe4
	ldr r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldr r1, _0804CBA4 @ => 0x08D24F9C
	movs r2, #0
	bl FUN_080018F4
	ldr r0, _0804CBA8 @ => 0x0808F070
	lsls r4, r7, #2
	adds r4, r4, r7
	add r4, sb
	lsls r4, r4, #3
	adds r4, r4, r0
	ldrb r0, [r4, #6]
	movs r1, #0
	bl FUN_0804DA14
	adds r5, #0xf8
	str r0, [r5]
	ldrb r1, [r4]
	mov r0, r8
	bl FUN_08001F20
	movs r0, #1
	bl FUN_0804DDB4
	b _0804CFFC
	.align 2, 0
_0804CBA0: .4byte gUnk_03002770
_0804CBA4: .4byte ROMREF_08D24F9C
_0804CBA8: .4byte ROMREF_0808F070
_0804CBAC:
	mov r1, r8
	ldr r0, [r1, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0804CBBC
	b _0804CFFC
_0804CBBC:
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r3, [r0]
	movs r4, #0x9c
	adds r4, r4, r5
	mov sl, r4
	ldr r0, [r4]
	str r0, [sp]
	adds r0, r7, #0
	mov r1, sb
	bl FUN_0804C308
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_080425E4
	cmp r0, #1
	bne _0804CC40
	ldr r1, _0804CC3C @ => 0x0808F070
	lsls r0, r7, #2
	adds r0, r0, r7
	add r0, sb
	lsls r0, r0, #3
	adds r4, r0, r1
	ldrb r1, [r4, #2]
	adds r0, r6, #0
	bl FUN_08001F20
	ldrb r1, [r4, #1]
	mov r0, r8
	bl FUN_08001F20
	mov r1, sl
	ldr r0, [r1]
	lsls r1, r7, #0x18
	lsrs r1, r1, #0x18
	mov r3, sb
	lsls r2, r3, #0x18
	lsrs r2, r2, #0x18
	bl FUN_0803B00C
	bl FUN_0804DE0C
	movs r0, #2
	bl FUN_0804DDB4
	ldrb r0, [r4, #5]
	cmp r0, #1
	beq _0804CC2A
	adds r2, r0, #0
	adds r0, r6, #0
	movs r1, #0
	movs r3, #1
	bl FUN_0804D424
_0804CC2A:
	ldrb r0, [r4, #6]
	movs r1, #1
	bl FUN_0804DA14
	adds r1, r5, #0
	adds r1, #0xf4
	str r0, [r1]
	b _0804CFFC
	.align 2, 0
_0804CC3C: .4byte ROMREF_0808F070
_0804CC40:
	ldr r0, _0804CC7C @ => 0x0808F070
	lsls r4, r7, #2
	adds r4, r4, r7
	add r4, sb
	lsls r4, r4, #3
	adds r4, r4, r0
	ldrb r1, [r4, #3]
	adds r0, r6, #0
	bl FUN_08001F20
	ldrb r1, [r4, #4]
	mov r0, r8
	bl FUN_08001F20
	mov r4, sl
	ldr r0, [r4]
	lsls r1, r7, #0x18
	lsrs r1, r1, #0x18
	mov r3, sb
	lsls r2, r3, #0x18
	lsrs r2, r2, #0x18
	bl FUN_0803B024
	bl FUN_0804DE0C
	movs r0, #4
	bl FUN_0804DDB4
	b _0804CFFC
	.align 2, 0
_0804CC7C: .4byte ROMREF_0808F070
_0804CC80:
	ldr r0, [r6, #0xc]
	movs r4, #0x80
	lsls r4, r4, #0xf
	ands r0, r4
	cmp r0, #0
	beq _0804CC94
	adds r0, r6, #0
	movs r1, #0xb3
	bl FUN_08001F20
_0804CC94:
	mov r1, r8
	ldr r0, [r1, #0xc]
	ands r0, r4
	cmp r0, #0
	bne _0804CCA0
	b _0804CFFC
_0804CCA0:
	ldr r4, _0804CCE0 @ => 0x03002770
	adds r5, r4, #0
	adds r5, #0xf8
	ldr r0, [r5]
	cmp r0, #0
	beq _0804CCB6
	movs r1, #4
	bl FUN_08001FB0
	movs r0, #0
	str r0, [r5]
_0804CCB6:
	adds r0, r4, #0
	adds r0, #0x9c
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, sb
	bl FUN_0804C4A4
	adds r1, r0, #0
	adds r2, r4, #0
	adds r2, #0xa6
	movs r3, #0
	ldrsh r0, [r2, r3]
	subs r0, r0, r1
	cmp r0, #0
	ble _0804CCE4
	ldrh r0, [r2]
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0xa8
	b _0804CCEA
	.align 2, 0
_0804CCE0: .4byte gUnk_03002770
_0804CCE4:
	adds r1, r4, #0
	adds r1, #0xa8
	movs r0, #0
_0804CCEA:
	strh r0, [r1]
	movs r2, #0
	ldr r5, _0804CD0C @ => 0x03002770
	adds r3, r5, #0
	adds r3, #0xe4
	adds r1, r5, #0
_0804CCF6:
	ldr r0, [r3]
	cmp r2, r0
	bne _0804CD10
	movs r0, #0x18
	ldrsb r0, [r1, r0]
	adds r0, #0xa
	cmp r0, #0x64
	ble _0804CD1C
	movs r0, #0x64
	b _0804CD1C
	.align 2, 0
_0804CD0C: .4byte gUnk_03002770
_0804CD10:
	movs r0, #0x18
	ldrsb r0, [r1, r0]
	subs r0, #0xa
	cmp r0, #0
	bge _0804CD1C
	movs r0, #0
_0804CD1C:
	strb r0, [r1, #0x18]
	adds r1, #0x1c
	adds r2, #1
	cmp r2, #4
	bls _0804CCF6
	mov r0, r8
	movs r1, #1
	bl FUN_08001FB0
	movs r0, #8
	bl FUN_0804DDB4
	b _0804CFFC
_0804CD36:
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0804CD4A
	adds r0, r6, #0
	movs r1, #0xb3
	bl FUN_08001F20
_0804CD4A:
	ldr r6, _0804CDAC @ => 0x03002770
	adds r0, r6, #0
	adds r0, #0xa8
	adds r2, r6, #0
	adds r2, #0xa6
	movs r4, #0
	ldrsh r1, [r0, r4]
	ldrh r3, [r2]
	movs r4, #0
	ldrsh r0, [r2, r4]
	cmp r1, r0
	bge _0804CDB4
	subs r0, r3, #1
	strh r0, [r2]
	adds r0, r6, #0
	adds r0, #0x98
	ldr r5, [r0]
	movs r1, #0
	ldrsh r0, [r2, r1]
	bl __floatsisf
	adds r4, r0, #0
	adds r0, r6, #0
	adds r0, #0xa4
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl __floatsisf
	adds r1, r0, #0
	adds r0, r4, #0
	bl __divsf3
	ldr r4, _0804CDB0 @ => 0x42C80000
	adds r1, r4, #0
	bl __mulsf3
	adds r1, r0, #0
	adds r0, r4, #0
	bl __subsf3
	bl __fixunssfsi
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl FUN_0801F740
	b _0804CFFC
	.align 2, 0
_0804CDAC: .4byte gUnk_03002770
_0804CDB0: .4byte 0x42C80000
_0804CDB4:
	adds r4, r6, #0
	adds r4, #0xf4
	ldr r0, [r4]
	cmp r0, #0
	beq _0804CDC8
	movs r1, #4
	bl FUN_08001FB0
	movs r0, #0
	str r0, [r4]
_0804CDC8:
	movs r0, #0
	bl FUN_0804DDA0
	ldr r3, _0804CE34 @ => 0x03004004
	mov r8, r3
	mov r0, r8
	adds r1, r7, #0
	mov r2, sb
	bl FUN_0804C2C4
	cmp r0, #1
	beq _0804CDE2
	b _0804CFFC
_0804CDE2:
	adds r5, r6, #0
	adds r5, #0xe4
	ldr r0, [r5]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r2, r6, #0
	adds r2, #0xc
	adds r2, r1, r2
	lsls r4, r7, #2
	adds r4, r4, r7
	mov r3, sb
	adds r0, r4, r3
	lsls r0, r0, #3
	add r0, r8
	ldrb r0, [r0, #4]
	str r0, [r2]
	adds r1, r1, r6
	ldr r0, [r1]
	bl FUN_0803EF3C
	ldr r1, [r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	ldr r1, _0804CE38 @ => 0x09FC1450
	add r4, sb
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	adds r1, #0x10
	bl FUN_0803EF14
	bl FUN_0804DD34
	ldr r0, _0804CE3C @ => 0x00000D5F
	bl FUN_0804D87C
	b _0804CFFC
	.align 2, 0
_0804CE34: .4byte gSocialMove_Data
_0804CE38: .4byte ROMREF_09FC1450
_0804CE3C: .4byte 0x00000D5F
_0804CE40:
	movs r1, #0
	ldr r0, [r6, #0xc]
	movs r4, #0x80
	lsls r4, r4, #0xf
	ands r0, r4
	cmp r0, #0
	beq _0804CE58
	adds r0, r6, #0
	movs r1, #0xb3
	bl FUN_08001F20
	movs r1, #1
_0804CE58:
	mov r2, r8
	ldr r0, [r2, #0xc]
	ands r0, r4
	cmp r0, #0
	bne _0804CE64
	b _0804CFFC
_0804CE64:
	cmp r1, #1
	beq _0804CE6A
	b _0804CFFC
_0804CE6A:
	ldr r6, _0804CF0C @ => 0x03002770
	adds r4, r6, #0
	adds r4, #0xf8
	ldr r0, [r4]
	cmp r0, #0
	beq _0804CE80
	movs r1, #4
	bl FUN_08001FB0
	movs r0, #0
	str r0, [r4]
_0804CE80:
	adds r0, r7, #0
	mov r1, sb
	bl FUN_0804C4C4
	cmp r0, #1
	bne _0804CF26
	ldr r3, _0804CF10 @ => 0x03003E18
	mov sl, r3
	mov r0, sl
	movs r1, #0
	bl FUN_0804ACD4
	adds r5, r6, #0
	adds r5, #0xe4
	ldr r2, [r5]
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0x18
	ldrsb r2, [r1, r2]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	subs r0, r2, r1
	movs r1, #0
	movs r2, #0x64
	bl FUN_0802C644
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_080425E4
	adds r4, r0, #0
	cmp r4, #1
	bne _0804CF26
	movs r0, #0xf6
	lsls r0, r0, #1
	add r0, sl
	adds r1, r7, #0
	mov r2, sb
	bl FUN_0804C524
	ldrb r0, [r5]
	movs r1, #1
	bl FUN_0804DC40
	ldr r1, [r5]
	lsls r2, r1, #3
	subs r2, r2, r1
	lsls r2, r2, #2
	adds r1, r6, #4
	adds r1, r2, r1
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #0x10
	adds r2, r2, r0
	str r4, [r2]
	mov r0, r8
	movs r1, #0xa8
	bl FUN_08001F20
	movs r0, #7
	bl FUN_0804DDB4
	ldr r0, _0804CF14 @ => 0x00000D5C
	bl FUN_0804D87C
	b _0804CF26
	.align 2, 0
_0804CF0C: .4byte gUnk_03002770
_0804CF10: .4byte gUnk_03003E18
_0804CF14: .4byte 0x00000D5C
_0804CF18:
	mov r4, r8
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0804CFFC
_0804CF26:
	ldr r0, _0804CF64 @ => 0x03003E28
	bl FUN_08038A80
	adds r4, r0, #0
	ldr r5, _0804CF68 @ => 0x03002770
	adds r0, r5, #0
	adds r0, #0x9c
	ldr r0, [r0]
	adds r1, r5, #0
	adds r1, #0xac
	ldr r1, [r1]
	bl FUN_0804DDF0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	subs r4, r4, r0
	cmp r4, #0
	bge _0804CF4C
	movs r4, #0
_0804CF4C:
	adds r0, r5, #0
	adds r0, #0xd8
	strh r4, [r0]
	mov r0, r8
	movs r1, #0x96
	bl FUN_08001F20
	movs r0, #5
	bl FUN_0804DDB4
	b _0804CFFC
	.align 2, 0
_0804CF64: .4byte gUnk_03003E28
_0804CF68: .4byte gUnk_03002770
_0804CF6C:
	mov r1, r8
	ldr r0, [r1, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0804CF82
	mov r0, r8
	movs r1, #0x97
	bl FUN_08001F20
_0804CF82:
	ldr r4, _0804CFA4 @ => 0x03003E28
	adds r0, r4, #0
	bl FUN_08038A80
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0804CFA8 @ => 0x03002770
	adds r1, #0xd8
	movs r2, #0
	ldrsh r1, [r1, r2]
	cmp r0, r1
	ble _0804CFAC
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08038A98
	b _0804CFFC
	.align 2, 0
_0804CFA4: .4byte gUnk_03003E28
_0804CFA8: .4byte gUnk_03002770
_0804CFAC:
	adds r0, r4, #0
	bl FUN_08038A80
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804CFC8
	mov r0, r8
	movs r1, #0x98
	bl FUN_08001F20
	movs r0, #6
	bl FUN_0804DDB4
	b _0804CFFC
_0804CFC8:
	movs r0, #0
	bl FUN_0804DDA0
	b _0804CFFC
_0804CFD0:
	mov r3, r8
	ldr r0, [r3, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0804CFFC
	adds r0, r5, #0
	adds r0, #0x90
	ldr r0, [r0]
	movs r1, #2
	bl FUN_08001FB0
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	movs r1, #1
	bl FUN_08001FB0
	movs r0, #0
	bl FUN_0804DDA0
_0804CFFC:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_0804D00C
FUN_0804D00C: @ 0x0804D00C
	push {r4, r5, r6, lr}
	ldr r6, _0804D020 @ => 0x03002770
	adds r0, r6, #0
	adds r0, #0xec
	ldr r0, [r0]
	cmp r0, #0
	beq _0804D024
	cmp r0, #1
	beq _0804D068
	b _0804D0D8
	.align 2, 0
_0804D020: .4byte gUnk_03002770
_0804D024:
	adds r0, r6, #0
	adds r0, #0x90
	ldr r0, [r0]
	ldr r2, _0804D060 @ => 0x0808F0FC
	adds r5, r6, #0
	adds r5, #0xac
	ldr r1, [r5]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	bl FUN_08001F20
	movs r0, #1
	bl FUN_0804DDB4
	adds r0, r6, #0
	adds r0, #0x9c
	ldr r4, [r0]
	bl FUN_08021320
	adds r2, r0, #0
	ldr r3, [r5]
	movs r0, #1
	adds r1, r4, #0
	bl FUN_0804D5C8
	ldr r0, _0804D064 @ => 0x00000D5D
	bl FUN_0804D87C
	b _0804D0D8
	.align 2, 0
_0804D060: .4byte ROMREF_0808F0FC
_0804D064: .4byte 0x00000D5D
_0804D068:
	adds r0, r6, #0
	adds r0, #0x90
	ldr r2, [r0]
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0804D0D8
	adds r0, r2, #0
	movs r1, #0
	bl FUN_08001FB0
	adds r0, r6, #0
	adds r0, #0x94
	ldr r0, [r0]
	movs r1, #0
	bl FUN_08001FB0
	ldr r5, _0804D0E0 @ => 0x030042B0
	ldrh r1, [r5, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r6, #0
	adds r4, #0xb0
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r2, _0804D0E4 @ => 0x0808F102
	adds r1, r6, #0
	adds r1, #0xac
	ldr r1, [r1]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	bl FUN_08001F20
	ldrh r1, [r5, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0x3e
	bl FUN_08001FB0
	ldrh r1, [r5, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl FUN_08023120
	bl FUN_0804DDD8
_0804D0D8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804D0E0: .4byte gUnk_030042B0
_0804D0E4: .4byte ROMREF_0808F102

	thumb_func_start FUN_0804D0E8
FUN_0804D0E8: @ 0x0804D0E8
	push {r4, lr}
	sub sp, #8
	movs r3, #0
	ldr r0, _0804D15C @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0804D102
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804D104
_0804D102:
	movs r3, #1
_0804D104:
	ldr r0, _0804D160 @ => 0x03002770
	adds r1, r0, #0
	adds r1, #0xfc
	ldrh r2, [r1]
	adds r4, r0, #0
	cmp r2, #0
	beq _0804D120
	subs r0, r2, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	movs r3, #0
	cmp r0, #0
	bne _0804D120
	movs r3, #1
_0804D120:
	cmp r3, #1
	bne _0804D154
	adds r1, r4, #0
	adds r1, #0xe8
	adds r0, r4, #0
	adds r0, #0xf0
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _0804D164 @ => 0x03002748
	ldr r1, [r0, #0x14]
	ldr r2, [r0, #0x10]
	ldr r3, [r0, #8]
	ldr r0, [r0, #0xc]
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	bl FUN_0800C7A8
	ldr r0, _0804D168 @ => 0x0808F11C
	ldr r0, [r0]
	bl FUN_0801FE58
	movs r0, #0x80
	lsls r0, r0, #0x12
	bl FUN_080014E4
_0804D154:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804D15C: .4byte gUnk_030042B0
_0804D160: .4byte gUnk_03002770
_0804D164: .4byte gUnk_03002748
_0804D168: .4byte ROMREF_0808F11C

	thumb_func_start FUN_0804D16C
FUN_0804D16C: @ 0x0804D16C
	push {r4, r5, lr}
	movs r0, #0x32
	bl FUN_080012D8
	adds r5, r0, #0
	ldr r1, _0804D1DC @ => 0x0808F0E8
	ldr r0, _0804D1E0 @ => 0x03002770
	adds r0, #0xe4
	ldr r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	ldrb r2, [r0, #1]
	adds r0, r5, #0
	bl FUN_08001734
	movs r1, #0
	movs r2, #0
	movs r0, #0x32
	strh r0, [r5, #8]
	strh r2, [r5, #0xa]
	ldr r3, _0804D1E4 @ => 0x0000011F
	adds r0, r5, r3
	strb r1, [r0]
	adds r3, r5, #0
	adds r3, #0xa9
	ldrb r1, [r3]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _0804D1E8 @ => 0x00200011
	str r0, [r5, #0xc]
	str r2, [r5, #0x50]
	str r2, [r5, #0x54]
	ldr r4, _0804D1EC @ => 0x0808E410
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_080015B8
	ldr r1, _0804D1F0 @ => 0x08D24FA8
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	adds r4, #8
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0803EF14
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0804D1DC: .4byte ROMREF_0808F0E8
_0804D1E0: .4byte gUnk_03002770
_0804D1E4: .4byte 0x0000011F
_0804D1E8: .4byte 0x00200011
_0804D1EC: .4byte ROMREF_0808E410
_0804D1F0: .4byte ROMREF_08D24FA8

	thumb_func_start FUN_0804D1F4
FUN_0804D1F4: @ 0x0804D1F4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl FUN_0804D314
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #0x16
	ands r0, r1
	cmp r0, #0
	beq _0804D276
	movs r0, #0x14
	ands r0, r1
	cmp r0, #0
	beq _0804D26E
	ldr r4, _0804D250 @ => 0x03003E0C
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_08048B6C
	adds r6, r5, #0
	adds r6, #0xd8
	ldrb r1, [r6]
	ldr r2, _0804D254 @ => 0x0805A270
	ldrb r0, [r5, #0x12]
	adds r0, r0, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r5, #0
	bl FUN_080015DC
	ldrb r0, [r4]
	cmp r0, #0
	beq _0804D25C
	ldr r0, _0804D258 @ => 0x09FBF388
	ldrh r1, [r6]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	b _0804D26E
	.align 2, 0
_0804D250: .4byte gUnk_03003E0C
_0804D254: .4byte ROMREF_0805A270
_0804D258: .4byte ROMREF_09FBF388
_0804D25C:
	ldr r0, _0804D288 @ => 0x09FC10D8
	ldrh r1, [r6]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
_0804D26E:
	adds r0, r5, #0
	movs r1, #4
	bl FUN_080017D4
_0804D276:
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804D288: .4byte ROMREF_09FC10D8

	thumb_func_start FUN_0804D28C
FUN_0804D28C: @ 0x0804D28C
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	bl FUN_0804D314
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r5, r4, r0
	ldrb r1, [r5]
	movs r0, #0x14
	ands r0, r1
	cmp r0, #0
	beq _0804D2F0
	ldrb r0, [r4, #0xa]
	adds r1, r4, #0
	adds r1, #0xd8
	ldrb r1, [r1]
	add r3, sp, #4
	mov r2, sp
	bl FUN_0803A07C
	cmp r0, #1
	bne _0804D2F0
	ldr r1, _0804D30C @ => 0x0805A270
	ldrb r0, [r4, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, [sp]
	adds r1, r1, r0
	adds r0, r4, #0
	bl FUN_080015B8
	ldr r1, [sp, #4]
	adds r0, r4, #0
	movs r2, #0
	bl FUN_080018F4
	ldr r0, [r4, #0xc]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r4, #0xc]
	ldrb r1, [r5]
	movs r0, #4
	orrs r0, r1
	strb r0, [r5]
	ldr r0, [r4, #0xc]
	ldr r1, _0804D310 @ => 0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #0xc]
_0804D2F0:
	adds r0, r4, #0
	movs r1, #4
	bl FUN_080017D4
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0
	strb r0, [r1]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804D30C: .4byte ROMREF_0805A270
_0804D310: .4byte 0xFFBFFFFF

	thumb_func_start FUN_0804D314
FUN_0804D314: @ 0x0804D314
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _0804D334
	cmp r0, #1
	bgt _0804D32E
	cmp r0, #0
	beq _0804D416
	b _0804D41A
_0804D32E:
	cmp r0, #2
	beq _0804D3D4
	b _0804D41A
_0804D334:
	ldr r2, _0804D348 @ => 0x0000011D
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #1
	beq _0804D358
	cmp r0, #1
	bgt _0804D34C
	cmp r0, #0
	beq _0804D352
	b _0804D416
	.align 2, 0
_0804D348: .4byte 0x0000011D
_0804D34C:
	cmp r0, #2
	beq _0804D386
	b _0804D416
_0804D352:
	adds r0, r4, #0
	movs r1, #0xb4
	b _0804D3EC
_0804D358:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0804D416
	adds r0, r4, #0
	movs r1, #0xb5
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #2
	bl FUN_08001F84
	movs r0, #0x3c
	movs r1, #0xa0
	bl FUN_080424F8
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	b _0804D416
_0804D386:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _0804D3BC @ => 0xFFFF0000
	cmp r1, r0
	bne _0804D416
	ldr r5, _0804D3C0 @ => 0x03002770
	adds r0, r5, #0
	adds r0, #0x90
	ldr r0, [r0]
	cmp r4, r0
	bne _0804D3C4
	adds r0, r4, #0
	movs r1, #2
	bl FUN_08001FB0
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	movs r1, #1
	bl FUN_08001FB0
	b _0804D416
	.align 2, 0
_0804D3BC: .4byte 0xFFFF0000
_0804D3C0: .4byte gUnk_03002770
_0804D3C4:
	movs r1, #1
	bl FUN_08001FB0
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	movs r1, #2
	b _0804D412
_0804D3D4:
	ldr r2, _0804D3E4 @ => 0x0000011D
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804D3E8
	cmp r0, #1
	beq _0804D3FA
	b _0804D416
	.align 2, 0
_0804D3E4: .4byte 0x0000011D
_0804D3E8:
	adds r0, r4, #0
	movs r1, #0xb2
_0804D3EC:
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08001F84
	b _0804D416
_0804D3FA:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0804D416
	adds r0, r4, #0
	movs r1, #0xb3
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #0
_0804D412:
	bl FUN_08001FB0
_0804D416:
	movs r0, #1
	b _0804D41C
_0804D41A:
	movs r0, #0
_0804D41C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0804D424
FUN_0804D424: @ 0x0804D424
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	adds r7, r2, #0
	mov r8, r3
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	cmp r7, #1
	beq _0804D446
	movs r0, #0x30
	bl FUN_080012D8
	adds r5, r0, #0
	cmp r5, #0
	bne _0804D44A
_0804D446:
	movs r0, #0
	b _0804D508
_0804D44A:
	adds r0, r6, #0
	adds r1, r4, #0
	mov r2, sp
	bl FUN_08001A84
	cmp r0, #1
	bne _0804D464
	ldr r1, [sp]
	ldr r2, [sp, #4]
	adds r0, r5, #0
	bl FUN_08001728
	b _0804D46E
_0804D464:
	ldr r1, [r6, #0x18]
	ldr r2, [r6, #0x1c]
	adds r0, r5, #0
	bl FUN_08001728
_0804D46E:
	movs r1, #0
	str r1, [r5, #0x64]
	ldr r0, [r6, #0x70]
	subs r0, #1
	str r0, [r5, #0x70]
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x74]
	adds r0, #1
	str r0, [r5, #0x74]
	str r0, [r5, #0x6c]
	movs r0, #0x11
	str r0, [r5, #0xc]
	strh r7, [r5, #0xa]
	movs r2, #0xb2
	lsls r2, r2, #1
	adds r0, r5, r2
	strh r7, [r0]
	subs r2, #0x34
	adds r0, r5, r2
	str r6, [r0]
	adds r2, #0xc
	adds r0, r5, r2
	mov r2, r8
	str r2, [r0]
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	subs r2, #8
	adds r0, r5, r2
	str r1, [r0]
	adds r0, r5, #0
	bl FUN_08001FB0
	ldr r0, _0804D514 @ => 0x09FC144C
	lsls r4, r7, #2
	adds r4, r4, r0
	ldrh r0, [r6, #0xa]
	ldr r1, [r4]
	lsls r0, r0, #3
	adds r0, r0, r1
	subs r0, #0x68
	ldr r1, [r0]
	adds r0, r5, #0
	bl FUN_080015B8
	ldrh r0, [r6, #0xa]
	ldr r1, [r4]
	lsls r0, r0, #3
	adds r0, r0, r1
	subs r0, #0x68
	ldr r1, [r0, #4]
	adds r0, r5, #0
	movs r2, #0
	bl FUN_080018F4
	adds r0, r6, #0
	adds r0, #0xe0
	ldr r1, [r0]
	adds r0, r5, #0
	bl FUN_08048E24
	adds r1, r0, #0
	adds r0, r5, #0
	bl FUN_0803EF14
	ldr r0, _0804D518 @ => FUN_0804D51C
	str r0, [r5, #0x50]
	adds r0, r6, #0
	adds r0, #0xa9
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	adds r0, r5, #0
	bl FUN_080017B8
	adds r0, r5, #0
_0804D508:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804D514: .4byte ROMREF_09FC144C
_0804D518: .4byte FUN_0804D51C

	thumb_func_start FUN_0804D51C
FUN_0804D51C: @ 0x0804D51C
	push {lr}
	adds r2, r0, #0
	movs r3, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _0804D598
	cmp r0, #1
	bgt _0804D538
	cmp r0, #0
	beq _0804D53E
	b _0804D5C2
_0804D538:
	cmp r0, #4
	beq _0804D5AE
	b _0804D5C2
_0804D53E:
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0804D588
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _0804D56A
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0804D58A
	b _0804D588
_0804D56A:
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _0804D58A
	subs r1, #8
	adds r0, r2, r1
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0804D58A
_0804D588:
	movs r3, #1
_0804D58A:
	cmp r3, #1
	bne _0804D5C2
	adds r0, r2, #0
	movs r1, #1
	bl FUN_08001FB0
	b _0804D5C2
_0804D598:
	ldr r0, [r2, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0xc]
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	bl FUN_0804E03C
	b _0804D5C2
_0804D5AE:
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0804D5C2
	adds r0, r2, #0
	movs r1, #1
	bl FUN_08001FB0
_0804D5C2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0804D5C8
FUN_0804D5C8: @ 0x0804D5C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	mov sb, r1
	adds r7, r3, #0
	movs r3, #0
	ldr r4, _0804D644 @ => 0x0808E190
	ldrb r0, [r4, #0xd]
	mov ip, r4
	cmp r0, #3
	beq _0804D662
	mov sl, r4
	adds r6, r4, #0
	adds r6, #8
_0804D5EA:
	lsls r0, r3, #4
	mov r1, sl
	adds r1, #4
	adds r1, r0, r1
	ldr r1, [r1]
	adds r5, r0, #0
	cmp r1, r8
	bne _0804D650
	adds r1, r5, r4
	ldrb r0, [r1, #0xd]
	cmp r0, r7
	bne _0804D650
	ldrb r0, [r1, #0xc]
	cmp r0, r2
	bne _0804D650
	ldrb r0, [r1, #0xe]
	cmp r0, sb
	bne _0804D650
	adds r0, r5, r6
	ldr r4, [r0]
	cmp r4, #0xc6
	beq _0804D62C
	ldr r6, _0804D648 @ => 0x0300407C
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_0801DEE0
	cmp r0, #1
	bne _0804D62C
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_0801DEA8
_0804D62C:
	mov r1, sl
	adds r0, r5, r1
	ldr r1, [r0]
	ldr r0, _0804D64C @ => 0x000002AB
	cmp r1, r0
	beq _0804D662
	adds r0, r1, #0
	movs r1, #1
	bl FUN_080213A4
	b _0804D662
	.align 2, 0
_0804D644: .4byte ROMREF_0808E190
_0804D648: .4byte gEpisode_Data
_0804D64C: .4byte 0x000002AB
_0804D650:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	mov r4, ip
	lsls r0, r3, #4
	adds r0, r0, r4
	ldrb r0, [r0, #0xd]
	cmp r0, #3
	bne _0804D5EA
_0804D662:
	mov r2, r8
	cmp r2, #1
	bne _0804D694
	mov r0, sb
	adds r1, r7, #0
	bl FUN_0803AC90
	ldr r1, _0804D690 @ => 0x03003DF0
	adds r0, r1, #0
	adds r0, #0x54
	ldrb r0, [r0]
	cmp r7, r0
	bne _0804D686
	movs r2, #0xa3
	lsls r2, r2, #2
	adds r0, r1, r2
	bl FUN_0801E148
_0804D686:
	movs r0, #0x17
	bl FUN_0804E120
	b _0804D69A
	.align 2, 0
_0804D690: .4byte gUnk_03003DF0
_0804D694:
	movs r0, #0x1b
	bl FUN_0804E120
_0804D69A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_0804D6A8
FUN_0804D6A8: @ 0x0804D6A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r0, _0804D6F0 @ => 0x03002770
	adds r0, #0xfe
	ldrb r0, [r0]
	bl FUN_0802B2F4
	adds r2, r0, #0
	movs r0, #0
	movs r4, #0
	movs r5, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r5, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, sp, #0x18
	movs r1, #2
	movs r3, #1
	bl FUN_0800D83C
	ldr r0, _0804D6F4 @ => 0x0000029B
	bl FUN_080213F8
	cmp r0, #1
	bne _0804D6F8
	movs r0, #0
	movs r1, #0xa0
	bl FUN_08015B20
	b _0804D73C
	.align 2, 0
_0804D6F0: .4byte gUnk_03002770
_0804D6F4: .4byte 0x0000029B
_0804D6F8:
	ldr r0, _0804D720 @ => 0x030043A0
	ldr r0, [r0]
	cmp r0, #0xb
	bhi _0804D728
	ldr r4, _0804D724 @ => 0x03003DF0
	adds r0, r4, #0
	bl FUN_080143D0
	cmp r0, #2
	beq _0804D716
	adds r0, r4, #0
	bl FUN_080143D0
	cmp r0, #3
	bne _0804D728
_0804D716:
	movs r0, #0
	movs r1, #0xa0
	bl FUN_08015B80
	b _0804D73C
	.align 2, 0
_0804D720: .4byte gUnk_030043A0
_0804D724: .4byte gUnk_03003DF0
_0804D728:
	movs r0, #0xa8
	lsls r0, r0, #2
	bl FUN_080213F8
	cmp r0, #1
	bne _0804D73C
	movs r0, #0
	movs r1, #0xa0
	bl FUN_08015B80
_0804D73C:
	movs r5, #0
	ldr r0, _0804D7E8 @ => 0xFFFF0000
	mov r8, r0
	ldr r1, _0804D7EC @ => 0x0000FFFF
	mov sb, r1
	movs r6, #0
	ldr r2, _0804D7F0 @ => 0x08CEA43C
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x14]
	add r0, sp, #0x1c
	movs r1, #3
	movs r3, #1
	bl FUN_0800D83C
	ldr r4, _0804D7F4 @ => 0x03002770
	adds r6, r4, #0
	adds r6, #0x9c
	ldr r0, [r6]
	adds r4, #0xa0
	ldr r1, [r4]
	bl FUN_0803AD48
	adds r2, r0, #0
	movs r0, #0x16
	mov r1, r8
	ands r7, r1
	orrs r7, r0
	movs r0, #0xc0
	lsls r0, r0, #0xc
	mov r1, sb
	ands r7, r1
	orrs r7, r0
	movs r0, #0
	mov r8, r0
	movs r0, #0xa0
	str r0, [sp]
	str r5, [sp, #4]
	movs r0, #0x10
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	mov r1, r8
	str r1, [sp, #0x10]
	adds r0, #0xf0
	str r0, [sp, #0x14]
	add r0, sp, #0x20
	movs r1, #0
	movs r3, #0xc4
	bl FUN_0800D83C
	ldr r0, [r6]
	ldr r1, [r4]
	bl FUN_0803AD74
	movs r1, #0
	movs r2, #0xa0
	movs r3, #0x10
	bl FUN_08015770
	ldr r0, _0804D7F8 @ => 0x0000029B
	bl FUN_080213F8
	cmp r0, #1
	bne _0804D7CC
	movs r0, #0xa0
	movs r1, #0x10
	bl FUN_08015B20
_0804D7CC:
	movs r0, #1
	movs r1, #2
	movs r2, #6
	movs r3, #6
	bl FUN_08021428
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804D7E8: .4byte 0xFFFF0000
_0804D7EC: .4byte 0x0000FFFF
_0804D7F0: .4byte ROMREF_08CEA43C
_0804D7F4: .4byte gUnk_03002770
_0804D7F8: .4byte 0x0000029B

	thumb_func_start FUN_0804D7FC
FUN_0804D7FC: @ 0x0804D7FC
	push {r4, r5, r6, r7, lr}
	ldr r4, _0804D86C @ => 0x03002770
	adds r0, r4, #0
	adds r0, #0x9c
	ldr r0, [r0]
	bl FUN_0803B03C
	adds r0, #0x64
	lsls r0, r0, #0x10
	movs r1, #0x64
	bl __divsi3
	adds r7, r0, #0
	movs r6, #0
	movs r5, #0
	adds r4, #0xac
_0804D81C:
	ldr r1, [r4]
	ldr r0, _0804D870 @ => 0x03004004
	adds r2, r5, #0
	bl FUN_0804C40C
	adds r6, r6, r0
	adds r5, #1
	cmp r5, #4
	bls _0804D81C
	adds r0, r6, #0
	movs r1, #5
	bl __udivsi3
	ldr r1, _0804D874 @ => 0x0808EF68
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r1, _0804D86C @ => 0x03002770
	adds r0, r1, #0
	adds r0, #0x9c
	ldr r0, [r0]
	adds r1, #0xac
	ldr r1, [r1]
	bl FUN_0803AF94
	ldr r1, _0804D878 @ => 0x0808EF74
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0x64
	muls r0, r7, r0
	lsrs r0, r0, #0x10
	muls r0, r4, r0
	lsrs r0, r0, #0x10
	muls r0, r1, r0
	lsrs r0, r0, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804D86C: .4byte gUnk_03002770
_0804D870: .4byte gSocialMove_Data
_0804D874: .4byte ROMREF_0808EF68
_0804D878: .4byte ROMREF_0808EF74

	thumb_func_start FUN_0804D87C
FUN_0804D87C: @ 0x0804D87C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _0804D89C @ => 0x00000D5D
	cmp r6, r0
	bne _0804D8E2
	ldr r0, _0804D8A0 @ => 0x03002770
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #1
	beq _0804D8AC
	cmp r0, #1
	blo _0804D8A4
	cmp r0, #2
	beq _0804D8BC
	b _0804D8C6
	.align 2, 0
_0804D89C: .4byte 0x00000D5D
_0804D8A0: .4byte gUnk_03002770
_0804D8A4:
	ldr r0, _0804D8A8 @ => 0x000007BD
	b _0804D8AE
	.align 2, 0
_0804D8A8: .4byte 0x000007BD
_0804D8AC:
	ldr r0, _0804D8B8 @ => 0x000007BB
_0804D8AE:
	bl FUN_08050820
	bl FUN_08020320
	b _0804D8C6
	.align 2, 0
_0804D8B8: .4byte 0x000007BB
_0804D8BC:
	ldr r0, _0804D950 @ => 0x000007BC
	bl FUN_08050820
	bl FUN_08020320
_0804D8C6:
	ldr r4, _0804D954 @ => 0x03002770
	adds r4, #0x9c
	ldr r0, [r4]
	bl FUN_0803AE50
	bl FUN_080203B8
	ldr r0, [r4]
	bl FUN_0803AE80
	bl FUN_08050820
	bl FUN_0802036C
_0804D8E2:
	movs r0, #0x80
	lsls r0, r0, #0x12
	bl FUN_080014C4
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #3
	movs r1, #0
	bl FUN_0801FEA0
	ldr r0, _0804D958 @ => 0x0808F120
	ldr r0, [r0]
	bl FUN_0801FE58
	ldr r0, _0804D95C @ => 0x00000D5D
	cmp r6, r0
	beq _0804D964
	ldr r4, _0804D960 @ => 0x03002748
	movs r5, #0x93
	lsls r5, r5, #1
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #0
	bl FUN_0804139C
	movs r0, #0
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0
	bl FUN_080410E8
	movs r0, #8
	adds r1, r4, #0
	bl FUN_08041150
	movs r0, #0x98
	lsls r0, r0, #1
	ldr r2, [r4, #0x10]
	adds r2, #1
	lsls r2, r2, #3
	adds r2, #3
	ldr r3, [r4]
	movs r1, #1
	str r1, [sp]
	movs r1, #0x78
	bl FUN_0801F8B8
	str r0, [r4, #4]
	movs r0, #0xf
	bl FUN_08024C78
	b _0804D9EE
	.align 2, 0
_0804D950: .4byte 0x000007BC
_0804D954: .4byte gUnk_03002770
_0804D958: .4byte ROMREF_0808F120
_0804D95C: .4byte 0x00000D5D
_0804D960: .4byte gUnk_03002748
_0804D964:
	adds r0, r6, #0
	bl FUN_08050820
	bl FUN_0801FF60
	adds r4, r0, #0
	ldr r7, _0804DA08 @ => 0x00000D5E
	adds r0, r7, #0
	bl FUN_08050820
	bl FUN_0801FF60
	adds r1, r7, #0
	cmp r4, r0
	ble _0804D984
	adds r1, r6, #0
_0804D984:
	ldr r4, _0804DA0C @ => 0x03002748
	movs r5, #0x93
	lsls r5, r5, #1
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	adds r2, r5, #0
	movs r3, #1
	bl FUN_0804139C
	movs r0, #0
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0
	bl FUN_080410E8
	movs r0, #8
	adds r1, r4, #0
	bl FUN_08041150
	adds r0, r6, #0
	bl FUN_08050820
	adds r3, r0, #0
	movs r0, #0x98
	lsls r0, r0, #1
	ldr r2, [r4, #0x10]
	adds r2, #1
	lsls r2, r2, #3
	adds r2, #1
	movs r5, #1
	str r5, [sp]
	movs r1, #0x78
	bl FUN_0801F8B8
	str r0, [r4, #4]
	adds r0, r7, #0
	bl FUN_08050820
	adds r3, r0, #0
	ldr r0, [r4, #4]
	ldr r2, [r4, #0x10]
	lsls r2, r2, #3
	adds r2, #0x15
	str r5, [sp]
	movs r1, #0x78
	bl FUN_0801F8B8
	str r0, [r4, #4]
	ldr r0, _0804DA10 @ => 0x03002770
	adds r0, #0xfc
	movs r1, #0x78
	strh r1, [r0]
_0804D9EE:
	ldr r0, _0804DA10 @ => 0x03002770
	adds r2, r0, #0
	adds r2, #0xf0
	adds r0, #0xe8
	ldr r1, [r0]
	str r1, [r2]
	movs r1, #3
	str r1, [r0]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804DA08: .4byte 0x00000D5E
_0804DA0C: .4byte gUnk_03002748
_0804DA10: .4byte gUnk_03002770

	thumb_func_start FUN_0804DA14
FUN_0804DA14: @ 0x0804DA14
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #0x32
	bl FUN_080012D8
	adds r6, r0, #0
	cmp r6, #0
	beq _0804DA8C
	ldr r0, _0804DA94 @ => 0x09FC143C
	lsls r2, r4, #3
	adds r1, r2, r0
	ldr r1, [r1]
	adds r0, #4
	adds r2, r2, r0
	ldr r2, [r2]
	adds r0, r6, #0
	bl FUN_08001734
	ldr r1, _0804DA98 @ => 0x0808F108
	adds r0, r6, #0
	bl FUN_08003DDC
	movs r0, #0
	movs r2, #0
	strh r5, [r6, #0xa]
	ldr r3, _0804DA9C @ => 0x0000011F
	adds r1, r6, r3
	strb r0, [r1]
	adds r3, r6, #0
	adds r3, #0xa9
	ldrb r1, [r3]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _0804DAA0 @ => 0x00200001
	str r0, [r6, #0xc]
	ldr r0, _0804DAA4 @ => FUN_0804DAAC
	str r0, [r6, #0x50]
	str r2, [r6, #0x54]
	adds r0, r6, #0
	movs r1, #0
	bl FUN_08001FB0
	ldr r4, _0804DAA8 @ => 0x0808EED8
	lsls r5, r5, #3
	adds r0, r5, r4
	ldr r1, [r0]
	adds r0, r6, #0
	bl FUN_080015B8
	adds r4, #4
	adds r5, r5, r4
	ldr r1, [r5]
	adds r0, r6, #0
	bl FUN_0803EF14
_0804DA8C:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0804DA94: .4byte ROMREF_09FC143C
_0804DA98: .4byte ROMREF_0808F108
_0804DA9C: .4byte 0x0000011F
_0804DAA0: .4byte 0x00200001
_0804DAA4: .4byte FUN_0804DAAC
_0804DAA8: .4byte ROMREF_0808EED8

	thumb_func_start FUN_0804DAAC
FUN_0804DAAC: @ 0x0804DAAC
	push {lr}
	adds r2, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _0804DAE4
	cmp r0, #1
	ble _0804DB00
	cmp r0, #4
	bne _0804DB00
	adds r3, r2, #0
	adds r3, #0xdb
	ldrb r1, [r3]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #0xf
	strh r0, [r1]
	adds r0, r2, #0
	movs r1, #1
	bl FUN_08001FB0
	b _0804DB00
_0804DAE4:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _0804DB04 @ => 0xFFFF0000
	cmp r1, r0
	bne _0804DB00
	ldr r0, [r2, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0xc]
_0804DB00:
	pop {r0}
	bx r0
	.align 2, 0
_0804DB04: .4byte 0xFFFF0000

	thumb_func_start SocialConversation_Handler
SocialConversation_Handler: @ 0x0804DB08
	push {lr}
	ldr r0, _0804DB2C @ => 0x030042B0
	ldrh r0, [r0, #6]
	bl FUN_080238D4
	ldr r0, _0804DB30 @ => 0x03002770
	adds r0, #0xe8
	ldr r0, [r0]
	cmp r0, #1
	beq _0804DB3A
	cmp r0, #1
	blo _0804DB34
	cmp r0, #2
	beq _0804DB40
	cmp r0, #3
	beq _0804DB46
	b _0804DB4A
	.align 2, 0
_0804DB2C: .4byte gUnk_030042B0
_0804DB30: .4byte gUnk_03002770
_0804DB34:
	bl FUN_0804C910
	b _0804DB4A
_0804DB3A:
	bl FUN_0804CACC
	b _0804DB4A
_0804DB40:
	bl FUN_0804D00C
	b _0804DB4A
_0804DB46:
	bl FUN_0804D0E8
_0804DB4A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start SocialConversation_Terminate
SocialConversation_Terminate: @ 0x0804DB50
	push {r4, lr}
	movs r0, #0xb7
	bl FUN_0804DE0C
	movs r0, #0x3f
	movs r1, #0xc
	bl FUN_0804582C
	bl FUN_08023B90
	ldr r0, _0804DB94 @ => 0x03002C40
	bl FUN_08000BF8
	bl FUN_0800CB20
	bl FUN_08015834
	bl FUN_0802D8A8
	ldr r0, _0804DB98 @ => 0x03002770
	ldr r1, _0804DB9C @ => 0x03004200
	adds r0, #0xb0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804DB94: .4byte gUnk_03002C40
_0804DB98: .4byte gUnk_03002770
_0804DB9C: .4byte gUnk_03004200
