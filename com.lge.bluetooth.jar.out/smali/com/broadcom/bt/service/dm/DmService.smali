.class public Lcom/broadcom/bt/service/dm/DmService;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "DmService.java"


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "bluetooth_dm_service"

.field private static final TAG:Ljava/lang/String; = "DmService-proxy"

.field private static mProxy:Lcom/broadcom/bt/service/dm/DmService;


# instance fields
.field private mService:Lcom/broadcom/bt/service/dm/IDmService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 78
    return-void
.end method

.method public static getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .locals 3
    .parameter "ctx"
    .parameter "cb"

    .prologue
    .line 65
    const-string v1, "bluetooth_dm_service"

    invoke-static {p0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    const-string v1, "DmService-proxy"

    const-string v2, "Unable to get DmService proxy: service is not enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v1, 0x0

    .line 72
    :goto_0
    return v1

    .line 71
    :cond_0
    new-instance v0, Lcom/broadcom/bt/service/dm/DmService;

    invoke-direct {v0}, Lcom/broadcom/bt/service/dm/DmService;-><init>()V

    .line 72
    .local v0, p:Lcom/broadcom/bt/service/dm/DmService;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.system.DmAppService"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/broadcom/bt/service/dm/DmService;->create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 117
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/dm/DmService;->mService:Lcom/broadcom/bt/service/dm/IDmService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected init(Landroid/os/IBinder;)Z
    .locals 4
    .parameter "service"

    .prologue
    .line 86
    const-string v1, "DmService-proxy"

    const-string v2, "init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :try_start_0
    invoke-static {p1}, Lcom/broadcom/bt/service/dm/IDmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/dm/IDmService;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/dm/DmService;->mService:Lcom/broadcom/bt/service/dm/IDmService;

    .line 89
    const-string v1, "DmService-proxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mService:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/service/dm/DmService;->mService:Lcom/broadcom/bt/service/dm/IDmService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    const/4 v1, 0x1

    .line 93
    :goto_0
    return v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "DmService-proxy"

    const-string v2, "Unable to initialize proxy with service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEQGainConfig(IIIII)V
    .locals 7
    .parameter "gain1"
    .parameter "gain2"
    .parameter "gain3"
    .parameter "gain4"
    .parameter "gain5"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/broadcom/bt/service/dm/DmService;->mService:Lcom/broadcom/bt/service/dm/IDmService;

    if-eqz v0, :cond_0

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/dm/DmService;->mService:Lcom/broadcom/bt/service/dm/IDmService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/broadcom/bt/service/dm/IDmService;->setEQGainConfig(IIIII)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v6

    .line 134
    .local v6, t:Ljava/lang/Throwable;
    const-string v0, "DmService-proxy"

    const-string v1, "setEQGainConfig"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setEQMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 120
    iget-object v1, p0, Lcom/broadcom/bt/service/dm/DmService;->mService:Lcom/broadcom/bt/service/dm/IDmService;

    if-eqz v1, :cond_0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/dm/DmService;->mService:Lcom/broadcom/bt/service/dm/IDmService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/dm/IDmService;->setEQMode(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "DmService-proxy"

    const-string v2, "setEQMode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
