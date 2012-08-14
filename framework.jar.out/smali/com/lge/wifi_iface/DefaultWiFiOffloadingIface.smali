.class public Lcom/lge/wifi_iface/DefaultWiFiOffloadingIface;
.super Ljava/lang/Object;
.source "DefaultWiFiOffloadingIface.java"

# interfaces
.implements Lcom/lge/wifi_iface/WiFiOffloadingIfaceIface;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultWiFiOffloadingIface"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public disableBackgroundOffloading()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public disableWifioffloadTimerReminder()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public getWifiOffloadingStart()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public isOffloadingAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public isOffloadingReminder_on()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public isOffloadingTimer_on()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public isWifiOffloadingEnabled()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public processingOffloading()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public resetWifioffloadTimerReminder(I)Z
    .locals 1
    .parameter "check"

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public setWifiOffloadOngoing(Z)V
    .locals 0
    .parameter "OffloadOngoing"

    .prologue
    .line 62
    return-void
.end method

.method public setWifiOffloadingStart(I)V
    .locals 0
    .parameter "WiFiOffloadingStart"

    .prologue
    .line 70
    return-void
.end method

.method public startService(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 25
    const-string v0, "DefaultWiFiOffloadingIface"

    const-string/jumbo v1, "startService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void
.end method

.method public stopWifioffloadTimer()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method
