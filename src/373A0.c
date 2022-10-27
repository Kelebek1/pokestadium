#include "common.h"


extern s32 D_15C0000;
extern s32 D_80077970;
extern s32 D_80077C64;
extern s32 D_80077C68;
extern s32 D_80077C6C;
extern s32 D_80077C70;
extern s32 D_80077C74;
extern s32 D_80077C78;
extern s32 D_80077C7C;
extern s32 D_80079014;
extern s8 D_80079364;
extern s32 D_800B32A0;

extern char (*D_800FC680)[0x98D8];
extern char (*D_800FC684)[0x4120];
extern char (*D_800FC688)[0xBB8];
extern char (*D_800FC68C)[0x157C];
extern char (*D_800FC690)[0x2EE0];

typedef struct {
    /* 0x000 */ char unk_000[0x258];
} Struct_D_800FC698_sub; // size = 0x258

typedef struct {
    /* 0x00 */ Struct_D_800FC698_sub* unk_00;
    /* 0x04 */ Struct_D_800FC698_sub* unk_04;
    /* 0x08 */ Struct_D_800FC698_sub* unk_08;
} Struct_D_800FC698;

extern Struct_D_800FC698 D_800FC698;

extern char (*D_800FC6A4)[0x1388];
extern char (*D_800FC6A8)[0xBB8];
extern char (*D_800FC6AC)[0x9C4];

typedef struct {
    /* 0x000 */ char unk_000[0x3E8];
} Struct_D_800FC6B0_sub; // size = 0x3E8

typedef struct {
    /* 0x00 */ Struct_D_800FC6B0_sub* unk_00;
    /* 0x04 */ Struct_D_800FC6B0_sub* unk_04;
    /* 0x08 */ Struct_D_800FC6B0_sub* unk_08;
} Struct_D_800FC6B0;
extern Struct_D_800FC6B0 D_800FC6B0;

typedef struct {
    /* 0x000 */ char unk_000[0x44C];
} Struct_D_800FC6C0_sub; // size = 0x44C

typedef struct {
    /* 0x00 */ Struct_D_800FC6C0_sub* unk_00;
    /* 0x04 */ Struct_D_800FC6C0_sub* unk_04;
    /* 0x08 */ Struct_D_800FC6C0_sub* unk_08;
} Struct_D_800FC6C0;
extern Struct_D_800FC6C0 D_800FC6C0;

extern char (*D_800FC6CC)[0x100];
extern char (*D_800FC6D0)[0x2328];
extern char (*D_800FC6D4)[0x1388];
extern u16 (*D_800FC6D8)[0xB80];



#pragma GLOBAL_ASM("asm/nonmatchings/373A0/func_800367A0.s")

s32 func_80037234(s32 arg0, s32 arg1) {
    switch (arg0) {
        case 0x0:
            if (arg1 == 0) {
                arg1 = 1;
            }
            func_800392A8(D_80077C64, arg1);
            D_80077C64 = 0;
            return 1;
        case 0x4:
            if (arg1 == 0) {
                arg1 = 1;
            }
            func_800392A8(D_80077C68, arg1);
            return 1;
        case 0x3:
            func_800392A8(D_80077C6C, 0x3C);
            D_80077C6C = 0;
            return 1;
        case 0xA1:
            func_800392A8(D_80077C70, 0x78);
            D_80077C70 = 0;
            return 1;
        case 0x5A:
            func_800392A8(D_80077C74, 0x5A);
            D_80077C74 = 0;
            return 1;
        case 0x5B:
            func_800392A8(D_80077C78, 0x5A);
            D_80077C78 = 0;
            return 1;
    }
    return 0;
}

void func_80037338(void) {
}

void func_80037340(void) {
    func_8003CADC();
}

// Used to add a base vrom address to all offsets in a given array.
void func_80037360(s32* addr, s32 value, s32 count) {
    s32 i;

    for (i = 0; i < count; i++) {
        addr[i] += value;
    }
}

typedef struct {
    /* 0x00 */ s32 unk_00;
    /* 0x04 */ s32 unk_04;
    /* 0x08 */ s32 unk_08;
    /* 0x0C */ s32* unk_0C;
    /* 0x10 */ s32 unk_10;
    /* 0x14 */ s32 unk_14;
    /* 0x18 */ s32 unk_18;
    /* 0x1C */ s32 unk_1C;
    /* 0x20 */ s32 unk_20;
    /* 0x24 */ s32 unk_24;
    /* 0x28 */ s32 unk_28;
    /* 0x2C */ s32 unk_2C;
} Struct_func_80038B68; // size >= 0x30

typedef struct {
    /* 0x0000 */ char unk_0000[0x61A8];
} StructD_800FC6DC; // size = 0x61A8

