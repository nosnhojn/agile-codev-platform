#include "xvtcMock.h"

XvtcMock * xvMock = 0;

XvtcMock * getXvtcMock()
{
  if (xvMock == 0) xvMock = new XvtcMock();
  return xvMock;
}


XvtcMock * destroyXvtcMock()
{
  delete xvMock;
  xvMock = 0;
}

XVtc_Config *XVtc_LookupConfig(u16 DeviceId)
{
  return getXvtcMock()->XVtc_LookupConfig(DeviceId);
}

int XVtc_CfgInitialize(XVtc *InstancePtr, XVtc_Config *CfgPtr, u32 EffectiveAddr)
{
  return getXvtcMock()->XVtc_CfgInitialize(InstancePtr, CfgPtr, EffectiveAddr);
}

