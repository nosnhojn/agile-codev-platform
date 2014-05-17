#include "xparameters.h"

#include "video_resolution.h"
#include "video_frame_buffer.h"

#include "xaxivdma.h"
#include <iostream>

int vfb_common_init( u16 uDeviceId, XAxiVdma *pAxiVdma )
{
   int Status;
   XAxiVdma_Config *Config;

   Config = XAxiVdma_LookupConfig( uDeviceId );
   if (!Config)
   {
      return 1;
   }

   /* Initialize DMA engine */
   Status = XAxiVdma_CfgInitialize(pAxiVdma, Config, Config->BaseAddress);
   if (Status != XST_SUCCESS)
   {
      return 1;
   }

   return 0;
}

int vfb_tx_init( XAxiVdma *pAxiVdma, XAxiVdma_DmaSetup *pReadCfg, Xuint32 uVideoResolution, Xuint32 uStorageResolution, Xuint32 uMemAddr, Xuint32 uNumFrames )
{
   int Status;
   XAxiVdma_FrameCounter FrameCfg;
   u32 uBaseAddr;
   u32 uDMACR;

   /* Setup the read channel */
   Status = vfb_tx_setup(pAxiVdma,pReadCfg,uVideoResolution,uStorageResolution,uMemAddr,uNumFrames);
   if (Status != XST_SUCCESS) {
		   xdbg_printf(XDBG_DEBUG_ERROR,
			   "Read channel setup failed %d\n\r", Status);

		   return 1;
   }

   /* Start the DMA engine to transfer
	*/
   Status = vfb_tx_start(pAxiVdma);
   if (Status != XST_SUCCESS) {
		   return 1;
   }

}

int vfb_tx_setup(XAxiVdma *pAxiVdma, XAxiVdma_DmaSetup *pReadCfg, Xuint32 uVideoResolution, Xuint32 uStorageResolution, Xuint32 uMemAddr, Xuint32 uNumFrames )
{
	int i;
	u32 Addr;
	int Status;
	Xuint32 video_width, video_height;
	Xuint32 storage_width, storage_height, storage_stride, storage_size, storage_offset;

	// Get Video dimensions
	video_height = vres_get_height( uVideoResolution );      // in lines
	video_width  = vres_get_width ( uVideoResolution ) << 2; // in bytes

	// Get Storage dimensions
	storage_height = vres_get_height( uStorageResolution );      // in lines
	storage_width  = vres_get_width ( uStorageResolution ) << 2; // in bytes
	storage_stride = storage_width;
	storage_size   = storage_width * storage_height;
	storage_offset = ((storage_height-video_height)>>1)*storage_width + ((storage_width-video_width)>>1);

	pReadCfg->VertSizeInput = video_height;
	pReadCfg->HoriSizeInput = video_width;
	pReadCfg->Stride        = storage_stride;

	pReadCfg->FrameDelay = 0;  /* This example does not test frame delay */

	pReadCfg->EnableCircularBuf = 1;
	pReadCfg->EnableSync = 1;

	pReadCfg->PointNum = 1;
	pReadCfg->EnableFrameCounter = 0; /* Endless transfers */

	pReadCfg->FixedFrameStoreAddr = 0; /* We are not doing parking */

	Status = XAxiVdma_DmaConfig(pAxiVdma, XAXIVDMA_READ, pReadCfg);
	if (Status != XST_SUCCESS) {
			xdbg_printf(XDBG_DEBUG_ERROR,
				"Read channel config failed %d\n\r", Status);

			return XST_FAILURE;
	}

	/* Initialize buffer addresses
	 *
	 * These addresses are physical addresses
	 */
	Addr = uMemAddr + storage_offset;
	for(i = 0; i < uNumFrames; i++)
	{
		pReadCfg->FrameStoreStartAddr[i] = Addr;

		Addr += storage_size;
	}

	/* Set the buffer addresses for transfer in the DMA engine
	 * The buffer addresses are physical addresses
	 */
	Status = XAxiVdma_DmaSetBufferAddr(pAxiVdma, XAXIVDMA_READ, pReadCfg->FrameStoreStartAddr);

	if (Status != XST_SUCCESS) {
			return XST_FAILURE;
	}

	return XST_SUCCESS;
}

int vfb_tx_start(XAxiVdma *pAxiVdma)
{
   int Status;

   // MM2S Startup
   Status = XAxiVdma_DmaStart(pAxiVdma, XAXIVDMA_READ);
   if (Status != XST_SUCCESS)
   {
      return XST_FAILURE;
   }

   return XST_SUCCESS;
}

int vfb_tx_stop(XAxiVdma *pAxiVdma)
{
   // MM2S Stop
   XAxiVdma_DmaStop(pAxiVdma, XAXIVDMA_READ);

   return XST_SUCCESS;
}
