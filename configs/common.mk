#CUSTOM BOOTANIMATION
     PRODUCT_COPY_FILES += \
	 vendor/legendrom/prebuilt/bootanimation/LegendROM.zip:system/media/bootanimation.zip

#REQUIRED APPS
 PRODUCT_PACKAGES += \
	Launcher3\
	masquerade\
	Snap\

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


 ROM_BUILD_TYPE := OFFICIAL
 ROM_VERSION := 3.0
 ROM_NAME := LegendROM-$(ROM_VERSION)-$(ROM_BUILD_TYPE)-$(shell date +%Y%m%d)

# Google Keyboard 
PRODUCT_COPY_FILES += \
    vendor/legendrom/prebuilt/apps/GBoard/base.apk:system/app/base.apk \
    vendor/legendrom/prebuilt/apps/GBoard/base.odex:system/app/oat/arm/base.odex \
    vendor/legendrom/prebuilt/apps/GBoard/libjni_delight4decoder.so:system/app/lib/arm/libjni_delight4decoder.so

# init.d support
PRODUCT_COPY_FILES += \
    vendor/legendrom/prebuilt/bin/sysinit:system/bin/sysinit \
    vendor/legendrom/prebuilt/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/legendrom/prebuilt/etc/init.d/90userinit:system/etc/init.d/90userinit

# Init file
PRODUCT_COPY_FILES += \
    vendor/legendrom/prebuilt/etc/init.local.rc:root/init.local.rc

PRODUCT_PROPERTY_OVERRIDES += \
     ro.legendrom.version=$(ROM_VERSION) \
     ro.opa.eligible_device=true

# include definitions for SDCLANG
include device/qcom/common/sdclang/sdclang.mk

#Backup Gapps
PRODUCT_COPY_FILES += \
    vendor/legendrom/prebuilt/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/legendrom/prebuilt/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/legendrom/prebuilt/bin/50-base.sh:system/addon.d/50-base.sh 

#Swype Functionality
PRODUCT_COPY_FILES += \
    vendor/legendrom/prebuilt/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Bootanimation support
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/bootanimation.zip:system/media/bootanimation.zip

