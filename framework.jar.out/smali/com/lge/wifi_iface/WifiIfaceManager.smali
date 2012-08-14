.class public Lcom/lge/wifi_iface/WifiIfaceManager;
.super Ljava/lang/Object;
.source "WifiIfaceManager.java"


# static fields
.field private static sWiFiOffloadingIfaceIface:Lcom/lge/wifi_iface/WiFiOffloadingIfaceIface;

.field private static sWifiExtServiceIface:Lcom/lge/wifi_iface/WifiExtSvcIfaceIface;

.field private static sWifiMHPIfaceIface:Lcom/lge/wifi_iface/WifiMHPIfaceIface;

.field private static sWifiSapIfaceIface:Lcom/lge/wifi_iface/WifiSapIfaceIface;

.field private static sWifiServiceExtIface:Lcom/lge/wifi_iface/WifiServiceExtIface;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 10
    new-instance v6, Lcom/lge/wifi_iface/DefaultWifiExtServiceIface;

    invoke-direct {v6}, Lcom/lge/wifi_iface/DefaultWifiExtServiceIface;-><init>()V

    sput-object v6, Lcom/lge/wifi_iface/WifiIfaceManager;->sWifiExtServiceIface:Lcom/lge/wifi_iface/WifiExtSvcIfaceIface;

    .line 11
    new-instance v6, Lcom/lge/wifi_iface/DefaultWifiServiceExt;

    invoke-direct {v6}, Lcom/lge/wifi_iface/DefaultWifiServiceExt;-><init>()V

    sput-object v6, Lcom/lge/wifi_iface/WifiIfaceManager;->sWifiServiceExtIface:Lcom/lge/wifi_iface/WifiServiceExtIface;

    .line 12
    new-instance v6, Lcom/lge/wifi_iface/DefaultWifiSapIface;

    invoke-direct {v6}, Lcom/lge/wifi_iface/DefaultWifiSapIface;-><init>()V

    sput-object v6, Lcom/lge/wifi_iface/WifiIfaceManager;->sWifiSapIfaceIface:Lcom/lge/wifi_iface/WifiSapIfaceIface;

    .line 13
    new-instance v6, Lcom/lge/wifi_iface/DefaultWifiMHPIface;

    invoke-direct {v6}, Lcom/lge/wifi_iface/DefaultWifiMHPIface;-><init>()V

    sput-object v6, Lcom/lge/wifi_iface/WifiIfaceManager;->sWifiMHPIfaceIface:Lcom/lge/wifi_iface/WifiMHPIfaceIface;

    .line 14
    new-instance v6, Lcom/lge/wifi_iface/DefaultWiFiOffloadingIface;

    invoke-direct {v6}, Lcom/lge/wifi_iface/DefaultWiFiOffloadingIface;-><init>()V

    sput-object v6, Lcom/lge/wifi_iface/WifiIfaceManager;->sWiFiOffloadingIfaceIface:Lcom/lge/wifi_iface/WiFiOffloadingIfaceIface;

    .line 17
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/com.lge.wifiext.jar"

    const-class v7, Lcom/lge/wifi_iface/WifiIfaceManager;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 20
    .local v0, cloader:Ljava/lang/ClassLoader;
    :try_start_0
    const-string v6, "com.lge.wifiext.WifiExtServiceIface"

    const/4 v7, 0x1

    invoke-static {v6, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 21
    .local v5, wifiExtServiceClass:Ljava/lang/Class;
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/wifi_iface/WifiExtSvcIfaceIface;

    sput-object v6, Lcom/lge/wifi_iface/WifiIfaceManager;->sWifiExtServiceIface:Lcom/lge/wifi_iface/WifiExtSvcIfaceIface;

    .line 23
    const-string v6, "com.lge.wifiext.WifiServiceExt"

    const/4 v7, 0x1

    invoke-static {v6, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 30
    .local v2, extClass:Ljava/lang/Class;
    const-string v6, "com.lge.wifiext.wifiSap.WifiSapIface"

    const/4 v7, 0x1

    invoke-static {v6, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 37
    .local v4, sapIfaceClass:Ljava/lang/Class;
    const-string v6, "com.lge.wifiext.mobilehotspot.WifiMHPIface"

    const/4 v7, 0x1

    invoke-static {v6, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 44
    .local v3, mhpIfaceClass:Ljava/lang/Class;
    const-string v6, "com.lge.wifiext.offloading.WiFiOffloadingIface"

    const/4 v7, 0x1

    invoke-static {v6, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v2           #extClass:Ljava/lang/Class;
    .end local v3           #mhpIfaceClass:Ljava/lang/Class;
    .end local v4           #sapIfaceClass:Ljava/lang/Class;
    .end local v5           #wifiExtServiceClass:Ljava/lang/Class;
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "WifiIfaceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Class not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static getWiFiOffloadingIfaceIface()Lcom/lge/wifi_iface/WiFiOffloadingIfaceIface;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/lge/wifi_iface/WifiIfaceManager;->sWiFiOffloadingIfaceIface:Lcom/lge/wifi_iface/WiFiOffloadingIfaceIface;

    return-object v0
.end method

.method public static getWifiExtServiceIface()Lcom/lge/wifi_iface/WifiExtSvcIfaceIface;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/lge/wifi_iface/WifiIfaceManager;->sWifiExtServiceIface:Lcom/lge/wifi_iface/WifiExtSvcIfaceIface;

    return-object v0
.end method

.method public static getWifiMHPIfaceIface()Lcom/lge/wifi_iface/WifiMHPIfaceIface;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/lge/wifi_iface/WifiIfaceManager;->sWifiMHPIfaceIface:Lcom/lge/wifi_iface/WifiMHPIfaceIface;

    return-object v0
.end method

.method public static getWifiSapIfaceIface()Lcom/lge/wifi_iface/WifiSapIfaceIface;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/lge/wifi_iface/WifiIfaceManager;->sWifiSapIfaceIface:Lcom/lge/wifi_iface/WifiSapIfaceIface;

    return-object v0
.end method

.method public static getWifiServiceExtIface()Lcom/lge/wifi_iface/WifiServiceExtIface;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/lge/wifi_iface/WifiIfaceManager;->sWifiServiceExtIface:Lcom/lge/wifi_iface/WifiServiceExtIface;

    return-object v0
.end method

.method public static setWiFiOffloadingIfaceIface(Lcom/lge/wifi_iface/WiFiOffloadingIfaceIface;)V
    .locals 0
    .parameter "iface"

    .prologue
    .line 110
    sput-object p0, Lcom/lge/wifi_iface/WifiIfaceManager;->sWiFiOffloadingIfaceIface:Lcom/lge/wifi_iface/WiFiOffloadingIfaceIface;

    .line 111
    return-void
.end method

.method public static setWifiMHPIfaceIface(Lcom/lge/wifi_iface/WifiMHPIfaceIface;)V
    .locals 0
    .parameter "iface"

    .prologue
    .line 98
    sput-object p0, Lcom/lge/wifi_iface/WifiIfaceManager;->sWifiMHPIfaceIface:Lcom/lge/wifi_iface/WifiMHPIfaceIface;

    .line 99
    return-void
.end method

.method public static setWifiSapIfaceIface(Lcom/lge/wifi_iface/WifiSapIfaceIface;)V
    .locals 0
    .parameter "iface"

    .prologue
    .line 86
    sput-object p0, Lcom/lge/wifi_iface/WifiIfaceManager;->sWifiSapIfaceIface:Lcom/lge/wifi_iface/WifiSapIfaceIface;

    .line 87
    return-void
.end method

.method public static setWifiServiceExtIface(Lcom/lge/wifi_iface/WifiServiceExtIface;)V
    .locals 0
    .parameter "iface"

    .prologue
    .line 74
    sput-object p0, Lcom/lge/wifi_iface/WifiIfaceManager;->sWifiServiceExtIface:Lcom/lge/wifi_iface/WifiServiceExtIface;

    .line 75
    return-void
.end method
