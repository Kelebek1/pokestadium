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
extern void* D_800FC680;
extern void* D_800FC684;
extern void* D_800FC688;
extern void* D_800FC68C;
extern void* D_800FC690;
extern s32 D_800FC698;
extern void* D_800FC6A4;
extern void* D_800FC6A8;
extern void* D_800FC6AC;
extern s32 D_800FC6B0;
extern s32 D_800FC6C0;
extern s32* D_800FC6CC;
extern void* D_800FC6D0;
extern s32* D_800FC6D4;
extern void* D_800FC6D8;



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

void func_80037360(s32* arg0, s32 arg1, s32 arg2) {
    s32 i;

    for (i = 0; i < arg2; i++) {
        arg0[i] += arg1;
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
extern s32* D_800FC6EC;
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


#pragma GLOBAL_ASM("asm/nonmatchings/373A0/func_800373D8.s")

/*
s32 func_800373D8(void) {
    s32* sp78;
    Struct_func_80038B68 sp38;
    s32 sp34;

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
    func_8004ADB0(&D_15C0000, D_800FC6E0, 0x1C);
    func_80037360(D_800FC6E0 + 4, &D_15C0000, 6);
    sp78 = D_800FC798;
    func_8004ADB0(D_800FC6E0->unk4, sp78, 0xC);
    D_800FC6E4 = alHeapDBAlloc(NULL, 0, D_800FC810, sp78[2] + 3, 4);
    func_8004ADB0(D_800FC6E0->unk4, D_800FC6E4, (sp78[2] * 4) + 0xC);
    func_80037360(D_800FC6E4, D_800FC6E0->unk4, 2);
    func_80037360(D_800FC6E4 + 0xC, D_800FC6E0->unk4, sp78[2]);
    func_8004ADB0(D_800FC6E4->unk0, D_800FC6DC, D_800FC6E4->unk4 - D_800FC6E4->unk0);
    D_800FC684 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, 0x4120);
    func_80050B40(D_800FC6DC, D_800FC684, 0x4120);
    func_8003979C(D_800FC684, D_800FC6E4->unk4);
    D_800FC680 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, 0x98D8);
    func_8004ADB0(D_800FC6E0->unk8, sp78, 8);
    sp34 = (sp78->unk2 * 8) + 4;
    D_800FC6E8 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sp34);
    func_8004ADB0(D_800FC6E0->unk8, D_800FC6E8, sp34);
    alSeqFileNew(D_800FC6E8, D_800FC6E0->unk8);
    D_800FC6EC = alHeapDBAlloc(NULL, 0, D_800FC810, 3, 4);
    func_8004ADB0(D_800FC6E8->seqArray, D_800FC6EC, 0xC);
    func_80037360(D_800FC6EC, D_800FC6E8->seqArray, 3);
    func_8004ADB0(D_800FC6EC->unk0, D_800FC6DC, D_800FC6EC->unk4 - D_800FC6EC->unk0);
    D_800FC688 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, 0xBB8);
    func_80050B40(D_800FC6DC, D_800FC688, 0xBB8);
    func_800397BC(D_800FC688);
    func_8004ADB0(D_800FC6EC->unk4, D_800FC6DC, D_800FC6EC->unk8 - D_800FC6EC->unk4);
    D_800FC68C = alHeapDBAlloc(NULL, 0, D_800FC810, 1, 0x157C);
    func_80050B40(D_800FC6DC, D_800FC68C, 0x157C);
    func_8003979C(D_800FC68C, D_800FC6EC->unk8);
    func_8004ADB0(D_800FC6E8->unkC, sp78, 0xC);
    D_800FC6F0 = alHeapDBAlloc(NULL, 0, D_800FC810, 4, sp78->unk0 + 3);
    func_8004ADB0(D_800FC6E8->unkC, D_800FC6F0, (sp78->unk0 * 4) + 0xC);
    func_80037360(D_800FC6F0 + 4, D_800FC6E8->unkC, sp78->unk0 + 2);
    func_8004ADB0(D_800FC6F0->unk4, D_800FC6DC, D_800FC6F0->unk8 - D_800FC6F0->unk4);
    D_800FC690 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, 0x2EE0);
    func_80050B40(D_800FC6DC, D_800FC690, 0x2EE0);
    func_8003979C(D_800FC690, D_800FC6F0->unk8);
    D_800FC698.unk0 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, 0x258);
    D_800FC698.unk4 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, 0x258);
    D_800FC698.unk8 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, 0x258);
    func_8004ADB0(D_800FC6E8->unk14, sp78, 0xC);
    D_800FC6FC = alHeapDBAlloc(NULL, 0, D_800FC810, 4, sp78->unk0 + 3);
    func_8004ADB0(D_800FC6E8->unk14, D_800FC6FC, (sp78->unk0 * 4) + 0xC);
    func_80037360(D_800FC6FC + 4, D_800FC6E8->unk14, sp78->unk0 + 2);
    func_8004ADB0(D_800FC6FC->unk4, D_800FC6DC, D_800FC6FC->unk8 - D_800FC6FC->unk4);
    D_800FC6AC = alHeapDBAlloc(NULL, 0, D_800FC810, 1, 0x9C4);
    func_80050B40(D_800FC6DC, D_800FC6AC, 0x9C4);
    func_8003979C(D_800FC6AC, D_800FC6FC->unk8);
    D_800FC6B0.unk0 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, 0x3E8);
    D_800FC6B0.unk4 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, 0x3E8);
    D_800FC6B0.unk8 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, 0x3E8);
    func_8004ADB0(D_800FC6E8->unk1C, sp78, 8);
    sp34 = (sp78->unk2 * 8) + 4;
    D_800FC6F4 = alHeapDBAlloc(NULL, 0, D_800FC810, 4, sp34);
    func_8004ADB0(D_800FC6E8->unk1C, D_800FC6F4, sp34);
    alSeqFileNew(D_800FC6F4, D_800FC6E8->unk1C);
    func_8004ADB0(D_800FC6F4->unkC, sp78, 8);
    sp34 = (sp78->unk2 * 8) + 4;
    D_800FC6F8 = alHeapDBAlloc(NULL, 0, D_800FC810, 4, sp34);
    func_8004ADB0(D_800FC6F4->unkC, D_800FC6F8, sp34);
    alSeqFileNew(D_800FC6F8, D_800FC6F4->unkC);
    D_800FC6A4 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, 0x1388);
    D_800FC6A8 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, 0xBB8);
    func_8004ADB0(D_800FC6E0->unkC, sp78, 8);
    sp34 = (sp78->unk2 * 8) + 4;
    D_800FC700 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sp34);
    func_8004ADB0(D_800FC6E0->unkC, D_800FC700, sp34);
    alSeqFileNew(D_800FC700, D_800FC6E0->unkC);
    func_8004ADB0(D_800FC6E0->unk10, sp78, 8);
    sp34 = (sp78->unk2 * 8) + 4;
    D_800FC704 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sp34);
    func_8004ADB0(D_800FC6E0->unk10, D_800FC704, sp34);
    alSeqFileNew(D_800FC704, D_800FC6E0->unk10);
    D_800FC6C0.unk0 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, 0x44C);
    D_800FC6C0.unk4 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, 0x44C);
    D_800FC6C0.unk8 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, 0x44C);
    func_8004ADB0(D_800FC704->unk4, sp78, 8);
    sp34 = (sp78->unk2 * 8) + 4;
    D_800FC708 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sp34);
    func_8004ADB0(D_800FC704->unk4, D_800FC708, sp34);
    alSeqFileNew(D_800FC708, D_800FC704->unk4);
    D_80079364 = 0;
    func_8004ADB0(D_800FC704->unk14, sp78, 8);
    sp34 = (sp78->unk2 * 8) + 4;
    D_800FC714 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sp34);
    func_8004ADB0(D_800FC704->unk14, D_800FC714, sp34);
    alSeqFileNew(D_800FC714, D_800FC704->unk14);
    D_800FC6D8 = alHeapDBAlloc(NULL, 0, D_800FC810, 0xB80, 2);
    D_800FC6D4 = alHeapDBAlloc(NULL, 0, D_800FC810, 0x1388, 1);
    func_8004ADB0(D_800FC6E0->unk14, D_800FC6D4, D_800FC6E0->unk18 - D_800FC6E0->unk14);
    D_800FC6CC = alHeapDBAlloc(NULL, 0, D_800FC810, 0x100, 1);
    func_8004ADB0(D_800FC6E0->unk18, D_800FC6CC, 0x100);

    for (i = 0; i < 8; i++) {
        D_800FC6CC[i] += D_800FC6E0->unk18;
    }

    D_800FC6D0 = alHeapDBAlloc(NULL, 0, D_800FC810, 0x2328, 1);
    func_8004AE90(2, 2);
    func_8004AE90(1, 3);
    D_800FC820 = 0;
    return D_800FC820->cur - D_800FC820->base;
}
*/
