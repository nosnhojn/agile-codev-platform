#include "displayXilTest.h"

using namespace testing;

DisplayXilTest::DisplayXilTest()
{
  cfg.iicCtrl = &(iicCtrl);
  cfg.hdmiDisplayMemBaseAddr = (Xuint32)HdmiDisplayByteMemory;
  cfg.vtcId = 1;
  cfg.vdmaId = 2;

  ON_CALL(iicCtrl, init())
      .WillByDefault(Return(1));

  display = new DisplayXil(&cfg);

  xdMock = getXdriverMock();   
    
  defaultConfig.BaseAddress = (u32)vdmaConfigSpace;
  cfg.axiVdma.BaseAddr = (u32)vdmaConfigSpace;
  ON_CALL(*xdMock, XAxiVdma_LookupConfig(_))
      .WillByDefault(Return(&defaultConfig));
  ON_CALL(*xdMock, XAxiVdma_DmaConfig(_,_,_))
      .WillByDefault(Return(XST_SUCCESS));
  ON_CALL(*xdMock, XAxiVdma_DmaSetBufferAddr(_,_,_))
      .WillByDefault(Return(XST_SUCCESS));
  ON_CALL(*xdMock, XAxiVdma_DmaStart(_, _))
      .WillByDefault(Return(XST_SUCCESS));

  // Video Timing Correction (VTC) mock object constructor call
  xvMock = getXvtcMock();
  // Mock configurations for the video timing correction ip block
  vtcDefaultConfig.DeviceId= 1;
  vtcDefaultConfig.BaseAddress = 0x70000000;
  ON_CALL(*xvMock, XVtc_LookupConfig(_))
      .WillByDefault(Return(&vtcDefaultConfig));
}

DisplayXilTest::~DisplayXilTest()
{
  destroyXdriverMock();
  destroyXvtcMock();
}

XAxiVdma          * DisplayXilTest::vdma()
{
  return &(cfg.axiVdma);
}

XAxiVdma_DmaSetup * DisplayXilTest::vdmaCfg()
{
  return &(cfg.axiVdmaCfg);
}

XVtc_Polarity * DisplayXilTest::xvtcPolarity()
{
  return display->getXvtcPolarity();
}

XVtc_Signal * DisplayXilTest::xvtcSignal()
{
  return display->getXvtcSignal();
}

XVtc_SourceSelect * DisplayXilTest::xvtcSourceSelect()
{
  return display->getXvtcSourceSelect();
}

int DisplayXilTest::width()
{
  return display->getWidth();
}

int DisplayXilTest::height()
{
  return display->getHeight();
}

Xuint32 DisplayXilTest::pixelAt(int row, int column)
{
  Xuint32 * HdmiDisplayMemory = (Xuint32 *)HdmiDisplayByteMemory;

  return *(HdmiDisplayMemory + row*1920 + column);
}

Xuint32 DisplayXilTest::expectedPixelAt(int row, int rowSize, int column, int columnSize)
{
  return display->getLiveCellPixelWithCoords(row, rowSize, column, columnSize);
}
