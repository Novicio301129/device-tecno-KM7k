$(call inherit-product, $(SRC_TARGET_DIR)/product/full_64bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64bit.mk)

# Inherit Device Configuration
$(call inherit-product, device/tecno/KM7k/device.mk)

PRODUCT_NAME := aosp_KM7k
PRODUCT_DEVICE := KM7k
PRODUCT_BRAND := Tecno
PRODUCT_MODEL := Tecno KM7k
PRODUCT_MANUFACTURER := Tecno

PRODUCT_SHIPPING_API_LEVEL := 36
PRODUCT_FULL_TREBLE_OVERRIDE := true
