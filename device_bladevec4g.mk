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

# Specific overlay
DEVICE_PACKAGE_OVERLAYS += device/zte/bladevec4g/overlay

# Configs
PRODUCT_COPY_FILES += \
    device/zte/bladevec4g/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/zte/bladevec4g/etc/mixer_paths.xml:system/etc/mixer_paths.xml \

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Common specific options
BOARD_HAS_QCOM_WCNSS := true

# Inherit from msm8226-common
$(call inherit-product, vendor/zte/bladevec4g/bladevec4g-vendor.mk)

