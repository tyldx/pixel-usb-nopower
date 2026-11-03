MODDIR=${0%/*}
if [ "$(cat /sys/devices/platform/google,charger/charge_stop_level)" = 5 ]; then
  sh $MODDIR/system/bin/usbpow on
else
  sh $MODDIR/system/bin/usbpow off 30
fi
