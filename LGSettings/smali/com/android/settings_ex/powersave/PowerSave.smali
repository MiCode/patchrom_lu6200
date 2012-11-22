.class public Lcom/android/settings_ex/powersave/PowerSave;
.super Ljava/lang/Object;
.source "PowerSave.java"


# static fields
.field private static MINIMUM_BACKLIGHT:I

.field private static mContentResolver:Landroid/content/ContentResolver;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mPowerSavePref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "c"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/powersave/PowerSave;->mPowerSavePref:Landroid/content/SharedPreferences;

    sput-object p1, Lcom/android/settings_ex/powersave/PowerSave;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/settings_ex/powersave/PowerSave;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Lcom/android/settings_ex/powersave/PowerSave;->mContext:Landroid/content/Context;

    const-string v1, "pref_power_save"

    sget-object v2, Lcom/android/settings_ex/powersave/PowerSave;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/settings_ex/powersave/PowerSave;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/powersave/PowerSave;->mPowerSavePref:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/android/settings_ex/powersave/PowerSave;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/settings_ex/powersave/PowerSave;->MINIMUM_BACKLIGHT:I

    .line 111
    const-string v0, "PowerSave"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MINIMUM_BACKLIGHT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings_ex/powersave/PowerSave;->MINIMUM_BACKLIGHT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/powersave/PowerSave;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/powersave/PowerSave;->applyPowerSaveWifi()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/powersave/PowerSave;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/powersave/PowerSave;->applyPowerSaveSync()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/powersave/PowerSave;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/powersave/PowerSave;->doScreenTimeout()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/powersave/PowerSave;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/powersave/PowerSave;->doFrontLed()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/powersave/PowerSave;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/powersave/PowerSave;->doCpu()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/powersave/PowerSave;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/powersave/PowerSave;->applyPowerSaveBrightness()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/powersave/PowerSave;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/powersave/PowerSave;->applyPowerSaveTouch()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/powersave/PowerSave;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/powersave/PowerSave;->applyPowerSaveCpu()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/powersave/PowerSave;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/powersave/PowerSave;->applyPowerSaveScreenTimeout()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/powersave/PowerSave;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/powersave/PowerSave;->applyPowerSaveFrontLed()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/powersave/PowerSave;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/powersave/PowerSave;->doSync()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings_ex/powersave/PowerSave;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/powersave/PowerSave;->doBrightness()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/powersave/PowerSave;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/powersave/PowerSave;->doTouch()V

    return-void
.end method

