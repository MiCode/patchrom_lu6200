.class public Lcom/broadcom/bt/app/opp/server/OPPServerService;
.super Lcom/broadcom/bt/app/opp/util/BaseService;
.source "OPPServerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/opp/server/OPPServerService$1;,
        Lcom/broadcom/bt/app/opp/server/OPPServerService$OpsCloseDelayedHandler;,
        Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;,
        Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;,
        Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;
    }
.end annotation


# static fields
.field private static mLastCompletedTimeMs:J

.field private static mRefs:I


# instance fields
.field mEventCallbackHandler:Lcom/broadcom/bt/app/opp/util/EventCallbackHandler;

.field protected mMediaScanner:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

.field private mProcessor:Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;

.field protected mReceiveState:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

.field private final mServiceId:J

.field private mSessionManager:Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;

.field protected mTimeoutEventHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 867
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mRefs:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 870
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/util/BaseService;-><init>()V

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mServiceId:J

    .line 70
    sget-object v0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;->UNKNOWN:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mReceiveState:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    .line 875
    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    .line 53
    sget-wide v0, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mLastCompletedTimeMs:J

    return-wide v0
.end method

.method static synthetic access$002(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    sput-wide p0, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mLastCompletedTimeMs:J

    return-wide p0
.end method

.method static synthetic access$100(Lcom/broadcom/bt/app/opp/server/OPPServerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->onOpsTimeout()V

    return-void
.end method

.method static synthetic access$1000(Lcom/broadcom/bt/app/opp/server/OPPServerService;)Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/broadcom/bt/app/opp/server/OPPServerService;)Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/broadcom/bt/app/opp/server/OPPServerService;)Lcom/broadcom/bt/app/opp/data/Job;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->getCurrentRequest()Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/broadcom/bt/app/opp/server/OPPServerService;)Lcom/broadcom/bt/service/opp/BluetoothOPP;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    return-object v0
.end method

.method static synthetic access$200(Lcom/broadcom/bt/app/opp/server/OPPServerService;)Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/broadcom/bt/app/opp/server/OPPServerService;)Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/broadcom/bt/app/opp/server/OPPServerService;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;J)Lcom/broadcom/bt/app/opp/data/Job;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p9}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->createServerRequest(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;J)Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/broadcom/bt/app/opp/server/OPPServerService;)Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mSessionManager:Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/broadcom/bt/app/opp/server/OPPServerService;)Lcom/broadcom/bt/service/opp/BluetoothOPP;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    return-object v0
.end method

.method static synthetic access$700(Lcom/broadcom/bt/app/opp/server/OPPServerService;)Lcom/broadcom/bt/service/opp/BluetoothOPP;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    return-object v0
.end method

.method static synthetic access$800(Lcom/broadcom/bt/app/opp/server/OPPServerService;)Lcom/broadcom/bt/service/opp/BluetoothOPP;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    return-object v0
.end method

.method static synthetic access$900(Lcom/broadcom/bt/app/opp/server/OPPServerService;)Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    return-object v0
.end method

