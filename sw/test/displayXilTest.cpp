using namespace testing;

class DisplayXilTest : public testing::Test
{
  public:
    DisplayXil * driver;

    DisplayXilTest()
    {
      driver = new DisplayXil();
    }

    ~DisplayXilTest()
    {
    }
};

TEST_F(DisplayXilTest, getWidth) {
  EXPECT_EQ(driver->getWidth(), 1920);
}

TEST_F(DisplayXilTest, getHeight) {
  EXPECT_EQ(driver->getHeight(), 1080);
}

TEST_F(DisplayXilTest, getResolution) {
  EXPECT_EQ(driver->getResolution(), VIDEO_RESOLUTION_1080P);
}

TEST_F(DisplayXilTest, getHdmiI2cBaseAddr) {
  EXPECT_EQ(driver->getHdmiI2cBaseAddr(), HDMI_I2C_BASE_ADDR);
}

TEST_F(DisplayXilTest, getHdmiVtcDeviceId) {
  EXPECT_EQ(driver->getHdmiVtcDeviceId(), HDMI_VTC_DEVICE_ID);
}

TEST_F(DisplayXilTest, getHdmiVdmaDeviceId) {
  EXPECT_EQ(driver->getHdmiVdmaDeviceId(), HDMI_VDMA_DEVICE_ID);
}

TEST_F(DisplayXilTest, getHdmiDisplayMemBaseAddr) {
  EXPECT_EQ(driver->getHdmiDisplayMemBaseAddr(), HDMI_DISPLAY_MEM_BASE_ADDR);
}
