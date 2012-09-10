.class public Lcom/lge/camera/controller/camera/PanoramaController;
.super Lcom/lge/camera/controller/camera/CameraController;
.source "PanoramaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/controller/camera/PanoramaController$1;,
        Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;
    }
.end annotation


# instance fields
.field private mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;

.field mCameraMediator:Lcom/lge/camera/CameraMediator;

.field private mDirectInit:Z

.field private mDirection:I

.field private mGuideView:Lcom/lge/camera/components/CameraPreview;

.field private mHandler:Lcom/lge/camera/util/MainHandler;

.field private mInitMainButton:Z

.field private mIsReachProgressMax:Z

.field private mJpegData:[B

.field private mPanoramaStarted:Z

.field mPanoramaView:Landroid/view/View;

.field private mSynthesizeInProgress:Z

.field orientation:I


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 2
    .parameter "mediator"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/CameraController;-><init>(Lcom/lge/camera/Mediator;)V

    .line 32
    iput-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mHandler:Lcom/lge/camera/util/MainHandler;

    .line 33
    iput-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;

    .line 35
    iput-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mJpegData:[B

    .line 37
    iput-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGuideView:Lcom/lge/camera/components/CameraPreview;

    .line 38
    iput-boolean v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaStarted:Z

    .line 39
    iput-boolean v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mSynthesizeInProgress:Z

    .line 41
    iput-boolean v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mIsReachProgressMax:Z

    .line 276
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mDirection:I

    .line 277
    iput v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->orientation:I

    .line 310
    iput-boolean v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mDirectInit:Z

    .line 311
    iput-boolean v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mInitMainButton:Z

    .line 45
    check-cast p1, Lcom/lge/camera/CameraMediator;

    .end local p1
    iput-object p1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    .line 46
    new-instance v0, Lcom/lge/camera/util/MainHandler;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-direct {v0, v1}, Lcom/lge/camera/util/MainHandler;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mHandler:Lcom/lge/camera/util/MainHandler;

    .line 47
    return-void
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/camera/PanoramaController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mDirectInit:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/lge/camera/controller/camera/PanoramaController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaStarted:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lge/camera/controller/camera/PanoramaController;I)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lge/camera/controller/camera/PanoramaController;I)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/camera/PanoramaController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mDirection:I

    return v0
.end method

