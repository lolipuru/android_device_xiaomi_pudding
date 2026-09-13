#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from pudding device.
$(call inherit-product, device/xiaomi/pudding/device.mk)

## Device identifier
PRODUCT_DEVICE := pudding
PRODUCT_NAME := lineage_pudding
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 25113PN0EG
PRODUCT_MANUFACTURER := xiaomi

BUILD_FINGERPRINT := Xiaomi/pudding/pudding:16/BQ2A.250705.001-BP2A.250605.031.A3/OS3.0.335.0.XPCMIXM:user/release-keys

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi