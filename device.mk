
LOCAL_PATH := device/lge/judyln

# Define hardware platform
PRODUCT_PLATFORM := sdm845

PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)/bootctrl \
    $(LOCAL_PATH)/kernel-headers

# A/B support
PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_engine_sideload \
    update_verifier

PRODUCT_HOST_PACKAGES += \
    brillo_update_payload


PRODUCT_PACKAGES_DEBUG += \
    update_engine_client

# Enable update engine sideloading by including the static version of the
# boot_control HAL and its dependencies.
PRODUCT_STATIC_BOOT_CONTROL_HAL := \
    bootctrl.$(PRODUCT_PLATFORM) \
    libgptutils \
    libz \
    libcutils


# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    hwservicemanager