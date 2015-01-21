#!/bin/bash

BaseName=$1
tempSmaliDir=$2

if [ "$BaseName" = "android.policy" ];then
        echo ">>> in custom_app for $BaseName to adjust the interface "DMAgent" with "DmAgentd""
        #find $tempSmaliDir/ -name "*.smali" | xargs sed -i 's#DMAgent#DmAgent#g'  

fi
