#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/motorola/corfur

# Inherit from motorola sm6375-common
include device/motorola/sm6375-common/BoardConfigCommon.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := corfur

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest_corfur.xml

# Kernel
BOARD_KERNEL_CMDLINE += androidboot.hab.product=corfur
TARGET_KERNEL_CONFIG += vendor/lineage_corfur.config

# Kernel Modules
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load))
BOARD_VENDOR_KERNEL_MODULES_BLOCKLIST_FILE := $(DEVICE_PATH)/modules.blocklist
BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load.recovery))
BOOT_KERNEL_MODULES := $(BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD)

# Partitions
BOARD_USERDATAIMAGE_PARTITION_SIZE := 110782033920
ifneq ($(WITH_GMS),true)
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 3195027456
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 872398848
BOARD_SYSTEM_EXTIMAGE_PARTITION_RESERVED_SIZE := 914399232
endif
BOARD_MOT_DP_GROUP_SIZE := 7256141824 # ( BOARD_SUPER_PARTITION_SIZE/2 - 4MB )
BOARD_SUPER_PARTITION_SIZE := 14512291840

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 90

# Security
VENDOR_SECURITY_PATCH := 2023-07-01

# inherit from the proprietary version
include vendor/motorola/corfur/BoardConfigVendor.mk
