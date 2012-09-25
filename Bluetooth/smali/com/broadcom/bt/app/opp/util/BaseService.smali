.class public abstract Lcom/broadcom/bt/app/opp/util/BaseService;
.super Landroid/app/Service;
.source "BaseService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/opp/util/BaseService$ProxyCallback;,
        Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;,
        Lcom/broadcom/bt/app/opp/util/BaseService$AsyncRequestThread;
    }
.end annotation


# static fields
.field protected static final SHUTDOWN_LOCK:Ljava/lang/Object;


# instance fields
.field private KEEP_SERVICE_ALIVE:Z

.field protected mAsyncProcessThread:Lcom/broadcom/bt/app/opp/util/BaseService$AsyncRequestThread;

.field mForceShutdownHandler:Landroid/os/Handler;

.field private mIsUnmounting:Z

.field protected mLastProcessedStartId:I

.field protected mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

.field protected mRequestManager:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

.field private mShutdownScheduled:Z

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/broadcom/bt/app/opp/util/BaseService;->SHUTDOWN_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    iput-boolean v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mIsUnmounting:Z

    .line 53
    new-instance v0, Lcom/broadcom/bt/app/opp/util/BaseService$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/opp/util/BaseService$1;-><init>(Lcom/broadcom/bt/app/opp/util/BaseService;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    new-instance v0, Lcom/broadcom/bt/app/opp/util/BaseService$2;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/opp/util/BaseService$2;-><init>(Lcom/broadcom/bt/app/opp/util/BaseService;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mForceShutdownHandler:Landroid/os/Handler;

    .line 138
    iput-boolean v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mShutdownScheduled:Z

    .line 143
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/util/BaseService;->keepServiceAlive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->KEEP_SERVICE_ALIVE:Z

    .line 568
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/app/opp/util/BaseService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/util/BaseService;->startShutdown()V

    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/app/opp/util/BaseService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mShutdownScheduled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/broadcom/bt/app/opp/util/BaseService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->KEEP_SERVICE_ALIVE:Z

    return v0
.end method

.method static synthetic access$300(Lcom/broadcom/bt/app/opp/util/BaseService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/util/BaseService;->cancelScheduledShutdown()V

    return-void
.end method

.method static synthetic access$400(Lcom/broadcom/bt/app/opp/util/BaseService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$402(Lcom/broadcom/bt/app/opp/util/BaseService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method private cancelScheduledShutdown()V
    .locals 3

    .prologue
    .line 273
    sget-object v1, Lcom/broadcom/bt/app/opp/util/BaseService;->SHUTDOWN_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 275
    :try_start_0
    iget-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mShutdownScheduled:Z

    if-eqz v0, :cond_0

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mShutdownScheduled:Z

    .line 281
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mForceShutdownHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 283
    :cond_0
    monitor-exit v1

    .line 284
    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private startShutdown()V
    .locals 6

    .prologue
    .line 237
    const-string v1, "OPPBaseService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "startShutdown()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    sget-object v2, Lcom/broadcom/bt/app/opp/util/BaseService;->SHUTDOWN_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mAsyncProcessThread:Lcom/broadcom/bt/app/opp/util/BaseService$AsyncRequestThread;

    iget-object v1, v1, Lcom/broadcom/bt/app/opp/util/BaseService$AsyncRequestThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mForceShutdownHandler:Landroid/os/Handler;

    const/16 v3, 0xc8

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mAsyncProcessThread:Lcom/broadcom/bt/app/opp/util/BaseService$AsyncRequestThread;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/opp/util/BaseService$AsyncRequestThread;->finish()V

    .line 249
    const-string v1, "OPPBaseService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Attempting to shutdown gracefully with stopSelfResult("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mLastProcessedStartId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mShutdownScheduled:Z

    .line 255
    iget v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mLastProcessedStartId:I

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/opp/util/BaseService;->stopSelfResult(I)Z

    .line 259
    const-string v1, "OPPBaseService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Waiting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xbb8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " MS for shutdown to complete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mForceShutdownHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 270
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "OPPBaseService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Error occurred while stopping service..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 269
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method protected abstract addRequest(Ljava/lang/Object;Z)Z
.end method

.method protected abstract getNextPendingRequest()Ljava/lang/Object;
.end method

.method public getProxy()Lcom/broadcom/bt/service/opp/BluetoothOPP;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    return-object v0
.end method

.method protected abstract getServiceName()Ljava/lang/String;
.end method

.method public getWatchdog()Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    return-object v0
.end method

.method protected initServiceProxy()Lcom/broadcom/bt/service/opp/BluetoothOPP;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 534
    const-string v3, "OPPBaseService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "initServiceProxy()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    if-nez v3, :cond_2

    .line 539
    new-instance v0, Lcom/broadcom/bt/app/opp/util/BaseService$ProxyCallback;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/broadcom/bt/app/opp/util/BaseService$ProxyCallback;-><init>(Lcom/broadcom/bt/app/opp/util/BaseService;Lcom/broadcom/bt/app/opp/util/BaseService$1;)V

    .line 541
    .local v0, cb:Lcom/broadcom/bt/app/opp/util/BaseService$ProxyCallback;
    invoke-static {p0, v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    .line 543
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mRequestManager:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    monitor-enter v4

    .line 545
    const/16 v1, 0xa

    .line 546
    .local v1, retryCount:I
    :goto_0
    :try_start_0
    sget-boolean v3, Lcom/broadcom/bt/app/opp/data/Constants;->OPP_SVC_AVAILABLE:Z

    if-ne v3, v7, :cond_0

    iget-object v3, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    if-nez v3, :cond_0

    if-ltz v1, :cond_0

    .line 547
    add-int/lit8 v1, v1, -0x1

    .line 549
    const-string v5, "OPPBaseService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Waiting for proxy: OPP_SVC_AVAILABLE="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v6, Lcom/broadcom/bt/app/opp/data/Constants;->OPP_SVC_AVAILABLE:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", mOppProxy="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    if-nez v3, :cond_3

    const-string v3, "null"

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", retryCount="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "..."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mRequestManager:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 555
    :catch_0
    move-exception v2

    .line 556
    .local v2, t:Ljava/lang/Throwable;
    :try_start_1
    const-string v3, "OPPBaseService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Error waiting for OPPProxy to initialize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 559
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    if-nez v3, :cond_1

    .line 560
    const/4 v3, 0x1

    #setter for: Lcom/broadcom/bt/app/opp/util/BaseService$ProxyCallback;->mDiscard:Z
    invoke-static {v0, v3}, Lcom/broadcom/bt/app/opp/util/BaseService$ProxyCallback;->access$602(Lcom/broadcom/bt/app/opp/util/BaseService$ProxyCallback;Z)Z

    .line 561
    const/4 v0, 0x0

    .line 563
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 565
    .end local v0           #cb:Lcom/broadcom/bt/app/opp/util/BaseService$ProxyCallback;
    .end local v1           #retryCount:I
    :cond_2
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    return-object v3

    .line 549
    .restart local v0       #cb:Lcom/broadcom/bt/app/opp/util/BaseService$ProxyCallback;
    .restart local v1       #retryCount:I
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 563
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method protected abstract keepServiceAlive()Z
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "arg0"

    .prologue
    .line 206
    const-string v0, "OPPBaseService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onBind()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 211
    const-string v0, "OPPBaseService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onConfigurationChanged()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 213
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 160
    const-string v1, "OPPBaseService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "onCreate()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 163
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 164
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v1, "broadcom.android.bluetooth.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 169
    const-string v1, "*"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/broadcom/bt/app/opp/util/BaseService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    new-instance v1, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;-><init>(Lcom/broadcom/bt/app/opp/util/BaseService;)V

    iput-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mRequestManager:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    .line 173
    new-instance v1, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    invoke-direct {v1}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;-><init>()V

    iput-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    .line 174
    new-instance v1, Lcom/broadcom/bt/app/opp/util/BaseService$AsyncRequestThread;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/app/opp/util/BaseService$AsyncRequestThread;-><init>(Lcom/broadcom/bt/app/opp/util/BaseService;)V

    iput-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mAsyncProcessThread:Lcom/broadcom/bt/app/opp/util/BaseService$AsyncRequestThread;

    .line 175
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mAsyncProcessThread:Lcom/broadcom/bt/app/opp/util/BaseService$AsyncRequestThread;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/opp/util/BaseService$AsyncRequestThread;->start()V

    .line 176
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 180
    const-string v1, "OPPBaseService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "onDestroy()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 183
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mAsyncProcessThread:Lcom/broadcom/bt/app/opp/util/BaseService$AsyncRequestThread;

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mAsyncProcessThread:Lcom/broadcom/bt/app/opp/util/BaseService$AsyncRequestThread;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/opp/util/BaseService$AsyncRequestThread;->finish()V

    .line 185
    iput-object v4, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mAsyncProcessThread:Lcom/broadcom/bt/app/opp/util/BaseService$AsyncRequestThread;

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mRequestManager:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->stopWorker()V

    .line 188
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/util/BaseService;->cancelScheduledShutdown()V

    .line 189
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    if-eqz v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->finish()V

    .line 191
    iput-object v4, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/opp/util/BaseService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 196
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :cond_2
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "OPPBaseService"

    const-string v2, "Error releasing wake lock"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected abstract onMediaUnmounted()V
.end method

.method protected abstract onProcessRequestFailed(Ljava/lang/Object;)V
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 216
    const-string v0, "OPPBaseService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onRebind()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 218
    return-void
.end method

.method protected onRequestFinished(Lcom/broadcom/bt/app/opp/data/Job;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 610
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mRequestManager:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->requestProcessed()V

    .line 611
    return-void
.end method

.method protected onRequestWorkerThreadRun()V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    .line 221
    const-string v0, "OPPBaseService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onUnbind()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public postAsyncRequest(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mAsyncProcessThread:Lcom/broadcom/bt/app/opp/util/BaseService$AsyncRequestThread;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mAsyncProcessThread:Lcom/broadcom/bt/app/opp/util/BaseService$AsyncRequestThread;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/app/opp/util/BaseService$AsyncRequestThread;->post(Ljava/lang/Runnable;)V

    .line 156
    :cond_0
    return-void
.end method

.method protected abstract processRequest(Ljava/lang/Object;)Z
.end method

.method protected startShutdownIfNotRunning()V
    .locals 2

    .prologue
    .line 226
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mRequestManager:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    monitor-enter v1

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mRequestManager:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/util/BaseService;->startShutdown()V

    .line 230
    :cond_0
    monitor-exit v1

    .line 231
    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract updateRequest(Ljava/lang/Object;)Z
.end method
