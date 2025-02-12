LOCAL_PATH := device/xiaomi/ido

# USE_CAMERA_STUB := true

-include device/cyanogen/msm8939-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/xiaomi/ido/BoardConfigVendor.mk

# Platform
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno405

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno405

# CPU
TARGET_CPU_CORTEX_A53 := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8916
TARGET_NO_BOOTLOADER := true

BOARD_KERNEL_CMDLINE := console=115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
#TARGET_KERNEL_CONFIG := ido_defconfig
#TARGET_KERNEL_SOURCE := kernel/xiaomi/ido
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/rootdir/kernel

# Partitions
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
# /proc/partitions * 2 * BLOCK_SIZE (512) = size in bytes
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 34197504
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13258652672
BOARD_CACHEIMAGE_PARTITION_SIZE := 274726912
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_FLASH_BLOCK_SIZE := 131072 # blockdev --getbsz /dev/block/mmcblk0p19

BOARD_HAS_NO_SELECT_BUTTON := true

# Qualcomm support
BOARD_USES_QC_TIME_SERVICES := true
BOARD_USES_QCOM_HARDWARE := true

# RIL
PROTOBUF_SUPPORTED := true
TARGET_RIL_VARIANT := caf

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WPA_SUPPLICANT_VERSION := VER_0_8_X
TARGET_USES_QCOM_WCNSS_QMI := true
TARGET_USES_WCNSS_CTRL := true
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME := "wlan"

MALLOC_IMPL := dlmalloc

# TWRP
DEVICE_RESOLUTION := 720x1280
BOARD_HAS_NO_REAL_SDCARD := true
#RECOVERY_SDCARD_ON_DATA := true
TW_TARGET_USES_QCOM_BSP := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_INCLUDE_CRYPTO := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TW_NEW_ION_HEAP := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_THEME := portrait_hdpi

# CWM
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true
BOARD_USES_MMCUTILS := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/twrp.fstab
