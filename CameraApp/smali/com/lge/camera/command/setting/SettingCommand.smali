.class public abstract Lcom/lge/camera/command/setting/SettingCommand;
.super Lcom/lge/camera/command/Command;
.source "SettingCommand.java"


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
    .locals 8

    .prologue
    .line 20
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    .line 22
    .local v0, cameraDevice:Landroid/hardware/Camera;
    if-eqz v0, :cond_5

    .line 23
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 25
    .local v2, parameters:Landroid/hardware/Camera$Parameters;
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isB2Model()Z

    move-result v5

    if-nez v5, :cond_0

    .line 26
    invoke-virtual {p0, v2}, Lcom/lge/camera/command/setting/SettingCommand;->execute(Landroid/hardware/Camera$Parameters;)V

    .line 28
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SettingCommand;->onExecuteAlone()V

    .line 66
    .end local v2           #parameters:Landroid/hardware/Camera$Parameters;
    :goto_1
    return-void

    .line 29
    .restart local v2       #parameters:Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v1

    .line 30
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setParameters failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 34
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_0
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 35
    .local v4, previewSizeOld:Landroid/hardware/Camera$Size;
    if-nez v4, :cond_1

    .line 36
    const-string v5, "CameraApp"

    const-string v6, "getPreviewSize failed: null~!!!"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {p0, v2}, Lcom/lge/camera/command/setting/SettingCommand;->execute(Landroid/hardware/Camera$Parameters;)V

    .line 42
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 43
    .local v3, previewSizeNew:Landroid/hardware/Camera$Size;
    if-nez v3, :cond_2

    .line 44
    const-string v5, "CameraApp"

    const-string v6, "getPreviewSize failed: null~!!!"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 49
    :cond_2
    :try_start_1
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    if-ne v5, v6, :cond_3

    iget v5, v4, Landroid/hardware/Camera$Size;->height:I

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    if-eq v5, v6, :cond_4

    .line 50
    :cond_3
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 51
    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 52
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 57
    :catch_1
    move-exception v1

    .line 58
    .restart local v1       #e:Ljava/lang/RuntimeException;
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setParameters failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_4
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 64
    .end local v2           #parameters:Landroid/hardware/Camera$Parameters;
    .end local v3           #previewSizeNew:Landroid/hardware/Camera$Size;
    .end local v4           #previewSizeOld:Landroid/hardware/Camera$Size;
    :cond_5
    const-string v5, "CameraApp"

    const-string v6, "Camera ref is null. Setting command return."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter "parameters"

    .prologue
    .line 100
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 0
    .parameter "parameters"
    .parameter "arg2"

    .prologue
    .line 101
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 2
    .parameter "arg"

    .prologue
    .line 70
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 71
    check-cast p1, Landroid/hardware/Camera$Parameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;->execute(Landroid/hardware/Camera$Parameters;)V

    .line 75
    :goto_0
    return-void

    .line 73
    .restart local p1
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "arg is not Parameter !!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public execute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 78
    if-eqz p1, :cond_0

    instance-of v3, p1, Landroid/hardware/Camera$Parameters;

    if-eqz v3, :cond_0

    .line 79
    check-cast p1, Landroid/hardware/Camera$Parameters;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/command/setting/SettingCommand;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 98
    :goto_0
    return-void

    .line 81
    .restart local p1
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    .line 83
    .local v0, cameraDevice:Landroid/hardware/Camera;
    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 85
    .local v2, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {p0, v2, p2}, Lcom/lge/camera/command/setting/SettingCommand;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 88
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SettingCommand;->onExecuteAlone()V

    goto :goto_0

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setParameters failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 95
    .end local v1           #e:Ljava/lang/RuntimeException;
    .end local v2           #parameters:Landroid/hardware/Camera$Parameters;
    :cond_1
    const-string v3, "CameraApp"

    const-string v4, "Camera ref is null. Setting command return."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getSetting(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p1}, Lcom/lge/camera/Mediator;->getSettingIndex(I)I

    move-result v0

    return v0
.end method

.method public getSetting(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p1}, Lcom/lge/camera/Mediator;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getSettingMenu()Lcom/lge/camera/setting/SettingMenu;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    return-object v0
.end method

.method public getSettingValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p1}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onExecuteAlone()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method protected setSetting(II)Z
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/Mediator;->setSetting(II)Z

    move-result v0

    return v0
.end method
