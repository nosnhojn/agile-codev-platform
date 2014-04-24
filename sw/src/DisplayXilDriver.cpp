#include "DisplayXilDriver.h"

DisplayXilDriver::DisplayXilDriver() :
  m_width(1920),
  m_height(1080),
  m_resolution(VIDEO_RESOLUTION_1080P),
  m_HdmiI2cBaseAddr(HDMI_I2C_BASE_ADDR),
  m_HdmiVtcDeviceId(HDMI_VTC_DEVICE_ID),
  m_HdmiVdmaDeviceId(HDMI_VDMA_DEVICE_ID),
  m_HdmiDisplayMemBaseAddr(HDMI_DISPLAY_MEM_BASE_ADDR)
{
}

void DisplayXilDriver::initHw()
{
}

Xuint32 DisplayXilDriver::getWidth()
{
  return m_width;
}

Xuint32 DisplayXilDriver::getHeight()
{
  return m_height;
}

int DisplayXilDriver::getResolution()
{
  return m_resolution;
}

Xuint32 DisplayXilDriver::getHdmiI2cBaseAddr()
{
  return m_HdmiI2cBaseAddr;
}

Xuint32 DisplayXilDriver::getHdmiVtcDeviceId()
{
  return m_HdmiVtcDeviceId;
}

Xuint32 DisplayXilDriver::getHdmiVdmaDeviceId()
{
  return m_HdmiVdmaDeviceId;
}

Xuint32 DisplayXilDriver::getHdmiDisplayMemBaseAddr()
{
  return m_HdmiDisplayMemBaseAddr;
}
