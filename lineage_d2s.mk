#
# Copyright (C) 2021 The LineageOS Project
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

## Inherit from generic products, most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

## Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

## Inscreen Fingerprint HAL
TARGET_HAVE_FOD := true

## S Pen
TARGET_HAVE_SPEN := true

## Inherit from d2s device
$(call inherit-product, device/samsung/d2s/device.mk)

## Boot Animation
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_SCREEN_HEIGHT := 3040
TARGET_SCREEN_WIDTH := 1440

## Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

## Sakura Flags
SAKURA_MAINTAINER := MODEDGES
TARGET_BOOT_ANIMATION_RES := 1080
SAKURA_BUILD_TYPE := gapps

## Device identifier, this must come after all inclusions
PRODUCT_NAME := lineage_d2s
PRODUCT_DEVICE := d2s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-N975F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung
