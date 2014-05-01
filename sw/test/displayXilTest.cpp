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

TEST_F(DisplayXilTest, getWidth) {
  EXPECT_EQ(display->getWidth(), 1920);
}

TEST_F(DisplayXilTest, getHeight) {
  EXPECT_EQ(display->getHeight(), 1080);
}

TEST_F(DisplayXilTest, getResolution) {
  EXPECT_EQ(display->getResolution(), VIDEO_RESOLUTION_1080P);
}

TEST_F(DisplayXilTest, getHdmiI2cBaseAddr) {
  EXPECT_EQ(display->getHdmiI2cBaseAddr(), HDMI_I2C_BASE_ADDR);
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

TEST_F(DisplayXilTest, initScreenInitializesIic) {
  EXPECT_CALL(iicCtrl, init()).Times(1);

  display->_initscr();
}
