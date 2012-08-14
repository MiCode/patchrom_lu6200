.class public Lcom/lge/wifi/WifiLgeConfig;
.super Ljava/lang/Object;
.source "WifiLgeConfig.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final CONFIG_LGE_WLAN_PATCH:Z = false

#the value of this static final field might be set in the static constructor
.field public static final CONFIG_LGE_WLAN_QCOM_PATCH:Z = false

#the value of this static final field might be set in the static constructor
.field public static final CONFIG_LGE_WLAN_TEST:Z = false

#the value of this static final field might be set in the static constructor
.field public static final CONFIG_LGE_WLAN_TEST_PROFILE:Z = false

#the value of this static final field might be set in the static constructor
.field private static final KSC5601SSID:Z = false

.field private static final LOCAL_LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "WifiLgeConfig"

.field private static mContext:Landroid/content/Context;

.field private static mInitKsc5601Ssid:Z

.field private static final mMobileHotspot:Z

.field private static final mTargetCountry:Ljava/lang/String;

.field private static final mTargetOperator:Ljava/lang/String;

.field private static final mWiFiOffloading:Z

.field private static final mWifiIfaceName:Ljava/lang/String;

.field private static mWifiLgeConfig:Lcom/lge/wifi/WifiLgeConfig;

.field private static final mWifiOffdelayAfter15alarm:Z

.field private static final mWlanChipVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 20
    sput-object v0, Lcom/lge/wifi/WifiLgeConfig;->mWifiLgeConfig:Lcom/lge/wifi/WifiLgeConfig;

    .line 21
    sput-object v0, Lcom/lge/wifi/WifiLgeConfig;->mContext:Landroid/content/Context;

    .line 27
    const-string/jumbo v0, "wifi.lge.patch"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    .line 28
    const-string/jumbo v0, "wlan.chip.vendor"

    const-string v1, "brcm"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_QCOM_PATCH:Z

    .line 33
    const-string/jumbo v0, "wifi.lge.test"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_TEST:Z

    .line 34
    const-string/jumbo v0, "wifi.lge.test_profile"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_TEST_PROFILE:Z

    .line 41
    const-string/jumbo v0, "wlan.chip.version"

    const-string v1, "bcm4330"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/wifi/WifiLgeConfig;->mWlanChipVersion:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "wifi.interface"

    const-string/jumbo v1, "wlan0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/wifi/WifiLgeConfig;->mWifiIfaceName:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "ro.build.target_operator"

    const-string v1, "OPEN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/wifi/WifiLgeConfig;->mTargetOperator:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "ro.build.target_country"

    const-string v1, "COM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/wifi/WifiLgeConfig;->mTargetCountry:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "wifi.lge.hanglessid"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/WifiLgeConfig;->KSC5601SSID:Z

    .line 62
    const-string/jumbo v0, "wifi.lge.offdelay"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/WifiLgeConfig;->mWifiOffdelayAfter15alarm:Z

    .line 67
    sput-boolean v2, Lcom/lge/wifi/WifiLgeConfig;->mInitKsc5601Ssid:Z

    .line 73
    const-string/jumbo v0, "wifi.lge.offloading"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/WifiLgeConfig;->mWiFiOffloading:Z

    .line 79
    const-string/jumbo v0, "wifi.lge.mhp"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/WifiLgeConfig;->mMobileHotspot:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    sput-object p1, Lcom/lge/wifi/WifiLgeConfig;->mContext:Landroid/content/Context;

    .line 92
    return-void
.end method

