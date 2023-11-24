#!/bin/bash

# For clean environment
unset TARGET_DEVICE
unset FOX_VERSION
unset FOX_BUILD_TYPE
unset TARGET_ARCH
unset OF_SCREEN_H
clear

# OrangeFox logo function
NORMAL=$(tput sgr0)
REVERSE=$(tput smso)

logo() {
printf "${NORMAL}                                                                               ${REVERSE}\n"
printf "${NORMAL}                                          ${REVERSE}   ${NORMAL}                                  ${REVERSE}\n"
printf "${NORMAL}                                        ${REVERSE}     ${NORMAL}                                  ${REVERSE}\n"
printf "${NORMAL}                                        ${REVERSE}     ${NORMAL}                                  ${REVERSE}\n"
printf "${NORMAL}                                  ${REVERSE}   ${NORMAL}    ${REVERSE}      ${NORMAL}                                ${REVERSE}\n"
printf "${NORMAL}                                ${REVERSE}      ${NORMAL}    ${REVERSE}       ${NORMAL}                              ${REVERSE}\n"
printf "${NORMAL}                               ${REVERSE}         ${NORMAL}   ${REVERSE}       ${NORMAL}                             ${REVERSE}\n"
printf "${NORMAL}                               ${REVERSE}    ${NORMAL}          ${REVERSE}     ${NORMAL}                             ${REVERSE}\n"
printf "${NORMAL}                               ${REVERSE}          ${NORMAL}    ${REVERSE}   ${NORMAL}                               ${REVERSE}\n"
printf "${NORMAL}                                ${REVERSE}               ${NORMAL}                                ${REVERSE}\n"
printf "${NORMAL}                                 ${REVERSE}               ${NORMAL}                               ${REVERSE}\n"
printf "${NORMAL}                                 ${REVERSE}  ${NORMAL}  ${REVERSE}  ${NORMAL}    ${REVERSE} ${NORMAL} ${REVERSE}    ${NORMAL}                              ${REVERSE}\n"
printf "${NORMAL}                                 ${REVERSE}  ${NORMAL}  ${REVERSE}  ${NORMAL}    ${REVERSE}  ${NORMAL}  ${REVERSE}  ${NORMAL}                              ${REVERSE}\n"
printf "${NORMAL}                                 ${REVERSE}  ${NORMAL}  ${REVERSE}  ${NORMAL}     ${REVERSE} ${NORMAL}   ${REVERSE}  ${NORMAL}                             ${REVERSE}\n"
printf "${NORMAL}                                                                               \n"
printf "                                 OrangeFox Recovery                            \n\n                             Build script by SebaUbuntu                        \n\n"
}

logo

# what device are we building for?
printf "Insert the device codename you want to build for\nCodename: "
read TARGET_DEVICE
clear

logo

# Ask for release version
printf "Insert the version number of this release\nExample: R10.1\nVersion: "
read FOX_VERSION
export FOX_VERSION="$FOX_VERSION"
clear

logo

# Ask for release type
printf "Insert the type of this release\nPossibilities: Stable - Beta - RC - Unofficial\nRelease type: "
read FOX_BUILD_TYPE
export FOX_BUILD_TYPE="$FOX_BUILD_TYPE"
clear

logo

# Export device-specific variables
if [ $TARGET_DEVICE = "whyred" ]
	then
		export TARGET_ARCH="arm64"
		export FOX_REPLACE_BUSYBOX_PS="1"
		export OF_ALLOW_DISABLE_NAVBAR="0"
		export OF_FLASHLIGHT_ENABLE="1"
		export OF_SCREEN_H="2160"
		export OF_STATUS_INDENT_LEFT="48"
		export OF_STATUS_INDENT_RIGHT="48"

elif [ $TARGET_DEVICE = "deen" ]
	then
		export FOX_REPLACE_BUSYBOX_PS="1"
		export OF_ALLOW_DISABLE_NAVBAR="0"
		export OF_FLASHLIGHT_ENABLE="1"
		export OF_SCREEN_H="2340"
		export OF_STATUS_INDENT_LEFT="48"
		export OF_STATUS_INDENT_RIGHT="48"
		export FOX_DELETE_AROMAFM="0"
    	export OF_SUPPORT_PRE_FLASH_SCRIPT="0"
		export OF_DONT_PATCH_ON_FRESH_INSTALLATION="1"
		export OF_USE_SYSTEM_FINGERPRINT="1"	
		export OF_SKIP_MULTIUSER_FOLDERS_BACKUP="1"
		#export OF_SKIP_ORANGEFOX_PROCESS="1"
		export OF_DISABLE_MIUI_SPECIFIC_FEATURES="1"

elif [ $TARGET_DEVICE = "cepheus" ]
	then
		export FOX_REPLACE_BUSYBOX_PS="1"
		export OF_ALLOW_DISABLE_NAVBAR="0"
		export OF_FLASHLIGHT_ENABLE="1"
		export OF_SCREEN_H="2340"
		export OF_STATUS_INDENT_LEFT="48"
		export OF_STATUS_INDENT_RIGHT="48"
		export FOX_DELETE_AROMAFM="0"
    	export OF_SUPPORT_PRE_FLASH_SCRIPT="0"
		export OF_DONT_PATCH_ON_FRESH_INSTALLATION="1"
		export OF_USE_SYSTEM_FINGERPRINT="1"	
		export OF_SKIP_MULTIUSER_FOLDERS_BACKUP="1"
		#export OF_SKIP_ORANGEFOX_PROCESS="1"
		export OF_DISABLE_MIUI_SPECIFIC_FEATURES="0"

