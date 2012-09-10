.class public Lcom/lge/camera/command/setting/SetCameraShotMode;
.super Lcom/lge/camera/command/setting/CameraSettingCommand;
.source "SetCameraShotMode.java"


# instance fields
.field private isNormalShot:Z

.field mCameraMediator:Lcom/lge/camera/CameraMediator;

.field private mNewPictureSize:Landroid/hardware/Camera$Size;

.field private pictureSizeString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 2
    .parameter "mediator"

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/CameraSettingCommand;-><init>(Lcom/lge/camera/Mediator;)V

    .line 27
    iput-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 29
    iput-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mNewPictureSize:Landroid/hardware/Camera$Size;

    .line 24
    check-cast p1, Lcom/lge/camera/CameraMediator;

    .end local p1
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    .line 25
    return-void
.end method

.method private checkFocusMode(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "parameters"

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v0

    const-string v1, "key_focus"

    invoke-virtual {v0, v1}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v0

    const-string v1, "key_focus"

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/CameraMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 141
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getQuickFunctionController()Lcom/lge/camera/controller/camera/CameraQuickFunctionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraQuickFunctionController;->setMmsLimit()V

    .line 142
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getFacePreviewController()Lcom/lge/camera/controller/camera/FacePreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/FacePreviewController;->stopFaceDetection()V

    .line 143
    const-string v0, "manual-focus"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 145
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    new-instance v1, Lcom/lge/camera/command/setting/SetCameraShotMode$4;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetCameraShotMode$4;-><init>(Lcom/lge/camera/command/setting/SetCameraShotMode;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/CameraMediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 156
    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 10
    .parameter "parameters"
    .parameter "arg"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 37
    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    .line 38
    .local v1, bundle:Landroid/os/Bundle;
    const-string v5, "allSetting"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 40
    .local v0, allSetting:Z
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v5

    const-string v6, "key_camera_shot_mode"

    invoke-virtual {v5, v6}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, shotMode:Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v5}, Lcom/lge/camera/CameraMediator;->getPreviousShotModeString()Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, strPreviousShotMode:Ljava/lang/String;
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SetCameraShotMode-start: currentshotmode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " previousshotmode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iput-object v9, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 45
    iput-object v9, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mNewPictureSize:Landroid/hardware/Camera$Size;

    .line 46
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isTimeMachinShotSupported()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 47
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v6, "key_time_machine"

    invoke-virtual {v5, v6}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, value:Ljava/lang/String;
    const-string v5, "on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 49
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SetCameraShotMode-start: Time machine On:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v2, "shotmode_timemachine"

    .line 54
    .end local v4           #value:Ljava/lang/String;
    :cond_0
    const-string v5, "shotmode_normal"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "not found"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 55
    :cond_1
    invoke-virtual {p0, p1, v0, v3}, Lcom/lge/camera/command/setting/SetCameraShotMode;->executeNormalOrNotFoundShotMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V

    .line 66
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v5}, Lcom/lge/camera/CameraMediator;->getCameraMode()I

    move-result v5

    if-ne v5, v8, :cond_3

    .line 67
    iput-boolean v8, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 70
    :cond_3
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v5}, Lcom/lge/camera/CameraMediator;->isAttachMode()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v5}, Lcom/lge/camera/CameraMediator;->getCameraId()I

    move-result v5

    if-eq v5, v8, :cond_4

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportShotMode()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v5}, Lcom/lge/camera/CameraMediator;->isTimeMachineModeOn()Z

    move-result v5

    if-nez v5, :cond_4

    .line 72
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    new-instance v6, Lcom/lge/camera/command/setting/SetCameraShotMode$1;

    invoke-direct {v6, p0}, Lcom/lge/camera/command/setting/SetCameraShotMode$1;-><init>(Lcom/lge/camera/command/setting/SetCameraShotMode;)V

    invoke-virtual {v5, v6}, Lcom/lge/camera/CameraMediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 80
    :cond_4
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pictureSizeString ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-boolean v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    if-nez v5, :cond_9

    .line 83
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    new-instance v6, Lcom/lge/camera/command/setting/SetCameraShotMode$2;

    invoke-direct {v6, p0}, Lcom/lge/camera/command/setting/SetCameraShotMode$2;-><init>(Lcom/lge/camera/command/setting/SetCameraShotMode;)V

    invoke-virtual {v5, v6}, Lcom/lge/camera/CameraMediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 107
    :goto_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mNewPictureSize:Landroid/hardware/Camera$Size;

    .line 108
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mNewPictureSize:Landroid/hardware/Camera$Size;

    if-nez v5, :cond_a

    .line 109
    const-string v5, "CameraApp"

    const-string v6, "mNewPicture is null"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_2
    return-void

    .line 56
    :cond_5
    const-string v5, "shotmode_continuous"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 57
    invoke-virtual {p0, p1, v0, v3}, Lcom/lge/camera/command/setting/SetCameraShotMode;->executeContinuousShotMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_6
    const-string v5, "shotmode_panorama"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 59
    invoke-virtual {p0, p1, v0, v3}, Lcom/lge/camera/command/setting/SetCameraShotMode;->executePanoramaShotMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 60
    :cond_7
    const-string v5, "shotmode_hdr"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 61
    invoke-virtual {p0, p1, v0, v3}, Lcom/lge/camera/command/setting/SetCameraShotMode;->executeHdrShotMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 62
    :cond_8
    const-string v5, "shotmode_timemachine"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 63
    invoke-virtual {p0, p1, v0, v3}, Lcom/lge/camera/command/setting/SetCameraShotMode;->executeTimemachineShotMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 92
    :cond_9
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    new-instance v6, Lcom/lge/camera/command/setting/SetCameraShotMode$3;

    invoke-direct {v6, p0}, Lcom/lge/camera/command/setting/SetCameraShotMode$3;-><init>(Lcom/lge/camera/command/setting/SetCameraShotMode;)V

    invoke-virtual {v5, v6}, Lcom/lge/camera/CameraMediator;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 114
    :cond_a
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mNewPictureSize:Landroid/hardware/Camera$Size;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v5}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/camera/CameraPreviewController;->effectsActive()Z

    move-result v5

    if-nez v5, :cond_b

    .line 117
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v5

    const/16 v6, 0x15

    if-ne v5, v6, :cond_e

    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v5

    const-string v6, "key_camera_shot_mode"

    invoke-virtual {v5, v6}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "shotmode_continuous"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v5

    const-string v6, "key_camera_shot_mode"

    invoke-virtual {v5, v6}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "shotmode_panorama"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 127
    :cond_b
    :goto_3
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v5}, Lcom/lge/camera/CameraMediator;->isTimeMachineModeOn()Z

    move-result v5

    if-nez v5, :cond_c

    .line 128
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v5, p1, v8}, Lcom/lge/camera/CameraMediator;->setTimeMachineShot(Landroid/hardware/Camera$Parameters;I)V

    .line 131
    :cond_c
    if-nez v0, :cond_d

    .line 132
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v6, "com.lge.camera.command.setting.SetFlashMode"

    invoke-virtual {v5, v6, p1}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v6, "com.lge.camera.command.setting.SetCameraFocusMode"

    invoke-virtual {v5, v6, p1}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    :cond_d
    const-string v5, "CameraApp"

    const-string v6, "SetCameraShotMode-end"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 122
    :cond_e
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mNewPictureSize:Landroid/hardware/Camera$Size;

    iget v5, v5, Landroid/hardware/Camera$Size;->width:I

    iget-object v6, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mNewPictureSize:Landroid/hardware/Camera$Size;

    iget v6, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1, v5, v6}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 123
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPictureSize "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mNewPictureSize:Landroid/hardware/Camera$Size;

    iget v7, v7, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mNewPictureSize:Landroid/hardware/Camera$Size;

    iget v7, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public executeContinuousShotMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V
    .locals 5
    .parameter "parameters"
    .parameter "allSetting"
    .parameter "strPreviousShotMode"

    .prologue
    const/4 v4, 0x0

    .line 202
    const-string v1, "shotmode_hdr"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v2, "com.lge.camera.command.setting.SetNormalizedHDROptions"

    invoke-virtual {v1, v2, p1}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v1

    invoke-virtual {v1, p1, v4}, Lcom/lge/camera/controller/camera/CameraPreviewController;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 206
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v2, "shotmode_hdr"

    invoke-virtual {v1, v2}, Lcom/lge/camera/CameraMediator;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 221
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;

    move-result-object v1

    const-string v2, "key_camera_timer"

    invoke-virtual {v1, v2, v4}, Lcom/lge/camera/setting/CameraSettingMenu;->setEnabled(Ljava/lang/String;Z)V

    .line 222
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;

    move-result-object v1

    const-string v2, "key_camera_shutter_sound"

    invoke-virtual {v1, v2, v4}, Lcom/lge/camera/setting/CameraSettingMenu;->setEnabled(Ljava/lang/String;Z)V

    .line 223
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;

    move-result-object v1

    const-string v2, "key_camera_auto_review"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/lge/camera/setting/CameraSettingMenu;->setEnabled(Ljava/lang/String;Z)V

    .line 225
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v2, "com.lge.camera.command.setting.SetOlaContinuousShot"

    invoke-virtual {v1, v2, p1}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 226
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->checkFocusMode(Landroid/hardware/Camera$Parameters;)V

    .line 227
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    const-string v2, "key_camera_shot_mode"

    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 228
    .local v0, shotModePref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo3()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 231
    :cond_0
    iput-boolean v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 233
    if-eqz p2, :cond_1

    .line 234
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v2, "shotmode_continuous"

    invoke-virtual {v1, v2}, Lcom/lge/camera/CameraMediator;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 236
    :cond_1
    return-void

    .line 207
    .end local v0           #shotModePref:Lcom/lge/camera/setting/ListPreference;
    :cond_2
    const-string v1, "shotmode_timemachine"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 208
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isQCTChipset()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 209
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v1

    invoke-virtual {v1, p1, v4}, Lcom/lge/camera/controller/camera/CameraPreviewController;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 210
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1, p3}, Lcom/lge/camera/CameraMediator;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 215
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/lge/camera/controller/SettingController;->setTimeMachineLimit(Z)V

    goto :goto_0

    .line 212
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v2, "com.lge.camera.command.setting.SetCameraImageSize"

    invoke-virtual {v1, v2, p1}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/CameraPreviewController;->removePreviewCallback()V

    goto :goto_1

    .line 217
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v2, "com.lge.camera.command.setting.SetCameraImageSize"

    invoke-virtual {v1, v2, p1}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/CameraPreviewController;->removePreviewCallback()V

    goto/16 :goto_0
