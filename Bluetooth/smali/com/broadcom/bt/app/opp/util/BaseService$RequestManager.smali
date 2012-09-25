.class public Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;
.super Ljava/lang/Object;
.source "BaseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/opp/util/BaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RequestManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;
    }
.end annotation


# instance fields
.field mCurrentRequestProcessed:Z

.field mInterrupted:Z

.field mRequestWorker:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;

.field mWorkerIsWaiting:Z

.field mWorkerThread:Ljava/lang/Thread;

.field mWorkerThreadRunning:Z

.field final synthetic this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

.field final threadNamePrefix:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/broadcom/bt/app/opp/util/BaseService;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 299
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/opp/util/BaseService;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "WorkerThread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->threadNamePrefix:Ljava/lang/String;

    .line 304
    new-instance v0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;-><init>(Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->mRequestWorker:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;

    .line 306
    iput-boolean v2, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->mWorkerIsWaiting:Z

    .line 310
    iput-boolean v2, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->mCurrentRequestProcessed:Z

    .line 396
    return-void
.end method

.method private declared-synchronized startWorkerIfNeeded()V
    .locals 5

    .prologue
    .line 330
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->mWorkerThreadRunning:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->mInterrupted:Z

    if-nez v0, :cond_1

    .line 332
    const-string v0, "OPPBaseService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*****New request and worker thread not started. Starting it..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->mRequestWorker:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager$RequestWorker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->threadNamePrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->mWorkerThread:Ljava/lang/Thread;

    .line 337
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->mWorkerThreadRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 339
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->mWorkerIsWaiting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseService;->KEEP_SERVICE_ALIVE:Z
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/util/BaseService;->access$200(Lcom/broadcom/bt/app/opp/util/BaseService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addRequest(ILjava/lang/Object;ZZ)Z
    .locals 4
    .parameter "startId"
    .parameter "request"
    .parameter "startWorkerThreadIfNeeded"
    .parameter "dispatchPendingEvent"

    .prologue
    .line 370
    monitor-enter p0

    :try_start_0
    const-string v1, "OPPBaseService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Adding new request..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    #calls: Lcom/broadcom/bt/app/opp/util/BaseService;->cancelScheduledShutdown()V
    invoke-static {v1}, Lcom/broadcom/bt/app/opp/util/BaseService;->access$300(Lcom/broadcom/bt/app/opp/util/BaseService;)V

    .line 375
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    invoke-virtual {v1, p2, p4}, Lcom/broadcom/bt/app/opp/util/BaseService;->addRequest(Ljava/lang/Object;Z)Z

    move-result v0

    .line 376
    .local v0, requestAdded:Z
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    iput p1, v1, Lcom/broadcom/bt/app/opp/util/BaseService;->mLastProcessedStartId:I

    .line 379
    if-nez v0, :cond_0

    .line 380
    const-string v1, "OPPBaseService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Unable to add request to request manager....Returning..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    const/4 v1, 0x0

    .line 387
    :goto_0
    monitor-exit p0

    return v1

    .line 384
    :cond_0
    if-eqz p3, :cond_1

    .line 385
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->startWorkerIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 370
    .end local v0           #requestAdded:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->mWorkerThreadRunning:Z

    return v0
.end method

.method public declared-synchronized requestProcessed()V
    .locals 1

    .prologue
    .line 313
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->mCurrentRequestProcessed:Z

    .line 314
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    monitor-exit p0

    return-void

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized restart(I)V
    .locals 1
    .parameter "startId"

    .prologue
    .line 346
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    #calls: Lcom/broadcom/bt/app/opp/util/BaseService;->cancelScheduledShutdown()V
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/util/BaseService;->access$300(Lcom/broadcom/bt/app/opp/util/BaseService;)V

    .line 347
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    iput p1, v0, Lcom/broadcom/bt/app/opp/util/BaseService;->mLastProcessedStartId:I

    .line 348
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->startWorkerIfNeeded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    monitor-exit p0

    return-void

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized retryRequest(ILjava/lang/Object;)V
    .locals 4
    .parameter "startId"
    .parameter "request"

    .prologue
    .line 353
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    #calls: Lcom/broadcom/bt/app/opp/util/BaseService;->cancelScheduledShutdown()V
    invoke-static {v1}, Lcom/broadcom/bt/app/opp/util/BaseService;->access$300(Lcom/broadcom/bt/app/opp/util/BaseService;)V

    .line 354
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    invoke-virtual {v1, p2}, Lcom/broadcom/bt/app/opp/util/BaseService;->updateRequest(Ljava/lang/Object;)Z

    move-result v0

    .line 355
    .local v0, requestUpdated:Z
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    iput p1, v1, Lcom/broadcom/bt/app/opp/util/BaseService;->mLastProcessedStartId:I

    .line 358
    if-nez v0, :cond_0

    .line 359
    const-string v1, "OPPBaseService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Unable to add request to request manager....Returning..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    :goto_0
    monitor-exit p0

    return-void

    .line 364
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->startWorkerIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 353
    .end local v0           #requestUpdated:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public stopWorker()V
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->mInterrupted:Z

    .line 320
    monitor-enter p0

    .line 321
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 322
    monitor-exit p0

    .line 323
    return-void

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
