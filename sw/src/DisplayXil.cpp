#include "DisplayXil.h"
#include <iostream>

DisplayXil::DisplayXil( IicCtrl * iicCtrl = 0 ) :
  m_iicCtrl(iicCtrl),
  m_width(1920),
  m_height(1080),
  m_resolution(VIDEO_RESOLUTION_1080P),
  m_HdmiVtcDeviceId(HDMI_VTC_DEVICE_ID),
  m_HdmiVdmaDeviceId(HDMI_VDMA_DEVICE_ID),
  m_HdmiDisplayMemBaseAddr(HDMI_DISPLAY_MEM_BASE_ADDR),
  m_linePtr(0)
{
}

int DisplayXil::_initscr()
{
  if (m_iicCtrl->init() == 0) return 0;

  _clear();

  if (vfb_common_init(getHdmiVdmaDeviceId(), getAxiVdma()) == 1) return 0;

  if (vfb_tx_init(getAxiVdma(),
                  getAxiVdmaCfg(),
                  VIDEO_RESOLUTION_1080P,
                  VIDEO_RESOLUTION_1080P,
                  getHdmiDisplayMemBaseAddr(),
                  1)) return 0;

  {
    XVtc *pVtc;
    if (vgen_init(pVtc, 0) != 0) return 0;
  }

  return 1;
}

void DisplayXil::_clear()
{
  volatile Xuint32 *mem = (Xuint32 *)getHdmiDisplayMemBaseAddr();

  for (int r=0; r<getHeight(); r++) {
    for (int c=0; c<getWidth(); c++) {
      *mem++ = getBgColour();
    }
  }
}

void DisplayXil::_endwin()
{
}

void DisplayXil::_refresh()
{
  volatile Xuint32 *mem = (Xuint32 *)getHdmiDisplayMemBaseAddr();

  // write the charGrid to the frame buffer
  for (int i=0; i<getHeight(); i++) {
    for (int j=0; j<getWidth(); j++) {
      if (charGrid[(int) (i/(getHeight()/2))][(int) (j/(getWidth()/10))] != ' ') *mem++ = getFgColour();
      else  *mem++ = getBgColour();
    }
  }

  vfb_tx_stop(getAxiVdma());

  // in here is where we drive frames

  vfb_tx_start(getAxiVdma());

  m_iicCtrl->carrierInit();
}

unsigned DisplayXil::getLivePixelAtIndex(int x, int y) {
  return getFgColour();
}

unsigned DisplayXil::getFgColour() {
  return 0xffffff;
}

unsigned DisplayXil::getBgColour() {
  return 0x000000;
}

void DisplayXil::_getch()
{
}

void DisplayXil::_addstr(const char * str)
{
  strcpy(charGrid[m_linePtr], str);
  m_linePtr++;
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

XAxiVdma * DisplayXil::getAxiVdma()
{
  return &m_axiVdma;
}

XAxiVdma_DmaSetup * DisplayXil::getAxiVdmaCfg()
{
  return &m_axiVdmaCfg;
}
