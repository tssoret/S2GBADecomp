.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_080134C4
FUN_080134C4: @ 0x080134C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	movs r5, #0
	ldr r7, _08013654 @ => 0x0805F7C4
	ldr r6, _08013658 @ => 0x0805F854
	ldr r0, _0801365C @ => 0x09FB6248
	mov r8, r0
_080134D6:
	adds r4, r5, #2
	adds r0, r5, #0
	adds r0, #0x1b
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	adds r2, r7, #0
	movs r3, #0
	bl FUN_0802D6FC
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	movs r1, #9
	adds r2, r5, #0
	movs r3, #1
	bl FUN_08019FEC
	adds r4, r5, #0
	adds r4, #8
	lsls r0, r5, #3
	adds r0, #0x4c
	add r0, r8
	ldr r3, [r0]
	adds r0, r5, #0
	adds r0, #0x21
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	adds r2, r7, #0
	adds r2, #0x10
	bl FUN_0802D6FC
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #0xfe
	movs r3, #0
	bl FUN_08019FEC
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _080134D6
	ldr r4, _08013660 @ => 0x0805F6E4
	ldr r6, _0801365C @ => 0x09FB6248
	ldr r3, [r6]
	ldr r2, _08013658 @ => 0x0805F854
	mov r8, r2
	mov r0, r8
	adds r0, #0x9c
	ldr r0, [r0]
	str r0, [sp]
	movs r0, #0xe
	movs r1, #0
	adds r2, r4, #0
	bl FUN_0802D6FC
	ldr r5, _08013664 @ => 0x03004790
	ldr r0, [r5, #0x38]
	ldr r7, _08013668 @ => 0x030036C0
	adds r1, r7, #0
	adds r1, #0xc0
	ldr r1, [r1]
	lsls r1, r1, #0x11
	movs r2, #0x9d
	lsls r2, r2, #0x10
	adds r1, r1, r2
	movs r2, #0xd6
	lsls r2, r2, #0xf
	bl FUN_08001728
	movs r0, #0xe
	movs r1, #4
	movs r2, #0xfe
	movs r3, #1
	bl FUN_08019FEC
	ldr r3, [r6]
	mov r0, r8
	adds r0, #0xa0
	ldr r0, [r0]
	str r0, [sp]
	movs r0, #0xf
	movs r1, #0
	adds r2, r4, #0
	bl FUN_0802D6FC
	ldr r0, [r5, #0x3c]
	adds r1, r7, #0
	adds r1, #0xc4
	ldr r1, [r1]
	lsls r1, r1, #0x11
	movs r2, #0x9d
	lsls r2, r2, #0x10
	adds r1, r1, r2
	movs r2, #0xf8
	lsls r2, r2, #0xf
	bl FUN_08001728
	movs r0, #0xf
	movs r1, #4
	movs r2, #0xfe
	movs r3, #0
	bl FUN_08019FEC
	ldr r3, [r6]
	mov r0, r8
	adds r0, #0xa4
	ldr r0, [r0]
	str r0, [sp]
	movs r0, #0x10
	movs r1, #0
	adds r2, r4, #0
	bl FUN_0802D6FC
	ldr r0, [r5, #0x40]
	adds r1, r7, #0
	adds r1, #0xc8
	ldr r1, [r1]
	lsls r1, r1, #0x11
	movs r2, #0x9d
	lsls r2, r2, #0x10
	adds r1, r1, r2
	movs r2, #0x8d
	lsls r2, r2, #0x10
	bl FUN_08001728
	movs r0, #0x10
	movs r1, #4
	movs r2, #0xfe
	movs r3, #0
	bl FUN_08019FEC
	adds r4, #0x10
	mov r0, r8
	adds r0, #0xa8
	ldr r0, [r0]
	str r0, [sp]
	movs r0, #0x11
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0
	bl FUN_0802D6FC
	movs r0, #0x11
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl FUN_08019FEC
	mov r0, r8
	adds r0, #0xac
	ldr r0, [r0]
	str r0, [sp]
	movs r0, #0x12
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0
	bl FUN_0802D6FC
	movs r0, #0x12
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl FUN_08019FEC
	movs r5, #2
_08013636:
	ldr r1, _08013664 @ => 0x03004790
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0xa9
	ldrb r0, [r0]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x1c
	cmp r0, #9
	beq _08013672
	cmp r0, #9
	bgt _0801366C
	cmp r0, #4
	beq _08013690
	b _0801369E
	.align 2, 0
_08013654: .4byte ROMREF_0805F7C4
_08013658: .4byte ROMREF_0805F854
_0801365C: .4byte ROMREF_09FB6248
_08013660: .4byte ROMREF_0805F6E4
_08013664: .4byte gUnk_03004790
_08013668: .4byte gUnk_030036C0
_0801366C:
	cmp r0, #0xa
	beq _0801367C
	b _0801369E
_08013672:
	ldr r0, _08013678 @ => 0x0805F7C4
	b _0801367E
	.align 2, 0
_08013678: .4byte ROMREF_0805F7C4
_0801367C:
	ldr r0, _0801368C @ => 0x0805F7D4
_0801367E:
	ldr r0, [r0, #8]
	lsrs r1, r1, #0x1c
	lsls r1, r1, #4
	movs r2, #0x10
	bl FUN_0801579C
	b _0801369E
	.align 2, 0
_0801368C: .4byte ROMREF_0805F7D4
_08013690:
	ldr r0, _080136B8 @ => 0x0805F6E4
	ldr r0, [r0, #8]
	lsrs r1, r1, #0x1c
	lsls r1, r1, #4
	movs r2, #0x10
	bl FUN_0801579C
_0801369E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x12
	bls _08013636
	bl FUN_080139A8
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080136B8: .4byte ROMREF_0805F6E4

	thumb_func_start FUN_080136BC
FUN_080136BC: @ 0x080136BC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	movs r0, #0
	mov r8, r0
	ldr r3, _080136E0 @ => 0x030036C0
	adds r5, r3, #0
	adds r5, #0xbc
	ldrb r1, [r5]
	cmp r1, #1
	beq _0801378C
	cmp r1, #1
	bgt _080136E4
	cmp r1, #0
	beq _080136F2
	b _08013978
	.align 2, 0
_080136E0: .4byte gUnk_030036C0
_080136E4:
	cmp r1, #2
	bne _080136EA
	b _08013870
_080136EA:
	cmp r1, #3
	bne _080136F0
	b _080138FC
_080136F0:
	b _08013978
_080136F2:
	ldr r0, _08013710 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r4, #1
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08013714
	strb r4, [r5]
	adds r1, r3, #0
	adds r1, #0xbf
	movs r0, #2
	strb r0, [r1]
	str r2, [r3, #0x14]
	b _0801397E
	.align 2, 0
_08013710: .4byte gUnk_030042B0
_08013714:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08013724
	movs r0, #1
	movs r1, #3
	movs r2, #2
	b _0801391C
_08013724:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801373E
	adds r1, r3, #0
	adds r1, #0xbf
	ldrb r0, [r1]
	cmp r0, #1
	beq _08013738
	b _08013978
_08013738:
	mov r0, r8
	strb r0, [r1]
	b _0801397E
_0801373E:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08013756
	adds r1, r3, #0
	adds r1, #0xbf
	ldrb r0, [r1]
	cmp r0, #0
	beq _08013752
	b _08013978
_08013752:
	strb r4, [r1]
	b _0801397E
_08013756:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08013770
	adds r1, r3, #0
	adds r1, #0xbe
	ldrb r0, [r1]
	cmp r0, #0
	bne _0801376A
	b _08013978
_0801376A:
	subs r0, #1
	strb r0, [r1]
	b _0801397E
_08013770:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0801377A
	b _08013994
_0801377A:
	adds r1, r3, #0
	adds r1, #0xbe
	ldrb r0, [r1]
	cmp r0, #1
	bls _08013786
	b _08013978
_08013786:
	adds r0, #1
	strb r0, [r1]
	b _0801397E
_0801378C:
	ldr r4, _080137C0 @ => 0x03004720
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _08013798
	subs r0, #1
	str r0, [r4, #0x18]
_08013798:
	ldr r6, _080137C4 @ => 0x030042B0
	ldrh r2, [r6, #0xc]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _080137C8
	adds r0, r3, #0
	adds r0, #0xcc
	ldr r0, [r0]
	cmp r0, #0
	bne _080137B0
	b _08013916
_080137B0:
	movs r0, #2
	strb r0, [r5]
	adds r2, r3, #0
	adds r2, #0xbf
	movs r0, #3
	strb r0, [r2]
	str r1, [r3, #0x14]
	b _0801397E
	.align 2, 0
_080137C0: .4byte gUnk_03004720
_080137C4: .4byte gUnk_030042B0
_080137C8:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080137EC
	mov r0, r8
	strb r0, [r5]
	movs r2, #0
	adds r0, r3, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	cmp r0, #2
	bls _080137E2
	movs r2, #1
_080137E2:
	adds r0, r3, #0
	adds r0, #0xbf
	strb r2, [r0]
	str r1, [r3, #0x14]
	b _0801397E
_080137EC:
	ldrh r1, [r6, #8]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _080137F8
	b _08013994
_080137F8:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _08013800
	b _08013978
_08013800:
	adds r0, r3, #0
	adds r0, #0xa4
	ldr r0, [r0]
	cmp r0, #3
	bne _0801383C
	adds r4, r3, #0
	adds r4, #0xc0
	ldr r5, _08013834 @ => 0x0805B1B4
_08013810:
	subs r0, r4, #1
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	ldr r0, _08013838 @ => 0x030042B0
	ldrh r0, [r0, #6]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl FUN_08024B84
	ldr r0, [r4]
	subs r0, #2
	cmp r0, #1
	bls _08013810
	b _0801385A
	.align 2, 0
_08013834: .4byte ROMREF_0805B1B4
_08013838: .4byte gUnk_030042B0
_0801383C:
	adds r0, r3, #0
	adds r0, #0xc0
	ldr r2, _08013868 @ => 0x0805B1B4
	adds r1, r3, #0
	adds r1, #0xbf
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldrh r1, [r6, #6]
	str r1, [sp]
	movs r1, #0
	movs r3, #0
	bl FUN_08024B84
_0801385A:
	movs r0, #1
	mov r8, r0
	ldr r1, _0801386C @ => 0x03004720
	movs r0, #5
	str r0, [r1, #0x18]
	b _08013978
	.align 2, 0
_08013868: .4byte ROMREF_0805B1B4
_0801386C: .4byte gUnk_03004720
_08013870:
	ldr r7, _080138A0 @ => 0x03004720
	ldr r0, [r7, #0x18]
	cmp r0, #0
	beq _0801387C
	subs r0, #1
	str r0, [r7, #0x18]
_0801387C:
	ldr r6, _080138A4 @ => 0x030042B0
	ldrh r2, [r6, #0xc]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r2
	cmp r0, #0
	beq _080138A8
	adds r0, r3, #0
	adds r0, #0xd0
	ldr r0, [r0]
	cmp r0, #0
	beq _08013916
	movs r0, #3
	strb r0, [r5]
	adds r1, r3, #0
	adds r1, #0xbf
	movs r0, #4
	b _080138B8
	.align 2, 0
_080138A0: .4byte gUnk_03004720
_080138A4: .4byte gUnk_030042B0
_080138A8:
	ands r1, r2
	cmp r1, #0
	beq _080138BE
	movs r0, #1
	strb r0, [r5]
	adds r1, r3, #0
	adds r1, #0xbf
	movs r0, #2
_080138B8:
	strb r0, [r1]
	str r4, [r3, #0x14]
	b _0801397E
_080138BE:
	ldrh r1, [r6, #8]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08013994
	ldr r0, [r7, #0x18]
	cmp r0, #0
	bne _08013978
	adds r0, r3, #0
	adds r0, #0xc4
	ldr r2, _080138F8 @ => 0x0805B1B4
	adds r1, r3, #0
	adds r1, #0xbf
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldrh r1, [r6, #6]
	str r1, [sp]
	movs r1, #0
	movs r3, #0
	bl FUN_08024B84
	movs r0, #1
	mov r8, r0
	movs r0, #5
	str r0, [r7, #0x18]
	b _08013978
	.align 2, 0
_080138F8: .4byte ROMREF_0805B1B4
_080138FC:
	ldr r6, _08013924 @ => 0x03004720
	ldr r0, [r6, #0x18]
	cmp r0, #0
	beq _08013908
	subs r0, #1
	str r0, [r6, #0x18]
_08013908:
	ldr r4, _08013928 @ => 0x030042B0
	ldrh r2, [r4, #0xc]
	movs r7, #1
	adds r0, r7, #0
	ands r0, r2
	cmp r0, #0
	beq _0801392C
_08013916:
	movs r0, #1
	movs r1, #3
	movs r2, #4
_0801391C:
	movs r3, #2
	bl FUN_0801A080
	b _08013978
	.align 2, 0
_08013924: .4byte gUnk_03004720
_08013928: .4byte gUnk_030042B0
_0801392C:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08013942
	movs r0, #2
	strb r0, [r5]
	adds r0, r3, #0
	adds r0, #0xbf
	strb r1, [r0]
	str r7, [r3, #0x14]
	b _0801397E
_08013942:
	ldrh r1, [r4, #8]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08013994
	ldr r0, [r6, #0x18]
	cmp r0, #0
	bne _08013978
	adds r0, r3, #0
	adds r0, #0xc8
	ldr r2, _080139A0 @ => 0x0805B1B4
	adds r1, r3, #0
	adds r1, #0xbf
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldrh r1, [r4, #6]
	str r1, [sp]
	movs r1, #0
	movs r3, #0
	bl FUN_08024B84
	movs r0, #1
	mov r8, r0
	movs r0, #5
	str r0, [r6, #0x18]
_08013978:
	mov r0, r8
	cmp r0, #0
	beq _08013984
_0801397E:
	movs r0, #0xb2
	bl FUN_0804DE0C
_08013984:
	ldr r0, _080139A4 @ => 0x030036C0
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _08013994
	bl FUN_080139A8
	bl FUN_08019BF4
_08013994:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080139A0: .4byte ROMREF_0805B1B4
_080139A4: .4byte gUnk_030036C0

	thumb_func_start FUN_080139A8
FUN_080139A8: @ 0x080139A8
	push {r4, r5, r6, lr}
	ldr r4, _080139C4 @ => 0x030036C0
	adds r0, r4, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	cmp r0, #1
	bne _080139B8
	b _08013B8C
_080139B8:
	cmp r0, #1
	bgt _080139C8
	cmp r0, #0
	beq _080139D6
	b _08013CBE
	.align 2, 0
_080139C4: .4byte gUnk_030036C0
_080139C8:
	cmp r0, #2
	bne _080139CE
	b _08013C30
_080139CE:
	cmp r0, #3
	bne _080139D4
	b _08013C78
_080139D4:
	b _08013CBE
_080139D6:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _08013A6C
	adds r0, r4, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	cmp r0, #5
	bhi _08013A2A
	lsls r0, r0, #2
	ldr r1, _080139F0 @ =_080139F4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080139F0: .4byte _080139F4
_080139F4: @ jump table
	.4byte _08013A2A @ case 0
	.4byte _08013A0C @ case 1
	.4byte _08013A12 @ case 2
	.4byte _08013A18 @ case 3
	.4byte _08013A1E @ case 4
	.4byte _08013A24 @ case 5
_08013A0C:
	movs r0, #9
	movs r2, #0x15
	b _08013A2E
_08013A12:
	movs r0, #0xa
	movs r2, #0x17
	b _08013A2E
_08013A18:
	movs r0, #0xb
	movs r2, #0x19
	b _08013A2E
_08013A1E:
	movs r0, #0xc
	movs r2, #0x1b
	b _08013A2E
_08013A24:
	movs r0, #0xd
	movs r2, #0x1d
	b _08013A2E
_08013A2A:
	movs r0, #8
	movs r2, #0x13
_08013A2E:
	movs r1, #0x11
	bl FUN_0801A04C
	movs r0, #0xe
	movs r1, #2
	movs r2, #0
	bl FUN_0801A04C
	ldr r2, _08013B1C @ => 0x03004790
	ldr r1, [r2, #0x3c]
	ldr r0, [r1, #0xc]
	movs r4, #2
	rsbs r4, r4, #0
	ands r0, r4
	str r0, [r1, #0xc]
	ldr r1, [r2, #0x44]
	ldr r0, [r1, #0xc]
	movs r3, #1
	orrs r0, r3
	str r0, [r1, #0xc]
	ldr r1, [r2, #0x40]
	ldr r0, [r1, #0xc]
	ands r0, r4
	str r0, [r1, #0xc]
	ldr r1, [r2, #0x48]
	ldr r0, [r1, #0xc]
	orrs r0, r3
	str r0, [r1, #0xc]
	ldr r1, _08013B20 @ => 0x030036C0
	movs r0, #0
	str r0, [r1, #0x14]
_08013A6C:
	ldr r1, _08013B20 @ => 0x030036C0
	adds r2, r1, #0
	adds r2, #0xbd
	movs r0, #0
	strb r0, [r2]
	movs r2, #2
	adds r4, r1, #0
	ldr r5, _08013B1C @ => 0x03004790
	adds r6, r5, #0
	movs r3, #1
_08013A80:
	lsls r0, r2, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldr r0, [r1, #0xc]
	orrs r0, r3
	str r0, [r1, #0xc]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _08013A80
	movs r2, #8
	ldr r6, _08013B1C @ => 0x03004790
	movs r3, #2
	rsbs r3, r3, #0
_08013A9E:
	lsls r0, r2, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldr r0, [r1, #0xc]
	ands r0, r3
	str r0, [r1, #0xc]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xd
	bls _08013A9E
	adds r2, r4, #0
	adds r2, #0xbe
	adds r3, r4, #0
	adds r3, #0xbd
	adds r0, r4, #0
	adds r0, #0xbf
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	strb r0, [r3]
	ldrb r0, [r3]
	adds r0, #2
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldr r0, [r1, #0xc]
	movs r6, #2
	rsbs r6, r6, #0
	ands r0, r6
	str r0, [r1, #0xc]
	ldrb r0, [r3]
	adds r0, #8
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldr r0, [r1, #0xc]
	movs r2, #1
	orrs r0, r2
	str r0, [r1, #0xc]
	ldrb r0, [r3]
	cmp r0, #0
	blt _08013B24
	cmp r0, #1
	ble _08013B00
	cmp r0, #3
	bne _08013B24
_08013B00:
	ldr r1, [r5, #0x3c]
	ldr r0, [r1, #0xc]
	ands r0, r6
	str r0, [r1, #0xc]
	ldr r1, [r5, #0x44]
	ldr r0, [r1, #0xc]
	orrs r0, r2
	str r0, [r1, #0xc]
	adds r1, r4, #0
	adds r1, #0xcc
	movs r0, #0
	str r0, [r1]
	b _08013B40
	.align 2, 0
_08013B1C: .4byte gUnk_03004790
_08013B20: .4byte gUnk_030036C0
_08013B24:
	ldr r1, [r5, #0x3c]
	ldr r0, [r1, #0xc]
	movs r3, #1
	orrs r0, r3
	str r0, [r1, #0xc]
	ldr r2, [r5, #0x44]
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
	adds r0, r4, #0
	adds r0, #0xcc
	str r3, [r0]
_08013B40:
	adds r0, r4, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	cmp r0, #4
	bgt _08013B6E
	cmp r0, #0
	blt _08013B6E
	ldr r2, [r5, #0x40]
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
	ldr r2, [r5, #0x48]
	ldr r0, [r2, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0xc]
	adds r1, r4, #0
	adds r1, #0xd0
	movs r0, #0
	str r0, [r1]
	b _08013CBE
_08013B6E:
	ldr r1, [r5, #0x40]
	ldr r0, [r1, #0xc]
	movs r3, #1
	orrs r0, r3
	str r0, [r1, #0xc]
	ldr r2, [r5, #0x48]
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
	adds r0, r4, #0
	adds r0, #0xd0
	str r3, [r0]
	b _08013CBE
_08013B8C:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _08013C0C
	adds r0, r4, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	cmp r0, #5
	bhi _08013BE8
	lsls r0, r0, #2
	ldr r1, _08013BA8 @ =_08013BAC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08013BA8: .4byte _08013BAC
_08013BAC: @ jump table
	.4byte _08013BC4 @ case 0
	.4byte _08013BCA @ case 1
	.4byte _08013BD0 @ case 2
	.4byte _08013BD6 @ case 3
	.4byte _08013BDC @ case 4
	.4byte _08013BE2 @ case 5
_08013BC4:
	movs r0, #8
	movs r2, #0x14
	b _08013BEC
_08013BCA:
	movs r0, #9
	movs r2, #0x16
	b _08013BEC
_08013BD0:
	movs r0, #0xa
	movs r2, #0x18
	b _08013BEC
_08013BD6:
	movs r0, #0xb
	movs r2, #0x1a
	b _08013BEC
_08013BDC:
	movs r0, #0xc
	movs r2, #0x1c
	b _08013BEC
_08013BE2:
	movs r0, #0xd
	movs r2, #0x1e
	b _08013BEC
_08013BE8:
	movs r0, #8
	movs r2, #0x13
_08013BEC:
	movs r1, #0x11
	bl FUN_0801A04C
	movs r0, #0xe
	movs r1, #2
	movs r2, #1
	bl FUN_0801A04C
	movs r0, #0xf
	movs r1, #2
	movs r2, #0
	bl FUN_0801A04C
	ldr r1, _08013C28 @ => 0x030036C0
	movs r0, #0
	str r0, [r1, #0x14]
_08013C0C:
	ldr r0, _08013C2C @ => 0x03004790
	ldr r0, [r0, #0x38]
	ldr r1, _08013C28 @ => 0x030036C0
	adds r1, #0xc0
	ldr r1, [r1]
	lsls r1, r1, #0x11
	movs r2, #0x9d
	lsls r2, r2, #0x10
	adds r1, r1, r2
	movs r2, #0xd6
	lsls r2, r2, #0xf
	bl FUN_08001728
	b _08013CBE
	.align 2, 0
_08013C28: .4byte gUnk_030036C0
_08013C2C: .4byte gUnk_03004790
_08013C30:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _08013C58
	movs r0, #0xe
	movs r1, #2
	movs r2, #0
	bl FUN_0801A04C
	movs r0, #0xf
	movs r1, #2
	movs r2, #1
	bl FUN_0801A04C
	movs r0, #0x10
	movs r1, #2
	movs r2, #0
	bl FUN_0801A04C
	movs r0, #0
	str r0, [r4, #0x14]
_08013C58:
	ldr r0, _08013C74 @ => 0x03004790
	ldr r0, [r0, #0x3c]
	adds r1, r4, #0
	adds r1, #0xc4
	ldr r1, [r1]
	lsls r1, r1, #0x11
	movs r2, #0x9d
	lsls r2, r2, #0x10
	adds r1, r1, r2
	movs r2, #0xf8
	lsls r2, r2, #0xf
	bl FUN_08001728
	b _08013CBE
	.align 2, 0
_08013C74: .4byte gUnk_03004790
_08013C78:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _08013CA4
	movs r0, #0xf
	movs r1, #2
	movs r2, #0
	bl FUN_0801A04C
	movs r0, #0x10
	movs r1, #2
	movs r2, #1
	bl FUN_0801A04C
	ldr r0, _08013CC4 @ => 0x03004790
	ldr r2, [r0, #0x48]
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
	movs r0, #0
	str r0, [r4, #0x14]
_08013CA4:
	ldr r0, _08013CC4 @ => 0x03004790
	ldr r0, [r0, #0x40]
	adds r1, r4, #0
	adds r1, #0xc8
	ldr r1, [r1]
	lsls r1, r1, #0x11
	movs r2, #0x9d
	lsls r2, r2, #0x10
	adds r1, r1, r2
	movs r2, #0x8d
	lsls r2, r2, #0x10
	bl FUN_08001728
_08013CBE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08013CC4: .4byte gUnk_03004790

	thumb_func_start FUN_08013CC8
FUN_08013CC8: @ 0x08013CC8
	push {lr}
	ldr r0, _08013CF8 @ => 0x03004720
	movs r1, #5
	str r1, [r0, #0x18]
	ldr r1, _08013CFC @ => 0x030036C0
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	cmp r0, #1
	bls _08013CE0
	movs r2, #1
_08013CE0:
	adds r0, r1, #0
	adds r0, #0xbf
	strb r2, [r0]
	bl FUN_0801A15C
	bl FUN_0801985C
	bl FUN_080134C4
	pop {r0}
	bx r0
	.align 2, 0
_08013CF8: .4byte gUnk_03004720
_08013CFC: .4byte gUnk_030036C0

	thumb_func_start FUN_08013D00
FUN_08013D00: @ 0x08013D00
	bx lr
	.align 2, 0

	thumb_func_start FUN_08013D04
FUN_08013D04: @ 0x08013D04
	push {r4, lr}
	ldr r0, _08013D34 @ => 0x030036C0
	adds r0, #0xbc
	movs r1, #0
	strb r1, [r0]
	movs r2, #2
	ldr r4, _08013D38 @ => 0x03004790
	movs r3, #2
_08013D14:
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	cmp r1, #0
	beq _08013D24
	ldr r0, [r1, #0xc]
	orrs r0, r3
	str r0, [r1, #0xc]
_08013D24:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x12
	bls _08013D14
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013D34: .4byte gUnk_030036C0
_08013D38: .4byte gUnk_03004790

	thumb_func_start FUN_08013D3C
FUN_08013D3C: @ 0x08013D3C
	push {r4, lr}
	ldr r2, _08013D80 @ => 0x03001AE0
	ldrb r0, [r2]
	cmp r0, #3
	bne _08013D7A
	ldrb r0, [r2, #3]
	adds r0, #1
	movs r4, #0
	strb r0, [r2, #3]
	ldr r3, [r2, #8]
	ldrb r0, [r2, #2]
	lsls r0, r0, #3
	adds r0, r3, r0
	ldrb r1, [r2, #3]
	ldrh r0, [r0, #0xa]
	cmp r1, r0
	blo _08013D7A
	strb r4, [r2, #3]
	ldrb r0, [r2, #2]
	adds r0, #1
	strb r0, [r2, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r3]
	cmp r0, r3
	blo _08013D72
	strb r4, [r2, #2]
_08013D72:
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
_08013D7A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013D80: .4byte gUnk_03001AE0

	thumb_func_start FUN_08013D84
FUN_08013D84: @ 0x08013D84
	push {r4, lr}
	ldr r3, _08013D9C @ => 0x03001AE0
	movs r4, #0
	movs r2, #3
	strb r2, [r3]
	strb r4, [r3, #2]
	strb r4, [r3, #3]
	str r0, [r3, #8]
	str r1, [r3, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013D9C: .4byte gUnk_03001AE0

	thumb_func_start FUN_08013DA0
FUN_08013DA0: @ 0x08013DA0
	push {r4, lr}
	ldr r4, _08013DEC @ => 0x03001AE0
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08013DE4
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r4]
	ldrb r0, [r4, #2]
	lsls r0, r0, #3
	adds r0, #4
	ldr r2, [r4, #8]
	adds r2, r2, r0
	ldr r3, _08013DF0 @ => 0x040000D4
	ldr r0, [r2]
	str r0, [r3]
	ldr r0, [r4, #4]
	ldr r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	lsls r0, r0, #0xe
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r3, #4]
	ldrh r0, [r2, #4]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_08013DE4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013DEC: .4byte gUnk_03001AE0
_08013DF0: .4byte 0x040000D4

	thumb_func_start FUN_08013DF4
FUN_08013DF4: @ 0x08013DF4
	ldr r2, _08013E00 @ => 0x03001AE0
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	bx lr
	.align 2, 0
_08013E00: .4byte gUnk_03001AE0

	thumb_func_start FUN_08013E04
FUN_08013E04: @ 0x08013E04
	ldr r2, _08013E10 @ => 0x03001AE0
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	bx lr
	.align 2, 0
_08013E10: .4byte gUnk_03001AE0

	thumb_func_start FUN_08013E14
FUN_08013E14: @ 0x08013E14
	ldr r2, _08013E20 @ => 0x03001AE0
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	bx lr
	.align 2, 0
_08013E20: .4byte gUnk_03001AE0

	thumb_func_start FUN_08013E24
FUN_08013E24: @ 0x08013E24
	ldr r2, _08013E30 @ => 0x03001AE0
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	bx lr
	.align 2, 0
_08013E30: .4byte gUnk_03001AE0
