#ifndef _MINIGAME_TABLES_DATA_H
#define _MINIGAME_TABLES_DATA_H

#include "types.h"

struct MinigameUnlockStr {
	u32 Points;
	u32 SkillType1;
	u32 SkillPoints1;
	u32 SkillType2;
	u32 SkillPoints2;
};


extern const struct MinigameUnlockStr MinigameUnlockTable[][];
extern const u32 MinigameLevelSelectLCDTiles[3];

#endif