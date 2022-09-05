#ifndef _TYPES_H
#define _TYPES_H

/* normal types. */
typedef unsigned       u8;
typedef unsigned short u16;
typedef unsigned long  u32;
typedef signed         s8;
typedef signed short   s16;
typedef signed long    s32;

/* volatile data types. */
typedef volatile u8   vu8;
typedef volatile u16 vu16;
typedef volatile u32 vu32;
typedef volatile s8   vs8;
typedef volatile s16 vs16;
typedef volatile s32 vs32;

/* booleans with different sizes. */
typedef u8  bool8;
typedef u16 bool16;
typedef u32 bool32;

/* true / false, as it doesn't exist in C. */
#define false 0
#define true  1

#endif