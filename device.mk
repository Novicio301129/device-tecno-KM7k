#
# Copyright (C) 2026 The Android Open Source Project
#

# Inherit from proprietary blobs
$(call inherit-product, vendor/tecno/KM7k/KM7k-vendor.mk)

# Screen density & Display
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := 480

# Framework / Hardware acceleration
PRODUCT_PACKAGES += \
    android.hardware.audio.service.mediatek \
    android.hardware.biometrics.fingerprint@2.1-service-mediatek \
    android.hardware.lights-service.mediatek \
    libion

# Properties setup
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.mtk_audio_profile=n \
    ro.hardware.audio.primary=mediatek
