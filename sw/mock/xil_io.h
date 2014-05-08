#ifndef __XIL_IO_H__
#define __XIL_IO_H__

u8 Xil_In8(u32 InAddress);
u16 Xil_In16(u32 InAddress);
u32 Xil_In32(u32 InAddress);
void Xil_Out8(u32 OutAddress, u8 Value);
void Xil_Out16(u32 OutAddress, u16 Value);
void Xil_Out32(u32 OutAddress, u32 Value);
u16 Xil_In16LE(u32 Addr);
u32 Xil_In32LE(u32 Addr);
void Xil_Out16LE(u32 Addr, u16 Value);
void Xil_Out32LE(u32 Addr, u32 Value);

#endif
