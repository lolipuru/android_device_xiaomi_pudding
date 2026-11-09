#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/pudding
TARGET_OPT_IN_OSS_KERNEL := true

# Inherit from sm8650-common
include device/xiaomi/sm8850-common/BoardConfigCommon.mk

# Display
TARGET_SCREEN_DENSITY := 420

# Kernel modules
BOARD_VENDOR_KERNEL_MODULES_LOAD += \
	cs35l43_dlkm.ko \
	synaptics_tcm2.ko

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/configs/properties/odm.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/configs/properties/vendor.prop

# Inherit from the proprietary version
include vendor/xiaomi/pudding/BoardConfigVendor.mk