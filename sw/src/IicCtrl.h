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
    const Xuint32 m_width;
    const Xuint32 m_height;
    int           m_resolution;
    const u32 m_HdmiI2cBaseAddr;
    const Xuint32 m_HdmiVtcDeviceId;
    const Xuint32 m_HdmiVdmaDeviceId;
    const Xuint32 m_HdmiDisplayMemBaseAddr;

    bool iicReady(void);

  public:
    IicCtrl();

    static Xuint8 carrier_hdmi_out_config[CARRIER_HDMI_OUT_CONFIG_LEN][3];

    virtual int init();
    virtual unsigned iicWrite(Xuint32 , Xuint8 , Xuint8 * , Xuint8);

    Xuint32 getWidth();
    Xuint32 getHeight();
    int     getResolution();
    u32 getHdmiI2cBaseAddr();
    Xuint32 getHdmiVtcDeviceId();
    Xuint32 getHdmiVdmaDeviceId();
    Xuint32 getHdmiDisplayMemBaseAddr();
};

#endif
