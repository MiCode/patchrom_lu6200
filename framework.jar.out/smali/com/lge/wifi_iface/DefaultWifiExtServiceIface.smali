.class public Lcom/lge/wifi_iface/DefaultWifiExtServiceIface;
.super Ljava/lang/Object;
.source "DefaultWifiExtServiceIface.java"

# interfaces
.implements Lcom/lge/wifi_iface/WifiExtSvcIfaceIface;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultWifiExtServiceIface"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public startService(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 22
    const-string v0, "DefaultWifiExtServiceIface"

    const-string/jumbo v1, "startService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method
