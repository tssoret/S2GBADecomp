@ This file contains the function definition macros, such as arm_func_start.

@ Start an ARM Type function.
.macro arm_func_start name
	.align 2, 0
	.global \name
	.arm
	.type \name, %function
.endm

@ Start a THUMB Type function.
.macro thumb_func_start name
	.align 2, 0
	.global \name
	.thumb
	.thumb_func
	.type \name, %function
.endm
	