.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_0803168C
FUN_0803168C: @ 0x0803168C
	push {r4, lr}
	ldr r4, _080316A8 @ => 0x030042B0
	ldrb r1, [r4, #6]
	movs r0, #0
	bl FUN_0804645C
	bl FUN_0801F0B0
	ldrb r0, [r4, #6]
	bl FUN_08010A9C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080316A8: .4byte gUnk_030042B0

	thumb_func_start FUN_080316AC
FUN_080316AC: @ 0x080316AC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r3, _080316C0 @ => 0x03002128
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r3, #0x28
	adds r2, r2, r3
	str r1, [r2]
	bx lr
	.align 2, 0
_080316C0: .4byte gUnk_03002128

	thumb_func_start FUN_080316C4
FUN_080316C4: @ 0x080316C4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080316D8 @ => 0x03002128
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r2, #0x28
	adds r1, r1, r2
	ldr r0, [r1]
	bx lr
	.align 2, 0
_080316D8: .4byte gUnk_03002128

	thumb_func_start FUN_080316DC
FUN_080316DC: @ 0x080316DC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080316FC @ => 0x03002128
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r1, #0x32
	ldrsh r0, [r2, r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	subs r0, #0x40
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr
	.align 2, 0
_080316FC: .4byte gUnk_03002128

	thumb_func_start FUN_08031700
FUN_08031700: @ 0x08031700
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08031718 @ => 0x03002128
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r2, #0x2c
	adds r1, r1, r2
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_08031718: .4byte gUnk_03002128

	thumb_func_start FUN_0803171C
FUN_0803171C: @ 0x0803171C
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08031760 @ => 0x03002128
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #0x2c
	adds r0, r1, r0
	movs r4, #0
	str r4, [r0]
	adds r2, #0x28
	adds r3, r1, r2
	ldr r1, _08031764 @ => 0x08066FD0
	ldr r0, _08031768 @ => 0x030047EC
	ldrb r2, [r0]
	movs r0, #0x2c
	muls r0, r2, r0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r1, r0, #1
	adds r1, r1, r0
	ldr r0, [r3]
	subs r0, r0, r1
	str r0, [r3]
	cmp r0, #0
	bge _08031758
	str r4, [r3]
_08031758:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08031760: .4byte gUnk_03002128
_08031764: .4byte ROMREF_08066FD0
_08031768: .4byte gUnk_030047EC

	thumb_func_start FUN_0803176C
FUN_0803176C: @ 0x0803176C
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08009B04
	adds r4, r0, #0
	ldr r0, _080317C0 @ => 0x08066DE8
	movs r2, #4
	ldrsh r1, [r4, r2]
	movs r3, #6
	ldrsh r2, [r4, r3]
	movs r3, #3
	str r3, [sp]
	movs r3, #5
	bl FUN_0802D680
	ldr r1, [r4]
	movs r3, #0
	strh r1, [r0, #8]
	strh r3, [r0, #0xa]
	ldr r1, _080317C4 @ => FUN_080319D4
	str r1, [r0, #0x50]
	ldr r1, [r0, #0xc]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #0xc]
	adds r2, r0, #0
	adds r2, #0x94
	ldr r1, _080317C8 @ => FUN_08030CC8
	str r1, [r2]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r0, r2
	strh r3, [r1]
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080317C0: .4byte ROMREF_08066DE8
_080317C4: .4byte FUN_080319D4
_080317C8: .4byte FUN_08030CC8

	thumb_func_start FUN_080317CC
FUN_080317CC: @ 0x080317CC
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08009B04
	adds r4, r0, #0
	ldr r0, _08031810 @ => 0x08066E08
	movs r2, #4
	ldrsh r1, [r4, r2]
	movs r3, #6
	ldrsh r2, [r4, r3]
	movs r3, #2
	str r3, [sp]
	movs r3, #6
	bl FUN_0802D680
	ldr r1, [r4]
	movs r2, #0
	strh r1, [r0, #8]
	strh r2, [r0, #0xa]
	ldr r2, _08031814 @ => 0x03002128
	ldrb r1, [r4, #8]
	subs r1, #1
	lsls r1, r1, #2
	adds r2, #0x10
	adds r1, r1, r2
	str r0, [r1]
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08031810: .4byte ROMREF_08066E08
_08031814: .4byte gUnk_03002128

	thumb_func_start FUN_08031818
FUN_08031818: @ 0x08031818
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_08009B04
	adds r4, r0, #0
	ldr r0, _08031860 @ => 0x08066DF8
	movs r2, #4
	ldrsh r1, [r4, r2]
	movs r3, #6
	ldrsh r2, [r4, r3]
	movs r3, #3
	str r3, [sp]
	movs r3, #7
	bl FUN_0802D680
	ldr r1, [r4]
	movs r2, #0
	strh r1, [r0, #8]
	strh r2, [r0, #0xa]
	ldr r1, [r0, #0xc]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #0xc]
	adds r2, r0, #0
	adds r2, #0x94
	ldr r1, _08031864 @ => FUN_08031A2C
	str r1, [r2]
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08031860: .4byte ROMREF_08066DF8
_08031864: .4byte FUN_08031A2C

	thumb_func_start FUN_08031868
FUN_08031868: @ 0x08031868
	push {lr}
	ldr r3, _08031894 @ => 0x03002128
	ldr r1, _08031898 @ => 0x08066FD0
	ldr r0, _0803189C @ => 0x030047EC
	ldrb r2, [r0]
	movs r0, #0x2c
	muls r0, r2, r0
	adds r1, #8
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r1, r1, #1
	ldr r0, [r3, #0x28]
	adds r0, r0, r1
	str r0, [r3, #0x28]
	cmp r0, #0
	blt _08031890
	movs r0, #0
	str r0, [r3, #0x28]
	bl FUN_08031B14
_08031890:
	pop {r0}
	bx r0
	.align 2, 0
_08031894: .4byte gUnk_03002128
_08031898: .4byte ROMREF_08066FD0
_0803189C: .4byte gUnk_030047EC

	thumb_func_start FUN_080318A0
FUN_080318A0: @ 0x080318A0
	push {lr}
	ldr r3, _080318E4 @ => 0x03002128
	ldr r1, _080318E8 @ => 0x08066FD0
	ldr r0, _080318EC @ => 0x030047EC
	ldrb r2, [r0]
	movs r0, #0x2c
	muls r0, r2, r0
	adds r1, #8
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r1, r1, #1
	ldr r0, [r3, #0x28]
	adds r0, r0, r1
	str r0, [r3, #0x28]
	cmp r0, #0
	blt _080318C4
	movs r0, #0
	str r0, [r3, #0x28]
_080318C4:
	ldr r0, [r3, #0x50]
	adds r0, #1
	str r0, [r3, #0x50]
	cmp r0, #0x19
	ble _080318DE
	movs r0, #0
	str r0, [r3, #0x28]
	bl FUN_08031B14
	movs r0, #0
	movs r1, #0
	bl FUN_0803083C
_080318DE:
	pop {r0}
	bx r0
	.align 2, 0
_080318E4: .4byte gUnk_03002128
_080318E8: .4byte ROMREF_08066FD0
_080318EC: .4byte gUnk_030047EC

	thumb_func_start FUN_080318F0
FUN_080318F0: @ 0x080318F0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _08031970 @ => 0x03004720
	ldr r5, [r0, #0x14]
	cmp r5, #0
	bne _08031968
	cmp r6, #0
	ble _08031908
	movs r0, #0xbc
	bl FUN_0804DE0C
_08031908:
	ldr r0, _08031974 @ => 0x08066DC8
	str r5, [sp]
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #3
	bl FUN_0802D680
	adds r4, r0, #0
	movs r1, #0
	bl FUN_08000E44
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r2, _08031978 @ => 0xFFFE8000
	adds r0, r4, #0
	movs r1, #0
	bl FUN_08001744
	ldr r0, _0803197C @ => FUN_080309B4
	str r0, [r4, #0x50]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #0
	strh r5, [r0]
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r4, r2
	strb r1, [r0]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r4, r4, r0
	str r6, [r4]
	cmp r6, #0
	ble _08031968
	ldr r1, _08031980 @ => 0x08066D78
	ldr r0, _08031984 @ => 0x03002128
	ldr r0, [r0, #0x6c]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _08031968
	bl FUN_08031A84
_08031968:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08031970: .4byte gUnk_03004720
_08031974: .4byte ROMREF_08066DC8
_08031978: .4byte 0xFFFE8000
_0803197C: .4byte FUN_080309B4
_08031980: .4byte ROMREF_08066D78
_08031984: .4byte gUnk_03002128

	thumb_func_start FUN_08031988
FUN_08031988: @ 0x08031988
	push {r4, r5, lr}
	ldr r5, _080319CC @ => 0x03002128
	ldr r0, [r5, #0x58]
	cmp r0, #0
	bge _08031996
	movs r0, #0
	str r0, [r5, #0x58]
_08031996:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _080319D0 @ => 0x00000762
	bl FUN_08050820
	adds r4, r0, #0
	ldr r0, [r5, #0x58]
	bl FUN_080203A8
	bl FUN_08024FC4
	ldr r0, [r5, #0xc]
	adds r1, r4, #0
	bl FUN_08050BC8
	ldr r0, [r5, #0xc]
	movs r1, #0xd8
	movs r2, #0x7d
	bl FUN_08050BDC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080319CC: .4byte gUnk_03002128
_080319D0: .4byte 0x00000762

	thumb_func_start FUN_080319D4
FUN_080319D4: @ 0x080319D4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _08031A1E
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08031A1E
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08031A08
	ldr r1, _08031A00 @ => 0x08066DE8
	ldr r0, _08031A04 @ => 0x09FB6500
	b _08031A0C
	.align 2, 0
_08031A00: .4byte ROMREF_08066DE8
_08031A04: .4byte ROMREF_09FB6500
_08031A08:
	ldr r1, _08031A24 @ => 0x08066DE8
	ldr r0, _08031A28 @ => 0x09FB6504
_08031A0C:
	ldr r2, [r0]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_0800192C
	ldr r0, [r4, #0xc]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r4, #0xc]
_08031A1E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08031A24: .4byte ROMREF_08066DE8
_08031A28: .4byte ROMREF_09FB6504

	thumb_func_start FUN_08031A2C
FUN_08031A2C: @ 0x08031A2C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08031A68 @ => 0x03002128
	ldr r0, [r0, #0x24]
	cmp r1, r0
	bne _08031A62
	ldr r0, _08031A6C @ => 0x03004720
	ldr r0, [r0, #0x14]
	cmp r0, #3
	beq _08031A62
	adds r0, r4, #0
	bl FUN_08031A78
	movs r0, #0x29
	bl FUN_0804DE0C
	ldr r1, _08031A70 @ => 0x08066DF8
	ldr r0, _08031A74 @ => 0x09FB64F0
	ldr r2, [r0]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_0800192C
	ldr r0, [r4, #0xc]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r4, #0xc]
_08031A62:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08031A68: .4byte gUnk_03002128
_08031A6C: .4byte gUnk_03004720
_08031A70: .4byte ROMREF_08066DF8
_08031A74: .4byte ROMREF_09FB64F0

	thumb_func_start FUN_08031A78
FUN_08031A78: @ 0x08031A78
	ldr r1, _08031A80 @ => 0x03002128
	movs r0, #0x2d
	str r0, [r1, #0x68]
	bx lr
	.align 2, 0
_08031A80: .4byte gUnk_03002128

	thumb_func_start FUN_08031A84
FUN_08031A84: @ 0x08031A84
	push {lr}
	ldr r1, _08031A9C @ => 0x03002128
	ldr r0, [r1, #0x70]
	cmp r0, #6
	ble _08031A92
	movs r0, #6
	str r0, [r1, #0x70]
_08031A92:
	bl FUN_080310CC
	pop {r0}
	bx r0
	.align 2, 0
_08031A9C: .4byte gUnk_03002128

	thumb_func_start FUN_08031AA0
FUN_08031AA0: @ 0x08031AA0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r6, [sp, #0x14]
	lsls r0, r0, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r3, _08031AE8 @ => 0x09FB6508
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r0, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r5, #3
	str r5, [sp]
	adds r3, r4, #0
	bl FUN_0802D680
	adds r2, r0, #0
	adds r2, #0x94
	ldr r1, _08031AEC @ => FUN_08030934
	str r1, [r2]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r0, r2
	strb r5, [r1]
	str r0, [r6]
	movs r0, #1
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08031AE8: .4byte ROMREF_09FB6508
_08031AEC: .4byte FUN_08030934

	thumb_func_start FUN_08031AF0
FUN_08031AF0: @ 0x08031AF0
	push {lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _08031B10 @ => 0x03002128
	adds r0, #0x80
	ldr r0, [r0]
	ldr r2, [r0, #0x10]
	cmp r2, #0
	beq _08031B0C
	adds r0, r3, #0
	bl _call_via_r2
_08031B0C:
	pop {r0}
	bx r0
	.align 2, 0
_08031B10: .4byte gUnk_03002128

	thumb_func_start FUN_08031B14
FUN_08031B14: @ 0x08031B14
	push {lr}
	adds r1, r0, #0
	ldr r2, _08031B28 @ => 0x03004720
	ldr r0, [r2, #0x14]
	cmp r0, #3
	beq _08031B22
	str r1, [r2, #0x14]
_08031B22:
	pop {r0}
	bx r0
	.align 2, 0
_08031B28: .4byte gUnk_03004720
