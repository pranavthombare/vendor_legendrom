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
 ROM_VERSION := 2.0
 ROM_NAME := LegendROM-$(ROM_VERSION)-$(ROM_BUILD_TYPE)-$(shell date +%Y%m%d)



 PRODUCT_PROPERTY_OVERRIDES += \
     ro.rom.version=$(ROM_VERSION)

#Backup Gapps
PRODUCT_COPY_FILES += \
    vendor/legendrom/prebuilt/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/legendrom/prebuilt/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/legendrom/prebuilt/bin/50-base.sh:system/addon.d/50-base.sh \

#Swype Functionality
PRODUCT_COPY_FILES += \
    vendor/pure/prebuilt/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Bootanimation support
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/bootanimation.zip:system/media/bootanimation.zip

