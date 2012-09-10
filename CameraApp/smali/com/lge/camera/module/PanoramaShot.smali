.class public Lcom/lge/camera/module/PanoramaShot;
.super Lcom/lge/camera/module/Module;
.source "PanoramaShot.java"


# instance fields
.field mMediator:Lcom/lge/camera/CameraMediator;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 2
    .parameter "mediator"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/lge/camera/module/Module;-><init>(Lcom/lge/camera/Mediator;)V

    .line 17
    check-cast p1, Lcom/lge/camera/CameraMediator;

    .end local p1
    iput-object p1, p0, Lcom/lge/camera/module/PanoramaShot;->mMediator:Lcom/lge/camera/CameraMediator;

    .line 18
    const-string v0, "CameraApp"

    const-string v1, "Panorama Moduel Create !!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public doAfterCapture()V
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isB2Model()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/lge/camera/module/PanoramaShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->setAudioFocus(Landroid/content/Context;Z)V

    .line 55
    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public takePicture()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 22
    const-string v0, "CameraApp"

    const-string v1, "Panorama Module takePicture...."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isB2Model()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/lge/camera/module/PanoramaShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/lge/camera/util/Common;->setAudioFocus(Landroid/content/Context;Z)V

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/module/PanoramaShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->setMainButtonDisable()V

    .line 29
    iget-object v0, p0, Lcom/lge/camera/module/PanoramaShot;->mMediator:Lcom/lge/camera/CameraMediator;

    new-instance v1, Lcom/lge/camera/module/PanoramaShot$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/module/PanoramaShot$1;-><init>(Lcom/lge/camera/module/PanoramaShot;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/CameraMediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 46
    return v2
.end method
