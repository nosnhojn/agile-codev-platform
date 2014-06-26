#include "xdriverMock.h"

xdriverMock * xdMock = 0;
xdriverMock * getXdriverMock()
{
  if (xdMock == 0) xdMock = new xdriverMock();
  return xdMock;
}

xdriverMock * destroyXdriverMock()
{
  delete xdMock;
  xdMock = 0;
}

int XAxiVdma_FsyncSrcSelect(XAxiVdma *InstancePtr, u32 Source,
                                u16 Direction) {}

void XAssertSetCallback(XAssertCallback Routine)
{
  getXdriverMock()->XAssertSetCallback(Routine);
}

void XNullHandler(void* NullParameter)
{
  getXdriverMock()->XNullHandler(NullParameter);
}

int XIic_Initialize(XIic *InstancePtr, u16 DeviceId)
{
  return getXdriverMock()->XIic_Initialize(InstancePtr, DeviceId);
}

XIic_Config *XIic_LookupConfig(u16 DeviceId)
{
  return getXdriverMock()->XIic_LookupConfig(DeviceId);
}

int XIic_CfgInitialize(XIic *InstancePtr, XIic_Config *Config, u32 EffectiveAddr)
{
  return getXdriverMock()->XIic_CfgInitialize(InstancePtr, Config, EffectiveAddr);
}

int XIic_Start(XIic *InstancePtr)
{
  return getXdriverMock()->XIic_Start(InstancePtr);
}

int XIic_Stop(XIic *InstancePtr)
{
  return getXdriverMock()->XIic_Stop(InstancePtr);
}

void XIic_Reset(XIic *InstancePtr)
{
  getXdriverMock()->XIic_Reset(InstancePtr);
}

int XIic_SetAddress(XIic *InstancePtr, int AddressType, int Address)
{
  return getXdriverMock()->XIic_SetAddress(InstancePtr, AddressType, Address);
}

u16 XIic_GetAddress(XIic *InstancePtr, int AddressType)
{
  return getXdriverMock()->XIic_GetAddress(InstancePtr, AddressType);
}

int XIic_SetGpOutput(XIic *InstancePtr, u8 OutputValue)
{
  return getXdriverMock()->XIic_SetGpOutput(InstancePtr, OutputValue);
}

int XIic_GetGpOutput(XIic *InstancePtr, u8 *OutputValuePtr)
{
  return getXdriverMock()->XIic_GetGpOutput(InstancePtr, OutputValuePtr);
}

u32 XIic_IsSlave(XIic *InstancePtr)
{
  return getXdriverMock()->XIic_IsSlave(InstancePtr);
}

void XIic_SetRecvHandler(XIic *InstancePtr, void *CallBackRef, XIic_Handler FuncPtr)
{
  getXdriverMock()->XIic_SetRecvHandler(InstancePtr, CallBackRef, FuncPtr);
}

void XIic_SetSendHandler(XIic *InstancePtr, void *CallBackRef, XIic_Handler FuncPtr)
{
  getXdriverMock()->XIic_SetSendHandler(InstancePtr, CallBackRef, FuncPtr);
}

void XIic_SetStatusHandler(XIic *InstancePtr, void *CallBackRef, XIic_StatusHandler FuncPtr)
{
  getXdriverMock()->XIic_SetStatusHandler(InstancePtr, CallBackRef, FuncPtr);
}

void XIic_InterruptHandler(void *InstancePtr)
{
  getXdriverMock()->XIic_InterruptHandler(InstancePtr);
}

int XIic_MasterRecv(XIic *InstancePtr, u8 *RxMsgPtr, int ByteCount)
{
  return getXdriverMock()->XIic_MasterRecv(InstancePtr, RxMsgPtr, ByteCount);
}

int XIic_MasterSend(XIic *InstancePtr, u8 *TxMsgPtr, int ByteCount)
{
  return getXdriverMock()->XIic_MasterSend(InstancePtr, TxMsgPtr, ByteCount);
}

int XIic_DynMasterRecv(XIic *InstancePtr, u8 *RxMsgPtr, u8 ByteCount)
{
  return getXdriverMock()->XIic_DynMasterRecv(InstancePtr, RxMsgPtr, ByteCount);
}

int XIic_DynMasterSend(XIic *InstancePtr, u8 *TxMsgPtr, u8 ByteCount)
{
  return getXdriverMock()->XIic_DynMasterSend(InstancePtr, TxMsgPtr, ByteCount);
}

int XIic_DynamicInitialize(XIic *InstancePtr)
{
  return getXdriverMock()->XIic_DynamicInitialize(InstancePtr);
}

void XIic_SlaveInclude(void)
{
  getXdriverMock()->XIic_SlaveInclude();
}

int XIic_SlaveRecv(XIic *InstancePtr, u8 *RxMsgPtr, int ByteCount)
{
  return getXdriverMock()->XIic_SlaveRecv(InstancePtr, RxMsgPtr, ByteCount);
}

