.class public Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbSettingsReceiver.java"


# static fields
.field private static mConnectivityManager:Landroid/net/ConnectivityManager;

.field private static mContext:Landroid/content/Context;

.field private static mCurrentFunction:Ljava/lang/String;

.field private static mDefaultFunction:Ljava/lang/String;

.field private static mIntent:Landroid/content/Intent;

.field private static mMtpAutorun:Z

.field private static mNeedDelayLaunch:Z

.field private static mRejectClassList:[Ljava/lang/String;

.field private static mRejectPackageList:[Ljava/lang/String;

.field private static mStorageManager:Landroid/os/storage/StorageManager;

.field private static mUsbManager:Landroid/hardware/usb/UsbManager;


# instance fields
.field private final mUEventObserver:Landroid/os/UEventObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 54
    sput-object v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    .line 56
    sput-boolean v2, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mMtpAutorun:Z

    .line 57
    sput-boolean v2, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mNeedDelayLaunch:Z

    .line 59
    sput-object v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 60
    sput-object v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 61
    sput-object v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 62
    const-string v0, ""

    sput-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mDefaultFunction:Ljava/lang/String;

    .line 63
    const-string v0, ""

    sput-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mCurrentFunction:Ljava/lang/String;

    .line 69
    sput-object v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mRejectPackageList:[Ljava/lang/String;

    .line 70
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.google.android.gsf.login.LoginActivityTask"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.android.phone.InCallScreen"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.lge.vt.ui.VgaVideoCallActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.lge.vt.ui.QcifVideoCallActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.lge.vt.ui.VgaGroupVideoCallActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.lge.vt.ui.QcifGroupVideoCallActivity"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mRejectClassList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 438
    new-instance v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver$1;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mUEventObserver:Landroid/os/UEventObserver;

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private changeAutorunMode(Ljava/lang/String;)Z
    .locals 7
    .parameter "autorunMode"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 526
    const-string v5, "use_open_autorun"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 528
    .local v2, use:Ljava/lang/String;
    :try_start_0
    const-string v5, "false"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    .line 553
    :cond_0
    :goto_0
    return v3

    .line 531
    :catch_0
    move-exception v1

    .line 532
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v5, "UsbSettingsReceiver"

    const-string v6, "[AUTORUN] changeAutorunMode() : autorun system property is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_1
    const-string v5, "0"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ATT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 537
    :cond_2
    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v6, "p2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DCM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 540
    :cond_3
    sget-object v5, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "autorun_switch"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_4

    move v0, v4

    .line 543
    .local v0, autorunEnable:Z
    :goto_1
    if-ne v0, v4, :cond_0

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VZW"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 544
    new-instance v5, Ljava/io/File;

    const-string v6, "/system/usbautorun.iso"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 545
    const-string v5, "/sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode"

    invoke-static {v5, p1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->writeToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 547
    sget-object v5, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v6, "cdrom_storage"

    invoke-virtual {v5, v6, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 548
    sget-object v3, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->startAutorunTimer(Landroid/content/Context;)V

    move v3, v4

    .line 549
    goto :goto_0

    .end local v0           #autorunEnable:Z
    :cond_4
    move v0, v3

    .line 540
    goto :goto_1
.end method

.method private getCurrentFunction()Ljava/lang/String;
    .locals 4

    .prologue
    .line 403
    const-string v2, "sys.usb.config"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, functions:Ljava/lang/String;
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 405
    .local v0, commaIndex:I
    if-lez v0, :cond_0

    .line 406
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 408
    .end local v1           #functions:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private isRejectPopup(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 412
    const/4 v2, 0x0

    .line 413
    .local v2, isPackageName:Z
    const/4 v1, 0x0

    .line 415
    .local v1, isClassName:Z
    sget-object v3, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mRejectPackageList:[Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 416
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mRejectPackageList:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 417
    sget-object v3, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mRejectPackageList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 418
    const/4 v2, 0x1

    .line 423
    .end local v0           #i:I
    :cond_0
    sget-object v3, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mRejectClassList:[Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 424
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    sget-object v3, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mRejectClassList:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 425
    sget-object v3, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mRejectClassList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 426
    const/4 v1, 0x1

    .line 432
    .end local v0           #i:I
    :cond_1
    if-nez v2, :cond_2

    if-eqz v1, :cond_5

    .line 433
    :cond_2
    const/4 v3, 0x1

    .line 435
    :goto_2
    return v3

    .line 416
    .restart local v0       #i:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 424
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 435
    .end local v0           #i:I
    :cond_5
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private setUsbConnect()V
    .locals 18

    .prologue
    .line 267
    const-string v15, "UsbSettingsReceiver"

    const-string v16, "[AUTORUN] ===== USB Connection ====="

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v15, 0x1

    sput-boolean v15, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbConnected:Z

    .line 270
    const-string v15, "UsbSettingsReceiver"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[AUTORUN] setUsbConnect() : mUsbModeChanging="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-boolean v17, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string v15, "UsbSettingsReceiver"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[AUTORUN] setUsbConnect() : mUsbSettingsRun="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-boolean v17, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbSettingsRun:Z

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v7, 0x0

    .line 274
    .local v7, exit:Z
    sget-boolean v15, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mX3Bug:Z

    if-eqz v15, :cond_0

    .line 275
    sget-boolean v15, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 276
    const/4 v15, 0x0

    sput-boolean v15, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    .line 277
    const/4 v7, 0x1

    .line 281
    :cond_0
    sget-object v15, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v16, "d1la"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    sget-object v15, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v16, "d1lkt"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    sget-object v15, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v16, "d1lsk"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    sget-object v15, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v16, "d1lu"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    sget-object v15, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v16, "d1lv"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    sget-object v15, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v16, "l0"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    sget-object v15, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v16, "l1a"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    sget-object v15, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v16, "l_dcm"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 285
    :cond_1
    const/4 v15, 0x1

    sput-boolean v15, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mMtpAutorun:Z

    .line 286
    const/4 v15, 0x0

    sput-boolean v15, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mNeedDelayLaunch:Z

    .line 287
    const-string v15, "ro.factorytest"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 288
    .local v8, factoryTestStr:Ljava/lang/String;
    const-string v15, "ro.bootmode"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 289
    .local v5, bootmodeTestStr:Ljava/lang/String;
    if-eqz v8, :cond_2

    const-string v15, "2"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    :cond_2
    if-eqz v5, :cond_4

    const-string v15, "pifboot"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 291
    :cond_3
    const/4 v7, 0x1

    .line 297
    .end local v5           #bootmodeTestStr:Ljava/lang/String;
    .end local v8           #factoryTestStr:Ljava/lang/String;
    :cond_4
    :goto_0
    const/4 v9, 0x0

    .line 298
    .local v9, in:Ljava/io/BufferedReader;
    const/4 v11, 0x0

    .line 300
    .local v11, is_factory:I
    sget-object v15, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v16, "m4"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    sget-object v15, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v16, "m4ds"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 302
    :cond_5
    :try_start_0
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/FileReader;

    const-string v16, "/sys/module/lge_emmc_direct_access/parameters/is_factory"

    invoke-direct/range {v15 .. v16}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 303
    .end local v9           #in:Ljava/io/BufferedReader;
    .local v10, in:Ljava/io/BufferedReader;
    if-eqz v10, :cond_16

    :try_start_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, _is_factory:Ljava/lang/String;
    :goto_1
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 306
    :cond_6
    if-eqz v2, :cond_7

    const-string v15, "yes"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e

    move-result v15

    if-eqz v15, :cond_7

    .line 307
    const/4 v11, 0x1

    .line 311
    :cond_7
    if-eqz v10, :cond_8

    :try_start_2
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_8
    move-object v9, v10

    .line 314
    .end local v2           #_is_factory:Ljava/lang/String;
    .end local v10           #in:Ljava/io/BufferedReader;
    .restart local v9       #in:Ljava/io/BufferedReader;
    :cond_9
    :goto_2
    sget-object v15, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v16, "u0"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    sget-object v15, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v16, "u0_cdma"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 316
    :cond_a
    :try_start_3
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/FileReader;

    const-string v16, "/sys/class/android_usb/android0/factory_cable"

    invoke-direct/range {v15 .. v16}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 317
    .end local v9           #in:Ljava/io/BufferedReader;
    .restart local v10       #in:Ljava/io/BufferedReader;
    if-eqz v10, :cond_18

    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, _is_factory_pid:Ljava/lang/String;
    :goto_3
    if-eqz v10, :cond_b

    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 320
    :cond_b
    if-eqz v3, :cond_c

    const-string v15, "6000"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d

    move-result v15

    if-eqz v15, :cond_c

    .line 321
    const/4 v11, 0x1

    .line 326
    :cond_c
    if-eqz v10, :cond_d

    :try_start_5
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 330
    .end local v3           #_is_factory_pid:Ljava/lang/String;
    :cond_d
    :goto_4
    :try_start_6
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/FileReader;

    const-string v16, "/sys/class/android_usb/android0/factory_cable"

    invoke-direct/range {v15 .. v16}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 331
    .end local v10           #in:Ljava/io/BufferedReader;
    .restart local v9       #in:Ljava/io/BufferedReader;
    if-eqz v9, :cond_1b

    :try_start_7
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 332
    .restart local v3       #_is_factory_pid:Ljava/lang/String;
    :goto_5
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 334
    if-eqz v3, :cond_e

    const-string v15, "6000"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c

    move-result v15

    if-eqz v15, :cond_e

    .line 335
    const/4 v11, 0x1

    .line 340
    :cond_e
    if-eqz v9, :cond_f

    :try_start_8
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a

    .line 343
    .end local v3           #_is_factory_pid:Ljava/lang/String;
    :cond_f
    :goto_6
    const/4 v15, 0x1

    if-ne v11, v15, :cond_10

    .line 344
    const/4 v7, 0x1

    .line 346
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->getCurrentFunction()Ljava/lang/String;

    move-result-object v15

    const-string v16, "accessory"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 347
    const/4 v7, 0x1

    .line 349
    :cond_11
    sget-object v15, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    const-string v16, "activity"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 350
    .local v4, am:Landroid/app/ActivityManager;
    const/4 v15, 0x1

    invoke-virtual {v4, v15}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 351
    .local v1, Info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_1d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_1d

    .line 352
    const/4 v15, 0x0

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v12, v15, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 353
    .local v12, topActivity:Landroid/content/ComponentName;
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 354
    .local v14, topPackageName:Ljava/lang/String;
    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    .line 355
    .local v13, topClassName:Ljava/lang/String;
    const-string v15, "UsbSettingsReceiver"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[AUTORUN] : topPackageName="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const-string v15, "UsbSettingsReceiver"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[AUTORUN] : topClassName="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->isRejectPopup(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 359
    const/4 v7, 0x1

    .line 365
    .end local v12           #topActivity:Landroid/content/ComponentName;
    .end local v13           #topClassName:Ljava/lang/String;
    .end local v14           #topPackageName:Ljava/lang/String;
    :cond_12
    :goto_7
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v15

    const-string v16, "VZW"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 366
    sget-object v15, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mIntent:Landroid/content/Intent;

    const-string v16, "cdrom_storage"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 367
    const/4 v7, 0x1

    .line 370
    :cond_13
    if-nez v7, :cond_14

    sget-boolean v15, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    if-nez v15, :cond_14

    sget-boolean v15, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbSettingsRun:Z

    if-nez v15, :cond_14

    .line 371
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->startUsbSettings()V

    .line 373
    :cond_14
    return-void

    .line 294
    .end local v1           #Info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v4           #am:Landroid/app/ActivityManager;
    .end local v9           #in:Ljava/io/BufferedReader;
    .end local v11           #is_factory:I
    :cond_15
    const/4 v15, 0x1

    sput-boolean v15, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mNeedDelayLaunch:Z

    goto/16 :goto_0

    .line 303
    .restart local v10       #in:Ljava/io/BufferedReader;
    .restart local v11       #is_factory:I
    :cond_16
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 311
    .restart local v2       #_is_factory:Ljava/lang/String;
    :catch_0
    move-exception v15

    move-object v9, v10

    .end local v10           #in:Ljava/io/BufferedReader;
    .restart local v9       #in:Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 308
    .end local v2           #_is_factory:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 309
    .local v6, e:Ljava/io/IOException;
    :goto_8
    :try_start_9
    const-string v15, "UsbSettingsReceiver"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "unable to read factory mode : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 311
    if-eqz v9, :cond_9

    :try_start_a
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v15

    goto/16 :goto_2

    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v15

    :goto_9
    if-eqz v9, :cond_17

    :try_start_b
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    :cond_17
    :goto_a
    throw v15

    .line 317
    .end local v9           #in:Ljava/io/BufferedReader;
    .restart local v10       #in:Ljava/io/BufferedReader;
    :cond_18
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 323
    .end local v10           #in:Ljava/io/BufferedReader;
    .restart local v9       #in:Ljava/io/BufferedReader;
    :catch_3
    move-exception v6

    .line 324
    .restart local v6       #e:Ljava/io/IOException;
    :goto_b
    :try_start_c
    const-string v15, "UsbSettingsReceiver"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "unable to read factory mode : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 326
    if-eqz v9, :cond_19

    :try_start_d
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    :cond_19
    move-object v10, v9

    .end local v9           #in:Ljava/io/BufferedReader;
    .restart local v10       #in:Ljava/io/BufferedReader;
    goto/16 :goto_4

    .end local v10           #in:Ljava/io/BufferedReader;
    .restart local v9       #in:Ljava/io/BufferedReader;
    :catch_4
    move-exception v15

    move-object v10, v9

    .end local v9           #in:Ljava/io/BufferedReader;
    .restart local v10       #in:Ljava/io/BufferedReader;
    goto/16 :goto_4

    .end local v6           #e:Ljava/io/IOException;
    .end local v10           #in:Ljava/io/BufferedReader;
    .restart local v9       #in:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v15

    :goto_c
    if-eqz v9, :cond_1a

    :try_start_e
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    :cond_1a
    :goto_d
    throw v15

    .line 331
    :cond_1b
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 337
    .end local v9           #in:Ljava/io/BufferedReader;
    .restart local v10       #in:Ljava/io/BufferedReader;
    :catch_5
    move-exception v6

    move-object v9, v10

    .line 338
    .end local v10           #in:Ljava/io/BufferedReader;
    .restart local v6       #e:Ljava/io/IOException;
    .restart local v9       #in:Ljava/io/BufferedReader;
    :goto_e
    :try_start_f
    const-string v15, "UsbSettingsReceiver"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "unable to read factory mode : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 340
    if-eqz v9, :cond_f

    :try_start_10
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    goto/16 :goto_6

    :catch_6
    move-exception v15

    goto/16 :goto_6

    .end local v6           #e:Ljava/io/IOException;
    .end local v9           #in:Ljava/io/BufferedReader;
    .restart local v10       #in:Ljava/io/BufferedReader;
    :catchall_2
    move-exception v15

    move-object v9, v10

    .end local v10           #in:Ljava/io/BufferedReader;
    .restart local v9       #in:Ljava/io/BufferedReader;
    :goto_f
    if-eqz v9, :cond_1c

    :try_start_11
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    :cond_1c
    :goto_10
    throw v15

    .line 362
    .restart local v1       #Info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v4       #am:Landroid/app/ActivityManager;
    :cond_1d
    const-string v15, "UsbSettingsReceiver"

    const-string v16, "[AUTORUN] : do not check a top activity because do not exist activity list"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 311
    .end local v1           #Info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v4           #am:Landroid/app/ActivityManager;
    :catch_7
    move-exception v16

    goto :goto_a

    .line 326
    .end local v9           #in:Ljava/io/BufferedReader;
    .restart local v3       #_is_factory_pid:Ljava/lang/String;
    .restart local v10       #in:Ljava/io/BufferedReader;
    :catch_8
    move-exception v15

    goto/16 :goto_4

    .end local v3           #_is_factory_pid:Ljava/lang/String;
    .end local v10           #in:Ljava/io/BufferedReader;
    .restart local v9       #in:Ljava/io/BufferedReader;
    :catch_9
    move-exception v16

    goto :goto_d

    .line 340
    .restart local v3       #_is_factory_pid:Ljava/lang/String;
    :catch_a
    move-exception v15

    goto/16 :goto_6

    .end local v3           #_is_factory_pid:Ljava/lang/String;
    :catch_b
    move-exception v16

    goto :goto_10

    :catchall_3
    move-exception v15

    goto :goto_f

    .line 337
    :catch_c
    move-exception v6

    goto :goto_e

    .line 326
    .end local v9           #in:Ljava/io/BufferedReader;
    .restart local v10       #in:Ljava/io/BufferedReader;
    :catchall_4
    move-exception v15

    move-object v9, v10

    .end local v10           #in:Ljava/io/BufferedReader;
    .restart local v9       #in:Ljava/io/BufferedReader;
    goto :goto_c

    .line 323
    .end local v9           #in:Ljava/io/BufferedReader;
    .restart local v10       #in:Ljava/io/BufferedReader;
    :catch_d
    move-exception v6

    move-object v9, v10

    .end local v10           #in:Ljava/io/BufferedReader;
    .restart local v9       #in:Ljava/io/BufferedReader;
    goto :goto_b

    .line 311
    .end local v9           #in:Ljava/io/BufferedReader;
    .restart local v10       #in:Ljava/io/BufferedReader;
    :catchall_5
    move-exception v15

    move-object v9, v10

    .end local v10           #in:Ljava/io/BufferedReader;
    .restart local v9       #in:Ljava/io/BufferedReader;
    goto/16 :goto_9

    .line 308
    .end local v9           #in:Ljava/io/BufferedReader;
    .restart local v10       #in:Ljava/io/BufferedReader;
    :catch_e
    move-exception v6

    move-object v9, v10

    .end local v10           #in:Ljava/io/BufferedReader;
    .restart local v9       #in:Ljava/io/BufferedReader;
    goto/16 :goto_8

    :cond_1e
    move-object v10, v9

    .end local v9           #in:Ljava/io/BufferedReader;
    .restart local v10       #in:Ljava/io/BufferedReader;
    goto/16 :goto_4
.end method

.method private startUsbSettings()V
    .locals 8

    .prologue
    const/high16 v7, 0x1480

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 457
    sget-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usb_ask_on_connection"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 460
    sget-object v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 462
    const-string v2, "UsbSettingsReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AUTORUN] startUsbSettings() : deviceProvisioned="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    if-nez v1, :cond_1

    .line 469
    sget-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "temp_delay_launcher"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 471
    sget-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "temp_usb_connected"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    if-ne v0, v5, :cond_4

    .line 477
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 478
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings_ex.UsbSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 480
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 483
    const-string v1, "extra_usb_launcher"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 484
    sget-object v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mDefaultFunction:Ljava/lang/String;

    const-string v2, "pc_suite"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mDefaultFunction:Ljava/lang/String;

    const-string v2, "mtp_only"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mMtpAutorun:Z

    if-eqz v1, :cond_3

    .line 486
    :cond_2
    const-string v1, "extra_direct_autorun"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 488
    :cond_3
    sget-object v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 490
    :cond_4
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    sget-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mDefaultFunction:Ljava/lang/String;

    const-string v1, "ecm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 494
    sget-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v1, "dtf"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eq v0, v5, :cond_0

    .line 497
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 498
    const-string v1, "android.intent.action.PICK_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 501
    sget-object v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 502
    :cond_5
    sget-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mIntent:Landroid/content/Intent;

    const-string v1, "pc_suite"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    if-nez v0, :cond_6

    sget-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v1, "dtf"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mX3Bug:Z

    if-nez v0, :cond_6

    .line 505
    const-string v0, "pc_suite"

    sput-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mCurrentFunction:Ljava/lang/String;

    .line 506
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->changeAutorunMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    sput-boolean v5, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    .line 508
    sget-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    sget-object v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 510
    :cond_6
    sget-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mDefaultFunction:Ljava/lang/String;

    const-string v1, "mass_storage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 511
    sget-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->setMassStorage(Landroid/content/Context;Z)Z

    goto/16 :goto_0

    .line 512
    :cond_7
    sget-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mIntent:Landroid/content/Intent;

    const-string v1, "mtp_only"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v1, "dtf"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mX3Bug:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mMtpAutorun:Z

    if-eqz v0, :cond_0

    .line 516
    const-string v0, "mtp_only"

    sput-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mCurrentFunction:Ljava/lang/String;

    .line 517
    const-string v0, "1"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->changeAutorunMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    sput-boolean v5, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    .line 519
    sget-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    sget-object v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 79
    sput-object p2, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mIntent:Landroid/content/Intent;

    .line 80
    sput-object p1, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    .line 81
    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, action:Ljava/lang/String;
    const-string v6, "UsbSettingsReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[AUTORUN] onReceive() : action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 86
    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-nez v6, :cond_0

    .line 87
    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    const-string v7, "usb"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/usb/UsbManager;

    sput-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 89
    :cond_0
    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v6, :cond_1

    .line 90
    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    sput-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 97
    :cond_1
    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-static {v6, v10}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->setTetherStatus(Landroid/content/Context;Z)V

    .line 100
    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "u0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "x3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "m4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "m4ds"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "p2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 103
    :cond_2
    sput-boolean v9, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mOldversion:Z

    .line 107
    :goto_0
    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "x3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 108
    sput-boolean v9, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mX3Bug:Z

    .line 110
    :cond_3
    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "d1la"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "d1lkt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "d1lsk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "d1lu"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "d1lv"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "l0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "l1a"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "l_dcm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 114
    :cond_4
    sput-boolean v9, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mMtpAutorun:Z

    .line 115
    sput-boolean v10, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mNeedDelayLaunch:Z

    .line 120
    :goto_1
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    const-string v7, "VZW"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 121
    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mDefaultFunction:Ljava/lang/String;

    const-string v7, "charge_only"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 122
    const-string v6, "/sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode"

    const-string v7, "4"

    invoke-static {v6, v7}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->writeToFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 264
    :cond_5
    :goto_2
    return-void

    .line 105
    :cond_6
    sput-boolean v10, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mOldversion:Z

    goto :goto_0

    .line 117
    :cond_7
    sput-boolean v9, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mNeedDelayLaunch:Z

    goto :goto_1

    .line 124
    :cond_8
    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mDefaultFunction:Ljava/lang/String;

    const-string v7, "mtp_only"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 125
    const-string v6, "/sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode"

    const-string v7, "1"

    invoke-static {v6, v7}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->writeToFile(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 127
    :cond_9
    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mDefaultFunction:Ljava/lang/String;

    const-string v7, "ecm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 128
    const-string v6, "/sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode"

    const-string v7, "5"

    invoke-static {v6, v7}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->writeToFile(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 130
    :cond_a
    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mDefaultFunction:Ljava/lang/String;

    const-string v7, "pc_suite"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 131
    const-string v6, "/sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode"

    const-string v7, "0"

    invoke-static {v6, v7}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->writeToFile(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 133
    :cond_b
    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mDefaultFunction:Ljava/lang/String;

    const-string v7, "ptp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 134
    const-string v6, "/sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode"

    const-string v7, "6"

    invoke-static {v6, v7}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->writeToFile(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 138
    :cond_c
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    const-string v7, "VZW"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    sget-boolean v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mAlreadyObserving:Z

    if-nez v6, :cond_5

    .line 139
    sput-boolean v9, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mAlreadyObserving:Z

    .line 140
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v7, "DEVPATH=/devices/virtual/misc/usb_autorun"

    invoke-virtual {v6, v7}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    goto :goto_2

    .line 143
    :cond_d
    const-string v6, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 144
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v6

    if-nez v6, :cond_5

    .line 148
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    const-string v7, "VZW"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    sget-boolean v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mAlreadyObserving:Z

    if-nez v6, :cond_e

    .line 149
    sput-boolean v9, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mAlreadyObserving:Z

    .line 150
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v7, "DEVPATH=/devices/virtual/misc/usb_autorun"

    invoke-virtual {v6, v7}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 153
    :cond_e
    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "x3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 154
    sput-boolean v9, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mX3Bug:Z

    .line 156
    :cond_f
    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-nez v6, :cond_10

    .line 157
    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    const-string v7, "usb"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/usb/UsbManager;

    sput-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 159
    :cond_10
    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v6, :cond_11

    .line 160
    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    sput-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 167
    :cond_11
    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mDefaultFunction:Ljava/lang/String;

    .line 177
    const-string v6, "connected"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 178
    .local v5, usbConnected:Z
    const-string v6, "configured"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 180
    .local v4, usbConfigured:Z
    const-string v6, "UsbSettingsReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[AUTORUN] getDefaultFunction = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v8}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    if-eqz v5, :cond_13

    .line 183
    const-string v6, "mtp_only"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_12

    sget-boolean v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mDirectAutorun:Z

    if-nez v6, :cond_12

    .line 185
    sput-boolean v9, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mDirectAutorun:Z

    .line 186
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->setUsbConnect()V

    .line 188
    :cond_12
    if-eqz v4, :cond_5

    .line 189
    sput-boolean v10, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mDirectAutorun:Z

    .line 190
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->setUsbConnect()V

    goto/16 :goto_2

    .line 193
    :cond_13
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->setUsbDisconnect()V

    goto/16 :goto_2

    .line 195
    .end local v4           #usbConfigured:Z
    .end local v5           #usbConnected:Z
    :cond_14
    const-string v6, "com.lge.setup_wizard.AUTORUNON"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 196
    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "temp_delay_launcher"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 198
    .local v2, tempDelayLauncher:I
    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "temp_usb_connected"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 200
    .local v3, tempUsbConnected:I
    const-string v6, "UsbSettingsReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[AUTORUN] startUsbSettings() : tempDelayLauncher="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string v6, "UsbSettingsReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[AUTORUN] startUsbSettings() : tempUsbConnected="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    if-ne v2, v9, :cond_15

    if-ne v3, v9, :cond_15

    .line 203
    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "temp_delay_launcher"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 205
    sget-boolean v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mNeedDelayLaunch:Z

    if-eqz v6, :cond_5

    .line 206
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->startUsbSettings()V

    goto/16 :goto_2

    .line 208
    :cond_15
    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "temp_delay_launcher"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 211
    .end local v2           #tempDelayLauncher:I
    .end local v3           #tempUsbConnected:I
    :cond_16
    const-string v6, "android.intent.action.autorun_ack"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 212
    const-string v6, "UsbSettingsReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[AUTORUN] onReceive() : mCurrentFunction="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    sget-boolean v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mOldversion:Z

    if-eqz v6, :cond_17

    .line 214
    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mCurrentFunction:Ljava/lang/String;

    const-string v7, "pc_suite"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 215
    sput-boolean v9, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    .line 216
    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    sget-object v7, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 217
    const-string v6, ""

    sput-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mCurrentFunction:Ljava/lang/String;

    goto/16 :goto_2

    .line 220
    :cond_17
    invoke-static {}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->cancelAutorunTimer()V

    goto/16 :goto_2

    .line 222
    :cond_18
    const-string v6, "android.intent.action.autorun_change_mode"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 223
    const-string v6, "UsbSettingsReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[AUTORUN] onReceive() : mCurrentFunction="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->cancelAutorunTimer()V

    .line 225
    sget-boolean v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mOldversion:Z

    if-nez v6, :cond_5

    .line 226
    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mCurrentFunction:Ljava/lang/String;

    const-string v7, "pc_suite"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 227
    sput-boolean v9, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    .line 228
    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    sget-object v7, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 229
    const-string v6, ""

    sput-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mCurrentFunction:Ljava/lang/String;

    goto/16 :goto_2

    .line 230
    :cond_19
    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mCurrentFunction:Ljava/lang/String;

    const-string v7, "mtp_only"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 231
    sput-boolean v9, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    .line 232
    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    sget-object v7, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 233
    const-string v6, ""

    sput-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mCurrentFunction:Ljava/lang/String;

    goto/16 :goto_2

    .line 236
    :cond_1a
    const-string v6, "android.intent.action.autorun_timeout"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 237
    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mCurrentFunction:Ljava/lang/String;

    const-string v7, "pc_suite"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 238
    sput-boolean v9, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    .line 239
    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    sget-object v7, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 240
    const-string v6, ""

    sput-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mCurrentFunction:Ljava/lang/String;

    goto/16 :goto_2

    .line 241
    :cond_1b
    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mCurrentFunction:Ljava/lang/String;

    const-string v7, "mtp_only"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 242
    sput-boolean v9, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    .line 243
    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    sget-object v7, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 244
    const-string v6, ""

    sput-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mCurrentFunction:Ljava/lang/String;

    goto/16 :goto_2

    .line 246
    :cond_1c
    const-string v6, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 247
    const-string v6, "UsbSettingsReceiver"

    const-string v7, "[AUTORUN] onReceive() : android.intent.action.MEDIA_MOUNTED"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.mass_state_change"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .local v1, i:Landroid/content/Intent;
    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 251
    .end local v1           #i:Landroid/content/Intent;
    :cond_1d
    const-string v6, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    const-string v6, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 254
    :cond_1e
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.mass_state_change"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .restart local v1       #i:Landroid/content/Intent;
    sget-boolean v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbConnected:Z

    if-eqz v6, :cond_1f

    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mDefaultFunction:Ljava/lang/String;

    const-string v7, "mass_storage"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 256
    sget-boolean v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mMountInternalMemory:Z

    if-nez v6, :cond_1f

    .line 257
    sput-boolean v9, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    .line 258
    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v7, "charge_only"

    invoke-virtual {v6, v7, v9}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 259
    const-string v6, "extra_usb_default_mode"

    const-string v7, "charge_only"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    :cond_1f
    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2
.end method

.method public setUsbDisconnect()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 376
    const-string v1, "UsbSettingsReceiver"

    const-string v2, "[AUTORUN] ===== USB Disconnection ====="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    sput-boolean v4, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbConnected:Z

    .line 379
    sget-object v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 381
    .local v0, deviceProvisioned:I
    const-string v1, "UsbSettingsReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AUTORUN] startUsbSettings() : deviceProvisioned="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    if-nez v0, :cond_1

    .line 384
    sget-object v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "temp_usb_connected"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    sget-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mX3Bug:Z

    if-nez v1, :cond_2

    .line 390
    sput-boolean v4, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    .line 392
    :cond_2
    sget-object v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mDefaultFunction:Ljava/lang/String;

    const-string v2, "ecm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->getTetherStatus(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 393
    :cond_3
    sget-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    if-nez v1, :cond_0

    .line 394
    sget-object v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    .line 395
    sget-object v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->setTetherStatus(Landroid/content/Context;Z)V

    goto :goto_0

    .line 397
    :cond_4
    sget-object v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mDefaultFunction:Ljava/lang/String;

    const-string v2, "mass_storage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    sget-object v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->setMassStorage(Landroid/content/Context;Z)Z

    goto :goto_0
.end method
