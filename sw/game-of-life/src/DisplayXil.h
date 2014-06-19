#ifndef __DISPLAY_XIL_CPP__
#define __DISPLAY_XIL_CPP__

#include "Display.h"
#include "IicCtrl.h"

#include "video_frame_buffer.h"
#include "video_generator.h"
#define VIDEO_RESOLUTION_1080P 0


// Defined already in video_resolution.c
extern vres_timing_t vres_resolutions[1];

using namespace std;

class DisplayXil : public Display
{
  private:
    const Xuint32 m_width;
    const Xuint32 m_height;
    int           m_resolution;
    int           m_resolutionId;
    const Xuint32 m_HdmiVtcDeviceId;
    const Xuint32 m_HdmiVdmaDeviceId;
    Xuint32       m_HdmiDisplayMemBaseAddr;
    
    int           m_xvtcEnGenerator;
    XVtc_Polarity m_polarity;
    XVtc_Signal   m_signal;
    XVtc_SourceSelect m_sourceSelect;

    
    XAxiVdma          m_axiVdma;
    XAxiVdma_DmaSetup m_axiVdmaCfg;
    IicCtrl *         m_iicCtrl;

        
    char m_charGrid [256][256];
    int m_gridWidth;
    int m_gridHeight;
    int m_rowIndexFromYPixelCoord(int);
    int m_columnIndexFromXPixelCoord(int);
    char m_charAtCoord(int, int);
    void m_writeGridToFrameBuffer();
    void m_resetGrid();

  public:
    DisplayXil();
    DisplayXil( IicCtrl * iicCtrl,
                int HDMI_VTC_DEVICE_ID,
                int HDMI_VDMA_DEVICE_ID,
                int HDMI_DISPLAY_MEM_BASE_ADDR );

    //--------------------------------------------
    // zed_hdmi_display.c : line 162-184, 190-208
    //   * setup the resolution (163-165)
    //   * initialize the i2c controller (168)
    //   * hdmi carrier initialization (179-183)
    //   * configure the vdma (191-203)
    //   * timing controller (207-208)
    //--------------------------------------------
    virtual int _initscr();

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
    unsigned getLiveCellPixelWithCoords(int,int);
    int getCellXCoord(int,int);
    int getCellYCoord(int,int);
    unsigned getFgColour(void);
    unsigned getBgColour(void);



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
    Xuint32 getHdmiVtcDeviceId();
    Xuint32 getHdmiVdmaDeviceId();


    Xuint32 setHdmiDisplayMemBaseAddr(Xuint32 addr);
    Xuint32 getHdmiDisplayMemBaseAddr();

    XAxiVdma * getAxiVdma();
    XAxiVdma_DmaSetup * getAxiVdmaCfg();
   
    int getXvtcEnableGenerator();
    XVtc_Polarity * getXvtcPolarity();
    XVtc_Signal * getXvtcSignal();
    XVtc_SourceSelect * getXvtcSourceSelect();
};

#endif
