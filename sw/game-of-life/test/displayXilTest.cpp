#include "gtest/gtest.h"
#include "gmock/gmock.h"

#include "DisplayXil.h"
#include "IicCtrlMock.h"
#include "xdriverMock.h"
#include "xvtcMock.h"
#include "testDefs.h"

#define BLANK_ROW_OF_10     "          "
#define FULL_ROW_OF_10      "XXXXXXXXXX"
#define ALTERNATE_ROW_OF_10 " X X X X X"


using namespace testing;


class DisplayXilTest : public testing::Test
{
  public:
    DisplayXilCfg cfg;
    DisplayXil * display;
    IicCtrlMock iicCtrl;
    Xuint32 HdmiDisplayMemory [1080] [1920];
    xdriverMock * xdMock;
    XvtcMock * xvMock;
    XAxiVdma_Config defaultConfig;
    XVtc_Config vtcDefaultConfig;
            
    
    DisplayXilTest()
    {
      cfg.iicCtrl = &(iicCtrl);

      ON_CALL(iicCtrl, init())
          .WillByDefault(Return(1));

      display = new DisplayXil(&cfg,
                               Xuint32(HdmiDisplayMemory),
                               1,
                               2);

      for (int i=0; i<1080; i++)
        for (int j=0; j<1920; j++)
          HdmiDisplayMemory [i] [j] = 0x44883311;

      xdMock = getXdriverMock();   
        
      defaultConfig.BaseAddress = 99;
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

    ~DisplayXilTest()
    {
      destroyXdriverMock();
      destroyXvtcMock();
    }

    XAxiVdma          * vdma() { return &(cfg.axiVdma); }
    XAxiVdma_DmaSetup * vdmaCfg() { return &(cfg.axiVdmaCfg); }
    XVtc_Polarity * xvtcPolarity() { return display->getXvtcPolarity(); }
    XVtc_Signal * xvtcSignal() { return display->getXvtcSignal(); }
    XVtc_SourceSelect * xvtcSourceSelect() { return display->getXvtcSourceSelect(); }
};

TEST_F(DisplayXilTest, initScreenInitializesIic) {
  EXPECT_CALL(iicCtrl, init()).Times(1);

  display->_initscr();
}

TEST_F(DisplayXilTest, initScreenPasses) {
  EXPECT_EQ(display->_initscr(), 1);
}

TEST_F(DisplayXilTest, initScreenFails) {
  EXPECT_CALL(iicCtrl, init()).WillOnce(Return(0));
  
  EXPECT_EQ(display->_initscr(), 0);
}

TEST_F(DisplayXilTest, clearBufferToWhite0) {
  display->_clear();

  EXPECT_EQ(HdmiDisplayMemory[0][0], display->getBgColour());
}

TEST_F(DisplayXilTest, clearBufferToWhiteAll) {
  display->_clear();

  for (int i=0; i<1080; i++) {
    for (int j=0; j<1920; j++) {
      EXPECT_EQ(HdmiDisplayMemory[i][j], display->getBgColour());
    }
  }
}

TEST_F(DisplayXilTest, initDoesClear) {
  display->_initscr();

  EXPECT_EQ(HdmiDisplayMemory[0][0], display->getBgColour());
}

TEST_F(DisplayXilTest, initCallsVfbLookupConfig) {
  EXPECT_CALL(*xdMock, XAxiVdma_LookupConfig(display->getHdmiVdmaDeviceId())).Times(1);

  display->_initscr();
}

TEST_F(DisplayXilTest, vfbLookupConfigCanFailAndExit) {
  XAxiVdma_Config * Config = 0;

  EXPECT_CALL(*xdMock, XAxiVdma_LookupConfig(_)).WillOnce(Return(Config));

  EXPECT_FALSE(display->_initscr());
}

TEST_F(DisplayXilTest, initCallsVfbCfgInitialize) {
  EXPECT_CALL(*xdMock, XAxiVdma_CfgInitialize(vdma(),&defaultConfig,99)).Times(1);

  display->_initscr();
}

TEST_F(DisplayXilTest, vfbCfgInitializeCanFailAndExit) {
  EXPECT_CALL(*xdMock, XAxiVdma_CfgInitialize(_,_,_)).WillOnce(Return(XST_FAILURE));

  EXPECT_FALSE(display->_initscr());
}

TEST_F(DisplayXilTest, initCallsDmaConfig) {
  EXPECT_CALL(*xdMock, XAxiVdma_DmaConfig(vdma(), XAXIVDMA_READ, vdmaCfg())).Times(1);

  display->_initscr();
}

TEST_F(DisplayXilTest, vfbDmaConfigCanFailAndExit) {
  EXPECT_CALL(*xdMock, XAxiVdma_DmaConfig(_,_,_)).WillOnce(Return(XST_FAILURE));

  EXPECT_FALSE(display->_initscr());
}

TEST_F(DisplayXilTest, dmaCfgParametersSetOnInit) {
  display->_initscr();

  EXPECT_EQ(vdmaCfg()->VertSizeInput, display->getHeight());
  EXPECT_EQ(vdmaCfg()->HoriSizeInput, display->getWidth()<<2);
  EXPECT_EQ(vdmaCfg()->Stride, display->getWidth()<<2);
  EXPECT_EQ(vdmaCfg()->FrameDelay, 0);
  EXPECT_EQ(vdmaCfg()->EnableCircularBuf, 1);
  EXPECT_EQ(vdmaCfg()->EnableSync, 1);
  EXPECT_EQ(vdmaCfg()->PointNum, 1);
  EXPECT_EQ(vdmaCfg()->EnableFrameCounter, 0);
  EXPECT_EQ(vdmaCfg()->FixedFrameStoreAddr, 0);
}

TEST_F(DisplayXilTest, getHdmiDisplayMemBaseAddr) {
  EXPECT_EQ(Xuint32(HdmiDisplayMemory), display->getHdmiDisplayMemBaseAddr());
}

TEST_F(DisplayXilTest, dmaCfgFrameAddrSetOnInit) {
  display->_initscr();

  EXPECT_EQ(vdmaCfg()->FrameStoreStartAddr[0], display->getHdmiDisplayMemBaseAddr());
}

TEST_F(DisplayXilTest, initCallsDmaSetBufferAddr) {
  EXPECT_CALL(*xdMock, XAxiVdma_DmaSetBufferAddr(vdma(), XAXIVDMA_READ, vdmaCfg()->FrameStoreStartAddr)).Times(1);

  display->_initscr();
}

TEST_F(DisplayXilTest, initCallsDmaStart) {
  EXPECT_CALL(*xdMock, XAxiVdma_DmaStart(vdma(), XAXIVDMA_READ)).Times(1);

  display->_initscr();
}

TEST_F(DisplayXilTest, dmaStartCanFailAndExit) {
  EXPECT_CALL(*xdMock, XAxiVdma_DmaStart(vdma(), XAXIVDMA_READ)).WillOnce(Return(XST_FAILURE));

  EXPECT_FALSE(display->_initscr());
}

TEST_F(DisplayXilTest, vfbDmaSetBufferAddrCanFailAndExit) {
  EXPECT_CALL(*xdMock, XAxiVdma_DmaSetBufferAddr(_, _, _)).WillOnce(Return(XST_FAILURE));

  EXPECT_FALSE(display->_initscr());
}

TEST_F(DisplayXilTest, initCallsVtcLookupConfig) {
  EXPECT_CALL(*xvMock, XVtc_LookupConfig(_)).Times(1);

  display->_initscr();
}

TEST_F(DisplayXilTest, vtcLookupConfigCanFailAndExit) {
  EXPECT_CALL(*xvMock, XVtc_LookupConfig(_)).WillOnce(Return((XVtc_Config *) 0));

  EXPECT_FALSE(display->_initscr());
}

TEST_F(DisplayXilTest, initCallsVtcLookupConfigWithRightParameters) {
  EXPECT_CALL(*xvMock, XVtc_LookupConfig(display->getHdmiVtcDeviceId())).Times(1);

  display->_initscr();
}

TEST_F(DisplayXilTest, initCallsVtcCfgInitialize) {
  EXPECT_CALL(*xvMock, XVtc_CfgInitialize(_,_,_)).Times(1);

  display->_initscr();
}

TEST_F(DisplayXilTest, vtcCfgInitializeCanFailAndExit) {
  EXPECT_CALL(*xvMock, XVtc_CfgInitialize(_,_,_)).WillOnce(Return(0));

  display->_initscr();
}

TEST_F(DisplayXilTest, vtcCfgInitializeWithRightParameters) {
  EXPECT_CALL(*xvMock, XVtc_CfgInitialize(_, &vtcDefaultConfig, 0x70000000)).Times(1);

  display->_initscr();
}

TEST_F(DisplayXilTest, vgenConfigCallsXvtcDisable) { 
  EXPECT_CALL(*xvMock, XVtc_Disable(_,_)).Times(1);
  display->_initscr();
}

TEST_F(DisplayXilTest, xvtcDisableWithRightParameters) {
  EXPECT_CALL(*xvMock, XVtc_Disable(_,display->getXvtcEnableGenerator())).Times(1);
  display->_initscr();
}

//FIXME: Test removed due to funcion-like macros not working with gTest at this point.
/*
TEST_F(DisplayXilTest, vgenConfigCallsXvtcReset) { 
  EXPECT_CALL(*xvMock, XVtc_Reset(_)).Times(1);
  display->_initscr();
}
*/

TEST_F(DisplayXilTest, xvgenConfigCallsXvtcSetPolarity) {
  EXPECT_CALL(*xvMock, XVtc_SetPolarity(_,_)).Times(1);
  display->_initscr();
}

TEST_F(DisplayXilTest, xvtcSetPolarityWithRightParameters) {
  EXPECT_CALL(*xvMock, XVtc_SetPolarity(_,
          Pointee(AllOf(
              Field(&XVtc_Polarity::ActiveChromaPol, Eq(1)),
              Field(&XVtc_Polarity::ActiveVideoPol, Eq(1)),
              Field(&XVtc_Polarity::FieldIdPol, Eq(0)),
              Field(&XVtc_Polarity::VBlankPol, Eq(1)),
              Field(&XVtc_Polarity::VSyncPol, Eq(1)),
              Field(&XVtc_Polarity::HBlankPol, Eq(1)),
              Field(&XVtc_Polarity::HSyncPol, Eq(1))
          ))
  ));

  display->_initscr();
}

TEST_F(DisplayXilTest, xvgenConfigCallsXvtcSetGenerator) {
  EXPECT_CALL(*xvMock, XVtc_SetGenerator(_,_)).Times(1);

  display->_initscr();
}

TEST_F(DisplayXilTest, XvtcSetGeneratorWithRightParametersForSingleHDResolutionHorizontal) {
  EXPECT_CALL(*xvMock, XVtc_SetGenerator(_,
          Pointee(AllOf(
              Field(&XVtc_Signal::OriginMode, Eq(1)),
              Field(&XVtc_Signal::HTotal, Eq(2200)),
              Field(&XVtc_Signal::HFrontPorchStart, Eq(1920)),
              Field(&XVtc_Signal::HSyncStart, Eq(2008)),
              Field(&XVtc_Signal::HBackPorchStart, Eq(2052)),
              Field(&XVtc_Signal::HActiveStart, Eq(0))
          ))
  ));

  display->_initscr();
}

TEST_F(DisplayXilTest, XvtcSetGeneratorWithRightParametersForSingleHDResolutionVertical) {

  EXPECT_CALL(*xvMock, XVtc_SetGenerator(_,
          Pointee(AllOf(
              Field(&XVtc_Signal::V0Total, Eq(1125)),
              Field(&XVtc_Signal::V0FrontPorchStart, Eq(1080)),
              Field(&XVtc_Signal::V0SyncStart, Eq(1084)),
              Field(&XVtc_Signal::V0BackPorchStart, Eq(1089)),
              Field(&XVtc_Signal::V0SyncStart, Eq(1084)),  
              Field(&XVtc_Signal::V0BackPorchStart, Eq(1089))
          ))
  ));

  display->_initscr();
}


TEST_F(DisplayXilTest, xvgenConfigCallsXvtcSetSource) {
  EXPECT_CALL(*xvMock, XVtc_SetSource(_,_)).Times(1);

  display->_initscr();
}

TEST_F(DisplayXilTest, XvtcSetSourceWithRightParametersActiveAndVertical) {
  EXPECT_CALL(*xvMock, XVtc_SetSource(_,
          Pointee(AllOf(
              Field(&XVtc_SourceSelect::ActiveVideoPolSrc, Eq(1)),
              Field(&XVtc_SourceSelect::ActiveChromaPolSrc, Eq(1)),

              Field(&XVtc_SourceSelect::VBlankPolSrc, Eq(1)),
              Field(&XVtc_SourceSelect::VSyncPolSrc, Eq(1)),
              Field(&XVtc_SourceSelect::VChromaSrc, Eq(1)),
              Field(&XVtc_SourceSelect::VActiveSrc, Eq(1)),
              Field(&XVtc_SourceSelect::VBackPorchSrc, Eq(1)),
              Field(&XVtc_SourceSelect::VSyncSrc, Eq(1)),
              Field(&XVtc_SourceSelect::VFrontPorchSrc, Eq(1)),
              Field(&XVtc_SourceSelect::VTotalSrc, Eq(1))
          ))
  ));

  display->_initscr(); 
}

TEST_F(DisplayXilTest, XvtcSetSourceWithRightParametersHorizontal) {
  EXPECT_CALL(*xvMock, XVtc_SetSource(_,
          Pointee(AllOf(
             Field(&XVtc_SourceSelect::HBlankPolSrc, Eq(1)),
             Field(&XVtc_SourceSelect::HSyncPolSrc, Eq(1)),
             Field(&XVtc_SourceSelect::HActiveSrc, Eq(1)),
             Field(&XVtc_SourceSelect::HBackPorchSrc, Eq(1)),
             Field(&XVtc_SourceSelect::HSyncSrc, Eq(1)),
             Field(&XVtc_SourceSelect::HFrontPorchSrc, Eq(1)),
             Field(&XVtc_SourceSelect::HTotalSrc, Eq(1))
          ))
  ));

  display->_initscr(); 
}

TEST_F(DisplayXilTest, getConstants) {
  EXPECT_EQ(display->getWidth(), 1920);
  EXPECT_EQ(display->getHeight(), 1080);
  EXPECT_EQ(display->getResolution(), VIDEO_RESOLUTION_1080P);
  EXPECT_EQ(display->getHdmiVtcDeviceId(), 1);
  EXPECT_EQ(display->getHdmiVdmaDeviceId(), 2);
}

TEST_F(DisplayXilTest, refreshCallsVfbStop) {
  EXPECT_CALL(*xdMock, XAxiVdma_DmaStop(vdma(), XAXIVDMA_READ)).Times(1);

  display->_refresh();
}

TEST_F(DisplayXilTest, refreshCallsVfbStopThenStart) {
  InSequence s;

  EXPECT_CALL(*xdMock, XAxiVdma_DmaStop(vdma(), XAXIVDMA_READ)).Times(1);
  EXPECT_CALL(*xdMock, XAxiVdma_DmaStart(vdma(), XAXIVDMA_READ)).Times(1);

  display->_refresh();
}

TEST_F(DisplayXilTest, refreshCallsEndsWithCarrierInit) {
  InSequence s;

  EXPECT_CALL(*xdMock, XAxiVdma_DmaStop(vdma(), XAXIVDMA_READ)).Times(1);
  EXPECT_CALL(*xdMock, XAxiVdma_DmaStart(vdma(), XAXIVDMA_READ)).Times(1);
  EXPECT_CALL(iicCtrl, carrierInit()).Times(1);

  display->_refresh();
}

TEST_F(DisplayXilTest, getFgColourIsBlack) {
  EXPECT_EQ(0x000000, display->getFgColour());
}

TEST_F(DisplayXilTest, getBgColourIsWhite) {
  EXPECT_EQ(0xffffff, display->getBgColour());
}

TEST_F(DisplayXilTest, getCellPixelAlwaysReturnsFgColourForRectangle) {
  EXPECT_EQ(display->getFgColour(), display->getLiveCellPixelWithCoords(22,50000));
}

TEST_F(DisplayXilTest, addBlankRowToGrid) {
  display->_initscr();
  display->_addstr(BLANK_ROW_OF_10);
  display->_refresh();

  EXPECT_EQ(HdmiDisplayMemory[0][0], display->getBgColour());
  EXPECT_EQ(HdmiDisplayMemory[0][display->getWidth()-1], display->getBgColour());
}

TEST_F(DisplayXilTest, addFullRowToGrid) {
  display->_initscr();
  display->_addstr(FULL_ROW_OF_10);
  display->_refresh();

  EXPECT_EQ(HdmiDisplayMemory[0][0], display->getFgColour());
  EXPECT_EQ(HdmiDisplayMemory[0][display->getWidth()-1], display->getFgColour());
}

TEST_F(DisplayXilTest, cellWidthIsGetWidthByNumColumns) {
  display->_initscr();
  display->_addstr(ALTERNATE_ROW_OF_10);
  display->_refresh();

  // cell 0
  EXPECT_EQ(HdmiDisplayMemory[0][0], display->getBgColour());
  EXPECT_EQ(HdmiDisplayMemory[0][display->getWidth()/10-1], display->getBgColour());

  // cell 1
  EXPECT_EQ(HdmiDisplayMemory[0][display->getWidth()/10], display->getFgColour());
  EXPECT_EQ(HdmiDisplayMemory[0][(2*display->getWidth()/10)-1], display->getFgColour());
}

TEST_F(DisplayXilTest, cellHeightIsGetHeightByNumRows) {
  display->_initscr();
  display->_addstr(BLANK_ROW_OF_10);
  display->_addstr(FULL_ROW_OF_10);
  display->_refresh();

  // top of row 0
  EXPECT_EQ(HdmiDisplayMemory[0][0], display->getBgColour());
  EXPECT_EQ(HdmiDisplayMemory[0][display->getWidth()-1], display->getBgColour());

  // bottom of row 0
  EXPECT_EQ(HdmiDisplayMemory[display->getHeight()/2-2][0], display->getBgColour());
  EXPECT_EQ(HdmiDisplayMemory[display->getHeight()/2-2][display->getWidth()-1], display->getBgColour());

  // top of row 1
  EXPECT_EQ(HdmiDisplayMemory[display->getHeight()/2][0], display->getFgColour());
  EXPECT_EQ(HdmiDisplayMemory[display->getHeight()/2][display->getWidth()-1], display->getFgColour());

  // bottom of row 1
  EXPECT_EQ(HdmiDisplayMemory[display->getHeight()-1][0], display->getFgColour());
  EXPECT_EQ(HdmiDisplayMemory[display->getHeight()-1][display->getWidth()-1], display->getFgColour());
}

TEST_F(DisplayXilTest, refreshResetGrid) {
  display->_initscr();
  display->_addstr(BLANK_ROW_OF_10);
  display->_refresh();

  display->_initscr();
  display->_addstr(FULL_ROW_OF_10);
  display->_refresh();

  EXPECT_EQ(HdmiDisplayMemory[0][0], display->getFgColour());
  EXPECT_EQ(HdmiDisplayMemory[0][display->getWidth()-1], display->getFgColour());
}

TEST_F(DisplayXilTest, refreshWaitsForDCacheFlush) {
  EXPECT_CALL(*xdMock, Xil_DCacheFlush()).Times(1);

  display->_addstr(BLANK_ROW_OF_10);
  display->_refresh();
}

TEST_F(DisplayXilTest, getCellXCoord) {
  EXPECT_EQ(10, display->getCellXCoord(394, 20));
}

TEST_F(DisplayXilTest, getCellYCoord) {
  EXPECT_EQ(8, display->getCellYCoord(62, 20));
}
