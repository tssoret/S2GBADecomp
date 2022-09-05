.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_080254E4
FUN_080254E4: @ 0x080254E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	movs r0, #0xc4
	lsls r0, r0, #1
	add r0, sb
	ldr r0, [r0]
	adds r4, r0, #4
	movs r6, #0
	movs r0, #8
	add r0, sb
	mov sl, r0
	mov r1, sb
	adds r1, #0xc
	str r1, [sp, #4]
_0802550A:
	lsls r0, r6, #3
	adds r0, #0x18
	mov r2, sb
	adds r7, r2, r0
	adds r0, r7, #0
	movs r1, #1
	bl FUN_08044558
	movs r5, #0
	adds r6, #1
	ldrb r3, [r7, #1]
	cmp r5, r3
	bhs _08025538
_08025524:
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #0
	bl FUN_0802610C
	adds r5, #1
	ldrb r0, [r7, #1]
	cmp r5, r0
	blo _08025524
_08025538:
	cmp r6, #5
	bls _0802550A
	movs r0, #0xc4
	lsls r0, r0, #1
	add r0, sb
	ldr r0, [r0]
	ldr r2, _08025628 @ => 0x00000848
	movs r1, #0
	bl FUN_0802CB40
	movs r0, #0
	str r0, [sp]
	mov r8, r0
	movs r6, #0xc4
	lsls r6, r6, #1
	add r6, sb
_08025558:
	mov r0, sp
	movs r1, #1
	bl FUN_08044558
	ldr r0, [r6]
	mov r2, r8
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r2, [sp]
	ldr r3, _0802562C @ => 0x00000785
	adds r0, r0, r3
	strb r2, [r0]
	ldr r0, [r6]
	adds r1, r0, r1
	ldrh r0, [r0]
	ldr r2, _08025630 @ => 0x00000784
	adds r1, r1, r2
	strb r0, [r1]
	ldr r1, [r6]
	ldrh r5, [r1]
	ldr r0, [sp]
	adds r0, r5, r0
	strh r0, [r1]
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, #4
	ldr r1, [r6]
	adds r4, r1, r0
	ldr r0, [sp]
	cmp r0, #0
	beq _080255C2
_08025598:
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #1
	bl FUN_0802610C
	adds r0, r4, #4
	movs r1, #2
	bl FUN_08044558
	adds r0, r4, #0
	adds r0, #8
	movs r1, #1
	bl FUN_08044558
	adds r4, #0xc
	ldr r0, [sp]
	subs r0, #1
	str r0, [sp]
	cmp r0, #0
	bne _08025598
_080255C2:
	movs r3, #1
	add r8, r3
	mov r0, r8
	cmp r0, #0x30
	bls _08025558
	movs r1, #0
	mov r8, r1
	movs r5, #0xc4
	lsls r5, r5, #1
	add r5, sb
	ldr r4, _08025630 @ => 0x00000784
_080255D8:
	ldr r0, [r5]
	adds r0, r0, r4
	adds r0, #2
	movs r1, #1
	bl FUN_08044598
	adds r4, #4
	movs r2, #1
	add r8, r2
	mov r3, r8
	cmp r3, #0x30
	bls _080255D8
	movs r5, #0
	mov r4, sb
	adds r4, #4
_080255F6:
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08044558
	adds r4, #1
	adds r5, #1
	cmp r5, #3
	bls _080255F6
	mov r0, sl
	movs r1, #4
	bl FUN_08044558
	ldr r0, [sp, #4]
	movs r1, #1
	bl FUN_08044558
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025628: .4byte 0x00000848
_0802562C: .4byte 0x00000785
_08025630: .4byte 0x00000784

	thumb_func_start FUN_08025634
FUN_08025634: @ 0x08025634
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	movs r0, #0xc4
	lsls r0, r0, #1
	add r0, r8
	ldr r0, [r0]
	adds r4, r0, #4
	movs r6, #0
	movs r0, #8
	add r0, r8
	mov sl, r0
	mov r1, r8
	adds r1, #0xc
	str r1, [sp, #4]
_0802565A:
	lsls r0, r6, #3
	adds r0, #0x18
	mov r2, r8
	adds r7, r2, r0
	adds r0, r7, #0
	movs r1, #1
	bl FUN_08044644
	movs r5, #0
	adds r6, #1
	ldrb r0, [r7, #1]
	cmp r5, r0
	bhs _08025688
_08025674:
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #0
	bl FUN_080260A4
	adds r5, #1
	ldrb r1, [r7, #1]
	cmp r5, r1
	blo _08025674
_08025688:
	cmp r6, #5
	bls _0802565A
	movs r6, #0
	movs r2, #0xc4
	lsls r2, r2, #1
	add r2, r8
	mov sb, r2
_08025696:
	mov r0, sb
	ldr r1, [r0]
	lsls r0, r6, #2
	adds r1, r1, r0
	ldr r2, _0802574C @ => 0x00000785
	adds r0, r1, r2
	ldrb r0, [r0]
	str r0, [sp]
	ldr r0, _08025750 @ => 0x00000784
	adds r1, r1, r0
	ldrb r5, [r1]
	mov r0, sp
	movs r1, #1
	bl FUN_08044644
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, #4
	mov r2, sb
	ldr r1, [r2]
	adds r4, r1, r0
	ldr r0, [sp]
	cmp r0, #0
	beq _080256F2
_080256C8:
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #1
	bl FUN_080260A4
	adds r0, r4, #4
	movs r1, #2
	bl FUN_08044644
	adds r0, r4, #0
	adds r0, #8
	movs r1, #1
	bl FUN_08044644
	adds r4, #0xc
	ldr r0, [sp]
	subs r0, #1
	str r0, [sp]
	cmp r0, #0
	bne _080256C8
_080256F2:
	adds r6, #1
	cmp r6, #0x30
	bls _08025696
	movs r6, #0
	movs r5, #0xc4
	lsls r5, r5, #1
	add r5, r8
	ldr r4, _08025750 @ => 0x00000784
_08025702:
	ldr r0, [r5]
	adds r0, r0, r4
	adds r0, #2
	movs r1, #1
	bl FUN_08044308
	adds r4, #4
	adds r6, #1
	cmp r6, #0x30
	bls _08025702
	movs r5, #0
	mov r4, r8
	adds r4, #4
_0802571C:
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08044644
	adds r4, #1
	adds r5, #1
	cmp r5, #3
	bls _0802571C
	mov r0, sl
	movs r1, #4
	bl FUN_08044644
	ldr r0, [sp, #4]
	movs r1, #1
	bl FUN_08044644
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802574C: .4byte 0x00000785
_08025750: .4byte 0x00000784

	thumb_func_start FUN_08025754
FUN_08025754: @ 0x08025754
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	mov r8, r1
	movs r0, #0xc4
	lsls r0, r0, #1
	add r0, sl
	mov sb, r0
	lsls r0, r1, #2
	ldr r1, _080257FC @ => 0x00000784
	adds r0, r0, r1
	mov r1, sb
	ldr r2, [r1]
	adds r7, r2, r0
	ldrb r0, [r7, #1]
	cmp r0, #0
	beq _080257EE
	ldrb r0, [r7]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, #4
	adds r6, r2, r1
	ldrb r5, [r7, #1]
	ldrh r1, [r2]
	subs r1, r1, r0
	subs r4, r1, r5
	cmp r4, #0
	beq _080257A8
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #2
	adds r1, r6, r1
	lsls r2, r4, #1
	adds r2, r2, r4
	lsls r2, r2, #2
	adds r0, r6, #0
	bl FUN_0802CBAC
_080257A8:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r6, r0
	lsls r2, r5, #1
	adds r2, r2, r5
	lsls r2, r2, #2
	movs r1, #0
	bl FUN_0802CB40
	mov r2, r8
	adds r2, #1
	cmp r2, #0x30
	bhi _080257DC
	mov r3, sb
	ldr r4, _080257FC @ => 0x00000784
_080257C8:
	ldr r1, [r3]
	lsls r0, r2, #2
	adds r1, r1, r0
	adds r1, r1, r4
	ldrb r0, [r1]
	subs r0, r0, r5
	strb r0, [r1]
	adds r2, #1
	cmp r2, #0x30
	bls _080257C8
_080257DC:
	movs r0, #0xc4
	lsls r0, r0, #1
	add r0, sl
	ldr r2, [r0]
	ldrh r0, [r2]
	subs r0, r0, r5
	movs r1, #0
	strh r0, [r2]
	strb r1, [r7, #1]
_080257EE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080257FC: .4byte 0x00000784

	thumb_func_start FUN_08025800
FUN_08025800: @ 0x08025800
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	mov r8, r0
	adds r7, r1, #0
	ldr r0, _08025874 @ => 0x03005B90
	ldr r4, [r0]
	cmp r4, #0
	beq _08025868
	mov r5, sp
	add r6, sp, #0xc
_08025818:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _08025862
	ldrh r0, [r4, #8]
	strh r0, [r5]
	adds r0, r4, #0
	adds r0, #0x6a
	ldrb r0, [r0]
	strb r0, [r5, #2]
	adds r0, r4, #0
	adds r0, #0x68
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strb r0, [r5, #3]
	ldr r0, [r4, #0x34]
	ldrb r0, [r0, #0x12]
	strb r0, [r5, #8]
	ldr r0, [r4, #0x34]
	movs r1, #0x1a
	ldrsh r0, [r0, r1]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x34]
	movs r1, #0x1e
	ldrsh r0, [r0, r1]
	str r0, [r6, #4]
	ldr r0, _08025878 @ => 0x03004398
	ldr r0, [r0]
	adds r1, r6, #0
	add r2, sp, #4
	bl FUN_0805374C
	mov r0, r8
	adds r1, r7, #0
	mov r2, sp
	bl FUN_0802640C
_08025862:
	ldr r4, [r4]
	cmp r4, #0
	bne _08025818
_08025868:
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025874: .4byte gUnk_03005B90
_08025878: .4byte gUnk_03004398

	thumb_func_start FUN_0802587C
FUN_0802587C: @ 0x0802587C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	mov r8, r1
	lsls r0, r1, #3
	adds r0, #0x18
	ldr r1, [sp]
	adds r7, r1, r0
	mov r2, r8
	lsls r1, r2, #2
	ldr r0, _080258F4 @ => 0x08062DC4
	adds r1, r1, r0
	mov sb, r1
	ldrb r0, [r7]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bls _080258E0
	mov r2, sb
	ldrb r4, [r2, #2]
	ldrb r0, [r2]
	cmp r4, r0
	bhs _080258E0
	movs r3, #0
	lsls r2, r4, #2
	movs r5, #0xe6
_080258B6:
	ldr r0, [r7, #4]
	adds r1, r2, r0
	ldrh r0, [r1]
	cmp r0, #0xe6
	beq _080258D4
	strh r5, [r1]
	ldr r0, [r7, #4]
	adds r0, r2, r0
	strb r3, [r0, #2]
	ldr r0, [r7, #4]
	adds r0, r2, r0
	strb r3, [r0, #3]
	ldrb r0, [r7]
	subs r0, #1
	strb r0, [r7]
_080258D4:
	adds r2, #4
	adds r4, #1
	mov r1, sb
	ldrb r1, [r1]
	cmp r4, r1
	blo _080258B6
_080258E0:
	mov r2, r8
	cmp r2, #0
	bne _080258FC
	ldr r1, _080258F8 @ => 0x09FB635C
	ldr r2, [sp]
	ldrb r0, [r2, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	b _08025910
	.align 2, 0
_080258F4: .4byte ROMREF_08062DC4
_080258F8: .4byte ROMREF_09FB635C
_080258FC:
	ldr r0, _08025938 @ => 0x08062D34
	str r0, [sp, #4]
	mov r1, r8
	cmp r1, #1
	beq _08025912
	ldr r2, _0802593C @ => 0x08062DB8
	str r2, [sp, #4]
	cmp r1, #2
	bne _08025912
	ldr r0, _08025940 @ => 0x08062D40
_08025910:
	str r0, [sp, #4]
_08025912:
	ldrb r4, [r7]
	mov r1, sb
	ldrb r1, [r1, #1]
	cmp r4, r1
	blo _0802591E
	b _08025A20
_0802591E:
	lsls r0, r4, #1
	ldr r2, [sp, #4]
	adds r0, r0, r2
	ldrh r6, [r0]
	cmp r6, #0xe4
	bne _08025944
	ldr r0, [sp]
	mov r1, r8
	bl FUN_08025B9C
	adds r5, r4, #1
	b _08025A14
	.align 2, 0
_08025938: .4byte ROMREF_08062D34
_0802593C: .4byte ROMREF_08062DB8
_08025940: .4byte ROMREF_08062D40
_08025944:
	cmp r6, #0xe5
	bne _08025970
	ldr r0, [sp]
	mov r1, r8
	bl FUN_08025CFC
	adds r5, r4, #1
	b _08025A14
_08025954:
	movs r1, #0
	strh r6, [r2]
	ldr r0, [r7, #4]
	adds r0, r3, r0
	strb r1, [r0, #2]
	ldr r0, [r7, #4]
	adds r0, r3, r0
	strb r1, [r0, #3]
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
	movs r0, #1
	mov ip, r0
	b _08025A00
_08025970:
	cmp r6, #0xdd
	bne _08025982
	ldr r0, _08025A30 @ => 0x03003E18
	movs r1, #0
	bl FUN_0804ACD4
	adds r5, r4, #1
	cmp r0, #5
	beq _08025A14
_08025982:
	cmp r6, #0xde
	bne _08025994
	ldr r0, _08025A30 @ => 0x03003E18
	movs r1, #1
	bl FUN_0804ACD4
	adds r5, r4, #1
	cmp r0, #5
	beq _08025A14
_08025994:
	cmp r6, #0xdf
	bne _080259A6
	ldr r0, _08025A30 @ => 0x03003E18
	movs r1, #2
	bl FUN_0804ACD4
	adds r5, r4, #1
	cmp r0, #5
	beq _08025A14
_080259A6:
	cmp r6, #0xe0
	bne _080259B8
	ldr r0, _08025A30 @ => 0x03003E18
	movs r1, #3
	bl FUN_0804ACD4
	adds r5, r4, #1
	cmp r0, #5
	beq _08025A14
_080259B8:
	cmp r6, #0xe1
	bne _080259CA
	ldr r0, _08025A30 @ => 0x03003E18
	movs r1, #4
	bl FUN_0804ACD4
	adds r5, r4, #1
	cmp r0, #5
	beq _08025A14
_080259CA:
	cmp r6, #0xe2
	bne _080259DC
	ldr r0, _08025A30 @ => 0x03003E18
	movs r1, #5
	bl FUN_0804ACD4
	adds r5, r4, #1
	cmp r0, #5
	beq _08025A14
_080259DC:
	movs r1, #0
	mov ip, r1
	ldrb r0, [r7, #1]
	adds r5, r4, #1
	ldr r2, _08025A34 @ => 0x03003DF0
	mov sl, r2
	cmp ip, r0
	bhs _08025A00
	adds r4, r0, #0
	ldr r2, [r7, #4]
_080259F0:
	lsls r3, r1, #2
	ldrh r0, [r2]
	cmp r0, #0xe6
	beq _08025954
	adds r2, #4
	adds r1, #1
	cmp r1, r4
	blo _080259F0
_08025A00:
	mov r1, sl
	ldr r0, [r1, #0x6c]
	cmp r7, r0
	bne _08025A14
	mov r2, ip
	cmp r2, #0
	beq _08025A14
	adds r0, r7, #0
	bl FUN_08025D68
_08025A14:
	adds r4, r5, #0
	mov r0, sb
	ldrb r0, [r0, #1]
	cmp r4, r0
	bhs _08025A20
	b _0802591E
_08025A20:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025A30: .4byte gUnk_03003E18
_08025A34: .4byte gUnk_03003DF0

	thumb_func_start FUN_08025A38
FUN_08025A38: @ 0x08025A38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	adds r5, r1, #0
	movs r6, #0xc4
	lsls r6, r6, #1
	add r6, ip
	ldr r3, [r6]
	ldrh r0, [r3]
	cmp r0, #0x9f
	bls _08025A58
	movs r0, #0
	b _08025AE4
_08025A58:
	lsls r2, r5, #2
	adds r0, r3, r2
	ldr r4, _08025AF4 @ => 0x00000784
	adds r1, r0, r4
	ldrb r1, [r1]
	ldr r7, _08025AF8 @ => 0x00000785
	adds r0, r0, r7
	ldrb r0, [r0]
	adds r4, r1, r0
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r0, r3
	mov sb, r0
	ldrh r3, [r3]
	mov r8, r2
	adds r5, #1
	mov sl, r5
	cmp r3, r4
	bls _08025AA4
	adds r5, r6, #0
_08025A84:
	ldr r2, [r5]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r2, r1
	subs r3, #1
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r1, #4
	adds r2, #4
	ldm r2!, {r0, r6, r7}
	stm r1!, {r0, r6, r7}
	cmp r3, r4
	bhi _08025A84
_08025AA4:
	mov r2, sl
	cmp r2, #0x30
	bhi _08025AC6
	movs r3, #0xc4
	lsls r3, r3, #1
	add r3, ip
	ldr r4, _08025AF4 @ => 0x00000784
_08025AB2:
	ldr r1, [r3]
	lsls r0, r2, #2
	adds r1, r1, r0
	adds r1, r1, r4
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r2, #1
	cmp r2, #0x30
	bls _08025AB2
_08025AC6:
	movs r2, #0xc4
	lsls r2, r2, #1
	add r2, ip
	ldr r1, [r2]
	add r1, r8
	ldr r0, _08025AF8 @ => 0x00000785
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r2]
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	mov r0, sb
_08025AE4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08025AF4: .4byte 0x00000784
_08025AF8: .4byte 0x00000785

	thumb_func_start FUN_08025AFC
FUN_08025AFC: @ 0x08025AFC
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	adds r5, r1, #0
	movs r4, #0xc4
	lsls r4, r4, #1
	add r4, ip
	ldr r1, [r4]
	lsls r0, r5, #2
	adds r1, r1, r0
	ldr r3, _08025B2C @ => 0x00000784
	adds r0, r1, r3
	ldrb r3, [r0]
	ldr r6, _08025B30 @ => 0x00000785
	adds r1, r1, r6
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldr r1, [r4]
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	adds r3, r3, r2
	b _08025B50
	.align 2, 0
_08025B2C: .4byte 0x00000784
_08025B30: .4byte 0x00000785
_08025B34:
	ldr r2, [r4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r2, r1
	adds r3, #1
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r1, #4
	adds r2, #4
	ldm r2!, {r0, r6, r7}
	stm r1!, {r0, r6, r7}
_08025B50:
	ldr r0, [r4]
	ldrh r0, [r0]
	cmp r3, r0
	blo _08025B34
	movs r4, #0xc4
	lsls r4, r4, #1
	add r4, ip
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, #4
	ldr r0, [r4]
	adds r0, r0, r1
	movs r1, #0
	movs r2, #0xc
	bl FUN_0802CB40
	adds r2, r5, #1
	cmp r2, #0x30
	bhi _08025B90
	adds r3, r4, #0
	ldr r4, _08025B98 @ => 0x00000784
_08025B7C:
	ldr r1, [r3]
	lsls r0, r2, #2
	adds r1, r1, r0
	adds r1, r1, r4
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	adds r2, #1
	cmp r2, #0x30
	bls _08025B7C
_08025B90:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025B98: .4byte 0x00000784

	thumb_func_start FUN_08025B9C
FUN_08025B9C: @ 0x08025B9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1cc
	mov sl, r0
	adds r4, r1, #0
	movs r0, #0xe6
	str r0, [sp, #0x1c8]
	movs r0, #0x64
	bl FUN_0804254C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #2
	mov r8, r1
	cmp r0, #9
	bls _08025BCE
	movs r5, #0
	mov r8, r5
	cmp r0, #0x27
	bhi _08025BCE
	movs r0, #1
	mov r8, r0
_08025BCE:
	lsls r4, r4, #3
	mov sb, r4
_08025BD2:
	movs r6, #0
	movs r5, #0
	mov r4, sp
_08025BD8:
	adds r0, r5, #0
	mov r1, r8
	bl FUN_08025DE8
	cmp r0, #1
	bne _08025BEA
	strh r5, [r4]
	adds r4, #2
	adds r6, #1
_08025BEA:
	adds r5, #1
	cmp r5, #0xe2
	bls _08025BD8
	movs r5, #0
	cmp r5, r6
	bhs _08025C64
	mov r1, sb
	add r1, sl
	mov ip, r1
	movs r4, #0x18
	add ip, r4
_08025C00:
	lsls r0, r5, #1
	add r0, sp
	ldrh r4, [r0]
	movs r3, #0
	mov r0, ip
	ldrb r2, [r0, #1]
	adds r7, r5, #1
	cmp r3, r2
	bge _08025C24
	ldr r1, [r0, #4]
	b _08025C1E
_08025C16:
	adds r1, #4
	adds r3, #1
	cmp r3, r2
	bge _08025C24
_08025C1E:
	ldrh r0, [r1]
	cmp r0, r4
	bne _08025C16
_08025C24:
	mov r1, ip
	ldrb r1, [r1, #1]
	cmp r3, r1
	bne _08025C30
	movs r3, #1
	rsbs r3, r3, #0
_08025C30:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _08025C5E
	adds r3, r7, #0
	subs r4, r6, #1
	cmp r7, r6
	bhs _08025C58
	lsls r0, r7, #1
	mov r1, sp
	adds r2, r0, r1
	lsls r0, r5, #1
	adds r1, r0, r1
_08025C4A:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r1, #2
	adds r2, #2
	adds r3, #1
	cmp r3, r6
	blo _08025C4A
_08025C58:
	adds r6, r4, #0
	cmp r6, #0
	beq _08025C7E
_08025C5E:
	adds r5, r7, #0
	cmp r5, r6
	blo _08025C00
_08025C64:
	cmp r6, #0
	beq _08025C7E
	subs r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0804254C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	add r0, sp
	ldrh r0, [r0]
	str r0, [sp, #0x1c8]
	b _08025C94
_08025C7E:
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	mov r5, r8
	cmp r5, #0
	ble _08025C8E
	movs r0, #0
	mov r8, r0
_08025C8E:
	movs r1, #0
	cmp r1, #0
	beq _08025BD2
_08025C94:
	mov r1, sb
	add r1, sl
	adds r1, #0x18
	movs r6, #0
	movs r4, #0
	ldr r7, _08025CD0 @ => 0x03003DF0
	ldrb r5, [r1, #1]
	cmp r6, r5
	bhs _08025CDC
	movs r5, #0
_08025CA8:
	ldr r0, [r1, #4]
	lsls r2, r4, #2
	adds r3, r2, r0
	ldrh r0, [r3]
	cmp r0, #0xe6
	bne _08025CD4
	add r0, sp, #0x1c8
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r0, [r1, #4]
	adds r0, r2, r0
	strb r5, [r0, #2]
	ldr r0, [r1, #4]
	adds r0, r2, r0
	strb r5, [r0, #3]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r6, #1
	b _08025CDC
	.align 2, 0
_08025CD0: .4byte gUnk_03003DF0
_08025CD4:
	adds r4, #1
	ldrb r0, [r1, #1]
	cmp r4, r0
	blo _08025CA8
_08025CDC:
	ldr r0, [r7, #0x6c]
	cmp r1, r0
	bne _08025CEC
	cmp r6, #0
	beq _08025CEC
	adds r0, r1, #0
	bl FUN_08025D68
_08025CEC:
	add sp, #0x1cc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_08025CFC
FUN_08025CFC: @ 0x08025CFC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #0xd5
	movs r1, #0xdc
	bl FUN_080424F8
	adds r7, r0, #0
	lsls r4, r4, #3
	adds r4, r4, r5
	adds r4, #0x18
	movs r6, #0
	movs r3, #0
	ldrb r0, [r4, #1]
	cmp r6, r0
	bhs _08025D4A
	movs r5, #0
_08025D1E:
	ldr r0, [r4, #4]
	lsls r1, r3, #2
	adds r2, r1, r0
	ldrh r0, [r2]
	cmp r0, #0xe6
	bne _08025D42
	strh r7, [r2]
	ldr r0, [r4, #4]
	adds r0, r1, r0
	strb r5, [r0, #2]
	ldr r0, [r4, #4]
	adds r0, r1, r0
	strb r5, [r0, #3]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	movs r6, #1
	b _08025D4A
_08025D42:
	adds r3, #1
	ldrb r0, [r4, #1]
	cmp r3, r0
	blo _08025D1E
_08025D4A:
	ldr r0, _08025D64 @ => 0x03003DF0
	ldr r0, [r0, #0x6c]
	cmp r4, r0
	bne _08025D5C
	cmp r6, #0
	beq _08025D5C
	adds r0, r4, #0
	bl FUN_08025D68
_08025D5C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025D64: .4byte gUnk_03003DF0

	thumb_func_start FUN_08025D68
FUN_08025D68: @ 0x08025D68
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	movs r1, #0
	b _08025DD2
_08025D76:
	adds r4, r1, #1
	mov sb, r4
	cmp sb, r2
	bge _08025DD0
	lsls r1, r1, #2
	mov ip, r1
_08025D82:
	ldr r0, [r7, #4]
	mov r2, ip
	adds r1, r2, r0
	lsls r5, r4, #2
	adds r6, r5, r0
	ldrb r0, [r1, #3]
	ldrb r2, [r6, #3]
	cmp r0, r2
	bls _08025DC8
	ldrh r2, [r1]
	ldrb r3, [r1, #2]
	mov r8, r0
	ldrh r0, [r6]
	strh r0, [r1]
	ldr r0, [r7, #4]
	mov r6, ip
	adds r1, r6, r0
	adds r0, r5, r0
	ldrb r0, [r0, #2]
	strb r0, [r1, #2]
	ldr r0, [r7, #4]
	adds r1, r6, r0
	adds r0, r5, r0
	ldrb r0, [r0, #3]
	strb r0, [r1, #3]
	ldr r0, [r7, #4]
	adds r0, r5, r0
	strh r2, [r0]
	ldr r0, [r7, #4]
	adds r0, r5, r0
	strb r3, [r0, #2]
	ldr r0, [r7, #4]
	adds r0, r5, r0
	mov r1, r8
	strb r1, [r0, #3]
_08025DC8:
	adds r4, #1
	ldrb r2, [r7]
	cmp r4, r2
	blt _08025D82
_08025DD0:
	mov r1, sb
_08025DD2:
	ldrb r2, [r7]
	subs r0, r2, #1
	cmp r1, r0
	blt _08025D76
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08025DE8
FUN_08025DE8: @ 0x08025DE8
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	movs r4, #0
	ldr r0, _08025E1C @ => 0x0807281C
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r1, [r1, #0x10]
	adds r5, r0, #0
	cmp r1, #3
	beq _08025E04
	b _08025FC8
_08025E04:
	cmp r3, #1
	beq _08025E0A
	b _08025FC8
_08025E0A:
	subs r0, r2, #1
	cmp r0, #0x3a
	bls _08025E12
	b _08025FC4
_08025E12:
	lsls r0, r0, #2
	ldr r1, _08025E20 @ =_08025E24
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08025E1C: .4byte ItemInfoData
_08025E20: .4byte _08025E24
_08025E24: @ jump table
	.4byte _08025F10 @ case 0
	.4byte _08025FC4 @ case 1
	.4byte _08025F24 @ case 2
	.4byte _08025FC4 @ case 3
	.4byte _08025F38 @ case 4
	.4byte _08025FD6 @ case 5
	.4byte _08025FC4 @ case 6
	.4byte _08025F4C @ case 7
	.4byte _08025FC4 @ case 8
	.4byte _08025FC4 @ case 9
	.4byte _08025FC4 @ case 10
	.4byte _08025FC4 @ case 11
	.4byte _08025FC4 @ case 12
	.4byte _08025FC4 @ case 13
	.4byte _08025F60 @ case 14
	.4byte _08025FC4 @ case 15
	.4byte _08025FC4 @ case 16
	.4byte _08025FD6 @ case 17
	.4byte _08025FC4 @ case 18
	.4byte _08025FC4 @ case 19
	.4byte _08025FC4 @ case 20
	.4byte _08025FC4 @ case 21
	.4byte _08025FC4 @ case 22
	.4byte _08025FC4 @ case 23
	.4byte _08025F74 @ case 24
	.4byte _08025FC4 @ case 25
	.4byte _08025FC4 @ case 26
	.4byte _08025F88 @ case 27
	.4byte _08025F9C @ case 28
	.4byte _08025FC4 @ case 29
	.4byte _08025FC4 @ case 30
	.4byte _08025FC4 @ case 31
	.4byte _08025FC4 @ case 32
	.4byte _08025FC4 @ case 33
	.4byte _08025FC4 @ case 34
	.4byte _08025FC4 @ case 35
	.4byte _08025FC4 @ case 36
	.4byte _08025FC4 @ case 37
	.4byte _08025FC4 @ case 38
	.4byte _08025FC4 @ case 39
	.4byte _08025FC4 @ case 40
	.4byte _08025FC4 @ case 41
	.4byte _08025FC4 @ case 42
	.4byte _08025FC4 @ case 43
	.4byte _08025FC4 @ case 44
	.4byte _08025FC4 @ case 45
	.4byte _08025FC4 @ case 46
	.4byte _08025FC4 @ case 47
	.4byte _08025FC4 @ case 48
	.4byte _08025FC4 @ case 49
	.4byte _08025FC4 @ case 50
	.4byte _08025FC4 @ case 51
	.4byte _08025FC4 @ case 52
	.4byte _08025FC4 @ case 53
	.4byte _08025FC4 @ case 54
	.4byte _08025FC4 @ case 55
	.4byte _08025FC4 @ case 56
	.4byte _08025FC4 @ case 57
	.4byte _08025FB0 @ case 58
_08025F10:
	ldr r0, _08025F20 @ => 0x0300407C
	movs r1, #5
	bl FUN_0801DE18
	cmp r0, #1
	bne _08025FD8
	b _08025FD6
	.align 2, 0
_08025F20: .4byte gEpisode_Data
_08025F24:
	ldr r0, _08025F34 @ => 0x0300407C
	movs r1, #3
	bl FUN_0801DE18
	cmp r0, #1
	bne _08025FD8
	b _08025FD6
	.align 2, 0
_08025F34: .4byte gEpisode_Data
_08025F38:
	ldr r0, _08025F48 @ => 0x0300407C
	movs r1, #8
	bl FUN_0801DE18
	cmp r0, #1
	bne _08025FD8
	b _08025FD6
	.align 2, 0
_08025F48: .4byte gEpisode_Data
_08025F4C:
	ldr r0, _08025F5C @ => 0x0300407C
	movs r1, #0xa
	bl FUN_0801DE18
	cmp r0, #1
	bne _08025FD8
	b _08025FD6
	.align 2, 0
_08025F5C: .4byte gEpisode_Data
_08025F60:
	ldr r0, _08025F70 @ => 0x0300407C
	movs r1, #6
	bl FUN_0801DE18
	cmp r0, #1
	bne _08025FD8
	b _08025FD6
	.align 2, 0
_08025F70: .4byte gEpisode_Data
_08025F74:
	ldr r0, _08025F84 @ => 0x0300407C
	movs r1, #0xf
	bl FUN_0801DE18
	cmp r0, #1
	bne _08025FD8
	b _08025FD6
	.align 2, 0
_08025F84: .4byte gEpisode_Data
_08025F88:
	ldr r0, _08025F98 @ => 0x0300407C
	movs r1, #7
	bl FUN_0801DE18
	cmp r0, #1
	bne _08025FD8
	b _08025FD6
	.align 2, 0
_08025F98: .4byte gEpisode_Data
_08025F9C:
	ldr r0, _08025FAC @ => 0x0300407C
	movs r1, #0x13
	bl FUN_0801DE18
	cmp r0, #1
	bne _08025FD8
	b _08025FD6
	.align 2, 0
_08025FAC: .4byte gEpisode_Data
_08025FB0:
	ldr r0, _08025FC0 @ => 0x0300407C
	movs r1, #0xd
	bl FUN_0801DE18
	cmp r0, #1
	bne _08025FD8
	b _08025FD6
	.align 2, 0
_08025FC0: .4byte gEpisode_Data
_08025FC4:
	movs r4, #0
	b _08025FD8
_08025FC8:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrb r0, [r0, #0x10]
	cmp r0, r3
	bne _08025FD8
_08025FD6:
	movs r4, #1
_08025FD8:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start FUN_08025FE0
FUN_08025FE0: @ 0x08025FE0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r5, _0802603C @ => 0x03002034
	ldr r0, [r5]
	cmp r0, #0
	bne _08025FF4
	ldr r0, _08026040 @ => 0x00000848
	bl FUN_0802C95C
	str r0, [r5]
_08025FF4:
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r5]
	str r0, [r1]
	movs r5, #0
	movs r3, #0
	adds r7, r4, #0
	adds r7, #0x38
	adds r6, r4, #0
	adds r6, #0x40
	mov ip, r3
	ldr r2, _08026044 @ => 0x08062DC4
	adds r1, r4, #0
	adds r1, #0x18
_08026012:
	mov r0, ip
	strb r0, [r1]
	ldrb r0, [r2]
	strb r0, [r1, #1]
	lsls r0, r5, #2
	adds r0, #0x48
	adds r0, r4, r0
	str r0, [r1, #4]
	ldrb r0, [r1, #1]
	adds r5, r5, r0
	adds r2, #4
	adds r1, #8
	adds r3, #1
	cmp r3, #5
	bls _08026012
	str r7, [r4, #0x14]
	str r6, [r4, #0x10]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802603C: .4byte gUnk_03002034
_08026040: .4byte 0x00000848
_08026044: .4byte ROMREF_08062DC4

	thumb_func_start FUN_08026048
FUN_08026048: @ 0x08026048
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r1, #0
	movs r7, #0
_08026050:
	lsls r0, r1, #3
	adds r0, #0x18
	adds r2, r6, r0
	movs r3, #0
	adds r4, r1, #1
	ldrb r0, [r2, #1]
	cmp r3, r0
	bhs _08026072
	movs r5, #0xe6
_08026062:
	ldr r1, [r2, #4]
	lsls r0, r3, #2
	adds r0, r0, r1
	strh r5, [r0]
	adds r3, #1
	ldrb r1, [r2, #1]
	cmp r3, r1
	blo _08026062
_08026072:
	strb r7, [r2]
	adds r1, r4, #0
	cmp r1, #5
	bls _08026050
	adds r0, r6, #0
	bl FUN_08026184
	ldr r0, _0802609C @ => 0x03003E48
	bl FUN_0802636C
	movs r1, #0xc4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	ldr r2, _080260A0 @ => 0x00000848
	movs r1, #0
	bl FUN_0802CB40
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802609C: .4byte gUnk_03003E48
_080260A0: .4byte 0x00000848

	thumb_func_start FUN_080260A4
FUN_080260A4: @ 0x080260A4
	push {r4, r5, r6, lr}
	sub sp, #4
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	cmp r3, #0
	beq _080260BC
	cmp r3, #1
	beq _080260CA
	movs r4, #0
	movs r5, #0
	movs r6, #0
	b _080260D0
_080260BC:
	ldr r1, [r0, #4]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldrh r4, [r0]
	ldrb r5, [r0, #2]
	ldrb r6, [r0, #3]
	b _080260D0
_080260CA:
	ldrh r4, [r1]
	ldrb r5, [r1, #2]
	ldrb r6, [r1, #3]
_080260D0:
	mov r0, sp
	strb r4, [r0]
	movs r1, #1
	bl FUN_08044644
	mov r2, sp
	movs r0, #0x80
	lsls r0, r0, #1
	ands r4, r0
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x11
	movs r1, #0xf
	ands r5, r1
	lsls r1, r5, #3
	orrs r0, r1
	strb r0, [r2]
	mov r0, sp
	movs r1, #1
	bl FUN_08044644
	mov r0, sp
	strb r6, [r0]
	movs r1, #1
	bl FUN_08044644
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0802610C
FUN_0802610C: @ 0x0802610C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	cmp r3, #0
	beq _08026124
	cmp r3, #1
	beq _0802612C
	movs r5, #0
	movs r6, #0
	movs r7, #0
	b _08026132
_08026124:
	lsls r1, r2, #2
	ldr r0, [r0, #4]
	adds r5, r0, r1
	b _0802612E
_0802612C:
	adds r5, r1, #0
_0802612E:
	adds r6, r5, #2
	adds r7, r5, #3
_08026132:
	mov r0, sp
	movs r1, #1
	bl FUN_08044558
	mov r0, sp
	ldrb r4, [r0]
	movs r1, #1
	bl FUN_08044558
	mov r0, sp
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r0, r0, #1
	orrs r4, r0
	strh r4, [r5]
	mov r0, sp
	ldrb r1, [r0]
	movs r0, #0x78
	ands r0, r1
	lsrs r0, r0, #3
	strb r0, [r6]
	mov r0, sp
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	movs r1, #0
	strb r0, [r1]
	mov r0, sp
	movs r1, #1
	bl FUN_08044558
	mov r0, sp
	ldrb r0, [r0]
	strb r0, [r7]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_08026184
FUN_08026184: @ 0x08026184
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r4, #0
_0802618A:
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_0802587C
	adds r4, #1
	cmp r4, #2
	bls _0802618A
	movs r5, #0
	adds r6, #8
	ldr r4, _080261B8 @ => 0x08062DDC
_0802619E:
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	bl FUN_080424F8
	adds r1, r6, r5
	strb r0, [r1]
	adds r4, #2
	adds r5, #1
	cmp r5, #3
	bls _0802619E
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080261B8: .4byte ROMREF_08062DDC

	thumb_func_start FUN_080261BC
FUN_080261BC: @ 0x080261BC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r7, r1, #0
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov ip, r3
	movs r5, #0
	movs r3, #0
	ldr r0, _08026204 @ => 0x03003DF0
	mov r8, r0
	ldrb r1, [r4, #1]
	cmp r5, r1
	bhs _08026210
_080261DE:
	ldr r0, [r4, #4]
	lsls r1, r3, #2
	adds r2, r1, r0
	ldrh r0, [r2]
	cmp r0, #0xe6
	bne _08026208
	strh r7, [r2]
	ldr r0, [r4, #4]
	adds r0, r1, r0
	strb r6, [r0, #2]
	ldr r0, [r4, #4]
	adds r0, r1, r0
	mov r1, ip
	strb r1, [r0, #3]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	movs r5, #1
	b _08026210
	.align 2, 0
_08026204: .4byte gUnk_03003DF0
_08026208:
	adds r3, #1
	ldrb r0, [r4, #1]
	cmp r3, r0
	blo _080261DE
_08026210:
	mov r1, r8
	ldr r0, [r1, #0x6c]
	cmp r4, r0
	bne _08026222
	cmp r5, #0
	beq _08026222
	adds r0, r4, #0
	bl FUN_08025D68
_08026222:
	adds r0, r5, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08026230
FUN_08026230: @ 0x08026230
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r3, #0
	ldrb r5, [r4, #1]
	cmp r3, r5
	bge _0802624E
	ldr r2, [r4, #4]
	b _08026248
_08026240:
	adds r2, #4
	adds r3, #1
	cmp r3, r5
	bge _0802624E
_08026248:
	ldrh r0, [r2]
	cmp r0, r1
	bne _08026240
_0802624E:
	ldrb r4, [r4, #1]
	cmp r3, r4
	bne _08026258
	movs r3, #1
	rsbs r3, r3, #0
_08026258:
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start FUN_08026260
FUN_08026260: @ 0x08026260
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	cmp r2, #0
	beq _08026288
	ldrb r0, [r4, #1]
	subs r0, r0, r3
	subs r2, r0, #2
	cmp r0, #1
	beq _08026288
_08026274:
	ldr r1, [r4, #4]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r0, #4]
	str r1, [r0]
	adds r3, #1
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne _08026274
_08026288:
	ldr r1, [r4, #4]
	lsls r2, r3, #2
	adds r1, r2, r1
	movs r3, #0
	movs r0, #0xe6
	strh r0, [r1]
	ldr r0, [r4, #4]
	adds r0, r2, r0
	strb r3, [r0, #2]
	ldr r0, [r4, #4]
	adds r2, r2, r0
	strb r3, [r2, #3]
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_080262AC
FUN_080262AC: @ 0x080262AC
	push {lr}
	adds r3, r0, #0
	adds r0, r3, #4
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r2, r0, r2
	cmp r2, #0xfa
	ble _080262C0
	movs r2, #0xfa
	b _080262C6
_080262C0:
	cmp r2, #0
	bge _080262C6
	movs r2, #0
_080262C6:
	adds r0, r3, #4
	adds r0, r0, r1
	strb r2, [r0]
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_080262D4
FUN_080262D4: @ 0x080262D4
	adds r0, #4
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r1, #0
	strb r1, [r0]
	adds r0, r2, #0
	bx lr
	.align 2, 0

	thumb_func_start FUN_080262E4
FUN_080262E4: @ 0x080262E4
	push {lr}
	adds r0, #4
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, r2
	bhs _080262F4
	movs r0, #0
	b _080262FA
_080262F4:
	subs r0, r0, r2
	strb r0, [r1]
	movs r0, #1
_080262FA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08026300
FUN_08026300: @ 0x08026300
	push {lr}
	movs r1, #0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802630C
	movs r1, #1
_0802630C:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08026314
FUN_08026314: @ 0x08026314
	push {lr}
	movs r2, #0
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	cmp r1, r0
	blo _08026322
	movs r2, #1
_08026322:
	adds r0, r2, #0
	pop {r1}
	bx r1

	thumb_func_start FUN_08026328
FUN_08026328: @ 0x08026328
	push {lr}
	movs r2, #0
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	cmp r1, r0
	bhs _08026336
	movs r2, #1
_08026336:
	adds r0, r2, #0
	pop {r1}
	bx r1

	thumb_func_start FUN_0802633C
FUN_0802633C: @ 0x0802633C
	push {r4, lr}
	adds r4, r1, #0
	movs r3, #0
	ldrb r2, [r0]
	cmp r3, r2
	bhs _08026360
	adds r1, r2, #0
	ldr r2, [r0, #4]
_0802634C:
	ldrh r0, [r2]
	cmp r0, r4
	bne _08026358
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	b _08026364
_08026358:
	adds r2, #4
	adds r3, #1
	cmp r3, r1
	blo _0802634C
_08026360:
	movs r0, #1
	rsbs r0, r0, #0
_08026364:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0802636C
FUN_0802636C: @ 0x0802636C
	bx lr
	.align 2, 0

	thumb_func_start FUN_08026370
FUN_08026370: @ 0x08026370
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r1, r1, #2
	ldr r2, _08026388 @ => 0x00000784
	adds r1, r1, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r1, [r0, #2]
	movs r0, #1
	ands r0, r1
	bx lr
	.align 2, 0
_08026388: .4byte 0x00000784

	thumb_func_start FUN_0802638C
FUN_0802638C: @ 0x0802638C
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r1, r1, #2
	ldr r2, _080263A8 @ => 0x00000784
	adds r1, r1, r2
	ldr r2, [r0]
	adds r2, r2, r1
	ldrb r1, [r2, #2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #2]
	bx lr
	.align 2, 0
_080263A8: .4byte 0x00000784

	thumb_func_start FUN_080263AC
FUN_080263AC: @ 0x080263AC
	bx lr
	.align 2, 0

	thumb_func_start FUN_080263B0
FUN_080263B0: @ 0x080263B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	mov r8, r1
	movs r1, #0xc4
	lsls r1, r1, #1
	adds r0, r6, r1
	mov r2, r8
	lsls r1, r2, #2
	ldr r2, _08026408 @ => 0x00000784
	adds r1, r1, r2
	ldr r0, [r0]
	adds r5, r0, r1
	movs r4, #0
	ldrb r0, [r5, #1]
	cmp r4, r0
	bhs _080263F6
	movs r1, #0xc4
	lsls r1, r1, #1
	adds r7, r6, r1
_080263DA:
	ldrb r0, [r5]
	adds r0, r0, r4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, #4
	ldr r0, [r7]
	adds r0, r0, r1
	bl FUN_08026428
	adds r4, #1
	ldrb r2, [r5, #1]
	cmp r4, r2
	blo _080263DA
_080263F6:
	adds r0, r6, #0
	mov r1, r8
	bl FUN_08025754
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026408: .4byte 0x00000784

	thumb_func_start FUN_0802640C
FUN_0802640C: @ 0x0802640C
	push {r4, lr}
	adds r4, r2, #0
	bl FUN_08025A38
	cmp r0, #0
	beq _08026420
	adds r1, r0, #0
	adds r0, r4, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
_08026420:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_08026428
FUN_08026428: @ 0x08026428
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	ldrh r0, [r4]
	ldrb r1, [r4, #2]
	ldrb r2, [r4, #3]
	movs r3, #1
	bl FUN_0803B9F4
	adds r5, r0, #0
	movs r0, #0xac
	lsls r0, r0, #1
	adds r6, r5, r0
	movs r0, #1
	str r0, [r6]
	ldr r0, _08026474 @ => 0x03004398
	ldr r0, [r0]
	adds r1, r4, #4
	mov r2, sp
	bl FUN_080539F8
	ldrb r1, [r4, #8]
	ldr r2, [sp]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r3, [sp, #4]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r5, #0
	bl FUN_0803BB50
	movs r0, #0
	str r0, [r6]
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08026474: .4byte gUnk_03004398

	thumb_func_start FUN_08026478
FUN_08026478: @ 0x08026478
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08009B04
	adds r4, r0, #0
	bl FUN_080012FC
	adds r5, r0, #0
	movs r0, #4
	ldrsh r1, [r4, r0]
	lsls r1, r1, #0x10
	movs r0, #6
	ldrsh r2, [r4, r0]
	lsls r2, r2, #0x10
	adds r0, r5, #0
	bl FUN_08001728
	ldr r0, [r4]
	strh r0, [r5, #8]
	movs r0, #0xc
	str r0, [r5, #0xc]
	ldrb r1, [r4, #0xc]
	movs r2, #0xb2
	lsls r2, r2, #1
	adds r0, r5, r2
	strh r1, [r0]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r2, r5, r0
	ldrh r1, [r4, #0xa]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	str r0, [r2]
	adds r0, r5, #0
	movs r1, #0
	bl FUN_08001FB0
	adds r1, r5, #0
	adds r1, #0x94
	ldr r0, _08026508 @ => FUN_0802668C
	str r0, [r1]
	ldrb r0, [r4, #8]
	rsbs r0, r0, #0
	subs r1, #0x18
	strb r0, [r1]
	ldrb r0, [r4, #9]
	rsbs r0, r0, #0
	adds r1, #2
	strb r0, [r1]
	ldrb r0, [r4, #8]
	subs r1, #1
	strb r0, [r1]
	ldrb r0, [r4, #9]
	adds r1, #2
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x80
	movs r1, #1
	strb r1, [r0]
	subs r0, #5
	strb r1, [r0]
	ldr r0, _0802650C @ => FUN_080265D4
	str r0, [r5, #0x50]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08026508: .4byte FUN_0802668C
_0802650C: .4byte FUN_080265D4

	thumb_func_start FUN_08026510
FUN_08026510: @ 0x08026510
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #0
	beq _0802651E
	cmp r1, #1
	beq _08026580
	b _080265C6
_0802651E:
	ldr r3, _08026570 @ => 0x0000011D
	adds r0, r4, r3
	ldrb r0, [r0]
	cmp r0, #0x41
	beq _080265C6
	cmp r0, #0x43
	beq _080265C6
	cmp r0, #0x44
	beq _080265C6
	ldr r0, _08026574 @ => 0x03003DF0
	ldr r3, _08026578 @ => 0x00000404
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #2
	bne _080265C6
	ldr r0, [r2, #0x18]
	str r0, [r4, #0x18]
	str r0, [r4, #0x20]
	ldr r0, [r2, #0x1c]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x24]
	str r1, [r4, #0x28]
	str r1, [r4, #0x2c]
	ldr r0, [r4, #0xc]
	ldr r1, _0802657C @ => 0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0x25
	bl FUN_08001FB0
	adds r0, r4, #0
	movs r1, #0x4b
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #0x41
	bl FUN_08001F84
	movs r0, #7
	b _080265C4
	.align 2, 0
_08026570: .4byte 0x0000011D
_08026574: .4byte gUnk_03003DF0
_08026578: .4byte 0x00000404
_0802657C: .4byte 0xFFBFFFFF
_08026580:
	ldr r1, _080265CC @ => 0x0000011D
	adds r0, r4, r1
	ldrb r0, [r0]
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080265C6
	ldr r0, [r2, #0x18]
	str r0, [r4, #0x18]
	str r0, [r4, #0x20]
	ldr r0, [r2, #0x1c]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x24]
	movs r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0xc]
	ldr r1, _080265D0 @ => 0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0x25
	bl FUN_08001FB0
	adds r0, r4, #0
	movs r1, #0x4c
	bl FUN_08001F20
	adds r0, r4, #0
	movs r1, #0x42
	bl FUN_08001F84
	movs r0, #3
_080265C4:
	strb r0, [r4, #0x12]
_080265C6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080265CC: .4byte 0x0000011D
_080265D0: .4byte 0xFFBFFFFF

	thumb_func_start FUN_080265D4
FUN_080265D4: @ 0x080265D4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #4
	bhi _08026686
	lsls r0, r0, #2
	ldr r1, _080265F0 @ =_080265F4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080265F0: .4byte _080265F4
_080265F4: @ jump table
	.4byte _08026686 @ case 0
	.4byte _08026608 @ case 1
	.4byte _08026612 @ case 2
	.4byte _0802663C @ case 3
	.4byte _0802666A @ case 4
_08026608:
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	b _08026686
_08026612:
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08026638 @ => 0xFFFF0000
	cmp r1, r0
	bne _08026686
	ldr r0, [r4, #0xc]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001FB0
	b _08026686
	.align 2, 0
_08026638: .4byte 0xFFFF0000
_0802663C:
	ldrb r0, [r4, #0x10]
	ldrb r1, [r4, #0x11]
	bl FUN_08009B04
	adds r1, r0, #0
	ldr r0, [r4, #0x58]
	ldrb r1, [r1, #0xd]
	adds r2, r4, #0
	bl FUN_08026510
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r0]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r4, r2
	strh r1, [r0]
	adds r0, r4, #0
	movs r1, #2
	bl FUN_08001FB0
	b _08026686
_0802666A:
	ldrb r0, [r4, #0x10]
	ldrb r1, [r4, #0x11]
	bl FUN_08009B04
	adds r1, r0, #0
	ldr r0, [r4, #0x58]
	ldrb r1, [r1, #0xd]
	adds r2, r4, #0
	bl FUN_08026510
	adds r0, r4, #0
	movs r1, #1
	bl FUN_08001FB0
_08026686:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start FUN_0802668C
FUN_0802668C: @ 0x0802668C
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	ldrh r0, [r2, #8]
	cmp r0, #0
	bne _080266E6
	ldr r0, _080266CC @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080266E6
	ldr r0, _080266D0 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080266E6
	str r2, [r4, #0x58]
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _080266D4
	adds r0, r4, #0
	movs r1, #4
	bl FUN_08001FB0
	b _080266DC
	.align 2, 0
_080266CC: .4byte gUnk_03004374
_080266D0: .4byte gUnk_030042B0
_080266D4:
	adds r0, r4, #0
	movs r1, #3
	bl FUN_08001FB0
_080266DC:
	ldr r0, [r4, #0xc]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0xc]
_080266E6:
	pop {r4}
	pop {r0}
	bx r0
