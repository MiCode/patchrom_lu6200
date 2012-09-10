.class public Lcom/lge/camera/command/StartPreview;
.super Lcom/lge/camera/command/Command;
.source "StartPreview.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/Mediator;)V

    .line 10
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 15
    invoke-static {}, Lcom/lge/camera/util/Common;->isScreenLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    const-string v0, "CameraApp"

    const-string v1, "Wait for lockscreen uncovered..."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/lge/camera/command/StartPreview;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    const-string v1, "com.lge.camera.command.StartPreview"

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 25
    :goto_0
    return-void

    .line 20
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "Lockscreen uncovered. Start preview."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lge/camera/controller/PreviewController;->setLockScreenPreventPreview(Z)V

    .line 22
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->startPreview()V

    .line 23
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->keepScreenOnAwhile()V

    goto :goto_0
.end method
