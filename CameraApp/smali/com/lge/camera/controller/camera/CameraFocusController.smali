.class public Lcom/lge/camera/controller/camera/CameraFocusController;
.super Lcom/lge/camera/controller/FocusController;
.source "CameraFocusController.java"


# instance fields
.field protected mBlockingFaceTrFocusing:Z

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusRect:Landroid/graphics/Rect;

.field private mShutterButtonClicked:Z

.field private mTouchedAFbyFaceTr:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/CameraMediator;)V
    .locals 1
    .parameter "mediator"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/FocusController;-><init>(Lcom/lge/camera/Mediator;)V

    .line 30
    iput-boolean v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mTouchedAFbyFaceTr:Z

    .line 31
    iput-boolean v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mShutterButtonClicked:Z

    .line 32
    iput-boolean v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mBlockingFaceTrFocusing:Z

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusRect:Landroid/graphics/Rect;

    .line 41
    new-instance v0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;

    invoke-direct {v0, p1}, Lcom/lge/camera/listeners/CameraAutoFocusCallback;-><init>(Lcom/lge/camera/CameraMediator;)V

    iput-object v0, p0, Lcom/lge/camera/controller/FocusController;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 43
    new-instance v0, Lcom/lge/camera/listeners/CameraContinuousFocusCallback;

    invoke-direct {v0, p1}, Lcom/lge/camera/listeners/CameraContinuousFocusCallback;-><init>(Lcom/lge/camera/CameraMediator;)V

    iput-object v0, p0, Lcom/lge/camera/controller/FocusController;->mContinuousFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 44
    return-void
.end method

.method private InitFocusAreas()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 547
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v2

    const/16 v3, 0x15

    if-eq v2, v3, :cond_0

    .line 572
    :goto_0
    return-void

    .line 550
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "InitFocusAreas"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 553
    .local v1, mParameters:Landroid/hardware/Camera$Parameters;
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    if-nez v2, :cond_1

    .line 554
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    .line 555
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    new-instance v3, Landroid/hardware/Camera$Area;

    iget-object v4, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusRect:Landroid/graphics/Rect;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iget-object v2, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 558
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iget-object v2, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 559
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iget-object v2, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 560
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iget-object v2, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 561
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iput v6, v2, Landroid/hardware/Camera$Area;->weight:I

    .line 563
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 564
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 567
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    const-string v3, "RuntimeException:"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private autoFocus()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 215
    const-string v2, "CameraApp"

    const-string v3, "autoFocus()"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    if-nez v2, :cond_0

    .line 226
    const v2, 0x7f090051

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/CameraFocusController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/CameraFocusView;

    iput-object v2, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    .line 227
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getOrientationDegree()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/CameraFocusView;->initialize(I)V

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->showFocus()Z

    .line 231
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->canTakePicture()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 232
    const-string v2, "CameraApp"

    const-string v3, "Start autofocus."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v2}, Lcom/lge/camera/components/CameraFocusView;->getFocusRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 235
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->isCafSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 236
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 237
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "face_tracking"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 238
    iput v5, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    .line 239
    iget-boolean v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mTouchedAFbyFaceTr:Z

    if-nez v2, :cond_1

    .line 240
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/camera/CameraFocusController;->setBlockingFaceTrFocusing(Z)V

    .line 257
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusWindow(Landroid/graphics/Rect;)V

    .line 259
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->updateFocusIndicator()V

    .line 261
    const-string v2, "CameraApp"

    const-string v3, "#### TIME_CHECK call CameraDevice().autoFocus()."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/FocusController;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v1           #rect:Landroid/graphics/Rect;
    :cond_2
    :goto_1
    return-void

    .line 244
    .restart local v1       #rect:Landroid/graphics/Rect;
    :cond_3
    iput v4, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    goto :goto_0

    .line 248
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "face_tracking"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 249
    iput v5, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    goto :goto_0

    .line 252
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 253
    iput v4, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraDevice.autoFocus() RuntimeException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private canTakePicture()Z
    .locals 3

    .prologue
    .line 349
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canTakePicture() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkFocusPosition(II)Z
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 528
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a017e

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    .line 529
    .local v1, width:I
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a017f

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 531
    .local v0, height:I
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->isCafSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v5, "key_focus"

    invoke-virtual {v4, v5}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "face_tracking"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 533
    if-ltz p1, :cond_0

    if-gt p1, v1, :cond_0

    if-ltz p2, :cond_0

    if-le p2, v0, :cond_3

    .line 534
    :cond_0
    const-string v4, "CameraApp"

    const-string v5, "startFocusByTouchPress() return: %d, %d"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    :goto_0
    return v2

    .line 538
    :cond_1
    if-ltz p1, :cond_2

    if-gt p1, v1, :cond_2

    if-ltz p2, :cond_2

    if-le p2, v0, :cond_3

    .line 539
    :cond_2
    const-string v4, "CameraApp"

    const-string v5, "startFocusByTouchPress() return: %dx%d, x:%d, y:%d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v7}, Lcom/lge/camera/components/CameraFocusView;->getWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v7, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v7}, Lcom/lge/camera/components/CameraFocusView;->getHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v8

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v2, v3

    .line 544
    goto :goto_0
