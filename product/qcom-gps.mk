PRODUCT_PACKAGES += \
    gps.msm8994 \
    flp.conf \
    gps.conf \
    izat.conf \
    lowi.conf \
    sap.conf \
    xtwifi.conf

PRODUCT_PROPERTY_OVERRIDES += \
    persist.gps.qc_nlp_in_use=0 \
    ro.gps.agps_provider=1

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml
