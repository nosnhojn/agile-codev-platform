#include "gtest/gtest.h"
#include "gmock/gmock.h"

#include "IicCtrlMock.h"
#include "xdriverMock.h"

using namespace testing;

#define XIIC_FIFOS_EMPTY          XIIC_SR_RX_FIFO_EMPTY_MASK | XIIC_SR_TX_FIFO_EMPTY_MASK
#define XIIC_FIFOS_EMPTY_AND_BUSY XIIC_SR_RX_FIFO_EMPTY_MASK | XIIC_SR_TX_FIFO_EMPTY_MASK | XIIC_SR_BUS_BUSY_MASK
#define XIIC_BASE_ADDR            iicCtrl->getHdmiI2cBaseAddr()
#define XIIC_SR_REG               XIIC_BASE_ADDR + XIIC_SR_REG_OFFSET


class IicCtrlTest : public testing::Test
{
  public:
    IicCtrl * iicCtrl;
    xdriverMock * xdMock;

    u8 bufferPtr [2];

    IicCtrlTest()
    {
      iicCtrl = new IicCtrl();
      xdMock = getXdriverMock();
      ON_CALL(*xdMock, Xil_In8(XIIC_SR_REG))
          .WillByDefault(Return(XIIC_FIFOS_EMPTY));
    }

    ~IicCtrlTest()
    {
      destroyXdriverMock();
    }
};

TEST_F(IicCtrlTest, dynamicInit) {
  EXPECT_CALL(*xdMock, XIic_DynInit(XIIC_BASE_ADDR)).Times(1);

  iicCtrl->init();
}

TEST_F(IicCtrlTest, dynamicInitSuccess) {
  EXPECT_CALL(*xdMock, XIic_DynInit(XIIC_BASE_ADDR)).WillOnce(Return(XST_SUCCESS));

  EXPECT_TRUE(iicCtrl->init());
}

TEST_F(IicCtrlTest, dynamicInitFailure) {
  EXPECT_CALL(*xdMock, XIic_DynInit(XIIC_BASE_ADDR)).WillOnce(Return(XST_FAILURE));

  EXPECT_FALSE(iicCtrl->init());
}

TEST_F(IicCtrlTest, InitWithRxStatusFifosNonEmpty) {
  EXPECT_CALL(*xdMock, Xil_In8(XIIC_SR_REG)).WillOnce(Return(XIIC_SR_TX_FIFO_EMPTY_MASK))
                                            .WillOnce(Return(XIIC_FIFOS_EMPTY))
                                            .WillRepeatedly(Return(XIIC_FIFOS_EMPTY));

  iicCtrl->init();
}

TEST_F(IicCtrlTest, InitWithTxStatusFifosNonEmpty) {
  EXPECT_CALL(*xdMock, Xil_In8(XIIC_SR_REG)).WillOnce(Return(XIIC_SR_RX_FIFO_EMPTY_MASK))
                                            .WillOnce(Return(XIIC_FIFOS_EMPTY))
                                            .WillRepeatedly(Return(XIIC_FIFOS_EMPTY));

  iicCtrl->init();
}

TEST_F(IicCtrlTest, InitWithFifoStatusPolling) {
  EXPECT_CALL(*xdMock, Xil_In8(XIIC_SR_REG)).WillOnce(Return(XIIC_SR_RX_FIFO_EMPTY_MASK))
                                            .WillOnce(Return(XIIC_SR_TX_FIFO_EMPTY_MASK))
                                            .WillRepeatedly(Return(XIIC_FIFOS_EMPTY));
  iicCtrl->init();
}

TEST_F(IicCtrlTest, InitWithBusy) {
  EXPECT_CALL(*xdMock, Xil_In8(XIIC_SR_REG)).WillOnce(Return(XIIC_FIFOS_EMPTY_AND_BUSY))
                                            .WillRepeatedly(Return(XIIC_FIFOS_EMPTY));
  iicCtrl->init();
}

TEST_F(IicCtrlTest, InitTimeout) {
  ON_CALL(*xdMock, Xil_In8(XIIC_SR_REG)).WillByDefault(Return(0));

  EXPECT_CALL(*xdMock, Xil_In8(XIIC_SR_REG)).Times(IIC_STATUS_TIMEOUT);

  iicCtrl->init();
}

TEST_F(IicCtrlTest, InitFailOnTimeout) {
  ON_CALL(*xdMock, Xil_In8(XIIC_SR_REG)).WillByDefault(Return(0));

  EXPECT_FALSE(iicCtrl->init());
}

TEST_F(IicCtrlTest, InitSuccessOnNearTimeout) {
  InSequence dummy;

  ON_CALL(*xdMock, Xil_In8(XIIC_SR_REG)).WillByDefault(Return(0));

  EXPECT_CALL(*xdMock, Xil_In8(XIIC_SR_REG)).Times(IIC_STATUS_TIMEOUT-1);
  EXPECT_CALL(*xdMock, Xil_In8(XIIC_SR_REG)).WillRepeatedly(Return(XIIC_FIFOS_EMPTY));

  EXPECT_TRUE(iicCtrl->init());
}

TEST_F(IicCtrlTest, writeCanTimeout) {
  ON_CALL(*xdMock, Xil_In8(XIIC_SR_REG)).WillByDefault(Return(0));

  EXPECT_CALL(*xdMock, Xil_In8(XIIC_SR_REG)).Times(IIC_STATUS_TIMEOUT);

  EXPECT_EQ(iicCtrl->iicWrite(0, 0, bufferPtr, 0), 0);
}

TEST_F(IicCtrlTest, writeDoesDynSend) {
  EXPECT_CALL(*xdMock, XIic_DynSend(1, 41, _, 3, XIIC_STOP)).Times(1);

  iicCtrl->iicWrite(1, 41, bufferPtr, 2);
}

TEST_F(IicCtrlTest, writeReturnsNumBytesSent) {
  EXPECT_CALL(*xdMock, XIic_DynSend(0, 0, _, 3, XIIC_STOP)).WillOnce(Return(3));

  EXPECT_EQ(iicCtrl->iicWrite(0, 0, bufferPtr, 2), 2);
}

TEST_F(IicCtrlTest, writeBufferStartsWithOffset) {
  EXPECT_CALL(*xdMock, XIic_DynSend(0, 1, Pointee(1), 3, XIIC_STOP)).Times(1);

  iicCtrl->iicWrite(0, 1, bufferPtr, 2);
}

TEST_F(IicCtrlTest, writeBufferEndsWithBufferPtr) {
  Xuint8 writeBuffer [2] = { 2 , 3 };

  EXPECT_CALL(*xdMock, XIic_DynSend(0, 1, _, 3, XIIC_STOP)).With(Args<2,3>(ElementsAre(1,2,3)));

  iicCtrl->iicWrite(0, 1, writeBuffer, 2);
}

TEST_F(IicCtrlTest, initHdmiCfgAll) {
  for (int i=0; i<CARRIER_HDMI_OUT_CONFIG_LEN; i++) {
    EXPECT_CALL(*xdMock, XIic_DynSend(0x39, IicCtrl::carrier_hdmi_out_config[i][1], _, 2, XIIC_STOP)).With(Args<2,3>(ElementsAre(IicCtrl::carrier_hdmi_out_config[i][1],
                                                                                                                                 IicCtrl::carrier_hdmi_out_config[i][2])));
  }

  iicCtrl->init();
}

TEST_F(IicCtrlTest, getHdmiI2cBaseAddr) {
  EXPECT_EQ(iicCtrl->getHdmiI2cBaseAddr(), HDMI_I2C_BASE_ADDR);
}