.end method

.method private checkStartFocusByTouchPress()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 506
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->isPreviewing()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getApplicationMode()I

    move-result v2

    invoke-static {v2}, Lcom/lge/camera/properties/ProjectVariables;->isTouchAfSupported(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isFixedFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 524
    :cond_0
    :goto_0
    return v0

    .line 512
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 517
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->isCafSupported()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "face_tracking"

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "key_focus"

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 519
    const-string v1, "CameraApp"

    const-string v2, "startFocusByTouchPress() return: CAF not supported, face tracking mode"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 521
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    if-eqz v2, :cond_0

    move v0, v1

    .line 524
    goto :goto_0
.end method

.method private doCancelFocusEndState()V
    .locals 5

    .prologue
    .line 119
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->isCafSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 122
    .local v1, mParameters:Landroid/hardware/Camera$Parameters;
    const-string v2, "CameraApp"

    const-string v3, "##### TIME_CHECK setFocusMode-Conti"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v2, "continuous-picture"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 124
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    .line 127
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v1           #mParameters:Landroid/hardware/Camera$Parameters;
    :cond_0
    :goto_0
    return-void

    .line 128
    .restart local v1       #mParameters:Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setParameters failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v1           #mParameters:Landroid/hardware/Camera$Parameters;
    :cond_1
    const-string v2, "CameraApp"

    const-string v3, "#####  TIME_CHECK call getCameraDevice().cancelAutoFocus()"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->InitFocusAreas()V

    .line 134
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V

    goto :goto_0
.end method

.method private doCancelFocusingState()V
    .locals 4

    .prologue
    .line 140
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->isCafSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->setBlockingFaceTrFocusing(Z)V

    .line 147
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 148
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#####  TIME_CHECK call getCameraDevice().cancelAutoFocus() : others, states = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->InitFocusAreas()V

    .line 150
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusRectangleInitialize()V

    .line 158
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getShutterButtonClicked()Z

    move-result v1

    if-nez v1, :cond_3

    .line 159
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/SettingController;->isVisible()Z

    move-result v1

    if-nez v1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickFunctionController;->show()V

    .line 162
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->clearFocusState()V

    .line 163
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getIndicatorController()Lcom/lge/camera/controller/IndicatorController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/IndicatorController;->show()V

    .line 164
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->showFocus()Z

    .line 167
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/SettingController;->isVisible()Z

    move-result v1

    if-nez v1, :cond_4

    .line 168
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickFunctionController;->refresh()V

    .line 170
    :cond_4
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "cancelAutoFocus Exception:"

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private isCameraIdle()Z
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDelayForNvidia()V
    .locals 3

    .prologue
    .line 493
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v1

    const/16 v2, 0x21

    if-ne v1, v2, :cond_1

    .line 498
    :cond_0
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :cond_1
    :goto_0
    return-void

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public cancelAutoFocus()V
    .locals 3

    .prologue
    .line 95
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---- TIME_CHECK cancelAutoFocus(): mFocusState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget v0, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    packed-switch v0, :pswitch_data_0

    .line 113
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->clearFocusState()V

    .line 116
    :goto_0
    return-void

    .line 99
    :pswitch_0
    const-string v0, "CameraApp"

    const-string v1, "Cancel autofocus : FOCUSING_SNAP_ON_FINISH : break"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :pswitch_1
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->doCancelFocusEndState()V

    .line 109
    :pswitch_2
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->doCancelFocusingState()V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public clearFocusState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 173
    const-string v0, "CameraApp"

    const-string v1, "clearFocusState"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iput v2, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    .line 175
    iput v2, p0, Lcom/lge/camera/controller/FocusController;->mFocusPosition:I

    .line 176
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->updateFocusIndicator()V

    .line 177
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public doFocus(Z)V
    .locals 3
    .parameter "pressed"

    .prologue
    .line 63
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doFocus pressed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    if-eqz p1, :cond_2

    .line 65
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isFixedFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    .line 74
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->autoFocus()V

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->cancelAutoFocus()V

    goto :goto_0
.end method

.method public getBlockingFaceTrFocusing()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mBlockingFaceTrFocusing:Z

    return v0
.end method

.method protected getMediator()Lcom/lge/camera/CameraMediator;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    return-object v0
.end method

.method protected bridge synthetic getMediator()Lcom/lge/camera/Mediator;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v0

    return-object v0
.end method

.method public getShutterButtonClicked()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mShutterButtonClicked:Z

    return v0
.end method

.method public hideFocus()Z
    .locals 3

    .prologue
    .line 438
    const-string v0, "CameraApp"

    const-string v1, "hideFocus"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-super {p0}, Lcom/lge/camera/controller/FocusController;->hideFocus()Z

    .line 441
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getApplicationMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getCameraId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/camera/properties/ProjectVariables;->isCafAnimationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->unregisterCallback()V

    .line 445
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSnapOnFinish()Z
    .locals 2

    .prologue
    .line 575
    iget v0, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchMoveFocusVisibe()Z
    .locals 2

    .prologue
    .line 430
    const v1, 0x7f090090

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 431
    .local v0, v:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 432
    const/4 v1, 0x1

    .line 434
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraFocusView;->unbind()V

    .line 582
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    .line 584
    :cond_0
    invoke-super {p0}, Lcom/lge/camera/controller/FocusController;->onDestroy()V

    .line 585
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Lcom/lge/camera/controller/FocusController;->onPause()V

    .line 54
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->hideFocus()Z

    .line 55
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->setClearFocusAnimation()V

    .line 57
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getApplicationMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getCameraId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/camera/properties/ProjectVariables;->isCafAnimationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->unregisterCallback()V

    .line 60
    :cond_0
    return-void
.end method

.method public setBlockingFaceTrFocusing(Z)V
    .locals 4
    .parameter "beBlocked"

    .prologue
    const/4 v3, 0x0

    .line 193
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->isCafSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    const-string v0, "CameraApp"

    const-string v1, "return: CAF not supported"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_0
    return-void

    .line 198
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### mBlockingFaceTrFocusing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mBlockingFaceTrFocusing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "face_tracking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    iput-boolean p1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mBlockingFaceTrFocusing:Z

    .line 202
    if-eqz p1, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->showFocusVisible()Z

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->hideFocus()Z

    goto :goto_0

    .line 209
    :cond_2
    iput-boolean v3, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mBlockingFaceTrFocusing:Z

    goto :goto_0
.end method

.method public setFocusPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 345
    iput p1, p0, Lcom/lge/camera/controller/FocusController;->mFocusPosition:I

    .line 346
    return-void
.end method

.method public setFocusRectangle(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 87
    return-void
.end method

.method public setFocusRectangle(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "rect"

    .prologue
    .line 91
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusRectangle(IIII)V

    .line 92
    return-void
.end method

.method public setFocusRectangleInitialize()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraFocusView;->setInitializeRect()V

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->clearFocusState()V

    .line 82
    return-void
.end method

.method public setFocusWindow(Landroid/graphics/Rect;)V
    .locals 14
    .parameter "rect"

    .prologue
    const/high16 v13, 0x4000

    const/high16 v12, 0x44fa

    const/4 v11, 0x1

    .line 275
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0a0181

    invoke-static {v8, v9}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    .line 276
    .local v1, RECT_WIDTH:I
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0a0182

    invoke-static {v8, v9}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 278
    .local v0, RECT_HEIGHT:I
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v8}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/camera/controller/PreviewController;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v7

    .line 279
    .local v7, sizeOnScreenString:Ljava/lang/String;
    invoke-static {v7}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v6

    .line 280
    .local v6, previewSizeOnScreen:[I
    if-nez v7, :cond_1

    .line 281
    invoke-super {p0}, Lcom/lge/camera/controller/FocusController;->onResume()V

    .line 282
    const-string v8, "CameraApp"

    const-string v9, "error! sizeOnScreenString is null"

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v8}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 286
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->getApplicationMode()I

    move-result v8

    invoke-static {v8}, Lcom/lge/camera/properties/ProjectVariables;->isTouchAfSupported(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 287
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v8}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 289
    .local v5, parameters:Landroid/hardware/Camera$Parameters;
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    if-nez v8, :cond_2

    .line 290
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    .line 291
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    new-instance v9, Landroid/hardware/Camera$Area;

    iget-object v10, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusRect:Landroid/graphics/Rect;

    invoke-direct {v9, v10, v11}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_2
    const/4 v2, 0x0

    .local v2, center_x:F
    const/4 v3, 0x0

    .line 298
    .local v3, center_y:F
    const/4 v8, 0x0

    :try_start_0
    aget v8, v6, v8

    int-to-float v8, v8

    div-float v2, v8, v13

    .line 299
    const/4 v8, 0x1

    aget v8, v6, v8

    int-to-float v8, v8

    div-float v3, v8, v13

    .line 301
    iget v8, p1, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    sub-float/2addr v8, v2

    mul-float/2addr v8, v12

    const/4 v9, 0x0

    aget v9, v6, v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->left:I

    .line 302
    iget v8, p1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    sub-float/2addr v8, v3

    mul-float/2addr v8, v12

    const/4 v9, 0x1

    aget v9, v6, v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->top:I

    .line 303
    iget v8, p1, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    sub-float/2addr v8, v2

    mul-float/2addr v8, v12

    const/4 v9, 0x0

    aget v9, v6, v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->right:I

    .line 304
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    sub-float/2addr v8, v3

    mul-float/2addr v8, v12

    const/4 v9, 0x1

    aget v9, v6, v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->bottom:I

    .line 309
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v8

    const/16 v9, 0x15

    if-ne v8, v9, :cond_5

    .line 310
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-nez v8, :cond_4

    .line 311
    :cond_3
    mul-int/lit8 v8, v1, -0x1

    div-int/lit8 v8, v8, 0x2

    iput v8, p1, Landroid/graphics/Rect;->left:I

    .line 312
    div-int/lit8 v8, v1, 0x2

    iput v8, p1, Landroid/graphics/Rect;->right:I

    .line 313
    mul-int/lit8 v8, v0, -0x1

    div-int/lit8 v8, v8, 0x2

    iput v8, p1, Landroid/graphics/Rect;->top:I

    .line 314
    div-int/lit8 v8, v0, 0x2

    iput v8, p1, Landroid/graphics/Rect;->bottom:I

    .line 316
    :cond_4
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Area;

    const/4 v9, 0x1

    iput v9, v8, Landroid/hardware/Camera$Area;->weight:I

    .line 319
    :cond_5
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Area;

    iget-object v8, v8, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v9, p1, Landroid/graphics/Rect;->left:I

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 320
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Area;

    iget-object v8, v8, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v9, p1, Landroid/graphics/Rect;->right:I

    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 321
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Area;

    iget-object v8, v8, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v9, p1, Landroid/graphics/Rect;->top:I

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 322
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Area;

    iget-object v8, v8, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 324
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    invoke-virtual {v5, v8}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 325
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    invoke-virtual {v5, v8}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 327
    const-string v8, "auto"

    invoke-virtual {v5, v8}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 328
    const-string v8, "CameraApp"

    const-string v9, "###setFocusMode-auto"

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v8}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 332
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setFocusWindow : left "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " top "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setFocusWindow : right "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bottom "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 334
    :catch_0
    move-exception v4

    .line 335
    .local v4, e:Ljava/lang/Exception;
    const-string v8, "CameraApp"

    const-string v9, "setTouchIndexAf setParameter exception : "

    invoke-static {v8, v9, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 339
    .end local v2           #center_x:F
    .end local v3           #center_y:F
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #parameters:Landroid/hardware/Camera$Parameters;
    :cond_6
    const-string v8, "CameraApp"

    const-string v9, "mCameraDevice is null"

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setShutterButtonClicked(Z)V
    .locals 0
    .parameter "clicked"

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mShutterButtonClicked:Z

    .line 186
    return-void
.end method

.method public showFocus()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 360
    const-string v3, "CameraApp"

    const-string v4, "showFocus"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->isCafSupported()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 363
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "key_focus"

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, focus:Ljava/lang/String;
    const-string v3, "face_tracking"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getBlockingFaceTrFocusing()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v3

    if-nez v3, :cond_2

    .line 367
    iget v3, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    if-nez v3, :cond_1

    .line 368
    const-string v1, "CameraApp"

    const-string v3, "### setBlockingFaceTrFocusing(false)"

    invoke-static {v1, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/CameraFocusController;->setBlockingFaceTrFocusing(Z)V

    .end local v0           #focus:Ljava/lang/String;
    :cond_0
    move v1, v2

    .line 391
    :goto_0
    return v1

    .line 371
    .restart local v0       #focus:Ljava/lang/String;
    :cond_1
    const-string v2, "CameraApp"

    const-string v3, "showFocus "

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v3

    if-nez v3, :cond_0

    .line 376
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "key_camera_shot_mode"

    const-string v5, "shotmode_panorama"

    invoke-virtual {v3, v4, v5}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getApplicationMode()I

    move-result v3

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getCameraId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/lge/camera/properties/ProjectVariables;->isCafAnimationSupported(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 378
    const-string v2, "CameraApp"

    const-string v3, "showFocus & register "

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->registerCallback()V

    goto :goto_0

    .line 385
    .end local v0           #focus:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "key_focus"

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "face_tracking"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v3

    if-nez v3, :cond_0

    .line 387
    invoke-super {p0}, Lcom/lge/camera/controller/FocusController;->showFocus()Z

    goto :goto_0
.end method

.method public showFocusVisible()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 395
    const-string v2, "CameraApp"

    const-string v3, "showFocusVisible"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->isCafSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 398
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "key_focus"

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "face_tracking"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getBlockingFaceTrFocusing()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    if-nez v2, :cond_2

    .line 401
    iget v2, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    if-nez v2, :cond_1

    .line 402
    const-string v0, "CameraApp"

    const-string v2, "### setBlockingFaceTrFocusing(false)"

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->setBlockingFaceTrFocusing(Z)V

    :cond_0
    move v0, v1

    .line 426
    :goto_0
    return v0

    .line 405
    :cond_1
    const-string v1, "CameraApp"

    const-string v2, "showFocus "

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-super {p0}, Lcom/lge/camera/controller/FocusController;->showFocus()Z

    goto :goto_0

    .line 409
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "key_focus"

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "face_tracking"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    if-nez v2, :cond_0

    .line 411
    invoke-super {p0}, Lcom/lge/camera/controller/FocusController;->showFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_panorama"

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getApplicationMode()I

    move-result v2

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getCameraId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/camera/properties/ProjectVariables;->isCafAnimationSupported(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    const-string v1, "CameraApp"

    const-string v2, "showFocus & register "

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->registerCallback()V

    goto :goto_0

    .line 420
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "key_focus"

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "face_tracking"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    if-nez v2, :cond_0

    .line 422
    invoke-super {p0}, Lcom/lge/camera/controller/FocusController;->showFocus()Z

    goto :goto_0
.end method

.method public startFocusByTouchPress(II)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 463
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->checkStartFocusByTouchPress()Z

    move-result v1

    if-nez v1, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 467
    .local v0, posOnFocusView:[I
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v1, v0}, Lcom/lge/camera/components/CameraFocusView;->getLocationInWindow([I)V

    .line 468
    aget v1, v0, v5

    sub-int/2addr p1, v1

    .line 469
    aget v1, v0, v2

    sub-int/2addr p2, v1

    .line 470
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/camera/CameraFocusController;->checkFocusPosition(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    invoke-super {p0, v5}, Lcom/lge/camera/controller/FocusController;->setFocusState(I)V

    .line 474
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->showFocusVisible()Z

    .line 476
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/camera/CameraFocusController;->doFocus(Z)V

    .line 477
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->setDelayForNvidia()V

    .line 478
    iput v2, p0, Lcom/lge/camera/controller/FocusController;->mFocusPosition:I

    .line 479
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v1, p1, p2}, Lcom/lge/camera/components/CameraFocusView;->setNormalFocusRect(II)V

    .line 480
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/CameraFocusController;->doFocus(Z)V

    .line 482
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------startFocusByTouchPress : x = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", y = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v2, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 484
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v2, "com.lge.camera.command.ReleaseTouchFocus"

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 486
    iput-boolean v5, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mTouchedAFbyFaceTr:Z

    goto :goto_0
.end method

.method public startFocusByTouchPress(IIZ)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "bTouchedAFbyFaceTr"

    .prologue
    .line 457
    iput-boolean p3, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mTouchedAFbyFaceTr:Z

    .line 458
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/controller/camera/CameraFocusController;->startFocusByTouchPress(II)V

    .line 459
    return-void
.end method

.method public startRotation(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 449
    const v0, 0x7f090051

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/CameraFocusView;

    iput-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    .line 450
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/CameraFocusView;->startRotation(I)V

    .line 453
    :cond_0
    return-void
.end method
