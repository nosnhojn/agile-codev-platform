#include "gtest/gtest.h"
#include "gmock/gmock.h"

#include "DisplayXil.h"
#include "IicCtrlMock.h"

using namespace testing;

class DisplayXilTest : public testing::Test
{
  public:
    DisplayXil  * display;
    IicCtrlMock iicCtrl;

    DisplayXilTest()
    {
      display = new DisplayXil(&iicCtrl);
    }

    ~DisplayXilTest()
    {
    }
};

TEST_F(DisplayXilTest, initScreenInitializesIic) {
  EXPECT_CALL(iicCtrl, init()).Times(1);

  display->_initscr();
}

TEST_F(DisplayXilTest, initScreenPasses) {
  EXPECT_CALL(iicCtrl, init()).WillOnce(Return(1));
  
  EXPECT_EQ(display->_initscr(), 1);
}

TEST_F(DisplayXilTest, initScreenFails) {
  EXPECT_CALL(iicCtrl, init()).WillOnce(Return(0));
  
  EXPECT_EQ(display->_initscr(), 0);
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
  EXPECT_EQ(display->getHdmiDisplayMemBaseAddr(), HDMI_DISPLAY_MEM_BASE_ADDR);
}
