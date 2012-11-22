.class public Lcom/android/settings_ex/powersave/PowerSaverTips;
.super Landroid/preference/PreferenceActivity;
.source "PowerSaverTips.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f060028

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/powersave/PowerSaverTips;->addPreferencesFromResource(I)V

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "l_dcm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    const-string v3, "power_save_front_light"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/powersave/PowerSaverTips;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .local v1, p:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaverTips;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .local v2, ps:Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .end local v1           #p:Landroid/preference/PreferenceCategory;
    .end local v2           #ps:Landroid/preference/PreferenceScreen;
    :cond_0
    const-string v3, "ro.device.hapticfeedback"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, hapticfeedback:Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    const-string v3, "power_save_touch"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/powersave/PowerSaverTips;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .restart local v1       #p:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaverTips;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .restart local v2       #ps:Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .end local v1           #p:Landroid/preference/PreferenceCategory;
    .end local v2           #ps:Landroid/preference/PreferenceScreen;
    :cond_1
    invoke-static {}, Lcom/android/settings_ex/lge/OverlayUtils;->isX3Model()Z

    move-result v3

    if-nez v3, :cond_2

    .line 56
    const-string v3, "power_save_tip_eco_mode"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/powersave/PowerSaverTips;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .restart local v1       #p:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaverTips;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .restart local v2       #ps:Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .end local v1           #p:Landroid/preference/PreferenceCategory;
    .end local v2           #ps:Landroid/preference/PreferenceScreen;
    :cond_2
    return-void
.end method
