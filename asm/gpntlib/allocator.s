@ This file contains the allocator part used in Griptonite's Games.
.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start FUN_0802C928
FUN_0802C928: @ 0x0802C928
	push {lr}
	ldr r0, _0802C954 @ => 0x0808F130
	ldr r1, _0802C958 @ => 0x0808F12C
	ldr r2, [r0]
	ldr r0, [r1]
	subs r0, r2, r0
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0
	beq _0802C940
	adds r0, #0x10
	subs r0, r0, r1
_0802C940:
	movs r2, #0x80
	lsls r2, r2, #0x12
	adds r1, r0, r2
	movs r2, #0x81
	lsls r2, r2, #0x12
	movs r0, #0
	bl FUN_0802CC18
	pop {r0}
	bx r0
	.align 2, 0
_0802C954: .4byte ROMREF_0808F130
_0802C958: .4byte ROMREF_0808F12C

	thumb_func_start FUN_0802C95C
FUN_0802C95C: @ 0x0802C95C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r4, #0xf
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r4, r0
	movs r6, #0
	ldr r0, _0802C994 @ => gAllocator_Allocators
	ldr r1, [r0]
	adds r2, r0, #0
	cmp r6, r1
	bhs _0802C9D4
	ldr r0, _0802C998 @ => gAllocator_StartAddr
	adds r7, r0, #4
_0802C978:
	ldr r5, [r7]
	cmp r5, #0
	beq _0802C9CA
