# Inherit AOSP device configuration for i9300.
$(call inherit-product, device/samsung/n7100/full_n7100.mk)

# Inherit common product files.
$(call inherit-product, vendor/sokp/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/sokp/configs/gsm.mk)

# Setup device specific product configuration.
PRODUCT_NAME := sokp_n7100
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := n7100
PRODUCT_MODEL := GT-N7100
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t03gxx TARGET_DEVICE=t03g BUILD_FINGERPRINT="samsung/t03gxx/t03g:4.1.1/JRO03C/N7100XXALJ3:user/release-keys" PRIVATE_BUILD_DESC="t03gxx-user 4.1.1 JRO03C N7100XXALJ3 release-keys"
PRODUCT_RELEASE_NAME := GT-N7100

PRODUCT_COPY_FILES += \
    vendor/aicp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation-alt.zip
