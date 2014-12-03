#!/bin/bash
#./output/build/uboot-rpi_dev/tools/mkimage -C none -A arm -T script -d  board/mojo2k/raspberryradio/boot/boot.cmd output/images/rpi-firmware/boot.scr
./output/build/uboot-8a80d02210d10119dc21e920fae90a8d2c0513ea/tools/mkimage -C none -A arm -T script -d  board/mojo2k/raspberryradio/boot/boot.cmd output/images/rpi-firmware/boot.scr
