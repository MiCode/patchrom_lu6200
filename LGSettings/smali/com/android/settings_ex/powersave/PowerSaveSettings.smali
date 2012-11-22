.class public Lcom/android/settings_ex/powersave/PowerSaveSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "PowerSaveSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;


# instance fields
.field private handler:Landroid/os/Handler;

.field private mBattery:Landroid/preference/Preference;

.field private mBatteryPercentage:Landroid/preference/CheckBoxPreference;

.field private mBrightness:Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;

.field private mContext:Landroid/content/Context;

.field private mEcoMode:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

.field private mFrontLed:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

.field private mObserver:Landroid/database/ContentObserver;

.field private mPowerSave:Lcom/android/settings_ex/powersave/PowerSave;

.field private mPowerSaveEnabler:Lcom/android/settings_ex/powersave/PowerSaveEnabler;

.field private mPowerSaveMode:Lcom/android/settings_ex/powersave/PowerSaveListPreference;

.field private mPowerSavingItemsCategory:Landroid/preference/PreferenceCategory;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenTimeout:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

.field private mToggleAnimations:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

.field private mToggleBluetooth:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

.field private mToggleGps:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

.field private mToggleNfc:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

.field private mToggleSync:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

.field private mToggleTouch:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

.field private mToggleWifi:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings_ex/powersave/PowerSaveSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings$1;-><init>(Lcom/android/settings_ex/powersave/PowerSaveSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings_ex/powersave/PowerSaveSettings$2;

    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/powersave/PowerSaveSettings$2;-><init>(Lcom/android/settings_ex/powersave/PowerSaveSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/powersave/PowerSaveSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mBattery:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/powersave/PowerSaveSettings;)Lcom/android/settings_ex/powersave/PowerSave;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mPowerSave:Lcom/android/settings_ex/powersave/PowerSave;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/powersave/PowerSaveSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkPreference()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mToggleWifi:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "power_save_wifi"

    invoke-static {v0, v4, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mToggleSync:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "power_save_sync"

    invoke-static {v0, v4, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mToggleBluetooth:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "power_save_bt"

    invoke-static {v0, v4, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mToggleTouch:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "power_save_touch"

    invoke-static {v0, v4, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mEcoMode:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "power_save_cpu_adjust"

    invoke-static {v0, v4, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mBrightness:Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "power_save_brightness_adjust"

    invoke-static {v0, v4, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mBrightness:Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_save_brightness"

    const/16 v5, 0x14

    invoke-static {v3, v4, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;->setValue(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mScreenTimeout:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "power_save_screen_timeout_adjust"

    invoke-static {v0, v4, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mScreenTimeout:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_save_screen_timeout"

    const/16 v5, 0x3a98

    invoke-static {v3, v4, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->setValue(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mFrontLed:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "power_save_front_led_adjust"

    invoke-static {v0, v4, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mFrontLed:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_save_front_led"

    const/16 v5, 0x5dc

    invoke-static {v3, v4, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mBrightness:Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->updateSummary(Landroid/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mScreenTimeout:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->updateSummary(Landroid/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mFrontLed:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->updateSummary(Landroid/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mBatteryPercentage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_save_battery_indicator"

    invoke-static {v3, v4, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_8

    :goto_8
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 347
    return-void

    :cond_0
    move v0, v2

    .line 302
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 304
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 306
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 312
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 320
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 325
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 330
    goto :goto_6

    :cond_7
    move v0, v2

    .line 335
    goto :goto_7

    :cond_8
    move v1, v2

    .line 345
    goto :goto_8
.end method

.method private initPreference()V
    .locals 3

    .prologue
    const v1, 0x7f060027

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->addPreferencesFromResource(I)V

    const-string v1, "power_save_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/powersave/PowerSaveListPreference;

    iput-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mPowerSaveMode:Lcom/android/settings_ex/powersave/PowerSaveListPreference;

    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mPowerSaveMode:Lcom/android/settings_ex/powersave/PowerSaveListPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/powersave/PowerSaveListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "power_saving_items_category"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mPowerSavingItemsCategory:Landroid/preference/PreferenceCategory;

    .line 236
    const-string v1, "toggle_power_save_wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mToggleWifi:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mToggleWifi:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->setOnTreeClickListener(Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;)V

    const-string v1, "toggle_power_save_sync"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mToggleSync:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mToggleSync:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->setOnTreeClickListener(Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;)V

    const-string v1, "toggle_power_save_bluetooth"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mToggleBluetooth:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mToggleBluetooth:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->setOnTreeClickListener(Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;)V

    const-string v1, "power_save_ecomode"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mEcoMode:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-static {}, Lcom/android/settings_ex/lge/OverlayUtils;->isX3Model()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mPowerSavingItemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mEcoMode:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    const-string v1, "power_save_brightness"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;

    iput-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mBrightness:Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;

    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mBrightness:Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mBrightness:Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;->setOnTreeClickListener(Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;)V

    const-string v1, "power_save_screen_timeout"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mScreenTimeout:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mScreenTimeout:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mScreenTimeout:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->setOnTreeClickListener(Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;)V

    const-string v1, "power_save_front_led"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mFrontLed:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    .line 271
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "l_dcm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mPowerSavingItemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mFrontLed:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :goto_1
    const-string v1, "toggle_power_save_touch"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mToggleTouch:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    .line 279
    const-string v1, "ro.device.hapticfeedback"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, hapticfeedback:Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mPowerSavingItemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mToggleTouch:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :goto_2
    const-string v1, "power_save_battery"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mBattery:Landroid/preference/Preference;

    .line 298
    const-string v1, "power_save_battery_percentage"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mBatteryPercentage:Landroid/preference/CheckBoxPreference;

    return-void

    .end local v0           #hapticfeedback:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mEcoMode:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mEcoMode:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->setOnTreeClickListener(Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;)V

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mFrontLed:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mFrontLed:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->setOnTreeClickListener(Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;)V

    goto :goto_1

    .restart local v0       #hapticfeedback:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mToggleTouch:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mToggleTouch:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->setOnTreeClickListener(Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;)V

    goto :goto_2
.end method

.method private isRTLLanguage()Z
    .locals 2

    .prologue
    .line 576
    const-string v0, "ar"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "fa"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 577
    :cond_0
    const/4 v0, 0x1

    .line 579
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPowerSaveListValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "name"
    .parameter "objValue"

    .prologue
    .line 536
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 538
    .local v0, value:I
    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 539
    return-void
.end method

.method private setPowerSaveModeAllowed(Ljava/lang/Object;)V
    .locals 7
    .parameter "objValue"

    .prologue
    .line 523
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 524
    .local v3, value:I
    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "power_save_mode"

    const/16 v6, 0x1e

    invoke-static {v4, v5, v6}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 525
    .local v2, preState:I
    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "power_save_mode"

    invoke-static {v4, v5, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "power_save_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, enabled:I
    if-lez v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.settings_ex.powersave.action.MODE_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private updatePowerSaverModeSummary(Ljava/lang/Object;)V
    .locals 13
    .parameter "value"

    .prologue
    .line 491
    :try_start_0
    const-string v3, "-1"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mPowerSaveMode:Lcom/android/settings_ex/powersave/PowerSaveListPreference;

    const v4, 0x7f080b38

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/powersave/PowerSaveListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 509
    :goto_0
    return-void

    .line 494
    :cond_0
    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 495
    .local v2, immediatly_value:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mPowerSaveMode:Lcom/android/settings_ex/powersave/PowerSaveListPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings_ex/powersave/PowerSaveListPreference;->setValue(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mPowerSaveMode:Lcom/android/settings_ex/powersave/PowerSaveListPreference;

    invoke-virtual {v3}, Lcom/android/settings_ex/powersave/PowerSaveListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 498
    .local v1, entry:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mPowerSaveMode:Lcom/android/settings_ex/powersave/PowerSaveListPreference;

    invoke-virtual {v3, v1}, Lcom/android/settings_ex/powersave/PowerSaveListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 506
    .end local v1           #entry:Ljava/lang/String;
    .end local v2           #immediatly_value:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 507
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "PowerSaveSettings"

    const-string v4, "could not persist Auto power save mode"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 500
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v2       #immediatly_value:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->isRTLLanguage()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mPowerSaveMode:Lcom/android/settings_ex/powersave/PowerSaveListPreference;

    const v4, 0x7f080b66

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    const-string v9, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/powersave/PowerSaveListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 503
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mPowerSaveMode:Lcom/android/settings_ex/powersave/PowerSaveListPreference;

    const v4, 0x7f080b66

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/powersave/PowerSaveListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private updateState()V
    .locals 5

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_mode"

    const/16 v4, 0x1e

    invoke-static {v2, v3, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, mode:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_started"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .local v0, isChecked:Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->setItemMenuEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mPowerSaveMode:Lcom/android/settings_ex/powersave/PowerSaveListPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/powersave/PowerSaveListPreference;->setValue(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->updatePowerSaverModeSummary(Ljava/lang/Object;)V

    return-void

    .end local v0           #isChecked:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSummary(Landroid/preference/Preference;)V
    .locals 1
    .parameter "preference"

    .prologue
    instance-of v0, p1, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "%s"

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mBrightness:Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;

    if-ne p1, v0, :cond_2

    const v0, 0x7f080b48

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mScreenTimeout:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    if-ne p1, v0, :cond_3

    const v0, 0x7f080b70

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mFrontLed:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    if-ne p1, v0, :cond_0

    const v0, 0x7f080b71

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v7, 0x10

    const/4 v8, -0x2

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .local v1, activity:Landroid/app/Activity;
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .local v0, actionBarSwitch:Landroid/widget/Switch;
    instance-of v5, v1, Landroid/preference/PreferenceActivity;

    if-eqz v5, :cond_1

    move-object v4, v1

    .line 166
    check-cast v4, Landroid/preference/PreferenceActivity;

    .line 167
    .local v4, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_1

    .line 168
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 170
    .local v3, padding:I
    invoke-virtual {v0, v2, v2, v3, v2}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 171
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 173
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v0, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 180
    .end local v3           #padding:I
    .end local v4           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    new-instance v5, Lcom/android/settings_ex/powersave/PowerSaveEnabler;

    invoke-direct {v5, v1, v0, p0}, Lcom/android/settings_ex/powersave/PowerSaveEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/app/Fragment;)V

    iput-object v5, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mPowerSaveEnabler:Lcom/android/settings_ex/powersave/PowerSaveEnabler;

    iget-object v5, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "power_save_enabled"

    invoke-static {v5, v6, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_2

    const/4 v2, 0x1

    .local v2, isEnabled:Z
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mPowerSaveEnabler:Lcom/android/settings_ex/powersave/PowerSaveEnabler;

    invoke-virtual {v5, v2}, Lcom/android/settings_ex/powersave/PowerSaveEnabler;->setSwitchChecked(Z)V

    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->initPreference()V

    invoke-direct {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->checkPreference()V

    new-instance v0, Lcom/android/settings_ex/powersave/PowerSave;

    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings_ex/powersave/PowerSave;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mPowerSave:Lcom/android/settings_ex/powersave/PowerSave;

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_save_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mPowerSave:Lcom/android/settings_ex/powersave/PowerSave;

    invoke-virtual {v0}, Lcom/android/settings_ex/powersave/PowerSave;->isRunningPowerSaveService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    const-string v0, "PowerSaveSettings"

    const-string v1, "Re-start PowerSaveService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings_ex/powersave/PowerSaveService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .parameter "menu"
    .parameter "inflater"

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 480
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 485
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 482
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings_ex.powersave.POWERSAVE_GO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 483
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 480
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mPowerSaveEnabler:Lcom/android/settings_ex/powersave/PowerSaveEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mPowerSaveEnabler:Lcom/android/settings_ex/powersave/PowerSaveEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/powersave/PowerSaveEnabler;->pause()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 216
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "objValue"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mPowerSaveMode:Lcom/android/settings_ex/powersave/PowerSaveListPreference;

    if-ne p1, v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->setPowerSaveModeAllowed(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->updatePowerSaverModeSummary(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mBrightness:Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;

    if-ne p1, v0, :cond_2

    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "power_save_brightness"

    invoke-direct {p0, v0, p2}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->setPowerSaveListValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mBrightness:Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->updateSummary(Landroid/preference/Preference;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mEcoMode:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    if-ne p1, v0, :cond_3

    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "power_save_cpu"

    invoke-direct {p0, v0, p2}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->setPowerSaveListValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mEcoMode:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->updateSummary(Landroid/preference/Preference;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mScreenTimeout:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    if-ne p1, v0, :cond_4

    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "power_save_screen_timeout"

    invoke-direct {p0, v0, p2}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->setPowerSaveListValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mScreenTimeout:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->updateSummary(Landroid/preference/Preference;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mFrontLed:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "power_save_front_led"

    invoke-direct {p0, v0, p2}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->setPowerSaveListValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mFrontLed:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->updateSummary(Landroid/preference/Preference;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mPowerSaveMode:Lcom/android/settings_ex/powersave/PowerSaveListPreference;

    if-ne p2, v1, :cond_1

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mBatteryPercentage:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_battery_indicator"

    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mBatteryPercentage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings_ex.powersave.action.BATTERY_INDICATOR_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 369
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    const-string v2, "power_save_started"

    invoke-static {v2}, Lcom/lge/provider/SettingsEx$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    const-string v2, "PowerSaveSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "register observer uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mPowerSaveEnabler:Lcom/android/settings_ex/powersave/PowerSaveEnabler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mPowerSaveEnabler:Lcom/android/settings_ex/powersave/PowerSaveEnabler;

    invoke-virtual {v2}, Lcom/android/settings_ex/powersave/PowerSaveEnabler;->resume()V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->updateState()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 203
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStop()V

    return-void
.end method

.method public onSwitchCheckedChanged(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 566
    return-void
.end method

.method public onTreeClick(Landroid/preference/Preference;)V
    .locals 5
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mToggleWifi:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    if-ne p1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_wifi"

    iget-object v4, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mToggleWifi:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v4}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 431
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mToggleSync:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    if-ne p1, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_sync"

    iget-object v4, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mToggleSync:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v4}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mToggleBluetooth:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    if-ne p1, v2, :cond_6

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_bt"

    iget-object v4, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mToggleBluetooth:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v4}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_3
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mToggleGps:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    if-ne p1, v2, :cond_8

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_gps"

    iget-object v4, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mToggleGps:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v4}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_4
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mToggleNfc:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    if-ne p1, v2, :cond_a

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_nfc"

    iget-object v4, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mToggleNfc:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v4}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_5
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_9
    move v0, v1

    goto :goto_5

    :cond_a
    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mToggleAnimations:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    if-ne p1, v2, :cond_c

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_animations"

    iget-object v4, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mToggleAnimations:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v4}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_6
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_b
    move v0, v1

    goto :goto_6

    :cond_c
    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mEcoMode:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    if-ne p1, v2, :cond_e

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_cpu_adjust"

    iget-object v4, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mEcoMode:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v4}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_d

    :goto_7
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_d
    move v0, v1

    goto :goto_7

    :cond_e
    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mBrightness:Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;

    if-ne p1, v2, :cond_10

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_brightness_adjust"

    iget-object v4, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mBrightness:Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;

    invoke-virtual {v4}, Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_f

    :goto_8
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mBrightness:Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->updateSummary(Landroid/preference/Preference;)V

    goto/16 :goto_1

    :cond_f
    move v0, v1

    goto :goto_8

    :cond_10
    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mScreenTimeout:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    if-ne p1, v2, :cond_12

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_screen_timeout_adjust"

    iget-object v4, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mScreenTimeout:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v4}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_11

    :goto_9
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mScreenTimeout:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->updateSummary(Landroid/preference/Preference;)V

    goto/16 :goto_1

    :cond_11
    move v0, v1

    goto :goto_9

    :cond_12
    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mFrontLed:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    if-ne p1, v2, :cond_14

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_front_led_adjust"

    iget-object v4, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mFrontLed:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v4}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_13

    :goto_a
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mFrontLed:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->updateSummary(Landroid/preference/Preference;)V

    goto/16 :goto_1

    :cond_13
    move v0, v1

    goto :goto_a

    :cond_14
    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mToggleTouch:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    if-ne p1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_touch"

    iget-object v4, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mToggleTouch:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v4}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_15

    :goto_b
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_15
    move v0, v1

    goto :goto_b
.end method

.method public setItemMenuEnabled(Z)V
    .locals 4
    .parameter "checked"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mPowerSaveMode:Lcom/android/settings_ex/powersave/PowerSaveListPreference;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/settings_ex/powersave/PowerSaveListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings;->mPowerSavingItemsCategory:Landroid/preference/PreferenceCategory;

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 571
    return-void

    :cond_0
    move v0, v2

    .line 569
    goto :goto_0

    :cond_1
    move v1, v2

    .line 570
    goto :goto_1
.end method