_0802C97E:
	adds r0, r5, #0
	adds r1, r6, #0
	bl FUN_0802CC60
	cmp r0, r4
	bhs _0802C99C
	ldr r5, [r5, #8]
	cmp r5, #0
	bne _0802C97E
	ldr r2, _0802C994 @ => gAllocator_Allocators
	b _0802C9CA
	.align 2, 0
_0802C994: .4byte gAllocator_Allocators
_0802C998: .4byte gAllocator_StartAddr
_0802C99C:
	cmp r0, r4
	bls _0802C9B4
	adds r4, #0x10
	adds r4, r5, r4
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0802CC80
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0802CC94
_0802C9B4:
	adds r0, r5, #0
	adds r1, r6, #0
	bl FUN_0802CCF8
	str r6, [r5, #8]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0xc]
	adds r0, r5, #0
	adds r0, #0x10
	b _0802C9D6
_0802C9CA:
	adds r7, #0x10
	adds r6, #1
	ldr r0, [r2]
	cmp r6, r0
	blo _0802C978
_0802C9D4:
	movs r0, #0
_0802C9D6:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_0802C9DC
FUN_0802C9DC: @ 0x0802C9DC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r0, #0xf
	add r8, r0
	subs r0, #0x1f
	mov r1, r8
	ands r1, r0
	mov r8, r1
	mov r4, r8
	adds r4, #0xf
	ands r4, r0
	movs r6, #0
	ldr r0, _0802CA24 @ => gAllocator_Allocators
	ldr r1, [r0]
	adds r2, r0, #0
	cmp r6, r1
	bhs _0802CA64
	ldr r0, _0802CA28 @ => gAllocator_StartAddr
	adds r7, r0, #4
_0802CA06:
	ldr r5, [r7]
	cmp r5, #0
	beq _0802CA5A
_0802CA0C:
	adds r0, r5, #0
	adds r1, r6, #0
	bl FUN_0802CC60
	cmp r0, r4
	bhs _0802CA2C
	ldr r5, [r5, #8]
	cmp r5, #0
	bne _0802CA0C
	ldr r2, _0802CA24 @ => gAllocator_Allocators
	b _0802CA5A
	.align 2, 0
_0802CA24: .4byte gAllocator_Allocators
_0802CA28: .4byte gAllocator_StartAddr
_0802CA2C:
	cmp r0, r4
	bls _0802CA44
	adds r4, #0x10
	adds r4, r5, r4
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0802CC80
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0802CC94
_0802CA44:
	adds r0, r5, #0
	adds r1, r6, #0
	bl FUN_0802CCF8
	str r6, [r5, #8]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0xc]
	adds r4, r5, #0
	adds r4, #0x10
	b _0802CA66
_0802CA5A:
	adds r7, #0x10
	adds r6, #1
	ldr r0, [r2]
	cmp r6, r0
	blo _0802CA06
_0802CA64:
	movs r4, #0
_0802CA66:
	cmp r4, #0
	beq _0802CA74
	adds r0, r4, #0
	movs r1, #0
	mov r2, r8
	bl FUN_0802CB40
_0802CA74:
	adds r0, r4, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_0802CA80
FUN_0802CA80: @ 0x0802CA80
	push {r4, r5, lr}
	adds r4, r0, #0
	subs r4, #0x10
	ldr r5, [r4, #8]
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_0802CCA8
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_0802CD6C
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_0802CD28
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_0802CAA8
FUN_0802CAA8: @ 0x0802CAA8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r4, r1, #0
	mov r6, r8
	subs r6, #0x10
	ldr r7, [r6, #8]
	adds r4, #0xf
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r4, r0
	adds r0, r6, #0
	adds r1, r7, #0
	bl FUN_0802CC60
	adds r5, r0, #0
	cmp r4, r5
	bhs _0802CAEA
	add r4, r8
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_0802CC80
	adds r0, r4, #0
	adds r1, r7, #0
	bl FUN_0802CCA8
	adds r0, r4, #0
	adds r1, r7, #0
	bl FUN_0802CD6C
	b _0802CB34
_0802CAEA:
	cmp r4, r5
	bls _0802CB34
	ldr r6, [r6]
	adds r0, r6, #0
	adds r1, r7, #0
	bl FUN_0802CC60
	adds r0, #0x10
	adds r2, r5, r0
	ldr r1, [r6, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0802CB0A
	cmp r4, r2
	bls _0802CB0E
_0802CB0A:
	movs r0, #0
	b _0802CB36
_0802CB0E:
	cmp r4, r2
	bhs _0802CB24
	add r4, r8
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_0802CC80
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_0802CC94
_0802CB24:
	adds r0, r6, #0
	adds r1, r7, #0
	bl FUN_0802CCF8
	adds r0, r6, #0
	adds r1, r7, #0
	bl FUN_0802CCCC
_0802CB34:
	mov r0, r8
_0802CB36:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_0802CB40
FUN_0802CB40: @ 0x0802CB40
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	adds r2, r7, #0
	movs r0, #3
	ands r0, r7
	movs r1, #4
	subs r1, r1, r0
	cmp r1, #4
	beq _0802CB70
	cmp r5, r1
	bhs _0802CB5C
	adds r1, r5, #0
_0802CB5C:
	movs r3, #0
	cmp r3, r1
	bhs _0802CB6C
_0802CB62:
	adds r0, r2, r3
	strb r6, [r0]
	adds r3, #1
	cmp r3, r1
	blo _0802CB62
_0802CB6C:
	subs r5, r5, r3
	adds r2, r2, r3
_0802CB70:
	lsrs r4, r5, #2
	lsls r1, r6, #8
	orrs r1, r6
	lsls r0, r1, #0x10
	orrs r1, r0
	movs r3, #0
	cmp r3, r4
	bhs _0802CB8A
	adds r0, r2, #0
_0802CB82:
	stm r0!, {r1}
	adds r3, #1
	cmp r3, r4
	blo _0802CB82
_0802CB8A:
	lsls r0, r3, #2
	adds r2, r2, r0
	movs r1, #3
	ands r1, r5
	movs r3, #0
	cmp r3, r1
	bhs _0802CBA2
_0802CB98:
	adds r0, r2, r3
	strb r6, [r0]
	adds r3, #1
	cmp r3, r1
	blo _0802CB98
_0802CBA2:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_0802CBAC
FUN_0802CBAC: @ 0x0802CBAC
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	adds r4, r2, #0
	adds r6, r1, #0
	mov r7, ip
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0802CBC6
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0802CBDC
_0802CBC6:
	movs r3, #0
	cmp r3, r4
	bhs _0802CC0C
_0802CBCC:
	adds r0, r7, r3
	adds r1, r6, r3
	ldrb r1, [r1]
	strb r1, [r0]
	adds r3, #1
	cmp r3, r4
	blo _0802CBCC
	b _0802CC0C
_0802CBDC:
	lsrs r1, r4, #2
	movs r3, #0
	cmp r3, r1
	bhs _0802CBF2
	adds r5, r6, #0
	mov r2, ip
_0802CBE8:
	ldm r5!, {r0}
	stm r2!, {r0}
	adds r3, #1
	cmp r3, r1
	blo _0802CBE8
_0802CBF2:
	movs r2, #3
	ands r2, r4
	subs r3, r4, r2
	b _0802CC04
_0802CBFA:
	adds r1, r7, r3
	adds r0, r6, r3
	ldrb r0, [r0]
	strb r0, [r1]
	adds r3, #1
_0802CC04:
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne _0802CBFA
_0802CC0C:
	mov r0, ip
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start FUN_0802CC14
FUN_0802CC14: @ 0x0802CC14
	movs r0, #1
	bx lr

	thumb_func_start FUN_0802CC18
FUN_0802CC18: @ 0x0802CC18
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r5, #0x10
	subs r1, r2, r1
	subs r1, #0x10
	ldr r4, _0802CC58 @ => gAllocator_StartAddr
	lsls r0, r0, #4
	adds r6, r0, r4
	str r5, [r6]
	adds r3, r4, #4
	adds r3, r0, r3
	str r5, [r3]
	adds r3, r4, #0
	adds r3, #8
	adds r3, r0, r3
	str r1, [r3]
	adds r4, #0xc
	adds r0, r0, r4
	str r2, [r0]
	ldr r1, [r6]
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	ldr r1, _0802CC5C @ => gAllocator_Allocators
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802CC58: .4byte gAllocator_StartAddr
_0802CC5C: .4byte gAllocator_Allocators

	thumb_func_start FUN_0802CC60
FUN_0802CC60: @ 0x0802CC60
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2]
	cmp r0, #0
	bne _0802CC74
	ldr r0, _0802CC7C @ => gAllocator_StartAddr
	lsls r1, r1, #4
	adds r0, #0xc
	adds r1, r1, r0
	ldr r0, [r1]
_0802CC74:
	subs r0, r0, r2
	subs r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_0802CC7C: .4byte gAllocator_StartAddr

	thumb_func_start FUN_0802CC80
FUN_0802CC80: @ 0x0802CC80
	push {lr}
	str r0, [r1, #4]
	ldr r2, [r0]
	str r2, [r1]
	str r1, [r0]
	cmp r2, #0
	beq _0802CC90
	str r1, [r2, #4]
_0802CC90:
	pop {r0}
	bx r0

	thumb_func_start FUN_0802CC94
FUN_0802CC94: @ 0x0802CC94
	push {lr}
	str r0, [r1, #0xc]
	ldr r2, [r0, #8]
	str r2, [r1, #8]
	str r1, [r0, #8]
	cmp r2, #0
	beq _0802CCA4
	str r1, [r2, #0xc]
_0802CCA4:
	pop {r0}
	bx r0

	thumb_func_start FUN_0802CCA8
FUN_0802CCA8: @ 0x0802CCA8
	push {lr}
	adds r2, r0, #0
	movs r0, #0
	str r0, [r2, #0xc]
	ldr r0, _0802CCC8 @ => gAllocator_StartAddr
	lsls r1, r1, #4
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2, #8]
	str r2, [r1]
	cmp r0, #0
	beq _0802CCC4
	str r2, [r0, #0xc]
_0802CCC4:
	pop {r0}
	bx r0
	.align 2, 0
_0802CCC8: .4byte gAllocator_StartAddr

	thumb_func_start FUN_0802CCCC
FUN_0802CCCC: @ 0x0802CCCC
	push {lr}
	adds r2, r0, #0
	ldr r3, [r2, #4]
	cmp r3, #0
	beq _0802CCDC
	ldr r0, [r2]
	str r0, [r3]
	b _0802CCE6
_0802CCDC:
	ldr r0, _0802CCF4 @ => gAllocator_StartAddr
	lsls r1, r1, #4
	adds r1, r1, r0
	ldr r0, [r2]
	str r0, [r1]
_0802CCE6:
	ldr r1, [r2]
	cmp r1, #0
	beq _0802CCF0
	ldr r0, [r2, #4]
	str r0, [r1, #4]
_0802CCF0:
	pop {r0}
	bx r0
	.align 2, 0
_0802CCF4: .4byte gAllocator_StartAddr

	thumb_func_start FUN_0802CCF8
FUN_0802CCF8: @ 0x0802CCF8
	push {lr}
	adds r2, r0, #0
	ldr r3, [r2, #0xc]
	cmp r3, #0
	beq _0802CD08
	ldr r0, [r2, #8]
	str r0, [r3, #8]
	b _0802CD14
_0802CD08:
	ldr r0, _0802CD24 @ => gAllocator_StartAddr
	lsls r1, r1, #4
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r2, #8]
	str r0, [r1]
_0802CD14:
	ldr r1, [r2, #8]
	cmp r1, #0
	beq _0802CD1E
	ldr r0, [r2, #0xc]
	str r0, [r1, #0xc]
_0802CD1E:
	pop {r0}
	bx r0
	.align 2, 0
_0802CD24: .4byte gAllocator_StartAddr

	thumb_func_start FUN_0802CD28
FUN_0802CD28: @ 0x0802CD28
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r4, [r2, #4]
	cmp r4, #0
	beq _0802CD60
	ldr r1, [r4, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0802CD60
	ldr r0, _0802CD68 @ => gAllocator_StartAddr
	lsls r1, r3, #4
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r3, [r2, #8]
	cmp r0, r2
	bne _0802CD50
	str r3, [r1]
_0802CD50:
	movs r0, #0
	str r0, [r3, #0xc]
	ldr r0, [r2]
	str r0, [r4]
	ldr r0, [r2]
	cmp r0, #0
	beq _0802CD60
	str r4, [r0, #4]
_0802CD60:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802CD68: .4byte gAllocator_StartAddr

	thumb_func_start FUN_0802CD6C
FUN_0802CD6C: @ 0x0802CD6C
	push {lr}
	adds r3, r0, #0
	ldr r1, [r3]
	cmp r1, #0
	beq _0802CD9E
	ldr r2, [r1, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0802CD9E
	cmp r2, #0
	beq _0802CD88
	ldr r0, [r1, #8]
	str r0, [r2, #8]
_0802CD88:
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _0802CD92
	ldr r0, [r1, #0xc]
	str r0, [r2, #0xc]
_0802CD92:
	ldr r0, [r1]
	str r0, [r3]
	ldr r0, [r1]
	cmp r0, #0
	beq _0802CD9E
	str r3, [r0, #4]
_0802CD9E:
	pop {r0}
	bx r0
	.align 2, 0
