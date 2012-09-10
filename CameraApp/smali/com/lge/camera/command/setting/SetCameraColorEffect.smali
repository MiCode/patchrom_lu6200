.class public Lcom/lge/camera/command/setting/SetCameraColorEffect;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetCameraColorEffect.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/Mediator;)V

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/command/setting/SetCameraColorEffect;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/command/setting/SetCameraColorEffect;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/camera/command/setting/SetCameraColorEffect;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/camera/command/setting/SetCameraColorEffect;)Lcom/lge/camera/Mediator;
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
    .line 24
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetCameraColorEffect;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 9
    .parameter "parameters"
    .parameter "arg"

    .prologue
    const/4 v8, 0x0

    .line 28
    const-string v4, "CameraApp"

    const-string v5, "SetCameraColorEffect"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, olaValue:Ljava/lang/String;
    const-string v4, "key_camera_coloreffect"

    invoke-virtual {p0, v4}, Lcom/lge/camera/command/setting/SetCameraColorEffect;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, newValue:Ljava/lang/String;
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oldValue : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", newValue : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v4, "key_camera_coloreffect"

    invoke-virtual {p0, v4}, Lcom/lge/camera/command/setting/SetCameraColorEffect;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 35
    const-string v4, "key_camera_whitebalance"

    invoke-virtual {p0, v4}, Lcom/lge/camera/command/setting/SetCameraColorEffect;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "auto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraColorEffect;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v4

    const-string v5, "key_camera_whitebalance"

    const-string v6, "auto"

    invoke-virtual {v4, v5, v6}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 37
    const-string v4, "auto"

    invoke-virtual {p1, v4}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraColorEffect;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v4

    const v5, 0x7f0b013a

    invoke-virtual {v4, v5}, Lcom/lge/camera/Mediator;->toast(I)V

    .line 41
    :cond_0
    const-string v4, "key_scene_mode"

    invoke-virtual {p0, v4}, Lcom/lge/camera/command/setting/SetCameraColorEffect;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "auto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "key_scene_mode"

    invoke-virtual {p0, v4}, Lcom/lge/camera/command/setting/SetCameraColorEffect;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "not found"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 43
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v3

    .line 44
    .local v3, supportedScenemode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraColorEffect;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v4

    const-string v5, "key_scene_mode"

    const-string v6, "auto"

    invoke-virtual {v4, v5, v6}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 46
    const-string v4, "auto"

    invoke-virtual {p1, v4}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 47
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v4

    if-nez v4, :cond_1

    .line 49
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 50
    .local v2, r:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraColorEffect;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v4

    const v5, 0x7f0b013c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const v7, 0x7f0b00a1

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/camera/Mediator;->toast(Ljava/lang/String;)V

    .line 53
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuIcons()V

    .line 55
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraColorEffect;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getIndicatorController()Lcom/lge/camera/controller/IndicatorController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/IndicatorController;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v5, Lcom/lge/camera/command/setting/SetCameraColorEffect$1;

    invoke-direct {v5, p0}, Lcom/lge/camera/command/setting/SetCameraColorEffect$1;-><init>(Lcom/lge/camera/command/setting/SetCameraColorEffect;)V

    invoke-virtual {v4, v5}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 67
    .end local v2           #r:Landroid/content/res/Resources;
    .end local v3           #supportedScenemode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraColorEffect;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v4

    if-nez v4, :cond_3

    .line 68
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraColorEffect;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v4

    const-string v5, "key_focus"

    invoke-virtual {v4, v5}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "face_tracking"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 69
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraColorEffect;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v4

    const-string v5, "key_focus"

    const-string v6, "auto"

    invoke-virtual {v4, v5, v6}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 73
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v4, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getFacePreviewController()Lcom/lge/camera/controller/camera/FacePreviewController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/camera/FacePreviewController;->stopFaceDetection()V

    .line 74
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraColorEffect;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/FocusController;->showFocus()Z

    .line 75
    const-string v4, "manual-focus"

    invoke-virtual {p1, v4, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 77
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraColorEffect;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getIndicatorController()Lcom/lge/camera/controller/IndicatorController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/IndicatorController;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 78
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v5, Lcom/lge/camera/command/setting/SetCameraColorEffect$2;

    invoke-direct {v5, p0}, Lcom/lge/camera/command/setting/SetCameraColorEffect$2;-><init>(Lcom/lge/camera/command/setting/SetCameraColorEffect;)V

    invoke-virtual {v4, v5}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraColorEffect;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v4

    const v5, 0x7f0b0133

    invoke-virtual {v4, v5}, Lcom/lge/camera/Mediator;->toast(I)V

    .line 91
    :cond_3
    if-eqz v1, :cond_4

    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 93
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "color effect set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraColorEffect;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v4

    const-string v5, "key_camera_coloreffect"

    invoke-virtual {v4, v5, v0}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 95
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 98
    :cond_4
    return-void
.end method
