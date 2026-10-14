LOCAL_PATH := $(call my-dir)

# Awtomatikong i-include ang lahat ng prebuilt overlay APKs sa loob ng overlay folder
include $(CLEAR_VARS)
LOCAL_MODULE := FrameworkResOverlay
LOCAL_SRC_FILES := FrameworkResOverlay/FrameworkResOverlay.apk
LOCAL_CERTIFICATE := platform
LOCAL_PRODUCT_MODULE := true
LOCAL_MODULE_CLASS := APPS
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := WifiResOverlay
LOCAL_SRC_FILES := WifiResOverlay/WifiResOverlay.apk
LOCAL_CERTIFICATE := platform
LOCAL_PRODUCT_MODULE := true
LOCAL_MODULE_CLASS := APPS
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ConnectivityResOverlay
LOCAL_SRC_FILES := ConnectivityResOverlay/ConnectivityResOverlay.apk
LOCAL_CERTIFICATE := platform
LOCAL_PRODUCT_MODULE := true
LOCAL_MODULE_CLASS := APPS
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := MtkSettingsResOverlay
LOCAL_SRC_FILES := MtkSettingsResOverlay/MtkSettingsResOverlay.apk
LOCAL_CERTIFICATE := platform
LOCAL_PRODUCT_MODULE := true
LOCAL_MODULE_CLASS := APPS
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := SettingsProviderResOverlay
LOCAL_SRC_FILES := SettingsProviderResOverlay/SettingsProviderResOverlay.apk
LOCAL_CERTIFICATE := platform
LOCAL_PRODUCT_MODULE := true
LOCAL_MODULE_CLASS := APPS
include $(BUILD_PREBUILT)
