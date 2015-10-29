# Release name
PRODUCT_RELEASE_NAME := Nexus7

# Inherit AOSP device configuration
$(call inherit-product, device/asus/flo/full_flo.mk)

# Inherit common product files.
$(call inherit-product, vendor/eos/config/common.mk)

# Inherit tablet config.
$(call inherit-product, vendor/eos/config/common_full_tablet_wifionly.mk)

# Setup device specific product configuration.
PRODUCT_DEVICE := flo
PRODUCT_NAME := eos_flo
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

# Build the kernel
TARGET_KERNEL_SOURCE := kernel/asus/flo
TARGET_KERNEL_CONFIG := eos_flo_defconfig
TARGET_VARIANT_CONFIG := eos_flo_defconfig
TARGET_SELINUX_CONFIG := eos_flo_defconfig
#TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.7

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=razor \
    BUILD_FINGERPRINT=google/razor/flo:6.0/MRA58K/2256973:user/release-keys \
    PRIVATE_BUILD_DESC="razor-user 6.0 MRA58K 2256973 release-keys"

# TouchControl package.
#PRODUCT_PACKAGES += \
#	TouchControl

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/eos/prebuilt/common/bootanimations/BOOTANIMATION-FLO.zip:system/media/bootanimation.zip
