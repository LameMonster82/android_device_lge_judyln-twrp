#
# Copyright 2017 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := judyln

$(call inherit-product, build/target/product/core_64_bit.mk)
$(call inherit-product, build/target/product/aosp_base.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/lge/judyln/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := judyln
PRODUCT_NAME := omni_judyln
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG G7 ThinQ
PRODUCT_MANUFACTURER := LG

PRODUCT_BUILD_PROP_OVERRIDES += \
		TARGET_DEVICE=judyln \
		PRODUCT_NAME=judyln_lao_com \
		PRIVATE_BUILD_DESC="judyln_lao_com-user 10 QKQ1.191222.002 2032918019cf0 release-keys"

BUILD_FINGERPRINT := "lge/judyln_lao_com/judyln:10/QKQ1.191222.002/2032918019cf0:user/release-keys"
