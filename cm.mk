## Specify phone tech before including full_phone
#$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := ido

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, vendor/cm/config/telephony.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/ido/device_ido.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ido
PRODUCT_NAME := cm_ido
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 3
PRODUCT_MANUFACTURER := Xiaomi
