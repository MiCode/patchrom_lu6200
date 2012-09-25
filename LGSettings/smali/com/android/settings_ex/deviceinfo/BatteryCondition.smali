.class public Lcom/android/settings_ex/deviceinfo/BatteryCondition;
.super Landroid/preference/PreferenceActivity;
.source "BatteryCondition.java"


# instance fields
.field private mbattery_condition:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/BatteryCondition;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 109
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/BatteryCondition;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 112
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 45
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/BatteryCondition;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "battery_condition"

    invoke-static {v1, v3, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 49
    .local v0, condition:I
    const v1, 0x7f060011

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/BatteryCondition;->addPreferencesFromResource(I)V

    .line 51
    packed-switch v0, :pswitch_data_0

    .line 80
    :goto_0
    const-string v1, "battery_condition_alarm"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/BatteryCondition;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/BatteryCondition;->mbattery_condition:Landroid/preference/CheckBoxPreference;

    .line 81
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/BatteryCondition;->mbattery_condition:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/BatteryCondition;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "battery_condition_alarm"

    invoke-static {v1, v4, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 82
    return-void

    .line 58
    :pswitch_0
    const-string v1, "battery_good"

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/BatteryCondition;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 59
    const-string v1, "battery_bad"

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/BatteryCondition;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :pswitch_1
    const-string v1, "battery_verygood"

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/BatteryCondition;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 67
    const-string v1, "battery_bad"

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/BatteryCondition;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :pswitch_2
    const-string v1, "battery_verygood"

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/BatteryCondition;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 75
    const-string v1, "battery_good"

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/BatteryCondition;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 100
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/BatteryCondition;->mbattery_condition:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/BatteryCondition;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "battery_condition_alarm"

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/BatteryCondition;->mbattery_condition:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 89
    :cond_0
    return v1

    .line 87
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 95
    return-void
.end method
