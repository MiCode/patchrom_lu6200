.class public Lcom/android/settings_ex/lge/ConnectivityPouchNotification;
.super Landroid/preference/PreferenceActivity;
.source "ConnectivityPouchNotification.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mPouchCalendarEvents:Landroid/preference/CheckBoxPreference;

.field private mPouchEmail:Landroid/preference/CheckBoxPreference;

.field private mPouchMessage:Landroid/preference/CheckBoxPreference;

.field private mPouchMissedCall:Landroid/preference/CheckBoxPreference;

.field private mPouchVoiceMessage:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, resolver:Landroid/content/ContentResolver;
    const v1, 0x7f04002b

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->addPreferencesFromResource(I)V

    const v1, 0x7f06000c

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->setContentView(I)V

    const-string v1, "pouch_missed_call"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->mPouchMissedCall:Landroid/preference/CheckBoxPreference;

    .line 40
    const-string v1, "pouch_message"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->mPouchMessage:Landroid/preference/CheckBoxPreference;

    .line 41
    const-string v1, "pouch_voice_message"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->mPouchVoiceMessage:Landroid/preference/CheckBoxPreference;

    .line 42
    const-string v1, "pouch_calendar_events"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->mPouchCalendarEvents:Landroid/preference/CheckBoxPreference;

    .line 43
    const-string v1, "pouch_email"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->mPouchEmail:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->mPouchMissedCall:Landroid/preference/CheckBoxPreference;

    const-string v1, "pouch_mode_auto_launch_missed_call"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->mPouchMessage:Landroid/preference/CheckBoxPreference;

    const-string v1, "pouch_mode_auto_launch_message"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->mPouchEmail:Landroid/preference/CheckBoxPreference;

    const-string v1, "pouch_mode_auto_launch_email"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->mPouchVoiceMessage:Landroid/preference/CheckBoxPreference;

    const-string v1, "pouch_mode_auto_launch_voice_message"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->mPouchCalendarEvents:Landroid/preference/CheckBoxPreference;

    const-string v4, "pouch_mode_auto_launch_calendar_events"

    invoke-static {v0, v4, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    :goto_4
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 57
    return-void

    :cond_0
    move v1, v3

    .line 47
    goto :goto_0

    :cond_1
    move v1, v3

    .line 49
    goto :goto_1

    :cond_2
    move v1, v3

    .line 51
    goto :goto_2

    :cond_3
    move v1, v3

    .line 53
    goto :goto_3

    :cond_4
    move v2, v3

    .line 55
    goto :goto_4
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->mPouchMissedCall:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->mPouchMissedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pouch_mode_auto_launch_missed_call"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 111
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pouch_mode_auto_launch_missed_call"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->mPouchMessage:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->mPouchMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pouch_mode_auto_launch_message"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 79
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pouch_mode_auto_launch_message"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->mPouchVoiceMessage:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->mPouchVoiceMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pouch_mode_auto_launch_voice_message"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 88
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pouch_mode_auto_launch_voice_message"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->mPouchCalendarEvents:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_8

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->mPouchCalendarEvents:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pouch_mode_auto_launch_calendar_events"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 97
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pouch_mode_auto_launch_calendar_events"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->mPouchEmail:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->mPouchEmail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pouch_mode_auto_launch_email"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 106
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivityPouchNotification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pouch_mode_auto_launch_email"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method
