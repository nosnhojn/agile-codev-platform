#include "video_generator.h"
#include "xil_printf.h"
#include <iostream>

/*****************************************************************************/
/**
*
* vgen_init
* - initializes the VTC generator
*
* @param	VtcDeviceID is the device ID of the Video Timing Controller core.
*           pVtc is a pointer to a VTC instance

*
* @return	0 if all tests pass, 1 otherwise.
*
* @note		None.
*
******************************************************************************/
int vgen_init(XVtc *pVtc, u16 VtcDeviceID)
{
	XVtc_Config *VtcCfgPtr;
	int Status;

	/* Look for the device configuration info for the Video Timing
	 * Controller.
	 */
	VtcCfgPtr = XVtc_LookupConfig( VtcDeviceID );
	if (VtcCfgPtr == NULL) {
		return 1;
	}

	/* Initialize the Video Timing Controller instance */

	Status = XVtc_CfgInitialize(pVtc, VtcCfgPtr,
		VtcCfgPtr->BaseAddress);
	if (Status != XST_SUCCESS) {
		return 1;
	}

	return 0;
}


/*****************************************************************************/
/**
*
* vgen_config
* - configures the generator to generate missing syncs
*
* @param	pVtc is a pointer to an initialized VTC instance
*           ResolutionId identified a video resolution
*           vVerbose = 0 no verbose, 1 minimal verbose, 2 most verbose
*
* @return	0 if all tests pass, 1 otherwise.
*
* @note		None.
*
******************************************************************************/
int vgen_config(XVtc *pVtc, int ResolutionId, int bVerbose)
{
	vres_timing_t VideoTiming;
	int HFrontPorch;
	int HSyncWidth;
	int HSyncPol;
	int HBackPorch;
	int VFrontPorch;
	int VSyncWidth;
	int VSyncPol;
	int VBackPorch;
	int LineWidth;
	int FrameHeight;

	XVtc_Signal Signal;		/* VTC Signal configuration */
	XVtc_Polarity Polarity;		/* Polarity configuration */
	XVtc_SourceSelect SourceSelect;	/* Source Selection configuration */


	vres_get_timing(ResolutionId, &VideoTiming);
	HFrontPorch = VideoTiming.HFrontPorch;
	HSyncWidth  = VideoTiming.HSyncWidth;
	HSyncPol    = VideoTiming.HSyncPolarity;
	HBackPorch  = VideoTiming.HBackPorch;
	VFrontPorch = VideoTiming.VFrontPorch;
	VSyncWidth  = VideoTiming.VSyncWidth;
	VSyncPol    = VideoTiming.VSyncPolarity;
	VBackPorch  = VideoTiming.VBackPorch;
	LineWidth   = VideoTiming.HActiveVideo;
	FrameHeight = VideoTiming.VActiveVideo;
  
	/* Disable/Reset VTC */
	XVtc_Disable(pVtc, XVTC_EN_GENERATOR);
	XVtc_Reset(pVtc);	

  /* Set up Polarity of all outputs */ 
	memset((void *)&Polarity, 0, sizeof(Polarity));
	Polarity.ActiveChromaPol = 1;
	Polarity.ActiveVideoPol = 1;
	Polarity.FieldIdPol = 0;
	Polarity.VBlankPol = 1;
	Polarity.VSyncPol = VSyncPol;
	Polarity.HBlankPol = 1;
	Polarity.HSyncPol = HSyncPol;

	/* Set up Generator */
	memset((void *)&Signal, 0, sizeof(XVtc_Signal));
	Signal.OriginMode = 1; //Set Frame Origin to Start of Active Video
	Signal.HTotal = HFrontPorch + HSyncWidth + HBackPorch + LineWidth;
	Signal.HActiveStart     = 0;
	Signal.HFrontPorchStart = LineWidth;
	Signal.HSyncStart       = LineWidth + HFrontPorch;
	Signal.HBackPorchStart  = LineWidth + HFrontPorch + HSyncWidth;
	Signal.V0Total = FrameHeight + VFrontPorch + VSyncWidth + VBackPorch;
	Signal.V0ChromaStart     = 0;
	Signal.V0ActiveStart     = 0;
	Signal.V0FrontPorchStart = FrameHeight;
	Signal.V0SyncStart       = FrameHeight + VFrontPorch;
	Signal.V0BackPorchStart  = FrameHeight + VFrontPorch + VSyncWidth;

	/* Set up source select*/ 
	memset((void *)&SourceSelect, 0, sizeof(SourceSelect));
	SourceSelect.VBlankPolSrc = 1;
	SourceSelect.VSyncPolSrc = 1;
	SourceSelect.HBlankPolSrc = 1;
	SourceSelect.HSyncPolSrc = 1;
	SourceSelect.ActiveVideoPolSrc = 1;
	SourceSelect.ActiveChromaPolSrc= 1;
	SourceSelect.VChromaSrc = 1;
	SourceSelect.VActiveSrc = 1;
	SourceSelect.VBackPorchSrc = 1;
	SourceSelect.VSyncSrc = 1;
	SourceSelect.VFrontPorchSrc = 1;
	SourceSelect.VTotalSrc = 1;
	SourceSelect.HActiveSrc = 1;
	SourceSelect.HBackPorchSrc = 1;
	SourceSelect.HSyncSrc = 1;
	SourceSelect.HFrontPorchSrc = 1;
	SourceSelect.HTotalSrc = 1;

	/* Write configuration to hardware */
	XVtc_SetPolarity(pVtc, &Polarity);
	XVtc_SetGenerator(pVtc, &Signal);
	XVtc_SetSource(pVtc, &SourceSelect);

	/* Enable the generator module */
	XVtc_DisableSync(pVtc);
	//XVtc_SetFSync(pVtc, 0, Signal.V0SyncStart, 1);
	XVtc_Enable(pVtc, XVTC_EN_GENERATOR);

	XVtc_RegUpdate(pVtc);

	/* Return success */

	return 0;
}
