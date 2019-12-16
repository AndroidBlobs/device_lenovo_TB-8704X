LOCAL_PATH := $(call my-dir)
ifeq ($(TARGET_DEVICE),TB-8704X)
include $(call all-makefiles-under,$(LOCAL_PATH))
include $(CLEAR_VARS)
endif