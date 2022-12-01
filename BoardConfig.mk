#
# Copyright (C) 2023 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

BOARD_VENDOR := motorola

DEVICE_PATH := device/motorola/corfur

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := kryo385

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := kryo385

# Bootloader
TARGET_NO_BOOTLOADER := true

# Build
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# Kernel
BOARD_BOOT_HEADER_VERSION := 3
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200n8
BOARD_KERNEL_CMDLINE += androidboot.hardware=qcom androidboot.console=ttyMSM0
BOARD_KERNEL_CMDLINE += androidboot.memcg=1 lpm_levels.sleep_disabled=1
BOARD_KERNEL_CMDLINE += video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237
BOARD_KERNEL_CMDLINE += service_locator.enable=1 androidboot.usbcontroller=4e00000.dwc3
BOARD_KERNEL_CMDLINE += swiotlb=0 loop.max_part=7 cgroup.memory=nokmem,nosocket
BOARD_KERNEL_CMDLINE += pcie_ports=compat loop.max_part=7 iptable_raw.raw_before_defrag=1
BOARD_KERNEL_CMDLINE += ip6table_raw.raw_before_defrag=1 androidboot.hab.csv=8
BOARD_KERNEL_CMDLINE += androidboot.hab.cid=50
BOARD_KERNEL_CMDLINE += androidboot.hab.product=corfur
BOARD_KERNEL_CMDLINE += firmware_class.path=/vendor/firmware_mnt/image
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_RAMDISK_USE_LZ4 := true
TARGET_KERNEL_ADDITIONAL_FLAGS := DTC_EXT=$(shell pwd)/prebuilts/misc/linux-x86/dtc/dtc LLVM=1
TARGET_KERNEL_SOURCE := kernel/motorola/sm6375
TARGET_KERNEL_CONFIG := vendor/holi-qgki_defconfig

# Kernel Modules
BOARD_DO_NOT_STRIP_VENDOR_MODULES := true
BOARD_VENDOR_KERNEL_MODULES := \
	$(KERNEL_MODULES_OUT)/apr_dlkm.ko \
	$(KERNEL_MODULES_OUT)/pinctrl_lpi_dlkm.ko \
	$(KERNEL_MODULES_OUT)/btpower.ko \
	$(KERNEL_MODULES_OUT)/mbhc_dlkm.ko \
	$(KERNEL_MODULES_OUT)/wcd937x_slave_dlkm.ko \
	$(KERNEL_MODULES_OUT)/platform_dlkm.ko \
	$(KERNEL_MODULES_OUT)/rdbg.ko \
	$(KERNEL_MODULES_OUT)/q6_dlkm.ko \
	$(KERNEL_MODULES_OUT)/wcd938x_slave_dlkm.ko \
	$(KERNEL_MODULES_OUT)/va_macro_dlkm.ko \
	$(KERNEL_MODULES_OUT)/wsa881x_analog_dlkm.ko \
	$(KERNEL_MODULES_OUT)/adsp_loader_dlkm.ko \
	$(KERNEL_MODULES_OUT)/snd_event_dlkm.ko \
	$(KERNEL_MODULES_OUT)/bolero_cdc_dlkm.ko \
	$(KERNEL_MODULES_OUT)/q6_notifier_dlkm.ko \
	$(KERNEL_MODULES_OUT)/native_dlkm.ko \
	$(KERNEL_MODULES_OUT)/rx_macro_dlkm.ko \
	$(KERNEL_MODULES_OUT)/stub_dlkm.ko \
	$(KERNEL_MODULES_OUT)/wcd938x_dlkm.ko \
	$(KERNEL_MODULES_OUT)/machine_dlkm.ko \
	$(KERNEL_MODULES_OUT)/q6_pdr_dlkm.ko \
	$(KERNEL_MODULES_OUT)/tx_macro_dlkm.ko \
	$(KERNEL_MODULES_OUT)/wcd9xxx_dlkm.ko \
	$(KERNEL_MODULES_OUT)/swr_dlkm.ko \
	$(KERNEL_MODULES_OUT)/aw882xx_k419.ko \
	$(KERNEL_MODULES_OUT)/camera.ko \
	$(KERNEL_MODULES_OUT)/aw882xx_acf.ko \
	$(KERNEL_MODULES_OUT)/wcd937x_dlkm.ko \
	$(KERNEL_MODULES_OUT)/wcd_core_dlkm.ko \
	$(KERNEL_MODULES_OUT)/bt_fm_slim.ko \
	$(KERNEL_MODULES_OUT)/swr_ctrl_dlkm.ko \
	$(KERNEL_MODULES_OUT)/qca_cld3_wlan.ko \
	$(KERNEL_MODULES_OUT)/rmnet_core.ko \
	$(KERNEL_MODULES_OUT)/rmnet_ctl.ko \
	$(KERNEL_MODULES_OUT)/rmnet_offload.ko \
	$(KERNEL_MODULES_OUT)/rmnet_shs.ko \
	$(KERNEL_MODULES_OUT)/utags.ko \
	$(KERNEL_MODULES_OUT)/mmi_relay.ko \
	$(KERNEL_MODULES_OUT)/mmi_info.ko \
	$(KERNEL_MODULES_OUT)/mmi_annotate.ko \
	$(KERNEL_MODULES_OUT)/sensors_class.ko \
	$(KERNEL_MODULES_OUT)/moto_f_usbnet.ko \
	$(KERNEL_MODULES_OUT)/watchdogtest.ko \
	$(KERNEL_MODULES_OUT)/qpnp_adaptive_charge.ko \
	$(KERNEL_MODULES_OUT)/fpc1020_mmi.ko \
	$(KERNEL_MODULES_OUT)/wl2864c.ko \
	$(KERNEL_MODULES_OUT)/wl2866d.ko \
	$(KERNEL_MODULES_OUT)/cci_intf.ko \
	$(KERNEL_MODULES_OUT)/sensors_class.ko \
	$(KERNEL_MODULES_OUT)/mmi_relay.ko \
	$(KERNEL_MODULES_OUT)/touchscreen_mmi.ko \
	$(KERNEL_MODULES_OUT)/focaltech_v2_mmi.ko \
	$(KERNEL_MODULES_OUT)/st21nfc.ko \
	$(KERNEL_MODULES_OUT)/sx937x_sar.ko \
	$(KERNEL_MODULES_OUT)/mmi_sys_temp.ko \
	$(KERNEL_MODULES_OUT)/mmi-smbcharger-iio.ko \
	$(KERNEL_MODULES_OUT)/mmi_sc8549.ko \
	$(KERNEL_MODULES_OUT)/fm_ctrl.ko \
	$(KERNEL_MODULES_OUT)/mmi_parallel_charger_iio.ko

