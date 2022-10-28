#include "common.h"

extern s32 D_15C0000;

extern u8 D_80077970[0x97][5];

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

typedef struct {
    /* 0x00 */ s32 unk_00;
    /* 0x04 */ s32 unk_04;
    /* 0x08 */ s32 unk_08;
} Struct_D_800FC798;
extern Struct_D_800FC798* D_800FC798;

extern ALHeap* D_800FC810;
extern s32 D_800FC820;

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

extern s32 (*D_800FC6CC)[32][2];
extern char (*D_800FC6D0)[0x2328];
extern char (*D_800FC6D4)[0x1388];
extern u16 (*D_800FC6D8)[0xB80];

//#pragma GLOBAL_ASM("asm/nonmatchings/373A0/func_800367A0.s")

s32 func_800367A0(u32 arg0, s32 arg1, s32 arg2) {
    u32 var_v0;
    u8* sp40;
    s32 pad2;   
    s32 sp38 = 0x80;
    s32 temp;

    s32 sp30;
    s32 sp2C;
    s32 pad;
    
    if ((arg0 & 0xFFFF0000) != D_80079014) {
        sp40 = D_800FC6F4->seqArray[0].offset;
        func_8004ADB0(sp40, D_800FC798, 0xC);
        func_80037360(D_800FC798, sp40, 3);
        pad = D_800FC798->unk_04 - D_800FC798->unk_00;
        func_8004ADB0(D_800FC798->unk_00, D_800FC6DC, pad);
        func_80050B40(D_800FC6DC, D_800FC6A8, 0xBB8);
        func_800397BC(D_800FC6A8);
        pad = D_800FC798->unk_08 - D_800FC798->unk_04;
        func_8004ADB0(D_800FC798->unk_04, D_800FC6DC,  pad);
        func_80050B40(D_800FC6DC, D_800FC6A4, 0x1388);
        func_8003979C(D_800FC6A4, D_800FC798->unk_08);
    }

    D_80079014 = arg0 & 0xFFFF0000;

    if(1){}

    switch (arg0) {
        case 0x0:
            if (func_80039354(D_80077C64)) {
                return 0;
            }

            switch (arg1) {
                case 1:
                    temp=1;
                    break;
                    
                case 2:
                    temp=2;
                    break;
                
                default:
                    return 0;
            }
            D_80077C64 = func_80039024(D_800FC6A4, D_800FC6A8, temp, 0x70, 0x80, -1); 
            sp2C = D_80077C64;
            break;

        case 0x1:
            if (arg1 < -0x5A) {
                arg1 = -0x5A;
            } else if (arg1 > 0x5A) {
                arg1 = 0x5A;
            }
            var_v0 = (arg1 + 0x5A) * 1.4111111f;
            var_v0 = (var_v0 > 0xFE) ? 0xFE : var_v0; 
            // if (var_v0 >= 0xFF) {
            //     var_v0 = 0xFE;
            // }
            sp2C = func_80039024(D_800FC6A4, D_800FC6A8, 3, 0x80, var_v0, -1);
            break;

        case 0x2:
            if (func_80039354(D_80077C6C)) {
                func_800392A8(D_80077C6C, 0x14);
                D_80077C6C = 0;
            }
            sp2C = func_80039024(D_800FC6A4, D_800FC6A8, 4, 0x80, 0x80, -1);
            break;

        case 0x3:
            D_80077C6C = func_80039024(D_800FC6A4, D_800FC6A8, 5, 0x80, 0x80, -1);
            sp2C = D_80077C6C;
            break;

        case 0x4:
            switch (arg1) {
                case 1:
                    temp = 1;
                    break;

                case 2:
                    temp = 2;
                    break;

                default:
                    return 0;
            }
            D_80077C68 = func_80039024(D_800FC6A4, D_800FC6A8, temp, 0x80, 0x80, -1);
            sp2C = D_80077C68;
            break;

        case 0x6:
            sp2C = func_80039024(D_800FC6A4, D_800FC6A8, 6, 0x80, 0x80, -1);
            break;

        case 0x7:
            sp2C = func_80039024(D_800FC6A4, D_800FC6A8, 7, 0x80, 0x80, -1);
            break;

        case 0x8:
            return 0;

        case 0x12:
            if (arg1 >= 0x98) {
                arg1 = 3;
            }

            if ((arg1 > 0) && (arg1 < 0x98)) {
                arg1 -= 1;
            } else {
                arg1 = 0;
            }

            switch (D_80077970[arg1][0]) {
                case 0:
                    return 0;

                case 1:
                    sp2C = func_80039024(D_800FC6A4, D_800FC6A8, 7, 0x80, 0x80, -1);
                    break;

                case 2:
                    sp2C = func_80039024(D_800FC6A4, D_800FC6A8, 6, 0x80, 0x80, -1);
                    break;

                default:
                    return 0;
            }
            break;


        case 0x13:
            if (arg1 == 0xC8) {
                return func_80039024(D_800FC6A4, D_800FC6A8, 0x20, 0x80, 0x80, -1);
            }

            if (arg1 >= 0x98) {
                arg1 = 2;
            }

            if ((arg1 > 0) && (arg1 < 0x98)) {
                arg1 -= 1;
            } else {
                arg1 = 0;
            }

            switch (D_80077970[arg1][1]) {
                default:
                    break;

                case 0:
                    sp2C = func_80039024(D_800FC6A4, D_800FC6A8, 0xB, 0x80, 0x80, -1);
                    break;

                case 1:
                    sp2C = func_80039024(D_800FC6A4, D_800FC6A8, 0xA, 0x80, 0x80, -1);
                    break;

                case 2:
                    sp2C = func_80039024(D_800FC6A4, D_800FC6A8, 9, 0x80, 0x80, -1);
                    break;
            }
            break; 

        case 0x14:
            sp2C = func_80039024(D_800FC6A4, D_800FC6A8, 0xC, 0x80, 0x80, -1);
            break;
        case 0x9:
            sp2C = func_80039024(D_800FC6A4, D_800FC6A8, 0xD, 0x80, 0x80, -1);
            break;

        case 0xA:
            sp2C = func_80039024(D_800FC6A4, D_800FC6A8, 0xE, 0x80, 0x80, -1);
            break;

        case 0xB:
            sp2C = func_80039024(D_800FC6A4, D_800FC6A8, 0xF, 0x80, 0x80, -1); 
            break;

        case 0x5A:
            switch (arg1) {
                case 1:
                    temp = 0x12;
                    break;

                case 2:
                    temp = 0x13;
                    break;

                default:
                    return 0;
            }
            D_80077C74 = func_80039024(D_800FC6A4, D_800FC6A8, temp, 0x80, 0x80, -1);
            break;

        case 0x5B:
            switch (arg1) {
                case 2:
                    return 0;

                default:
                    return 0;

                case 1:
                    D_80077C78 = func_80039024(D_800FC6A4, D_800FC6A8, 0x14, 0x80, 0x80, -1);
                    break;
            }
            break;

        case 0xC:
            switch (arg1) {
                case 1:
                    temp = 0x10;
                    break;

                case 2:
                    temp = 0x11;
                    break;

                default:
                    return 0;
            }
            sp2C = func_80039024(D_800FC6A4, D_800FC6A8, temp, 0x80, 0x80, 0x80 ); 
            break;

        case 0xD:
            switch (arg1) {
                case 1:
                    temp = 0x16;
                    break;

                case 2:
                    temp = 0x17;
                    break; 

                default:
                    return 0;
            }

            if (func_80039354(D_80077C7C)) {
                D_80077C7C = sp2C = 0;
                break; 
            } else {
                D_80077C7C = sp2C = func_80039024(D_800FC6A4, D_800FC6A8, temp, 0x80, 0x80, 0x80);
                break;
            }
            break;

        case 0x3C:
            sp2C = func_80039024(D_800FC6A4, D_800FC6A8, 0x18, 0x80, 0x80, -1);
            break;

        case 0x3D:
            switch (arg1) {
                case 3:
                    temp = 0x19;
                    break;
                case 2:
                    temp = 0x1A;
                    break; 

                case 1:
                    temp = 0x1B;
                    break;

                case 0:
                    temp = 0x1C;
                    sp38 = 0xFF;
                    break;

                default:
                    return 0;
            }
            
            sp2C = func_80039024(D_800FC6A4, D_800FC6A8, temp, sp38, 0x80, -1);
            break;

        case 0x3E:
            if (arg1 < 0xB) {
                if(arg1 == 1 || arg1 == 2) {
                    temp = 0x1D;
                } else {
                    temp = 0x1E;
                }
            } else {
                return 0;
            }
            sp2C = func_80039024(D_800FC6A4, D_800FC6A8, temp, 0xFF, 0x80, -1);
            break;

        case 0x3F:
            sp2C = func_80039024(D_800FC6A4, D_800FC6A8, 0x1F, 0x80, 0x80, -1); 
            break;

        case 0x1E:
            sp2C = func_800479C0(0xA6, 1, 0, arg1);
            break;

        case 0x1F:
            sp2C = func_800479C0(0xA6, 1, 1, arg1);
            break;

        case 0x20:
            sp2C = func_800479C0(0xA6, 1, 2, arg1);
            break;

        case 0x21:
            sp2C = func_800479C0(0xA6, 1, 3, arg1);
            break;

        case 0x22:
            sp2C = func_800479C0(0xA6, 1, 4, arg1);
            break;

        case 0x23:
            sp2C = func_800479C0(0xA6, 1, 5, arg1);
            break;

        default:
            return 0;
    }
    
    return sp2C;
}

