.class public Lcom/android/settings_ex/lge/FrontKeyLight;
.super Landroid/preference/PreferenceActivity;
.source "FrontKeyLight.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private isPortrait:Z

.field private mCustomImagePreference:Landroid/widget/ImageView;

.field private mFrontKeyLightDuration:Lcom/android/settings_ex/DoubleTitleListPreference;

.field private mTurnOnFrontKeyLight:Landroid/preference/CheckBoxPreference;

.field preLightDurationValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private isPortraitOri()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/FrontKeyLight;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 48
    .local v0, conf:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v1, :cond_0

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateFrontKeyLEDTimeoutSummary(Ljava/lang/Object;)V
    .locals 5
    .parameter "value"

    .prologue
    .line 201
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "l1a"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/FrontKeyLight;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 209
    .local v1, summaries:[Ljava/lang/CharSequence;
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mFrontKeyLightDuration:Lcom/android/settings_ex/DoubleTitleListPreference;

    invoke-virtual {v3}, Lcom/android/settings_ex/DoubleTitleListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 210
    .local v2, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 211
    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mFrontKeyLightDuration:Lcom/android/settings_ex/DoubleTitleListPreference;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/DoubleTitleListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mFrontKeyLightDuration:Lcom/android/settings_ex/DoubleTitleListPreference;

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/DoubleTitleListPreference;->setValueIndex(I)V

    :cond_0
    return-void

    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/CharSequence;
    .end local v2           #values:[Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/FrontKeyLight;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09007b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1       #summaries:[Ljava/lang/CharSequence;
    goto :goto_0

    .line 210
    .restart local v0       #i:I
    .restart local v2       #values:[Ljava/lang/CharSequence;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateUi()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/lge/FrontKeyLight;->isPortraitOri()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->isPortrait:Z

    iget-boolean v0, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->isPortrait:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/settings_ex/lge/FrontKeyLight;->updateUi()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "arg0"

    .prologue
    const v5, 0x7f02015c

    const/16 v4, 0x5dc

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/FrontKeyLight;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, resolver:Landroid/content/ContentResolver;
    const v1, 0x7f06001a

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/lge/FrontKeyLight;->addPreferencesFromResource(I)V

    const v1, 0x7f040034

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/lge/FrontKeyLight;->setContentView(I)V

    const-string v1, "front_key_light_prevalue"

    invoke-static {v0, v1, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->preLightDurationValue:I

    .line 77
    const v1, 0x7f0b0071

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/lge/FrontKeyLight;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    .line 79
    const-string v1, "checkbox_front_key_light"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/lge/FrontKeyLight;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mTurnOnFrontKeyLight:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mTurnOnFrontKeyLight:Landroid/preference/CheckBoxPreference;

    const-string v1, "frontkey_led_timeout"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 85
    const-string v1, "front_key_light_duration"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/lge/FrontKeyLight;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/DoubleTitleListPreference;

    iput-object v1, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mFrontKeyLightDuration:Lcom/android/settings_ex/DoubleTitleListPreference;

    iget-object v1, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mFrontKeyLightDuration:Lcom/android/settings_ex/DoubleTitleListPreference;

    const v2, 0x7f080782

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/lge/FrontKeyLight;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/DoubleTitleListPreference;->setMainTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mFrontKeyLightDuration:Lcom/android/settings_ex/DoubleTitleListPreference;

    const v2, 0x7f080783

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/lge/FrontKeyLight;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/DoubleTitleListPreference;->setSubTitle(Ljava/lang/String;)V

    .line 89
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "l1a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mFrontKeyLightDuration:Lcom/android/settings_ex/DoubleTitleListPreference;

    const v2, 0x7f09007e

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/DoubleTitleListPreference;->setEntryValues(I)V

    iget-object v1, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mFrontKeyLightDuration:Lcom/android/settings_ex/DoubleTitleListPreference;

    const v2, 0x7f09007d

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/DoubleTitleListPreference;->setEntries(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mFrontKeyLightDuration:Lcom/android/settings_ex/DoubleTitleListPreference;

    const-string v2, "frontkey_led_timeout"

    invoke-static {v0, v2, v4}, Lcom/lge/provider/SettingsEx$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/DoubleTitleListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mTurnOnFrontKeyLight:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 99
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "d1lv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    const v2, 0x7f020162

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mFrontKeyLightDuration:Lcom/android/settings_ex/DoubleTitleListPreference;

    invoke-virtual {v1}, Lcom/android/settings_ex/DoubleTitleListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/lge/FrontKeyLight;->updateFrontKeyLEDTimeoutSummary(Ljava/lang/Object;)V

    :goto_2
    iget-object v1, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mFrontKeyLightDuration:Lcom/android/settings_ex/DoubleTitleListPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/DoubleTitleListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/android/settings_ex/lge/FrontKeyLight;->updateUi()V

    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "i_vzw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    const v2, 0x7f020161

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 103
    :cond_3
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "cayman_v"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    const v2, 0x7f02015f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 111
    :cond_5
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "d1lv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    const v2, 0x7f02015e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    iget v1, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->preLightDurationValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/lge/FrontKeyLight;->updateFrontKeyLEDTimeoutSummary(Ljava/lang/Object;)V

    goto :goto_2

    .line 113
    :cond_6
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "i_vzw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    const v2, 0x7f02015d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 115
    :cond_7
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "cayman_v"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    const v2, 0x7f02015b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 182
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, key:Ljava/lang/String;
    const-string v2, "front_key_light_duration"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mTurnOnFrontKeyLight:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p2

    .line 186
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 187
    .local v1, value:I
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/FrontKeyLight;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "frontkey_led_timeout"

    invoke-static {v2, v3, v1}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, p2}, Lcom/android/settings_ex/lge/FrontKeyLight;->updateFrontKeyLEDTimeoutSummary(Ljava/lang/Object;)V

    .end local v1           #value:I
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const v4, 0x7f02015c

    const/16 v3, 0x5dc

    iget-object v0, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mTurnOnFrontKeyLight:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mTurnOnFrontKeyLight:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mFrontKeyLightDuration:Lcom/android/settings_ex/DoubleTitleListPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/DoubleTitleListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->preLightDurationValue:I

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/FrontKeyLight;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "front_key_light_prevalue"

    iget v2, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->preLightDurationValue:I

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/FrontKeyLight;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "frontkey_led_timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/FrontKeyLight;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "front_key_light_prevalue"

    invoke-static {v0, v1}, Lcom/lge/provider/SettingsEx$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/lge/FrontKeyLight;->updateFrontKeyLEDTimeoutSummary(Ljava/lang/Object;)V

    .line 144
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "d1lv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    const v1, 0x7f02015e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 146
    :cond_1
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "i_vzw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    const v1, 0x7f02015d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 148
    :cond_2
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "cayman_v"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    const v1, 0x7f02015b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 157
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/FrontKeyLight;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "front_key_light_prevalue"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->preLightDurationValue:I

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/FrontKeyLight;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "frontkey_led_timeout"

    iget v2, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->preLightDurationValue:I

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mFrontKeyLightDuration:Lcom/android/settings_ex/DoubleTitleListPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/FrontKeyLight;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "frontkey_led_timeout"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DoubleTitleListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mFrontKeyLightDuration:Lcom/android/settings_ex/DoubleTitleListPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/DoubleTitleListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/lge/FrontKeyLight;->updateFrontKeyLEDTimeoutSummary(Ljava/lang/Object;)V

    .line 164
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "d1lv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    const v1, 0x7f020162

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 166
    :cond_5
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "i_vzw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    const v1, 0x7f020161

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 168
    :cond_6
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "cayman_v"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/settings_ex/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    const v1, 0x7f02015f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method
