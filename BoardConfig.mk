#
# Product-specific compile-time definitions.
#

TARGET_BOARD_PLATFORM := msm7k
TARGET_CPU_ABI := armeabi

TARGET_NO_BOOTLOADER := true

TARGET_BOOTLOADER_BOARD_NAME := qcom

BOARD_KERNEL_CMDLINE := console=ttyMSM2,115200n8 androidboot.hardware=qcom
BOARD_KERNEL_BASE := 0x20000000

BOARD_BOOTIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x00280000)
BOARD_RECOVERYIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x00500000)
BOARD_SYSTEMIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x07500000)
BOARD_USERDATAIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x04ac0000)
# The size of a block that can be marked bad.
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
# The Streak actually has a "firstboot", which is the userdata mtd partition
# and then the "data" mount is actually on the internal storage.
# This is rather wierd. But let's treat the "data" mount as datadata
# and treat "firstboot" as data. Since that is how it is named... though not
# how it is used.
BOARD_HAS_DATADATA := true
BOARD_DATADATA_DEVICE := /dev/block/innersd0p6
BOARD_DATADATA_FILESYSTEM := auto
BOARD_CACHE_DEVICE := /dev/block/innersd0p5
BOARD_CACHE_FILESYSTEM := auto

BOARD_FORCE_RAMDISK_ADDRESS := 0x24000000