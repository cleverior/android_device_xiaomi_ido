$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/xiaomi/ido/ido-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/xiaomi/ido/overlay


#ifeq ($(TARGET_PREBUILT_KERNEL),)
#	LOCAL_KERNEL := device/xiaomi/ido/kernel
#else
#	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#endif

# Kernel
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/kernel:kernel \
    $(LOCAL_PATH)/rootdir/dt.img:dt.img

$(call inherit-product, build/target/product/full.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ido device
$(call inherit-product, device/xiaomi/ido/device.mk)

# Filesystem management tools
PRODUCT_PACKAGES += \
	setup_fs \
	e2fsck \
	f2fstat \
	fsck.f2fs \
	fibmap.f2fs \
	mkfs.f2fs

# Resolution
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ido
PRODUCT_NAME := full_ido
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 3
PRODUCT_MANUFACTURER := Xiaomi