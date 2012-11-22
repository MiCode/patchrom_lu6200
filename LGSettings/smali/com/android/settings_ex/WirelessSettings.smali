.class public Lcom/android/settings_ex/WirelessSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "WirelessSettings.java"


# instance fields
.field private bluetoothAvailable:Z

.field csActive:Z

.field private mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

.field private final mBTTetheringReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Landroid/preference/CheckBoxPreference;

.field private mDataNetworkSetting:Landroid/preference/PreferenceScreen;

.field private mMobileNetworkSettings:Landroid/preference/PreferenceScreen;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/settings_ex/nfc/LGNfcEnabler;

.field protected mPhone:Landroid/telephony/TelephonyManager;

.field protected mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mWifiP2pEnabler:Lcom/android/settings_ex/wifi/p2p/WifiP2pEnabler;

.field private tm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    const-string v0, "ro.build.product"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "J1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/WirelessSettings;->bluetoothAvailable:Z

    iput-boolean v2, p0, Lcom/android/settings_ex/WirelessSettings;->csActive:Z

    new-instance v0, Lcom/android/settings_ex/WirelessSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/WirelessSettings$2;-><init>(Lcom/android/settings_ex/WirelessSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    new-instance v0, Lcom/android/settings_ex/WirelessSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/WirelessSettings$3;-><init>(Lcom/android/settings_ex/WirelessSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mBTTetheringReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/WirelessSettings;)Landroid/bluetooth/BluetoothPan;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/WirelessSettings;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/WirelessSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/WirelessSettings;->bluetoothAvailable:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/WirelessSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/WirelessSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/WirelessSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/WirelessSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings_ex/WirelessSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/WirelessSettings;->updateState()V

    return-void
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "ifaces"
    .parameter "regexes"

    .prologue
    .line 617
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 618
    .local v4, iface:Ljava/lang/String;
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 619
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 624
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #regex:Ljava/lang/String;
    :goto_2
    return-object v4

    .line 618
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #iface:Ljava/lang/String;
    .restart local v6       #len$:I
    .restart local v7       #regex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 617
    .end local v7           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 624
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    invoke-static {p0}, Lcom/android/settings_ex/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, toggleable:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 19
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 639
    const/4 v5, 0x0

    .line 641
    .local v5, bluetoothTethered:I
    sget-boolean v14, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    if-eqz v14, :cond_1

    invoke-static {}, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    const-string v17, "mBTTether"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v14 .. v18}, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;->setTetheringEnableMenu(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Landroid/preference/CheckBoxPreference;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 645
    :cond_1
    move-object/from16 v2, p2

    .local v2, arr$:[Ljava/lang/String;
    array-length v9, v2

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    move v8, v7

    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .local v8, i$:I
    :goto_1
    if-ge v8, v9, :cond_4

    aget-object v12, v2, v8

    .line 646
    .local v12, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .local v3, arr$:[Ljava/lang/String;
    array-length v10, v3

    .local v10, len$:I
    const/4 v7, 0x0

    .end local v8           #i$:I
    .restart local v7       #i$:I
    :goto_2
    if-ge v7, v10, :cond_3

    aget-object v11, v3, v7

    .line 647
    .local v11, regex:Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 646
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 645
    .end local v11           #regex:Ljava/lang/String;
    :cond_3
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7           #i$:I
    .restart local v8       #i$:I
    goto :goto_1

    .line 650
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v10           #len$:I
    .end local v12           #s:Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    .line 651
    .local v4, bluetoothErrored:Z
    move-object/from16 v2, p3

    .restart local v2       #arr$:[Ljava/lang/String;
    array-length v9, v2

    .restart local v9       #len$:I
    const/4 v7, 0x0

    .end local v8           #i$:I
    .restart local v7       #i$:I
    move v8, v7

    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .restart local v8       #i$:I
    :goto_3
    if-ge v8, v9, :cond_7

    aget-object v12, v2, v8

    .line 652
    .restart local v12       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v10, v3

    .restart local v10       #len$:I
    const/4 v7, 0x0

    .end local v8           #i$:I
    .restart local v7       #i$:I
    :goto_4
    if-ge v7, v10, :cond_6

    aget-object v11, v3, v7

    .line 653
    .restart local v11       #regex:Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    const/4 v4, 0x1

    .line 652
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 651
    .end local v11           #regex:Ljava/lang/String;
    :cond_6
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7           #i$:I
    .restart local v8       #i$:I
    goto :goto_3

    .line 657
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v10           #len$:I
    .end local v12           #s:Ljava/lang/String;
    :cond_7
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 658
    .local v1, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v6

    .line 659
    .local v6, btState:I
    const/16 v14, 0xd

    if-ne v6, v14, :cond_8

    .line 660
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 661
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f080214

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 662
    :cond_8
    const/16 v14, 0xb

    if-ne v6, v14, :cond_9

    .line 663
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 664
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f0800d1

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 665
    :cond_9
    const/16 v14, 0xc

    if-ne v6, v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v14, :cond_d

    .line 666
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 667
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 668
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 669
    const/4 v14, 0x1

    if-le v5, v14, :cond_a

    .line 670
    const v14, 0x7f0803c9

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings_ex/WirelessSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 672
    .local v13, summary:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v14, v13}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 673
    .end local v13           #summary:Ljava/lang/String;
    :cond_a
    const/4 v14, 0x1

    if-ne v5, v14, :cond_b

    .line 674
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f0803c8

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 675
    :cond_b
    if-eqz v4, :cond_c

    .line 676
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f0803cb

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 678
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f0803c7

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 682
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 683
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 684
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f0803ca

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_0
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 627
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, available:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .local v3, tethered:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .local v2, errored:[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/android/settings_ex/WirelessSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 555
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 556
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 558
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 561
    .end local v0           #isChoiceYes:Ljava/lang/Boolean;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 26
    .parameter "savedInstanceState"

    .prologue
    invoke-super/range {p0 .. p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v22, 0x7f06005b

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->addPreferencesFromResource(I)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v9

    .local v9, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .local v8, activity:Landroid/app/Activity;
    if-eqz v9, :cond_0

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-object/from16 v23, v0

    const/16 v24, 0x5

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v9, v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 227
    :cond_0
    sget-boolean v22, Lcom/lge/config/ConfigBuildFlags;->CAPP_NFS:Z

    if-nez v22, :cond_1

    .line 228
    const-string v22, "network_storage_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    if-eqz v22, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    const-string v23, "network_storage_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 234
    :cond_1
    const-string v22, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    .line 236
    const-string v22, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 238
    .local v15, nfc:Landroid/preference/Preference;
    const-string v22, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    .line 240
    .local v10, androidBeam:Landroid/preference/PreferenceScreen;
    const-string v22, "toggle_wifi_p2p"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/CheckBoxPreference;

    .line 242
    .local v21, wifiP2p:Landroid/preference/CheckBoxPreference;
    const-string v22, "wifi_p2p_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceScreen;

    .line 243
    .local v20, wdPref:Landroid/preference/PreferenceScreen;
    new-instance v22, Lcom/android/settings_ex/AirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-direct {v0, v8, v1, v2}, Lcom/android/settings_ex/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

    invoke-static {}, Lcom/android/settings_ex/Utils;->hasFeatureNfcP2P()Z

    move-result v22

    if-nez v22, :cond_2

    invoke-static {}, Lcom/android/settings_ex/Utils;->hasI30NfcSetting()Z

    move-result v22

    if-eqz v22, :cond_11

    .line 247
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 250
    const-string v22, "toggle_nfc_switch"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    const-string v22, "toggle_nfc"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    new-instance v23, Lcom/android/settings_ex/nfc/LGNfcEnabler;

    move-object/from16 v22, v15

    check-cast v22, Lcom/android/settings_ex/nfc/NfcSwitchPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v8, v1}, Lcom/android/settings_ex/nfc/LGNfcEnabler;-><init>(Landroid/content/Context;Lcom/android/settings_ex/nfc/NfcSwitchPreference;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    .line 260
    :goto_0
    const-string v22, "enable_bluetooth_tethering"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    .line 263
    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "airplane_mode_toggleable_radios"

    invoke-static/range {v22 .. v23}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 266
    .local v19, toggleable:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->tm:Landroid/telephony/TelephonyManager;

    .line 269
    if-eqz v19, :cond_3

    const-string v22, "wifi"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 270
    :cond_3
    const-string v22, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    const-string v23, "toggle_airplane"

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 274
    :cond_4
    if-eqz v19, :cond_5

    const-string v22, "bluetooth"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_5

    .line 279
    :cond_5
    if-eqz v19, :cond_6

    const-string v22, "nfc"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 280
    :cond_6
    const-string v22, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    const-string v23, "toggle_airplane"

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 281
    const-string v22, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    const-string v23, "toggle_airplane"

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 285
    :cond_7
    const-string v22, "ro.build.product"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 286
    .local v18, productname:Ljava/lang/String;
    const-string v22, "WirelessSettings"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "bluetoothAvailable="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/WirelessSettings;->bluetoothAvailable:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/WirelessSettings;->bluetoothAvailable:Z

    move/from16 v22, v0

    if-nez v22, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 300
    :goto_1
    invoke-static {v8}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v22, v0

    if-nez v22, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 304
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    .line 308
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    const-string v23, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 312
    :cond_9
    const-string v22, "wifip2p"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 314
    .local v17, p2p:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    const-string v23, "android.hardware.wifi.direct"

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a

    sget-object v22, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v23, "SU660"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_a

    sget-object v22, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v23, "P990"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_a

    sget-object v22, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v23, "P999"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 318
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    const-string v23, "wifi_p2p_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 326
    :goto_2
    const-string v22, "data_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mDataNetworkSetting:Landroid/preference/PreferenceScreen;

    .line 327
    const-string v22, "KT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 328
    .local v5, CARRIER_KT:Z
    const-string v22, "SKT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 329
    .local v6, CARRIER_SKT:Z
    if-eqz v5, :cond_15

    if-eqz v6, :cond_15

    const/4 v7, 0x1

    .local v7, SKT_KT:Z
    :goto_3
    if-nez v6, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mDataNetworkSetting:Landroid/preference/PreferenceScreen;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 347
    :goto_4
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v6, v0, :cond_b

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mDataNetworkSetting:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    const-string v23, "toggle_airplane"

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->setDependency(Ljava/lang/String;)V

    :cond_b
    sget-boolean v22, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v22, :cond_c

    if-eqz v21, :cond_c

    invoke-static {}, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    const-string v25, "wifiP2p"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;->setWiFiP2pEnableMenu(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Landroid/preference/CheckBoxPreference;)Z

    .line 362
    :cond_c
    const-string v22, "proxy_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 363
    .local v14, mGlobalProxy:Landroid/preference/Preference;
    const-string v22, "device_policy"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/admin/DevicePolicyManager;

    .line 366
    .local v13, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 367
    invoke-virtual {v13}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v22

    if-nez v22, :cond_19

    const/16 v22, 0x1

    :goto_5
    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 370
    const-string v22, "connectivity"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/ConnectivityManager;

    .line 373
    .local v11, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v11}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-virtual {v11}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v22

    if-nez v22, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    const-string v23, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 405
    :cond_d
    :goto_6
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMultiSimEnabled()Z

    move-result v22

    if-eqz v22, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    const-string v23, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 413
    :goto_7
    const-string v22, "VZW"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    const-string v23, "mobile_network_settings"

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mMobileNetworkSettings:Landroid/preference/PreferenceScreen;

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mMobileNetworkSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    const v23, 0x7f080824

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 419
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "airplane_mode_on"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 422
    .local v12, isAirplaneMode:I
    if-nez v12, :cond_f

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    const v23, 0x7f080821

    invoke-virtual/range {v22 .. v23}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 425
    :cond_f
    if-eqz v20, :cond_10

    .line 426
    const v22, 0x7f080825

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 430
    :cond_10
    new-instance v22, Lcom/android/settings_ex/WirelessSettings$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/WirelessSettings$1;-><init>(Lcom/android/settings_ex/WirelessSettings;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 445
    const-string v22, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mPhone:Landroid/telephony/TelephonyManager;

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mPhone:Landroid/telephony/TelephonyManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    move-object/from16 v23, v0

    const/16 v24, 0x61

    invoke-virtual/range {v22 .. v24}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 452
    const/16 v22, 0x1

    invoke-static {}, Lcom/android/settings_ex/lge/OverlayUtils;->WifiCallPref_isSupport()Z

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    const-string v23, "button_wifi_calling_key"

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings_ex/lge/OverlayUtils;->WifiCallPref_Init(Landroid/preference/Preference;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    const-string v23, "button_wifi_calling_settings_key"

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings_ex/lge/OverlayUtils;->WifiCallPref_SetValues(Landroid/preference/Preference;)V

    .line 460
    :goto_8
    return-void

    .line 255
    .end local v5           #CARRIER_KT:Z
    .end local v6           #CARRIER_SKT:Z
    .end local v7           #SKT_KT:Z
    .end local v11           #cm:Landroid/net/ConnectivityManager;
    .end local v12           #isAirplaneMode:I
    .end local v13           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v14           #mGlobalProxy:Landroid/preference/Preference;
    .end local v17           #p2p:Landroid/net/wifi/p2p/WifiP2pManager;
    .end local v18           #productname:Ljava/lang/String;
    .end local v19           #toggleable:Ljava/lang/String;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    const-string v23, "toggle_nfc_switch"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    new-instance v23, Lcom/android/settings_ex/nfc/LGNfcEnabler;

    move-object/from16 v22, v15

    check-cast v22, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v8, v1, v10}, Lcom/android/settings_ex/nfc/LGNfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    goto/16 :goto_0

    .line 291
    .restart local v18       #productname:Ljava/lang/String;
    .restart local v19       #toggleable:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    move-object/from16 v22, v0

    if-eqz v22, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v22

    if-eqz v22, :cond_13

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 294
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 321
    .restart local v17       #p2p:Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    new-instance v22, Lcom/android/settings_ex/wifi/p2p/WifiP2pEnabler;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v8, v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mWifiP2pEnabler:Lcom/android/settings_ex/wifi/p2p/WifiP2pEnabler;

    goto/16 :goto_2

    .line 329
    .restart local v5       #CARRIER_KT:Z
    .restart local v6       #CARRIER_SKT:Z
    :cond_15
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 335
    .restart local v7       #SKT_KT:Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->tm:Landroid/telephony/TelephonyManager;

    move-object/from16 v22, v0

    if-eqz v22, :cond_17

    .line 336
    const-string v22, "wire"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "tm.isNetworkRoaming() = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->tm:Landroid/telephony/TelephonyManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->tm:Landroid/telephony/TelephonyManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v22

    if-eqz v22, :cond_18

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mDataNetworkSetting:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 343
    :cond_17
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mDataNetworkSetting:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    const v23, 0x7f0809fc

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_4

    .line 340
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mDataNetworkSetting:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_9

    .line 367
    .restart local v13       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v14       #mGlobalProxy:Landroid/preference/Preference;
    :cond_19
    const/16 v22, 0x0

    goto/16 :goto_5

    .line 379
    .restart local v11       #cm:Landroid/net/ConnectivityManager;
    :cond_1a
    const-string v22, "VZW"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1b

    .line 382
    const-string v22, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 383
    .local v16, p:Landroid/preference/Preference;
    if-eqz v16, :cond_d

    .line 384
    const v22, 0x7f0803ba

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 385
    const v22, 0x7f0807ca

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_6

    .line 392
    .end local v16           #p:Landroid/preference/Preference;
    :cond_1b
    const-string v22, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 393
    .restart local v16       #p:Landroid/preference/Preference;
    invoke-static {v11}, Lcom/android/settings_ex/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v22

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 395
    const/16 v22, 0x1

    const-string v23, "TLS"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1c

    .line 396
    const v22, 0x7f080829

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_6

    .line 397
    :cond_1c
    const/16 v22, 0x1

    const-string v23, "DCM"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    .line 399
    const v22, 0x7f080bc0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 400
    const v22, 0x7f080bc1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_6

    .line 408
    .end local v16           #p:Landroid/preference/Preference;
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    const-string v23, "mobile_network_settings_dualsim"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 456
    .restart local v12       #isAirplaneMode:I
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    const-string v23, "button_wifi_calling_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    const-string v23, "button_wifi_calling_settings_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_8
.end method

.method public onPause()V
    .locals 6

    .prologue
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

    invoke-virtual {v1}, Lcom/android/settings_ex/AirplaneModeEnabler;->pause()V

    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    invoke-virtual {v1}, Lcom/android/settings_ex/nfc/LGNfcEnabler;->pause()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiP2pEnabler:Lcom/android/settings_ex/wifi/p2p/WifiP2pEnabler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiP2pEnabler:Lcom/android/settings_ex/wifi/p2p/WifiP2pEnabler;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pEnabler;->pause()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mBTTetheringReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_2

    const-string v1, "toggle_wifi_p2p"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "wifiP2p"

    const-string v1, "toggle_wifi_p2p"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;->setWiFiP2pEnableMenu(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Landroid/preference/CheckBoxPreference;)Z

    .line 548
    :cond_2
    const/4 v1, 0x1

    invoke-static {}, Lcom/android/settings_ex/lge/OverlayUtils;->WifiCallPref_isSupport()Z

    move-result v2

    if-ne v1, v2, :cond_3

    invoke-static {}, Lcom/android/settings_ex/lge/OverlayUtils;->WifiCallPref_getWifiCallPref()Lcom/android/settings_ex/lge/WifiCallCheckBoxPreference;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/settings_ex/lge/OverlayUtils;->WifiCallPref_resume()V

    :cond_3
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    iget-object v7, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_0

    const-string v7, "ril.cdma.inecmmode"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 132
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/android/settings_ex/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 135
    const/4 v7, 0x1

    .line 198
    :goto_0
    return v7

    .line 137
    :cond_0
    iget-object v7, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_1

    const/4 v7, 0x1

    iget-boolean v8, p0, Lcom/android/settings_ex/WirelessSettings;->csActive:Z

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

    invoke-virtual {v7}, Lcom/android/settings_ex/AirplaneModeEnabler;->updatePreferences()V

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/android/settings_ex/WirelessSettings;->mDataNetworkSetting:Landroid/preference/PreferenceScreen;

    if-ne p2, v7, :cond_3

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .local v5, mIntent:Landroid/content/Intent;
    const-string v7, "com.android.settings_ex"

    const-string v8, "com.android.settings_ex.lgesetting.wireless.DataNetworkModeSetting"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "cancelable"

    const-string v8, "true"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    .end local v5           #mIntent:Landroid/content/Intent;
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_9

    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 153
    .local v3, cm:Landroid/net/ConnectivityManager;
    iget-object v7, p0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 155
    .local v2, bluetoothTetherState:Z
    sget-boolean v7, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "mBTTether"

    iget-object v11, p0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;->setTetheringEnableMenu(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Landroid/preference/CheckBoxPreference;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 157
    const/4 v7, 0x1

    goto :goto_0

    .line 160
    :cond_4
    if-eqz v2, :cond_6

    .line 162
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 163
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_5

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothEnableForTether:Z

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    iget-object v7, p0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v8, 0x7f0800d1

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    iget-object v7, p0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    .line 169
    :cond_5
    iget-object v7, p0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    iget-object v7, p0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v8, 0x7f0803c7

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_1

    .line 173
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    :cond_6
    const/4 v4, 0x0

    .line 175
    .local v4, errored:Z
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, tethered:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/settings_ex/WirelessSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, bluetoothIface:Ljava/lang/String;
    if-eqz v1, :cond_7

    invoke-virtual {v3, v1}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_7

    .line 179
    const/4 v4, 0x1

    .line 182
    :cond_7
    iget-object v7, p0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    if-eqz v4, :cond_8

    iget-object v7, p0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v8, 0x7f0803cb

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 186
    :cond_8
    iget-object v7, p0, Lcom/android/settings_ex/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v8, 0x7f0803ca

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 191
    .end local v1           #bluetoothIface:Ljava/lang/String;
    .end local v2           #bluetoothTetherState:Z
    .end local v3           #cm:Landroid/net/ConnectivityManager;
    .end local v4           #errored:Z
    .end local v6           #tethered:[Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "button_wifi_calling_key"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-ne p2, v7, :cond_2

    .line 192
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 193
    .restart local v5       #mIntent:Landroid/content/Intent;
    const-string v7, "com.movial.wificall"

    const-string v8, "com.movial.wificall.Settings"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->mBTTetheringReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-boolean v2, p0, Lcom/android/settings_ex/WirelessSettings;->bluetoothAvailable:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/WirelessSettings;->updateState()V

    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_7

    iput-boolean v6, p0, Lcom/android/settings_ex/WirelessSettings;->csActive:Z

    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

    invoke-virtual {v2}, Lcom/android/settings_ex/AirplaneModeEnabler;->resume()V

    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    invoke-virtual {v2}, Lcom/android/settings_ex/nfc/LGNfcEnabler;->resume()V

    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiP2pEnabler:Lcom/android/settings_ex/wifi/p2p/WifiP2pEnabler;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiP2pEnabler:Lcom/android/settings_ex/wifi/p2p/WifiP2pEnabler;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/p2p/WifiP2pEnabler;->resume()V

    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->tm:Landroid/telephony/TelephonyManager;

    .line 489
    const-string v2, "SKT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->tm:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->mDataNetworkSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_3
    :goto_1
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v2, :cond_4

    const-string v2, "toggle_wifi_p2p"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "wifiP2p"

    const-string v2, "toggle_wifi_p2p"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7, v4, v5, v2}, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;->setWiFiP2pEnableMenu(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Landroid/preference/CheckBoxPreference;)Z

    :cond_4
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->mDataNetworkSetting:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/settings_ex/MDMSettingsAdapter;->getInstance()Lcom/android/settings_ex/MDMSettingsAdapter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings;->mDataNetworkSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v7, v3, v4}, Lcom/android/settings_ex/MDMSettingsAdapter;->setMobileNetworkMenu(Landroid/content/ComponentName;Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 516
    :cond_5
    invoke-static {}, Lcom/android/settings_ex/lge/OverlayUtils;->WifiCallPref_isSupport()Z

    move-result v2

    if-ne v6, v2, :cond_6

    invoke-static {}, Lcom/android/settings_ex/lge/OverlayUtils;->WifiCallPref_getWifiCallPref()Lcom/android/settings_ex/lge/WifiCallCheckBoxPreference;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/settings_ex/lge/OverlayUtils;->WifiCallPref_resume()V

    :cond_6
    return-void

    :cond_7
    iput-boolean v4, p0, Lcom/android/settings_ex/WirelessSettings;->csActive:Z

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->mDataNetworkSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1
.end method
