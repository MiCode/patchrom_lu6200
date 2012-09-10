.class public abstract Lcom/lge/camera/controller/PreviewController;
.super Lcom/lge/camera/controller/Controller;
.source "PreviewController.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;
    }
.end annotation


# instance fields
.field protected bRendered:Z

.field private deviceOpenLatch:Ljava/util/concurrent/CountDownLatch;

.field private isGoingGalleryLiveEffect:Z

.field protected isReadyEngineProcessor:Z

.field private mBeginStartPreview:Z

.field protected mCameraDevice:Landroid/hardware/Camera;

.field protected mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

.field protected mCameraGLPreviewExtra:Landroid/view/SurfaceView;

.field protected mCameraMode:I

.field protected mCameraPreview:Lcom/lge/camera/components/CameraPreview;

.field private mCameraReleaseOnGoing:Z

.field private mChangeMode:Z

.field public mDoSnapRunnable:Ljava/lang/Runnable;

.field private mEffectParameter:Ljava/lang/Object;

.field private mEffectRecorderListener:Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;

.field private mEffectType:I

.field public mEffectUriFromGallery:Ljava/lang/String;

.field public mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

.field protected mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

.field private mErrorCallback:Lcom/lge/camera/exception/CameraErrorCallback;

.field public mIsSensorSupportBackdropper:Z

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field public mLiveEffectInformationMessage:Landroid/view/View;

.field private mLiveEffectStopRecordingDone:Z

.field private mLockScreenPreventPreview:Z

.field public mOneShotPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field public mPreviewCallbackRunnable:Ljava/lang/Runnable;

.field private mPreviewLatch:Ljava/util/concurrent/CountDownLatch;

.field protected mPreviewMode:I

.field mPreviewing:Z

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mProfileType:I

.field public mResetEffect:Z

.field private mStartPreviewFail:Z

.field private mStartPreviewOnGoing:Z

.field mStartPreviewThread:Ljava/lang/Thread;

.field public mStopRecordingEffectThread:Ljava/lang/Thread;

.field private mSurfaceHeight:I

.field protected mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private previousEffectParameter:Ljava/lang/Object;

.field private previousEffectType:I

.field public previousResolution:Ljava/lang/String;

