.class public Landroid/bluetooth/BluetoothServiceConfig;
.super Ljava/lang/Object;
.source "BluetoothServiceConfig.java"


# static fields
.field public static final D:Z = true

.field public static final DISABLE_SCAN_ON_PHONECALL:Z = false

.field public static final HDP_PROFILE:Ljava/lang/String; = "bluetooth_hdp"

.field public static final HF_AUTOCONNECT_BITMAP_PROPERTY:Ljava/lang/String; = "service.brcm.bt.autoconnect"

.field public static final HID_PROFILE:Ljava/lang/String; = "bluetooth_hid"

.field public static final HID_TEST_MODE_ENABLED:Z = true

.field public static IS_DEVELOPMENT_MODE:Z = false

.field private static IS_STANDALONE_PROCESS:Z = false

.field public static final L2CAP_ENABLED:Z = true

.field public static final L2CAP_TEST_MODE_ENABLED:Z = true

.field public static final MODE_LOAD_AS_SYSTEM_SVC:I = 0x1

.field public static final MODE_USE_APP_SERVICES:I = 0x2

.field public static final PAN_PROFILE:Ljava/lang/String; = "bluetooth_pan"

.field static final SERVICES:[Ljava/lang/String; = null

.field static final SERVICES_AVAILABLE:[Z = null

.field static final SERVICES_STARTUP_ENABLED:[Z = null

.field public static final SETTINGS_PREFIX:Ljava/lang/String; = "bt_svcst_"

.field public static final SHOW_ADVANCED_SETTINGS:Z = true

.field public static final STATE_NOT_AVAILABLE:I = -0x1

.field public static final STATE_STARTED:I = 0x2

.field public static final STATE_STOPPED:I = 0x1

.field public static final V:Z = true

.field public static dualhf_enabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/16 v4, 0x10

    const/4 v3, 0x0

    .line 63
    sput-boolean v2, Landroid/bluetooth/BluetoothServiceConfig;->IS_DEVELOPMENT_MODE:Z

    .line 94
    sput-boolean v3, Landroid/bluetooth/BluetoothServiceConfig;->IS_STANDALONE_PROCESS:Z

    .line 102
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "bluetooth_bpp_service"

    aput-object v1, v0, v3

    const-string v1, "bluetooth_dm_service"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "bluetooth_dun"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "bluetooth_ftp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bluetooth_gatt"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "bluetooth_opp_service"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "bluetooth_pbap"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "bluetooth_sap"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "bluetooth_map"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bluetooth_test"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bluetooth_avrcp"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "bluetooth_fm_receiver_service"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "bluetooth_flick"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "bluetooth_hid"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "bluetooth_pan"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "bluetooth_hdp"

    aput-object v2, v0, v1

    sput-object v0, Landroid/bluetooth/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    .line 127
    new-array v0, v4, [Z

    fill-array-data v0, :array_0

    sput-object v0, Landroid/bluetooth/BluetoothServiceConfig;->SERVICES_AVAILABLE:[Z

    .line 154
    new-array v0, v4, [Z

    fill-array-data v0, :array_1

    sput-object v0, Landroid/bluetooth/BluetoothServiceConfig;->SERVICES_STARTUP_ENABLED:[Z

    .line 217
    sput-boolean v3, Landroid/bluetooth/BluetoothServiceConfig;->dualhf_enabled:Z

    .line 221
    const-string v0, "com.brcm.bt.dualhf"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/bluetooth/BluetoothServiceConfig;->dualhf_enabled:Z

    .line 222
    return-void

    .line 127
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 154
    :array_1
    .array-data 0x1
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAccessRequestEnabled()Z
    .locals 3

    .prologue
    .line 331
    const-string/jumbo v1, "service.brcm.bt.secure_mode"

    const-string/jumbo v2, "property not found"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, mSecureModeProperty:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isBluetoothSupported()Z
    .locals 1

    .prologue
    .line 283
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isScanAllowed(Landroid/content/Context;)Z
    .locals 1
    .parameter "ctx"

    .prologue
    .line 305
    if-eqz p0, :cond_0

    .line 318
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "ctx"
    .parameter "svcName"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 290
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/bluetooth/BluetoothServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 292
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 293
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bt_svcst_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 296
    .end local v0           #cr:Landroid/content/ContentResolver;
    :goto_0
    return v1

    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_0
    move v1, v2

    .line 293
    goto :goto_0

    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_1
    move v1, v2

    .line 296
    goto :goto_0
.end method

.method public static isServiceSupported(Ljava/lang/String;)Z
    .locals 11
    .parameter "svcName"

    .prologue
    const/4 v1, 0x1

    return v1

    const/16 v10, 0xd

    const/16 v9, 0x8

    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 232
    const-string/jumbo v6, "ro.build.target_operator"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "VZW"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 233
    sget-object v6, Landroid/bluetooth/BluetoothServiceConfig;->SERVICES_AVAILABLE:[Z

    aput-boolean v8, v6, v9

    .line 234
    sget-object v6, Landroid/bluetooth/BluetoothServiceConfig;->SERVICES_STARTUP_ENABLED:[Z

    aput-boolean v8, v6, v9

    .line 238
    :cond_0
    const-string/jumbo v6, "ro.build.target_country"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "KR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "ro.build.product"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "batman_dcm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "ro.build.product"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "batman_vzw"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 242
    :cond_1
    sget-object v6, Landroid/bluetooth/BluetoothServiceConfig;->SERVICES_AVAILABLE:[Z

    aput-boolean v8, v6, v10

    .line 243
    sget-object v6, Landroid/bluetooth/BluetoothServiceConfig;->SERVICES_STARTUP_ENABLED:[Z

    aput-boolean v8, v6, v10

    .line 247
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v6, Landroid/bluetooth/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_8

    .line 248
    sget-object v6, Landroid/bluetooth/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 249
    sget-object v6, Landroid/bluetooth/BluetoothServiceConfig;->SERVICES_AVAILABLE:[Z

    aget-boolean v1, v6, v0

    .line 250
    .local v1, isAvailable:Z
    sget-boolean v6, Landroid/bluetooth/BluetoothServiceConfig;->IS_DEVELOPMENT_MODE:Z

    if-eqz v6, :cond_4

    .line 251
    const-string v6, "bluetooth_"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "bluetooth_"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 253
    .local v4, sProp:Ljava/lang/String;
    :goto_1
    const-string v6, "_service"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 254
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "_service"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 256
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "service.brcm.bt.svc."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 257
    const-string v5, "BluetoothServiceConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Getting property "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, s:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 260
    const-string v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 261
    const-string v5, "BluetoothServiceConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Debug mode enabled. Setting service supported for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .end local v3           #s:Ljava/lang/String;
    .end local v4           #sProp:Ljava/lang/String;
    :cond_4
    const-string/jumbo v5, "persist.service.btui.use_pan"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 266
    .local v2, isUsePAN:Z
    if-eqz v2, :cond_5

    const-string v5, "bluetooth_pan"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 267
    const/4 v1, 0x1

    .line 273
    .end local v1           #isAvailable:Z
    .end local v2           #isUsePAN:Z
    :cond_5
    :goto_2
    return v1

    .restart local v1       #isAvailable:Z
    :cond_6
    move-object v4, p0

    .line 251
    goto/16 :goto_1

    .line 247
    .end local v1           #isAvailable:Z
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
    move v1, v5

    .line 273
    goto :goto_2
.end method

.method public static isSoftOnOffEnabled()Z
    .locals 3

    .prologue
    .line 322
    const-string/jumbo v1, "service.brcm.bt.soft_onoff"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, softOnOff:Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static final isStandaloneProcess()Z
    .locals 4

    .prologue
    .line 338
    sget-boolean v1, Landroid/bluetooth/BluetoothServiceConfig;->IS_STANDALONE_PROCESS:Z

    if-nez v1, :cond_0

    const-string v1, "1"

    const-string/jumbo v2, "service.brcm.bt.is_sta"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 340
    .local v0, isStandalone:Z
    :goto_0
    return v0

    .line 338
    .end local v0           #isStandalone:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
