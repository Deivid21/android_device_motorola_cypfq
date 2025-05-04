#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from cypfq device
$(call inherit-product, device/motorola/cypfq/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_cypfq
PRODUCT_DEVICE := cypfq
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g51 5g

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="cypfq_g-user 12 S2RYAS32.58-13-12-5-1-7 e0667 release-keys" \
    BuildFingerprint=motorola/cypfq_g/cypfq:11/S2RYAS32.58-13-12-5-1-7/e0667:user/release-keys \
    DeviceProduct=cypfq_g
