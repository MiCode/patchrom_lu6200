.class public Lcom/lge/camera/module/TimeMachineShot;
.super Lcom/lge/camera/module/Module;
.source "TimeMachineShot.java"


# instance fields
.field mMediator:Lcom/lge/camera/CameraMediator;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/lge/camera/module/Module;-><init>(Lcom/lge/camera/Mediator;)V

    .line 21
    check-cast p1, Lcom/lge/camera/CameraMediator;

    .end local p1
    iput-object p1, p0, Lcom/lge/camera/module/TimeMachineShot;->mMediator:Lcom/lge/camera/CameraMediator;

    .line 22
    return-void
.end method


# virtual methods
.method public doAfterCapture()V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isB2Model()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/lge/camera/module/TimeMachineShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->setAudioFocus(Landroid/content/Context;Z)V

    .line 62
    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public takePicture()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 31
    const-string v0, "CameraApp"

    const-string v1, "TIME_CHECK [Module]TimeMachineShot::takePicture-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isB2Model()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/lge/camera/module/TimeMachineShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/lge/camera/util/Common;->setAudioFocus(Landroid/content/Context;Z)V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/module/TimeMachineShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 38
    const-string v0, "CameraApp"

    const-string v1, "#### Device().takePicture()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isTimeMachinShotSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/lge/camera/module/TimeMachineShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    new-instance v1, Lcom/lge/camera/listeners/ShutterCallback;

    iget-object v2, p0, Lcom/lge/camera/module/TimeMachineShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-direct {v1, v2}, Lcom/lge/camera/listeners/ShutterCallback;-><init>(Lcom/lge/camera/Mediator;)V

    new-instance v2, Lcom/lge/camera/listeners/RawPictureCallback;

    iget-object v3, p0, Lcom/lge/camera/module/TimeMachineShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-direct {v2, v3}, Lcom/lge/camera/listeners/RawPictureCallback;-><init>(Lcom/lge/camera/Mediator;)V

    new-instance v3, Lcom/lge/camera/listeners/PostviewCallback;

    iget-object v4, p0, Lcom/lge/camera/module/TimeMachineShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-direct {v3, v4}, Lcom/lge/camera/listeners/PostviewCallback;-><init>(Lcom/lge/camera/Mediator;)V

    new-instance v4, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;

    iget-object v5, p0, Lcom/lge/camera/module/TimeMachineShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-direct {v4, v5, v6}, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;-><init>(Lcom/lge/camera/CameraMediator;Landroid/location/Location;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 50
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/module/TimeMachineShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/camera/CameraPreviewController;->setPreviewing(Z)V

    .line 51
    const-string v0, "CameraApp"

    const-string v1, "[Module]TimeMachineShot::takePicture-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return v7

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/module/TimeMachineShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    new-instance v1, Lcom/lge/camera/listeners/ShutterCallback;

    iget-object v2, p0, Lcom/lge/camera/module/TimeMachineShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-direct {v1, v2}, Lcom/lge/camera/listeners/ShutterCallback;-><init>(Lcom/lge/camera/Mediator;)V

    new-instance v2, Lcom/lge/camera/listeners/RawPictureCallback;

    iget-object v3, p0, Lcom/lge/camera/module/TimeMachineShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-direct {v2, v3}, Lcom/lge/camera/listeners/RawPictureCallback;-><init>(Lcom/lge/camera/Mediator;)V

    new-instance v3, Lcom/lge/camera/listeners/PostviewCallback;

    iget-object v4, p0, Lcom/lge/camera/module/TimeMachineShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-direct {v3, v4}, Lcom/lge/camera/listeners/PostviewCallback;-><init>(Lcom/lge/camera/Mediator;)V

    new-instance v4, Lcom/lge/camera/listeners/JpegPictureCallback;

    iget-object v5, p0, Lcom/lge/camera/module/TimeMachineShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-direct {v4, v5, v6}, Lcom/lge/camera/listeners/JpegPictureCallback;-><init>(Lcom/lge/camera/CameraMediator;Landroid/location/Location;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto :goto_0
.end method
