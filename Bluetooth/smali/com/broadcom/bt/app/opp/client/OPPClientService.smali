.class public Lcom/broadcom/bt/app/opp/client/OPPClientService;
.super Lcom/broadcom/bt/app/opp/util/BaseService;
.source "OPPClientService.java"

# interfaces
.implements Lcom/broadcom/bt/app/opp/util/IWatchdogHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;,
        Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;,
        Lcom/broadcom/bt/app/opp/client/OPPClientService$EnableTimeoutRetryHandler;,
        Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;
    }
.end annotation


# static fields
.field private static mRefs:I


# instance fields
.field mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field protected mClientState:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

.field private mCloseHandler:Lcom/broadcom/bt/app/opp/util/ISessionCloseHandler;

.field private mCurrentRequestHandler:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;

.field protected mDisplayedMaxToast:Z

.field private mEnableTimeRetryHandler:Lcom/broadcom/bt/app/opp/client/OPPClientService$EnableTimeoutRetryHandler;

.field private mFilter:Landroid/content/IntentFilter;

.field private mProcessor:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;

.field private final mServiceId:J

.field private mSessionManager:Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;

.field protected mTimeoutLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1151
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mRefs:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1154
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/util/BaseService;-><init>()V

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mServiceId:J

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mTimeoutLock:Ljava/lang/Object;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mDisplayedMaxToast:Z

    .line 81
    invoke-static {v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->createFilterOpc(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v0

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->createFilterVCard(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mFilter:Landroid/content/IntentFilter;

    .line 683
    new-instance v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$EnableTimeoutRetryHandler;

    invoke-direct {v0, p0, v2}, Lcom/broadcom/bt/app/opp/client/OPPClientService$EnableTimeoutRetryHandler;-><init>(Lcom/broadcom/bt/app/opp/client/OPPClientService;Lcom/broadcom/bt/app/opp/client/OPPClientService$1;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mEnableTimeRetryHandler:Lcom/broadcom/bt/app/opp/client/OPPClientService$EnableTimeoutRetryHandler;

    .line 1159
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/app/opp/client/OPPClientService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->startShutdownIfNotRunning()V

    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/app/opp/client/OPPClientService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mServiceId:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->getCurrentRequestHandler()Lcom/broadcom/bt/app/opp/client/BaseClientHandler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/app/opp/util/ISessionCloseHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mCloseHandler:Lcom/broadcom/bt/app/opp/util/ISessionCloseHandler;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/broadcom/bt/app/opp/client/OPPClientService;Lcom/broadcom/bt/app/opp/util/ISessionCloseHandler;)Lcom/broadcom/bt/app/opp/util/ISessionCloseHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mCloseHandler:Lcom/broadcom/bt/app/opp/util/ISessionCloseHandler;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mProcessor:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/service/opp/BluetoothOPP;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/broadcom/bt/app/opp/client/OPPClientService;Lcom/broadcom/bt/app/opp/data/Job;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->processRequest_NewSession(Lcom/broadcom/bt/app/opp/data/Job;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mSessionManager:Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mRequestManager:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/service/opp/BluetoothOPP;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/service/opp/BluetoothOPP;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    return-object v0
.end method

.method static synthetic access$300(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mRequestManager:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mRequestManager:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/broadcom/bt/app/opp/client/OPPClientService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->startShutdownIfNotRunning()V

    return-void
.end method

.method static synthetic access$600(Lcom/broadcom/bt/app/opp/client/OPPClientService;Landroid/content/Intent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->processSendAction(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mRequestManager:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mRequestManager:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    return-object v0
.end method

.method private declared-synchronized getCurrentRequestHandler()Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
    .locals 1

    .prologue
    .line 577
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mCurrentRequestHandler:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized processCancelAction(Landroid/content/Intent;I)V
    .locals 11
    .parameter "i"
    .parameter "startId"

    .prologue
    .line 408
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 409
    .local v6, requestUri:Landroid/net/Uri;
    const/4 v5, 0x0

    .line 410
    .local v5, request:Lcom/broadcom/bt/app/opp/data/Job;
    const/4 v7, 0x0

    .line 411
    .local v7, runningRequest:Lcom/broadcom/bt/app/opp/data/Job;
    const/4 v1, 0x0

    .line 412
    .local v1, batchCanceled:Z
    const/4 v2, 0x0

    .line 413
    .local v2, cancelRunningRequest:Z
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, action:Ljava/lang/String;
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->getCurrentRequestHandler()Lcom/broadcom/bt/app/opp/client/BaseClientHandler;

    move-result-object v4

    .line 416
    .local v4, h:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
    if-eqz v4, :cond_0

    .line 417
    invoke-virtual {v4}, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->getRequest()Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v7

    .line 420
    :cond_0
    if-nez v6, :cond_4

    .line 422
    if-eqz v7, :cond_1

    .line 423
    move-object v5, v7

    .line 424
    invoke-virtual {v5}, Lcom/broadcom/bt/app/opp/data/Job;->getJobUri()Landroid/net/Uri;

    move-result-object v6

    .line 431
    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    iget v8, v5, Lcom/broadcom/bt/app/opp/data/Job;->mRole:I

    if-eqz v8, :cond_5

    .line 432
    :cond_2
    const-string v8, "OPPClientService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Cannot process cancel action. No job to cancel!!!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 428
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getRequest(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v5

    goto :goto_0

    .line 438
    :cond_5
    const-string v8, "brcm.cnlall"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, v5, Lcom/broadcom/bt/app/opp/data/Job;->mTransactionId:Ljava/lang/String;

    if-eqz v8, :cond_7

    .line 441
    const-string v8, "OPPClientService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Canceling request (batch cancel):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, v5, Lcom/broadcom/bt/app/opp/data/Job;->mTransactionId:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->setCancelRequested_PendingRequestsInTransaction(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 445
    const/4 v1, 0x1

    .line 453
    :goto_2
    iget v8, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    packed-switch v8, :pswitch_data_0

    .line 478
    :cond_6
    :goto_3
    :pswitch_0
    if-eqz v2, :cond_9

    .line 479
    if-eqz v7, :cond_3

    .line 481
    const-string v8, "OPPClientService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Canceling RUNNING request "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/broadcom/bt/app/opp/data/Job;->getJobUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v7}, Lcom/broadcom/bt/app/opp/data/Job;->getJobUri()Landroid/net/Uri;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->setCancelRequested(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    .line 486
    iget-object v8, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mSessionManager:Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;

    new-instance v9, Lcom/broadcom/bt/app/opp/client/OPPClientService$5;

    invoke-direct {v9, p0}, Lcom/broadcom/bt/app/opp/client/OPPClientService$5;-><init>(Lcom/broadcom/bt/app/opp/client/OPPClientService;)V

    invoke-virtual {v8, v7, v9}, Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;->closeSession(Lcom/broadcom/bt/app/opp/data/Job;Lcom/broadcom/bt/app/opp/util/ISessionCloseHandler;)Z

    move-result v3

    .line 520
    .local v3, closeSessionStarted:Z
    if-nez v3, :cond_3

    .line 521
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v8, v7, v9, v10}, Lcom/broadcom/bt/app/opp/data/Constants;->setStatusCancelled(Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 408
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #batchCanceled:Z
    .end local v2           #cancelRunningRequest:Z
    .end local v3           #closeSessionStarted:Z
    .end local v4           #h:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
    .end local v5           #request:Lcom/broadcom/bt/app/opp/data/Job;
    .end local v6           #requestUri:Landroid/net/Uri;
    .end local v7           #runningRequest:Lcom/broadcom/bt/app/opp/data/Job;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 448
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #batchCanceled:Z
    .restart local v2       #cancelRunningRequest:Z
    .restart local v4       #h:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
    .restart local v5       #request:Lcom/broadcom/bt/app/opp/data/Job;
    .restart local v6       #requestUri:Landroid/net/Uri;
    .restart local v7       #runningRequest:Lcom/broadcom/bt/app/opp/data/Job;
    :cond_7
    :try_start_2
    const-string v8, "OPPClientService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Canceling request (non-batch cancel):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 456
    :pswitch_1
    const-string v8, "OPPClientService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Canceling PENDING request "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    if-eqz v1, :cond_8

    .line 461
    if-eqz v7, :cond_6

    iget-object v8, v5, Lcom/broadcom/bt/app/opp/data/Job;->mTransactionId:Ljava/lang/String;

    iget-object v9, v7, Lcom/broadcom/bt/app/opp/data/Job;->mTransactionId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 463
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 467
    :cond_8
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->setCancelRequested(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    .line 468
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v8, v5, v9, v10}, Lcom/broadcom/bt/app/opp/data/Constants;->setStatusCancelled(Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;J)V

    goto/16 :goto_3

    .line 474
    :pswitch_2
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 530
    :cond_9
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v8, v5, v9, v10}, Lcom/broadcom/bt/app/opp/data/Constants;->setStatusCancelled(Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 453
    :pswitch_data_0
    .packed-switch 0xbe
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private processExchangeAction(Landroid/content/Intent;I)V
    .locals 1
    .parameter "i"
    .parameter "startId"

    .prologue
    .line 268
    new-instance v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/broadcom/bt/app/opp/client/OPPClientService$3;-><init>(Lcom/broadcom/bt/app/opp/client/OPPClientService;ILandroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->postAsyncRequest(Ljava/lang/Runnable;)V

    .line 284
    return-void
.end method

.method private processMultiSendAction(Landroid/content/Intent;I)V
    .locals 1
    .parameter "i"
    .parameter "startId"

    .prologue
    .line 294
    new-instance v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/broadcom/bt/app/opp/client/OPPClientService$4;-><init>(Lcom/broadcom/bt/app/opp/client/OPPClientService;Landroid/content/Intent;I)V

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->postAsyncRequest(Ljava/lang/Runnable;)V

    .line 364
    return-void
.end method

.method private processPullAction(Landroid/content/Intent;I)V
    .locals 1
    .parameter "i"
    .parameter "startId"

    .prologue
    .line 242
    new-instance v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/broadcom/bt/app/opp/client/OPPClientService$2;-><init>(Lcom/broadcom/bt/app/opp/client/OPPClientService;ILandroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->postAsyncRequest(Ljava/lang/Runnable;)V

    .line 258
    return-void
.end method

.method private processRequest_NewSession(Lcom/broadcom/bt/app/opp/data/Job;)Z
    .locals 5
    .parameter "request"

    .prologue
    const/4 v4, 0x1

    .line 666
    const-string v0, "OPPClientService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Processing new request new current session"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    new-instance v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;

    iget v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mLastProcessedStartId:I

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mCurrentRequestHandler:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;-><init>(Lcom/broadcom/bt/app/opp/client/OPPClientService;ILcom/broadcom/bt/app/opp/client/BaseClientHandler;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mProcessor:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;

    .line 669
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mSessionManager:Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;->addNewSession(Lcom/broadcom/bt/app/opp/data/Job;)Lcom/broadcom/bt/app/opp/data/OPPSession;

    .line 671
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mProcessor:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mFilter:Landroid/content/IntentFilter;

    const/16 v3, 0xc8

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->registerEventHandler(Lcom/broadcom/bt/service/opp/IOppEventHandler;Landroid/content/IntentFilter;ZI)V

    .line 673
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mCloseHandler:Lcom/broadcom/bt/app/opp/util/ISessionCloseHandler;

    .line 674
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mEnableTimeRetryHandler:Lcom/broadcom/bt/app/opp/client/OPPClientService$EnableTimeoutRetryHandler;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/client/OPPClientService$EnableTimeoutRetryHandler;->reset()V

    .line 675
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    const/16 v1, 0x1388

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mEnableTimeRetryHandler:Lcom/broadcom/bt/app/opp/client/OPPClientService$EnableTimeoutRetryHandler;

    iget-object v3, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mClientState:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->startOrRestartWatchdog(ILcom/broadcom/bt/app/opp/util/IWatchdogHandler;Ljava/lang/Object;)V

    .line 677
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->enableOpcSession()V

    .line 679
    const-string v0, "OPPClientService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "**Dispatched enableOpcSession()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    return v4
.end method

.method private processRequest_NewSession_StopPrevious(Lcom/broadcom/bt/app/opp/data/OPPSession;Lcom/broadcom/bt/app/opp/data/Job;)Z
    .locals 3
    .parameter "s"
    .parameter "request"

    .prologue
    .line 750
    const-string v0, "OPPClientService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Processing new request by stopping current session and starting new one"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mSessionManager:Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;

    new-instance v1, Lcom/broadcom/bt/app/opp/client/OPPClientService$6;

    invoke-direct {v1, p0, p2}, Lcom/broadcom/bt/app/opp/client/OPPClientService$6;-><init>(Lcom/broadcom/bt/app/opp/client/OPPClientService;Lcom/broadcom/bt/app/opp/data/Job;)V

    invoke-virtual {v0, p1, v1}, Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;->closeSession(Lcom/broadcom/bt/app/opp/data/OPPSession;Lcom/broadcom/bt/app/opp/util/ISessionCloseHandler;)Z

    .line 770
    const/4 v0, 0x1

    return v0
.end method

.method private declared-synchronized processRestartAction(Landroid/content/Intent;I)V
    .locals 1
    .parameter "i"
    .parameter "startId"

    .prologue
    .line 398
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mRequestManager:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    invoke-virtual {v0, p2}, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->restart(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    monitor-exit p0

    return-void

    .line 398
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized processRetryAction(Landroid/content/Intent;I)V
    .locals 4
    .parameter "i"
    .parameter "startId"

    .prologue
    .line 372
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 374
    .local v1, requestUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getRequest(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v0

    .line 375
    .local v0, request:Lcom/broadcom/bt/app/opp/data/Job;
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-nez v2, :cond_0

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v2}, Lcom/broadcom/bt/app/opp/data/Constants;->isStatusErrorOrCancelled(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 389
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 379
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/data/Job;->getJobUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->unsetCancelRequested(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    .line 380
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/broadcom/bt/app/opp/data/Job;->mCancelRequested:Z

    .line 381
    const/16 v2, 0xbe

    iput v2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 382
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    .line 383
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    .line 384
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    .line 385
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/broadcom/bt/app/opp/data/Job;->mEndTimestamp:J

    .line 386
    const-string v2, ""

    iput-object v2, v0, Lcom/broadcom/bt/app/opp/data/Job;->mErrorCode:Ljava/lang/String;

    .line 387
    const-string v2, ""

    iput-object v2, v0, Lcom/broadcom/bt/app/opp/data/Job;->mErrorInfo:Ljava/lang/String;

    .line 388
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mRequestManager:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    invoke-virtual {v2, p2, v0}, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->retryRequest(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 372
    .end local v0           #request:Lcom/broadcom/bt/app/opp/data/Job;
    .end local v1           #requestUri:Landroid/net/Uri;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private processSendAction(Landroid/content/Intent;I)V
    .locals 1
    .parameter "i"
    .parameter "startId"

    .prologue
    .line 185
    new-instance v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/broadcom/bt/app/opp/client/OPPClientService$1;-><init>(Lcom/broadcom/bt/app/opp/client/OPPClientService;Landroid/content/Intent;I)V

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->postAsyncRequest(Ljava/lang/Runnable;)V

    .line 232
    return-void
.end method

.method private setRemoteError(Lcom/broadcom/bt/app/opp/client/BaseClientHandler;Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;)V
    .locals 4
    .parameter "handler"
    .parameter "lastState"

    .prologue
    const/4 v3, 0x0

    .line 997
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->ordinal()I

    move-result v0

    sget-object v1, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_OPEN:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 998
    :cond_0
    const/16 v0, 0x1f1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->processError(IJLjava/lang/Throwable;)V

    .line 1002
    :goto_0
    return-void

    .line 1000
    :cond_1
    const/16 v0, 0x1e2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->processError(IJLjava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected addRequest(Ljava/lang/Object;Z)Z
    .locals 7
    .parameter "request"
    .parameter "dispatchPendingEvent"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 541
    move-object v1, p1

    check-cast v1, Lcom/broadcom/bt/app/opp/data/Job;

    .line 543
    .local v1, r:Lcom/broadcom/bt/app/opp/data/Job;
    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {p0, v5, v1, v6, p2}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->addRequest(Lcom/broadcom/bt/app/opp/util/BaseService;Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;ZZ)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 545
    .local v0, addedRequest:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 548
    .end local v0           #addedRequest:Landroid/net/Uri;
    :goto_0
    return v3

    .restart local v0       #addedRequest:Landroid/net/Uri;
    :cond_0
    move v3, v4

    .line 545
    goto :goto_0

    .line 546
    .end local v0           #addedRequest:Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 547
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "OPPClientService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Unable to add job to queue"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    .line 548
    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1166
    return-void
.end method

.method protected declared-synchronized getNextPendingRequest()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 566
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_2

    :cond_0
    move-object v0, v1

    .line 572
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 571
    :cond_2
    :try_start_1
    new-instance v0, Lcom/broadcom/bt/app/opp/data/Job;

    invoke-direct {v0}, Lcom/broadcom/bt/app/opp/data/Job;-><init>()V

    .line 572
    .local v0, j:Lcom/broadcom/bt/app/opp/data/Job;
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getNextPendingRequest(Landroid/content/ContentResolver;ILcom/broadcom/bt/app/opp/data/Job;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 566
    .end local v0           #j:Lcom/broadcom/bt/app/opp/data/Job;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "OPC"

    return-object v0
.end method

.method protected keepServiceAlive()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 114
    const-string v0, "OPPClientService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-super {p0}, Lcom/broadcom/bt/app/opp/util/BaseService;->onCreate()V

    .line 116
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 117
    new-instance v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;-><init>(Lcom/broadcom/bt/app/opp/client/OPPClientService;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mSessionManager:Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;

    .line 125
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/16 v2, 0x1f2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->createError(IZ)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "role = 0 AND status = 192"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 130
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 94
    const-string v1, "OPPClientService"

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

    .line 95
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mSessionManager:Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;->getLatestSession()Lcom/broadcom/bt/app/opp/data/OPPSession;

    move-result-object v0

    .line 96
    .local v0, s:Lcom/broadcom/bt/app/opp/data/OPPSession;
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    if-eqz v1, :cond_1

    .line 97
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/broadcom/bt/app/opp/data/OPPSession;->mClosed:Z

    if-nez v1, :cond_0

    .line 98
    const-string v1, "OPPClientService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Closing unclosed session in onDestroy()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->unregisterEventHandler()V

    .line 101
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->closeOpcSession()V

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->finish()V

    .line 104
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    if-eqz v1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->stop()V

    .line 109
    :cond_2
    invoke-super {p0}, Lcom/broadcom/bt/app/opp/util/BaseService;->onDestroy()V

    .line 110
    return-void
.end method

.method protected onMediaUnmounted()V
    .locals 2

    .prologue
    .line 1169
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1170
    .local v0, i:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1171
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->processCancelAction(Landroid/content/Intent;I)V

    .line 1172
    :cond_0
    return-void
.end method

.method protected onProcessRequestFailed(Ljava/lang/Object;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 1012
    const-string v0, "OPPClientService"

    const-string v1, "ERROR: onProcessRequestFailed()...Internal error occured.....calling timeout handler"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->onTimeout()V

    .line 1014
    return-void
.end method

.method public onRequestFinished(Lcom/broadcom/bt/app/opp/data/Job;)V
    .locals 7
    .parameter "r"

    .prologue
    .line 1142
    if-eqz p1, :cond_0

    .line 1143
    iget v0, p1, Lcom/broadcom/bt/app/opp/data/Job;->mRole:I

    iget v1, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    iget v2, p1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestType:I

    iget v3, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    iget-object v4, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->createIntent_TransferComplete(IIIILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 1145
    .local v6, i:Landroid/content/Intent;
    invoke-virtual {p0, v6}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1148
    .end local v6           #i:Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1}, Lcom/broadcom/bt/app/opp/util/BaseService;->onRequestFinished(Lcom/broadcom/bt/app/opp/data/Job;)V

    .line 1149
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "i"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 134
    const-string v1, "OPPClientService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "onStartCommand():intent,flags,startid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    if-nez p1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mRequestManager:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mRequestManager:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mRequestManager:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    invoke-virtual {v1, p3}, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->restart(I)V

    .line 174
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 145
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, action:Ljava/lang/String;
    const-string v1, "brcm.sd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    const-string v1, "OPPClientService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "onStartCommand(): Processing send request..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-direct {p0, p1, p3}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->processSendAction(Landroid/content/Intent;I)V

    goto :goto_0

    .line 152
    :cond_2
    const-string v1, "brcm.msd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 154
    const-string v1, "OPPClientService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "onStartCommand(): Processing send multiple request..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0, p1, p3}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->processMultiSendAction(Landroid/content/Intent;I)V

    goto :goto_0

    .line 156
    :cond_3
    const-string v1, "brcm.pl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 158
    const-string v1, "OPPClientService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "onStartCommand(): Processing pull request..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0, p1, p3}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->processPullAction(Landroid/content/Intent;I)V

    goto :goto_0

    .line 160
    :cond_4
    const-string v1, "brcm.ex"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 162
    const-string v1, "OPPClientService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "onStartCommand(): Processing exchange request..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-direct {p0, p1, p3}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->processExchangeAction(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 164
    :cond_5
    const-string v1, "brcm.cnl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "brcm.cnlall"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 166
    :cond_6
    invoke-direct {p0, p1, p3}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->processCancelAction(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 167
    :cond_7
    const-string v1, "brcm.rty"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 168
    invoke-direct {p0, p1, p3}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->processRetryAction(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 169
    :cond_8
    const-string v1, "brcm.rst"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    invoke-direct {p0, p1, p3}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->processRestartAction(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 1009
    return-void
.end method

.method public onTimeout()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 962
    const/4 v4, 0x0

    .line 964
    .local v4, mLastState:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;
    :try_start_0
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    invoke-virtual {v5}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->getLastState()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 970
    :goto_0
    const-string v6, "OPPClientService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "onTimeout() State = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v4, :cond_2

    const-string v5, "unknown"

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mSessionManager:Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;

    invoke-virtual {v5}, Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;->getLatestSession()Lcom/broadcom/bt/app/opp/data/OPPSession;

    move-result-object v1

    .line 975
    .local v1, currentSession:Lcom/broadcom/bt/app/opp/data/OPPSession;
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->getCurrentRequestHandler()Lcom/broadcom/bt/app/opp/client/BaseClientHandler;

    move-result-object v3

    .line 978
    .local v3, handler:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mTimeoutLock:Ljava/lang/Object;

    monitor-enter v6

    .line 979
    if-eqz v1, :cond_0

    :try_start_1
    iget-boolean v5, v1, Lcom/broadcom/bt/app/opp/data/OPPSession;->mClosed:Z

    if-nez v5, :cond_0

    .line 980
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/broadcom/bt/app/opp/data/OPPSession;->mTimeoutOccurred:Z

    .line 984
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mSessionManager:Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v7}, Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;->closeSession(Lcom/broadcom/bt/app/opp/data/OPPSession;Lcom/broadcom/bt/app/opp/util/ISessionCloseHandler;)Z

    .line 986
    :cond_0
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 988
    if-eqz v3, :cond_3

    .line 989
    invoke-direct {p0, v3, v4}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->setRemoteError(Lcom/broadcom/bt/app/opp/client/BaseClientHandler;Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;)V

    .line 990
    invoke-virtual {v3}, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->getRequest()Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->onRequestFinished(Lcom/broadcom/bt/app/opp/data/Job;)V

    .line 994
    :goto_2
    return-void

    .line 965
    .end local v1           #currentSession:Lcom/broadcom/bt/app/opp/data/OPPSession;
    .end local v3           #handler:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
    :catch_0
    move-exception v2

    .line 966
    .local v2, e:Ljava/lang/Throwable;
    const-string v6, "OPPClientService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected error: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    invoke-virtual {v7}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->getLastState()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, ""

    :goto_3
    invoke-static {v6, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    invoke-virtual {v5}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->getLastState()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 970
    .end local v2           #e:Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {v4}, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->name()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 986
    .restart local v1       #currentSession:Lcom/broadcom/bt/app/opp/data/OPPSession;
    .restart local v3       #handler:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 992
    :cond_3
    invoke-virtual {p0, v8}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->onRequestFinished(Lcom/broadcom/bt/app/opp/data/Job;)V

    goto :goto_2
.end method

.method protected processRequest(Ljava/lang/Object;)Z
    .locals 10
    .parameter "request"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 587
    move-object v1, p1

    check-cast v1, Lcom/broadcom/bt/app/opp/data/Job;

    .line 589
    .local v1, j:Lcom/broadcom/bt/app/opp/data/Job;
    const-string v4, "OPPClientService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "*****Processing Job: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "********"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    sget-object v4, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_INIT:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    iput-object v4, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mClientState:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    .line 595
    invoke-static {p0, v1}, Lcom/broadcom/bt/app/opp/client/ClientHandlerFactory;->getHandler(Lcom/broadcom/bt/app/opp/client/OPPClientService;Lcom/broadcom/bt/app/opp/data/Job;)Lcom/broadcom/bt/app/opp/client/BaseClientHandler;

    move-result-object v4

    iput-object v4, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mCurrentRequestHandler:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;

    .line 597
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mCurrentRequestHandler:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;

    if-nez v4, :cond_0

    .line 598
    const-string v4, "OPPClientService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "****ERROR: unable to resolve handler for jobType/mimeType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 657
    :goto_0
    return v4

    .line 605
    :cond_0
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mSessionManager:Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;

    invoke-virtual {v4}, Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;->getLatestSession()Lcom/broadcom/bt/app/opp/data/OPPSession;

    move-result-object v3

    .line 613
    .local v3, s:Lcom/broadcom/bt/app/opp/data/OPPSession;
    const-string v4, "OPPClientService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "********Session state: sessionObject="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const-string v7, "OPPClientService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "********Session state: started="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v3, :cond_2

    const-string v4, "false"

    :goto_1
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const-string v7, "OPPClientService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "********Session state: closed="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v3, :cond_3

    const-string v4, "false"

    :goto_2
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    if-eqz v3, :cond_1

    iget-boolean v4, v3, Lcom/broadcom/bt/app/opp/data/OPPSession;->mStarted:Z

    if-eqz v4, :cond_1

    iget-boolean v4, v3, Lcom/broadcom/bt/app/opp/data/OPPSession;->mClosed:Z

    if-eqz v4, :cond_4

    .line 619
    :cond_1
    invoke-direct {p0, v1}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->processRequest_NewSession(Lcom/broadcom/bt/app/opp/data/Job;)Z

    move-result v4

    goto :goto_0

    .line 614
    :cond_2
    iget-boolean v4, v3, Lcom/broadcom/bt/app/opp/data/OPPSession;->mStarted:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 615
    :cond_3
    iget-boolean v4, v3, Lcom/broadcom/bt/app/opp/data/OPPSession;->mClosed:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 620
    :cond_4
    iget-boolean v4, v3, Lcom/broadcom/bt/app/opp/data/OPPSession;->mTimeoutOccurred:Z

    if-eqz v4, :cond_8

    .line 624
    const/4 v2, 0x1

    .line 625
    .local v2, ongoingTimeout:Z
    iget-object v7, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mTimeoutLock:Ljava/lang/Object;

    monitor-enter v7

    .line 627
    :try_start_0
    const-string v4, "OPPClientService"

    const-string v8, "processRequest() Handling timeout"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-boolean v4, v3, Lcom/broadcom/bt/app/opp/data/OPPSession;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_5

    .line 632
    :try_start_1
    const-string v4, "OPPClientService"

    const-string v8, "Close not received. Waiting...."

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mTimeoutLock:Ljava/lang/Object;

    const-wide/16 v8, 0x3a98

    invoke-virtual {v4, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 639
    :cond_5
    :goto_3
    :try_start_2
    iget-boolean v4, v3, Lcom/broadcom/bt/app/opp/data/OPPSession;->mClosed:Z

    if-nez v4, :cond_6

    move v2, v6

    .line 640
    :goto_4
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 641
    if-eqz v2, :cond_7

    .line 643
    const-string v4, "OPPClientService"

    const-string v5, "Ongoing timeout....Calling timeout handler..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->onTimeout()V

    move v4, v6

    .line 646
    goto/16 :goto_0

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v4, "OPPClientService"

    const-string v8, "Unable to acquire timeout lock"

    invoke-static {v4, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 640
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    :cond_6
    move v2, v5

    .line 639
    goto :goto_4

    .line 649
    :cond_7
    const-string v4, "OPPClientService"

    const-string v5, "Timeout cleared. Creating new session"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-direct {p0, v1}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->processRequest_NewSession(Lcom/broadcom/bt/app/opp/data/Job;)Z

    move-result v4

    goto/16 :goto_0

    .line 653
    .end local v2           #ongoingTimeout:Z
    :cond_8
    iget-object v4, v3, Lcom/broadcom/bt/app/opp/data/OPPSession;->mSessionId:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 655
    invoke-virtual {p0, v3, v1}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->processRequest_CurrentSession(Lcom/broadcom/bt/app/opp/data/OPPSession;Lcom/broadcom/bt/app/opp/data/Job;)Z

    move-result v4

    goto/16 :goto_0

    .line 657
    :cond_9
    invoke-direct {p0, v3, v1}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->processRequest_NewSession_StopPrevious(Lcom/broadcom/bt/app/opp/data/OPPSession;Lcom/broadcom/bt/app/opp/data/Job;)Z

    move-result v4

    goto/16 :goto_0
.end method

.method protected processRequest_CurrentSession(Lcom/broadcom/bt/app/opp/data/OPPSession;Lcom/broadcom/bt/app/opp/data/Job;)Z
    .locals 3
    .parameter "s"
    .parameter "request"

    .prologue
    .line 725
    const-string v0, "OPPClientService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Processing new request on current session"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iput-object p2, p1, Lcom/broadcom/bt/app/opp/data/OPPSession;->mLatestRequest:Lcom/broadcom/bt/app/opp/data/Job;

    .line 734
    new-instance v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;

    iget v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mLastProcessedStartId:I

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mCurrentRequestHandler:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;-><init>(Lcom/broadcom/bt/app/opp/client/OPPClientService;ILcom/broadcom/bt/app/opp/client/BaseClientHandler;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mProcessor:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;

    .line 735
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mProcessor:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->registerEventHandler(Lcom/broadcom/bt/service/opp/IOppEventHandler;)V

    .line 736
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    const/16 v1, 0x1388

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mClientState:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    invoke-virtual {v0, v1, p0, v2}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->startOrRestartWatchdog(ILcom/broadcom/bt/app/opp/util/IWatchdogHandler;Ljava/lang/Object;)V

    .line 738
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mProcessor:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;

    invoke-virtual {v0, p2}, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->processFirstRequest(Lcom/broadcom/bt/app/opp/data/Job;)Z

    move-result v0

    return v0
.end method

.method protected updateRequest(Ljava/lang/Object;)Z
    .locals 6
    .parameter "request"

    .prologue
    .line 553
    move-object v0, p1

    check-cast v0, Lcom/broadcom/bt/app/opp/data/Job;

    .line 554
    .local v0, r:Lcom/broadcom/bt/app/opp/data/Job;
    const/4 v2, 0x0

    .line 556
    .local v2, updated:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->updateRequest(Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 560
    :goto_0
    return v2

    .line 557
    :catch_0
    move-exception v1

    .line 558
    .local v1, t:Ljava/lang/Throwable;
    const-string v3, "OPPClientService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Unable to add job to queue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
