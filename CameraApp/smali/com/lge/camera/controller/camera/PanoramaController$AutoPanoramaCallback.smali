.class Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Lcom/lge/olaworks/library/AutoPanorama$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/camera/PanoramaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoPanoramaCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camera/PanoramaController;


# direct methods
.method private constructor <init>(Lcom/lge/camera/controller/camera/PanoramaController;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/camera/controller/camera/PanoramaController;Lcom/lge/camera/controller/camera/PanoramaController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;-><init>(Lcom/lge/camera/controller/camera/PanoramaController;)V

    return-void
.end method


# virtual methods
.method public onComplete([B)V
    .locals 3
    .parameter "jpegData"

    .prologue
    const/4 v2, 0x0

    .line 349
    const-string v0, "CameraApp"

    const-string v1, "onComplete jpegData"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #setter for: Lcom/lge/camera/controller/camera/PanoramaController;->mJpegData:[B
    invoke-static {v0, p1}, Lcom/lge/camera/controller/camera/PanoramaController;->access$702(Lcom/lge/camera/controller/camera/PanoramaController;[B)[B

    .line 352
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0, v2}, Lcom/lge/camera/CameraMediator;->setInCaptureProgress(Z)V

    .line 354
    if-eqz p1, :cond_1

    .line 355
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #calls: Lcom/lge/camera/controller/camera/PanoramaController;->onSynthesizeComplete()V
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->access$800(Lcom/lge/camera/controller/camera/PanoramaController;)V

    .line 360
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #setter for: Lcom/lge/camera/controller/camera/PanoramaController;->mSynthesizeInProgress:Z
    invoke-static {v0, v2}, Lcom/lge/camera/controller/camera/PanoramaController;->access$902(Lcom/lge/camera/controller/camera/PanoramaController;Z)Z

    .line 361
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #setter for: Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaStarted:Z
    invoke-static {v0, v2}, Lcom/lge/camera/controller/camera/PanoramaController;->access$1002(Lcom/lge/camera/controller/camera/PanoramaController;Z)Z

    .line 363
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v1, "key_camera_auto_review"

    invoke-virtual {v0, v1}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v2}, Lcom/lge/camera/controller/camera/PanoramaController;->access$1100(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->setShutterButtonImage(ZI)V

    .line 366
    :cond_0
    return-void

    .line 357
    :cond_1
    const-string v0, "CameraApp"

    const-string v1, "jpegData is null -> MSG_GOTO_PREVIEW"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v1, "com.lge.camera.command.DisplayPreview"

    invoke-virtual {v0, v1}, Lcom/lge/camera/CameraMediator;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPanningSpeedWarning(Z)V
    .locals 2
    .parameter "warningFlag"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    new-instance v1, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$1;-><init>(Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;Z)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/CameraMediator;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 414
    :cond_0
    return-void
.end method

.method public onProcessFrame(Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;)V
    .locals 7
    .parameter "info"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 316
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mDirectInit:Z
    invoke-static {v3}, Lcom/lge/camera/controller/camera/PanoramaController;->access$100(Lcom/lge/camera/controller/camera/PanoramaController;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 317
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    iget v4, p1, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->direction:I

    #setter for: Lcom/lge/camera/controller/camera/PanoramaController;->mDirection:I
    invoke-static {v3, v4}, Lcom/lge/camera/controller/camera/PanoramaController;->access$202(Lcom/lge/camera/controller/camera/PanoramaController;I)I

    .line 318
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;
    invoke-static {v3}, Lcom/lge/camera/controller/camera/PanoramaController;->access$300(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/olaworks/library/AutoPanorama;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    iget-object v4, v4, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getOrientationDegree()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lge/olaworks/library/AutoPanorama;->setOrientation(I)V

    .line 319
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    iget-object v4, v4, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getOrientationDegree()I

    move-result v4

    iput v4, v3, Lcom/lge/camera/controller/camera/PanoramaController;->orientation:I

    .line 322
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mDirection:I
    invoke-static {v4}, Lcom/lge/camera/controller/camera/PanoramaController;->access$200(Lcom/lge/camera/controller/camera/PanoramaController;)I

    move-result v4

    invoke-virtual {v3, v4, v5}, Lcom/lge/camera/controller/camera/PanoramaController;->initAutoPanoramaPlayUI(IZ)V

    .line 323
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #setter for: Lcom/lge/camera/controller/camera/PanoramaController;->mInitMainButton:Z
    invoke-static {v3, v5}, Lcom/lge/camera/controller/camera/PanoramaController;->access$402(Lcom/lge/camera/controller/camera/PanoramaController;Z)Z

    .line 331
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    const v4, 0x7f090082

    #calls: Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;
    invoke-static {v3, v4}, Lcom/lge/camera/controller/camera/PanoramaController;->access$500(Lcom/lge/camera/controller/camera/PanoramaController;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/PanoProgressBar;

    .line 332
    .local v2, pb:Lcom/lge/camera/components/PanoProgressBar;
    const/4 v0, 0x0

    .line 333
    .local v0, max:I
    if-eqz v2, :cond_0

    .line 334
    invoke-virtual {v2}, Lcom/lge/camera/components/PanoProgressBar;->getMax()I

    move-result v0

    .line 336
    iget v3, p1, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->status:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 337
    const-wide/high16 v3, 0x3ff0

    iget v5, p1, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->progressNow:I

    int-to-double v5, v5

    mul-double/2addr v3, v5

    int-to-double v5, v0

    mul-double/2addr v3, v5

    iget v5, p1, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->progressMax:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x3fe0

    add-double/2addr v3, v5

    double-to-int v1, v3

    .line 338
    .local v1, now:I
    invoke-virtual {v2, v1}, Lcom/lge/camera/components/PanoProgressBar;->setProgress(I)V

    .line 345
    .end local v1           #now:I
    :cond_0
    :goto_1
    return-void

    .line 325
    .end local v0           #max:I
    .end local v2           #pb:Lcom/lge/camera/components/PanoProgressBar;
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mInitMainButton:Z
    invoke-static {v3}, Lcom/lge/camera/controller/camera/PanoramaController;->access$400(Lcom/lge/camera/controller/camera/PanoramaController;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 326
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    iget-object v3, v3, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->setMainButtonEnable()V

    .line 328
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #setter for: Lcom/lge/camera/controller/camera/PanoramaController;->mInitMainButton:Z
    invoke-static {v3, v6}, Lcom/lge/camera/controller/camera/PanoramaController;->access$402(Lcom/lge/camera/controller/camera/PanoramaController;Z)Z

    goto :goto_0

    .line 339
    .restart local v0       #max:I
    .restart local v2       #pb:Lcom/lge/camera/components/PanoProgressBar;
    :cond_3
    iget v3, p1, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->status:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 340
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #setter for: Lcom/lge/camera/controller/camera/PanoramaController;->mIsReachProgressMax:Z
    invoke-static {v3, v6}, Lcom/lge/camera/controller/camera/PanoramaController;->access$602(Lcom/lge/camera/controller/camera/PanoramaController;Z)Z

    .line 341
    invoke-virtual {v2}, Lcom/lge/camera/components/PanoProgressBar;->getMax()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/PanoProgressBar;->setProgress(I)V

    .line 342
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    iget-object v3, v3, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getSoundController()Lcom/lge/camera/controller/SoundController;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/lge/camera/controller/SoundController;->playRecordingSound(Z)V

    goto :goto_1
.end method

.method public onSynthesisProgressUpdate(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 370
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSynthesisProgressUpdate : progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    if-nez p1, :cond_0

    .line 373
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->stopPanorama()V

    .line 374
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->showProgressDialog()V

    .line 378
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->deleteProgressDialog()V

    goto :goto_0
.end method
