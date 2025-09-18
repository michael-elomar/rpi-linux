LOCAL_PATH := $(call my-dir)

# Linux on Cortex-A72 CPU
ifeq ("$(TARGET_OS)-$(TARGET_CPU)","linux-cortex-a72")

# ========================== Linux Kernel ==========================

include $(CLEAR_VARS)

LOCAL_MODULE := linux
LOCAL_DESCRIPTION := Linux kernel
LOCAL_CATEGORY_PATH := system
LINUX_DEFAULT_CONFIG_FILE := \
	$(LOCAL_PATH)/arch/arm64/configs/bcm2711_defconfig

include $(BUILD_LINUX)

endif

