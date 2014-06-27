#!/bin/bash
qemu-system-arm -machine none -M versatilepb -cpu arm1176 -m 192 -hda rootfs.ext4 -kernel rpi-firmware/zImage -net nic -net user,hostfwd=tcp::2222-:22,hostfwd=tcp::5800-:5800,hostfwd=tcp::5900-:5900
