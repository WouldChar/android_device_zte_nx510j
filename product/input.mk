# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/cyttsp5_btn.kl:system/usr/keylayout/cyttsp5_btn.kl \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/cyttsp5_mt.kl:system/usr/keylayout/cyttsp5_mt.kl \
    $(LOCAL_PATH)/keylayout/qpnp_pon.kl:system/usr/keylayout/qpnp_pon.kl \
    $(LOCAL_PATH)/keylayout/goodix-ts.kl:system/usr/keylayout/goodix-ts.kl \
    $(LOCAL_PATH)/keylayout/Generic.kl:system/usr/keylayout/Generic.kl

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml
