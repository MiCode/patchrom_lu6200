.class public interface abstract Lcom/lge/wifi_iface/WifiServiceExtIface;
.super Ljava/lang/Object;
.source "WifiServiceExtIface.java"


# virtual methods
.method public abstract WifiOffHandshakeWithIMS()V
.end method

.method public abstract WifiOffHandshakeWithIMS_Clear()V
.end method

.method public abstract WifiOffHandshakeWithIMS_ReplyCheck()Z
.end method

.method public abstract addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z
.end method

.method public abstract changeSsidString(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract checkFraudAP(Landroid/net/wifi/WifiInfo;)V
.end method

.method public abstract checkRemovableNetwork(I)Z
.end method

.method public abstract checkWifiStartPossible(Ljava/lang/String;I)V
.end method

.method public abstract fetchSSID()Ljava/lang/String;
.end method

.method public abstract getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSecurityType(Landroid/net/wifi/WifiConfiguration;)Z
.end method

.method public abstract getWifiActivationWhileCharging()Lcom/lge/wifi_iface/WifiActivationWhileChargingIface;
.end method

.method public abstract getWifiAdhocDisable()Z
.end method

.method public abstract getWifiApDisableIfNotUsed(Ljava/lang/String;)Lcom/lge/wifi_iface/WifiApDisableIfNotUsedIface;
.end method

.method public abstract getWifiOffDelayIfNotUsed()Lcom/lge/wifi_iface/WifiOffDelayIfNotUsedIface;
.end method

.method public abstract getWifiP2pOffDelayIfNotUsed()Lcom/lge/wifi_iface/WifiP2pOffDelayIfNotUsedIface;
.end method

.method public abstract initWifiSerivceExt(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;)V
.end method

.method public abstract isHotspotSSIDKSC5601(Ljava/lang/StringBuilder;)Z
.end method

.method public abstract isUPulsMsCHAPv2AP(Ljava/lang/String;)Z
.end method

.method public abstract sendP2pStateChangedBroadcast(I)V
.end method

.method public abstract setKeepAlivePacket(Landroid/net/wifi/WifiInfo;)V
.end method

.method public abstract setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setScanResultsCommand()Ljava/util/List;
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

.method public abstract updateConnectionInfo(Landroid/net/wifi/WifiInfo;)V
.end method

.method public abstract waitForEvent()Ljava/lang/String;
.end method
