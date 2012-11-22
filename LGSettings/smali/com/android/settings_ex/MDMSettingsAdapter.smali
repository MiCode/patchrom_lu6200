.class public Lcom/android/settings_ex/MDMSettingsAdapter;
.super Ljava/lang/Object;
.source "MDMSettingsAdapter.java"


# static fields
.field public static LGMDM_ADAPTER_BLUETOOTH:Ljava/lang/String;

.field public static LGMDM_ADAPTER_EMAIL:Ljava/lang/String;

.field public static LGMDM_ADAPTER_GPS:Ljava/lang/String;

.field public static LGMDM_ADAPTER_TETHERING:Ljava/lang/String;

.field public static LGMDM_ADAPTER_USB:Ljava/lang/String;

.field public static LGMDM_ADAPTER_WIFI:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static mInstance:Lcom/android/settings_ex/MDMSettingsAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "MDMSettingsAdapter"

    sput-object v0, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v0, "LGMDMGPSUIAdpater"

    sput-object v0, Lcom/android/settings_ex/MDMSettingsAdapter;->LGMDM_ADAPTER_GPS:Ljava/lang/String;

    const-string v0, "LGMDMWifiUIAdapter"

    sput-object v0, Lcom/android/settings_ex/MDMSettingsAdapter;->LGMDM_ADAPTER_WIFI:Ljava/lang/String;

    const-string v0, "LGMDMEmailUIAdapter"

    sput-object v0, Lcom/android/settings_ex/MDMSettingsAdapter;->LGMDM_ADAPTER_EMAIL:Ljava/lang/String;

    const-string v0, "LGMDMUsbUIAdapter"

    sput-object v0, Lcom/android/settings_ex/MDMSettingsAdapter;->LGMDM_ADAPTER_USB:Ljava/lang/String;

    const-string v0, "LGMDMBluetoothAdapter"

    sput-object v0, Lcom/android/settings_ex/MDMSettingsAdapter;->LGMDM_ADAPTER_BLUETOOTH:Ljava/lang/String;

    const-string v0, "LGMDMTethringAdapter"

    sput-object v0, Lcom/android/settings_ex/MDMSettingsAdapter;->LGMDM_ADAPTER_TETHERING:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method public static getInstance()Lcom/android/settings_ex/MDMSettingsAdapter;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/settings_ex/MDMSettingsAdapter;->mInstance:Lcom/android/settings_ex/MDMSettingsAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings_ex/MDMSettingsAdapter;

    invoke-direct {v0}, Lcom/android/settings_ex/MDMSettingsAdapter;-><init>()V

    sput-object v0, Lcom/android/settings_ex/MDMSettingsAdapter;->mInstance:Lcom/android/settings_ex/MDMSettingsAdapter;

    :cond_0
    sget-object v0, Lcom/android/settings_ex/MDMSettingsAdapter;->mInstance:Lcom/android/settings_ex/MDMSettingsAdapter;

    return-object v0
.end method

