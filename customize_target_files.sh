#!/bin/bash

function copy_radio {
    echo "Copy radio"
    cp out/ZIP/firmware.img out/target_files/RADIO/firmware.img
    cp out/ZIP/baseband.img out/target_files/RADIO/baseband.img
}

copy_radio
