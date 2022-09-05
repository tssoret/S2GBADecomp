.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start CastMemberMenu_Init
CastMemberMenu_Init: @ 0x08042F40
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x20
	movs r0, #0
	bl FUN_0800C558
	movs r0, #0x80
	lsls r0, r0, #5
	bl FUN_0800C5EC
	ldr r0, _08043070 @ => 0x08078B54
	ldr r1, [r0]
	movs r0, #3
	bl FUN_0800C418
	ldr r0, _08043074 @ => 0x08078B58
	ldr r1, [r0]
	movs r0, #2
	bl FUN_0800C418
	ldr r0, _08043078 @ => 0x08078B5C
	ldr r1, [r0]
	movs r0, #1
	bl FUN_0800C418
	ldr r0, _0804307C @ => 0x08078B60
	ldr r4, [r0]
	movs r0, #0
	adds r1, r4, #0
	bl FUN_0800C418
	movs r0, #3
	bl FUN_0800C5FC
	movs r0, #2
	bl FUN_0800C5FC
	movs r0, #1
	bl FUN_0800C5FC
	movs r0, #0
	bl FUN_0800C5FC
	adds r0, r4, #0
	bl FUN_0801FE58
	ldr r0, _08043080 @ => 0x03005CB0
	movs r1, #0
	str r1, [r0]
	ldr r0, _08043084 @ => 0x03005CB4
	str r1, [r0]
	ldr r2, _08043088 @ => 0x03005CB8
	movs r0, #1
	str r0, [r2]
	ldr r0, _0804308C @ => 0x03005CBC
	str r1, [r0]
	movs r2, #0
	add r0, sp, #0x1c
	mov sb, r0
	ldr r3, _08043090 @ => 0x03005CC0
