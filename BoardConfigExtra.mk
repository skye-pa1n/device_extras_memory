#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

EXTRA_PATH := device/extras/memory

# Properties
ifeq ($(TARGET_CONFIG_GFX),true)
TARGET_SYSTEM_EXT_PROP += $(EXTRA_PATH)/properties/system_ext.prop
endif
