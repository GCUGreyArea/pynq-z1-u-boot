#!/bin/bash

ech "Running copy..."

echo "copying u-boot to target" 
cp u-boot/u-boot target/boot/u-boot.elf

echo "Copying uEnv.txt"
cp u-boot/uEnv.txt target/boot/

echo "copying uImage"
cp linux-xlnx/uImage target/boot/

echo "generating BOOT.bin"
bootgen -arch zynq -image target/minimal.bif -o ../target/BOOT.bin -w

echo "copying BOOT.bin"
cp target/BOOT.bin /media/$(whoami)/boot/
echo "Done..."

echo "copying uImage"
cp target/boot/uImage /media/$(whoami)/boot/
echo "Done..."

echo "copying uEnv.txt"
cp uEnv.txt /media/$(whoami)/boot/
echo "Done..."

echo "copying zynq-pynqz1.dtb"
cp ./arch/arm/dts/zynq-pynqz1.dtb /media/$(whoami)/boot/
echo "Done..."

echo "synching"
sync
echo "Done..."
