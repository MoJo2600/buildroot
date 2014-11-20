#!/bin/sh

TARGET="${1}"
BR_ROOT=$PWD

# copy System.map
cp ${TARGET}/../build/linux-rpi-3.12.y/System.map ${TARGET}/System.map

# move kernel
mv ${TARGET}/../images/zImage ${TARGET}/../images/rpi-firmware/

cp ${BR_ROOT}/board/mojo2k/raspberryradio/cmdline.txt ${TARGET}/../images/rpi-firmware/
cp ${BR_ROOT}/board/mojo2k/raspberryradio/config.txt ${TARGET}/../images/rpi-firmware/
cp -Rfv ${BR_ROOT}/board/mojo2k/raspberryradio/sdcard ${TARGET}/../images

# Add mountpoint for second partition
echo "/dev/mmcblk0p2	/sdcard	ext4	rw,auto	0	0" >> ${TARGET}/etc/fstab

# Add mdev rule for wifi
echo "wlan[0-9]*      0:0 0660 */etc/mdev.wlan" >> ${TARGET}/etc/mdev.conf

exit 0
