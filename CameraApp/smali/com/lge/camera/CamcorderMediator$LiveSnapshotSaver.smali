.class public Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;
.super Ljava/lang/Thread;
.source "CamcorderMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/CamcorderMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LiveSnapshotSaver"
.end annotation


# static fields
.field private static final QUEUE_LIMIT:I = 0xa


# instance fields
.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/CamcorderMediator$SaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mStop:Z

.field final synthetic this$0:Lcom/lge/camera/CamcorderMediator;


# direct methods
.method public constructor <init>(Lcom/lge/camera/CamcorderMediator;)V
    .locals 1
    .parameter

    .prologue
    .line 608
    iput-object p1, p0, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->this$0:Lcom/lge/camera/CamcorderMediator;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->mQueue:Ljava/util/ArrayList;

    .line 610
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->start()V

    .line 611
    return-void
.end method


# virtual methods
.method public addImage([BLandroid/graphics/Bitmap;)Z
    .locals 5
    .parameter "data"
    .parameter "bitmap"

    .prologue
    .line 618
    iget-object v2, p0, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->this$0:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/StorageController;->getStorageState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 619
    const/4 v2, 0x0

    .line 643
    :goto_0
    return v2

    .line 622
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->this$0:Lcom/lge/camera/CamcorderMediator;

    iget v3, v2, Lcom/lge/camera/CamcorderMediator;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/lge/camera/CamcorderMediator;->count:I

    .line 624
    new-instance v1, Lcom/lge/camera/CamcorderMediator$SaveRequest;

    invoke-direct {v1}, Lcom/lge/camera/CamcorderMediator$SaveRequest;-><init>()V

    .line 626
    .local v1, sr:Lcom/lge/camera/CamcorderMediator$SaveRequest;
    iput-object p1, v1, Lcom/lge/camera/CamcorderMediator$SaveRequest;->data:[B

    .line 627
    iput-object p2, v1, Lcom/lge/camera/CamcorderMediator$SaveRequest;->bitmap:Landroid/graphics/Bitmap;

    .line 628
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/lge/camera/CamcorderMediator$SaveRequest;->dateTaken:J

    .line 630
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LiveSnapshotSaver count is = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->this$0:Lcom/lge/camera/CamcorderMediator;

    iget v4, v4, Lcom/lge/camera/CamcorderMediator;->count:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    monitor-enter p0

    .line 633
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_1

    .line 635
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InterruptedException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 642
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 640
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 642
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 643
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public finish()V
    .locals 4

    .prologue
    .line 745
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->waitDone()V

    .line 746
    monitor-enter p0

    .line 747
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->mStop:Z

    .line 748
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 749
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    :try_start_1
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 755
    :goto_0
    return-void

    .line 749
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 752
    :catch_0
    move-exception v0

    .line 753
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
    .line 614
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 15

    .prologue
    .line 654
    :goto_0
    const/4 v12, 0x0

    .line 656
    .local v12, ret:Z
    const-string v2, ""

    .line 657
    .local v2, fileName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 659
    .local v6, path:Ljava/lang/String;
    monitor-enter p0

    .line 660
    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 661
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 665
    iget-boolean v0, p0, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->mStop:Z

    if-eqz v0, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    return-void

    .line 668
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 672
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 675
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 669
    :catch_0
    move-exception v11

    .line 670
    .local v11, ex:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 674
    .end local v11           #ex:Ljava/lang/InterruptedException;
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lge/camera/CamcorderMediator$SaveRequest;

    .line 675
    .local v13, sr:Lcom/lge/camera/CamcorderMediator$SaveRequest;
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 678
    :try_start_4
    const-string v0, "CameraApp"

    const-string v1, "imageHandler.addImage-start "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->this$0:Lcom/lge/camera/CamcorderMediator;

    iget-object v0, v0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v6

    .line 685
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->this$0:Lcom/lge/camera/CamcorderMediator;

    iget-object v0, v0, Lcom/lge/camera/Mediator;->mFileHelper:Lcom/lge/camera/util/FileNamingHelper;

    if-eqz v0, :cond_2

    .line 686
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->this$0:Lcom/lge/camera/CamcorderMediator;

    iget-object v0, v0, Lcom/lge/camera/Mediator;->mFileHelper:Lcom/lge/camera/util/FileNamingHelper;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/lge/camera/util/FileNamingHelper;->getFileName(IZZI)Ljava/lang/String;

    move-result-object v2

    .line 688
    :cond_2
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "savePicture >  sr.fileName :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    if-nez v2, :cond_5

    .line 691
    const-string v0, "CameraApp"

    const-string v1, "error get file name!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 692
    const/4 v12, 0x0

    .line 709
    :cond_3
    :goto_2
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imageHandler.addImage-end "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->this$0:Lcom/lge/camera/CamcorderMediator;

    iget-object v3, v3, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    if-eqz v12, :cond_4

    .line 712
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->this$0:Lcom/lge/camera/CamcorderMediator;

    iput-object v2, v0, Lcom/lge/camera/Mediator;->mSavedFileName:Ljava/lang/String;

    .line 713
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->this$0:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->this$0:Lcom/lge/camera/CamcorderMediator;

    iget-object v1, v1, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/lge/camera/util/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 716
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->this$0:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewPanelController;

    move-result-object v0

    iget-object v1, v13, Lcom/lge/camera/CamcorderMediator$SaveRequest;->data:[B

    iget-object v3, p0, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->this$0:Lcom/lge/camera/CamcorderMediator;

    iget-object v3, v3, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v4}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewPanelController;->setLastPictureThumb([BLandroid/net/Uri;Z)V

    .line 717
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->this$0:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewPanelController;->updateThumbnailButton()V

    .line 719
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->this$0:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/StorageController;->checkStorage(Z)V

    .line 721
    monitor-enter p0

    .line 722
    :try_start_5
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->this$0:Lcom/lge/camera/CamcorderMediator;

    iget v1, v0, Lcom/lge/camera/CamcorderMediator;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/lge/camera/CamcorderMediator;->count:I

    .line 723
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 724
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 725
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 694
    :cond_5
    :try_start_6
    iget-object v14, p0, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->this$0:Lcom/lge/camera/CamcorderMediator;

    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->this$0:Lcom/lge/camera/CamcorderMediator;

    iget-object v0, v0, Lcom/lge/camera/Mediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->this$0:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-wide v3, v13, Lcom/lge/camera/CamcorderMediator$SaveRequest;->dateTaken:J

    iget-object v5, p0, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->this$0:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v5}, Lcom/lge/camera/CamcorderMediator;->getCurrentLocation()Landroid/location/Location;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v13, Lcom/lge/camera/CamcorderMediator$SaveRequest;->bitmap:Landroid/graphics/Bitmap;

    iget-object v9, v13, Lcom/lge/camera/CamcorderMediator$SaveRequest;->data:[B

    iget-object v10, p0, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->this$0:Lcom/lge/camera/CamcorderMediator;

    iget v10, v10, Lcom/lge/camera/Mediator;->mImageRotationDegree:I

    invoke-virtual/range {v0 .. v10}, Lcom/lge/camera/util/ImageHandler;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[BI)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v14, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    .line 701
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->this$0:Lcom/lge/camera/CamcorderMediator;

    iget-object v0, v0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    if-eqz v0, :cond_3

    .line 702
    const/4 v12, 0x1

    goto/16 :goto_2

    .line 705
    :catch_1
    move-exception v11

    .line 706
    .local v11, ex:Ljava/lang/Exception;
    const-string v0, "CameraApp"

    const-string v1, "Exception while compressing liveSnapshot image."

    invoke-static {v0, v1, v11}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 707
    const/4 v12, 0x0

    goto/16 :goto_2
.end method

.method public waitDone()V
    .locals 4

    .prologue
    .line 732
    monitor-enter p0

    .line 733
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 735
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 736
    :catch_0
    move-exception v0

    .line 737
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

    .line 740
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

    .line 741
    return-void
.end method