int XIic_SlaveSend(XIic *InstancePtr, u8 *TxMsgPtr, int ByteCount)
{
  return getXdriverMock()->XIic_SlaveSend(InstancePtr, TxMsgPtr, ByteCount);
}

void XIic_GetStats(XIic *InstancePtr, XIicStats *StatsPtr)
{
  getXdriverMock()->XIic_GetStats(InstancePtr, StatsPtr);
}

void XIic_ClearStats(XIic *InstancePtr)
{
  getXdriverMock()->XIic_ClearStats(InstancePtr);
}

int XIic_SelfTest(XIic *InstancePtr)
{
  return getXdriverMock()->XIic_SelfTest(InstancePtr);
}

u32 XIic_IsIicBusy(XIic *InstancePtr)
{
  return getXdriverMock()->XIic_IsIicBusy(InstancePtr);
}

void XIic_SetOptions(XIic *InstancePtr, u32 Options)
{
  getXdriverMock()->XIic_SetOptions(InstancePtr, Options);
}

u32 XIic_GetOptions(XIic *InstancePtr)
{
  return getXdriverMock()->XIic_GetOptions(InstancePtr);
}

void XIic_MultiMasterInclude(void)
{
  getXdriverMock()->XIic_MultiMasterInclude();
}

unsigned XIic_Recv(u32 BaseAddress, u8 Address, u8 *BufferPtr, unsigned ByteCount, u8 Option)
{
  return getXdriverMock()->XIic_Recv(BaseAddress, Address, BufferPtr, ByteCount, Option);
}

unsigned XIic_Send(u32 BaseAddress, u8 Address, u8 *BufferPtr, unsigned ByteCount, u8 Option)
{
  return getXdriverMock()->XIic_Send(BaseAddress, Address, BufferPtr, ByteCount, Option);
}

unsigned XIic_DynRecv(u32 BaseAddress, u8 Address, u8 *BufferPtr, u8 ByteCount)
{
  return getXdriverMock()->XIic_DynRecv(BaseAddress, Address, BufferPtr, ByteCount);
}

unsigned XIic_DynSend(u32 BaseAddress, u16 Address, u8 *BufferPtr, u8 ByteCount, u8 Option)
{
  return getXdriverMock()->XIic_DynSend(BaseAddress, Address, BufferPtr, ByteCount, Option);
}

int XIic_DynInit(u32 BaseAddress)
{
  return getXdriverMock()->XIic_DynInit(BaseAddress);
}

u8 Xil_In8(u32 InAddress)
{
  return getXdriverMock()->Xil_In8(InAddress);
}

u16 Xil_In16(u32 InAddress)
{
  return getXdriverMock()->Xil_In16(InAddress);
}

u32 Xil_In32(u32 InAddress)
{
  return getXdriverMock()->Xil_In32(InAddress);
}

void Xil_Out8(u32 OutAddress, u8 Value)
{
  getXdriverMock()->Xil_Out8(OutAddress,Value);
}

void Xil_Out16(u32 OutAddress, u16 Value)
{
  getXdriverMock()->Xil_Out16(OutAddress,Value);
}

void Xil_Out32(u32 OutAddress, u32 Value)
{
  getXdriverMock()->Xil_Out32(OutAddress,Value);
}

u16 Xil_In16LE(u32 Addr)
{
  return getXdriverMock()->Xil_In16LE(Addr);
}

u32 Xil_In32LE(u32 Addr)
{
  return getXdriverMock()->Xil_In32LE(Addr);
}

void Xil_Out16LE(u32 Addr, u16 Value)
{
  getXdriverMock()->Xil_Out16LE(Addr, Value);
}

void Xil_Out32LE(u32 Addr, u32 Value)
{
  getXdriverMock()->Xil_Out32LE(Addr, Value);
}

XAxiVdma_Config *XAxiVdma_LookupConfig(u16 DeviceId)
{
  return getXdriverMock()->XAxiVdma_LookupConfig(DeviceId);
}

