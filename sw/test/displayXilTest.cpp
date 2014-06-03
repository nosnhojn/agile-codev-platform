#include "gtest/gtest.h"
#include "gmock/gmock.h"

#include "DisplayXil.h"
#include "IicCtrlMock.h"
#include "xdriverMock.h"
#include "xvtcMock.h"
#include "testDefs.h"

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

      display = new DisplayXil(&iicCtrl);

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
      vtcDefaultConfig.DeviceId= 7;
      vtcDefaultConfig.BaseAddress = 0x70000000;
      ON_CALL(*xvMock, XVtc_LookupConfig(_))
          .WillByDefault(Return(&vtcDefaultConfig));
      ON_CALL(*xvMock, XVtc_CfgInitialize(_,_,_))
          .WillByDefault(Return(XST_SUCCESS));
      

    }

    ~DisplayXilTest()
    {
      destroyXdriverMock();
// TODO: why this destructor calls before the test is executed?
//      destroyXvtcMock();
    }



    XAxiVdma_DmaSetup * vdmaCfg() { return display->getAxiVdmaCfg(); }
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

  EXPECT_EQ(HdmiDisplayMemory[0][0], 0x00000000);
}

TEST_F(DisplayXilTest, clearBufferToBlackAll) {
  display->_clear();

  for (int i=0; i<1080; i++) {
    for (int j=0; j<1920; j++) {
      EXPECT_EQ(HdmiDisplayMemory[i][j], 0x00000000);
    }
  }
}

TEST_F(DisplayXilTest, initDoesClear) {
  display->_initscr();

  EXPECT_EQ(HdmiDisplayMemory[0][0], 0x00000000);
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
}

TEST_F(DisplayXilTest, vtcLookupConfigCanFailAndExit) {
  XVtc_Config * Config = 0;
  EXPECT_CALL(*xvMock, XVtc_LookupConfig(_)).WillOnce(Return(Config));
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
/*
*/
//--------------------------------------------------------------
// Soheil: Add similar Calls" tests for the functions called in
//         vgen_config function in video_generator.c
//--------------------------------------------------------------

TEST_F(DisplayXilTest, vgenConfigVresGetTiming) {
  EXPECT_CALL(*xvMock, vres_get_timing(_,_)).Times(1);
}
TEST_F(DisplayXilTest, VresGetTimingCanFailAndExit) {
  EXPECT_CALL(*xvMock, vres_get_timing(_,_)).WillOnce(Return(XST_FAILURE));
}

TEST_F(DisplayXilTest, xvtcDisableCanFailAndExit) { 
  EXPECT_CALL(*xvMock, XVtc_Disable(_,_)).Times(1);
}
/*
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
  EXPECT_EQ(display->getHdmiVtcDeviceId(), HDMI_VTC_DEVICE_ID);
  EXPECT_EQ(display->getHdmiVdmaDeviceId(), HDMI_VDMA_DEVICE_ID);
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

TEST_F(DisplayXilTest, getLivePixelAtIndexAlwaysReturnsFgColourForRectangle) {
  EXPECT_EQ(display->getFgColour(), display->getLivePixelAtIndex(22,50000));
}

//TEST_F(DisplayXilTest, addstrToGrid) {
//}
