LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := librtmp

LOCAL_CFLAGS := -DNO_SSL -DNO_CRYPTO
LOCAL_EXPORT_CFLAGS := 

#LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../3rdparty/include/

#LOCAL_EXPORT_C_INCLUDES := \
	$(LOCAL_PATH)/

LOCAL_SRC_FILES := \
	$(wildcard $(LOCAL_PATH)/../*.c)

#LOCAL_LDLIBS := -lz
#LOCAL_STATIC_LIBRARIES := libssl libcrypto cpufeatures

include $(BUILD_SHARED_LIBRARY)