_08042FBC:
	adds r1, r2, r3
	adds r0, r2, #0
	adds r0, #0xd
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x19
	bls _08042FBC
	movs r0, #3
	movs r1, #0xd8
	bl FUN_08048284
	movs r4, #0
	movs r5, #0
	movs r6, #0
	ldr r2, _08043094 @ => 0x08CE5290
	str r4, [sp]
	str r4, [sp, #4]
	movs r0, #0x10
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r6, [sp, #0x10]
	str r4, [sp, #0x14]
	add r0, sp, #0x18
	movs r1, #2
	movs r3, #0xa1
	bl FUN_0800D83C
	movs r7, #0
	movs r2, #0
	mov r8, r2
	ldr r2, _08043098 @ => 0x08CE5B24
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r7, [sp, #0xc]
	mov r5, r8
	str r5, [sp, #0x10]
	movs r4, #1
	str r4, [sp, #0x14]
	mov r0, sb
	movs r1, #1
	movs r3, #1
	bl FUN_0800D83C
	movs r0, #1
	movs r1, #5
	movs r2, #2
	movs r3, #2
	bl FUN_08021428
	bl FUN_080431B8
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #3
	movs r1, #0
	bl FUN_0801FEA0
	ldr r0, _0804309C @ => 0x000006F2
	bl FUN_08050820
	adds r3, r0, #0
	ldr r0, _080430A0 @ => 0x08078B64
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r5, #2
	ldrsh r2, [r0, r5]
	str r4, [sp]
	movs r0, #1
	bl FUN_0801F8B8
	ldr r0, _08043084 @ => 0x03005CB4
	ldr r0, [r0]
	ldr r1, _08043080 @ => 0x03005CB0
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl FUN_08043500
	ldr r0, _080430A4 @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080430A8
	movs r0, #0x3f
	bl FUN_08045864
	b _080430B0
	.align 2, 0
_08043070: .4byte ROMREF_08078B54
_08043074: .4byte ROMREF_08078B58
_08043078: .4byte ROMREF_08078B5C
_0804307C: .4byte ROMREF_08078B60
_08043080: .4byte gUnk_03005CB0
_08043084: .4byte gUnk_03005CB4
_08043088: .4byte gUnk_03005CB8
_0804308C: .4byte gUnk_03005CBC
_08043090: .4byte gUnk_03005CC0
_08043094: .4byte ROMREF_08CE5290
_08043098: .4byte ROMREF_08CE5B24
_0804309C: .4byte 0x000006F2
_080430A0: .4byte ROMREF_08078B64
_080430A4: .4byte gUnk_03004374
_080430A8:
	movs r0, #0x3f
	movs r1, #0
	bl FUN_080457F4
_080430B0:
	add sp, #0x20
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CastMemberMenu_Handler
CastMemberMenu_Handler: @ 0x080430C0
	push {r4, r5, lr}
	ldr r0, _080430E0 @ => 0x030042B0
	ldrh r1, [r0, #0xc]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080430EC
	ldr r0, _080430E4 @ => 0x03003DF0
	ldr r1, _080430E8 @ => 0x000003F7
	adds r0, r0, r1
	movs r1, #0xe
	strb r1, [r0]
	movs r0, #0xe
	b _08043102
	.align 2, 0
_080430E0: .4byte gUnk_030042B0
_080430E4: .4byte gUnk_03003DF0
_080430E8: .4byte 0x000003F7
_080430EC:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08043118
	ldr r0, _08043110 @ => 0x03003DF0
	ldr r2, _08043114 @ => 0x000003F7
	adds r0, r0, r2
	movs r1, #0xb
	strb r1, [r0]
	movs r0, #0xb
_08043102:
	bl FUN_0802CEC4
	movs r0, #0xc2
	bl FUN_0804DE0C
	b _080431AC
	.align 2, 0
_08043110: .4byte gUnk_03003DF0
_08043114: .4byte 0x000003F7
_08043118:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08043170
	ldr r2, _08043158 @ => 0x03005CC0
	ldr r5, _0804315C @ => 0x03005CB4
	ldr r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldr r4, _08043160 @ => 0x03005CB0
	ldr r1, [r4]
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	bl FUN_0803AF4C
	cmp r0, #0
	beq _08043168
	movs r0, #0xad
	bl FUN_0804DE0C
	ldr r1, _08043164 @ => 0x03005CBC
	ldr r0, [r1]
	mvns r0, r0
	str r0, [r1]
	ldr r0, [r5]
	movs r2, #0
	ldrsh r1, [r4, r2]
	bl FUN_08043500
	b _080431AC
	.align 2, 0
_08043158: .4byte gUnk_03005CC0
_0804315C: .4byte gUnk_03005CB4
_08043160: .4byte gUnk_03005CB0
_08043164: .4byte gUnk_03005CBC
_08043168:
	movs r0, #0xbe
	bl FUN_0804DE0C
	b _080431AC
_08043170:
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0804317E
	bl FUN_080433D8
	b _0804318A
_0804317E:
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08043192
	bl FUN_08043A74
_0804318A:
	movs r0, #0xb2
	bl FUN_0804DE0C
	b _080431AC
_08043192:
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _080431AC
	ldr r0, _080431B4 @ => 0x030043A0
	ldr r2, [r0]
	movs r0, #1
	movs r1, #2
	bl FUN_0802CED4
	movs r0, #0xb1
	bl FUN_0804DE0C
_080431AC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080431B4: .4byte gUnk_030043A0

	thumb_func_start FUN_080431B8
FUN_080431B8: @ 0x080431B8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	movs r4, #0
_080431C4:
	movs r0, #0
	adds r1, r4, #0
	bl FUN_0804333C
	movs r0, #1
	adds r1, r4, #0
	bl FUN_0804333C
	movs r0, #2
	adds r1, r4, #0
	bl FUN_0804333C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _080431C4
	ldr r7, _0804332C @ => 0x08078BB8
	ldr r6, _08043330 @ => 0x08078C18
	ldr r0, [r6, #0xc]
	str r0, [sp]
	movs r0, #0xe
	movs r1, #0
	adds r2, r7, #0
	movs r3, #0
	bl FUN_0802D6FC
	ldr r4, _08043334 @ => 0x03004790
	ldr r0, [r4, #0x38]
	movs r5, #0
	str r5, [sp]
	movs r1, #5
	movs r2, #1
	movs r3, #4
	bl FUN_080439B4
	ldr r0, [r4, #0x38]
	ldr r2, _08043338 @ => 0x08D20028
	adds r1, r7, #0
	movs r3, #0
	bl FUN_0800192C
	adds r2, r7, #0
	subs r2, #0x30
	ldr r0, [r6]
	str r0, [sp]
	movs r0, #0xb
	movs r1, #0
	movs r3, #0
	bl FUN_0802D6FC
	ldr r0, [r4, #0x2c]
	str r5, [sp]
	movs r1, #2
	movs r2, #2
	movs r3, #1
	bl FUN_080439B4
	adds r2, r7, #0
	subs r2, #0x20
	ldr r0, [r6, #4]
	str r0, [sp]
	movs r0, #0xc
	movs r1, #0
	movs r3, #0
	bl FUN_0802D6FC
	ldr r0, [r4, #0x30]
	str r5, [sp]
	movs r1, #3
	movs r2, #2
	movs r3, #2
	bl FUN_080439B4
	adds r2, r7, #0
	subs r2, #0x10
	ldr r0, [r6, #8]
	str r0, [sp]
	movs r0, #0xd
	movs r1, #0
	movs r3, #0
	bl FUN_0802D6FC
	ldr r0, [r4, #0x34]
	str r5, [sp]
	movs r1, #4
	movs r2, #2
	movs r3, #3
	bl FUN_080439B4
	movs r0, #0x10
	adds r0, r0, r7
	mov r8, r0
	ldr r0, [r6, #0x10]
	str r0, [sp]
	movs r0, #0x12
	movs r1, #0
	mov r2, r8
	movs r3, #0
	bl FUN_0802D6FC
	ldr r0, [r4, #0x48]
	str r5, [sp]
	movs r1, #9
	movs r2, #1
	movs r3, #5
	bl FUN_080439B4
	ldr r0, [r4, #0x48]
	movs r1, #5
	bl FUN_08000E44
	ldr r1, [r4, #0x48]
	ldr r0, [r1, #0xc]
	movs r2, #2
	rsbs r2, r2, #0
	mov sb, r2
	ands r0, r2
	str r0, [r1, #0xc]
	ldr r0, [r6, #0x14]
	str r0, [sp]
	movs r0, #0x13
	movs r1, #0
	mov r2, r8
	movs r3, #0
	bl FUN_0802D6FC
	ldr r0, [r4, #0x4c]
	str r5, [sp]
	movs r1, #9
	movs r2, #1
	movs r3, #5
	bl FUN_080439B4
	ldr r0, [r4, #0x4c]
	movs r1, #3
	bl FUN_08000E44
	adds r2, r7, #0
	adds r2, #0x20
	ldr r0, [r6, #0x18]
	str r0, [sp]
	movs r0, #0x14
	movs r1, #0
	movs r3, #0
	bl FUN_0802D6FC
	ldr r0, [r4, #0x50]
	str r5, [sp]
	movs r1, #0xa
	movs r2, #1
	movs r3, #6
	bl FUN_080439B4
	ldr r1, [r4, #0x50]
	ldr r0, [r1, #0xc]
	mov r2, sb
	ands r0, r2
	str r0, [r1, #0xc]
	movs r0, #0x5c
	movs r1, #0xe0
	movs r2, #1
	movs r3, #1
	bl FUN_0802D5E8
	str r0, [r4, #0x24]
	movs r0, #0x5d
	movs r1, #0xe1
	movs r2, #1
	movs r3, #1
	bl FUN_0802D5E8
	str r0, [r4, #0x28]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804332C: .4byte ROMREF_08078BB8
_08043330: .4byte ROMREF_08078C18
_08043334: .4byte gUnk_03004790
_08043338: .4byte ROMREF_08D20028

	thumb_func_start FUN_0804333C
FUN_0804333C: @ 0x0804333C
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	cmp r0, #1
	beq _08043358
	cmp r0, #1
	ble _08043384
	cmp r2, #2
	beq _0804336C
	b _08043384
_08043358:
	movs r3, #1
	ldr r0, _08043368 @ => 0x08078BE8
	lsls r2, r4, #1
	adds r1, r2, r4
	lsls r1, r1, #2
	adds r0, #4
	b _08043378
	.align 2, 0
_08043368: .4byte ROMREF_08078BE8
_0804336C:
	movs r3, #2
	ldr r0, _08043380 @ => 0x08078BE8
	lsls r2, r4, #1
	adds r1, r2, r4
	lsls r1, r1, #2
	adds r0, #8
_08043378:
	adds r1, r1, r0
	ldr r0, [r1]
	adds r1, r2, #0
	b _08043392
	.align 2, 0
_08043380: .4byte ROMREF_08078BE8
_08043384:
	movs r3, #0
	ldr r2, _080433CC @ => 0x08078BE8
	lsls r1, r4, #1
	adds r0, r1, r4
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
_08043392:
	adds r4, r1, r4
	adds r4, r3, r4
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r2, _080433D0 @ => 0x08078B78
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl FUN_0802D6FC
	ldr r0, _080433D4 @ => 0x03004790
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r0, [r4]
	movs r1, #0
	str r1, [sp]
	movs r2, #2
	movs r3, #0
	bl FUN_080439B4
	ldr r0, [r4]
	movs r1, #0
	bl FUN_08000E44
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080433CC: .4byte ROMREF_08078BE8
_080433D0: .4byte ROMREF_08078B78
_080433D4: .4byte gUnk_03004790

	thumb_func_start FUN_080433D8
FUN_080433D8: @ 0x080433D8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r4, _08043458 @ => 0x03005CB4
	ldr r6, [r4]
	ldr r2, _0804345C @ => 0x03005CB0
	ldrb r7, [r2]
	ldr r3, _08043460 @ => 0x030042B0
	ldrh r1, [r3, #0xc]
	movs r0, #0x30
	ands r0, r1
	mov sb, r2
	cmp r0, #0
	beq _08043446
	ldr r0, _08043464 @ => 0x03005CB8
	mov r8, r0
	movs r0, #1
	mov r1, r8
	str r0, [r1]
	ldrh r0, [r3, #6]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #9
	movs r3, #0
	bl FUN_08024B30
	ldr r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	mov r2, sb
	ldr r1, [r2]
	adds r0, r0, r1
	cmp r0, #0x19
	bls _08043446
	movs r5, #0
	str r5, [r2]
	bl FUN_08043AD4
	ldr r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	mov r3, sb
	ldr r0, [r3]
	adds r1, r1, r0
	cmp r1, #0x19
	bls _08043446
	str r6, [r4]
	str r7, [r3]
	bl FUN_08043AD4
	mov r0, r8
	str r5, [r0]
_08043446:
	ldr r0, _08043458 @ => 0x03005CB4
	ldr r1, [r0]
	adds r7, r0, #0
	cmp r6, r1
	bne _08043468
	ldr r1, _08043464 @ => 0x03005CB8
	movs r0, #0
	str r0, [r1]
	b _080434F2
	.align 2, 0
_08043458: .4byte gUnk_03005CB4
_0804345C: .4byte gUnk_03005CB0
_08043460: .4byte gUnk_030042B0
_08043464: .4byte gUnk_03005CB8
_08043468:
	movs r2, #0xf
	ldr r1, _080434B4 @ => 0x03005CB0
	mov sb, r1
	ldr r3, _080434B8 @ => 0x03004790
	adds r6, r3, #0
	movs r5, #2
	rsbs r5, r5, #0
	movs r4, #2
_08043478:
	lsls r0, r2, #2
	adds r0, r0, r6
	ldr r1, [r0]
	cmp r1, #0
	beq _0804348A
	ldr r0, [r1, #0xc]
	ands r0, r5
	orrs r0, r4
	str r0, [r1, #0xc]
_0804348A:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x11
	bls _08043478
	ldr r0, [r7]
	cmp r0, #0
	beq _080434BC
	cmp r0, #8
	beq _080434D2
	ldr r1, [r3, #0x48]
	ldr r0, [r1, #0xc]
	movs r2, #1
	orrs r0, r2
	str r0, [r1, #0xc]
	ldr r1, [r3, #0x4c]
	ldr r0, [r1, #0xc]
	orrs r0, r2
	str r0, [r1, #0xc]
	b _080434E6
	.align 2, 0
_080434B4: .4byte gUnk_03005CB0
_080434B8: .4byte gUnk_03004790
_080434BC:
	ldr r2, [r3, #0x48]
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
	ldr r2, [r3, #0x4c]
	ldr r0, [r2, #0xc]
	movs r1, #1
	orrs r0, r1
	b _080434E4
_080434D2:
	ldr r2, [r3, #0x48]
	ldr r0, [r2, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0xc]
	ldr r2, [r3, #0x4c]
	ldr r0, [r2, #0xc]
	subs r1, #3
	ands r0, r1
_080434E4:
	str r0, [r2, #0xc]
_080434E6:
	ldr r0, [r7]
	mov r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	bl FUN_08043500
_080434F2:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start FUN_08043500
FUN_08043500: @ 0x08043500
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #0x10]
	movs r1, #0
	mov sl, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	ldr r1, _0804358C @ => 0x03005CC0
	ldr r0, [sp, #0x10]
	add r0, sb
	adds r0, r0, r1
	ldrb r0, [r0]
	subs r0, #0xd
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	movs r0, #0xb
	str r0, [sp]
	movs r0, #0
	movs r1, #0xb
	movs r2, #8
	movs r3, #0x12
	bl FUN_0800C790
	ldr r0, _08043590 @ => 0x03005CB8
	ldr r0, [r0]
	cmp r0, #0
	bne _0804354C
	b _0804367C
_0804354C:
	movs r7, #0
	add r5, sp, #0xc
	ldr r2, _08043594 @ => 0x03004790
	mov r8, r2
_08043554:
	mov r3, sb
	adds r6, r3, r7
	movs r0, #0
	cmp r6, #0x19
	bgt _08043560
	movs r0, #1
_08043560:
	cmp r0, #0
	beq _08043598
	adds r0, r7, #0
	bl FUN_08043890
	ldr r4, _0804358C @ => 0x03005CC0
	adds r4, r6, r4
	ldrb r0, [r4]
	movs r1, #0
	bl FUN_0803AF94
	strb r0, [r5]
	ldrb r0, [r4]
	movs r1, #1
	bl FUN_0803AF94
	strb r0, [r5, #1]
	ldrb r0, [r4]
	movs r1, #2
	bl FUN_0803AF94
	b _0804359C
	.align 2, 0
_0804358C: .4byte gUnk_03005CC0
_08043590: .4byte gUnk_03005CB8
_08043594: .4byte gUnk_03004790
_08043598:
	strb r0, [r5]
	strb r0, [r5, #1]
_0804359C:
	strb r0, [r5, #2]
	lsls r4, r7, #1
	adds r4, r4, r7
	lsls r0, r4, #2
	add r0, r8
	ldr r0, [r0]
	ldrb r1, [r5]
	bl FUN_08000E44
	adds r0, r4, #1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldrb r1, [r5, #1]
	bl FUN_08000E44
	adds r4, #2
	lsls r4, r4, #2
	add r4, r8
	ldr r0, [r4]
	ldrb r1, [r5, #2]
	bl FUN_08000E44
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #2
	bls _08043554
	movs r0, #2
	str r0, [sp]
	movs r0, #0
	movs r1, #3
	movs r2, #0x12
	movs r3, #8
	bl FUN_0800C790
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #0
	movs r1, #0
	bl FUN_0801FEA0
	movs r7, #0
	ldr r1, _080436E0 @ => 0x03005CC0
_080435F4:
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _08043606
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
_08043606:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x19
	bls _080435F4
	add r1, sp, #8
	ldr r0, _080436E4 @ => 0x03005CB4
	ldr r0, [r0]
	adds r0, #1
	strb r0, [r1]
	adds r4, r1, #0
	mov r0, sl
	movs r1, #3
	bl __udivsi3
	adds r5, r0, #0
	strb r5, [r4, #1]
	mov r0, sl
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804363C
	add r1, sp, #8
	adds r0, r5, #1
	strb r0, [r1, #1]
_0804363C:
	add r0, sp, #8
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0804364A
	add r1, sp, #8
	movs r0, #1
	strb r0, [r1, #1]
_0804364A:
	add r0, sp, #8
	ldrb r0, [r0]
	bl FUN_080203A8
	add r0, sp, #8
	ldrb r0, [r0, #1]
	bl FUN_080203B8
	ldr r0, _080436E8 @ => 0x000006DB
	bl FUN_08050820
	adds r3, r0, #0
	ldr r0, _080436EC @ => 0x08078B64
	movs r4, #4
	ldrsh r1, [r0, r4]
	movs r6, #6
	ldrsh r2, [r0, r6]
	movs r0, #1
	str r0, [sp]
	movs r0, #0x15
	bl FUN_0801F8B8
	ldr r1, _080436F0 @ => 0x03005CB8
	movs r0, #0
	str r0, [r1]
_0804367C:
	ldr r5, [sp, #0x10]
	add r5, sb
	cmp r5, #0x19
	ble _08043686
	b _0804379A
_08043686:
	ldr r0, [sp, #0x10]
	bl FUN_080437B4
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #0
	movs r1, #0
	bl FUN_0801FEA0
	ldr r1, _080436F4 @ => 0x08078C5C
	ldr r0, [sp, #0x14]
	lsls r4, r0, #3
	adds r0, r4, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0, #0x1c]
	bl FUN_08050820
	adds r3, r0, #0
	ldr r0, _080436EC @ => 0x08078B64
	movs r2, #8
	ldrsh r1, [r0, r2]
	movs r6, #0xa
	ldrsh r2, [r0, r6]
	movs r6, #1
	str r6, [sp]
	movs r0, #0xb0
	bl FUN_0801F8B8
	ldr r0, _080436E0 @ => 0x03005CC0
	adds r0, r5, r0
	ldrb r0, [r0]
	bl FUN_0803AF4C
	adds r3, r0, #0
	mov r8, r4
	cmp r3, #0
	beq _08043700
	ldr r0, _080436F8 @ => 0x03004790
	ldr r1, [r0, #0x50]
	ldr r0, [r1, #0xc]
	orrs r0, r6
	str r0, [r1, #0xc]
	ldr r0, _080436FC @ => 0x03005CBC
	b _08043712
	.align 2, 0
_080436E0: .4byte gUnk_03005CC0
_080436E4: .4byte gUnk_03005CB4
_080436E8: .4byte 0x000006DB
_080436EC: .4byte ROMREF_08078B64
_080436F0: .4byte gUnk_03005CB8
_080436F4: .4byte ROMREF_08078C5C
_080436F8: .4byte gUnk_03004790
_080436FC: .4byte gUnk_03005CBC
_08043700:
	ldr r0, _08043750 @ => 0x03004790
	ldr r2, [r0, #0x50]
	ldr r0, [r2, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0xc]
	ldr r0, _08043754 @ => 0x03005CBC
	str r3, [r0]
_08043712:
	ldr r7, [r0]
	cmp r7, #0
	beq _08043760
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #0
	movs r1, #1
	bl FUN_0801FEA0
	ldr r1, _08043758 @ => 0x08078C5C
	ldr r0, [sp, #0x14]
	add r0, r8
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0, #0x20]
	bl FUN_08050820
	ldr r2, _0804375C @ => 0x08078B64
	movs r3, #0xc
	ldrsh r1, [r2, r3]
	movs r4, #0xe
	ldrsh r2, [r2, r4]
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0xe2
	movs r3, #0x88
	bl FUN_08020098
	b _0804379A
	.align 2, 0
_08043750: .4byte gUnk_03004790
_08043754: .4byte gUnk_03005CBC
_08043758: .4byte ROMREF_08078C5C
_0804375C: .4byte ROMREF_08078B64
_08043760:
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #0
	movs r1, #0
	bl FUN_0801FEA0
	movs r6, #0xa3
	lsls r6, r6, #1
	ldr r0, _080437AC @ => 0x08078B64
	movs r1, #0xc
	ldrsh r4, [r0, r1]
	movs r2, #0xe
	ldrsh r5, [r0, r2]
	ldr r1, _080437B0 @ => 0x08078C5C
	ldr r0, [sp, #0x14]
	add r0, r8
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0, #0x1e]
	bl FUN_08050820
	str r0, [sp]
	str r7, [sp, #4]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #0x88
	bl FUN_08020098
_0804379A:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080437AC: .4byte ROMREF_08078B64
_080437B0: .4byte ROMREF_08078C5C

	thumb_func_start FUN_080437B4
FUN_080437B4: @ 0x080437B4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1c
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080437FC @ => 0x03005CB4
	ldr r2, [r1]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _08043800 @ => 0x03005CC0
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r1, r0, #0
	subs r1, #0xd
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	bl FUN_0803AE08
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #1
	beq _08043808
	cmp r0, #1
	ble _0804380C
	cmp r1, #2
	beq _08043804
	cmp r1, #3
	beq _08043808
	b _0804380C
	.align 2, 0
_080437FC: .4byte gUnk_03005CB4
_08043800: .4byte gUnk_03005CC0
_08043804:
	movs r7, #0
	b _0804380E
_08043808:
	movs r7, #2
	b _0804380E
_0804380C:
	movs r7, #1
_0804380E:
	movs r0, #0
	bl FUN_0800C4D0
	ldr r0, _08043888 @ => 0x08078C58
	movs r1, #0
	ldrsh r4, [r0, r1]
	movs r2, #2
	ldrsh r5, [r0, r2]
	movs r6, #7
	str r6, [sp]
	movs r0, #0
	mov r8, r0
	str r0, [sp, #4]
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #8
	bl FUN_0800C7A8
	lsls r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r4, r4, #0x10
	orrs r4, r5
	movs r0, #0xe0
	lsls r0, r0, #0x13
	lsls r6, r6, #0x10
	orrs r6, r0
	ldr r1, _0804388C @ => 0x08078C5C
	mov r2, sb
	lsls r0, r2, #3
	add r0, sb
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r1, #0x10
	adds r0, r0, r1
	ldr r2, [r0]
	movs r0, #0xf0
	str r0, [sp]
	mov r0, r8
	str r0, [sp, #4]
	movs r0, #0x10
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r6, [sp, #0x10]
	adds r0, #0xf0
	str r0, [sp, #0x14]
	add r0, sp, #0x18
	movs r1, #0
	movs r3, #0x24
	bl FUN_0800D83C
	movs r0, #0
	bl FUN_0800C4BC
	add sp, #0x1c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08043888: .4byte ROMREF_08078C58
_0804388C: .4byte ROMREF_08078C5C

	thumb_func_start FUN_08043890
FUN_08043890: @ 0x08043890
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	movs r0, #0xf
	adds r0, r0, r6
	mov r8, r0
	ldr r1, _08043954 @ => 0x03005CB4
	mov sl, r1
	ldr r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, r0, r6
	lsls r2, r0, #3
	adds r2, r2, r0
	lsls r2, r2, #2
	ldr r0, _08043958 @ => 0x08078C5C
	mov sb, r0
	add r2, sb
	ldr r4, _0804395C @ => 0x08078C34
	lsls r5, r6, #1
	adds r5, r5, r6
	lsls r5, r5, #2
	adds r0, r4, #0
	adds r0, #8
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	mov r0, r8
	movs r1, #0
	movs r3, #0
	bl FUN_0802D6FC
	ldr r0, _08043960 @ => 0x03004790
	mov r1, r8
	lsls r1, r1, #2
	mov r8, r1
	add r8, r0
	adds r4, #4
	adds r5, r5, r4
	mov r1, sl
	ldr r0, [r1]
	lsls r4, r0, #1
	adds r4, r4, r0
	adds r4, r4, r6
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r0, r8
	ldr r6, [r0]
	ldr r2, [r5]
	movs r0, #0x19
	str r0, [r6, #0xc]
	adds r5, r6, #0
	adds r5, #0xa9
	ldrb r1, [r5]
	subs r0, #0x26
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	lsls r2, r2, #4
	movs r1, #0xf
	ands r0, r1
	orrs r0, r2
	strb r0, [r5]
	adds r0, r6, #0
	movs r1, #0
	bl FUN_08001FB0
	adds r0, r6, #0
	movs r1, #0xb
	bl FUN_08001F84
	lsls r0, r4, #3
	adds r0, r0, r4
	lsls r0, r0, #2
	movs r1, #8
	add sb, r1
	add r0, sb
	ldr r0, [r0]
	ldrb r1, [r5]
	lsrs r1, r1, #4
	lsls r1, r1, #4
	movs r2, #0x10
	bl FUN_080157D8
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08043954: .4byte gUnk_03005CB4
_08043958: .4byte ROMREF_08078C5C
_0804395C: .4byte ROMREF_08078C34
_08043960: .4byte gUnk_03004790

	thumb_func_start CastMemberMenu_Terminate
CastMemberMenu_Terminate: @ 0x08043964
	push {r4, lr}
	ldr r0, _0804397C @ => 0x03004374
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08043980
	movs r0, #0x3f
	bl FUN_080458EC
	b _08043988
	.align 2, 0
_0804397C: .4byte gUnk_03004374
_08043980:
	movs r0, #0x3f
	movs r1, #0
	bl FUN_0804582C
_08043988:
	ldr r0, _080439B0 @ => 0x03002C40
	bl FUN_08000BF8
	bl FUN_0800CB20
	bl FUN_08015834
	movs r4, #0
_08043998:
	adds r0, r4, #0
	bl FUN_0802D860
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x14
	bls _08043998
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080439B0: .4byte gUnk_03002C40
