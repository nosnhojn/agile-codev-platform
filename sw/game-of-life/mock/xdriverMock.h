#ifndef __XDRIVER_MOCK_C__
#define __XDRIVER_MOCK_C__

#include <iostream>
#include "xbasic_types.h"
#include "xiic.h"
#include "xiic_l.h"
#include "xaxivdma.h"
#include "gmock/gmock.h"

using namespace std;

class xdriverMock
{
  public:
    MOCK_METHOD1(XAssertSetCallback, void(XAssertCallback));
    MOCK_METHOD1(XNullHandler, void(void*));
    MOCK_METHOD2(XIic_Initialize, int(XIic*,u16));
    MOCK_METHOD1(XIic_LookupConfig, XIic_Config*(u16));
    MOCK_METHOD3(XIic_CfgInitialize, int(XIic *, XIic_Config *, u32));
    MOCK_METHOD1(XIic_Start, int(XIic *));
    MOCK_METHOD1(XIic_Stop, int(XIic *));
    MOCK_METHOD1(XIic_Reset, void(XIic *));
    MOCK_METHOD3(XIic_SetAddress, int(XIic *, int, int));
    MOCK_METHOD2(XIic_GetAddress, u16(XIic *, int));
    MOCK_METHOD2(XIic_SetGpOutput, int(XIic *, u8));
    MOCK_METHOD2(XIic_GetGpOutput, int(XIic *, u8 *));
    MOCK_METHOD1(XIic_IsSlave, u32(XIic *));
    MOCK_METHOD3(XIic_SetRecvHandler, void(XIic *, void *,XIic_Handler));
    MOCK_METHOD3(XIic_SetSendHandler, void(XIic *, void *, XIic_Handler));
    MOCK_METHOD3(XIic_SetStatusHandler, void(XIic *, void *, XIic_StatusHandler));
    MOCK_METHOD1(XIic_InterruptHandler, void(void *));
    MOCK_METHOD3(XIic_MasterRecv, int(XIic *, u8 *, int));
    MOCK_METHOD3(XIic_MasterSend, int(XIic *, u8 *, int));
    MOCK_METHOD3(XIic_DynMasterRecv, int(XIic *, u8 *, u8));
    MOCK_METHOD3(XIic_DynMasterSend, int(XIic *, u8 *, u8));
    MOCK_METHOD1(XIic_DynamicInitialize, int(XIic *));
    MOCK_METHOD0(XIic_SlaveInclude, void());
    MOCK_METHOD3(XIic_SlaveRecv, int(XIic *, u8 *, int));
    MOCK_METHOD3(XIic_SlaveSend, int(XIic *, u8 *, int));
    MOCK_METHOD2(XIic_GetStats, void(XIic *, XIicStats *));
    MOCK_METHOD1(XIic_ClearStats, void(XIic *));
    MOCK_METHOD1(XIic_SelfTest, int(XIic *));
    MOCK_METHOD1(XIic_IsIicBusy, u32(XIic *));
    MOCK_METHOD2(XIic_SetOptions, void(XIic *, u32));
    MOCK_METHOD1(XIic_GetOptions, u32(XIic *));
    MOCK_METHOD0(XIic_MultiMasterInclude, void());
    MOCK_METHOD5(XIic_Recv, unsigned(u32, u8, u8 *, unsigned, u8));
    MOCK_METHOD5(XIic_Send, unsigned(u32, u8, u8 *, unsigned, u8));
    MOCK_METHOD4(XIic_DynRecv, unsigned(u32, u8, u8 *, u8));
    MOCK_METHOD5(XIic_DynSend, unsigned(u32, u16, u8 *, u8, u8));
    MOCK_METHOD1(XIic_DynInit, int(u32));

