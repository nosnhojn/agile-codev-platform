#include "DisplayXil.h"
#include "platform.h"
#include "stdio.h"

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

int main()
{
  init_platform();

  IicCtrl iicCtrl(XPAR_ZED_HDMI_IIC_0_BASEADDR);
  DisplayXil display(&iicCtrl,
                     XPAR_DDR_MEM_BASEADDR + 0x10000000,
                     XPAR_ZED_HDMI_DISPLAY_V_TC_0_DEVICE_ID,
                     XPAR_ZED_HDMI_DISPLAY_AXI_VDMA_0_DEVICE_ID);

  getchar();

  // manually do everything
  display->_initscr();
  display->_refresh();

  getchar();
}
