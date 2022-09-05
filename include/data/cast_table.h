#ifndef _CAST_TABLE_DATA_H
#define _CAST_TABLE_DATA_H

#include "types.h"

#define ACTION_TYPES 3

struct CastSFXIDStr {
	u16 Greeting;
	u16 Leaving;
	u16 Actions[ACTION_TYPES * 2]; // First: Accept Sound, Second: Deny Sound.
};

struct SmthCastTableStr {
	u32                        StringID;
	const void                *AngryPic;
	const void                *NeutralPic;
	const void                *HappyPic;
	const struct CastSFXIDStr *SFXIDPtr;
	u32                        Gender;
	const u32                 *HiddenWantItem;
	u32                        CanDoRomance;
	s8                         SecretUnlockType;
	s8                         BasePercentages[3];
	s8                         BaseDamages[3];
	u8                         SmthProg;
};


extern const u16                     FeelingItemTable[][];
extern const struct SmthCastTableStr CastInfoTable[];

#endif