#!/bin/bash
cd output/images
tar cfv firmware.bin zImage rpi-firmware/
mv firmware.bin ../../
cd ../../
