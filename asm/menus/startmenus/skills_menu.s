.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start SkillsMenu_Init
SkillsMenu_Init: @ 0x0800A690
	push {r4, r5, r6, lr}
	sub sp, #0x1c
	movs r0, #0
	bl FUN_0800C558
	movs r0, #0x80
	lsls r0, r0, #5
	bl FUN_0800C5EC
	ldr r0, _0800A748 @ => 0x0805A3E8
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C418
	ldr r0, _0800A74C @ => 0x0805A3EC
	ldr r1, [r0]
	movs r0, #2
	bl FUN_0800C418
	ldr r0, _0800A750 @ => 0x0805A3F0
	ldr r4, [r0]
	movs r0, #1
	adds r1, r4, #0
	bl FUN_0800C418
	ldr r0, _0800A754 @ => 0x0805A3F4
	ldr r1, [r0]
	movs r0, #0
	bl FUN_0800C418
	movs r0, #2
	bl FUN_0800C5FC
	movs r0, #1
	bl FUN_0800C5FC
	movs r0, #0
	bl FUN_0800C5FC
	adds r0, r4, #0
	bl FUN_0801FE58
	ldr r0, _0800A758 @ => 0x03004720
	movs r4, #0
	str r4, [r0, #0x14]
	ldr r0, _0800A75C @ => 0x030031EC
	str r4, [r0]
	ldr r0, _0800A760 @ => 0x030031E4
	str r4, [r0]
	ldr r0, _0800A764 @ => 0x030031B4
	str r4, [r0]
	ldr r0, _0800A768 @ => 0x030031E8
	str r4, [r0]
	movs r0, #3
	movs r1, #0xd3
	bl FUN_08048284
	movs r5, #0
	movs r6, #0
	ldr r2, _0800A76C @ => 0x08CCFB58
	str r4, [sp]
	str r4, [sp, #4]
	movs r0, #0x10
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r6, [sp, #0x10]
	str r4, [sp, #0x14]
	add r0, sp, #0x18
	movs r1, #2
	movs r3, #1
	bl FUN_0800D83C
	movs r0, #1
	movs r1, #5
	movs r2, #2
	movs r3, #2
	bl FUN_08021428
	bl FUN_0800AA14
	bl FUN_0800B2C0
	ldr r0, _0800A770 @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800A774
	movs r0, #0x3f
	bl FUN_08045864
	b _0800A77C
	.align 2, 0
_0800A748: .4byte ROMREF_0805A3E8
_0800A74C: .4byte ROMREF_0805A3EC
_0800A750: .4byte ROMREF_0805A3F0
_0800A754: .4byte ROMREF_0805A3F4
_0800A758: .4byte gUnk_03004720
_0800A75C: .4byte gUnk_030031EC
_0800A760: .4byte gUnk_030031E4
_0800A764: .4byte gUnk_030031B4
_0800A768: .4byte gUnk_030031E8
_0800A76C: .4byte ROMREF_08CCFB58
_0800A770: .4byte gUnk_03004374
_0800A774:
	movs r0, #0x3f
	movs r1, #0
	bl FUN_080457F4
_0800A77C:
	add sp, #0x1c
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start SkillsMenu_Handler
SkillsMenu_Handler: @ 0x0800A784
	push {r4, lr}
	ldr r0, _0800A7A0 @ => 0x030031B0
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800A7A4 @ => 0x03004720
	ldr r0, [r0, #0x14]
	cmp r0, #4
	bls _0800A796
	b _0800A948
_0800A796:
	lsls r0, r0, #2
	ldr r1, _0800A7A8 @ =_0800A7AC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800A7A0: .4byte gUnk_030031B0
_0800A7A4: .4byte gUnk_03004720
_0800A7A8: .4byte _0800A7AC
_0800A7AC: @ jump table
	.4byte _0800A7C0 @ case 0
	.4byte _0800A80E @ case 1
	.4byte _0800A862 @ case 2
	.4byte _0800A8C2 @ case 3
	.4byte _0800A944 @ case 4
_0800A7C0:
	bl FUN_0800AE90
	ldr r0, _0800A7E4 @ => 0x030031B8
	ldr r0, [r0]
	cmp r0, #0
	bne _0800A7CE
	b _0800A948
_0800A7CE:
	ldr r0, _0800A7E8 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0800A7EC
	bl FUN_0800B1DC
	b _0800A93A
	.align 2, 0
_0800A7E4: .4byte gUnk_030031B8
_0800A7E8: .4byte gUnk_030042B0
_0800A7EC:
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0800A7FA
	bl FUN_0800B108
	b _0800A934
_0800A7FA:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0800A804
	b _0800A948
_0800A804:
	movs r0, #9
	movs r1, #0xa
	bl FUN_0800B31C
	b _0800A934
_0800A80E:
	bl FUN_0800AE90
	ldr r0, _0800A834 @ => 0x030031B8
	ldr r0, [r0]
	cmp r0, #0
	bne _0800A81C
	b _0800A948
_0800A81C:
	ldr r0, _0800A838 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0800A83C
	bl FUN_0800B1DC
	movs r0, #0xad
	b _0800A936
	.align 2, 0
_0800A834: .4byte gUnk_030031B8
_0800A838: .4byte gUnk_030042B0
_0800A83C:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800A84E
	movs r0, #0xa
	movs r1, #0xb
	bl FUN_0800B31C
	b _0800A934
_0800A84E:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0800A858
	b _0800A948
_0800A858:
	movs r0, #0xa
	movs r1, #9
	bl FUN_0800B31C
	b _0800A934
_0800A862:
	bl FUN_0800AE90
	ldr r0, _0800A884 @ => 0x030031B8
	ldr r0, [r0]
	cmp r0, #0
	beq _0800A948
	ldr r0, _0800A888 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0800A88C
	bl FUN_0800B1DC
	movs r0, #0xad
	b _0800A936
	.align 2, 0
_0800A884: .4byte gUnk_030031B8
_0800A888: .4byte gUnk_030042B0
_0800A88C:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800A89E
	movs r0, #0xb
	movs r1, #0xc
	bl FUN_0800B31C
	b _0800A934
_0800A89E:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800A8B0
	movs r0, #0xb
	movs r1, #0xa
	bl FUN_0800B31C
	b _0800A934
_0800A8B0:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800A948
	movs r0, #0xb
	movs r1, #9
	bl FUN_0800B31C
	b _0800A934
_0800A8C2:
	bl FUN_0800AE90
	ldr r0, _0800A8E4 @ => 0x030031B8
	ldr r0, [r0]
	cmp r0, #0
	beq _0800A948
	ldr r0, _0800A8E8 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0800A8EC
	bl FUN_0800B1DC
	movs r0, #0xad
	b _0800A936
	.align 2, 0
_0800A8E4: .4byte gUnk_030031B8
_0800A8E8: .4byte gUnk_030042B0
_0800A8EC:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800A928
	ldr r0, _0800A908 @ => 0x030031E4
	ldr r0, [r0]
	cmp r0, #2
	bhi _0800A90C
	movs r0, #0xc
	movs r1, #9
	bl FUN_0800B31C
	b _0800A914
	.align 2, 0
_0800A908: .4byte gUnk_030031E4
_0800A90C:
	movs r0, #0xc
	movs r1, #0xb
	bl FUN_0800B31C
_0800A914:
	movs r0, #0xb2
	bl FUN_0804DE0C
	ldr r1, _0800A924 @ => 0x030031B0
	movs r0, #1
	str r0, [r1]
	b _0800A948
	.align 2, 0
_0800A924: .4byte gUnk_030031B0
_0800A928:
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0800A948
	bl FUN_0800B184
_0800A934:
	movs r0, #0xb2
_0800A936:
	bl FUN_0804DE0C
_0800A93A:
	ldr r0, _0800A940 @ => 0x030031B0
	str r4, [r0]
	b _0800A948
	.align 2, 0
_0800A940: .4byte gUnk_030031B0
_0800A944:
	bl FUN_0800B2DC
_0800A948:
	ldr r0, _0800A95C @ => 0x030031B0
	ldr r0, [r0]
	cmp r0, #0
	beq _0800A954
	bl FUN_0800A960
_0800A954:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800A95C: .4byte gUnk_030031B0

	thumb_func_start FUN_0800A960
FUN_0800A960: @ 0x0800A960
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _0800A978 @ => 0x03004720
	ldr r0, [r0, #0x14]
	cmp r0, #4
	bhi _0800A9FE
	lsls r0, r0, #2
	ldr r1, _0800A97C @ =_0800A980
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800A978: .4byte gUnk_03004720
_0800A97C: .4byte _0800A980
_0800A980: @ jump table
	.4byte _0800A994 @ case 0
	.4byte _0800A9FE @ case 1
	.4byte _0800A9FE @ case 2
	.4byte _0800A9DC @ case 3
	.4byte _0800A9FE @ case 4
_0800A994:
	ldr r0, _0800A9D0 @ => 0x03004790
	ldr r0, [r0, #0x24]
	ldr r4, _0800A9D4 @ => 0x0805A498
	movs r2, #0x24
	ldrsh r1, [r4, r2]
	ldr r5, _0800A9D8 @ => 0x030031EC
	ldr r3, [r5]
	lsls r2, r3, #2
	adds r2, r2, r3
	lsls r2, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #0x10
	movs r3, #0x26
	ldrsh r2, [r4, r3]
	lsls r2, r2, #0x10
	bl FUN_08001728
	movs r0, #5
	str r0, [sp]
	movs r0, #1
	movs r1, #0xc
	movs r2, #6
	movs r3, #0x10
	bl FUN_0800C790
	ldrb r1, [r5]
	movs r0, #8
	bl FUN_0800AC98
	b _0800A9FE
	.align 2, 0
_0800A9D0: .4byte gUnk_03004790
_0800A9D4: .4byte ROMREF_0805A498
_0800A9D8: .4byte gUnk_030031EC
_0800A9DC:
	ldr r0, _0800AA08 @ => 0x03004790
	ldr r0, [r0, #0x30]
	ldr r2, _0800AA0C @ => 0x0805A498
	movs r3, #0x30
	ldrsh r1, [r2, r3]
	lsls r1, r1, #0x10
	movs r3, #0x32
	ldrsh r2, [r2, r3]
	ldr r3, _0800AA10 @ => 0x030031E4
	ldr r4, [r3]
	lsls r3, r4, #3
	adds r3, r3, r4
	lsls r3, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #0x10
	bl FUN_08001728
_0800A9FE:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800AA08: .4byte gUnk_03004790
_0800AA0C: .4byte ROMREF_0805A498
_0800AA10: .4byte gUnk_030031E4

	thumb_func_start FUN_0800AA14
FUN_0800AA14: @ 0x0800AA14
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	movs r0, #0
	mov r8, r0
	ldr r0, _0800AAC0 @ => 0x03003DF0
	ldr r1, _0800AAC4 @ => 0x0000032D
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #5
	cmp r1, #0
	beq _0800AA42
_0800AA2E:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	subs r0, r1, r2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0800AA2E
_0800AA42:
	movs r4, #0
_0800AA44:
	adds r0, r4, #0
	bl FUN_0800B260
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	bls _0800AA44
	ldr r5, _0800AAC8 @ => 0x0805A418
	ldr r4, _0800AACC @ => 0x0805A498
	ldr r0, [r4, #0x18]
	str r0, [sp]
	movs r0, #6
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0
	bl FUN_0802D6FC
	ldr r6, _0800AAD0 @ => 0x03004790
	ldr r0, [r6, #0x18]
	movs r1, #1
	movs r2, #2
	movs r3, #2
	bl FUN_0800B0A8
	ldr r0, [r6, #0x18]
	ldr r1, _0800AAC0 @ => 0x03003DF0
	ldrb r1, [r1, #0x1d]
	bl FUN_08000E44
	ldr r0, [r4, #0x1c]
	str r0, [sp]
	movs r0, #7
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0
	bl FUN_0802D6FC
	ldr r0, [r6, #0x1c]
	movs r1, #1
	movs r2, #2
	movs r3, #2
	bl FUN_0800B0A8
	bl FUN_08021320
	cmp r0, #1
	bls _0800AADC
	ldr r4, [r6, #0x1c]
	ldr r0, _0800AAD4 @ => 0x0000026E
	bl FUN_080213F8
	movs r1, #6
	cmp r0, #0
	beq _0800AAB4
	movs r1, #8
_0800AAB4:
	adds r0, r4, #0
	bl FUN_08000E44
	ldr r1, _0800AAD8 @ => 0x030031B4
	movs r0, #1
	b _0800AAE8
	.align 2, 0
_0800AAC0: .4byte gUnk_03003DF0
_0800AAC4: .4byte 0x0000032D
_0800AAC8: .4byte ROMREF_0805A418
_0800AACC: .4byte ROMREF_0805A498
_0800AAD0: .4byte gUnk_03004790
_0800AAD4: .4byte 0x0000026E
_0800AAD8: .4byte gUnk_030031B4
_0800AADC:
	ldr r0, [r6, #0x1c]
	movs r1, #9
	bl FUN_08000E44
	ldr r1, _0800AB34 @ => 0x030031B4
	movs r0, #0
_0800AAE8:
	str r0, [r1]
	ldr r2, _0800AB38 @ => 0x0805A418
	ldr r0, _0800AB3C @ => 0x0805A498
	ldr r0, [r0, #0x20]
	str r0, [sp]
	movs r0, #8
	movs r1, #0
	movs r3, #0
	bl FUN_0802D6FC
	ldr r4, _0800AB40 @ => 0x03004790
	ldr r0, [r4, #0x20]
	movs r1, #1
	movs r2, #2
	movs r3, #2
	bl FUN_0800B0A8
	bl FUN_08021320
	cmp r0, #0
	beq _0800AB24
	bl FUN_08021320
	cmp r0, #1
	bne _0800AB48
	movs r0, #0x30
	bl FUN_080213F8
	cmp r0, #0
	bne _0800AB48
_0800AB24:
	ldr r0, [r4, #0x20]
	movs r1, #9
	bl FUN_08000E44
	ldr r1, _0800AB44 @ => 0x030031E8
	movs r0, #0
	b _0800AB56
	.align 2, 0
_0800AB34: .4byte gUnk_030031B4
_0800AB38: .4byte ROMREF_0805A418
_0800AB3C: .4byte ROMREF_0805A498
_0800AB40: .4byte gUnk_03004790
_0800AB44: .4byte gUnk_030031E8
_0800AB48:
	ldr r0, _0800AC4C @ => 0x03004790
	ldr r0, [r0, #0x20]
	movs r1, #7
	bl FUN_08000E44
	ldr r1, _0800AC50 @ => 0x030031E8
	movs r0, #1
_0800AB56:
	str r0, [r1]
	ldr r7, _0800AC54 @ => 0x0805A428
	ldr r5, _0800AC58 @ => 0x0805A498
	ldr r0, [r5, #0x24]
	str r0, [sp]
	movs r0, #9
	movs r1, #0
	adds r2, r7, #0
	movs r3, #0
	bl FUN_0802D6FC
	ldr r6, _0800AC4C @ => 0x03004790
	ldr r0, [r6, #0x24]
	movs r1, #2
	movs r2, #2
	movs r3, #3
	bl FUN_0800B0A8
	adds r2, r7, #0
	adds r2, #0x10
	ldr r0, [r5, #0x28]
	str r0, [sp]
	movs r0, #0xa
	movs r1, #0
	movs r3, #0
	bl FUN_0802D6FC
	ldr r0, [r6, #0x28]
	movs r1, #2
	movs r2, #2
	movs r3, #4
	bl FUN_0800B0A8
	adds r2, r7, #0
	adds r2, #0x20
	ldr r0, [r5, #0x2c]
	str r0, [sp]
	movs r0, #0xb
	movs r1, #0
	movs r3, #0
	bl FUN_0802D6FC
	ldr r0, [r6, #0x2c]
	movs r1, #2
	movs r2, #2
	movs r3, #5
	bl FUN_0800B0A8
	adds r2, r7, #0
	adds r2, #0x30
	ldr r0, [r5, #0x30]
	str r0, [sp]
	movs r0, #0xc
	movs r1, #0
	movs r3, #0
	bl FUN_0802D6FC
	ldr r0, [r6, #0x30]
	movs r1, #2
	movs r2, #2
	movs r3, #6
	bl FUN_0800B0A8
	ldr r1, [r6, #0x28]
	ldr r0, [r1, #0xc]
	movs r2, #2
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1, #0xc]
	ldr r1, [r6, #0x2c]
	ldr r0, [r1, #0xc]
	ands r0, r2
	str r0, [r1, #0xc]
	ldr r1, [r6, #0x30]
	ldr r0, [r1, #0xc]
	ands r0, r2
	str r0, [r1, #0xc]
	ldr r4, _0800AC5C @ => 0x03003DF0
	adds r4, #0x54
	ldrb r2, [r4]
	lsls r2, r2, #4
	adds r0, r7, #0
	adds r0, #0x40
	adds r2, r2, r0
	ldr r0, [r5, #0x34]
	str r0, [sp]
	movs r0, #0xd
	movs r1, #0
	movs r3, #0
	bl FUN_0802D6FC
	ldr r0, [r6, #0x34]
	ldrb r3, [r4]
	adds r3, #7
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r1, #3
	movs r2, #2
	bl FUN_0800B0A8
	adds r2, r7, #0
	subs r2, #0x20
	ldr r0, [r5, #0x38]
	str r0, [sp]
	movs r0, #0xe
	movs r1, #0
	movs r3, #0
	bl FUN_0802D6FC
	ldr r0, [r6, #0x38]
	movs r1, #4
	movs r2, #2
	movs r3, #1
	bl FUN_0800B0A8
	mov r0, r8
	cmp r0, #4
	bhi _0800AC60
	ldr r0, [r6, #0x38]
	mov r1, r8
	bl FUN_08000E44
	b _0800AC68
	.align 2, 0
_0800AC4C: .4byte gUnk_03004790
_0800AC50: .4byte gUnk_030031E8
_0800AC54: .4byte ROMREF_0805A428
_0800AC58: .4byte ROMREF_0805A498
_0800AC5C: .4byte gUnk_03003DF0
_0800AC60:
	ldr r0, [r6, #0x38]
	movs r1, #5
	bl FUN_08000E44
_0800AC68:
	movs r0, #0x5c
	movs r1, #0xe0
	movs r2, #5
	movs r3, #1
	bl FUN_0802D5E8
	ldr r4, _0800AC94 @ => 0x03004790
	str r0, [r4, #0x3c]
	movs r0, #0x5d
	movs r1, #0xe1
	movs r2, #5
	movs r3, #1
	bl FUN_0802D5E8
	str r0, [r4, #0x40]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AC94: .4byte gUnk_03004790

	thumb_func_start FUN_0800AC98
FUN_0800AC98: @ 0x0800AC98
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	cmp r5, #9
	bls _0800ACA8
	b _0800AE7A
_0800ACA8:
	lsls r0, r5, #2
	ldr r1, _0800ACB4 @ =_0800ACB8
	adds r1, r0, r1
	ldr r1, [r1]
	adds r6, r0, #0
	mov pc, r1
	.align 2, 0
_0800ACB4: .4byte _0800ACB8
_0800ACB8: @ jump table
	.4byte _0800ACE0 @ case 0
	.4byte _0800AD0C @ case 1
	.4byte _0800AD0C @ case 2
	.4byte _0800AD0C @ case 3
	.4byte _0800AD0C @ case 4
	.4byte _0800AD0C @ case 5
	.4byte _0800AD0C @ case 6
	.4byte _0800AD80 @ case 7
	.4byte _0800ADB0 @ case 8
	.4byte _0800AE2C @ case 9
_0800ACE0:
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _0800AD04 @ => 0x000006DC
	bl FUN_08050820
	adds r3, r0, #0
	ldr r0, _0800AD08 @ => 0x0805A4DC
	adds r0, r6, r0
	ldrb r1, [r0]
	ldrb r2, [r0, #1]
	movs r0, #1
	str r0, [sp]
	bl FUN_0801F8B8
	b _0800AE7A
	.align 2, 0
_0800AD04: .4byte 0x000006DC
_0800AD08: .4byte ROMREF_0805A4DC
_0800AD0C:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	subs r0, r5, #1
	cmp r0, #5
	bhi _0800AD58
	lsls r0, r0, #2
	ldr r1, _0800AD28 @ =_0800AD2C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800AD28: .4byte _0800AD2C
_0800AD2C: @ jump table
	.4byte _0800AD58 @ case 0
	.4byte _0800AD44 @ case 1
	.4byte _0800AD48 @ case 2
	.4byte _0800AD4C @ case 3
	.4byte _0800AD50 @ case 4
	.4byte _0800AD54 @ case 5
_0800AD44:
	movs r4, #0x3d
	b _0800AD5A
_0800AD48:
	movs r4, #0x51
	b _0800AD5A
_0800AD4C:
	movs r4, #0x65
	b _0800AD5A
_0800AD50:
	movs r4, #0x79
	b _0800AD5A
_0800AD54:
	movs r4, #0x8d
	b _0800AD5A
_0800AD58:
	movs r4, #0x29
_0800AD5A:
	ldr r1, _0800AD78 @ => 0x000006DD
	adds r0, r5, r1
	bl FUN_08050820
	adds r3, r0, #0
	ldr r0, _0800AD7C @ => 0x0805A4DC
	adds r0, r6, r0
	ldrb r1, [r0]
	ldrb r2, [r0, #1]
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	bl FUN_0801F8B8
	b _0800AE7A
	.align 2, 0
_0800AD78: .4byte 0x000006DD
_0800AD7C: .4byte ROMREF_0805A4DC
_0800AD80:
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl FUN_0801FEA0
	ldr r0, _0800ADA8 @ => 0x000006DD
	bl FUN_08050820
	adds r3, r0, #0
	ldr r0, _0800ADAC @ => 0x0805A4DC
	adds r0, r6, r0
	ldrb r1, [r0]
	ldrb r2, [r0, #1]
	movs r0, #1
	str r0, [sp]
	movs r0, #0x15
	bl FUN_0801F8B8
	b _0800AE7A
	.align 2, 0
_0800ADA8: .4byte 0x000006DD
_0800ADAC: .4byte ROMREF_0805A4DC
_0800ADB0:
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #1
	movs r1, #0
	bl FUN_0801FEA0
	cmp r4, #1
	beq _0800ADD4
	cmp r4, #1
	bgt _0800ADCA
	cmp r4, #0
	beq _0800ADD0
	b _0800ADFC
_0800ADCA:
	cmp r4, #2
	beq _0800ADE8
	b _0800ADFC
_0800ADD0:
	movs r0, #0
	b _0800ADFE
_0800ADD4:
	ldr r0, _0800ADE4 @ => 0x030031B4
	ldr r0, [r0]
	movs r1, #3
	cmp r0, #0
	beq _0800ADF4
	movs r1, #1
	b _0800ADF4
	.align 2, 0
_0800ADE4: .4byte gUnk_030031B4
_0800ADE8:
	ldr r0, _0800ADF8 @ => 0x030031E8
	ldr r0, [r0]
	movs r1, #3
	cmp r0, #0
	beq _0800ADF4
	movs r1, #2
_0800ADF4:
	adds r0, r1, #0
	b _0800ADFE
	.align 2, 0
_0800ADF8: .4byte gUnk_030031E8
_0800ADFC:
	adds r0, r4, #0
_0800ADFE:
	ldr r1, _0800AE24 @ => 0x0805A504
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl FUN_08050820
	ldr r2, _0800AE28 @ => 0x0805A4DC
	adds r2, r6, r2
	ldrb r1, [r2]
	ldrb r2, [r2, #1]
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0xa1
	movs r3, #0x70
	bl FUN_08020098
	b _0800AE7A
	.align 2, 0
_0800AE24: .4byte ROMREF_0805A504
_0800AE28: .4byte ROMREF_0805A4DC
_0800AE2C:
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #1
	movs r1, #0
	bl FUN_0801FEA0
	ldr r0, _0800AE4C @ => 0x03003DF0
	adds r0, #0x54
	ldrb r0, [r0]
	cmp r0, #1
	beq _0800AE50
	cmp r0, #1
	ble _0800AE60
	cmp r0, #2
	beq _0800AE58
	b _0800AE60
	.align 2, 0
_0800AE4C: .4byte gUnk_03003DF0
_0800AE50:
	ldr r0, _0800AE54 @ => 0x000007BB
	b _0800AE62
	.align 2, 0
_0800AE54: .4byte 0x000007BB
_0800AE58:
	ldr r0, _0800AE5C @ => 0x000007BC
	b _0800AE62
	.align 2, 0
_0800AE5C: .4byte 0x000007BC
_0800AE60:
	ldr r0, _0800AE84 @ => 0x000007BD
_0800AE62:
	bl FUN_08050820
	adds r3, r0, #0
	ldr r0, _0800AE88 @ => 0x00000101
	ldr r2, _0800AE8C @ => 0x0805A4DC
	adds r2, r6, r2
	ldrb r1, [r2]
	ldrb r2, [r2, #1]
	movs r4, #1
	str r4, [sp]
	bl FUN_0801F8B8
_0800AE7A:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800AE84: .4byte 0x000007BD
_0800AE88: .4byte 0x00000101
_0800AE8C: .4byte ROMREF_0805A4DC

	thumb_func_start FUN_0800AE90
FUN_0800AE90: @ 0x0800AE90
	push {r4, r5, lr}
	ldr r5, _0800AEBC @ => 0x030031B8
	movs r0, #1
	str r0, [r5]
	ldr r0, _0800AEC0 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r4, #0xc0
	lsls r4, r4, #2
	ands r4, r1
	cmp r4, #0
	beq _0800AEFC
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800AECC
	ldr r2, _0800AEC4 @ => 0x03003DF0
	ldr r0, _0800AEC8 @ => 0x000003F7
	adds r1, r2, r0
	movs r0, #0xe
	b _0800AED4
	.align 2, 0
_0800AEBC: .4byte gUnk_030031B8
_0800AEC0: .4byte gUnk_030042B0
_0800AEC4: .4byte gUnk_03003DF0
_0800AEC8: .4byte 0x000003F7
_0800AECC:
	ldr r2, _0800AEF0 @ => 0x03003DF0
	ldr r0, _0800AEF4 @ => 0x000003F7
	adds r1, r2, r0
	movs r0, #0xb
_0800AED4:
	strb r0, [r1]
	ldr r1, _0800AEF4 @ => 0x000003F7
	adds r0, r2, r1
	ldrb r0, [r0]
	bl FUN_0802CEC4
	ldr r1, _0800AEF8 @ => 0x030031B8
	movs r0, #0
	str r0, [r1]
	movs r0, #0xc2
	bl FUN_0804DE0C
	b _0800AF18
	.align 2, 0
_0800AEF0: .4byte gUnk_03003DF0
_0800AEF4: .4byte 0x000003F7
_0800AEF8: .4byte gUnk_030031B8
_0800AEFC:
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _0800AF18
	ldr r0, _0800AF20 @ => 0x030043A0
	ldr r2, [r0]
	movs r0, #1
	movs r1, #2
	bl FUN_0802CED4
	str r4, [r5]
	movs r0, #0xb1
	bl FUN_0804DE0C
_0800AF18:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800AF20: .4byte gUnk_030043A0

	thumb_func_start FUN_0800AF24
FUN_0800AF24: @ 0x0800AF24
	push {r4, r5, lr}
	sub sp, #8
	adds r3, r0, #0
	ldr r1, _0800AF44 @ => 0x03003DF0
	adds r0, r1, #0
	adds r0, #0x54
	ldrb r0, [r0]
	adds r4, r1, #0
	cmp r0, #1
	beq _0800AF48
	cmp r0, #1
	ble _0800AF58
	cmp r0, #2
	beq _0800AF50
	b _0800AF58
	.align 2, 0
_0800AF44: .4byte gUnk_03003DF0
_0800AF48:
	ldr r5, _0800AF4C @ => 0x000007BB
	b _0800AF5A
	.align 2, 0
_0800AF4C: .4byte 0x000007BB
_0800AF50:
	ldr r5, _0800AF54 @ => 0x000007BC
	b _0800AF5A
	.align 2, 0
_0800AF54: .4byte 0x000007BC
_0800AF58:
	ldr r5, _0800AF7C @ => 0x000007BD
_0800AF5A:
	ldr r2, _0800AF80 @ => 0x030031BC
	ldr r1, _0800AF84 @ => 0x03004720
	ldr r0, [r1, #0x14]
	strb r0, [r2]
	movs r0, #4
	str r0, [r1, #0x14]
	cmp r3, #1
	beq _0800AF90
	cmp r3, #1
	blo _0800AF88
	cmp r3, #2
	beq _0800AF98
	cmp r3, #3
	beq _0800AFA6
	movs r4, #0
	b _0800B000
	.align 2, 0
_0800AF7C: .4byte 0x000007BD
_0800AF80: .4byte gUnk_030031BC
_0800AF84: .4byte gUnk_03004720
_0800AF88:
	ldr r4, _0800AF8C @ => 0x000006E6
	b _0800B000
	.align 2, 0
_0800AF8C: .4byte 0x000006E6
_0800AF90:
	ldr r4, _0800AF94 @ => 0x000006F1
	b _0800B000
	.align 2, 0
_0800AF94: .4byte 0x000006F1
_0800AF98:
	adds r0, r4, #0
	adds r0, #0x54
	ldrb r0, [r0]
	movs r1, #0xdd
	lsls r1, r1, #3
	adds r4, r0, r1
	b _0800B000
_0800AFA6:
	ldr r0, _0800AFB8 @ => 0x030031E4
	ldr r0, [r0]
	cmp r0, #5
	bhi _0800AFFE
	lsls r0, r0, #2
	ldr r1, _0800AFBC @ =_0800AFC0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800AFB8: .4byte gUnk_030031E4
_0800AFBC: .4byte _0800AFC0
_0800AFC0: @ jump table
	.4byte _0800AFFE @ case 0
	.4byte _0800AFD8 @ case 1
	.4byte _0800AFE0 @ case 2
	.4byte _0800AFE8 @ case 3
	.4byte _0800AFF0 @ case 4
	.4byte _0800AFF8 @ case 5
_0800AFD8:
	ldr r4, _0800AFDC @ => 0x000006EF
	b _0800B000
	.align 2, 0
_0800AFDC: .4byte 0x000006EF
_0800AFE0:
	ldr r4, _0800AFE4 @ => 0x000006EE
	b _0800B000
	.align 2, 0
_0800AFE4: .4byte 0x000006EE
_0800AFE8:
	ldr r4, _0800AFEC @ => 0x000006ED
	b _0800B000
	.align 2, 0
_0800AFEC: .4byte 0x000006ED
_0800AFF0:
	ldr r4, _0800AFF4 @ => 0x000006EB
	b _0800B000
	.align 2, 0
_0800AFF4: .4byte 0x000006EB
_0800AFF8:
	movs r4, #0xde
	lsls r4, r4, #3
	b _0800B000
_0800AFFE:
	ldr r4, _0800B044 @ => 0x000006EC
_0800B000:
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #3
	movs r1, #0
	bl FUN_0801FEA0
	bl FUN_080203E0
	subs r0, #4
	bl FUN_0801FEE8
	ldr r0, _0800B048 @ => 0x0805A3F4
	ldr r0, [r0]
	bl FUN_0801FE58
	adds r0, r5, #0
	bl FUN_08050820
	bl FUN_08020320
	ldr r0, _0800B04C @ => 0x030031C0
	ldr r2, _0800B050 @ => 0x0000026D
	ldr r3, _0800B054 @ => 0x00000263
	movs r1, #4
	str r1, [sp]
	movs r1, #0x14
	str r1, [sp, #4]
	adds r1, r4, #0
	bl FUN_08041410
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800B044: .4byte 0x000006EC
_0800B048: .4byte ROMREF_0805A3F4
_0800B04C: .4byte gUnk_030031C0
_0800B050: .4byte 0x0000026D
_0800B054: .4byte 0x00000263

	thumb_func_start SkillsMenu_Terminate
SkillsMenu_Terminate: @ 0x0800B058
	push {r4, lr}
	ldr r0, _0800B070 @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800B074
	movs r0, #0x3f
	bl FUN_080458EC
	b _0800B07C
	.align 2, 0
_0800B070: .4byte gUnk_03004374
_0800B074:
	movs r0, #0x3f
	movs r1, #0
	bl FUN_0804582C
_0800B07C:
	ldr r0, _0800B0A4 @ => 0x03002C40
	bl FUN_08000BF8
	bl FUN_0800CB20
	bl FUN_08015834
	movs r4, #0
_0800B08C:
	adds r0, r4, #0
	bl FUN_0802D860
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	bls _0800B08C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800B0A4: .4byte gUnk_03002C40