.field private tryCnt:I


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 4
    .parameter "mediator"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/Mediator;)V

    .line 50
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    .line 51
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraReleaseOnGoing:Z

    .line 53
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 54
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    .line 56
    iput v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraMode:I

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewMode:I

    .line 58
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    .line 59
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewController;->mBeginStartPreview:Z

    .line 60
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewFail:Z

    .line 62
    new-instance v0, Lcom/lge/olaworks/library/EngineProcessor;

    invoke-direct {v0}, Lcom/lge/olaworks/library/EngineProcessor;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 63
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->isReadyEngineProcessor:Z

    .line 65
    new-instance v0, Lcom/lge/camera/exception/CameraErrorCallback;

    invoke-direct {v0}, Lcom/lge/camera/exception/CameraErrorCallback;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mErrorCallback:Lcom/lge/camera/exception/CameraErrorCallback;

    .line 67
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    .line 68
    iput v1, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    .line 69
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    .line 71
    const/4 v0, 0x4

    iput v0, p0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    .line 72
    iput v1, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceWidth:I

    iput v1, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHeight:I

    .line 73
    new-instance v0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;

    invoke-direct {v0, p0, v2}, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;-><init>(Lcom/lge/camera/controller/PreviewController;Lcom/lge/camera/controller/PreviewController$1;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectRecorderListener:Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;

    .line 74
    iput v1, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    .line 75
    const-string v0, "off"

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectParameter:Ljava/lang/Object;

    .line 76
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    .line 78
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mEffectUriFromGallery:Ljava/lang/String;

    .line 79
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mLiveEffectInformationMessage:Landroid/view/View;

    .line 80
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mResetEffect:Z

    .line 81
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->isGoingGalleryLiveEffect:Z

    .line 83
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mChangeMode:Z

    .line 86
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewController;->mLiveEffectStopRecordingDone:Z

    .line 87
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewController;->mIsSensorSupportBackdropper:Z

    .line 93
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    .line 94
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreviewExtra:Landroid/view/SurfaceView;

    .line 145
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mLockScreenPreventPreview:Z

    .line 150
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewLatch:Ljava/util/concurrent/CountDownLatch;

    .line 636
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->deviceOpenLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1180
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1903
    iput v1, p0, Lcom/lge/camera/controller/PreviewController;->tryCnt:I

    .line 2045
    new-instance v0, Lcom/lge/camera/controller/PreviewController$14;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewController$14;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 2129
    new-instance v0, Lcom/lge/camera/controller/PreviewController$15;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewController$15;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewCallbackRunnable:Ljava/lang/Runnable;

    .line 2136
    new-instance v0, Lcom/lge/camera/controller/PreviewController$16;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewController$16;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mOneShotPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 98
    return-void
.end method

.method static synthetic access$102(Lcom/lge/camera/controller/PreviewController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewFail:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/PreviewController;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/camera/exception/CameraHardwareException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewController;->ensureCameraDevice()V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/PreviewController;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/PreviewController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewController;->checkQualityAndStartPreview()V

    return-void
.end method

.method static synthetic access$502(Lcom/lge/camera/controller/PreviewController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    return p1
.end method

.method static synthetic access$600(Lcom/lge/camera/controller/PreviewController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mLiveEffectStopRecordingDone:Z

    return v0
.end method

.method static synthetic access$602(Lcom/lge/camera/controller/PreviewController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/lge/camera/controller/PreviewController;->mLiveEffectStopRecordingDone:Z

    return p1
.end method

.method static synthetic access$700(Lcom/lge/camera/controller/PreviewController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/lge/camera/controller/PreviewController;->tryCnt:I

    return v0
.end method

.method static synthetic access$708(Lcom/lge/camera/controller/PreviewController;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/lge/camera/controller/PreviewController;->tryCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/camera/controller/PreviewController;->tryCnt:I

    return v0
.end method

.method private checkQualityAndStartPreview()V
    .locals 6

    .prologue
    .line 1949
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1950
    .local v1, previewSize:Landroid/hardware/Camera$Size;
    if-nez v1, :cond_0

    .line 1951
    const-string v3, "CameraApp"

    const-string v4, "size is null"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    :goto_0
    return-void

    .line 1955
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isDownProfilesInFrontSensor()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1957
    const/4 v3, 0x4

    iput v3, p0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    .line 1959
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getCameraMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1960
    const/16 v3, 0x9

    iput v3, p0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    .line 1963
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v3

    iget v4, p0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    invoke-static {v3, v4}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    .line 1964
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reset profile : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v3, v4}, Lcom/lge/camera/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1968
    :cond_2
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPreviewSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "previewSize"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "profile mProfile size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1971
    new-instance v2, Ljava/lang/Float;

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    .line 1972
    .local v2, profileRatio:Ljava/lang/Float;
    new-instance v0, Ljava/lang/Float;

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-float v3, v3

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-direct {v0, v3}, Ljava/lang/Float;-><init>(F)V

    .line 1974
    .local v0, previewRatio:Ljava/lang/Float;
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->effectsActive()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v3

    if-eqz v3, :cond_3

    .line 1975
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " setAspectRatio: profileRatio:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", previewRatio:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/CameraPreview;->setAspectRatio(F)V

    goto/16 :goto_0

    .line 1978
    :cond_3
    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    if-nez v3, :cond_4

    .line 1979
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->startPreview()V

    goto/16 :goto_0

    .line 1981
    :cond_4
    const-string v3, "CameraApp"

    const-string v4, "Call startPreviewEffect in checkQualityAndStartPreview "

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->startPreviewEffect()V

    goto/16 :goto_0
.end method

.method private ensureCameraDevice()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/camera/exception/CameraHardwareException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 638
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ensureCameraDevice() deviceOpenLatch:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/controller/PreviewController;->deviceOpenLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " device:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->deviceOpenLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v6, :cond_4

    .line 640
    iget-boolean v6, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewFail:Z

    if-eqz v6, :cond_1

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    const/4 v4, 0x1

    .local v4, trial:I
    :goto_1
    const/4 v6, 0x4

    if-ge v4, v6, :cond_4

    .line 643
    :try_start_0
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v6, :cond_2

    .line 644
    const-string v6, "TAG"

    const-string v7, " Camera device is opening in another thread, wait for done %d..."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string v6, "TAG"

    const-string v7, " currently camera device:%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    :cond_2
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->deviceOpenLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v7, 0x3e8

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v7, v8, v9}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    .line 648
    .local v3, ret:Z
    if-nez v3, :cond_3

    .line 649
    const-string v6, "TAG"

    const-string v7, " Device open latch timeout! startPreviewFail:%b"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-boolean v10, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewFail:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 651
    :cond_3
    const-string v6, "TAG"

    const-string v7, " Opened. Camera device:%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    .end local v3           #ret:Z
    .end local v4           #trial:I
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v6, :cond_0

    .line 660
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v6, v12}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v6, p0, Lcom/lge/camera/controller/PreviewController;->deviceOpenLatch:Ljava/util/concurrent/CountDownLatch;

    .line 662
    :try_start_1
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/util/CameraHolder;->getUsers()I

    move-result v6

    if-nez v6, :cond_6

    .line 663
    const/4 v0, 0x0

    .local v0, device_cam_id:I
    const/4 v2, 0x0

    .line 664
    .local v2, old_device_cam_id:I
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v5

    .line 666
    .local v5, ui_cam_id:I
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "call CameraHolder.open("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/util/CameraHolder;->getRealCameraId()I

    move-result v2

    .line 668
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/lge/camera/util/CameraHolder;->open(I)Landroid/hardware/Camera;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    .line 669
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/util/CameraHolder;->getRealCameraId()I

    move-result v0

    .line 670
    if-eq v2, v5, :cond_5

    if-ne v2, v0, :cond_5

    .line 672
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6, v0}, Lcom/lge/camera/Mediator;->setCameraId(I)V

    .line 673
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6, v0}, Lcom/lge/camera/Mediator;->setCameraMode(I)V

    .line 674
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reset ui menu for device number:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v7, "com.lge.camera.command.SetCameraIdBeforeStartInit"

    invoke-virtual {v6, v7}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 677
    :cond_5
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "open routine done readlCamId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    .end local v0           #device_cam_id:I
    .end local v2           #old_device_cam_id:I
    .end local v5           #ui_cam_id:I
    :goto_3
    const-string v6, "CameraApp"

    const-string v7, "Camera device opening done."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 684
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->deviceOpenLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 685
    iput-object v13, p0, Lcom/lge/camera/controller/PreviewController;->deviceOpenLatch:Ljava/util/concurrent/CountDownLatch;

    .line 686
    const-string v6, "CameraApp"

    const-string v7, "latch countDown called"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 655
    .restart local v4       #trial:I
    :catch_0
    move-exception v1

    .line 656
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 680
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v4           #trial:I
    :cond_6
    :try_start_2
    const-string v6, "CameraApp"

    const-string v7, "Camera device user != 0 SOMETHING WRONG!!"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 684
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->deviceOpenLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 685
    iput-object v13, p0, Lcom/lge/camera/controller/PreviewController;->deviceOpenLatch:Ljava/util/concurrent/CountDownLatch;

    .line 686
    const-string v7, "CameraApp"

    const-string v8, "latch countDown called"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v6
.end method

.method public static getDisplayRotation(Landroid/app/Activity;)I
    .locals 4
    .parameter "activity"

    .prologue
    .line 1095
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1096
    .local v0, rotation:I
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisplayRotation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    const/16 v1, 0x5a

    return v1
.end method

.method private initializeEffectsPreview()V
    .locals 8

    .prologue
    .line 1440
    const-string v4, "CameraApp"

    const-string v5, "initializeEffectsPreview"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v4, :cond_0

    .line 1499
    :goto_0
    return-void

    .line 1443
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-nez v4, :cond_1

    .line 1444
    const-string v4, "CameraApp"

    const-string v5, "mEffectsRecorder is null"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1451
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4, v5}, Lcom/lge/camera/EffectsRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1452
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/lge/camera/EffectsRecorder;->setCameraFacing(I)V

    .line 1453
    const/4 v4, 0x4

    iput v4, p0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    .line 1454
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isDownProfilesInFrontSensor()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getCameraMode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1456
    const/16 v4, 0x9

    iput v4, p0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    .line 1459
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v4

    const-string v5, "key_preview_size_on_device"

    invoke-virtual {v4, v5}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    .line 1460
    .local v3, videoSizePref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v3, :cond_4

    .line 1461
    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo2()Ljava/lang/String;

    move-result-object v2

    .line 1462
    .local v2, sVideoBitrate:Ljava/lang/String;
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sVideoBitrate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    const/4 v0, 0x0

    .line 1465
    .local v0, iVideoBitrate:I
    if-eqz v2, :cond_3

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1466
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1467
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v4, v0}, Lcom/lge/camera/EffectsRecorder;->setVideoEncodingBitRate(I)V

    .line 1473
    .end local v0           #iVideoBitrate:I
    .end local v2           #sVideoBitrate:Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v4

    iget v5, p0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    invoke-static {v4, v5}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    .line 1474
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "profile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v4, v5}, Lcom/lge/camera/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1476
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mEffectRecorderListener:Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;

    invoke-virtual {v4, v5}, Lcom/lge/camera/EffectsRecorder;->setEffectsListener(Lcom/lge/camera/EffectsRecorder$EffectsListener;)V

    .line 1477
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v4, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v4

    iget-object v4, v4, Lcom/lge/camera/controller/camcorder/RecordingController;->mMediaRecorderListener:Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;

    invoke-virtual {v5, v4}, Lcom/lge/camera/EffectsRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1478
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v4, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v4

    iget-object v4, v4, Lcom/lge/camera/controller/camcorder/RecordingController;->mMediaRecorderListener:Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;

    invoke-virtual {v5, v4}, Lcom/lge/camera/EffectsRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1481
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v1

    .line 1483
    .local v1, rotation:I
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mEffectsRecorder.setOrientationHint("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v4, v1}, Lcom/lge/camera/EffectsRecorder;->setOrientationHint(I)V

    .line 1486
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mEffectsRecorder.setPreviewDisplay width:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget v6, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceWidth:I

    iget v7, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHeight:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/lge/camera/EffectsRecorder;->setPreviewDisplay(Landroid/view/SurfaceHolder;II)V

    .line 1492
    iget v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v5, "gallery"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1495
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget v5, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mEffectUriFromGallery:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/lge/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1470
    .end local v1           #rotation:I
    :cond_4
    const-string v4, "CameraApp"

    const-string v5, "videoSizePref is null"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1497
    .restart local v1       #rotation:I
    :cond_5
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget v5, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/lge/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public static setCameraDisplayOrientation(Landroid/app/Activity;ILandroid/hardware/Camera;)V
    .locals 7
    .parameter "activity"
    .parameter "cameraId"
    .parameter "camera"

    .prologue
    .line 1112
    :try_start_0
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 1113
    .local v2, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 1114
    invoke-static {p0}, Lcom/lge/camera/controller/PreviewController;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    .line 1116
    .local v0, degrees:I
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1117
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v4, v0

    rem-int/lit16 v3, v4, 0x168

    .line 1118
    .local v3, result:I
    rsub-int v4, v3, 0x168

    rem-int/lit16 v3, v4, 0x168

    .line 1122
    :goto_0
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "degrees = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", info.orientation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    invoke-virtual {p2, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 1127
    .end local v0           #degrees:I
    .end local v2           #info:Landroid/hardware/Camera$CameraInfo;
    .end local v3           #result:I
    :goto_1
    return-void

    .line 1120
    .restart local v0       #degrees:I
    .restart local v2       #info:Landroid/hardware/Camera$CameraInfo;
    :cond_0
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v4, v0

    add-int/lit16 v4, v4, 0x168

    rem-int/lit16 v3, v4, 0x168
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3       #result:I
    goto :goto_0

    .line 1124
    .end local v0           #degrees:I
    .end local v2           #info:Landroid/hardware/Camera$CameraInfo;
    .end local v3           #result:I
    :catch_0
    move-exception v1

    .line 1125
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "CameraApp"

    const-string v5, "setCameraDisplayOrientation exception : "

    invoke-static {v4, v5, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private setOtherLayoutParam(IILandroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 4
    .parameter "width"
    .parameter "height"
    .parameter "previewParam"
    .parameter "surfaceParam"

    .prologue
    const v3, 0x7f090091

    .line 1421
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1422
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v1, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1423
    iget v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1424
    .local v0, recIconLeftMargin:I
    iget v1, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lt v1, p1, :cond_0

    .line 1425
    iget v1, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1427
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v1, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->setRecIndicatorLayout(III)V

    .line 1430
    .end local v0           #recIconLeftMargin:I
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v1

    iget v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v1, p1, p2, v2}, Lcom/lge/camera/controller/FocusController;->setFocusAreadWindow(III)V

    .line 1432
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/PreviewController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1433
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/PreviewController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1435
    :cond_2
    return-void
.end method

.method private declared-synchronized setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 6
    .parameter "holder"

    .prologue
    .line 563
    monitor-enter p0

    :try_start_0
    const-string v1, "CameraApp"

    const-string v2, "##### mCameraDevice.setPreviewDisplay device:%s, holder:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    :try_start_1
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 576
    :goto_0
    monitor-exit p0

    return-void

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, ex:Ljava/lang/Throwable;
    :try_start_2
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v2, Lcom/lge/camera/controller/PreviewController$4;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/PreviewController$4;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 573
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 563
    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public CamDeviceOpen()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/camera/exception/CameraHardwareException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1024
    const/4 v1, 0x0

    .line 1026
    .local v1, ret:Z
    :try_start_0
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/util/CameraHolder;->getUsers()I

    move-result v2

    if-nez v2, :cond_0

    .line 1027
    const-string v2, "CameraApp"

    const-string v3, "CamDeviceOpen call CameraHolder.open(%d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/util/CameraHolder;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    .line 1029
    const/4 v1, 0x1

    .line 1030
    const-string v2, "CameraApp"

    const-string v3, "CamDeviceOpen open routine done"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    :goto_0
    const-string v2, "CameraApp"

    const-string v3, "CamDeviceOpen Camera device opening done."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    :goto_1
    return v1

    .line 1033
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "CamDeviceOpen Camera device user != 0 SOMETHING WRONG!!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1036
    :catch_0
    move-exception v0

    .line 1037
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1038
    const-string v2, "CameraApp"

    const-string v3, "CamDeviceOpen latch countDown called"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public IsSensorSupportBackdropper()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mIsSensorSupportBackdropper:Z

    return v0
.end method

.method public beRendered()Z
    .locals 1

    .prologue
    .line 1321
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    return v0
.end method

.method public changePreviewMode(II)V
    .locals 12
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1348
    const v7, 0x7f09008c

    invoke-virtual {p0, v7}, Lcom/lge/camera/controller/PreviewController;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1350
    .local v3, previewLayout:Landroid/view/View;
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "changePreviewMode previewLayout ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1353
    .local v4, previewParam:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v6, 0x0

    .line 1355
    .local v6, surfaceParam:Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v7, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    if-eqz v7, :cond_1

    .line 1356
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {v7}, Lcom/lge/camera/components/OpenGLSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6           #surfaceParam:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1360
    .restart local v6       #surfaceParam:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0a0034

    invoke-static {v7, v8}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v5

    .line 1361
    .local v5, previewWidth:I
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0a0035

    invoke-static {v7, v8}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    .line 1362
    .local v2, previewHeight:I
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0a0032

    invoke-static {v7, v8}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 1363
    .local v0, lcdWidth:I
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0a0038

    invoke-static {v7, v8}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    .line 1364
    .local v1, leftMargin:I
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1365
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1366
    const/4 v7, -0x1

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1367
    const/4 v7, -0x1

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1369
    if-ge v5, p1, :cond_3

    .line 1370
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetXGAmodel()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1371
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v7

    const/16 v8, 0xff

    invoke-virtual {v7, v8}, Lcom/lge/camera/controller/PreviewPanelController;->setMainBarAlpha(I)V

    .line 1374
    :goto_1
    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1375
    const/4 v7, 0x0

    iput v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1377
    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lt v7, p1, :cond_0

    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lt v7, p2, :cond_0

    .line 1378
    const-string v7, "CameraApp"

    const-string v8, "surface not scaled %dx%d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    iput p1, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1380
    iput p2, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1402
    :cond_0
    :goto_2
    invoke-direct {p0, p1, p2, v4, v6}, Lcom/lge/camera/controller/PreviewController;->setOtherLayoutParam(IILandroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 1403
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1404
    iget-boolean v7, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    if-eqz v7, :cond_5

    .line 1405
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {v7, v6}, Lcom/lge/camera/components/OpenGLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1416
    :goto_3
    return-void

    .line 1358
    .end local v0           #lcdWidth:I
    .end local v1           #leftMargin:I
    .end local v2           #previewHeight:I
    .end local v5           #previewWidth:I
    :cond_1
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v7}, Lcom/lge/camera/components/CameraPreview;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6           #surfaceParam:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .restart local v6       #surfaceParam:Landroid/widget/RelativeLayout$LayoutParams;
    goto/16 :goto_0

    .line 1373
    .restart local v0       #lcdWidth:I
    .restart local v1       #leftMargin:I
    .restart local v2       #previewHeight:I
    .restart local v5       #previewWidth:I
    :cond_2
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v7

    const/16 v8, 0x1e

    invoke-virtual {v7, v8}, Lcom/lge/camera/controller/PreviewPanelController;->setMainBarAlpha(I)V

    goto :goto_1

    .line 1383
    :cond_3
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v7

    const/16 v8, 0xff

    invoke-virtual {v7, v8}, Lcom/lge/camera/controller/PreviewPanelController;->setMainBarAlpha(I)V

    .line 1384
    sub-int v7, v5, v1

    if-ge v7, p1, :cond_4

    .line 1385
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1386
    const/4 v7, 0x0

    iput v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    .line 1389
    :cond_4
    sub-int v7, v5, v1

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1390
    iput v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1394
    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lt v7, p1, :cond_0

    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lt v7, p2, :cond_0

    .line 1396
    const-string v7, "CameraApp"

    const-string v8, "surface not scaled %dx%d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    iput p1, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1398
    iput p2, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 1407
    :cond_5
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v7, v6}, Lcom/lge/camera/components/CameraPreview;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1408
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v7, p1, p2}, Lcom/lge/camera/components/CameraPreview;->setAspectRatio(II)V

    goto :goto_3
.end method

.method public changePreviewModeOnUiThread(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1329
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    if-eqz v0, :cond_0

    .line 1330
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->stopPreview()V

    .line 1331
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/OpenGLSurfaceView;->releasePreviewCallback(Landroid/hardware/Camera;)V

    .line 1332
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/OpenGLSurfaceView;->clearData(Z)V

    .line 1335
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v1, Lcom/lge/camera/controller/PreviewController$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/camera/controller/PreviewController$12;-><init>(Lcom/lge/camera/controller/PreviewController;II)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1341
    return-void
.end method

.method public checkStartPreviewCallback()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2059
    const-string v0, "CameraApp"

    const-string v1, "##### TIME_CHECK previewStart onPreviewFrame!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    if-nez v0, :cond_1

    .line 2062
    const-string v0, "CameraApp"

    const-string v1, "exit checkStartPreviewCallback by (mMediator == null)"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2127
    :cond_0
    :goto_0
    return-void

    .line 2085
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v0

    if-nez v0, :cond_2

    .line 2086
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lge/camera/controller/camera/CameraFocusController;->setShutterButtonClicked(Z)V

    .line 2089
    :cond_2
    invoke-static {v2}, Lcom/lge/camera/util/Common;->checkEnteringTime(Z)V

    .line 2090
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_3

    .line 2091
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2092
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewLatch:Ljava/util/concurrent/CountDownLatch;

    .line 2095
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_4

    .line 2097
    const-string v0, "CameraApp"

    const-string v1, "startPreview OneShotPreviewCallback onPreviewFrame [start]"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->setEngineProcessor()V

    .line 2101
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 2102
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/OpenGLSurfaceView;->setFlipHorizontal(Z)V

    .line 2107
    :goto_1
    const-string v0, "CameraApp"

    const-string v1, "startPreview OneShotPreviewCallback onPreviewFrame [end]"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    :cond_4
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    .line 2111
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, v3}, Lcom/lge/camera/Mediator;->setInCaptureProgress(Z)V

    .line 2112
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getEnableInput()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2113
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, v2}, Lcom/lge/camera/Mediator;->enableInput(Z)V

    .line 2115
    :cond_5
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsLiveEffectSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 2118
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lge/camera/controller/QuickFunctionController;->refresh(Z)V

    .line 2120
    :cond_6
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2121
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->snapshotOnIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2122
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2123
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/MainHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2104
    :cond_7
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/CameraPreview;->setFlipHorizontal(Z)V

    goto :goto_1
