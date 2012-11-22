.class public Lcom/android/settings_ex/TetherSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# instance fields
.field private alertDialogView:Landroid/view/View;

.field private hotSpotTimeoutPreference:Landroid/preference/ListPreference;

.field private mAlertView:Landroid/view/View;

.field private mAttentionDialog:Landroid/app/AlertDialog$Builder;

.field private mAttentionDlog:Landroid/app/AlertDialog;

.field private mAttentionView:Landroid/webkit/WebView;

.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Landroid/preference/CheckBoxPreference;

.field private mCheckTethering:Z

.field private mCreateNetwork:Landroid/preference/Preference;

.field private mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

.field private mEnableUnicode:Landroid/preference/CheckBoxPreference;

.field private mEnableWifiAp:Landroid/preference/CheckBoxPreference;

.field private mInit:Z

.field private mMassStorageActive:Z

.field private mObjectTmp:Ljava/lang/Object;

.field private mPassword:Landroid/widget/EditText;

.field private mPreferenceTmp:Landroid/preference/Preference;

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mSecurityType:[Ljava/lang/String;

.field private mTetherAlertDialog:Landroid/app/Dialog;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherHelp:Landroid/preference/PreferenceScreen;

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/preference/CheckBoxPreference;

.field private mView:Landroid/webkit/WebView;

.field private mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiHotspotStatus:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field pwDialogHandler:Landroid/content/DialogInterface$OnClickListener;

.field private wifiPwDialog:Landroid/app/AlertDialog$Builder;

.field private wifiPwDlog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 150
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v2, p0, Lcom/android/settings_ex/TetherSettings;->mCheckTethering:Z

    iput-boolean v2, p0, Lcom/android/settings_ex/TetherSettings;->mInit:Z

    new-instance v0, Lcom/android/settings_ex/TetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/TetherSettings$1;-><init>(Lcom/android/settings_ex/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    new-instance v0, Lcom/android/settings_ex/TetherSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/TetherSettings$6;-><init>(Lcom/android/settings_ex/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->pwDialogHandler:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/TetherSettings;)Landroid/bluetooth/BluetoothPan;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/TetherSettings;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/TetherSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/TetherSettings;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->wifiPwDialog:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/TetherSettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/TetherSettings;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/settings_ex/TetherSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/TetherSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/settings_ex/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/settings_ex/TetherSettings;->mInit:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/settings_ex/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/settings_ex/TetherSettings;->mCheckTethering:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/TetherSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mPreferenceTmp:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/TetherSettings;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mObjectTmp:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/TetherSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->updateState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/settings_ex/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/settings_ex/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings_ex/TetherSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings_ex/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings_ex/TetherSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiHotspotStatus:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/TetherSettings;)Lcom/android/settings_ex/wifi/WifiApEnabler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    return-object v0
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "ifaces"
    .parameter "regexes"

    .prologue
    .line 1115
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

    .line 1116
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

    .line 1117
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1122
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #regex:Ljava/lang/String;
    :goto_2
    return-object v4

    .line 1116
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #iface:Ljava/lang/String;
    .restart local v6       #len$:I
    .restart local v7       #regex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1115
    .end local v7           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 1122
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private initWifiTethering()V
    .locals 11

    .prologue
    const v4, 0x7f080bc5

    const v5, 0x7f080280

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .local v0, activity:Landroid/app/Activity;
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f090027

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mSecurityType:[Ljava/lang/String;

    .line 365
    const-string v3, "KR"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f090028

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mSecurityType:[Ljava/lang/String;

    .line 368
    :cond_0
    const-string v3, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_2

    const v3, 0x10403f6

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, s:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    const-string v3, "DCM"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v2, v4, v8

    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v5, v5, v8

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 381
    .end local v2           #s:Ljava/lang/String;
    :goto_1
    return-void

    .restart local v2       #s:Ljava/lang/String;
    :cond_1
    move v3, v5

    .line 373
    goto :goto_0

    .line 376
    .end local v2           #s:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3}, Lcom/android/settings_ex/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 377
    .local v1, index:I
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    const-string v6, "DCM"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_2
    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v1

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_2
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 667
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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
    invoke-direct {p0, v0, v3, v2}, Lcom/android/settings_ex/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/TetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 685
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-boolean v1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbConnected:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 688
    :goto_0
    const/4 v5, 0x0

    .line 689
    array-length v6, p1

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v7, p1, v4

    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v9, v8

    const/4 v2, 0x0

    move v3, v2

    move v2, v5

    :goto_2
    if-ge v3, v9, :cond_2

    aget-object v5, v8, v3

    .line 691
    invoke-virtual {v7, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 692
    if-nez v2, :cond_0

    .line 693
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v2

    .line 690
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 687
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 689
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v5, v2

    goto :goto_1

    .line 698
    :cond_3
    const/4 v4, 0x0

    .line 699
    array-length v6, p2

    const/4 v0, 0x0

    move v3, v0

    :goto_3
    if-ge v3, v6, :cond_6

    aget-object v7, p2, v3

    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v9, v8

    const/4 v0, 0x0

    move v2, v0

    move v0, v4

    :goto_4
    if-ge v2, v9, :cond_5

    aget-object v4, v8, v2

    .line 701
    invoke-virtual {v7, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    .line 700
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 699
    :cond_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v4, v0

    goto :goto_3

    .line 704
    :cond_6
    const/4 v2, 0x0

    .line 705
    array-length v6, p3

    const/4 v0, 0x0

    move v3, v0

    :goto_5
    if-ge v3, v6, :cond_9

    aget-object v7, p3, v3

    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v9, v8

    const/4 v0, 0x0

    move v11, v0

    move v0, v2

    move v2, v11

    :goto_6
    if-ge v2, v9, :cond_8

    aget-object v10, v8, v2

    .line 707
    invoke-virtual {v7, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v0, 0x1

    .line 706
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 705
    :cond_8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_5

    .line 712
    :cond_9
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "mUsbTether"

    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3, v6, v7, v8}, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;->setTetheringEnableMenu(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Landroid/preference/CheckBoxPreference;)Z

    move-result v0

    if-nez v0, :cond_a

    :goto_7
    return-void

    :cond_a
    if-eqz v4, :cond_b

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0803c2

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    :cond_b
    if-eqz v1, :cond_d

    if-nez v5, :cond_c

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0803c1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    :goto_8
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 724
    :cond_c
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0803c5

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_8

    :cond_d
    if-eqz v2, :cond_e

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0803c5

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    :cond_e
    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0803c3

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 737
    :cond_f
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0803c4

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7
.end method

.method private validate()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->wifiPwDlog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1155
    :goto_0
    return-void

    .line 1153
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->wifiPwDlog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected CreateWarningDialogForDCM()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 1244
    const-string v4, "html/%y%z/tether_attention_%x.html"

    const-string v5, "%y"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1245
    const-string v5, "%z"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1246
    const-string v5, "%x"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1249
    const/4 v5, 0x0

    .line 1252
    :try_start_0
    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1256
    if-eqz v0, :cond_3

    .line 1258
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 1263
    :goto_0
    const-string v4, "file:///android_asset/html/%y%z/tether_attention_%x.html"

    const-string v5, "%y"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1264
    const-string v5, "%z"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1265
    const-string v4, "%x"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1269
    const v4, 0x7f04009f

    invoke-virtual {v0, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->alertDialogView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->alertDialogView:Landroid/view/View;

    const v4, 0x7f0b019b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mAttentionView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mAttentionView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mAttentionView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mAttentionView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f080282

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->alertDialogView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f080283

    new-instance v3, Lcom/android/settings_ex/TetherSettings$7;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/TetherSettings$7;-><init>(Lcom/android/settings_ex/TetherSettings;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1285
    const v1, 0x7f080284

    new-instance v3, Lcom/android/settings_ex/TetherSettings$8;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/TetherSettings$8;-><init>(Lcom/android/settings_ex/TetherSettings;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1289
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1290
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1292
    return v2

    .line 1259
    :catch_0
    move-exception v0

    move v0, v1

    goto/16 :goto_0

    .line 1253
    :catch_1
    move-exception v0

    .line 1256
    if-eqz v8, :cond_2

    .line 1258
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v2

    .line 1259
    goto/16 :goto_0

    :catch_2
    move-exception v0

    move v0, v2

    goto/16 :goto_0

    .line 1256
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_0

    .line 1258
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1259
    :cond_0
    :goto_2
    throw v0

    .line 1264
    :cond_1
    const-string v0, ""

    goto/16 :goto_1

    .line 1259
    :catch_3
    move-exception v1

    goto :goto_2

    :cond_2
    move v0, v2

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->validate()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1165
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->isNewConfig()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 1141
    .local v0, index:I
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v1, "DCM"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f080bc5

    :goto_1
    invoke-virtual {v3, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1146
    .end local v0           #index:I
    :cond_0
    return-void

    .line 1138
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0

    .line 1141
    .restart local v0       #index:I
    :cond_2
    const v1, 0x7f080280

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mPassword:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1179
    return-void

    .line 1173
    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "config"

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiApDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiApDialog;->notifyConfigurationChanged()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 19
    .parameter "icicle"

    .prologue
    invoke-super/range {p0 .. p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v14, 0x7f060043

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/TetherSettings;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .local v1, activity:Landroid/app/Activity;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .local v2, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-virtual {v2, v14, v15, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 207
    :cond_0
    const-string v14, "enable_wifi_ap"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    .line 210
    const-string v14, "wifi_unicode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/TetherSettings;->mEnableUnicode:Landroid/preference/CheckBoxPreference;

    .line 212
    const-string v14, "wifi_ap_ssid_and_security"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 213
    .local v12, wifiApSettings:Landroid/preference/Preference;
    const-string v14, "usb_tether_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    .line 216
    const-string v14, "KR"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/TetherSettings;->mEnableUnicode:Landroid/preference/CheckBoxPreference;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/TetherSettings;->mEnableUnicode:Landroid/preference/CheckBoxPreference;

    const-string v14, "persist.sys.hotssid.ksc5601"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v14, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-nez v14, :cond_a

    const/4 v14, 0x1

    :goto_0
    invoke-virtual {v15, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 220
    :cond_1
    const-string v14, "enable_wifi_ap"

    invoke-virtual {v12, v14}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 222
    :cond_2
    const-string v14, "KR"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/TetherSettings;->mEnableUnicode:Landroid/preference/CheckBoxPreference;

    if-eqz v14, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/TetherSettings;->mEnableUnicode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 227
    :cond_3
    const-string v14, "hotspot_timeout"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    .line 232
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "tethering_time"

    const v17, 0x493e0

    invoke-static/range {v15 .. v17}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f09009d

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 238
    .local v6, entry:[Ljava/lang/String;
    const-string v14, "KR"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f09009f

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 241
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    const v15, 0x7f09009f

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 242
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    const v15, 0x7f0900a0

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 245
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v15}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v8

    .line 248
    .local v8, index:I
    const-string v14, "KR"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 250
    const/4 v14, -0x1

    if-ne v8, v14, :cond_5

    .line 251
    const/4 v8, 0x1

    .line 254
    :cond_5
    if-nez v8, :cond_b

    .line 255
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    const v15, 0x7f080b92

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings_ex/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v6           #entry:[Ljava/lang/String;
    .end local v8           #index:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 290
    const-string v14, "enable_bluetooth_tethering"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    .line 291
    const-string v14, "tethering_help"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/TetherSettings;->mTetherHelp:Landroid/preference/PreferenceScreen;

    .line 293
    const-string v14, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 296
    .local v4, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 297
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    .line 298
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .line 301
    const/4 v11, 0x0

    .line 305
    .local v11, usbAvailable:Z
    const/4 v3, 0x0

    .line 307
    .local v3, bluetoothAvailable:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v14, v14

    if-eqz v14, :cond_10

    const/4 v13, 0x1

    .line 309
    .local v13, wifiAvailable:Z
    :goto_2
    if-eqz v11, :cond_6

    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 310
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    if-eqz v13, :cond_11

    new-instance v14, Lcom/android/settings_ex/wifi/WifiApEnabler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-direct {v14, v1, v15}, Lcom/android/settings_ex/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/TetherSettings;->initWifiTethering()V

    :goto_3
    const-string v14, "SPRINT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    const-string v14, "BM"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 332
    :goto_4
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v14

    const v15, 0x7f0803be

    invoke-virtual {v14, v15}, Landroid/app/ActionBar;->setTitle(I)V

    .line 335
    const-string v14, "TLS"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 336
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v14

    const v15, 0x7f080829

    invoke-virtual {v14, v15}, Landroid/app/ActionBar;->setTitle(I)V

    .line 340
    :cond_8
    const-string v14, "DCM"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 341
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v14

    const v15, 0x7f080bc0

    invoke-virtual {v14, v15}, Landroid/app/ActionBar;->setTitle(I)V

    .line 342
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f080bc2

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 346
    :cond_9
    new-instance v14, Landroid/webkit/WebView;

    invoke-direct {v14, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/TetherSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "FIRST_FLAG"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 349
    .local v9, pref:Landroid/content/SharedPreferences;
    const-string v14, "f_flag"

    const/4 v15, 0x1

    invoke-interface {v9, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .local v7, flag:Z
    if-eqz v7, :cond_14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings_ex/TetherSettings;->mInit:Z

    :goto_5
    return-void

    .end local v3           #bluetoothAvailable:Z
    .end local v4           #cm:Landroid/net/ConnectivityManager;
    .end local v7           #flag:Z
    .end local v9           #pref:Landroid/content/SharedPreferences;
    .end local v11           #usbAvailable:Z
    .end local v13           #wifiAvailable:Z
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 258
    .restart local v6       #entry:[Ljava/lang/String;
    .restart local v8       #index:I
    :cond_b
    const/4 v14, 0x1

    if-ne v8, v14, :cond_c

    .line 259
    :try_start_1
    aget-object v14, v6, v8

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 264
    .local v10, timeValue:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    const v15, 0x7f080b91

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings_ex/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 282
    .end local v6           #entry:[Ljava/lang/String;
    .end local v8           #index:I
    .end local v10           #timeValue:I
    :catch_0
    move-exception v5

    .line 283
    .local v5, e:Ljava/lang/NumberFormatException;
    const-string v14, "TetherSettings"

    const-string v15, "could not persist screen timeout setting"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 262
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .restart local v6       #entry:[Ljava/lang/String;
    .restart local v8       #index:I
    :cond_c
    :try_start_2
    aget-object v14, v6, v8

    const/4 v15, 0x0

    const/16 v16, 0x2

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .restart local v10       #timeValue:I
    goto :goto_6

    .line 269
    .end local v10           #timeValue:I
    :cond_d
    const/4 v14, -0x1

    if-ne v8, v14, :cond_e

    .line 270
    const/4 v8, 0x0

    .line 273
    :cond_e
    if-nez v8, :cond_f

    .line 274
    aget-object v14, v6, v8

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 278
    .restart local v10       #timeValue:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    const v15, 0x7f080b91

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings_ex/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 276
    .end local v10           #timeValue:I
    :cond_f
    aget-object v14, v6, v8

    const/4 v15, 0x0

    const/16 v16, 0x2

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v10

    .restart local v10       #timeValue:I
    goto :goto_7

    .line 307
    .end local v6           #entry:[Ljava/lang/String;
    .end local v8           #index:I
    .end local v10           #timeValue:I
    .restart local v3       #bluetoothAvailable:Z
    .restart local v4       #cm:Landroid/net/ConnectivityManager;
    .restart local v11       #usbAvailable:Z
    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 317
    .restart local v13       #wifiAvailable:Z
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 324
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v14, :cond_13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v14

    if-eqz v14, :cond_13

    .line 325
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_4

    .line 327
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_4

    .line 354
    .restart local v7       #flag:Z
    .restart local v9       #pref:Landroid/content/SharedPreferences;
    :cond_14
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings_ex/TetherSettings;->mInit:Z

    goto/16 :goto_5
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 16
    .parameter "id"

    .prologue
    .line 395
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_13

    .line 396
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    .line 399
    .local v8, locale:Ljava/util/Locale;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 400
    .local v2, am:Landroid/content/res/AssetManager;
    const-string v13, "html/%y%z/tethering_help.html"

    const-string v14, "%y"

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 401
    .local v10, path:Ljava/lang/String;
    const-string v13, "%z"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v15, 0x5f

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 402
    const/4 v12, 0x1

    .line 403
    .local v12, useCountry:Z
    const/4 v6, 0x0

    .line 405
    .local v6, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v2, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 409
    if-eqz v6, :cond_0

    .line 411
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 415
    :cond_0
    :goto_0
    const-string v13, "file:///android_asset/html/%y%z/tethering_%xhelp.html"

    const-string v14, "%y"

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 416
    .local v11, url:Ljava/lang/String;
    const-string v14, "%z"

    if-eqz v12, :cond_c

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v15, 0x5f

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_1
    invoke-virtual {v11, v14, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 417
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v13, v13

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v13, v13

    if-nez v13, :cond_e

    .line 418
    const-string v13, "DCM"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 419
    const-string v13, "%x"

    const-string v14, "wifi_dcm_"

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 440
    :goto_2
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 441
    .local v7, lang:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 445
    .local v4, contry:Ljava/lang/String;
    const-string v13, "ar"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "cs"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "da"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "de"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "el"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "en"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "us"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    :cond_1
    const-string v13, "en"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "gb"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    :cond_2
    const-string v13, "en"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "ca"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    :cond_3
    const-string v13, "es"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "es"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, "us"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    :cond_4
    const-string v13, "fa"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "fr"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "id"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "it"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "ja"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "ko"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "ms"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "nl"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "no"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "pl"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "pt"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const-string v13, "br"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    :cond_5
    const-string v13, "pt"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const-string v13, "pt"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    :cond_6
    const-string v13, "ru"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "sv"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "th"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "tr"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "vi"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "zh"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "zh"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const-string v13, "cn"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    :cond_7
    const-string v13, "zh"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const-string v13, "tw"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    :cond_8
    const-string v13, "in"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "zh"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const-string v13, "hk"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 452
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/TetherSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v13, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 458
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/TetherSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v13}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 459
    .local v9, parent:Landroid/view/ViewParent;
    if-eqz v9, :cond_a

    instance-of v13, v9, Landroid/view/ViewGroup;

    if-eqz v13, :cond_a

    .line 460
    check-cast v9, Landroid/view/ViewGroup;

    .end local v9           #parent:Landroid/view/ViewParent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/TetherSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v9, v13}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 462
    :cond_a
    new-instance v13, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0803ce

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/TetherSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    .line 498
    .end local v2           #am:Landroid/content/res/AssetManager;
    .end local v4           #contry:Ljava/lang/String;
    .end local v6           #is:Ljava/io/InputStream;
    .end local v7           #lang:Ljava/lang/String;
    .end local v8           #locale:Ljava/util/Locale;
    .end local v10           #path:Ljava/lang/String;
    .end local v11           #url:Ljava/lang/String;
    .end local v12           #useCountry:Z
    :goto_4
    return-object v13

    .line 406
    .restart local v2       #am:Landroid/content/res/AssetManager;
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v8       #locale:Ljava/util/Locale;
    .restart local v10       #path:Ljava/lang/String;
    .restart local v12       #useCountry:Z
    :catch_0
    move-exception v5

    .line 407
    .local v5, ignored:Ljava/lang/Exception;
    const/4 v12, 0x0

    .line 409
    if-eqz v6, :cond_0

    .line 411
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 412
    :catch_1
    move-exception v13

    goto/16 :goto_0

    .line 409
    .end local v5           #ignored:Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    if-eqz v6, :cond_b

    .line 411
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 412
    :cond_b
    :goto_5
    throw v13

    .line 416
    .restart local v11       #url:Ljava/lang/String;
    :cond_c
    const-string v13, ""

    goto/16 :goto_1

    .line 421
    :cond_d
    const-string v13, "%x"

    const-string v14, "wifi_"

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 424
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v13, v13

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v13, v13

    if-nez v13, :cond_10

    .line 425
    const-string v13, "DCM"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 426
    const-string v13, "%x"

    const-string v14, "wifi_dcm_"

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 428
    :cond_f
    const-string v13, "%x"

    const-string v14, "wifi_"

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 434
    :cond_10
    const-string v13, "DCM"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 435
    const-string v13, "%x"

    const-string v14, "wifi_dcm_"

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 437
    :cond_11
    const-string v13, "%x"

    const-string v14, "wifi_"

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 455
    .restart local v4       #contry:Ljava/lang/String;
    .restart local v7       #lang:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/TetherSettings;->mView:Landroid/webkit/WebView;

    const-string v14, "file:///android_asset/html/en_us/tethering_help.html"

    invoke-virtual {v13, v14}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 467
    .end local v2           #am:Landroid/content/res/AssetManager;
    .end local v4           #contry:Ljava/lang/String;
    .end local v6           #is:Ljava/io/InputStream;
    .end local v7           #lang:Ljava/lang/String;
    .end local v8           #locale:Ljava/util/Locale;
    .end local v10           #path:Ljava/lang/String;
    .end local v11           #url:Ljava/lang/String;
    .end local v12           #useCountry:Z
    :cond_13
    const/4 v13, 0x2

    move/from16 v0, p1

    if-ne v0, v13, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .local v1, activity:Landroid/app/Activity;
    new-instance v13, Lcom/android/settings_ex/wifi/WifiApDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    invoke-direct {v13, v1, v0, v14}, Lcom/android/settings_ex/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/TetherSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/TetherSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

    goto/16 :goto_4

    .end local v1           #activity:Landroid/app/Activity;
    :cond_14
    const/4 v13, 0x3

    move/from16 v0, p1

    if-ne v0, v13, :cond_15

    .line 472
    const-string v13, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 475
    .local v3, cm:Landroid/net/ConnectivityManager;
    new-instance v13, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f0807dc

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0807dd

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const/high16 v14, 0x104

    new-instance v15, Lcom/android/settings_ex/TetherSettings$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v3}, Lcom/android/settings_ex/TetherSettings$3;-><init>(Lcom/android/settings_ex/TetherSettings;Landroid/net/ConnectivityManager;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x104000a

    new-instance v15, Lcom/android/settings_ex/TetherSettings$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v3}, Lcom/android/settings_ex/TetherSettings$2;-><init>(Lcom/android/settings_ex/TetherSettings;Landroid/net/ConnectivityManager;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/TetherSettings;->mTetherAlertDialog:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/TetherSettings;->mTetherAlertDialog:Landroid/app/Dialog;

    goto/16 :goto_4

    .end local v3           #cm:Landroid/net/ConnectivityManager;
    :cond_15
    const/4 v13, 0x0

    goto/16 :goto_4

    .restart local v2       #am:Landroid/content/res/AssetManager;
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v8       #locale:Ljava/util/Locale;
    .restart local v10       #path:Ljava/lang/String;
    .restart local v12       #useCountry:Z
    :catch_2
    move-exception v13

    goto/16 :goto_0

    :catch_3
    move-exception v14

    goto/16 :goto_5
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const v9, 0x107001f

    const/4 v8, -0x1

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    iput-object p1, p0, Lcom/android/settings_ex/TetherSettings;->mPreferenceTmp:Landroid/preference/Preference;

    iput-object p2, p0, Lcom/android/settings_ex/TetherSettings;->mObjectTmp:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 804
    const-string v0, "persist.sys.hotssid.ksc5601"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 805
    :goto_0
    const-string v4, "persist.sys.hotssid.ksc5601"

    if-eqz v0, :cond_2

    const-string v0, "0"

    :goto_1
    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_3

    :cond_0
    :goto_2
    return v2

    :cond_1
    move v0, v2

    .line 804
    goto :goto_0

    .line 805
    :cond_2
    const-string v0, "1"

    goto :goto_1

    .line 810
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 813
    const-string v4, "hotspot_timeout"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object v0, p2

    .line 814
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 817
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tethering_time"

    invoke-static {v3, v4, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f09009d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 823
    const-string v3, "KR"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f09009f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 827
    :goto_3
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 831
    const-string v4, "KR"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-ne v0, v8, :cond_4

    move v0, v1

    :cond_4
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    const v2, 0x7f080b92

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_4
    move v2, v1

    .line 868
    goto :goto_2

    .line 841
    :cond_5
    if-ne v0, v1, :cond_6

    .line 842
    aget-object v0, v3, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 847
    :goto_5
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    const v3, 0x7f080b91

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 865
    :catch_0
    move-exception v0

    .line 866
    const-string v2, "TetherSettings"

    const-string v3, "could not persist screen timeout setting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 845
    :cond_6
    :try_start_1
    aget-object v0, v3, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_5

    .line 852
    :cond_7
    if-ne v0, v8, :cond_1a

    .line 856
    :goto_6
    if-nez v2, :cond_8

    .line 857
    aget-object v0, v3, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 861
    :goto_7
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    const v3, 0x7f080b91

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 859
    :cond_8
    aget-object v0, v3, v2

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_7

    .line 870
    :cond_9
    const-string v4, "enable_wifi_ap"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/TetherSettings;->mWifiHotspotStatus:Z

    const-string v4, "service.btui.ampstate"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.intent.action.WIFI_BT_HS_COEX"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 887
    :cond_a
    const-string v4, "ril.temp.countrycodeforoneimage"

    const-string v5, "FFF"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 889
    const-string v5, "ro.build.target_operator"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "VDF"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v5, "262"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_d

    if-eqz v3, :cond_c

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_b

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_b

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080282

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080c00

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080283

    new-instance v3, Lcom/android/settings_ex/TetherSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/TetherSettings$4;-><init>(Lcom/android/settings_ex/TetherSettings;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mAttentionDialog:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mAttentionDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mAttentionDlog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mAttentionDlog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    :cond_c
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto/16 :goto_2

    .line 918
    :cond_d
    const-string v4, "DCM"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    if-eqz v3, :cond_e

    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mCheckTethering:Z

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->CreateWarningDialogForDCM()Z

    goto/16 :goto_2

    :cond_e
    if-eqz v3, :cond_10

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    if-eq v3, v7, :cond_f

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    :goto_8
    iput-boolean v2, p0, Lcom/android/settings_ex/TetherSettings;->mCheckTethering:Z

    goto/16 :goto_2

    :cond_f
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aget-object v4, v0, v2

    aget-object v0, v0, v1

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v2}, Lcom/android/settings_ex/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_8

    :cond_10
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    iput-boolean v2, p0, Lcom/android/settings_ex/TetherSettings;->mCheckTethering:Z

    goto/16 :goto_2

    :cond_11
    const-string v4, "KR"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string v4, "ro.build.target_operator"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ORG"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    :cond_12
    if-ne v0, v7, :cond_17

    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mInit:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiHotspotStatus:Z

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 951
    const v3, 0x7f0400c1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mAlertView:Landroid/view/View;

    .line 953
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->wifiPwDialog:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->wifiPwDialog:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f08027f

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->wifiPwDialog:Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mAlertView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->wifiPwDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->wifiPwDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f080259

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->pwDialogHandler:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->wifiPwDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f08025a

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->pwDialogHandler:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mAlertView:Landroid/view/View;

    const v1, 0x7f0b022c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 966
    const-string v1, "KR"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080b2c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 968
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 969
    if-eq v3, v8, :cond_13

    .line 971
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 973
    :cond_13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 977
    :cond_14
    :goto_9
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mAlertView:Landroid/view/View;

    const v1, 0x7f0b01e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mPassword:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings_ex/TetherSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/TetherSettings$5;-><init>(Lcom/android/settings_ex/TetherSettings;)V

    const-wide/16 v3, 0x96

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mAlertView:Landroid/view/View;

    const v1, 0x7f0b01f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->wifiPwDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->wifiPwDlog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->wifiPwDlog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->wifiPwDlog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mAlertView:Landroid/view/View;

    const v1, 0x7f0b022b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_15

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_15
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->validate()V

    goto/16 :goto_2

    :cond_16
    const-string v1, "ro.build.target_operator"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ORG"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080bf8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_17
    if-eqz v3, :cond_19

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    if-eq v3, v7, :cond_18

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto/16 :goto_2

    :cond_18
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aget-object v4, v0, v2

    aget-object v0, v0, v1

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v2}, Lcom/android/settings_ex/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    :cond_19
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto/16 :goto_2

    :cond_1a
    move v2, v0

    goto/16 :goto_6

    :cond_1b
    move-object v3, v0

    goto/16 :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1040
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_5

    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "mUsbTether"

    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v8, v5, v6, v7}, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;->setTetheringEnableMenu(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Landroid/preference/CheckBoxPreference;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz v3, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/TetherSettings;->showDialog(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0803c5

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 1062
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1111
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_a

    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "mBTTether"

    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v8, v5, v6, v7}, Lcom/android/settings_ex/wifi/MDMWifiSettingsAdapter;->setTetheringEnableMenu(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Landroid/preference/CheckBoxPreference;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1071
    :cond_6
    if-eqz v3, :cond_8

    .line 1073
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1074
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_7

    iput-boolean v1, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothEnableForTether:Z

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0800d1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0803c7

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_1

    :cond_8
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/settings_ex/TetherSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    :goto_2
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0803cb

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_1

    .line 1097
    :cond_9
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0803ca

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mTetherHelp:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_b

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/TetherSettings;->showDialog(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    if-ne p2, v0, :cond_c

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/TetherSettings;->showDialog(I)V

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mEnableUnicode:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    const-string v1, "persist.sys.hotssid.ksc5601"

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mEnableUnicode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "0"

    :goto_3
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    const-string v0, "1"

    goto :goto_3

    :cond_e
    move v0, v2

    goto :goto_2
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tethering_time"

    const v7, 0x493e0

    invoke-static {v5, v6, v7}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09009d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 614
    .local v1, entry:[Ljava/lang/String;
    const-string v4, "KR"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09009f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    const v5, 0x7f09009f

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntries(I)V

    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    const v5, 0x7f0900a0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntryValues(I)V

    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 624
    .local v2, index:I
    const-string v4, "KR"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-ne v2, v9, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    const v5, 0x7f080b92

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 663
    .end local v1           #entry:[Ljava/lang/String;
    .end local v2           #index:I
    :goto_0
    return-void

    .line 634
    .restart local v1       #entry:[Ljava/lang/String;
    .restart local v2       #index:I
    :cond_2
    if-ne v2, v8, :cond_3

    .line 635
    aget-object v4, v1, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 640
    .local v3, timeValue:I
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    const v5, 0x7f080b91

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 659
    .end local v1           #entry:[Ljava/lang/String;
    .end local v2           #index:I
    .end local v3           #timeValue:I
    :catch_0
    move-exception v0

    .line 660
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "TetherSettings"

    const-string v5, "could not persist screen timeout setting"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 638
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #entry:[Ljava/lang/String;
    .restart local v2       #index:I
    :cond_3
    :try_start_1
    aget-object v4, v1, v2

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .restart local v3       #timeValue:I
    goto :goto_1

    .line 645
    .end local v3           #timeValue:I
    :cond_4
    if-ne v2, v9, :cond_5

    .line 646
    const/4 v2, 0x0

    .line 649
    :cond_5
    if-nez v2, :cond_6

    .line 650
    aget-object v4, v1, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 654
    .restart local v3       #timeValue:I
    :goto_2
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    const v5, 0x7f080b91

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 652
    .end local v3           #timeValue:I
    :cond_6
    aget-object v4, v1, v2

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .restart local v3       #timeValue:I
    goto :goto_2
.end method

.method public onStart()V
    .locals 5

    .prologue
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStart()V

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .local v0, activity:Landroid/app/Activity;
    const-string v3, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z

    new-instance v3, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings_ex/TetherSettings;Lcom/android/settings_ex/TetherSettings$1;)V

    iput-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 560
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 561
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .local v2, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v0, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/WifiApEnabler;->resume()V

    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->updateState()V

    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStop()V

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiApEnabler;->pause()V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1170
    return-void
.end method
