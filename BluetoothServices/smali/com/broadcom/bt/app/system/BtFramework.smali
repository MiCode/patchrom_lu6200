.class public Lcom/broadcom/bt/app/system/BtFramework;
.super Landroid/app/Application;
.source "BtFramework.java"


# static fields
.field private static instance:Lcom/broadcom/bt/app/system/BtFramework;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 38
    const-string v0, "BtFramework"

    const-string v1, "****Constructor called*************"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sput-object p0, Lcom/broadcom/bt/app/system/BtFramework;->instance:Lcom/broadcom/bt/app/system/BtFramework;

    .line 40
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 48
    const-string v0, "BtFramework"

    const-string v1, "Loading BrcmBluetoothServices package...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isStandaloneProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "BtFramework"

    const-string v1, "IsStandaloneProcess = true...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v0, "BtFramework"

    const-string v1, "Soft On/Off enabled...Starting FM services..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {p0}, Lcom/broadcom/bt/service/fm/FmServiceManager;->init(Landroid/content/Context;)V

    .line 60
    invoke-static {p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->init(Landroid/content/Context;)V

    .line 63
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->onBluetoothEnabled()V

    .line 73
    :cond_0
    return-void
.end method
