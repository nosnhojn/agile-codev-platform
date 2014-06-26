#ifndef __IIC_CTRL_MOCK_CPP__
#define __IIC_CTRL_MOCK_CPP__

#include "IicCtrl.h"
#include "gmock/gmock.h"

using namespace std;

class IicCtrlMock : public IicCtrl
{
  public:
    MOCK_METHOD0(init, int());
    MOCK_METHOD0(carrierInit, void());

    IicCtrlMock(u32 HdmiI2cBaseAddr=0,
                Xuint8 * carrier_hdmi_out_config=0) : IicCtrl(HdmiI2cBaseAddr, carrier_hdmi_out_config) {}
};

#endif