.end method

.method public executeHdrShotMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V
    .locals 6
    .parameter "parameters"
    .parameter "allSetting"
    .parameter "strPreviousShotMode"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 272
    const-string v2, "shotmode_panorama"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "shotmode_continuous"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;

    move-result-object v2

    const-string v3, "key_camera_timer"

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/setting/CameraSettingMenu;->setEnabled(Ljava/lang/String;Z)V

    .line 278
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;

    move-result-object v2

    const-string v3, "key_camera_shutter_sound"

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/setting/CameraSettingMenu;->setEnabled(Ljava/lang/String;Z)V

    .line 279
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;

    move-result-object v2

    const-string v3, "key_camera_auto_review"

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/setting/CameraSettingMenu;->setEnabled(Ljava/lang/String;Z)V

    .line 281
    const-string v2, "key_camera_picturesize"

    invoke-virtual {p0, v2}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getSetting(Ljava/lang/String;)I

    move-result v0

    .line 282
    .local v0, pictureSizeIndex:I
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    const-string v3, "key_camera_picturesize"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 283
    .local v1, pictureSizePref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_1

    .line 284
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 286
    :cond_1
    iput-boolean v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 297
    .end local v0           #pictureSizeIndex:I
    .end local v1           #pictureSizePref:Lcom/lge/camera/setting/ListPreference;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v2

    invoke-virtual {v2, p1, v5}, Lcom/lge/camera/controller/camera/CameraPreviewController;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 302
    const-string v2, "hdr-mode"

    const-string v3, "1"

    invoke-virtual {p1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v3, "com.lge.camera.command.setting.SetOlaHDRShot"

    invoke-virtual {v2, v3, p1}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 305
    return-void

    .line 287
    :cond_3
    const-string v2, "shotmode_timemachine"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 288
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;

    move-result-object v2

    const-string v3, "key_camera_auto_review"

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/setting/CameraSettingMenu;->setEnabled(Ljava/lang/String;Z)V

    .line 289
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isQCTChipset()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 290
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v2

    invoke-virtual {v2, p1, v5}, Lcom/lge/camera/controller/camera/CameraPreviewController;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 291
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2, p3}, Lcom/lge/camera/CameraMediator;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 293
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/lge/camera/controller/SettingController;->setTimeMachineLimit(Z)V

    goto :goto_0
