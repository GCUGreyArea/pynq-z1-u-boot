#!/bin/bash

# if [[ -z "${ARCH}" ]]; then 
#   source ../settings.sh
# fi

echo "Building u-boot"
make zynq_pynqz1_defconfig 
make