#
# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Specific overlay
DEVICE_PACKAGE_OVERLAYS += device/zte/bladevec4g/overlay

# Boot

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
TARGET_BOOTANIMATION_HALF_RES := true

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# Configs
PRODUCT_COPY_FILES += \
    device/zte/bladevec4g/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/zte/bladevec4g/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/zte/bladevec4g/etc/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
	device/zte/bladevec4g/etc/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    device/zte/bladevec4g/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/zte/bladevec4g/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/zte/bladevec4g/etc/thermal-engine-8226.conf:system/etc/thermal-engine-8226.conf

# Ramdisk
PRODUCT_COPY_FILES += \
    device/zte/bladevec4g/rootdir/fstab.qcom:root/fstab.qcom \
    device/zte/bladevec4g/rootdir/init.qcom.rc:root/init.qcom.rc \
    device/zte/bladevec4g/rootdir/init.qcom.sh:root/init.qcom.sh \
    device/zte/bladevec4g/rootdir/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/zte/bladevec4g/rootdir/ueventd.qcom.rc:root/ueventd.qcom.rc \
    device/zte/bladevec4g/rootdir/init.qcom.ril.sh:system/etc/init.qcom.ril.sh

PRODUCT_COPY_FILES += \
    device/zte/bladevec4g/rootdir/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/zte/bladevec4g/rootdir/init.wcnss.rc:root/init.wcnss.rc

PRODUCT_PROPERTY_OVERRIDES += ro.qualcomm.bt.hci_transport=smd

PRODUCT_PACKAGES += \
    FMRadio \
    libfmjni \
    wcnss_service \
    libwcnss_qmi

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.primary.msm8226 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    tinymix

# Misc dependency packages
PRODUCT_PACKAGES += \
    libxml2 \
    libcurl \
    libboringssl-compat \
	libstlport

# Ebtables
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# Keystore
PRODUCT_PACKAGES += keystore.msm8226

# Gello
PRODUCT_PACKAGES += \
    Gello

# GPS
PRODUCT_PACKAGES += \
    gps.msm8226

# HAL
PRODUCT_PACKAGES += \
    copybit.msm8226\
    gralloc.msm8226 \
    hwcomposer.msm8226 \
    lights.msm8226 \
    memtrack.msm8226 \
    power.msm8226 \
    sensors.msm8226 \
    sensors.qcom


# OMX
PRODUCT_PACKAGES += \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

#wifi
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    libwpa_client \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf \
    wpa_supplicant_overlay.conf \
    p2p_supplicant_overlay.conf \
    hostapd_default.conf \
    hostapd.accept \
    hostapd.deny

# Camera
PRODUCT_PACKAGES += \
    camera.msm8226 \
    Snap

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Common specific options
BOARD_HAS_QCOM_WCNSS := true

# Inherit from bladevec4g
$(call inherit-product, vendor/zte/bladevec4g/bladevec4g-vendor.mk)


# System properties
-include device/zte/bladevec4g/system_prop.mk