elif [ $TARGET_DEVICE = "shiva" ]

	then
		export FOX_REPLACE_BUSYBOX_PS="1"
		export OF_ALLOW_DISABLE_NAVBAR="0"
		export OF_FLASHLIGHT_ENABLE="1"
		export OF_SCREEN_H="2340"
		export OF_STATUS_INDENT_LEFT="48"
		export OF_STATUS_INDENT_RIGHT="48"
		export FOX_DELETE_AROMAFM="0"
    	export OF_SUPPORT_PRE_FLASH_SCRIPT="0"
		export OF_DONT_PATCH_ON_FRESH_INSTALLATION="1"
		#export OF_USE_SYSTEM_FINGERPRINT="1"	
		export OF_SKIP_MULTIUSER_FOLDERS_BACKUP="1"
		#export OF_SKIP_ORANGEFOX_PROCESS="1"
		export OF_DISABLE_MIUI_SPECIFIC_FEATURES="0"


elif [ $TARGET_DEVICE = "CTL_sprout" ]

	then
		export FOX_REPLACE_BUSYBOX_PS="1"
		export OF_ALLOW_DISABLE_NAVBAR="0"
		export OF_FLASHLIGHT_ENABLE="1"
		export OF_SCREEN_H="2280"
		export OF_STATUS_INDENT_LEFT="48"
		export OF_STATUS_INDENT_RIGHT="48"
		export FOX_DELETE_AROMAFM="0"
    	export OF_SUPPORT_PRE_FLASH_SCRIPT="0"
		export OF_DONT_PATCH_ON_FRESH_INSTALLATION="1"
		#export OF_USE_SYSTEM_FINGERPRINT="1"	
		export OF_SKIP_MULTIUSER_FOLDERS_BACKUP="1"
		#gexport OF_SKIP_ORANGEFOX_PROCESS="1"
		export OF_DISABLE_MIUI_SPECIFIC_FEATURES="1"
        export TARGET_DEVICE_ALT="CTL_sprout"
        export FOX_INSTALLER_DEBUG_MODE="1"

elif [ $TARGET_DEVICE = "grus" ]

	then
		export FOX_REPLACE_BUSYBOX_PS="1"
		export OF_ALLOW_DISABLE_NAVBAR="0"
		export OF_FLASHLIGHT_ENABLE="1"
		export OF_SCREEN_H="2340"
		export OF_STATUS_INDENT_LEFT="48"
		export OF_STATUS_INDENT_RIGHT="48"
		export FOX_DELETE_AROMAFM="0"
    	export OF_SUPPORT_PRE_FLASH_SCRIPT="0"
		export OF_DONT_PATCH_ON_FRESH_INSTALLATION="1"
		export OF_USE_SYSTEM_FINGERPRINT="1"	
		export OF_SKIP_MULTIUSER_FOLDERS_BACKUP="1"
		#export OF_SKIP_ORANGEFOX_PROCESS="1"
		export OF_DISABLE_MIUI_SPECIFIC_FEATURES="0"
else

		printf "Device-specific variables not found! Add them in script. Exiting...\n\n"
		exit
fi


#if [ -z ${TARGET_ARCH+x} ]
#	then
#		printf "You didn't set TARGET_ARCH variable in script\n"
#		exit
#fi
if [ -z ${OF_SCREEN_H+x} ]
	then
		printf "You didn't set OF_SCREEN_H variable in script\nThis variable is needed to fix graphical issues on non-16:9 devices.\nEven if you have a 16:9 device, set it anyway."
		exit
fi

# configure some default settings for the build
export ALLOW_MISSING_DEPENDENCIES=true
export TW_DEFAULT_LANGUAGE="en"
export LC_ALL="C"
export USE_CCACHE="1"
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER="1"
export OF_AB_DEVICE="1"
export OF_USE_MAGISKBOOT="1"
export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES="1"
export OF_DONT_PATCH_ENCRYPTED_DEVICE="1"
export FOX_USE_LZMA_COMPRESSION="0"
export OF_OTA_RES_DECRYPT="1"
export FOX_USE_BASH_SHELL="1"
export FOX_USE_NANO_EDITOR="1"
export OF_MAINTAINER="Ko_Hi"
export FOX_R11="1"
#export OF_USE_TWRP_SAR_DETECT="1"

# A/B devices
[ "$OF_AB_DEVICE" = "1" ] && export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES="1"

# Enable ccache if enabled
[ "$USE_CCACHE" = "1" ] && ccache -M 20G

. build/envsetup.sh
  
lunch omni_"$TARGET_DEVICE"-eng

# If lunch command fail, there is no need to continue building
if [ "$?" != "0" ]
	then exit
fi

mka recoveryimage
