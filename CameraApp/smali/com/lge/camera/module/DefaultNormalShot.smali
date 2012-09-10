.class public Lcom/lge/camera/module/DefaultNormalShot;
.super Lcom/lge/camera/module/Module;
.source "DefaultNormalShot.java"


# instance fields
.field mMediator:Lcom/lge/camera/CameraMediator;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/lge/camera/module/Module;-><init>(Lcom/lge/camera/Mediator;)V

    .line 22
    check-cast p1, Lcom/lge/camera/CameraMediator;

    .end local p1
    iput-object p1, p0, Lcom/lge/camera/module/DefaultNormalShot;->mMediator:Lcom/lge/camera/CameraMediator;

    .line 23
    return-void
.end method


# virtual methods
.method public doAfterCapture()V
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isB2Model()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/lge/camera/module/DefaultNormalShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->setAudioFocus(Landroid/content/Context;Z)V

    .line 71
    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public takePicture()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 33
    const-string v1, "CameraApp"

    const-string v2, "TIME_CHECK [Module]DefaultNormalShot::takePicture-start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isB2Model()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/lge/camera/module/DefaultNormalShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/lge/camera/util/Common;->setAudioFocus(Landroid/content/Context;Z)V

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/module/DefaultNormalShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 40
    const-string v1, "CameraApp"

    const-string v2, "#### Device().takePicture()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/module/DefaultNormalShot;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v2, "key_camera_auto_review"

    invoke-virtual {v1, v2}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/lge/camera/module/DefaultNormalShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    new-instance v2, Lcom/lge/camera/listeners/ShutterCallback;

    iget-object v3, p0, Lcom/lge/camera/module/DefaultNormalShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-direct {v2, v3}, Lcom/lge/camera/listeners/ShutterCallback;-><init>(Lcom/lge/camera/Mediator;)V

    new-instance v3, Lcom/lge/camera/listeners/RawPictureCallback;

    iget-object v4, p0, Lcom/lge/camera/module/DefaultNormalShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-direct {v3, v4}, Lcom/lge/camera/listeners/RawPictureCallback;-><init>(Lcom/lge/camera/Mediator;)V

    const/4 v4, 0x0

    new-instance v5, Lcom/lge/camera/listeners/JpegPictureCallback;

    iget-object v6, p0, Lcom/lge/camera/module/DefaultNormalShot;->mMediator:Lcom/lge/camera/CameraMediator;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/lge/camera/listeners/JpegPictureCallback;-><init>(Lcom/lge/camera/CameraMediator;Landroid/location/Location;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/module/DefaultNormalShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/camera/controller/camera/CameraPreviewController;->setPreviewing(Z)V

    .line 60
    const-string v1, "CameraApp"

    const-string v2, "[Module]DefaultNormalShot::takePicture-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return v8

    .line 49
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/lge/camera/module/DefaultNormalShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    new-instance v2, Lcom/lge/camera/listeners/ShutterCallback;

    iget-object v3, p0, Lcom/lge/camera/module/DefaultNormalShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-direct {v2, v3}, Lcom/lge/camera/listeners/ShutterCallback;-><init>(Lcom/lge/camera/Mediator;)V

    new-instance v3, Lcom/lge/camera/listeners/RawPictureCallback;

    iget-object v4, p0, Lcom/lge/camera/module/DefaultNormalShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-direct {v3, v4}, Lcom/lge/camera/listeners/RawPictureCallback;-><init>(Lcom/lge/camera/Mediator;)V

    new-instance v4, Lcom/lge/camera/listeners/PostviewCallback;

    iget-object v5, p0, Lcom/lge/camera/module/DefaultNormalShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-direct {v4, v5}, Lcom/lge/camera/listeners/PostviewCallback;-><init>(Lcom/lge/camera/Mediator;)V

    new-instance v5, Lcom/lge/camera/listeners/JpegPictureCallback;

    iget-object v6, p0, Lcom/lge/camera/module/DefaultNormalShot;->mMediator:Lcom/lge/camera/CameraMediator;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/lge/camera/listeners/JpegPictureCallback;-><init>(Lcom/lge/camera/CameraMediator;Landroid/location/Location;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "takePicture  failed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 57
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "takePicture  failed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
