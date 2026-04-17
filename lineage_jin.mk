#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from jin device
$(call inherit-product, device/oppo/jin/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_jin
PRODUCT_DEVICE := jin
PRODUCT_MANUFACTURER := OPPO
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := PENM00

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="PENM00-user 13 TP1A.220905.001 R.1e3a290-2-560d4 release-keys" \
    BuildFingerprint=OPPO/PENM00/OP4EC1:13/TP1A.220905.001/R.1e3a290-2-560d4:user/release-keys \
    DeviceName=OP4EC1 \
    DeviceProduct=PENM00 \
    SystemDevice=OP4EC1 \
    SystemName=PENM00
