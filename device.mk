#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/m51

# Inherit Common Device Tree
$(call inherit-product, device/samsung/a71-common/common.mk)

# Inherit V4A
$(call inherit-product, packages/apps/ViPER4AndroidFX/config.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/vendor/etc/mixer_paths_idp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_idp.xml \

# Axion Performance Mode
PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := schedutil

# Axion Kernel Manager
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/kernel/ax_kernel_manager_sun.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/ax_kernel_manager.xml \
    $(LOCAL_PATH)/rootdir/etc/ax_init_sun.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/ax_init_sun.rc

# High Brightness Mode (HBM)
HBM_SUPPORTED := true
HBM_NODE := /sys/class/backlight/panel0-backlight/hbm_mode

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.2-service.samsung \

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/vendor/etc/libnfc-sec-vendor.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-sec-vendor.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/libnfc-nci.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nci.conf \

# Overlays
PRODUCT_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay \

# Ramdisk
PRODUCT_PACKAGES += \
    init.m51.rc \

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH) \

# Get non-open-source specific aspects
$(call inherit-product, vendor/samsung/m51/m51-vendor.mk)
