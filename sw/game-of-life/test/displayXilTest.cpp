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
    DisplayXil  * display;
    IicCtrlMock iicCtrl;
    Xuint32 HdmiDisplayMemory [1080] [1920];
    xdriverMock * xdMock;
    XvtcMock * xvMock;
    XAxiVdma_Config defaultConfig;
    XVtc_Config vtcDefaultConfig;
            
    
    DisplayXilTest()
    {
      ON_CALL(iicCtrl, init())
          .WillByDefault(Return(1));

      display = new DisplayXil(&iicCtrl,
                               0x10000000,
                               1,
                               2);

      for (int i=0; i<1080; i++)
        for (int j=0; j<1920; j++)
          HdmiDisplayMemory [i] [j] = 0x44883311;
      display->setHdmiDisplayMemBaseAddr(Xuint32(HdmiDisplayMemory));

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
    // ON_CALL(*xvMock, XVtc_CfgInitialize(_,_,_))
    //     .WillByDefault(Return(XST_SUCCESS));
      

    }

    ~DisplayXilTest()
    {
      destroyXdriverMock();
      destroyXvtcMock();
    }



    XAxiVdma_DmaSetup * vdmaCfg() { return display->getAxiVdmaCfg(); }
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

TEST_F(DisplayXilTest, clearBufferToBlack0) {
  display->_clear();

  EXPECT_EQ(HdmiDisplayMemory[0][0], display->getBgColour());
}

TEST_F(DisplayXilTest, clearBufferToBlackAll) {
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
  EXPECT_CALL(*xdMock, XAxiVdma_CfgInitialize(display->getAxiVdma(),&defaultConfig,99)).Times(1);

  display->_initscr();
}

TEST_F(DisplayXilTest, vfbCfgInitializeCanFailAndExit) {
  EXPECT_CALL(*xdMock, XAxiVdma_CfgInitialize(_,_,_)).WillOnce(Return(XST_FAILURE));

  EXPECT_FALSE(display->_initscr());
}

