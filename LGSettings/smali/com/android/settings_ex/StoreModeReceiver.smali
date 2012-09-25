.class public Lcom/android/settings_ex/StoreModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StoreModeReceiver.java"


# static fields
.field private static BRIGHTNESS_MODE:I

.field private static DEFAULT_BACKLIGHT:I

.field private static MAXIMUM_BACKLIGHT:I

.field private static SHOP_MODE_SCREEN_OFF_TIMEOUT:I

.field private static USER_MODE_SCREEN_OFF_TIMEOUT:I

.field private static isSystemProperty:Z


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    const/16 v0, 0xff

    sput v0, Lcom/android/settings_ex/StoreModeReceiver;->MAXIMUM_BACKLIGHT:I

    .line 32
    sput v1, Lcom/android/settings_ex/StoreModeReceiver;->DEFAULT_BACKLIGHT:I

    .line 37
    const v0, 0x1d4c0

    sput v0, Lcom/android/settings_ex/StoreModeReceiver;->SHOP_MODE_SCREEN_OFF_TIMEOUT:I

    .line 38
    sput v1, Lcom/android/settings_ex/StoreModeReceiver;->USER_MODE_SCREEN_OFF_TIMEOUT:I

    .line 39
    sput v1, Lcom/android/settings_ex/StoreModeReceiver;->BRIGHTNESS_MODE:I

    .line 40
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings_ex/StoreModeReceiver;->isSystemProperty:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private ReceiverDisable()V
    .locals 4

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/settings_ex/StoreModeReceiver;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 294
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/settings_ex/StoreModeReceiver;->context:Landroid/content/Context;

    const-class v3, Lcom/android/settings_ex/StoreModeReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 298
    const-string v0, "StoreModeReceiver"

    const-string v1, "StoreModeReceiver disenabled!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-void
.end method

