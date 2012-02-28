LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_MOTO_CAMERA),true)

include $(CLEAR_VARS)

LOCAL_MODULE_PATH    := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_MODULE         := camera.$(TARGET_BOARD_PLATFORM)
LOCAL_SRC_FILES      := cameraHal.cpp
LOCAL_MODULE_TAGS    := optional

LOCAL_SRC_FILES += v4l2_utils.c overlay.cpp

LOCAL_SHARED_LIBRARIES += \
    liblog \
    libutils \
    libbinder \
    libcutils \
    libmedia \
    libhardware \
    libcamera_client \
    libcamera

LOCAL_SHARED_LIBRARIES += libdl

include $(BUILD_SHARED_LIBRARY)

ifeq ($(OMAP_ENHANCEMENT),true)
LOCAL_CFLAGS += -DOMAP_ENHANCEMENT
endif

endif
