.class public Lcom/android/settings_ex/deviceinfo/Status;
.super Landroid/preference/PreferenceActivity;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/deviceinfo/Status$SerialHandler;,
        Lcom/android/settings_ex/deviceinfo/Status$MyHandler;
    }
.end annotation


# static fields
.field private static final DUAL_SIM_HIDE_ENTRIES:[Ljava/lang/String;

.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;

.field private static countrycode:Ljava/lang/String;

.field private static operator_code:Ljava/lang/String;

.field private static sUnknown:Ljava/lang/String;


# instance fields
.field private DCM_HIDE_ENTRIES:[Ljava/lang/String;

.field private LGU_HIDE_ENTRIES:[Ljava/lang/String;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mSignalStrength:Landroid/preference/Preference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUptime:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data_state"

    aput-object v1, v0, v3

    const-string v1, "service_state"

    aput-object v1, v0, v4

    const-string v1, "operator_name"

    aput-object v1, v0, v5

    const-string v1, "roaming_state"

    aput-object v1, v0, v6

    const-string v1, "network_type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "imei"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "imei_sv"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "prl_version"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "min_number"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "esn_number"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "meid_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "signal_strength"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "icc_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/deviceinfo/Status;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .line 143
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "operator_name"

    aput-object v1, v0, v3

    const-string v1, "signal_strength"

    aput-object v1, v0, v4

    const-string v1, "network_type"

    aput-object v1, v0, v5

    const-string v1, "service_state"

    aput-object v1, v0, v6

    const-string v1, "roaming_state"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "data_state"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "min_number"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "prl_version"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "esn_number"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "meid_number"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "imei"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "imei_sv"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "icc_id"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "wifi_ip_address"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "serial_number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/deviceinfo/Status;->DUAL_SIM_HIDE_ENTRIES:[Ljava/lang/String;

    .line 184
    const-string v0, "ro.build.target_country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/deviceinfo/Status;->countrycode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 127
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "min_number"

    aput-object v1, v0, v3

    const-string v1, "prl_version"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "esn_number"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "meid_number"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "icc_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->LGU_HIDE_ENTRIES:[Ljava/lang/String;

    .line 137
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "imei_sv"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->DCM_HIDE_ENTRIES:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v0, Lcom/android/settings_ex/deviceinfo/Status$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/Status$1;-><init>(Lcom/android/settings_ex/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings_ex/deviceinfo/Status$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/Status$2;-><init>(Lcom/android/settings_ex/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/Status;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/deviceinfo/Status;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/deviceinfo/Status;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;->updateDataState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/deviceinfo/Status;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/deviceinfo/Status;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, 0x3c

    .line 957
    rem-long v0, p1, v3

    long-to-int v0, v0

    .line 958
    div-long v1, p1, v3

    rem-long/2addr v1, v3

    long-to-int v1, v1

    .line 959
    const-wide/16 v2, 0xe10

    div-long v2, p1, v2

    long-to-int v2, v2

    .line 961
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private dualSIMStatusCommon()V
    .locals 2

    .prologue
    .line 483
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;->setWifiStatus()V

    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;->setBtStatus()V

    return-void
.end method

.method private hideItemForDualSIM()V
    .locals 4

    .prologue
    sget-object v0, Lcom/android/settings_ex/deviceinfo/Status;->DUAL_SIM_HIDE_ENTRIES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .local v2, key:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private hideItemForOperator()V
    .locals 8

    .prologue
    .line 499
    const-string v5, "[Status]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[hideItemForOperator] getOperator = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const-string v5, "LGU"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->LGU_HIDE_ENTRIES:[Ljava/lang/String;

    .local v0, arr:[Ljava/lang/String;
    :goto_0
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v3, v1, v2

    .local v3, key:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #arr:[Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #len$:I
    :cond_0
    const-string v5, "DCM"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->DCM_HIDE_ENTRIES:[Ljava/lang/String;

    .restart local v0       #arr:[Ljava/lang/String;
    goto :goto_0

    .end local v0           #arr:[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .parameter "n"

    .prologue
    .line 949
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 950
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 952
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 920
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 921
    .local v1, bluetooth:Landroid/bluetooth/BluetoothAdapter;
    const-string v3, "bt_address"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .local v2, btAddressPref:Landroid/preference/Preference;
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 929
    .local v0, address:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .end local v0           #address:Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 928
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 929
    .restart local v0       #address:Ljava/lang/String;
    :cond_3
    const v3, 0x7f08034c

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private setSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "preference"
    .parameter "property"
    .parameter "alt"

    .prologue
    .line 576
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {p2, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 580
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "preference"
    .parameter "text"

    .prologue
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lcom/android/settings_ex/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private setWifiStatus()V
    .locals 8

    .prologue
    const v7, 0x7f08034c

    .line 895
    const-string v6, "wifi"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 896
    .local v5, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 898
    .local v2, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v6, "wifi_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 899
    .local v4, wifiMacAddressPref:Landroid/preference/Preference;
    if-nez v2, :cond_2

    const/4 v1, 0x0

    .line 901
    .local v1, macAddress:Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_0

    .line 903
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 907
    :cond_0
    const-string v6, "wifi_ip_address"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .local v3, wifiIpAddressPref:Landroid/preference/Preference;
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .local v0, ipAddress:Ljava/lang/String;
    if-eqz v3, :cond_1

    if-eqz v0, :cond_4

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_2
    return-void

    .end local v0           #ipAddress:Ljava/lang/String;
    .end local v1           #macAddress:Ljava/lang/String;
    .end local v3           #wifiIpAddressPref:Landroid/preference/Preference;
    :cond_2
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 903
    .restart local v1       #macAddress:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 914
    .restart local v0       #ipAddress:Ljava/lang/String;
    .restart local v3       #wifiIpAddressPref:Landroid/preference/Preference;
    :cond_4
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private updateDataState()V
    .locals 6

    .prologue
    const v5, 0x7f080070

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v2

    .local v2, state:I
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 603
    .local v1, serState:I
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f080074

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, display:Ljava/lang/String;
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v3, "data_state"

    invoke-direct {p0, v3, v0}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 615
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f080072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 616
    goto :goto_0

    .line 618
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f080073

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 619
    goto :goto_0

    .line 621
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f080071

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 622
    goto :goto_0

    .line 613
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 3

    .prologue
    .line 597
    const-string v0, "network_type"

    const-string v1, "gsm.network.type"

    sget-object v2, Lcom/android/settings_ex/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/Status;->setSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 14
    .parameter "serviceState"

    .prologue
    const/4 v13, 0x6

    const/4 v12, 0x4

    .line 633
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    .line 634
    .local v8, state:I
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f080074

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .local v6, display:Ljava/lang/String;
    packed-switch v8, :pswitch_data_0

    :goto_0
    const-string v9, "service_state"

    invoke-direct {p0, v9, v6}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "roaming_state"

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v11, 0x7f08006b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    :goto_1
    sget-object v9, Lcom/android/settings_ex/deviceinfo/Status;->operator_code:Ljava/lang/String;

    const-string v10, "TRF"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 663
    if-nez v8, :cond_3

    .line 665
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 667
    const-string v9, "operator_name"

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v11, 0x7f0808ae

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    :cond_0
    :goto_2
    return-void

    .line 638
    :pswitch_0
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f080067

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 639
    goto :goto_0

    .line 642
    :pswitch_1
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f080068

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 643
    goto :goto_0

    .line 645
    :pswitch_2
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f08006a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 654
    :cond_1
    const-string v9, "roaming_state"

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v11, 0x7f08006c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 671
    :cond_2
    const-string v9, "operator_name"

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v11, 0x7f0808ad

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 676
    :cond_3
    const-string v9, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 681
    :cond_4
    const-string v9, "LGU"

    sget-object v10, Lcom/android/settings_ex/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 683
    const/4 v7, 0x0

    .line 684
    .local v7, name:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    .line 685
    const-string v9, "starmotor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "serviceState.getState() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const-string v9, "starmotor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "serviceState.getDataState() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataState()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const-string v9, "starmotor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "serviceState = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataState()I

    move-result v9

    if-nez v9, :cond_8

    .line 691
    :cond_5
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v7

    .line 692
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 694
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v7

    .line 696
    :cond_6
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 698
    const-string v7, "LG U+"

    .line 700
    :cond_7
    const-string v9, "operator_name"

    invoke-direct {p0, v9, v7}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 704
    :cond_8
    const-string v9, "operator_name"

    sget-object v10, Lcom/android/settings_ex/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 717
    .end local v7           #name:Ljava/lang/String;
    :cond_9
    const-string v9, "SKT"

    sget-object v10, Lcom/android/settings_ex/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 718
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 719
    .local v0, NwName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .line 721
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 722
    const-string v9, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 724
    :cond_a
    const-string v9, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 737
    .end local v0           #NwName:Ljava/lang/String;
    :cond_b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 738
    .local v4, currentLanguage:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    .line 740
    .local v5, currentcountry:Ljava/lang/String;
    sget-object v9, Lcom/android/settings_ex/deviceinfo/Status;->countrycode:Ljava/lang/String;

    const-string v10, "ESA"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_1f

    sget-object v9, Lcom/android/settings_ex/deviceinfo/Status;->operator_code:Ljava/lang/String;

    const-string v10, "OPEN"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f

    const-string v9, "zh"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 742
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 744
    .restart local v0       #NwName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .line 746
    const-string v9, "TW"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 749
    const-string v9, "Chunghwa"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 751
    new-array v2, v12, [C

    fill-array-data v2, :array_0

    .line 752
    .local v2, SPN_chars:[C
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    .line 753
    .local v1, SPN:Ljava/lang/String;
    move-object v0, v1

    .line 785
    .end local v1           #SPN:Ljava/lang/String;
    .end local v2           #SPN_chars:[C
    :cond_c
    :goto_3
    const-string v9, "operator_name"

    invoke-direct {p0, v9, v0}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    .end local v0           #NwName:Ljava/lang/String;
    :goto_4
    const-string v9, "CN"

    const-string v10, "ro.build.target_country"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 851
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 852
    .local v3, curNetwork:Ljava/lang/String;
    if-eqz v3, :cond_21

    const-string v9, "46000"

    invoke-virtual {v3, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_d

    const-string v9, "46002"

    invoke-virtual {v3, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_d

    const-string v9, "46007"

    invoke-virtual {v3, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_d

    const-string v9, "CMCC"

    invoke-virtual {v3, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_21

    .line 853
    :cond_d
    const-string v9, "operator_name"

    const v10, 0x7f080912

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 756
    .end local v3           #curNetwork:Ljava/lang/String;
    .restart local v0       #NwName:Ljava/lang/String;
    :cond_e
    const-string v9, "VIBO"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 758
    new-array v2, v12, [C

    fill-array-data v2, :array_1

    .line 759
    .restart local v2       #SPN_chars:[C
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    .line 760
    .restart local v1       #SPN:Ljava/lang/String;
    move-object v0, v1

    .line 761
    goto :goto_3

    .line 763
    .end local v1           #SPN:Ljava/lang/String;
    .end local v2           #SPN_chars:[C
    :cond_f
    const-string v9, "TW Mobile"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_10

    const-string v9, "TWN GSM"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_10

    const-string v9, "TRANSASIA"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_10

    const-string v9, "MOBITAI"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 765
    :cond_10
    const/4 v9, 0x5

    new-array v2, v9, [C

    fill-array-data v2, :array_2

    .line 766
    .restart local v2       #SPN_chars:[C
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    .line 767
    .restart local v1       #SPN:Ljava/lang/String;
    move-object v0, v1

    .line 768
    goto/16 :goto_3

    .line 770
    .end local v1           #SPN:Ljava/lang/String;
    .end local v2           #SPN_chars:[C
    :cond_11
    const-string v9, "Far EasTone"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_12

    const-string v9, "Far EasTone"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_12

    const-string v9, "KG Telecom"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_12

    const-string v9, "KGT-ONLINE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_12

    const-string v9, "KGT Online"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_12

    const-string v9, "KG Telecom"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 772
    :cond_12
    new-array v2, v12, [C

    fill-array-data v2, :array_3

    .line 773
    .restart local v2       #SPN_chars:[C
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    .line 774
    .restart local v1       #SPN:Ljava/lang/String;
    move-object v0, v1

    .line 775
    goto/16 :goto_3

    .line 778
    .end local v1           #SPN:Ljava/lang/String;
    .end local v2           #SPN_chars:[C
    :cond_13
    const-string v9, "China Mobile HK"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_14

    const-string v9, "CMHK"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 780
    :cond_14
    new-array v2, v13, [C

    fill-array-data v2, :array_4

    .line 781
    .restart local v2       #SPN_chars:[C
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    .line 782
    .restart local v1       #SPN:Ljava/lang/String;
    move-object v0, v1

    goto/16 :goto_3

    .line 788
    .end local v1           #SPN:Ljava/lang/String;
    .end local v2           #SPN_chars:[C
    :cond_15
    const-string v9, "HK"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 791
    const-string v9, "China Mobile HK"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_16

    const-string v9, "CMHK"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 793
    :cond_16
    new-array v2, v13, [C

    fill-array-data v2, :array_5

    .line 794
    .restart local v2       #SPN_chars:[C
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    .line 795
    .restart local v1       #SPN:Ljava/lang/String;
    move-object v0, v1

    .line 806
    .end local v1           #SPN:Ljava/lang/String;
    .end local v2           #SPN_chars:[C
    :cond_17
    :goto_5
    const-string v9, "operator_name"

    invoke-direct {p0, v9, v0}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 799
    :cond_18
    const-string v9, "CTM"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_19

    const-string v9, "ctm"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 801
    :cond_19
    new-array v2, v12, [C

    fill-array-data v2, :array_6

    .line 802
    .restart local v2       #SPN_chars:[C
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    .line 803
    .restart local v1       #SPN:Ljava/lang/String;
    move-object v0, v1

    goto :goto_5

    .line 810
    .end local v1           #SPN:Ljava/lang/String;
    .end local v2           #SPN_chars:[C
    :cond_1a
    const-string v9, "CN"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 812
    const-string v9, "China Mobile HK"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1b

    const-string v9, "CMHK"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 814
    :cond_1b
    new-array v2, v13, [C

    fill-array-data v2, :array_7

    .line 815
    .restart local v2       #SPN_chars:[C
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    .line 816
    .restart local v1       #SPN:Ljava/lang/String;
    move-object v0, v1

    .line 826
    .end local v1           #SPN:Ljava/lang/String;
    .end local v2           #SPN_chars:[C
    :cond_1c
    :goto_6
    const-string v9, "operator_name"

    invoke-direct {p0, v9, v0}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 819
    :cond_1d
    const-string v9, "CTM"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 821
    new-array v2, v12, [C

    fill-array-data v2, :array_8

    .line 822
    .restart local v2       #SPN_chars:[C
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    .line 823
    .restart local v1       #SPN:Ljava/lang/String;
    move-object v0, v1

    goto :goto_6

    .line 831
    .end local v1           #SPN:Ljava/lang/String;
    .end local v2           #SPN_chars:[C
    :cond_1e
    const-string v9, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 839
    .end local v0           #NwName:Ljava/lang/String;
    :cond_1f
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_20

    .line 840
    const-string v9, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    :goto_7
    const-string v9, "Status"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[NWINFO_Debug for KR] serviceState.getOperatorAlphaLong = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const-string v9, "Status"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[NWINFO_Debug for KR] serviceState.getOperatorAlphaShort = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 842
    :cond_20
    const-string v9, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 855
    .restart local v3       #curNetwork:Ljava/lang/String;
    :cond_21
    if-eqz v3, :cond_0

    const-string v9, "46001"

    invoke-virtual {v3, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_22

    const-string v9, "CHN-CUGSM"

    invoke-virtual {v3, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_0

    .line 856
    :cond_22
    const-string v9, "operator_name"

    const v10, 0x7f080913

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 636
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 751
    :array_0
    .array-data 0x2
        0x2dt 0x4et
        0xeft 0x83t
        0xfbt 0x96t
        0xe1t 0x4ft
    .end array-data

    .line 758
    :array_1
    .array-data 0x2
        0x1t 0x5at
        0xf6t 0x5bt
        0xfbt 0x96t
        0xe1t 0x4ft
    .end array-data

    .line 765
    :array_2
    .array-data 0x2
        0xf0t 0x53t
        0x7et 0x6et
        0x27t 0x59t
        0xe5t 0x54t
        0x27t 0x59t
    .end array-data

    .line 772
    nop

    :array_3
    .array-data 0x2
        0x60t 0x90t
        0xb3t 0x50t
        0xfbt 0x96t
        0xe1t 0x4ft
    .end array-data

    .line 780
    :array_4
    .array-data 0x2
        0x2dt 0x4et
        0xbt 0x57t
        0xfbt 0x79t
        0xd5t 0x52t
        0x99t 0x99t
        0x2ft 0x6et
    .end array-data

    .line 793
    :array_5
    .array-data 0x2
        0x2dt 0x4et
        0xbt 0x57t
        0xfbt 0x79t
        0xd5t 0x52t
        0x99t 0x99t
        0x2ft 0x6et
    .end array-data

    .line 801
    :array_6
    .array-data 0x2
        0xb3t 0x6ft
        0x80t 0x95t
        0xfbt 0x96t
        0xat 0x8at
    .end array-data

    .line 814
    :array_7
    .array-data 0x2
        0x2dt 0x4et
        0xfdt 0x56t
        0xfbt 0x79t
        0xa8t 0x52t
        0x99t 0x99t
        0x2ft 0x6et
    .end array-data

    .line 821
    :array_8
    .array-data 0x2
        0xb3t 0x6ft
        0xe8t 0x95t
        0x35t 0x75t
        0xaft 0x8bt
    .end array-data
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v12, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v9, Lcom/android/settings_ex/deviceinfo/Status$MyHandler;

    invoke-direct {v9, p0}, Lcom/android/settings_ex/deviceinfo/Status$MyHandler;-><init>(Lcom/android/settings_ex/deviceinfo/Status;)V

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const v9, 0x7f060015

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->addPreferencesFromResource(I)V

    const-string v9, "battery_status"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    .line 305
    const-string v9, "battery_level"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    .line 306
    const-string v9, "up_time"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    const-string v9, "meid_hexa"

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string v9, "meid_decimal"

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string v9, "[Status]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[onCreate] Utils.isMultiSimEnabled() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/android/settings_ex/Utils;->isMultiSimEnabled()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings_ex/Utils;->isMultiSimEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;->hideItemForDualSIM()V

    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;->dualSIMStatusCommon()V

    :goto_0
    return-void

    :cond_0
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    sget-object v9, Lcom/android/settings_ex/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f080056

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/android/settings_ex/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    .line 329
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 335
    const-string v9, "ro.build.target_operator"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/android/settings_ex/deviceinfo/Status;->operator_code:Ljava/lang/String;

    .line 339
    const-string v9, "signal_strength"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    .line 340
    const-string v9, "MPCS"

    sget-object v10, Lcom/android/settings_ex/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "channel"

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string v9, "sid"

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    :cond_2
    const-string v9, "DCM"

    sget-object v10, Lcom/android/settings_ex/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    :cond_3
    const-string v9, "eri_version"

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string v9, "life_time_call"

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;->hideItemForOperator()V

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_4

    sget-object v0, Lcom/android/settings_ex/deviceinfo/Status;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_9

    aget-object v4, v0, v3

    .local v4, key:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #len$:I
    :cond_4
    const-string v9, "ro.config.multimode_cdma"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "CDMA"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 370
    :cond_5
    const-string v9, "prl_version"

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :goto_2
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "CDMA"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 381
    const-string v9, "esn_number"

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v9, "meid_number"

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v9, "min_number"

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v9, "min_number"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0004

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 386
    const-string v9, "min_number"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    const v10, 0x7f08033b

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setTitle(I)V

    :cond_6
    const-string v9, "imei_sv"

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v9

    if-ne v9, v12, :cond_c

    .line 395
    const-string v9, "icc_id"

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v9, "imei"

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :goto_3
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v7

    .line 421
    .local v7, rawNumber:Ljava/lang/String;
    const-string v9, "KR"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 422
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "+82"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_7

    .line 423
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 427
    :cond_7
    const/4 v2, 0x0

    .line 428
    .local v2, formattedNumber:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_8
    const-string v9, "number"

    invoke-direct {p0, v9, v2}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    invoke-direct {v9, p0, v10}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v10, 0xc8

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v10, 0x12c

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .end local v2           #formattedNumber:Ljava/lang/String;
    .end local v7           #rawNumber:Ljava/lang/String;
    :cond_9
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;->setWifiStatus()V

    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;->setBtStatus()V

    const-string v9, "ro.product.device"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, device:Ljava/lang/String;
    const-string v9, "d1lkt"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string v9, "d1lsk"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string v9, "d1lu"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string v9, "l1kt"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string v9, "l1sk"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string v9, "l1u"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 457
    :cond_a
    sget-object v8, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 459
    .local v8, serial:Ljava/lang/String;
    const-string v9, "[Status]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "serialno: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    if-eqz v8, :cond_e

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    const-string v9, "serial_number"

    invoke-direct {p0, v9, v8}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1           #device:Ljava/lang/String;
    .end local v8           #serial:Ljava/lang/String;
    :cond_b
    const-string v9, "prl_version"

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    const-string v9, "imei"

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string v9, "icc_id"

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_d
    const-string v9, "imei"

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v10, "imei_sv"

    const-string v9, "phone"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v10, v9}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "esn_number"

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string v9, "meid_number"

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string v9, "min_number"

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string v9, "icc_id"

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_3

    .restart local v1       #device:Ljava/lang/String;
    .restart local v8       #serial:Ljava/lang/String;
    :cond_e
    const-string v9, "serial_number"

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 466
    .end local v8           #serial:Ljava/lang/String;
    :cond_f
    const-string v9, "SKT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    const-string v9, "serial_number"

    const-string v10, "0000000"

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    new-instance v6, Lcom/android/settings_ex/deviceinfo/Status$SerialHandler;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/deviceinfo/Status$SerialHandler;-><init>(Lcom/android/settings_ex/deviceinfo/Status;)V

    .local v6, mHandler:Lcom/android/settings_ex/deviceinfo/Status$SerialHandler;
    const-string v9, "LGU"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    const v10, 0x20035

    invoke-virtual {v6, v12}, Lcom/android/settings_ex/deviceinfo/Status$SerialHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/android/internal/telephony/Phone;->getModemStringItem(ILandroid/os/Message;)V

    goto/16 :goto_0

    .end local v6           #mHandler:Lcom/android/settings_ex/deviceinfo/Status$SerialHandler;
    :cond_10
    const-string v9, "serial_number"

    const-string v10, "000000"

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .restart local v6       #mHandler:Lcom/android/settings_ex/deviceinfo/Status$SerialHandler;
    :cond_11
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    const v10, 0x6000e

    invoke-virtual {v6, v12}, Lcom/android/settings_ex/deviceinfo/Status$SerialHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/android/internal/telephony/Phone;->getModemStringItem(ILandroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    invoke-static {}, Lcom/android/settings_ex/Utils;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-static {}, Lcom/android/settings_ex/Utils;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->updateSignalStrength()V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;->updateDataState()V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method updateSignalStrength()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .local v3, state:I
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, r:Landroid/content/res/Resources;
    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    const/4 v4, 0x3

    if-ne v4, v3, :cond_1

    .line 876
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 879
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v2

    .line 881
    .local v2, signalDbm:I
    if-ne v6, v2, :cond_2

    const/4 v2, 0x0

    .line 883
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v1

    .line 885
    .local v1, signalAsu:I
    if-ne v6, v1, :cond_3

    const/4 v1, 0x0

    .line 887
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f080077

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f080078

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 892
    .end local v0           #r:Landroid/content/res/Resources;
    .end local v1           #signalAsu:I
    .end local v2           #signalDbm:I
    .end local v3           #state:I
    :cond_4
    return-void
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 936
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 937
    .local v0, at:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 939
    .local v2, ut:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    const-wide/16 v2, 0x1

    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/Status;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 946
    :cond_1
    return-void
.end method
