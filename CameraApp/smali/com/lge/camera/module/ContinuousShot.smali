.class public Lcom/lge/camera/module/ContinuousShot;
.super Lcom/lge/camera/module/Module;
.source "ContinuousShot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/module/ContinuousShot$OneShotPreviewCallback;,
        Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;
    }
.end annotation


# static fields
.field private static final CONTINUOUS_SHOT_TIME:I

.field private static DEFAULT_QUALITY:I


# instance fields
.field private deviceDegree:I

.field private mCameraMediator:Lcom/lge/camera/CameraMediator;

.field private mCheckOneShotCallbackTime:J

.field private mContiShotErrorOccur:Z

.field private mContinueShotCount:I

.field private mContinuousShot:Ljava/util/Timer;

.field private mContinuousShotSaveImageThread:Ljava/lang/Thread;

.field private mCount:I

.field private mInProgressLatch:Ljava/util/concurrent/CountDownLatch;

.field private mIsContinuousShotSaveImageThreadRunning:Z

.field private mIsContinuousShotStopUserAction:Z

.field private mPushContineShotCount:I

.field private mQueueContinueOrientation:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private mSound_isPlayed:Z

.field private previewHeight:I

.field private previewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetContinuousShotTime()I

    move-result v0

    sput v0, Lcom/lge/camera/module/ContinuousShot;->CONTINUOUS_SHOT_TIME:I

    .line 611
    const/16 v0, 0x5f

    sput v0, Lcom/lge/camera/module/ContinuousShot;->DEFAULT_QUALITY:I

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 3
    .parameter "mediator"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1}, Lcom/lge/camera/module/Module;-><init>(Lcom/lge/camera/Mediator;)V

    .line 31
    iput v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinueShotCount:I

    .line 32
    iput v0, p0, Lcom/lge/camera/module/ContinuousShot;->mPushContineShotCount:I

    .line 33
    iput-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;

    .line 34
    iput-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotSaveImageThreadRunning:Z

    .line 35
    iput-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotStopUserAction:Z

    .line 36
    iput-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueOrientation:Ljava/util/concurrent/BlockingQueue;

    .line 37
    iput-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShotSaveImageThread:Ljava/lang/Thread;

    .line 38
    iput-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContiShotErrorOccur:Z

    .line 39
    iput v0, p0, Lcom/lge/camera/module/ContinuousShot;->mCount:I

    .line 40
    iput-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShot:Ljava/util/Timer;

    .line 43
    iput v0, p0, Lcom/lge/camera/module/ContinuousShot;->deviceDegree:I

    .line 44
    iput-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mSound_isPlayed:Z

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/module/ContinuousShot;->mCheckOneShotCallbackTime:J

    .line 638
    iput-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mInProgressLatch:Ljava/util/concurrent/CountDownLatch;

    .line 50
    check-cast p1, Lcom/lge/camera/CameraMediator;

    .end local p1
    iput-object p1, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/module/ContinuousShot;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContiShotErrorOccur:Z

    return v0
.end method

