.class public abstract Lcom/broadcom/bt/service/framework/BaseProxy;
.super Ljava/lang/Object;
.source "BaseProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final D:Z = true

.field public static final DEFAULT_BROADCAST_RECEIVER_PRIORITY:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "BaseProxy"


# instance fields
.field protected mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mContext:Landroid/content/Context;

.field protected mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

.field protected mIsAvailable:Z

.field protected mProxyAvailCb:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

.field protected mReceiverPriority:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/16 v0, 0xc8

    iput v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mReceiverPriority:I

    .line 100
    return-void
.end method

.method protected static actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .parameter "a1"
    .parameter "a2"
    .parameter "offset"

    .prologue
    .line 63
    if-ne p0, p1, :cond_0

    .line 64
    const/4 v1, 0x1

    .line 69
    :goto_0
    return v1

    .line 65
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 66
    .local v0, a1length:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 67
    const/4 v1, 0x0

    goto :goto_0

    .line 69
    :cond_1
    sub-int v1, v0, p2

    invoke-virtual {p0, p2, p1, p2, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "ctx"
    .parameter "cb"
    .parameter "pkgName"
    .parameter "className"

    .prologue
    .line 112
    const-string v2, "BaseProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create() cb= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p2, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", pkgName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p3, :cond_1

    const-string v1, "null"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", className"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p4, :cond_2

    const-string v1, "null"

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iput-object p1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mProxyAvailCb:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

    .line 118
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 119
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1

    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    move-object v1, p2

    .line 112
    goto :goto_0

    :cond_1
    move-object v1, p3

    goto :goto_1

    :cond_2
    move-object v1, p4

    goto :goto_2
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V

    .line 166
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 3

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    const-string v0, "BaseProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish() mContext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->finish()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :cond_1
    monitor-exit p0

    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized finishEventCallbackHandler()V
    .locals 1

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->finish()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract init(Landroid/os/IBinder;)Z
.end method

.method protected declared-synchronized initEventCallbackHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;-><init>(Lcom/broadcom/bt/service/framework/BaseProxy;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    .line 82
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->start()V

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    iget-object v0, v0, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 85
    const-wide/16 v0, 0x64

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    goto :goto_0

    .line 89
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    iget-object v0, v0, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->mHandler:Landroid/os/Handler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    const-string v0, "BaseProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected() name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/broadcom/bt/service/framework/BaseProxy;->init(Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mProxyAvailCb:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

    if-eqz v0, :cond_1

    .line 202
    :cond_0
    const-string v0, "BaseProxy"

    const-string v1, "Unable to create proxy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mProxyAvailCb:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mProxyAvailCb:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

    invoke-interface {v0, p0}, Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;->onProxyAvailable(Ljava/lang/Object;)V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mProxyAvailCb:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :cond_2
    monitor-exit p0

    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    const-string v0, "BaseProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected() name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    monitor-exit p0

    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requiresAccessProcessing()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public setAccess(IZLjava/lang/Object;)V
    .locals 0
    .parameter "opCode"
    .parameter "allow"
    .parameter "data"

    .prologue
    .line 162
    return-void
.end method
