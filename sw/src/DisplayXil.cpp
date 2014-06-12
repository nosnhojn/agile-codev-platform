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
  m_gridHeight(0),
  m_gridWidth(0)
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
  vfb_tx_stop(getAxiVdma());

  if (m_gridWidth > 0) m_writeGridToFrameBuffer();
  m_resetGrid();

  vfb_tx_start(getAxiVdma());

  m_iicCtrl->carrierInit();
}

unsigned DisplayXil::getLiveCellPixelWithCoords(int x, int y) {
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
  m_gridWidth = strlen(str);
  strcpy(m_charGrid[m_gridHeight], str);
  m_gridHeight++;
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

int DisplayXil::m_rowIndexFromYPixelCoord(int y_coord)
{
  return (int) (y_coord/(getHeight()/m_gridHeight));
}

int DisplayXil::m_columnIndexFromXPixelCoord(int x_coord)
{
  return (int) (x_coord/(getWidth()/m_gridWidth));
}

char DisplayXil::m_charAtCoord(int x_coord, int y_coord)
{
  return m_charGrid[m_rowIndexFromYPixelCoord(y_coord)][m_columnIndexFromXPixelCoord(x_coord)];
}

void DisplayXil::m_writeGridToFrameBuffer()
{
  volatile Xuint32 *mem = (Xuint32 *)getHdmiDisplayMemBaseAddr();

  for (int y=0; y<getHeight(); y++) {
    for (int x=0; x<getWidth(); x++) {
      if (m_charAtCoord(x, y) != ' ') *mem++ = getLiveCellPixelWithCoords(getCellXCoord(x, m_gridWidth), getCellXCoord(y, m_gridHeight));
      else  *mem++ = getBgColour();
    }
  }

  //Xil_DCacheFlush();
}

void DisplayXil::m_resetGrid()
{
  m_gridHeight = 0;
  m_gridWidth = 0;
}

int DisplayXil::getCellXCoord(int x, int gridWidth)
{
  return x % (getWidth()/gridWidth);
}

int DisplayXil::getCellYCoord(int y, int gridHeight)
{
  return y % (getHeight()/gridHeight);
}
