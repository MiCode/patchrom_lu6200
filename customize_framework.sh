#!/bin/bash
# $1: dir for miui
# $2: dir for original

APKTOOL="$PORT_ROOT/tools/apktool"

if [ $2 = "out/framework" ]
then
    echo "delete framework redundance files"
    for file2 in `find framework2.jar.out -name *.smali`; do
            file=${file2/framework2.jar.out/out\/framework}
            echo "rm file: $file"
            rm -rf "$file"
    done

    echo "make framework2.jar"
    mkdir -p "out/ZIP/system/framework"
    cp -r "framework2.jar.out" "out/framework2.jar.out" 
    mv "out/framework/smali/miui" "out/framework2.jar.out/smali"
    mkdir -p "out/framework2.jar.out/smali/android"
    mv "out/framework/smali/android/widget" "out/framework2.jar.out/smali/android"
    
    $APKTOOL b  "out/framework2.jar.out" "out/framework2.jar"
    cp "out/framework2.jar" "out/ZIP/system/framework/framework2.jar"

fi
