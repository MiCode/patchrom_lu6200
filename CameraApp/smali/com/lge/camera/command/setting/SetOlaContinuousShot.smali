.class public Lcom/lge/camera/command/setting/SetOlaContinuousShot;
.super Lcom/lge/camera/command/setting/CameraSettingCommand;
.source "SetOlaContinuousShot.java"


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


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetOlaContinuousShot;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 22
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 3
    .parameter "parameters"
    .parameter "arg"

    .prologue
    const/4 v2, 0x1

    .line 25
    const-string v0, "CameraApp"

    const-string v1, "SetOlaContinuousShot"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetOlaContinuousShot;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v0

    instance-of v0, v0, Lcom/lge/camera/module/ContinuousShot;

    if-eqz v0, :cond_0

    .line 31
    :goto_0
    return-void

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetOlaContinuousShot;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v0

    const-string v1, "ContinuousShot"

    invoke-virtual {v0, v1}, Lcom/lge/camera/CameraMediator;->setModule(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetOlaContinuousShot;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v2, v2, v1}, Lcom/lge/camera/CameraMediator;->setTimerAndSceneSmartShutterEnable(Landroid/hardware/Camera$Parameters;ZZZ)V

    .line 30
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetOlaContinuousShot;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v0

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_continuous"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/CameraMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
