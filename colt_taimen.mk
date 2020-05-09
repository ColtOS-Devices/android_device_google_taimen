# Boot animation
TARGET_BOOT_ANIMATION_RES := 1440x2880

# Inherit some common AOSiP stuff.
$(call inherit-product, vendor/colt/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/taimen/aosp_taimen.mk)

-include device/google/wahoo/device-colt.mk

# Device identifier. This must come after all inclusions
PRODUCT_NAME := colt_taimen
PRODUCT_DEVICE := taimen
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2 XL
PRODUCT_MANUFACTURER := Google
COLT_BUILD_TYPE := OFFICIAL
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.colt.maintainer="nitin.chobhe"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=taimen \
    PRIVATE_BUILD_DESC="taimen-user 10 QQ2A.200501.001.B3 6396602 release-keys"

BUILD_FINGERPRINT := google/taimen/taimen:10/QQ2A.200501.001.B3/6396602:user/release-keys

$(call inherit-product-if-exists, vendor/google/taimen/taimen-vendor.mk)
$(call inherit-product-if-exists, vendor/gapps/gapps.mk)
