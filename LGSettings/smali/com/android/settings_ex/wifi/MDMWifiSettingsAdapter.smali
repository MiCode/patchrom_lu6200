.class public Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;
.super Ljava/lang/Object;
.source "MDMWifiSettingsAdapter.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mInstance:Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "MDMWifiSettingsAdapter"

    sput-object v0, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static getInstance()Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;->mInstance:Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;

    invoke-direct {v0}, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;-><init>()V

    sput-object v0, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;->mInstance:Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;

    .line 36
    :cond_0
    sget-object v0, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;->mInstance:Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;

    return-object v0
.end method

.method private setWiFiEnableMenu(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Landroid/widget/Switch;Landroid/preference/CheckBoxPreference;)V
    .locals 8
    .parameter "who"
    .parameter "resContext"
    .parameter "menuString"
    .parameter "menu"
    .parameter "checkBox"

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f080967

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 55
    sget-object v1, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkReceAction() Component : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Menu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "wifi"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 57
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    const-string v1, "mSwitch"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 58
    if-eqz p4, :cond_1

    .line 59
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 61
    if-eqz v0, :cond_3

    .line 62
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    if-nez v1, :cond_2

    .line 64
    :cond_0
    invoke-virtual {p4, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 105
    :cond_1
    :goto_0
    return-void

    .line 66
    :cond_2
    invoke-virtual {p4, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 69
    :cond_3
    sget-object v1, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v2, "[LGMDM] wifiManager is null"

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p4, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 73
    :cond_4
    sget-object v1, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v2, "[LGMDM] disabllow mode"

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p4, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 77
    :cond_5
    const-string v1, "WifiP2pSettings"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 78
    if-eqz p5, :cond_1

    .line 79
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 80
    sget-object v1, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v2, "[LGMDM] WifiP2pSettings Allow mode"

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p5, v7}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p5, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 84
    :cond_6
    sget-object v1, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v2, "[LGMDM] WifiP2pSettings disabllow mode"

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 86
    invoke-virtual {p5, v6}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 87
    invoke-virtual {p5, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 90
    :cond_7
    const-string v1, "WifiP2pEnabler"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    if-eqz p5, :cond_1

    .line 92
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 93
    sget-object v1, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v2, "[LGMDM] WifiP2pEnabler Allow mode"

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p5, v7}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p5, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 97
    :cond_8
    sget-object v1, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v2, "[LGMDM] WifiP2pEnabler disabllow mode"

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 99
    invoke-virtual {p5, v6}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 100
    invoke-virtual {p5, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public setTetheringEnableMenu(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Landroid/preference/CheckBoxPreference;)Z
    .locals 4
    .parameter "who"
    .parameter "resContext"
    .parameter "menuString"
    .parameter "menu"

    .prologue
    const/4 v0, 0x0

    .line 154
    sget-object v1, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkReceAction() Component : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    if-eqz p4, :cond_0

    if-nez p3, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    const-string v1, "mCheckBox"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowTethering(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 160
    invoke-virtual {p4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 161
    const v1, 0x7f08096b

    invoke-virtual {p4, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 164
    :cond_2
    const-string v1, "mUsbTether"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 165
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowTethering(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowUsb(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 167
    :cond_3
    invoke-virtual {p4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 168
    const v1, 0x7f08096a

    invoke-virtual {p4, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 171
    :cond_4
    const-string v1, "mBTTether"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 172
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowTethering(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowUsb(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 174
    :cond_5
    invoke-virtual {p4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 175
    const v1, 0x7f08096c

    invoke-virtual {p4, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 179
    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setWiFiEnableMenu(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Landroid/preference/CheckBoxPreference;)V
    .locals 6
    .parameter "who"
    .parameter "resContext"
    .parameter "menuString"
    .parameter "checkBox"

    .prologue
    .line 49
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;->setWiFiEnableMenu(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Landroid/widget/Switch;Landroid/preference/CheckBoxPreference;)V

    goto :goto_0
.end method

.method public setWiFiEnableMenu(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Landroid/widget/Switch;)V
    .locals 6
    .parameter "who"
    .parameter "resContext"
    .parameter "menuString"
    .parameter "menu"

    .prologue
    .line 43
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;->setWiFiEnableMenu(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Landroid/widget/Switch;Landroid/preference/CheckBoxPreference;)V

    goto :goto_0
.end method

.method public setWiFiP2pEnableMenu(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Landroid/preference/CheckBoxPreference;)Z
    .locals 5
    .parameter "who"
    .parameter "resContext"
    .parameter "menuString"
    .parameter "menu"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 109
    sget-object v2, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWiFiP2pEnableMenu() Component : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Menu: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    if-eqz p4, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move v0, v1

    .line 126
    :cond_1
    :goto_0
    return v0

    .line 114
    :cond_2
    const-string v2, "wifiP2p"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    sget-object v1, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v2, "[LGMDM] Allow mode"

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 120
    :cond_3
    sget-object v2, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v3, "[LGMDM] disabllow mode"

    invoke-static {v2, v3}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const v2, 0x7f080967

    invoke-virtual {p4, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 122
    invoke-virtual {p4, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method
