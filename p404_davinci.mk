#
# Copyright (C) 2023 Project 404
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/asus/davinci/device.mk)

# Inherit from the Project 404 configuration.
$(call inherit-product, vendor/404/configs/common.mk)

PRODUCT_BRAND := asus
PRODUCT_DEVICE := davinci
PRODUCT_MANUFACTURER := asus
PRODUCT_MODEL := ASUS_AI2202
PRODUCT_NAME := p404_davinci

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=ASUS_AI2202 \
    TARGET_PRODUCT=WW_AI2202

PRODUCT_GMS_CLIENTID_BASE := android-asus

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080