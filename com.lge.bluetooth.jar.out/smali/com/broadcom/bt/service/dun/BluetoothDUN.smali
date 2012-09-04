.class public final Lcom/broadcom/bt/service/dun/BluetoothDUN;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothDUN.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/dun/BluetoothDUN$1;,
        Lcom/broadcom/bt/service/dun/BluetoothDUN$DUNBroadcastReceiver;,
        Lcom/broadcom/bt/service/dun/BluetoothDUN$DUNCallback;
    }
.end annotation


# static fields
.field public static final ACTION_ON_PORT_STATE_CHANGE:Ljava/lang/String; = null

.field static final ACTION_PREFIX:Ljava/lang/String; = "com.broadcom.bt.app.dun.action."

#the value of this static final field might be set in the static constructor
.field static final ACTION_PREFIX_LENGTH:I = 0x0

.field public static final EXTRA_ADDR:Ljava/lang/String; = "ADDR"

.field public static final EXTRA_APPID:Ljava/lang/String; = "APPID"

.field public static final EXTRA_PORTSTATE:Ljava/lang/String; = "PORTSTATE"

.field public static final SERVICE_NAME:Ljava/lang/String; = "bluetooth_dun"

.field private static final TAG:Ljava/lang/String; = "BluetoothDUN"

.field private static final V:Z = true


# instance fields
.field private mCallback:Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;

.field private mEventHandler:Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;

.field private mService:Lcom/broadcom/bt/service/dun/IBluetoothDUN;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 145
    const-string v0, "com.broadcom.bt.app.dun.action."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->ACTION_PREFIX_LENGTH:I

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/broadcom/bt/service/dun/BluetoothDUN;->ACTION_PREFIX_LENGTH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ON_PORT_STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->ACTION_ON_PORT_STATE_CHANGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mEventHandler:Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;

    .line 220
    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/dun/BluetoothDUN;)Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mEventHandler:Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 124
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/dun/BluetoothDUN;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 468
    if-nez p0, :cond_0

    .line 469
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 471
    .restart local p0
    :cond_0
    sget-object v0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->ACTION_ON_PORT_STATE_CHANGE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 472
    return-object p0
.end method

.method public static getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .locals 3
    .parameter "ctx"
    .parameter "cb"

    .prologue
    .line 208
    const-string v1, "bluetooth_dun"

    invoke-static {p0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    const-string v1, "BluetoothDUN"

    const-string v2, "Unable to get BluetoothFTP proxy: service is not enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v1, 0x0

    .line 214
    :goto_0
    return v1

    .line 213
    :cond_0
    new-instance v0, Lcom/broadcom/bt/service/dun/BluetoothDUN;

    invoke-direct {v0}, Lcom/broadcom/bt/service/dun/BluetoothDUN;-><init>()V

    .line 214
    .local v0, p:Lcom/broadcom/bt/service/dun/BluetoothDUN;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.system.DUNService"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/broadcom/bt/service/dun/BluetoothDUN;->create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 274
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 275
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 2

    .prologue
    .line 250
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mEventHandler:Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;

    if-eqz v0, :cond_0

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mEventHandler:Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 269
    :cond_1
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit p0

    return-void

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAllPortStatus()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 515
    iget-object v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mService:Lcom/broadcom/bt/service/dun/IBluetoothDUN;

    if-eqz v1, :cond_0

    .line 517
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mService:Lcom/broadcom/bt/service/dun/IBluetoothDUN;

    invoke-interface {v1}, Lcom/broadcom/bt/service/dun/IBluetoothDUN;->getAllPortStatus()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 522
    :goto_0
    return-object v1

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothDUN"

    const-string v2, "getAllPortStatus"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 522
    .end local v0           #t:Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected init(Landroid/os/IBinder;)Z
    .locals 3
    .parameter "service"

    .prologue
    .line 229
    :try_start_0
    invoke-static {p1}, Lcom/broadcom/bt/service/dun/IBluetoothDUN$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/dun/IBluetoothDUN;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mService:Lcom/broadcom/bt/service/dun/IBluetoothDUN;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    const/4 v1, 0x1

    .line 233
    :goto_0
    return v1

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothDUN"

    const-string v2, "Unable to initialize proxy with service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    const/4 v1, 0x0

    goto :goto_0
.end method

.method registerCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    .locals 3
    .parameter "cb"

    .prologue
    .line 533
    iget-object v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mService:Lcom/broadcom/bt/service/dun/IBluetoothDUN;

    if-eqz v1, :cond_0

    .line 535
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mService:Lcom/broadcom/bt/service/dun/IBluetoothDUN;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/dun/IBluetoothDUN;->registerCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothDUN"

    const-string v2, "registerCallback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 294
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    :try_start_0
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/broadcom/bt/service/dun/BluetoothDUN;->registerEventHandler(Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;Landroid/content/IntentFilter;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    monitor-exit p0

    return-void

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    .locals 4
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "threadHandler"
    .parameter "receiverPriority"

    .prologue
    .line 431
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mEventHandler:Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;

    .line 436
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 438
    if-nez p2, :cond_0

    .line 439
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1}, Lcom/broadcom/bt/service/dun/BluetoothDUN;->createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object p2

    .line 441
    :cond_0
    invoke-virtual {p2, p4}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 442
    new-instance v1, Lcom/broadcom/bt/service/dun/BluetoothDUN$DUNBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/broadcom/bt/service/dun/BluetoothDUN$DUNBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/dun/BluetoothDUN;Lcom/broadcom/bt/service/dun/BluetoothDUN$1;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 443
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v2, p2, v3, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 459
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "BluetoothDUN"

    const-string v2, "Error registering broadcast receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 431
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;Landroid/content/IntentFilter;ZI)V
    .locals 1
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "createCallbackThread"
    .parameter "receiverPriority"

    .prologue
    .line 360
    monitor-enter p0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dun/BluetoothDUN;->initEventCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/broadcom/bt/service/dun/BluetoothDUN;->registerEventHandler(Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    monitor-exit p0

    return-void

    .line 360
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requiresAccessProcessing()Z
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method unregisterCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    .locals 3
    .parameter "cb"

    .prologue
    .line 550
    iget-object v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mService:Lcom/broadcom/bt/service/dun/IBluetoothDUN;

    if-eqz v1, :cond_0

    .line 552
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mService:Lcom/broadcom/bt/service/dun/IBluetoothDUN;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/dun/IBluetoothDUN;->unregisterCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 553
    :catch_0
    move-exception v0

    .line 554
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothDUN"

    const-string v2, "registerCallback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized unregisterEventHandler()V
    .locals 2

    .prologue
    .line 491
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothDUN"

    const-string v1, "unregisterEventHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mEventHandler:Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;

    .line 496
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 498
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    :cond_0
    monitor-exit p0

    return-void

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
