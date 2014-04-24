#ifndef __DISPLAY_XIL_CPP__
#define __DISPLAY_XIL_CPP__

#include "DisplayXilDriver.h"

using namespace std;

class DisplayXil
{
  public:
    DisplayXil();
    DisplayXil(DisplayXilDriver *);

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

  private:
    DisplayXilDriver * m_driver;
};

#endif
