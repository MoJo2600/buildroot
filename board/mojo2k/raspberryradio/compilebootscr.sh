#!/bin/bash
#./output/build/uboot-rpi_dev/tools/mkimage -C none -A arm -T script -d  board/mojo2k/raspberryradio/boot/boot.cmd output/images/rpi-firmware/boot.scr
./output/host/usr/bin/mkimage -C none -A arm -T script -d  board/mojo2k/raspberryradio/boot/boot.cmd output/images/rpi-firmware/boot.scr
