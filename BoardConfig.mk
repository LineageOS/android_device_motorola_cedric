#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Treble
PRODUCT_FULL_TREBLE_OVERRIDE := true

# Inherit from msm8937-common
-include device/motorola/msm8937-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/montana

# Assert
TARGET_OTA_ASSERT_DEVICE := montana

# Display
TARGET_SCREEN_DENSITY := 420

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := montana_defconfig

# NFC
NXP_CHIP_TYPE := pn554

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16879616
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26403126272

# Security patch level
VENDOR_SECURITY_PATCH := 2019-08-01

# SELinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Inherit from the proprietary version
-include vendor/motorola/montana/BoardConfigVendor.mk
