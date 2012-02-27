ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),droid2)

# Copyright 2011 Motorola Mobility

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-subdir-java-files)

LOCAL_PACKAGE_NAME := GlobalNwSwitch
LOCAL_CERTIFICATE := platform

include $(BUILD_PACKAGE)

endif