.method private isUsbConnected()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 399
    const-string v0, "/sys/class/android_usb/android0/state"

    .line 400
    .local v0, STATE_PATH:Ljava/lang/String;
    const/4 v2, 0x0

    .line 402
    .local v2, state:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 407
    :goto_0
    if-eqz v2, :cond_3

    .line 408
    const-string v4, "DISCONNECTED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isUsbConnected : DISCONNECTED state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :goto_1
    return v3

    .line 403
    :catch_0
    move-exception v1

    .line 404
    .local v1, e:Ljava/io/IOException;
    sget-object v4, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isUsbConnected : IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/controller/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 411
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    const-string v3, "CONNECTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUsbConnected : CONNECTED state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :goto_2
    const/4 v3, 0x1

    goto :goto_1

    .line 413
    :cond_1
    const-string v3, "CONFIGURED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUsbConnected : CONFIGURED state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 416
    :cond_2
    sget-object v3, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUsbConnected : unknown state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/controller/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 419
    :cond_3
    sget-object v3, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v4, "isUsbConnected : state is null"

    invoke-static {v3, v4}, Lcom/lge/mdm/controller/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private setUsbSettingsControlChargeOnly()V
    .locals 2

    .prologue
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode"

    const-string v1, "4"

    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->writeToFile(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private strReverse(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    .line 327
    const-string v1, ""

    .line 328
    .local v1, s:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :cond_0
    return-object v1
.end method


# virtual methods
.method public checkAdbDisallow()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 384
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/lge/mdm/LGMDMManager;->getAllowScreenCapture(Landroid/content/ComponentName;)Z

    move-result v1

    .line 385
    .local v1, allowScreenCapture:Z
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/lge/mdm/LGMDMManager;->getAllowUsb(Landroid/content/ComponentName;)Z

    move-result v2

    .line 386
    .local v2, allowUsb:Z
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/lge/mdm/LGMDMManager;->getAllowScreenCaptureWithBlacklist(Landroid/content/ComponentName;)Z

    move-result v0

    .line 387
    .local v0, allowScreenCaptrueWithBlacklist:Z
    sget-object v3, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAdbDisallow : allowScreenCapture = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAdbDisallow : allowUsb = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAdbDisallow : allowScreenCaptrueWithBlacklist : allowScreenCaptrueWithBlacklist = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 392
    const/4 v3, 0x0

    .line 394
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public checkDeviceEncryption()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 786
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/mdm/LGMDMManager;->getEncryptionPolicy(Landroid/content/ComponentName;)I

    move-result v0

    .line 787
    .local v0, encryption:I
    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    .line 791
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkDisabled(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5
    .parameter "who"
    .parameter "mCurrentModuleName"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkDisabled() Component : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/settings_ex/MDMSettingsAdapter;->LGMDM_ADAPTER_GPS:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowGPSLocation(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    sget-object v2, Lcom/android/settings_ex/MDMSettingsAdapter;->LGMDM_ADAPTER_WIFI:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 89
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 93
    goto :goto_0

    .line 94
    :cond_3
    sget-object v2, Lcom/android/settings_ex/MDMSettingsAdapter;->LGMDM_ADAPTER_EMAIL:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 95
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/mdm/LGMDMManager;->isManualSyncCurrent()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 96
    goto :goto_0

    .line 98
    :cond_4
    sget-object v2, Lcom/android/settings_ex/MDMSettingsAdapter;->LGMDM_ADAPTER_BLUETOOTH:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 99
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowBluetooth(Landroid/content/ComponentName;)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 101
    goto :goto_0

    .line 102
    :cond_5
    sget-object v2, Lcom/android/settings_ex/MDMSettingsAdapter;->LGMDM_ADAPTER_USB:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 103
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowUsb(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v2, "checkDisabled() : Disallow USB"

    invoke-static {v0, v2}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 106
    goto :goto_0

    .line 107
    :cond_6
    sget-object v2, Lcom/android/settings_ex/MDMSettingsAdapter;->LGMDM_ADAPTER_TETHERING:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowTethering(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 110
    goto :goto_0
.end method

.method public checkSimplepassword(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .parameter "res"
    .parameter "password"

    .prologue
    .line 243
    const-string v3, "abcdefghijklmnopqrstuvwxyz"

    .line 244
    .local v3, aAlpha:Ljava/lang/String;
    const-string v4, "01234567890"

    .line 245
    .local v4, aNumeric:Ljava/lang/String;
    const/4 v9, 0x1

    .line 246
    .local v9, nRepCount:I
    const/4 v10, 0x4

    .line 247
    .local v10, nReqLimit:I
    const/4 v7, 0x0

    .line 248
    .local v7, currChar:C
    const/4 v12, 0x0

    .line 249
    .local v12, prevChar:C
    const-string v14, ""

    .line 252
    .local v14, sRepeatedString:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_2

    .line 254
    move v12, v7

    .line 255
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 257
    if-ne v12, v7, :cond_0

    .line 259
    add-int/lit8 v9, v9, 0x1

    .line 260
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 268
    :goto_1
    if-lt v9, v10, :cond_1

    .line 270
    const v17, 0x7f080965

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v14, v18, v19

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 323
    :goto_2
    return-object v17

    .line 264
    :cond_0
    const/4 v9, 0x1

    .line 265
    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 252
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 274
    :cond_2
    const/4 v6, 0x0

    .line 275
    .local v6, bSeqDigit:Z
    const/4 v5, 0x0

    .line 276
    .local v5, bSeqAlpha:Z
    const/4 v11, 0x4

    .line 277
    .local v11, nSeqLimit:I
    const-string v16, ""

    .line 280
    .local v16, sSequentialString:Ljava/lang/String;
    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v17

    sub-int v17, v17, v11

    move/from16 v0, v17

    if-ge v8, v0, :cond_3

    .line 282
    add-int v17, v11, v8

    move/from16 v0, v17

    invoke-virtual {v3, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 283
    .local v13, sFwd:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/MDMSettingsAdapter;->strReverse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 285
    .local v15, sRev:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 287
    const/4 v5, 0x1

    .line 288
    move-object/from16 v16, v13

    .line 300
    .end local v13           #sFwd:Ljava/lang/String;
    .end local v15           #sRev:Ljava/lang/String;
    :cond_3
    :goto_4
    if-eqz v5, :cond_6

    .line 301
    const v17, 0x7f080966

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v16, v18, v19

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto :goto_2

    .line 292
    .restart local v13       #sFwd:Ljava/lang/String;
    .restart local v15       #sRev:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 294
    const/4 v5, 0x1

    .line 295
    move-object/from16 v16, v15

    .line 296
    goto :goto_4

    .line 280
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 305
    .end local v13           #sFwd:Ljava/lang/String;
    .end local v15           #sRev:Ljava/lang/String;
    :cond_6
    const/4 v8, 0x0

    :goto_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v17

    sub-int v17, v17, v11

    move/from16 v0, v17

    if-ge v8, v0, :cond_7

    .line 306
    add-int v17, v11, v8

    move/from16 v0, v17

    invoke-virtual {v4, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 307
    .restart local v13       #sFwd:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/MDMSettingsAdapter;->strReverse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 308
    .restart local v15       #sRev:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    .line 309
    const/4 v6, 0x1

    .line 310
    move-object/from16 v16, v13

    .line 320
    .end local v13           #sFwd:Ljava/lang/String;
    .end local v15           #sRev:Ljava/lang/String;
    :cond_7
    :goto_6
    if-eqz v6, :cond_a

    .line 321
    const v17, 0x7f080966

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v16, v18, v19

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_2

    .line 313
    .restart local v13       #sFwd:Ljava/lang/String;
    .restart local v15       #sRev:Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    .line 314
    const/4 v6, 0x1

    .line 315
    move-object/from16 v16, v15

    .line 316
    goto :goto_6

    .line 305
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 323
    .end local v13           #sFwd:Ljava/lang/String;
    .end local v15           #sRev:Ljava/lang/String;
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_2
.end method

.method public setAdbEnableMenu(Landroid/content/ComponentName;Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/content/ContentResolver;)V
    .locals 9
    .parameter "who"
    .parameter "resContext"
    .parameter "mEnableAdb"
    .parameter "cr"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 351
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowScreenCapture(Landroid/content/ComponentName;)Z

    move-result v1

    .line 352
    .local v1, allowScreenCapture:Z
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowUsb(Landroid/content/ComponentName;)Z

    move-result v2

    .line 353
    .local v2, allowUsb:Z
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowScreenCaptureWithBlacklist(Landroid/content/ComponentName;)Z

    move-result v0

    .line 354
    .local v0, allowScreenCaptrueWithBlacklist:Z
    sget-object v4, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LGMDM adb menu : allowScreenCapture = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LGMDM adb menu : allowUsb = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LGMDM adb menu : allowScreenCaptrueWithBlacklist = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings_ex/MDMSettingsAdapter;->isUsbConnected()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p3, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_0
    :goto_0
    const v4, 0x7f0804cf

    invoke-virtual {p3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    :goto_1
    return-void

    :cond_1
    const-string v4, "VZW"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 364
    const-string v4, "usb"

    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbManager;

    .line 365
    .local v3, mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-virtual {v3}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ecm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pc_suite"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 368
    invoke-virtual {p3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 371
    :cond_2
    invoke-virtual {p3, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 377
    .end local v3           #mUsbManager:Landroid/hardware/usb/UsbManager;
    :cond_3
    const v4, 0x7f080970

    invoke-virtual {p3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 378
    invoke-virtual {p3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 379
    invoke-virtual {p3, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method public setAdminListEnableClickMenu(Landroid/content/ComponentName;Landroid/content/Context;Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 7
    .parameter "who"
    .parameter "context"
    .parameter "item"

    .prologue
    .line 458
    const-string v4, "device_policy"

    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 459
    .local v3, mDPM:Landroid/app/admin/DevicePolicyManager;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 460
    .local v2, mActiveAdmins:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    .line 461
    .local v0, cur:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_0

    .line 462
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 463
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 462
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 466
    .end local v1           #i:I
    :cond_0
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/lge/mdm/LGMDMManager;->getAllowRemoveDeviceAdmin(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v5, "MDM: allowed package can\'t remove "

    invoke-static {v4, v5}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public setAdminListEnableDisplayMenu(Landroid/content/ComponentName;Landroid/content/Context;Landroid/app/admin/DeviceAdminInfo;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/CheckBox;Landroid/widget/TextView;)V
    .locals 8
    .parameter "who"
    .parameter "context"
    .parameter "item"
    .parameter "icon"
    .parameter "name"
    .parameter "checkbox"
    .parameter "description"

    .prologue
    const/4 v7, 0x0

    .line 439
    const-string v4, "device_policy"

    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 440
    .local v3, mDPM:Landroid/app/admin/DevicePolicyManager;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 441
    .local v2, mActiveAdmins:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    .line 442
    .local v0, cur:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_0

    .line 443
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 444
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 443
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 447
    .end local v1           #i:I
    :cond_0
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v4

    invoke-virtual {p3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {p3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/lge/mdm/LGMDMManager;->getAllowRemoveDeviceAdmin(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 448
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 449
    invoke-virtual {p5, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 450
    invoke-virtual {p6, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 451
    invoke-virtual {p7, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 452
    const v4, 0x7f080971

    invoke-virtual {p7, v4}, Landroid/widget/TextView;->setText(I)V

    .line 454
    :cond_1
    return-void
.end method

.method public setAutoMasterSynceEnableMenu(Landroid/content/ComponentName;Landroid/widget/Switch;)Z
    .locals 3
    .parameter "who"
    .parameter "autoSyncSwitch"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 335
    if-nez p2, :cond_0

    .line 347
    :goto_0
    return v0

    .line 339
    :cond_0
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/mdm/LGMDMManager;->isManualSyncCurrent()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    sget-object v0, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v2, "[LGMDM] master auto synce is false"

    invoke-static {v0, v2}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    sget-object v0, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v2, "[LGMDM] master auto synce is true"

    invoke-static {v0, v2}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setDataUsageRoamingMenu(Landroid/content/ComponentName;Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "who"
    .parameter "mMenuDataRoaming"

    .prologue
    const/4 v0, 0x0

    .line 526
    if-nez p2, :cond_0

    .line 533
    :goto_0
    return v0

    .line 530
    :cond_0
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowDataRoaming(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 531
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 533
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setDataUsageSwitch(Landroid/content/ComponentName;Landroid/widget/Switch;)Z
    .locals 2
    .parameter "who"
    .parameter "mDataEnabled"

    .prologue
    const/4 v0, 0x0

    .line 515
    if-nez p2, :cond_0

    .line 522
    :goto_0
    return v0

    .line 519
    :cond_0
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowMobileNetwork(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 520
    invoke-virtual {p2, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 522
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setEraseSdMenu(Landroid/content/ComponentName;Landroid/preference/Preference;Landroid/os/storage/StorageVolume;)Z
    .locals 5
    .parameter "who"
    .parameter "mFormatPreference"
    .parameter "storageVolume"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v4, "setEraseSdMenu"

    invoke-static {v3, v4}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowWipeData(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 228
    invoke-virtual {p3}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 229
    .local v0, allowFormat:Z
    :goto_1
    invoke-virtual {p2, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 230
    if-eqz v0, :cond_3

    invoke-virtual {p3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    if-nez v2, :cond_3

    .line 231
    const v2, 0x7f08097f

    invoke-virtual {p2, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 235
    :goto_2
    sget-object v2, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v3, "setEraseSdMenu: MDM Locked menu"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 236
    goto :goto_0

    .end local v0           #allowFormat:Z
    :cond_2
    move v0, v2

    .line 228
    goto :goto_1

    .line 233
    .restart local v0       #allowFormat:Z
    :cond_3
    const v2, 0x7f08097c

    invoke-virtual {p2, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_2
.end method

.method public setExternalMemoryEnableMenu(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "who"
    .parameter "resContext"
    .parameter "menuString"
    .parameter "externalmenu"

    .prologue
    const/4 v0, 0x0

    sget-object v1, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkReceAction() Component : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Menu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    if-eqz p4, :cond_0

    if-nez p3, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v0

    .line 209
    :cond_1
    const-string v1, "mMountSDcard"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 210
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowExternalMemorySlot(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v2, "[LGMDM] Allow mode"

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    const v0, 0x7f08035d

    invoke-virtual {p4, v0}, Landroid/preference/Preference;->setTitle(I)V

    const v0, 0x7f08096d

    invoke-virtual {p4, v0}, Landroid/preference/Preference;->setSummary(I)V

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setFactoryResetButton(Landroid/content/ComponentName;Landroid/content/Context;Landroid/widget/Button;)V
    .locals 4
    .parameter "who"
    .parameter "resContext"
    .parameter "mInitiateButton"

    .prologue
    .line 489
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowWipeData(Landroid/content/ComponentName;)Z

    move-result v0

    .line 490
    .local v0, allowFactoryRest:Z
    sget-object v1, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LGMDM menu : allowFactoryRest = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    if-nez p3, :cond_0

    .line 499
    :goto_0
    return-void

    .line 494
    :cond_0
    if-eqz v0, :cond_1

    .line 495
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 497
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setFactoryResetConfirmButton(Landroid/content/ComponentName;Landroid/content/Context;Landroid/widget/Button;)V
    .locals 4
    .parameter "who"
    .parameter "resContext"
    .parameter "mFinalButton"

    .prologue
    .line 502
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowWipeData(Landroid/content/ComponentName;)Z

    move-result v0

    .line 503
    .local v0, allowFactoryRest:Z
    sget-object v1, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LGMDM menu : allowFactoryRest = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    if-nez p3, :cond_0

    .line 512
    :goto_0
    return-void

    .line 507
    :cond_0
    if-eqz v0, :cond_1

    .line 508
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 510
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setFactoryResetMenu(Landroid/content/ComponentName;Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 4
    .parameter "who"
    .parameter "resContext"
    .parameter "mBackupReset"

    .prologue
    .line 474
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowWipeData(Landroid/content/ComponentName;)Z

    move-result v0

    .line 475
    .local v0, allowFactoryRest:Z
    sget-object v1, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LGMDM menu : allowFactoryRest = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    if-nez p3, :cond_0

    .line 486
    :goto_0
    return-void

    .line 479
    :cond_0
    if-eqz v0, :cond_1

    .line 480
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 481
    const v1, 0x7f0803a2

    invoke-virtual {p3, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 483
    :cond_1
    const v1, 0x7f08097b

    invoke-virtual {p3, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 484
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setLocationEnableMenu(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Landroid/preference/CheckBoxPreference;)Z
    .locals 8
    .parameter "who"
    .parameter "resContext"
    .parameter "menuString"
    .parameter "menu"

    .prologue
    const v7, 0x7f080975

    const v6, 0x7f080974

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v3, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLocationEnableMenu() Component : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Menu: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    if-eqz p4, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move v1, v2

    .line 200
    :cond_1
    :goto_0
    return v1

    .line 122
    :cond_2
    const-string v3, "mGps"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 123
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowGPSLocation(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v2, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v3, "[LGMDM] Allow mode"

    invoke-static {v2, v3}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    const v2, 0x7f0803d5

    invoke-virtual {p4, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    const-string v2, "SKT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "KT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "LGU"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    :cond_3
    const v2, 0x7f080910

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 133
    :cond_4
    sget-object v3, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v4, "[LGMDM] disabllow mode"

    invoke-static {v3, v4}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p4, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 136
    invoke-virtual {p4, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 137
    const-string v2, "SKT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "KT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "LGU"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    :cond_5
    invoke-virtual {p2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 142
    :cond_6
    const-string v3, "mGpsVzw"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 143
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowGPSLocation(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v2, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v3, "[LGMDM] Allow mode"

    invoke-static {v2, v3}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    const v2, 0x7f0806c6

    invoke-virtual {p4, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_0

    :cond_7
    sget-object v3, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v4, "[LGMDM] disabllow mode"

    invoke-static {v3, v4}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p4, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 152
    const v2, 0x20b001a

    invoke-virtual {p4, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 154
    :cond_8
    const-string v3, "mNetwork"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 155
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowWirelessLocation(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_c

    sget-object v2, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v3, "[LGMDM] Allow mode"

    invoke-static {v2, v3}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    const v2, 0x7f0803d2

    invoke-virtual {p4, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    const-string v2, "SKT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "KT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "LGU"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    :cond_9
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 163
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v2

    if-eq v2, v1, :cond_a

    .line 164
    const v2, 0x7f08090d

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 166
    :cond_a
    const-string v2, "SKT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 167
    const v2, 0x7f0809e4

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 169
    :cond_b
    const v2, 0x7f0809e5

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 174
    .end local v0           #tm:Landroid/telephony/TelephonyManager;
    :cond_c
    sget-object v3, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v4, "[LGMDM] disabllow mode"

    invoke-static {v3, v4}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p4, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 177
    invoke-virtual {p4, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 178
    const-string v2, "SKT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "KT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "LGU"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    :cond_d
    invoke-virtual {p2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 183
    :cond_e
    const-string v2, "mVzwLbs"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v3, "setLocationEnableMenu : unknown menu"

    invoke-static {v2, v3}, Lcom/lge/mdm/controller/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setMobileNetworkMenu(Landroid/content/ComponentName;Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 3
    .parameter "who"
    .parameter "resContext"
    .parameter "mButtonDataEnabled"

    .prologue
    const v2, 0x7f0809fc

    .line 771
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowMobileNetwork(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x20b004e

    invoke-virtual {p3, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    sget-object v0, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "LGMDM DevicePolicyManager Locked Mobile Network"

    invoke-static {v0, v1}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "SKT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 777
    invoke-virtual {p3, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 778
    :cond_1
    const-string v0, "LGU"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 779
    invoke-virtual {p3, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 781
    :cond_2
    const v0, 0x7f0807f3

    invoke-virtual {p3, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method public setSettingsMenu(Landroid/content/res/Resources;Landroid/widget/ListAdapter;)Z
    .locals 10
    .parameter "res"
    .parameter "listAdapter"

    .prologue
    const v9, 0x7f080968

    const v8, 0x7f080967

    const/4 v7, 0x0

    const/4 v0, 0x0

    .local v0, changed:Z
    if-nez p2, :cond_0

    sget-object v5, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v6, "setSettingsMenu: listAdapter = null "

    invoke-static {v5, v6}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {p2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_8

    .line 725
    invoke-interface {p2, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 726
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    iget-wide v5, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v3, v5

    .line 727
    .local v3, id:I
    invoke-virtual {v1, p1}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 729
    .local v4, summary:Ljava/lang/String;
    const v5, 0x7f0b025a

    if-eq v3, v5, :cond_1

    const v5, 0x7f0b025f

    if-ne v3, v5, :cond_5

    .line 730
    :cond_1
    invoke-static {}, Lcom/android/settings_ex/MDMSettingsAdapter;->getInstance()Lcom/android/settings_ex/MDMSettingsAdapter;

    move-result-object v5

    sget-object v6, Lcom/android/settings_ex/MDMSettingsAdapter;->LGMDM_ADAPTER_WIFI:Ljava/lang/String;

    invoke-virtual {v5, v7, v6}, Lcom/android/settings_ex/MDMSettingsAdapter;->checkDisabled(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 731
    if-eqz v4, :cond_2

    if-eqz v4, :cond_3

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 732
    :cond_2
    sget-object v5, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v6, "MDM wifi change summary"

    invoke-static {v5, v6}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_3

    sget-object v5, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v6, "MDM wifi change summary to null"

    invoke-static {v5, v6}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, v1, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const v5, 0x7f0b025b

    if-ne v3, v5, :cond_3

    invoke-static {}, Lcom/android/settings_ex/MDMSettingsAdapter;->getInstance()Lcom/android/settings_ex/MDMSettingsAdapter;

    move-result-object v5

    sget-object v6, Lcom/android/settings_ex/MDMSettingsAdapter;->LGMDM_ADAPTER_BLUETOOTH:Ljava/lang/String;

    invoke-virtual {v5, v7, v6}, Lcom/android/settings_ex/MDMSettingsAdapter;->checkDisabled(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 745
    if-eqz v4, :cond_6

    if-eqz v4, :cond_3

    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 746
    :cond_6
    sget-object v5, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v6, "MDM bt change summary"

    invoke-static {v5, v6}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    if-eqz v4, :cond_3

    sget-object v5, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v6, "MDM bt change summary to null"

    invoke-static {v5, v6}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, v1, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    goto :goto_2

    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v3           #id:I
    .end local v4           #summary:Ljava/lang/String;
    :cond_8
    sget-object v6, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSettingsMenu "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v0, :cond_9

    const-string v5, "changed"

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v0

    .line 760
    goto/16 :goto_0

    .line 759
    :cond_9
    const-string v5, "not changed"

    goto :goto_3
.end method

.method public setStorgeEncryptionSummary(Landroid/content/ComponentName;Landroid/content/Context;Landroid/preference/Preference;)V
    .locals 1
    .parameter "who"
    .parameter "resContext"
    .parameter "mSdCardEncryption"

    .prologue
    .line 797
    if-nez p3, :cond_0

    .line 801
    :goto_0
    return-void

    .line 800
    :cond_0
    const v0, 0x7f08097e

    invoke-virtual {p3, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method public setUnknownSourceEnableMenu(Landroid/content/ComponentName;Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 4
    .parameter "who"
    .parameter "resContext"
    .parameter "toggleAppInstallation"

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f08096f

    .line 425
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowUnknownSourceInstallation(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "LGMDM does not allow unknown source installtion menu"

    invoke-static {v0, v1}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    invoke-virtual {p3, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    invoke-virtual {p3, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    invoke-virtual {p3, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    invoke-virtual {p3, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setUsbMenu(Landroid/content/ComponentName;Landroid/content/Context;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;)V
    .locals 10
    .parameter "who"
    .parameter "resContext"
    .parameter "charger"
    .parameter "mediasync"
    .parameter "massStorage"
    .parameter "pcsuite"
    .parameter "tether"
    .parameter "ptp"
    .parameter "internet"

    .prologue
    .line 543
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowUsb(Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_8

    if-eqz p3, :cond_1

    const/4 v6, 0x1

    invoke-virtual {p3, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settings_ex/MDMSettingsAdapter;->setUsbSettingsControlChargeOnly()V

    :goto_0
    if-eqz p4, :cond_2

    const/4 v6, 0x0

    invoke-virtual {p4, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    const v6, 0x7f080976

    invoke-virtual {p4, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setSummary(I)V

    const/4 v6, 0x0

    invoke-virtual {p4, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setEnabled(Z)V

    :goto_1
    if-eqz p5, :cond_3

    const/4 v6, 0x0

    invoke-virtual {p5, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    const v6, 0x7f080979

    invoke-virtual {p5, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setSummary(I)V

    const/4 v6, 0x0

    invoke-virtual {p5, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setEnabled(Z)V

    :goto_2
    if-eqz p6, :cond_4

    const/4 v6, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    const v6, 0x7f080977

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setSummary(I)V

    const/4 v6, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setEnabled(Z)V

    :goto_3
    if-eqz p7, :cond_5

    const/4 v6, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    const v6, 0x7f08096a

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setSummary(I)V

    const/4 v6, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setEnabled(Z)V

    :goto_4
    if-eqz p8, :cond_6

    const/4 v6, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    const v6, 0x7f080978

    move-object/from16 v0, p8

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setSummary(I)V

    const/4 v6, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setEnabled(Z)V

    :goto_5
    if-eqz p9, :cond_7

    const/4 v6, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    const v6, 0x7f08096a

    move-object/from16 v0, p9

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setSummary(I)V

    const/4 v6, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setEnabled(Z)V

    :cond_0
    :goto_6
    return-void

    :cond_1
    sget-object v6, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v7, "setUsbMenu : charger is null"

    invoke-static {v6, v7}, Lcom/lge/mdm/controller/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 558
    :cond_2
    sget-object v6, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v7, "setUsbMenu : mediasync is null"

    invoke-static {v6, v7}, Lcom/lge/mdm/controller/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 567
    :cond_3
    sget-object v6, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v7, "setUsbMenu : massStorage is null"

    invoke-static {v6, v7}, Lcom/lge/mdm/controller/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 576
    :cond_4
    sget-object v6, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v7, "setUsbMenu : pcsuite is null"

    invoke-static {v6, v7}, Lcom/lge/mdm/controller/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 585
    :cond_5
    sget-object v6, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v7, "setUsbMenu : tether is null"

    invoke-static {v6, v7}, Lcom/lge/mdm/controller/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 594
    :cond_6
    sget-object v6, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v7, "setUsbMenu : ptp is null"

    invoke-static {v6, v7}, Lcom/lge/mdm/controller/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 603
    :cond_7
    sget-object v6, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v7, "setUsbMenu : internet is null"

    invoke-static {v6, v7}, Lcom/lge/mdm/controller/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 606
    :cond_8
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "sp_usbtype_mtp_summary_NORMAL"

    const-string v8, "string"

    const-string v9, "com.android.settings_ex"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 607
    .local v2, resMediasyncSummaryID:I
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "sp_usbtype_massstorage_summary_NORMAL"

    const-string v8, "string"

    const-string v9, "com.android.settings_ex"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 609
    .local v1, resMassStorageSummaryID:I
    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "i_skt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "i_u"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 610
    :cond_9
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "sp_connect_usb_storage_NORMAL"

    const-string v8, "string"

    const-string v9, "com.android.settings_ex"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 613
    :cond_a
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "sp_usbtype_pcsoftware_summary_NORMAL"

    const-string v8, "string"

    const-string v9, "com.android.settings_ex"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 614
    .local v3, resPcsuiteSummaryID:I
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "sp_usbtype_tethering_summary_NORMAL"

    const-string v8, "string"

    const-string v9, "com.android.settings_ex"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 615
    .local v5, resTetherSummaryID:I
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "sp_usbtype_ptp_summary_NORMAL"

    const-string v8, "string"

    const-string v9, "com.android.settings_ex"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 618
    .local v4, resPtpSummaryID:I
    if-eqz p3, :cond_13

    .line 619
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowTethering(Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_c

    if-eqz p7, :cond_b

    invoke-virtual/range {p7 .. p7}, Lcom/android/settings_ex/lge/RadioButtonPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v6, 0x1

    invoke-virtual {p3, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settings_ex/MDMSettingsAdapter;->setUsbSettingsControlChargeOnly()V

    :cond_b
    if-eqz p9, :cond_c

    invoke-virtual/range {p9 .. p9}, Lcom/android/settings_ex/lge/RadioButtonPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v6, 0x1

    invoke-virtual {p3, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settings_ex/MDMSettingsAdapter;->setUsbSettingsControlChargeOnly()V

    :cond_c
    :goto_7
    if-eqz p4, :cond_14

    invoke-virtual {p4}, Lcom/android/settings_ex/lge/RadioButtonPreference;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_d

    const/4 v6, 0x1

    invoke-virtual {p4, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setEnabled(Z)V

    :cond_d
    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_8
    if-eqz p5, :cond_15

    invoke-virtual {p5}, Lcom/android/settings_ex/lge/RadioButtonPreference;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_e

    const/4 v6, 0x1

    invoke-virtual {p5, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setEnabled(Z)V

    :cond_e
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p5, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_9
    if-eqz p6, :cond_16

    invoke-virtual/range {p6 .. p6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_f

    const/4 v6, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setEnabled(Z)V

    :cond_f
    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 664
    :goto_a
    if-eqz p7, :cond_19

    .line 665
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowTethering(Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-virtual/range {p7 .. p7}, Lcom/android/settings_ex/lge/RadioButtonPreference;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_10

    const/4 v6, 0x1

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setEnabled(Z)V

    :cond_10
    invoke-virtual {p2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_11
    :goto_b
    if-eqz p8, :cond_1a

    invoke-virtual/range {p8 .. p8}, Lcom/android/settings_ex/lge/RadioButtonPreference;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_12

    const/4 v6, 0x1

    move-object/from16 v0, p8

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setEnabled(Z)V

    :cond_12
    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p8

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 690
    :goto_c
    if-eqz p9, :cond_1d

    .line 691
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowTethering(Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-virtual/range {p9 .. p9}, Lcom/android/settings_ex/lge/RadioButtonPreference;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x1

    move-object/from16 v0, p9

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setEnabled(Z)V

    const/4 v6, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 633
    :cond_13
    sget-object v6, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v7, "setUsbMenu [allow] : charger is null"

    invoke-static {v6, v7}, Lcom/lge/mdm/controller/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 642
    :cond_14
    sget-object v6, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v7, "setUsbMenu [allow] : Mediasync is null"

    invoke-static {v6, v7}, Lcom/lge/mdm/controller/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 651
    :cond_15
    sget-object v6, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v7, "setUsbMenu [allow] : massStorage is null"

    invoke-static {v6, v7}, Lcom/lge/mdm/controller/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 660
    :cond_16
    sget-object v6, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v7, "setUsbMenu [allow] : pcsuite is null"

    invoke-static {v6, v7}, Lcom/lge/mdm/controller/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 670
    :cond_17
    const v6, 0x7f08096a

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setSummary(I)V

    invoke-virtual/range {p7 .. p7}, Lcom/android/settings_ex/lge/RadioButtonPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_18

    const/4 v6, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    :cond_18
    invoke-virtual/range {p7 .. p7}, Lcom/android/settings_ex/lge/RadioButtonPreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 674
    const/4 v6, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setEnabled(Z)V

    goto :goto_b

    .line 677
    :cond_19
    sget-object v6, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v7, "setUsbMenu [allow] : tether is null"

    invoke-static {v6, v7}, Lcom/lge/mdm/controller/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 686
    :cond_1a
    sget-object v6, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v7, "setUsbMenu [allow] : ptp is null"

    invoke-static {v6, v7}, Lcom/lge/mdm/controller/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 701
    :cond_1b
    const v6, 0x7f08096a

    move-object/from16 v0, p9

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setSummary(I)V

    invoke-virtual/range {p9 .. p9}, Lcom/android/settings_ex/lge/RadioButtonPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1c

    const/4 v6, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    :cond_1c
    invoke-virtual/range {p9 .. p9}, Lcom/android/settings_ex/lge/RadioButtonPreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 705
    const/4 v6, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setEnabled(Z)V

    goto/16 :goto_6

    .line 708
    :cond_1d
    sget-object v6, Lcom/android/settings_ex/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v7, "setUsbMenu [allow] : internet is null"

    invoke-static {v6, v7}, Lcom/lge/mdm/controller/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6
.end method
