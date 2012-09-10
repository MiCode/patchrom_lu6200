.class public Lcom/lge/camera/command/SwapCamera;
.super Lcom/lge/camera/command/Command;
.source "SwapCamera.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/Mediator;)V

    .line 17
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 21
    const-string v6, "CameraApp"

    const-string v7, "SwapCamera"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v7, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    invoke-virtual {v6, v7}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/lge/camera/command/SwapCamera;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v6

    if-eqz v6, :cond_0

    .line 25
    const-string v6, "CameraApp"

    const-string v7, "swapCamera return, not VIDEO_STATE_IDLE"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :goto_0
    return-void

    .line 29
    :cond_0
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 30
    const-string v6, "CameraApp"

    const-string v7, "swapCamera return, capturing now"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 33
    :cond_1
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6, v9}, Lcom/lge/camera/Mediator;->enableInput(Z)V

    .line 35
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/PreviewController;->isPreviewOnGoing()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 36
    const-string v6, "CameraApp"

    const-string v7, "swapCamera return, not PreviewOnGoing"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_2
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SwapCamera EXECUTE -start !!!, current_app_mode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v8}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " currentCameraMode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v8}, Lcom/lge/camera/Mediator;->getCameraMode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6, v10}, Lcom/lge/camera/Mediator;->setIsSwapCameraProcessing(Z)V

    .line 44
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->clearSubMenu()V

    .line 45
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v6

    invoke-virtual {v6, v9, v9}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuEnabled(ZZ)V

    .line 47
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v6

    if-ne v6, v10, :cond_5

    .line 48
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v7, "key_preview_size_on_device"

    invoke-virtual {v6, v7}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 49
    .local v5, videoSizeString:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 50
    const-string v6, "not found"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 51
    const-string v6, "CameraApp"

    const-string v7, "preview size did not find"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_3
    :goto_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsLiveEffectSupported()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isBackupLiveeffectValue()Z

    move-result v6

    if-nez v6, :cond_5

    .line 76
    const-string v6, "CameraApp"

    const-string v7, "we don\'t support backup liveeffect. so liveeffect value is initialized by off"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/PreviewController;->effectsActive()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v6

    iget-object v6, v6, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 78
    invoke-virtual {p0}, Lcom/lge/camera/command/SwapCamera;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v6

    const-string v7, "key_preview_size_on_device"

    iget-object v8, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v8}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v8

    iget-object v8, v8, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v10}, Lcom/lge/camera/setting/SettingMenu;->setSelectedChild(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 81
    invoke-virtual {p0}, Lcom/lge/camera/command/SwapCamera;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/lge/camera/controller/PreviewController;->setLimitationToLiveeffect(Z)V

    .line 83
    :cond_4
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v7, "key_live_effect"

    const-string v8, "off"

    invoke-virtual {v6, v7, v8}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 87
    .end local v5           #videoSizeString:Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v7, "key_focus"

    invoke-virtual {v6, v7}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "face_tracking"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 88
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v6, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->getFacePreviewController()Lcom/lge/camera/controller/camera/FacePreviewController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/camera/FacePreviewController;->initFaceDetectInfo()V

    .line 91
    :cond_6
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getCameraMode()I

    move-result v6

    if-nez v6, :cond_d

    .line 92
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6, v10}, Lcom/lge/camera/Mediator;->setCameraMode(I)V

    .line 94
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v7, "key_focus"

    invoke-virtual {v6, v7}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "face_tracking"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 95
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v6, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->getFacePreviewController()Lcom/lge/camera/controller/camera/FacePreviewController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/camera/FacePreviewController;->stopFaceDetection()V

    .line 101
    :cond_7
    :goto_2
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/SettingController;->applyCameraChange()V

    .line 103
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getNumberOfCameras()I

    move-result v1

    .line 104
    .local v1, numberOfCameras:I
    if-gtz v1, :cond_8

    .line 105
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "numberOfCameras errors : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v1, 0x2

    .line 109
    :cond_8
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    iget-object v7, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    rem-int/2addr v7, v1

    invoke-virtual {v6, v7}, Lcom/lge/camera/Mediator;->switchCameraId(I)V

    .line 111
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v7, "com.lge.camera.command.setting.SetCameraMode"

    invoke-virtual {v6, v7}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 113
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getCameraMode()I

    move-result v6

    if-ne v6, v10, :cond_e

    .line 114
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/FocusController;->hideFocus()Z

    .line 123
    :goto_3
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getIndicatorController()Lcom/lge/camera/controller/IndicatorController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/IndicatorController;->show()V

    .line 125
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v6

    if-nez v6, :cond_11

    .line 126
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v7, "key_camera_shot_mode"

    const-string v8, "shotmode_panorama"

    invoke-virtual {v6, v7, v8}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 127
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v6, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/camera/PanoramaController;->showPanoramaView()V

    .line 128
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/FocusController;->hideFocus()Z

    .line 133
    :goto_4
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v6, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateSizeIndicator()V

    .line 134
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v6, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateSceneIndicator()V

    .line 135
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v6, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateFlashIndicator()V

    .line 141
    :goto_5
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/ZoomController;->refreshController()V

    .line 142
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getBrightnessController()Lcom/lge/camera/controller/BrightnessController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/BrightnessController;->refreshController()V

    .line 143
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getBeautyshotController()Lcom/lge/camera/controller/BeautyshotController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/BeautyshotController;->refreshController()V

    .line 144
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v6

    if-nez v6, :cond_9

    .line 145
    invoke-virtual {p0}, Lcom/lge/camera/command/SwapCamera;->updateFocusIndicator()V

    .line 148
    :cond_9
    invoke-virtual {p0}, Lcom/lge/camera/command/SwapCamera;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/lge/camera/controller/StorageController;->checkStorage(Z)V

    .line 149
    invoke-virtual {p0}, Lcom/lge/camera/command/SwapCamera;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getIndicatorController()Lcom/lge/camera/controller/IndicatorController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/IndicatorController;->updateStorageIndicator()V

    .line 150
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6, v9}, Lcom/lge/camera/Mediator;->setIsSwapCameraProcessing(Z)V

    .line 157
    const-string v6, "CameraApp"

    const-string v7, "SwapCamera EXECUTE -end"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 53
    .end local v1           #numberOfCameras:I
    .restart local v5       #videoSizeString:Ljava/lang/String;
    :cond_a
    invoke-static {v5}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v4

    .line 55
    .local v4, videoSize:[I
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getCameraMode()I

    move-result v6

    if-nez v6, :cond_b

    .line 56
    invoke-static {v10}, Lcom/lge/camera/properties/ProjectVariables;->getLiveeffectResolutions(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v3

    .line 60
    .local v3, profileSize:[I
    :goto_6
    new-instance v2, Ljava/lang/Float;

    aget v6, v4, v10

    int-to-float v6, v6

    aget v7, v4, v9

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-direct {v2, v6}, Ljava/lang/Float;-><init>(F)V

    .line 61
    .local v2, oldRatio:Ljava/lang/Float;
    new-instance v0, Ljava/lang/Float;

    aget v6, v3, v10

    int-to-float v6, v6

    aget v7, v3, v9

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-direct {v0, v6}, Ljava/lang/Float;-><init>(F)V

    .line 63
    .local v0, newRatio:Ljava/lang/Float;
    invoke-virtual {v2, v0}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v6

    if-nez v6, :cond_c

    .line 64
    const-string v6, "CameraApp"

    const-string v7, "swpacamera set tvmode!!!"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/lge/camera/controller/PreviewController;->setPreviewMode(I)V

    .line 69
    :goto_7
    const/4 v2, 0x0

    .line 70
    goto/16 :goto_1

    .line 58
    .end local v0           #newRatio:Ljava/lang/Float;
    .end local v2           #oldRatio:Ljava/lang/Float;
    .end local v3           #profileSize:[I
    :cond_b
    invoke-static {v9}, Lcom/lge/camera/properties/ProjectVariables;->getLiveeffectResolutions(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v3

    .restart local v3       #profileSize:[I
    goto :goto_6

    .line 67
    .restart local v0       #newRatio:Ljava/lang/Float;
    .restart local v2       #oldRatio:Ljava/lang/Float;
    :cond_c
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/lge/camera/controller/PreviewController;->setPreviewMode(I)V

    goto :goto_7

    .line 98
    .end local v0           #newRatio:Ljava/lang/Float;
    .end local v2           #oldRatio:Ljava/lang/Float;
    .end local v3           #profileSize:[I
    .end local v4           #videoSize:[I
    .end local v5           #videoSizeString:Ljava/lang/String;
    :cond_d
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6, v9}, Lcom/lge/camera/Mediator;->setCameraMode(I)V

    goto/16 :goto_2

    .line 116
    .restart local v1       #numberOfCameras:I
    :cond_e
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->isCafSupported()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 117
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/FocusController;->hideFocus()Z

    goto/16 :goto_3

    .line 119
    :cond_f
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/FocusController;->showFocus()Z

    goto/16 :goto_3

    .line 130
    :cond_10
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v6, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/camera/PanoramaController;->removePanoramaView()V

    .line 131
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v6, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusRectangleInitialize()V

    goto/16 :goto_4

    .line 137
    :cond_11
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v6, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/camcorder/RecordingController;->show()V

    .line 138
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v6, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CamcorderMediator;->getIndicatorController()Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->updateFlashIndicator()V

    goto/16 :goto_5
.end method

.method public updateFocusIndicator()V
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/lge/camera/command/SwapCamera;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getIndicatorController()Lcom/lge/camera/controller/IndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v1, Lcom/lge/camera/command/SwapCamera$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/SwapCamera$1;-><init>(Lcom/lge/camera/command/SwapCamera;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 173
    :cond_0
    return-void
.end method
