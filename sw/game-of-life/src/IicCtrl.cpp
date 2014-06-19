#include "IicCtrl.h"
#include <iostream>

Xuint8 IicCtrl::carrier_hdmi_out_config[CARRIER_HDMI_OUT_CONFIG_LEN][3] = {
  {ADV7511_ADDR>>1, 0x15, 0x01},
  {ADV7511_ADDR>>1, 0x16, 0x38},
  {ADV7511_ADDR>>1, 0x18, 0xAC},
  {ADV7511_ADDR>>1, 0x19, 0x53},
  {ADV7511_ADDR>>1, 0x1A, 0x08},
  {ADV7511_ADDR>>1, 0x1B, 0x00},
  {ADV7511_ADDR>>1, 0x1C, 0x00},
  {ADV7511_ADDR>>1, 0x1D, 0x00},
  {ADV7511_ADDR>>1, 0x1E, 0x19},
  {ADV7511_ADDR>>1, 0x1F, 0xD6},
  {ADV7511_ADDR>>1, 0x20, 0x1C},
  {ADV7511_ADDR>>1, 0x21, 0x56},
  {ADV7511_ADDR>>1, 0x22, 0x08},
  {ADV7511_ADDR>>1, 0x23, 0x00},
  {ADV7511_ADDR>>1, 0x24, 0x1E},
  {ADV7511_ADDR>>1, 0x25, 0x88},
  {ADV7511_ADDR>>1, 0x26, 0x02},
  {ADV7511_ADDR>>1, 0x27, 0x91},
  {ADV7511_ADDR>>1, 0x28, 0x1F},
  {ADV7511_ADDR>>1, 0x29, 0xFF},
  {ADV7511_ADDR>>1, 0x2A, 0x08},
  {ADV7511_ADDR>>1, 0x2B, 0x00},
  {ADV7511_ADDR>>1, 0x2C, 0x0E},
  {ADV7511_ADDR>>1, 0x2D, 0x85},
  {ADV7511_ADDR>>1, 0x2E, 0x18},
  {ADV7511_ADDR>>1, 0x2F, 0xBE},
  {ADV7511_ADDR>>1, 0x41, 0x10},
  {ADV7511_ADDR>>1, 0x48, 0x08},
  {ADV7511_ADDR>>1, 0x55, 0x00},
  {ADV7511_ADDR>>1, 0x56, 0x28},
  {ADV7511_ADDR>>1, 0x98, 0x03},
  {ADV7511_ADDR>>1, 0x9A, 0xE0},
  {ADV7511_ADDR>>1, 0x9C, 0x30},
  {ADV7511_ADDR>>1, 0x9D, 0x61},
  {ADV7511_ADDR>>1, 0xA2, 0xA4},
  {ADV7511_ADDR>>1, 0xA3, 0xA4},
  {ADV7511_ADDR>>1, 0xAF, 0x04},
  {ADV7511_ADDR>>1, 0xBA, 0x60},
  {ADV7511_ADDR>>1, 0xE0, 0xD0},
  {ADV7511_ADDR>>1, 0xF9, 0x00}
};

IicCtrl::IicCtrl(u32 HdmiI2cBaseAddr) :
  m_HdmiI2cBaseAddr(HdmiI2cBaseAddr)
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
    iicWrite(carrier_hdmi_out_config[i][0], carrier_hdmi_out_config[i][1], &(carrier_hdmi_out_config[i][2]), 1 );
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
