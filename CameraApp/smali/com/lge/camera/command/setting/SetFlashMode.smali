.class public Lcom/lge/camera/command/setting/SetFlashMode;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetFlashMode.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/Mediator;)V

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/command/setting/SetFlashMode;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/command/setting/SetFlashMode;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method private isSupported(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    .locals 9
    .parameter "parameters"
    .parameter "flashMode"

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v3

    .line 69
    .local v3, supportedModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 70
    .local v2, supported:Z
    if-eqz v3, :cond_1

    .line 71
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 72
    .local v1, mode:Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 76
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mode:Ljava/lang/String;
    :cond_1
    if-nez v2, :cond_2

    .line 77
    const-string v4, "CameraApp"

    const-string v5, "Flash mode [%s] not supported. (camera id:%d)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetFlashMode;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_2
    return v2
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetFlashMode;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 7
    .parameter "parameters"
    .parameter "arg"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 26
    const-string v2, "CameraApp"

    const-string v3, "SetFlashMode"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v2, "key_flash"

    invoke-virtual {p0, v2}, Lcom/lge/camera/command/setting/SetFlashMode;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, flashMode:Ljava/lang/String;
    const-string v2, "key_camera_shot_mode"

    invoke-virtual {p0, v2}, Lcom/lge/camera/command/setting/SetFlashMode;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, shotMode:Ljava/lang/String;
    const-string v2, "shotmode_panorama"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "shotmode_continuous"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "shotmode_hdr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v2

    if-eq v2, v6, :cond_0

    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->isTimeMachineModeOn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 36
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "key_flash"

    invoke-virtual {v2, v3, v5}, Lcom/lge/camera/Mediator;->setPreferenceMenuEnable(Ljava/lang/String;Z)V

    .line 37
    const-string v0, "off"

    .line 51
    :cond_1
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/lge/camera/command/setting/SetFlashMode;->isSupported(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    .line 53
    const-string v2, "not found"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 54
    const-string v2, "CameraApp"

    const-string v3, "Set flash mode to [%s]"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v2

    const-string v3, "key_flash"

    invoke-virtual {v2, v3, v0}, Lcom/lge/camera/controller/SettingController;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 56
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 59
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v3, Lcom/lge/camera/command/setting/SetFlashMode$1;

    invoke-direct {v3, p0}, Lcom/lge/camera/command/setting/SetFlashMode$1;-><init>(Lcom/lge/camera/command/setting/SetFlashMode;)V

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 65
    return-void

    .line 38
    :cond_3
    const-string v2, "shotmode_normal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "not found"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v2

    if-nez v2, :cond_1

    .line 43
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 44
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "key_flash"

    invoke-virtual {v2, v3, v5}, Lcom/lge/camera/Mediator;->setPreferenceMenuEnable(Ljava/lang/String;Z)V

    goto :goto_0

    .line 46
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "key_flash"

    invoke-virtual {v2, v3, v6}, Lcom/lge/camera/Mediator;->setPreferenceMenuEnable(Ljava/lang/String;Z)V

    goto :goto_0
.end method
