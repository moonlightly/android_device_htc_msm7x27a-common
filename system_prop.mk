#
# Property overrides msm7x27a
#

# Telephony
PRODUCT_PROPERTY_OVERRIDES += \
   mobiledata.interfaces=rmnet0 \
   rild.libpath=/system/lib/libhtc_ril.so \
   ro.telephony.ril_class=HtcMsm7x27aRIL \
   ro.telephony.ril.config=datacallapn,signalstrength

PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    ro.telephony.call_ring.multiple=false \
    ro.vold.umsdirtyratio=50 \
    persist.sys.purgeable_assets=1 \
    ro.telephony.call_ring.delay=3000 \
    ro.config.low_ram=true \
    ro.com.android.mobiledata=false \
    ro.com.android.dataroaming=false

# Dalvik Tweaks	
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.jit.codecachesize=0

# Use awesome player instead of nuplayer	
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.media.use-awesome=true \
    audio.offload.disable=1
	
# Disable atlas services on low-ram targets
PRODUCT_PROPERTY_OVERRIDES += \
    config.disable_atlas=true	

# Newer camera API isn't supported.
PRODUCT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1
    
# Optimize Art
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-flags "--compiler-filter=interpret-only" \
    dalvik.vm.image-dex2oat-flags "" \
    dalvik.vm.profiler=1 \
    dalvik.vm.isa.arm.features=div
    
# OMX - Media
#37491 is decimal sum of supported codecs in AAL
#codecs: AVI AC3 ASF AAC QCP DTS 3G2 MP2TS
PRODUCT_PROPERTY_OVERRIDES += \
    mm.enable.qcom_parser=37491 \
    mmp.enable.3g2=true \
    mm.enable.smoothstreaming=true \
    mm.disable.sec_smoothstreaming=true \
    media.aac_51_output_enabled=true

# VIDC: debug_levels
# 1:ERROR 2:HIGH 4:LOW 0:NOLOGS 7:AllLOGS
PRODUCT_PROPERTY_OVERRIDES += \
    vidc.debug.level=1
