#!/bin/bash

if [[ -z "${ARCH}" ]]; then 
  source settings.sh
fi

make zynq_pynqz1_defconfig 
make

echo "copying u-boot to target" 
cp u-boot ../target/boot/u-boot.elf

./copy.sh