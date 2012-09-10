.class public Lcom/lge/camera/controller/camcorder/RecordingController;
.super Lcom/lge/camera/controller/Controller;
.source "RecordingController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;
    }
.end annotation


# instance fields
.field private bShowCameraErrorPopup:Z

.field private mEndTime:J

.field private mIsFileSizeLimitReached:Z

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field public mMediaRecorderListener:Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;

.field private mOldTime:I

.field public mRecIndicatorHeight:I

.field public mRecIndicatorLeftMargin:I

.field public mRecIndicatorWidth:I

.field private mRecordingDurationLimit:J

.field private mRecordingSizeLimit:J

.field public mScaleWidthHeight:F

.field private mStartTime:J

.field private mStopRecordingThread:Ljava/lang/Thread;

.field private mVideoFile:Lcom/lge/camera/VideoFile;

.field private mVideoFileSize:J


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 4
    .parameter "mediator"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 46
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/Mediator;)V

    .line 35
    iput-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    .line 36
    iput-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    .line 37
    iput-boolean v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->bShowCameraErrorPopup:Z

    .line 41
    iput v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorWidth:I

    .line 42
    iput v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorHeight:I

    .line 43
    iput v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorLeftMargin:I

    .line 44
    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mScaleWidthHeight:F

    .line 734
    new-instance v0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;-><init>(Lcom/lge/camera/controller/camcorder/RecordingController;Lcom/lge/camera/controller/camcorder/RecordingController$1;)V

    iput-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mMediaRecorderListener:Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/camcorder/RecordingController;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/lge/camera/controller/camcorder/RecordingController;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/VideoFile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lge/camera/controller/camcorder/RecordingController;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/camcorder/RecordingController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lge/camera/controller/camcorder/RecordingController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->bShowCameraErrorPopup:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/lge/camera/controller/camcorder/RecordingController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->bShowCameraErrorPopup:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/camcorder/RecordingController;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/camcorder/RecordingController;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/camera/controller/camcorder/RecordingController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mOldTime:I

    return v0
.end method

