#ifndef __XVTC_MOCK_H__
#define __XVTC_MOCK_H__

#include "video_resolution.h"
#include "xvtc.h"
#include "gmock/gmock.h"

using namespace std;


class XvtcMock
{
  public:
    MOCK_METHOD1(XVtc_LookupConfig, XVtc_Config*(u16));
    MOCK_METHOD3(XVtc_CfgInitialize, int(XVtc *, XVtc_Config *, u32));
    MOCK_METHOD2(XVtc_Disable, void(XVtc *, u32));
    MOCK_METHOD2(vres_get_timing, Xuint32(Xuint32, vres_timing_t*));

};

extern XvtcMock * getXvtcMock();
extern XvtcMock * destroyXvtcMock();


#endif

