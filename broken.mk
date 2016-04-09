# Release name
PRODUCT_RELEASE_NAME := hammerhead

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOTANIMATION_HALF_RES := true

# Inherit some common stuff.
$(call inherit-product, vendor/broken/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/broken/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hammerhead
PRODUCT_NAME := broken_hammerhead
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
   PRODUCT_NAME=hammerhead \
   BUILD_FINGERPRINT=google/hammerhead/hammerhead:6.0.1/MMB29K/2419427:user/release-keys \
   PRIVATE_BUILD_DESC="hammerhead-user 6.0.1 MMB29K 2419427 release-keys"

# Broken Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
	DEVICE_MAINTAINERS="Jonathan Zuniga (CrackerTeg)"
