#include "gtest/gtest.h"
#include "gmock/gmock.h"

#include "DisplayXil.h"
#include "IicCtrlMock.h"
#include "xdriverMock.h"
#include "testDefs.h"

using namespace testing;

class DisplayXilTest : public testing::Test
{
  public:
    DisplayXil  * display;
    IicCtrlMock iicCtrl;
    Xuint32 HdmiDisplayMemory [1080] [1920];
    xdriverMock * xdMock;
    XAxiVdma_Config defaultConfig;

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
    }

    ~DisplayXilTest()
    {
      destroyXdriverMock();
    }
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

TEST_F(DisplayXilTest, initCallsLookupConfig) {
  EXPECT_CALL(*xdMock, XAxiVdma_LookupConfig(display->getHdmiVdmaDeviceId())).Times(1);

  display->_initscr();
}

TEST_F(DisplayXilTest, lookupConfigCanPass) {
  EXPECT_CALL(*xdMock, XAxiVdma_LookupConfig(_)).Times(1);

  EXPECT_TRUE(display->_initscr());
}

TEST_F(DisplayXilTest, lookupConfigCanFailAndExit) {
  XAxiVdma_Config * Config = 0;

  EXPECT_CALL(*xdMock, XAxiVdma_LookupConfig(_)).WillOnce(Return(Config));

  EXPECT_FALSE(display->_initscr());
}

TEST_F(DisplayXilTest, initCallsCfgInitialize) {
  EXPECT_CALL(*xdMock, XAxiVdma_CfgInitialize(display->getAxiVdma(),&defaultConfig,99)).Times(1);

  display->_initscr();
}

TEST_F(DisplayXilTest, cfgInitializeCanPass) {
  EXPECT_CALL(*xdMock, XAxiVdma_CfgInitialize(_,_,_)).WillOnce(Return(XST_SUCCESS));

  EXPECT_TRUE(display->_initscr());
}

TEST_F(DisplayXilTest, cfgInitializeCanFailAndExit) {
  EXPECT_CALL(*xdMock, XAxiVdma_CfgInitialize(_,_,_)).WillOnce(Return(XST_FAILURE));

  EXPECT_FALSE(display->_initscr());
}

TEST_F(DisplayXilTest, getWidth) {
  EXPECT_EQ(display->getWidth(), 1920);
}

TEST_F(DisplayXilTest, getHeight) {
  EXPECT_EQ(display->getHeight(), 1080);
}

TEST_F(DisplayXilTest, getResolution) {
  EXPECT_EQ(display->getResolution(), VIDEO_RESOLUTION_1080P);
}

TEST_F(DisplayXilTest, getHdmiVtcDeviceId) {
  EXPECT_EQ(display->getHdmiVtcDeviceId(), HDMI_VTC_DEVICE_ID);
}

TEST_F(DisplayXilTest, getHdmiVdmaDeviceId) {
  EXPECT_EQ(display->getHdmiVdmaDeviceId(), HDMI_VDMA_DEVICE_ID);
}

TEST_F(DisplayXilTest, getHdmiDisplayMemBaseAddr) {
  EXPECT_EQ(display->getHdmiDisplayMemBaseAddr(), Xuint32(HdmiDisplayMemory));
}

TEST_F(DisplayXilTest, setHdmiDisplayMemBaseAddr) {
  display->setHdmiDisplayMemBaseAddr(6699);
  EXPECT_EQ(display->getHdmiDisplayMemBaseAddr(), 6699);
}
