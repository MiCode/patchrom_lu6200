.class public interface abstract Lcom/lge/wifi_iface/WifiSapIfaceIface;
.super Ljava/lang/Object;
.source "WifiSapIfaceIface.java"


# virtual methods
.method public abstract getAllAssocMacListATT()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setNstartMonitoring(ZLandroid/net/wifi/WifiConfiguration;II)Z
.end method

.method public abstract setSoftApWifiCfg(Landroid/net/wifi/WifiConfiguration;II)Z
.end method

.method public abstract setVZWNstartMonitoring(ZLandroid/net/wifi/WifiVZWConfiguration;II)Z
.end method

.method public abstract setVZWSoftApWifiCfg(Landroid/net/wifi/WifiVZWConfiguration;II)Z
.end method
