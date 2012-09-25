.class public Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "WifiP2pAdvanced.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private ArrayOutofBound:I

.field private ArraySetDefault:I

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mWifiP2pIpAddress:Landroid/preference/Preference;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiP2pTimeoutPreference:Landroid/preference/ListPreference;

.field private wifip2pIpAddressPref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->mWifiP2pIpAddress:Landroid/preference/Preference;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->ArrayOutofBound:I

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->ArraySetDefault:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->wifip2pIpAddressPref:Landroid/preference/Preference;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v3, 0x7f060052

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->addPreferencesFromResource(I)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f080b9d

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(I)V

    .line 66
    const-string v3, "wifi_p2p_timeout"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->mWifiP2pTimeoutPreference:Landroid/preference/ListPreference;

    .line 70
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->mWifiP2pTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifidirect_time"

    const v6, 0xdbba0

    invoke-static {v4, v5, v6}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, entry:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->mWifiP2pTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->mWifiP2pTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 80
    .local v1, index:I
    iget v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->ArrayOutofBound:I

    if-ne v1, v3, :cond_0

    .line 81
    iget v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->ArraySetDefault:I

    .line 84
    :cond_0
    if-ne v1, v8, :cond_2

    .line 85
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->mWifiP2pTimeoutPreference:Landroid/preference/ListPreference;

    const v4, 0x7f080ba0

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 91
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->mWifiP2pTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 94
    const-string v3, "wifip2p"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 95
    const-string v3, "wifi_p2p_ipaddress"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->wifip2pIpAddressPref:Landroid/preference/Preference;

    .line 97
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v3, :cond_1

    .line 98
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 101
    :cond_1
    const-string v3, "wifi_p2p_ipaddress"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->mWifiP2pIpAddress:Landroid/preference/Preference;

    .line 103
    return-void

    .line 87
    :cond_2
    aget-object v3, v0, v1

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 88
    .local v2, timeValue:I
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->mWifiP2pTimeoutPreference:Landroid/preference/ListPreference;

    const v4, 0x7f080b9f

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 107
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, key:Ljava/lang/String;
    const-string v8, "wifi_p2p_timeout"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v6, p2

    .line 110
    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 114
    .local v5, value:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "wifidirect_time"

    invoke-static {v6, v8, v5}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 118
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const-string v9, "updated_WIFIDIRECT_TIME"

    new-instance v10, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced$1;

    invoke-direct {v10, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced$1;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;)V

    invoke-virtual {v6, v8, v9, v10}, Landroid/net/wifi/p2p/WifiP2pManager;->sendCustomStringCommand(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$StringResponseListener;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0900a1

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, entry:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->mWifiP2pTimeoutPreference:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 130
    .local v2, index:I
    if-ne v2, v11, :cond_1

    .line 131
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->mWifiP2pTimeoutPreference:Landroid/preference/ListPreference;

    const v8, 0x7f080ba0

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .end local v1           #entry:[Ljava/lang/String;
    .end local v2           #index:I
    :goto_0
    move v6, v7

    .line 142
    .end local v5           #value:I
    :cond_0
    return v6

    .line 133
    .restart local v1       #entry:[Ljava/lang/String;
    .restart local v2       #index:I
    .restart local v5       #value:I
    :cond_1
    aget-object v6, v1, v2

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 134
    .local v4, timeValue:I
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->mWifiP2pTimeoutPreference:Landroid/preference/ListPreference;

    const v8, 0x7f080b9f

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    .end local v1           #entry:[Ljava/lang/String;
    .end local v2           #index:I
    .end local v4           #timeValue:I
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v6, "WifiP2pAdvanced"

    const-string v8, "could not persist screen timeout setting"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 148
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 149
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->mWifiP2pIpAddress:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const-string v2, "get_my_ipaddr"

    new-instance v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced$2;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->sendCustomStringCommand(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$StringResponseListener;)V

    .line 166
    :cond_0
    return-void
.end method
