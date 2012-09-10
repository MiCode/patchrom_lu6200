.class public Lcom/lge/camera/command/setting/SetCameraWhiteBalance;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetCameraWhiteBalance.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/Mediator;)V

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/command/setting/SetCameraWhiteBalance;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetCameraWhiteBalance;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 10
    .parameter "parameters"
    .parameter "arg"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 27
    const-string v4, "CameraApp"

    const-string v5, "SetCameraWhiteBalance "

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, oldValue:Ljava/lang/String;
    const-string v4, "key_camera_whitebalance"

    invoke-virtual {p0, v4}, Lcom/lge/camera/command/setting/SetCameraWhiteBalance;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, newValue:Ljava/lang/String;
    const-string v4, "key_camera_whitebalance"

    invoke-virtual {p0, v4}, Lcom/lge/camera/command/setting/SetCameraWhiteBalance;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "auto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 36
    const-string v4, "key_camera_coloreffect"

    invoke-virtual {p0, v4}, Lcom/lge/camera/command/setting/SetCameraWhiteBalance;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraWhiteBalance;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v4

    const-string v5, "key_camera_coloreffect"

    const-string v6, "none"

    invoke-virtual {v4, v5, v6}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 38
    const-string v4, "none"

    invoke-virtual {p1, v4}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 40
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 41
    .local v2, r:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraWhiteBalance;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v4

    const v5, 0x7f0b0139

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    const v7, 0x7f0b00b8

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/camera/Mediator;->toast(Ljava/lang/String;)V

    .line 46
    .end local v2           #r:Landroid/content/res/Resources;
    :cond_0
    const-string v4, "key_scene_mode"

    invoke-virtual {p0, v4}, Lcom/lge/camera/command/setting/SetCameraWhiteBalance;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "auto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "key_scene_mode"

    invoke-virtual {p0, v4}, Lcom/lge/camera/command/setting/SetCameraWhiteBalance;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "not found"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 47
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v3

    .line 48
    .local v3, supportedScenemode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraWhiteBalance;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v4

    const-string v5, "key_scene_mode"

    const-string v6, "auto"

    invoke-virtual {v4, v5, v6}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 50
    const-string v4, "auto"

    invoke-virtual {p1, v4}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 51
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v4

    if-nez v4, :cond_1

    .line 53
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 54
    .restart local v2       #r:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraWhiteBalance;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v4

    const v5, 0x7f0b013c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    const v7, 0x7f0b00a1

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/camera/Mediator;->toast(Ljava/lang/String;)V

    .line 57
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuIcons()V

    .line 59
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraWhiteBalance;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getIndicatorController()Lcom/lge/camera/controller/IndicatorController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/IndicatorController;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 60
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v5, Lcom/lge/camera/command/setting/SetCameraWhiteBalance$1;

    invoke-direct {v5, p0}, Lcom/lge/camera/command/setting/SetCameraWhiteBalance$1;-><init>(Lcom/lge/camera/command/setting/SetCameraWhiteBalance;)V

    invoke-virtual {v4, v5}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 72
    .end local v2           #r:Landroid/content/res/Resources;
    .end local v3           #supportedScenemode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    if-eqz v1, :cond_2

    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 74
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "white balance set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraWhiteBalance;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v4

    const-string v5, "key_camera_whitebalance"

    invoke-virtual {v4, v5, v0}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 76
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 79
    :cond_2
    return-void
.end method
