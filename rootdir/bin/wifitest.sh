#!/vendor/bin/sh
rmmod wlan
sleep 6
insmod /vendor/lib/modules/wlan.ko con_mode=5
sleep 1
setprop persist.sys.openwifi_L 0
exit 0
