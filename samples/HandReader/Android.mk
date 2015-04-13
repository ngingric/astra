LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

# Sources
MY_SRC_FILES := \
$(LOCAL_PATH)/*.c

MY_SRC_FILE_EXPANDED := $(wildcard $(MY_SRC_FILES))
LOCAL_SRC_FILES := $(MY_SRC_FILE_EXPANDED:$(LOCAL_PATH)/%=%)

# Includes
LOCAL_C_INCLUDES := \
$(LOCAL_PATH)/../../include/

# Dependencies
LOCAL_SHARED_LIBRARIES := libSenseKit libSenseKitUL

# Output
LOCAL_MODULE := HandReader

include $(BUILD_EXECUTABLE)
