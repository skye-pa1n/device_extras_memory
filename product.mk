#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)

# Blur
ifndef TARGET_NOT_USES_BLUR
    USES_BLUR=1
endif
ifeq ($(TARGET_NOT_USES_BLUR),true)
    USES_BLUR=0
else
    USES_BLUR=1
endif

PRODUCT_PRODUCT_PROPERTIES += \
    ro.sf.blurs_are_expensive=$(USES_BLUR) \
    ro.surface_flinger.supports_background_blur=$(USES_BLUR) \
    persist.sysui.disableBlur=$(shell echo $$((1 - $(USES_BLUR))))

# Freeform Multiwindow
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.freeform_window_management.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.freeform_window_management.xml

# Init
PRODUCT_PACKAGES += init.device.perf.rc

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Properties
include $(LOCAL_PATH)/properties/common.mk

# Speed profile services and wifi-service to reduce RAM and storage
# PRODUCT_SYSTEM_SERVER_COMPILER_FILTER := speed-profile
PRODUCT_ALWAYS_PREOPT_EXTRACTED_APK := true
PRODUCT_USE_PROFILE_FOR_BOOT_IMAGE := true
PRODUCT_DEX_PREOPT_BOOT_IMAGE_PROFILE_LOCATION := frameworks/base/config/boot-image-profile.txt
PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD := false
USE_DEX2OAT_DEBUG := false

PRODUCT_DEXPREOPT_SPEED_APPS += \
    Settings \
    SystemUI
