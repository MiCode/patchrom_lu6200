.class public Lcom/lge/camera/command/SetCameraIdBeforeStartInit;
.super Lcom/lge/camera/command/Command;
.source "SetCameraIdBeforeStartInit.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/Mediator;)V

    .line 18
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 22
    const-string v4, "CameraApp"

    const-string v5, "SetCameraIdBeforeStartInit-start"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v3

    .line 25
    .local v3, settingController:Lcom/lge/camera/controller/SettingController;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/lge/camera/controller/SettingController;->initController()V

    .line 27
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v4

    if-nez v4, :cond_7

    .line 28
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v4, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v1

    .line 29
    .local v1, cameraPreviewController:Lcom/lge/camera/controller/camera/CameraPreviewController;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/CameraPreviewController;->initController()V

    .line 31
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/CameraPreviewController;->getCameraPreview()Lcom/lge/camera/components/CameraPreview;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 35
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v4

    if-ne v4, v6, :cond_6

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetFunctionFrontCameraBeautyShot()I

    move-result v4

    if-ne v4, v6, :cond_6

    .line 38
    const/4 v2, 0x1

    .line 60
    .end local v1           #cameraPreviewController:Lcom/lge/camera/controller/camera/CameraPreviewController;
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/PreviewPanelController;->initController()V

    .line 61
    :cond_3
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/QuickFunctionController;->initController()V

    .line 62
    :cond_4
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getIndicatorController()Lcom/lge/camera/controller/IndicatorController;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getIndicatorController()Lcom/lge/camera/controller/IndicatorController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/IndicatorController;->initController()V

    .line 64
    :cond_5
    const-string v4, "CameraApp"

    const-string v5, "SetCameraIdBeforeStartInit-end"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void

    .line 40
    .restart local v1       #cameraPreviewController:Lcom/lge/camera/controller/camera/CameraPreviewController;
    :cond_6
    const/4 v2, 0x0

    .line 41
    .local v2, render:Z
    invoke-virtual {v1, v2}, Lcom/lge/camera/controller/camera/CameraPreviewController;->setupHolder(Z)V

    goto :goto_0

    .line 46
    .end local v1           #cameraPreviewController:Lcom/lge/camera/controller/camera/CameraPreviewController;
    .end local v2           #render:Z
    :cond_7
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v4, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    .line 48
    .local v0, camcorderPreviewController:Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v4, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CamcorderMediator;->isAttachMode()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v4, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CamcorderMediator;->isAttachIntent()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 49
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v4, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CamcorderMediator;->readVideoIntentExtras()V

    .line 52
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v4, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CamcorderMediator;->getRequestedVideoSizeLimit()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8

    if-eqz v3, :cond_8

    .line 53
    const-string v4, "key_preview_size_on_device"

    const-string v5, "320x240"

    invoke-virtual {v3, v4, v5}, Lcom/lge/camera/controller/SettingController;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 56
    :cond_8
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->initController()V

    goto :goto_0
.end method
