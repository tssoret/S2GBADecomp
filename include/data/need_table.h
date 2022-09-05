#ifndef _NEED_TABLE_DATA_H
#define _NEED_TABLE_DATA_H

#include "types.h"

struct NeedTableStr {
	u8 TriggerCount;
	u8 Percentage;
};


extern const struct NeedTableStr NeedTable[];

#endif