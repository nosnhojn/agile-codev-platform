#include "Board.h"
#include "Drawing.h"
#include "DisplayXil.h"
#include "platform.h"

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

int main()
{
  init_platform();

  Board board;
  IicCtrl iicCtrl(XPAR_ZED_HDMI_IIC_0_BASEADDR);
  DisplayXil display(&iicCtrl,
                     XPAR_DDR_MEM_BASEADDR + 0x10000000,
                     XPAR_ZED_HDMI_DISPLAY_V_TC_0_DEVICE_ID,
                     XPAR_ZED_HDMI_DISPLAY_AXI_VDMA_0_DEVICE_ID);
  Drawing drawing(&board, &display);
 
  drawing.initialCell(20,20);
  drawing.initialCell(20,21);
  drawing.initialCell(20,22);
  drawing.initialCell(20,24);
  drawing.initialCell(21,20);
  drawing.initialCell(22,23);
  drawing.initialCell(22,24);
  drawing.initialCell(23,21);
  drawing.initialCell(23,22);
  drawing.initialCell(23,24);
  drawing.initialCell(24,20);
  drawing.initialCell(24,22);
  drawing.initialCell(24,24);
 
  drawing.play(200);
}
