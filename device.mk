
LOCAL_PATH := device/lge/judyln

# Define hardware platform
PRODUCT_PLATFORM := sdm845

PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)/bootctrl \
    $(LOCAL_PATH)/gpt-utils

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

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    android.hardware.boot@1.0-impl-wrapper.recovery \
    android.hardware.boot@1.0-impl-wrapper \
    android.hardware.boot@1.0-impl.recovery \
    bootctrl.$(PRODUCT_PLATFORM) \
    bootctrl.$(PRODUCT_PLATFORM).recovery


# Encryption
PRODUCT_PACKAGES += \
    resetprop \
    strace \
    crash_dump \
    init.recovery.vold_decrypt.rc \
    vdc_pie

# But why
PRODUCT_PACKAGES += \
    recovery