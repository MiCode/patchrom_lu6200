.class public Lcom/android/settings_ex/lge/LedLightSetting;
.super Landroid/preference/PreferenceActivity;
.source "LedLightSetting.java"


# instance fields
.field private ck_front_key_alarm:Landroid/preference/CheckBoxPreference;

.field private ck_front_key_all:Landroid/preference/CheckBoxPreference;

.field private ck_front_key_calendar_reminder:Landroid/preference/CheckBoxPreference;

.field private ck_front_key_email:Landroid/preference/CheckBoxPreference;

.field private ck_front_key_felica:Landroid/preference/CheckBoxPreference;

.field private ck_front_key_messaging:Landroid/preference/CheckBoxPreference;

.field private ck_front_key_missed:Landroid/preference/CheckBoxPreference;

.field private ck_front_key_sms:Landroid/preference/CheckBoxPreference;

.field private ck_front_key_social_event:Landroid/preference/CheckBoxPreference;

.field private ck_front_key_voice_mail:Landroid/preference/CheckBoxPreference;

.field private pf_key_area_mail:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f060021

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/lge/LedLightSetting;->addPreferencesFromResource(I)V

    const-string v2, "front_key_screen"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/lge/LedLightSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .local v0, parent:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "front_key_area_mail"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/lge/LedLightSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/lge/LedLightSetting;->pf_key_area_mail:Landroid/preference/Preference;

    .line 60
    const-string v2, "front_key_all"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/lge/LedLightSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_all:Landroid/preference/CheckBoxPreference;

    .line 61
    const-string v2, "checkbox_front_key_missed_call"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/lge/LedLightSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_missed:Landroid/preference/CheckBoxPreference;

    .line 62
    const-string v2, "checkbox_front_key_messaging"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/lge/LedLightSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_messaging:Landroid/preference/CheckBoxPreference;

    .line 63
    const-string v2, "checkbox_front_key_voice_mail"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/lge/LedLightSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_voice_mail:Landroid/preference/CheckBoxPreference;

    .line 64
    const-string v2, "checkbox_front_key_sms"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/lge/LedLightSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_sms:Landroid/preference/CheckBoxPreference;

    .line 65
    const-string v2, "checkbox_front_key_felica"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/lge/LedLightSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_felica:Landroid/preference/CheckBoxPreference;

    .line 66
    const-string v2, "checkbox_front_key_alarm"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/lge/LedLightSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_alarm:Landroid/preference/CheckBoxPreference;

    .line 67
    const-string v2, "checkbox_front_key_calandar_reminder"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/lge/LedLightSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_calendar_reminder:Landroid/preference/CheckBoxPreference;

    .line 68
    const-string v2, "checkbox_front_key_social_event"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/lge/LedLightSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_social_event:Landroid/preference/CheckBoxPreference;

    .line 69
    const-string v2, "checkbox_front_key_email"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/lge/LedLightSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_email:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings_ex/lge/LedLightSetting;->pf_key_area_mail:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSelectable(Z)V

    iget-object v5, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_all:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "front_key_all"

    invoke-static {v2, v6, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_missed:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "front_key_missed_call"

    invoke-static {v2, v6, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_messaging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "front_key_messaging"

    invoke-static {v2, v6, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_voice_mail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "front_key_voice_mail"

    invoke-static {v2, v6, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_sms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "front_key_sms"

    invoke-static {v2, v6, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_4
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_felica:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "front_key_felica"

    invoke-static {v2, v6, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_5
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_alarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "front_key_alarm"

    invoke-static {v2, v6, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_6
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_calendar_reminder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "front_key_calendar_reminder"

    invoke-static {v2, v6, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_7
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_social_event:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "front_key_social_event"

    invoke-static {v2, v6, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    :goto_8
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_email:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "front_key_email"

    invoke-static {v5, v6, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_9

    :goto_9
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 95
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "l_dcm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_messaging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_voice_mail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_alarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_calendar_reminder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_social_event:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_email:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_a
    return-void

    :cond_0
    move v2, v4

    goto/16 :goto_0

    :cond_1
    move v2, v4

    goto/16 :goto_1

    :cond_2
    move v2, v4

    goto/16 :goto_2

    :cond_3
    move v2, v4

    goto/16 :goto_3

    :cond_4
    move v2, v4

    goto/16 :goto_4

    :cond_5
    move v2, v4

    goto/16 :goto_5

    :cond_6
    move v2, v4

    goto :goto_6

    :cond_7
    move v2, v4

    goto :goto_7

    :cond_8
    move v2, v4

    goto :goto_8

    :cond_9
    move v3, v4

    goto :goto_9

    :cond_a
    const-string v2, "DCM"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_messaging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_voice_mail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_a

    :cond_b
    iget-object v2, p0, Lcom/android/settings_ex/lge/LedLightSetting;->pf_key_area_mail:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_sms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_felica:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_social_event:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_a
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_missed:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_missed:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_missed_call"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 134
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NOTIFICATION_FLASH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "name"

    const-string v2, "front_key_missed_call"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/lge/LedLightSetting;->sendBroadcast(Landroid/content/Intent;)V

    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_missed_call"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_all:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_4

    iget-object v1, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_all:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_all"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 147
    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NOTIFICATION_FLASH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "name"

    const-string v2, "front_key_all"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/lge/LedLightSetting;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_all"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_messaging:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_6

    iget-object v1, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_messaging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_messaging"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 159
    :goto_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NOTIFICATION_FLASH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "name"

    const-string v2, "front_key_messaging"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/lge/LedLightSetting;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .end local v0           #intent:Landroid/content/Intent;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_messaging"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_voice_mail:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_8

    iget-object v1, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_voice_mail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_voice_mail"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 171
    :goto_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NOTIFICATION_FLASH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "name"

    const-string v2, "front_key_voice_mail"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/lge/LedLightSetting;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .end local v0           #intent:Landroid/content/Intent;
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_voice_mail"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_sms:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_a

    iget-object v1, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_sms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_sms"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 183
    :goto_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NOTIFICATION_FLASH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "name"

    const-string v2, "front_key_sms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/lge/LedLightSetting;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .end local v0           #intent:Landroid/content/Intent;
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_sms"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    :cond_a
    iget-object v1, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_felica:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_c

    iget-object v1, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_felica:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_felica"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 195
    :goto_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NOTIFICATION_FLASH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "name"

    const-string v2, "front_key_felica"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/lge/LedLightSetting;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .end local v0           #intent:Landroid/content/Intent;
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_felica"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    :cond_c
    iget-object v1, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_alarm:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_e

    iget-object v1, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_alarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_alarm"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 207
    :goto_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NOTIFICATION_FLASH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "name"

    const-string v2, "front_key_alarm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/lge/LedLightSetting;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .end local v0           #intent:Landroid/content/Intent;
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_alarm"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_7

    :cond_e
    iget-object v1, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_calendar_reminder:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_10

    iget-object v1, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_calendar_reminder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_calendar_reminder"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 219
    :goto_8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NOTIFICATION_FLASH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "name"

    const-string v2, "front_key_calendar_reminder"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/lge/LedLightSetting;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .end local v0           #intent:Landroid/content/Intent;
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_calendar_reminder"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_8

    :cond_10
    iget-object v1, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_social_event:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_12

    iget-object v1, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_social_event:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_social_event"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 232
    :goto_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NOTIFICATION_FLASH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "name"

    const-string v2, "front_key_social_event"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/lge/LedLightSetting;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .end local v0           #intent:Landroid/content/Intent;
    :cond_11
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_social_event"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_9

    :cond_12
    iget-object v1, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_email:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/lge/LedLightSetting;->ck_front_key_email:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_email"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 244
    :goto_a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NOTIFICATION_FLASH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "name"

    const-string v2, "front_key_email"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/lge/LedLightSetting;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .end local v0           #intent:Landroid/content/Intent;
    :cond_13
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_email"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_a
.end method
