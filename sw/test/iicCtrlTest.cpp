using namespace testing;

class IicCtrlTest : public testing::Test
{
  public:
    IicCtrl * iicCtrl;

    IicCtrlTest()
    {
      iicCtrl = new IicCtrl();
    }

    ~IicCtrlTest()
    {
    }
};

TEST_F(IicCtrlTest, getWidth) {
  EXPECT_EQ(iicCtrl->getWidth(), 1920);
}

TEST_F(IicCtrlTest, getHeight) {
  EXPECT_EQ(iicCtrl->getHeight(), 1080);
}

TEST_F(IicCtrlTest, getResolution) {
  EXPECT_EQ(iicCtrl->getResolution(), VIDEO_RESOLUTION_1080P);
}

TEST_F(IicCtrlTest, getHdmiI2cBaseAddr) {
  EXPECT_EQ(iicCtrl->getHdmiI2cBaseAddr(), HDMI_I2C_BASE_ADDR);
}

TEST_F(IicCtrlTest, getHdmiVtcDeviceId) {
  EXPECT_EQ(iicCtrl->getHdmiVtcDeviceId(), HDMI_VTC_DEVICE_ID);
}

TEST_F(IicCtrlTest, getHdmiVdmaDeviceId) {
  EXPECT_EQ(iicCtrl->getHdmiVdmaDeviceId(), HDMI_VDMA_DEVICE_ID);
}

TEST_F(IicCtrlTest, getHdmiDisplayMemBaseAddr) {
  EXPECT_EQ(iicCtrl->getHdmiDisplayMemBaseAddr(), HDMI_DISPLAY_MEM_BASE_ADDR);
}
