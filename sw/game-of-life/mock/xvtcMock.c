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


Xuint32 vres_get_timing(Xuint32 resolutionId, vres_timing_t *pTiming )
{
  return getXvtcMock()->vres_get_timing(resolutionId, pTiming);
}


void XVtc_Disable(XVtc *InstancePtr, u32 Type)
{
  getXvtcMock()->XVtc_Disable(InstancePtr, Type);    
}

//FIXME: Function-like macro, gTest doesn't like this this, have to revist to figure out. [ssalehia]
/*
void XVtc_Reset(XVtc *InstancePtr)
{
  getXvtcMock()->XVtc_Reset(InstancePtr);    
}
*/

void XVtc_Enable(XVtc *InstancePtr, u32 Type)
{
  getXvtcMock()->XVtc_Enable(InstancePtr, Type);    
}

void XVtc_SetPolarity(XVtc *InstancePtr, XVtc_Polarity *PolarityPtr)
{
  getXvtcMock()->XVtc_SetPolarity(InstancePtr, PolarityPtr);
}

void XVtc_SetGenerator(XVtc *InstancePtr, XVtc_Signal *SignalCfgPtr)
{
  getXvtcMock()->XVtc_SetGenerator(InstancePtr, SignalCfgPtr);
}

void XVtc_SetSource(XVtc *InstancePtr, XVtc_SourceSelect *SourcePtr)
{
  getXvtcMock()->XVtc_SetSource(InstancePtr, SourcePtr);
}
