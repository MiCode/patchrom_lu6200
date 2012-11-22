.class public Lcom/android/settings_ex/SystemsMenuSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "SystemsMenuSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private needsDockSettings()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/SystemsMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f060040

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SystemsMenuSettings;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/settings_ex/SystemsMenuSettings;->needsDockSettings()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/SystemsMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "rootPref"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SystemsMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .local v1, rootPref:Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    const-string v2, "dock_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SystemsMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .local v0, dockPreference:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .end local v0           #dockPreference:Landroid/preference/Preference;
    .end local v1           #rootPref:Landroid/preference/PreferenceScreen;
    :cond_0
    return-void
.end method
