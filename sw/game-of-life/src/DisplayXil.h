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

struct DisplayXilCfg {
    IicCtrl *         iicCtrl;

    XAxiVdma          axiVdma;
    XAxiVdma_DmaSetup axiVdmaCfg;
    XVtc              vtc;

    Xuint32           hdmiDisplayMemBaseAddr;
    Xuint32           vtcId;
    Xuint32           vdmaId;
};

class DisplayXil : public Display
{
  private:
    DisplayXilCfg * m_cfg;

    const Xuint32 m_width;
    const Xuint32 m_height;
    const int     m_resolution;
    const int     m_xvtcEnGenerator;

    XVtc_Polarity m_polarity;
    XVtc_Signal   m_signal;
    XVtc_SourceSelect m_sourceSelect;

    char m_charGrid [256][256];
    Xuint32 m_gridWidth;
    Xuint32 m_gridHeight;
    Xuint32 m_rowIndexFromYPixelCoord(Xuint32);
    Xuint32 m_columnIndexFromXPixelCoord(Xuint32);
    char m_charAtCoord(Xuint32, Xuint32);
    void m_writeGridToFrameBuffer();
    void m_resetGrid();

    void printAxiVdma();

  public:
    DisplayXil();
    DisplayXil( DisplayXilCfg * cfg );

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
    Xuint32 getLiveCellPixelWithCoords(Xuint32 x, Xuint32 y);
    Xuint32 getCellXCoord(Xuint32,Xuint32);
    Xuint32 getCellYCoord(Xuint32,Xuint32);
    Xuint32 getFgColour(void);
    Xuint32 getBgColour(void);



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

    Xuint32 getCellHeight(Xuint32);
    Xuint32 getCellWidth(Xuint32);

    Xuint32 getWidth();
    Xuint32 getHeight();
    int     getResolution();

    XAxiVdma * getAxiVdma();
    XAxiVdma_DmaSetup * getAxiVdmaCfg();
   
    int getXvtcEnableGenerator();
    XVtc_Polarity * getXvtcPolarity();
    XVtc_Signal * getXvtcSignal();
    XVtc_SourceSelect * getXvtcSourceSelect();
};

#endif
