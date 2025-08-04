PKG_DRIVERS += uwe5622

config-$(call config_package,uwe5622) += WLAN_UWE5622 SPRDWL_NG TTY_OVERY_SDIO
config-y += SPARD_WLAN_SUPPORT AW_WIFI_DEVICE_UWE5622 UNISOC_WIFI_PS

define KernelPackage/uwe5622
  $(call KernelPackage/mac80211/Default)
  TITLE:=Unisoc UWE5622 Wireless Driver
  DEPENDS+= +kmod-mac80211 +kmod-mmc +@DRIVER_11AC_SUPPORT
  FILES:= \
    $(PKG_BUILD_DIR)/drivers/net/wireless/uwe5622/unisocwifi/sprdwl_ng.ko \
    $(PKG_BUILD_DIR)/drivers/net/wireless/uwe5622/unisocwcn/uwe5622_bsp_sdio.ko \
    $(PKG_BUILD_DIR)/drivers/net/wireless/uwe5622/tty-sdio/sprdbt_tty.ko
  AUTOLOAD:=$(call AutoProbe,sprdwl_ng)
endef
