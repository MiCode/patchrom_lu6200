.class Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;
.super Ljava/lang/Object;
.source "ContinuousShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/module/ContinuousShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContinuousShotSaveThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/module/ContinuousShot;


# direct methods
.method private constructor <init>(Lcom/lge/camera/module/ContinuousShot;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/camera/module/ContinuousShot;Lcom/lge/camera/module/ContinuousShot$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;-><init>(Lcom/lge/camera/module/ContinuousShot;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 314
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->isValidState()Z

    move-result v1

    if-nez v1, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    const/4 v2, 0x0

    .line 319
    .local v2, rawData:[B
    const/4 v7, 0x0

    .line 320
    .local v7, data:[B
    const/4 v5, 0x0

    .line 321
    .local v5, rotation:I
    const-wide/16 v9, 0x0

    .line 322
    .local v9, now:J
    const-string v1, "CameraApp"

    const-string v3, "[ContinuousShotSaveThread]-start"

    invoke-static {v1, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 325
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v3}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 328
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotSaveImageThreadRunning:Z
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$1200(Lcom/lge/camera/module/ContinuousShot;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 330
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 332
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$1100(Lcom/lge/camera/module/ContinuousShot;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$1100(Lcom/lge/camera/module/ContinuousShot;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-gtz v1, :cond_5

    .line 362
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #setter for: Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotSaveImageThreadRunning:Z
    invoke-static {v1, v13}, Lcom/lge/camera/module/ContinuousShot;->access$1202(Lcom/lge/camera/module/ContinuousShot;Z)Z

    .line 363
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #calls: Lcom/lge/camera/module/ContinuousShot;->notifySaveDone()V
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$1800(Lcom/lge/camera/module/ContinuousShot;)V

    .line 365
    if-eqz v7, :cond_4

    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 366
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->isPausing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mContiShotErrorOccur:Z
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$000(Lcom/lge/camera/module/ContinuousShot;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 376
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #calls: Lcom/lge/camera/module/ContinuousShot;->clearSaveImageQueue()V
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$1300(Lcom/lge/camera/module/ContinuousShot;)V

    .line 378
    const-string v1, "CameraApp"

    const-string v3, "[ContinuousShotSaveThread]-end"

    invoke-static {v1, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 336
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mContiShotErrorOccur:Z
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$000(Lcom/lge/camera/module/ContinuousShot;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 337
    const-string v1, "CameraApp"

    const-string v3, "Quit save cont.shot thread"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #calls: Lcom/lge/camera/module/ContinuousShot;->clearSaveImageQueue()V
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$1300(Lcom/lge/camera/module/ContinuousShot;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 355
    :catch_0
    move-exception v8

    .line 356
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v3, "Exception occured in ContinuousShotSaveThread"

    new-array v4, v13, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 342
    .end local v8           #e:Ljava/lang/Exception;
    :cond_6
    :try_start_2
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mQueueContinueOrientation:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$1400(Lcom/lge/camera/module/ContinuousShot;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 343
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$1100(Lcom/lge/camera/module/ContinuousShot;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [B

    move-object v2, v0

    .line 344
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getImageHandler()Lcom/lge/camera/util/ImageHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->previewWidth:I
    invoke-static {v3}, Lcom/lge/camera/module/ContinuousShot;->access$1500(Lcom/lge/camera/module/ContinuousShot;)I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->previewHeight:I
    invoke-static {v4}, Lcom/lge/camera/module/ContinuousShot;->access$1600(Lcom/lge/camera/module/ContinuousShot;)I

    move-result v4

    const/16 v6, 0x5f

    invoke-virtual/range {v1 .. v6}, Lcom/lge/camera/util/ImageHandler;->convertYuvToJpeg([BIIII)[B

    move-result-object v7

    .line 346
    const-string v1, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "converting YUV to JPEG time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v9

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v1, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dqueue orientation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #calls: Lcom/lge/camera/module/ContinuousShot;->saveContiShotImage2([BI)Z
    invoke-static {v1, v7, v5}, Lcom/lge/camera/module/ContinuousShot;->access$1700(Lcom/lge/camera/module/ContinuousShot;[BI)Z

    move-result v1

    if-nez v1, :cond_2

    .line 351
    const-string v1, "CameraApp"

    const-string v3, "Error occured while saving cont.shot."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    const/4 v3, 0x1

    #setter for: Lcom/lge/camera/module/ContinuousShot;->mContiShotErrorOccur:Z
    invoke-static {v1, v3}, Lcom/lge/camera/module/ContinuousShot;->access$002(Lcom/lge/camera/module/ContinuousShot;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method
