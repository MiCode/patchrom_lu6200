.class public Lcom/lge/camera/command/SetTimeMachineMode;
.super Lcom/lge/camera/command/Command;
.source "SetTimeMachineMode.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/Mediator;)V

    .line 16
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/SetTimeMachineMode;->execute(Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 7
    .parameter "arg"

    .prologue
    const/4 v6, 0x0

    .line 24
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 25
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "subMenuClicked"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 27
    .local v1, subMenuClicked:Z
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isTimeMachinShotSupported()Z

    move-result v3

    if-nez v3, :cond_1

    .line 28
    const-string v3, "CameraApp"

    const-string v4, "SetTimeMachineMode : model is not supported."

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v3, :cond_0

    .line 36
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "key_time_machine"

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, value:Ljava/lang/String;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "## SetTimeMachineMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subMenuClicked = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_2

    .line 41
    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 42
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "key_camera_shot_mode"

    invoke-virtual {v3, v4, v6}, Lcom/lge/camera/Mediator;->setPreferenceMenuEnable(Ljava/lang/String;Z)V

    .line 47
    :goto_1
    if-eqz v1, :cond_2

    .line 48
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "com.lge.camera.command.setting.SetCameraShotMode"

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 52
    :cond_2
    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p0, v2}, Lcom/lge/camera/command/SetTimeMachineMode;->onExecuteAlone(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "key_camera_shot_mode"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/lge/camera/Mediator;->setPreferenceMenuEnable(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method protected onExecuteAlone(Ljava/lang/String;)V
    .locals 6
    .parameter "value"

    .prologue
    .line 58
    const-string v2, "CameraApp"

    const-string v3, "SetTimeMachineMode-onExecuteAlone"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isTimeMachinShotSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    :goto_0
    return-void

    .line 62
    :cond_0
    const/4 v1, 0x0

    .line 64
    .local v1, timeMachineTempFileDelete:Z
    :try_start_0
    const-string v2, "on"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v2, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->deleteTimeMachineImages()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 70
    :cond_1
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeMachineTempFileDeleted ? = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "timemachine"

    const/16 v4, 0x1a

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/Mediator;->showHelpGuidePopup(Ljava/lang/String;I)Z

    .line 74
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/QuickFunctionController;->reset()V

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Ljava/lang/ClassCastException;
    :try_start_1
    const-string v2, "CameraApp"

    const-string v3, "ClassCastException:"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeMachineTempFileDeleted ? = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v0           #e:Ljava/lang/ClassCastException;
    :catchall_0
    move-exception v2

    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timeMachineTempFileDeleted ? = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method
