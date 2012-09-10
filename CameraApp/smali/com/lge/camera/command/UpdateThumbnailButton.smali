.class public Lcom/lge/camera/command/UpdateThumbnailButton;
.super Lcom/lge/camera/command/Command;
.source "UpdateThumbnailButton.java"


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
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 20
    const-string v0, "CameraApp"

    const-string v1, "UpdateThumbnailButton()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.UpdateThumbnailButton"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/lge/camera/command/UpdateThumbnailButton;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/CameraApp;

    invoke-virtual {v0}, Lcom/lge/camera/CameraApp;->getPostviewRequestCode()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 25
    const-string v0, "CameraApp"

    const-string v1, "UpdateThumbnailButton() return"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/command/UpdateThumbnailButton;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/Camcorder;

    invoke-virtual {v0}, Lcom/lge/camera/Camcorder;->getPostviewRequestCode()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isAvailableLiveShot()Z

    move-result v0

    if-nez v0, :cond_2

    .line 31
    :cond_1
    const-string v0, "CameraApp"

    const-string v1, "UpdateThumbnailButton() return"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/command/UpdateThumbnailButton;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    new-instance v1, Lcom/lge/camera/command/UpdateThumbnailButton$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/UpdateThumbnailButton$1;-><init>(Lcom/lge/camera/command/UpdateThumbnailButton;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
