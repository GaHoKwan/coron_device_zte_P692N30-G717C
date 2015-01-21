#!/bin/bash

apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "Settings" ];then
    echo ">>> in custom_app $apkBaseName"

	sed -i '3a\    <Preference android:title="Rom作者" android:summary="Jaw_Kwan" style="?android:preferenceInformationStyle" />'  $tempSmaliDir/res/xml/device_info_settings.xml
	# Remove the Official Verify Preference.
	sed -i -e "/^\.method.*setOfficialVerifyPreference()V/,/^\.end method/d" $tempSmaliDir/smali/com/android/settings/DeviceInfoSettings.smali
	sed -i -e "/setOfficialVerifyPreference/d" $tempSmaliDir/smali/com/android/settings/DeviceInfoSettings.smali	

elif [ "$apkBaseName" = "Phone" ];then
        echo ">>> in custom_app for $apkBaseName to adjust the interface "DMAgent" with "DmAgentd""
        find $tempSmaliDir/ -name "*.smali" | xargs sed -i 's#DmAgent#DMAgent#g'  

fi
