.class public Lcom/android/settings_ex/deviceinfo/AutorunSwitch;
.super Landroid/preference/PreferenceActivity;
.source "AutorunSwitch.java"


# instance fields
.field private mAutorunEnable:Landroid/preference/CheckBoxPreference;


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
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 28
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/AutorunSwitch;->addPreferencesFromResource(I)V

    .line 32
    const-string v0, "autorun_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/AutorunSwitch;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/AutorunSwitch;->mAutorunEnable:Landroid/preference/CheckBoxPreference;

    .line 33
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/AutorunSwitch;->mAutorunEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 35
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/AutorunSwitch;->mAutorunEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/AutorunSwitch;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "autorun_switch"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 38
    return-void

    :cond_0
    move v0, v2

    .line 35
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 42
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/AutorunSwitch;->mAutorunEnable:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_1

    .line 43
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/AutorunSwitch;->mAutorunEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 44
    .local v0, value:Z
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/AutorunSwitch;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "autorun_switch"

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 46
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.server.autorun_enable_changed"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/AutorunSwitch;->sendBroadcast(Landroid/content/Intent;)V

    .line 50
    .end local v0           #value:Z
    :goto_1
    return v2

    .line 44
    .restart local v0       #value:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 50
    .end local v0           #value:Z
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_1
.end method
