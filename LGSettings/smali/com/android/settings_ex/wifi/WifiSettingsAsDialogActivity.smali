.class public Lcom/android/settings_ex/wifi/WifiSettingsAsDialogActivity;
.super Ljava/lang/Object;
.source "WifiSettingsAsDialogActivity.java"

# interfaces
.implements Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;


# instance fields
.field private mAccessPointCategory:Landroid/preference/PreferenceCategory;

.field private mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddAccessPoint(Landroid/preference/Preference;)V
    .locals 1
    .parameter "accessPoint"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsDialogActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsDialogActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public onAddMessage(I)V
    .locals 0
    .parameter "msgId"

    .prologue
    .line 49
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;Z)V
    .locals 0
    .parameter "menu"
    .parameter "inflater"
    .parameter "wifiIsEnabled"

    .prologue
    .line 45
    return-void
.end method

.method public onGetAccessPoint(I)Landroid/preference/Preference;
    .locals 1
    .parameter "i"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsDialogActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsDialogActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    goto :goto_0
.end method

.method public onGetAccessPointCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsDialogActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsDialogActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitView(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/widget/Switch;)V
    .locals 3
    .parameter "wifiSettings"
    .parameter "actionBarSwitch"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsDialogActivity;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsDialogActivity;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsDialogActivity;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    const v2, 0x7f060057

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/wifi/WifiSettings;->addPreferencesFromResource(I)V

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsDialogActivity;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    const-string v2, "wifi_access_point"

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsDialogActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsDialogActivity;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    const-string v2, "wifi_notify_networks"

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .local v0, notifyOpenNetworks:Landroid/preference/CheckBoxPreference;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsDialogActivity;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 41
    .end local v0           #notifyOpenNetworks:Landroid/preference/CheckBoxPreference;
    :cond_0
    return-void
.end method

.method public onPrefereceClicked(Landroid/preference/Preference;)V
    .locals 0
    .parameter "preference"

    .prologue
    .line 79
    return-void
.end method

.method public onRemoveAllAccessPoint()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsDialogActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsDialogActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    :cond_0
    return-void
.end method

.method public onWifiEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 83
    return-void
.end method

.method public updateProgressUi(Z)V
    .locals 1
    .parameter "start"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsDialogActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    instance-of v0, v0, Lcom/android/settings_ex/wifi/WifiProgressCategory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsDialogActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    check-cast v0, Lcom/android/settings_ex/wifi/WifiProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/wifi/WifiProgressCategory;->setProgress(Z)V

    :cond_0
    return-void
.end method
