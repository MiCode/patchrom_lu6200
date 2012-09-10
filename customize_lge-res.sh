#!/bin/bash


APKTOOL="$PORT_ROOT/tools/apktool"

cp -r "lge-res" "out/lge-res"
$APKTOOL b "out/lge-res" "out/lge-res.apk"
cp "out/lge-res.apk" "out/ZIP/system/framework/lge-res.apk"


