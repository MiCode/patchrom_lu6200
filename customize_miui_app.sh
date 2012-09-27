#!/bin/bash
#
# $1: dir for original miui app 
# $2: dir for target miui app
#

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
GIT_APPLY=$PORT_ROOT/tools/git.apply

curdir=`pwd`

if [ $1 = "Mms" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Phone" ];then
    for file in `find $1/smali -name *.part`
    do
	filepath=`dirname $file`
	filename=`basename $file .part`
        dstfile="out/$filepath/$filename"
        cat $file >> $dstfile
    done

    cp $1/Ringer.patch out/
    cp $1/Phone_Settings.patch out/
    cd out
    $GIT_APPLY Ringer.patch
    $GIT_APPLY Phone_Settings.patch
    cd ..
    for file in `find $2 -name *.rej`
    do
	echo "Phone patch fail"
        exit 1
    done

	#echo "Merge Phone's xml"
	#$XMLMERGYTOOL $1/res/values $2/res/values

	echo "replace functions"
	$PORT_ROOT/lu6200/replace_functions_IccCard.sh $2
fi

if [ $1 = "MiuiHome" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Settings" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values

    cp $1/Settings.patch out/
    cp $1/MiuiUsbSettings.patch out/
    cd out
    $GIT_APPLY Settings.patch
    $GIT_APPLY MiuiUsbSettings.patch
    cd ..
    for file in `find $2 -name *.rej`
    do
	echo "Settings patch fail"
        exit 1
    done

	echo "replace functions"
	$PORT_ROOT/lu6200/replace_functions_IccCard.sh $2
fi

if [ $1 = "ThemeManager" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "MiuiGallery" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "TelephonyProvider" ];then
    cp $1/TelephonyProvider.patch out/
	cd out
	$GIT_APPLY TelephonyProvider.patch
	cd ..
	for file in `find $2 -name *.rej`
	do
	echo "TelephonyProvider patch fail"
		exit 1
	done
fi

if [ $1 = "MiuiSystemUI" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
fi
