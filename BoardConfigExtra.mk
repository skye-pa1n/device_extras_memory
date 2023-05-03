#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

EXTRA_PATH := device/extras/memory

ifeq ($(TARGET_CONFIG_JEMALLOC),true)
# Jemalloc
MALLOC_SVELTE := true
MALLOC_SVELTE_FOR_LIBC32 := true
endif

# Properties
ifeq ($(TARGET_CONFIG_GFX),true)
TARGET_SYSTEM_EXT_PROP += $(EXTRA_PATH)/properties/system_ext.prop
endif