.method static synthetic access$802(Lcom/lge/camera/controller/camcorder/RecordingController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mOldTime:I

    return p1
.end method

.method static synthetic access$900(Lcom/lge/camera/controller/camcorder/RecordingController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mIsFileSizeLimitReached:Z

    return v0
.end method

.method static synthetic access$902(Lcom/lge/camera/controller/camcorder/RecordingController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mIsFileSizeLimitReached:Z

    return p1
.end method

.method private restoreToIdle()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 375
    const-string v0, "CameraApp"

    const-string v1, "startRecording is NOT started. Restore environment to idle."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lge/camera/CamcorderMediator;->setVideoState(I)V

    .line 378
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isAttachIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lge/camera/controller/PreviewPanelController;->setSwitcherVisible(Z)V

    .line 384
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->updateThumbnailButtonVisibility()V

    .line 385
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->show()V

    .line 386
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->refresh()V

    .line 389
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->hideLiveSnapshotButton()V

    .line 391
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lge/camera/controller/PreviewPanelController;->enableCommand(Z)V

    .line 392
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonEnable()V

    .line 395
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->hideTimeIndicator()V

    .line 396
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lge/camera/controller/PreviewPanelController;->setSwitcherVisible(Z)V

    goto :goto_0
.end method


# virtual methods
.method public ResetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 3
    .parameter "lp"

    .prologue
    .line 729
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 730
    invoke-virtual {p1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 729
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 732
    :cond_0
    return-void
.end method

.method public doAfterRecordingProcess()V
    .locals 13

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v2

    .line 475
    .local v2, videoSizeString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    const-string v1, "key_video_auto_review"

    invoke-virtual {v0, v1}, Lcom/lge/camera/CamcorderMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    const-string v1, "key_video_auto_review"

    invoke-virtual {v0, v1}, Lcom/lge/camera/CamcorderMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on_delay_2sec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    const-string v1, "key_video_auto_review"

    invoke-virtual {v0, v1}, Lcom/lge/camera/CamcorderMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on_delay_5sec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    const/4 v10, 0x1

    .line 479
    .local v10, showAfterMenu:Z
    :goto_0
    const/4 v8, 0x0

    .line 481
    .local v8, savedUri:Landroid/net/Uri;
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetFunctionUITimer()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 482
    iget-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    iget-wide v3, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    sub-long/2addr v0, v3

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetMinRecordingTime()I

    move-result v3

    int-to-long v3, v3

    cmp-long v0, v0, v3

    if-gez v0, :cond_7

    .line 483
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v0}, Lcom/lge/camera/VideoFile;->getFile()Ljava/io/File;

    move-result-object v12

    .line 484
    .local v12, vFile:Ljava/io/File;
    if-eqz v12, :cond_1

    .line 485
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 516
    .end local v12           #vFile:Ljava/io/File;
    :cond_1
    :goto_1
    new-instance v0, Lcom/lge/camera/controller/camcorder/RecordingController$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camcorder/RecordingController$2;-><init>(Lcom/lge/camera/controller/camcorder/RecordingController;)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 525
    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->isAttachIntent()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    if-eqz v8, :cond_f

    if-eqz v10, :cond_f

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getBackKeyRecStop()Z

    move-result v0

    if-nez v0, :cond_f

    .line 528
    :cond_3
    const-string v1, "CameraApp"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doAfterRecordingProcess getMediator().isAttachMode()["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CamcorderMediator;->isAttachMode()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] showAfterMenu["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] !getMediator().getBackKeyRecStop() ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getBackKeyRecStop()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isStopPreviewAfterRecordStop()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 533
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->stopPreview()V

    .line 535
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/lge/camera/CamcorderMediator;->setVideoStateOnly(I)V

    .line 536
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    const-string v1, "com.lge.camera.command.DisplayCamcorderPostview"

    invoke-virtual {v0, v1}, Lcom/lge/camera/CamcorderMediator;->doCommandUi(Ljava/lang/String;)V

    .line 560
    :goto_3
    if-eqz v8, :cond_5

    .line 561
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saved uri: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-static {v0, v8}, Lcom/lge/camera/util/Common;->saveLastVideo(Lcom/lge/camera/Mediator;Landroid/net/Uri;)V

    .line 564
    :cond_5
    return-void

    .line 475
    .end local v8           #savedUri:Landroid/net/Uri;
    .end local v10           #showAfterMenu:Z
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 488
    .restart local v8       #savedUri:Landroid/net/Uri;
    .restart local v10       #showAfterMenu:Z
    :cond_7
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->checkFsWritable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 489
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->isMMSRecording()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 490
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CamcorderMediator;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/VideoFile;->registerUri(ILjava/lang/String;Landroid/location/Location;ZI)Landroid/net/Uri;

    move-result-object v8

    goto/16 :goto_1

    .line 492
    :cond_8
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CamcorderMediator;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/VideoFile;->registerUri(ILjava/lang/String;Landroid/location/Location;ZI)Landroid/net/Uri;

    move-result-object v8

    goto/16 :goto_1

    .line 494
    :cond_9
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v0}, Lcom/lge/camera/VideoFile;->deleteFile()V

    goto/16 :goto_1

    .line 498
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 499
    .local v6, currentTime:J
    iget-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    sub-long v0, v6, v0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetMinRecordingTime()I

    move-result v3

    int-to-long v3, v3

    cmp-long v0, v0, v3

    if-gez v0, :cond_b

    .line 500
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v0}, Lcom/lge/camera/VideoFile;->getFile()Ljava/io/File;

    move-result-object v12

    .line 501
    .restart local v12       #vFile:Ljava/io/File;
    if-eqz v12, :cond_1

    .line 502
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    goto/16 :goto_1

    .line 505
    .end local v12           #vFile:Ljava/io/File;
    :cond_b
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->checkFsWritable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 506
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->isMMSRecording()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 507
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CamcorderMediator;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/VideoFile;->registerUri(ILjava/lang/String;Landroid/location/Location;ZI)Landroid/net/Uri;

    move-result-object v8

    goto/16 :goto_1

    .line 509
    :cond_c
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CamcorderMediator;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/VideoFile;->registerUri(ILjava/lang/String;Landroid/location/Location;ZI)Landroid/net/Uri;

    move-result-object v8

    goto/16 :goto_1

    .line 511
    :cond_d
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v0}, Lcom/lge/camera/VideoFile;->deleteFile()V

    goto/16 :goto_1

    .line 528
    .end local v6           #currentTime:J
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 538
    :cond_f
    move-object v9, v8

    .line 539
    .local v9, savedUriForThread:Landroid/net/Uri;
    new-instance v11, Ljava/lang/Thread;

    new-instance v0, Lcom/lge/camera/controller/camcorder/RecordingController$3;

    invoke-direct {v0, p0, v9}, Lcom/lge/camera/controller/camcorder/RecordingController$3;-><init>(Lcom/lge/camera/controller/camcorder/RecordingController;Landroid/net/Uri;)V

    invoke-direct {v11, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 556
    .local v11, t:Ljava/lang/Thread;
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    goto/16 :goto_3
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    return-wide v0
.end method

.method public getIsFileSizeLimitReached()Z
    .locals 1

    .prologue
    .line 568
    iget-boolean v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mIsFileSizeLimitReached:Z

    return v0
.end method

.method protected getMediator()Lcom/lge/camera/CamcorderMediator;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CamcorderMediator;

    return-object v0
.end method

.method protected bridge synthetic getMediator()Lcom/lge/camera/Mediator;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    return-object v0
.end method

.method public getRecordingControllerInit()Z
    .locals 1

    .prologue
    .line 947
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    return v0
.end method

.method public getRecordingDurationLimit()J
    .locals 2

    .prologue
    .line 235
    iget-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingDurationLimit:J

    return-wide v0
.end method

.method public getRecordingSizeLimit()J
    .locals 2

    .prologue
    .line 232
    iget-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    return-wide v0
.end method

.method public getVideoFile()Lcom/lge/camera/VideoFile;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    return-object v0
.end method

.method public getVideoFileSize()J
    .locals 2

    .prologue
    .line 239
    iget-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFileSize:J

    return-wide v0
.end method

.method public hide()V
    .locals 4

    .prologue
    const v3, 0x7f0900ad

    const v2, 0x7f0900a7

    const/4 v1, 0x4

    .line 204
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/camcorder/RecordingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 210
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/camcorder/RecordingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    :cond_2
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camcorder/RecordingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camcorder/RecordingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideTimeIndicator()V
    .locals 2

    .prologue
    const v1, 0x7f0900a7

    .line 219
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camcorder/RecordingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camcorder/RecordingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public initController()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x0

    const v10, 0x7f0b012c

    const v9, 0x3ecccccd

    const v8, 0x7f0900ad

    .line 51
    const v6, 0x7f090068

    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/camcorder/RecordingController;->inflateStub(I)Landroid/view/View;

    .line 52
    iput-wide v11, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    .line 53
    iput-wide v11, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    .line 54
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v7, 0x7f0900a9

    invoke-virtual {v6, v7}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 55
    .local v5, recTimeText:Landroid/widget/TextView;
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetCarrierCode()I

    move-result v2

    .line 57
    .local v2, currentCarrierCode:I
    invoke-virtual {p0, v8}, Lcom/lge/camera/controller/camcorder/RecordingController;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/RecProgressBar;

    .line 58
    .local v4, pb:Lcom/lge/camera/components/RecProgressBar;
    invoke-virtual {v4}, Lcom/lge/camera/components/RecProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 59
    .local v3, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 60
    .local v1, bpWidth:I
    iget v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 61
    .local v0, bpHeight:I
    invoke-virtual {v4, v1, v0}, Lcom/lge/camera/components/RecProgressBar;->initRecProgressBar(II)V

    .line 63
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->needProgressBar()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 64
    invoke-virtual {p0, v8}, Lcom/lge/camera/controller/camcorder/RecordingController;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 68
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/CamcorderMediator;->isMMSRecording()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 69
    const/4 v6, 0x6

    if-ne v2, v6, :cond_1

    .line 70
    const-string v6, "00/60"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const v6, 0x3e99999a

    iput v6, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mScaleWidthHeight:F

    .line 82
    :goto_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 84
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->setRecLayout()V

    .line 85
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/camcorder/RecordingController;->startRotation(I)V

    .line 86
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0, v8}, Lcom/lge/camera/controller/camcorder/RecordingController;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 74
    :cond_1
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iput v9, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mScaleWidthHeight:F

    goto :goto_1

    .line 78
    :cond_2
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iput v9, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mScaleWidthHeight:F

    goto :goto_1
