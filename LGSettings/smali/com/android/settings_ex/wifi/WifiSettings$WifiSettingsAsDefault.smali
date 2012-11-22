.class public Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAsDefault;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiSettingsAsDefault"
.end annotation


# instance fields
.field private mEmptyView:Landroid/widget/TextView;

.field private mInXlSetupWizard:Z

.field private mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .parameter "isInXlSetupWizard"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAsDefault;->mInXlSetupWizard:Z

    return-void
.end method


# virtual methods
.method public onAddAccessPoint(Landroid/preference/Preference;)V
    .locals 1
    .parameter "accessPoint"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAsDefault;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAsDefault;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 217
    :cond_0
    return-void
.end method

.method public onAddMessage(I)V
    .locals 1
    .parameter "msgId"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAsDefault;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAsDefault;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAsDefault;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAsDefault;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 212
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;Z)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"
    .parameter "wifiIsEnabled"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAsDefault;->mInXlSetupWizard:Z

    if-nez v0, :cond_0

    const v0, 0x7f080220

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 199
    const/4 v0, 0x2

    const v1, 0x7f08021e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 202
    const/4 v0, 0x3

    const v1, 0x7f080221

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 206
    :cond_0
    return-void
.end method

.method public onGetAccessPoint(I)Landroid/preference/Preference;
    .locals 1
    .parameter "i"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAsDefault;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAsDefault;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 229
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
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAsDefault;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAsDefault;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 223
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitView(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/widget/Switch;)V
    .locals 2
    .parameter "wifiSettings"
    .parameter "actionBarSwitch"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAsDefault;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAsDefault;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAsDefault;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAsDefault;->mEmptyView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAsDefault;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAsDefault;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 190
    :cond_0
    return-void
.end method

.method public onPrefereceClicked(Landroid/preference/Preference;)V
    .locals 0
    .parameter "preference"

    .prologue
    .line 239
    return-void
.end method

.method public onRemoveAllAccessPoint()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAsDefault;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAsDefault;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 235
    :cond_0
    return-void
.end method

.method public onWifiEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 243
    return-void
.end method
