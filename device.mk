#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from msm8937-common
$(call inherit-product, device/motorola/msm8937-common/msm8937.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/motorola/montana/montana-vendor.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Properties
-include $(LOCAL_PATH)/vendor_prop.mk

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

# Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/camera/msm8937_mot_montana_camera.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/msm8937_mot_montana_camera.xml \
    $(LOCAL_PATH)/configs/camera/mot_ov5695_l5695f60_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/mot_ov5695_l5695f60_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/s5k3p3_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k3p3_chromatix.xml

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/uinput-egis.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-egis.kl

# IDC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/uinput-egis.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/uinput-egis.idc

# Ramdisk
PRODUCT_PACKAGES += \
    init.device.rc

# Releasetools script
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/check_device.sh:install/bin/check_device.sh

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sensor_def_qcomdev.conf \
    $(LOCAL_PATH)/configs/sensors/sensor_def_qcomdev_ahannah.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sensor_def_qcomdev_ahannah.conf
