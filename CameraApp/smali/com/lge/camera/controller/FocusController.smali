.class public abstract Lcom/lge/camera/controller/FocusController;
.super Lcom/lge/camera/controller/Controller;
.source "FocusController.java"


# static fields
.field public static final FOCUS_POSITION_DEFAULT:I = 0x0

.field public static final FOCUS_POSITION_SET:I = 0x1


# instance fields
.field private contishotFocus:Ljava/lang/Runnable;

.field protected mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field protected mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

.field protected mContinuousFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field mFailShowFocusBeforeInit:Z

.field public mFocusAreaHeight:I

.field public mFocusAreaLeftmargin:I

.field public mFocusAreaWidth:I

.field protected mFocusPosition:I

.field protected mFocusState:I


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 1
    .parameter "mediator"

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/Mediator;)V

    .line 20
    iput v0, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    .line 24
    iput-boolean v0, p0, Lcom/lge/camera/controller/FocusController;->mFailShowFocusBeforeInit:Z

    .line 28
    iput v0, p0, Lcom/lge/camera/controller/FocusController;->mFocusPosition:I

    .line 30
    iput v0, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaWidth:I

    .line 31
    iput v0, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaHeight:I

    .line 32
    iput v0, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftmargin:I

    .line 95
    new-instance v0, Lcom/lge/camera/controller/FocusController$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/FocusController$1;-><init>(Lcom/lge/camera/controller/FocusController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/FocusController;->contishotFocus:Ljava/lang/Runnable;

    .line 38
    return-void
.end method


# virtual methods
.method public checkFocusResigerCallBack()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 337
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    if-nez v2, :cond_0

    .line 338
    const-string v2, "CameraApp"

    const-string v3, "mediator is null, return"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :goto_0
    return v1

    .line 342
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v2

    if-nez v2, :cond_1

    .line 343
    const-string v2, "CameraApp"

    const-string v3, "previewcontroller is null, return"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    const-string v3, "RuntimeException : "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 347
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-nez v2, :cond_3

    .line 349
    :cond_2
    const-string v2, "CameraApp"

    const-string v3, "device or parameter is null, return"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 356
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public clearFocusState()V
    .locals 0

    .prologue
    .line 367
    return-void
.end method

.method public abstract doFocus(Z)V
.end method

.method public getFocusState()I
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isFixedFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x4

    .line 129
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    goto :goto_0
.end method

.method public hideFocus()Z
    .locals 3

    .prologue
    const v2, 0x7f090050

    .line 190
    const-string v0, "CameraApp"

    const-string v1, "hideFocus-init"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 193
    const-string v0, "CameraApp"

    const-string v1, "mInit is false, return"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/4 v0, 0x0

    .line 208
    :goto_0
    return v0

    .line 197
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "hideFocus-gone"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/CameraFocusView;->setVisibility(I)V

    .line 203
    :goto_1
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/FocusController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 204
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/FocusController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 201
    :cond_1
    const-string v0, "CameraApp"

    const-string v1, "mCameraFocusView is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 206
    :cond_2
    const-string v0, "CameraApp"

    const-string v1, "findViewById(R.id.focus) is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public initController()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 41
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FocusController init-start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const v0, 0x7f090067

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/FocusController;->inflateStub(I)Landroid/view/View;

    .line 45
    const v0, 0x7f090053

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/FocusController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    const v0, 0x7f090051

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/FocusController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/CameraFocusView;

    iput-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    .line 49
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isFixedFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-static {v3, v3}, Lcom/lge/camera/properties/ProjectVariables;->isCafAnimationSupported(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/CameraFocusView;->setVisibility(I)V

    .line 56
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "visible? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v2}, Lcom/lge/camera/components/CameraFocusView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/CameraFocusView;->initialize(I)V

    .line 58
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0, v4}, Lcom/lge/camera/components/CameraFocusView;->setMode(I)V

    .line 59
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0, v4}, Lcom/lge/camera/components/CameraFocusView;->setState(I)V

    .line 60
    iput-boolean v3, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 63
    const-string v0, "CameraApp"

    const-string v1, "FocusController init-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-boolean v0, p0, Lcom/lge/camera/controller/FocusController;->mFailShowFocusBeforeInit:Z

    if-eqz v0, :cond_3

    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_focus"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "face_tracking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 68
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->showFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 70
    const-string v0, "CameraApp"

    const-string v1, "### showFocus & register "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->registerCallback()V

    .line 75
    :cond_2
    iput-boolean v4, p0, Lcom/lge/camera/controller/FocusController;->mFailShowFocusBeforeInit:Z

    .line 78
    :cond_3
    return-void
.end method

.method public isFocusViewVisible()Z
    .locals 2

    .prologue
    const v1, 0x7f090050

    .line 181
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/FocusController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/FocusController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraFocusView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 184
    const/4 v0, 0x1

    .line 186
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerCallback()V
    .locals 5

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->checkFocusResigerCallBack()Z

    move-result v2

    if-nez v2, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->beSupportCafCallbackFromSensor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 288
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, focusMode:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 291
    const-string v2, "continuous-video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "continuous-picture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    :cond_2
    const-string v2, "CameraApp"

    const-string v3, "### CameraDevice().autoFocus(callback) - for registerCallback caf"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/FocusController;->mContinuousFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    .end local v1           #focusMode:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 303
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v2, "CameraApp"

    const-string v3, "Continuous focus not supported!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0
.end method

.method public setClearFocusAnimation()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraFocusView;->setClearFocusAnimation()V

    .line 363
    :cond_0
    return-void
.end method

