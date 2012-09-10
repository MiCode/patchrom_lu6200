.class public Lcom/lge/camera/listeners/CameraAutoFocusCallback;
.super Ljava/lang/Object;
.source "CameraAutoFocusCallback.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# instance fields
.field private mMediator:Lcom/lge/camera/CameraMediator;


# direct methods
.method public constructor <init>(Lcom/lge/camera/CameraMediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    .line 22
    return-void
.end method

.method private checkFlashModeOff()Z
    .locals 3

    .prologue
    .line 136
    iget-object v1, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v2, "key_flash"

    invoke-virtual {v1, v2}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, currentSetting:Ljava/lang/String;
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "not found"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private doFocusing(ZLcom/lge/camera/controller/camera/CameraFocusController;)V
    .locals 8
    .parameter "focused"
    .parameter "focusController"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 92
    iget-object v6, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->getFocusMode()Ljava/lang/String;

    move-result-object v6

    const-string v7, "face_tracking"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 93
    .local v0, isFaceTracking:Z
    iget-object v6, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->isCafSupported()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/camera/CameraFocusController;->getBlockingFaceTrFocusing()Z

    move-result v6

    if-eqz v6, :cond_1

    move v1, v4

    .line 96
    .local v1, isFocusCAFandBlockFaceTracking:Z
    :goto_0
    if-eqz p1, :cond_4

    .line 97
    const-string v3, "CameraApp"

    const-string v5, "FOCUS_SUCCESS"

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v3, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/camera/TimerController;->isTimerShotCountdown()Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    iget-object v3, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getSoundController()Lcom/lge/camera/controller/SoundController;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/lge/camera/controller/SoundController;->playAFSound(Z)V

    .line 102
    :cond_0
    if-eqz v1, :cond_2

    .line 103
    invoke-virtual {p2, v2}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusState(I)V

    .line 120
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camera/CameraFocusController;->updateFocusIndicator()V

    .line 121
    return-void

    .end local v1           #isFocusCAFandBlockFaceTracking:Z
    :cond_1
    move v1, v5

    .line 93
    goto :goto_0

    .line 105
    .restart local v1       #isFocusCAFandBlockFaceTracking:Z
    :cond_2
    if-eqz v0, :cond_3

    const/4 v2, 0x6

    :cond_3
    invoke-virtual {p2, v2}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusState(I)V

    goto :goto_1

    .line 108
    :cond_4
    const-string v2, "CameraApp"

    const-string v4, "FOCUS_FAIL"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camera/TimerController;->isTimerShotCountdown()Z

    move-result v2

    if-nez v2, :cond_5

    .line 111
    iget-object v2, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getSoundController()Lcom/lge/camera/controller/SoundController;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/lge/camera/controller/SoundController;->playAFSound(Z)V

    .line 113
    :cond_5
    if-eqz v1, :cond_6

    .line 114
    invoke-virtual {p2, v3}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusState(I)V

    goto :goto_1

    .line 116
    :cond_6
    if-eqz v0, :cond_7

    const/4 v2, 0x7

    :goto_2
    invoke-virtual {p2, v2}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusState(I)V

    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_2
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 7
    .parameter "focused"
    .parameter "camera"

    .prologue
    .line 26
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "##### AutoFocusCallback():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v3, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v3

    if-nez v3, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/camera/CameraPreviewController;->isPreviewing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    iget-object v3, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 45
    iget-object v3, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v0

    .line 46
    .local v0, focusController:Lcom/lge/camera/controller/camera/CameraFocusController;
    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v1

    .line 49
    .local v1, focusState:I
    iget-object v3, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v4, "key_camera_shot_mode"

    invoke-virtual {v3, v4}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, shotMode:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->checkFlashModeOff()Z

    move-result v3

    if-nez v3, :cond_3

    .line 51
    const-string v3, "shotmode_normal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "not found"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->isTimeMachineModeOn()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 54
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v4, "key_flash"

    invoke-virtual {v3, v4}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->setFlashMode(Ljava/lang/String;)V

    .line 60
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->isPausing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 69
    const/4 v3, 0x2

    if-ne v1, v3, :cond_9

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->doFocusing(ZLcom/lge/camera/controller/camera/CameraFocusController;)V

    .line 72
    const-string v3, "shotmode_normal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "not found"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->isTimeMachineModeOn()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v4, "key_camera_timer"

    invoke-virtual {v3, v4}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/camera/TimerController;->getTimerCaptureDelay()I

    move-result v3

    if-lez v3, :cond_8

    .line 76
    :cond_5
    iget-object v3, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v4, "com.lge.camera.command.DoCapture"

    const-wide/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v6}, Lcom/lge/camera/CameraMediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 87
    :cond_6
    :goto_2
    const-string v3, "CameraApp"

    const-string v4, "AutoFocusCallback ------------------"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFocusState ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 56
    :cond_7
    const-string v3, "off"

    invoke-virtual {p0, v3}, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->setFlashMode(Ljava/lang/String;)V

    goto :goto_1

    .line 78
    :cond_8
    iget-object v3, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v4, "com.lge.camera.command.DoCapture"

    invoke-virtual {v3, v4}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;)V

    goto :goto_2

    .line 80
    :cond_9
    const/4 v3, 0x1

    if-eq v1, v3, :cond_a

    const/4 v3, 0x5

    if-ne v1, v3, :cond_b

    .line 81
    :cond_a
    invoke-direct {p0, p1, v0}, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->doFocusing(ZLcom/lge/camera/controller/camera/CameraFocusController;)V

    goto :goto_2

    .line 82
    :cond_b
    if-nez v1, :cond_6

    .line 84
    iget-object v3, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/camera/CameraFocusController;->updateFocusIndicator()V

    goto :goto_2
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .locals 5
    .parameter "value"

    .prologue
    .line 124
    iget-object v2, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 126
    .local v1, parameters:Landroid/hardware/Camera$Parameters;
    const-string v2, "flash-mode"

    invoke-virtual {v1, v2, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v1           #parameters:Landroid/hardware/Camera$Parameters;
    :cond_0
    :goto_0
    return-void

    .line 129
    .restart local v1       #parameters:Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v0

    .line 130
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
.end method
