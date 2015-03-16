#CUSTOM BOOTANIMATION
     PRODUCT_COPY_FILES += \
	 vendor/legendrom/prebuilt/bootanimation/LegendROM.zip:system/media/bootanimation.zip

#REQUIRED APPS
 PRODUCT_PACKAGES += \
	Launcher3\
	masquerade

#LEGENDROM SPECIAL
 PRODUCT_COPY_FILES += \
	vendor/legendrom/prebuilt/apps/CAFBrowser/CAFBrowser.apk:system/app/CAFBrowser/CAFBrowser.apk \
	vendor/legendrom/prebuilt/apps/CAFBrowser/lib/arm/libc++_shared.so:system/app/CAFBrowser/lib/arm/libc++_shared.so \
	vendor/legendrom/prebuilt/apps/CAFBrowser/lib/arm/libicui18n.cr.so:system/app/CAFBrowser/lib/arm/libicui18n.cr.so \
	vendor/legendrom/prebuilt/apps/CAFBrowser/lib/arm/libicuuc.cr.so:system/app/CAFBrowser/lib/arm/libicuuc.cr.so \
	vendor/legendrom/prebuilt/apps/CAFBrowser/lib/arm/libswe.so:system/app/CAFBrowser/lib/arm/libswe.so \
	vendor/legendrom/prebuilt/apps/CAFBrowser/lib/arm/libswecore.so:system/app/CAFBrowser/lib/arm/libswecore.so \
	vendor/legendrom/prebuilt/apps/CAFBrowser/lib/arm/libswev8.so:system/app/CAFBrowser/lib/arm/libswev8.so \
	vendor/legendrom/prebuilt/apps/CAFBrowser/lib/arm/libswewebrefiner.so:system/app/CAFBrowser/lib/arm/libswewebrefiner.so

ifndef ROM_BUILD_TYPE
    ROM_BUILD_TYPE := OFFICIAL
endif
 ROM_VERSION := 1.0
 ROM_NAME := LegendROM-$(ROM_VERSION)-$(ROM_BUILD_TYPE)-$(shell date +%Y%m%d)



 PRODUCT_PROPERTY_OVERRIDES += \
     ro.rom.version=$(ROM_VERSION)

# Backuptool support
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/addon.d/50-simpleaosp.sh:system/addon.d/50-simpleaosp.sh \
    $(LOCAL_PATH)/bin/backuptool.functions:system/bin/backuptool.functions \
    $(LOCAL_PATH)/bin/backuptool.sh:system/bin/backuptool.sh

# Bootanimation support
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/bootanimation.zip:system/media/bootanimation.zip

