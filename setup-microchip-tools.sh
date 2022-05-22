#!/bin/bash

#===============================================================================
# Edit the following section with the location where the following tools are
# installed:
#   - SoftConsole (SC_INSTALL_DIR)
#   - Libero (LIBERO_INSTALL_DIR)
#   - Licensing daemon for Libero (LICENSE_DAEMON_DIR)
#===============================================================================
export SC_INSTALL_DIR=/home/$USER/Microchip/SoftConsole-v2021.3-7.0.0.599
export LIBERO_INSTALL_DIR=/home/$USER/Microchip/Libero_SoC_v2022.1
export LICENSE_DAEMON_DIR=/home/$USER/Microchip/Linux_Licensing_Daemon
export LICENSE_FILE_DIR=/home/$USER/Microchip/license

#===============================================================================
# The following was tested on Ubuntu 20.04 with:
#   - Libero 2021.3
#   - SoftConsole 2021.3
#===============================================================================

#
# SoftConsole
#
export PATH=$PATH:$SC_INSTALL_DIR/riscv-unknown-elf-gcc/bin
export FPGENPROG=$LIBERO_INSTALL_DIR/Libero/bin64/fpgenprog

#
# Libero
#
export PATH=$PATH:$LIBERO_INSTALL_DIR/Libero/bin:$LIBERO_INSTALL_DIR/Libero/bin64
export PATH=$PATH:$LIBERO_INSTALL_DIR/Synplify/bin
export PATH=$PATH:$LIBERO_INSTALL_DIR/Model/modeltech/linuxacoem
export LOCALE=C
export LD_LIBRARY_PATH=/usr/lib/i386-linux-gnu:$LD_LIBRARY_PATH

#
# Libero License daemon
#
export LM_LICENSE_FILE=1702@localhost
export SNPSLMD_LICENSE_FILE=1702@localhost

$LICENSE_DAEMON_DIR/lmgrd -c $LICENSE_FILE_DIR/License.dat -l $LICENSE_FILE_DIR/license.log
