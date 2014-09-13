# MTD/UBI utils Android build wrapper

mtdutils-cflags := -DVERSION='"1.5.1"'

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

# libmtd
LOCAL_SRC_FILES := lib/libmtd.c \
                   lib/libmtd_legacy.c \
                   lib/libcrc32.c
LOCAL_MODULE := libmtd
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include \
                    $(LOCAL_PATH)/ubi-utils/include \
                    $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include
LOCAL_ADDITIONAL_DEPENDENCIES := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr
LOCAL_CFLAGS += $(mtdutils-cflags)
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)

# libubi
LOCAL_SRC_FILES := ubi-utils/libubi.c \
                   ubi-utils/libubigen.c \
                   ubi-utils/libiniparser.c \
                   ubi-utils/libscan.c \
                   ubi-utils/dictionary.c \
                   ubi-utils/ubiutils-common.c
LOCAL_MODULE := libubi
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include \
                    $(LOCAL_PATH)/ubi-utils/include \
                    $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include
LOCAL_ADDITIONAL_DEPENDENCIES := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr
LOCAL_CFLAGS += $(mtdutils-cflags)
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)

# nanddump
LOCAL_SRC_FILES := nanddump.c
LOCAL_MODULE := nanddump
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_CFLAGS += $(mtdutils-cflags)
LOCAL_STATIC_LIBRARIES := libc libmtd
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT_SBIN)
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

# nandwrite
LOCAL_SRC_FILES := nandwrite.c
LOCAL_MODULE := nandwrite
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_CFLAGS += $(mtdutils-cflags)
LOCAL_STATIC_LIBRARIES := libc libmtd
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT_SBIN)
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

# ubiattach
LOCAL_SRC_FILES := ubi-utils/ubiattach.c
LOCAL_MODULE := ubiattach
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include \
                    $(LOCAL_PATH)/ubi-utils/include \
                    $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include
LOCAL_ADDITIONAL_DEPENDENCIES := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr
LOCAL_CFLAGS += $(mtdutils-cflags)
LOCAL_STATIC_LIBRARIES := libc libubi
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT_SBIN)
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

# ubidetach
LOCAL_SRC_FILES := ubi-utils/ubidetach.c
LOCAL_MODULE := ubidetach
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include \
                    $(LOCAL_PATH)/ubi-utils/include \
                    $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include
LOCAL_ADDITIONAL_DEPENDENCIES := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr
LOCAL_CFLAGS += $(mtdutils-cflags)
LOCAL_STATIC_LIBRARIES := libc libubi
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT_SBIN)
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

# ubimkvol
LOCAL_SRC_FILES := ubi-utils/ubimkvol.c
LOCAL_MODULE := ubimkvol
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include \
                    $(LOCAL_PATH)/ubi-utils/include \
                    $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include
LOCAL_ADDITIONAL_DEPENDENCIES := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr
LOCAL_CFLAGS += $(mtdutils-cflags)
LOCAL_STATIC_LIBRARIES := libc libubi
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT_SBIN)
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

# ubirmvol
LOCAL_SRC_FILES := ubi-utils/ubirmvol.c
LOCAL_MODULE := ubirmvol
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include \
                    $(LOCAL_PATH)/ubi-utils/include \
                    $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include
LOCAL_ADDITIONAL_DEPENDENCIES := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr
LOCAL_CFLAGS += $(mtdutils-cflags)
LOCAL_STATIC_LIBRARIES := libc libubi
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT_SBIN)
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

# ubiformat
LOCAL_SRC_FILES := ubi-utils/ubiformat.c
LOCAL_MODULE := ubiformat
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include \
                    $(LOCAL_PATH)/ubi-utils/include \
                    $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include
LOCAL_ADDITIONAL_DEPENDENCIES := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr
LOCAL_CFLAGS += $(mtdutils-cflags)
LOCAL_STATIC_LIBRARIES := libc libubi libmtd
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT_SBIN)
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

# ubinize
LOCAL_SRC_FILES := ubi-utils/ubinize.c
LOCAL_MODULE := ubinize
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include \
                    $(LOCAL_PATH)/ubi-utils/include \
                    $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include
LOCAL_ADDITIONAL_DEPENDENCIES := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr
LOCAL_CFLAGS += $(mtdutils-cflags)
LOCAL_STATIC_LIBRARIES := libc libubi libmtd
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT_SBIN)
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

# mtdinfo
LOCAL_SRC_FILES := ubi-utils/mtdinfo.c
LOCAL_MODULE := mtdinfo
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include \
                    $(LOCAL_PATH)/ubi-utils/include \
                    $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include
LOCAL_ADDITIONAL_DEPENDENCIES := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr
LOCAL_CFLAGS += $(mtdutils-cflags)
LOCAL_STATIC_LIBRARIES := libc libubi libmtd
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT_SBIN)
include $(BUILD_EXECUTABLE)
