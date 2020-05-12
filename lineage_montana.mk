#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/motorola/montana/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_montana
PRODUCT_DEVICE := montana
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g5s
PRODUCT_MANUFACTURER := motorola

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.product.model \
    ro.product.name

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="montana_retail-user 8.1.0 OPPS28.65-37-7-11 7f8a6 release-keys" \
    PRODUCT_NAME="montana"

BUILD_FINGERPRINT := motorola/montana_retail/montana:8.1.0/OPPS28.65-37-7-11/7f8a6:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-motorola
