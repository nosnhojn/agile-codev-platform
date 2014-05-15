#include "video_resolution.h"

#include "xbasic_types.h"

vres_timing_t vres_resolutions[1] = {
   { const_cast<char*>("1080P"), 1080,    4,    5,   36,    1, 1920,   88,   44,  148,    1 }
};

char *vres_get_name(Xuint32 resolutionId)
{
  return vres_resolutions[resolutionId].pName;
}

Xuint32 vres_get_width(Xuint32 resolutionId)
{
   return vres_resolutions[resolutionId].HActiveVideo; // horizontal active
}

Xuint32 vres_get_height(Xuint32 resolutionId)
{
   return vres_resolutions[resolutionId].VActiveVideo; // vertical active
}

Xuint32 vres_get_timing(Xuint32 ResolutionId, vres_timing_t *pTiming )
{
	pTiming->pName         = vres_resolutions[ResolutionId].pName;
	pTiming->HActiveVideo  = vres_resolutions[ResolutionId].HActiveVideo;
	pTiming->HFrontPorch   = vres_resolutions[ResolutionId].HFrontPorch;
	pTiming->HSyncWidth    = vres_resolutions[ResolutionId].HSyncWidth;
	pTiming->HBackPorch    = vres_resolutions[ResolutionId].HBackPorch;
	pTiming->HSyncPolarity = vres_resolutions[ResolutionId].HSyncPolarity;
	pTiming->VActiveVideo  = vres_resolutions[ResolutionId].VActiveVideo;
	pTiming->VFrontPorch   = vres_resolutions[ResolutionId].VFrontPorch;
	pTiming->VSyncWidth    = vres_resolutions[ResolutionId].VSyncWidth;
	pTiming->VBackPorch    = vres_resolutions[ResolutionId].VBackPorch;
	pTiming->VSyncPolarity = vres_resolutions[ResolutionId].VSyncPolarity;

	return 0;
}

Xint32 vres_detect( Xuint32 width, Xuint32 height )
{
  Xint32 i;
  Xint32 resolution = -1;

  for ( i = 0; i < NUM_VIDEO_RESOLUTIONS; i++ )
  {
     if ( width == vres_get_width(i) && height == vres_get_height(i) )
     {
        resolution = i;
        break;
     }
  }  
  return resolution;
}

