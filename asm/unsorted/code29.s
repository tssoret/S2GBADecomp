.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_08034028
FUN_08034028: @ 0x08034028
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08034076
	ldr r1, _0803407C @ => 0x080679B8
	ldrh r0, [r4, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl FUN_0804DE0C
	ldr r1, _08034080 @ => 0x08067910
	ldrh r2, [r4, #0xa]
	ldr r0, _08034084 @ => 0x03002258
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r2, r0
	adds r0, r0, r1
	ldrh r1, [r4, #8]
	ldrb r0, [r0]
	cmp r1, r0
	beq _08034068
	cmp r1, #3
	bne _0803406E
_08034068:
	adds r0, r2, #0
	bl FUN_08033F70
_0803406E:
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
_08034076:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803407C: .4byte ROMREF_080679B8
_08034080: .4byte ROMREF_08067910
_08034084: .4byte gUnk_03002258

	thumb_func_start FUN_08034088
FUN_08034088: @ 0x08034088
	push {lr}
	adds r1, r0, #0
	adds r0, #0x40
	ldrh r2, [r0]
	cmp r2, #0
	bne _080340A0
	ldr r0, _080340A4 @ => 0x03002258
	ldr r0, [r0, #0x4c]
	str r0, [r1, #0x28]
	ldr r0, _080340A8 @ => FUN_08033B78
	str r0, [r1, #0x50]
	strh r2, [r1, #0xa]
_080340A0:
	pop {r0}
	bx r0
	.align 2, 0
_080340A4: .4byte gUnk_03002258
_080340A8: .4byte FUN_08033B78
