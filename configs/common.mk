SUPERUSER_EMBEDDED := true

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/sokp/overlay/common

# Common dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/sokp/overlay/dictionaries

PRODUCT_PACKAGES += \
    BluetoothExt \
    CellBroadcastReceiver \
    libemoji \
    LatinImeDictionaryPack \
    Microbes \
    ROMControl \
    Stk \
    su \
    Torch 
    

# SOKP packages
PRODUCT_PACKAGES += \
    OmniSwitch \
    DashClock \
    KernelTweaker \
    Apollo \
    libcyanogen-dsp \
    audio_effects.conf

## Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libstagefright_soft_ffmpegadec \
    libstagefright_soft_ffmpegvdec \
    libFFmpegExtractor \
    libnamparser

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enterprise_mode=1 \
    ro.kernel.android.checkjni=0 \
    persist.sys.root_access=3

PRODUCT_PROPERTY_OVERRIDES += \
    ro.semc.sound_effects_enabled=true \
    ro.semc.xloud.supported=true \
    media.xloud.enable=1 \
    media.xloud.supported=true \
    ro.semc.enhance.supported=true

PRODUCT_PROPERTY_OVERRIDES += \
    persist.service.enhance.enable=1 \
    ro.semc.clearaudio.supported=true \
    persist.service.clearaudio.enable=1 \
    ro.sony.walkman.logger=1 \
    persist.service.walkman.enable=1 \
    ro.somc.clearphase.supported=true \
    persist.service.clearphase.enable=1 \
    af.resampler.quality=255

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product-res-path=framework/SemcGenericUxpRes.apk \
    af.resampler.quality=255 \
    ro.somc.clearphase.supported=true \
    ro.semc.xloud.supported=true \
    ro.somc.sforce.supported=true \
    ro.service.swiqi3.supported=true \
    persist.service.swiqi3.enable=1 \
    tunnel.decode=true

PRODUCT_PROPERTY_OVERRIDES += \
    tunnel.audiovideo.decode=true \
    persist.speaker.prot.enable=false \
    media.aac_51_output_enabled=true \
    dev.pm.dyn_samplingrate=1 \
    ro.HOME_APP_ADJ=1 \
    persist.sys.use_dithering=1 \
    presist.sys.font_clarity=0

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/sokp/prebuilt/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/sokp/prebuilt/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/sokp/prebuilt/bin/blacklist:system/addon.d/blacklist

# Installer
PRODUCT_COPY_FILES += \
    vendor/sokp/prebuilt/common/bin/persist.sh:install/bin/persist.sh \
    vendor/sokp/prebuilt/common/etc/persist.conf:system/etc/persist.conf

PRODUCT_COPY_FILES += \
    vendor/sokp/prebuilt/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so \
    vendor/sokp/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf

# init.d
PRODUCT_COPY_FILES += \
    vendor/sokp/prebuilt/common/etc/init.local.rc:root/init.sokp.rc \
    vendor/sokp/prebuilt/common/etc/init.d/00start:system/etc/init.d/00start \
    vendor/sokp/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/sokp/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/sokp/prebuilt/common/bin/sysinit:system/bin/sysinit

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

PRODUCT_PACKAGES += \
    e2fsck \
    mke2fs \
    tune2fs \
    libssh \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh \
    sftp \
    scp \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    ntfsfix \
    ntfs-3g

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Scarabaeus.ogg \
    ro.config.notification_sound=Antimony.ogg \
    ro.config.alarm_alert=Scandium.ogg

PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Inherit common build.prop overrides
-include vendor/sokp/configs/common_versions.mk

# T-Mobile theme engine
-include vendor/sokp/configs/themes_common.mk

# common boot animation
PRODUCT_COPY_FILES += \
    vendor/sokp/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip

# World APNs
PRODUCT_COPY_FILES += \
    vendor/sokp/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Selective SPN list for operator number who has the problem.
PRODUCT_COPY_FILES += \
    vendor/sokp/prebuilt/common/etc/selective-spn-conf.xml:system/etc/selective-spn-conf.xml

# HFM Files
PRODUCT_COPY_FILES += \
    vendor/sokp/prebuilt/etc/hosts.alt:system/etc/hosts.alt \
    vendor/sokp/prebuilt/etc/hosts.og:system/etc/hosts.og
