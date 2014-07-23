#include "displayXilTest.h"

using namespace testing;

TEST_F(DisplayXilTest, initScreenInitializesIic) {
  EXPECT_CALL(iicCtrl, init()).Times(1);

  initDisplay();
}

TEST_F(DisplayXilTest, initScreenPasses) {
  EXPECT_EQ(initDisplay(), 1);
}

TEST_F(DisplayXilTest, initScreenFails) {
  EXPECT_CALL(iicCtrl, init()).WillOnce(Return(0));
  
  EXPECT_EQ(initDisplay(), 0);
}

TEST_F(DisplayXilTest, clearBufferToWhite0) {
  display->_clear();

  EXPECT_EQ(pixelAt(0, 0), display->getBgColour());
}

TEST_F(DisplayXilTest, clearBufferToWhiteAll) {
  display->_clear();

  for (int i=0; i<height(); i++) {
    for (int j=0; j<width(); j++) {
      EXPECT_EQ(pixelAt(i, j), display->getBgColour());
    }
  }
}

TEST_F(DisplayXilTest, initDoesClear) {
  initDisplay();

  EXPECT_EQ(pixelAt(0, 0), display->getBgColour());
}

TEST_F(DisplayXilTest, initCallsVfbLookupConfig) {
  EXPECT_CALL(*xdMock, XAxiVdma_LookupConfig(cfg.vdmaId)).Times(1);

  initDisplay();
}

TEST_F(DisplayXilTest, vfbLookupConfigCanFailAndExit) {
  XAxiVdma_Config * Config = 0;

  EXPECT_CALL(*xdMock, XAxiVdma_LookupConfig(_)).WillOnce(Return(Config));

  EXPECT_FALSE(initDisplay());
}

TEST_F(DisplayXilTest, initCallsVfbCfgInitialize) {
  EXPECT_CALL(*xdMock, XAxiVdma_CfgInitialize(vdma(),&defaultConfig,Xuint32(vdmaConfigSpace))).Times(1);

  initDisplay();
}

TEST_F(DisplayXilTest, vfbCfgInitializeCanFailAndExit) {
  EXPECT_CALL(*xdMock, XAxiVdma_CfgInitialize(_,_,_)).WillOnce(Return(XST_FAILURE));

  EXPECT_FALSE(initDisplay());
}

TEST_F(DisplayXilTest, initCallsDmaConfig) {
  EXPECT_CALL(*xdMock, XAxiVdma_DmaConfig(vdma(), XAXIVDMA_READ, vdmaCfg())).Times(1);

  initDisplay();
}

TEST_F(DisplayXilTest, vfbDmaConfigCanFailAndExit) {
  EXPECT_CALL(*xdMock, XAxiVdma_DmaConfig(_,_,_)).WillOnce(Return(XST_FAILURE));

  EXPECT_FALSE(initDisplay());
}

TEST_F(DisplayXilTest, dmaCfgParametersSetOnInit) {
  initDisplay();

  EXPECT_EQ(vdmaCfg()->VertSizeInput, height());
  EXPECT_EQ(vdmaCfg()->HoriSizeInput, width()<<2);
  EXPECT_EQ(vdmaCfg()->Stride, width()<<2);
  EXPECT_EQ(vdmaCfg()->FrameDelay, 0);
  EXPECT_EQ(vdmaCfg()->EnableCircularBuf, 1);
  EXPECT_EQ(vdmaCfg()->EnableSync, 1);
  EXPECT_EQ(vdmaCfg()->PointNum, 1);
  EXPECT_EQ(vdmaCfg()->EnableFrameCounter, 0);
  EXPECT_EQ(vdmaCfg()->FixedFrameStoreAddr, 0);
}

TEST_F(DisplayXilTest, dmaCfgFrameAddrSetOnInit) {
  initDisplay();

  EXPECT_EQ(vdmaCfg()->FrameStoreStartAddr[0], cfg.hdmiDisplayMemBaseAddr);
}

TEST_F(DisplayXilTest, initCallsDmaSetBufferAddr) {
  EXPECT_CALL(*xdMock, XAxiVdma_DmaSetBufferAddr(vdma(), XAXIVDMA_READ, vdmaCfg()->FrameStoreStartAddr)).Times(1);

  initDisplay();
}

TEST_F(DisplayXilTest, initCallsDmaStart) {
  EXPECT_CALL(*xdMock, XAxiVdma_DmaStart(vdma(), XAXIVDMA_READ)).Times(1);

  initDisplay();
}

TEST_F(DisplayXilTest, dmaStartCanFailAndExit) {
  EXPECT_CALL(*xdMock, XAxiVdma_DmaStart(vdma(), XAXIVDMA_READ)).WillOnce(Return(XST_FAILURE));

  EXPECT_FALSE(initDisplay());
}

TEST_F(DisplayXilTest, vfbDmaSetBufferAddrCanFailAndExit) {
  EXPECT_CALL(*xdMock, XAxiVdma_DmaSetBufferAddr(_, _, _)).WillOnce(Return(XST_FAILURE));

  EXPECT_FALSE(initDisplay());
}

