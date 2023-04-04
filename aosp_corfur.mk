#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from corfur device
$(call inherit-product, device/motorola/corfur/device.mk)


# Inherit some common PixelExperience stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# PixelExperience Properties
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_AOSP_RECOVERY := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_corfur
PRODUCT_DEVICE := corfur
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g71 5G

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=corfur_g \
    PRIVATE_BUILD_DESC="corfur_g-user 12 S2RUBS32.51-15-9-5 1ec84-76c7d7 release-keys"

BUILD_FINGERPRINT := motorola/corfur_g/corfur:12/S2RUBS32M.51-15-9-5/76c7d7:user/release-keys