.end method

.method public closeCamera()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 700
    const-string v4, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "closeCamera()-start, mCameraDevice is null?:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_2

    .line 703
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-eqz v1, :cond_0

    .line 704
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v1}, Lcom/lge/camera/EffectsRecorder;->release()V

    .line 705
    iput-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    .line 707
    :cond_0
    iput v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    .line 708
    iput-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    .line 710
    iput-boolean v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraReleaseOnGoing:Z

    .line 712
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    :goto_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportManualAntibanding()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 719
    const-string v1, "CameraApp"

    const-string v2, "closeCamera()-zoom reset"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    :try_start_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v1

    if-nez v1, :cond_1

    .line 722
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/ZoomController;->reset()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 728
    :cond_1
    :goto_2
    iput-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    .line 729
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    .line 731
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/util/CameraHolder;->release()Z

    .line 732
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewController;->mCameraReleaseOnGoing:Z

    .line 734
    :cond_2
    const-string v1, "CameraApp"

    const-string v2, "closeCamera()-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    return-void

    :cond_3
    move v1, v3

    .line 700
    goto :goto_0

    .line 713
    :catch_0
    move-exception v0

    .line 714
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "closeCamera setZoomChangeListener exception : "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 723
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 724
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "closeCamera zoom reset exception : "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public countDownLatch()V
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1189
    :cond_0
    return-void
.end method

.method public effectsActive()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1700
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsLiveEffectSupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1701
    const-string v1, "CameraApp"

    const-string v2, "Dont support liveeffect"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    :cond_0
    :goto_0
    return v0

    .line 1706
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->readEffectType()I

    move-result v1

    iput v1, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    .line 1708
    iget v1, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCameraDevice()Landroid/hardware/Camera;
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 127
    const-string v0, "CameraApp"

    const-string v1, "Camera ref is null. getCameraDevice() return null."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    return-object v0
.end method

.method public getCameraGLPreviewExtra()Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreviewExtra:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public getCameraPreview()Lcom/lge/camera/components/CameraPreview;
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    return-object v0
.end method

.method public getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/lge/olaworks/library/EngineProcessor;

    invoke-direct {v0}, Lcom/lge/olaworks/library/EngineProcessor;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    return-object v0
.end method

.method public getPreviewMode()I
    .locals 1

    .prologue
    .line 1134
    iget v0, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewMode:I

    return v0
.end method

.method public abstract getPreviewSizeOnDevice()Ljava/lang/String;
.end method

.method public abstract getPreviewSizeOnScreen()Ljava/lang/String;
.end method

.method public getPreviousEffectType()I
    .locals 1

    .prologue
    .line 2143
    iget v0, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    return v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1076
    const v0, 0x7f09008c

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1077
    const v0, 0x7f09008d

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1079
    const v0, 0x7f09008e

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1080
    const v0, 0x7f09008f

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1081
    return-void
.end method

.method public hideLoadingView()V
    .locals 2

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v1, Lcom/lge/camera/controller/PreviewController$8;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/PreviewController$8;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1148
    return-void
.end method

.method public initController()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 101
    const v1, 0x7f09005f

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewController;->inflateStub(I)Landroid/view/View;

    .line 102
    const v1, 0x7f09006c

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewController;->inflateStub(I)Landroid/view/View;

    .line 104
    const v1, 0x7f09008d

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/CameraPreview;

    iput-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    .line 105
    const v1, 0x7f09008e

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/OpenGLSurfaceView;

    iput-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    .line 106
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/OpenGLSurfaceView;->initOpenGLSurfaceView(Lcom/lge/camera/Mediator;)V

    .line 107
    const v1, 0x7f09008f

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreviewExtra:Landroid/view/SurfaceView;

    .line 109
    const v1, 0x7f09008c

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 111
    .local v0, previewLayout:Landroid/view/View;
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetFunctionFrontCameraBeautyShot()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 115
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    .line 119
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->show()V

    .line 121
    iput-boolean v4, p0, Lcom/lge/camera/controller/PreviewController;->mChangeMode:Z

    .line 122
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "previewLayout initController ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void

    .line 117
    :cond_0
    iput-boolean v4, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    goto :goto_0
.end method

.method public initializeRecordingEffect(Ljava/lang/String;JJ)V
    .locals 5
    .parameter "filepath_name"
    .parameter "mMaxFileSize"
    .parameter "freeSpace"

    .prologue
    const-wide/16 v3, 0x0

    .line 1858
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-eqz v0, :cond_2

    .line 1859
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v0, v1}, Lcom/lge/camera/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1860
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/EffectsRecorder;->setCaptureRate(D)V

    .line 1861
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v0, p1}, Lcom/lge/camera/EffectsRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 1862
    cmp-long v0, p2, v3

    if-nez v0, :cond_1

    .line 1863
    sget-wide v0, Lcom/lge/camera/properties/CameraConstants;->VIDEO_LOW_STORAGE_THRESHOLD:J

    sub-long p2, p4, v0

    .line 1865
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetMediaRecoderLimitSize()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 1866
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetMediaRecoderLimitSize()J

    move-result-wide p2

    .line 1868
    :cond_0
    cmp-long v0, p2, v3

    if-gez v0, :cond_1

    .line 1869
    sget-wide p2, Lcom/lge/camera/properties/CameraConstants;->VIDEO_LOW_STORAGE_THRESHOLD:J

    .line 1873
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v0, p2, p3}, Lcom/lge/camera/EffectsRecorder;->setMaxFileSize(J)V

    .line 1874
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/EffectsRecorder;->setMaxDuration(I)V

    .line 1876
    :cond_2
    return-void
.end method

.method public isCameraReleaseOnGoing()Z
    .locals 1

    .prologue
    .line 1177
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraReleaseOnGoing:Z

    return v0
.end method

.method public isPreviewOnGoing()Z
    .locals 1

    .prologue
    .line 808
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    return v0
.end method

.method public isPreviewing()Z
    .locals 1

    .prologue
    .line 800
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    return v0
.end method

.method public isReadyEngineProcessor()Z
    .locals 1

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->isReadyEngineProcessor:Z

    return v0
.end method

.method public isUsingGalleryVideoForLiveEffect()Z
    .locals 2

    .prologue
    .line 2196
    iget v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "gallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2199
    const/4 v0, 0x1

    .line 2201
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keepCamera()V
    .locals 1

    .prologue
    .line 692
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/util/CameraHolder;->keep()V

    .line 693
    return-void
.end method

