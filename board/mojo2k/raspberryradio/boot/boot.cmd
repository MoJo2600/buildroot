setenv fdtfile bcm2835-rpi-b.dtb
mmc dev 0
fatload mmc 0:1 ${fdt_addr_r} ${fdtfile}
fatload mmc 0:2 ${kernel_addr_r} zImage
setenv bootargs 'dwc_otg.fiq_fix_enable=1 sdhci-bcm2708.sync_after_dma=0 dwc_otg.lpm_enable=0 console=tty1 rootwait noinitrd'
bootz ${kernel_addr_r} - ${fdt_addr_r}
