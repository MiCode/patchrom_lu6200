temp_file=/tmp_part

/system/bin/dd if=$tombstone_part_name of=$temp_file bs=512 count=1
format_magic=`/system/bin/cat $temp_file`
echo [[$format_magic]]
/system/bin/rm $temp_file

case "$format_magic" in
    "TaMeGlRoF_cIgAm")
    echo [[[[[ Format Started ]]]]]]]
    /system/bin/mke2fs -T ext4 -b 4096 $data_part_name
    /system/bin/mke2fs -T ext4 -b 4096 $cache_part_name
    /system/bin/mke2fs -T ext4 $drm_part_name
#	/system/bin/mke2fs -T ext4 $felica_part_name
# FeliCa partition [
    /system/bin/mount -r -t ext4 $felica_part_name /felica
    if /system/bin/ls /felica/knife; then
        /system/bin/umount /felica
        echo [[[[[ No Need of Format $felica_partition partition ]]]]]
    else
        echo [[[[[ Need of Format $felica_partition partition ]]]]]
        /system/bin/umount /felica
        /system/bin/mke2fs -T ext4 $felica_part_name
    fi
# ] FeliCa partition
    /system/bin/mount -r -t ext4 $mpt_part_name /mpt
    if /system/bin/ls /mpt/acc_calibration.dat; then
        /system/bin/umount /mpt
        echo [[[[[ No Need of Format $mpt_part_name partition ]]]]]
    else
        echo [[[[[ Need of Format $mpt_part_name partition ]]]]]
        /system/bin/umount /mpt
        /system/bin/mke2fs -T ext4 $mpt_part_name
    fi

	/system/bin/mount -r -t ext4 $bsp_part_name /drm
    if /system/bin/ls /drm/playready; then
       /system/bin/umount /drm
        echo [[[[[ No Need of Format $bsp_part_name partition ]]]]]
    else
        echo [[[[[ Need of Format $bsp_part_name partition ]]]]]
        /system/bin/mke2fs -t ext4 $bsp_part_name
    fi
    
    #u+ only msg partition
    if /system/bin/ls /lgumsg; then
     /system/bin/mke2fs -t ext4 /dev/block/mmcblk0p31 
    fi
# tombstones partition must be located at here lastest    
    /system/bin/mke2fs -T ext4 -b 4096 -N 200 $tombstone_part_name
    echo [[[[[ Format Ended ]]]]]]]
    /system/bin/dd of=$tombstone_part_name if=/system/etc/null_page bs=512 count=1
#    echo [[[[[ Erase Format Mark ]]]]]]]
 ;; 
    * )
    echo [[[[[ No Need of Format ]]]]]]]
esac
