#include "gtest/gtest.h"
#include "gmock/gmock.h"

#include "IicCtrlMock.h"
#include "testDefs.h"
#include "xdriverMock.h"

using namespace testing;

Xuint8 my_carrier_hdmi_out_config[CARRIER_HDMI_OUT_CONFIG_LEN][3] = {
  {ADV7511_ADDR>>1, 0x15, 0x01},
  {ADV7511_ADDR>>1, 0x16, 0x38},
  {ADV7511_ADDR>>1, 0x18, 0xAC},
  {ADV7511_ADDR>>1, 0x19, 0x53},
  {ADV7511_ADDR>>1, 0x1A, 0x08},
  {ADV7511_ADDR>>1, 0x1B, 0x00},
  {ADV7511_ADDR>>1, 0x1C, 0x00},
  {ADV7511_ADDR>>1, 0x1D, 0x00},
  {ADV7511_ADDR>>1, 0x1E, 0x19},
  {ADV7511_ADDR>>1, 0x1F, 0xD6},
  {ADV7511_ADDR>>1, 0x20, 0x1C},
  {ADV7511_ADDR>>1, 0x21, 0x56},
  {ADV7511_ADDR>>1, 0x22, 0x08},
  {ADV7511_ADDR>>1, 0x23, 0x00},
  {ADV7511_ADDR>>1, 0x24, 0x1E},
  {ADV7511_ADDR>>1, 0x25, 0x88},
  {ADV7511_ADDR>>1, 0x26, 0x02},
  {ADV7511_ADDR>>1, 0x27, 0x91},
  {ADV7511_ADDR>>1, 0x28, 0x1F},
  {ADV7511_ADDR>>1, 0x29, 0xFF},
  {ADV7511_ADDR>>1, 0x2A, 0x08},
  {ADV7511_ADDR>>1, 0x2B, 0x00},
  {ADV7511_ADDR>>1, 0x2C, 0x0E},
  {ADV7511_ADDR>>1, 0x2D, 0x85},
  {ADV7511_ADDR>>1, 0x2E, 0x18},
  {ADV7511_ADDR>>1, 0x2F, 0xBE},
  {ADV7511_ADDR>>1, 0x41, 0x10},
  {ADV7511_ADDR>>1, 0x48, 0x08},
  {ADV7511_ADDR>>1, 0x55, 0x00},
  {ADV7511_ADDR>>1, 0x56, 0x28},
  {ADV7511_ADDR>>1, 0x98, 0x03},
  {ADV7511_ADDR>>1, 0x9A, 0xE0},
  {ADV7511_ADDR>>1, 0x9C, 0x30},
  {ADV7511_ADDR>>1, 0x9D, 0x61},
  {ADV7511_ADDR>>1, 0xA2, 0xA4},
  {ADV7511_ADDR>>1, 0xA3, 0xA4},
  {ADV7511_ADDR>>1, 0xAF, 0x04},
  {ADV7511_ADDR>>1, 0xBA, 0x60},
  {ADV7511_ADDR>>1, 0xE0, 0xD0},
  {ADV7511_ADDR>>1, 0xF9, 0x00}
};

class IicCtrlTest : public testing::Test
{
  public:
    IicCtrl * iicCtrl;
    xdriverMock * xdMock;

    u8 bufferPtr [2];

    IicCtrlTest()
    {
      iicCtrl = new IicCtrl(HDMI_I2C_BASE_ADDR);
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
  EXPECT_CALL(*xdMock, XIic_DynSend(HDMI_I2C_BASE_ADDR, 1, _, 3, XIIC_STOP)).Times(1);

  iicCtrl->iicWrite(1, 41, bufferPtr, 2);
}

TEST_F(IicCtrlTest, writeReturnsNumBytesSent) {
  EXPECT_CALL(*xdMock, XIic_DynSend(HDMI_I2C_BASE_ADDR, 0, _, 3, XIIC_STOP)).WillOnce(Return(3));

  EXPECT_EQ(iicCtrl->iicWrite(0, 0, bufferPtr, 2), 2);
}

TEST_F(IicCtrlTest, writeBufferStartsWithOffset) {
  EXPECT_CALL(*xdMock, XIic_DynSend(HDMI_I2C_BASE_ADDR, 0, Pointee(1), 3, XIIC_STOP)).Times(1);

  iicCtrl->iicWrite(0, 1, bufferPtr, 2);
}

TEST_F(IicCtrlTest, writeBufferEndsWithBufferPtr) {
  Xuint8 writeBuffer [2] = { 2 , 3 };

  EXPECT_CALL(*xdMock, XIic_DynSend(HDMI_I2C_BASE_ADDR, 0, _, 3, XIIC_STOP)).With(Args<2,3>(ElementsAre(1,2,3)));

  iicCtrl->iicWrite(0, 1, writeBuffer, 2);
}

TEST_F(IicCtrlTest, initHdmiCfgAll) {
  for (int i=0; i<CARRIER_HDMI_OUT_CONFIG_LEN; i++) {
    EXPECT_CALL(*xdMock, XIic_DynSend(HDMI_I2C_BASE_ADDR, 0x39, _, 2, XIIC_STOP)).With(Args<2,3>(ElementsAre(my_carrier_hdmi_out_config[i][1],
                                                                                                             my_carrier_hdmi_out_config[i][2])));
  }

  iicCtrl->init();
}

TEST_F(IicCtrlTest, getHdmiI2cBaseAddr) {
  EXPECT_EQ(iicCtrl->getHdmiI2cBaseAddr(), HDMI_I2C_BASE_ADDR);
}
