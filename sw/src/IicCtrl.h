#ifndef __IIC_CTRL_CPP__
#define __IIC_CTRL_CPP__

#include "xbasic_types.h"
#include "xstatus.h"
#include "xiic_l.h"

#include "IicCtrlDefs.h"

using namespace std;

class IicCtrl
{
  private:
    const u32 m_HdmiI2cBaseAddr;

    bool iicReady(void);

  public:
    IicCtrl(u32 HdmiI2cBaseAddr=0);

    static Xuint8 carrier_hdmi_out_config[CARRIER_HDMI_OUT_CONFIG_LEN][3];

    virtual int init();
    virtual void carrierInit();
    virtual unsigned iicWrite(Xuint32 , Xuint8 , Xuint8 * , Xuint8);

    u32 getHdmiI2cBaseAddr();
};

#endif