int XAxiVdma_CfgInitialize(XAxiVdma *InstancePtr, XAxiVdma_Config *CfgPtr,u32 EffectiveAddr)
{
  return getXdriverMock()->XAxiVdma_CfgInitialize(InstancePtr, CfgPtr, EffectiveAddr);
}
void XAxiVdma_Reset(XAxiVdma *InstancePtr, u16 Direction)
{
  getXdriverMock()->XAxiVdma_Reset(InstancePtr, Direction);
}
int XAxiVdma_ResetNotDone(XAxiVdma *InstancePtr, u16 Direction)
{
  return getXdriverMock()->XAxiVdma_ResetNotDone(InstancePtr, Direction);
}
int XAxiVdma_IsBusy(XAxiVdma *InstancePtr, u16 Direction)
{
  return getXdriverMock()->XAxiVdma_IsBusy(InstancePtr, Direction);
}
u32 XAxiVdma_CurrFrameStore(XAxiVdma *InstancePtr, u16 Direction)
{
  return getXdriverMock()->XAxiVdma_CurrFrameStore(InstancePtr, Direction);
}
u32 XAxiVdma_GetVersion(XAxiVdma *InstancePtr)
{
  return getXdriverMock()->XAxiVdma_GetVersion(InstancePtr);
}
u32 XAxiVdma_GetStatus(XAxiVdma *InstancePtr, u16 Direction)
{
  return getXdriverMock()->XAxiVdma_GetStatus(InstancePtr, Direction);
}
int XAxiVdma_StartParking(XAxiVdma *InstancePtr, int FrameIndex,u16 Direction)
{
  return getXdriverMock()->XAxiVdma_StartParking(InstancePtr, FrameIndex, Direction);
}
void XAxiVdma_StopParking(XAxiVdma *InstancePtr, u16 Direction)
{
   getXdriverMock()->XAxiVdma_StopParking(InstancePtr, Direction);
}
void XAxiVdma_StartFrmCntEnable(XAxiVdma *InstancePtr, u16 Direction)
{
  getXdriverMock()->XAxiVdma_StartFrmCntEnable(InstancePtr, Direction);
}
void XAxiVdma_IntrEnable(XAxiVdma *InstancePtr, u32 IntrType, u16 Direction)
{
  getXdriverMock()->XAxiVdma_IntrEnable(InstancePtr, IntrType, Direction);
}
void XAxiVdma_IntrDisable(XAxiVdma *InstancePtr, u32 IntrType ,u16 Direction)
{
  getXdriverMock()->XAxiVdma_IntrDisable(InstancePtr, IntrType, Direction);
}
u32 XAxiVdma_IntrGetPending(XAxiVdma *InstancePtr, u16 Direction)
{
  return getXdriverMock()->XAxiVdma_IntrGetPending(InstancePtr, Direction);
}
void XAxiVdma_IntrClear(XAxiVdma *InstancePtr, u32 IntrType ,u16 Direction)
{
  getXdriverMock()->XAxiVdma_IntrClear(InstancePtr, IntrType, Direction);
}
XAxiVdma_Channel *XAxiVdma_GetChannel(XAxiVdma *InstancePtr, u16 Direction)
{
  return getXdriverMock()->XAxiVdma_GetChannel(InstancePtr, Direction);
}
int XAxiVdma_StartWriteFrame(XAxiVdma *InstancePtr,XAxiVdma_DmaSetup *DmaConfigPtr)
{
  return getXdriverMock()->XAxiVdma_StartWriteFrame(InstancePtr, DmaConfigPtr);
}
int XAxiVdma_StartReadFrame(XAxiVdma *InstancePtr,XAxiVdma_DmaSetup *DmaConfigPtr)
{
  return getXdriverMock()->XAxiVdma_StartReadFrame(InstancePtr, DmaConfigPtr);
}
int XAxiVdma_DmaConfig(XAxiVdma *InstancePtr, u16 Direction,XAxiVdma_DmaSetup *DmaConfigPtr)
{
  return getXdriverMock()->XAxiVdma_DmaConfig(InstancePtr, Direction, DmaConfigPtr);
}
int XAxiVdma_DmaSetBufferAddr(XAxiVdma *InstancePtr, u16 Direction,u32 *BufferAddrSet)
{
  return getXdriverMock()->XAxiVdma_DmaSetBufferAddr(InstancePtr, Direction, BufferAddrSet);
}
int XAxiVdma_DmaStart(XAxiVdma *InstancePtr, u16 Direction)
{
  return getXdriverMock()->XAxiVdma_DmaStart(InstancePtr, Direction);
}
void XAxiVdma_DmaStop(XAxiVdma *InstancePtr, u16 Direction)
{
  getXdriverMock()->XAxiVdma_DmaStop(InstancePtr, Direction);
}
void XAxiVdma_DmaRegisterDump(XAxiVdma *InstancePtr, u16 Direction)
{
  getXdriverMock()->XAxiVdma_DmaRegisterDump(InstancePtr, Direction);
}
int XAxiVdma_SetFrameCounter(XAxiVdma *InstancePtr,XAxiVdma_FrameCounter *FrameCounterCfgPtr)
{
  return getXdriverMock()->XAxiVdma_SetFrameCounter(InstancePtr, FrameCounterCfgPtr);
}
void XAxiVdma_GetFrameCounter(XAxiVdma *InstancePtr,XAxiVdma_FrameCounter *FrameCounterCfgPtr)
{
  getXdriverMock()->XAxiVdma_GetFrameCounter(InstancePtr, FrameCounterCfgPtr);
}
void XAxiVdma_ReadIntrHandler(void * InstancePtr)
{
  getXdriverMock()->XAxiVdma_ReadIntrHandler(InstancePtr);
}
void XAxiVdma_WriteIntrHandler(void * InstancePtr)
{
  getXdriverMock()->XAxiVdma_WriteIntrHandler(InstancePtr);
}
int XAxiVdma_SetCallBack(XAxiVdma * InstancePtr, u32 HandlerType,void *CallBackFunc, void *CallBackRef, u16 Direction)
{
  return getXdriverMock()->XAxiVdma_SetCallBack(InstancePtr, HandlerType, CallBackFunc, CallBackRef, Direction);
}
