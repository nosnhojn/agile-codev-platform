#include "xiic.h"

int XIic_Initialize(XIic *InstancePtr, u16 DeviceId);
XIic_Config *XIic_LookupConfig(u16 DeviceId);
int XIic_CfgInitialize(XIic *InstancePtr, XIic_Config *Config,
		       u32 EffectiveAddr);
int XIic_Start(XIic *InstancePtr);
int XIic_Stop(XIic *InstancePtr);
void XIic_Reset(XIic *InstancePtr);
int XIic_SetAddress(XIic *InstancePtr, int AddressType, int Address);
u16 XIic_GetAddress(XIic *InstancePtr, int AddressType);
int XIic_SetGpOutput(XIic *InstancePtr, u8 OutputValue);
int XIic_GetGpOutput(XIic *InstancePtr, u8 *OutputValuePtr);
u32 XIic_IsSlave(XIic *InstancePtr);
void XIic_SetRecvHandler(XIic *InstancePtr, void *CallBackRef,
			 XIic_Handler FuncPtr);
void XIic_SetSendHandler(XIic *InstancePtr, void *CallBackRef,
			 XIic_Handler FuncPtr);
void XIic_SetStatusHandler(XIic *InstancePtr, void *CallBackRef,
			   XIic_StatusHandler FuncPtr);
void XIic_InterruptHandler(void *InstancePtr);
int XIic_MasterRecv(XIic *InstancePtr, u8 *RxMsgPtr, int ByteCount);
int XIic_MasterSend(XIic *InstancePtr, u8 *TxMsgPtr, int ByteCount);
int XIic_DynMasterRecv(XIic *InstancePtr, u8 *RxMsgPtr, u8 ByteCount);
int XIic_DynMasterSend(XIic *InstancePtr, u8 *TxMsgPtr, u8 ByteCount);
int XIic_DynamicInitialize(XIic *InstancePtr);
void XIic_SlaveInclude(void);
int XIic_SlaveRecv(XIic *InstancePtr, u8 *RxMsgPtr, int ByteCount);
int XIic_SlaveSend(XIic *InstancePtr, u8 *TxMsgPtr, int ByteCount);
void XIic_GetStats(XIic *InstancePtr, XIicStats *StatsPtr);
void XIic_ClearStats(XIic *InstancePtr);
int XIic_SelfTest(XIic *InstancePtr);
u32 XIic_IsIicBusy(XIic *InstancePtr);
void XIic_SetOptions(XIic *InstancePtr, u32 Options);
u32 XIic_GetOptions(XIic *InstancePtr);
void XIic_MultiMasterInclude(void);
