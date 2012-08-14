.class public Lcom/lge/wifi_iface/DefaultWifiMHPIface;
.super Ljava/lang/Object;
.source "DefaultWifiMHPIface.java"

# interfaces
.implements Lcom/lge/wifi_iface/WifiMHPIfaceIface;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultWifiMHPIface"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public isMHPEnabled()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public startService(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 24
    const-string v0, "DefaultWifiMHPIface"

    const-string/jumbo v1, "startService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-void
.end method
