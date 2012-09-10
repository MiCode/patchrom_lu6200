.class public Lcom/lge/camera/command/OnDelayOff;
.super Lcom/lge/camera/command/Command;
.source "OnDelayOff.java"


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

.method private afterDisplayPreview()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 86
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.Rotate"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_4

    .line 89
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->showPanoramaView()V

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_focus"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "face_tracking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->showFocus()Z

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getImageListRotation()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getImageListRotation()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getImageListRotation()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 109
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lge/camera/controller/StorageController;->checkStorage(Z)V

    .line 110
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->keepScreenOnAwhile()V

    .line 111
    return-void

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->removePanoramaView()V

    goto :goto_0

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->showFocus()Z

    .line 107
    invoke-virtual {p0}, Lcom/lge/camera/command/OnDelayOff;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lge/camera/Mediator;->setVideoState(I)V

    goto :goto_1
.end method

.method private excuteDisplayPreview()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 38
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    if-nez v2, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "key_camera_shot_mode"

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, shotMode:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "shotmode_normal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "not found"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "shotmode_hdr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v2

    if-eq v2, v4, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->isTimeMachineModeOn()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 49
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/PreviewController;->startPreview()V

    .line 52
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/PreviewController;->show()V

    .line 53
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getIndicatorController()Lcom/lge/camera/controller/IndicatorController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/IndicatorController;->show()V

    .line 54
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/QuickFunctionController;->show()V

    .line 55
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/QuickFunctionController;->refresh()V

    .line 56
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/lge/camera/controller/PreviewPanelController;->enableCommand(Z)V

    .line 57
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonEnable()V

    .line 59
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 61
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v2, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camcorder/RecordingController;->show()V

    .line 63
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->isMMSIntent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetCarrierCode()I

    move-result v0

    .line 65
    .local v0, mCarrierCode:I
    const/4 v2, 0x5

    if-eq v0, v2, :cond_5

    const/16 v2, 0x15

    if-ne v0, v2, :cond_0

    .line 67
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v2, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->showRequestedSizeLimit()V

    goto/16 :goto_0
.end method

.method private excuteDisplayPreviewPanel()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 74
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonVisible(Z)V

    .line 75
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonDisable()V

    .line 76
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->showSubButtonInit(Z)V

    .line 78
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isAttachIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setSwitcherVisible(Z)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setSwitcherVisible(Z)V

    goto :goto_0
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 21
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/lge/camera/command/OnDelayOff;->execute(Ljava/lang/Object;)V

    .line 22
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 2
    .parameter "arg"

    .prologue
    .line 26
    const-string v0, "CameraApp"

    const-string v1, "OnDelayOff"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isAttachIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 32
    :cond_0
    invoke-direct {p0}, Lcom/lge/camera/command/OnDelayOff;->excuteDisplayPreviewPanel()V

    .line 33
    invoke-direct {p0}, Lcom/lge/camera/command/OnDelayOff;->excuteDisplayPreview()V

    .line 34
    invoke-direct {p0}, Lcom/lge/camera/command/OnDelayOff;->afterDisplayPreview()V

    goto :goto_0
.end method
