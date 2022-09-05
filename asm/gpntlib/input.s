@ The Input stuff that looks similar in Griptonite's other games too.
.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_08024900
FUN_08024900: @ 0x08024900
	push {lr}
	ldr r1, _08024928 @ => 0x030042B0
	movs r0, #0
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	adds r1, #0x10
	movs r2, #1
_08024912:
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	adds r1, #8
	subs r2, #1
	cmp r2, #0
	bge _08024912
	pop {r0}
	bx r0
	.align 2, 0
_08024928: .4byte gUnk_030042B0

	thumb_func_start FUN_0802492C
FUN_0802492C: @ 0x0802492C
	push {r4, r5, r6, lr}
	ldr r1, _08024940 @ => 0x030042B0
	ldr r0, [r1, #0x20]
	mov ip, r1
	cmp r0, #0
	beq _08024944
	bl FUN_08024900
	b _080249C6
	.align 2, 0
_08024940: .4byte gUnk_030042B0
_08024944:
	mov r1, ip
	ldr r0, [r1]
	cmp r0, #0
	beq _08024956
	subs r0, #1
	str r0, [r1]
	bl FUN_08024900
	b _080249C6
_08024956:
	mov r2, ip
	ldrh r0, [r2, #4]
	cmp r0, #1
	bls _08024990
	movs r6, #0
	mov r4, ip
	adds r4, #0x10
	ldr r5, _0802498C @ => 0x03006264
_08024966:
	ldrh r3, [r4]
	strh r3, [r4, #2]
	ldrh r1, [r5]
	strh r1, [r4]
	adds r2, r1, #0
	eors r2, r3
	adds r0, r2, #0
	ands r0, r1
	strh r0, [r4, #4]
	ands r2, r3
	strh r2, [r4, #6]
	adds r4, #8
	adds r5, #2
	adds r6, #1
	cmp r6, #1
	bls _08024966
	mov r3, ip
	ldrh r6, [r3, #6]
	b _080249B4
	.align 2, 0
_0802498C: .4byte gUnk_03006264
_08024990:
	movs r6, #0
	mov r0, ip
	ldrh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	ldr r0, _080249CC @ => 0x04000130
	ldrh r0, [r0]
	ldr r3, _080249D0 @ => 0x000003FF
	adds r1, r3, #0
	eors r0, r1
	mov r1, ip
	strh r0, [r1, #0x10]
	adds r1, r0, #0
	eors r1, r2
	ands r0, r1
	mov r3, ip
	strh r0, [r3, #0x14]
	ands r1, r2
	strh r1, [r3, #0x16]
_080249B4:
	lsls r0, r6, #3
	mov r1, ip
	adds r1, #0x10
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	mov r2, ip
	str r0, [r2, #8]
	str r1, [r2, #0xc]
_080249C6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080249CC: .4byte 0x04000130
_080249D0: .4byte 0x000003FF

	thumb_func_start FUN_080249D4
FUN_080249D4: @ 0x080249D4
	push {lr}
	bl FUN_08024A10
	bl FUN_08024900
	ldr r0, _080249EC @ => 0x030042B0
	movs r2, #0
	movs r1, #1
	strh r1, [r0, #4]
	str r2, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_080249EC: .4byte gUnk_030042B0

	thumb_func_start FUN_080249F0
FUN_080249F0: @ 0x080249F0
	push {lr}
	ldr r1, _08024A0C @ => 0x030042B0
	movs r0, #0
	strh r0, [r1, #0xc]
	movs r2, #0
	adds r0, r1, #0
	adds r0, #8
_080249FE:
	strh r2, [r0, #0x14]
	subs r0, #8
	cmp r0, r1
	bge _080249FE
	pop {r0}
	bx r0
	.align 2, 0
_08024A0C: .4byte gUnk_030042B0

	thumb_func_start FUN_08024A10
FUN_08024A10: @ 0x08024A10
	ldr r1, _08024A18 @ => 0x030042B0
	movs r0, #0
	str r0, [r1, #0x20]
	bx lr
	.align 2, 0
_08024A18: .4byte gUnk_030042B0

	thumb_func_start FUN_08024A1C
FUN_08024A1C: @ 0x08024A1C
	ldr r1, _08024A24 @ => 0x030042B0
	movs r0, #1
	str r0, [r1, #0x20]
	bx lr
	.align 2, 0
_08024A24: .4byte gUnk_030042B0

	thumb_func_start FUN_08024A28
FUN_08024A28: @ 0x08024A28
	ldr r2, _08024A40 @ => 0x08062CC0
	ldr r1, _08024A44 @ => 0x030042B0
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #0x10]
	movs r0, #0xf0
	ands r0, r1
	lsrs r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08024A40: .4byte ROMREF_08062CC0
_08024A44: .4byte gUnk_030042B0

	thumb_func_start FUN_08024A48
FUN_08024A48: @ 0x08024A48
	push {lr}
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	ldr r1, _08024A68 @ => 0x030042B0
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #0x10]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08024A6C
	subs r2, #1
	cmp r2, #0
	bge _08024A80
	movs r2, #0xf
	b _08024A80
	.align 2, 0
_08024A68: .4byte gUnk_030042B0
_08024A6C:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08024A7E
	adds r2, #1
	cmp r2, #0xf
	ble _08024A80
	movs r2, #0
	b _08024A80
_08024A7E:
	movs r2, #0x10
_08024A80:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1

	thumb_func_start FUN_08024A88
FUN_08024A88: @ 0x08024A88
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [sp, #0xc]
	ldr r1, _08024AB0 @ => 0x030042B0
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #0x14]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08024AB8
	ldr r0, [r4]
	cmp r0, r5
	bhi _08024AB4
	cmp r3, #0
	beq _08024AD2
	str r2, [r4]
	b _08024AD2
	.align 2, 0
_08024AB0: .4byte gUnk_030042B0
_08024AB4:
	subs r0, #1
	b _08024AD0
_08024AB8:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08024AD2
	ldr r0, [r4]
	cmp r0, r2
	blo _08024ACE
	cmp r3, #0
	beq _08024AD2
	str r5, [r4]
	b _08024AD2
_08024ACE:
	adds r0, #1
_08024AD0:
	str r0, [r4]
_08024AD2:
	ldr r0, [r4]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08024ADC
FUN_08024ADC: @ 0x08024ADC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [sp, #0xc]
	ldr r1, _08024B04 @ => 0x030042B0
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #0x10]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08024B0C
	ldr r0, [r4]
	cmp r0, r5
	bhi _08024B08
	cmp r3, #0
	beq _08024B26
	str r2, [r4]
	b _08024B26
	.align 2, 0
_08024B04: .4byte gUnk_030042B0
_08024B08:
	subs r0, #1
	b _08024B24
_08024B0C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08024B26
	ldr r0, [r4]
	cmp r0, r2
	blo _08024B22
	cmp r3, #0
	beq _08024B26
	str r5, [r4]
	b _08024B26
_08024B22:
	adds r0, #1
_08024B24:
	str r0, [r4]
_08024B26:
	ldr r0, [r4]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08024B30
FUN_08024B30: @ 0x08024B30
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [sp, #0xc]
	ldr r1, _08024B58 @ => 0x030042B0
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #0x14]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08024B60
	ldr r0, [r4]
	cmp r0, r5
	bhi _08024B5C
	cmp r3, #0
	beq _08024B7A
	str r2, [r4]
	b _08024B7A
	.align 2, 0
_08024B58: .4byte gUnk_030042B0
_08024B5C:
	subs r0, #1
	b _08024B78
_08024B60:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08024B7A
	ldr r0, [r4]
	cmp r0, r2
	blo _08024B76
	cmp r3, #0
	beq _08024B7A
	str r5, [r4]
	b _08024B7A
_08024B76:
	adds r0, #1
_08024B78:
	str r0, [r4]
_08024B7A:
	ldr r0, [r4]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08024B84
FUN_08024B84: @ 0x08024B84
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [sp, #0xc]
	ldr r1, _08024BAC @ => 0x030042B0
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #0x10]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08024BB4
	ldr r0, [r4]
	cmp r0, r5
	bhi _08024BB0
	cmp r3, #0
	beq _08024BCE
	str r2, [r4]
	b _08024BCE
	.align 2, 0
_08024BAC: .4byte gUnk_030042B0
_08024BB0:
	subs r0, #1
	b _08024BCC
_08024BB4:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08024BCE
	ldr r0, [r4]
	cmp r0, r2
	blo _08024BCA
	cmp r3, #0
	beq _08024BCE
	str r5, [r4]
	b _08024BCE
_08024BCA:
	adds r0, #1
_08024BCC:
	str r0, [r4]
_08024BCE:
	ldr r0, [r4]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08024BD8
FUN_08024BD8: @ 0x08024BD8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [sp, #0xc]
	ldr r1, _08024C00 @ => 0x030042B0
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #0x14]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08024C08
	ldr r0, [r4]
	cmp r0, r5
	bhi _08024C04
	cmp r3, #0
	beq _08024C24
	str r2, [r4]
	b _08024C24
	.align 2, 0
_08024C00: .4byte gUnk_030042B0
_08024C04:
	subs r0, #1
	b _08024C22
_08024C08:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08024C24
	ldr r0, [r4]
	cmp r0, r2
	blo _08024C20
	cmp r3, #0
	beq _08024C24
	str r5, [r4]
	b _08024C24
_08024C20:
	adds r0, #1
_08024C22:
	str r0, [r4]
_08024C24:
	ldr r0, [r4]
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start FUN_08024C2C
FUN_08024C2C: @ 0x08024C2C
	push {lr}
	adds r1, r0, #0
	movs r2, #0
	ldr r0, [r1]
	cmp r0, #0
	bne _08024C3A
	movs r2, #1
_08024C3A:
	str r2, [r1]
	pop {r0}
	bx r0

	thumb_func_start FUN_08024C40
FUN_08024C40: @ 0x08024C40
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [sp, #0xc]
	ldr r1, _08024C68 @ => 0x030042B0
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #0x14]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08024C70
	ldr r0, [r4]
	cmp r0, r2
	blo _08024C6C
	cmp r3, #0
	beq _08024C70
	str r5, [r4]
	b _08024C70
	.align 2, 0
_08024C68: .4byte gUnk_030042B0
_08024C6C:
	adds r0, #1
	str r0, [r4]
_08024C70:
	ldr r0, [r4]
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start FUN_08024C78
FUN_08024C78: @ 0x08024C78
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_08024900
	ldr r0, _08024C8C @ => 0x030042B0
	str r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024C8C: .4byte gUnk_030042B0
