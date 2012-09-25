.class public Lcom/android/settings_ex/lge/DeviceInfoLgePhoneIdentity;
.super Lcom/android/settings_ex/deviceinfo/Status;
.source "DeviceInfoLgePhoneIdentity.java"


# instance fields
.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/lge/DeviceInfoLgePhoneIdentity;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/android/settings_ex/deviceinfo/Status;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v2, 0x7f080311

    invoke-super {p0, v2}, Lcom/android/settings_ex/deviceinfo/Status;->setTitle(I)V

    .line 38
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/lge/DeviceInfoLgePhoneIdentity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 40
    new-instance v1, Landroid/preference/Preference;

    const/4 v2, 0x0

    const v3, 0x101008d

    invoke-direct {v1, p0, v2, v3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    .local v1, prefModelNumber:Landroid/preference/Preference;
    const v2, 0x7f08032a

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 43
    :try_start_0
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    invoke-super {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 50
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/DeviceInfoLgePhoneIdentity;->removeUnnecessaryPreference()V

    .line 76
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/RuntimeException;
    const v2, 0x7f080056

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Lcom/android/settings_ex/deviceinfo/Status;->onPause()V

    .line 91
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Lcom/android/settings_ex/deviceinfo/Status;->onResume()V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/DeviceInfoLgePhoneIdentity;->removeUnnecessaryPreference()V

    .line 84
    return-void
.end method

.method protected removeUnnecessaryPreference()V
    .locals 14

    .prologue
    .line 98
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    .line 100
    .local v8, nRadioType:I
    const/16 v11, 0x17

    new-array v5, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "button_aboutphone_msim_status"

    aput-object v12, v5, v11

    const/4 v11, 0x1

    const-string v12, "battery_status"

    aput-object v12, v5, v11

    const/4 v11, 0x2

    const-string v12, "battery_level"

    aput-object v12, v5, v11

    const/4 v11, 0x3

    const-string v12, "operator_name"

    aput-object v12, v5, v11

    const/4 v11, 0x4

    const-string v12, "signal_strength"

    aput-object v12, v5, v11

    const/4 v11, 0x5

    const-string v12, "network_type"

    aput-object v12, v5, v11

    const/4 v11, 0x6

    const-string v12, "network_type_strength"

    aput-object v12, v5, v11

    const/4 v11, 0x7

    const-string v12, "service_state"

    aput-object v12, v5, v11

    const/16 v11, 0x8

    const-string v12, "roaming_state"

    aput-object v12, v5, v11

    const/16 v11, 0x9

    const-string v12, "data_state"

    aput-object v12, v5, v11

    const/16 v11, 0xa

    const-string v12, "eri_version"

    aput-object v12, v5, v11

    const/16 v11, 0xb

    const-string v12, "meid_number"

    aput-object v12, v5, v11

    const/16 v11, 0xc

    const-string v12, "meid_decimal"

    aput-object v12, v5, v11

    const/16 v11, 0xd

    const-string v12, "imei"

    aput-object v12, v5, v11

    const/16 v11, 0xe

    const-string v12, "imei_sv"

    aput-object v12, v5, v11

    const/16 v11, 0xf

    const-string v12, "icc_id"

    aput-object v12, v5, v11

    const/16 v11, 0x10

    const-string v12, "wifi_ip_address"

    aput-object v12, v5, v11

    const/16 v11, 0x11

    const-string v12, "wifi_mac_address"

    aput-object v12, v5, v11

    const/16 v11, 0x12

    const-string v12, "bt_address"

    aput-object v12, v5, v11

    const/16 v11, 0x13

    const-string v12, "up_time"

    aput-object v12, v5, v11

    const/16 v11, 0x14

    const-string v12, "battery_use"

    aput-object v12, v5, v11

    const/16 v11, 0x15

    const-string v12, "device_model"

    aput-object v12, v5, v11

    const/16 v11, 0x16

    const-string v12, "imei_svn"

    aput-object v12, v5, v11

    .line 126
    .local v5, keyStrings_CDMA:[Ljava/lang/String;
    const/16 v11, 0x1a

    new-array v3, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "button_aboutphone_msim_status"

    aput-object v12, v3, v11

    const/4 v11, 0x1

    const-string v12, "battery_status"

    aput-object v12, v3, v11

    const/4 v11, 0x2

    const-string v12, "battery_level"

    aput-object v12, v3, v11

    const/4 v11, 0x3

    const-string v12, "operator_name"

    aput-object v12, v3, v11

    const/4 v11, 0x4

    const-string v12, "signal_strength"

    aput-object v12, v3, v11

    const/4 v11, 0x5

    const-string v12, "network_type"

    aput-object v12, v3, v11

    const/4 v11, 0x6

    const-string v12, "network_type_strength"

    aput-object v12, v3, v11

    const/4 v11, 0x7

    const-string v12, "service_state"

    aput-object v12, v3, v11

    const/16 v11, 0x8

    const-string v12, "roaming_state"

    aput-object v12, v3, v11

    const/16 v11, 0x9

    const-string v12, "data_state"

    aput-object v12, v3, v11

    const/16 v11, 0xa

    const-string v12, "number"

    aput-object v12, v3, v11

    const/16 v11, 0xb

    const-string v12, "min_number"

    aput-object v12, v3, v11

    const/16 v11, 0xc

    const-string v12, "prl_version"

    aput-object v12, v3, v11

    const/16 v11, 0xd

    const-string v12, "eri_version"

    aput-object v12, v3, v11

    const/16 v11, 0xe

    const-string v12, "esn_number"

    aput-object v12, v3, v11

    const/16 v11, 0xf

    const-string v12, "meid_number"

    aput-object v12, v3, v11

    const/16 v11, 0x10

    const-string v12, "meid_hexa"

    aput-object v12, v3, v11

    const/16 v11, 0x11

    const-string v12, "meid_decimal"

    aput-object v12, v3, v11

    const/16 v11, 0x12

    const-string v12, "icc_id"

    aput-object v12, v3, v11

    const/16 v11, 0x13

    const-string v12, "wifi_ip_address"

    aput-object v12, v3, v11

    const/16 v11, 0x14

    const-string v12, "wifi_mac_address"

    aput-object v12, v3, v11

    const/16 v11, 0x15

    const-string v12, "bt_address"

    aput-object v12, v3, v11

    const/16 v11, 0x16

    const-string v12, "up_time"

    aput-object v12, v3, v11

    const/16 v11, 0x17

    const-string v12, "battery_use"

    aput-object v12, v3, v11

    const/16 v11, 0x18

    const-string v12, "device_model"

    aput-object v12, v3, v11

    const/16 v11, 0x19

    const-string v12, "imei_svn"

    aput-object v12, v3, v11

    .line 156
    .local v3, keyStrings_3G:[Ljava/lang/String;
    const/16 v11, 0x16

    new-array v6, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "button_aboutphone_msim_status"

    aput-object v12, v6, v11

    const/4 v11, 0x1

    const-string v12, "battery_status"

    aput-object v12, v6, v11

    const/4 v11, 0x2

    const-string v12, "battery_level"

    aput-object v12, v6, v11

    const/4 v11, 0x3

    const-string v12, "operator_name"

    aput-object v12, v6, v11

    const/4 v11, 0x4

    const-string v12, "signal_strength"

    aput-object v12, v6, v11

    const/4 v11, 0x5

    const-string v12, "network_type"

    aput-object v12, v6, v11

    const/4 v11, 0x6

    const-string v12, "network_type_strength"

    aput-object v12, v6, v11

    const/4 v11, 0x7

    const-string v12, "service_state"

    aput-object v12, v6, v11

    const/16 v11, 0x8

    const-string v12, "roaming_state"

    aput-object v12, v6, v11

    const/16 v11, 0x9

    const-string v12, "data_state"

    aput-object v12, v6, v11

    const/16 v11, 0xa

    const-string v12, "number"

    aput-object v12, v6, v11

    const/16 v11, 0xb

    const-string v12, "eri_version"

    aput-object v12, v6, v11

    const/16 v11, 0xc

    const-string v12, "meid_number"

    aput-object v12, v6, v11

    const/16 v11, 0xd

    const-string v12, "meid_hexa"

    aput-object v12, v6, v11

    const/16 v11, 0xe

    const-string v12, "meid_decimal"

    aput-object v12, v6, v11

    const/16 v11, 0xf

    const-string v12, "wifi_ip_address"

    aput-object v12, v6, v11

    const/16 v11, 0x10

    const-string v12, "wifi_mac_address"

    aput-object v12, v6, v11

    const/16 v11, 0x11

    const-string v12, "bt_address"

    aput-object v12, v6, v11

    const/16 v11, 0x12

    const-string v12, "up_time"

    aput-object v12, v6, v11

    const/16 v11, 0x13

    const-string v12, "battery_use"

    aput-object v12, v6, v11

    const/16 v11, 0x14

    const-string v12, "device_model"

    aput-object v12, v6, v11

    const/16 v11, 0x15

    const-string v12, "imei_svn"

    aput-object v12, v6, v11

    .line 182
    .local v6, keyStrings_CDMA_LTE:[Ljava/lang/String;
    const/16 v11, 0x17

    new-array v4, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "button_aboutphone_msim_status"

    aput-object v12, v4, v11

    const/4 v11, 0x1

    const-string v12, "battery_status"

    aput-object v12, v4, v11

    const/4 v11, 0x2

    const-string v12, "battery_level"

    aput-object v12, v4, v11

    const/4 v11, 0x3

    const-string v12, "operator_name"

    aput-object v12, v4, v11

    const/4 v11, 0x4

    const-string v12, "signal_strength"

    aput-object v12, v4, v11

    const/4 v11, 0x5

    const-string v12, "network_type"

    aput-object v12, v4, v11

    const/4 v11, 0x6

    const-string v12, "network_type_strength"

    aput-object v12, v4, v11

    const/4 v11, 0x7

    const-string v12, "service_state"

    aput-object v12, v4, v11

    const/16 v11, 0x8

    const-string v12, "data_state"

    aput-object v12, v4, v11

    const/16 v11, 0x9

    const-string v12, "number"

    aput-object v12, v4, v11

    const/16 v11, 0xa

    const-string v12, "min_number"

    aput-object v12, v4, v11

    const/16 v11, 0xb

    const-string v12, "prl_version"

    aput-object v12, v4, v11

    const/16 v11, 0xc

    const-string v12, "eri_version"

    aput-object v12, v4, v11

    const/16 v11, 0xd

    const-string v12, "esn_number"

    aput-object v12, v4, v11

    const/16 v11, 0xe

    const-string v12, "meid_number"

    aput-object v12, v4, v11

    const/16 v11, 0xf

    const-string v12, "meid_hexa"

    aput-object v12, v4, v11

    const/16 v11, 0x10

    const-string v12, "wifi_ip_address"

    aput-object v12, v4, v11

    const/16 v11, 0x11

    const-string v12, "wifi_mac_address"

    aput-object v12, v4, v11

    const/16 v11, 0x12

    const-string v12, "bt_address"

    aput-object v12, v4, v11

    const/16 v11, 0x13

    const-string v12, "up_time"

    aput-object v12, v4, v11

    const/16 v11, 0x14

    const-string v12, "battery_use"

    aput-object v12, v4, v11

    const/16 v11, 0x15

    const-string v12, "device_model"

    aput-object v12, v4, v11

    const/16 v11, 0x16

    const-string v12, "imei_svn"

    aput-object v12, v4, v11

    .line 210
    .local v4, keyStrings_3G_LTE:[Ljava/lang/String;
    const/16 v11, 0xd

    if-ne v8, v11, :cond_2

    .line 211
    const-string v11, "DeviceInfoLgePhoneIdentity"

    const-string v12, "LTE !!!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v11, p0, Lcom/android/settings_ex/lge/DeviceInfoLgePhoneIdentity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "CDMA"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 213
    array-length v11, v6

    new-array v2, v11, [Ljava/lang/String;

    .line 214
    .local v2, keyStrings:[Ljava/lang/String;
    const/4 v11, 0x0

    const/4 v12, 0x0

    array-length v13, v6

    invoke-static {v6, v11, v2, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    const-string v11, "DeviceInfoLgePhoneIdentity"

    const-string v12, "CDMA & LTE,   3G & CDMA & LTE  !!!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :goto_0
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v7, :cond_4

    aget-object v10, v0, v1

    .line 241
    .local v10, string:Ljava/lang/String;
    invoke-virtual {p0, v10}, Lcom/android/settings_ex/lge/DeviceInfoLgePhoneIdentity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 242
    .local v9, removablePref:Landroid/preference/Preference;
    if-eqz v9, :cond_0

    .line 244
    invoke-super {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 239
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 218
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #keyStrings:[Ljava/lang/String;
    .end local v7           #len$:I
    .end local v9           #removablePref:Landroid/preference/Preference;
    .end local v10           #string:Ljava/lang/String;
    :cond_1
    array-length v11, v4

    new-array v2, v11, [Ljava/lang/String;

    .line 219
    .restart local v2       #keyStrings:[Ljava/lang/String;
    const/4 v11, 0x0

    const/4 v12, 0x0

    array-length v13, v4

    invoke-static {v4, v11, v2, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    const-string v11, "DeviceInfoLgePhoneIdentity"

    const-string v12, "3G & LTE,   LTE  !!!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 224
    .end local v2           #keyStrings:[Ljava/lang/String;
    :cond_2
    const-string v11, "DeviceInfoLgePhoneIdentity"

    const-string v12, "not include LTE, !!!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v11, p0, Lcom/android/settings_ex/lge/DeviceInfoLgePhoneIdentity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "CDMA"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 226
    array-length v11, v5

    new-array v2, v11, [Ljava/lang/String;

    .line 227
    .restart local v2       #keyStrings:[Ljava/lang/String;
    const/4 v11, 0x0

    const/4 v12, 0x0

    array-length v13, v5

    invoke-static {v5, v11, v2, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    const-string v11, "DeviceInfoLgePhoneIdentity"

    const-string v12, "CDMA only !!!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    .end local v2           #keyStrings:[Ljava/lang/String;
    :cond_3
    array-length v11, v3

    new-array v2, v11, [Ljava/lang/String;

    .line 232
    .restart local v2       #keyStrings:[Ljava/lang/String;
    const/4 v11, 0x0

    const/4 v12, 0x0

    array-length v13, v3

    invoke-static {v3, v11, v2, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    const-string v11, "DeviceInfoLgePhoneIdentity"

    const-string v12, "3G only !!!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 247
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v7       #len$:I
    :cond_4
    return-void
.end method
