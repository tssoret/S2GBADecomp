#include "asmfuncs.h"
#include "keyboard.h"

struct KBDData {
	void *InputTasks[8];
	u32   InputWidths[8];
	u32   InputWidth;
	u32   Mode;
	u8    InputLen;
	u32   Entered;
	u8    Column;
	u8    Row;
	u8    RowBackup;
	u8    OnLayoutChange;
};


extern struct KBDData gKeyboardData;
extern u8            *gSlotName;


/*
	Initialize the Keyboard and if an input was there before, also copy it from gSlotName.
*/
void Keyboard_Init() {
	u8              Character;
	register u8    *NamePtr asm("r5");
	struct KBDData *Data;
	u8              Characters[2];
	
	/* Get keyboard data pointer. */
	Data = &gKeyboardData;

	/* Reset some stuff with the allocator to 0. */
	FUN_0802CB40(gKeyboardData.InputTasks, 0, sizeof(gKeyboardData.InputTasks));
	FUN_0802CB40(Data->InputWidths, 0, sizeof(Data->InputWidths));

	/* Reset vars. */
	Data->InputLen       = 0;
	Data->Mode           = KEYBOARD_MODE_CAPS;
	Data->OnLayoutChange = 0;

	FUN_0801985C(); // Draw Menu Text.

	/* Check if we already entered something in the Keyboard. */
	if (Data->Entered != 0) {
		NamePtr   = &gSlotName;
		Character = *NamePtr;

		/* Go through the characters in the input / name. */
		if (Character != 0) {
			do {
				Characters[0] = Character;
				Characters[1] = 0x0;      // NULL Terminator.
				FUN_08012E6C(Characters); // Input to OAM Sprite.
				NamePtr++;
				Character = *NamePtr;

				if (Character == 0) break; // Break if there's no other character.
			} while(true);
			
		}
	}

	FUN_08012BB0(); // Init Menu 2.
}