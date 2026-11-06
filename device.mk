
#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8650-common
$(call inherit-product, device/xiaomi/sm8850-common/common.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/xiaomi/pudding/pudding-vendor.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_module_config_primary.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/audio_module_config_primary.xml

# Camera
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator-V1-ndk.vendor \
    vendor.qti.hardware.camera.offlinecamera-V2-ndk.vendor

# Euicc
PRODUCT_PACKAGES += \
    XiaomiEuicc \
    XiaomiEsimSwitcher

# Overlays
PRODUCT_PACKAGES += \
    ApertureOverlayPudding \
    FrameworksResPudding \
    NfcOverlayMyron \
    PuddingEuiccOverlay \
    SettingsOverlayPudding \
    SettingsProviderOverlayPudding \
    SystemUIResPudding \
    WifiOverlayPudding

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
