#include "DisplayXil.h"
#include "platform.h"
#include "stdio.h"
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

int main()
{
  init_platform();

  cfg.iicCtrl = &iicCtrl;
  cfg.hdmiDisplayMemBaseAddr = XPAR_DDR_MEM_BASEADDR + 0x10000000;
  cfg.vtcId = XPAR_ZED_HDMI_DISPLAY_V_TC_0_DEVICE_ID;
  cfg.vdmaId = XPAR_ZED_HDMI_DISPLAY_AXI_VDMA_0_DEVICE_ID;

  DisplayXil display(&cfg);

  getchar();

  // manually do everything
  display._initscr();
  display._refresh();

  getchar();
}
