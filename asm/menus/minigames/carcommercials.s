.include "asm/constants.s"
.include "asm/macros.s"
.include "data/lists/sounds.inc"

.syntax unified

	thumb_func_start CarCommercials_Init
CarCommercials_Init: @ 0x0802FFDC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, _08030088 @ => 0x08067140
	str r0, [sp, #0xc]
	bl FUN_08042448
	ldr r4, _0803008C @ => 0x03002128
	movs r5, #0
	str r5, [r4, #0x4c]
	ldr r2, _08030090 @ => 0x0806712C
	movs r0, #0
	movs r1, #0
	bl FUN_080300A8
	ldr r0, _08030094 @ => 0x03004720
	str r5, [r0, #0x14]
	ldr r0, _08030098 @ => 0x00000725
	str r0, [r4, #0x54]
	str r5, [r4, #0x58]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x3d
	strb r0, [r1]
	movs r0, #7
	str r0, [r4, #0x6c]
	ldr r0, _0803009C @ => 0x08066D78
	ldrh r0, [r0, #0x38]
	str r0, [r4, #0x70]
	str r5, [r4, #0x60]
	str r5, [r4, #0x68]
	str r5, [r4, #0x64]
	ldr r0, _080300A0 @ => 0x08066DB8
	str r5, [sp]
	movs r1, #8
	movs r2, #0x20
	movs r3, #4
	bl FUN_0802D680
	str r0, [r4]
	ldr r1, [r0, #0xc]
	movs r6, #0x80
	lsls r6, r6, #0xe
	orrs r1, r6
	str r1, [r0, #0xc]
	add r0, sp, #0xc
	bl FUN_08050940
	str r0, [r4, #0x1c]
	ldr r1, [r0, #0xc]
	orrs r1, r6
	str r1, [r0, #0xc]
	adds r0, #0xa9
	ldrb r2, [r0]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	ldr r0, [r4, #0x1c]
	movs r1, #0xf0
	movs r2, #4
	bl FUN_08001734
	str r5, [r4, #0x20]
	movs r0, SOUNDTRACK_TRANCE_MODE
	bl FUN_0804DE84
	movs r0, #0x3f
	movs r1, #0
	bl FUN_080457F4
	bl FUN_08030AD8
	ldr r0, _080300A4 @ => 0x00000621
	str r5, [sp]
	movs r1, #2
	str r1, [sp, #4]
	str r5, [sp, #8]
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #0x3c
	bl FUN_0800B984
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08030088: .4byte ROMREF_08067140
_0803008C: .4byte gUnk_03002128
_08030090: .4byte ROMREF_0806712C
_08030094: .4byte gUnk_03004720
_08030098: .4byte 0x00000725
_0803009C: .4byte ROMREF_08066D78
_080300A0: .4byte ROMREF_08066DB8
_080300A4: .4byte 0x00000621

	thumb_func_start FUN_080300A8
FUN_080300A8: @ 0x080300A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r1
	ldr r3, _080302BC @ => 0x03002128
	adds r1, r3, #0
	adds r1, #0x80
	str r2, [r1]
	ldr r1, _080302C0 @ => 0x030047EC
	strb r0, [r1]
	ldr r0, _080302C4 @ => 0x030047E8
	mov r1, sl
	strb r1, [r0]
	movs r7, #0
	ldr r2, _080302C8 @ => 0x08067088
	mov r8, r2
	adds r6, r3, #0
	adds r6, #0x35
	movs r4, #0
	movs r5, #1
_080300D6:
	ldr r1, _080302CC @ => 0x0300214C
	adds r0, r4, r1
	str r7, [r0]
	adds r0, r3, #0
	adds r0, #0x2c
	adds r0, r4, r0
	str r7, [r0]
	adds r0, r3, #0
	adds r0, #0x28
	adds r0, r4, r0
	str r7, [r0]
	adds r2, r3, #0
	adds r2, #0x30
	adds r2, r4, r2
	ldr r0, _080302C4 @ => 0x030047E8
	ldrb r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	str r0, [r2]
	movs r0, #0xff
	strb r0, [r6]
	adds r6, #0x14
	adds r4, #0x14
	subs r5, #1
	cmp r5, #0
	bge _080300D6
	add r1, sp, #8
	movs r0, #0
	strh r0, [r1]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _080302D0 @ => 0x01008000
	add r0, sp, #8
	bl SVC_CpuSet
	movs r0, #0
	bl FUN_0800C558
	movs r0, #0x80
	lsls r0, r0, #5
	bl FUN_0800C5EC
	movs r0, #0
	bl FUN_0805273C
	ldr r0, _080302D4 @ => 0x08066D6C
	ldr r0, [r0]
	mov sb, r0
	movs r0, #0
	mov r1, sb
	bl FUN_0800C418
	ldr r0, _080302D8 @ => 0x08066D70
	ldr r0, [r0]
	mov r8, r0
	movs r0, #1
	mov r1, r8
	bl FUN_0800C418
	ldr r0, _080302DC @ => 0x08066D74
	ldr r6, [r0]
	movs r0, #2
	adds r1, r6, #0
	bl FUN_0800C418
	bl FUN_0801F270
	ldr r7, _080302E0 @ => 0x08067054
	mov r1, sl
	lsls r5, r1, #4
	subs r5, r5, r1
	lsls r5, r5, #2
	adds r4, r5, r7
	ldr r0, [r4]
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl FUN_08009528
	movs r0, #0
	bl FUN_080095E4
	movs r0, #1
	bl FUN_080095E4
	ldr r3, [r4, #0x24]
	ldr r4, [r4, #0x28]
	str r4, [sp]
	adds r0, r6, #0
	mov r1, sb
	mov r2, r8
	bl FUN_08046FC8
	adds r0, r7, #4
	adds r0, r5, r0
	ldr r0, [r0]
	bl FUN_080470E8
	adds r0, r7, #0
	adds r0, #8
	adds r0, r5, r0
	ldr r0, [r0]
	bl FUN_080470AC
	adds r0, r7, #0
	adds r0, #0xc
	adds r0, r5, r0
	ldr r0, [r0]
	bl FUN_0804713C
	adds r0, r7, #0
	adds r0, #0x10
	adds r0, r5, r0
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl FUN_08047174
	adds r0, r7, #0
	adds r0, #0x14
	adds r0, r5, r0
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl FUN_08047204
	adds r0, r7, #0
	adds r0, #0x18
	adds r0, r5, r0
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl FUN_08047294
	adds r0, r7, #0
	adds r0, #0x1c
	adds r0, r5, r0
	ldr r0, [r0]
	adds r1, r7, #0
	adds r1, #0x20
	adds r5, r5, r1
	ldr r1, [r5]
	bl FUN_080395C4
	bl FUN_0803EDD4
	ldr r2, _080302CC @ => 0x0300214C
	ldr r4, [r2, #0x5c]
	ldr r0, _080302C0 @ => 0x030047EC
	ldrb r0, [r0]
	ldr r2, _080302C4 @ => 0x030047E8
	ldrb r1, [r2]
	lsls r3, r1, #4
	subs r3, r3, r1
	lsls r3, r3, #2
	adds r1, r7, #0
	adds r1, #0x2c
	adds r1, r3, r1
	ldr r2, [r1]
	adds r1, r7, #0
	adds r1, #0x30
	adds r3, r3, r1
	ldr r3, [r3]
	ldr r1, _080302CC @ => 0x0300214C
	str r1, [sp]
	adds r1, #0x14
	str r1, [sp, #4]
	ldr r4, [r4, #0xc]
	movs r1, #1
	bl _call_via_r4
	adds r6, r0, #0
	movs r5, #0
	cmp r5, r6
	bge _0803025A
	ldr r4, _080302CC @ => 0x0300214C
_0803023C:
	ldr r2, [r4]
	ldr r0, [r2, #0xc]
	movs r1, #0x81
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r2, #0xc]
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	bl FUN_0803083C
	adds r4, #0x14
	adds r5, #1
	cmp r5, r6
	blt _0803023C
_0803025A:
	ldr r4, _080302E4 @ => 0x030042B0
	ldrb r0, [r4, #6]
	bl FUN_08010A08
	ldrb r1, [r4, #6]
	movs r0, #0
	bl FUN_08011300
	ldrb r1, [r4, #6]
	movs r0, #0
	bl FUN_08011024
	ldr r1, _080302BC @ => 0x03002128
	ldrh r3, [r4, #6]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r1, #0x24
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _080302E8 @ => 0x08066FC8
	ldr r2, [r1, #4]
	ldr r1, [r1]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	bl FUN_0801119C
	bl FUN_08047468
	ldrb r1, [r4, #6]
	movs r0, #1
	bl FUN_0804645C
	bl FUN_0801F0B0
	ldrb r0, [r4, #6]
	bl FUN_08010A9C
	bl FUN_08046398
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080302BC: .4byte gUnk_03002128
_080302C0: .4byte gUnk_030047EC
_080302C4: .4byte gUnk_030047E8
_080302C8: .4byte ROMREF_08067088
_080302CC: .4byte gUnk_0300214C
_080302D0: .4byte 0x01008000
_080302D4: .4byte ROMREF_08066D6C
_080302D8: .4byte ROMREF_08066D70
_080302DC: .4byte ROMREF_08066D74
_080302E0: .4byte ROMREF_08067054
_080302E4: .4byte gUnk_030042B0
_080302E8: .4byte ROMREF_08066FC8

	thumb_func_start CarCommercials_Handler
CarCommercials_Handler: @ 0x080302EC
	push {r4, r5, lr}
	bl FUN_080315B0
	bl FUN_08030C00
	bl FUN_0800B66C
	bl FUN_080310CC
	bl FUN_0803168C
	ldr r4, _08030324 @ => 0x03002128
	ldr r0, [r4, #0x68]
	cmp r0, #0
	beq _0803030E
	subs r0, #1
	str r0, [r4, #0x68]
_0803030E:
	ldr r5, _08030328 @ => 0x03004720
	ldr r0, [r5, #0x14]
	cmp r0, #1
	beq _08030334
	cmp r0, #1
	blo _0803032C
	cmp r0, #2
	beq _0803033A
	cmp r0, #3
	beq _08030340
	b _0803035E
	.align 2, 0
_08030324: .4byte gUnk_03002128
_08030328: .4byte gUnk_03004720
_0803032C:
	movs r0, #0
	bl FUN_080303CC
	b _0803035E
_08030334:
	bl FUN_08031868
	b _0803035E
_0803033A:
	bl FUN_080318A0
	b _0803035E
_08030340:
	movs r0, #0
	bl FUN_0803171C
	ldr r0, _080303B8 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0803035E
	ldr r1, [r5, #4]
	ldr r2, [r4, #0x58]
	movs r0, #0x19
	movs r3, #0
	bl FUN_0802CEF8
_0803035E:
	movs r0, #0
	bl sub_08030774
	ldr r0, _080303BC @ => 0x03004720
	ldr r5, [r0, #0x14]
	cmp r5, #0
	bne _080303B2
	ldr r4, _080303C0 @ => 0x03002128
	ldr r0, [r4, #0x6c]
	cmp r0, #2
	bne _080303B2
	ldr r3, _080303C4 @ => 0x08066FD0
	ldr r0, _080303C8 @ => 0x030047EC
	ldrb r1, [r0]
	movs r0, #0x2c
	adds r2, r1, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0xc
	adds r0, r2, r0
	ldr r1, [r4, #0x28]
	ldr r0, [r0]
	cmp r1, r0
	bne _080303B0
	adds r0, r3, #0
	adds r0, #0x20
	adds r0, r2, r0
	ldr r0, [r0]
	ldr r2, [r4, #0x2c]
	cmn r2, r0
	ble _080303B2
	cmp r2, r0
	bge _080303B2
	ldr r0, [r4, #0x74]
	adds r0, #1
	str r0, [r4, #0x74]
	cmp r0, #0x1e
	bne _080303B2
	movs r0, #0x19
	bl FUN_080318F0
_080303B0:
	str r5, [r4, #0x74]
_080303B2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080303B8: .4byte gUnk_030042B0
_080303BC: .4byte gUnk_03004720
_080303C0: .4byte gUnk_03002128
_080303C4: .4byte ROMREF_08066FD0
_080303C8: .4byte gUnk_030047EC

	thumb_func_start FUN_080303CC
FUN_080303CC: @ 0x080303CC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, _08030428 @ => 0x030047EC
	ldrb r0, [r0]
	cmp r0, #2
	beq _080303EC
	ldr r0, _0803042C @ => 0x03002128
	ldr r0, [r0, #0x6c]
	cmp r0, #1
	bne _080303EC
	bl FUN_080311B8
_080303EC:
	ldr r3, _0803042C @ => 0x03002128
	lsls r2, r7, #2
	adds r0, r2, r7
	lsls r4, r0, #2
	adds r0, r3, #0
	adds r0, #0x28
	adds r0, r4, r0
	ldr r0, [r0]
	ldr r1, _08030430 @ => 0x0000FFFF
	adds r0, r0, r1
	ldr r1, _08030434 @ => 0x0001FFFE
	mov r8, r2
	cmp r0, r1
	bhi _08030438
	adds r0, r3, #0
	adds r0, #0x24
	adds r0, r4, r0
	ldr r1, [r0]
	ldr r0, [r1, #0xc]
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1, #0xc]
	ldr r1, [r1, #0x58]
	cmp r1, #0
	beq _08030454
	ldr r0, [r1, #0xc]
	ands r0, r2
	b _08030452
	.align 2, 0
_08030428: .4byte gUnk_030047EC
_0803042C: .4byte gUnk_03002128
_08030430: .4byte 0x0000FFFF
_08030434: .4byte 0x0001FFFE
_08030438:
	adds r0, r3, #0
	adds r0, #0x24
	adds r0, r4, r0
	ldr r1, [r0]
	ldr r0, [r1, #0xc]
	movs r2, #0x10
	orrs r0, r2
	str r0, [r1, #0xc]
	ldr r1, [r1, #0x58]
	cmp r1, #0
	beq _08030454
	ldr r0, [r1, #0xc]
	orrs r0, r2
_08030452:
	str r0, [r1, #0xc]
_08030454:
	ldr r6, _080304CC @ => 0x030047EC
	ldrb r0, [r6]
	cmp r0, #2
	beq _08030460
	bl FUN_08030D84
_08030460:
	ldr r5, _080304D0 @ => 0x03002128
	adds r0, r5, #0
	adds r0, #0x80
	ldr r0, [r0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _08030472
	bl _call_via_r0
_08030472:
	ldr r2, _080304D4 @ => 0x030042B0
	lsls r3, r7, #3
	adds r0, r3, r2
	ldrh r1, [r0, #0x10]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov sb, r2
	mov ip, r3
	cmp r4, #0
	beq _080304DC
	mov r2, r8
	adds r0, r2, r7
	lsls r0, r0, #2
	adds r1, r5, #0
	adds r1, #0x2c
	adds r4, r0, r1
	ldr r0, [r4]
	cmp r0, #0
	ble _080304A0
	movs r0, #0
	str r0, [r4]
_080304A0:
	ldr r2, _080304D8 @ => 0x08066FD0
	ldrb r0, [r6]
	movs r3, #0x2c
	muls r0, r3, r0
	adds r1, r2, #0
	adds r1, #0x18
	adds r0, r0, r1
	ldr r1, [r4]
	ldr r0, [r0]
	subs r1, r1, r0
	str r1, [r4]
	ldrb r0, [r6]
	muls r0, r3, r0
	adds r2, #0x20
	adds r0, r0, r2
	ldr r0, [r0]
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080304F0
	str r0, [r4]
	b _080304F0
	.align 2, 0
_080304CC: .4byte gUnk_030047EC
_080304D0: .4byte gUnk_03002128
_080304D4: .4byte gUnk_030042B0
_080304D8: .4byte ROMREF_08066FD0
_080304DC:
	mov r3, r8
	adds r0, r3, r7
	lsls r0, r0, #2
	adds r1, r5, #0
	adds r1, #0x2c
	adds r1, r0, r1
	ldr r0, [r1]
	cmp r0, #0
	bge _080304F0
	str r4, [r1]
_080304F0:
	mov r0, ip
	add r0, sb
	ldrh r1, [r0, #0x10]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08030550
	ldr r0, _08030544 @ => 0x03002128
	mov r2, r8
	adds r1, r2, r7
	lsls r1, r1, #2
	adds r0, #0x2c
	adds r5, r1, r0
	ldr r0, [r5]
	cmp r0, #0
	bge _08030518
	movs r0, #0
	str r0, [r5]
_08030518:
	ldr r2, _08030548 @ => 0x08066FD0
	ldr r4, _0803054C @ => 0x030047EC
	ldrb r0, [r4]
	movs r3, #0x2c
	muls r0, r3, r0
	adds r1, r2, #0
	adds r1, #0x18
	adds r0, r0, r1
	ldr r1, [r5]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r5]
	ldrb r0, [r4]
	muls r0, r3, r0
	adds r2, #0x20
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r1, r0
	ble _08030564
	str r0, [r5]
	b _08030564
	.align 2, 0
_08030544: .4byte gUnk_03002128
_08030548: .4byte ROMREF_08066FD0
_0803054C: .4byte gUnk_030047EC
_08030550:
	ldr r0, _080305DC @ => 0x03002128
	mov r3, r8
	adds r1, r3, r7
	lsls r1, r1, #2
	adds r0, #0x2c
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	ble _08030564
	str r2, [r1]
_08030564:
	mov r2, ip
	add r2, sb
	ldrh r1, [r2, #0x10]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08030660
	ldr r4, _080305DC @ => 0x03002128
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	bne _080305AE
	mov r0, r8
	adds r3, r0, r7
	lsls r3, r3, #2
	adds r0, r4, #0
	adds r0, #0x28
	adds r3, r3, r0
	ldr r1, _080305E0 @ => 0x08066FD0
	ldr r0, _080305E4 @ => 0x030047EC
	ldrb r2, [r0]
	movs r0, #0x2c
	muls r0, r2, r0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _080305E8 @ => 0xFFFF0000
	adds r0, r0, r1
	ldr r1, [r3]
	cmp r1, r0
	ble _080305AE
	movs r0, #0x23
	bl FUN_0804DE0C
	movs r0, #1
	str r0, [r4, #0x7c]
_080305AE:
	ldr r1, _080305DC @ => 0x03002128
	mov r2, r8
	adds r0, r2, r7
	lsls r0, r0, #2
	adds r1, #0x28
	adds r6, r0, r1
	ldr r5, [r6]
	cmp r5, #0
	ble _080305EC
	ldr r1, _080305E0 @ => 0x08066FD0
	ldr r3, _080305E4 @ => 0x030047EC
	ldrb r2, [r3]
	movs r0, #0x2c
	muls r0, r2, r0
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	subs r0, r5, r0
	str r0, [r6]
	cmp r0, #0
	bge _08030612
	movs r0, #0
	b _08030610
	.align 2, 0
_080305DC: .4byte gUnk_03002128
_080305E0: .4byte ROMREF_08066FD0
_080305E4: .4byte gUnk_030047EC
_080305E8: .4byte 0xFFFF0000
_080305EC:
	ldr r2, _08030650 @ => 0x08066FD0
	ldr r3, _08030654 @ => 0x030047EC
	ldrb r0, [r3]
	movs r4, #0x2c
	muls r0, r4, r0
	adds r1, r2, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldr r1, [r0]
	subs r1, r5, r1
	str r1, [r6]
	ldrb r0, [r3]
	muls r0, r4, r0
	adds r2, #0x14
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r1, r0
	bge _08030612
_08030610:
	str r0, [r6]
_08030612:
	ldrb r0, [r3]
	cmp r0, #2
	bne _0803061A
	b _0803071A
_0803061A:
	ldr r4, _08030658 @ => 0x03002128
	ldr r0, [r4, #0x6c]
	cmp r0, #4
	beq _08030624
	b _0803071A
_08030624:
	ldr r0, [r4, #0x7c]
	cmp r0, #1
	bne _0803071A
	mov r3, r8
	adds r0, r3, r7
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x28
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _0803065C @ => 0x0000FFFF
	cmp r1, r0
	bgt _0803071A
	movs r0, #0x64
	bl FUN_080318F0
	movs r0, #0
	str r0, [r4, #0x7c]
	bl FUN_08031A84
	b _0803071A
	.align 2, 0
_08030650: .4byte ROMREF_08066FD0
_08030654: .4byte gUnk_030047EC
_08030658: .4byte gUnk_03002128
_0803065C: .4byte 0x0000FFFF
_08030660:
	ldr r3, _08030684 @ => 0x03002128
	str r0, [r3, #0x7c]
	ldrh r1, [r2, #0x14]
	movs r0, #0xc0
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08030688
	adds r0, r7, #0
	bl FUN_080308A4
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r7, #0
	bl FUN_08031AF0
	b _0803071A
	.align 2, 0
_08030684: .4byte gUnk_03002128
_08030688:
	ldrh r0, [r2, #0x10]
	movs r5, #1
	ands r5, r0
	cmp r5, #0
	beq _080306CC
	mov r1, r8
	adds r0, r1, r7
	lsls r0, r0, #2
	adds r1, r3, #0
	adds r1, #0x28
	adds r5, r0, r1
	ldr r2, _080306C4 @ => 0x08066FD0
	ldr r4, _080306C8 @ => 0x030047EC
	ldrb r0, [r4]
	movs r3, #0x2c
	muls r0, r3, r0
	adds r0, r0, r2
	ldr r1, [r5]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r5]
	ldrb r0, [r4]
	muls r0, r3, r0
	adds r2, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r1, r0
	ble _0803071A
	str r0, [r5]
	b _0803071A
	.align 2, 0
_080306C4: .4byte ROMREF_08066FD0
_080306C8: .4byte gUnk_030047EC
_080306CC:
	mov r2, r8
	adds r0, r2, r7
	lsls r0, r0, #2
	adds r1, r3, #0
	adds r1, #0x28
	adds r3, r0, r1
	ldr r4, [r3]
	cmp r4, #0
	ble _08030700
	ldr r1, _080306F8 @ => 0x08066FD0
	ldr r0, _080306FC @ => 0x030047EC
	ldrb r2, [r0]
	movs r0, #0x2c
	muls r0, r2, r0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	subs r0, r4, r0
	str r0, [r3]
	cmp r0, #0
	bge _0803071A
	b _08030718
	.align 2, 0
_080306F8: .4byte ROMREF_08066FD0
_080306FC: .4byte gUnk_030047EC
_08030700:
	ldr r1, _08030768 @ => 0x08066FD0
	ldr r0, _0803076C @ => 0x030047EC
	ldrb r2, [r0]
	movs r0, #0x2c
	muls r0, r2, r0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r4, r0
	str r0, [r3]
	cmp r0, #0
	ble _0803071A
_08030718:
	str r5, [r3]
_0803071A:
	ldr r3, _08030770 @ => 0x03002128
	mov r1, r8
	adds r0, r1, r7
	lsls r2, r0, #2
	adds r0, r3, #0
	adds r0, #0x24
	adds r0, r2, r0
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0803075C
	adds r0, r3, #0
	adds r0, #0x28
	adds r3, r2, r0
	ldr r1, _08030768 @ => 0x08066FD0
	ldr r0, _0803076C @ => 0x030047EC
	ldrb r2, [r0]
	movs r0, #0x2c

	thumb_func_start FUN_08030744
FUN_08030744: @ 0x08030744
	muls r0, r2, r0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r1, r0, #1
	ldr r0, [r3]
	cmp r0, r1
	blt _0803075C
	subs r0, r1, #1
	str r0, [r3]
_0803075C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030768: .4byte ROMREF_08066FD0
_0803076C: .4byte gUnk_030047EC
_08030770: .4byte gUnk_03002128

	thumb_func_start sub_08030774
sub_08030774: @ 0x08030774
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r0, #0
	ldr r0, _08030830 @ => 0x03002128
	mov r8, r0
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r7, r0, #2
	mov r0, r8
	adds r0, #0x2c
	adds r0, r7, r0
	ldr r3, [r0]
	cmp r3, #0
	beq _080307D4
	mov r5, r8
	adds r5, #0x30
	adds r5, r7, r5
	mov r4, r8
	adds r4, #0x28
	adds r4, r7, r4
	ldr r1, _08030834 @ => 0x08066FD0
	ldr r0, _08030838 @ => 0x030047EC
	ldrb r2, [r0]
	movs r0, #0x2c
	muls r0, r2, r0
	adds r2, r1, #0
	adds r2, #0x24
	adds r2, r0, r2
	asrs r3, r3, #0x10
	adds r1, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, [r2]
	bl __divsi3
	adds r1, r0, #0
	ldr r0, [r4]
	bl __divsi3
	lsls r0, r0, #0x10
	ldr r1, [r5]
	adds r1, r1, r0
	str r1, [r5]
_080307D4:
	adds r0, r6, #0
	movs r1, #0
	bl FUN_0803083C
	adds r0, r6, #0
	bl FUN_080316DC
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	adds r0, r5, #0
	bl FUN_0802C210
	mov r6, r8
	adds r6, #0x28
	adds r6, r7, r6
	ldr r1, [r6]
	bl FUN_0802C314
	mov r4, r8
	adds r4, #0x24
	adds r4, r7, r4
	ldr r1, [r4]
	str r0, [r1, #0x2c]
	adds r0, r5, #0
	bl FUN_0802C254
	ldr r1, [r6]
	bl FUN_0802C314
	ldr r1, [r4]
	str r0, [r1, #0x28]
	mov r0, r8
	adds r0, #0x80
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #0
	beq _08030824
	bl _call_via_r0
_08030824:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030830: .4byte gUnk_03002128
_08030834: .4byte ROMREF_08066FD0
_08030838: .4byte gUnk_030047EC

	thumb_func_start FUN_0803083C
FUN_0803083C: @ 0x0803083C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r4, _080308A0 @ => 0x03002128
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r5, r1, #2
	adds r1, r4, #0
	adds r1, #0x30
	adds r1, r5, r1
	ldr r2, [r1]
	movs r1, #0x80
	lsls r1, r1, #0x14
	adds r2, r2, r1
	lsrs r2, r2, #0x1c
	adds r1, r5, r4
	adds r1, #0x34
	strb r2, [r1]
	bl FUN_080308A4
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x80
	ldr r6, [r0]
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _08030898
	adds r0, r4, #0
	adds r0, #0x24
	adds r0, r5, r0
	ldr r0, [r0]
	adds r2, r4, #0
	adds r2, #0x28
	adds r2, r5, r2
	ldr r2, [r2]
	adds r3, r4, #0
	adds r3, #0x2c
	adds r3, r5, r3
	ldr r3, [r3]
	str r7, [sp]
	ldr r4, [r6, #8]
	bl _call_via_r4
_08030898:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080308A0: .4byte gUnk_03002128

	thumb_func_start FUN_080308A4
FUN_080308A4: @ 0x080308A4
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r6, _080308F4 @ => 0x03002128
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r0, r1, r6
	adds r0, #0x34
	ldrb r3, [r0]
	adds r2, r3, #0
	subs r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bhi _080308F8
	adds r5, r3, #0
	adds r2, r6, #0
	adds r2, #0x24
	adds r2, r1, r2
	ldr r1, [r2]
	adds r1, #0xa7
	ldrb r3, [r1]
	movs r4, #0x11
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r3
	strb r0, [r1]
	ldr r0, [r2]
	ldr r0, [r0, #0x58]
	cmp r0, #0
	beq _0803092A
	adds r2, r0, #0
	adds r2, #0xa7
	ldrb r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r2]
	b _0803092A
	.align 2, 0
_080308F4: .4byte gUnk_03002128
_080308F8:
	cmp r3, #8
	bls _08030928
	movs r4, #0x10
	subs r0, r4, r3
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r2, r6, #0
	adds r2, #0x24
	adds r2, r1, r2
	ldr r1, [r2]
	adds r1, #0xa7
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	ldr r0, [r2]
	ldr r0, [r0, #0x58]
	cmp r0, #0
	beq _0803092A
	adds r1, r0, #0
	adds r1, #0xa7
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	b _0803092A
_08030928:
	adds r5, r2, #0
_0803092A:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_08030934
FUN_08030934: @ 0x08030934
	push {r4, r5, lr}
	ldrh r0, [r1, #8]
	cmp r0, #3
	bne _080309A0
	ldr r4, _080309A8 @ => 0x03002128
	movs r0, #1
	str r0, [r4, #0x64]
	ldr r0, [r4, #0x60]
	cmp r0, #0
	bne _0803095A
	ldr r0, [r4, #0x28]
	str r0, [r4, #0x60]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x5d
	strb r0, [r1]
_0803095A:
	adds r5, r4, #0
	adds r5, #0x5d
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _080309A0
	ldr r0, [r4, #0x6c]
	cmp r0, #6
	bne _080309A0
	movs r0, #0x61
	bl FUN_0804DE0C
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #2
	adds r4, #0x10
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, _080309AC @ => 0x08066E08
	ldr r2, _080309B0 @ => 0x09FB64F4
	ldr r2, [r2]
	movs r3, #0
	bl FUN_0800192C
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r2, [r0]
	ldr r0, [r2, #0xc]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0xc]
_080309A0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080309A8: .4byte gUnk_03002128
_080309AC: .4byte ROMREF_08066E08
_080309B0: .4byte ROMREF_09FB64F4

	thumb_func_start FUN_080309B4
FUN_080309B4: @ 0x080309B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0x90
	lsls r0, r0, #1
	adds r6, r5, r0
	ldrh r0, [r6]
	adds r0, #1
	movs r1, #0
	mov r8, r1
	strh r0, [r6]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r7, r5, r1
	ldrb r4, [r7]
	cmp r4, #1
	beq _08030A64
	cmp r4, #1
	bgt _080309E4
	cmp r4, #0
	beq _080309EA
	b _08030AC6
_080309E4:
	cmp r4, #2
	beq _08030A90
	b _08030AC6
_080309EA:
	lsls r4, r0, #0x10
	lsrs r4, r4, #0x12
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl FUN_08000E44
	cmp r4, #4
	bne _08030AC6
	movs r0, #0
	movs r1, #2
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _08030A60 @ => 0x00000762
	bl FUN_08050820
	str r0, [sp]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	bl FUN_080203A8
	mov r0, sp
	bl FUN_08050940
	adds r2, r0, #0
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2, #0xc]
	adds r3, r2, #0
	adds r3, #0xa9
	ldrb r1, [r3]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0xac
	ldrh r0, [r0]
	lsrs r0, r0, #1
	mvns r0, r0
	adds r1, r2, #0
	adds r1, #0x60
	strh r0, [r1]
	subs r3, #0x47
	movs r1, #1
	movs r0, #1
	strh r0, [r3]
	str r5, [r2, #0x5c]
	str r2, [r5, #0x58]
	mov r0, r8
	strh r0, [r6]
	strb r1, [r7]
	b _08030AC6
	.align 2, 0
_08030A60: .4byte 0x00000762
_08030A64:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bne _08030AC6
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl FUN_08001744
	movs r1, #0xd8
	lsls r1, r1, #0x10
	movs r2, #0xfa
	lsls r2, r2, #0xf
	adds r0, r5, #0
	movs r3, #8
	bl FUN_08001800
	mov r1, r8
	strh r1, [r6]
	movs r0, #2
	strb r0, [r7]
	b _08030AC6
_08030A90:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bne _08030AC6
	ldr r2, _08030AD4 @ => 0x03002128
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r1, [r2, #0x58]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r2, #0x58]
	cmp r1, #0
	bge _08030AB0
	mov r0, r8
	str r0, [r2, #0x58]
_08030AB0:
	bl FUN_08031988
	ldr r0, [r5, #0x58]
	ldr r1, [r0, #0xc]
	orrs r1, r4
	str r1, [r0, #0xc]
	ldr r0, [r5, #0xc]
	orrs r0, r4
	str r0, [r5, #0xc]
	mov r1, r8
	str r1, [r5, #0x58]
_08030AC6:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030AD4: .4byte gUnk_03002128

	thumb_func_start FUN_08030AD8
FUN_08030AD8: @ 0x08030AD8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, _08030BE8 @ => 0x08066DD8
	ldr r1, _08030BEC @ => 0x00000145
	movs r2, #1
	str r2, [sp]
	movs r2, #0x9f
	movs r3, #2
	bl FUN_0802D680
	adds r7, r0, #0
	ldr r0, [r7, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	str r0, [r7, #0x1c]
	ldr r0, [r7, #0xc]
	movs r6, #0x80
	lsls r6, r6, #0xe
	orrs r0, r6
	str r0, [r7, #0xc]
	ldr r5, _08030BF0 @ => 0x03002128
	str r7, [r5, #4]
	movs r0, #3
	movs r1, #0x10
	bl FUN_08045594
	movs r0, #8
	movs r1, #8
	bl FUN_080455AC
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _08030BF4 @ => 0x00000762
	bl FUN_08050820
	str r0, [sp, #4]
	movs r0, #0
	bl FUN_080203A8
	add r0, sp, #4
	bl FUN_08050940
	adds r7, r0, #0
	ldr r0, [r7, #0xc]
	orrs r0, r6
	str r0, [r7, #0xc]
	adds r2, r7, #0
	adds r2, #0xa9
	ldrb r1, [r2]
	movs r4, #0xd
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0xac
	ldrh r0, [r0]
	lsrs r0, r0, #1
	movs r1, #0x97
	lsls r1, r1, #1
	subs r1, r1, r0
	lsls r1, r1, #0x10
	movs r2, #0xfa
	lsls r2, r2, #0xf
	adds r0, r7, #0
	bl FUN_08001728
	str r7, [r5, #0xc]
	movs r0, #4
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _08030BF8 @ => 0x00000763
	bl FUN_08050820
	str r0, [sp, #4]
	movs r0, #2
	bl FUN_080203A8
	movs r0, #0x1e
	bl FUN_080203B8
	add r0, sp, #4
	bl FUN_08050940
	adds r7, r0, #0
	ldr r0, [r7, #0xc]
	orrs r0, r6
	str r0, [r7, #0xc]
	adds r1, r7, #0
	adds r1, #0xa9
	ldrb r0, [r1]
	ands r4, r0
	strb r4, [r1]
	ldr r1, _08030BFC @ => 0x011F0000
	movs r2, #0x8e
	lsls r2, r2, #0x10
	adds r0, r7, #0
	bl FUN_08001728
	str r7, [r5, #8]
	ldr r0, [r5, #4]
	movs r1, #0xef
	lsls r1, r1, #0x10
	ldr r2, [r0, #0x1c]
	movs r3, #0xf
	bl FUN_08001800
	ldr r0, [r5, #0xc]
	adds r1, r0, #0
	adds r1, #0xac
	ldrh r2, [r1]
	lsrs r2, r2, #1
	movs r1, #0xd8
	subs r1, r1, r2
	lsls r1, r1, #0x10
	ldr r2, [r0, #0x1c]
	movs r3, #0xf
	bl FUN_08001800
	ldr r0, [r5, #8]
	movs r1, #0xc9
	lsls r1, r1, #0x10
	ldr r2, [r0, #0x1c]
	movs r3, #0xf
	bl FUN_08001800
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030BE8: .4byte ROMREF_08066DD8
_08030BEC: .4byte 0x00000145
_08030BF0: .4byte gUnk_03002128
_08030BF4: .4byte 0x00000762
_08030BF8: .4byte 0x00000763
_08030BFC: .4byte 0x011F0000

	thumb_func_start FUN_08030C00
FUN_08030C00: @ 0x08030C00
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	add r4, sp, #0xc
	adds r0, r4, #0
	movs r1, #0
	movs r2, #5
	bl memset
	movs r0, #0x3a
	strb r0, [r4, #1]
	ldr r0, _08030CBC @ => 0x03004720
	ldr r0, [r0, #0x14]
	cmp r0, #3
	beq _08030CAE
	ldr r7, _08030CC0 @ => 0x03002128
	ldr r0, [r7, #0x54]
	subs r0, #1
	str r0, [r7, #0x54]
	movs r1, #0x1e
	bl __udivsi3
	adds r6, r0, #0
	movs r1, #0x3c
	bl __udivsi3
	adds r4, r0, #0
	mov r8, r4
	adds r0, r6, #0
	movs r1, #0x3c
	bl __umodsi3
	adds r5, r0, #0
	adds r6, r5, #0
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	cmp r5, r1
	beq _08030C88
	strb r5, [r0]
	add r1, sp, #0xc
	adds r0, r4, #0
	adds r0, #0x30
	strb r0, [r1]
	adds r4, r1, #0
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	adds r0, #0x30
	strb r0, [r4, #2]
	add r4, sp, #0xc
	adds r0, r5, #0
	movs r1, #0xa
	bl __umodsi3
	adds r0, #0x30
	strb r0, [r4, #3]
	movs r0, #4
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, [r7, #8]
	add r1, sp, #0xc
	bl FUN_08050BC8
_08030C88:
	mov r0, r8
	cmp r0, #0
	bne _08030CAE
	cmp r6, #0
	bne _08030CAE
	movs r0, #3
	bl FUN_08031B14
	ldr r0, _08030CC4 @ => 0x00000622
	movs r3, #1
	rsbs r3, r3, #0
	str r6, [sp]
	movs r1, #2
	str r1, [sp, #4]
	str r6, [sp, #8]
	movs r1, #0x78
	movs r2, #0x50
	bl FUN_0800B984
_08030CAE:
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030CBC: .4byte gUnk_03004720
_08030CC0: .4byte gUnk_03002128
_08030CC4: .4byte 0x00000622

	thumb_func_start FUN_08030CC8
FUN_08030CC8: @ 0x08030CC8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08030D04 @ => 0x03002128
	ldr r0, [r5, #0x24]
	cmp r1, r0
	bne _08030D76
	ldr r0, _08030D08 @ => 0x03004720
	ldr r0, [r0, #0x14]
	cmp r0, #3
	beq _08030D76
	ldr r0, [r5, #0x68]
	cmp r0, #0x2d
	beq _08030D70
	movs r0, #0x18
	bl FUN_0804DE0C
	adds r0, r5, #0
	adds r0, #0x34
	ldrb r0, [r0]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi _08030D0C
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #1
	b _08030D14
	.align 2, 0
_08030D04: .4byte gUnk_03002128
_08030D08: .4byte gUnk_03004720
_08030D0C:
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0
_08030D14:
	str r0, [r1]
	ldr r0, _08030D44 @ => 0x03002128
	ldr r0, [r0, #0x28]
	cmp r0, #0
	bge _08030D30
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r2, #0
	ldr r0, [r1]
	cmp r0, #0
	bne _08030D2E
	movs r2, #1
_08030D2E:
	str r2, [r1]
_08030D30:
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _08030D50
	ldr r1, _08030D48 @ => 0x08066DE8
	ldr r0, _08030D4C @ => 0x09FB64F8
	b _08030D54
	.align 2, 0
_08030D44: .4byte gUnk_03002128
_08030D48: .4byte ROMREF_08066DE8
_08030D4C: .4byte ROMREF_09FB64F8
_08030D50:
	ldr r1, _08030D7C @ => 0x08066DE8
	ldr r0, _08030D80 @ => 0x09FB64FC
_08030D54:
	ldr r2, [r0]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_0800192C
	ldr r0, [r4, #0xc]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r4, #0xc]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x3c
	strh r0, [r1]
_08030D70:
	adds r0, r4, #0
	bl FUN_08031A78
_08030D76:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08030D7C: .4byte ROMREF_08066DE8
_08030D80: .4byte ROMREF_09FB64FC

	thumb_func_start FUN_08030D84
FUN_08030D84: @ 0x08030D84
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r2, _08030DC4 @ => 0x03002128
	ldr r1, [r2, #0x60]
	cmp r1, #0
	bne _08030D92
	b _0803109E
_08030D92:
	ldr r3, [r2, #0x64]
	cmp r3, #0
	beq _08030D9A
	b _0803109E
_08030D9A:
	ldr r0, [r2, #0x28]
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r5, r0, #1
	str r3, [r2, #0x60]
	ldr r0, [r2, #0x68]
	cmp r0, #0
	beq _08030DAE
	b _0803109E
_08030DAE:
	adds r0, r2, #0
	adds r0, #0x5d
	ldrb r0, [r0]
	cmp r0, #0xa
	bls _08030DBA
	b _0803109E
_08030DBA:
	lsls r0, r0, #2
	ldr r1, _08030DC8 @ =_08030DCC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08030DC4: .4byte gUnk_03002128
_08030DC8: .4byte _08030DCC
_08030DCC: @ jump table
	.4byte _08030DF8 @ case 0
	.4byte _08030EA4 @ case 1
	.4byte _08030EA4 @ case 2
	.4byte _08030EA4 @ case 3
	.4byte _08031008 @ case 4
	.4byte _08031008 @ case 5
	.4byte _08031008 @ case 6
	.4byte _08031008 @ case 7
	.4byte _08031008 @ case 8
	.4byte _08031008 @ case 9
	.4byte _08031008 @ case 10
_08030DF8:
	ldr r1, _08030E84 @ => 0x08066FD0
	ldr r0, _08030E88 @ => 0x030047EC
	ldrb r2, [r0]
	movs r0, #0x2c
	muls r0, r2, r0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r1, [r0]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	cmp r5, r0
	bge _08030E14
	b _0803109E
_08030E14:
	cmp r5, r1
	ble _08030E1A
	b _0803109E
_08030E1A:
	ldr r6, _08030E8C @ => 0x03002128
	ldr r0, [r6, #0x6c]
	cmp r0, #5
	beq _08030E24
	b _0803109E
_08030E24:
	ldr r0, _08030E90 @ => 0x03004720
	ldr r5, [r0, #0x14]
	cmp r5, #0
	beq _08030E2E
	b _0803109E
_08030E2E:
	movs r0, #0xbc
	bl FUN_0804DE0C
	ldr r0, _08030E94 @ => 0x08066DC8
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
	adds r0, r4, #0
	movs r1, #0
	ldr r2, _08030E98 @ => 0xFFFE8000
	bl FUN_08001744
	ldr r0, _08030E9C @ => FUN_080309B4
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
	movs r0, #0x64
	str r0, [r4]
	ldr r1, _08030EA0 @ => 0x08066D78
	ldr r0, [r6, #0x6c]
	b _08030FE0
	.align 2, 0
_08030E84: .4byte ROMREF_08066FD0
_08030E88: .4byte gUnk_030047EC
_08030E8C: .4byte gUnk_03002128
_08030E90: .4byte gUnk_03004720
_08030E94: .4byte ROMREF_08066DC8
_08030E98: .4byte 0xFFFE8000
_08030E9C: .4byte FUN_080309B4
_08030EA0: .4byte ROMREF_08066D78
_08030EA4:
	ldr r6, _08030F60 @ => 0x03002128
	adds r4, r6, #0
	adds r4, #0x5d
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #2
	adds r3, r6, #0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r2, [r0]
	ldr r0, [r2, #0xc]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl FUN_08000E44
	ldr r0, [r6, #0x6c]
	cmp r0, #6
	beq _08030EDA
	b _0803109E
_08030EDA:
	ldr r1, _08030F64 @ => 0x08066FD0
	ldr r0, _08030F68 @ => 0x030047EC
	ldrb r2, [r0]
	movs r0, #0x2c
	muls r0, r2, r0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, #0
	bge _08030EF2
	adds r1, r0, #3
_08030EF2:
	asrs r1, r1, #2
	cmp r5, r1
	blt _08030F80
	lsls r0, r1, #1
	adds r0, r0, r1
	cmp r5, r0
	bgt _08030F80
	ldr r0, _08030F6C @ => 0x03004720
	ldr r5, [r0, #0x14]
	cmp r5, #0
	beq _08030F0A
	b _0803109E
_08030F0A:
	movs r0, #0xbc
	bl FUN_0804DE0C
	ldr r0, _08030F70 @ => 0x08066DC8
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
	adds r0, r4, #0
	movs r1, #0
	ldr r2, _08030F74 @ => 0xFFFE8000
	bl FUN_08001744
	ldr r0, _08030F78 @ => FUN_080309B4
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
	movs r0, #0x96
	str r0, [r4]
	ldr r1, _08030F7C @ => 0x08066D78
	ldr r0, [r6, #0x6c]
	b _08030FE0
	.align 2, 0
_08030F60: .4byte gUnk_03002128
_08030F64: .4byte ROMREF_08066FD0
_08030F68: .4byte gUnk_030047EC
_08030F6C: .4byte gUnk_03004720
_08030F70: .4byte ROMREF_08066DC8
_08030F74: .4byte 0xFFFE8000
_08030F78: .4byte FUN_080309B4
_08030F7C: .4byte ROMREF_08066D78
_08030F80:
	ldr r0, _08030FF0 @ => 0x03004720
	ldr r5, [r0, #0x14]
	cmp r5, #0
	beq _08030F8A
	b _0803109E
_08030F8A:
	movs r0, #0xbc
	bl FUN_0804DE0C
	ldr r0, _08030FF4 @ => 0x08066DC8
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
	adds r0, r4, #0
	movs r1, #0
	ldr r2, _08030FF8 @ => 0xFFFE8000
	bl FUN_08001744
	ldr r0, _08030FFC @ => FUN_080309B4
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
	movs r0, #0x32
	str r0, [r4]
	ldr r1, _08031000 @ => 0x08066D78
	ldr r0, _08031004 @ => 0x03002128
	ldr r0, [r0, #0x6c]
_08030FE0:
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _0803109E
	bl FUN_08031A84
	b _0803109E
	.align 2, 0
_08030FF0: .4byte gUnk_03004720
_08030FF4: .4byte ROMREF_08066DC8
_08030FF8: .4byte 0xFFFE8000
_08030FFC: .4byte FUN_080309B4
_08031000: .4byte ROMREF_08066D78
_08031004: .4byte gUnk_03002128
_08031008:
	ldr r6, _080310AC @ => 0x03002128
	ldr r0, [r6, #0x6c]
	cmp r0, #0
	bne _0803109E
	ldr r1, _080310B0 @ => 0x08066FD0
	ldr r0, _080310B4 @ => 0x030047EC
	ldrb r2, [r0]
	movs r0, #0x2c
	muls r0, r2, r0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r4, [r0]
	adds r0, r4, #0
	movs r1, #3
	bl __divsi3
	cmp r5, r0
	blt _0803109E
	cmp r5, r4
	bgt _0803109E
	ldr r0, _080310B8 @ => 0x03004720
	ldr r5, [r0, #0x14]
	cmp r5, #0
	bne _0803109A
	movs r0, #0xbc
	bl FUN_0804DE0C
	ldr r0, _080310BC @ => 0x08066DC8
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
	adds r0, r4, #0
	movs r1, #0
	ldr r2, _080310C0 @ => 0xFFFE8000
	bl FUN_08001744
	ldr r0, _080310C4 @ => FUN_080309B4
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
	movs r0, #0x64
	str r0, [r4]
	ldr r1, _080310C8 @ => 0x08066D78
	ldr r0, [r6, #0x6c]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _0803109A
	bl FUN_08031A84
_0803109A:
	bl FUN_08031A84
_0803109E:
	ldr r1, _080310AC @ => 0x03002128
	movs r0, #0
	str r0, [r1, #0x64]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080310AC: .4byte gUnk_03002128
_080310B0: .4byte ROMREF_08066FD0
_080310B4: .4byte gUnk_030047EC
_080310B8: .4byte gUnk_03004720
_080310BC: .4byte ROMREF_08066DC8
_080310C0: .4byte 0xFFFE8000
_080310C4: .4byte FUN_080309B4
_080310C8: .4byte ROMREF_08066D78

	thumb_func_start FUN_080310CC
FUN_080310CC: @ 0x080310CC
	push {r4, r5, lr}
	ldr r0, _080310E8 @ => 0x03004720
	ldr r0, [r0, #0x14]
	cmp r0, #3
	bne _080310F0
	ldr r0, _080310EC @ => 0x03002128
	ldr r0, [r0, #0x1c]
	movs r1, #0xf0
	movs r2, #4
	movs r3, #5
	bl FUN_08001810
	b _080311A8
	.align 2, 0
_080310E8: .4byte gUnk_03004720
_080310EC: .4byte gUnk_03002128
_080310F0:
	ldr r1, _08031104 @ => 0x03002128
	ldr r0, [r1, #0x6c]
	cmp r0, #7
	bne _08031108
	ldr r0, [r1, #0x70]
	cmp r0, #1
	bne _0803111A
	bl FUN_0800B9D0
	b _0803111A
	.align 2, 0
_08031104: .4byte gUnk_03002128
_08031108:
	ldr r0, [r1, #0x70]
	cmp r0, #6
	bne _0803111A
	ldr r0, [r1, #0x1c]
	movs r1, #0xf0
	movs r2, #4
	movs r3, #5
	bl FUN_08001810
_0803111A:
	ldr r1, _08031154 @ => 0x03002128
	ldr r0, [r1, #0x70]
	subs r0, #1
	str r0, [r1, #0x70]
	cmp r0, #0
	bgt _080311A8
	ldr r5, _08031158 @ => 0x030047F0
	adds r4, r1, #0
_0803112A:
	ldr r1, [r5]
	adds r1, #2
	movs r0, #0
	bl FUN_080424F8
	adds r2, r0, #0
	ldr r0, [r4, #0x6c]
	cmp r2, r0
	beq _0803112A
	ldr r3, _08031154 @ => 0x03002128
	str r2, [r3, #0x6c]
	ldr r0, _0803115C @ => 0x08066D78
	lsls r1, r2, #3
	adds r1, r1, r0
	ldrh r0, [r1]
	str r0, [r3, #0x70]
	cmp r2, #2
	bne _08031160
	movs r0, #0
	str r0, [r3, #0x74]
	b _08031172
	.align 2, 0
_08031154: .4byte gUnk_03002128
_08031158: .4byte gUnk_030047F0
_0803115C: .4byte ROMREF_08066D78
_08031160:
	cmp r2, #4
	bne _0803116A
	movs r0, #0
	str r0, [r3, #0x7c]
	b _08031172
_0803116A:
	cmp r2, #1
	bne _08031172
	movs r0, #0
	str r0, [r3, #0x78]
_08031172:
	movs r0, #4
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r4, _080311B0 @ => 0x03002128
	ldr r5, [r4, #0x1c]
	ldr r1, _080311B4 @ => 0x08066D78
	ldr r0, [r4, #0x6c]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0, #2]
	bl FUN_08050820
	adds r1, r0, #0
	adds r0, r5, #0
	bl FUN_08050BC8
	ldr r0, [r4, #0x1c]
	movs r1, #0x48
	movs r2, #4
	movs r3, #5
	bl FUN_08001810
	movs r0, #0x2a
	bl FUN_0804DE0C
_080311A8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080311B0: .4byte gUnk_03002128
_080311B4: .4byte ROMREF_08066D78

	thumb_func_start FUN_080311B8
FUN_080311B8: @ 0x080311B8
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _08031284 @ => 0x03002128
	ldr r0, [r6, #0x24]
	movs r3, #0x1a
	ldrsh r1, [r0, r3]
	movs r3, #0x1e
	ldrsh r2, [r0, r3]
	adds r0, r1, #0
	adds r1, r2, #0
	movs r2, #0
	bl FUN_08038DAC
	cmp r0, #0x24
	bne _080312A8
	ldr r3, _08031288 @ => 0x08066FD0
	ldr r0, _0803128C @ => 0x030047EC
	ldrb r1, [r0]
	movs r0, #0x2c
	adds r2, r1, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0xc
	adds r0, r2, r0
	ldr r0, [r0]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ldr r1, [r6, #0x28]
	cmp r1, r0
	blt _080312A4
	adds r0, r3, #0
	adds r0, #0x20
	adds r0, r2, r0
	ldr r0, [r0]
	ldr r2, [r6, #0x2c]
	cmn r2, r0
	ble _080312A8
	cmp r2, r0
	bge _080312A8
	ldr r0, [r6, #0x78]
	adds r0, #1
	str r0, [r6, #0x78]
	cmp r0, #0x1e
	bne _080312A8
	ldr r0, _08031290 @ => 0x03004720
	ldr r5, [r0, #0x14]
	cmp r5, #0
	bne _0803127C
	movs r0, #0xbc
	bl FUN_0804DE0C
	ldr r0, _08031294 @ => 0x08066DC8
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
	adds r0, r4, #0
	movs r1, #0
	ldr r2, _08031298 @ => 0xFFFE8000
	bl FUN_08001744
	ldr r0, _0803129C @ => FUN_080309B4
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
	movs r3, #0x98
	lsls r3, r3, #1
	adds r4, r4, r3
	movs r0, #0x14
	str r0, [r4]
	ldr r1, _080312A0 @ => 0x08066D78
	ldr r0, [r6, #0x6c]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _0803127C
	bl FUN_08031A84
_0803127C:
	ldr r1, _08031284 @ => 0x03002128
	movs r0, #0
	str r0, [r1, #0x78]
	b _080312A8
	.align 2, 0
_08031284: .4byte gUnk_03002128
_08031288: .4byte ROMREF_08066FD0
_0803128C: .4byte gUnk_030047EC
_08031290: .4byte gUnk_03004720
_08031294: .4byte ROMREF_08066DC8
_08031298: .4byte 0xFFFE8000
_0803129C: .4byte FUN_080309B4
_080312A0: .4byte ROMREF_08066D78
_080312A4:
	movs r0, #0
	str r0, [r6, #0x78]
_080312A8:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start FUN_080312B0
FUN_080312B0: @ 0x080312B0
	push {r4, r5, lr}
	ldr r5, _08031328 @ => 0x03002128
	ldr r4, [r5, #0x28]
	cmp r4, #0
	bge _080312BC
	rsbs r4, r4, #0
_080312BC:
	cmp r4, #0
	bge _080312C2
	adds r4, #0xf
_080312C2:
	asrs r4, r4, #4
	ldr r1, _0803132C @ => 0x08066FD0
	ldr r0, _08031330 @ => 0x030047EC
	ldrb r2, [r0]
	movs r0, #0x2c
	muls r0, r2, r0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xa
	bl __divsi3
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_0802C334
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #9
	bls _080312F0
	movs r1, #9
_080312F0:
	ldr r0, [r5]
	bl FUN_08000E44
	ldr r0, [r5, #0x20]
	cmp r0, #0
	bne _08031304
	movs r0, #0x1c
	bl FUN_0804DE0C
	str r0, [r5, #0x20]
_08031304:
	ldr r4, [r5, #0x20]
	ldr r0, [r5, #0x28]
	cmp r0, #0
	bge _0803130E
	rsbs r0, r0, #0
_0803130E:
	ldr r1, _08031334 @ => 0x0000051E
	bl FUN_0802C314
	adds r1, r0, #0
	ldr r0, _08031338 @ => 0x00001770
	adds r1, r1, r0
	adds r0, r4, #0
	bl FUN_0804E174
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08031328: .4byte gUnk_03002128
_0803132C: .4byte ROMREF_08066FD0
_08031330: .4byte gUnk_030047EC
_08031334: .4byte 0x0000051E
_08031338: .4byte 0x00001770

	thumb_func_start FUN_0803133C
FUN_0803133C: @ 0x0803133C
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _080313EC @ => 0x03002128
	ldr r0, [r6, #0x24]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08031352
	b _080314B6
_08031352:
	ldr r1, _080313F0 @ => 0x08066FD0
	ldr r0, _080313F4 @ => 0x030047EC
	ldrb r2, [r0]
	movs r0, #0x2c
	muls r0, r2, r0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #7
	bl __divsi3
	adds r1, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r2, [r6, #0x28]
	cmp r2, r0
	bge _08031378
	b _0803149C
_08031378:
	ldr r0, [r6, #0x6c]
	cmp r0, #3
	bne _0803140C
	ldr r0, _080313F8 @ => 0x03004720
	ldr r5, [r0, #0x14]
	cmp r5, #0
	bne _08031460
	movs r0, #0xbc
	bl FUN_0804DE0C
	ldr r0, _080313FC @ => 0x08066DC8
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
	adds r0, r4, #0
	movs r1, #0
	ldr r2, _08031400 @ => 0xFFFE8000
	bl FUN_08001744
	ldr r0, _08031404 @ => FUN_080309B4
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
	movs r0, #0x64
	str r0, [r4]
	ldr r1, _08031408 @ => 0x08066D78
	ldr r0, [r6, #0x6c]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _08031460
	bl FUN_08031A84
	b _08031460
	.align 2, 0
_080313EC: .4byte gUnk_03002128
_080313F0: .4byte ROMREF_08066FD0
_080313F4: .4byte gUnk_030047EC
_080313F8: .4byte gUnk_03004720
_080313FC: .4byte ROMREF_08066DC8
_08031400: .4byte 0xFFFE8000
_08031404: .4byte FUN_080309B4
_08031408: .4byte ROMREF_08066D78
_0803140C:
	ldr r0, _08031488 @ => 0x03004720
	ldr r5, [r0, #0x14]
	cmp r5, #0
	bne _08031460
	ldr r0, _0803148C @ => 0x08066DC8
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
	adds r0, r4, #0
	movs r1, #0
	ldr r2, _08031490 @ => 0xFFFE8000
	bl FUN_08001744
	ldr r0, _08031494 @ => FUN_080309B4
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
	movs r0, #0x32
	rsbs r0, r0, #0
	str r0, [r4]
_08031460:
	movs r0, #0x20
	bl FUN_0804DE0C
	ldr r4, _08031498 @ => 0x03002128
	movs r0, #0
	str r0, [r4, #0x50]
	movs r0, #2
	bl FUN_08031B14
	ldr r0, [r4, #0x28]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r0, #0
	movs r1, #1
	bl FUN_0803083C
	b _080314B6
	.align 2, 0
_08031488: .4byte gUnk_03004720
_0803148C: .4byte ROMREF_08066DC8
_08031490: .4byte 0xFFFE8000
_08031494: .4byte FUN_080309B4
_08031498: .4byte gUnk_03002128
_0803149C:
	lsls r0, r1, #2
	adds r0, r0, r1
	cmp r2, r0
	blt _080314B6
	movs r0, #1
	bl FUN_08031B14
	ldr r0, [r6, #0x28]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x28]
_080314B6:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080314C0
FUN_080314C0: @ 0x080314C0
	push {r4, lr}
	ldr r0, [sp, #8]
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	cmp r0, #0
	beq _08031520
	adds r0, r3, #0
	adds r0, #9
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r4, _0803150C @ => 0x03002128
	adds r0, r4, #0
	adds r0, #0x35
	ldrb r1, [r0]
	cmp r3, r1
	beq _08031598
	strb r3, [r0]
	ldr r0, [r4, #0x24]
	ldr r2, _08031510 @ => 0x09FB6508
	ldr r1, _08031514 @ => 0x030047EC
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r2, r3, #4
	ldr r1, [r1]
	adds r1, r1, r2
	ldr r2, _08031518 @ => 0x09FB64E4
	ldr r2, [r2, #4]
	movs r3, #0
	bl FUN_0800192C
	ldr r2, [r4, #0x24]
	ldr r0, [r2, #0xc]
	movs r1, #0x10
	orrs r0, r1
	ldr r1, _0803151C @ => 0xFFBFFFFB
	ands r0, r1
	b _08031596
	.align 2, 0
_0803150C: .4byte gUnk_03002128
_08031510: .4byte ROMREF_09FB6508
_08031514: .4byte gUnk_030047EC
_08031518: .4byte ROMREF_09FB64E4
_0803151C: .4byte 0xFFBFFFFB
_08031520:
	ldr r1, _08031560 @ => 0x03002128
	ldr r2, [r1, #0x28]
	cmp r2, #0
	bge _08031530
	adds r0, r3, #0
	adds r0, #0x12
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08031530:
	adds r0, r1, #0
	adds r0, #0x35
	ldrb r4, [r0]
	cmp r3, r4
	beq _0803158C
	strb r3, [r0]
	cmp r2, #0
	bge _08031570
	ldr r0, [r1, #0x24]
	ldr r2, _08031564 @ => 0x09FB6508
	ldr r1, _08031568 @ => 0x030047EC
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r2, r3, #4
	ldr r1, [r1]
	adds r1, r1, r2
	ldr r2, _0803156C @ => 0x09FB64E4
	ldr r2, [r2, #8]
	movs r3, #0
	bl FUN_0800192C
	b _0803158C
	.align 2, 0
_08031560: .4byte gUnk_03002128
_08031564: .4byte ROMREF_09FB6508
_08031568: .4byte gUnk_030047EC
_0803156C: .4byte ROMREF_09FB64E4
_08031570:
	ldr r0, [r1, #0x24]
	ldr r2, _080315A0 @ => 0x09FB6508
	ldr r1, _080315A4 @ => 0x030047EC
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r2, r3, #4
	ldr r1, [r1]
	adds r1, r1, r2
	ldr r2, _080315A8 @ => 0x09FB64E4
	ldr r2, [r2]
	movs r3, #0
	bl FUN_0800192C
_0803158C:
	ldr r0, _080315AC @ => 0x03002128
	ldr r2, [r0, #0x24]
	ldr r0, [r2, #0xc]
	movs r1, #4
	orrs r0, r1
_08031596:
	str r0, [r2, #0xc]
_08031598:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080315A0: .4byte ROMREF_09FB6508
_080315A4: .4byte gUnk_030047EC
_080315A8: .4byte ROMREF_09FB64E4
_080315AC: .4byte gUnk_03002128

	thumb_func_start FUN_080315B0
FUN_080315B0: @ 0x080315B0
	push {r4, r5, lr}
	movs r0, #0
	bl FUN_080308A4
	ldr r1, _080315FC @ => 0x03002128
	ldr r2, [r1, #0x24]
	ldr r1, _08031600 @ => 0x08067108
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r1, [r2, #0x1c]
	ldr r0, [r0]
	adds r4, r1, r0
	ldr r0, _08031604 @ => 0x03002C40
	ldr r3, [r0]
	cmp r3, #0
	beq _08031642
	movs r5, #0xd
	rsbs r5, r5, #0
_080315D6:
	ldrh r0, [r3, #8]
	adds r1, r0, #0
	adds r2, r0, #0
	cmp r1, #0x20
	beq _080315E8
	cmp r1, #3
	beq _080315E8
	cmp r1, #0x1f
	bne _08031610
_080315E8:
	ldr r1, [r3, #0xc]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08031608
	movs r0, #4
	orrs r1, r0
	b _0803160E
	.align 2, 0
_080315FC: .4byte gUnk_03002128
_08031600: .4byte ROMREF_08067108
_08031604: .4byte gUnk_03002C40
_08031608:
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
_0803160E:
	str r1, [r3, #0xc]
_08031610:
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bne _0803163C
	ldr r0, [r3, #0x1c]
	cmp r0, r4
	ble _08031630
	adds r2, r3, #0
	adds r2, #0xa9
	ldrb r0, [r2]
	adds r1, r5, #0
	ands r1, r0
	movs r0, #8
	orrs r1, r0
	strb r1, [r2]
	b _0803163C
_08031630:
	adds r2, r3, #0
	adds r2, #0xa9
	ldrb r0, [r2]
	movs r1, #0xc
	orrs r0, r1
	strb r0, [r2]
_0803163C:
	ldr r3, [r3]
	cmp r3, #0
	bne _080315D6
_08031642:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start CarCommercials_Terminate
CarCommercials_Terminate: @ 0x08031648
	push {lr}
	movs r0, #0x3f
	movs r1, #0
	bl FUN_0804582C
	ldr r0, _08031680 @ => 0x03002128
	ldr r0, [r0, #0x20]
	bl FUN_0804E03C
	bl FUN_08009994
	bl FUN_0800B9D0
	ldr r0, _08031684 @ => 0x03002C40
	bl FUN_08000BF8
	bl FUN_08046D60
	bl FUN_08039574
	bl FUN_08047464
	ldr r0, _08031688 @ => 0x030042B0
	ldrb r0, [r0, #6]
	bl FUN_08047074
	pop {r0}
	bx r0
	.align 2, 0
_08031680: .4byte gUnk_03002128
_08031684: .4byte gUnk_03002C40
_08031688: .4byte gUnk_030042B0
