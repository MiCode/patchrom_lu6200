.class Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;
.super Ljava/lang/Object;
.source "OPPServerService.java"

# interfaces
.implements Lcom/broadcom/bt/service/opp/IOppEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/opp/server/OPPServerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServerRequestProcessor"
.end annotation


# instance fields
.field public mRunCount:I

.field public mServerHandler:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;

.field public mStartId:I

.field final synthetic this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/app/opp/server/OPPServerService;I)V
    .locals 1
    .parameter
    .parameter "startId"

    .prologue
    .line 466
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 467
    iput p2, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->mStartId:I

    .line 468
    const/4 v0, 0x1

    iput v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->mRunCount:I

    .line 469
    return-void
.end method

.method private updateAccessRequestState()V
    .locals 3

    .prologue
    .line 602
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->mServerHandler:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;

    iget-boolean v1, v1, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;->mAccessGranted:Z

    if-nez v1, :cond_1

    .line 603
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->getCurrentSession()Lcom/broadcom/bt/app/opp/data/OPPSession;

    move-result-object v0

    .line 604
    .local v0, s:Lcom/broadcom/bt/app/opp/data/OPPSession;
    if-eqz v0, :cond_0

    .line 605
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->mServerHandler:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;->getRequest()Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/app/opp/data/OPPSession;->setRequestTypeAllowed(Lcom/broadcom/bt/app/opp/data/Job;)V

    .line 607
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->mServerHandler:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;->mAccessGranted:Z

    .line 610
    .end local v0           #s:Lcom/broadcom/bt/app/opp/data/OPPSession;
    :cond_1
    return-void
.end method

.method private updateLastRunTime()V
    .locals 2

    .prologue
    .line 443
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->access$002(J)J

    .line 444
    return-void
.end method

