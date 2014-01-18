# config.mk
#
# Product-specific compile-time definitions.
#

include device/qcom/msm7x27/BoardConfigCommon.mk 

SMALLER_FONT_FOOTPRINT := true
MINIMAL_FONT_FOOTPRINT := true
# Some framework code requires this to enable BT
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/generic/common/bluetooth

WPA_SUPPLICANT_VERSION := VER_0_8_X

USE_OPENGL_RENDERER := true

BOARD_USE_LEGACY_UI := true
## Kernel
TARGET_KERNEL_SOURCE := kernel/lge/msm7x27-3.0.x
TARGET_KERNEL_CONFIG := thunderc-test_defconfig
COMMON_GLOBAL_CFLAGS += -DBOARD_CHARGING_CMDLINE_NAME='"lge.reboot"' -DBOARD_CHARGING_CMDLINE_VALUE='"pwroff"'
## *** Copy LG Kernel Headers here if necessary, DO NOT use Android auto-generated headers *** 
TARGET_SPECIFIC_HEADER_PATH := device/lge/msm7x27-common/include3x 
BOARD_KERNEL_CMDLINE := mem=471M console=ttyMSM2,115200n8 androidboot.hardware=thunderc lge.rev=10
BOARD_KERNEL_BASE := 0x12200000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_BOOTLOADER_BOARD_NAME := thunderc
TARGET_OTA_ASSERT_DEVICE := thunderc,LS670,VM670,thunderc_LS670,thunderc_VM670
TARGET_RECOVERY_FSTAB := device/lge/thunderc/fstab.thunderc


