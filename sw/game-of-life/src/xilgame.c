#include "Board.h"
#include "Drawing.h"
#include "DisplayXil.h"
#include "platform.h"
#include "CarrierConfig.h"

#ifndef XPAR_ZED_HDMI_IIC_0_BASEADDR
  #define XPAR_ZED_HDMI_IIC_0_BASEADDR 0
#endif
#ifndef XPAR_DDR_MEM_BASEADDR
  #define XPAR_DDR_MEM_BASEADDR 0
#endif
#ifndef XPAR_ZED_HDMI_DISPLAY_V_TC_0_DEVICE_ID
  #define XPAR_ZED_HDMI_DISPLAY_V_TC_0_DEVICE_ID 0
#endif
#ifndef XPAR_ZED_HDMI_DISPLAY_AXI_VDMA_0_DEVICE_ID
  #define XPAR_ZED_HDMI_DISPLAY_AXI_VDMA_0_DEVICE_ID 0
#endif

#define REFRESH_RATE 1_000_000

DisplayXilCfg cfg;
IicCtrl iicCtrl(XPAR_ZED_HDMI_IIC_0_BASEADDR,
                carrier_hdmi_out_config);
Board board;

int main()
{
  init_platform();

  cfg.iicCtrl = &iicCtrl;
  cfg.hdmiDisplayMemBaseAddr = XPAR_DDR_MEM_BASEADDR + 0x10000000;
  cfg.vtcId = XPAR_ZED_HDMI_DISPLAY_V_TC_0_DEVICE_ID;
  cfg.vdmaId = XPAR_ZED_HDMI_DISPLAY_AXI_VDMA_0_DEVICE_ID;

  DisplayXil display(&cfg);
  Drawing drawing(&board, &display);

  drawing.init();
 
  drawing.initialCell(30,40);
  drawing.initialCell(30,41);
  drawing.initialCell(30,42);
  drawing.initialCell(30,44);
  drawing.initialCell(31,40);
  drawing.initialCell(32,43);
  drawing.initialCell(32,44);
  drawing.initialCell(33,41);
  drawing.initialCell(33,42);
  drawing.initialCell(33,44);
  drawing.initialCell(34,40);
  drawing.initialCell(34,42);
  drawing.initialCell(34,44);

  drawing.initialCell(44,44);
  drawing.initialCell(44,45);
  drawing.initialCell(43,44);
  drawing.initialCell(43,45);

  drawing.initialCell(14,44);
  drawing.initialCell(14,45);
  drawing.initialCell(13,44);
  drawing.initialCell(13,45);

  drawing.initialCell(14,24);
  drawing.initialCell(14,25);
  drawing.initialCell(13,24);
  drawing.initialCell(13,25);

  drawing.play(50000);

  cleanup_platform();
}
