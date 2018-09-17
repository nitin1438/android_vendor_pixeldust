# Copyright (C) 2018 The Pixel Dust Project
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

# Release name
PRODUCT_RELEASE_NAME := Zenfone_2_Laser
export TARGET_DEVICE := Z00L

# Inherit AOSP device configuration for marlin.
$(call inherit-product, device/asus/Z00L/aosp_Z00L.mk)

# Include common PixelDust stuff
include vendor/pixeldust/configs/pixeldust_phone.mk

# Include optional stuff (e.g. prebuilt apps)
include vendor/pixeldust/configs/system_optional.mk

# Setup device specific product configuration.
PRODUCT_NAME := pixeldust_Z00L
PRODUCT_BRAND := asus
PRODUCT_DEVICE := Z00L
PRODUCT_MODEL := Zenfone_2_Laser
PRODUCT_MANUFACTURER := Asus

PRODUCT_PROPERTY_OVERRIDES += \
    ro.pixeldust.maintainer="Mrinal Ghosh(mg712702)"

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/pixeldust/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

# Use SDCLANG
TARGET_USE_SDCLANG := true

