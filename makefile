#
# Makefile for lu6200
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is update.zip if not specified
# local-out-zip-file :=

# All apps from original ZIP, but has smali files chanded
local-modified-apps := CameraApp LGSettings Bluetooth BluetoothServices MediaProvider CompatibilityMode

local-modified-jars := com.lge.bluetooth

local-miui-modified-apps := Mms MiuiHome ThemeManager Phone MiuiGallery TelephonyProvider MiuiSystemUI Settings Music
# All apks from MIUI
local-miui-removed-apps  := Stk MediaProvider Bluetooth

# All apps need to be reserved from original ZIP file
local-phone-apps := ApplicationsProvider BackupRestoreConfirmation CameraApp CertInstaller DefaultContainerService DrmProvider \
		FaceLock MediaProvider NativeLiveWallpapersPicker Nfc PackageInstaller SharedStorageBackup Stk UserDictionaryProvider \
		VpnDialogs WAPPushManager LGSettings Bluetooth BluetoothServices CompatibilityMode

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:= local-test

local-rewrite-skia-lib:= false

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
	@echo Update build.prop
	cp other/build.prop $(ZIP_DIR)/system/build.prop

#	@echo update bootanimation
#	rm $(ZIP_DIR)/system/bin/bootanimation
#	cp other/bootanimation $(ZIP_DIR)/system/bin/bootanimation

	@echo add system config
	cp other/system_etc/* $(ZIP_DIR)/system/etc/
	cp other/system_xbin/* $(ZIP_DIR)/system/xbin/

	@echo use old morningcall
	cp other/morningcall $(ZIP_DIR)/system/bin/morningcall

	@echo customize lge-res
	./customize_lge-res.sh

	@echo add StockSettings.apk
	cp other/StockSettings.apk $(ZIP_DIR)/system/app/StockSettings.apk

local-test:
#	rm -f $(local-out-zip-file)
#	cp .build/$(local-out-zip-file) .
	@echo push $(OUT_ZIP) to phone sdcard
	adb shell mount sdcard
	adb shell rm -f /sdcard/update.zip
	adb push out/update.zip /sdcard/update.zip
