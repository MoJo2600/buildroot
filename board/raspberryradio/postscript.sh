#!/bin/sh

TARGET="${1}"
BR_ROOT=$PWD

# copy System.map
cp ${TARGET}/../build/linux-rpi-3.12.y/System.map ${TARGET}/System.map

# move kernel
mv ${TARGET}/../images/zImage ${TARGET}/../images/rpi-firmware/

# move network to start later - hardware is not fast enough
#mv ${TARGET}/etc/init.d/S40network ${TARGET}/etc/init.d/S90network

# move resolv.conf
# TODO: i don't think i need this anymore - remove me
#rm ${TARGET}/etc/resolv.conf
#mv ${TARGET}/etc/resolv.conf_bkp ${TARGET}/etc/resolv.conf

cp ${BR_ROOT}/board/raspberryradio/cmdline.txt ${TARGET}/../images/rpi-firmware/
cp ${BR_ROOT}/board/raspberryradio/config.txt ${TARGET}/../images/rpi-firmware/

# Add mountpoint for second partition
echo "/dev/mmblk0p2	/sdcard	ext4	rw,auto	0	0" >> ${TARGET}/etc/fstab

exit 0

