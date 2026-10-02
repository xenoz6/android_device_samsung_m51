#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from m51 device
$(call inherit-product, device/samsung/m51/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Axion Stuff
AXION_CAMERA_REAR_INFO := 64,12,5
AXION_CAMERA_FRONT_INFO := 32
AXION_MAINTAINER := Xenoz
AXION_PROCESSOR := Snapdragon_730G
TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_AXFX := false
TARGET_INCLUDES_LOS_PREBUILTS := true
TARGET_NEEDS_VULKAN_MEDIA_FIX := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_m51
PRODUCT_DEVICE := m51
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M515
PRODUCT_MANUFACTURER := samsung

# Use the latest approved GMS identifiers
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="m51nsxx-user 12 SP1A.210812.016 M515FXXS6DXE3 release-keys" \
    BuildFingerprint=samsung/m51nsxx/qssi:12/SP1A.210812.016/M515FXXS6DXE3:user/release-keys \
    DeviceProduct=m51nsxx \
    SystemName=m51nsxx
