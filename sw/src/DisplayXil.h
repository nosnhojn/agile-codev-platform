#ifndef __DISPLAY_XIL_CPP__
#define __DISPLAY_XIL_CPP__

#include "IicCtrl.h"
#include "xbasic_types.h"

#define VIDEO_RESOLUTION_1080P 7
#define HDMI_I2C_BASE_ADDR 0
#define HDMI_VTC_DEVICE_ID 1
#define HDMI_VDMA_DEVICE_ID 2
#define HDMI_DISPLAY_MEM_BASE_ADDR 3

using namespace std;

class DisplayXil
{
  private:
    const Xuint32 m_width;
    const Xuint32 m_height;
    int           m_resolution;
    const Xuint32 m_HdmiI2cBaseAddr;
    const Xuint32 m_HdmiVtcDeviceId;
    const Xuint32 m_HdmiVdmaDeviceId;
    const Xuint32 m_HdmiDisplayMemBaseAddr;

    IicCtrl * m_iicCtrl;


  public:
    DisplayXil();
    DisplayXil( IicCtrl * );

    //--------------------------------------------
    // zed_hdmi_display.c : line 162-184, 190-208
    //   * setup the resolution (163-165)
    //   * initialize the i2c controller (168)
    //   * hdmi carrier initialization (179-183)
    //   * configure the vdma (191-203)
    //   * timing controller (207-208)
    //--------------------------------------------
    virtual void _initscr();

    //-----------------------------------------
    // zed_hdmi_display.c : line 188
    //   * clear the display with
    //     zed_hdmi_display_clear (188)
    //-----------------------------------------
    virtual void _clear();

    //--------------------------------
    // Don't do anything with _endwin
    //--------------------------------
    virtual void _endwin();

    //-----------------------------------------
    // zed_hdmi_display.c : line 223-235?
    //   * vfb_tx_start here that probably
    //     means refresh (223)
    //   * hdmi carrier cfg here again but I
    //     don't now what that's for
    //-----------------------------------------
    virtual void _refresh();

    //------------------------------------------
    // zed_hdmi_display.c : line 215
    //   * getch is getch.
    //   * probably forget about this to start.
    //------------------------------------------
    virtual void _getch();

    //------------------------------------------
    // zed_hdmi_display.c : line 221-222
    //   * generate the hdmi output
    //     (zed_hdmi_display_cbars is being
    //     used now so replace that with a char
    //     to pixel conversion.
    //------------------------------------------
    virtual void _addstr(const char *);

    //------------------------------
    // Don't do anything with _move
    //------------------------------
    virtual void _move(int,int);

    Xuint32 getWidth();
    Xuint32 getHeight();
    int     getResolution();
    Xuint32 getHdmiI2cBaseAddr();
    Xuint32 getHdmiVtcDeviceId();
    Xuint32 getHdmiVdmaDeviceId();
    Xuint32 getHdmiDisplayMemBaseAddr();
};

#endif
