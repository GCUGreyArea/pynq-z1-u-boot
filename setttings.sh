#!/usr/bin/bash

if [[ -z "${XILINX_VITIS}" ]]; then
  echo "please source the Xilinx settings64.sh script to set the XILINX_VITIS environment variable."
  exit
fi

export bootargs="root=/dev/mmcblk0p2 rootfstype=ext4 ro rootwait console=ttyAMA0,115200 panic=1"
export PATH=${XILINX_VITIS}/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin:$PATH
export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-

