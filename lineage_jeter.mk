#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Inherit from device
$(call inherit-product, device/motorola/jeter/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Define bootanimation resolution
TARGET_BOOT_ANIMATION_RES := 720

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_jeter
PRODUCT_DEVICE := jeter
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g6 play
PRODUCT_MANUFACTURER := motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="jeter-user 9 PPPS29.118-57-5 d3be1 release-keys" \
    PRODUCT_NAME="jeter"

BUILD_FINGERPRINT := motorola/jeter/jeter:9/PPPS29.118-57-5/d3be1:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-motorola
