#include "DisplayXil.h"
#include <iostream>

DisplayXil::DisplayXil( IicCtrl * iicCtrl = 0 ) :
  m_iicCtrl(iicCtrl),
  m_width(1920),
  m_height(1080),
  m_resolution(VIDEO_RESOLUTION_1080P),
  m_HdmiVtcDeviceId(HDMI_VTC_DEVICE_ID),
  m_HdmiVdmaDeviceId(HDMI_VDMA_DEVICE_ID),
  m_HdmiDisplayMemBaseAddr(HDMI_DISPLAY_MEM_BASE_ADDR)
{
}

int DisplayXil::_initscr()
{
  if (m_iicCtrl->init() == 0) return 0;

  _clear();

  return 1;
}

void DisplayXil::_clear()
{
  volatile Xuint32 *mem = (Xuint32 *)getHdmiDisplayMemBaseAddr();

  for (int r=0; r<getHeight(); r++) {
    for (int c=0; c<getWidth(); c++) {
      *mem++ = 0x00000000;
    }
  }
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

Xuint32 DisplayXil::getHdmiVtcDeviceId()
{
  return m_HdmiVtcDeviceId;
}

Xuint32 DisplayXil::getHdmiVdmaDeviceId()
{
  return m_HdmiVdmaDeviceId;
}

Xuint32 DisplayXil::setHdmiDisplayMemBaseAddr(Xuint32 addr)
{
  m_HdmiDisplayMemBaseAddr = addr;
}

Xuint32 DisplayXil::getHdmiDisplayMemBaseAddr()
{
  return m_HdmiDisplayMemBaseAddr;
}
