#include "DisplayXil.h"
#include <iostream>
#include <cstring>

DisplayXil::DisplayXil( DisplayXilCfg * cfg ) :
  m_cfg(cfg),
  m_width(1920),
  m_height(1080),
  m_gridHeight(0),
  m_gridWidth(0),
  m_resolution(VIDEO_RESOLUTION_1080P),
  m_xvtcEnGenerator(XVTC_EN_GENERATOR)
{
}

int DisplayXil::_initscr()
{
  if (m_cfg->iicCtrl->init() == 0) return 0;

  _clear();

  if (vfb_common_init(m_cfg->vdmaId, &(m_cfg->axiVdma)) == 1) return 0;

  if (vfb_tx_init(&(m_cfg->axiVdma),
                  &(m_cfg->axiVdmaCfg),
                  VIDEO_RESOLUTION_1080P,
                  VIDEO_RESOLUTION_1080P,
                  m_cfg->hdmiDisplayMemBaseAddr,
                  1)) return 0;

  XVtc pVtc;
  if (vgen_init(&pVtc, m_cfg->vtcId) != 0) return 0;
  vgen_config(&pVtc, getResolution(), 0);

  return 1;
}

void DisplayXil::_clear()
{
  volatile Xuint32 *mem = (Xuint32 *)(m_cfg->hdmiDisplayMemBaseAddr);

  for (Xuint32 r=0; r<getHeight(); r++) {
    for (Xuint32 c=0; c<getWidth(); c++) {
      *mem++ = getBgColour();
    }
  }
}

void DisplayXil::_endwin()
{
}

void DisplayXil::_refresh()
{
  vfb_tx_stop(&(m_cfg->axiVdma));

  if (m_gridWidth > 0) m_writeGridToFrameBuffer();
  m_resetGrid();

  vfb_tx_start(&(m_cfg->axiVdma));

  m_cfg->iicCtrl->carrierInit();
}

Xuint32 DisplayXil::getLiveCellPixelWithCoords(Xuint32 x, Xuint32 y) {
  return getFgColour();
}

Xuint32 DisplayXil::getFgColour() {
  return 0x000000;
}

Xuint32 DisplayXil::getBgColour() {
  return 0xffffff;
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

Xuint32 DisplayXil::m_rowIndexFromYPixelCoord(Xuint32 y_coord)
{
  return (Xuint32) (y_coord/(getHeight()/m_gridHeight));
}

Xuint32 DisplayXil::m_columnIndexFromXPixelCoord(Xuint32 x_coord)
{
  return (Xuint32) (x_coord/(getWidth()/m_gridWidth));
}

char DisplayXil::m_charAtCoord(Xuint32 x_coord, Xuint32 y_coord)
{
  return m_charGrid[m_rowIndexFromYPixelCoord(y_coord)][m_columnIndexFromXPixelCoord(x_coord)];
}

void DisplayXil::m_writeGridToFrameBuffer()
{
  volatile Xuint32 *mem = (Xuint32 *)m_cfg->hdmiDisplayMemBaseAddr;


  // HEY SOHEIL! Comment this out and uncomment the stuff below for a solid colour screen
  for (Xuint32 y=0; y<getHeight(); y++) {
    for (Xuint32 x=0; x<getWidth(); x++) {
      if (m_charAtCoord(x, y) != ' ') *mem++ = getLiveCellPixelWithCoords(getCellXCoord(x, m_gridWidth), getCellXCoord(y, m_gridHeight));
      else  *mem++ = getBgColour();
    }
  }
// for (Xuint32 y=0; y<getHeight(); y++) {
//   for (Xuint32 x=0; x<getWidth(); x++) {
//     *mem++ = 0x333333;
//   }
// }

  Xil_DCacheFlush();
}

void DisplayXil::m_resetGrid()
{
  m_gridHeight = 0;
  m_gridWidth = 0;
}

Xuint32 DisplayXil::getCellXCoord(Xuint32 x, Xuint32 gridWidth)
{
  return x % (getWidth()/gridWidth);
}

Xuint32 DisplayXil::getCellYCoord(Xuint32 y, Xuint32 gridHeight)
{
  return y % (getHeight()/gridHeight);
}

int DisplayXil::getXvtcEnableGenerator()
{
  return m_xvtcEnGenerator;
}

XVtc_Polarity * DisplayXil::getXvtcPolarity()
{
  return &m_polarity;
}

XVtc_Signal * DisplayXil::getXvtcSignal()
{
  return &m_signal;
}

XVtc_SourceSelect * DisplayXil::getXvtcSourceSelect()
{
  return &m_sourceSelect;
}