.method public keepCancel()V
    .locals 1

    .prologue
    .line 696
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/util/CameraHolder;->cancel()V

    .line 697
    return-void
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1194
    const-string v0, "CameraApp"

    const-string v1, "onCreate-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mErrorCallback:Lcom/lge/camera/exception/CameraErrorCallback;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, v1}, Lcom/lge/camera/exception/CameraErrorCallback;->setMediator(Lcom/lge/camera/Mediator;)V

    .line 1197
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    .line 1198
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1199
    new-instance v0, Lcom/lge/camera/EffectsRecorder;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/camera/EffectsRecorder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    .line 1201
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsLiveEffectSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1202
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isDownProfilesInFrontSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getCameraMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1204
    const/16 v0, 0x9

    iput v0, p0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    .line 1206
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v0

    iget v1, p0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    .line 1207
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "profile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->readEffectType()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    .line 1211
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->readEffectParameter()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    .line 1212
    iput v4, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    .line 1213
    const-string v0, "off"

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectParameter:Ljava/lang/Object;

    .line 1214
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    .line 1215
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectUriFromGallery:Ljava/lang/String;

    .line 1216
    iput-boolean v4, p0, Lcom/lge/camera/controller/PreviewController;->mResetEffect:Z

    .line 1218
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->setLatch()Ljava/util/concurrent/CountDownLatch;

    .line 1219
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/camera/controller/PreviewController$11;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/PreviewController$11;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    .line 1285
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1287
    const-string v0, "CameraApp"

    const-string v1, "onCreate-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 985
    const-string v0, "CameraApp"

    const-string v1, "onDestroy-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/lge/camera/EffectsRecorder;->close()V

    .line 988
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v0, v2}, Lcom/lge/camera/EffectsRecorder;->setEffectsListener(Lcom/lge/camera/EffectsRecorder$EffectsListener;)V

    .line 989
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v0, v2}, Lcom/lge/camera/EffectsRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 990
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v0, v2}, Lcom/lge/camera/EffectsRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 991
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    .line 994
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    .line 995
    const-string v0, "off"

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectParameter:Ljava/lang/Object;

    .line 996
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    .line 998
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    if-eqz v0, :cond_1

    .line 999
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    if-eqz v0, :cond_1

    .line 1000
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {v0}, Lcom/lge/camera/components/OpenGLSurfaceView;->onDestroy()V

    .line 1003
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->closeCamera()V

    .line 1005
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    if-eqz v0, :cond_2

    .line 1006
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->stop()V

    .line 1007
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->releaseAllEngine()V

    .line 1008
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->destroy()V

    .line 1009
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 1011
    :cond_2
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1012
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    .line 1013
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    .line 1014
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreviewExtra:Landroid/view/SurfaceView;

    .line 1015
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    .line 1016
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onDestroy()V

    .line 1018
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mErrorCallback:Lcom/lge/camera/exception/CameraErrorCallback;

    .line 1019
    const-string v0, "CameraApp"

    const-string v1, "onDestroy-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    return-void
.end method