.method private createServerRequest(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;J)Lcom/broadcom/bt/app/opp/data/Job;
    .locals 5
    .parameter "startId"
    .parameter "instanceId"
    .parameter "remoteName"
    .parameter "remoteAddr"
    .parameter "receivedOp"
    .parameter "format"
    .parameter "filepath"
    .parameter "totalBytes"

    .prologue
    const/4 v4, 0x1

    .line 146
    new-instance v1, Lcom/broadcom/bt/app/opp/data/Job;

    invoke-direct {v1}, Lcom/broadcom/bt/app/opp/data/Job;-><init>()V

    .line 147
    .local v1, r:Lcom/broadcom/bt/app/opp/data/Job;
    iput v4, v1, Lcom/broadcom/bt/app/opp/data/Job;->mRole:I

    .line 148
    invoke-static {p5}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->toRequestType(I)I

    move-result v2

    iput v2, v1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestType:I

    .line 149
    iget v2, v1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 150
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    .line 154
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mServiceId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/broadcom/bt/app/opp/data/Job;->mTransactionId:Ljava/lang/String;

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/broadcom/bt/app/opp/data/Job;->mTransactionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    .line 156
    const/16 v2, 0xbe

    iput v2, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 158
    iput-object p3, v1, Lcom/broadcom/bt/app/opp/data/Job;->mRemoteName:Ljava/lang/String;

    .line 159
    iput-object p4, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    .line 160
    iput p6, v1, Lcom/broadcom/bt/app/opp/data/Job;->mFileFormat:I

    .line 161
    invoke-virtual {v1, p7}, Lcom/broadcom/bt/app/opp/data/Job;->setFile(Ljava/lang/String;)V

    .line 162
    iput-wide p8, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    .line 163
    const-wide/16 v2, 0x1

    iput-wide v2, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    .line 164
    invoke-static {p7}, Lcom/broadcom/bt/app/opp/util/Utils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, fileExt:Ljava/lang/String;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/util/Utils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    .line 167
    return-object v1

    .line 152
    .end local v0           #fileExt:Ljava/lang/String;
    :cond_0
    iput v4, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    goto :goto_0
.end method

.method private declared-synchronized getCurrentProcessor()Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;
    .locals 1

    .prologue
    .line 357
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mProcessor:Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getCurrentRequest()Lcom/broadcom/bt/app/opp/data/Job;
    .locals 2

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->getCurrentServerHandler()Lcom/broadcom/bt/app/opp/server/BaseServerHandler;

    move-result-object v0

    .line 371
    .local v0, h:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;->getRequest()Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v1

    goto :goto_0
.end method

.method private getCurrentServerHandler()Lcom/broadcom/bt/app/opp/server/BaseServerHandler;
    .locals 2

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->getCurrentProcessor()Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;

    move-result-object v0

    .line 366
    .local v0, p:Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->mServerHandler:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;

    goto :goto_0
.end method

