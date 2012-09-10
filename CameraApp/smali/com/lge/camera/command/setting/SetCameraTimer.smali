.class public Lcom/lge/camera/command/setting/SetCameraTimer;
.super Lcom/lge/camera/command/setting/CameraSettingCommand;
.source "SetCameraTimer.java"


# instance fields
.field mMediator:Lcom/lge/camera/CameraMediator;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/CameraSettingCommand;-><init>(Lcom/lge/camera/Mediator;)V

    .line 19
    check-cast p1, Lcom/lge/camera/CameraMediator;

    .end local p1
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraTimer;->mMediator:Lcom/lge/camera/CameraMediator;

    .line 20
    return-void
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetCameraTimer;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 6
    .parameter "parameters"
    .parameter "arg"

    .prologue
    .line 28
    const-string v3, "CameraApp"

    const-string v4, "SetCameraTimer "

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraTimer;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v4, "key_camera_timer"

    invoke-virtual {v3, v4}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, stringValue:Ljava/lang/String;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMediator.getSettingValue(key_camera_timer) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v3, "not found"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 34
    const-string v3, "CameraApp"

    const-string v4, "Need to check string whether it is convertable or not."

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 39
    .local v2, timerSetting:I
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraTimer;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lge/camera/controller/camera/TimerController;->setTimerSetting(I)V

    .line 41
    const-string v3, "key_camera_shot_mode"

    invoke-virtual {p0, v3}, Lcom/lge/camera/command/setting/SetCameraTimer;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, shotMode:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 43
    const-string v3, "shotmode_normal"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "not found"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraTimer;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getCameraId()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraTimer;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->isTimeMachineModeOn()Z

    move-result v3

    if-nez v3, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraTimer;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v3

    const-string v4, "key_camera_shot_mode"

    const-string v5, "shotmode_normal"

    invoke-virtual {v3, v4, v5}, Lcom/lge/camera/CameraMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 49
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraTimer;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v4, "com.lge.camera.command.setting.SetCameraShotMode"

    invoke-virtual {v3, v4, p1}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraTimer;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v3

    const v4, 0x7f0b0130

    invoke-virtual {v3, v4}, Lcom/lge/camera/CameraMediator;->toast(I)V

    goto :goto_0
.end method

.method public updateIndicator()V
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraTimer;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraTimer;->mMediator:Lcom/lge/camera/CameraMediator;

    new-instance v1, Lcom/lge/camera/command/setting/SetCameraTimer$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetCameraTimer$1;-><init>(Lcom/lge/camera/command/setting/SetCameraTimer;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/CameraMediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 65
    :cond_0
    return-void
.end method
