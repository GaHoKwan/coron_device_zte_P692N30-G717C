#!/bin/bash

apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "Settings" ];then
    echo ">>> in custom_app $apkBaseName"

	find $tempSmaliDir/ -name "*.smali" | xargs sed -i 's#/proc/version#/sbchk/version_line#g'  
	sed -i '/com.baidu.key.KeySettings/r Settings/settings_headers.xml.part' $tempSmaliDir/res/xml/settings_headers.xml
	sed -i '3a\    <Preference android:title="Rom作者" android:summary="JKwan嘉豪仔" style="?android:preferenceInformationStyle" />'  $tempSmaliDir/res/xml/device_info_settings.xml
	# Remove the Official Verify Preference.
	sed -i -e "/^\.method.*setOfficialVerifyPreference()V/,/^\.end method/d" $tempSmaliDir/smali/com/android/settings/DeviceInfoSettings.smali
	sed -i -e "/setOfficialVerifyPreference/d" $tempSmaliDir/smali/com/android/settings/DeviceInfoSettings.smali	

elif [ "$apkBaseName" = "Phone" ];then
        echo ">>> in custom_app for $apkBaseName to adjust the interface "DMAgent" with "DmAgentd""
        find $tempSmaliDir/ -name "*.smali" | xargs sed -i 's#DMAgent#DmAgent#g'  
        cp -f 'Phone/res/xml/network_setting.xml'  $tempSmaliDir/res/xml/network_setting.xml
fi