.end method

.method public initVideoFile(I)V
    .locals 5
    .parameter "purpose"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, fileDirectory:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getFileHelper()Lcom/lge/camera/util/FileNamingHelper;

    move-result-object v2

    invoke-virtual {v2, v4, v4, v3, v3}, Lcom/lge/camera/util/FileNamingHelper;->getFileName(IZZI)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, fileName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 155
    new-instance v2, Lcom/lge/camera/VideoFile;

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1, p1}, Lcom/lge/camera/VideoFile;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    .line 156
    :cond_0
    return-void
.end method

.method public isRecordedLengthTooShort()Z
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 927
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetFunctionUITimer()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 928
    iget-wide v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    iget-wide v6, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    sub-long/2addr v4, v6

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetMinRecordingTime()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 929
    const-string v4, "CameraApp"

    const-string v5, "recorded time: %d ms"

    new-array v6, v2, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    iget-wide v9, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    :goto_0
    return v2

    .line 933
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 934
    .local v0, currentTime:J
    iget-wide v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    sub-long v4, v0, v4

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetMinRecordingTime()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 935
    const-string v4, "CameraApp"

    const-string v5, "recorded time: %d ms"

    new-array v6, v2, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    sub-long v7, v0, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #currentTime:J
    :cond_1
    move v2, v3

    .line 940
    goto :goto_0
.end method