.method private onOpsTimeout()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 390
    const-string v5, "OPPServerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "onOpsTimeout(): State = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    invoke-virtual {v7}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->getLastState()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    invoke-virtual {v5}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->getLastState()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;->STATE_OPS_ACCESS:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    if-ne v5, v6, :cond_3

    move v2, v4

    .line 397
    .local v2, isAccessRequestState:Z
    :goto_0
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mSessionManager:Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;

    invoke-virtual {v5}, Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;->getLatestSession()Lcom/broadcom/bt/app/opp/data/OPPSession;

    move-result-object v3

    .line 398
    .local v3, s:Lcom/broadcom/bt/app/opp/data/OPPSession;
    if-eqz v3, :cond_0

    .line 399
    iput-boolean v4, v3, Lcom/broadcom/bt/app/opp/data/OPPSession;->mTimeoutOccurred:Z

    .line 402
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->getCurrentServerHandler()Lcom/broadcom/bt/app/opp/server/BaseServerHandler;

    move-result-object v1

    .line 403
    .local v1, handler:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;
    const/4 v0, 0x0

    .line 404
    .local v0, currentRequest:Lcom/broadcom/bt/app/opp/data/Job;
    if-eqz v1, :cond_2

    .line 406
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v1}, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;->getRequest()Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v6

    invoke-virtual {v6}, Lcom/broadcom/bt/app/opp/data/Job;->getJobUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getRequest(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v0

    .line 408
    if-eqz v0, :cond_2

    .line 409
    if-eqz v2, :cond_1

    .line 410
    const-string v5, "OPPServerService"

    const-string v6, "Timeout occurred. Denying request..."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    iget v6, v0, Lcom/broadcom/bt/app/opp/data/Job;->mRequestType:I

    invoke-static {v6}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->toReceivedOp(I)I

    move-result v6

    iget-object v7, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-virtual {v5, v6, v4, v7}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->grantAccess(IILjava/lang/String;)V

    .line 412
    if-eqz v2, :cond_1

    .line 413
    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v4}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->createIntent_ClearAccessRequest(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 419
    :cond_1
    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/data/Job;->isStatusFinished()Z

    move-result v4

    if-nez v4, :cond_2

    .line 420
    const/16 v4, 0x1e2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;->processError(IJLjava/lang/Throwable;)V

    .line 425
    :cond_2
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->finishLastRequest(Lcom/broadcom/bt/app/opp/data/Job;)V

    .line 426
    return-void

    .line 393
    .end local v0           #currentRequest:Lcom/broadcom/bt/app/opp/data/Job;
    .end local v1           #handler:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;
    .end local v2           #isAccessRequestState:Z
    .end local v3           #s:Lcom/broadcom/bt/app/opp/data/OPPSession;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private declared-synchronized processCancelAction(Landroid/content/Intent;I)V
    .locals 6
    .parameter "i"
    .parameter "startId"

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    const-string v3, "OPPServerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "processCancelAction()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 250
    .local v2, requestUri:Landroid/net/Uri;
    const/4 v1, 0x0

    .line 252
    .local v1, request:Lcom/broadcom/bt/app/opp/data/Job;
    if-nez v2, :cond_3

    .line 254
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->getCurrentServerHandler()Lcom/broadcom/bt/app/opp/server/BaseServerHandler;

    move-result-object v0

    .line 255
    .local v0, h:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;
    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;->getRequest()Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v1

    .line 257
    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {v1}, Lcom/broadcom/bt/app/opp/data/Job;->getJobUri()Landroid/net/Uri;

    move-result-object v2

    .line 265
    .end local v0           #h:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    iget v3, v1, Lcom/broadcom/bt/app/opp/data/Job;->mRole:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 266
    :cond_1
    const-string v3, "OPPServerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Cannot process cancel action. No job to cancel!!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 263
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getRequest(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v1

    goto :goto_0

    .line 269
    :cond_4
    iget v3, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 272
    :pswitch_1
    const-string v3, "OPPServerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is pending...Setting it to cancelled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->setCancelRequested(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    .line 280
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v1, v4, v5}, Lcom/broadcom/bt/app/opp/data/Constants;->setStatusCancelled(Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 246
    .end local v1           #request:Lcom/broadcom/bt/app/opp/data/Job;
    .end local v2           #requestUri:Landroid/net/Uri;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 285
    .restart local v1       #request:Lcom/broadcom/bt/app/opp/data/Job;
    .restart local v2       #requestUri:Landroid/net/Uri;
    :pswitch_2
    :try_start_2
    const-string v3, "OPPServerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is in progress...Stopping session for which it belongs to"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->setCancelRequested(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    .line 291
    invoke-static {v1}, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->requestCancelRequested(Lcom/broadcom/bt/app/opp/data/Job;)V

    .line 293
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mSessionManager:Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;

    invoke-virtual {v3, v1}, Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;->closeSession(Lcom/broadcom/bt/app/opp/data/Job;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 296
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v1, v4, v5}, Lcom/broadcom/bt/app/opp/data/Constants;->setStatusCancelled(Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0xbe
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private processReceiveAction(Landroid/content/Intent;I)V
    .locals 18
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 214
    invoke-static/range {p1 .. p1}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->getReceivedOp(Landroid/content/Intent;)I

    move-result v15

    .line 215
    .local v15, operation:I
    invoke-static/range {p1 .. p1}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->getReceivedFormat(Landroid/content/Intent;)I

    move-result v14

    .line 216
    .local v14, format:I
    invoke-static/range {p1 .. p1}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->getReceivedFilepath(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v13

    .line 217
    .local v13, filePathName:Ljava/lang/String;
    const-string v2, "OPPServerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LG_BTUI] processReceiveAction format ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v2, 0x1

    if-ne v15, v2, :cond_2

    const/4 v2, 0x2

    if-le v14, v2, :cond_2

    const/16 v2, 0xff

    if-ge v14, v2, :cond_2

    .line 220
    const v2, 0x7f050112

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    if-eqz v2, :cond_1

    .line 222
    const-string v2, "OPPServerService"

    const-string v3, "grantAccess as false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    const/4 v3, 0x1

    invoke-virtual {v2, v15, v3, v13}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->grantAccess(IILjava/lang/String;)V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    const-string v2, "OPPServerService"

    const-string v3, "processReceiveAction mOppProxy is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 229
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/app/opp/util/BaseService;->mRequestManager:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    move-object/from16 v17, v0

    const/4 v4, 0x1

    invoke-static/range {p1 .. p1}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->getRemoteName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->getRemoteAddress(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->getReceivedOp(Landroid/content/Intent;)I

    move-result v7

    invoke-static/range {p1 .. p1}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->getReceivedFormat(Landroid/content/Intent;)I

    move-result v8

    invoke-static/range {p1 .. p1}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->getReceivedFilepath(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->getReceivedTotalBytes(Landroid/content/Intent;)J

    move-result-wide v10

    move-object/from16 v2, p0

    move/from16 v3, p2

    invoke-direct/range {v2 .. v11}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->createServerRequest(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;J)Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->addRequest(ILjava/lang/Object;ZZ)Z

    move-result v16

    .line 234
    .local v16, requestAdded:Z
    if-nez v16, :cond_0

    .line 236
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static/range {p1 .. p1}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->getReceivedOp(Landroid/content/Intent;)I

    move-result v3

    const/4 v4, 0x1

    invoke-static/range {p1 .. p1}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->getReceivedFilepath(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->grantAccess(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v12

    .line 238
    .local v12, e:Ljava/lang/Exception;
    const-string v2, "OPPServerService"

    const-string v3, "Unable to deny access"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processRestartAction(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mRequestManager:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    invoke-virtual {v0, p2}, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->restart(I)V

    .line 207
    return-void
.end method


# virtual methods
.method protected addRequest(Ljava/lang/Object;Z)Z
    .locals 6
    .parameter "request"
    .parameter "dispatchPendingEvent"

    .prologue
    const/4 v2, 0x1

    .line 303
    const/4 v0, 0x0

    .line 305
    .local v0, requestAdded:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    check-cast p1, Lcom/broadcom/bt/app/opp/data/Job;

    .end local p1
    const/4 v4, 0x1

    invoke-static {p0, v3, p1, v4, p2}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->addRequest(Lcom/broadcom/bt/app/opp/util/BaseService;Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;ZZ)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 310
    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    return v2

    .line 307
    :catch_0
    move-exception v1

    .line 308
    .local v1, t:Ljava/lang/Throwable;
    const-string v3, "OPPServerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Unable to add request to queue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 310
    .end local v1           #t:Ljava/lang/Throwable;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 882
    return-void
.end method

.method declared-synchronized finishLastRequest(Lcom/broadcom/bt/app/opp/data/Job;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 379
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->registerEventHandler(Lcom/broadcom/bt/service/opp/IOppEventHandler;)V

    .line 382
    :cond_0
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->onRequestFinished(Lcom/broadcom/bt/app/opp/data/Job;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    monitor-exit p0

    return-void

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getCurrentSession()Lcom/broadcom/bt/app/opp/data/OPPSession;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mSessionManager:Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;->getLatestSession()Lcom/broadcom/bt/app/opp/data/OPPSession;

    move-result-object v0

    return-object v0
.end method

.method protected getNextPendingRequest()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 318
    new-instance v0, Lcom/broadcom/bt/app/opp/data/Job;

    invoke-direct {v0}, Lcom/broadcom/bt/app/opp/data/Job;-><init>()V

    .line 319
    .local v0, r:Lcom/broadcom/bt/app/opp/data/Job;
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getNextPendingRequest(Landroid/content/ContentResolver;ILcom/broadcom/bt/app/opp/data/Job;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0           #r:Lcom/broadcom/bt/app/opp/data/Job;
    :goto_0
    return-object v0

    .restart local v0       #r:Lcom/broadcom/bt/app/opp/data/Job;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const-string v0, "OPS"

    return-object v0
.end method

.method protected keepServiceAlive()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 107
    const-string v0, "OPPServerService"

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

    .line 108
    invoke-super {p0}, Lcom/broadcom/bt/app/opp/util/BaseService;->onCreate()V

    .line 109
    new-instance v0, Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;-><init>(Lcom/broadcom/bt/app/opp/server/OPPServerService;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mSessionManager:Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;

    .line 111
    new-instance v0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mMediaScanner:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    .line 114
    new-instance v0, Lcom/broadcom/bt/app/opp/util/EventCallbackHandler;

    invoke-static {v4}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->createFilterOps(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v1

    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->createFilterVCard(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/broadcom/bt/app/opp/util/EventCallbackHandler;-><init>(Landroid/content/IntentFilter;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mEventCallbackHandler:Lcom/broadcom/bt/app/opp/util/EventCallbackHandler;

    .line 116
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mEventCallbackHandler:Lcom/broadcom/bt/app/opp/util/EventCallbackHandler;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/util/EventCallbackHandler;->start()V

    .line 127
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/16 v2, 0x1f2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->createError(IZ)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "role = 1 AND ( status = 192 OR status = 190 ) "

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mTimeoutEventHandler:Landroid/os/Handler;

    .line 134
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 79
    const-string v1, "OPPServerService"

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

    .line 81
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mSessionManager:Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;->getLatestSession()Lcom/broadcom/bt/app/opp/data/OPPSession;

    move-result-object v0

    .line 82
    .local v0, s:Lcom/broadcom/bt/app/opp/data/OPPSession;
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    if-eqz v1, :cond_1

    .line 83
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/broadcom/bt/app/opp/data/OPPSession;->mClosed:Z

    if-nez v1, :cond_0

    .line 84
    const-string v1, "OPPServerService"

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

    .line 85
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->unregisterEventHandler()V

    .line 86
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->closeOpsSession()V

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->finish()V

    .line 89
    iput-object v4, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    .line 90
    iput-object v4, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mProcessor:Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mEventCallbackHandler:Lcom/broadcom/bt/app/opp/util/EventCallbackHandler;

    if-eqz v1, :cond_2

    .line 94
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mEventCallbackHandler:Lcom/broadcom/bt/app/opp/util/EventCallbackHandler;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/opp/util/EventCallbackHandler;->finish()V

    .line 97
    :cond_2
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    if-eqz v1, :cond_3

    .line 98
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->stop()V

    .line 101
    :cond_3
    iput-object v4, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mMediaScanner:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    .line 102
    invoke-super {p0}, Lcom/broadcom/bt/app/opp/util/BaseService;->onDestroy()V

    .line 103
    return-void
.end method

.method protected onMediaUnmounted()V
    .locals 2

    .prologue
    .line 909
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 912
    .local v0, i:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 913
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->processCancelAction(Landroid/content/Intent;I)V

    .line 914
    :cond_0
    return-void
.end method

.method protected onProcessRequestFailed(Ljava/lang/Object;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 779
    const-string v0, "OPPServerService"

    const-string v1, "ERROR: onProcessRequestFailed()...Internal error occured.....calling timeout handler"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->onOpsTimeout()V

    .line 781
    return-void
.end method

.method public onRequestFinished(Lcom/broadcom/bt/app/opp/data/Job;)V
    .locals 9
    .parameter "r"

    .prologue
    .line 844
    if-nez p1, :cond_0

    .line 845
    const-string v0, "OPPServerService"

    const-string v1, "[BTUI] [OPP] onRequestFinished() : NullPointerException handled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :goto_0
    return-void

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mSessionManager:Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;->getLatestSession()Lcom/broadcom/bt/app/opp/data/OPPSession;

    move-result-object v8

    .line 852
    .local v8, session:Lcom/broadcom/bt/app/opp/data/OPPSession;
    const/4 v6, 0x0

    .line 854
    .local v6, completedRequests:I
    if-eqz p1, :cond_1

    if-eqz v8, :cond_1

    iget v0, v8, Lcom/broadcom/bt/app/opp/data/OPPSession;->mRequestCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 856
    iget v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    const/16 v1, 0x1e6

    if-eq v0, v1, :cond_1

    .line 857
    iget v0, v8, Lcom/broadcom/bt/app/opp/data/OPPSession;->mRequestCount:I

    add-int/lit8 v6, v0, -0x1

    .line 860
    :cond_1
    iget v0, p1, Lcom/broadcom/bt/app/opp/data/Job;->mRole:I

    iget v1, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    iget v2, p1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestType:I

    iget v3, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    iget-object v4, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->createIntent_TransferComplete(IIIILjava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    .line 862
    .local v7, i:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 864
    invoke-super {p0, p1}, Lcom/broadcom/bt/app/opp/util/BaseService;->onRequestFinished(Lcom/broadcom/bt/app/opp/data/Job;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v4, 0x1

    .line 172
    const-string v1, "OPPServerService"

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

    .line 176
    if-nez p1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v4

    .line 182
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, action:Ljava/lang/String;
    const-string v1, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    invoke-direct {p0, p1, p3}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->processReceiveAction(Landroid/content/Intent;I)V

    goto :goto_0

    .line 191
    :cond_2
    const-string v1, "brcm.cnl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 192
    invoke-direct {p0, p1, p3}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->processCancelAction(Landroid/content/Intent;I)V

    goto :goto_0

    .line 195
    :cond_3
    const-string v1, "brcm.rst"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    invoke-direct {p0, p1, p3}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->processRestartAction(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected processRequest(Ljava/lang/Object;)Z
    .locals 7
    .parameter "request"

    .prologue
    .line 328
    move-object v1, p1

    check-cast v1, Lcom/broadcom/bt/app/opp/data/Job;

    .line 330
    .local v1, r:Lcom/broadcom/bt/app/opp/data/Job;
    const-string v3, "OPPServerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*****Processing Request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "********"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mSessionManager:Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;

    invoke-virtual {v3, v1}, Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;->addNewSession(Lcom/broadcom/bt/app/opp/data/Job;)Lcom/broadcom/bt/app/opp/data/OPPSession;

    .line 335
    sget-object v3, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;->STATE_OPS_START:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    iput-object v3, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mReceiveState:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    .line 338
    :try_start_0
    new-instance v3, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;

    iget v4, p0, Lcom/broadcom/bt/app/opp/util/BaseService;->mLastProcessedStartId:I

    invoke-direct {v3, p0, v4}, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;-><init>(Lcom/broadcom/bt/app/opp/server/OPPServerService;I)V

    iput-object v3, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mProcessor:Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;

    .line 339
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->getProxy()Lcom/broadcom/bt/service/opp/BluetoothOPP;

    move-result-object v0

    .line 344
    .local v0, oppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mProcessor:Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;

    iget-object v4, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mEventCallbackHandler:Lcom/broadcom/bt/app/opp/util/EventCallbackHandler;

    iget-object v4, v4, Lcom/broadcom/bt/app/opp/util/EventCallbackHandler;->mFilter:Landroid/content/IntentFilter;

    iget-object v5, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mEventCallbackHandler:Lcom/broadcom/bt/app/opp/util/EventCallbackHandler;

    iget-object v5, v5, Lcom/broadcom/bt/app/opp/util/EventCallbackHandler;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xc8

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->registerEventHandler(Lcom/broadcom/bt/service/opp/IOppEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V

    .line 348
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mProcessor:Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;

    invoke-virtual {v3, v1}, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->processFirstRequest(Lcom/broadcom/bt/app/opp/data/Job;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    const/4 v3, 0x1

    .line 352
    .end local v0           #oppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    :goto_0
    return v3

    .line 350
    :catch_0
    move-exception v2

    .line 351
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "OPPServerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Error processing request"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected updateRequest(Ljava/lang/Object;)Z
    .locals 1
    .parameter "request"

    .prologue
    .line 314
    const/4 v0, 0x0

    return v0
.end method
