#include "common.h"

extern OSMesgQueue D_800FF990;
extern OSPiHandle* D_800FF9A8;
extern OSMesg* D_800FF9AC;

void func_8004AD40(s32 arg0) {
    OSPiHandle* handle;

    switch (arg0) {
        case 1:
            D_800FF9A8 = osDriveRomInit();
            break;
        case 2:
        default:
            D_800FF9A8 = osCartRomInit();
            break;
    }
    osCreateMesgQueue(&D_800FF990, &D_800FF9AC, 1);
}

void func_8004ADB0(u32 devAddr, u8* dramAddr, u32 allocSize) {
    OSIoMesg sp48;
    u32 size;
    u32 dev = devAddr;
    u8* dram = dramAddr;

    while (allocSize != 0) {
        if (allocSize > 0x4000) {
            size = 0x4000;
        } else {
            size = allocSize;
        }
        sp48.hdr.pri = OS_MESG_PRI_NORMAL;
        sp48.hdr.retQueue = &D_800FF990;
        sp48.dramAddr = dram;
        sp48.devAddr = dev;
        sp48.size = size;
        osInvalDCache(dram, size);
        osEPiStartDma(D_800FF9A8, &sp48, OS_READ);
        osRecvMesg(&D_800FF990, NULL, OS_MESG_BLOCK);
        allocSize -= size;
        dev += size;
        dram += size;
    };
}
