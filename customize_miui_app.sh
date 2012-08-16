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
	echo "Merge Phone's xml"
	$XMLMERGYTOOL $1/res/values $2/res/values
	echo "replace functions in Phone"
	$PORT_ROOT/honor/replace_functions_in_phone.sh $2
fi

if [ $1 = "MiuiHome" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Settings" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "ThemeManager" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
fi
