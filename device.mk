# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Screen density
PRODUCT_AAPT_CONFIG := normal xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Languages
PRODUCT_PROPERTY_OVERRIDES += \
	ro.product.locale.language=en \
	ro.product.locale.region=US
	
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libc2dcolorconvert \
    libdashplayer \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdecHevc \
    libOmxVdec \
    libOmxVenc \
    libOmxVidcCommon \
    libextmedia_jni \
    libstagefrighthw	

# Rootdir files
ROOTDIR_FILES := \
	$(LOCAL_PATH)/rootdir/fstab.qcom \
	$(LOCAL_PATH)/rootdir/init.qcom.bms.sh \
	$(LOCAL_PATH)/rootdir/init.qcom.class_core.sh \
	$(LOCAL_PATH)/rootdir/init.qcom.early_boot.sh \
	$(LOCAL_PATH)/rootdir/init.qcom.factory.rc \
	$(LOCAL_PATH)/rootdir/init.qcom.rc \
	$(LOCAL_PATH)/rootdir/init.qcom.sh \
	$(LOCAL_PATH)/rootdir/init.qcom.syspart_fixup.sh \
	$(LOCAL_PATH)/rootdir/init.qcom.usb.rc \
	$(LOCAL_PATH)/rootdir/init.qcom.usb.sh \
	$(LOCAL_PATH)/rootdir/ueventd.qcom.rc 
#	$(LOCAL_PATH)/rootdir/property_contexts


# For userdebug builds
ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.secure=0 \
	ro.adb.secure=0 \
	ro.debuggable=1 \
	persist.sys.root_access=1 \
	persist.service.adb.enable=1

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := cm_ido
PRODUCT_DEVICE := ido
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 3