.method public needProgressBar()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 168
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->effectsActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v0

    .line 171
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->isAttachMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->isAttachIntent()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->getRequestedVideoSizeLimit()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->getMaxVideoDurationInMs()I

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPause()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 877
    const-string v2, "CameraApp"

    const-string v3, " onPause-start"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v2, :cond_1

    .line 882
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v1

    .line 883
    .local v1, state:I
    const-string v2, "CameraApp"

    const-string v3, "Camcorder state: %d"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    if-ne v1, v6, :cond_0

    .line 885
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->waitStartRecordingThreadDone()V

    .line 886
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->waitStopRecordingThreadDone()V

    .line 888
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 889
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/lge/camera/CamcorderMediator;->setVideoState(I)V

    .line 891
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetFunctionUITimer()I

    move-result v2

    if-ne v2, v6, :cond_4

    .line 892
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    iget-wide v3, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/VideoFile;->setRecordingTime_end(J)V

    .line 897
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->stopRecordingByPausing()V

    .line 905
    .end local v1           #state:I
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->isChangingToPostview()Z

    move-result v2

    if-nez v2, :cond_2

    .line 906
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 907
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "animation"

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 908
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v2

    const-string v3, "com.lge.camera.command.Rotate"

    invoke-virtual {v2, v3, v0}, Lcom/lge/camera/CamcorderMediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 911
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHeat_detection()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 912
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->StopHeatingwarning()V

    .line 914
    :cond_3
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onPause()V

    .line 915
    const-string v2, "CameraApp"

    const-string v3, " onPause-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    return-void

    .line 894
    .restart local v1       #state:I
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/VideoFile;->setRecordingTime_end(J)V

    goto :goto_0

    .line 898
    :cond_5
    if-ne v1, v6, :cond_1

    .line 899
    const-string v2, "CameraApp"

    const-string v3, "RecordingController: Video state NO_REACTION after wait threads."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    const-string v2, "CameraApp"

    const-string v3, "Force video state to idle"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/lge/camera/CamcorderMediator;->setVideoState(I)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 920
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_0

    .line 921
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getCameraPreview()Lcom/lge/camera/components/CameraPreview;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/CameraPreview;->setVisibility(I)V

    .line 923
    :cond_0
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onResume()V

    .line 924
    return-void
.end method

.method public resetRecTime()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 737
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v4, 0x7f0900a9

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 739
    .local v2, recTimeText:Landroid/widget/TextView;
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetCarrierCode()I

    move-result v0

    .line 741
    .local v0, currentCarrierCode:I
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CamcorderMediator;->isMMSRecording()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    .line 743
    const-string v3, "00/60"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 748
    :goto_0
    const v3, 0x7f0900ad

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/camcorder/RecordingController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RecProgressBar;

    .line 749
    .local v1, pb:Lcom/lge/camera/components/RecProgressBar;
    invoke-virtual {v1, v5}, Lcom/lge/camera/components/RecProgressBar;->setProgress(I)V

    .line 751
    iput-boolean v5, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mIsFileSizeLimitReached:Z

    .line 752
    return-void

    .line 745
    .end local v1           #pb:Lcom/lge/camera/components/RecProgressBar;
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b012c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setRecIndicatorLayout(III)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "leftMargin"

    .prologue
    .line 89
    iput p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorWidth:I

    .line 90
    iput p2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorHeight:I

    .line 91
    iput p3, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorLeftMargin:I

    .line 93
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->setRecLayout()V

    .line 96
    :cond_0
    return-void
.end method

