#include "IicCtrl.h"
#include <iostream>

IicCtrl::IicCtrl(u32 HdmiI2cBaseAddr,
                 Xuint8 * carrier_hdmi_out_config) :
  m_HdmiI2cBaseAddr(HdmiI2cBaseAddr),
  m_carrier_hdmi_out_config(carrier_hdmi_out_config)
{}

int IicCtrl::init()
{
  XStatus Status;

  Status = XIic_DynInit(getHdmiI2cBaseAddr());
  if(Status != XST_SUCCESS) {
    return 0;
  }

  if (!iicReady()) {
    return 0;
  }

  carrierInit();

  return 1;
}

void IicCtrl::carrierInit() {
  for (int i = 0; i < CARRIER_HDMI_OUT_CONFIG_LEN; i++) {
    iicWrite(m_carrier_hdmi_out_config[i*3], m_carrier_hdmi_out_config[i*3+1], &(m_carrier_hdmi_out_config[i*3+2]), 1 );
  }
}

unsigned IicCtrl::iicWrite(u32 address, Xuint8 offset, Xuint8 * bufferPtr, Xuint8 size)
{
  Xuint8 writeBuffer[3];

  if (!iicReady()) {
    return 0;
  }

  writeBuffer[0] = offset;
  for (int i=0; i<size; i++) writeBuffer[i+1] = bufferPtr[i];

  return XIic_DynSend(getHdmiI2cBaseAddr(), address, writeBuffer, size+1, XIIC_STOP) - 1;
}

// the fifos are empty and the device isn't busy
bool IicCtrl::iicReady()
{
  Xuint8 StatusReg;
  int timeout = IIC_STATUS_TIMEOUT;

  do {
    StatusReg = Xil_In8(getHdmiI2cBaseAddr() + XIIC_SR_REG_OFFSET) & (XIIC_SR_RX_FIFO_EMPTY_MASK | XIIC_SR_TX_FIFO_EMPTY_MASK | XIIC_SR_BUS_BUSY_MASK);
  }
  while (StatusReg != (XIIC_SR_RX_FIFO_EMPTY_MASK | XIIC_SR_TX_FIFO_EMPTY_MASK) && --timeout > 0);

  if (timeout <= 0) return 0;
  else return 1;
}

u32 IicCtrl::getHdmiI2cBaseAddr()
{
  return m_HdmiI2cBaseAddr;
}
