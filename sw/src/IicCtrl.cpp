#include "IicCtrl.h"
#include <iostream>

IicCtrl::IicCtrl() :
  m_width(1920),
  m_height(1080),
  m_resolution(VIDEO_RESOLUTION_1080P),
  m_HdmiI2cBaseAddr(HDMI_I2C_BASE_ADDR),
  m_HdmiVtcDeviceId(HDMI_VTC_DEVICE_ID),
  m_HdmiVdmaDeviceId(HDMI_VDMA_DEVICE_ID),
  m_HdmiDisplayMemBaseAddr(HDMI_DISPLAY_MEM_BASE_ADDR)
{
}

int IicCtrl::init()
{
  XStatus Status;

  Status = XIic_DynInit(getHdmiI2cBaseAddr());
  if(Status != XST_SUCCESS) {
    return 0;
  }

  while (!iicReady());

  return 1;
}

// the fifos are empty and the device isn't busy
bool IicCtrl::iicReady()
{
  u8 StatusReg;

  StatusReg = Xil_In8(getHdmiI2cBaseAddr() + XIIC_SR_REG_OFFSET) & (XIIC_SR_RX_FIFO_EMPTY_MASK | XIIC_SR_TX_FIFO_EMPTY_MASK | XIIC_SR_BUS_BUSY_MASK);

  return (StatusReg == (XIIC_SR_RX_FIFO_EMPTY_MASK | XIIC_SR_TX_FIFO_EMPTY_MASK));
}

Xuint32 IicCtrl::getWidth()
{
  return m_width;
}

Xuint32 IicCtrl::getHeight()
{
  return m_height;
}

int IicCtrl::getResolution()
{
  return m_resolution;
}

u32 IicCtrl::getHdmiI2cBaseAddr()
{
  return m_HdmiI2cBaseAddr;
}

Xuint32 IicCtrl::getHdmiVtcDeviceId()
{
  return m_HdmiVtcDeviceId;
}

Xuint32 IicCtrl::getHdmiVdmaDeviceId()
{
  return m_HdmiVdmaDeviceId;
}

Xuint32 IicCtrl::getHdmiDisplayMemBaseAddr()
{
  return m_HdmiDisplayMemBaseAddr;
}

