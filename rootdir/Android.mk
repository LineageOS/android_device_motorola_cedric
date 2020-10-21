LOCAL_PATH := $(call my-dir)

# Init scripts
include $(CLEAR_VARS)
LOCAL_MODULE := init.device.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := etc/init.device.rc
LOCAL_VENDOR_MODULE := true
LOCAL_MODULE_RELATIVE_PATH := init/hw
include $(BUILD_PREBUILT)
