# Boot animation
TARGET_BOOT_ANIMATION_RES := 1440x2880

# Inherit some common AOSiP stuff.
$(call inherit-product, vendor/colt/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/taimen/aosp_taimen.mk)

-include device/google/wahoo/device-colt.mk

# Device identifier. This must come after all inclusions
PRODUCT_NAME := colt_taimen
PRODUCT_DEVICE := taimen
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2 XL
PRODUCT_MANUFACTURER := Google
COLT_BUILD_TYPE := Official
PRODUCT_RESTRICT_VENDOR_FILES := false
COLT_DEVICE_MAINTAINER := nitin.chobhe

PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME="taimen" \
	PRIVATE_BUILD_DESC="taimen-user 10 200705.002 6506677 release-keys"

BUILD_FINGERPRINT := google/taimen/taimen:10/QQ3A.200705.002/6506677:user/release-keys

$(call inherit-product-if-exists, vendor/google/taimen/taimen-vendor.mk)
$(call inherit-product-if-exists, vendor/gapps/gapps.mk)

REMOVE_GAPPS_PACKAGES += \
	PrebuiltGmail \
	MatchmakerPrebuiltPixel4
