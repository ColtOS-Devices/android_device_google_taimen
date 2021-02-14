# Boot animation
TARGET_BOOT_ANIMATION_RES := 1440x2880

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

#
# All components inherited here go to system_ext image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)

# Inherit some common Colt stuff.
$(call inherit-product, vendor/colt/config/common.mk)
$(call inherit-product, device/google/taimen/device.mk)

# Google Apps
$(call inherit-product-if-exists, vendor/gms/gms_full.mk)

PRODUCT_COPY_FILES += \
    device/google/taimen/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml

# Device identifier. This must come after all inclusions
PRODUCT_NAME := colt_taimen
PRODUCT_DEVICE := taimen
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2 XL
PRODUCT_MANUFACTURER := Google
COLT_BUILD_TYPE := Official
PRODUCT_RESTRICT_VENDOR_FILES := false
COLT_DEVICE_MAINTAINER := nitin.chobhe

$(call inherit-product-if-exists, vendor/google/taimen/taimen-vendor.mk)
$(call inherit-product-if-exists, vendor/gapps/gapps.mk)

REMOVE_GAPPS_PACKAGES += \
	PrebuiltGmail \
	Chrome \
	Chrome-Stub \
	Drive \
	Maps \
	Photos \
	PixelWallpapers2020 \
	YouTube \
	YouTubeMusicPrebuilt \
	MatchmakerPrebuiltPixel4
