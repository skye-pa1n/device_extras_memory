# ART
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    dalvik.vm.dex2oat64.enabled=true \
    dalvik.vm.dex2oat-filter=quicken \
    dalvik.vm.image-dex2oat-filter=quicken \
    ro.sys.fw.dex2oat_thread_count=8

ifeq ($(CONFIG_FHA_APPS),true)
# RAM managent
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.config.fha_enable=true \
    ro.sys.fw.bg_apps_limit=32 \
    ro.config.dha_cached_max=16 \
    ro.config.dha_empty_max=42 \
    ro.config.dha_empty_init=32 \
    ro.config.dha_lmk_scale=0.545 \
    ro.config.dha_th_rate=2.3 \
    ro.config.sdha_apps_bg_max=64 \
    ro.config.sdha_apps_bg_min=8
endif

# Deep Sleep
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    pm.sleep_mode=1

# Render
PRODUCT_PROPERTY_OVERRIDES += \
    debug.cpurend.vsync=false
