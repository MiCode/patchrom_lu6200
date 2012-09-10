.class public Lcom/lge/camera/command/setting/SetLiveEffect;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetLiveEffect.java"


# instance fields
.field currentResolution:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 1
    .parameter "mediator"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/Mediator;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/command/setting/SetLiveEffect;->currentResolution:Ljava/lang/String;

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/command/setting/SetLiveEffect;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/command/setting/SetLiveEffect;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/camera/command/setting/SetLiveEffect;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/camera/command/setting/SetLiveEffect;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/command/setting/SetLiveEffect;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/camera/command/setting/SetLiveEffect;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/camera/command/setting/SetLiveEffect;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/camera/command/setting/SetLiveEffect;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/camera/command/setting/SetLiveEffect;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/camera/command/setting/SetLiveEffect;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetLiveEffect;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 4
    .parameter "parameters"
    .parameter "arg"

    .prologue
    const/4 v3, 0x0

    .line 27
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const-string v0, "CameraApp"

    const-string v1, "SetLiveeffectMode"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsLiveEffectSupported()Z

    move-result v0

    if-nez v0, :cond_2

    .line 35
    const-string v0, "CameraApp"

    const-string v1, "Dont support liveeffect"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_2
    const-string v0, "CameraApp"

    const-string v1, "#### set coloreffect none because of liveeffect "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "none"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetLiveEffect;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    const-string v1, "key_camera_coloreffect"

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 42
    const-string v0, "CameraApp"

    const-string v1, "#### set gps off because of liveeffect "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetLiveEffect;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    const-string v1, "key_camera_tag_location"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 45
    const-string v0, "CameraApp"

    const-string v1, "#### set whiltebalance auto because of liveeffect "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetLiveEffect;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    const-string v1, "key_camera_whitebalance"

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 49
    const-string v0, "CameraApp"

    const-string v1, "#### set exposure zero because of liveeffect "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1, v3}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 51
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getBrightnessController()Lcom/lge/camera/controller/BrightnessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/BrightnessController;->reset()V

    .line 53
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v0

    if-nez v0, :cond_3

    .line 54
    const-string v0, "CameraApp"

    const-string v1, "#### set zoom zero because of liveeffect "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1, v3}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 56
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->reset()V

    .line 59
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetLiveEffect;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lge/camera/Mediator;->setRecordLocation(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetLiveEffect;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    new-instance v1, Lcom/lge/camera/command/setting/SetLiveEffect$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetLiveEffect$1;-><init>(Lcom/lge/camera/command/setting/SetLiveEffect;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/MainHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
