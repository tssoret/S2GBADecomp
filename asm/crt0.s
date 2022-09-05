@ This file contains the Start of the game and switches to the AgbMain function later on then from the IntrVector function.
.include "asm/constants.s"
.include "asm/macros.s"

    arm_func_start IntrVector
IntrVector: @ 080000C0
    mov r0, #PSR_IRQ_MODE @ => 0x12
    msr cpsr_cf, r0
    ldr sp, Sp_Irq
    mov r0, #PSR_SYS_MODE @ => 0x1F
    msr cpsr_cf, r0
    ldr sp, Sp_Sys
    ldr r1, Intr_Vector
    adr r0, IntrMain
    str r0, [r1, #0x0] @ Store IntrMain into INTR_VECTOR.
    adr r0, _080000EC + 1 @ + 1 so it goes to THUMB.
    bx  r0 @ Goto the RAM Init Section.

    .thumb @ This section is in THUMB.
_080000EC:
    @ Init the Internal Working RAM for Krawall.
    ldr r1, _08000114 @ => 09FC1ECC
    ldr r2, _08000118 @ => 03000000
    ldr r4, _0800011C @ => 030015C8
    bl  CopyMemChk

    @ Init the External Working RAM for Krawall.
    ldr r1, _08000120 @ => 09FC3494
    ldr r2, _08000124 @ => 02000000
    ldr r4, _08000128 @ => 020028AC
    bl  CopyMemChk
    
    @ Jump to AgbMain.
    ldr r1, AgbMainPtr @ => 0802A501
    mov r14, r15
    bx  r1
    b   IntrVector @ Jump back to IntrVector.

Sp_Sys:      .4byte IWRAM_END - 0x200
Sp_Irq:      .4byte IWRAM_END - 0x60
Intr_Vector: .4byte INTR_VECTOR
_08000114:   .4byte KrawallIWRAMStart @ IWRAM Data to copy.
_08000118:   .4byte IWRAM_START @ IWRAM Start.
_0800011C:   .4byte gKrawall_IWRAMEnd  @ Copy End.
_08000120:   .4byte ROMREF_09FC3494  @ EWRAM Data to copy.
_08000124:   .4byte EWRAM_START @ EWRAM Start.
_08000128:   .4byte gEWRAMStart  @ Copy End.
AgbMainPtr:  .4byte AgbMain + 1

@ I don't know if those 2 functions are supposed to be ARM, it never seems to get called ...
    arm_func_start FUN_08000130
FUN_08000130:
    stmfd sp!, { r0 }
    mrs   r0, cpsr
    bic   r0, r0, #0x80
    msr   cpsr_cf, r0
    ldmia sp!, { r0 }
    bx    r14

    arm_func_start FUN_08000148
FUN_08000148:
    stmfd sp!, { r0 }
    mrs   r0, cpsr
    orr   r0, r0, #0x80
    msr   cpsr_cf, r0
    ldmia sp!, { r0 }
    bx    r14

	arm_func_start IntrMain
IntrMain: @ 08000160
    mov   r3, #0x04000000 @ => DISPCNT
    add   r3, r3, #0x200
    ldr   r2, [r3, #0x0] @ => IE
    ldrh  r1, [r3, #0x8] @ => IME
    mrs   r0, spsr
    stmfd sp!, { r0-r3, r14 } @ => IE
    mov   r0, #0x1
    strh  r0, [r3, #0x8] @ => IME
    and   r1, r2, r2, lsr #0x10
    @ Check Serial & Timer 3 Interrupt.
    mov   r12, #0x0
    ands  r0, r1, #0xC0
    bne   IntrMainAction
    @ Check VBlank Interrupt.
    add   r12, r12, #0x4
    ands  r0, r1, #0x1
    bne   IntrMainAction
    @ Check VCount Interrupt.
    add   r12, r12, #0x4
    ands  r0, r1, #0x4
    bne   IntrMainAction
    @ Check Timer 1 Interrupt.
    add   r12, r12, #0x4
    ands  r0, r1, #0x10
    bne   IntrMainAction
    @ Check HBlank Interrupt.
    add   r12, r12, #0x4
    ands  r0, r1, #0x2
    bne   IntrMainAction
    @ Check Timer 0 Interrupt.
    add   r12, r12, #0x4
    ands  r0, r1, #0x8
    bne   IntrMainAction
    @ Check Timer 2 Interrupt.
    add   r12, r12, #0x4
    ands  r0, r1, #0x20
    bne   IntrMainAction
    @ Check DMA 0 Interrupt.
    add   r12, r12, #0x4
    ands  r0, r1, #0x100
    bne   IntrMainAction
    @ Check DMA 1 Interrupt.
    add   r12, r12, #0x4
    ands  r0, r1, #0x200
    bne   IntrMainAction
    @ Check DMA 2 Interrupt.
    add   r12, r12, #0x4
    ands  r0, r1, #0x400
    bne   IntrMainAction
    @ Check DMA 3 Interrupt.
    add   r12, r12, #0x4
    ands  r0, r1, #0x800
    bne   IntrMainAction
    @ Check KEYPAD Interrupt.
    add   r12, r12, #0x4
    ands  r0, r1, #0x1000
    bne   IntrMainAction
    @ Check GAMEPAK Interrupt.
    add    r12, r12, #0x4
    ands   r0, r1, #0x2000
    strneb r0, [r3, #-0x17C] @ => SOUNDCNT_X
IntrMainPakRemovedLoop: @ This happens when you remove the Cartridge, literally an endless loop.
    bne   IntrMainPakRemovedLoop
IntrMainAction:
    strh  r0, [r3, #0x2] @ IF
    ldr   r1, _080002A0
    bic   r2, r2, r0
    and   r1, r1, r2
    strh  r1, [r3, #0x0]
    mrs   r3, cpsr
    bic   r3, r3, #0xDF
    orr   r3, r3, #0x1F
    msr   cpsr_cf, r3
    ldr   r1, _080002A4
    add   r1, r1, r12
    ldr   r0, [r1, #0x0]
    stmfd sp!, { r14 }
    adr   r14, IntrMainEnd
    bx    r0
IntrMainEnd:
    ldmia sp!, { r14 }
    mrs   r3, cpsr
    bic   r3, r3, #0xDF
    orr   r3, r3, #0x92
    msr   cpsr_cf, r3
    ldmia sp!, { r0-r3, r14 } @ => IE
    strh  r2, [r3, #0x0] @ => IE
    strh  r1, [r3, #0x8] @ => IME
    msr   spsr_cf, r0
    bx    r14

@ Copy a memory chunk of source to destination.
    thumb_func_start CopyMemChk
CopyMemChk: @ 08000288
    sub r3, r4, r2
    beq _0800029C
    mov r0, #0x3
    add r3, r3, r0
    bic r3, r0
    beq _0800029C
_08000294: @ Copy Source (r1) into Dest (r2).
    ldmia r1!, { r0 }
    stmia r2!, { r0 }
    sub   r3, #0x4
    bne _08000294
_0800029C:
    bx r14
.align 2, 0
_080002A0: .4byte 0x000020F4
_080002A4: .4byte gIntrTable
@ Is that part of that function?
_080002A8: .4byte 0x00000000
_080002AC: .4byte 0x00000000

@ Unused No$gba Debug of 'PRF %r0%'.
    arm_func_start PrintUnusedDebugMsg
PrintUnusedDebugMsg:
    @ Load the content of gUnusedDebugMsg and backup r0 to the stack.
    stmfd sp!, { r0 }
    ldr r0, _080002E8
    ldr r0, [r0]

    @ Put the message onto the No$gba debugger console.
    mov  r12, r12     @ first ID.
    b    _080002E0    @ branch opcode that skips the message data.
    .ascii "dd"       @ second ID (ascii 'dd').
    .byte 0x0, 0x0    @ reserved for flags and 1 byte padding.
    .ascii "PRF %r0%" @ user defined ascii data (max length 120 bytes).
    .space 0x10       @ Padding.
    .align 4          @ Align by 4 for ARM.
@ Restore r0 back to it's original.
_080002E0:
    ldmfd sp!, { r0 }
    bx lr
_080002E8: .4byte gUnusedDebugMsg
