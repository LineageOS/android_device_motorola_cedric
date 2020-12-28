#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

export BOARD_COMMON=msm8937-common
export DEVICE=cedric
export VENDOR=motorola

"./../../${VENDOR}/${BOARD_COMMON}/setup-makefiles.sh" "$@"
