#include "common.h"

extern OSMesgQueue D_800FF990;
extern OSPiHandle* D_800FF9A8;
extern void* D_800FF9AC;

void func_8004AD40(s32 arg0) {
    OSPiHandle* var_v0;

    switch (arg0) {
        case 1:
            var_v0 = osDriveRomInit();
            break;
        default:
        case 2:
            var_v0 = osCartRomInit();
            break;
    }
    D_800FF9A8 = var_v0;
    osCreateMesgQueue(&D_800FF990, &D_800FF9AC, 1);
}

void func_8004ADB0(s32 devAddr, s32* dramAddr, s32 size_) {
    OSIoMesg sp48;
    s32 size;
    s32 allocSize = size_;
    s32 dev = devAddr;
    s32* dram = dramAddr;

    while (allocSize != 0) {
        if (allocSize > 0x4000) {
            size = 0x4000;
        } else {
            size = allocSize;
        }
        sp48.hdr.pri = 0;
        sp48.hdr.retQueue = &D_800FF990;
        sp48.dramAddr = dram;
        sp48.devAddr = dev;
        sp48.size = size;
        osInvalDCache(dram, size);
        osEPiStartDma(D_800FF9A8, &sp48, 0);
        osRecvMesg(&D_800FF990, NULL, 1);
        allocSize -= size;
        dev += size;
        dram += size;
    };
}