.method private waitToRun()V
    .locals 10

    .prologue
    .line 447
    const-wide/16 v0, 0x1f4

    .line 448
    .local v0, WAIT_TIME_MS:J
    const-wide/16 v4, 0x1f4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->access$000()J

    move-result-wide v8

    sub-long/2addr v6, v8

    sub-long v2, v4, v6

    .line 449
    .local v2, waitTimeMs:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 452
    :try_start_0
    const-string v4, "ServerRequestProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "**************Waiting to processing next request (ms)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :goto_0
    return-void

    .line 460
    :cond_0
    const-string v4, "ServerRequestProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "**************Not waiting to process next request (ms)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 455
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public onOpOwnerVcardNotSet(Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 750
    return-void
.end method

.method public onOpcAmpStateChanged(Ljava/lang/String;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 773
    return-void
.end method

.method public onOpcClose(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 753
    return-void
.end method

.method public onOpcEnable()V
    .locals 0

    .prologue
    .line 756
    return-void
.end method

.method public onOpcObjectPushed(ILjava/lang/String;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 759
    return-void
.end method

.method public onOpcObjectReceived(ILjava/lang/String;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 762
    return-void
.end method

.method public onOpcOpen()V
    .locals 0

    .prologue
    .line 765
    return-void
.end method

.method public onOpcProgress(JJ)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 768
    return-void
.end method

.method public onOpsAccessRequest(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;J)V
    .locals 15
    .parameter "peerDeviceName"
    .parameter "peerBDAddress"
    .parameter "operation"
    .parameter "format"
    .parameter "filePathName"
    .parameter "totalBytes"

    .prologue
    .line 534
    const-string v2, "ServerRequestProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "onOpsAccessRequest()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    sget-object v3, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;->STATE_OPS_ACCESS:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    iput-object v3, v2, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mReceiveState:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    .line 537
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseService;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;
    invoke-static {v2}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->access$300(Lcom/broadcom/bt/app/opp/server/OPPServerService;)Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    move-result-object v2

    const/16 v3, 0x7530

    iget-object v4, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    iget-object v4, v4, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mReceiveState:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    invoke-virtual {v2, v3, v4}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->pet(ILjava/lang/Object;)V

    .line 539
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    iget v3, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->mStartId:I

    iget v4, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->mRunCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->mRunCount:I

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    #calls: Lcom/broadcom/bt/app/opp/server/OPPServerService;->createServerRequest(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;J)Lcom/broadcom/bt/app/opp/data/Job;
    invoke-static/range {v2 .. v11}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->access$400(Lcom/broadcom/bt/app/opp/server/OPPServerService;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;J)Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v12

    .line 542
    .local v12, r:Lcom/broadcom/bt/app/opp/data/Job;
    const/16 v2, 0xc0

    iput v2, v12, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 543
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v12, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    .line 547
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    #getter for: Lcom/broadcom/bt/app/opp/server/OPPServerService;->mSessionManager:Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;
    invoke-static {v2}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->access$500(Lcom/broadcom/bt/app/opp/server/OPPServerService;)Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;->getSession(Lcom/broadcom/bt/app/opp/data/Job;)Lcom/broadcom/bt/app/opp/data/OPPSession;

    move-result-object v14

    .line 548
    .local v14, s:Lcom/broadcom/bt/app/opp/data/OPPSession;
    if-eqz v14, :cond_2

    iget-boolean v2, v14, Lcom/broadcom/bt/app/opp/data/OPPSession;->mCloseRequested:Z

    if-eqz v2, :cond_2

    .line 550
    const-string v2, "ServerRequestProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Session is closing for request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Denying access..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    invoke-static {v2}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->access$600(Lcom/broadcom/bt/app/opp/server/OPPServerService;)Lcom/broadcom/bt/service/opp/BluetoothOPP;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 554
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    invoke-static {v2}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->access$700(Lcom/broadcom/bt/app/opp/server/OPPServerService;)Lcom/broadcom/bt/service/opp/BluetoothOPP;

    move-result-object v2

    const/4 v3, 0x1

    move/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {v2, v0, v3, v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->grantAccess(IILjava/lang/String;)V

    .line 558
    :cond_0
    const/16 v2, 0x1ea

    iput v2, v12, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 559
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/broadcom/bt/app/opp/data/Job;->mCancelRequested:Z

    .line 560
    iget-wide v2, v12, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    iput-wide v2, v12, Lcom/broadcom/bt/app/opp/data/Job;->mEndTimestamp:J

    .line 562
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v12, v3}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->addRequest(Ljava/lang/Object;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 563
    invoke-virtual {v12}, Lcom/broadcom/bt/app/opp/data/Job;->getJobUri()Landroid/net/Uri;

    move-result-object v13

    .line 564
    .local v13, requestUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    invoke-virtual {v2}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v13}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->setCancelRequested(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    .line 565
    invoke-static {v12}, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->requestCancelled(Lcom/broadcom/bt/app/opp/data/Job;)V

    .line 599
    .end local v13           #requestUri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 569
    :cond_2
    if-eqz v12, :cond_3

    if-eqz v14, :cond_3

    .line 576
    invoke-virtual {v14, v12}, Lcom/broadcom/bt/app/opp/data/OPPSession;->setLatestRequest(Lcom/broadcom/bt/app/opp/data/Job;)V

    .line 580
    :cond_3
    if-eqz v12, :cond_4

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    const/4 v3, 0x1

    invoke-virtual {v2, v12, v3}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->addRequest(Ljava/lang/Object;Z)Z

    move-result v2

    if-nez v2, :cond_4

    .line 583
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    invoke-static {v2}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->access$800(Lcom/broadcom/bt/app/opp/server/OPPServerService;)Lcom/broadcom/bt/service/opp/BluetoothOPP;

    move-result-object v2

    const/4 v3, 0x1

    move/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {v2, v0, v3, v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->grantAccess(IILjava/lang/String;)V

    goto :goto_0

    .line 587
    :cond_4
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    invoke-static {v2, v12}, Lcom/broadcom/bt/app/opp/server/ServerHandlerFactory;->getHandler(Lcom/broadcom/bt/app/opp/server/OPPServerService;Lcom/broadcom/bt/app/opp/data/Job;)Lcom/broadcom/bt/app/opp/server/BaseServerHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->mServerHandler:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;

    .line 588
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->mServerHandler:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;

    if-nez v2, :cond_5

    .line 590
    const-string v2, "ServerRequestProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Error processing server request. Handler not found to support requestType/format : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v12, Lcom/broadcom/bt/app/opp/data/Job;->mRequestType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v12, Lcom/broadcom/bt/app/opp/data/Job;->mFileFormat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Server Handler Not Found"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 595
    :cond_5
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->waitToRun()V

    .line 596
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->mServerHandler:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;

    invoke-virtual {v2}, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;->run()V

    .line 597
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->updateLastRunTime()V

    goto :goto_0
.end method

.method public onOpsAmpStateChanged(Ljava/lang/String;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 627
    const-string v0, "ServerRequestProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onOpsAmpStateChanged()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    return-void
.end method

.method public onOpsClose()V
    .locals 10

    .prologue
    .line 658
    const-string v5, "ServerRequestProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "onOpsClose() + previousReceiveState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    iget-object v7, v7, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mReceiveState:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseService;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;
    invoke-static {v5}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->access$1100(Lcom/broadcom/bt/app/opp/server/OPPServerService;)Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->stop()V

    .line 662
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    iget-object v2, v5, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mReceiveState:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    .line 663
    .local v2, previousState:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    sget-object v6, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;->STATE_OPS_CLOSED:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    iput-object v6, v5, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mReceiveState:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    .line 664
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->mServerHandler:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;

    if-eqz v5, :cond_0

    .line 665
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->mServerHandler:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;

    invoke-virtual {v5}, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;->onOpsClose()V

    .line 668
    :cond_0
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    #getter for: Lcom/broadcom/bt/app/opp/server/OPPServerService;->mSessionManager:Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;
    invoke-static {v5}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->access$500(Lcom/broadcom/bt/app/opp/server/OPPServerService;)Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;->getLatestSession()Lcom/broadcom/bt/app/opp/data/OPPSession;

    move-result-object v4

    .line 669
    .local v4, s:Lcom/broadcom/bt/app/opp/data/OPPSession;
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    #calls: Lcom/broadcom/bt/app/opp/server/OPPServerService;->getCurrentRequest()Lcom/broadcom/bt/app/opp/data/Job;
    invoke-static {v5}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->access$1200(Lcom/broadcom/bt/app/opp/server/OPPServerService;)Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v0

    .line 670
    .local v0, currentRequest:Lcom/broadcom/bt/app/opp/data/Job;
    const/4 v3, -0x1

    .line 671
    .local v3, requestId:I
    if-eqz v0, :cond_1

    .line 672
    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    .line 675
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    invoke-virtual {v5}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/data/Job;->getJobUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getRequest(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v0

    .line 679
    sget-object v5, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;->STATE_OPS_ACCESS:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    if-ne v2, v5, :cond_1

    const/4 v5, -0x1

    if-le v3, v5, :cond_1

    .line 681
    move v1, v3

    .line 682
    .local v1, id:I
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    iget-object v5, v5, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mTimeoutEventHandler:Landroid/os/Handler;

    new-instance v6, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor$2;

    invoke-direct {v6, p0, v1}, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor$2;-><init>(Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 691
    .end local v1           #id:I
    :cond_1
    if-nez v4, :cond_2

    .line 693
    const-string v5, "ServerRequestProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Session not found in onOpsClose()...Leaving"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :goto_0
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    invoke-virtual {v5, v0}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->finishLastRequest(Lcom/broadcom/bt/app/opp/data/Job;)V

    .line 741
    return-void

    .line 697
    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/broadcom/bt/app/opp/data/OPPSession;->mClosed:Z

    .line 704
    iget-boolean v5, v4, Lcom/broadcom/bt/app/opp/data/OPPSession;->mTimeoutOccurred:Z

    if-eqz v5, :cond_4

    .line 710
    const-string v5, "ServerRequestProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Session timeout occurred and previously handled. Leaving onOpsClose()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    #getter for: Lcom/broadcom/bt/app/opp/server/OPPServerService;->mSessionManager:Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;
    invoke-static {v5}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->access$500(Lcom/broadcom/bt/app/opp/server/OPPServerService;)Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;

    move-result-object v5

    iget-object v6, v4, Lcom/broadcom/bt/app/opp/data/OPPSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;->removeSession(Ljava/lang/String;)Lcom/broadcom/bt/app/opp/data/OPPSession;

    goto :goto_0

    .line 713
    :cond_4
    iget-boolean v5, v4, Lcom/broadcom/bt/app/opp/data/OPPSession;->mCloseRequested:Z

    if-eqz v5, :cond_5

    if-eqz v0, :cond_5

    .line 716
    const-string v5, "ServerRequestProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Session closed. Setting request to canceled for requestId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    invoke-virtual {v5}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5, v0, v6, v7}, Lcom/broadcom/bt/app/opp/data/Constants;->setStatusCancelled(Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;J)V

    goto :goto_1

    .line 721
    :cond_5
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->mServerHandler:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;

    invoke-virtual {v5}, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;->isErrorSet()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/data/Job;->isStatusFinished()Z

    move-result v5

    if-nez v5, :cond_3

    .line 731
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    iget-object v5, v5, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mTimeoutEventHandler:Landroid/os/Handler;

    new-instance v6, Lcom/broadcom/bt/app/opp/server/OPPServerService$OpsCloseDelayedHandler;

    iget-object v7, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    iget-object v8, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->mServerHandler:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/broadcom/bt/app/opp/server/OPPServerService$OpsCloseDelayedHandler;-><init>(Lcom/broadcom/bt/app/opp/server/OPPServerService;Lcom/broadcom/bt/app/opp/server/BaseServerHandler;Lcom/broadcom/bt/app/opp/server/OPPServerService$1;)V

    const-wide/16 v7, 0x96

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public onOpsObjectReceived(ILjava/lang/String;)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 646
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    sget-object v1, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;->STATE_OPS_RECEIVED:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    iput-object v1, v0, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mReceiveState:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    .line 647
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseService;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->access$1000(Lcom/broadcom/bt/app/opp/server/OPPServerService;)Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    move-result-object v0

    const/16 v1, 0x3a98

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    iget-object v2, v2, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mReceiveState:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->pet(ILjava/lang/Object;)V

    .line 649
    const-string v0, "ServerRequestProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onOpsObjectReceived()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->mServerHandler:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;

    if-eqz v0, :cond_0

    .line 651
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->updateAccessRequestState()V

    .line 652
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->mServerHandler:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;->onOpsObjectReceived(ILjava/lang/String;)V

    .line 654
    :cond_0
    return-void
.end method

.method public onOpsOpen()V
    .locals 0

    .prologue
    .line 744
    return-void
.end method

.method public onOpsProgress(JJ)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 612
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    sget-object v1, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;->STATE_OPS_PROGRESS:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    iput-object v1, v0, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mReceiveState:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    .line 613
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseService;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->access$900(Lcom/broadcom/bt/app/opp/server/OPPServerService;)Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    move-result-object v0

    const/16 v1, 0x3a98

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    iget-object v2, v2, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mReceiveState:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->pet(ILjava/lang/Object;)V

    .line 615
    const-string v0, "ServerRequestProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onOpsProgress()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->mServerHandler:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;

    if-eqz v0, :cond_0

    .line 618
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->updateAccessRequestState()V

    .line 619
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->mServerHandler:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;->onOpsProgress(JJ)V

    .line 621
    :cond_0
    return-void
.end method

.method public processFirstRequest(Lcom/broadcom/bt/app/opp/data/Job;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 473
    const-string v0, "ServerRequestProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*****Processing First Server Request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "********"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    sget-object v1, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;->STATE_OPS_ACCESS:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    iput-object v1, v0, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mReceiveState:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    .line 480
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseService;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->access$200(Lcom/broadcom/bt/app/opp/server/OPPServerService;)Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    move-result-object v0

    const/16 v1, 0x7530

    new-instance v2, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor$1;

    invoke-direct {v2, p0}, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor$1;-><init>(Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;)V

    iget-object v3, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    iget-object v3, v3, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mReceiveState:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->start(ILcom/broadcom/bt/app/opp/util/IWatchdogHandler;Ljava/lang/Object;)V

    .line 495
    const/16 v0, 0xc0

    iput v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 496
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    .line 499
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Lcom/broadcom/bt/app/opp/data/Job;->getJobUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, p1, v3}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->startRequestStatus(Lcom/broadcom/bt/app/opp/util/BaseService;Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/broadcom/bt/app/opp/data/Job;Z)I

    .line 502
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    invoke-static {v0, p1}, Lcom/broadcom/bt/app/opp/server/ServerHandlerFactory;->getHandler(Lcom/broadcom/bt/app/opp/server/OPPServerService;Lcom/broadcom/bt/app/opp/data/Job;)Lcom/broadcom/bt/app/opp/server/BaseServerHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->mServerHandler:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;

    .line 503
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->mServerHandler:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;

    if-nez v0, :cond_0

    .line 504
    const-string v0, "ServerRequestProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Error processing server request. Handler not found to support requestType/format : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/broadcom/bt/app/opp/data/Job;->mFileFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :goto_0
    return-void

    .line 511
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->waitToRun()V

    .line 512
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->mServerHandler:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;->run()V

    .line 513
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->updateLastRunTime()V

    goto :goto_0
.end method
