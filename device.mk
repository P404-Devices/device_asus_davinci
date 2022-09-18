#
# Copyright (C) 2022 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

# A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

PRODUCT_PACKAGES += \
    otapreopt_script

# Board
TARGET_BOARD_PLATFORM := taro

# Kernel
include vendor/qcom/proprietary/kernel-platform/kernel-platform-product.mk
include vendor/qcom/proprietary/kernel-platform/kernel-platform-board.mk

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
