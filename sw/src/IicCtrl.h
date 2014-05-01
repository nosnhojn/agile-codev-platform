#ifndef __IIC_CTRL_CPP__
#define __IIC_CTRL_CPP__

#include "xbasic_types.h"

#define VIDEO_RESOLUTION_1080P 7
#define HDMI_I2C_BASE_ADDR 0
#define HDMI_VTC_DEVICE_ID 1
#define HDMI_VDMA_DEVICE_ID 2
#define HDMI_DISPLAY_MEM_BASE_ADDR 3

using namespace std;

class IicCtrl
{
  private:
    const Xuint32 m_width;
    const Xuint32 m_height;
    int           m_resolution;
    const Xuint32 m_HdmiI2cBaseAddr;
    const Xuint32 m_HdmiVtcDeviceId;
    const Xuint32 m_HdmiVdmaDeviceId;
    const Xuint32 m_HdmiDisplayMemBaseAddr;

  public:
    IicCtrl();

    virtual int init();

    Xuint32 getWidth();
    Xuint32 getHeight();
    int     getResolution();
    Xuint32 getHdmiI2cBaseAddr();
    Xuint32 getHdmiVtcDeviceId();
    Xuint32 getHdmiVdmaDeviceId();
    Xuint32 getHdmiDisplayMemBaseAddr();
};

#endif
