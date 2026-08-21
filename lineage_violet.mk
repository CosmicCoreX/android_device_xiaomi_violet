#
# Copyright (C) 2018-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit MiuiCamera
$(call inherit-product-if-exists, vendor/MiuiCamera/config.mk)

#$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
LUNARIS_BUILD_TYPE := UNOFFICIAL
SURFACE_FLINGER_BOOST := true
TARGET_ENABLE_BLUR := true
TARGET_USE_MAPS := true
TARGET_USE_FILES := true
TARGET_BOOT_ANIMATION_RES := 1080

#GMS
WITH_GMS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="violet-user 10 QKQ1.190915.002 V12.5.1.0.QFHINXM release-keys" \
    BuildFingerprint="xiaomi/violet/violet:10/QKQ1.190915.002/V12.5.1.0.QFHINXM:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
