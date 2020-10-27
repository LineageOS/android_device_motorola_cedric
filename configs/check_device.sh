#!/sbin/sh

SKU=`getprop ro.boot.hardware.sku`

rm -rf /system_root/system/priv-app/MotoDoze
if [ "$SKU" == "XT1677" ]; then
    mv /vendor/etc/thermal-engine-India.conf /vendor/etc/thermal-engine.conf
fi
