#ifndef _TYPES_H
#define _TYPES_H

#include <stdint.h>

/* normal types. */
typedef uint8_t   u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef int8_t    s8;
typedef int16_t  s16;
typedef int32_t  s32;
typedef int64_t  s64;

/* volatile data types. */
typedef volatile u8   vu8;
typedef volatile u16 vu16;
typedef volatile u32 vu32;
typedef volatile u64 vu64;
typedef volatile s8   vs8;
typedef volatile s16 vs16;
typedef volatile s32 vs32;
typedef volatile s64 vs64;

/* booleans with different sizes. */
typedef u8  bool8;
typedef u16 bool16;
typedef u32 bool32;

/* true / false, as it doesn't exist in C. */
#define false 0
#define true  1

/* Some common function typedef's. */
typedef void (*IntrFunc)(void);

#endif