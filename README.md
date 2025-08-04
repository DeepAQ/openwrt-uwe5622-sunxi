# openwrt-uwe5622-sunxi
Porting UWE5622 (AW859A) wireless driver to OpenWrt for sunxi (Allwinner) devices

## Known issues
- 5 GHz AP mode not working
- AP and station information not showing in LuCI

## Build instructions
1. Clone OpenWrt source code
2. Merge files in this repository with OpenWrt source
3. Add configuration to your target device:  `DEVICE_PACKAGES := kmod-uwe5622 uwe5622-firmware wpad-basic-mbedtls`
4. Build OpenWrt

Tested on Orange Pi Zero 2 with OpenWrt 24.10 source code.

## Acknowledgement
Kernel patches and firmware files come from [Armbian](https://github.com/armbian/build).
