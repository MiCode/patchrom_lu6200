.class public Lcom/lge/camera/listeners/CamcorderContinuousFocusCallback;
.super Ljava/lang/Object;
.source "CamcorderContinuousFocusCallback.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# instance fields
.field private mMediator:Lcom/lge/camera/CamcorderMediator;


# direct methods
.method public constructor <init>(Lcom/lge/camera/CamcorderMediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/lge/camera/listeners/CamcorderContinuousFocusCallback;->mMediator:Lcom/lge/camera/CamcorderMediator;

    .line 14
    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 4
    .parameter "focusedState"
    .parameter "camera"

    .prologue
    .line 18
    const-string v1, "CameraApp"

    const-string v2, "onCotinuousFocus()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v1, p0, Lcom/lge/camera/listeners/CamcorderContinuousFocusCallback;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->isPreviewing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/listeners/CamcorderContinuousFocusCallback;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/lge/camera/listeners/CamcorderContinuousFocusCallback;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->isPausing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/lge/camera/listeners/CamcorderContinuousFocusCallback;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->getFocusController()Lcom/lge/camera/controller/camcorder/CamcorderFocusController;

    move-result-object v0

    .line 32
    .local v0, focusController:Lcom/lge/camera/controller/camcorder/CamcorderFocusController;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### onCotinuousFocus(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    if-eqz p1, :cond_2

    .line 34
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->setFocusState(I)V

    .line 38
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/listeners/CamcorderContinuousFocusCallback;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->getFocusController()Lcom/lge/camera/controller/camcorder/CamcorderFocusController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->updateFocusIndicator()V

    goto :goto_0

    .line 36
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->setFocusState(I)V

    goto :goto_1
.end method
