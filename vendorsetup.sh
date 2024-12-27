# FROM DEFAULT DT
default_Settings() {
    export ALLOW_MISSING_DEPENDENCIES=true
    export FOX_RECOVERY_INSTALL_PARTITION="/dev/block/platform/13500000.dwmmc0/by-name/recovery"
    export FOX_RECOVERY_SYSTEM_PARTITION="/dev/block/platform/13500000.dwmmc0/by-name/system"
    export FOX_RECOVERY_VENDOR_PARTITION="/dev/block/platform/13500000.dwmmc0/by-name/vendor"
    export FOX_RECOVERY_BOOT_PARTITION="/dev/block/platform/13500000.dwmmc0/by-name/boot"
    export FOX_REPLACE_BUSYBOX_PS="1"
    export FOX_USE_BASH_SHELL="1"
    export FOX_ASH_IS_BASH=1
    export OF_USE_LZMA_COMPRESSION=1
    export FOX_USE_NANO_EDITOR="1"
    export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER="1"
    export LC_ALL="C"
    export OF_DISABLE_MIUI_SPECIFIC_FEATURES="1"
    export OF_DONT_PATCH_ENCRYPTED_DEVICE="1"
    export OF_NO_SPLASH_CHANGE=1
    export OF_MAINTAINER="Pritam"
    export OF_CLOCK_POS=1
    export OF_ALLOW_DISABLE_NAVBAR=0
    export OF_NO_TREBLE_COMPATIBILITY_CHECK="1"
    export OF_OTA_RES_DECRYPT="1"
    export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES="1"
    export OF_USE_NEW_MAGISKBOOT="1"
    export TARGET_ARCH="arm64"
    export TW_DEFAULT_LANGUAGE="en"
    export FOX_VERSION="R12.1"
    export USE_CCACHE="0"
    export OF_FLASHLIGHT_ENABLE="1"
    export OF_FL_PATH1="/system/flashlight"
    export OF_SCREEN_H="2340"
    export OF_STATUS_H=82
    export FOX_BUILD_TYPE="Unofficial"
    export OF_ADVANCED_SECURITY=1
    export OF_STATUS_INDENT_LEFT=64
    export OF_STATUS_INDENT_RIGHT=64
    export OF_SKIP_FBE_DECRYPTION=1
    export FOX_REPLACE_TOOLBOX_GETPROP=1
    export FOX_USE_TAR_BINARY=1
    export FOX_USE_SED_BINARY=1
    export FOX_USE_GREP_BINARY=1
    export FOX_USE_XZ_UTILS=1
    export FOX_ENABLE_APP_MANAGER=1
	export OF_SKIP_MULTIUSER_FOLDERS_BACKUP="1"
	export OF_NO_SAMSUNG_SPECIAL=0
    export FOX_DELETE_INITD_ADDON=1
    export OF_DEVICE_WITHOUT_PERSIST=1
    export OF_DISABLE_EXTRA_ABOUT_PAGE=1

    [ "$FOX_USE_LZMA_COMPRESSION" = "1" ] && export LZMA_RAMDISK_TARGETS="recovery"

    [ "$OF_AB_DEVICE" = "1" ] && export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES="1"

    [ "$OF_USE_MAGISKBOOT_FOR_ALL_PATCHES" = "1" ] && export OF_USE_MAGISKBOOT="1"
}
	
	
	# Magisk
	function download_magisk(){
		# Usage: download_magisk <destination_path>
		local DEST=$1
		if [ -n "${DEST}" ]; then
			if [ ! -e ${DEST} ]; then
				echo "Downloading the Latest Release of Magisk..."
				local LATEST_MAGISK_URL=$(curl -sL https://api.github.com/repos/topjohnwu/Magisk/releases/latest | grep browser_download_url | grep Magisk- | cut -d : -f 2,3 | tr -d '"')
				mkdir -p $(dirname ${DEST})
				wget -q ${LATEST_MAGISK_URL} -O ${DEST} || wget ${LATEST_MAGISK_URL} -O ${DEST}
				local RCODE=$?
				if [ "$RCODE" = "0" ]; then
					echo "Successfully Downloaded Magisk to ${DEST}!"
					echo "Done!"
				else
					echo "Failed to Download Magisk to ${DEST}!"
				fi
			fi
		fi
	}
	export FOX_USE_SPECIFIC_MAGISK_ZIP=~/Magisk/Magisk.zip
	download_magisk $FOX_USE_SPECIFIC_MAGISK_ZIP
	default_Settings