.method public setFocusAreadWindow(III)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "leftMargin"

    .prologue
    .line 82
    iput p1, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaWidth:I

    .line 83
    iput p2, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaHeight:I

    .line 84
    iput p3, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftmargin:I

    .line 86
    return-void
.end method

.method public setFocusRectangleInitialize()V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method public setFocusState(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 108
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.ReleaseTouchFocus"

    const-wide/16 v2, 0x514

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 111
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->contishotFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->contishotFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 113
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraFocusView;->getRectangle()Lcom/lge/camera/components/FocusRectangle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraFocusView;->getRectangle()Lcom/lge/camera/components/FocusRectangle;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/FocusRectangle;->setState(I)V

    .line 115
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraFocusView;->getRectangle()Lcom/lge/camera/components/FocusRectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/components/FocusRectangle;->invalidate()V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->contishotFocus:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/Mediator;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 122
    :goto_0
    iput p1, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    .line 123
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->contishotFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->contishotFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setFocusView(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/CameraFocusView;->setState(I)V

    goto :goto_0
.end method

.method public showFocus()Z
    .locals 5

    .prologue
    const v4, 0x7f090050

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 134
    const-string v2, "CameraApp"

    const-string v3, "showFocus"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isFixedFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    const-string v1, "CameraApp"

    const-string v2, "showFocus, return: is fixed focus"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_0
    return v0

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 142
    const-string v1, "CameraApp"

    const-string v2, "showFocus, return: VIDEO_STATE_RECORDING"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-ne v2, v1, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/lge/camera/properties/ProjectVariables;->isCafAnimationSupported(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 147
    const-string v1, "CameraApp"

    const-string v2, "showFocus, return: mode is camcorder"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/SettingController;->isNullSettingView()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/SettingController;->isSettingViewRemoving()Z

    move-result v2

    if-nez v2, :cond_3

    .line 152
    const-string v1, "CameraApp"

    const-string v2, "settingview is not null && is not Removing"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_3
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_4

    .line 157
    const-string v2, "CameraApp"

    const-string v3, "mInit is false, return"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iput-boolean v1, p0, Lcom/lge/camera/controller/FocusController;->mFailShowFocusBeforeInit:Z

    goto :goto_0

    .line 162
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraMode()I

    move-result v2

    if-ne v2, v1, :cond_5

    .line 163
    const-string v1, "CameraApp"

    const-string v2, "front camera, return"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_5
    const-string v2, "CameraApp"

    const-string v3, "showFocus - visible"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    if-eqz v2, :cond_6

    .line 168
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v2, v0}, Lcom/lge/camera/components/CameraFocusView;->setVisibility(I)V

    .line 172
    :goto_1
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/FocusController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 173
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/FocusController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    move v0, v1

    .line 177
    goto/16 :goto_0

    .line 170
    :cond_6
    const-string v2, "CameraApp"

    const-string v3, "mCameraFocusView is null"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 175
    :cond_7
    const-string v0, "CameraApp"

    const-string v2, "findViewById(R.id.focus) is null"

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public startFocusByTouchPress(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 365
    return-void
.end method

.method public unregisterCallback()V
    .locals 5

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->checkFocusResigerCallBack()Z

    move-result v2

    if-nez v2, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->beSupportCafCallbackFromSensor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, focusMode:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 322
    const-string v2, "continuous-video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "continuous-picture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    :cond_2
    const-string v2, "CameraApp"

    const-string v3, "### CameraDevice().autoFocus(null) - for unRegisterCallback caf"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 330
    .end local v1           #focusMode:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 331
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v2, "CameraApp"

    const-string v3, "Continuous focus not supported!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0
.end method

.method public updateFocusIndicator()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 212
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFocusIndicator() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-ne v0, v4, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v0

    invoke-static {v4, v0}, Lcom/lge/camera/properties/ProjectVariables;->isCafAnimationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    if-eqz v0, :cond_0

    .line 224
    iget v0, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    packed-switch v0, :pswitch_data_0

    .line 272
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong focus state!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/CameraFocusView;->setState(I)V

    goto :goto_0

    .line 230
    :pswitch_1
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/CameraFocusView;->setState(I)V

    goto :goto_0

    .line 234
    :pswitch_2
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/CameraFocusView;->setState(I)V

    goto :goto_0

    .line 238
    :pswitch_3
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/CameraFocusView;->setMode(I)V

    .line 239
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0, v4}, Lcom/lge/camera/components/CameraFocusView;->setState(I)V

    goto :goto_0

    .line 243
    :pswitch_4
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/CameraFocusView;->setState(I)V

    goto :goto_0

    .line 246
    :pswitch_5
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/CameraFocusView;->setMode(I)V

    .line 247
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0, v5}, Lcom/lge/camera/components/CameraFocusView;->setState(I)V

    goto :goto_0

    .line 251
    :pswitch_6
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0, v4}, Lcom/lge/camera/components/CameraFocusView;->setMode(I)V

    .line 252
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0, v4}, Lcom/lge/camera/components/CameraFocusView;->setState(I)V

    goto :goto_0

    .line 256
    :pswitch_7
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0, v4}, Lcom/lge/camera/components/CameraFocusView;->setMode(I)V

    .line 257
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0, v5}, Lcom/lge/camera/components/CameraFocusView;->setState(I)V

    goto :goto_0

    .line 261
    :pswitch_8
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/CameraFocusView;->setMode(I)V

    .line 262
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/CameraFocusView;->setState(I)V

    goto :goto_0

    .line 266
    :pswitch_9
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/CameraFocusView;->setMode(I)V

    .line 267
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/CameraFocusView;->setState(I)V

    goto/16 :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_1
        :pswitch_9
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
