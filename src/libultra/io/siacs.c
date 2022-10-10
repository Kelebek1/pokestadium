#include <ultra64.h>

extern OSMesg siAccessBuf;
extern u32 var8009c7c4;
extern OSMesgQueue __osSiAccessQueue;

extern u32 __osSiAccessQueueEnabled;

void __osSiCreateAccessQueue(void)
{
	__osSiAccessQueueEnabled = 1;
	osCreateMesgQueue(&__osSiAccessQueue, &siAccessBuf, 1);
	osSendMesg(&__osSiAccessQueue, NULL, OS_MESG_NOBLOCK);
}

void __osSiGetAccess(void)
{
	OSMesg dummyMesg;

	if (!__osSiAccessQueueEnabled) {
		__osSiCreateAccessQueue();
	}

	osRecvMesg(&__osSiAccessQueue, &dummyMesg, OS_MESG_BLOCK);
}

void __osSiRelAccess(void)
{
	osSendMesg(&__osSiAccessQueue, NULL, OS_MESG_NOBLOCK);
}
