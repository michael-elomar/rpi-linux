LOCAL_PATH := $(call my-dir)

# Linux on Cortex-A72 CPU
ifeq ("$(TARGET_OS)-$(TARGET_CPU)","linux-cortex-a76")

# ========================== Linux Kernel ==========================

include $(CLEAR_VARS)

LOCAL_MODULE := linux
LOCAL_DESCRIPTION := Linux kernel
LOCAL_CATEGORY_PATH := system

LOCAL_LINUX_MAKE_BUILD_ARGS := \
	INSTALL_DTBS_PATH=$(TARGET_OUT_STAGING)/boot \


LINUX_CONFIG_FILE := \
	$(LOCAL_PATH)/arch/arm64/configs/bcm2712_defconfig

include $(BUILD_LINUX)

endif

