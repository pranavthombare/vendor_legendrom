 
 export LegendROM_version := 1.0
 LegendROM_display-version := $(LegendROM_version)
 export ROM_VERSION := $(LegendROM_version)-$(shell date -u +%Y%m%d)

 PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=$(ROM_VERSION) \
    ro.legendrom.version=$(LegendROM_version) \
    ro.legendrom.device=bacon \
    ro.legendrom.display.version=$(LegendROM_display_version) 

 export LegendROM_TARGET_ZIP := LegendROM_bacon-$(LegendROM_version)-$(shell date -u +%Y%m%d)

#CUSTOM BOOTANIMATION
 PRODUCT_BOOTANIMATION := vendor/legendrom/prebuilt/bootanimation/LegendROM.zip

#REQUIRED APPS
 PRODUCT_PACKAGES += \
	Launcher3\
	masquerade

#LEGENDROM SPECIAL
 PRODUCT_COPY_FILES += \
	vendor/legendrom/prebuilt/common/apps/CAFBrowser/CAFBrowser.apk:system/app/CAFBrowser/base.apk \
	vendor/legendrom/prebuilt/common/apps/CAFBrowser/lib/arm/libc++_shared.so:system/app/CAFBrowser/lib/arm/libc++_shared.so \
	vendor/legendrom/prebuilt/common/apps/CAFBrowser/lib/arm/libicui18n.cr.so:system/app/CAFBrowser/lib/arm/libicui18n.cr.so \
	vendor/legendrom/prebuilt/common/apps/CAFBrowser/lib/arm/libicuuc.cr.so:system/app/CAFBrowser/lib/arm/libicuuc.cr.so \
	vendor/legendrom/prebuilt/common/apps/CAFBrowser/lib/arm/libswe.so:system/app/CAFBrowser/lib/arm/libswe.so \
	vendor/legendrom/prebuilt/common/apps/CAFBrowser/lib/arm/libswecore.so:system/app/CAFBrowser/lib/arm/libswecore.so \
	vendor/legendrom/prebuilt/common/apps/CAFBrowser/lib/arm/libswev8.so:system/app/CAFBrowser/lib/arm/libswev8.so \
	vendor/legendrom/prebuilt/common/apps/CAFBrowser/lib/arm/libswewebrefiner.so:system/app/CAFBrowser/lib/arm/libswewebrefiner.so

