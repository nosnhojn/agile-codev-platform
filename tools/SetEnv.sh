#!/bin/sh
googlemock
export DUT_DIR=/home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock/hwIPBlock.srcs/sources_1/new/
if [ "$SVUNIT_INSTALL" == "" ]; then
  export SVUNIT_INSTALL=/home/agilehw/svunit-code/
fi
export PATH=$PATH:$SVUNIT_INSTALL/bin
export PATH=$PATH:/home/agilehw/altera/13.1/modelsim_ase/bin/

