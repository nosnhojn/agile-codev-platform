#include "IicCtrl.h"

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

Xuint32 IicCtrl::getHdmiI2cBaseAddr()
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

