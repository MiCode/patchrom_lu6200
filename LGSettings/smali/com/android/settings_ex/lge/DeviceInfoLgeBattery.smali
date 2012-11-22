.class public Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DeviceInfoLgeBattery.java"


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings_ex/lge/DeviceInfoLgeBattery$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/lge/DeviceInfoLgeBattery$1;-><init>(Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;)V

    iput-object v0, p0, Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f060015

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;->addPreferencesFromResource(I)V

    const-string v0, "battery_status"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;->mBatteryStatus:Landroid/preference/Preference;

    .line 64
    const-string v0, "battery_level"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;->mBatteryLevel:Landroid/preference/Preference;

    .line 65
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .local v0, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;->removeUnnecessaryPreference()V

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    return-void
.end method

.method protected removeUnnecessaryPreference()V
    .locals 8

    .prologue
    .line 110
    const/16 v6, 0x1f

    new-array v2, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "button_aboutphone_msim_status"

    aput-object v7, v2, v6

    const/4 v6, 0x1

    const-string v7, "number"

    aput-object v7, v2, v6

    const/4 v6, 0x2

    const-string v7, "min_number"

    aput-object v7, v2, v6

    const/4 v6, 0x3

    const-string v7, "prl_version"

    aput-object v7, v2, v6

    const/4 v6, 0x4

    const-string v7, "meid_number"

    aput-object v7, v2, v6

    const/4 v6, 0x5

    const-string v7, "imei"

    aput-object v7, v2, v6

    const/4 v6, 0x6

    const-string v7, "imei_sv"

    aput-object v7, v2, v6

    const/4 v6, 0x7

    const-string v7, "imei_svn"

    aput-object v7, v2, v6

    const/16 v6, 0x8

    const-string v7, "imei_svn_gsm"

    aput-object v7, v2, v6

    const/16 v6, 0x9

    const-string v7, "operator_name"

    aput-object v7, v2, v6

    const/16 v6, 0xa

    const-string v7, "signal_strength"

    aput-object v7, v2, v6

    const/16 v6, 0xb

    const-string v7, "network_type"

    aput-object v7, v2, v6

    const/16 v6, 0xc

    const-string v7, "service_state"

    aput-object v7, v2, v6

    const/16 v6, 0xd

    const-string v7, "roaming_state"

    aput-object v7, v2, v6

    const/16 v6, 0xe

    const-string v7, "data_state"

    aput-object v7, v2, v6

    const/16 v6, 0xf

    const-string v7, "wimax_mac_address"

    aput-object v7, v2, v6

    const/16 v6, 0x10

    const-string v7, "wifi_mac_address"

    aput-object v7, v2, v6

    const/16 v6, 0x11

    const-string v7, "bt_address"

    aput-object v7, v2, v6

    const/16 v6, 0x12

    const-string v7, "esn_number"

    aput-object v7, v2, v6

    const/16 v6, 0x13

    const-string v7, "wifi_ip_address"

    aput-object v7, v2, v6

    const/16 v6, 0x14

    const-string v7, "serial_number"

    aput-object v7, v2, v6

    const/16 v6, 0x15

    const-string v7, "icc_id"

    aput-object v7, v2, v6

    const/16 v6, 0x16

    const-string v7, "eri_version"

    aput-object v7, v2, v6

    const/16 v6, 0x17

    const-string v7, "ims_registration_status"

    aput-object v7, v2, v6

    const/16 v6, 0x18

    const-string v7, "life_time_call"

    aput-object v7, v2, v6

    const/16 v6, 0x19

    const-string v7, "warranty_date_code"

    aput-object v7, v2, v6

    const/16 v6, 0x1a

    const-string v7, "network_type_strength"

    aput-object v7, v2, v6

    const/16 v6, 0x1b

    const-string v7, "meid_hexa"

    aput-object v7, v2, v6

    const/16 v6, 0x1c

    const-string v7, "meid_decimal"

    aput-object v7, v2, v6

    const/16 v6, 0x1d

    const-string v7, "channel"

    aput-object v7, v2, v6

    const/16 v6, 0x1e

    const-string v7, "sid"

    aput-object v7, v2, v6

    .line 146
    .local v2, keyStrings:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v5, v0, v1

    .local v5, string:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .local v4, removablePref:Landroid/preference/Preference;
    if-eqz v4, :cond_0

    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4           #removablePref:Landroid/preference/Preference;
    .end local v5           #string:Ljava/lang/String;
    :cond_1
    return-void
.end method
