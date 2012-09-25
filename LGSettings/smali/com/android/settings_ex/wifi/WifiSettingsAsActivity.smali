.class public Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;
.super Ljava/lang/Object;
.source "WifiSettingsAsActivity.java"

# interfaces
.implements Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;


# instance fields
.field private mAccessPointCategory:Landroid/preference/PreferenceCategory;

.field private mAddNetworkView:Landroid/view/View;

.field private mEmptyView:Landroid/widget/TextView;

.field private mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

.field private mScanView:Landroid/view/View;

.field private mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddAccessPoint(Landroid/preference/Preference;)V
    .locals 1
    .parameter "accessPoint"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 168
    :cond_0
    return-void
.end method

.method public onAddMessage(I)V
    .locals 1
    .parameter "msgId"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 162
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

    .line 138
    const v0, 0x7f080220

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 142
    const/4 v0, 0x2

    const v1, 0x7f08021e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 146
    const/4 v0, 0x3

    const v1, 0x7f080221

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 149
    return-void
.end method

.method public onGetAccessPoint(I)Landroid/preference/Preference;
    .locals 1
    .parameter "i"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 181
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
    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    .line 174
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitView(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/widget/Switch;)V
    .locals 11
    .parameter "wifiSettings"
    .parameter "actionBarSwitch"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 59
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    .line 60
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    if-eqz v6, :cond_2

    .line 61
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    const v9, 0x7f060057

    invoke-virtual {v6, v9}, Lcom/android/settings_ex/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 63
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    const-string v9, "wifi_access_point"

    invoke-virtual {v6, v9}, Lcom/android/settings_ex/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    .line 66
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    const-string v9, "wifi_notify_networks"

    invoke-virtual {v6, v9}, Lcom/android/settings_ex/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    .line 67
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_0

    .line 68
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v6}, Lcom/android/settings_ex/wifi/WifiSettings;->getContentResolverFromWifiSettings()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v10, "wifi_networks_available_notification_on"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_3

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 71
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v6}, Lcom/android/settings_ex/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x1020004

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mEmptyView:Landroid/widget/TextView;

    .line 72
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v6}, Lcom/android/settings_ex/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 81
    :try_start_0
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v6}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 82
    .local v1, activity:Landroid/app/Activity;
    const v6, 0x10202dd

    invoke-virtual {v1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 83
    .local v5, vg:Landroid/view/ViewGroup;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 85
    const v6, 0x10202de

    invoke-virtual {v1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 86
    const v6, 0x10202df

    invoke-virtual {v1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 87
    const v6, 0x10202e0

    invoke-virtual {v1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 115
    move-object v0, v1

    check-cast v0, Landroid/preference/PreferenceActivity;

    move-object v4, v0

    .line 116
    .local v4, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v6

    if-nez v6, :cond_2

    .line 117
    :cond_1
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 119
    .local v3, padding:I
    if-eqz p2, :cond_2

    .line 120
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p2, v6, v7, v3, v8}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 121
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    const/16 v7, 0x10

    const/16 v8, 0x10

    invoke-virtual {v6, v7, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 123
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    const/16 v10, 0x15

    invoke-direct {v7, v8, v9, v10}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v6, p2, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v1           #activity:Landroid/app/Activity;
    .end local v3           #padding:I
    .end local v4           #preferenceActivity:Landroid/preference/PreferenceActivity;
    .end local v5           #vg:Landroid/view/ViewGroup;
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v6, v8

    .line 68
    goto/16 :goto_0

    .line 129
    :catch_0
    move-exception v2

    .line 130
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onPrefereceClicked(Landroid/preference/Preference;)V
    .locals 4
    .parameter "preference"

    .prologue
    .line 192
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    if-nez v1, :cond_1

    .line 201
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 195
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, key:Ljava/lang/String;
    const-string v1, "wifi_notify_networks"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->getContentResolverFromWifiSettings()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_networks_available_notification_on"

    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onRemoveAllAccessPoint()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 188
    :cond_0
    return-void
.end method

.method public onWifiEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 205
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mScanView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mAddNetworkView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 206
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mScanView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 207
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mAddNetworkView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 210
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 211
    if-nez p1, :cond_1

    .line 212
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/WifiSettings;->getContentResolverFromWifiSettings()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_networks_available_notification_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public updateProgressUi(Z)V
    .locals 1
    .parameter "start"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    instance-of v0, v0, Lcom/android/settings_ex/wifi/WifiProgressCategory;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    check-cast v0, Lcom/android/settings_ex/wifi/WifiProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/wifi/WifiProgressCategory;->setProgress(Z)V

    .line 224
    :cond_0
    return-void
.end method