extern StructD_800FC6DC* D_800FC6DC;
extern s32 (*D_800FC6E0)[7];
extern s32* D_800FC6E4;
extern ALSeqFile* D_800FC6E8;
extern s32 (*D_800FC6EC)[3];
extern s32* D_800FC6F0;
extern ALSeqFile* D_800FC6F4;
extern ALSeqFile* D_800FC6F8;
extern s32* D_800FC6FC;
extern ALSeqFile* D_800FC700;
extern ALSeqFile* D_800FC704;
extern ALSeqFile* D_800FC708;
extern ALSeqFile* D_800FC714;
extern s32 (*D_800FC798)[8];
extern ALHeap* D_800FC810;
extern s32 D_800FC820;


//#pragma GLOBAL_ASM("asm/nonmatchings/373A0/func_800373D8.s")

typedef struct {
    /* 0x00 */ u16 unk_00;
    /* 0x02 */ u16 unk_02;
    /* 0x04 */ char unk_04[0x4];
    /* 0x08 */ s32 unk_08;
} Struct_func_800373D8;

s32 func_800373D8(void) {
    Struct_func_800373D8* sp78;
    Struct_func_80038B68 sp38;
    s32 sp34;
    s32 i;

    sp38.unk_00 = 0x18;
    sp38.unk_04 = 0x34;
    sp38.unk_08 = 0x18;
    sp38.unk_0C = &D_800B32A0;
    sp38.unk_10 = 0x493E0;
    sp38.unk_14 = 0x100;
    sp38.unk_18 = 0x7D00;
    sp38.unk_1C = 0x440;
    sp38.unk_20 = 1;
    sp38.unk_24 = 0x30;
    sp38.unk_28 = 0x400;
    sp38.unk_2C = 0x400;
    func_80038B68(&sp38);
    func_8004AD40(2);
    D_800FC6DC = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(StructD_800FC6DC));
    D_800FC798 = alHeapDBAlloc(NULL, 0, D_800FC810, 8, 4);
    D_800FC6E0 = alHeapDBAlloc(NULL, 0, D_800FC810, 7, 4);
    func_8004ADB0(D_15C0000, D_800FC6E0, 0x1C);
    func_80037360(&D_800FC6E0[1], &D_15C0000, 6);
    sp78 = (Struct_func_800373D8*)D_800FC798;
    func_8004ADB0(D_800FC6E0[1], sp78, 0xC);
    D_800FC6E4 = alHeapDBAlloc(NULL, 0, D_800FC810, sp78->unk_08 + 3, 4);
    func_8004ADB0(D_800FC6E0[1], D_800FC6E4, 0xC + (sp78->unk_08 * 4));
    func_80037360(D_800FC6E4, D_800FC6E0[1], 2);
    func_80037360(&D_800FC6E4[3], D_800FC6E0[1], sp78->unk_08);
    func_8004ADB0(D_800FC6E4[0], D_800FC6DC, D_800FC6E4[1] - D_800FC6E4[0]);
    D_800FC684 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(D_800FC684));
    func_80050B40(D_800FC6DC, D_800FC684, sizeof(D_800FC684));
    func_8003979C(D_800FC684, D_800FC6E4[1]);
    D_800FC680 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(D_800FC680));
    func_8004ADB0(D_800FC6E0[2], sp78, 8);
    // 0x20 * 8
    sp34 = (sp78->unk_02 * 8) + 4;
    D_800FC6E8 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sp34);
    func_8004ADB0(D_800FC6E0[2], D_800FC6E8, sp34);
    alSeqFileNew(D_800FC6E8, D_800FC6E0[2]);
    D_800FC6EC = alHeapDBAlloc(NULL, 0, D_800FC810, 3, 4);
    func_8004ADB0(D_800FC6E8->seqArray[0].offset, D_800FC6EC, 0xC);
    func_80037360(D_800FC6EC, D_800FC6E8->seqArray[0].offset, 3);
    func_8004ADB0(D_800FC6EC[0], D_800FC6DC, D_800FC6EC[1] - D_800FC6EC[0]);
    D_800FC688 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(D_800FC688));
    func_80050B40(D_800FC6DC, D_800FC688, sizeof(D_800FC688));
    func_800397BC(D_800FC688);
    func_8004ADB0(D_800FC6EC[1], D_800FC6DC, D_800FC6EC[2] - D_800FC6EC[1]);
    D_800FC68C = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(D_800FC68C));
    func_80050B40(D_800FC6DC, D_800FC68C, sizeof(D_800FC68C));
    func_8003979C(D_800FC68C, D_800FC6EC[2]);
    func_8004ADB0(&D_800FC6E8[1], sp78, 0xC);
    D_800FC6F0 = alHeapDBAlloc(NULL, 0, D_800FC810, 4, sp78->unk_00 + 3);
    func_8004ADB0(&D_800FC6E8[1], D_800FC6F0, 0xC + (sp78->unk_00 * 4));
    func_80037360(&D_800FC6F0[1], &D_800FC6E8[1], sp78->unk_00 + 2);
    func_8004ADB0(&D_800FC6F0[1], D_800FC6DC, D_800FC6F0[2] - D_800FC6F0[1]);
    D_800FC690 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(D_800FC690));
    func_80050B40(D_800FC6DC, D_800FC690, sizeof(D_800FC690));
    func_8003979C(D_800FC690, D_800FC6F0[2]);
    D_800FC698.unk_00 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(Struct_D_800FC698_sub));
    D_800FC698.unk_04 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(Struct_D_800FC698_sub));
    D_800FC698.unk_08 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(Struct_D_800FC698_sub));
    func_8004ADB0(&D_800FC6E8[2], sp78, 0xC);
    D_800FC6FC = alHeapDBAlloc(NULL, 0, D_800FC810, 4, sp78->unk_00 + 3);
    func_8004ADB0(&D_800FC6E8[2], D_800FC6FC, 0xC + (sp78->unk_00 * 4));
    func_80037360(&D_800FC6FC[1], &D_800FC6E8[2], sp78->unk_00 + 2);
    func_8004ADB0(&D_800FC6FC[1], D_800FC6DC, D_800FC6FC[2] - D_800FC6FC[1]);
    D_800FC6AC = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(D_800FC6AC));
    func_80050B40(D_800FC6DC, D_800FC6AC, sizeof(D_800FC6AC));
    func_8003979C(D_800FC6AC, D_800FC6FC[2]);
    D_800FC6B0.unk_00 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(Struct_D_800FC6B0_sub));
    D_800FC6B0.unk_04 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(Struct_D_800FC6B0_sub));
    D_800FC6B0.unk_08 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(Struct_D_800FC6B0_sub));
    func_8004ADB0(&D_800FC6E8[7], sp78, 8);
    sp34 = (sp78->unk_02 * 8) + 4;
    D_800FC6F4 = alHeapDBAlloc(NULL, 0, D_800FC810, 4, sp34);
    func_8004ADB0(&D_800FC6E8[7], D_800FC6F4, sp34);
    alSeqFileNew(D_800FC6F4, &D_800FC6E8[7]);
    func_8004ADB0(&D_800FC6F4[1], sp78, 8);
    sp34 = (sp78->unk_02 * 8) + 4;
    D_800FC6F8 = alHeapDBAlloc(NULL, 0, D_800FC810, 4, sp34);
    func_8004ADB0(&D_800FC6F4[1], D_800FC6F8, sp34);
    alSeqFileNew(D_800FC6F8, &D_800FC6F4[1]);
    D_800FC6A4 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(D_800FC6A4));
    D_800FC6A8 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(D_800FC6A8));
    func_8004ADB0(D_800FC6E0[3], sp78, 8);
    sp34 = (sp78->unk_02 * 8) + 4;
    D_800FC700 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sp34);
    func_8004ADB0(&D_800FC6E0[3], D_800FC700, sp34);
    alSeqFileNew(D_800FC700, D_800FC6E0[3]);
    func_8004ADB0(&D_800FC6E0[4], sp78, 8);
    sp34 = (sp78->unk_02 * 8) + 4;
    D_800FC704 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sp34);
    func_8004ADB0(&D_800FC6E0[4], D_800FC704, sp34);
    alSeqFileNew(D_800FC704, D_800FC6E0[4]);
    D_800FC6C0.unk_00 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(Struct_D_800FC6C0_sub));
    D_800FC6C0.unk_04 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(Struct_D_800FC6C0_sub));
    D_800FC6C0.unk_08 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(Struct_D_800FC6C0_sub));
    func_8004ADB0(&D_800FC704->seqArray[0].offset, sp78, 8);
    sp34 = (sp78->unk_02 * 8) + 4;
    D_800FC708 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sp34);
    func_8004ADB0(&D_800FC704->seqArray[0].offset, D_800FC708, sp34);
    alSeqFileNew(D_800FC708, D_800FC704->seqArray[0].offset);
    D_80079364 = 0;
    func_8004ADB0(&D_800FC704[2], sp78, 8);
    sp34 = (sp78->unk_02 * 8) + 4;
    D_800FC714 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sp34);
    func_8004ADB0(&D_800FC704[2], D_800FC714, sp34);
    alSeqFileNew(D_800FC714, &D_800FC704[2]);
    D_800FC6D8 = alHeapDBAlloc(NULL, 0, D_800FC810, 0xB80, 2);
    D_800FC6D4 = alHeapDBAlloc(NULL, 0, D_800FC810, sizeof(D_800FC6D4), 1);
    func_8004ADB0(&D_800FC6E0[5], D_800FC6D4, D_800FC6E0[6] - D_800FC6E0[5]);
    D_800FC6CC = alHeapDBAlloc(NULL, 0, D_800FC810, sizeof(D_800FC6CC), 1);
    func_8004ADB0(&D_800FC6E0[6], D_800FC6CC, sizeof(D_800FC6CC));

    for (i = 0; i < 8; i++) {
        (*D_800FC6CC)[i] += (*D_800FC6E0)[6];
    }

    D_800FC6D0 = alHeapDBAlloc(NULL, 0, D_800FC810, sizeof(D_800FC6D0), 1);
    func_8004AE90(2, 2);
    func_8004AE90(1, 3);
    D_800FC820 = 0;
    return D_800FC810->cur - D_800FC810->base;
}
