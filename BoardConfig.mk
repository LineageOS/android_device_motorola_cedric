#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from msm8937-common
-include device/motorola/msm8937-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/hannah

# Assert
TARGET_OTA_ASSERT_DEVICE := hannah,hannah_t,ahannah,rhannah

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := hannah_defconfig
BOARD_KERNEL_CMDLINE += dm=\"system none ro,0 1 android-verity /dev/mmcblk0p55\"

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 25165824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27124546560

# Security patch level
VENDOR_SECURITY_PATCH := 2019-03-01

# SELinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Inherit from the proprietary version
-include vendor/motorola/hannah/BoardConfigVendor.mk
