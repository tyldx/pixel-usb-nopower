[ -f /sys/devices/platform/google,charger/charge_stop_level ] || abort "! google,charger/charge_stop_level not found"
set_perm $MODPATH/system/bin/usbpow 0 0 0755
