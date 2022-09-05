@ I am not sure for what this Menu was for, maybe it got removed hence it's all 3 functions blank.
.include "asm/constants.s"
.include "asm/macros.s"

.syntax unified

	thumb_func_start BlankMenu_Init
BlankMenu_Init: @ 0x08013E34
	bx lr
	.align 2, 0

	thumb_func_start BlankMenu_Handler
BlankMenu_Handler: @ 0x08013E38
	bx lr
	.align 2, 0

	thumb_func_start BlankMenu_Terminate
BlankMenu_Terminate: @ 0x08013E3C
	bx lr
	.align 2, 0
