using namespace testing;

class IicCtrlTest : public testing::Test
{
  public:
    IicCtrl * iicCtrl;
    xdriverMock * xdMock;

    IicCtrlTest()
    {
      iicCtrl = new IicCtrl();
      xdMock = initXdriverMock();
    }

    ~IicCtrlTest()
    {
      destroyXdriverMock();
    }
};

TEST_F(IicCtrlTest, dynamicInit) {
  EXPECT_CALL(*xdMock, XIic_DynInit(iicCtrl->getHdmiI2cBaseAddr())).Times(1);

  iicCtrl->init();
}

TEST_F(IicCtrlTest, dynamicInitSuccess) {
  EXPECT_CALL(*xdMock, XIic_DynInit(iicCtrl->getHdmiI2cBaseAddr())).WillOnce(Return(XST_SUCCESS));

  EXPECT_FALSE(iicCtrl->init());
}

TEST_F(IicCtrlTest, dynamicInitFailure) {
  EXPECT_CALL(*xdMock, XIic_DynInit(iicCtrl->getHdmiI2cBaseAddr())).WillOnce(Return(-1));

  EXPECT_FALSE(iicCtrl->init());
}

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