.method static synthetic access$002(Lcom/lge/camera/module/ContinuousShot;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/lge/camera/module/ContinuousShot;->mContiShotErrorOccur:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lge/camera/module/ContinuousShot;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/lge/camera/module/ContinuousShot;->mCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/lge/camera/module/ContinuousShot;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lge/camera/module/ContinuousShot;->stopSaveImageThread()V

    return-void
.end method

.method static synthetic access$108(Lcom/lge/camera/module/ContinuousShot;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/lge/camera/module/ContinuousShot;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/camera/module/ContinuousShot;->mCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/lge/camera/module/ContinuousShot;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lge/camera/module/ContinuousShot;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotSaveImageThreadRunning:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/lge/camera/module/ContinuousShot;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotSaveImageThreadRunning:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/lge/camera/module/ContinuousShot;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lge/camera/module/ContinuousShot;->clearSaveImageQueue()V

    return-void
.end method

.method static synthetic access$1400(Lcom/lge/camera/module/ContinuousShot;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueOrientation:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lge/camera/module/ContinuousShot;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/lge/camera/module/ContinuousShot;->previewWidth:I

    return v0
.end method

.method static synthetic access$1600(Lcom/lge/camera/module/ContinuousShot;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/lge/camera/module/ContinuousShot;->previewHeight:I

    return v0
.end method

.method static synthetic access$1700(Lcom/lge/camera/module/ContinuousShot;[BI)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/module/ContinuousShot;->saveContiShotImage2([BI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/lge/camera/module/ContinuousShot;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lge/camera/module/ContinuousShot;->notifySaveDone()V

    return-void
.end method

.method static synthetic access$1900(Lcom/lge/camera/module/ContinuousShot;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/lge/camera/module/ContinuousShot;->mPushContineShotCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/lge/camera/module/ContinuousShot;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotStopUserAction:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/lge/camera/module/ContinuousShot;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/lge/camera/module/ContinuousShot;->deviceDegree:I

    return v0
.end method

.method static synthetic access$202(Lcom/lge/camera/module/ContinuousShot;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotStopUserAction:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/module/ContinuousShot;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mSound_isPlayed:Z

    return v0
.end method

.method static synthetic access$402(Lcom/lge/camera/module/ContinuousShot;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/lge/camera/module/ContinuousShot;->mSound_isPlayed:Z

    return p1
.end method

.method static synthetic access$500(Lcom/lge/camera/module/ContinuousShot;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinueShotCount:I

    return v0
.end method

.method static synthetic access$508(Lcom/lge/camera/module/ContinuousShot;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinueShotCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/camera/module/ContinuousShot;->mContinueShotCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/lge/camera/module/ContinuousShot;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/lge/camera/module/ContinuousShot;->mCheckOneShotCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/lge/camera/module/ContinuousShot;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/lge/camera/module/ContinuousShot;->mCheckOneShotCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/lge/camera/module/ContinuousShot;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShotSaveImageThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$802(Lcom/lge/camera/module/ContinuousShot;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShotSaveImageThread:Ljava/lang/Thread;

    return-object p1
.end method

.method private clearSaveImageQueue()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 559
    const-string v0, "CameraApp"

    const-string v1, "clearSaveImageQueue"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 562
    iput-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueOrientation:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueOrientation:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 567
    iput-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueOrientation:Ljava/util/concurrent/BlockingQueue;

    .line 569
    :cond_1
    return-void
.end method

.method private initLatch()V
    .locals 3

    .prologue
    .line 640
    const-string v0, "CameraApp"

    const-string v1, "Init cont. shot latch"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mInProgressLatch:Ljava/util/concurrent/CountDownLatch;

    .line 642
    return-void
.end method

.method private initSaveImageQueue()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 541
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_0

    .line 542
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;

    .line 543
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueOrientation:Ljava/util/concurrent/BlockingQueue;

    .line 553
    :goto_0
    return-void

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 546
    iput-object v1, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;

    .line 547
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;

    .line 549
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueOrientation:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 550
    iput-object v1, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueOrientation:Ljava/util/concurrent/BlockingQueue;

    .line 551
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueOrientation:Ljava/util/concurrent/BlockingQueue;

    goto :goto_0
.end method

.method private notifySaveDone()V
    .locals 3

    .prologue
    .line 644
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mInProgressLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mInProgressLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 650
    :goto_0
    return-void

    .line 648
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "Cont. shot latch null! Ignore notifySaveDone()."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveContiShotImage2([BI)Z
    .locals 26
    .parameter "data"
    .parameter "rotation"

    .prologue
    .line 383
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[saveContiShotImage2] mPreviewing ["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v7}, Lcom/lge/camera/CameraMediator;->isPreviewing()Z

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "]"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[saveContiShotImage2] mPausing ["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v7}, Lcom/lge/camera/CameraMediator;->isPausing()Z

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "] mContiShotErrorOccur ["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/lge/camera/module/ContinuousShot;->mContiShotErrorOccur:Z

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "]"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lge/camera/module/ContinuousShot;->mContiShotErrorOccur:Z

    if-eqz v1, :cond_0

    .line 387
    const-string v1, "CameraApp"

    const-string v2, "saveContiShotImage2() return: error flag"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const/16 v21, 0x0

    .line 476
    :goto_0
    return v21

    .line 390
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/CameraStorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v8

    .line 392
    .local v8, filePath:Ljava/lang/String;
    const/4 v6, 0x0

    .line 393
    .local v6, exifData:[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getImageRotationDegree()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/lge/camera/CameraMediator;->setNewExifInformation([BI)[B

    move-result-object v6

    .line 395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 396
    .local v23, startTime:J
    const/4 v3, 0x0

    .line 398
    .local v3, fileName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getFileHelper()Lcom/lge/camera/util/FileNamingHelper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 399
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getFileHelper()Lcom/lge/camera/util/FileNamingHelper;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getApplicationMode()I

    move-result v2

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1, v2, v7, v9, v10}, Lcom/lge/camera/util/FileNamingHelper;->getFileName(IZZI)Ljava/lang/String;

    move-result-object v3

    .line 402
    :cond_1
    if-nez v3, :cond_2

    .line 403
    const-string v1, "CameraApp"

    const-string v2, "saveContiShotImage2() return: file helper is null"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const/16 v21, 0x0

    goto :goto_0

    .line 407
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 409
    .local v4, dateTaken:J
    const/16 v21, 0x0

    .line 412
    .local v21, ret:Z
    if-eqz v6, :cond_3

    .line 414
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getImageHandler()Lcom/lge/camera/util/ImageHandler;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v7}, Lcom/lge/camera/CameraMediator;->getCurrentLocation()Landroid/location/Location;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/lge/camera/util/ImageHandler;->addJpegImage(Landroid/content/ContentResolver;Ljava/lang/String;J[BLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v25

    .line 433
    .local v25, tUri:Landroid/net/Uri;
    :goto_1
    const-string v1, "CameraApp"

    const-string v2, "saved cont. shot uri:%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v25, v7, v9

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    if-nez v25, :cond_4

    .line 435
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 424
    .end local v25           #tUri:Landroid/net/Uri;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getImageHandler()Lcom/lge/camera/util/ImageHandler;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getCurrentLocation()Landroid/location/Location;

    move-result-object v15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object v11, v3

    move-wide v12, v4

    move-object/from16 v14, p1

    move-object/from16 v16, v8

    invoke-virtual/range {v9 .. v18}, Lcom/lge/camera/util/ImageHandler;->addJpegImage(Landroid/content/ContentResolver;Ljava/lang/String;J[BLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v25

    .restart local v25       #tUri:Landroid/net/Uri;
    goto :goto_1

    .line 437
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    move-object/from16 v0, v25

    invoke-virtual {v1, v0}, Lcom/lge/camera/CameraMediator;->setSavedImageUri(Landroid/net/Uri;)V

    .line 438
    const/16 v25, 0x0

    .line 440
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v22

    .line 441
    .local v22, savedImageUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_5

    .line 442
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 443
    :cond_5
    if-eqz v22, :cond_6

    .line 444
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    const-string v1, "CameraApp"

    const-string v2, "Set last thumbnail uri:%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v22, v7, v9

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    move-object/from16 v0, v22

    invoke-static {v1, v0}, Lcom/lge/camera/util/Common;->saveLastPicture(Lcom/lge/camera/Mediator;Landroid/net/Uri;)V

    .line 448
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getImageListRotation()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lge/camera/module/ContinuousShot;->mPushContineShotCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/lge/camera/module/ContinuousShot;->mPushContineShotCount:I

    .line 450
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SAVE IMAGE pushContineShotCount["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lge/camera/module/ContinuousShot;->mPushContineShotCount:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "] mImageListUri.SIZE()["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v7}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "]"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const/16 v21, 0x1

    .line 456
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->isPausing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 457
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 454
    :cond_6
    const-string v1, "CameraApp"

    const-string v2, "saveContiShotImage2() error: savedImageUri is null"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 459
    .end local v22           #savedImageUri:Landroid/net/Uri;
    .end local v25           #tUri:Landroid/net/Uri;
    :catch_0
    move-exception v20

    .line 460
    .local v20, ise:Ljava/lang/IllegalStateException;
    const-string v1, "CameraApp"

    const-string v2, "IllegalStateException while compressing image."

    move-object/from16 v0, v20

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/module/ContinuousShot;->stopContinuousShotThread()V

    .line 462
    const/16 v21, 0x0

    .line 467
    .end local v20           #ise:Ljava/lang/IllegalStateException;
    :cond_7
    :goto_3
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ret = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    if-eqz v21, :cond_8

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/module/ContinuousShot;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getSaveURI()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1, v3}, Lcom/lge/camera/CameraMediator;->setSavedFileName(Ljava/lang/String;)V

    .line 474
    :cond_8
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "save continuous shot image elapse time = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v9, v9, v23

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "ms"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 463
    :catch_1
    move-exception v19

    .line 464
    .local v19, ex:Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "Exception while compressing image."

    move-object/from16 v0, v19

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 465
    const/16 v21, 0x0

    goto :goto_3
.end method

.method private stopSaveImageThread()V
    .locals 2

    .prologue
    .line 519
    const-string v0, "CameraApp"

    const-string v1, "stopSaveImageThread"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotSaveImageThreadRunning:Z

    .line 521
    invoke-direct {p0}, Lcom/lge/camera/module/ContinuousShot;->notifySaveDone()V

    .line 522
    invoke-direct {p0}, Lcom/lge/camera/module/ContinuousShot;->clearSaveImageQueue()V

    .line 523
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShotSaveImageThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShotSaveImageThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 526
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShotSaveImageThread:Ljava/lang/Thread;

    .line 527
    return-void
.end method


# virtual methods
.method public doAfterCapture()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public getQualityNumber(I)I
    .locals 1
    .parameter "jpegQuality"

    .prologue
    .line 615
    sget v0, Lcom/lge/camera/module/ContinuousShot;->DEFAULT_QUALITY:I

    .line 617
    .local v0, quality:I
    packed-switch p1, :pswitch_data_0

    .line 631
    :goto_0
    return v0

    .line 619
    :pswitch_0
    const/16 v0, 0x5f

    .line 620
    goto :goto_0

    .line 622
    :pswitch_1
    const/16 v0, 0x5a

    .line 623
    goto :goto_0

    .line 625
    :pswitch_2
    const/16 v0, 0x55

    .line 626
    goto :goto_0

    .line 617
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotSaveImageThreadRunning:Z

    return v0
.end method

.method public stopContinuousShot()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 287
    const-string v0, "CameraApp"

    const-string v1, "stopContinuousShot()"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/lge/camera/util/Common;->setAudioFocus(Landroid/content/Context;Z)V

    .line 292
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->isPausing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 296
    const-string v0, "CameraApp"

    const-string v1, "#####  TIME_CHECK call getCameraDevice().cancelAutoFocus()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShot:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShot:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 303
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShot:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShot:Ljava/util/Timer;

    .line 306
    :cond_2
    return-void
.end method

.method public stopContinuousShotThread()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 480
    const-string v3, "CameraApp"

    const-string v4, "stopContinuousShotThread"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v3, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3, v6}, Lcom/lge/camera/CameraMediator;->setContinuousShotAlived(Z)V

    .line 482
    invoke-virtual {p0}, Lcom/lge/camera/module/ContinuousShot;->stopContinuousShot()V

    .line 483
    invoke-direct {p0}, Lcom/lge/camera/module/ContinuousShot;->stopSaveImageThread()V

    .line 485
    iget-object v3, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->isPausing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 486
    iget-object v3, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 487
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 490
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isVoiceShutter()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 491
    iget-object v3, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v4, "key_voiceshutter"

    invoke-virtual {v3, v4}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, mVoiceShutterValue:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v3, "on"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 494
    iget-object v3, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v4, "com.lge.camera.command.SetVoiceShutterMode"

    invoke-virtual {v3, v4}, Lcom/lge/camera/CameraMediator;->doCommandUi(Ljava/lang/String;)V

    .line 497
    .end local v1           #mVoiceShutterValue:Ljava/lang/String;
    :cond_2
    invoke-static {v6, v6}, Lcom/lge/camera/properties/ProjectVariables;->isCafSupported(II)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v4, "key_camera_shot_mode"

    const-string v5, "shotmode_continuous"

    invoke-virtual {v3, v4, v5}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 501
    :try_start_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v3

    const/16 v4, 0x1f

    if-eq v3, v4, :cond_3

    .line 502
    iget-object v3, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 504
    iget-object v3, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 505
    .local v2, parameters:Landroid/hardware/Camera$Parameters;
    const-string v3, "continuous-picture"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 506
    iget-object v3, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    .end local v2           #parameters:Landroid/hardware/Camera$Parameters;
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/lge/camera/controller/camera/CameraFocusController;->setShutterButtonClicked(Z)V

    .line 513
    const-string v3, "CameraApp"

    const-string v4, "###setFocusMode-conti"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_4
    return-void

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "CameraApp"

    const-string v4, "RuntimeException : "

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public stopContinuousShotUserAction()V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getSoundController()Lcom/lge/camera/controller/SoundController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getSoundController()Lcom/lge/camera/controller/SoundController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/SoundController;->StopSoundContinuous()V

    .line 533
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotStopUserAction:Z

    .line 534
    return-void
.end method

.method public takePicture()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v0, 0x0

    .line 62
    const-string v2, "CameraApp"

    const-string v3, "[Module]ContinuousShot::takePicture"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 65
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->setSwitcherVisible(Z)V

    .line 66
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->setMainButtonDisable()V

    .line 67
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->setThumbnailButtonVisibility(I)V

    .line 68
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camera/CameraFocusController;->clearFocusState()V

    .line 69
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camera/CameraFocusController;->hideFocus()Z

    .line 71
    iput v0, p0, Lcom/lge/camera/module/ContinuousShot;->mCount:I

    .line 72
    iput v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinueShotCount:I

    .line 73
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camera/CameraStorageController;->getAvailablePictureCount()J

    move-result-wide v2

    const-wide/16 v4, 0x6

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camera/CameraStorageController;->getAvailablePictureCount()J

    move-result-wide v2

    long-to-int v2, v2

    rsub-int/lit8 v2, v2, 0x6

    iput v2, p0, Lcom/lge/camera/module/ContinuousShot;->mCount:I

    .line 75
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camera/CameraStorageController;->getAvailablePictureCount()J

    move-result-wide v2

    long-to-int v2, v2

    rsub-int/lit8 v2, v2, 0x6

    iput v2, p0, Lcom/lge/camera/module/ContinuousShot;->mContinueShotCount:I

    .line 77
    :cond_0
    iput v0, p0, Lcom/lge/camera/module/ContinuousShot;->mPushContineShotCount:I

    .line 78
    iput-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContiShotErrorOccur:Z

    .line 79
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getDeviceDegree()I

    move-result v2

    iput v2, p0, Lcom/lge/camera/module/ContinuousShot;->deviceDegree:I

    .line 81
    invoke-direct {p0}, Lcom/lge/camera/module/ContinuousShot;->initSaveImageQueue()V

    .line 83
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    const-string v3, "key_camera_shot_mode"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v9

    .line 84
    .local v9, shotModePref:Lcom/lge/camera/setting/ListPreference;
    if-nez v9, :cond_1

    .line 85
    const-string v2, "CameraApp"

    const-string v3, "shotModePref is null"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :goto_0
    return v0

    .line 88
    :cond_1
    invoke-virtual {v9}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v8

    .line 89
    .local v8, pictureSize:[I
    const/4 v9, 0x0

    .line 90
    aget v2, v8, v0

    iput v2, p0, Lcom/lge/camera/module/ContinuousShot;->previewWidth:I

    .line 91
    aget v2, v8, v10

    iput v2, p0, Lcom/lge/camera/module/ContinuousShot;->previewHeight:I

    .line 93
    iput-boolean v10, p0, Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotSaveImageThreadRunning:Z

    .line 94
    iput-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotStopUserAction:Z

    .line 95
    iput-object v11, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShotSaveImageThread:Ljava/lang/Thread;

    .line 97
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2, v10}, Lcom/lge/camera/CameraMediator;->setContinuousShotAlived(Z)V

    .line 98
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    iget-object v3, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getDeviceDegree()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/CameraMediator;->setImageRotationDegree(I)V

    .line 101
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2, v3}, Lcom/lge/camera/properties/ProjectVariables;->isCafSupported(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v3, "key_camera_shot_mode"

    invoke-virtual {v2, v3}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "shotmode_continuous"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v2

    const/16 v3, 0x15

    if-eq v2, v3, :cond_2

    .line 104
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 105
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    .line 106
    .local v7, parameters:Landroid/hardware/Camera$Parameters;
    const-string v2, "auto"

    invoke-virtual {v7, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 107
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 108
    const-string v2, "CameraApp"

    const-string v3, "###setFocusMode-Auto"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v7           #parameters:Landroid/hardware/Camera$Parameters;
    :cond_2
    :goto_1
    new-instance v2, Ljava/util/Timer;

    const-string v3, "ContinuousShot"

    invoke-direct {v2, v3}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShot:Ljava/util/Timer;

    .line 115
    iput-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mSound_isPlayed:Z

    .line 116
    new-instance v1, Lcom/lge/camera/module/ContinuousShot$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/module/ContinuousShot$1;-><init>(Lcom/lge/camera/module/ContinuousShot;)V

    .line 276
    .local v1, taskContinuous:Ljava/util/TimerTask;
    invoke-direct {p0}, Lcom/lge/camera/module/ContinuousShot;->initLatch()V

    .line 279
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/lge/camera/util/Common;->setAudioFocus(Landroid/content/Context;Z)V

    .line 281
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShot:Ljava/util/Timer;

    sget v2, Lcom/lge/camera/module/ContinuousShot;->CONTINUOUS_SHOT_TIME:I

    int-to-long v2, v2

    sget v4, Lcom/lge/camera/module/ContinuousShot;->CONTINUOUS_SHOT_TIME:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    move v0, v10

    .line 283
    goto/16 :goto_0

    .line 110
    .end local v1           #taskContinuous:Ljava/util/TimerTask;
    :catch_0
    move-exception v6

    .line 111
    .local v6, e:Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    const-string v3, "RuntimeException : "

    invoke-static {v2, v3, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public waitForSaveDone()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 652
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mInProgressLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v2, :cond_1

    .line 653
    const/4 v1, 0x0

    .line 655
    .local v1, saveDone:Z
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mInProgressLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 660
    :goto_0
    if-nez v1, :cond_0

    .line 661
    const-string v2, "CameraApp"

    const-string v3, "Waiting for cont. shot done timeout!"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    .end local v1           #saveDone:Z
    :goto_1
    return-void

    .line 656
    .restart local v1       #saveDone:Z
    :catch_0
    move-exception v0

    .line 657
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "CameraApp"

    const-string v3, "Wait for cont. shot done has interrupted!"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 664
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "Cont. shot save done."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 668
    .end local v1           #saveDone:Z
    :cond_1
    const-string v2, "CameraApp"

    const-string v3, "Cont. shot latch null! Don\'t wait."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
