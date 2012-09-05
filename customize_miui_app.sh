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
    cd out
    $GIT_APPLY Ringer.patch
    cd ..
    for file in `find $2 -name *.rej`
    do
	echo "Ringer patch fail"
        exit 1
    done

	#echo "Merge Phone's xml"
	#$XMLMERGYTOOL $1/res/values $2/res/values
	echo "replace functions in Phone"
	$PORT_ROOT/lu6200/replace_functions_in_phone.sh $2
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

