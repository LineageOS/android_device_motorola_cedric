#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/motorola/cedric/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_cedric
PRODUCT_DEVICE := cedric
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Moto G (5)
PRODUCT_MANUFACTURER := motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cedric_retail-user 8.1.0 OPP28.85-19-4-2 3447de release-keys" \
    PRODUCT_NAME="cedric_retail"

BUILD_FINGERPRINT := motorola/cedric_retail/cedric:8.1.0/OPP28.85-19-4-2/3447de:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-motorola