.method private final StoreModeCheck(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    .line 100
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 101
    const-string v4, "StoreModeReceiver"

    const-string v5, "isStoremode not null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    .line 109
    .local v2, isStoremode:Z
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "shop_mode"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 110
    .local v3, shop_mode:I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 113
    .local v0, cr:Landroid/content/ContentResolver;
    if-nez v2, :cond_1

    if-ne v3, v6, :cond_1

    .line 114
    :try_start_0
    const-string v4, "StoreModeReceiver"

    const-string v5, "Store mode start!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-direct {p0, v0}, Lcom/android/settings_ex/StoreModeReceiver;->setStoreMode(Landroid/content/ContentResolver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_1
    return-void

    .line 105
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v2           #isStoremode:Z
    .end local v3           #shop_mode:I
    :cond_0
    const-string v4, "StoreModeReceiver"

    const-string v5, "isStoremode null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v2, 0x0

    .restart local v2       #isStoremode:Z
    goto :goto_0

    .line 116
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v3       #shop_mode:I
    :cond_1
    if-ne v6, v2, :cond_2

    if-ne v3, v6, :cond_2

    .line 117
    :try_start_1
    const-string v4, "StoreModeReceiver"

    const-string v5, "User mode start!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-direct {p0, v0}, Lcom/android/settings_ex/StoreModeReceiver;->setUserMode(Landroid/content/ContentResolver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "StoreModeReceiver"

    const-string v5, "Exception in StoreModeReceiver"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 120
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_2
    const-string v4, "StoreModeReceiver"

    const-string v5, "####User setting mode start!####"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-direct {p0}, Lcom/android/settings_ex/StoreModeReceiver;->ReceiverDisable()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private getDefaultBooleanValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "pkgName"
    .parameter "Name"

    .prologue
    const/4 v4, 0x0

    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, con:Landroid/content/Context;
    const/4 v2, 0x0

    .line 199
    .local v2, id:I
    :try_start_0
    iget-object v5, p0, Lcom/android/settings_ex/StoreModeReceiver;->context:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 200
    const/4 v3, 0x0

    .line 201
    .local v3, res:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 202
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 203
    const-string v5, "bool"

    invoke-virtual {v3, p2, v5, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 204
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 212
    .end local v3           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return v4

    .line 206
    :catch_0
    move-exception v1

    .line 208
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "StoreModeReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NameNotFoundException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 210
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v5, "StoreModeReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NullPointerException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDefaultIntegerValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "pkgName"
    .parameter "Name"

    .prologue
    const/4 v4, 0x0

    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, con:Landroid/content/Context;
    const/4 v2, 0x0

    .line 179
    .local v2, id:I
    :try_start_0
    iget-object v5, p0, Lcom/android/settings_ex/StoreModeReceiver;->context:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 180
    const/4 v3, 0x0

    .line 181
    .local v3, res:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 182
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 183
    const-string v5, "integer"

    invoke-virtual {v3, p2, v5, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 184
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 192
    .end local v3           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return v4

    .line 186
    :catch_0
    move-exception v1

    .line 188
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "StoreModeReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NameNotFoundException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 189
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 190
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v5, "StoreModeReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NullPointerException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getPhoneNumber()Z
    .locals 4

    .prologue
    .line 321
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, rawNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    const-string v1, "StoreModeReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneNumber is not empty : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v1, 0x1

    .line 327
    :goto_0
    return v1

    .line 326
    :cond_0
    const-string v1, "StoreModeReceiver"

    const-string v2, "getPhoneNumber is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isFactoryTest()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 261
    const-string v4, "ro.factorytest"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, factoryTestStr:Ljava/lang/String;
    const-string v4, "0"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v3

    .line 263
    .local v0, factoryTest:Z
    :goto_0
    if-ne v0, v2, :cond_1

    .line 264
    sget v3, Lcom/android/settings_ex/StoreModeReceiver;->DEFAULT_BACKLIGHT:I

    invoke-direct {p0, v3}, Lcom/android/settings_ex/StoreModeReceiver;->setBrightness(I)V

    .line 265
    iget-object v3, p0, Lcom/android/settings_ex/StoreModeReceiver;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    sget v5, Lcom/android/settings_ex/StoreModeReceiver;->DEFAULT_BACKLIGHT:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 266
    const-string v3, "android.setting.updateBrightness"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/StoreModeReceiver;->sendBroadcast(Ljava/lang/String;)V

    .line 267
    const-string v3, "StoreModeReceiver"

    const-string v4, "ro.factorytest case"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :goto_1
    return v2

    .end local v0           #factoryTest:Z
    :cond_0
    move v0, v2

    .line 262
    goto :goto_0

    .restart local v0       #factoryTest:Z
    :cond_1
    move v2, v3

    .line 270
    goto :goto_1
.end method

.method private isStoreModeNotUse()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 277
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SPRINT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ATT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "i_atnt"

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isbuildProduct(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 279
    :cond_0
    const-string v1, "StoreModeReceiver"

    const-string v2, "Skip the routine of store mode temporaly for verizon model"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_1
    :goto_0
    return v0

    .line 285
    :cond_2
    const-string v1, "ro.product.device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "u0_cdma"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 289
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendBroadcast(Ljava/lang/String;)V
    .locals 2
    .parameter "broadcast"

    .prologue
    .line 252
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/StoreModeReceiver;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 254
    return-void
.end method

.method private setBrightness(I)V
    .locals 2
    .parameter "brightness"

    .prologue
    .line 130
    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 132
    .local v0, power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v0           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setDefaultBrightnessMode()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, sp_def_brightness_Mode:Z
    const-string v3, "ro.lge.lcd_auto_brightness_mode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    sput-boolean v2, Lcom/android/settings_ex/StoreModeReceiver;->isSystemProperty:Z

    .line 160
    const-string v3, "StoreModeReceiver"

    const-string v4, "Systemproperty is Empty!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_0
    const-string v3, "StoreModeReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SystemProperty Default brightness Mode value[true/false] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    sget-boolean v3, Lcom/android/settings_ex/StoreModeReceiver;->isSystemProperty:Z

    if-ne v3, v1, :cond_2

    .line 167
    if-ne v0, v1, :cond_1

    :goto_1
    sput v1, Lcom/android/settings_ex/StoreModeReceiver;->BRIGHTNESS_MODE:I

    .line 172
    :goto_2
    const-string v1, "StoreModeReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default brightness Mode [0/1] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings_ex/StoreModeReceiver;->BRIGHTNESS_MODE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void

    .line 163
    :cond_0
    const-string v3, "ro.lge.lcd_auto_brightness_mode"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 167
    goto :goto_1

    .line 169
    :cond_2
    const-string v3, "com.android.providers.settings"

    const-string v4, "def_screen_brightness_automatic_mode"

    invoke-direct {p0, v3, v4}, Lcom/android/settings_ex/StoreModeReceiver;->getDefaultBooleanValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 170
    if-ne v0, v1, :cond_3

    :goto_3
    sput v1, Lcom/android/settings_ex/StoreModeReceiver;->BRIGHTNESS_MODE:I

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method private setDefaultBrightnessValues()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 146
    const-string v1, "ro.lge.lcd_default_brightness"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 147
    .local v0, sp_def_brightness:I
    const-string v1, "StoreModeReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SystemProperty Default brightness value [0-255] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    if-eq v4, v0, :cond_0

    .line 149
    sput v0, Lcom/android/settings_ex/StoreModeReceiver;->DEFAULT_BACKLIGHT:I

    .line 153
    :goto_0
    const-string v1, "StoreModeReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default brightness[0-255] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings_ex/StoreModeReceiver;->DEFAULT_BACKLIGHT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void

    .line 151
    :cond_0
    const-string v1, "com.android.providers.settings"

    const-string v2, "def_screen_brightness"

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/StoreModeReceiver;->getDefaultIntegerValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/settings_ex/StoreModeReceiver;->DEFAULT_BACKLIGHT:I

    goto :goto_0
.end method

.method private setDefaultScreenOffTimeoutValues()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 141
    const-string v0, "com.android.providers.settings"

    const-string v1, "def_screen_off_timeout"

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/StoreModeReceiver;->getDefaultIntegerValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings_ex/StoreModeReceiver;->USER_MODE_SCREEN_OFF_TIMEOUT:I

    .line 142
    const-string v0, "StoreModeReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default Screen off timeout value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings_ex/StoreModeReceiver;->USER_MODE_SCREEN_OFF_TIMEOUT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method

.method private setMode(Landroid/content/ContentResolver;III)V
    .locals 2
    .parameter "cr"
    .parameter "shopMode"
    .parameter "screenTimeout"
    .parameter "brightness"

    .prologue
    .line 242
    invoke-direct {p0, p4}, Lcom/android/settings_ex/StoreModeReceiver;->setBrightness(I)V

    .line 243
    const-string v0, "android.setting.updateBrightness"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/StoreModeReceiver;->sendBroadcast(Ljava/lang/String;)V

    .line 244
    const-string v0, "screen_brightness_mode"

    sget v1, Lcom/android/settings_ex/StoreModeReceiver;->BRIGHTNESS_MODE:I

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 245
    const-string v0, "shop_mode"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 246
    const-string v0, "screen_off_timeout"

    invoke-static {p1, v0, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 247
    iget-object v0, p0, Lcom/android/settings_ex/StoreModeReceiver;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1, p4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 249
    return-void
.end method

.method private setStoreMode(Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "cr"

    .prologue
    .line 224
    const/4 v0, 0x0

    sput v0, Lcom/android/settings_ex/StoreModeReceiver;->BRIGHTNESS_MODE:I

    .line 225
    const/4 v0, 0x1

    sget v1, Lcom/android/settings_ex/StoreModeReceiver;->SHOP_MODE_SCREEN_OFF_TIMEOUT:I

    sget v2, Lcom/android/settings_ex/StoreModeReceiver;->MAXIMUM_BACKLIGHT:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/settings_ex/StoreModeReceiver;->setMode(Landroid/content/ContentResolver;III)V

    .line 230
    return-void
.end method

.method private setStoreModeBirghtness(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 217
    const-string v0, "ro.build.product"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "p2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    const/16 v0, 0xb3

    sput v0, Lcom/android/settings_ex/StoreModeReceiver;->MAXIMUM_BACKLIGHT:I

    .line 220
    :cond_0
    const-string v0, "StoreModeReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set MaxBrightness : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings_ex/StoreModeReceiver;->MAXIMUM_BACKLIGHT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void
.end method

.method private setUserMode(Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "cr"

    .prologue
    .line 233
    const/4 v0, 0x0

    sget v1, Lcom/android/settings_ex/StoreModeReceiver;->USER_MODE_SCREEN_OFF_TIMEOUT:I

    sget v2, Lcom/android/settings_ex/StoreModeReceiver;->DEFAULT_BACKLIGHT:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/settings_ex/StoreModeReceiver;->setMode(Landroid/content/ContentResolver;III)V

    .line 238
    invoke-direct {p0}, Lcom/android/settings_ex/StoreModeReceiver;->ReceiverDisable()V

    .line 239
    return-void
.end method

.method private setVZWScreenTimeValue()V
    .locals 4

    .prologue
    .line 309
    const/4 v0, 0x0

    .line 310
    .local v0, launchKit:Z
    const/4 v1, 0x1

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VZW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 311
    if-nez v0, :cond_1

    .line 312
    const v1, 0xea60

    sput v1, Lcom/android/settings_ex/StoreModeReceiver;->SHOP_MODE_SCREEN_OFF_TIMEOUT:I

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    const v1, 0x493e0

    sput v1, Lcom/android/settings_ex/StoreModeReceiver;->USER_MODE_SCREEN_OFF_TIMEOUT:I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "_context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, action:Ljava/lang/String;
    const-string v4, "ss"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, stateExtra:Ljava/lang/String;
    const-string v4, "StoreModeReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "intent.getAction() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v4, "StoreModeReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim state :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iput-object p1, p0, Lcom/android/settings_ex/StoreModeReceiver;->context:Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Lcom/android/settings_ex/StoreModeReceiver;->isStoreModeNotUse()Z

    move-result v4

    if-ne v7, v4, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    if-nez v3, :cond_2

    .line 67
    const-string v3, "empty"

    .line 70
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings_ex/StoreModeReceiver;->setDefaultBrightnessValues()V

    .line 71
    invoke-direct {p0}, Lcom/android/settings_ex/StoreModeReceiver;->setDefaultScreenOffTimeoutValues()V

    .line 72
    invoke-direct {p0}, Lcom/android/settings_ex/StoreModeReceiver;->setDefaultBrightnessMode()V

    .line 74
    invoke-direct {p0}, Lcom/android/settings_ex/StoreModeReceiver;->setVZWScreenTimeValue()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/StoreModeReceiver;->context:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/settings_ex/StoreModeReceiver;->setStoreModeBirghtness(Landroid/content/Context;)V

    .line 83
    invoke-direct {p0}, Lcom/android/settings_ex/StoreModeReceiver;->isFactoryTest()Z

    move-result v4

    if-eq v7, v4, :cond_0

    .line 88
    const-string v4, "ro.product.model"

    const-string v5, "empty"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, model_name:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings_ex/StoreModeReceiver;->getPhoneNumber()Z

    move-result v4

    if-ne v7, v4, :cond_3

    const-string v4, "LG-LU5400"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v7, v4, :cond_3

    .line 90
    iget-object v4, p0, Lcom/android/settings_ex/StoreModeReceiver;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings_ex/StoreModeReceiver;->setUserMode(Landroid/content/ContentResolver;)V

    goto :goto_0

    .line 76
    .end local v2           #model_name:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 78
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 79
    const-string v4, "StoreModeReceiver"

    const-string v5, "Default value set Exception!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 92
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #model_name:Ljava/lang/String;
    :cond_3
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "LOADED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    :cond_4
    const-string v4, "StoreModeReceiver"

    const-string v5, "go to StoreModeCheck()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v4, p0, Lcom/android/settings_ex/StoreModeReceiver;->context:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/settings_ex/StoreModeReceiver;->StoreModeCheck(Landroid/content/Context;)V

    goto :goto_0
.end method
