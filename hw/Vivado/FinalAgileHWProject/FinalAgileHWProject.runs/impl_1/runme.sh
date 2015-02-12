#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/opt/Xilinx/SDK/2013.3/bin/:/opt/Xilinx/Vivado/2013.3/ids_lite/EDK/bin/lin:/opt/Xilinx/Vivado/2013.3/ids_lite/ISE/bin/lin:/opt/Xilinx/Vivado/2013.3/bin
else
  PATH=/opt/Xilinx/SDK/2013.3/bin/:/opt/Xilinx/Vivado/2013.3/ids_lite/EDK/bin/lin:/opt/Xilinx/Vivado/2013.3/ids_lite/ISE/bin/lin:/opt/Xilinx/Vivado/2013.3/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/opt/Xilinx/Vivado/2013.3/ids_lite/EDK/lib/lin:/opt/Xilinx/Vivado/2013.3/ids_lite/ISE/lib/lin
else
  LD_LIBRARY_PATH=/opt/Xilinx/Vivado/2013.3/ids_lite/EDK/lib/lin:/opt/Xilinx/Vivado/2013.3/ids_lite/ISE/lib/lin:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD=`dirname "$0"`
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .write_bitstream.begin.rst
EAStep vivado -log FinalDesign_wrapper.rdi -applog -m32 -messageDb vivado.pb -mode batch -source FinalDesign_wrapper.tcl -notrace


