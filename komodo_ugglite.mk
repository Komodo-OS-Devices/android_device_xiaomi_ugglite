#
# Copyright (C) 2016 The CyanogenMod Project
#               2017-2019 The LineageOS Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_m.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/komodo/config/common_full_phone.mk)
# CURRENT_BUILD_TYPE := nogapps
TARGET_GAPPS_ARCH :=arm64
#$(call inherit-product-if-exists, vendor/pixelgapps/pixel-gapps.mk)
KOMODO_OFFICIAL := true
# TARGET_BOOT_ANIMATION_RES := 720


# Inherit from riva device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := ugglite
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi Note 5A Lite
PRODUCT_NAME := komodo_ugglite

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := ugglite

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="ugglite" \
    PRODUCT_NAME="ugglite" \
    PRIVATE_BUILD_DESC="ugglite-user 7.1.2 N2G47H V11.0.3.0.NDFMIXM release-keys"

#BUILD_FINGERPRINT := "xiaomi/ugglite/ugglite:7.1.2/N2G47H/V11.0.3.0.NDFMIXM:user/release-keys"

# USING TISSOT FP
BUILD_FINGERPRINT := 
"xiaomi/tissot/tissot_sprout:8.0.0/OPR1.170623.026/8.1.10:user/release-keys"
