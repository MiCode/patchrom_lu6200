.class public Lcom/android/settings_ex/NumberLocation_DisplaySettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "NumberLocation_DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mNumLocCALLSettings:Landroid/preference/ListPreference;

.field private mNumLocPBSettings:Landroid/preference/ListPreference;

.field private mNumLocSMSSettings:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static isNumlocdispCALLModeOn(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "numlocdisp_call_on"

    invoke-static {v2, v3, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isNumlocdispPBModeOn(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "numlocdisp_pb_on"

    invoke-static {v2, v3, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isNumlocdispSMSModeOn(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "numlocdisp_sms_on"

    invoke-static {v2, v3, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private updatePreferredCALLSummary(I)V
    .locals 4
    .parameter "nValue"

    .prologue
    const/4 v3, 0x1

    .line 149
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f08094d

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const v1, 0x7f08094c

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 151
    .local v0, txts:[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 158
    iget-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocCALLSettings:Landroid/preference/ListPreference;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 160
    :goto_0
    return-void

    .line 154
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocCALLSettings:Landroid/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updatePreferredPBSummary(I)V
    .locals 4
    .parameter "nValue"

    .prologue
    const/4 v3, 0x1

    .line 119
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f08094d

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const v1, 0x7f08094c

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 121
    .local v0, txts:[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 128
    iget-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocPBSettings:Landroid/preference/ListPreference;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 130
    :goto_0
    return-void

    .line 124
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocPBSettings:Landroid/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updatePreferredSMSSummary(I)V
    .locals 4
    .parameter "nValue"

    .prologue
    const/4 v3, 0x1

    .line 134
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f08094d

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const v1, 0x7f08094c

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 136
    .local v0, txts:[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 143
    iget-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocSMSSettings:Landroid/preference/ListPreference;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 145
    :goto_0
    return-void

    .line 139
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocSMSSettings:Landroid/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v1, 0x7f060025

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->addPreferencesFromResource(I)V

    .line 45
    const-string v1, "button_numlocsettings_pb_key"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocPBSettings:Landroid/preference/ListPreference;

    .line 46
    iget-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocPBSettings:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 47
    const-string v1, "button_numlocsettings_sms_key"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocSMSSettings:Landroid/preference/ListPreference;

    .line 48
    iget-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocSMSSettings:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 49
    const-string v1, "button_numlocsettings_call_key"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocCALLSettings:Landroid/preference/ListPreference;

    .line 50
    iget-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocCALLSettings:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 52
    iget-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocPBSettings:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocPBSettings:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->isNumlocdispPBModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 54
    .local v0, bActive:Z
    const-string v1, "ContactDetailActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wqt onCreate  bActive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    if-eqz v0, :cond_3

    .line 57
    iget-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocPBSettings:Landroid/preference/ListPreference;

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 58
    invoke-direct {p0, v5}, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->updatePreferredPBSummary(I)V

    .line 65
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocPBSettings:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 68
    .end local v0           #bActive:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocSMSSettings:Landroid/preference/ListPreference;

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocSMSSettings:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->isNumlocdispSMSModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 70
    .restart local v0       #bActive:Z
    if-eqz v0, :cond_4

    .line 72
    iget-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocSMSSettings:Landroid/preference/ListPreference;

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 73
    invoke-direct {p0, v5}, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->updatePreferredSMSSummary(I)V

    .line 80
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocSMSSettings:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 83
    .end local v0           #bActive:Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocCALLSettings:Landroid/preference/ListPreference;

    if-eqz v1, :cond_2

    .line 84
    iget-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocCALLSettings:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->isNumlocdispCALLModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 85
    .restart local v0       #bActive:Z
    if-eqz v0, :cond_5

    .line 87
    iget-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocCALLSettings:Landroid/preference/ListPreference;

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 88
    invoke-direct {p0, v5}, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->updatePreferredCALLSummary(I)V

    .line 95
    :goto_2
    iget-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocCALLSettings:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 98
    .end local v0           #bActive:Z
    :cond_2
    return-void

    .line 62
    .restart local v0       #bActive:Z
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocPBSettings:Landroid/preference/ListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 63
    invoke-direct {p0, v4}, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->updatePreferredPBSummary(I)V

    goto :goto_0

    .line 77
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocSMSSettings:Landroid/preference/ListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 78
    invoke-direct {p0, v4}, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->updatePreferredSMSSummary(I)V

    goto :goto_1

    .line 92
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocCALLSettings:Landroid/preference/ListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 93
    invoke-direct {p0, v4}, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->updatePreferredCALLSummary(I)V

    goto :goto_2
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 165
    iget-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocPBSettings:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocPBSettings:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 168
    .local v0, index:I
    iget-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocPBSettings:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "numlocdisp_pb_on"

    invoke-static {v1, v2, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 169
    invoke-direct {p0, v0}, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->updatePreferredPBSummary(I)V

    .line 183
    .end local v0           #index:I
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 171
    .restart local p2
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocSMSSettings:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocSMSSettings:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 174
    .restart local v0       #index:I
    iget-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocSMSSettings:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "numlocdisp_sms_on"

    invoke-static {v1, v2, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 175
    invoke-direct {p0, v0}, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->updatePreferredSMSSummary(I)V

    goto :goto_0

    .line 177
    .end local v0           #index:I
    .restart local p2
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocCALLSettings:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocCALLSettings:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 180
    .restart local v0       #index:I
    iget-object v1, p0, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->mNumLocCALLSettings:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "numlocdisp_call_on"

    invoke-static {v1, v2, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 181
    invoke-direct {p0, v0}, Lcom/android/settings_ex/NumberLocation_DisplaySettings;->updatePreferredCALLSummary(I)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method
