#include "DisplayXil.h"
#include <iostream>
#include <cstring>


DisplayXil::DisplayXil( DisplayXilCfg * cfg ) :
  m_cfg(cfg),
  m_width(1920),
  m_height(1080),
  m_gridPtr(0),
  m_gridHeight(54),
  m_gridWidth(96),
  m_cellWidth(20),
  m_cellHeight(20),
  m_fgColour(0x00000000),
  m_bgColour(0x00ffffff),
  m_resolution(VIDEO_RESOLUTION_1080P),
  m_xvtcEnGenerator(XVTC_EN_GENERATOR)
{
}

//---------------------------------------------------------------------------
// Default is to make squares for live cells with 5pixel of padding. You can
// change the shape to be whatever you want... just be sure to go change
// the test first :)
//---------------------------------------------------------------------------
Xuint32 DisplayXil::getLiveCellPixelWithCoords(Xuint32 c, Xuint32 r) {
  int row = r%20;
  int column = c%20;

  //----------------------------
  // HERE'S code for squares...
  //----------------------------
  if (row >= 5 &&
      row <= 15 &&
      column >= 5 &&
      column <= 15)
  {
    return m_fgColour;
  }
  else
  {
    return m_bgColour;
  }

  //------------------------------
  // HERE'S code for triangles...
  //------------------------------
  // if (column < 10) {
  //   if (row > 20 - 2*column) return m_fgColour;
  //   else                                   return m_bgColour;
  // }
  // 
  // else {
  //   if (row > 2*column - 20) return m_fgColour;
  //   else                                   return m_bgColour;
  // }
}

int DisplayXil::_initscr()
{
  if (m_cfg->iicCtrl->init() == 0) return 0;

  if (vfb_common_init(m_cfg->vdmaId, &(m_cfg->axiVdma)) == 1) return 0;

  if (vfb_tx_init(&(m_cfg->axiVdma),
                  &(m_cfg->axiVdmaCfg),
                  VIDEO_RESOLUTION_1080P,
                  VIDEO_RESOLUTION_1080P,
                  m_cfg->hdmiDisplayMemBaseAddr,
                  3)) return 0;

  if (vgen_init(&(m_cfg->vtc), m_cfg->vtcId) != 0) return 0;
  vgen_config(&(m_cfg->vtc), getResolution(), 0);

  _clear();

  XAxiVdma_StartParking(&(m_cfg->axiVdma), 0,  XAXIVDMA_READ);

  return 1;
}

void DisplayXil::_clear()
{
  Xuint32 *mem = (Xuint32 *)(m_cfg->axiVdmaCfg.FrameStoreStartAddr[0]);

  for (Xuint32 r=0; r<getHeight(); r++) {
    for (Xuint32 c=0; c<getWidth(); c++) {
      *mem++ = m_bgColour;
    }
  }
}

void DisplayXil::_endwin()
{
}

void DisplayXil::_refresh()
{
  m_writeGridToFrameBuffer();
  m_resetGrid();
}

Xuint32 DisplayXil::getFgColour() {
  return m_fgColour;
}

Xuint32 DisplayXil::getBgColour() {
  return m_bgColour;
}

void DisplayXil::_getch()
{
}

void DisplayXil::_addstr(const char * str)
{
  strcpy(m_charGrid[m_gridPtr], str);
  m_gridPtr++;
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
  return (Xuint32) (y_coord/m_cellHeight);
}

Xuint32 DisplayXil::m_columnIndexFromXPixelCoord(Xuint32 x_coord)
{
  return (Xuint32) (x_coord/m_cellWidth);
}

char DisplayXil::m_charAtCoord(Xuint32 x_coord, Xuint32 y_coord)
{
  return m_charGrid[
                      y_coord/m_cellHeight  // row index
                   ][
                      x_coord/m_cellWidth   // column index
                   ];
}

void DisplayXil::m_writeGridToFrameBuffer()
{
  volatile Xuint32 *mem = (Xuint32 *)(m_cfg->axiVdmaCfg.FrameStoreStartAddr[0]);
  char gridChar;

  for (Xuint32 row=0; row<m_height; row++) {
    for (Xuint32 column=0; column<m_width; column+=1) {
      gridChar = m_charAtCoord(column, row);

      if (gridChar != ' ') {
    	  *mem++ = getLiveCellPixelWithCoords(column, row);
      }
      else  *mem++ = m_bgColour;
    }
  }

  Xil_DCacheFlush();
}

void DisplayXil::m_resetGrid()
{
  m_gridPtr = 0;
}

Xuint32 DisplayXil::getCellWidth()
{
  return m_cellWidth;
}

Xuint32 DisplayXil::getCellHeight()
{
  return m_cellHeight;
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

void DisplayXil::printAxiVdma() {
  xil_printf(
      "\n\nfull getAxiVdma()->BaseAddr: %0x\n, \
      EnableVIDParamRead: %0x\n, HasMm2S: %0x\n, \
      HasMm2SDRE: %0x\n, \
      HasS2MmDRE: %0x\n, \
      IsReady: %0x\n\n, \
      HasS2Mm: 0x%0x\n \
      HasSG: 0x%0x\n \
      InternalGenLock: 0x%0x\n \
      MaxNumFrames: 0x%0x\n \
      UseFsync: 0x%0x\n",
      m_cfg->axiVdma.BaseAddr, \
      m_cfg->axiVdma.EnableVIDParamRead,
      m_cfg->axiVdma.HasMm2S, \
      m_cfg->axiVdma.HasMm2SDRE,
      m_cfg->axiVdma.HasS2MmDRE, \
      m_cfg->axiVdma.IsReady,
      m_cfg->axiVdma.HasS2Mm, \
      m_cfg->axiVdma.HasSG, \
      m_cfg->axiVdma.InternalGenLock, \
      m_cfg->axiVdma.MaxNumFrames, \
      m_cfg->axiVdma.UseFsync);
}
