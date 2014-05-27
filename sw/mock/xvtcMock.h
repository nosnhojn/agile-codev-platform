#ifndef __XVTC_MOCK_CPP__
#define __XVTC_MOCK_CPP__

#include "xvtc.h"
#include "gmock/gmock.h"

using namespace std;


class XvtcMock
{
  public:
    MOCK_METHOD1(XVtc_LookupConfig, XVtc_Config*(u16));
    MOCK_METHOD3(XVtc_CfgInitialize, int(XVtc *, XVtc_Config *, u32));

};

extern XvtcMock * getXvtcMock();
extern XvtcMock * destroyXvtcMock();

#endif