.method static synthetic access$202(Lcom/lge/camera/controller/camera/PanoramaController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mDirection:I

    return p1
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/olaworks/library/AutoPanorama;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/camera/PanoramaController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mInitMainButton:Z

    return v0
.end method

.method static synthetic access$402(Lcom/lge/camera/controller/camera/PanoramaController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mInitMainButton:Z

    return p1
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/camera/PanoramaController;I)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$602(Lcom/lge/camera/controller/camera/PanoramaController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mIsReachProgressMax:Z

    return p1
.end method

.method static synthetic access$702(Lcom/lge/camera/controller/camera/PanoramaController;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mJpegData:[B

    return-object p1
.end method

.method static synthetic access$800(Lcom/lge/camera/controller/camera/PanoramaController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/PanoramaController;->onSynthesizeComplete()V

    return-void
.end method

.method static synthetic access$902(Lcom/lge/camera/controller/camera/PanoramaController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mSynthesizeInProgress:Z

    return p1
.end method

.method private onSynthesizeComplete()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 421
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mJpegData:[B

    if-eqz v2, :cond_4

    .line 422
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mJpegData:[B

    invoke-virtual {v2, v3, v6, v4, v4}, Lcom/lge/camera/CameraMediator;->savePicture([BLandroid/graphics/Bitmap;ZI)Z

    move-result v1

    .line 424
    .local v1, ret:Z
    if-nez v1, :cond_1

    .line 425
    const-string v2, "CameraApp"

    const-string v3, "panorama save fail"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camera/CameraPreviewController;->startPreview()V

    .line 427
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v3, "com.lge.camera.command.DisplayPreview"

    invoke-virtual {v2, v3}, Lcom/lge/camera/CameraMediator;->doCommandUi(Ljava/lang/String;)V

    .line 456
    .end local v1           #ret:Z
    :cond_0
    :goto_0
    return-void

    .line 431
    .restart local v1       #ret:Z
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PanoramaController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->isPausing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 432
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v3, "key_camera_auto_review"

    invoke-virtual {v2, v3}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 433
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->setLastThumb(Landroid/net/Uri;Z)V

    .line 434
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v3, "com.lge.camera.command.OnDelayOff"

    invoke-virtual {v2, v3}, Lcom/lge/camera/CameraMediator;->doCommandUi(Ljava/lang/String;)V

    .line 443
    :goto_1
    iput-object v6, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mJpegData:[B

    .line 449
    .end local v1           #ret:Z
    :goto_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isVoiceShutter()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 450
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "key_voiceshutter"

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, mVoiceShutterValue:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 453
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "com.lge.camera.command.SetVoiceShutterMode"

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 436
    .end local v0           #mVoiceShutterValue:Ljava/lang/String;
    .restart local v1       #ret:Z
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->stopPreview()V

    .line 437
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v3, "com.lge.camera.command.DisplayCameraPostview"

    invoke-virtual {v2, v3}, Lcom/lge/camera/CameraMediator;->doCommandUi(Ljava/lang/String;)V

    goto :goto_1

    .line 440
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->setLastThumb(Landroid/net/Uri;Z)V

    .line 441
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->updateThumbnailButton()V

    goto :goto_1

    .line 445
    .end local v1           #ret:Z
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camera/CameraPreviewController;->startPreview()V

    .line 446
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v3, "com.lge.camera.command.DisplayPreview"

    invoke-virtual {v2, v3}, Lcom/lge/camera/CameraMediator;->doCommandUi(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private tryEnable3ALocks(Z)Z
    .locals 3
    .parameter "toggle"

    .prologue
    const/4 v1, 0x0

    .line 257
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getUseAE_AWBLockInPanorama()Z

    move-result v2

    if-nez v2, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v1

    .line 260
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 264
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 266
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 269
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 270
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 271
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public inflatePanoramaView()V
    .locals 6

    .prologue
    .line 50
    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    if-nez v4, :cond_0

    .line 52
    const v4, 0x7f090069

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/camera/PanoramaController;->inflateStub(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    .line 53
    const v4, 0x7f09008d

    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/CameraPreview;

    iput-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGuideView:Lcom/lge/camera/components/CameraPreview;

    .line 54
    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGuideView:Lcom/lge/camera/components/CameraPreview;

    iget-object v5, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v5}, Lcom/lge/camera/CameraMediator;->getOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/lge/camera/components/CameraPreview;->initializePanorama(I)V

    .line 55
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PanoramaController;->removePanoramaView()V

    .line 57
    const v4, 0x7f090082

    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/components/PanoProgressBar;

    .line 58
    .local v3, pb:Lcom/lge/camera/components/PanoProgressBar;
    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a00b1

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    .line 59
    .local v1, bpWidth:I
    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a00b2

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 60
    .local v0, bpHeight:I
    invoke-virtual {v3, v1, v0}, Lcom/lge/camera/components/PanoProgressBar;->initPanoProgressBar(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0           #bpHeight:I
    .end local v1           #bpWidth:I
    .end local v3           #pb:Lcom/lge/camera/components/PanoProgressBar;
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v2

    .line 63
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public initAutoPanoramaPlayUI(IZ)V
    .locals 7
    .parameter "direction"
    .parameter "warning"

    .prologue
    const v6, 0x7f090082

    const/4 v5, 0x4

    const/4 v4, 0x1

    const v3, 0x7f090083

    const v2, 0x7f090081

    .line 279
    if-nez p1, :cond_0

    .line 306
    :goto_0
    return-void

    .line 282
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 305
    :goto_1
    iput-boolean v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mDirectInit:Z

    goto :goto_0

    .line 285
    :pswitch_0
    if-eqz p2, :cond_1

    .line 286
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020173

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 290
    :goto_2
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 291
    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/PanoProgressBar;

    invoke-virtual {v0, v4}, Lcom/lge/camera/components/PanoProgressBar;->setDirection(I)V

    goto :goto_1

    .line 288
    :cond_1
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020170

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 295
    :pswitch_1
    if-eqz p2, :cond_2

    .line 296
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020174

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 299
    :goto_3
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 300
    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/PanoProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/PanoProgressBar;->setDirection(I)V

    goto :goto_1

    .line 298
    :cond_2
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020172

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isPanoramaStarted()Z
    .locals 1

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaStarted:Z

    if-eqz v0, :cond_0

    .line 460
    const/4 v0, 0x1

    .line 462
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanoramaUIShown()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 77
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPanoramaUpdatebutton()Z
    .locals 1

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaStarted:Z

    return v0
.end method

.method public isSynthesisInProgress()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mSynthesizeInProgress:Z

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 520
    iput-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGuideView:Lcom/lge/camera/components/CameraPreview;

    .line 521
    iput-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    .line 522
    invoke-super {p0}, Lcom/lge/camera/controller/camera/CameraController;->onDestroy()V

    .line 523
    return-void
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 480
    const-string v2, "CameraApp"

    const-string v3, "Panorama Controller onPause - start"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_panorama"

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 482
    const-string v2, "CameraApp"

    const-string v3, "Pano Panorama Controller onPause - return"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :goto_0
    return-void

    .line 486
    :cond_0
    iget-boolean v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mSynthesizeInProgress:Z

    .line 488
    .local v1, stopByPausing:Z
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PanoramaController;->stopPanorama()V

    .line 490
    const-string v2, "CameraApp"

    const-string v3, "Wait for synthesis done in pause()"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const/4 v1, 0x0

    .line 493
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/ToastController;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 494
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lge/camera/controller/ToastController;->hide(Z)V

    .line 497
    :cond_1
    const-string v2, "CameraApp"

    const-string v3, "synth done in pause()"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    if-eqz v1, :cond_3

    .line 500
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 501
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/Common;->saveLastPicture(Lcom/lge/camera/Mediator;Landroid/net/Uri;)V

    .line 503
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PanoramaController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    const-string v3, "com.lge.camera.command.DisplayPreview"

    invoke-virtual {v2, v3}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;)V

    .line 505
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    .line 506
    .local v0, engine:Lcom/lge/olaworks/library/EngineProcessor;
    if-eqz v0, :cond_4

    .line 507
    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->releaseAllEngine()V

    .line 510
    :cond_4
    const-string v2, "CameraApp"

    const-string v3, "getImageListUri().clear() call"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 512
    iput-boolean v5, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mSynthesizeInProgress:Z

    .line 513
    iput-boolean v5, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaStarted:Z

    .line 515
    const-string v2, "CameraApp"

    const-string v3, "Panorama Controller onPause -end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 470
    const-string v0, "CameraApp"

    const-string v1, "Panorama Controller onResume !"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    :goto_0
    return-void

    .line 475
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PanoramaController;->showPanoramaView()V

    .line 476
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PanoramaController;->setEngine()V

    goto :goto_0
.end method

.method public removePanoramaView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 129
    const-string v0, "CameraApp"

    const-string v1, "removePanoramaView"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    const v0, 0x7f090082

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGuideView:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraPreview;->getDrawMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGuideView:Lcom/lge/camera/components/CameraPreview;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/CameraPreview;->setDrawMode(I)V

    .line 138
    :cond_0
    return-void
.end method

.method public setEngine()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    new-instance v0, Lcom/lge/olaworks/library/AutoPanorama;

    new-instance v1, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;-><init>(Lcom/lge/camera/controller/camera/PanoramaController;Lcom/lge/camera/controller/camera/PanoramaController$1;)V

    invoke-direct {v0, v1}, Lcom/lge/olaworks/library/AutoPanorama;-><init>(Lcom/lge/olaworks/library/AutoPanorama$Callback;)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;

    .line 73
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lge/olaworks/library/EngineProcessor;->setEngine(Lcom/lge/olaworks/library/BaseEngine;Z)Lcom/lge/olaworks/library/BaseEngine;

    goto :goto_0
.end method

.method public showPanoramaView()V
    .locals 9

    .prologue
    const v8, 0x7f090083

    const v7, 0x7f090082

    const v6, 0x7f090081

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 87
    const-string v1, "CameraApp"

    const-string v2, "showPanoramaView"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_panorama"

    invoke-virtual {v1, v2, v3}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getSubMenuMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    if-nez v1, :cond_2

    .line 98
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PanoramaController;->inflatePanoramaView()V

    .line 101
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PanoramaController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    const-string v2, "com.lge.camera.command.Rotate"

    invoke-virtual {v1, v2}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->setSwitcherVisible(Z)V

    .line 104
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->setMainButtonVisible(Z)V

    .line 105
    const v1, 0x7f090093

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ShutterButton;

    .line 106
    .local v0, mShutterButton:Lcom/lge/camera/components/ShutterButton;
    if-eqz v0, :cond_3

    .line 107
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lge/camera/components/ShutterButton;->isEnabled()Z

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->setShutterButtonImage(ZI)V

    .line 110
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 114
    invoke-virtual {p0, v7}, Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/PanoProgressBar;

    invoke-virtual {v1, v4}, Lcom/lge/camera/components/PanoProgressBar;->setProgress(I)V

    .line 115
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGuideView:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v1}, Lcom/lge/camera/components/CameraPreview;->resetAutoPanorama()V

    .line 117
    const v1, 0x7f090084

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 118
    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 119
    invoke-virtual {p0, v8}, Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 120
    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f02016f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    invoke-virtual {p0, v8}, Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020171

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    invoke-virtual {p0, v7}, Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGuideView:Lcom/lge/camera/components/CameraPreview;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/CameraPreview;->setDrawMode(I)V

    goto/16 :goto_0
.end method

.method public startPanorama()V
    .locals 8

    .prologue
    const v7, 0x7f090084

    const v6, 0x7f090052

    const/4 v3, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 141
    const-string v1, "CameraApp"

    const-string v2, "startPanorama()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iput-boolean v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaStarted:Z

    .line 143
    iput-boolean v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mSynthesizeInProgress:Z

    .line 145
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getQuickFunctionController()Lcom/lge/camera/controller/camera/CameraQuickFunctionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/CameraQuickFunctionController;->hide()V

    .line 146
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->setSwitcherVisible(Z)V

    .line 147
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->setThumbnailButtonVisibility(I)V

    .line 149
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    .line 151
    .local v0, engine:Lcom/lge/olaworks/library/EngineProcessor;
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getUseAE_AWBLockInPanorama()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_panorama"

    invoke-virtual {v1, v2, v3}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const-string v1, "CameraApp"

    const-string v2, "### awb/ae lock"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-direct {p0, v4}, Lcom/lge/camera/controller/camera/PanoramaController;->tryEnable3ALocks(Z)Z

    .line 157
    :cond_0
    if-eqz v0, :cond_1

    .line 158
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMediator.getEngineProcessor().checkEngineTag(Panorama.TAG) ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Panorama"

    invoke-virtual {v0, v3}, Lcom/lge/olaworks/library/EngineProcessor;->checkEngineTag(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getSoundController()Lcom/lge/camera/controller/SoundController;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/lge/camera/controller/SoundController;->playRecordingSound(Z)V

    .line 162
    const-string v1, "AutoPanorama"

    invoke-virtual {v0, v1}, Lcom/lge/olaworks/library/EngineProcessor;->checkEngineTag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->start()V

    .line 164
    const-string v1, "CameraApp"

    const-string v2, "startPanorama() start AutoPanorama Engine..............."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_1
    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 169
    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 171
    :cond_2
    invoke-virtual {p0, v7}, Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 172
    invoke-virtual {p0, v7}, Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 175
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mHandler:Lcom/lge/camera/util/MainHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Lcom/lge/camera/util/MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 176
    return-void
.end method

.method public stopPanorama()V
    .locals 11

    .prologue
    const v10, 0x7f090083

    const v9, 0x7f090081

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 179
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopPanorama() isPanoramaStarted() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PanoramaController;->isPanoramaStarted()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PanoramaController;->isPanoramaStarted()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 181
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mSynthesizeInProgress:Z

    .line 182
    iput-boolean v7, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaStarted:Z

    .line 184
    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->setMainButtonDisable()V

    .line 185
    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/camera/CameraFocusController;->clearFocusState()V

    .line 186
    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/camera/CameraFocusController;->hideFocus()Z

    .line 188
    invoke-virtual {p0, v9}, Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f02016f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 189
    invoke-virtual {p0, v10}, Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f020171

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    invoke-virtual {p0, v9}, Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 191
    invoke-virtual {p0, v10}, Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 193
    const v4, 0x7f090084

    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iput-boolean v7, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mDirectInit:Z

    .line 197
    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    .line 199
    .local v0, engine:Lcom/lge/olaworks/library/EngineProcessor;
    if-eqz v0, :cond_0

    .line 200
    const-string v4, "AutoPanorama"

    invoke-virtual {v0, v4}, Lcom/lge/olaworks/library/EngineProcessor;->checkEngineTag(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 201
    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->stop()V

    .line 202
    const-string v4, "CameraApp"

    const-string v5, "stopPanorama : engineProcessor Stop"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 207
    :try_start_0
    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGuideView:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v4}, Lcom/lge/camera/components/CameraPreview;->resetAutoPanorama()V

    .line 210
    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGuideView:Lcom/lge/camera/components/CameraPreview;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/lge/camera/components/CameraPreview;->setDrawMode(I)V

    .line 211
    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGuideView:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v4}, Lcom/lge/camera/components/CameraPreview;->stopPanoramaDrawing()V

    .line 212
    const v4, 0x7f090082

    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/components/PanoProgressBar;

    .line 213
    .local v3, pb:Lcom/lge/camera/components/PanoProgressBar;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/PanoProgressBar;->setProgress(I)V

    .line 214
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/PanoProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v3           #pb:Lcom/lge/camera/components/PanoProgressBar;
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mIsReachProgressMax:Z

    if-nez v4, :cond_5

    .line 222
    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;

    invoke-virtual {v4}, Lcom/lge/olaworks/library/AutoPanorama;->stopProcess()I

    .line 228
    :goto_1
    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4, v7}, Lcom/lge/camera/CameraMediator;->setInCaptureProgress(Z)V

    .line 229
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isB2Model()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 230
    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/module/Module;->doAfterCapture()V

    .line 233
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getUseAE_AWBLockInPanorama()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v5, "key_camera_shot_mode"

    const-string v6, "shotmode_panorama"

    invoke-virtual {v4, v5, v6}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 236
    const-string v4, "CameraApp"

    const-string v5, "### awb/ae unlock"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-direct {p0, v7}, Lcom/lge/camera/controller/camera/PanoramaController;->tryEnable3ALocks(Z)Z

    .line 239
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PanoramaController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getApplicationMode()I

    move-result v4

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PanoramaController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/CameraMediator;->getCameraId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/lge/camera/properties/ProjectVariables;->isCafSupported(II)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v5, "key_camera_shot_mode"

    const-string v6, "shotmode_panorama"

    invoke-virtual {v4, v5, v6}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 242
    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 243
    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 244
    .local v2, parameters:Landroid/hardware/Camera$Parameters;
    const-string v4, "continuous-picture"

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 245
    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 246
    const-string v4, "CameraApp"

    const-string v5, "###setFocusMode-conti"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .end local v0           #engine:Lcom/lge/olaworks/library/EngineProcessor;
    .end local v2           #parameters:Landroid/hardware/Camera$Parameters;
    :cond_4
    :goto_2
    return-void

    .line 216
    .restart local v0       #engine:Lcom/lge/olaworks/library/EngineProcessor;
    :catch_0
    move-exception v1

    .line 217
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception occur during remove the panorama view : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 224
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_5
    iput-boolean v7, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mIsReachProgressMax:Z

    goto/16 :goto_1

    .line 251
    .end local v0           #engine:Lcom/lge/olaworks/library/EngineProcessor;
    :cond_6
    const-string v4, "CameraApp"

    const-string v5, "stopPanorama() do nothing; not started"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
