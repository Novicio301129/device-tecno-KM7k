#
# Copyright (C) 2026 The Android Open Source Project
# Standalone device.mk for Tecno KM7k (MT6789 / Helio G200 Platform)
# Directly adapted from KM7k Stock Firmware Specs
#

LOCAL_PATH := device/tecno/KM7k

# Virtual A/B OTA Configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/vabc_features.mk)
$(call soong_config_set,update_engine,map_vabc_in_recovery,true)

AB_OTA_UPDATER := true
AB_OTA_PARTITIONS := \
    boot \
    dtbo \
    odm_dlkm \
    product \
    system \
    system_ext \
    vbmeta \
    vbmeta_system \
    vbmeta_vendor \
    vendor \
    vendor_boot \
    vendor_dlkm

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier \
    otapreopt_script \
    checkpoint_gc

PRODUCT_VIRTUAL_AB_COMPRESSION_METHOD := lz4

# Audio HAL & Packages
$(call soong_config_set,android_hardware_audio,run_64bit,true)
$(call soong_config_set_bool,android_hardware_audio,skip_speaker_layout_channel_mask_field,true)

PRODUCT_PACKAGES += \
    android.hardware.audio@7.0-impl:64 \
    android.hardware.audio.effect@7.0-impl:64 \
    android.hardware.audio.service \
    android.hardware.bluetooth.audio-impl:64 \
    android.hardware.soundtrigger@2.3-impl:64

PRODUCT_PACKAGES += \
    audio.primary.default:64 \
    audio.bluetooth.default:64 \
    audio.r_submix.default:64 \
    audio.usb.default:64

# Bluetooth HAL
PRODUCT_PACKAGES += \
    android.hardware.bluetooth-service.mediatek

# Boot Control HAL
PRODUCT_PACKAGES += \
    com.android.hardware.boot:64 \
    android.hardware.boot-service.default_recovery:64

# Camera HAL
PRODUCT_PACKAGES += \
    android.hardware.camera.common@1.0.vendor:64 \
    android.hardware.camera.device@3.6.vendor:64 \
    android.hardware.camera.provider@2.6.vendor:64

# Dalvik / Performance VM Configurations (Optimized for KM7k)
PRODUCT_VENDOR_PROPERTIES += \
    dalvik.vm.heapstartsize=24m \
    dalvik.vm.heapgrowthlimit=256m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.46 \
    dalvik.vm.heapminfree=8m \
    dalvik.vm.heapmaxfree=48m

# Display & Graphics
PRODUCT_PACKAGES += \
    android.hardware.graphics.composer@2.3-service \
    android.hardware.memtrack-service.mediatek \
    android.hardware.graphics.allocator@4.0.vendor:64 \
    android.hardware.graphics.mapper@4.0.vendor:64

# FastbootD & Recovery Tools
PRODUCT_PACKAGES += \
    android.hardware.fastboot-service.example_recovery \
    fastbootd:64

# Gatekeeper & Keymint (Security)
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-service \
    android.hardware.security.keymint-V1-ndk.vendor:64 \
    android.hardware.security.secureclock-V1-ndk.vendor:64 \
    android.hardware.security.sharedsecret-V1-ndk.vendor:64 \
    android.hardware.security.rkp-V3-ndk.vendor:64

# Health HAL
PRODUCT_PACKAGES += \
    android.hardware.health-service.mediatek \
    android.hardware.health-service.mediatek-recovery

# HIDL Libraries
PRODUCT_PACKAGES += \
    android.hidl.base@1.0:64 \
    android.hidl.allocator@1.0:64 \
    libhidltransport:64 \
    libhwbinder:64

# Rootdir Prebuilt Configurations (Extracted from KM7k Stock)
PRODUCT_PACKAGES += \
    fstab.mt6789 \
    init.insmod.mt6789.cfg \
    init.insmod.sh \
    init.mt6789.rc \
    init.project.rc \
    ueventd.mt6789.rc

# Hardware Permissions Files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml

# Runtime Resource Overlays (RRO) for Tecno KM7k
PRODUCT_PACKAGES += \
    FrameworkResOverlayKM7k \
    SettingsProviderResOverlayKM7k

# Sensors HAL
PRODUCT_PACKAGES += \
    android.hardware.sensors@2.1-service.multihal

# Thermal Service
PRODUCT_PACKAGES += \
    android.hardware.thermal-service.mediatek

# USB HAL
PRODUCT_PACKAGES += \
    android.hardware.usb-service.mediatek \
    android.hardware.usb.gadget-service.mediatek

# Wi-Fi HAL & Packages
PRODUCT_PACKAGES += \
    android.hardware.wifi-service \
    wpa_supplicant \
    hostapd

# Inherit from KM7k Vendor Proprietary Tree (Direct Match)
$(call inherit-product-if-exists, vendor/tecno/KM7k/KM7k-vendor.mk)
