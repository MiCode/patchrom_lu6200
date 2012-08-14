.class public Lcom/lge/wifi_iface/DefaultWifiSapIface;
.super Ljava/lang/Object;
.source "DefaultWifiSapIface.java"

# interfaces
.implements Lcom/lge/wifi_iface/WifiSapIfaceIface;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultWifiSapIface"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public getAllAssocMacListATT()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    const-string v0, "DefaultWifiSapIface"

    const-string v1, "getAllAssocMacListATT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public setNstartMonitoring(ZLandroid/net/wifi/WifiConfiguration;II)Z
    .locals 2
    .parameter "bEnable"
    .parameter "wifiConfig"
    .parameter "channel"
    .parameter "maxScb"

    .prologue
    .line 38
    const-string v0, "DefaultWifiSapIface"

    const-string/jumbo v1, "setNstartMonitoring"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public setSoftApWifiCfg(Landroid/net/wifi/WifiConfiguration;II)Z
    .locals 2
    .parameter "wifiConfig"
    .parameter "channel"
    .parameter "maxScb"

    .prologue
    .line 43
    const-string v0, "DefaultWifiSapIface"

    const-string/jumbo v1, "setSoftApWifiCfg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public setVZWNstartMonitoring(ZLandroid/net/wifi/WifiVZWConfiguration;II)Z
    .locals 1
    .parameter "bEnable"
    .parameter "wifiConfig"
    .parameter "channel"
    .parameter "maxScb"

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public setVZWSoftApWifiCfg(Landroid/net/wifi/WifiVZWConfiguration;II)Z
    .locals 1
    .parameter "wifiConfig"
    .parameter "channel"
    .parameter "maxScb"

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method
