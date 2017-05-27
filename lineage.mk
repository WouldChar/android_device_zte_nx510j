# Copyright (C) 2016 The CyanogenMod Project
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

# Boot animation
TARGET_SCREEN_HEIGHT := 1080
TARGET_SCREEN_WIDTH := 1920

$(call inherit-product, vendor/cm/config/common.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Charger
PRODUCT_PACKAGES += charger charger_res_images \
    init.recovery.qcom.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/dt.img:dt.img \
    $(LOCAL_PATH)/prebuilt/kernel:kernel \
    $(LOCAL_PATH)/fstab.qcom:root/fstab.qcom \
    $(LOCAL_PATH)/recovery/root/etc/twrp.fstab:root/etc/twrp.fstab

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_nx510j
BOARD_VENDOR := Nubia
TARGET_VENDOR := Nubia
PRODUCT_DEVICE := nx510j

PRODUCT_GMS_CLIENTID_BASE := android-nubia

PRODUCT_BRAND := Nubia
PRODUCT_MODEL := NX510J
PRODUCT_MANUFACTURER := Nubia
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=NX510J PRODUCT_NAME=NX510J

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Nubia/NX510J/NX510J:7.1.2/Nougat/WouldChar:user/release-keys \
    PRIVATE_BUILD_DESC="NX510J-user 7.1.2 Nougat WouldChar release-keys"