.method public onPause()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 892
    const-string v1, "CameraApp"

    const-string v2, "onPause-start "

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    if-eqz v1, :cond_0

    .line 894
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {v1}, Lcom/lge/camera/components/OpenGLSurfaceView;->onPause()V

    .line 897
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    if-eqz v1, :cond_1

    .line 898
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    const-string v2, "Panorama"

    invoke-virtual {v1, v2}, Lcom/lge/olaworks/library/EngineProcessor;->checkEngineTag(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 899
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v1}, Lcom/lge/olaworks/library/EngineProcessor;->stop()V

    .line 900
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v1}, Lcom/lge/olaworks/library/EngineProcessor;->releaseAllEngine()V

    .line 901
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v1}, Lcom/lge/olaworks/library/EngineProcessor;->destroy()V

    .line 902
    iput-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 906
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->waitStartPreviewThreadDone()V

    .line 908
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v1

    if-ne v1, v4, :cond_4

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsLiveEffectSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isBackupLiveeffectValue()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->isGoingGalleryLiveEffect:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    const-string v2, "gallery"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 913
    :cond_2
    const-string v1, "CameraApp"

    const-string v2, "we don\'t support backup liveeffect. so liveeffect value is initialized by off"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->effectsActive()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 915
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v1

    const-string v2, "key_preview_size_on_device"

    invoke-virtual {v1, v2, v4}, Lcom/lge/camera/setting/SettingMenu;->setAllChidMenuEnabled(Ljava/lang/String;Z)V

    .line 916
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v1

    const-string v2, "key_preview_size_on_device"

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/lge/camera/setting/SettingMenu;->setSelectedChild(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 920
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/lge/camera/controller/PreviewController;->setLimitationToLiveeffect(Z)V

    .line 922
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v2, "key_live_effect"

    const-string v3, "off"

    invoke-virtual {v1, v2, v3}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 925
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->isChangingToPostview()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 926
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->keepCamera()V

    .line 932
    :try_start_0
    const-string v1, "CameraApp"

    const-string v2, "check closeCamera"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->closeCamera()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/lge/camera/Mediator;->setChangingToPostview(Z)V

    .line 968
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    if-eqz v1, :cond_6

    .line 969
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/OpenGLSurfaceView;->releasePreviewCallback(Landroid/hardware/Camera;)V

    .line 970
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {v1, v6}, Lcom/lge/camera/components/OpenGLSurfaceView;->clearData(Z)V

    .line 971
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    if-eqz v1, :cond_6

    .line 972
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v1}, Lcom/lge/olaworks/library/EngineProcessor;->stop()V

    .line 973
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v1}, Lcom/lge/olaworks/library/EngineProcessor;->releaseAllEngine()V

    .line 974
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v1}, Lcom/lge/olaworks/library/EngineProcessor;->destroy()V

    .line 975
    iput-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 978
    :cond_6
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1, v5}, Lcom/lge/camera/Mediator;->swapPreviewEffect(Lcom/lge/olaworks/library/BaseEngine;)V

    .line 980
    const-string v1, "CameraApp"

    const-string v2, "onPause-end "

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    return-void

    .line 934
    :catch_0
    move-exception v0

    .line 935
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 943
    .end local v0           #e:Ljava/lang/Exception;
    :cond_7
    :try_start_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->effectsActive()Z

    move-result v1

    if-nez v1, :cond_b

    .line 944
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    if-eqz v1, :cond_8

    .line 945
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/CameraPreview;->setVisibility(I)V

    .line 946
    :cond_8
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    if-eqz v1, :cond_9

    .line 947
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/OpenGLSurfaceView;->setVisibility(I)V

    .line 948
    :cond_9
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreviewExtra:Landroid/view/SurfaceView;

    if-eqz v1, :cond_a

    .line 949
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreviewExtra:Landroid/view/SurfaceView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 950
    :cond_a
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->stopPreview()V

    .line 951
    iget-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    if-eqz v1, :cond_c

    .line 952
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    if-eqz v1, :cond_b

    .line 953
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/OpenGLSurfaceView;->close(Landroid/hardware/Camera;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 962
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->closeCamera()V

    .line 963
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mChangeMode:Z

    if-nez v1, :cond_5

    .line 964
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/16 :goto_1

    .line 955
    :cond_c
    :try_start_2
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    if-eqz v1, :cond_b

    .line 956
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/CameraPreview;->close(Landroid/hardware/Camera;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 959
    :catch_1
    move-exception v0

    .line 960
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "CameraApp"

    const-string v2, "NullPointerException!"

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 817
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume-start appmode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iput-boolean v5, p0, Lcom/lge/camera/controller/PreviewController;->mLiveEffectStopRecordingDone:Z

    .line 820
    iput-boolean v6, p0, Lcom/lge/camera/controller/PreviewController;->isGoingGalleryLiveEffect:Z

    .line 822
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 823
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-nez v2, :cond_0

    .line 824
    new-instance v2, Lcom/lge/camera/EffectsRecorder;

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lge/camera/EffectsRecorder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    .line 826
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsLiveEffectSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 827
    iput v8, p0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    .line 828
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isDownProfilesInFrontSensor()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraMode()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 830
    const/16 v2, 0x9

    iput v2, p0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    .line 832
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v2

    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    invoke-static {v2, v3}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    .line 833
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    :cond_2
    const v2, 0x7f090070

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/PreviewController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mLiveEffectInformationMessage:Landroid/view/View;

    .line 837
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v2, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camcorder/RecordingController;->show()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v3, Lcom/lge/camera/controller/PreviewController$7;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/PreviewController$7;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 852
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->readEffectType()I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    .line 853
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->readEffectParameter()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    .line 854
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume mEffectType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mEffectParameter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    iget-boolean v2, p0, Lcom/lge/camera/controller/PreviewController;->mResetEffect:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    if-ne v2, v7, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    const-string v3, "gallery"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 857
    iput-boolean v6, p0, Lcom/lge/camera/controller/PreviewController;->mResetEffect:Z

    .line 858
    const-string v2, "CameraApp"

    const-string v3, "onResume reset effecttype : off"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "key_live_effect"

    const-string v4, "off"

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 862
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set previous resolution :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v2

    const-string v3, "key_preview_size_on_device"

    invoke-virtual {v2, v3, v5}, Lcom/lge/camera/setting/SettingMenu;->setAllChidMenuEnabled(Ljava/lang/String;Z)V

    .line 865
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v2

    const-string v3, "key_preview_size_on_device"

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/lge/camera/setting/SettingMenu;->setSelectedChild(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 868
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/lge/camera/controller/PreviewController;->setLimitationToLiveeffect(Z)V

    .line 869
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->readEffectType()I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    .line 870
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->readEffectParameter()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    .line 872
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume mEffectType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mEffectParameter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v1

    .line 875
    .local v1, video_state:I
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume : mPreviewing:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mStartPreviewOnGoing:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", video_state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    iget-boolean v2, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    if-nez v2, :cond_5

    .line 880
    if-eq v1, v8, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getStatus()I

    move-result v2

    if-eq v2, v7, :cond_5

    .line 883
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->show()V

    .line 884
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {v2}, Lcom/lge/camera/components/OpenGLSurfaceView;->onResume()V

    .line 885
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->startPreview()V

    .line 888
    :cond_5
    const-string v2, "CameraApp"

    const-string v3, "onResume-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    return-void

    .line 838
    .end local v1           #video_state:I
    :catch_0
    move-exception v0

    .line 839
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "CameraApp"

    const-string v3, "ClassCastException:"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public readEffectParameter()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1653
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_1

    .line 1694
    :cond_0
    :goto_0
    return-object v2

    .line 1657
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 1658
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v3

    const-string v4, "key_live_effect"

    invoke-virtual {v3, v4}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 1659
    .local v1, preference:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_c

    .line 1660
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "key_live_effect"

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1661
    .local v0, effectSelection:Ljava/lang/String;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current liveeffect type :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    if-eqz v0, :cond_0

    const-string v3, "off"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1665
    const-string v3, "squeeze"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1666
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 1667
    :cond_2
    const-string v3, "big nose"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1668
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 1669
    :cond_3
    const-string v3, "big eyes"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1670
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 1671
    :cond_4
    const-string v3, "small eyes"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1672
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 1673
    :cond_5
    const-string v3, "big mouth"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1674
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_0

    .line 1675
    :cond_6
    const-string v3, "small mouth"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1676
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_0

    .line 1677
    :cond_7
    const-string v3, "In Space"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1678
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getLiveEffectInSpacePath()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 1679
    :cond_8
    const-string v3, "Sunset"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1680
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getLiveEffectSunSetPath()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 1681
    :cond_9
    const-string v3, "Disco"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1682
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getLiveEffectDiscoPath()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 1683
    :cond_a
    const-string v3, "My video"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1684
    const-string v2, "gallery"

    goto/16 :goto_0

    .line 1687
    :cond_b
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid effect selection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1690
    .end local v0           #effectSelection:Ljava/lang/String;
    :cond_c
    const-string v3, "CameraApp"

    const-string v4, "Invalid effect selection, preference is null "

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1693
    .end local v1           #preference:Lcom/lge/camera/setting/ListPreference;
    :cond_d
    const-string v3, "CameraApp"

    const-string v4, "Invalid effect selection, getPreferenceGroup is null "

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public readEffectType()I
    .locals 5

    .prologue
    .line 1622
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_1

    .line 1623
    const/4 v2, 0x0

    .line 1644
    :cond_0
    :goto_0
    return v2

    .line 1626
    :cond_1
    const/4 v2, 0x0

    .line 1627
    .local v2, tempValue:I
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1628
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v3

    const-string v4, "key_live_effect"

    invoke-virtual {v3, v4}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 1629
    .local v1, preference:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    .line 1630
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "key_live_effect"

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1631
    .local v0, effectSelection:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1632
    const-string v3, "off"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1633
    const/4 v2, 0x0

    goto :goto_0

    .line 1634
    :cond_2
    const-string v3, "In Space"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "Sunset"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "Disco"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "My video"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1636
    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    .line 1638
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public removePreviewCallback()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 415
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->isReadyEngineProcessor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    const-string v0, "CameraApp"

    const-string v1, "removePreviewCallback call"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 422
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 423
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->isReadyEngineProcessor:Z

    goto :goto_0
.end method

.method public restartPreview()V
    .locals 2

    .prologue
    .line 738
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/PreviewController;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 739
    return-void
.end method

.method public restartPreview(Landroid/hardware/Camera$Parameters;Z)V
    .locals 4
    .parameter "parameter"
    .parameter "useCallBack"

    .prologue
    const/4 v3, 0x0

    .line 742
    const-string v1, "CameraApp"

    const-string v2, "restartPreview()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->isPreviewing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    if-eqz v1, :cond_1

    .line 744
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "Not previewing now, do nothing."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    :goto_0
    return-void

    .line 748
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1, v3}, Lcom/lge/camera/Mediator;->enableInput(Z)V

    .line 750
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_2

    .line 751
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1, v3}, Lcom/lge/camera/Mediator;->setApplicationMode(I)V

    .line 757
    :goto_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/controller/PreviewController;->startPreview(Landroid/hardware/Camera$Parameters;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v2, Lcom/lge/camera/controller/PreviewController$6;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/PreviewController$6;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 753
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->setApplicationMode(I)V

    goto :goto_1

    .line 758
    :catch_0
    move-exception v0

    .line 759
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 760
    new-instance v1, Lcom/lge/camera/controller/PreviewController$5;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/PreviewController$5;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewController;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setChangeMode()V
    .locals 1

    .prologue
    .line 2009
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mChangeMode:Z

    .line 2010
    return-void
.end method

.method public setEnable3ALocks(Landroid/hardware/Camera$Parameters;Z)Z
    .locals 3
    .parameter "parameters"
    .parameter "lock"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2013
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    if-nez v2, :cond_1

    .line 2042
    :cond_0
    :goto_0
    return v0

    .line 2016
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2019
    if-nez p1, :cond_4

    .line 2020
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 2022
    if-eqz p1, :cond_0

    .line 2023
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2024
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 2026
    :cond_2
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2027
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 2029
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    move v0, v1

    .line 2030
    goto :goto_0

    .line 2033
    :cond_4
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2034
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 2036
    :cond_5
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2037
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    :cond_6
    move v0, v1

    .line 2039
    goto :goto_0
.end method

.method public setEngineProcessor()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 393
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    if-nez v0, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->isEmptyEngine()Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    const-string v1, "key_focus"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "face_tracking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetFunctionFrontCameraBeautyShot()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 405
    :cond_2
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    if-eqz v0, :cond_3

    .line 406
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/components/OpenGLSurfaceView;->setEngineProcessor(Lcom/lge/olaworks/library/EngineProcessor;Landroid/hardware/Camera;)V

    .line 410
    :goto_1
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewController;->isReadyEngineProcessor:Z

    goto :goto_0

    .line 408
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/components/CameraPreview;->setEngineProcessor(Lcom/lge/olaworks/library/EngineProcessor;Landroid/hardware/Camera;)V

    goto :goto_1
.end method

.method public setLatch()Ljava/util/concurrent/CountDownLatch;
    .locals 2

    .prologue
    .line 1182
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1183
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method public setLimitationToLiveeffect(Z)V
    .locals 7
    .parameter "beSet"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2147
    if-eqz p1, :cond_4

    .line 2148
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v2

    const-string v3, "key_camera_coloreffect"

    invoke-virtual {v2, v3, v5}, Lcom/lge/camera/setting/SettingMenu;->setEnabled(Ljava/lang/String;Z)V

    .line 2149
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v2

    const-string v3, "key_camera_tag_location"

    invoke-virtual {v2, v3, v5}, Lcom/lge/camera/setting/SettingMenu;->setEnabled(Ljava/lang/String;Z)V

    .line 2150
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v2

    const-string v3, "key_camera_whitebalance"

    invoke-virtual {v2, v3, v5}, Lcom/lge/camera/setting/SettingMenu;->setEnabled(Ljava/lang/String;Z)V

    .line 2152
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v2

    if-nez v2, :cond_0

    .line 2153
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    const-string v3, "key_zoom"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v1

    .line 2154
    .local v1, zoomMenuIndex:I
    if-ge v1, v6, :cond_2

    .line 2155
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuEnabled(IZ)V

    .line 2162
    .end local v1           #zoomMenuIndex:I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    const-string v3, "key_brightness"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v0

    .line 2163
    .local v0, brightnessMenuIndex:I
    if-ge v0, v6, :cond_3

    .line 2164
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v2

    invoke-virtual {v2, v0, v5}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuEnabled(IZ)V

    .line 2170
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camcorder/RecordingController;->show()V

    .line 2193
    :goto_2
    return-void

    .line 2157
    .end local v0           #brightnessMenuIndex:I
    .restart local v1       #zoomMenuIndex:I
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2158
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v2

    const-string v3, "key_zoom"

    invoke-virtual {v2, v3, v5}, Lcom/lge/camera/setting/SettingMenu;->setEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2166
    .end local v1           #zoomMenuIndex:I
    .restart local v0       #brightnessMenuIndex:I
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2167
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v2

    const-string v3, "key_brightness"

    invoke-virtual {v2, v3, v5}, Lcom/lge/camera/setting/SettingMenu;->setEnabled(Ljava/lang/String;Z)V

    goto :goto_1

    .line 2172
    .end local v0           #brightnessMenuIndex:I
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v2

    const-string v3, "key_camera_coloreffect"

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/setting/SettingMenu;->setEnabled(Ljava/lang/String;Z)V

    .line 2173
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v2

    const-string v3, "key_camera_tag_location"

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/setting/SettingMenu;->setEnabled(Ljava/lang/String;Z)V

    .line 2174
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v2

    const-string v3, "key_camera_whitebalance"

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/setting/SettingMenu;->setEnabled(Ljava/lang/String;Z)V

    .line 2175
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    const-string v3, "key_zoom"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v1

    .line 2176
    .restart local v1       #zoomMenuIndex:I
    if-ge v1, v6, :cond_7

    .line 2177
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuEnabled(IZ)V

    .line 2183
    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    const-string v3, "key_brightness"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v0

    .line 2184
    .restart local v0       #brightnessMenuIndex:I
    if-ge v0, v6, :cond_8

    .line 2185
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuEnabled(IZ)V

    .line 2191
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camcorder/RecordingController;->show()V

    goto/16 :goto_2

    .line 2179
    .end local v0           #brightnessMenuIndex:I
    :cond_7
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2180
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v2

    const-string v3, "key_zoom"

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/setting/SettingMenu;->setEnabled(Ljava/lang/String;Z)V

    goto :goto_3

    .line 2187
    .restart local v0       #brightnessMenuIndex:I
    :cond_8
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2188
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v2

    const-string v3, "key_brightness"

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/setting/SettingMenu;->setEnabled(Ljava/lang/String;Z)V

    goto :goto_4
.end method

.method public setLockScreenPreventPreview(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/lge/camera/controller/PreviewController;->mLockScreenPreventPreview:Z

    .line 148
    return-void
.end method

.method public setPreviewMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 1130
    iput p1, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewMode:I

    .line 1131
    return-void
.end method

.method public setPreviewing(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 804
    iput-boolean p1, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    .line 805
    return-void
.end method

.method public setStartPreviewOnGoing(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    .line 142
    return-void
.end method

.method public setupHolder()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1291
    const-string v1, "CameraApp"

    const-string v2, "setupHolder()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    const/4 v0, 0x0

    .line 1293
    .local v0, holder:Landroid/view/SurfaceHolder;
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v1}, Lcom/lge/camera/components/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1294
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v1}, Lcom/lge/camera/components/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 1298
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetFunctionFrontCameraBeautyShot()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 1301
    :cond_0
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1303
    :cond_1
    return-void
.end method

.method public setupHolder(Z)V
    .locals 4
    .parameter "bRender"

    .prologue
    .line 1306
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupHolder(): bRender = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    iput-boolean p1, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    .line 1311
    if-eqz p1, :cond_0

    .line 1312
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreviewExtra:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 1316
    .local v0, holder:Landroid/view/SurfaceHolder;
    :goto_0
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1317
    return-void

    .line 1314
    .end local v0           #holder:Landroid/view/SurfaceHolder;
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v1}, Lcom/lge/camera/components/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .restart local v0       #holder:Landroid/view/SurfaceHolder;
    goto :goto_0
.end method

.method public show()V
    .locals 6

    .prologue
    const v5, 0x7f09008f

    const v4, 0x7f09008e

    const v3, 0x7f09008d

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1062
    const v0, 0x7f09008c

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1064
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    if-eqz v0, :cond_0

    .line 1065
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/PreviewController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1066
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/PreviewController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1067
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/PreviewController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1073
    :goto_0
    return-void

    .line 1069
    :cond_0
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/PreviewController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1070
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/PreviewController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1071
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/PreviewController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showCamcorderLoadingView()V
    .locals 2

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v1, Lcom/lge/camera/controller/PreviewController$10;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/PreviewController$10;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1174
    return-void
.end method

.method public showCameraErrorAndFinish()V
    .locals 2

    .prologue
    .line 777
    const-string v0, "CameraApp"

    const-string v1, "Error!!! showCameraErrorAndFinish"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    if-nez v0, :cond_1

    .line 779
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "showCameraErrorAndFinish : mediator is null!!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    :goto_0
    return-void

    .line 782
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->resetScreenTimeout()V

    .line 783
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->setErrorOccuredAndFinish(Z)V

    .line 784
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getDialogController()Lcom/lge/camera/controller/DialogController;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/DialogController;->showDialogPopup(I)V

    goto :goto_0
.end method

.method public showCameraLoadingView()V
    .locals 2

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v1, Lcom/lge/camera/controller/PreviewController$9;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/PreviewController$9;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1161
    return-void
.end method

.method public showCameraStoppedAndFinish()V
    .locals 2

    .prologue
    .line 788
    const-string v0, "CameraApp"

    const-string v1, "Error!!! showCameraStoppedAndFinish"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    if-nez v0, :cond_1

    .line 790
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "showCameraStoppedAndFinish : mediator is null!!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :goto_0
    return-void

    .line 793
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->resetScreenTimeout()V

    .line 794
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->setErrorOccuredAndFinish(Z)V

    .line 795
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getDialogController()Lcom/lge/camera/controller/DialogController;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/DialogController;->showDialogPopup(I)V

    goto :goto_0
.end method

.method public startLiveEffectMessageRotation(I)V
    .locals 3
    .parameter "degree"

    .prologue
    const v2, 0x7f090071

    .line 1989
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    if-nez v1, :cond_1

    .line 2003
    :cond_0
    :goto_0
    return-void

    .line 1993
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1997
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 1998
    .local v0, rl:Lcom/lge/camera/components/RotateLayout;
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->hidePopupAnimation(I)V

    .line 1999
    invoke-virtual {v0, p1}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 2000
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateLayout;->requestLayout()V

    .line 2001
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateLayout;->invalidate()V

    .line 2002
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->showPopupAnimation(I)V

    goto :goto_0
.end method

.method public startPreview()V
    .locals 2

    .prologue
    .line 167
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/PreviewController;->startPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 168
    return-void
.end method

.method public declared-synchronized startPreview(Landroid/hardware/Camera$Parameters;Z)V
    .locals 11
    .parameter "parameter"
    .parameter "useCallback"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 171
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->readEffectType()I

    move-result v8

    iput v8, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    .line 172
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->readEffectParameter()Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    .line 173
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startPreview()-start mStartPreviewOnGoing="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",mEffectType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",mEffectParameter="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v8}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->isFinishing()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 177
    :cond_0
    const-string v6, "CameraApp"

    const-string v7, "startPreview()- ongoing finish"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    :goto_0
    monitor-exit p0

    return-void

    .line 181
    :cond_1
    :try_start_1
    iget-boolean v8, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    if-eqz v8, :cond_2

    .line 182
    const-string v6, "CameraApp"

    const-string v7, "startPreview()- ongoing return"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 186
    :cond_2
    const/4 v8, 0x1

    :try_start_2
    iput-boolean v8, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    .line 189
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startPreview(): parameter = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", useCallback = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v8}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v8

    if-ne v8, v7, :cond_3

    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v8}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v8

    if-nez v8, :cond_3

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetFunctionFrontCameraBeautyShot()I

    move-result v8

    if-ne v8, v7, :cond_3

    .line 195
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v9}, Lcom/lge/camera/Mediator;->getFaceBeauty()Lcom/lge/olaworks/library/FaceBeauty;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lge/camera/Mediator;->swapPreviewEffect(Lcom/lge/olaworks/library/BaseEngine;)V

    .line 198
    :cond_3
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/lge/camera/controller/PreviewController;->isReadyEngineProcessor:Z

    .line 200
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v8}, Lcom/lge/camera/Mediator;->getCameraMode()I

    move-result v8

    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v9}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v9

    if-eq v8, v9, :cond_4

    .line 201
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v8}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v8

    iput v8, p0, Lcom/lge/camera/controller/PreviewController;->mCameraMode:I

    .line 202
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startPreview mCameraMode ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/lge/camera/controller/PreviewController;->mCameraMode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] mMediator.getCameraId() ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v10}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->closeCamera()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    :cond_4
    :try_start_3
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewController;->ensureCameraDevice()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/lge/camera/exception/CameraHardwareException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 222
    :goto_1
    :try_start_4
    iget-boolean v8, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    if-eqz v8, :cond_5

    .line 223
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->stopPreview()V

    .line 226
    :cond_5
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    .line 227
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v8}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v9}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v9

    iget-object v10, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-static {v8, v9, v10}, Lcom/lge/camera/controller/PreviewController;->setCameraDisplayOrientation(Landroid/app/Activity;ILandroid/hardware/Camera;)V

    .line 228
    const/4 v4, 0x0

    .line 231
    .local v4, params:Landroid/hardware/Camera$Parameters;
    if-eqz p1, :cond_8

    .line 232
    move-object v4, p1

    .line 244
    :goto_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isOMAP4Chipset()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 245
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v8

    if-eqz v8, :cond_6

    move v6, v7

    :cond_6
    iput-boolean v6, p0, Lcom/lge/camera/controller/PreviewController;->mIsSensorSupportBackdropper:Z

    .line 248
    :cond_7
    iget-boolean v6, p0, Lcom/lge/camera/controller/PreviewController;->mCameraReleaseOnGoing:Z

    if-eqz v6, :cond_9

    .line 249
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    goto/16 :goto_0

    .line 208
    .end local v4           #params:Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v1

    .line 209
    .local v1, e:Lcom/lge/camera/exception/CameraHardwareException;
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewFail:Z

    .line 210
    new-instance v8, Lcom/lge/camera/controller/PreviewController$1;

    invoke-direct {v8, p0}, Lcom/lge/camera/controller/PreviewController$1;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-virtual {p0, v8}, Lcom/lge/camera/controller/PreviewController;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 216
    const-string v8, "CameraApp"

    const-string v9, "CameraHardwareException : "

    invoke-static {v8, v9, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 217
    .end local v1           #e:Lcom/lge/camera/exception/CameraHardwareException;
    :catch_1
    move-exception v1

    .line 218
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "CameraApp"

    const-string v7, "Exception occured in ensureCameraDevice()"

    invoke-static {v6, v7, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 234
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v4       #params:Landroid/hardware/Camera$Parameters;
    :cond_8
    :try_start_5
    iget-object v8, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v8}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v4

    goto :goto_2

    .line 236
    :catch_2
    move-exception v1

    .line 237
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_6
    const-string v6, "CameraApp"

    const-string v7, "startPreview getParameters Exception"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 239
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    goto/16 :goto_0

    .line 254
    .end local v1           #e:Ljava/lang/Exception;
    :cond_9
    invoke-static {}, Lcom/lge/camera/util/Common;->isScreenLocked()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 255
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startpreview return, isScreenLock="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/lge/camera/util/Common;->isScreenLocked()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",mPreviewing="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",mStartPreviewOnGoing="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    .line 257
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/lge/camera/controller/PreviewController;->mLockScreenPreventPreview:Z

    .line 258
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v6

    const-string v7, "com.lge.camera.command.StartPreview"

    const/16 v8, 0xc8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 262
    :cond_a
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v6

    const-string v8, "com.lge.camera.command.setting.ApplyAllSettings"

    invoke-virtual {v6, v8, v4}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 263
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/lge/camera/Mediator;->enableInput(Z)V

    .line 265
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v6

    if-ne v6, v7, :cond_c

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-nez v6, :cond_c

    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/util/CameraHolder;->getOneShotSetPreviewNull()Ljava/util/concurrent/CountDownLatch;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 268
    const-string v6, "CameraApp"

    const-string v8, "startpreview create effectrecorder"

    invoke-static {v6, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-instance v6, Lcom/lge/camera/EffectsRecorder;

    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v8}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/lge/camera/EffectsRecorder;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    .line 271
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/util/CameraHolder;->getOneShotSetPreviewNull()Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    .line 272
    .local v3, oneShotSetPreviewNull:Ljava/util/concurrent/CountDownLatch;
    if-eqz v3, :cond_b

    .line 273
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 275
    :cond_b
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/util/CameraHolder;->setOneShotSetPreviewNull()V

    .line 278
    .end local v3           #oneShotSetPreviewNull:Ljava/util/concurrent/CountDownLatch;
    :cond_c
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->isCafSupported()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 279
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v6

    if-ne v6, v7, :cond_16

    .line 280
    const-string v6, "continuous-video"

    invoke-virtual {v4, v6}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 284
    :goto_3
    const-string v6, "CameraApp"

    const-string v8, "###setFocusMode-conti"

    invoke-static {v6, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_d
    :goto_4
    const-string v6, "lge-camera"

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 296
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v6

    const-string v8, "key_camera_shot_mode"

    invoke-virtual {v6, v8}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 297
    .local v5, shotMode:Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isZslSupported()Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v6

    if-nez v6, :cond_e

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v6

    const/16 v8, 0x15

    if-eq v6, v8, :cond_e

    .line 299
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v6

    const-string v8, "key_scene_mode"

    invoke-virtual {v6, v8}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, currentSceneMode:Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->isTimeMachineModeOn()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 303
    const-string v6, "CameraApp"

    const-string v8, "#### Set ZSL on if camera shot mode is Time machine."

    invoke-static {v6, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v6, "zsl"

    const-string v8, "on"

    invoke-virtual {v4, v6, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .end local v0           #currentSceneMode:Ljava/lang/String;
    :cond_e
    :goto_5
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v6

    if-ne v6, v7, :cond_f

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isVideoStabilizationSupported()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 322
    const-string v6, "CameraApp"

    const-string v7, "param set video-stabilization true"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v6, "video-stabilization"

    const-string v7, "true"

    invoke-virtual {v4, v6, v7}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 327
    :cond_f
    :try_start_7
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 328
    const/4 v6, 0x0

    sput-boolean v6, Lcom/lge/camera/properties/ProjectVariables;->bEnterSetting:Z

    .line 329
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bEnterSetting =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/lge/camera/properties/ProjectVariables;->bEnterSetting:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 335
    :goto_6
    :try_start_8
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v6}, Lcom/lge/camera/controller/PreviewController;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 337
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v6, :cond_10

    .line 338
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mErrorCallback:Lcom/lge/camera/exception/CameraErrorCallback;

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 340
    :cond_10
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/lge/camera/controller/PreviewController;->mBeginStartPreview:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 343
    :try_start_9
    const-string v6, "CameraApp"

    const-string v7, "##### TIME_CHECK startPreview-start"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v6, :cond_13

    .line 345
    if-eqz p2, :cond_11

    .line 346
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mOneShotPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 349
    :cond_11
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewLatch:Ljava/util/concurrent/CountDownLatch;

    .line 350
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->startPreview()V

    .line 351
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getPreviewMode()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_12

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->effectsActive()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 352
    const-string v6, "CameraApp"

    const-string v7, "Call startPreviewEffect in startPreview() "

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->startPreviewEffect()V

    .line 355
    :cond_12
    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/PreviewController;->setPreviewMode(I)V

    .line 357
    new-instance v6, Lcom/lge/camera/controller/PreviewController$2;

    invoke-direct {v6, p0}, Lcom/lge/camera/controller/PreviewController$2;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/PreviewController;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    .line 376
    :cond_13
    :try_start_a
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isOnPreviewFrameSupported()Z

    move-result v6

    if-nez v6, :cond_14

    .line 377
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    .line 380
    :cond_14
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/lge/camera/controller/PreviewController;->mBeginStartPreview:Z

    .line 381
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    .line 383
    if-nez p2, :cond_15

    .line 384
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewCallbackRunnable:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 387
    :cond_15
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/lge/camera/Mediator;->checkHideLoadingScreen(Z)V

    .line 388
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startPreview()-end mStartPreviewOnGoing ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 282
    .end local v5           #shotMode:Ljava/lang/String;
    :cond_16
    const-string v6, "continuous-picture"

    invoke-virtual {v4, v6}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 286
    :cond_17
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isNVIDIAChipset()Z

    move-result v6

    if-nez v6, :cond_d

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isOMAP4Chipset()Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v6

    if-ne v6, v7, :cond_d

    .line 289
    const-string v6, "infinity"

    invoke-virtual {v4, v6}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 290
    const-string v6, "CameraApp"

    const-string v8, "###setFocusMode-infinity"

    invoke-static {v6, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 305
    .restart local v0       #currentSceneMode:Ljava/lang/String;
    .restart local v5       #shotMode:Ljava/lang/String;
    :cond_18
    const-string v6, "shotmode_hdr"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    const-string v6, "shotmode_continuous"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    const-string v6, "shotmode_panorama"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 308
    :cond_19
    const-string v6, "CameraApp"

    const-string v8, "#### Set ZSL off if camera shot mode is HDR, CONTINUOUS or PANORAMA."

    invoke-static {v6, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v6, "zsl"

    const-string v8, "off"

    invoke-virtual {v4, v6, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 310
    :cond_1a
    const-string v6, "shotmode_normal"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const-string v6, "Smart shutter"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->isTimeMachineModeOn()Z

    move-result v6

    if-nez v6, :cond_1b

    .line 313
    const-string v6, "CameraApp"

    const-string v8, "#### Set ZSL off if camera shot mode is normal and scene mode is smart shutter."

    invoke-static {v6, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v6, "zsl"

    const-string v8, "off"

    invoke-virtual {v4, v6, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 316
    :cond_1b
    const-string v6, "CameraApp"

    const-string v8, "#### param set zsl on"

    invoke-static {v6, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v6, "zsl"

    const-string v8, "on"

    invoke-virtual {v4, v6, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 330
    .end local v0           #currentSceneMode:Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 331
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v6, "CameraApp"

    const-string v7, "startPreview setParameters Exception"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 364
    .end local v1           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 365
    .local v2, ex:Ljava/lang/Throwable;
    const-string v6, "CameraApp"

    const-string v7, "startPreview failed : "

    invoke-static {v6, v7, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 366
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->closeCamera()V

    .line 367
    new-instance v6, Lcom/lge/camera/controller/PreviewController$3;

    invoke-direct {v6, p0}, Lcom/lge/camera/controller/PreviewController$3;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/PreviewController;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0
.end method

.method public startPreviewEffect()V
    .locals 3

    .prologue
    .line 1835
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 1848
    :cond_0
    :goto_0
    return-void

    .line 1838
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1839
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->readEffectType()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    .line 1840
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->readEffectParameter()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    .line 1842
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->enableInput(Z)V

    .line 1844
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPreviewEffect() mEffectType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewController;->initializeEffectsPreview()V

    .line 1846
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/lge/camera/EffectsRecorder;->startPreview()V

    goto :goto_0
.end method

.method public startRecordingEffect()V
    .locals 6

    .prologue
    .line 1879
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v3, :cond_1

    .line 1900
    :cond_0
    :goto_0
    return-void

    .line 1882
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->effectsActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1883
    const/4 v0, 0x1

    .line 1884
    .local v0, beUnmute:Z
    const/4 v1, 0x0

    .line 1885
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    .line 1886
    .local v2, prefGroup:Lcom/lge/camera/setting/PreferenceGroup;
    if-eqz v2, :cond_2

    .line 1887
    const-string v3, "key_video_audio_recording"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 1890
    :cond_2
    if-eqz v1, :cond_3

    .line 1891
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "unmute"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1892
    const/4 v0, 0x1

    .line 1897
    :cond_3
    :goto_1
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startRecordingEffect() unmute?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1898
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v3, v0}, Lcom/lge/camera/EffectsRecorder;->startRecording(Z)V

    goto :goto_0

    .line 1894
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public declared-synchronized stopPreview()V
    .locals 10

    .prologue
    const/16 v9, 0x15

    const/4 v8, 0x1

    .line 579
    monitor-enter p0

    :try_start_0
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StopPreview()-start, mPreviewing="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/mBeginStartPreview="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/lge/camera/controller/PreviewController;->mBeginStartPreview:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/lge/camera/controller/PreviewController;->mBeginStartPreview:Z

    if-nez v5, :cond_6

    .line 583
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v5

    if-ne v5, v8, :cond_5

    .line 584
    const/4 v1, 0x0

    .line 585
    .local v1, bWait:Z
    const/4 v0, 0x0

    .line 586
    .local v0, bChangeParameters:Z
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 588
    .local v4, params:Landroid/hardware/Camera$Parameters;
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isOMAP4Chipset()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v5

    if-ne v5, v9, :cond_1

    .line 589
    :cond_0
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v6, "key_flash"

    invoke-virtual {v5, v6}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 591
    .local v3, flashSetting:Ljava/lang/String;
    const-string v5, "torch"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 592
    const-string v5, "off"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 593
    const/4 v1, 0x1

    .line 594
    const/4 v0, 0x1

    .line 597
    .end local v3           #flashSetting:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isZslSupported()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v5

    if-eq v5, v9, :cond_2

    .line 599
    const-string v5, "CameraApp"

    const-string v6, "#### param set zsl off"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v5, "zsl"

    const-string v6, "off"

    invoke-virtual {v4, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const/4 v0, 0x1

    .line 603
    :cond_2
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v5

    if-ne v5, v8, :cond_3

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isVideoStabilizationSupported()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 604
    const-string v5, "CameraApp"

    const-string v6, "param set video-stabilization false"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v5, "video-stabilization"

    const-string v6, "false"

    invoke-virtual {v4, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    :cond_3
    if-eqz v0, :cond_4

    .line 610
    :try_start_1
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v5, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 616
    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    :try_start_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isOMAP4Chipset()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-eqz v5, :cond_5

    .line 618
    const-wide/16 v5, 0x190

    :try_start_3
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 625
    .end local v0           #bChangeParameters:Z
    .end local v1           #bWait:Z
    .end local v4           #params:Landroid/hardware/Camera$Parameters;
    :cond_5
    :goto_1
    :try_start_4
    const-string v5, "CameraApp"

    const-string v6, "### mCameraDevice.stopPreview()"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->stopPreview()V

    .line 627
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 628
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 630
    :cond_6
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    .line 631
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/lge/camera/controller/PreviewController;->mBeginStartPreview:Z

    .line 632
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    .line 633
    const-string v5, "CameraApp"

    const-string v6, "stopPreview()-end"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 634
    monitor-exit p0

    return-void

    .line 611
    .restart local v0       #bChangeParameters:Z
    .restart local v1       #bWait:Z
    .restart local v4       #params:Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v2

    .line 612
    .local v2, e:Ljava/lang/Exception;
    :try_start_5
    const-string v5, "CameraApp"

    const-string v6, "Warn: mCameraDevice.setParameters() : "

    invoke-static {v5, v6, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 579
    .end local v0           #bChangeParameters:Z
    .end local v1           #bWait:Z
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #params:Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 619
    .restart local v0       #bChangeParameters:Z
    .restart local v1       #bWait:Z
    .restart local v4       #params:Landroid/hardware/Camera$Parameters;
    :catch_1
    move-exception v2

    .line 620
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public stopPreviewEffect()V
    .locals 2

    .prologue
    .line 1851
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-eqz v0, :cond_0

    .line 1852
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/lge/camera/EffectsRecorder;->stopPreview(I)V

    .line 1853
    const-string v0, "CameraApp"

    const-string v1, "stopPreviewEffect"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    :cond_0
    return-void
.end method

.method public stopRecordingEffect()V
    .locals 2

    .prologue
    .line 1905
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1906
    const-string v0, "CameraApp"

    const-string v1, "stopRecordingEffect"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/controller/PreviewController;->tryCnt:I

    .line 1908
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/camera/controller/PreviewController$13;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/PreviewController$13;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mStopRecordingEffectThread:Ljava/lang/Thread;

    .line 1930
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mStopRecordingEffectThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1932
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 9
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 433
    const-string v1, "Unknown"

    .line 434
    .local v1, mode:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getApplicationModeString()Ljava/lang/String;

    move-result-object v1

    .line 437
    :cond_0
    const-string v4, "CameraApp"

    const-string v5, "#### surfaceChanged %dx%d, mode:%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iput p3, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceWidth:I

    .line 439
    iput p4, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHeight:I

    .line 441
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v4

    if-nez v4, :cond_2

    .line 442
    const-string v4, "CameraApp"

    const-string v5, "surfaceChanged return"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v4, "CameraApp"

    const-string v5, "holder.getSurface() == null"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :cond_1
    :goto_0
    return-void

    .line 447
    :cond_2
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 448
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 449
    :cond_3
    const-string v4, "CameraApp"

    const-string v5, "surfaceChanged return"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v4, "CameraApp"

    const-string v5, "mCameraDevice:%s pausing:%b finishing:%b"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v8}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->isFinishing()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :cond_4
    const-string v4, "CameraApp"

    const-string v5, "mPreviewing:%b holder.isCreating():%b mStartPreviewOnGoing:%b"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-boolean v8, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :try_start_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 461
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PreviewController;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 463
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->effectsActive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 464
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 465
    const-string v4, "CameraApp"

    const-string v5, "Call startPreviewEffect in surfaceChanged "

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v4

    const-string v5, "key_preview_size_on_device"

    invoke-virtual {v4, v5}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    .line 467
    .local v3, videoSizePref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v3, :cond_6

    .line 468
    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    .line 469
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backup previousResolution:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v4, "CameraApp"

    const-string v5, "set to live effect limit"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/SettingController;->setLiveeffectLimit()Ljava/lang/String;

    .line 477
    .end local v3           #videoSizePref:Lcom/lge/camera/setting/ListPreference;
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->startPreviewEffect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "CameraApp"

    const-string v5, "surfaceChanged Exception:"

    invoke-static {v4, v5, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 538
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->stopPreview()V

    .line 539
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->startPreview()V

    .line 540
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v5, "com.lge.camera.command.DisplayPreview"

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 474
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #videoSizePref:Lcom/lge/camera/setting/ListPreference;
    :cond_6
    :try_start_1
    const-string v4, "CameraApp"

    const-string v5, "videoSizePref is null"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 483
    .end local v3           #videoSizePref:Lcom/lge/camera/setting/ListPreference;
    :cond_7
    iget-boolean v4, p0, Lcom/lge/camera/controller/PreviewController;->mLockScreenPreventPreview:Z

    if-nez v4, :cond_11

    .line 484
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f

    .line 485
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v4, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    .line 486
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v4, Lcom/lge/camera/CamcorderMediator;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/lge/camera/CamcorderMediator;->setVideoState(I)V

    .line 487
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v4, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/camcorder/RecordingController;->stopRecordingByPausing()V

    .line 520
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->readEffectType()I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    .line 521
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->readEffectParameter()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    .line 523
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->effectsActive()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 524
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Call startPreviewEffect in surfaceChanged mEffectType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->startPreviewEffect()V

    goto/16 :goto_0

    .line 491
    :cond_9
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v4, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_a

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v4, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    .line 493
    :cond_a
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->isAttachIntent()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->isMMSIntent()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 494
    :cond_b
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/lge/camera/Mediator;->setVideoStateOnly(I)V

    .line 495
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v5, "com.lge.camera.command.DisplayCamcorderPostview"

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 497
    :cond_c
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v5, "key_video_auto_review"

    invoke-virtual {v4, v5}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "off"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 498
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/Common;->getLastVideoUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 499
    .local v2, strUri:Ljava/lang/String;
    if-eqz v2, :cond_d

    .line 501
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v4

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/lge/camera/controller/PreviewPanelController;->setLastThumb(Landroid/net/Uri;Z)V

    .line 503
    :cond_d
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v5, "com.lge.camera.command.OnDelayOff"

    invoke-virtual {v4, v5}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 505
    .end local v2           #strUri:Ljava/lang/String;
    :cond_e
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/lge/camera/Mediator;->setVideoStateOnly(I)V

    .line 506
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v5, "com.lge.camera.command.DisplayCamcorderPostview"

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 513
    :cond_f
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v4, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/camera/PanoramaController;->isPanoramaStarted()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 514
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v4, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/camera/PanoramaController;->stopPanorama()V

    .line 515
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v4, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getSoundController()Lcom/lge/camera/controller/SoundController;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/lge/camera/controller/SoundController;->playRecordingSound(Z)V

    goto/16 :goto_0

    .line 527
    :cond_10
    const-string v4, "CameraApp"

    const-string v5, "Call startPreview in surfaceChanged "

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->startPreview()V

    goto/16 :goto_0

    .line 532
    :cond_11
    const-string v4, "CameraApp"

    const-string v5, "lockScreen:%b"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/lge/camera/controller/PreviewController;->mLockScreenPreventPreview:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v4, "CameraApp"

    const-string v5, "Not start preview in surfaceChanged()"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5
    .parameter "holder"

    .prologue
    .line 545
    const-string v0, "Unknown"

    .line 546
    .local v0, mode:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationModeString()Ljava/lang/String;

    move-result-object v0

    .line 549
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "#### surfaceCreated, mode:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 5
    .parameter "holder"

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->stopPreview()V

    .line 554
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 555
    const-string v0, "Unknown"

    .line 556
    .local v0, mode:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 557
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationModeString()Ljava/lang/String;

    move-result-object v0

    .line 559
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "##### surfaceDestroyed, mode:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method public updateEffectSelection()Z
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1502
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsLiveEffectSupported()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1503
    const-string v4, "CameraApp"

    const-string v5, "Dont support liveeffect"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    :goto_0
    return v6

    .line 1507
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v4, :cond_4

    .line 1508
    :cond_1
    const-string v7, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateEffectSelection() return:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v8}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->isFinishing()Z

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-nez v4, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v8, :cond_3

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v4, v6

    goto :goto_1

    :cond_3
    move v5, v6

    goto :goto_2

    .line 1515
    :cond_4
    const-string v7, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateEffectSelection() previous:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    if-nez v4, :cond_6

    const-string v4, "null"

    :goto_3
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mLiveEffectInformationMessage:Landroid/view/View;

    if-nez v4, :cond_5

    .line 1519
    const v4, 0x7f090070

    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/PreviewController;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mLiveEffectInformationMessage:Landroid/view/View;

    .line 1521
    :cond_5
    iget v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    iput v4, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    .line 1522
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    iput-object v4, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectParameter:Ljava/lang/Object;

    .line 1524
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->readEffectType()I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    .line 1525
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->readEffectParameter()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    .line 1526
    const-string v7, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateEffectSelection() current:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    if-nez v4, :cond_7

    const-string v4, "null"

    :goto_4
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    iget v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    iget v7, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    if-ne v4, v7, :cond_a

    .line 1530
    iget v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    if-nez v4, :cond_8

    .line 1531
    const-string v4, "CameraApp"

    const-string v5, "mEffectType is none"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1515
    :cond_6
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 1526
    :cond_7
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 1534
    :cond_8
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    if-nez v4, :cond_9

    .line 1535
    const-string v4, "CameraApp"

    const-string v5, "effectparameter is null"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1539
    :cond_9
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectParameter:Ljava/lang/Object;

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    const-string v7, "gallery"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1542
    const-string v4, "CameraApp"

    const-string v5, "effectparameter is same"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1547
    :cond_a
    iget v4, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    if-nez v4, :cond_b

    .line 1548
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v4

    const-string v7, "key_preview_size_on_device"

    invoke-virtual {v4, v7}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 1549
    .local v2, videoSizePref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_e

    .line 1550
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    .line 1551
    const-string v4, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "backup previous resolution:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    .end local v2           #videoSizePref:Lcom/lge/camera/setting/ListPreference;
    :cond_b
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4, v6}, Lcom/lge/camera/Mediator;->enableInput(Z)V

    .line 1561
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v4

    invoke-virtual {v4, v6, v6}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuEnabled(ZZ)V

    .line 1562
    iget v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    if-nez v4, :cond_f

    .line 1563
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 1564
    const-string v4, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set previous resolution :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v4

    const-string v6, "key_preview_size_on_device"

    invoke-virtual {v4, v6, v5}, Lcom/lge/camera/setting/SettingMenu;->setAllChidMenuEnabled(Ljava/lang/String;Z)V

    .line 1567
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v4

    const-string v6, "key_preview_size_on_device"

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v5}, Lcom/lge/camera/setting/SettingMenu;->setSelectedChild(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1571
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v4

    const-string v6, "key_preview_size_on_device"

    invoke-virtual {v4, v6}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v3

    .line 1572
    .local v3, videoSizePrefIndex:I
    const/4 v4, 0x5

    if-lt v3, v4, :cond_c

    .line 1573
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v4

    const-string v6, "key_preview_size_on_device"

    invoke-virtual {v4, v6, v5}, Lcom/lge/camera/setting/SettingMenu;->setEnabled(Ljava/lang/String;Z)V

    .line 1575
    :cond_c
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/lge/camera/controller/PreviewController;->setLimitationToLiveeffect(Z)V

    .line 1578
    .end local v3           #videoSizePrefIndex:I
    :cond_d
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    const/16 v6, 0x64

    invoke-virtual {v4, v6}, Lcom/lge/camera/EffectsRecorder;->stopPreview(I)V

    move v6, v5

    .line 1579
    goto/16 :goto_0

    .line 1554
    .restart local v2       #videoSizePref:Lcom/lge/camera/setting/ListPreference;
    :cond_e
    const-string v4, "CameraApp"

    const-string v6, "videoSizePref is null"

    invoke-static {v4, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v5

    .line 1555
    goto/16 :goto_0

    .line 1581
    .end local v2           #videoSizePref:Lcom/lge/camera/setting/ListPreference;
    :cond_f
    const-string v4, "CameraApp"

    const-string v7, "set to live effect limit"

    invoke-static {v4, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/SettingController;->setLiveeffectLimit()Ljava/lang/String;

    .line 1584
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v1

    .line 1585
    .local v1, previewSizeOnScreen:[I
    aget v4, v1, v6

    aget v6, v1, v5

    invoke-virtual {p0, v4, v6}, Lcom/lge/camera/controller/PreviewController;->changePreviewModeOnUiThread(II)V

    .line 1587
    iget v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    if-ne v4, v9, :cond_10

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v6, "gallery"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1591
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1592
    .local v0, i:Landroid/content/Intent;
    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "video/*"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1594
    const-string v4, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1595
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0, v9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1597
    iput-boolean v5, p0, Lcom/lge/camera/controller/PreviewController;->isGoingGalleryLiveEffect:Z

    move v6, v5

    .line 1598
    goto/16 :goto_0

    .line 1601
    .end local v0           #i:Landroid/content/Intent;
    :cond_10
    iget v4, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    if-eqz v4, :cond_11

    iget v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    if-nez v4, :cond_12

    .line 1604
    :cond_11
    const-string v4, "CameraApp"

    const-string v6, "#### mCameraDevice.stopPreview"

    invoke-static {v4, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->stopPreview()V

    .line 1606
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewController;->checkQualityAndStartPreview()V

    :goto_5
    move v6, v5

    .line 1613
    goto/16 :goto_0

    .line 1609
    :cond_12
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget v6, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lcom/lge/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    .line 1610
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4, v5}, Lcom/lge/camera/Mediator;->enableInput(Z)V

    .line 1611
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->refresh(Z)V

    goto :goto_5
.end method

.method public waitForPreviewStarted()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 152
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v2, :cond_0

    .line 154
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0xbb8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 162
    :cond_0
    :goto_0
    return v1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public waitStartPreviewThreadDone()V
    .locals 4

    .prologue
    .line 1044
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->isErrorOccuredAndFinish()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1045
    const-string v2, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "We don\'t wait this case that mErrorOccuredAndFinish is true, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1047
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1049
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    .line 1059
    :cond_1
    :goto_1
    return-void

    .line 1045
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1051
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1052
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 1053
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1056
    :catch_0
    move-exception v0

    .line 1057
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "CameraApp"

    const-string v2, "Failed to join startPreview thread!"

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public waitStopRecordingEffectThreadDone()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1936
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mStopRecordingEffectThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mStopRecordingEffectThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1937
    const-string v1, "CameraApp"

    const-string v2, "Wait for stop effectRecording done.."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mStopRecordingEffectThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 1939
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mStopRecordingEffectThread:Ljava/lang/Thread;

    .line 1940
    const-string v1, "CameraApp"

    const-string v2, "Stop effectRecording done.."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1946
    :cond_0
    :goto_0
    return-void

    .line 1942
    :catch_0
    move-exception v0

    .line 1943
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "CameraApp"

    const-string v2, "Failed to join stop recording thread!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
