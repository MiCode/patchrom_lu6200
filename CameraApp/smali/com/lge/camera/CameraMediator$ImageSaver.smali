.class public Lcom/lge/camera/CameraMediator$ImageSaver;
.super Ljava/lang/Thread;
.source "CameraMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/CameraMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageSaver"
.end annotation


# static fields
.field private static final QUEUE_LIMIT:I = 0x5


# instance fields
.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/CameraMediator$SaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mStop:Z

.field final synthetic this$0:Lcom/lge/camera/CameraMediator;


# direct methods
.method public constructor <init>(Lcom/lge/camera/CameraMediator;)V
    .locals 1
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/CameraMediator$ImageSaver;->mQueue:Ljava/util/ArrayList;

    .line 510
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator$ImageSaver;->start()V

    .line 511
    return-void
.end method


# virtual methods
.method public addImage([BLandroid/graphics/Bitmap;)Z
    .locals 6
    .parameter "data"
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x1

    .line 518
    iget-object v3, p0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/camera/CameraStorageController;->getStorageState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 519
    const/4 v2, 0x0

    .line 557
    :goto_0
    return v2

    .line 522
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    iget v4, v3, Lcom/lge/camera/CameraMediator;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/lge/camera/CameraMediator;->count:I

    .line 524
    new-instance v1, Lcom/lge/camera/CameraMediator$SaveRequest;

    invoke-direct {v1}, Lcom/lge/camera/CameraMediator$SaveRequest;-><init>()V

    .line 526
    .local v1, sr:Lcom/lge/camera/CameraMediator$SaveRequest;
    iget-object v3, p0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    const-string v4, "key_camera_shot_mode"

    const-string v5, "shotmode_panorama"

    invoke-virtual {v3, v4, v5}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 527
    iget-object v3, p0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    iget-object v4, p0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    iget v4, v4, Lcom/lge/camera/Mediator;->mImageRotationDegree:I

    invoke-virtual {v3, p1, v4}, Lcom/lge/camera/CameraMediator;->setNewExifInformation([BI)[B

    move-result-object v3

    iput-object v3, v1, Lcom/lge/camera/CameraMediator$SaveRequest;->exifData:[B

    .line 529
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getCameraMode()I

    move-result v3

    if-ne v3, v2, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetFunctionFrontCameraBeautyShot()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 532
    iget-object v3, p0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    iget-object v4, p0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    iget v4, v4, Lcom/lge/camera/Mediator;->mImageRotationDegree:I

    invoke-virtual {v3, p1, v4}, Lcom/lge/camera/CameraMediator;->setNewExifInformation([BI)[B

    move-result-object v3

    iput-object v3, v1, Lcom/lge/camera/CameraMediator$SaveRequest;->exifData:[B

    .line 535
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->isAttachMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 536
    iget-object v3, v1, Lcom/lge/camera/CameraMediator$SaveRequest;->exifData:[B

    if-eqz v3, :cond_4

    .line 537
    iget-object v3, p0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    iget-object v4, v1, Lcom/lge/camera/CameraMediator$SaveRequest;->exifData:[B

    #setter for: Lcom/lge/camera/CameraMediator;->mCaptureData:[B
    invoke-static {v3, v4}, Lcom/lge/camera/CameraMediator;->access$002(Lcom/lge/camera/CameraMediator;[B)[B

    .line 543
    :cond_3
    :goto_1
    iput-object p1, v1, Lcom/lge/camera/CameraMediator$SaveRequest;->data:[B

    .line 544
    iput-object p2, v1, Lcom/lge/camera/CameraMediator$SaveRequest;->bitmap:Landroid/graphics/Bitmap;

    .line 545
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/lge/camera/CameraMediator$SaveRequest;->dateTaken:J

    .line 546
    monitor-enter p0

    .line 547
    :goto_2
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/CameraMediator$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_5

    .line 549
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InterruptedException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 556
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 539
    :cond_4
    iget-object v3, p0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    #setter for: Lcom/lge/camera/CameraMediator;->mCaptureData:[B
    invoke-static {v3, p1}, Lcom/lge/camera/CameraMediator;->access$002(Lcom/lge/camera/CameraMediator;[B)[B

    goto :goto_1

    .line 554
    :cond_5
    :try_start_3
    iget-object v3, p0, Lcom/lge/camera/CameraMediator$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 556
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public finish()V
    .locals 4

    .prologue
    .line 705
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator$ImageSaver;->waitDone()V

    .line 706
    monitor-enter p0

    .line 707
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/lge/camera/CameraMediator$ImageSaver;->mStop:Z

    .line 708
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 709
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    :try_start_1
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator$ImageSaver;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 715
    :goto_0
    return-void

    .line 709
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 712
    :catch_0
    move-exception v0

    .line 713
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getQueueCount()I
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/lge/camera/CameraMediator$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 18

    .prologue
    .line 566
    :goto_0
    const/4 v15, 0x0

    .line 568
    .local v15, ret:Z
    const/4 v3, 0x0

    .line 569
    .local v3, fileName:Ljava/lang/String;
    const-string v13, ".jpg"

    .line 570
    .local v13, fileExt:Ljava/lang/String;
    const/4 v7, 0x0

    .line 572
    .local v7, path:Ljava/lang/String;
    monitor-enter p0

    .line 573
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 574
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 578
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->mStop:Z

    if-eqz v1, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    return-void

    .line 581
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 585
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 588
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 582
    :catch_0
    move-exception v12

    .line 583
    .local v12, ex:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InterruptedException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 587
    .end local v12           #ex:Ljava/lang/InterruptedException;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/lge/camera/CameraMediator$SaveRequest;

    .line 588
    .local v16, sr:Lcom/lge/camera/CameraMediator$SaveRequest;
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 590
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->hasSaveURI()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 591
    const-string v1, "content"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    #getter for: Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/lge/camera/CameraMediator;->access$100(Lcom/lge/camera/CameraMediator;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 592
    const-string v3, ".tmp"

    .line 593
    const-string v13, ".jpg"

    .line 608
    :cond_2
    :goto_2
    const-string v1, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "savePicture >  sr.fileName :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    if-nez v3, :cond_6

    .line 611
    const-string v1, "CameraApp"

    const-string v4, "error get file name!"

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const/4 v15, 0x0

    .line 670
    :goto_3
    if-eqz v15, :cond_3

    .line 671
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    iput-object v3, v1, Lcom/lge/camera/Mediator;->mSavedFileName:Ljava/lang/String;

    .line 672
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    iget-object v4, v4, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-static {v1, v4}, Lcom/lge/camera/util/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/lge/camera/CameraMediator;->checkAutoReviewOff(Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 674
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    #getter for: Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lge/camera/CameraMediator;->access$200(Lcom/lge/camera/CameraMediator;)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    iget-object v4, v4, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v1

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/lge/camera/CameraMediator$SaveRequest;->data:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    iget-object v5, v5, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->setLastPictureThumb([BLandroid/net/Uri;Z)V

    .line 678
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->updateThumbnailButton()V

    .line 680
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/lge/camera/controller/camera/CameraStorageController;->checkStorage(Z)V

    .line 682
    monitor-enter p0

    .line 683
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    iget v4, v1, Lcom/lge/camera/CameraMediator;->count:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v1, Lcom/lge/camera/CameraMediator;->count:I

    .line 684
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 685
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 686
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 595
    :cond_4
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    #getter for: Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/lge/camera/CameraMediator;->access$100(Lcom/lge/camera/CameraMediator;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 596
    .local v14, fp:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 597
    if-eqz v3, :cond_2

    .line 598
    const-string v1, "^[^.]+"

    const-string v4, ""

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 599
    const-string v1, "\\.[a-zA-Z]+$"

    const-string v4, ""

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 603
    .end local v14           #fp:Ljava/io/File;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    iget-object v1, v1, Lcom/lge/camera/Mediator;->mFileHelper:Lcom/lge/camera/util/FileNamingHelper;

    if-eqz v1, :cond_2

    .line 604
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    iget-object v1, v1, Lcom/lge/camera/Mediator;->mFileHelper:Lcom/lge/camera/util/FileNamingHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    iget v4, v4, Lcom/lge/camera/Mediator;->mApplicationMode:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v4, v5, v6, v8}, Lcom/lge/camera/util/FileNamingHelper;->getFileName(IZZI)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 614
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->hasSaveURI()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 615
    const-string v1, "content"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    #getter for: Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/lge/camera/CameraMediator;->access$100(Lcom/lge/camera/CameraMediator;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 616
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    iget-object v1, v1, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v7

    .line 632
    :cond_7
    :goto_4
    :try_start_5
    const-string v1, "CameraApp"

    const-string v4, "imageHandler.addImage-start "

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const/4 v2, 0x0

    .line 634
    .local v2, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->hasSaveURI()Z

    move-result v1

    if-nez v1, :cond_8

    .line 635
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 638
    :cond_8
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/lge/camera/CameraMediator$SaveRequest;->exifData:[B

    if-eqz v1, :cond_e

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    iget-object v1, v1, Lcom/lge/camera/Mediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/camera/CameraMediator$SaveRequest;->dateTaken:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/lge/camera/CameraMediator$SaveRequest;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v16

    iget-object v10, v0, Lcom/lge/camera/CameraMediator$SaveRequest;->exifData:[B

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    iget v11, v11, Lcom/lge/camera/Mediator;->mImageRotationDegree:I

    invoke-virtual/range {v1 .. v11}, Lcom/lge/camera/util/ImageHandler;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[BI)Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    .line 652
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->hasSaveURI()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 653
    const-string v1, "content"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    #getter for: Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/lge/camera/CameraMediator;->access$100(Lcom/lge/camera/CameraMediator;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 654
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v1, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    .line 660
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    iget-object v1, v1, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-eqz v1, :cond_a

    .line 661
    const/4 v15, 0x1

    .line 667
    .end local v2           #cr:Landroid/content/ContentResolver;
    :cond_a
    :goto_7
    const-string v1, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imageHandler.addImage-end "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    iget-object v5, v5, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 618
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    #getter for: Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/lge/camera/CameraMediator;->access$100(Lcom/lge/camera/CameraMediator;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 619
    if-eqz v7, :cond_c

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\\.[a-zA-Z]+$"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v7, v1, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 623
    :cond_c
    if-nez v7, :cond_7

    .line 624
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    iget-object v1, v1, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 628
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    iget-object v1, v1, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 645
    .restart local v2       #cr:Landroid/content/ContentResolver;
    :cond_e
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    iget-object v1, v1, Lcom/lge/camera/Mediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/camera/CameraMediator$SaveRequest;->dateTaken:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/lge/camera/CameraMediator$SaveRequest;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v16

    iget-object v10, v0, Lcom/lge/camera/CameraMediator$SaveRequest;->data:[B

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    iget v11, v11, Lcom/lge/camera/Mediator;->mImageRotationDegree:I

    invoke-virtual/range {v1 .. v11}, Lcom/lge/camera/util/ImageHandler;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[BI)Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_5

    .line 663
    .end local v2           #cr:Landroid/content/ContentResolver;
    :catch_1
    move-exception v12

    .line 664
    .local v12, ex:Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v4, "Exception while compressing image."

    invoke-static {v1, v4, v12}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 665
    const/4 v15, 0x0

    goto/16 :goto_7

    .line 656
    .end local v12           #ex:Ljava/lang/Exception;
    .restart local v2       #cr:Landroid/content/ContentResolver;
    :cond_f
    :try_start_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/CameraMediator$ImageSaver;->this$0:Lcom/lge/camera/CameraMediator;

    #getter for: Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/lge/camera/CameraMediator;->access$100(Lcom/lge/camera/CameraMediator;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v1, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_6
.end method

.method public waitDone()V
    .locals 4

    .prologue
    .line 692
    monitor-enter p0

    .line 693
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/CameraMediator$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 695
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 700
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 701
    return-void
.end method
