$(call inherit-product, $(SRC_TARGET_DIR)/product/full_64bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64bit.mk)
$(call inherit-product, vendor/tecno/KM7k/KM7k-vendor.mk)

PRODUCT_NAME := aosp_KM7k
PRODUCT_DEVICE := KM7k
PRODUCT_BRAND := Tecno
PRODUCT_MODEL := Tecno KM7k
PRODUCT_MANUFACTURER := Tecno

PRODUCT_SHIPPING_API_LEVEL := 36
PRODUCT_FULL_TREBLE_OVERRIDE := true
