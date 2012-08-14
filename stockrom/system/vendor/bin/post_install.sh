#!/system/bin/sh
# This script installs apks in /system/uninstallable directory
# when the phone is first booted after the factory reset.
#
# Apks installed via this script can be uninstalled by user.
# However, uninstallation does not remove an apk from the system image.
# Furthermore, the apks are again installed after a factory reset.

tag=`getprop persist.lge.first_boot 1`
case "$tag" in
    "1")
        files=`ls /system/uninstallable`
        for file in $files
        do
            pm install /system/uninstallable/$file
        done
        setprop persist.lge.first_boot 0
        ;;
esac
exit 0

 
