#ifndef _3D340_H_
#define _3D340_H_

#include "global.h"
#include "src/fragments/26/fragment26.h"

typedef struct unk_func_88205880_A030 {
    /* 0x00 */ s32* unk_00;
    /* 0x04 */ s32 unk_04;
    /* 0x08 */ s32 unk_08;
} unk_func_88205880_A030; // size = 0xC

void func_8002C740(s8*, unk_func_88201DA0_034*, s32, s32, s32);
void func_8002CBC0(unk_func_88200FA0_030_038*, s32, MemoryPool*);
void func_8002CBB0(unk_func_88205880_A030*, void*, s32, s32);
void func_8002CC2C(unk_func_88200FA0_030_038*, char*, s32);

#endif // _3D340_H_
