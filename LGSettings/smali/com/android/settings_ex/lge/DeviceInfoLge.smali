.class public Lcom/android/settings_ex/lge/DeviceInfoLge;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DeviceInfoLge.java"


# instance fields
.field private mAboutPhonePreference:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "preferenceGroup"
    .parameter "preference"
    .parameter "property"

    .prologue
    .line 98
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/lge/DeviceInfoLge;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "DeviceInfoLge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' missing and no \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' preference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x1

    .line 45
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    .line 48
    .local v1, activePhoneType:I
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v3, 0x7f060012

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/lge/DeviceInfoLge;->addPreferencesFromResource(I)V

    .line 52
    const-string v3, "phoneidentity"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/lge/DeviceInfoLge;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/lge/DeviceInfoLge;->mAboutPhonePreference:Landroid/preference/Preference;

    .line 61
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/DeviceInfoLge;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "safetylegal"

    const-string v5, "ro.url.safetylegal"

    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings_ex/lge/DeviceInfoLge;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v3, 0x2

    if-eq v3, v1, :cond_0

    .line 65
    iget-object v3, p0, Lcom/android/settings_ex/lge/DeviceInfoLge;->mAboutPhonePreference:Landroid/preference/Preference;

    const v4, 0x7f08030b

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/lge/DeviceInfoLge;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 75
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/DeviceInfoLge;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 77
    .local v0, act:Landroid/app/Activity;
    const-string v3, "container"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/lge/DeviceInfoLge;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 78
    .local v2, parentPreference:Landroid/preference/PreferenceGroup;
    const-string v3, "terms"

    invoke-static {v0, v2, v3, v6}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 80
    const-string v3, "license"

    invoke-static {v0, v2, v3, v6}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 82
    const-string v3, "copyright"

    invoke-static {v0, v2, v3, v6}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 84
    const-string v3, "team"

    invoke-static {v0, v2, v3, v6}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 88
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/DeviceInfoLge;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 89
    const-string v3, "system_update_settings"

    invoke-static {v0, v2, v3, v6}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 92
    const-string v3, "contributors"

    invoke-static {v0, v2, v3, v6}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 94
    return-void

    .line 68
    .end local v0           #act:Landroid/app/Activity;
    .end local v2           #parentPreference:Landroid/preference/PreferenceGroup;
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/lge/DeviceInfoLge;->mAboutPhonePreference:Landroid/preference/Preference;

    const v4, 0x7f080314

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/lge/DeviceInfoLge;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
