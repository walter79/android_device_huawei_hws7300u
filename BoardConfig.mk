TARGET_SPECIFIC_HEADER_PATH := device/huawei/hws7300u/include

# Bootloader, radio
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOOTLOADER_BOARD_NAME := Mediapad

# Platform
TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON := true

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

# Scorpion optimizations
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
TARGET_USE_SCORPION_PLD_SET := true
TARGET_SCORPION_BIONIC_PLDOFFS := 6
TARGET_SCORPION_BIONIC_PLDSIZE := 128

# Wifi
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
WPA_SUPPLICANT_VERSION      := VER_0_8_X
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_NAME     := "dhd"
BOARD_WLAN_DEVICE           := bcm4329
WIFI_DRIVER_FW_PATH_STA     := "/etc/wifi/rtecdc-bcm4329.bin"
WIFI_DRIVER_FW_PATH_AP      := "/etc/wifi/rtecdc-apsta-bcm4329.bin"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/etc/wifi/rtecdc-bcm4329.bin nvram_path=/etc/wifi/nvram-bcm4329.txt"
BOARD_HAVE_HUAWEI_WIFI := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default

# Graphics
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
BOARD_EGL_CFG := device/huawei/hws7300u/prebuilt/egl.cfg

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Camera
BOARD_NEEDS_MEMORYHEAPPMEM := true
TARGET_DISABLE_ARM_PIE := true
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB

#kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=hws7300u vmalloc=578M kgsl.ptcount=16
BOARD_KERNEL_BASE := 0x40300000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := device/huawei/hws7300u/kernel
#TARGET_KERNEL_SOURCE := kernel/huawei/hws7300u
#TARGET_KERNEL_CONFIG := mediapad_defconfig

# Usb connection to PC
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

# Audio
# BOARD_USE_QCOM_LPA := true

# CWM Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_CUSTOM_GRAPHICS:= ../../../device/huawei/hws7300u/recovery/graphics.c
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true

# TWRP Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
# DEVICE_RESOLUTION := 1280x800
# SP1_NAME := "cust"
# SP1_BACKUP_METHOD := image
# SP1_MOUNTABLE := 1
# TW_INTERNAL_STORAGE_PATH := "/data/media"
# TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
# TW_EXTERNAL_STORAGE_PATH := "/external_sd"
# TW_EXTERNAL_STORAGE_MOUNT_POINT := "/external_sd"
# TW_FLASH_FROM_STORAGE := true
