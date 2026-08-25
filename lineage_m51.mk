#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from m51 device
$(call inherit-product, device/samsung/m51/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Lunaris Stuff
LUNARIS_BUILD_TYPE := UNOFFICIAL
TARGET_OPTIMIZED_DEXOPT := true
WITH_BCR := true
TARGET_SUPPORTED_REFRESH_RATES := 60
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_DISABLE_MATLOG := true

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
