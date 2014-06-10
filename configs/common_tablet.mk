# Inherit common stuff
$(call inherit-product, vendor/sokp/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/sokp/overlay/common_tablet

