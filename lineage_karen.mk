#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from karen device
$(call inherit-product, device/oneplus/karen/device.mk)

PRODUCT_DEVICE := karen
PRODUCT_NAME := lineage_karen
PRODUCT_BRAND := oneplus
PRODUCT_MODEL := karen
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_k6893v1_64_k419-user 12 SP1A.210812.016 1679626296286 release-keys"

BUILD_FINGERPRINT := OnePlus/CPH2401/OP557Al1:12/SP1A.210812.016/1679626296286:user/release-keys