TEST_F(DisplayXilTest, initCallsDmaConfig) {
  EXPECT_CALL(*xdMock, XAxiVdma_DmaConfig(display->getAxiVdma(), XAXIVDMA_READ, vdmaCfg())).Times(1);

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

TEST_F(DisplayXilTest, dmaCfgFrameAddrSetOnInit) {
  display->_initscr();

  EXPECT_EQ(vdmaCfg()->FrameStoreStartAddr[0], display->getHdmiDisplayMemBaseAddr());
}

TEST_F(DisplayXilTest, initCallsDmaSetBufferAddr) {
  EXPECT_CALL(*xdMock, XAxiVdma_DmaSetBufferAddr(display->getAxiVdma(), XAXIVDMA_READ, vdmaCfg()->FrameStoreStartAddr)).Times(1);

  display->_initscr();
}

TEST_F(DisplayXilTest, initCallsDmaStart) {
  EXPECT_CALL(*xdMock, XAxiVdma_DmaStart(display->getAxiVdma(), XAXIVDMA_READ)).Times(1);

  display->_initscr();
}

TEST_F(DisplayXilTest, dmaStartCanFailAndExit) {
  EXPECT_CALL(*xdMock, XAxiVdma_DmaStart(display->getAxiVdma(), XAXIVDMA_READ)).WillOnce(Return(XST_FAILURE));

  EXPECT_FALSE(display->_initscr());
}

TEST_F(DisplayXilTest, vfbDmaSetBufferAddrCanFailAndExit) {
  EXPECT_CALL(*xdMock, XAxiVdma_DmaSetBufferAddr(_, _, _)).WillOnce(Return(XST_FAILURE));

  EXPECT_FALSE(display->_initscr());
}

//---------------------------------------------------------------------------
// Soheil: Next 4 tests have to do with the vgen_init() in video_generator.c
//---------------------------------------------------------------------------

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

TEST_F(DisplayXilTest, vgenConfigCallsVresGetTiming) {
  EXPECT_CALL(*xvMock, vres_get_timing(_,_)).Times(1);
  display->_initscr();
}

TEST_F(DisplayXilTest, VresGetTimingCanFailAndExit) {
  EXPECT_CALL(*xvMock, vres_get_timing(_,_)).WillOnce(Return(XST_FAILURE));
  display->_initscr();
}

// FIXME: &vres_resolutions[1] argument is not working, kept it with a 'don't care' for now.
TEST_F(DisplayXilTest, VresGetTimingWithRightParameters) {
  EXPECT_CALL(*xvMock, vres_get_timing(display->getResolutionId(), _)).Times(1);

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
  display->_initscr();

  EXPECT_EQ(xvtcPolarity()->ActiveChromaPol, 1);
  EXPECT_EQ(xvtcPolarity()->ActiveVideoPol, 1);
  EXPECT_EQ(xvtcPolarity()->FieldIdPol, 0);
  EXPECT_EQ(xvtcPolarity()->VBlankPol, 1);
  EXPECT_EQ(xvtcPolarity()->VSyncPol, 1);
  EXPECT_EQ(xvtcPolarity()->HBlankPol,1);
  EXPECT_EQ(xvtcPolarity()->HSyncPol, 1);
}

TEST_F(DisplayXilTest, xvgenConfigCallsXvtcSetGenerator) {
  EXPECT_CALL(*xvMock, XVtc_SetGenerator(_,_)).Times(1);
  display->_initscr();
}

/*************************************************
vres_timing_t vres_resolutions[1] = {
   { const_cast<char*>("1080P"),  // pName
                             1080,  // LineWidth
                                4,  // HFrontPorch
                                5,  // HSyncWidth
                               36,  // HBackPorch
                                1,  // HSyncPol
                             1920,  // FrameHeight
                               88,  // VFrontPorch
                               44,  // VSyncWidth
                              148,  // VBackPorch
                               1 }  // VSyncPolarity
};
***************************************************/
TEST_F(DisplayXilTest, XvtcSetGeneratorWithRightParametersForSingleHDResolution) {
  display->_initscr();

  EXPECT_EQ(xvtcSignal()->OriginMode, 1);
  EXPECT_EQ(xvtcSignal()->HTotal, 1125); // HFrontPorch + HSyncWidth + HBackPorch + LineWidth = 4 + 5 + 36 +1080 = 1125
  EXPECT_EQ(xvtcSignal()->HActiveStart, 0);
  EXPECT_EQ(xvtcSignal()->HFrontPorchStart, 1080); // LineWidth
  EXPECT_EQ(xvtcSignal()->HSyncStart, 1084); // LineWidth + HFrontPorch = 1080 + 4 = 1084
  EXPECT_EQ(xvtcSignal()->HBackPorchStart, 1128); // LineWidth + HFrontPorch + HSyncWidth = 1080 + 4 + 44 = 1128
  EXPECT_EQ(xvtcSignal()->V0Total, 2200); // FrameHeight + VFrontPorch + VSyncWidth + VBackPorch = 1920 + 88 + 44 + 148 = 2200
  EXPECT_EQ(xvtcSignal()->V0ChromaStart, 0);
  EXPECT_EQ(xvtcSignal()->V0ActiveStart, 0);
  EXPECT_EQ(xvtcSignal()->V0FrontPorchStart, 1920); // FrameHeight
  EXPECT_EQ(xvtcSignal()->V0SyncStart, 2008); // FrameHeight + VFrontPorch = 1920 + 88 = 2008
  EXPECT_EQ(xvtcSignal()->V0BackPorchStart, 2052); // FrameHeight + VFrontPorch + VSyncWidth = 1920 + 88 + 44 = 2052
}

TEST_F(DisplayXilTest, xvgenConfigCallsXvtcSetSource) {
  EXPECT_CALL(*xvMock, XVtc_SetSource(_,_)).Times(1);
  display->_initscr();
}

TEST_F(DisplayXilTest, XvtcSetSourceWithRightParameters) {
  display->_initscr(); 

  EXPECT_EQ(xvtcSourceSelect()->VBlankPolSrc, 1);
  EXPECT_EQ(xvtcSourceSelect()->VSyncPolSrc, 1);
  EXPECT_EQ(xvtcSourceSelect()->HBlankPolSrc, 1);
  
  EXPECT_EQ(xvtcSourceSelect()->HSyncPolSrc, 1);
  EXPECT_EQ(xvtcSourceSelect()->ActiveVideoPolSrc, 1);
  EXPECT_EQ(xvtcSourceSelect()->ActiveChromaPolSrc, 1);
  
  EXPECT_EQ(xvtcSourceSelect()->VChromaSrc, 1);
  EXPECT_EQ(xvtcSourceSelect()->VActiveSrc, 1);
  EXPECT_EQ(xvtcSourceSelect()->VBackPorchSrc, 1);
    
  EXPECT_EQ(xvtcSourceSelect()->VSyncSrc, 1);
  EXPECT_EQ(xvtcSourceSelect()->VFrontPorchSrc, 1);
  EXPECT_EQ(xvtcSourceSelect()->VTotalSrc, 1);
  EXPECT_EQ(xvtcSourceSelect()->HActiveSrc, 1);

  EXPECT_EQ(xvtcSourceSelect()->HBackPorchSrc, 1);
  EXPECT_EQ(xvtcSourceSelect()->HSyncSrc, 1);
  EXPECT_EQ(xvtcSourceSelect()->HFrontPorchSrc, 1);
  EXPECT_EQ(xvtcSourceSelect()->HTotalSrc, 1);
}

/*

TEST_F(DisplayXilTest, getHdmiDisplayMemBaseAddr) {
  EXPECT_EQ(display->getHdmiDisplayMemBaseAddr(), Xuint32(HdmiDisplayMemory));
}

TEST_F(DisplayXilTest, setHdmiDisplayMemBaseAddr) {
  display->setHdmiDisplayMemBaseAddr(6699);
  EXPECT_EQ(display->getHdmiDisplayMemBaseAddr(), 6699);
}


//--------------------------------------------------------------
// Soheil: Add similar Calls" tests for the functions called in
//         vgen_config function in video_generator.c
//--------------------------------------------------------------



TEST_F(DisplayXilTest, xvtcDisableCanFailAndExit) { 
  EXPECT_CALL(*xvMock, XVtc_Disable(_,_)).Times(1);
}

TEST_F(DisplayXilTest, xvtcResetCanFailAndExit) {
  EXPECT_CALL(*xvMock, XVtc_Reset(_)).Times(1);
}

TEST_F(DisplayXilTest, initCallsVtcCfgInitialize) {
  EXPECT_CALL(*xvMock, XVtc_CfgInitialize(_,&vtcDefaultConfig,0x70000000)).Times(1);
}

TEST_F(DisplayXilTest, vtcCfgInitializeCanFailAndExit) {
  EXPECT_CALL(*xvMock, XVtc_CfgInitialize(_,_,_)).WillOnce(Return(XST_FAILURE));
}

TEST_F(DisplayXilTest, getHdmiDisplayMemBaseAddr) {
  EXPECT_EQ(display->getHdmiDisplayMemBaseAddr(), Xuint32(HdmiDisplayMemory));
}

TEST_F(DisplayXilTest, setHdmiDisplayMemBaseAddr) {
  display->setHdmiDisplayMemBaseAddr(6699);
  EXPECT_EQ(display->getHdmiDisplayMemBaseAddr(), 6699);
}
*/

TEST_F(DisplayXilTest, getConstants) {
  EXPECT_EQ(display->getWidth(), 1920);
  EXPECT_EQ(display->getHeight(), 1080);
  EXPECT_EQ(display->getResolution(), VIDEO_RESOLUTION_1080P);
  EXPECT_EQ(display->getHdmiVtcDeviceId(), 1);
  EXPECT_EQ(display->getHdmiVdmaDeviceId(), 2);
}

TEST_F(DisplayXilTest, refreshCallsVfbStop) {
  EXPECT_CALL(*xdMock, XAxiVdma_DmaStop(display->getAxiVdma(), XAXIVDMA_READ)).Times(1);

  display->_refresh();
}

TEST_F(DisplayXilTest, refreshCallsVfbStopThenStart) {
  InSequence s;

  EXPECT_CALL(*xdMock, XAxiVdma_DmaStop(display->getAxiVdma(), XAXIVDMA_READ)).Times(1);
  EXPECT_CALL(*xdMock, XAxiVdma_DmaStart(display->getAxiVdma(), XAXIVDMA_READ)).Times(1);

  display->_refresh();
}

TEST_F(DisplayXilTest, refreshCallsEndsWithCarrierInit) {
  InSequence s;

  EXPECT_CALL(*xdMock, XAxiVdma_DmaStop(display->getAxiVdma(), XAXIVDMA_READ)).Times(1);
  EXPECT_CALL(*xdMock, XAxiVdma_DmaStart(display->getAxiVdma(), XAXIVDMA_READ)).Times(1);
  EXPECT_CALL(iicCtrl, carrierInit()).Times(1);

  display->_refresh();
}

TEST_F(DisplayXilTest, getFgColourIsWhite) {
  EXPECT_EQ(0xffffff, display->getFgColour());
}

TEST_F(DisplayXilTest, getBgColourIsBlack) {
  EXPECT_EQ(0x000000, display->getBgColour());
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
