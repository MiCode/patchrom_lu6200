.class public Lcom/android/settings_ex/lge/DeviceInfoLgeNetwork;
.super Lcom/android/settings_ex/deviceinfo/Status;
.source "DeviceInfoLgeNetwork.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/android/settings_ex/deviceinfo/Status;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f080348

    invoke-super {p0, v0}, Lcom/android/settings_ex/deviceinfo/Status;->setTitle(I)V

    .line 31
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Lcom/android/settings_ex/deviceinfo/Status;->onPause()V

    .line 46
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Lcom/android/settings_ex/deviceinfo/Status;->onResume()V

    .line 38
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/DeviceInfoLgeNetwork;->removeUnnecessaryPreference()V

    .line 39
    return-void
.end method

.method protected removeUnnecessaryPreference()V
    .locals 8

    .prologue
    .line 53
    const/16 v6, 0x1b

    new-array v2, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "button_aboutphone_msim_status"

    aput-object v7, v2, v6

    const/4 v6, 0x1

    const-string v7, "battery_status"

    aput-object v7, v2, v6

    const/4 v6, 0x2

    const-string v7, "battery_level"

    aput-object v7, v2, v6

    const/4 v6, 0x3

    const-string v7, "number"

    aput-object v7, v2, v6

    const/4 v6, 0x4

    const-string v7, "min_number"

    aput-object v7, v2, v6

    const/4 v6, 0x5

    const-string v7, "prl_version"

    aput-object v7, v2, v6

    const/4 v6, 0x6

    const-string v7, "meid_number"

    aput-object v7, v2, v6

    const/4 v6, 0x7

    const-string v7, "imei"

    aput-object v7, v2, v6

    const/16 v6, 0x8

    const-string v7, "imei_sv"

    aput-object v7, v2, v6

    const/16 v6, 0x9

    const-string v7, "imei_svn"

    aput-object v7, v2, v6

    const/16 v6, 0xa

    const-string v7, "imei_svn_gsm"

    aput-object v7, v2, v6

    const/16 v6, 0xb

    const-string v7, "wimax_mac_address"

    aput-object v7, v2, v6

    const/16 v6, 0xc

    const-string v7, "wifi_mac_address"

    aput-object v7, v2, v6

    const/16 v6, 0xd

    const-string v7, "bt_address"

    aput-object v7, v2, v6

    const/16 v6, 0xe

    const-string v7, "up_time"

    aput-object v7, v2, v6

    const/16 v6, 0xf

    const-string v7, "serial_number"

    aput-object v7, v2, v6

    const/16 v6, 0x10

    const-string v7, "wifi_ip_address"

    aput-object v7, v2, v6

    const/16 v6, 0x11

    const-string v7, "battery_use"

    aput-object v7, v2, v6

    const/16 v6, 0x12

    const-string v7, "life_time_call"

    aput-object v7, v2, v6

    const/16 v6, 0x13

    const-string v7, "warranty_date_code"

    aput-object v7, v2, v6

    const/16 v6, 0x14

    const-string v7, "signal_strength"

    aput-object v7, v2, v6

    const/16 v6, 0x15

    const-string v7, "network_type"

    aput-object v7, v2, v6

    const/16 v6, 0x16

    const-string v7, "esn_number"

    aput-object v7, v2, v6

    const/16 v6, 0x17

    const-string v7, "icc_id"

    aput-object v7, v2, v6

    const/16 v6, 0x18

    const-string v7, "warranty_date_code"

    aput-object v7, v2, v6

    const/16 v6, 0x19

    const-string v7, "life_time_call"

    aput-object v7, v2, v6

    const/16 v6, 0x1a

    const-string v7, "eri_version"

    aput-object v7, v2, v6

    .line 84
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

    .line 86
    .local v5, string:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/lge/DeviceInfoLgeNetwork;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 87
    .local v4, removablePref:Landroid/preference/Preference;
    if-eqz v4, :cond_0

    .line 89
    invoke-super {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 84
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v4           #removablePref:Landroid/preference/Preference;
    .end local v5           #string:Ljava/lang/String;
    :cond_1
    return-void
.end method
