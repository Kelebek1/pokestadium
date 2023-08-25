#include "ultra64.h"
#include "dp_intro.h"
#include "profiler.h"

extern s32 D_800A83A0;

struct Unk800A83A8 {
    OSMesg mesg;
    OSMesgQueue queue;
    char filler1C[0x4];
    OSMesg mesg20;
    OSMesgQueue queue24;
    char filler3C[0x2C];
};

extern struct Unk800A83A8 D_800A83A8[];

extern s32 D_800A8478;
extern s32 D_800A847C;

extern OSThread D_800A8480;

extern u8 D_800AA660[];

void func_8000D1C0(void) {

}

void func_8000D1C8(void) {

}

void func_8000D1D0(void) {

}

void func_8000D1D8(void) {

}

void func_8000D1E0(void) {
    D_800A847C = -1;
}

void func_8000D1F0(s32 arg0) {
    if (arg0 != D_800A847C) {
        if (D_800A847C >= 0) {
            func_8004B9C4(0);
        }
        func_8004B1CC(arg0);
        D_800A847C = arg0;
    }
}

void func_8000D23C(s32 arg0) {
    if (arg0 != D_800A847C) {
        func_8004B1CC();
        D_800A847C = arg0;
    }
}

void func_8000D278(void) {
    if (D_800A847C >= 0) {
        func_8004B9C4();
        D_800A847C = -1;
    }
}

s32 func_8000D2B4(s32 arg0) {
    s32 retvar = 0;
    
    if (arg0 != 0) {
        func_8004FCD8(2);
    }
    while (func_800484E0() != 0) {
        if (retvar < 1000000) {
            retvar++;
        } else if (retvar == 1000000) {
            func_8004FD44();
            retvar++;
        }
    }
    return retvar;
}

void func_8000D338(void) {
    func_8004FD64(0x10);
}

void func_8000D358(void) {
    D_800A83A0 = 0;
    func_8003D4A0(0);
}

void func_8000D380(void) {
    func_8003D4A0(1);
    D_800A83A0 = 1;
}

void func_8000D3A8(void *unused) {
    __osSetFpcCsr(0x01000C01);
    func_80004CC0(&D_800A8480, 1, 1);
    func_80005328(&D_800A8480);
    D_800A83A0 = 1;
    D_800A847C = -1;
    D_800A8478 = 0;
    osCreateMesgQueue(&D_800A83A8[0].queue, &D_800A83A8[0].mesg, 1);
    osCreateMesgQueue(&D_800A83A8[1].queue, &D_800A83A8[1].mesg, 1);
    osSendMesg(&D_800A83A8[0].queue, (void* )0x444F4E45, 0);
    osSendMesg(&D_800A83A8[1].queue, (void* )0x444F4E45, 0);
    func_800373D8();
    func_8004AF24(0);
    func_8004AE90(3, 4);

    // thread loop
    while(1) {
        func_80004CF4(&D_800A8480);
        profiler_log_thread4_time();
        if ((D_800A83A0 != 0) && (D_800A62E0.unkA38 < 0x15)) {
            func_80037340(&D_800A83A8[D_800A8478].mesg20);
            func_800053B4(&D_800A83A8[D_800A8478].mesg, 0);
        }
        D_800A8478 ^= 1;
        profiler_log_thread4_time();
    }
}

void func_8000D564(void) {
    osCreateThread(&D_800A8480, 4, func_8000D3A8, NULL, D_800AA660, 0x50);
    osStartThread(&D_800A8480);
}
