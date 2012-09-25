.class public Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;
.super Ljava/lang/Object;
.source "BaseService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestWorker"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;->this$1:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 398
    iget-object v7, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;->this$1:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    iget-object v7, v7, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    invoke-virtual {v7}, Lcom/broadcom/bt/app/opp/util/BaseService;->onRequestWorkerThreadRun()V

    .line 399
    const/16 v7, 0xa

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 401
    const/4 v3, 0x0

    .line 403
    .local v3, r:Lcom/broadcom/bt/app/opp/data/Job;
    :goto_0
    iget-object v7, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;->this$1:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    iget-boolean v7, v7, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->mInterrupted:Z

    if-nez v7, :cond_a

    .line 404
    const/4 v5, 0x0

    .line 405
    .local v5, startShutdown:Z
    iget-object v8, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;->this$1:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    monitor-enter v8

    .line 406
    :try_start_0
    iget-object v7, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;->this$1:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    iget-object v7, v7, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    invoke-virtual {v7}, Lcom/broadcom/bt/app/opp/util/BaseService;->getNextPendingRequest()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/broadcom/bt/app/opp/data/Job;

    move-object v3, v0

    .line 408
    if-nez v3, :cond_3

    .line 411
    iget-object v7, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;->this$1:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    iget-object v7, v7, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Lcom/broadcom/bt/app/opp/util/BaseService;->access$400(Lcom/broadcom/bt/app/opp/util/BaseService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;->this$1:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    iget-object v7, v7, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Lcom/broadcom/bt/app/opp/util/BaseService;->access$400(Lcom/broadcom/bt/app/opp/util/BaseService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    .line 413
    :try_start_1
    const-string v7, "OPPBaseService"

    const-string v9, "No more requests to process...Release wake lock..."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v7, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;->this$1:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    iget-object v7, v7, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Lcom/broadcom/bt/app/opp/util/BaseService;->access$400(Lcom/broadcom/bt/app/opp/util/BaseService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 424
    :cond_0
    :goto_1
    :try_start_2
    iget-object v7, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;->this$1:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    iget-object v7, v7, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseService;->KEEP_SERVICE_ALIVE:Z
    invoke-static {v7}, Lcom/broadcom/bt/app/opp/util/BaseService;->access$200(Lcom/broadcom/bt/app/opp/util/BaseService;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 430
    iget-object v7, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;->this$1:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    iget-object v7, v7, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    iget-object v7, v7, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    if-nez v7, :cond_1

    .line 431
    iget-object v7, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;->this$1:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    iget-object v7, v7, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    invoke-virtual {v7}, Lcom/broadcom/bt/app/opp/util/BaseService;->initServiceProxy()Lcom/broadcom/bt/service/opp/BluetoothOPP;

    .line 435
    :cond_1
    iget-object v7, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;->this$1:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    const/4 v9, 0x1

    iput-boolean v9, v7, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->mWorkerIsWaiting:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 437
    :try_start_3
    iget-object v7, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;->this$1:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 441
    :goto_2
    :try_start_4
    iget-object v7, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;->this$1:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    const/4 v9, 0x0

    iput-boolean v9, v7, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->mWorkerIsWaiting:Z

    .line 442
    monitor-exit v8

    goto :goto_0

    .line 459
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .line 438
    :catch_0
    move-exception v1

    .line 439
    .local v1, e:Ljava/lang/Exception;
    :try_start_5
    const-string v7, "OPPBaseService"

    const-string v9, "Unable to put worker thread to sleep"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 446
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    const-string v7, "OPPBaseService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "*****No requests to process. Shutting down request worker thread..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v7, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;->this$1:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    const/4 v9, 0x0

    iput-boolean v9, v7, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->mWorkerThreadRunning:Z

    .line 453
    const/4 v5, 0x1

    .line 459
    :cond_3
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 466
    if-eqz v5, :cond_4

    .line 467
    iget-object v7, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;->this$1:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    iget-object v7, v7, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    #calls: Lcom/broadcom/bt/app/opp/util/BaseService;->startShutdown()V
    invoke-static {v7}, Lcom/broadcom/bt/app/opp/util/BaseService;->access$000(Lcom/broadcom/bt/app/opp/util/BaseService;)V

    .line 522
    .end local v5           #startShutdown:Z
    :goto_3
    return-void

    .line 472
    .restart local v5       #startShutdown:Z
    :cond_4
    iget-object v7, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;->this$1:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    iget-object v7, v7, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    iget-object v7, v7, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    if-nez v7, :cond_5

    .line 473
    iget-object v7, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;->this$1:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    iget-object v7, v7, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    invoke-virtual {v7}, Lcom/broadcom/bt/app/opp/util/BaseService;->initServiceProxy()Lcom/broadcom/bt/service/opp/BluetoothOPP;

    .line 474
    iget-object v7, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;->this$1:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    iget-object v7, v7, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    iget-object v7, v7, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    if-nez v7, :cond_5

    .line 475
    const-string v7, "OPPBaseService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "*****Error. Unable to get OPPProxy....Aborting...."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v7, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;->this$1:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    iget-object v7, v7, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    invoke-virtual {v7, v3}, Lcom/broadcom/bt/app/opp/util/BaseService;->onProcessRequestFailed(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 486
    :cond_5
    iget-object v7, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;->this$1:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    iget-object v7, v7, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Lcom/broadcom/bt/app/opp/util/BaseService;->access$400(Lcom/broadcom/bt/app/opp/util/BaseService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    if-nez v7, :cond_6

    .line 487
    iget-object v7, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;->this$1:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    iget-object v7, v7, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    const-string v8, "power"

    invoke-virtual {v7, v8}, Lcom/broadcom/bt/app/opp/util/BaseService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 488
    .local v2, pMgr:Landroid/os/PowerManager;
    if-eqz v2, :cond_6

    .line 489
    iget-object v7, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;->this$1:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    iget-object v7, v7, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    const-string v8, "OPPBaseService"

    invoke-virtual {v2, v12, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    #setter for: Lcom/broadcom/bt/app/opp/util/BaseService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7, v8}, Lcom/broadcom/bt/app/opp/util/BaseService;->access$402(Lcom/broadcom/bt/app/opp/util/BaseService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 492
    .end local v2           #pMgr:Landroid/os/PowerManager;
    :cond_6
    iget-object v7, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;->this$1:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    iget-object v7, v7, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Lcom/broadcom/bt/app/opp/util/BaseService;->access$400(Lcom/broadcom/bt/app/opp/util/BaseService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;->this$1:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    iget-object v7, v7, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Lcom/broadcom/bt/app/opp/util/BaseService;->access$400(Lcom/broadcom/bt/app/opp/util/BaseService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-nez v7, :cond_7

    .line 493
    const-string v7, "OPPBaseService"

    const-string v8, "Acquiring wake lock..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :try_start_6
    iget-object v7, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;->this$1:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    iget-object v7, v7, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Lcom/broadcom/bt/app/opp/util/BaseService;->access$400(Lcom/broadcom/bt/app/opp/util/BaseService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 501
    :cond_7
    :goto_4
    iget-object v7, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;->this$1:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    iput-boolean v11, v7, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->mCurrentRequestProcessed:Z

    .line 502
    iget-object v7, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;->this$1:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    iget-object v7, v7, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    invoke-virtual {v7, v3}, Lcom/broadcom/bt/app/opp/util/BaseService;->processRequest(Ljava/lang/Object;)Z

    move-result v4

    .line 503
    .local v4, requestStarted:Z
    if-nez v4, :cond_8

    .line 504
    iget-object v7, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;->this$1:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    iget-object v7, v7, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    invoke-virtual {v7, v3}, Lcom/broadcom/bt/app/opp/util/BaseService;->onProcessRequestFailed(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 496
    .end local v4           #requestStarted:Z
    :catch_1
    move-exception v6

    .line 497
    .local v6, t:Ljava/lang/Throwable;
    const-string v7, "OPPBaseService"

    const-string v8, "Unable to acquire wake lock"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 508
    .end local v6           #t:Ljava/lang/Throwable;
    .restart local v4       #requestStarted:Z
    :cond_8
    iget-object v8, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;->this$1:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    monitor-enter v8

    .line 510
    :try_start_7
    iget-object v7, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;->this$1:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    iget-boolean v7, v7, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->mCurrentRequestProcessed:Z

    if-nez v7, :cond_9

    .line 511
    iget-object v7, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;->this$1:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    .line 518
    :cond_9
    :goto_5
    :try_start_8
    monitor-exit v8

    goto/16 :goto_0

    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v7

    .line 513
    :catch_2
    move-exception v6

    .line 514
    .restart local v6       #t:Ljava/lang/Throwable;
    :try_start_9
    const-string v7, "OPPBaseService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Error waiting for job to finish: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_5

    .line 521
    .end local v4           #requestStarted:Z
    .end local v5           #startShutdown:Z
    .end local v6           #t:Ljava/lang/Throwable;
    :cond_a
    const-string v7, "OPPBaseService"

    const-string v8, "*****RequestWorker interrupted...Aborting..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 415
    .restart local v5       #startShutdown:Z
    :catch_3
    move-exception v7

    goto/16 :goto_1
.end method
