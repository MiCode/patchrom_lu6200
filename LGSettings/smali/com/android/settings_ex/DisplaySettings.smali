.class public Lcom/android/settings_ex/DisplaySettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/DisplaySettings$LocaleConfiguration;
    }
.end annotation


# instance fields
.field private mAccelerometer:Landroid/preference/CheckBoxPreference;

.field private mAccelerometerCalibration:Landroid/preference/Preference;

.field private mAccelerometerRotationObserver:Landroid/database/ContentObserver;

.field private mAutoFitScreen:Landroid/preference/Preference;

.field private mBrightnessPreference:Lcom/android/settings_ex/BrightnessPreference;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mFontSizePref:Landroid/preference/ListPreference;

.field private mFontTypePref:Landroid/preference/ListPreference;

.field private mFrontKeyLight:Landroid/preference/Preference;

.field mHandler:Landroid/os/Handler;

.field private mNotificationFlash:Landroid/preference/PreferenceScreen;

.field private mNotificationPulse:Landroid/preference/CheckBoxPreference;

.field private mPouchSettings:Landroid/preference/PreferenceScreen;

.field private mScreenTimeoutPreference:Lcom/android/settings_ex/DoubleTitleListPreference;

.field private mSencroCategory:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    new-instance v0, Lcom/android/settings_ex/DisplaySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/DisplaySettings$1;-><init>(Lcom/android/settings_ex/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings_ex/DisplaySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DisplaySettings$2;-><init>(Lcom/android/settings_ex/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateAccelerometerRotationCheckbox()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->callDisplayFont()V

    return-void
.end method

.method private addPouchSummury()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pouch_preset_or_custom"

    invoke-static {v3, v4, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 345
    .local v0, bIsCustomOrPreset:I
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pouch_preset_screen_image_path"

    invoke-static {v3, v4, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .local v1, strCustomImageVal:I
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, summaries:[Ljava/lang/CharSequence;
    array-length v3, v2

    if-le v3, v1, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mPouchSettings:Landroid/preference/PreferenceScreen;

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .end local v2           #summaries:[Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mPouchSettings:Landroid/preference/PreferenceScreen;

    const v4, 0x7f08075c

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private callDisplayFont()V
    .locals 4

    .prologue
    .line 782
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.jungle.app.fonts"

    const-string v2, "com.jungle.app.fonts.Fonts"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x1880

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "KEY_CALL_FROM"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "KEY_FONTDATA_TYPE"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "KEY_UI_TYPE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/DisplaySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "DisplaySettings"

    const-string v1, "onPreferenceTreeClick() : activity not found"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DisplaySettings"

    const-string v1, "onPreferenceTreeClick() : com.jungle.app.fonts.Fonts"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkForLocaleChange()V
    .locals 13

    .prologue
    new-instance v4, Lcom/android/settings_ex/DisplaySettings$LocaleConfiguration;

    const/4 v11, 0x0

    invoke-direct {v4, v11}, Lcom/android/settings_ex/DisplaySettings$LocaleConfiguration;-><init>(Lcom/android/settings_ex/DisplaySettings$1;)V

    .local v4, localeConfiguration:Lcom/android/settings_ex/DisplaySettings$LocaleConfiguration;
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mFontTypePref:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v4}, Lcom/android/settings_ex/DisplaySettings;->readConfiguration(Landroid/content/Context;Lcom/android/settings_ex/DisplaySettings$LocaleConfiguration;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .local v0, configuration:Landroid/content/res/Configuration;
    iget-object v8, v4, Lcom/android/settings_ex/DisplaySettings$LocaleConfiguration;->locale:Ljava/lang/String;

    .local v8, previousLocale:Ljava/lang/String;
    iget-object v11, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, locale:Ljava/lang/String;
    iget-object v7, v4, Lcom/android/settings_ex/DisplaySettings$LocaleConfiguration;->familyName:Ljava/lang/String;

    .local v7, previousFamilyName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "com.android.current.font.familyname"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, familyName:Ljava/lang/String;
    iget v9, v4, Lcom/android/settings_ex/DisplaySettings$LocaleConfiguration;->mcc:I

    .local v9, previousMcc:I
    iget v5, v0, Landroid/content/res/Configuration;->mcc:I

    .local v5, mcc:I
    iget v10, v4, Lcom/android/settings_ex/DisplaySettings$LocaleConfiguration;->mnc:I

    .local v10, previousMnc:I
    iget v6, v0, Landroid/content/res/Configuration;->mnc:I

    .local v6, mnc:I
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    if-eqz v1, :cond_2

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    :cond_0
    const/4 v3, 0x1

    .local v3, localeChanged:Z
    :goto_0
    if-eqz v3, :cond_1

    iput-object v2, v4, Lcom/android/settings_ex/DisplaySettings$LocaleConfiguration;->locale:Ljava/lang/String;

    iput-object v1, v4, Lcom/android/settings_ex/DisplaySettings$LocaleConfiguration;->familyName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/DisplaySettings;->getCurrentLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/android/settings_ex/DisplaySettings$LocaleConfiguration;->familyLabel:Ljava/lang/String;

    iput v5, v4, Lcom/android/settings_ex/DisplaySettings$LocaleConfiguration;->mcc:I

    iput v6, v4, Lcom/android/settings_ex/DisplaySettings$LocaleConfiguration;->mnc:I

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mFontTypePref:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v4}, Lcom/android/settings_ex/DisplaySettings;->writeConfiguration(Landroid/content/Context;Lcom/android/settings_ex/DisplaySettings$LocaleConfiguration;)V

    .line 702
    :cond_1
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mFontTypePref:Landroid/preference/ListPreference;

    iget-object v12, v4, Lcom/android/settings_ex/DisplaySettings$LocaleConfiguration;->familyLabel:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 703
    return-void

    .line 690
    .end local v3           #localeChanged:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private checkSensor()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 820
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 821
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v4

    move v2, v1

    .line 824
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 826
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v5, 0x16

    if-ne v0, v5, :cond_1

    move v2, v3

    .line 824
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 828
    :cond_1
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v5, 0x19

    if-ne v0, v5, :cond_2

    move v2, v3

    .line 829
    goto :goto_1

    .line 830
    :cond_2
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v5, 0x15

    if-ne v0, v5, :cond_0

    move v2, v3

    .line 831
    goto :goto_1

    .line 835
    :cond_3
    return v2
.end method

.method private checkSupportChangeFont()V
    .locals 2

    .prologue
    invoke-static {}, Lcom/android/settings_ex/FontTypeFace;->getUseCappFonts()Z

    move-result v1

    const-string v0, "font_type_select"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/FontSettingsPreference;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v0, "DisplaySettings"

    const-string v1, "warning : changing font not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private createAddedMenu()V
    .locals 5

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 275
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v3, "display_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 286
    .local v1, parent:Landroid/preference/PreferenceScreen;
    const-string v3, "font_type"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mFontTypePref:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mFontTypePref:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.jungle.app.fonts"

    invoke-static {v3, v4}, Lcom/android/settings_ex/Utils;->checkPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 290
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v0, v3

    .local v0, blank:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mFontTypePref:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mFontTypePref:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->setDisplayFontEnable()V

    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->checkForLocaleChange()V

    .end local v0           #blank:[Ljava/lang/CharSequence;
    :goto_0
    const-string v3, "autofit_screen"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mAutoFitScreen:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mAutoFitScreen:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.lge.settings.compatmode"

    invoke-static {v3, v4}, Lcom/android/settings_ex/Utils;->checkPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mAutoFitScreen:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    const-string v3, "accelerometer_calibration"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mAccelerometerCalibration:Landroid/preference/Preference;

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SPRINT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mAccelerometerCalibration:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    const-string v3, "pouch_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mPouchSettings:Landroid/preference/PreferenceScreen;

    .line 310
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "i_vzw"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "d1lv"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->addPouchSummury()V

    :goto_1
    const-string v3, "frontkey_led_timeout"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mFrontKeyLight:Landroid/preference/Preference;

    .line 318
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "l_dcm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mFrontKeyLight:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    const-string v3, "notification_flash"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mNotificationFlash:Landroid/preference/PreferenceScreen;

    .line 323
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "d1lv"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 333
    :goto_2
    const-string v3, "sensor_category"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mSencroCategory:Landroid/preference/PreferenceCategory;

    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->isSurportedCalibaration()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->checkSensor()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KDDI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 339
    :cond_5
    :goto_3
    return-void

    .line 296
    :cond_6
    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mFontTypePref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 314
    :cond_7
    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mPouchSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 327
    :cond_8
    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mNotificationFlash:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 337
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/DisplaySettings;->mSencroCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .locals 14
    .parameter "screenTimeoutPreference"

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "device_policy"

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 394
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_1

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    .line 395
    .local v3, maxTimeout:J
    :goto_0
    const-wide/16 v12, 0x0

    cmp-long v12, v3, v12

    if-nez v12, :cond_2

    .line 397
    :try_start_0
    const-string v12, "power"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v5

    .line 399
    .local v5, power:Landroid/os/IPowerManager;
    if-eqz v5, :cond_0

    .line 400
    const v12, 0x3b9aca00

    invoke-interface {v5, v12}, Landroid/os/IPowerManager;->setMaximumScreenOffTimeount(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    .end local v5           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_1
    return-void

    .line 394
    .end local v3           #maxTimeout:J
    :cond_1
    const-wide/16 v3, 0x0

    goto :goto_0

    .line 407
    .restart local v3       #maxTimeout:J
    :cond_2
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 408
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v11

    .line 409
    .local v11, values:[Ljava/lang/CharSequence;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v6, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v7, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v12, v11

    if-ge v2, v12, :cond_4

    .line 412
    aget-object v12, v11, v2

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 413
    .local v8, timeout:J
    cmp-long v12, v8, v3

    if-gtz v12, :cond_3

    .line 414
    aget-object v12, v1, v2

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    aget-object v12, v11, v2

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 418
    .end local v8           #timeout:J
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    array-length v13, v1

    if-ne v12, v13, :cond_5

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    array-length v13, v11

    if-eq v12, v13, :cond_6

    .line 419
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v12}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 421
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v12}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 423
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 424
    .local v10, userPreference:I
    int-to-long v12, v10

    cmp-long v12, v12, v3

    if-gtz v12, :cond_6

    .line 425
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 432
    .end local v10           #userPreference:I
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_7

    const/4 v12, 0x1

    :goto_3
    invoke-virtual {p1, v12}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_7
    const/4 v12, 0x0

    goto :goto_3

    .line 403
    .end local v1           #entries:[Ljava/lang/CharSequence;
    .end local v2           #i:I
    .end local v6           #revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v7           #revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v11           #values:[Ljava/lang/CharSequence;
    :catch_0
    move-exception v12

    goto/16 :goto_1
.end method

.method private getCurrentLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "currentFamilyName"

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "content://com.jungle.app.fonts.provider/fonts/current/label"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 709
    .local v6, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 711
    .local v8, label:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 712
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 713
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v7, v1, :cond_0

    .line 714
    const-string v1, "current_label"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 713
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 720
    .end local v7           #i:I
    :cond_0
    if-eqz v6, :cond_1

    .line 721
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 723
    :cond_1
    :goto_1
    return-object v8

    .line 717
    :catch_0
    move-exception v1

    .line 720
    if-eqz v6, :cond_1

    .line 721
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 720
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 721
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method private isContainfromValues(Ljava/lang/Object;)Z
    .locals 3
    .parameter "value"

    .prologue
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings_ex/DoubleTitleListPreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/DoubleTitleListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 813
    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 814
    const/4 v2, 0x1

    .line 817
    :goto_1
    return v2

    .line 812
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 817
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isSurportedCalibaration()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 520
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "i_vzw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "lgp930"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "i_skt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "i_u"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "i_dcm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "x3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "d1lv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "d1lv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "d1la"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "d1lkt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "d1lsk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "d1lu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "l1a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "l_dcm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "l0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "l1t"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "l1kt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "l1sk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "l1u"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 543
    :cond_0
    :goto_0
    return v0

    .line 537
    :cond_1
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_PRADAUI:Z

    if-nez v1, :cond_0

    .line 543
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static readConfiguration(Landroid/content/Context;Lcom/android/settings_ex/DisplaySettings$LocaleConfiguration;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 735
    const/4 v1, 0x0

    .line 737
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    const-string v2, "display.font.preferences"

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 738
    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/settings_ex/DisplaySettings$LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p1, Lcom/android/settings_ex/DisplaySettings$LocaleConfiguration;->mcc:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p1, Lcom/android/settings_ex/DisplaySettings$LocaleConfiguration;->mnc:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 746
    if-eqz v0, :cond_0

    .line 748
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 741
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 746
    :goto_1
    if-eqz v0, :cond_0

    .line 748
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 749
    :catch_1
    move-exception v0

    goto :goto_0

    .line 743
    :catch_2
    move-exception v0

    move-object v0, v1

    .line 746
    :goto_2
    if-eqz v0, :cond_0

    .line 748
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 749
    :catch_3
    move-exception v0

    goto :goto_0

    .line 746
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_1

    .line 748
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 751
    :cond_1
    :goto_4
    throw v0

    .line 749
    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_4

    .line 746
    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3

    .line 743
    :catch_6
    move-exception v1

    goto :goto_2

    .line 741
    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method private setDisplayFontEnable()V
    .locals 8

    .prologue
    .line 653
    const/4 v2, 0x1

    .line 655
    .local v2, dimmedDisplayFlag:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 656
    .local v0, conf:Landroid/content/res/Configuration;
    iget-object v6, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 657
    .local v1, curLocale:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090071

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 659
    .local v3, dimmedDisplayLists:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_1

    .line 660
    aget-object v6, v3, v5

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 661
    const/4 v2, 0x0

    .line 659
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 664
    .end local v0           #conf:Landroid/content/res/Configuration;
    .end local v1           #curLocale:Ljava/lang/String;
    .end local v3           #dimmedDisplayLists:[Ljava/lang/String;
    .end local v5           #i:I
    :catch_0
    move-exception v4

    .line 665
    .local v4, e:Ljava/lang/Exception;
    const-string v6, "DisplaySettings"

    const-string v7, "setDisplayFontEnable"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mFontTypePref:Landroid/preference/ListPreference;

    invoke-virtual {v6, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    return-void
.end method

.method private updateAccelerometerRotationCheckbox()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 556
    return-void
.end method

.method private updateState()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateAccelerometerRotationCheckbox()V

    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DisplaySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    return-void
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 13
    .parameter "currentTimeout"

    .prologue
    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings_ex/DoubleTitleListPreference;

    .local v3, preference:Landroid/preference/ListPreference;
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gez v8, :cond_0

    .line 362
    const-string v4, ""

    .line 387
    .local v4, summary:Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 388
    return-void

    .line 364
    .end local v4           #summary:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 365
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 366
    .local v7, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 367
    .local v0, best:I
    array-length v8, v7

    if-nez v8, :cond_1

    .line 368
    const-string v4, ""

    .restart local v4       #summary:Ljava/lang/String;
    goto :goto_0

    .line 371
    .end local v4           #summary:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v8, v7

    if-ge v2, v8, :cond_3

    .line 372
    aget-object v8, v7, v2

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 373
    .local v5, timeout:J
    cmp-long v8, p1, v5

    if-ltz v8, :cond_2

    .line 374
    move v0, v2

    .line 371
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 377
    .end local v5           #timeout:J
    :cond_3
    const-wide/32 v8, 0x3b9aca00

    cmp-long v8, p1, v8

    if-ltz v8, :cond_4

    .line 378
    aget-object v4, v1, v0

    check-cast v4, Ljava/lang/String;

    .restart local v4       #summary:Ljava/lang/String;
    goto :goto_0

    .line 382
    .end local v4           #summary:Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0802e3

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v1, v0

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #summary:Ljava/lang/String;
    goto :goto_0
.end method

.method private static writeConfiguration(Landroid/content/Context;Lcom/android/settings_ex/DisplaySettings$LocaleConfiguration;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 757
    const/4 v1, 0x0

    .line 759
    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    const-string v2, "display.font.preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v1, p1, Lcom/android/settings_ex/DisplaySettings$LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget v1, p1, Lcom/android/settings_ex/DisplaySettings$LocaleConfiguration;->mcc:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p1, Lcom/android/settings_ex/DisplaySettings$LocaleConfiguration;->mnc:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 773
    :catch_1
    move-exception v0

    goto :goto_0

    .line 766
    :catch_2
    move-exception v0

    move-object v0, v1

    .line 768
    :goto_2
    :try_start_4
    const-string v1, "display.font.preferences"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 770
    if-eqz v0, :cond_0

    .line 772
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 773
    :catch_3
    move-exception v0

    goto :goto_0

    .line 770
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_1

    .line 772
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 775
    :cond_1
    :goto_4
    throw v0

    .line 773
    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_4

    .line 770
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    .line 766
    :catch_6
    move-exception v1

    goto :goto_2

    .line 764
    :catch_7
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method floatToIndex(F)I
    .locals 6
    .parameter "val"

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09001c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, indices:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 438
    .local v2, lastVal:F
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 439
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 440
    .local v3, thisVal:F
    sub-float v4, v3, v2

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 441
    add-int/lit8 v4, v0, -0x1

    .line 445
    .end local v3           #thisVal:F
    :goto_1
    return v4

    .line 443
    .restart local v3       #thisVal:F
    :cond_0
    move v2, v3

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 445
    .end local v3           #thisVal:F
    :cond_1
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .local v6, resolver:Landroid/content/ContentResolver;
    const v8, 0x7f060018

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->addPreferencesFromResource(I)V

    const-string v8, "brightness"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings_ex/BrightnessPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightnessPreference:Lcom/android/settings_ex/BrightnessPreference;

    .line 206
    const-string v8, "accelerometer"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v10}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    const-string v8, "screen_timeout"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings_ex/DoubleTitleListPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings_ex/DoubleTitleListPreference;

    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings_ex/DoubleTitleListPreference;

    const v11, 0x7f08073c

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/settings_ex/DoubleTitleListPreference;->setMainTitle(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings_ex/DoubleTitleListPreference;

    const v11, 0x7f08077d

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/settings_ex/DoubleTitleListPreference;->setSubTitle(Ljava/lang/String;)V

    .line 213
    const-string v8, "screen_off_timeout"

    const-wide/16 v11, 0x7530

    invoke-static {v6, v8, v11, v12}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 215
    .local v0, currentTimeout:J
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings_ex/DoubleTitleListPreference;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/settings_ex/DoubleTitleListPreference;->setValue(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings_ex/DoubleTitleListPreference;

    invoke-virtual {v8, p0}, Lcom/android/settings_ex/DoubleTitleListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings_ex/DoubleTitleListPreference;

    invoke-direct {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->isContainfromValues(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-wide/16 v0, 0x7530

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "screen_off_timeout"

    long-to-int v12, v0

    invoke-static {v8, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings_ex/DoubleTitleListPreference;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/settings_ex/DoubleTitleListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    const-string v8, "font_size"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePref:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    sget-object v8, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v11, "m4"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    sget-object v8, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v11, "m4ds"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 236
    :cond_1
    new-array v4, v13, [Ljava/lang/CharSequence;

    .line 237
    .local v4, new_list_entries:[Ljava/lang/CharSequence;
    new-array v5, v13, [Ljava/lang/CharSequence;

    .line 238
    .local v5, new_list_entryValues:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f09009b

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 239
    .local v2, list_entries:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f09001c

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .local v3, list_entryValues:[Ljava/lang/CharSequence;
    aget-object v8, v2, v9

    aput-object v8, v4, v10

    aget-object v8, v3, v9

    aput-object v8, v5, v10

    aget-object v8, v2, v13

    aput-object v8, v4, v9

    aget-object v8, v3, v13

    aput-object v8, v5, v9

    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .end local v2           #list_entries:[Ljava/lang/CharSequence;
    .end local v3           #list_entryValues:[Ljava/lang/CharSequence;
    .end local v4           #new_list_entries:[Ljava/lang/CharSequence;
    .end local v5           #new_list_entryValues:[Ljava/lang/CharSequence;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->checkSupportChangeFont()V

    .line 252
    const-string v8, "notification_pulse"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x1110019

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->createAddedMenu()V

    return-void

    :cond_4
    :try_start_0
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-eqz v8, :cond_3

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    const-string v8, "notification_light_pulse"

    invoke-static {v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v8

    if-ne v8, v9, :cond_5

    move v8, v9

    :goto_1
    invoke-virtual {v11, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v7

    .line 266
    .local v7, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v8, "DisplaySettings"

    const-string v9, "notification_light_pulse not found"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v7           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_5
    move v8, v10

    .line 261
    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 508
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 618
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 619
    .local v1, key:Ljava/lang/String;
    const-string v3, "screen_timeout"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p2

    .line 620
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 622
    .local v2, value:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    int-to-long v3, v2

    invoke-direct {p0, v3, v4}, Lcom/android/settings_ex/DisplaySettings;->updateTimeoutPreferenceDescription(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #value:I
    :cond_0
    :goto_0
    const-string v3, "font_size"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/settings_ex/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    :cond_1
    const/4 v3, 0x1

    return v3

    .restart local v2       #value:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "DisplaySettings"

    const-string v4, "could not persist screen timeout setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/16 v8, 0x6d

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/settings_ex/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_3

    :try_start_0
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .local v4, wm:Landroid/view/IWindowManager;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/settings_ex/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 583
    invoke-interface {v4}, Landroid/view/IWindowManager;->thawRotation()V

    .line 589
    :cond_0
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.settings_ex.rotation.CHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 590
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #wm:Landroid/view/IWindowManager;
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    :goto_2
    return v6

    .line 585
    .restart local v4       #wm:Landroid/view/IWindowManager;
    :cond_2
    const/4 v5, 0x0

    :try_start_1
    invoke-interface {v4, v5}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 591
    .end local v4           #wm:Landroid/view/IWindowManager;
    :catch_0
    move-exception v1

    .line 592
    .local v1, exc:Landroid/os/RemoteException;
    const-string v5, "DisplaySettings"

    const-string v6, "Unable to save auto-rotate setting"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1           #exc:Landroid/os/RemoteException;
    :cond_3
    iget-object v7, p0, Lcom/android/settings_ex/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_5

    iget-object v7, p0, Lcom/android/settings_ex/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .local v3, value:Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "notification_light_pulse"

    if-eqz v3, :cond_4

    move v5, v6

    :cond_4
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .end local v3           #value:Z
    :cond_5
    iget-object v5, p0, Lcom/android/settings_ex/DisplaySettings;->mFontTypePref:Landroid/preference/ListPreference;

    if-ne p2, v5, :cond_6

    iget-object v5, p0, Lcom/android/settings_ex/DisplaySettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, p0, Lcom/android/settings_ex/DisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/android/settings_ex/DisplaySettings;->mAutoFitScreen:Landroid/preference/Preference;

    if-ne p2, v5, :cond_1

    :try_start_2
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.SCREENOPTIMIZATION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 605
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v5, "com.lge.settings.compatmode"

    const-string v6, "com.lge.settings.compatmode.CompatibilityMode"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DisplaySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .end local v2           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v5, "DisplaySettings"

    const-string v6, "onPreferenceTreeClick() : activity not found"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const-string v5, "DisplaySettings"

    const-string v6, "onPreferenceTreeClick() : com.lge.providers.packageconfig.PackageConfig_Act"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->addPouchSummury()V

    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateState()V

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 492
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightnessPreference:Lcom/android/settings_ex/BrightnessPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightnessPreference:Lcom/android/settings_ex/BrightnessPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/BrightnessPreference;->stopDialog()V

    :cond_0
    return-void
.end method

.method public readFontSizePreference(Landroid/preference/ListPreference;)V
    .locals 8
    .parameter "pref"

    .prologue
    .line 450
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/DisplaySettings;->floatToIndex(F)I

    move-result v2

    .line 459
    .local v2, index:I
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "m4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "m4ds"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    if-nez v2, :cond_2

    const/4 v2, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p1, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f09009b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, fontSizeNames:[Ljava/lang/String;
    const v4, 0x7f0802ef

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v7, v1, v2

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 476
    return-void

    .line 451
    .end local v1           #fontSizeNames:[Ljava/lang/String;
    .end local v2           #index:I
    .end local v3           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 452
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "DisplaySettings"

    const-string v5, "Unable to retrieve font size"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 463
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v2       #index:I
    :cond_2
    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 464
    const/4 v2, 0x2

    goto :goto_1

    .line 469
    :cond_3
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_2
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 7
    .parameter "objValue"

    .prologue
    .line 561
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 562
    .local v0, conf:Landroid/content/res/Configuration;
    if-eqz v0, :cond_0

    .line 563
    const-string v2, "DisplaySettings"

    const-string v3, "orientation config  old:%d new:%d "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    iput v3, v2, Landroid/content/res/Configuration;->orientation:I

    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 569
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    .end local v0           #conf:Landroid/content/res/Configuration;
    :goto_0
    return-void

    .line 570
    :catch_0
    move-exception v1

    .line 571
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "DisplaySettings"

    const-string v3, "Unable to save font size"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
