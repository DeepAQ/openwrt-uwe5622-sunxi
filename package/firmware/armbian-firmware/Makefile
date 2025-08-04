include $(TOPDIR)/rules.mk

PKG_NAME:=armbian-firmware
PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/armbian/firmware.git
PKG_SOURCE_VERSION:=fc3059b081043ea9e121841af12d976984b2d5bf
PKG_MIRROR_HASH:=eab424ddee6bc25b44956379e7fe3fbfeeff232f416785eef03186a7fc63d772

include $(INCLUDE_DIR)/package.mk

define Build/Compile
endef

define Package/uwe5622-firmware
	SECTION:=firmware
	CATEGORY:=Firmware
	URL:=$(PKG_SOURCE_URL)
	DEPENDS:=
	TITLE:=Unisoc UWE5622 firmware
endef

define Package/uwe5622-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/uwe5622/wcnmodem.bin \
		$(PKG_BUILD_DIR)/uwe5622/wcnmodem-38222.bin \
		$(PKG_BUILD_DIR)/uwe5622/wifi_2355b001_1ant.ini \
		$(1)/lib/firmware/
endef

$(eval $(call BuildPackage,uwe5622-firmware))