s32 func_80037234(s32 arg0, s32 arg1) {
    switch (arg0) {
        case 0x0:
            if (arg1 == 0) {
                arg1 = 1;
            }
            func_800392A8(D_80077C64, arg1);
            D_80077C64 = 0;
            break;

        case 0x4:
            if (arg1 == 0) {
                arg1 = 1;
            }
            func_800392A8(D_80077C68, arg1);
            break;

        case 0x3:
            func_800392A8(D_80077C6C, 0x3C);
            D_80077C6C = 0;
            break;

        case 0xA1:
            func_800392A8(D_80077C70, 0x78);
            D_80077C70 = 0;
            break;

        case 0x5A:
            func_800392A8(D_80077C74, 0x5A);
            D_80077C74 = 0;
            break;

        case 0x5B:
            func_800392A8(D_80077C78, 0x5A);
            D_80077C78 = 0;
            break;

        default:
            return 0;
    }

    return 1;
}

void func_80037338(void) {
}

void func_80037340(void) {
    func_8003CADC();
}

// Used to add a base vrom address to all offsets in a given array.
void func_80037360(s32* addr, s32 value, s32 count) {
    s32 i;

    for (i = 0; i != count; i++, addr++) {
        *addr += value;
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
    /* 0x00 */ s16 unk_00;
    /* 0x02 */ s16 unk_02;
    /* 0x04 */ char unk_04[0x4];
    /* 0x08 */ s32 unk_08;
} Struct_func_800373D8;

//#pragma GLOBAL_ASM("asm/nonmatchings/373A0/func_800373D8.s")

s32 func_800373D8(void) {
    Struct_D_800FC798* sp78;
    Struct_func_80038B68 sp38;
    s32 sp34;
    s32 sp30;
    s32 i;
    s32 temp;

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
    func_80037360(&(*D_800FC6E0)[1], &D_15C0000, 6);

    sp78 = D_800FC798;
    func_8004ADB0((*D_800FC6E0)[1], sp78, 0xC);
    
    temp = sp78->unk_08;
    D_800FC6E4 = alHeapDBAlloc(NULL, 0, D_800FC810, temp + 3, 4);

    func_8004ADB0((*D_800FC6E0)[1], D_800FC6E4, 0xC + (temp * 4));

    func_80037360(D_800FC6E4, (*D_800FC6E0)[1], 2);
    func_80037360(&D_800FC6E4[3], (*D_800FC6E0)[1], temp);
    sp30 = D_800FC6E4[0];
    func_8004ADB0(sp30, D_800FC6DC, D_800FC6E4[1] - sp30);

    D_800FC684 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(*D_800FC684));
    func_80050B40(D_800FC6DC, D_800FC684, sizeof(*D_800FC684));

    func_8003979C(D_800FC684, D_800FC6E4[1]);
    D_800FC680 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(*D_800FC680));
    func_8004ADB0((*D_800FC6E0)[2], sp78, 8);

    sp34 = ((s16)sp78->unk_00 * 8) + 4;
    D_800FC6E8 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sp34);


    func_8004ADB0((*D_800FC6E0)[2], D_800FC6E8, sp34);
    alSeqFileNew(D_800FC6E8, (*D_800FC6E0)[2]);
    D_800FC6EC = alHeapDBAlloc(NULL, 0, D_800FC810, 3, 4);
    func_8004ADB0(D_800FC6E8->seqArray[0].offset, D_800FC6EC, 0xC);
    func_80037360(D_800FC6EC, D_800FC6E8->seqArray[0].offset, 3);

    sp30 = (*D_800FC6EC)[1] - (*D_800FC6EC)[0];
    func_8004ADB0((*D_800FC6EC)[0], D_800FC6DC, sp30);
    D_800FC688 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(*D_800FC688));
    func_80050B40(D_800FC6DC, D_800FC688, sizeof(*D_800FC688));
    func_800397BC(D_800FC688);

    sp30 = (*D_800FC6EC)[1];
    func_8004ADB0(sp30, D_800FC6DC, (*D_800FC6EC)[2] - sp30);
    D_800FC68C = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(*D_800FC68C));
    func_80050B40(D_800FC6DC, D_800FC68C, sizeof(*D_800FC68C));
    
    func_8003979C(D_800FC68C, (*D_800FC6EC)[2]);
    func_8004ADB0(*(s32*)(D_800FC6E8 + 1), sp78, 0xC);

    temp = sp78->unk_00;
    D_800FC6F0 = alHeapDBAlloc(NULL, 0, D_800FC810, 4, temp + 3);
    func_8004ADB0(*(s32*)(D_800FC6E8 + 1), D_800FC6F0, 0xC + (temp * 4));
    
    func_80037360(&D_800FC6F0[1], *(s32*)(D_800FC6E8 + 1), temp + 2);

    sp30 = D_800FC6F0[2] - D_800FC6F0[1];
    func_8004ADB0(D_800FC6F0[1], D_800FC6DC, sp30);
    D_800FC690 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(*D_800FC690));
    func_80050B40(D_800FC6DC, D_800FC690, sizeof(*D_800FC690));
    func_8003979C(D_800FC690, D_800FC6F0[2]);
    D_800FC698.unk_00 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(Struct_D_800FC698_sub));
    D_800FC698.unk_04 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(Struct_D_800FC698_sub));
    D_800FC698.unk_08 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(Struct_D_800FC698_sub));
    func_8004ADB0(*((s32*)D_800FC6E8 + 5), sp78, 0xC);

    temp = sp78->unk_00;
    D_800FC6FC = alHeapDBAlloc(NULL, 0, D_800FC810, 4, temp + 3);
    func_8004ADB0(*((s32*)D_800FC6E8 + 5), D_800FC6FC, 0xC + (temp * 4));
    
    func_80037360(&D_800FC6FC[1], *((s32*)D_800FC6E8 + 5), temp + 2);

    sp30 = D_800FC6FC[2] - D_800FC6FC[1];
    func_8004ADB0(D_800FC6FC[1], D_800FC6DC, sp30);
    D_800FC6AC = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(*D_800FC6AC));
    func_80050B40(D_800FC6DC, D_800FC6AC, sizeof(*D_800FC6AC));
    func_8003979C(D_800FC6AC, D_800FC6FC[2]);
    D_800FC6B0.unk_00 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(Struct_D_800FC6B0_sub));
    D_800FC6B0.unk_04 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(Struct_D_800FC6B0_sub));
    D_800FC6B0.unk_08 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(Struct_D_800FC6B0_sub));
    
    func_8004ADB0(*((s32*)D_800FC6E8 + 7), sp78, 8);
    
    sp34 = ((s16)sp78->unk_00 * 8) + 4;
    D_800FC6F4 = alHeapDBAlloc(NULL, 0, D_800FC810, 4, sp34);
    func_8004ADB0(*((s32*)D_800FC6E8 + 7), D_800FC6F4, sp34);
    alSeqFileNew(D_800FC6F4, *((s32*)D_800FC6E8 + 7));
    func_8004ADB0(*((s32*)D_800FC6F4 + 3), sp78, 8);
    
    sp34 = ((s16)sp78->unk_00 * 8) + 4;
    D_800FC6F8 = alHeapDBAlloc(NULL, 0, D_800FC810, 4, sp34);
    func_8004ADB0(*((s32*)D_800FC6F4 + 3), D_800FC6F8, sp34);
    alSeqFileNew(D_800FC6F8, *((s32*)D_800FC6F4 + 3));
    D_800FC6A4 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(*D_800FC6A4));
    D_800FC6A8 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(*D_800FC6A8));
    func_8004ADB0((*D_800FC6E0)[3], sp78, 8);
    
    sp34 = ((s16)sp78->unk_00 * 8) + 4;
    D_800FC700 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sp34);
    func_8004ADB0((*D_800FC6E0)[3], D_800FC700, sp34);
    alSeqFileNew(D_800FC700, (*D_800FC6E0)[3]);
    func_8004ADB0((*D_800FC6E0)[4], sp78, 8);

    sp34 = ((s16)sp78->unk_00 * 8) + 4;
    D_800FC704 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sp34);
    func_8004ADB0((*D_800FC6E0)[4], D_800FC704, sp34);
    alSeqFileNew(D_800FC704, (*D_800FC6E0)[4]);
    
    D_800FC6C0.unk_00 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(Struct_D_800FC6C0_sub));
    D_800FC6C0.unk_04 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(Struct_D_800FC6C0_sub));
    D_800FC6C0.unk_08 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sizeof(Struct_D_800FC6C0_sub));

    func_8004ADB0(D_800FC704->seqArray[0].offset, sp78, 8);
    
    sp34 = ((s16)sp78->unk_00 * 8) + 4;
    D_800FC708 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sp34);
    func_8004ADB0(D_800FC704->seqArray[0].offset, D_800FC708, sp34);
    alSeqFileNew(D_800FC708, D_800FC704->seqArray[0].offset);
    D_80079364 = 0;
    func_8004ADB0(*((s32*)D_800FC704 + 5), sp78, 8);
    
    sp34 = ((s16)sp78->unk_00 * 8) + 4;
    D_800FC714 = alHeapDBAlloc(NULL, 0, D_800FC810, 1, sp34);
    func_8004ADB0(*((s32*)D_800FC704 + 5), D_800FC714, sp34);
    alSeqFileNew(D_800FC714, *((s32*)D_800FC704 + 5));
    D_800FC6D8 = alHeapDBAlloc(NULL, 0, D_800FC810, 0xB80, 2);
    D_800FC6D4 = alHeapDBAlloc(NULL, 0, D_800FC810, sizeof(*D_800FC6D4), 1);

    sp30 = (*D_800FC6E0)[6] - (*D_800FC6E0)[5];
    func_8004ADB0((*D_800FC6E0)[5], D_800FC6D4, sp30);
    D_800FC6CC = alHeapDBAlloc(NULL, 0, D_800FC810, 0x100, 1);
    func_8004ADB0((*D_800FC6E0)[6], D_800FC6CC, 0x100);

    for (i = 0; i < 32; i++) {
        (*D_800FC6CC)[i][0] += (*D_800FC6E0)[6];
    }

    D_800FC6D0 = alHeapDBAlloc(NULL, 0, D_800FC810, sizeof(*D_800FC6D0), 1);
    func_8004AE90(2, 2);
    func_8004AE90(1, 3);
    D_800FC820 = 0;
    
    return D_800FC810->cur - D_800FC810->base;
}
