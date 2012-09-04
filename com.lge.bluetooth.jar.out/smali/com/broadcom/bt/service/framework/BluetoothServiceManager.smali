.class public Lcom/broadcom/bt/service/framework/BluetoothServiceManager;
.super Ljava/lang/Object;
.source "BluetoothServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BluetoothServiceManager"

.field private static _DBG:Z

.field private static mBtServiceMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static mInitialized:Z

.field private static mIsFactoryTest:Z

.field private static mLastBluetoothState:I

.field private static mSystemContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    sput-boolean v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mInitialized:Z

    .line 71
    const/4 v0, -0x1

    sput v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mLastBluetoothState:I

    .line 104
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method private static _registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V
    .locals 5
    .parameter "svcName"
    .parameter "svc"

    .prologue
    .line 119
    invoke-static {p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v0

    .line 120
    .local v0, isSupported:Z
    sget-boolean v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v1, :cond_1

    .line 121
    if-nez v0, :cond_0

    .line 122
    const-string v2, "BluetoothServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "****Bluetooth Service not supported "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_3

    const-string v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "...Skipping. ****"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    const-string v2, "BluetoothServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "****Registering Bluetooth Service "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_4

    const-string v1, "null"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "****"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_1
    if-eqz v0, :cond_2

    .line 130
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v2

    .line 131
    :try_start_0
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    new-instance v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;-><init>(Lcom/broadcom/bt/service/framework/IBtService;Z)V

    invoke-virtual {v1, p0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_2
    return-void

    .line 122
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 126
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 132
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static _startService(Ljava/lang/String;)V
    .locals 5
    .parameter "svcName"

    .prologue
    .line 205
    if-eqz p0, :cond_0

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-static {v2, p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 206
    :cond_0
    sget-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v2, :cond_2

    .line 207
    const-string v2, "BluetoothServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***startService(): Bluetooth service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p0, :cond_1

    const-string p0, "null"

    .end local p0
    :cond_1
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not enabled. Skipping start...***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .local v1, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    .restart local p0
    :cond_2
    :goto_0
    return-void

    .line 214
    .end local v1           #svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    :cond_3
    const/4 v1, 0x0

    .line 215
    .restart local v1       #svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 216
    :try_start_0
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    move-object v1, v0

    .line 217
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    if-nez v1, :cond_4

    .line 220
    sget-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v2, :cond_2

    .line 221
    const-string v2, "BluetoothServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***startService(): Unable to find service record for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Skipping...***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 226
    :cond_4
    #getter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    if-nez v2, :cond_5

    .line 227
    sget-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v2, :cond_2

    .line 228
    const-string v2, "BluetoothServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***startService(): Service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is not managed by BluetoothServiceManager. Skipping...***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v2, 0x1

    #setter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mIsStarted:Z
    invoke-static {v1, v2}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$102(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;Z)Z

    .line 234
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {p0, v3}, Lcom/broadcom/bt/service/framework/BluetoothIntent;->createBtSvcStateChangeEvent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 240
    :cond_5
    sget-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v2, :cond_6

    .line 241
    const-string v2, "BluetoothServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***startService(): Starting service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_6
    monitor-enter v1

    .line 245
    :try_start_2
    #getter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    invoke-interface {v2}, Lcom/broadcom/bt/service/framework/IBtService;->init()V

    .line 246
    #getter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    invoke-interface {v2}, Lcom/broadcom/bt/service/framework/IBtService;->start()V

    .line 248
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 249
    const-string v2, "BluetoothServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***startService(): Done starting service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 248
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method private static _stopService(Ljava/lang/String;)V
    .locals 5
    .parameter "svcName"

    .prologue
    .line 253
    if-nez p0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    sget-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v2, :cond_2

    .line 257
    const-string v2, "BluetoothServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***stopService(): Stopping service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_2
    const/4 v1, 0x0

    .line 261
    .local v1, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 262
    :try_start_0
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    move-object v1, v0

    .line 263
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    if-nez v1, :cond_3

    .line 266
    sget-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v2, :cond_0

    .line 267
    const-string v2, "BluetoothServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***stopService(): Unable to find service record for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Skipping...***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 272
    :cond_3
    #getter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    if-nez v2, :cond_4

    .line 273
    sget-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v2, :cond_0

    .line 274
    const-string v2, "BluetoothServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***stopService(): Service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is not managed by Bleutooth Service Manager. Skipping...***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v2, 0x0

    #setter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mIsStarted:Z
    invoke-static {v1, v2}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$102(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;Z)Z

    .line 279
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/broadcom/bt/service/framework/BluetoothIntent;->createBtSvcStateChangeEvent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 285
    :cond_4
    sget-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v2, :cond_5

    .line 286
    const-string v2, "BluetoothServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***stopService(): Stop service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_5
    monitor-enter v1

    .line 290
    :try_start_2
    #getter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    invoke-interface {v2}, Lcom/broadcom/bt/service/framework/IBtService;->stop()V

    .line 292
    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public static disableService(Ljava/lang/String;)V
    .locals 5
    .parameter "svcName"

    .prologue
    .line 386
    const-string v1, "BluetoothServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***disableService() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v2

    .line 390
    :try_start_0
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    .line 391
    .local v0, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    if-nez v0, :cond_0

    .line 392
    const-string v1, "BluetoothServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***disableService() Service not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Skipping...***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_0
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bt_svcst_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 397
    invoke-static {p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_stopService(Ljava/lang/String;)V

    .line 398
    monitor-exit v2

    .line 399
    return-void

    .line 398
    .end local v0           #svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static enableService(Ljava/lang/String;)V
    .locals 5
    .parameter "svcName"

    .prologue
    .line 370
    const-string v1, "BluetoothServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableService() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v2

    .line 374
    :try_start_0
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    .line 375
    .local v0, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    if-nez v0, :cond_0

    .line 376
    const-string v1, "BluetoothServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***enableService(): Service not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Skipping...***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bt_svcst_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 381
    invoke-static {p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_startService(Ljava/lang/String;)V

    .line 382
    monitor-exit v2

    .line 383
    return-void

    .line 382
    .end local v0           #svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static declared-synchronized getLastProcessedBtState()I
    .locals 2

    .prologue
    .line 78
    const-class v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mLastBluetoothState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;
    .locals 3
    .parameter "svcName"

    .prologue
    .line 413
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v2

    .line 414
    :try_start_0
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    .line 415
    .local v0, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit v2

    return-object v1

    :cond_0
    #getter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v1

    goto :goto_0

    .line 416
    .end local v0           #svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getServiceEventLoop(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;
    .locals 3
    .parameter "svcName"

    .prologue
    .line 406
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v2

    .line 407
    :try_start_0
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    .line 408
    .local v0, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit v2

    return-object v1

    :cond_0
    #getter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v1

    goto :goto_0

    .line 409
    .end local v0           #svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getServiceState(Ljava/lang/String;)I
    .locals 2
    .parameter "svcName"

    .prologue
    .line 426
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    .line 427
    .local v0, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    if-nez v0, :cond_0

    .line 428
    const/4 v1, -0x1

    .line 430
    :goto_0
    return v1

    :cond_0
    #getter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mIsStarted:Z
    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$100(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 3
    .parameter "systemContext"

    .prologue
    .line 144
    const-class v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "BluetoothServiceManager"

    const-string v2, "Bluetooth Service Manager already initialized.....Skipping init()..."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :goto_0
    monitor-exit v1

    return-void

    .line 149
    :cond_0
    :try_start_1
    sput-object p0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    .line 151
    invoke-static {}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->initSettings()V

    .line 154
    invoke-static {}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->registerServices()V

    .line 156
    const/4 v0, 0x1

    sput-boolean v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static initSettings()V
    .locals 9

    .prologue
    const/16 v8, 0xd

    const/16 v7, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 166
    const-string v3, "ro.build.target_operator"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "VZW"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES_AVAILABLE:[Z

    aput-boolean v4, v3, v7

    .line 168
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES_STARTUP_ENABLED:[Z

    aput-boolean v4, v3, v7

    .line 172
    :cond_0
    const-string v3, "ro.build.target_country"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "KR"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "ro.build.product"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "batman_dcm"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "ro.build.product"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "batman_vzw"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 176
    :cond_1
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES_AVAILABLE:[Z

    aput-boolean v4, v3, v8

    .line 177
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES_STARTUP_ENABLED:[Z

    aput-boolean v4, v3, v8

    .line 182
    :cond_2
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    if-eqz v3, :cond_5

    .line 183
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 184
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "bt_svcst_init"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 186
    .local v2, settingsExist:I
    if-nez v2, :cond_5

    .line 187
    const-string v3, "BluetoothServiceManager"

    const-string v6, "*********Initializing Bluetooth Service Settings*******"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bt_svcst_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES_STARTUP_ENABLED:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    invoke-static {v0, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 193
    const-string v3, "BluetoothServiceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bt_svcst_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: isServiceSupported=  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-static {v7}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";  SERVICES_STARTUP_ENABLED= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES_STARTUP_ENABLED:[Z

    aget-boolean v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v3, v5

    .line 189
    goto :goto_1

    .line 199
    :cond_4
    const-string v3, "bt_svcst_init"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 202
    .end local v1           #i:I
    :cond_5
    return-void
.end method

.method public static declared-synchronized isInitialized()Z
    .locals 2

    .prologue
    .line 74
    const-class v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static onBluetoothDisabled()V
    .locals 5

    .prologue
    const/16 v4, 0xd

    .line 350
    const-string v2, "BluetoothServiceManager"

    const-string v3, "onBluetoothDisabled()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    sget v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mLastBluetoothState:I

    if-ne v2, v4, :cond_0

    .line 353
    const-string v2, "BluetoothServiceManager"

    const-string v3, "Already processed Bluetooth STATE_TURNING_OFF event..Skipping"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .local v0, svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 357
    .end local v0           #svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 358
    :try_start_0
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 359
    .restart local v0       #svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 360
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 361
    .local v1, svcName:Ljava/lang/String;
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_stopService(Ljava/lang/String;)V

    goto :goto_1

    .line 363
    .end local v1           #svcName:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    sput v4, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mLastBluetoothState:I

    goto :goto_0
.end method

.method public static declared-synchronized onBluetoothEnabled()V
    .locals 6

    .prologue
    const/16 v5, 0xc

    .line 328
    const-class v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;

    monitor-enter v3

    :try_start_0
    const-string v2, "BluetoothServiceManager"

    const-string v4, "onBluetoothEnabled()"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    sget-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mIsFactoryTest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 347
    .local v0, svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    monitor-exit v3

    return-void

    .line 334
    .end local v0           #svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    sget v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mLastBluetoothState:I

    if-ne v2, v5, :cond_1

    .line 335
    const-string v2, "BluetoothServiceManager"

    const-string v4, "Already processed Bluetooth STATE_ON event..Skipping"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 328
    .restart local v0       #svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 339
    .end local v0           #svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :try_start_2
    sget-object v4, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 340
    :try_start_3
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 341
    .restart local v0       #svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 342
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 343
    .local v1, svcName:Ljava/lang/String;
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_startService(Ljava/lang/String;)V

    goto :goto_1

    .line 345
    .end local v1           #svcName:Ljava/lang/String;
    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 346
    const/16 v2, 0xc

    :try_start_6
    sput v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mLastBluetoothState:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method

.method public static onBluetoothServiceStateChanged(Ljava/lang/String;I)V
    .locals 6
    .parameter "svcName"
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    .line 296
    const/4 v1, 0x0

    .line 297
    .local v1, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    sget-object v4, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v4

    .line 298
    :try_start_0
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    move-object v1, v0

    .line 299
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    if-nez v1, :cond_1

    .line 302
    sget-boolean v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v3, :cond_0

    .line 303
    const-string v3, "BluetoothServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "***onBluetoothServiceStateChanged(): Unable to find service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Skipping...***"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 299
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 309
    :cond_1
    monitor-enter v1

    .line 310
    const/4 v3, 0x2

    if-ne v3, p1, :cond_3

    .line 311
    const/4 v3, 0x1

    :try_start_2
    #setter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mIsStarted:Z
    invoke-static {v1, v3}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$102(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;Z)Z

    .line 324
    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 312
    :cond_3
    if-ne v5, p1, :cond_2

    .line 313
    const/4 v3, 0x0

    :try_start_3
    #setter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mIsStarted:Z
    invoke-static {v1, v3}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$102(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 315
    :try_start_4
    const-string v3, "BluetoothServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finishing service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    #getter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 317
    #getter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v3

    invoke-interface {v3}, Lcom/broadcom/bt/service/framework/IBtService;->finish()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 320
    :catch_0
    move-exception v2

    .line 321
    .local v2, t:Ljava/lang/Throwable;
    :try_start_5
    const-string v3, "BluetoothServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error finishing service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method

.method private static registerServices()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 86
    const-string v0, "bluetooth_opp_service"

    new-instance v1, Lcom/broadcom/bt/service/opp/OppEventLoop;

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/opp/OppEventLoop;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 87
    const-string v0, "bluetooth_flick"

    invoke-static {v0, v3}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 88
    const-string v0, "bluetooth_ftp"

    new-instance v1, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 89
    const-string v0, "bluetooth_pbap"

    new-instance v1, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 90
    const-string v0, "bluetooth_dun"

    new-instance v1, Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 91
    const-string v0, "bluetooth_sap"

    new-instance v1, Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 92
    const-string v0, "bluetooth_test"

    new-instance v1, Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 93
    const-string v0, "bluetooth_map"

    new-instance v1, Lcom/broadcom/bt/service/map/MapEventLoop;

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/map/MapEventLoop;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 94
    const-string v0, "bluetooth_bpp_service"

    invoke-static {v0, v3}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 95
    const-string v0, "bluetooth_dm_service"

    invoke-static {v0, v3}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 96
    const-string v0, "bluetooth_avrcp"

    new-instance v1, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 97
    const-string v0, "bluetooth_gatt"

    new-instance v1, Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 99
    const-string v0, "bluetooth_hid"

    invoke-static {v0, v3}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 100
    const-string v0, "bluetooth_pan"

    invoke-static {v0, v3}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 101
    const-string v0, "bluetooth_hdp"

    invoke-static {v0, v3}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 102
    return-void
.end method
