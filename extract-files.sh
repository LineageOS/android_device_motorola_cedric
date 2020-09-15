#!/bin/bash
#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

# Required!
export DEVICE=cedric
export DEVICE_COMMON=msm8937-common
export VENDOR=motorola

export DEVICE_BRINGUP_YEAR=2018

"./../../${VENDOR}/${DEVICE_COMMON}/extract-files.sh" "$@"

DEVICE_BLOB_ROOT="${LINEAGE_ROOT}/vendor/${VENDOR}/${DEVICE}/proprietary"

sed -i 's|/firmware/image|/vendor/f/image|' "${DEVICE_BLOB_ROOT}/vendor/bin/hw/android.hardware.biometrics.fingerprint@2.1-fpcservice"
patchelf --remove-needed android.hidl.base@1.0.so "${DEVICE_BLOB_ROOT}/vendor/lib/com.fingerprints.extension@1.0_vendor.so"
sed -i "s/libgui/libwui/" "${DEVICE_BLOB_ROOT}/vendor/lib/libmmcamera_ppeiscore.so"
patchelf --add-needed libppeiscore_shim.so "${DEVICE_BLOB_ROOT}/vendor/lib/libmmcamera_ppeiscore.so"
sed -i "s/system input/system uhid input/" "${DEVICE_BLOB_ROOT}/vendor/etc/init/android.hardware.biometrics.fingerprint@2.1-service.rc"
sed -i "s/class late_start/class hal/" "${DEVICE_BLOB_ROOT}/vendor/etc/init/android.hardware.biometrics.fingerprint@2.1-service.rc"
