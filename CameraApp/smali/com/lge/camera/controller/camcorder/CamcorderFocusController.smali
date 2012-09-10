.class public Lcom/lge/camera/controller/camcorder/CamcorderFocusController;
.super Lcom/lge/camera/controller/FocusController;
.source "CamcorderFocusController.java"


# instance fields
.field protected mAutoFocusCallback:Lcom/lge/camera/listeners/CamcorderAutoFocusCallback;


# direct methods
.method public constructor <init>(Lcom/lge/camera/CamcorderMediator;)V
    .locals 1
    .parameter "mediator"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/FocusController;-><init>(Lcom/lge/camera/Mediator;)V

    .line 18
    new-instance v0, Lcom/lge/camera/listeners/CamcorderAutoFocusCallback;

    invoke-direct {v0, p1}, Lcom/lge/camera/listeners/CamcorderAutoFocusCallback;-><init>(Lcom/lge/camera/CamcorderMediator;)V

    iput-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->mAutoFocusCallback:Lcom/lge/camera/listeners/CamcorderAutoFocusCallback;

    .line 20
    new-instance v0, Lcom/lge/camera/listeners/CamcorderContinuousFocusCallback;

    invoke-direct {v0, p1}, Lcom/lge/camera/listeners/CamcorderContinuousFocusCallback;-><init>(Lcom/lge/camera/CamcorderMediator;)V

    iput-object v0, p0, Lcom/lge/camera/controller/FocusController;->mContinuousFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 21
    return-void
.end method


# virtual methods
.method public doFocus(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 25
    return-void
.end method

.method public hideFocus()Z
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Lcom/lge/camera/controller/FocusController;->hideFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090050

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/camera/properties/ProjectVariables;->isCafAnimationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "CameraApp"

    const-string v1, "### hideFocus & unregister"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->unregisterCallback()V

    .line 57
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/lge/camera/controller/FocusController;->onPause()V

    .line 32
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/camera/properties/ProjectVariables;->isCafAnimationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->unregisterCallback()V

    .line 35
    :cond_0
    return-void
.end method

.method public showFocus()Z
    .locals 2

    .prologue
    .line 39
    invoke-super {p0}, Lcom/lge/camera/controller/FocusController;->showFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/camera/properties/ProjectVariables;->isCafAnimationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "CameraApp"

    const-string v1, "### showFocus & register"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->registerCallback()V

    .line 45
    const/4 v0, 0x1

    .line 47
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
