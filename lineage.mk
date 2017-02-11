# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/zte/bladevec4g/device_bladevec4g.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

# Release name
PRODUCT_RELEASE_NAME := ZTE Blade Vec 4G
PRODUCT_NAME := lineage_bladevec4g
PRODUCT_MODEL := bladevec4g
PRODUCT_DEVICE := bladevec4g
PRODUCT_MANUFACTURER := ZTE
PRODUCT_BRAND := zte
