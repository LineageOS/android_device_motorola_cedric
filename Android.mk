#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),montana)
  subdir_makefiles=$(call first-makefiles-under,$(LOCAL_PATH))
  $(foreach mk,$(subdir_makefiles),$(info including $(mk) ...)$(eval include $(mk)))

FIRMWARE_FPCTZ_IMAGES := \
    fpctzappfingerprint.b00 fpctzappfingerprint.b01 fpctzappfingerprint.b02 \
    fpctzappfingerprint.b03 fpctzappfingerprint.b04 fpctzappfingerprint.b05 \
    fpctzappfingerprint.b06 fpctzappfingerprint.mdt

FIRMWARE_FPCTZ_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(FIRMWARE_FPCTZ_IMAGES)))
$(FIRMWARE_FPCTZ_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Fpctz Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /vendor/firmware_mnt/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_FPCTZ_SYMLINKS)

endif
