#
# Makefile for lu6200
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is update.zip if not specified
# local-out-zip-file :=

# All apps from original ZIP, but has smali files chanded
local-modified-apps := CameraApp LGSettings Bluetooth BluetoothServices MediaProvider

local-modified-jars := com.lge.bluetooth

local-miui-modified-apps := Mms MiuiHome ThemeManager Phone MiuiGallery TelephonyProvider MiuiSystemUI Settings
# All apks from MIUI
local-miui-removed-apps  := Stk MediaProvider Bluetooth

# All apps need to be reserved from original ZIP file
local-phone-apps := ApplicationsProvider CameraApp CertInstaller CommonService DefaultContainerService DrmProvider \
		DrmService FaceLock KeyChain LGU_ARMService MusicFX NativeLiveWallpapersPicker Nfc Stk\
		PackageInstaller UserDictionaryProvider MediaProvider

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

	@echo update bootanimation
	rm $(ZIP_DIR)/system/bin/bootanimation
	cp other/bootanimation $(ZIP_DIR)/system/bin/bootanimation

	@echo add system app

	@echo add system config
	cp other/system_etc/* $(ZIP_DIR)/system/etc/
	cp other/system_xbin/* $(ZIP_DIR)/system/xbin/

	@echo delete redundance files
	rm -rf $(ZIP_DIR)/system/bin/su

	@echo customize lge-res
	./customize_lge-res.sh

local-test:
#	rm -f $(local-out-zip-file)
#	cp .build/$(local-out-zip-file) .
	@echo push $(OUT_ZIP) to phone sdcard
	adb shell mount sdcard
	adb shell rm -f /sdcard/update.zip
	adb push out/update.zip /sdcard/update.zip