BOARD_VENDOR_RAMDISK_KERNEL_MODULES := \
	$(KERNEL_MODULES_OUT)/utags.ko \
	$(KERNEL_MODULES_OUT)/mmi_relay.ko \
	$(KERNEL_MODULES_OUT)/mmi_info.ko \
	$(KERNEL_MODULES_OUT)/mmi_annotate.ko \
	$(KERNEL_MODULES_OUT)/sensors_class.ko \
	$(KERNEL_MODULES_OUT)/moto_f_usbnet.ko \
	$(KERNEL_MODULES_OUT)/watchdogtest.ko \
	$(KERNEL_MODULES_OUT)/qpnp_adaptive_charge.ko \
	$(KERNEL_MODULES_OUT)/fpc1020_mmi.ko \
	$(KERNEL_MODULES_OUT)/wl2864c.ko \
	$(KERNEL_MODULES_OUT)/wl2866d.ko \
	$(KERNEL_MODULES_OUT)/cci_intf.ko \
	$(KERNEL_MODULES_OUT)/sensors_class.ko \
	$(KERNEL_MODULES_OUT)/mmi_relay.ko \
	$(KERNEL_MODULES_OUT)/touchscreen_mmi.ko \
	$(KERNEL_MODULES_OUT)/focaltech_v2_mmi.ko \
	$(KERNEL_MODULES_OUT)/st21nfc.ko \
	$(KERNEL_MODULES_OUT)/sx937x_sar.ko \
	$(KERNEL_MODULES_OUT)/mmi_sys_temp.ko \
	$(KERNEL_MODULES_OUT)/mmi-smbcharger-iio.ko \
	$(KERNEL_MODULES_OUT)/mmi_sc8549.ko \
	$(KERNEL_MODULES_OUT)/fm_ctrl.ko \
	$(KERNEL_MODULES_OUT)/mmi_parallel_charger_iio.ko

# A/B
AB_OTA_UPDATER := true

AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    product \
    system \
    system_ext \
    vbmeta \
    vbmeta_system \
    vendor \
    vendor_boot

# Audio
AUDIO_FEATURE_ENABLED_EXT_AMPLIFIER := false
AUDIO_FEATURE_ENABLED_GKI := true

# Display
TARGET_USES_GRALLOC1 := true

# DRM
TARGET_ENABLE_MEDIADRM_64 := true

# GPS
LOC_HIDL_VERSION := 4.0

# Metadata
BOARD_USES_METADATA_PARTITION := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 14512287744 # ( BOARD_SUPER_PARTITION_SIZE - 4MB )
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_USERDATAIMAGE_PARTITION_SIZE := 102247673856
BOARD_BUILD_VENDOR_RAMDISK_IMAGE := true
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := product system system_ext vendor
BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
TARGET_COPY_OUT_VENDOR := vendor

# Recovery
BOARD_USES_RECOVERY_AS_BOOT := true
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
TARGET_NO_RECOVERY := true
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 90
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_RECOVERY_DEVICE_DIRS += $(DEVICE_PATH)
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
TARGET_RECOVERY_WIPE := $(DEVICE_PATH)/recovery/recovery.wipe

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# Security
VENDOR_SECURITY_PATCH := 2023-01-01

# SELinux
BUILD_BROKEN_VENDOR_PROPERTY_NAMESPACE := true

# Verified Boot - Recovery
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# Verified Boot - System
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_VBMETA_SYSTEM := system system_ext product
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 1

# UFS
#namespace definition for librecovery_updater
#differentiate legacy 'sg' or 'bsg' framework
SOONG_CONFIG_NAMESPACES += ufsbsg
SOONG_CONFIG_ufsbsg += ufsframework
SOONG_CONFIG_ufsbsg_ufsframework := bsg

# WiFi
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_PRIVATE_LIB_EVENT := "ON"
CONFIG_IEEE80211AX := true
WIFI_DRIVER_DEFAULT := qca_cld3
WIFI_DRIVER_STATE_CTRL_PARAM := "/dev/wlan"
WIFI_DRIVER_STATE_OFF := "OFF"
WIFI_DRIVER_STATE_ON := "ON"
WIFI_HIDL_FEATURE_DUAL_INTERFACE := true
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true
WPA_SUPPLICANT_VERSION := VER_0_8_X

# inherit from the proprietary version
include vendor/motorola/corfur/BoardConfigVendor.mk
