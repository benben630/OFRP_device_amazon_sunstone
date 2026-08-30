#
# Copyright (C) 2026 The Team Win Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, vendor/twrp/config/common.mk)
$(call inherit-product, device/amazon/sunstone/device.mk)

PRODUCT_BUILD_VENDOR_BOOT_IMAGE := false
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_BUILD_SUPER_EMPTY_IMAGE := false

PRODUCT_RELEASE_NAME := sunstone
PRODUCT_DEVICE := sunstone
PRODUCT_NAME := twrp_sunstone
PRODUCT_BRAND := Amazon
PRODUCT_MODEL := Fire Max 11
PRODUCT_MANUFACTURER := Amazon

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=sunstone \
    PRODUCT_NAME=sunstone
