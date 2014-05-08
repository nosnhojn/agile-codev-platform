#ifndef __XDRIVER_MOCK_H__
#define __XDRIVER_MOCK_H__

#include "xbasic_types.h"
#include "xiic.h"
#include "xiic_l.h"
#include "gmock/gmock.h"

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
    MOCK_METHOD2(XIic_SetOptions, void(XIic *, u32 ));
    MOCK_METHOD1(XIic_GetOptions, u32(XIic *));
    MOCK_METHOD0(XIic_MultiMasterInclude, void());
    MOCK_METHOD5(XIic_Recv, unsigned(u32, u8, u8 *, unsigned, u8));
    MOCK_METHOD5(XIic_Send, unsigned(u32, u8, u8 *, unsigned, u8));
    MOCK_METHOD4(XIic_DynRecv, unsigned(u32, u8, u8 *, u8));
    MOCK_METHOD5(XIic_DynSend, unsigned(u32, u16, u8 *, u8, u8));
    MOCK_METHOD1(XIic_DynInit, int(u32));
};

xdriverMock xdMock;

#endif
