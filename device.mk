DEVICE_PATH := device/xiaomi/corot

# API
PRODUCT_SHIPPING_API_LEVEL := 31

# A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    dtbo \
    boot \
    vendor_boot \
    system \
    system_ext \
    system_dlkm \
    product \
    vendor \
    vendor_dlkm \
    odm \
    odm_dlkm \
    mi_ext \
    vbmeta \
    vbmeta_system \
    vbmeta_vendor

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier \
    checkpoint_gc

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/mtk_plpath_utils \
    FILESYSTEM_TYPE_system=erofs \
    POSTINSTALL_OPTIONAL_system=true

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_vendor=true \
    POSTINSTALL_PATH_vendor=bin/checkpoint_gc \
    FILESYSTEM_TYPE_vendor=erofs \
    POSTINSTALL_OPTIONAL_vendor=true

# Dynamic
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)
