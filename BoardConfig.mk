#
# Copyright (C) 2026 The Android Open Source Project
# BoardConfig.mk for Tecno KM7k (MT6789 / Helio G200 Platform)
#

LOCAL_PATH := $(call my-dir)

# Target Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Platform & Hardware (MT6789 Base)
BOARD_USES_MTK_HARDWARE := true
TARGET_BOARD_PLATFORM := mt6789

# Kernel / Boot Image Configuration (Header Version 4 / 4K Page Size)
BOARD_BOOT_HEADER_VERSION := 4
BOARD_PAGE_SIZE := 4096
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
TARGET_PREBUILT_DTB := $(LOCAL_PATH)/prebuilt/dtb

BOARD_MKBOOTIMG_ARGS := --header_version $(BOARD_BOOT_HEADER_VERSION) --pagesize $(BOARD_PAGE_SIZE)

# Recovery Configuration
BOARD_MOVE_RECOVERY_RESOURCES_TO_VENDOR_BOOT := true

# Dynamic Partitions (Tecno KM7k Super Partition)
BOARD_SUPER_PARTITION_SIZE := 9126805504
BOARD_SUPER_PARTITION_GROUPS := main_dynamic_partitions
BOARD_MAIN_DYNAMIC_PARTITIONS_SIZE := 9122611200
BOARD_MAIN_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext vendor product

# File Systems
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4

# SELinux Configuration
BOARD_SEPOLICY_DIRS += $(LOCAL_PATH)/sepolicy/vendor

# System and Vendor Properties
TARGET_SYSTEM_PROP += $(LOCAL_PATH)/configs/properties/system.prop
TARGET_VENDOR_PROP += $(LOCAL_PATH)/configs/properties/vendor.prop

# Include Vendor Board Config
-include vendor/tecno/KM7k/BoardConfigVendor.mk
