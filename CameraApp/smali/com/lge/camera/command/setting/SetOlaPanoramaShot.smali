.class public Lcom/lge/camera/command/setting/SetOlaPanoramaShot;
.super Lcom/lge/camera/command/setting/CameraSettingCommand;
.source "SetOlaPanoramaShot.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/CameraSettingCommand;-><init>(Lcom/lge/camera/Mediator;)V

    .line 17
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/command/setting/SetOlaPanoramaShot;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/command/setting/SetOlaPanoramaShot;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/camera/command/setting/SetOlaPanoramaShot;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/camera/command/setting/SetOlaPanoramaShot;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/command/setting/SetOlaPanoramaShot;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/camera/command/setting/SetOlaPanoramaShot;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/camera/command/setting/SetOlaPanoramaShot;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetOlaPanoramaShot;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 22
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 5
    .parameter "parameters"
    .parameter "arg"

    .prologue
    const/4 v4, 0x1

    .line 25
    const-string v1, "CameraApp"

    const-string v2, "SetOlaPanoramaShot"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetOlaPanoramaShot;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v1

    instance-of v1, v1, Lcom/lge/camera/module/PanoramaShot;

    if-eqz v1, :cond_1

    .line 27
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v2, Lcom/lge/camera/command/setting/SetOlaPanoramaShot$1;

    invoke-direct {v2, p0}, Lcom/lge/camera/command/setting/SetOlaPanoramaShot$1;-><init>(Lcom/lge/camera/command/setting/SetOlaPanoramaShot;)V

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 36
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetOlaPanoramaShot;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/CameraPreviewController;->isReadyEngineProcessor()Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetOlaPanoramaShot;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    .line 38
    .local v0, controller:Lcom/lge/camera/controller/camera/PanoramaController;
    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->setEngine()V

    .line 65
    .end local v0           #controller:Lcom/lge/camera/controller/camera/PanoramaController;
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetOlaPanoramaShot;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    const-string v2, "PanoramaShot"

    invoke-virtual {v1, v2}, Lcom/lge/camera/CameraMediator;->setModule(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetOlaPanoramaShot;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_panorama"

    invoke-virtual {v1, v2, v3}, Lcom/lge/camera/CameraMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 45
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetOlaPanoramaShot;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v4, v4, v2}, Lcom/lge/camera/CameraMediator;->setTimerAndSceneSmartShutterEnable(Landroid/hardware/Camera$Parameters;ZZZ)V

    .line 47
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v2, Lcom/lge/camera/command/setting/SetOlaPanoramaShot$2;

    invoke-direct {v2, p0}, Lcom/lge/camera/command/setting/SetOlaPanoramaShot$2;-><init>(Lcom/lge/camera/command/setting/SetOlaPanoramaShot;)V

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 61
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetOlaPanoramaShot;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/CameraPreviewController;->isReadyEngineProcessor()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetOlaPanoramaShot;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/CameraPreviewController;->isPreviewOnGoing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetOlaPanoramaShot;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/CameraPreviewController;->setEngineProcessor()V

    goto :goto_0
.end method