.end method

.method public executeNormalOrNotFoundShotMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V
    .locals 10
    .parameter "parameters"
    .parameter "allSetting"
    .parameter "strPreviousShotMode"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 159
    const-string v6, "shotmode_hdr"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 160
    iget-object v6, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v7, "com.lge.camera.command.setting.SetNormalizedHDROptions"

    invoke-virtual {v6, v7, p1}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    iget-object v6, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v6

    invoke-virtual {v6, p1, v8}, Lcom/lge/camera/controller/camera/CameraPreviewController;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 173
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v7, "com.lge.camera.command.setting.SetOlaNormalShot"

    invoke-virtual {v6, v7, p1}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->getSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;

    move-result-object v6

    const-string v7, "key_camera_timer"

    invoke-virtual {v6, v7, v9}, Lcom/lge/camera/setting/CameraSettingMenu;->setEnabled(Ljava/lang/String;Z)V

    .line 175
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->getSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;

    move-result-object v6

    const-string v7, "key_camera_shutter_sound"

    invoke-virtual {v6, v7, v9}, Lcom/lge/camera/setting/CameraSettingMenu;->setEnabled(Ljava/lang/String;Z)V

    .line 176
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->getSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;

    move-result-object v6

    const-string v7, "key_camera_auto_review"

    invoke-virtual {v6, v7, v9}, Lcom/lge/camera/setting/CameraSettingMenu;->setEnabled(Ljava/lang/String;Z)V

    .line 178
    iget-object v6, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v6

    const-string v7, "key_scene_mode"

    invoke-virtual {v6, v7}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    .line 179
    .local v3, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v3, :cond_1

    .line 180
    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 181
    .local v5, sceneEntryValues:[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 182
    .local v4, sceneEntryValueLength:I
    if-eqz v5, :cond_1

    .line 183
    array-length v4, v5

    .line 184
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_1

    .line 185
    aget-object v6, v5, v0

    const-string v7, "Smart shutter"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 186
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->getSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;

    move-result-object v6

    const-string v7, "key_scene_mode"

    const-string v8, "Smart shutter"

    invoke-virtual {v6, v7, v8, v9}, Lcom/lge/camera/setting/CameraSettingMenu;->setEnabled(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 193
    .end local v0           #i:I
    .end local v4           #sceneEntryValueLength:I
    .end local v5           #sceneEntryValues:[Ljava/lang/CharSequence;
    :cond_1
    const-string v6, "key_camera_picturesize"

    invoke-virtual {p0, v6}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getSetting(Ljava/lang/String;)I

    move-result v1

    .line 194
    .local v1, pictureSizeIndex:I
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v6

    const-string v7, "key_camera_picturesize"

    invoke-virtual {v6, v7}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 195
    .local v2, pictureSizePref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_2

    .line 196
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 198
    :cond_2
    iput-boolean v9, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 199
    return-void

    .line 162
    .end local v1           #pictureSizeIndex:I
    .end local v2           #pictureSizePref:Lcom/lge/camera/setting/ListPreference;
    .end local v3           #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_3
    const-string v6, "shotmode_timemachine"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 163
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isQCTChipset()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 164
    iget-object v6, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v6

    invoke-virtual {v6, p1, v8}, Lcom/lge/camera/controller/camera/CameraPreviewController;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 166
    :cond_4
    iget-object v6, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/lge/camera/controller/SettingController;->setTimeMachineLimit(Z)V

    goto/16 :goto_0

    .line 168
    :cond_5
    if-nez p2, :cond_0

    .line 169
    iget-object v6, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v7, "com.lge.camera.command.setting.SetCameraImageSize"

    invoke-virtual {v6, v7, p1}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 184
    .restart local v0       #i:I
    .restart local v3       #pref:Lcom/lge/camera/setting/ListPreference;
    .restart local v4       #sceneEntryValueLength:I
    .restart local v5       #sceneEntryValues:[Ljava/lang/CharSequence;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public executePanoramaShotMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V
    .locals 5
    .parameter "parameters"
    .parameter "allSetting"
    .parameter "strPreviousShotMode"

    .prologue
    const/4 v4, 0x0

    .line 239
    const-string v1, "shotmode_hdr"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 241
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v2, "com.lge.camera.command.setting.SetNormalizedHDROptions"

    invoke-virtual {v1, v2, p1}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v1

    invoke-virtual {v1, p1, v4}, Lcom/lge/camera/controller/camera/CameraPreviewController;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 243
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v2, "shotmode_hdr"

    invoke-virtual {v1, v2}, Lcom/lge/camera/CameraMediator;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 254
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;

    move-result-object v1

    const-string v2, "key_camera_timer"

    invoke-virtual {v1, v2, v4}, Lcom/lge/camera/setting/CameraSettingMenu;->setEnabled(Ljava/lang/String;Z)V

    .line 255
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;

    move-result-object v1

    const-string v2, "key_camera_shutter_sound"

    invoke-virtual {v1, v2, v4}, Lcom/lge/camera/setting/CameraSettingMenu;->setEnabled(Ljava/lang/String;Z)V

    .line 256
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;

    move-result-object v1

    const-string v2, "key_camera_auto_review"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/lge/camera/setting/CameraSettingMenu;->setEnabled(Ljava/lang/String;Z)V

    .line 258
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v2, "com.lge.camera.command.setting.SetOlaPanoramaShot"

    invoke-virtual {v1, v2, p1}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 259
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->checkFocusMode(Landroid/hardware/Camera$Parameters;)V

    .line 260
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    const-string v2, "key_camera_shot_mode"

    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 261
    .local v0, shotModePref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo3()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 264
    :cond_0
    iput-boolean v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 266
    if-eqz p2, :cond_1

    .line 267
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v2, "shotmode_panorama"

    invoke-virtual {v1, v2}, Lcom/lge/camera/CameraMediator;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 269
    :cond_1
    return-void

    .line 244
    .end local v0           #shotModePref:Lcom/lge/camera/setting/ListPreference;
    :cond_2
    const-string v1, "shotmode_timemachine"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 245
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isQCTChipset()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 246
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v1

    invoke-virtual {v1, p1, v4}, Lcom/lge/camera/controller/camera/CameraPreviewController;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 247
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1, p3}, Lcom/lge/camera/CameraMediator;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 249
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/lge/camera/controller/SettingController;->setTimeMachineLimit(Z)V

    goto :goto_0

    .line 251
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v2, "com.lge.camera.command.setting.SetCameraImageSize"

    invoke-virtual {v1, v2, p1}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public executeTimemachineShotMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V
    .locals 7
    .parameter "parameters"
    .parameter "allSetting"
    .parameter "strPreviousShotMode"

    .prologue
    const/16 v0, 0x7d0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 308
    const-string v3, "shotmode_hdr"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 310
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v4, "com.lge.camera.command.setting.SetNormalizedHDROptions"

    invoke-virtual {v3, v4, p1}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 311
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v3

    invoke-virtual {v3, p1, v5}, Lcom/lge/camera/controller/camera/CameraPreviewController;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 312
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v4, "shotmode_hdr"

    invoke-virtual {v3, v4}, Lcom/lge/camera/CameraMediator;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 317
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/lge/camera/controller/SettingController;->setTimeMachineLimit(Z)V

    .line 318
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v4, "com.lge.camera.command.setting.SetOlaTimeMachineShot"

    invoke-virtual {v3, v4, p1}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 319
    const-string v3, "shotmode_hdr"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 320
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v4, "com.lge.camera.command.setting.SetCameraImageSize"

    invoke-virtual {v3, v4, p1}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 323
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;

    move-result-object v3

    const-string v4, "key_camera_timer"

    invoke-virtual {v3, v4, v6}, Lcom/lge/camera/setting/CameraSettingMenu;->setEnabled(Ljava/lang/String;Z)V

    .line 324
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;

    move-result-object v3

    const-string v4, "key_camera_shutter_sound"

    invoke-virtual {v3, v4, v6}, Lcom/lge/camera/setting/CameraSettingMenu;->setEnabled(Ljava/lang/String;Z)V

    .line 325
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;

    move-result-object v3

    const-string v4, "key_camera_auto_review"

    invoke-virtual {v3, v4, v5}, Lcom/lge/camera/setting/CameraSettingMenu;->setEnabled(Ljava/lang/String;Z)V

    .line 327
    const-string v3, "key_camera_picturesize"

    invoke-virtual {p0, v3}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getSetting(Ljava/lang/String;)I

    move-result v1

    .line 328
    .local v1, pictureSizeIndex:I
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v3

    const-string v4, "key_camera_picturesize"

    invoke-virtual {v3, v4}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 329
    .local v2, pictureSizePref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_2

    .line 330
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 333
    :cond_2
    iput-boolean v6, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 335
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const/4 v4, 0x5

    invoke-virtual {v3, p1, v4}, Lcom/lge/camera/CameraMediator;->setTimeMachineShot(Landroid/hardware/Camera$Parameters;I)V

    .line 336
    if-eqz p2, :cond_3

    .line 337
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v4, "shotmode_timemachine"

    invoke-virtual {v3, v4}, Lcom/lge/camera/CameraMediator;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 340
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v3

    const/16 v4, 0x15

    if-ne v3, v4, :cond_5

    .line 341
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->setTimeMachineComplete(Z)V

    .line 342
    if-eqz p2, :cond_4

    .line 343
    .local v0, delay:I
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isTimeMachinShotSupported()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->isTimeMachineModeOn()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 345
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v3

    new-instance v4, Lcom/lge/camera/command/setting/SetCameraShotMode$5;

    invoke-direct {v4, p0}, Lcom/lge/camera/command/setting/SetCameraShotMode$5;-><init>(Lcom/lge/camera/command/setting/SetCameraShotMode;)V

    int-to-long v5, v0

    invoke-virtual {v3, v4, v5, v6}, Lcom/lge/camera/util/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 354
    .end local v0           #delay:I
    :cond_5
    return-void

    .line 313
    .end local v1           #pictureSizeIndex:I
    .end local v2           #pictureSizePref:Lcom/lge/camera/setting/ListPreference;
    :cond_6
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isQCTChipset()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 314
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v3

    invoke-virtual {v3, p1, v5}, Lcom/lge/camera/controller/camera/CameraPreviewController;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 315
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3, p3}, Lcom/lge/camera/CameraMediator;->setPreviousShotModeString(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onExecuteAlone()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 358
    const-string v10, "CameraApp"

    const-string v11, "SetCameraShotMode onExecuteAlone()"

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :try_start_0
    iget-object v10, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v10}, Lcom/lge/camera/CameraMediator;->getInCaptureProgress()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 418
    :goto_0
    return-void

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v10

    const v11, 0x7f0b0217

    invoke-virtual {v10, v11}, Lcom/lge/camera/CameraMediator;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, shotChangeMsg:Ljava/lang/String;
    const/4 v4, 0x0

    .line 367
    .local v4, shotModeEntryVal:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v10

    const-string v11, "key_camera_shot_mode"

    invoke-virtual {v10, v11}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 368
    .local v3, shotMode:Ljava/lang/String;
    const-string v10, "key_camera_shot_mode"

    invoke-virtual {p0, v10}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getSetting(Ljava/lang/String;)I

    move-result v5

    .line 369
    .local v5, shotModeIndex:I
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lge/camera/CameraMediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v10

    const-string v11, "key_camera_shot_mode"

    invoke-virtual {v10, v11}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 370
    .local v0, ShotModePref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_1

    .line 371
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v10

    aget-object v10, v10, v5

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 374
    :cond_1
    iget-object v10, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v11, "key_time_machine"

    invoke-virtual {v10, v11}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 375
    .local v9, value:Ljava/lang/String;
    const-string v10, "on"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 376
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lge/camera/CameraMediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v10

    const-string v11, "key_time_machine"

    invoke-virtual {v10, v11}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v7

    .line 377
    .local v7, timeMachinePref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v7, :cond_2

    .line 378
    iget-object v10, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v10}, Lcom/lge/camera/CameraMediator;->getPreviousShotModeString()Ljava/lang/String;

    move-result-object v6

    .line 379
    .local v6, strPreviousShotMode:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/lge/camera/setting/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 381
    .local v8, timeMachineTitle:Ljava/lang/String;
    const-string v10, "on"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "shotmode_timemachine"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 382
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    invoke-static {v2, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/lge/camera/CameraMediator;->toast(Ljava/lang/String;)V

    .line 385
    .end local v6           #strPreviousShotMode:Ljava/lang/String;
    .end local v8           #timeMachineTitle:Ljava/lang/String;
    :cond_2
    iget-object v10, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v11, "shotmode_timemachine"

    invoke-virtual {v10, v11}, Lcom/lge/camera/CameraMediator;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 404
    .end local v7           #timeMachinePref:Lcom/lge/camera/setting/ListPreference;
    :cond_3
    :goto_1
    const-string v10, "shotmode_panorama"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "on"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 405
    :cond_4
    iget-object v10, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v10}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lge/camera/controller/camera/PanoramaController;->removePanoramaView()V

    .line 408
    :cond_5
    iget-object v10, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    new-instance v11, Lcom/lge/camera/command/setting/SetCameraShotMode$6;

    invoke-direct {v11, p0}, Lcom/lge/camera/command/setting/SetCameraShotMode$6;-><init>(Lcom/lge/camera/command/setting/SetCameraShotMode;)V

    invoke-virtual {v10, v11}, Lcom/lge/camera/CameraMediator;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 415
    .end local v0           #ShotModePref:Lcom/lge/camera/setting/ListPreference;
    .end local v2           #shotChangeMsg:Ljava/lang/String;
    .end local v3           #shotMode:Ljava/lang/String;
    .end local v4           #shotModeEntryVal:Ljava/lang/String;
    .end local v5           #shotModeIndex:I
    .end local v9           #value:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 416
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v10, "CameraApp"

    const-string v11, "NullPointerException:"

    invoke-static {v10, v11, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 387
    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v0       #ShotModePref:Lcom/lge/camera/setting/ListPreference;
    .restart local v2       #shotChangeMsg:Ljava/lang/String;
    .restart local v3       #shotMode:Ljava/lang/String;
    .restart local v4       #shotModeEntryVal:Ljava/lang/String;
    .restart local v5       #shotModeIndex:I
    .restart local v9       #value:Ljava/lang/String;
    :cond_6
    :try_start_1
    iget-object v10, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v10}, Lcom/lge/camera/CameraMediator;->getPreviousShotModeString()Ljava/lang/String;

    move-result-object v6

    .line 388
    .restart local v6       #strPreviousShotMode:Ljava/lang/String;
    const-string v10, "shotmode_normal"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 390
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    invoke-static {v2, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/lge/camera/CameraMediator;->toast(Ljava/lang/String;)V

    .line 393
    :cond_7
    iget-object v10, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v10, v3}, Lcom/lge/camera/CameraMediator;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 395
    const-string v10, "shotmode_continuous"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 396
    iget-object v10, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v11, "continuous"

    const/16 v12, 0x1b

    invoke-virtual {v10, v11, v12}, Lcom/lge/camera/CameraMediator;->showHelpGuidePopup(Ljava/lang/String;I)Z

    goto :goto_1

    .line 397
    :cond_8
    const-string v10, "shotmode_panorama"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 398
    iget-object v10, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v11, "panorama"

    const/16 v12, 0x19

    invoke-virtual {v10, v11, v12}, Lcom/lge/camera/CameraMediator;->showHelpGuidePopup(Ljava/lang/String;I)Z

    goto :goto_1

    .line 399
    :cond_9
    const-string v10, "shotmode_hdr"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 400
    iget-object v10, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v11, "hdr"

    const/16 v12, 0x18

    invoke-virtual {v10, v11, v12}, Lcom/lge/camera/CameraMediator;->showHelpGuidePopup(Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
