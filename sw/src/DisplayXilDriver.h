#ifndef __DISPLAY_XIL_DRIVER_CPP__
#define __DISPLAY_XIL_DRIVER_CPP__

#include "xbasic_types.h"

#define VIDEO_RESOLUTION_1080P 7

using namespace std;

class DisplayXilDriver
{
  private:
    const Xuint32 m_width;
    const Xuint32 m_height;
    int           m_resolution;

  public:
    DisplayXilDriver();

    virtual void initHw();

    Xuint32 getWidth();
    Xuint32 getHeight();
    int     getResolution();
};

#endif
