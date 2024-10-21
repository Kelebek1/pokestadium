#ifndef _FRAGMENT23_H_
#define _FRAGMENT23_H_

#include "global.h"
#include "src/fragments/26/fragment26.h"

typedef struct unk_func_88200FA0_030 {
    /* 0x00 */ unk_func_88001300_000 unk_00;
    /* 0x2C */ unk_func_88001300_038* unk_2C;
    /* 0x30 */ unk_func_88200FA0_030_030* unk_30;
    /* 0x34 */ unk_func_88503298* unk_34;
    /* 0x38 */ unk_func_88200FA0_030_038 unk_38;
} unk_func_88200FA0_030; // size = 0x44

typedef struct unk_func_88200FA0 {
    /* 0x00 */ unk_func_88001300_000 unk_00;
    /* 0x2C */ unk_func_885088F4* unk_2C;
    /* 0x30 */ unk_func_88200FA0_030* unk_30;
} unk_func_88200FA0; // size = 0x34

extern u32 D_88223E48[];

s32 func_88200020(void);
void func_882000E4(void);
s32 func_88200110(UNUSED s32 arg0, UNUSED s32 arg1);
s32 func_88200190(s32 arg0, s32 arg1);

void func_88200290(unk_func_88503298* arg0, s32 arg1, s32 arg2, MemoryPool* arg3);
void func_882004BC(unk_func_88503298* arg0, s8* arg1);
void func_882004C8(unk_func_88200FA0_030* arg0, s32 arg1, s32 arg2, unk_func_88001300_000* arg3, MemoryPool* arg4);
void func_88200968(unk_func_88200FA0_030* arg0, s32 arg1);
void func_882009B4(s32 arg0, s32 arg1, char* arg2, s32 arg3);
s32 func_88200A30(unk_func_88200FA0_030* arg0, Controller* arg1);
void func_88200ACC(unk_func_88200FA0_030* arg0);
void func_88200AF4(unk_func_88200FA0_030* arg0);
s32 func_88200B60(unk_func_88200FA0_030* arg0, Controller* arg1);
void func_88200C44(unk_func_88200FA0* arg0, s32 arg1, s32 arg2, s32 arg3, MemoryPool* arg4);
s32 func_88200F00(unk_func_88200FA0* arg0);
void func_88200FA0(unk_func_88200FA0* arg0);
s32 func_8820104C(s32 arg0, UNUSED s32 arg1);

void func_88205F1C(s32);

void func_8820C700(s32, s32);
void func_8821483C(s32);
void func_882149A0(unk_func_882149A0*, s16, s16, s16, s32, s32, s32, Color_RGBA8, Color_RGBA8, Color_RGBA8);
void func_882158BC(unk_func_882149A0*);
void func_88215974(unk_func_88200FA0_030_030*, s32);
void func_882173EC(unk_func_882173EC*, s32, s32);
void func_88217740(unk_func_88217740*, s32, s32);
void func_88217BAC(unk_func_88217740*);
void func_88217BB8(unk_func_88217740*);
void func_88217BC0(unk_func_88217740*);

#endif // _FRAGMENT23_H_
