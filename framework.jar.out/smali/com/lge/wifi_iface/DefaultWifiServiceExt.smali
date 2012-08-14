.class public Lcom/lge/wifi_iface/DefaultWifiServiceExt;
.super Ljava/lang/Object;
.source "DefaultWifiServiceExt.java"

# interfaces
.implements Lcom/lge/wifi_iface/WifiServiceExtIface;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultWifiServiceExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public WifiOffHandshakeWithIMS()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public WifiOffHandshakeWithIMS_Clear()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public WifiOffHandshakeWithIMS_ReplyCheck()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    .line 54
    const-string v0, "DefaultWifiServiceExt"

    const-string v1, "addOrUpdateNetwork"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public changeSsidString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "value"
    .parameter "bQuoted"

    .prologue
    .line 64
    move-object v0, p1

    .line 66
    .local v0, retString:Ljava/lang/String;
    const-string v1, "DefaultWifiServiceExt"

    const-string v2, "changeSsidString: Nothing to do"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-object v0
.end method

.method public checkFraudAP(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "mWifiConfig"

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public checkFraudAP(Landroid/net/wifi/WifiInfo;)V
    .locals 0
    .parameter "mWifiInfo"

    .prologue
    .line 143
    return-void
.end method

.method public checkRemovableNetwork(I)Z
    .locals 2
    .parameter "netId"

    .prologue
    .line 59
    const-string v0, "DefaultWifiServiceExt"

    const-string v1, "checkRemovableNetwork"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public checkWifiStartPossible(Ljava/lang/String;I)V
    .locals 0
    .parameter "value"
    .parameter "state"

    .prologue
    .line 77
    return-void
.end method

.method public fetchSSID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    const-string v0, "DefaultWifiServiceExt"

    const-string v1, "fetchSSID: Nothing to do"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "netId"
    .parameter "ssidVarName"

    .prologue
    .line 101
    move-object v0, p2

    .line 102
    .local v0, retString:Ljava/lang/String;
    const-string v1, "DefaultWifiServiceExt"

    const-string v2, "getNetworkVariableCommand: Nothing to do"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-object v0
.end method

.method public getSecurityType(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .parameter "config"

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiActivationWhileCharging()Lcom/lge/wifi_iface/WifiActivationWhileChargingIface;
    .locals 2

    .prologue
    .line 49
    const-string v0, "DefaultWifiServiceExt"

    const-string v1, "getWifiActivationWhileCharging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiAdhocDisable()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public getWifiApDisableIfNotUsed(Ljava/lang/String;)Lcom/lge/wifi_iface/WifiApDisableIfNotUsedIface;
    .locals 2
    .parameter "softApIface"

    .prologue
    .line 44
    const-string v0, "DefaultWifiServiceExt"

    const-string v1, "getWifiApDisableIfNotUsed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiOffDelayIfNotUsed()Lcom/lge/wifi_iface/WifiOffDelayIfNotUsedIface;
    .locals 2

    .prologue
    .line 34
    const-string v0, "DefaultWifiServiceExt"

    const-string v1, "getWifiOffDelayIfNotUsed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiP2pOffDelayIfNotUsed()Lcom/lge/wifi_iface/WifiP2pOffDelayIfNotUsedIface;
    .locals 2

    .prologue
    .line 39
    const-string v0, "DefaultWifiServiceExt"

    const-string v1, "getWifiP2pOffDelayIfNotUsed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public initWifiSerivceExt(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;)V
    .locals 2
    .parameter "context"
    .parameter "wifiStateMachine"

    .prologue
    .line 29
    const-string v0, "DefaultWifiServiceExt"

    const-string/jumbo v1, "initWifiSerivceExt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void
.end method

.method public isHotspotSSIDKSC5601(Ljava/lang/StringBuilder;)Z
    .locals 1
    .parameter "cmd"

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public isUPulsMsCHAPv2AP(Ljava/lang/String;)Z
    .locals 1
    .parameter "ssid"

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public sendP2pStateChangedBroadcast(I)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 86
    const-string v0, "DefaultWifiServiceExt"

    const-string/jumbo v1, "sendP2pStateChangedBroadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method public setKeepAlivePacket(Landroid/net/wifi/WifiInfo;)V
    .locals 0
    .parameter "mWifiInfo"

    .prologue
    .line 80
    return-void
.end method

.method public setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "netId"
    .parameter "ssidVarName"
    .parameter "SSID"

    .prologue
    .line 96
    const-string v0, "DefaultWifiServiceExt"

    const-string/jumbo v1, "setNetworkVariableCommand: Nothing to do"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public setScanResultsCommand()Ljava/util/List;
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
    .line 107
    const-string v0, "DefaultWifiServiceExt"

    const-string/jumbo v1, "setScanResultsCommand: Nothing to do"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateConnectionInfo(Landroid/net/wifi/WifiInfo;)V
    .locals 0
    .parameter "mWifiInfo"

    .prologue
    .line 71
    return-void
.end method

.method public waitForEvent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    const-string v0, "DefaultWifiServiceExt"

    const-string/jumbo v1, "waitForEvent: Nothing to do"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v0, 0x0

    return-object v0
.end method
