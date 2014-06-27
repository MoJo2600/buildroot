#!/bin/sh

TARGET="${1}"

# copy System.map
cp ${TARGET}/../build/linux-rpi-3.12.y/System.map ${TARGET}/System.map

# move kernel
mv ${TARGET}/../images/zImage ${TARGET}/../images/rpi-firmware/

# move network to start later - hardware is not fast enough
mv ${TARGET}/etc/init.d/S40network ${TARGET}/etc/init.d/S90network

# move resolv.conf
rm ${TARGET}/etc/resolv.conf
mv ${TARGET}/etc/resolv.conf_bkp ${TARGET}/etc/resolv.conf

exit 0

