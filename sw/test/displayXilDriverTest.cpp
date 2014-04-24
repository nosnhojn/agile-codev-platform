using namespace testing;

class DisplayXilDriverTest : public testing::Test
{
  public:
    DisplayXilDriver * driver;

    DisplayXilDriverTest()
    {
      driver = new DisplayXilDriver();
    }

    ~DisplayXilDriverTest()
    {
    }
};

TEST_F(DisplayXilDriverTest, getWidth) {
  EXPECT_EQ(driver->getWidth(), 1920);
}

TEST_F(DisplayXilDriverTest, getHeight) {
  EXPECT_EQ(driver->getHeight(), 1080);
}

TEST_F(DisplayXilDriverTest, getResolution) {
  EXPECT_EQ(driver->getResolution(), VIDEO_RESOLUTION_1080P);
}

TEST_F(DisplayXilDriverTest, getHdmiI2cBaseAddr) {
  EXPECT_EQ(driver->getHdmiI2cBaseAddr(), HDMI_I2C_BASE_ADDR);
}

TEST_F(DisplayXilDriverTest, getHdmiVtcDeviceId) {
  EXPECT_EQ(driver->getHdmiVtcDeviceId(), HDMI_VTC_DEVICE_ID);
}

TEST_F(DisplayXilDriverTest, getHdmiVdmaDeviceId) {
  EXPECT_EQ(driver->getHdmiVdmaDeviceId(), HDMI_VDMA_DEVICE_ID);
}

TEST_F(DisplayXilDriverTest, getHdmiDisplayMemBaseAddr) {
  EXPECT_EQ(driver->getHdmiDisplayMemBaseAddr(), HDMI_DISPLAY_MEM_BASE_ADDR);
}
