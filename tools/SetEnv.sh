#!/bin/sh
googlemock
dutpath
export PS1='\[\033[0;35m\]\h\[\033[0;33m\] \w\[\033[00m\]: '
export SVUNIT_INSTALL=/home/agilehw/svunit-code/
echo 'include $(SVUNIT_INSTALL)/bin/modelsim.mk' > svunit.mk
export PATH=$PATH:$SVUNIT_INSTALL/bin
export PATH=$PATH:/home/agilehw/altera/13.1/modelsim_ase/bin/
