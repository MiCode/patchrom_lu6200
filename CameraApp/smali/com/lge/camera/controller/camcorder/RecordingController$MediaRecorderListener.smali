.class final Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/camcorder/RecordingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRecorderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camcorder/RecordingController;


# direct methods
.method private constructor <init>(Lcom/lge/camera/controller/camcorder/RecordingController;)V
    .locals 0
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/camera/controller/camcorder/RecordingController;Lcom/lge/camera/controller/camcorder/RecordingController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 573
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;-><init>(Lcom/lge/camera/controller/camcorder/RecordingController;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 7
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 635
    const-string v0, "CameraApp"

    const-string v1, "MediaRecorder onError-what:%d, extra:%d, bPopup:%b"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->bShowCameraErrorPopup:Z
    invoke-static {v3}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1200(Lcom/lge/camera/controller/camcorder/RecordingController;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    if-eq p2, v4, :cond_0

    if-eq p2, v6, :cond_0

    const/16 v0, 0x64

    if-ne p2, v0, :cond_3

    .line 641
    :cond_0
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->release()V

    .line 642
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1300(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/lge/camera/Mediator;->setVideoState(I)V

    .line 643
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1400(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/Mediator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 644
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1500(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->resetScreenTimeout()V

    .line 646
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->bShowCameraErrorPopup:Z
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1200(Lcom/lge/camera/controller/camcorder/RecordingController;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 647
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1600(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/Mediator;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 648
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$2000(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/Mediator;

    move-result-object v0

    new-instance v1, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener$1;-><init>(Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 658
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #setter for: Lcom/lge/camera/controller/camcorder/RecordingController;->bShowCameraErrorPopup:Z
    invoke-static {v0, v4}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1202(Lcom/lge/camera/controller/camcorder/RecordingController;Z)Z

    .line 660
    :cond_3
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 14
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 575
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MediaRecorder onInfo what = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " / extra = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetFunctionUITimer()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 577
    const/16 v9, 0x324

    move/from16 v0, p2

    if-ne v0, v9, :cond_1

    .line 578
    move/from16 v0, p3

    div-int/lit16 v8, v0, 0x3e8

    .line 579
    .local v8, time:I
    iget-object v9, p0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mOldTime:I
    invoke-static {v9}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$800(Lcom/lge/camera/controller/camcorder/RecordingController;)I

    move-result v9

    if-ge v9, v8, :cond_0

    .line 581
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v8}, Ljava/lang/Integer;-><init>(I)V

    .line 582
    .local v4, iTime:Ljava/lang/Integer;
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MediaRecorder onInfo time = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iget-object v9, p0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-virtual {v9}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v9

    const-string v10, "com.lge.camera.command.UpdateRecordingTime"

    invoke-virtual {v9, v10, v4}, Lcom/lge/camera/CamcorderMediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 585
    iget-object v9, p0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    move/from16 v0, p3

    int-to-long v10, v0

    #setter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J
    invoke-static {v9, v10, v11}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$002(Lcom/lge/camera/controller/camcorder/RecordingController;J)J

    .line 587
    .end local v4           #iTime:Ljava/lang/Integer;
    :cond_0
    iget-object v9, p0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #setter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mOldTime:I
    invoke-static {v9, v8}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$802(Lcom/lge/camera/controller/camcorder/RecordingController;I)I

    .line 591
    .end local v8           #time:I
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v9

    const/4 v10, 0x5

    if-eq v9, v10, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v9

    const/4 v10, 0x7

    if-eq v9, v10, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v9

    const/4 v10, 0x6

    if-eq v9, v10, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v9

    const/16 v10, 0x21

    if-ne v9, v10, :cond_3

    .line 595
    :cond_2
    const/16 v9, 0x325

    move/from16 v0, p2

    if-ne v0, v9, :cond_3

    .line 597
    const-wide/16 v5, 0x0

    .line 598
    .local v5, mDuration:J
    const-string v9, "CameraApp"

    const-string v10, "total duration recorded %dsec"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    move/from16 v0, p3

    mul-int/lit16 v9, v0, 0x3e8

    int-to-long v5, v9

    .line 600
    iget-object v9, p0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;
    invoke-static {v9}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$100(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/VideoFile;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Lcom/lge/camera/VideoFile;->setRecordingTime_realduration(J)V

    .line 604
    .end local v5           #mDuration:J
    :cond_3
    iget-object v9, p0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mIsFileSizeLimitReached:Z
    invoke-static {v9}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$900(Lcom/lge/camera/controller/camcorder/RecordingController;)Z

    move-result v9

    if-nez v9, :cond_6

    const/16 v9, 0x320

    move/from16 v0, p2

    if-eq v0, v9, :cond_4

    const/16 v9, 0x321

    move/from16 v0, p2

    if-ne v0, v9, :cond_6

    .line 607
    :cond_4
    iget-object v9, p0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    const/4 v10, 0x1

    #setter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mIsFileSizeLimitReached:Z
    invoke-static {v9, v10}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$902(Lcom/lge/camera/controller/camcorder/RecordingController;Z)Z

    .line 609
    const/16 v9, 0x321

    move/from16 v0, p2

    if-ne v0, v9, :cond_5

    iget-object v9, p0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-virtual {v9}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/camera/CamcorderMediator;->isAttachMode()Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-virtual {v9}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/camera/CamcorderMediator;->isMMSIntent()Z

    move-result v9

    if-nez v9, :cond_5

    .line 610
    iget-object v9, p0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v9}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1000(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/Mediator;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/camera/Mediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/camera/controller/StorageController;->isStorageFull()Z

    move-result v9

    if-nez v9, :cond_7

    .line 611
    const-string v9, "CameraApp"

    const-string v10, "MediaRecorder max filesize reached"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetMediaRecoderLimitSize()J

    move-result-wide v9

    long-to-double v9, v9

    const-wide/high16 v11, 0x41d0

    div-double v2, v9, v11

    .line 614
    .local v2, fileMaxSize:D
    const/4 v7, 0x0

    .line 615
    .local v7, round:Ljava/math/BigDecimal;
    new-instance v9, Ljava/math/BigDecimal;

    invoke-direct {v9, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v10, 0x2

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v11}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v7

    .line 616
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " GB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 617
    .local v1, FILE_MAX_SIZE:Ljava/lang/String;
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FILE_MAX_SIZE = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-object v9, p0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-virtual {v9}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/camera/CamcorderMediator;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    const v11, 0x7f0b01e7

    #calls: Lcom/lge/camera/controller/camcorder/RecordingController;->getString(I)Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1100(Lcom/lge/camera/controller/camcorder/RecordingController;I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-wide/16 v11, 0x1388

    invoke-virtual {v9, v10, v11, v12}, Lcom/lge/camera/controller/ToastController;->show(Ljava/lang/String;J)V

    .line 625
    .end local v1           #FILE_MAX_SIZE:Ljava/lang/String;
    .end local v2           #fileMaxSize:D
    .end local v7           #round:Ljava/math/BigDecimal;
    :cond_5
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetFunctionUITimer()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    .line 626
    iget-object v9, p0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-virtual {v9}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v9

    const-string v10, "com.lge.camera.command.UpdateRecordingTime"

    iget-object v11, p0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mOldTime:I
    invoke-static {v11}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$800(Lcom/lge/camera/controller/camcorder/RecordingController;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/lge/camera/CamcorderMediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 630
    :goto_1
    iget-object v9, p0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-virtual {v9}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v9

    const-string v10, "com.lge.camera.command.StopRecording"

    invoke-virtual {v9, v10}, Lcom/lge/camera/CamcorderMediator;->doCommand(Ljava/lang/String;)V

    .line 632
    :cond_6
    return-void

    .line 621
    :cond_7
    iget-object v9, p0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-virtual {v9}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/camera/CamcorderMediator;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-virtual {v10}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v10

    const v11, 0x7f0b006b

    invoke-virtual {v10, v11}, Lcom/lge/camera/CamcorderMediator;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-wide/16 v11, 0x1388

    invoke-virtual {v9, v10, v11, v12}, Lcom/lge/camera/controller/ToastController;->show(Ljava/lang/String;J)V

    goto :goto_0

    .line 628
    :cond_8
    iget-object v9, p0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-virtual {v9}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v9

    const-string v10, "com.lge.camera.command.UpdateRecordingTime"

    invoke-virtual {v9, v10}, Lcom/lge/camera/CamcorderMediator;->doCommand(Ljava/lang/String;)V

    goto :goto_1
.end method
