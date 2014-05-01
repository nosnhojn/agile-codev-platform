#include "DisplayXil.h"

DisplayXil::DisplayXil() :
  m_width(1920),
  m_height(1080),
  m_resolution(VIDEO_RESOLUTION_1080P),
  m_HdmiI2cBaseAddr(HDMI_I2C_BASE_ADDR),
  m_HdmiVtcDeviceId(HDMI_VTC_DEVICE_ID),
  m_HdmiVdmaDeviceId(HDMI_VDMA_DEVICE_ID),
  m_HdmiDisplayMemBaseAddr(HDMI_DISPLAY_MEM_BASE_ADDR)
{
}

void DisplayXil::_initscr()
{
}

void DisplayXil::_clear()
{
}

void DisplayXil::_endwin()
{
}

void DisplayXil::_refresh()
{
}

void DisplayXil::_getch()
{
}

void DisplayXil::_addstr(const char * str)
{
}

void DisplayXil::_move(int x, int y)
{
}

Xuint32 DisplayXil::getWidth()
{
  return m_width;
}

Xuint32 DisplayXil::getHeight()
{
  return m_height;
}

int DisplayXil::getResolution()
{
  return m_resolution;
}

Xuint32 DisplayXil::getHdmiI2cBaseAddr()
{
  return m_HdmiI2cBaseAddr;
}

Xuint32 DisplayXil::getHdmiVtcDeviceId()
{
  return m_HdmiVtcDeviceId;
}

Xuint32 DisplayXil::getHdmiVdmaDeviceId()
{
  return m_HdmiVdmaDeviceId;
}

Xuint32 DisplayXil::getHdmiDisplayMemBaseAddr()
{
  return m_HdmiDisplayMemBaseAddr;
}

