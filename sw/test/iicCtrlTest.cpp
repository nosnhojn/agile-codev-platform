using namespace testing;

class IicCtrlTest : public testing::Test
{
  public:
    IicCtrl * iicCtrl;
    xdriverMock * xdMock;

    IicCtrlTest()
    {
      iicCtrl = new IicCtrl();
      xdMock = getXdriverMock();
      ON_CALL(*xdMock, Xil_In8(iicCtrl->getHdmiI2cBaseAddr() + XIIC_SR_REG_OFFSET))
          .WillByDefault(Return(XIIC_SR_RX_FIFO_EMPTY_MASK | XIIC_SR_TX_FIFO_EMPTY_MASK));
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

  EXPECT_TRUE(iicCtrl->init());
}

TEST_F(IicCtrlTest, dynamicInitFailure) {
  EXPECT_CALL(*xdMock, XIic_DynInit(iicCtrl->getHdmiI2cBaseAddr())).WillOnce(Return(XST_FAILURE));

  EXPECT_FALSE(iicCtrl->init());
}

TEST_F(IicCtrlTest, InitWithRxStatusFifosNonEmpty) {
  EXPECT_CALL(*xdMock, Xil_In8(iicCtrl->getHdmiI2cBaseAddr() + XIIC_SR_REG_OFFSET)).WillOnce(Return(XIIC_SR_TX_FIFO_EMPTY_MASK))
                                                                                   .WillOnce(Return(XIIC_SR_RX_FIFO_EMPTY_MASK | XIIC_SR_TX_FIFO_EMPTY_MASK));

  iicCtrl->init();
}

TEST_F(IicCtrlTest, InitWithTxStatusFifosNonEmpty) {
  EXPECT_CALL(*xdMock, Xil_In8(iicCtrl->getHdmiI2cBaseAddr() + XIIC_SR_REG_OFFSET)).WillOnce(Return(XIIC_SR_RX_FIFO_EMPTY_MASK))
                                                                                   .WillOnce(Return(XIIC_SR_RX_FIFO_EMPTY_MASK | XIIC_SR_TX_FIFO_EMPTY_MASK));

  iicCtrl->init();
}

TEST_F(IicCtrlTest, InitWithFifoStatusPolling) {
  EXPECT_CALL(*xdMock, Xil_In8(iicCtrl->getHdmiI2cBaseAddr() + XIIC_SR_REG_OFFSET)).WillOnce(Return(XIIC_SR_RX_FIFO_EMPTY_MASK))
                                                                                   .WillOnce(Return(XIIC_SR_TX_FIFO_EMPTY_MASK))
                                                                                   .WillOnce(Return(XIIC_SR_RX_FIFO_EMPTY_MASK | XIIC_SR_TX_FIFO_EMPTY_MASK));
  iicCtrl->init();
}

TEST_F(IicCtrlTest, InitWithBusy) {
  EXPECT_CALL(*xdMock, Xil_In8(iicCtrl->getHdmiI2cBaseAddr() + XIIC_SR_REG_OFFSET)).WillOnce(Return(XIIC_SR_RX_FIFO_EMPTY_MASK | XIIC_SR_TX_FIFO_EMPTY_MASK | XIIC_SR_BUS_BUSY_MASK))
                                                                                   .WillOnce(Return(XIIC_SR_RX_FIFO_EMPTY_MASK | XIIC_SR_TX_FIFO_EMPTY_MASK));
  iicCtrl->init();
}

TEST_F(IicCtrlTest, InitTimeout) {
  ON_CALL(*xdMock, Xil_In8(iicCtrl->getHdmiI2cBaseAddr() + XIIC_SR_REG_OFFSET)).WillByDefault(Return(0));

  EXPECT_CALL(*xdMock, Xil_In8(iicCtrl->getHdmiI2cBaseAddr() + XIIC_SR_REG_OFFSET)).Times(IIC_STATUS_TIMEOUT);

  iicCtrl->init();
}

TEST_F(IicCtrlTest, InitFailOnTimeout) {
  ON_CALL(*xdMock, Xil_In8(iicCtrl->getHdmiI2cBaseAddr() + XIIC_SR_REG_OFFSET)).WillByDefault(Return(0));

  EXPECT_FALSE(iicCtrl->init());
}

TEST_F(IicCtrlTest, InitSuccessOnNearTimeout) {
  InSequence dummy;

  ON_CALL(*xdMock, Xil_In8(iicCtrl->getHdmiI2cBaseAddr() + XIIC_SR_REG_OFFSET)).WillByDefault(Return(0));

  EXPECT_CALL(*xdMock, Xil_In8(iicCtrl->getHdmiI2cBaseAddr() + XIIC_SR_REG_OFFSET)).Times(IIC_STATUS_TIMEOUT-1);
  EXPECT_CALL(*xdMock, Xil_In8(iicCtrl->getHdmiI2cBaseAddr() + XIIC_SR_REG_OFFSET)).WillOnce(Return(XIIC_SR_RX_FIFO_EMPTY_MASK | XIIC_SR_TX_FIFO_EMPTY_MASK));

  EXPECT_TRUE(iicCtrl->init());
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
