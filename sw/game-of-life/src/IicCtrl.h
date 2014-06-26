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
    Xuint8 *  m_carrier_hdmi_out_config;

    bool iicReady(void);

  public:
    IicCtrl(u32 HdmiI2cBaseAddr,
            Xuint8 * carrier_hdmi_out_config);

    virtual int init();
    virtual void carrierInit();
    virtual unsigned iicWrite(Xuint32 , Xuint8 , Xuint8 * , Xuint8);

    u32 getHdmiI2cBaseAddr();
};

#endif