    MOCK_METHOD1(Xil_In8, u8(u32));
    MOCK_METHOD1(Xil_In16, u16(u32));
    MOCK_METHOD1(Xil_In32, u32(u32));
    MOCK_METHOD2(Xil_Out8, void(u32, u8));
    MOCK_METHOD2(Xil_Out16, void(u32, u16));
    MOCK_METHOD2(Xil_Out32, void(u32, u32));
    MOCK_METHOD1(Xil_In16LE, u16(u32));
    MOCK_METHOD1(Xil_In32LE, u32(u32));
    MOCK_METHOD2(Xil_Out16LE, void(u32, u16));
    MOCK_METHOD2(Xil_Out32LE, void(u32, u32));
    MOCK_METHOD0(Xil_DCacheFlush, void());

    MOCK_METHOD1(XAxiVdma_LookupConfig, XAxiVdma_Config*(u16));
    MOCK_METHOD3(XAxiVdma_CfgInitialize, int(XAxiVdma*, XAxiVdma_Config*, u32));
    MOCK_METHOD2(XAxiVdma_Reset, void(XAxiVdma *, u16));
    MOCK_METHOD2(XAxiVdma_ResetNotDone, int(XAxiVdma *, u16));
    MOCK_METHOD2(XAxiVdma_IsBusy, int(XAxiVdma *, u16));
    MOCK_METHOD2(XAxiVdma_CurrFrameStore, u32(XAxiVdma *, u16));
    MOCK_METHOD1(XAxiVdma_GetVersion, u32(XAxiVdma *));
    MOCK_METHOD2(XAxiVdma_GetStatus, u32(XAxiVdma *, u16));
    MOCK_METHOD3(XAxiVdma_StartParking, int(XAxiVdma *, int, u16));
    MOCK_METHOD2(XAxiVdma_StopParking, void(XAxiVdma *, u16));
    MOCK_METHOD2(XAxiVdma_StartFrmCntEnable, void(XAxiVdma *, u16));
    MOCK_METHOD3(XAxiVdma_IntrEnable, void(XAxiVdma *, u32 IntrType, u16));
    MOCK_METHOD3(XAxiVdma_IntrDisable, void(XAxiVdma *, u32 IntrType, u16));
    MOCK_METHOD2(XAxiVdma_IntrGetPending, u32(XAxiVdma *, u16));
    MOCK_METHOD3(XAxiVdma_IntrClear, void(XAxiVdma *, u32 IntrType, u16));
    MOCK_METHOD2(XAxiVdma_GetChannel, XAxiVdma_Channel*(XAxiVdma *, u16));
    MOCK_METHOD2(XAxiVdma_StartWriteFrame, int(XAxiVdma *,XAxiVdma_DmaSetup *));
    MOCK_METHOD2(XAxiVdma_StartReadFrame, int(XAxiVdma *,XAxiVdma_DmaSetup *));
    MOCK_METHOD3(XAxiVdma_DmaConfig, int(XAxiVdma *, u16, XAxiVdma_DmaSetup *));
    MOCK_METHOD3(XAxiVdma_DmaSetBufferAddr, int(XAxiVdma *, u16, u32 *));
    MOCK_METHOD2(XAxiVdma_DmaStart, int(XAxiVdma *, u16));
    MOCK_METHOD2(XAxiVdma_DmaStop, void(XAxiVdma *, u16));
    MOCK_METHOD2(XAxiVdma_DmaRegisterDump, void(XAxiVdma *, u16));
    MOCK_METHOD2(XAxiVdma_SetFrameCounter, int(XAxiVdma *,XAxiVdma_FrameCounter *));
    MOCK_METHOD2(XAxiVdma_GetFrameCounter, void(XAxiVdma *,XAxiVdma_FrameCounter *));
    MOCK_METHOD1(XAxiVdma_ReadIntrHandler, void(void *));
    MOCK_METHOD1(XAxiVdma_WriteIntrHandler, void(void *));
    MOCK_METHOD5(XAxiVdma_SetCallBack, int(XAxiVdma *, u32 HandlerType,void *CallBackFunc, void *CallBackRef, u16));

};

extern xdriverMock * getXdriverMock();
extern xdriverMock * destroyXdriverMock();

#endif
