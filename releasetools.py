import common
import edify_generator

def AddExtraAction(info):
    info.script.AppendExtra('ui_print("Update firmware...");');
    info.script.AppendExtra('package_extract_file("firmware.img", "/dev/block/mmcblk0p1");');
    info.script.AppendExtra('ui_print("Update baseband...");');
    info.script.AppendExtra('package_extract_file("baseband.img", "/dev/block/mmcblk0p14");');
    edify = info.script
    for i in xrange(len(edify.script)):
        if "assert" in edify.script[i]:
            edify.script[i] = edify.script[i].replace("assert", "ui_print")
    return 

def FullOTA_InstallEnd(info):
    AddExtraAction(info)

def IncrementalOTA_InstallEnd(info):
    AddExtraAction(info)
