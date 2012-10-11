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
    common.ZipWriteStr(info.output_zip, "firmware.img", info.input_zip.read("RADIO/firmware.img"))
    common.ZipWriteStr(info.output_zip, "baseband.img", info.input_zip.read("RADIO/baseband.img"))
    AddExtraAction(info)

def IncrementalOTA_InstallEnd(info):
    source_file = info.source_zip.read("RADIO/firmware.img")
    target_file = info.target_zip.read("RADIO/firmware.img")
    if source_file != target_file:
      common.ZipWriteStr(info.output_zip, "firmware.img", info.target_zip.read("RADIO/firmware.img"))
    source_file = info.source_zip.read("RADIO/baseband.img")
    target_file = info.target_zip.read("RADIO/baseband.img")
    if source_file != target_file:
      common.ZipWriteStr(info.output_zip, "baseband.img", info.target_zip.read("RADIO/baseband.img"))
    AddExtraAction(info)
