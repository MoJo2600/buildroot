#!/bin/sh

TARGET="${1}"
BR_ROOT=$PWD

# copy System.map
cp ${TARGET}/../build/linux-rpi-3.17.y/System.map ${TARGET}/System.map

#cp ${BR_ROOT}/board/mojo2k/raspberryradio/boot/boot.cmd ${TARGET}/../images/rpi-firmware/
${BR_ROOT}/output/build/uboot-8a80d02210d10119dc21e920fae90a8d2c0513ea/tools/mkimage -C none -A arm -T script -d ${BR_ROOT}/board/mojo2k/raspberryradio/boot/boot.cmd ${TARGET}/../images/rpi-firmware/boot.scr
cp ${BR_ROOT}/board/mojo2k/raspberryradio/boot/cmdline.txt ${TARGET}/../images/rpi-firmware/
cp ${BR_ROOT}/board/mojo2k/raspberryradio/boot/config.txt ${TARGET}/../images/rpi-firmware/

# move u-boot
mv ${TARGET}/../images/u-boot.bin ${TARGET}/../images/rpi-firmware/
# move device tree
mv ${TARGET}/../images/bcm2835-rpi-b.dtb ${TARGET}/../images/rpi-firmware/

cp -Rfv ${BR_ROOT}/board/mojo2k/raspberryradio/sdcard ${TARGET}/../images

# Add mountpoint for second partition
echo "/dev/mmcblk0p4	/sdcard	ext4	rw	0	0" >> ${TARGET}/etc/fstab
echo "/dev/mmcblk0p1	/boot	vfat	rw	0	0" >> ${TARGET}/etc/fstab

# Add mdev rule for wifi
echo "wlan[0-9]*      0:0 0660 */etc/mdev.wlan" >> ${TARGET}/etc/mdev.conf

exit 0
