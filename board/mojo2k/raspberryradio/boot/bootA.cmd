setenv bootdelay 0
setenv bootargs 'dma.dmachans=0x7f35 bcm2708_fb.fbwidth=1440 bcm2708_fb.fbheight=900 bcm2708.boardrev=0xe bcm2708.serial=0x20e34aeb smsc95xx.macaddr=${usbethaddr} sdhci-bcm2708.emmc_clock_freq=250000000 vc root=/dev/ram0 rootwait console=ttyAMA0,115200n8 kgdboc=ttyAMA0,115200 earlyprintk console=tty1'
saveenv
fatload mmc 0:1 ${loadaddr} zImageA
bootz ${loadaddr}
