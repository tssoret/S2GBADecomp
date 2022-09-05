#include "minigame_tables.h"

/* TODO: Handle them elsewhere, as we may need them elsewhere. */
#define CONFIDENCE   0
#define MECHANICAL   1
#define STRENGTH     2
#define PERSONALITY  3
#define HOTNESS      4
#define INTELLECT    5

#define MINIGAMES 8
#define LEVELS    5

const struct MinigameUnlockStr MinigameUnlockTable[MINIGAMES][LEVELS - 1] = {
	/* Bigfoot Love Chickens. */
	{
		/* Level 2. */
		{ .Points = 30, .SkillType1 = INTELLECT, .SkillPoints1 = 1, .SkillType2 = STRENGTH, .SkillPoints2 = 0 },
		/* Level 3. */
		{ .Points = 25, .SkillType1 = INTELLECT, .SkillPoints1 = 2, .SkillType2 = STRENGTH, .SkillPoints2 = 0 },
		/* Level 4. */
		{ .Points = 15, .SkillType1 = INTELLECT, .SkillPoints1 = 3, .SkillType2 = STRENGTH, .SkillPoints2 = 1 },
		/* Level 5. */
		{ .Points = 10, .SkillType1 = INTELLECT, .SkillPoints1 = 4, .SkillType2 = STRENGTH, .SkillPoints2 = 2 },
	},

	/* Car Commercial. */
	{
		/* Level 2. */
		{ .Points = 750, .SkillType1 = CONFIDENCE, .SkillPoints1 = 1, .SkillType2 = HOTNESS, .SkillPoints2 = 1  },
		/* Level 3. */
		{ .Points = 800, .SkillType1 = CONFIDENCE, .SkillPoints1 = 2, .SkillType2 = HOTNESS, .SkillPoints2 = 2  },
		/* Level 4. */
		{ .Points = 1000, .SkillType1 = CONFIDENCE, .SkillPoints1 = 3, .SkillType2 = HOTNESS, .SkillPoints2 = 4 },
		/* Level 5. */
		{ .Points = 1500, .SkillType1 = CONFIDENCE, .SkillPoints1 = 4, .SkillType2 = HOTNESS, .SkillPoints2 = 5 },
	},

	/* Keelhaulin' Cards. */
	{
		/* Level 2. */
		{ .Points = 200, .SkillType1 = INTELLECT, .SkillPoints1 = 0, .SkillType2 = PERSONALITY, .SkillPoints2 = 1 },
		/* Level 3. */
		{ .Points = 200, .SkillType1 = INTELLECT, .SkillPoints1 = 1, .SkillType2 = PERSONALITY, .SkillPoints2 = 2 },
		/* Level 4. */
		{ .Points = 200, .SkillType1 = INTELLECT, .SkillPoints1 = 2, .SkillType2 = PERSONALITY, .SkillPoints2 = 3 },
		/* Level 5. */
		{ .Points = 200, .SkillType1 = INTELLECT, .SkillPoints1 = 3, .SkillType2 = PERSONALITY, .SkillPoints2 = 4 },
	},

	/* Cattle Cleanup. */
	{
		/* Level 2. */
		{ .Points = 9, .SkillType1 = MECHANICAL, .SkillPoints1 = 1, .SkillType2 = STRENGTH, .SkillPoints2 = 0 },
		/* Level 3. */
		{ .Points = 10, .SkillType1 = MECHANICAL, .SkillPoints1 = 2, .SkillType2 = STRENGTH, .SkillPoints2 = 1 },
		/* Level 4. */
		{ .Points = 10, .SkillType1 = MECHANICAL, .SkillPoints1 = 3, .SkillType2 = STRENGTH, .SkillPoints2 = 2 },
		/* Level 5. */
		{ .Points = 11, .SkillType1 = MECHANICAL, .SkillPoints1 = 5, .SkillType2 = STRENGTH, .SkillPoints2 = 3 },
	},

	/* King Chug Chug. */
	{
		/* Level 2. */
		{ .Points = 60, .SkillType1 = HOTNESS, .SkillPoints1 = 1, .SkillType2 = PERSONALITY, .SkillPoints2 = 1 },
		/* Level 3. */
		{ .Points = 60, .SkillType1 = HOTNESS, .SkillPoints1 = 3, .SkillType2 = PERSONALITY, .SkillPoints2 = 1 },
		/* Level 4. */
		{ .Points = 60, .SkillType1 = HOTNESS, .SkillPoints1 = 4, .SkillType2 = PERSONALITY, .SkillPoints2 = 2 },
		/* Level 5. */
		{ .Points = 45, .SkillType1 = HOTNESS, .SkillPoints1 = 5, .SkillType2 = PERSONALITY, .SkillPoints2 = 3 },
	},

	/* Canyon Jumping. */
	{
		/* Level 2. */
		{ .Points = 950, .SkillType1 = MECHANICAL, .SkillPoints1 = 1, .SkillType2 = INTELLECT, .SkillPoints2 = 1 },
		/* Level 3. */
		{ .Points = 975, .SkillType1 = MECHANICAL, .SkillPoints1 = 2, .SkillType2 = INTELLECT, .SkillPoints2 = 2 },
		/* Level 4. */
		{ .Points = 1000, .SkillType1 = MECHANICAL, .SkillPoints1 = 3, .SkillType2 = INTELLECT, .SkillPoints2 = 3 },
		/* Level 5. */
		{ .Points = 1050, .SkillType1 = MECHANICAL, .SkillPoints1 = 4, .SkillType2 = INTELLECT, .SkillPoints2 = 5 },
	},

	/* Chop Shop. */
	{
		/* Level 2. */
		{ .Points = 8, .SkillType1 = MECHANICAL, .SkillPoints1 = 0, .SkillType2 = STRENGTH, .SkillPoints2 = 2 },
		/* Level 3. */
		{ .Points = 9, .SkillType1 = MECHANICAL, .SkillPoints1 = 1, .SkillType2 = STRENGTH, .SkillPoints2 = 3 },
		/* Level 4. */
		{ .Points = 10, .SkillType1 = MECHANICAL, .SkillPoints1 = 2, .SkillType2 = STRENGTH, .SkillPoints2 = 4 },
		/* Level 5. */
		{ .Points = 12, .SkillType1 = MECHANICAL, .SkillPoints1 = 3, .SkillType2 = STRENGTH, .SkillPoints2 = 5 },
	},

	/* Yeti Loves Cake. */
	{
		/* Level 2. */
		{ .Points = 30, .SkillType1 = INTELLECT, .SkillPoints1 = 0, .SkillType2 = STRENGTH, .SkillPoints2 = 0 },
		/* Level 3. */
		{ .Points = 25, .SkillType1 = INTELLECT, .SkillPoints1 = 0, .SkillType2 = STRENGTH, .SkillPoints2 = 0 },
		/* Level 4. */
		{ .Points = 15, .SkillType1 = INTELLECT, .SkillPoints1 = 0, .SkillType2 = STRENGTH, .SkillPoints2 = 0 },
		/* Level 5. */
		{ .Points = 10, .SkillType1 = INTELLECT, .SkillPoints1 = 0, .SkillType2 = STRENGTH, .SkillPoints2 = 0 },
	}
};

const u32 MinigameLevelSelectLCDTiles[3] = {
	0x3F03, 0x3E02, 0x3D05
};