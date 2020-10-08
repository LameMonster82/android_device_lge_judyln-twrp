#!/sbin/sh

relink()
{
	/sbin/cp $1 ${1}_old
	sed 's|/system/bin/linker64|///////sbin/linker64|' "${1}_old" > "$1"
	chmod 755 $1
}

finish()
{
	umount /v
	umount /s
	rmdir /v
	rmdir /s

	relink /sbin/qseecomd
	relink /sbin/android.hardware.gatekeeper@1.0-service-qti
	relink /sbin/android.hardware.keymaster@3.0-service-qti
	relink /sbin/android.hardware.keymaster@4.0-service-qti
	relink /sbin/strace

	setprop crypto.ready 1
	exit 0
}

suffix=$(getprop ro.boot.slot_suffix)
if [ -z "$suffix" ]; then
	suf=$(getprop ro.boot.slot)
	suffix="_$suf"
fi
venpath="/dev/block/bootdevice/by-name/vendor$suffix"
mkdir /v
mount -t ext4 -o ro "$venpath" /v
syspath="/dev/block/bootdevice/by-name/system$suffix"
mkdir /s
mount -t ext4 -o ro "$syspath" /s

is_fastboot_twrp=$(getprop ro.boot.fastboot)
if [ ! -z "$is_fastboot_twrp" ]; then
	osver=$(getprop ro.build.version.release)
	patchlevel=$(getprop ro.build.version.security_patch)
	resetprop ro.build.version.release "$osver"
	resetprop ro.build.version.security_patch "$patchlevel"
	finish
fi

if [ -f /s/system/build.prop ]; then
	# TODO: It may be better to try to read these from the boot image than from /system
	osver=$(grep -i 'ro.build.version.release' /s/system/build.prop  | cut -f2 -d'=')
	patchlevel=$(grep -i 'ro.build.version.security_patch' /s/system/build.prop  | cut -f2 -d'=')
	resetprop ro.build.version.release "$osver"
	resetprop ro.build.version.security_patch "$patchlevel"
	finish
else
	# Be sure to increase the PLATFORM_VERSION in build/core/version_defaults.mk to override Google's anti-rollback features to something rather insane
	osver=$(getprop ro.build.version.release)
	patchlevel=$(getprop ro.build.version.security_patch)
	resetprop ro.build.version.release "$osver"
	resetprop ro.build.version.security_patch "$patchlevel"
	finish
fi

exit 0
