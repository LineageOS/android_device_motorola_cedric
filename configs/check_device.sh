#!/sbin/sh

SKU=`getprop ro.boot.hardware.sku`

rm -rf /system_root/system/priv-app/MotoDoze
if [ "$SKU" == "XT1677" ]; then
    mv /vendor/etc/thermal-engine-India.conf /vendor/etc/thermal-engine.conf
fi
if [ "$SKU" != "XT1672" ] && [ "$SKU" != "XT1675" ]; then
    rm /vendor/etc/permissions/android.hardware.sensor.compass.xml
fi
