LOCAL_PATH := device/samsung/a10

# Fastbootd
PRODUCT_PACKAGES += \
	fastbootd \
	android.hardware.fastboot@1.0-impl-mock \
	android.hardware.fastboot@1.0-impl-mock.recovery

# Flashlight initializer
PRODUCT_PACKAGES += init_flashlight

PRODUCT_PRODUCT_PROPERTIES += \
	ro.fastbootd.available=true
