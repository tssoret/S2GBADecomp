#ifndef _ITEM_TABLE_DATA_H
#define _ITEM_TABLE_DATA_H

#include "types.h"

struct ItemInfoStr {
	u32         Unk1;
	u32         StringID;
	u32         Price;
	const void *Unk2;
	u8          Unk3[0x2];
};


extern const struct ItemInfoStr ItemInfoData[];
extern const char               Sims3ObjectDescBug[];

#endif