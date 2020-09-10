# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.gyro.disable=0 \
    persist.camera.HAL3.enabled=1

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-threads=6

# GPU
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196610
