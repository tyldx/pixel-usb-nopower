#!/bin/sh
set -e
cd "$(dirname "$0")"
v=$(sed -n 's/^version=//p' module.prop)
rm -f pixel-usb-nopower-*.zip
zip -r9 "pixel-usb-nopower-$v.zip" module.prop customize.sh action.sh uninstall.sh system
