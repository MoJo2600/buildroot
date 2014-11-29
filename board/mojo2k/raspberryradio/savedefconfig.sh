#!/bin/bash
make savedefconfig
cp defconfig configs/raspberryradio_defconfig
make linux-savedefconfig
cp output/build/linux-rpi-3.12.y/defconfig board/mojo2k/raspberryradio/linux-3.12.y.config
