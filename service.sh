until [ "$(getprop sys.boot_completed)" = 1 ]; do sleep 5; done
sh ${0%/*}/system/bin/usbpow boot