TEST_F(DisplayXilTest, initCallsVtcLookupConfig) {
  EXPECT_CALL(*xvMock, XVtc_LookupConfig(_)).Times(1);

  initDisplay();
}

TEST_F(DisplayXilTest, vtcLookupConfigCanFailAndExit) {
  EXPECT_CALL(*xvMock, XVtc_LookupConfig(_)).WillOnce(Return((XVtc_Config *) 0));

  EXPECT_FALSE(initDisplay());
}

TEST_F(DisplayXilTest, initCallsVtcLookupConfigWithRightParameters) {
  EXPECT_CALL(*xvMock, XVtc_LookupConfig(cfg.vtcId)).Times(1);

  initDisplay();
}

TEST_F(DisplayXilTest, initCallsVtcCfgInitialize) {
  EXPECT_CALL(*xvMock, XVtc_CfgInitialize(_,_,_)).Times(1);

  initDisplay();
}

TEST_F(DisplayXilTest, vtcCfgInitializeCanFailAndExit) {
  EXPECT_CALL(*xvMock, XVtc_CfgInitialize(_,_,_)).WillOnce(Return(0));

  initDisplay();
}

TEST_F(DisplayXilTest, vtcCfgInitializeWithRightParameters) {
  EXPECT_CALL(*xvMock, XVtc_CfgInitialize(_, &vtcDefaultConfig, 0x70000000)).Times(1);

  initDisplay();
}

TEST_F(DisplayXilTest, vgenConfigCallsXvtcDisable) { 
  EXPECT_CALL(*xvMock, XVtc_Disable(_,_)).Times(1);
  initDisplay();
}

TEST_F(DisplayXilTest, xvtcDisableWithRightParameters) {
  EXPECT_CALL(*xvMock, XVtc_Disable(_,display->getXvtcEnableGenerator())).Times(1);
  initDisplay();
}

//FIXME: Test removed due to funcion-like macros not working with gTest at this point.
//TEST_F(DisplayXilTest, vgenConfigCallsXvtcReset) { 
 // EXPECT_CALL(*xvMock, XVtc_Reset(_)).Times(1);
  //initDisplay();
//}

TEST_F(DisplayXilTest, xvgenConfigCallsXvtcSetPolarity) {
  EXPECT_CALL(*xvMock, XVtc_SetPolarity(_,_)).Times(1);
  initDisplay();
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

  initDisplay();
}

TEST_F(DisplayXilTest, xvgenConfigCallsXvtcSetGenerator) {
  EXPECT_CALL(*xvMock, XVtc_SetGenerator(_,_)).Times(1);

  initDisplay();
}

TEST_F(DisplayXilTest, XvtcSetGeneratorWithRightParametersForSingleHDResolutionHorizontal) {
  EXPECT_CALL(*xvMock, XVtc_SetGenerator(_,
          Pointee(AllOf(
              Field(&XVtc_Signal::OriginMode, Eq(1)),
              Field(&XVtc_Signal::HTotal, Eq(2200)),
              Field(&XVtc_Signal::HFrontPorchStart, Eq(width())),
              Field(&XVtc_Signal::HSyncStart, Eq(2008)),
              Field(&XVtc_Signal::HBackPorchStart, Eq(2052)),
              Field(&XVtc_Signal::HActiveStart, Eq(0))
          ))
  ));

  initDisplay();
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

  initDisplay();
}


TEST_F(DisplayXilTest, xvgenConfigCallsXvtcSetSource) {
  EXPECT_CALL(*xvMock, XVtc_SetSource(_,_)).Times(1);

  initDisplay();
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

  initDisplay(); 
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

  initDisplay(); 
}

TEST_F(DisplayXilTest, getConstants) {
  EXPECT_EQ(width(), 1920);
  EXPECT_EQ(height(), 1080);
  EXPECT_EQ(display->getResolution(), VIDEO_RESOLUTION_1080P);
  EXPECT_EQ(cfg.vtcId, 1);
  EXPECT_EQ(cfg.vdmaId, 2);
}

TEST_F(DisplayXilTest, refreshParksOnFirstFrame) {
  EXPECT_CALL(*xdMock, XAxiVdma_StartParking(vdma(), 0, XAXIVDMA_READ)).Times(1);

  initDisplay();
}

TEST_F(DisplayXilTest, refreshDMAsInitialFrame) {
  initDisplay();
  loadFullGrid();

  for (int i=0; i<height(); i++) {
    for (int j=0; j<width(); j++) {
      EXPECT_EQ(pixelAt(i, j), expectedPixelAt(i%20, j%20));
    }
  }
}

TEST_F(DisplayXilTest, refreshDMAsAnotherFrame) {
  initDisplay();
  loadEmptyGrid();
  loadFullGrid();

  for (int i=0; i<height(); i++) {
    for (int j=0; j<width(); j++) {
      EXPECT_EQ(pixelAt(i, j), expectedPixelAt(i%20, j%20));
    }
  }
}

TEST_F(DisplayXilTest, refreshWaitsForDCacheFlush) {
  EXPECT_CALL(*xdMock, Xil_DCacheFlush()).Times(1);

  initDisplay();
  loadFullGrid();
}
