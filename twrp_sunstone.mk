#
# Copyright (C) 2026 The OrangeFox Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit 64-bit target configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit OrangeFox configuration (replaces vendor/twrp/config/common.mk)
$(call inherit-product, vendor/recovery/config/common.mk)

# Inherit device tree common makefile
$(call inherit-product, device/amazon/sunstone/device.mk)

# Disallow building unnecessary large images during recovery compilation
PRODUCT_BUILD_VENDOR_BOOT_IMAGE := false
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_BUILD_SUPER_EMPTY_IMAGE := false

# Product Details
PRODUCT_RELEASE_NAME := sunstone
PRODUCT_DEVICE := sunstone
PRODUCT_NAME := fox_sunstone
PRODUCT_BRAND := Amazon
PRODUCT_MODEL := Fire Max 11
PRODUCT_MANUFACTURER := Amazon

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=sunstone \
    PRODUCT_NAME=sunstone