.method private applyPowerSaveBrightness()V
    .locals 8

    .prologue
    const/16 v7, 0xff

    sget-object v4, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "power_save_brightness_adjust"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    sget-object v4, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "power_save_brightness"

    const/16 v6, 0x14

    invoke-static {v4, v5, v6}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .local v1, brightnessPercent:I
    invoke-static {v1}, Lcom/android/settings_ex/powersave/PowerSave;->getValue(I)I

    move-result v0

    .local v0, brightness:I
    invoke-static {}, Lcom/android/settings_ex/powersave/PowerSave;->getCurrentBrightness()I

    move-result v2

    .local v2, currentBrightness:I
    const-string v4, "PowerSave"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyPowerSaveBrightness()- currentBrightness : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", brightness : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v4, Lcom/android/settings_ex/powersave/PowerSave;->MINIMUM_BACKLIGHT:I

    add-int/2addr v4, v0

    if-le v2, v4, :cond_0

    sget v4, Lcom/android/settings_ex/powersave/PowerSave;->MINIMUM_BACKLIGHT:I

    add-int/2addr v4, v0

    invoke-static {v4}, Lcom/android/settings_ex/powersave/PowerSave;->setBrightness(I)V

    sget-object v4, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "screen_brightness"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 327
    .local v3, current_db_to_restore:I
    sget-object v4, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "screen_brightness"

    sget v6, Lcom/android/settings_ex/powersave/PowerSave;->MINIMUM_BACKLIGHT:I

    add-int/2addr v6, v0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 330
    const-string v4, "PowerSave"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current_db_to_restore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    if-gt v3, v7, :cond_2

    if-gez v3, :cond_3

    .line 332
    :cond_2
    move v3, v2

    .line 334
    :cond_3
    sget-object v4, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "power_save_brightness_restore"

    invoke-static {v4, v5, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private applyPowerSaveBt()V
    .locals 3

    .prologue
    sget-object v0, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_save_bt"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "power_save_bt"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/powersave/PowerSave;->sendToOthers(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private applyPowerSaveCpu()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    invoke-static {}, Lcom/android/settings_ex/lge/OverlayUtils;->isX3Model()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "power_save_cpu_adjust"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    sget-object v1, Lcom/android/settings_ex/powersave/PowerSave;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings_ex/lge/OverlayUtils;->getCPUMode(Landroid/content/Context;)I

    move-result v0

    .line 297
    .local v0, currentCpu:I
    const-string v1, "PowerSave"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyPowerSaveCpu() currentCpu : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le v0, v4, :cond_2

    sget-object v1, Lcom/android/settings_ex/powersave/PowerSave;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/android/settings_ex/lge/OverlayUtils;->setCPUMode(Landroid/content/Context;I)V

    sget-object v1, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "power_save_cpu_restore"

    invoke-static {v1, v2, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    const-string v1, "PowerSave"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyPowerSaveCpu() after applying : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings_ex/powersave/PowerSave;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings_ex/lge/OverlayUtils;->getCPUMode(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private applyPowerSaveFrontLed()V
    .locals 6

    .prologue
    const/16 v5, 0x5dc

    sget-object v2, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_save_front_led_adjust"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    sget-object v2, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "frontkey_led_timeout"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 540
    .local v0, currentTimeout:I
    sget-object v2, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_save_front_led"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .local v1, value:I
    if-le v0, v1, :cond_0

    sget-object v2, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "frontkey_led_timeout"

    invoke-static {v2, v3, v1}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v2, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_save_front_led_restore"

    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private applyPowerSaveScreenTimeout()V
    .locals 6

    .prologue
    const/16 v5, 0x3a98

    sget-object v2, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_save_screen_timeout_adjust"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    sget-object v2, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_off_timeout"

    const/16 v4, 0x7530

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 516
    .local v0, currentTimeout:I
    sget-object v2, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_save_screen_timeout"

    invoke-static {v2, v3, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 519
    .local v1, value:I
    const-string v2, "PowerSave"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyPowerSaveScreenTimeout()- currentTimeout : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le v0, v1, :cond_0

    if-lt v1, v5, :cond_0

    sget-object v2, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v2, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_save_screen_timeout_restore"

    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private applyPowerSaveSync()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_save_sync"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    sget-object v0, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_save_sync_restore"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 231
    :cond_0
    return-void
.end method

.method private applyPowerSaveTouch()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_save_touch"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    sget-object v0, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "haptic_feedback_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "haptic_feedback_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v0, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_save_touch_restore"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private applyPowerSaveWifi()V
    .locals 3

    .prologue
    sget-object v0, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_save_wifi"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "power_save_wifi"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/powersave/PowerSave;->sendToOthers(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private doBrightness()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    sget-object v1, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "power_save_brightness_restore"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 959
    .local v0, brightnessRestore:I
    const-string v1, "PowerSave"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doBrightness() - brightnessRestore : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le v0, v4, :cond_0

    sget v1, Lcom/android/settings_ex/powersave/PowerSave;->MINIMUM_BACKLIGHT:I

    if-lt v0, v1, :cond_0

    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSave;->setBrightness(I)V

    sget-object v1, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v1, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "power_save_brightness_restore"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private doCpu()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    sget-object v1, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "power_save_cpu_restore"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 948
    .local v0, restore_cpu:I
    const-string v1, "PowerSave"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doCpu() - restore_cpu : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v0, :cond_0

    sget-object v1, Lcom/android/settings_ex/powersave/PowerSave;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settings_ex/lge/OverlayUtils;->setCPUMode(Landroid/content/Context;I)V

    sget-object v1, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "power_save_cpu_restore"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private doFrontLed()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    sget-object v1, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "power_save_front_led_restore"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1001
    .local v0, frontLedRestore:I
    const-string v1, "PowerSave"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doFrontLed - frontLedRestore : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le v0, v4, :cond_0

    sget-object v1, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "frontkey_led_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v1, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "power_save_front_led_restore"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private doScreenTimeout()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    sget-object v1, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "power_save_screen_timeout_restore"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 986
    .local v0, screenTimeoutRestore:I
    const-string v1, "PowerSave"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doScreenTimeout - screenTimeoutRestore : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x3a98

    if-lt v0, v1, :cond_0

    sget-object v1, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v1, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "power_save_screen_timeout_restore"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private doSync()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_save_sync_restore"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 848
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-nez v0, :cond_0

    .line 849
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 852
    :cond_0
    sget-object v0, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_save_sync_restore"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 855
    :cond_1
    return-void
.end method

.method private doTouch()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_save_touch_restore"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "haptic_feedback_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "haptic_feedback_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    sget-object v0, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_save_touch_restore"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 981
    :cond_1
    return-void
.end method

.method public static getBrightnessMode()I
    .locals 4

    .prologue
    .line 578
    const/4 v0, 0x0

    .line 580
    .local v0, automatic_mode:I
    :try_start_0
    sget-object v2, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 584
    :goto_0
    return v0

    .line 581
    :catch_0
    move-exception v1

    .line 582
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getCurrentBrightness()I
    .locals 8

    .prologue
    .line 1014
    const-string v4, "sys/class/leds/lcd-backlight/brightness"

    .line 1016
    .local v4, path:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1017
    .local v2, inFile:Ljava/io/BufferedReader;
    const-string v0, ""

    .line 1020
    .local v0, currentBrightness:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1021
    .end local v2           #inFile:Ljava/io/BufferedReader;
    .local v3, inFile:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 1022
    const-string v5, "PowerSave"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current brightness -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 1030
    if-eqz v3, :cond_0

    .line 1031
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .line 1038
    .end local v3           #inFile:Ljava/io/BufferedReader;
    .restart local v2       #inFile:Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1039
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1042
    :goto_1
    return v5

    .line 1033
    .end local v2           #inFile:Ljava/io/BufferedReader;
    .restart local v3       #inFile:Ljava/io/BufferedReader;
    :catch_0
    move-exception v5

    move-object v2, v3

    .line 1036
    .end local v3           #inFile:Ljava/io/BufferedReader;
    .restart local v2       #inFile:Ljava/io/BufferedReader;
    goto :goto_0

    .line 1025
    :catch_1
    move-exception v1

    .line 1026
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v5, "PowerSave"

    const-string v6, "Brightness file read fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1030
    if-eqz v2, :cond_1

    .line 1031
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1033
    :catch_2
    move-exception v5

    goto :goto_0

    .line 1029
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 1030
    :goto_3
    if-eqz v2, :cond_2

    .line 1031
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1035
    :cond_2
    :goto_4
    throw v5

    .line 1042
    :cond_3
    sget-object v5, Lcom/android/settings_ex/powersave/PowerSave;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "screen_brightness"

    const/16 v7, 0xff

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    goto :goto_1

    .line 1033
    :catch_3
    move-exception v6

    goto :goto_4

    .line 1029
    .end local v2           #inFile:Ljava/io/BufferedReader;
    .restart local v3       #inFile:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #inFile:Ljava/io/BufferedReader;
    .restart local v2       #inFile:Ljava/io/BufferedReader;
    goto :goto_3

    .line 1025
    .end local v2           #inFile:Ljava/io/BufferedReader;
    .restart local v3       #inFile:Ljava/io/BufferedReader;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #inFile:Ljava/io/BufferedReader;
    .restart local v2       #inFile:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static getValue(I)I
    .locals 6
    .parameter "percent"

    .prologue
    sget v2, Lcom/android/settings_ex/powersave/PowerSave;->MINIMUM_BACKLIGHT:I

    rsub-int v2, v2, 0xff

    int-to-double v2, v2

    int-to-double v4, p0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059

    div-double v0, v2, v4

    .line 589
    .local v0, value:D
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    return v2
.end method

.method private sendToOthers(Ljava/lang/String;Z)V
    .locals 4
    .parameter "name"
    .parameter "activate"

    .prologue
    .line 823
    const-string v2, "PowerSave"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendToOthers, Power save mode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_1

    const-string v1, "activate"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings_ex.powersave.POWERSAVE_ACTIVATION_TO_OTHERS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v2, "powersave_activation"

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "powersave_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    sget-object v1, Lcom/android/settings_ex/powersave/PowerSave;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const-string v1, "restore"

    goto :goto_0

    .restart local v0       #intent:Landroid/content/Intent;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static setBrightness(I)V
    .locals 7
    .parameter "brightness"

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/android/settings_ex/powersave/PowerSave;->getBrightnessMode()I

    move-result v0

    .local v0, automatic_mode:I
    sget-object v3, Lcom/android/settings_ex/powersave/PowerSave;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 559
    .local v1, automatic_sensor_supported:Z
    const-string v3, "PowerSave"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setBrightness, automatic_sensor_supported:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :try_start_0
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 563
    .local v2, power:Landroid/os/IPowerManager;
    if-eqz v2, :cond_0

    .line 565
    if-ne v1, v6, :cond_1

    if-ne v0, v6, :cond_1

    .line 567
    add-int/lit16 v3, p0, 0x3e8

    invoke-interface {v2, v3}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 575
    .end local v2           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 569
    .restart local v2       #power:Landroid/os/IPowerManager;
    :cond_1
    invoke-interface {v2, p0}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 572
    .end local v2           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public doPowerSave()V
    .locals 2

    .prologue
    const-string v0, "PowerSave"

    const-string v1, "Start doPowerSave()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings_ex/powersave/PowerSave;->applyPowerSaveBt()V

    new-instance v0, Lcom/android/settings_ex/powersave/PowerSave$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/powersave/PowerSave$1;-><init>(Lcom/android/settings_ex/powersave/PowerSave;)V

    invoke-virtual {v0}, Lcom/android/settings_ex/powersave/PowerSave$1;->start()V

    return-void
.end method

.method public doRestore()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/powersave/PowerSave;->sendToOthers(Ljava/lang/String;Z)V

    new-instance v0, Lcom/android/settings_ex/powersave/PowerSave$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/powersave/PowerSave$2;-><init>(Lcom/android/settings_ex/powersave/PowerSave;)V

    invoke-virtual {v0}, Lcom/android/settings_ex/powersave/PowerSave$2;->start()V

    return-void
.end method

.method public getBatteryImgId(I)I
    .locals 1
    .parameter "battery"

    .prologue
    .line 727
    const/16 v0, 0x62

    if-lt p1, v0, :cond_0

    .line 728
    const v0, 0x7f020099

    .line 788
    :goto_0
    return v0

    .line 730
    :cond_0
    const/16 v0, 0x5d

    if-lt p1, v0, :cond_1

    .line 731
    const v0, 0x7f020098

    goto :goto_0

    .line 733
    :cond_1
    const/16 v0, 0x58

    if-lt p1, v0, :cond_2

    .line 734
    const v0, 0x7f020097

    goto :goto_0

    .line 736
    :cond_2
    const/16 v0, 0x53

    if-lt p1, v0, :cond_3

    .line 737
    const v0, 0x7f020096

    goto :goto_0

    .line 739
    :cond_3
    const/16 v0, 0x4e

    if-lt p1, v0, :cond_4

    .line 740
    const v0, 0x7f020095

    goto :goto_0

    .line 742
    :cond_4
    const/16 v0, 0x49

    if-lt p1, v0, :cond_5

    .line 743
    const v0, 0x7f020094

    goto :goto_0

    .line 745
    :cond_5
    const/16 v0, 0x44

    if-lt p1, v0, :cond_6

    .line 746
    const v0, 0x7f020093

    goto :goto_0

    .line 748
    :cond_6
    const/16 v0, 0x3f

    if-lt p1, v0, :cond_7

    .line 749
    const v0, 0x7f020092

    goto :goto_0

    .line 751
    :cond_7
    const/16 v0, 0x3a

    if-lt p1, v0, :cond_8

    .line 752
    const v0, 0x7f020091

    goto :goto_0

    .line 754
    :cond_8
    const/16 v0, 0x35

    if-lt p1, v0, :cond_9

    .line 755
    const v0, 0x7f020090

    goto :goto_0

    .line 757
    :cond_9
    const/16 v0, 0x30

    if-lt p1, v0, :cond_a

    .line 758
    const v0, 0x7f02008f

    goto :goto_0

    .line 760
    :cond_a
    const/16 v0, 0x2b

    if-lt p1, v0, :cond_b

    .line 761
    const v0, 0x7f02008e

    goto :goto_0

    .line 763
    :cond_b
    const/16 v0, 0x26

    if-lt p1, v0, :cond_c

    .line 764
    const v0, 0x7f02008d

    goto :goto_0

    .line 766
    :cond_c
    const/16 v0, 0x21

    if-lt p1, v0, :cond_d

    .line 767
    const v0, 0x7f02008c

    goto :goto_0

    .line 769
    :cond_d
    const/16 v0, 0x1c

    if-lt p1, v0, :cond_e

    .line 770
    const v0, 0x7f02008b

    goto :goto_0

    .line 772
    :cond_e
    const/16 v0, 0x17

    if-lt p1, v0, :cond_f

    .line 773
    const v0, 0x7f02008a

    goto :goto_0

    .line 775
    :cond_f
    const/16 v0, 0x12

    if-lt p1, v0, :cond_10

    .line 776
    const v0, 0x7f020089

    goto :goto_0

    .line 778
    :cond_10
    const/16 v0, 0xd

    if-lt p1, v0, :cond_11

    .line 779
    const v0, 0x7f020088

    goto/16 :goto_0

    .line 781
    :cond_11
    const/16 v0, 0x8

    if-lt p1, v0, :cond_12

    .line 782
    const v0, 0x7f020087

    goto/16 :goto_0

    .line 784
    :cond_12
    const/4 v0, 0x3

    if-lt p1, v0, :cond_13

    .line 785
    const v0, 0x7f020086

    goto/16 :goto_0

    .line 788
    :cond_13
    const v0, 0x7f020085

    goto/16 :goto_0
.end method

.method public getPopupBatteryImgId(I)I
    .locals 1
    .parameter "battery"

    .prologue
    .line 661
    const/16 v0, 0x62

    if-lt p1, v0, :cond_0

    .line 662
    const v0, 0x7f02002f

    .line 722
    :goto_0
    return v0

    .line 664
    :cond_0
    const/16 v0, 0x5d

    if-lt p1, v0, :cond_1

    .line 665
    const v0, 0x7f02002e

    goto :goto_0

    .line 667
    :cond_1
    const/16 v0, 0x58

    if-lt p1, v0, :cond_2

    .line 668
    const v0, 0x7f02002d

    goto :goto_0

    .line 670
    :cond_2
    const/16 v0, 0x53

    if-lt p1, v0, :cond_3

    .line 671
    const v0, 0x7f02002c

    goto :goto_0

    .line 673
    :cond_3
    const/16 v0, 0x4e

    if-lt p1, v0, :cond_4

    .line 674
    const v0, 0x7f02002b

    goto :goto_0

    .line 676
    :cond_4
    const/16 v0, 0x49

    if-lt p1, v0, :cond_5

    .line 677
    const v0, 0x7f02002a

    goto :goto_0

    .line 679
    :cond_5
    const/16 v0, 0x44

    if-lt p1, v0, :cond_6

    .line 680
    const v0, 0x7f020029

    goto :goto_0

    .line 682
    :cond_6
    const/16 v0, 0x3f

    if-lt p1, v0, :cond_7

    .line 683
    const v0, 0x7f020028

    goto :goto_0

    .line 685
    :cond_7
    const/16 v0, 0x3a

    if-lt p1, v0, :cond_8

    .line 686
    const v0, 0x7f020027

    goto :goto_0

    .line 688
    :cond_8
    const/16 v0, 0x35

    if-lt p1, v0, :cond_9

    .line 689
    const v0, 0x7f020026

    goto :goto_0

    .line 691
    :cond_9
    const/16 v0, 0x30

    if-lt p1, v0, :cond_a

    .line 692
    const v0, 0x7f020025

    goto :goto_0

    .line 694
    :cond_a
    const/16 v0, 0x2b

    if-lt p1, v0, :cond_b

    .line 695
    const v0, 0x7f020024

    goto :goto_0

    .line 697
    :cond_b
    const/16 v0, 0x26

    if-lt p1, v0, :cond_c

    .line 698
    const v0, 0x7f020023

    goto :goto_0

    .line 700
    :cond_c
    const/16 v0, 0x21

    if-lt p1, v0, :cond_d

    .line 701
    const v0, 0x7f020022

    goto :goto_0

    .line 703
    :cond_d
    const/16 v0, 0x1c

    if-lt p1, v0, :cond_e

    .line 704
    const v0, 0x7f020021

    goto :goto_0

    .line 706
    :cond_e
    const/16 v0, 0x17

    if-lt p1, v0, :cond_f

    .line 707
    const v0, 0x7f020020

    goto :goto_0

    .line 709
    :cond_f
    const/16 v0, 0x12

    if-lt p1, v0, :cond_10

    .line 710
    const v0, 0x7f02001f

    goto :goto_0

    .line 712
    :cond_10
    const/16 v0, 0xd

    if-lt p1, v0, :cond_11

    .line 713
    const v0, 0x7f02001e

    goto/16 :goto_0

    .line 715
    :cond_11
    const/16 v0, 0x8

    if-lt p1, v0, :cond_12

    .line 716
    const v0, 0x7f02001d

    goto/16 :goto_0

    .line 718
    :cond_12
    const/4 v0, 0x3

    if-lt p1, v0, :cond_13

    .line 719
    const v0, 0x7f02001c

    goto/16 :goto_0

    .line 722
    :cond_13
    const v0, 0x7f02001b

    goto/16 :goto_0
.end method

.method public isRunningPowerSaveService()Z
    .locals 8

    .prologue
    .line 619
    const/4 v3, 0x0

    .line 620
    .local v3, isRunning:Z
    const-string v1, ""

    .line 622
    .local v1, className:Ljava/lang/String;
    sget-object v6, Lcom/android/settings_ex/powersave/PowerSave;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 623
    .local v0, am:Landroid/app/ActivityManager;
    const/16 v6, 0x64

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    .line 625
    .local v4, rs:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-nez v4, :cond_0

    .line 626
    const/4 v6, 0x1

    .line 642
    :goto_0
    return v6

    .line 629
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 630
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 631
    .local v5, rsi:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v6, v5, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v6, "com.android.settings_ex.powersave.PowerSaveService"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 637
    const/4 v3, 0x1

    .end local v5           #rsi:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    move v6, v3

    .line 642
    goto :goto_0

    .line 629
    .restart local v5       #rsi:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public updateActivationPowerControl()V
    .locals 2

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings_ex.powersave.action.ACTIVATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, i:Landroid/content/Intent;
    sget-object v1, Lcom/android/settings_ex/powersave/PowerSave;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public updatePowerControl()V
    .locals 2

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings_ex.powersave.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, i:Landroid/content/Intent;
    sget-object v1, Lcom/android/settings_ex/powersave/PowerSave;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