.method public static getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/lge/wifi/WifiLgeConfig;->mTargetCountry:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/lge/wifi/WifiLgeConfig;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/lge/wifi/WifiLgeConfig;->mWifiLgeConfig:Lcom/lge/wifi/WifiLgeConfig;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/lge/wifi/WifiLgeConfig;

    invoke-direct {v0}, Lcom/lge/wifi/WifiLgeConfig;-><init>()V

    sput-object v0, Lcom/lge/wifi/WifiLgeConfig;->mWifiLgeConfig:Lcom/lge/wifi/WifiLgeConfig;

    .line 100
    :cond_0
    sget-object v0, Lcom/lge/wifi/WifiLgeConfig;->mWifiLgeConfig:Lcom/lge/wifi/WifiLgeConfig;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/wifi/WifiLgeConfig;
    .locals 1
    .parameter "context"

    .prologue
    .line 104
    sget-object v0, Lcom/lge/wifi/WifiLgeConfig;->mWifiLgeConfig:Lcom/lge/wifi/WifiLgeConfig;

    if-nez v0, :cond_1

    .line 105
    new-instance v0, Lcom/lge/wifi/WifiLgeConfig;

    invoke-direct {v0, p0}, Lcom/lge/wifi/WifiLgeConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/wifi/WifiLgeConfig;->mWifiLgeConfig:Lcom/lge/wifi/WifiLgeConfig;

    .line 110
    :cond_0
    :goto_0
    sget-object v0, Lcom/lge/wifi/WifiLgeConfig;->mWifiLgeConfig:Lcom/lge/wifi/WifiLgeConfig;

    return-object v0

    .line 106
    :cond_1
    sget-object v0, Lcom/lge/wifi/WifiLgeConfig;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 107
    sput-object p0, Lcom/lge/wifi/WifiLgeConfig;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private getMccMncInfo()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 218
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 220
    .local v1, simMccMnc:[Ljava/lang/String;
    sget-object v2, Lcom/lge/wifi/WifiLgeConfig;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    move-object v1, v3

    .line 237
    .end local v1           #simMccMnc:[Ljava/lang/String;
    :goto_0
    return-object v1

    .line 226
    .restart local v1       #simMccMnc:[Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    sget-object v2, Lcom/lge/wifi/WifiLgeConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 229
    const/4 v4, 0x1

    sget-object v2, Lcom/lge/wifi/WifiLgeConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 231
    const-string v2, "WifiLgeConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMccMncInfo: MCC ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] MNC ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v2, "WifiLgeConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMccMncInfo : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 234
    goto :goto_0
.end method

.method public static getOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/lge/wifi/WifiLgeConfig;->mTargetOperator:Ljava/lang/String;

    return-object v0
.end method

.method public static useChangeSsid()Z
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method public static useDefaultWifiOn()Z
    .locals 2

    .prologue
    .line 149
    invoke-static {}, Lcom/lge/wifi/WifiLgeConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/wifi/WifiLgeConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    :cond_0
    const/4 v0, 0x1

    .line 155
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useDefaultWifiSleepPolicy()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 162
    const-string/jumbo v2, "wifi.lge.sleeppolicy"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 164
    .local v0, wifiSleepPolicy:I
    packed-switch v0, :pswitch_data_0

    .line 170
    const-string v2, "WifiLgeConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown wifiSleepPolicy : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 173
    .end local v0           #wifiSleepPolicy:I
    :pswitch_0
    return v0

    .line 164
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static useKoreanSsid()Z
    .locals 1

    .prologue
    .line 201
    sget-boolean v0, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/lge/wifi/WifiLgeConfig;->KSC5601SSID:Z

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, 0x1

    .line 204
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useKoreanSsid(Ljava/lang/String;)Z
    .locals 1
    .parameter "SSID"

    .prologue
    .line 208
    sget-boolean v0, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/lge/wifi/WifiLgeConfig;->KSC5601SSID:Z

    if-eqz v0, :cond_0

    .line 210
    const-string/jumbo v0, "\u200b\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    const/4 v0, 0x1

    .line 214
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useMobileHotspot()Z
    .locals 1

    .prologue
    .line 266
    sget-boolean v0, Lcom/lge/wifi/WifiLgeConfig;->mMobileHotspot:Z

    return v0
.end method

.method public static useOpProfile()Z
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public static useWiFiOffloading()Z
    .locals 2

    .prologue
    .line 256
    const-string/jumbo v0, "wifi.lge.offloading"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static useWifiActivationWhileCharging()Z
    .locals 2

    .prologue
    .line 181
    invoke-static {}, Lcom/lge/wifi/WifiLgeConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const/4 v0, 0x1

    .line 185
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useWifiOffDelayAfter15alarm()Z
    .locals 1

    .prologue
    .line 244
    sget-boolean v0, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/lge/wifi/WifiLgeConfig;->mWifiOffdelayAfter15alarm:Z

    if-eqz v0, :cond_0

    .line 245
    const/4 v0, 0x1

    .line 247
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkMccMnc(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "mcc"
    .parameter "mnc"

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method
