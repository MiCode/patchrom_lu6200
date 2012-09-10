.class public Lcom/lge/camera/command/setting/SetCameraFocusMode;
.super Lcom/lge/camera/command/setting/CameraSettingCommand;
.source "SetCameraFocusMode.java"


# instance fields
.field mMediator:Lcom/lge/camera/CameraMediator;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/CameraSettingCommand;-><init>(Lcom/lge/camera/Mediator;)V

    .line 23
    check-cast p1, Lcom/lge/camera/CameraMediator;

    .end local p1
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mMediator:Lcom/lge/camera/CameraMediator;

    .line 24
    return-void
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetCameraFocusMode;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 9
    .parameter "parameters"
    .parameter "arg"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 32
    const-string v3, "CameraApp"

    const-string v4, "SetCameraFocusMode"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getCameraId()I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 93
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraFocusMode;->updateIndicator()V

    .line 39
    const-string v3, "key_focus"

    invoke-virtual {p0, v3}, Lcom/lge/camera/command/setting/SetCameraFocusMode;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, focusSetting:Ljava/lang/String;
    const-string v3, "key_camera_shot_mode"

    invoke-virtual {p0, v3}, Lcom/lge/camera/command/setting/SetCameraFocusMode;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, shotMode:Ljava/lang/String;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "focus mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v3, "auto"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 43
    invoke-virtual {p0, p1}, Lcom/lge/camera/command/setting/SetCameraFocusMode;->setFocusAuto(Landroid/hardware/Camera$Parameters;)V

    .line 44
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getContinuousFocusMenu()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 45
    const-string v3, "CameraApp"

    const-string v4, "###setFocusMode-auto"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v3, "auto"

    invoke-virtual {p1, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 86
    :cond_1
    :goto_1
    const-string v3, "shotmode_normal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "not found"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->isTimeMachineModeOn()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 89
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v4, "key_focus"

    invoke-virtual {v3, v4, v7}, Lcom/lge/camera/CameraMediator;->setPreferenceMenuEnable(Ljava/lang/String;Z)V

    goto :goto_0

    .line 48
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraFocusMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->isCafSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    const-string v3, "CameraApp"

    const-string v4, "###setFocusMode-conti"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v3, "continuous-picture"

    invoke-virtual {p1, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_1

    .line 53
    :cond_4
    const-string v3, "face_tracking"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 54
    const-string v3, "key_camera_coloreffect"

    invoke-virtual {p0, v3}, Lcom/lge/camera/command/setting/SetCameraFocusMode;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 55
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraFocusMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v3

    const-string v4, "key_camera_coloreffect"

    const-string v5, "none"

    invoke-virtual {v3, v4, v5}, Lcom/lge/camera/CameraMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 56
    const-string v3, "none"

    invoke-virtual {p1, v3}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 58
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 59
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraFocusMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v3

    const v4, 0x7f0b0139

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    const v6, 0x7f0b00b8

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/camera/CameraMediator;->toast(Ljava/lang/String;)V

    .line 63
    .end local v1           #r:Landroid/content/res/Resources;
    :cond_5
    const-string v3, "shotmode_normal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "not found"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->isTimeMachineModeOn()Z

    move-result v3

    if-nez v3, :cond_6

    .line 66
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraFocusMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v3

    const v4, 0x7f0b0130

    invoke-virtual {v3, v4}, Lcom/lge/camera/CameraMediator;->toast(I)V

    .line 67
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v4, "DefaultNormalShot"

    invoke-virtual {v3, v4}, Lcom/lge/camera/CameraMediator;->setModule(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraFocusMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v3

    const-string v4, "key_camera_shot_mode"

    const-string v5, "shotmode_normal"

    invoke-virtual {v3, v4, v5}, Lcom/lge/camera/CameraMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 69
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraFocusMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;

    move-result-object v3

    const-string v4, "key_camera_picturesize"

    invoke-virtual {v3, v4, v7}, Lcom/lge/camera/setting/CameraSettingMenu;->setEnabled(Ljava/lang/String;Z)V

    .line 70
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraFocusMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;

    move-result-object v3

    const-string v4, "key_camera_timer"

    invoke-virtual {v3, v4, v7}, Lcom/lge/camera/setting/CameraSettingMenu;->setEnabled(Ljava/lang/String;Z)V

    .line 71
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraFocusMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v3

    const-string v4, "com.lge.camera.command.setting.SetCameraImageSize"

    invoke-virtual {v3, v4, p1}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    :cond_6
    invoke-virtual {p0, p1}, Lcom/lge/camera/command/setting/SetCameraFocusMode;->setFocusFaceTracking(Landroid/hardware/Camera$Parameters;)V

    .line 74
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getContinuousFocusMenu()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    const-string v3, "CameraApp"

    const-string v4, "###setFocusMode-auto"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v3, "auto"

    invoke-virtual {p1, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 78
    :cond_7
    const-string v3, "continuous_focus"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getContinuousFocusMenu()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    invoke-virtual {p0, p1}, Lcom/lge/camera/command/setting/SetCameraFocusMode;->setFocusAuto(Landroid/hardware/Camera$Parameters;)V

    .line 81
    const-string v3, "CameraApp"

    const-string v4, "###setFocusMode-conti"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v3, "continuous-picture"

    invoke-virtual {p1, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 91
    :cond_8
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v4, "key_focus"

    invoke-virtual {v3, v4, v8}, Lcom/lge/camera/CameraMediator;->setPreferenceMenuEnable(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method protected onExecuteAlone()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mMediator:Lcom/lge/camera/CameraMediator;

    new-instance v1, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;-><init>(Lcom/lge/camera/command/setting/SetCameraFocusMode;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/CameraMediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 169
    return-void
.end method

.method public setFocusAuto(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "parameters"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mMediator:Lcom/lge/camera/CameraMediator;

    new-instance v1, Lcom/lge/camera/command/setting/SetCameraFocusMode$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetCameraFocusMode$1;-><init>(Lcom/lge/camera/command/setting/SetCameraFocusMode;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/CameraMediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 122
    const-string v0, "manual-focus"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 123
    return-void
.end method

.method public setFocusFaceTracking(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "parameters"

    .prologue
    .line 127
    const-string v0, "manual-focus"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 128
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mMediator:Lcom/lge/camera/CameraMediator;

    new-instance v1, Lcom/lge/camera/command/setting/SetCameraFocusMode$2;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetCameraFocusMode$2;-><init>(Lcom/lge/camera/command/setting/SetCameraFocusMode;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/CameraMediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 142
    return-void
.end method

.method public updateIndicator()V
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraFocusMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mMediator:Lcom/lge/camera/CameraMediator;

    new-instance v1, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;-><init>(Lcom/lge/camera/command/setting/SetCameraFocusMode;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/CameraMediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 153
    :cond_0
    return-void
.end method
