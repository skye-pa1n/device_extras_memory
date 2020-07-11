# ART
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    dalvik.vm.dex2oat64.enabled=true \
    dalvik.vm.dex2oat-filter=quicken \
    dalvik.vm.image-dex2oat-filter=quicken \
    ro.sys.fw.dex2oat_thread_count=8

# Render
PRODUCT_PROPERTY_OVERRIDES += \
    debug.cpurend.vsync=false