.method public setRecLayout()V
    .locals 5

    .prologue
    const/16 v4, 0xf

    const/4 v3, 0x1

    .line 99
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_1

    .line 100
    const-string v2, "CameraApp"

    const-string v3, "RecordingController is not initialize."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const v2, 0x7f0900a6

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camcorder/RecordingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, recAreaLayout:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 106
    .local v1, recIndicatorArea:Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 107
    iget v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 108
    iget v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorLeftMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 110
    iget v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorLeftMargin:I

    if-nez v2, :cond_2

    .line 111
    invoke-static {v1}, Lcom/lge/camera/util/Common;->ResetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 112
    const/16 v2, 0x9

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 113
    invoke-virtual {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 119
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 115
    :cond_2
    invoke-static {v1}, Lcom/lge/camera/util/Common;->ResetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 116
    invoke-virtual {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1
.end method

.method public setScaleWidthHeight(F)V
    .locals 0
    .parameter "ScaleWidthHeight"

    .prologue
    .line 943
    iput p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mScaleWidthHeight:F

    .line 944
    return-void
.end method

.method public setVideoFile(Lcom/lge/camera/VideoFile;)V
    .locals 0
    .parameter "videoFile"

    .prologue
    .line 159
    if-eqz p1, :cond_0

    .line 160
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    .line 161
    :cond_0
    return-void
.end method

.method public setVideoFileSize(J)V
    .locals 0
    .parameter "size"

    .prologue
    .line 242
    iput-wide p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFileSize:J

    .line 243
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const v2, 0x7f0900ad

    .line 184
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->needProgressBar()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camcorder/RecordingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 197
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 198
    const v0, 0x7f0900a7

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 192
    :cond_2
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camcorder/RecordingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 194
    :cond_3
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camcorder/RecordingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public startRecording()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const-wide/16 v2, 0x0

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 248
    const/4 v7, 0x0

    .line 249
    .local v7, bInitRecording:Z
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-static {v0}, Lcom/lge/camera/util/Common;->StopVoiceRec(Lcom/lge/camera/Mediator;)V

    .line 250
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-static {v0}, Lcom/lge/camera/util/Common;->BlockAlarmInRecording(Lcom/lge/camera/Mediator;)V

    .line 251
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v10}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 252
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->isMMSRecording()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 253
    invoke-virtual {p0, v10}, Lcom/lge/camera/controller/camcorder/RecordingController;->initVideoFile(I)V

    .line 254
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getRequestedVideoSizeLimit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    .line 255
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getMaxVideoDurationInMs()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingDurationLimit:J

    .line 256
    iget-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->isAttachIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetMmsVideoSizeLimit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    .line 259
    :cond_0
    invoke-static {v10}, Lcom/lge/camera/VideoRecorder;->setVideoSize(I)Z

    .line 273
    :goto_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecordingSizeLimit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRecordingDurationLimit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingDurationLimit:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/StorageController;->getFreeSpace()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lge/camera/VideoRecorder;->setMaxFileSize(JJI)Z

    .line 278
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getDeviceDegree()I

    move-result v0

    invoke-static {v0}, Lcom/lge/camera/VideoRecorder;->setOrientationHint(I)V

    .line 279
    iput-boolean v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->bShowCameraErrorPopup:Z

    .line 280
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 282
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v1}, Lcom/lge/camera/VideoFile;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/StorageController;->getFreeSpace()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->initializeRecordingEffect(Ljava/lang/String;JJ)V

    .line 283
    const/4 v7, 0x1

    .line 291
    :goto_1
    if-eqz v7, :cond_c

    .line 301
    const/4 v9, 0x1

    .line 303
    .local v9, videoRecordingStartRetval:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 304
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->startRecordingEffect()V

    .line 310
    :goto_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetFunctionUITimer()I

    move-result v0

    if-ne v0, v10, :cond_a

    .line 311
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    iput-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    .line 318
    :goto_3
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    iget-wide v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/VideoFile;->setRecordingTime_start(J)V

    .line 319
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lge/camera/CamcorderMediator;->setVideoState(I)V

    .line 322
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->show()V

    .line 324
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v9, :cond_1

    .line 327
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->showLiveSnapshotButton()V

    .line 331
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetFunctionUITimer()I

    move-result v0

    if-nez v0, :cond_2

    .line 332
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    const-string v1, "com.lge.camera.command.UpdateRecordingTime"

    invoke-virtual {v0, v1}, Lcom/lge/camera/CamcorderMediator;->doCommandUi(Ljava/lang/String;)V

    .line 334
    :cond_2
    const v0, 0x7f0900ad

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RecProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RecProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 344
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 345
    if-nez v9, :cond_3

    .line 346
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->restoreToIdle()V

    .line 347
    const-string v0, "CameraApp"

    const-string v1, "Could not start media recorder"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .end local v9           #videoRecordingStartRetval:Z
    :cond_3
    :goto_4
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHeat_detection()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v0

    if-ne v0, v11, :cond_4

    .line 360
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v6

    .line 362
    .local v6, RecordingSize:Ljava/lang/String;
    if-nez v6, :cond_d

    .line 363
    const-string v0, "CameraApp"

    const-string v1, "Recording Size reference NULL Value, please CHECK \'getPreviewSizeOnDevice() function~!!!\' "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .end local v6           #RecordingSize:Ljava/lang/String;
    :cond_4
    :goto_5
    return-void

    .line 261
    :cond_5
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/camcorder/RecordingController;->initVideoFile(I)V

    .line 262
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->isAttachIntent()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 263
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getRequestedVideoSizeLimit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    .line 264
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getMaxVideoDurationInMs()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingDurationLimit:J

    .line 265
    iget-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->isAttachIntent()Z

    move-result v0

    if-nez v0, :cond_6

    .line 266
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetMmsVideoSizeLimit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    .line 271
    :cond_6
    :goto_6
    invoke-static {v4}, Lcom/lge/camera/VideoRecorder;->setVideoSize(I)Z

    goto/16 :goto_0

    .line 270
    :cond_7
    iput-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    goto :goto_6

    .line 285
    :cond_8
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/VideoRecorder;->init(Lcom/lge/camera/CamcorderMediator;)Landroid/media/MediaRecorder;

    .line 286
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->isInitialized()Z

    move-result v7

    .line 287
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mMediaRecorderListener:Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;

    invoke-static {v0}, Lcom/lge/camera/VideoRecorder;->setInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)Z

    .line 288
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mMediaRecorderListener:Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;

    invoke-static {v0}, Lcom/lge/camera/VideoRecorder;->setErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)Z

    goto/16 :goto_1

    .line 307
    .restart local v9       #videoRecordingStartRetval:Z
    :cond_9
    :try_start_1
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->start()Z

    move-result v9

    .line 308
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoRecordingStartRetval = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 335
    :catch_0
    move-exception v8

    .line 336
    .local v8, e:Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->release()V

    .line 337
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->restoreToIdle()V

    .line 338
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not start media recorder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 345
    if-nez v9, :cond_3

    .line 346
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->restoreToIdle()V

    .line 347
    const-string v0, "CameraApp"

    const-string v1, "Could not start media recorder"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 313
    .end local v8           #e:Ljava/lang/RuntimeException;
    :cond_a
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    iput-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 339
    :catch_1
    move-exception v8

    .line 340
    .local v8, e:Ljava/lang/Exception;
    :try_start_4
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->release()V

    .line 341
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->restoreToIdle()V

    .line 342
    const-string v0, "CameraApp"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 344
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 345
    if-nez v9, :cond_3

    .line 346
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->restoreToIdle()V

    .line 347
    const-string v0, "CameraApp"

    const-string v1, "Could not start media recorder"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 344
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 345
    if-nez v9, :cond_b

    .line 346
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->restoreToIdle()V

    .line 347
    const-string v1, "CameraApp"

    const-string v2, "Could not start media recorder"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    throw v0

    .line 352
    .end local v9           #videoRecordingStartRetval:Z
    :cond_c
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->restoreToIdle()V

    .line 353
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_4

    .line 367
    .restart local v6       #RecordingSize:Ljava/lang/String;
    :cond_d
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recording Size :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-static {v6}, Lcom/lge/camera/util/Common;->IsHeatingVideoSize(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getIsCharging()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 370
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->StartHeatingwarning()V

    goto/16 :goto_5
.end method

.method public startRotation(I)V
    .locals 13
    .parameter "degree"

    .prologue
    const/16 v12, 0xe

    const/16 v11, 0xc

    const/16 v10, 0xb

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 664
    const/4 v0, 0x0

    .line 665
    .local v0, orientation:I
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v4

    .line 667
    .local v4, state:I
    iget-boolean v5, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v5, :cond_1

    .line 668
    const-string v5, "CameraApp"

    const-string v6, "RecordingController is not initialize."

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    if-eq v4, v9, :cond_0

    .line 675
    sparse-switch p1, :sswitch_data_0

    .line 690
    :goto_1
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v6, 0x7f0900ab

    invoke-virtual {v5, v6}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateLayout;

    .line 691
    .local v2, progress:Lcom/lge/camera/components/RotateLayout;
    if-nez v2, :cond_2

    .line 692
    const-string v5, "CameraApp"

    const-string v6, "cannot startRotation progress is null."

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 677
    .end local v2           #progress:Lcom/lge/camera/components/RotateLayout;
    :sswitch_0
    const/4 v0, 0x0

    .line 678
    goto :goto_1

    .line 680
    :sswitch_1
    const/4 v0, 0x1

    .line 681
    goto :goto_1

    .line 683
    :sswitch_2
    const/4 v0, 0x2

    .line 684
    goto :goto_1

    .line 686
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_1

    .line 695
    .restart local v2       #progress:Lcom/lge/camera/components/RotateLayout;
    :cond_2
    invoke-virtual {v2, p1}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 696
    invoke-virtual {v2}, Lcom/lge/camera/components/RotateLayout;->requestLayout()V

    .line 697
    invoke-virtual {v2}, Lcom/lge/camera/components/RotateLayout;->invalidate()V

    .line 699
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->setRecLayout()V

    .line 701
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ori = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const v5, 0x7f0900a8

    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/camcorder/RecordingController;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/components/RotateLayout;

    .line 703
    .local v3, recTimeText:Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v2}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 704
    .local v1, pp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v1}, Lcom/lge/camera/util/Common;->ResetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 705
    if-nez v0, :cond_3

    .line 706
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 707
    invoke-virtual {v1, v11, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 708
    invoke-virtual {v1, v12, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 725
    :goto_2
    invoke-virtual {v2, v1}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 709
    :cond_3
    if-ne v0, v8, :cond_4

    .line 710
    const/16 v5, 0x5a

    invoke-virtual {v3, v5}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 711
    invoke-virtual {v1, v10, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 712
    const/16 v5, 0xf

    invoke-virtual {v1, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 713
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0045

    invoke-static {v5, v6}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v5

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    .line 715
    :cond_4
    if-ne v0, v9, :cond_5

    .line 716
    const/16 v5, 0xb4

    invoke-virtual {v3, v5}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 717
    invoke-virtual {v1, v11, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 718
    invoke-virtual {v1, v12, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2

    .line 720
    :cond_5
    const/16 v5, 0x10e

    invoke-virtual {v3, v5}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 721
    invoke-virtual {v1, v10, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 722
    const/16 v5, 0xf

    invoke-virtual {v1, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 723
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a00c8

    invoke-static {v5, v6}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    .line 675
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public stopRecording()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-static {v0}, Lcom/lge/camera/util/Common;->UnblockAlarmInRecording(Lcom/lge/camera/Mediator;)V

    .line 418
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->hideTimeIndicator()V

    .line 420
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/camera/controller/camcorder/RecordingController$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/camcorder/RecordingController$1;-><init>(Lcom/lge/camera/controller/camcorder/RecordingController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStopRecordingThread:Ljava/lang/Thread;

    .line 447
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 450
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    const-string v1, "com.lge.camera.command.HideLiveSnapshotButton"

    invoke-virtual {v0, v1}, Lcom/lge/camera/CamcorderMediator;->doCommandUi(Ljava/lang/String;)V

    .line 453
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHeat_detection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->StopHeatingwarning()V

    .line 457
    :cond_1
    return-void
.end method

.method public stopRecordingByPausing()V
    .locals 14

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 755
    const-string v0, "CameraApp"

    const-string v3, "stopRecordingByPausing()"

    invoke-static {v0, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-static {v0}, Lcom/lge/camera/util/Common;->UnblockAlarmInRecording(Lcom/lge/camera/Mediator;)V

    .line 760
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 761
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, v5}, Lcom/lge/camera/Mediator;->setVideoState(I)V

    .line 762
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetFunctionUITimer()I

    move-result v0

    if-ne v0, v5, :cond_8

    .line 763
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    iget-wide v3, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    invoke-virtual {v0, v3, v4}, Lcom/lge/camera/VideoFile;->setRecordingTime_end(J)V

    .line 769
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->hideTimeIndicator()V

    .line 771
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 772
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->stopRecordingEffect()V

    .line 773
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    new-instance v3, Lcom/lge/camera/controller/camcorder/RecordingController$4;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/camcorder/RecordingController$4;-><init>(Lcom/lge/camera/controller/camcorder/RecordingController;)V

    invoke-virtual {v0, v3}, Lcom/lge/camera/CamcorderMediator;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 789
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    const-string v3, "key_preview_size_on_device"

    invoke-virtual {v0, v3}, Lcom/lge/camera/CamcorderMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 790
    .local v2, videoSizeString:Ljava/lang/String;
    const/4 v10, 0x0

    .line 791
    .local v10, savedUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->isMediaScanning()Z

    move-result v9

    .line 793
    .local v9, ismediascanning:Z
    invoke-static {}, Lcom/lge/camera/util/Common;->getUSBconfig()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mtp_only"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/lge/camera/util/Common;->getUSBconfig()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ptp_only"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/lge/camera/util/Common;->getUSBstate()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CONFIGURED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 794
    const/4 v9, 0x1

    .line 795
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v0}, Lcom/lge/camera/VideoFile;->getFile()Ljava/io/File;

    move-result-object v11

    .line 796
    .local v11, vFile:Ljava/io/File;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 797
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetFunctionUITimer()I

    move-result v0

    if-ne v0, v5, :cond_d

    .line 798
    iget-wide v3, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    iget-wide v12, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    sub-long/2addr v3, v12

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetMinRecordingTime()I

    move-result v0

    int-to-long v12, v0

    cmp-long v0, v3, v12

    if-gez v0, :cond_a

    .line 799
    if-eqz v11, :cond_4

    .line 800
    const-string v0, "CameraApp"

    const-string v3, "vFile.delete()"

    invoke-static {v0, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 838
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/StorageController;->checkStorage(Z)V

    .line 840
    new-instance v0, Lcom/lge/camera/controller/camcorder/RecordingController$5;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camcorder/RecordingController$5;-><init>(Lcom/lge/camera/controller/camcorder/RecordingController;)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 847
    if-eqz v10, :cond_11

    .line 848
    const-string v0, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saved uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-static {v0, v10}, Lcom/lge/camera/util/Common;->saveLastVideo(Lcom/lge/camera/Mediator;Landroid/net/Uri;)V

    .line 850
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    const-string v3, "key_video_auto_review"

    invoke-virtual {v0, v3}, Lcom/lge/camera/CamcorderMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "on"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 851
    .local v6, autoReview:Z
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->isAttachIntent()Z

    move-result v0

    or-int/2addr v6, v0

    .line 852
    if-eqz v6, :cond_5

    .line 853
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/lge/camera/CamcorderMediator;->setVideoState(I)V

    .line 854
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewPanelController;

    move-result-object v0

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewPanelController;->setShutterButtonImage(ZI)V

    .line 867
    .end local v6           #autoReview:Z
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 868
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    const-string v1, "com.lge.camera.command.HideLiveSnapshotButton"

    invoke-virtual {v0, v1}, Lcom/lge/camera/CamcorderMediator;->doCommandUi(Ljava/lang/String;)V

    .line 870
    :cond_6
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHeat_detection()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 871
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->StopHeatingwarning()V

    .line 873
    :cond_7
    return-void

    .line 765
    .end local v2           #videoSizeString:Ljava/lang/String;
    .end local v9           #ismediascanning:Z
    .end local v10           #savedUri:Landroid/net/Uri;
    .end local v11           #vFile:Ljava/io/File;
    :cond_8
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/lge/camera/VideoFile;->setRecordingTime_end(J)V

    goto/16 :goto_0

    .line 782
    :cond_9
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->release()V

    .line 783
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getSoundController()Lcom/lge/camera/controller/SoundController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/SoundController;->playRecordingSound(Z)V

    .line 784
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 786
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    goto/16 :goto_1

    .line 804
    .restart local v2       #videoSizeString:Ljava/lang/String;
    .restart local v9       #ismediascanning:Z
    .restart local v10       #savedUri:Landroid/net/Uri;
    .restart local v11       #vFile:Ljava/io/File;
    :cond_a
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->checkFsWritable()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 805
    if-nez v9, :cond_4

    .line 807
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->isMMSRecording()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 808
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CamcorderMediator;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/VideoFile;->registerUri(ILjava/lang/String;Landroid/location/Location;ZI)Landroid/net/Uri;

    move-result-object v10

    goto/16 :goto_2

    .line 810
    :cond_b
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CamcorderMediator;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/VideoFile;->registerUri(ILjava/lang/String;Landroid/location/Location;ZI)Landroid/net/Uri;

    move-result-object v10

    goto/16 :goto_2

    .line 813
    :cond_c
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v0}, Lcom/lge/camera/VideoFile;->deleteFile()V

    goto/16 :goto_2

    .line 817
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 818
    .local v7, currentTime:J
    iget-wide v3, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    sub-long v3, v7, v3

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetMinRecordingTime()I

    move-result v0

    int-to-long v12, v0

    cmp-long v0, v3, v12

    if-gez v0, :cond_e

    .line 819
    if-eqz v11, :cond_4

    .line 820
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    goto/16 :goto_2

    .line 823
    :cond_e
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->checkFsWritable()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 824
    if-nez v9, :cond_4

    .line 826
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->isMMSRecording()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 827
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CamcorderMediator;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/VideoFile;->registerUri(ILjava/lang/String;Landroid/location/Location;ZI)Landroid/net/Uri;

    move-result-object v10

    goto/16 :goto_2

    .line 829
    :cond_f
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CamcorderMediator;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/VideoFile;->registerUri(ILjava/lang/String;Landroid/location/Location;ZI)Landroid/net/Uri;

    move-result-object v10

    goto/16 :goto_2

    .line 832
    :cond_10
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v0}, Lcom/lge/camera/VideoFile;->deleteFile()V

    goto/16 :goto_2

    .line 857
    .end local v7           #currentTime:J
    :cond_11
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/camera/CamcorderMediator;->setVideoState(I)V

    .line 858
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    const-string v1, "com.lge.camera.command.DisplayPreview"

    invoke-virtual {v0, v1}, Lcom/lge/camera/CamcorderMediator;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public waitStartRecordingThreadDone()V
    .locals 3

    .prologue
    .line 399
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_0

    .line 401
    :try_start_0
    const-string v1, "CameraApp"

    const-string v2, "Wait for start recording done.."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 403
    const-string v1, "CameraApp"

    const-string v2, "Start recording done."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "CameraApp"

    const-string v2, "Failed to wait for start recording done!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public waitStopRecordingThreadDone()V
    .locals 3

    .prologue
    .line 461
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStopRecordingThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    const-string v1, "CameraApp"

    const-string v2, "Wait for stop recording done.."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 464
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStopRecordingThread:Ljava/lang/Thread;

    .line 465
    const-string v1, "CameraApp"

    const-string v2, "Stop recording done.."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "CameraApp"

    const-string v2, "Failed to join stop recording thread!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
