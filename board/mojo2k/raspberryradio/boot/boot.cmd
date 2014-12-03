mmc dev 0
fatload mmc 0:2 ${kernel_addr_r} zImage
fatload mmc 0:2 ${ramdisk_addr_r} rootfs.cpio.uboot
#setenv bootargs 'dwc_otg.fiq_fix_enable=1 sdhci-bcm2708.sync_after_dma=0 dwc_otg.lpm_enable=0 console=tty1 rootwait init=/bin/sh'
setenv bootargs 'dwc_otg.fiq_fix_enable=1 sdhci-bcm2708.sync_after_dma=0 dwc_otg.lpm_enable=0 console=tty1 rootwait root=/dev/ram0'
bootz ${kernel_addr_r} ${ramdisk_addr_r}
