.class public Lcom/lge/camera/command/DisplayPreview;
.super Lcom/lge/camera/command/Command;
.source "DisplayPreview.java"


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
    .locals 1

    .prologue
    .line 22
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/DisplayPreview;->execute(Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 7
    .parameter "arg"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 26
    const-string v3, "CameraApp"

    const-string v4, "DisplayPreview - start"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    .line 28
    check-cast v0, Landroid/os/Bundle;

    .line 29
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "fromJpegCallback"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 40
    .local v1, fromJpegCallback:Z
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/PreviewController;->show()V

    .line 41
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getIndicatorController()Lcom/lge/camera/controller/IndicatorController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/IndicatorController;->show()V

    .line 42
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_0

    .line 43
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/QuickFunctionController;->refresh()V

    .line 45
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/QuickFunctionController;->show()V

    .line 47
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v2

    .line 48
    .local v2, ppc:Lcom/lge/camera/controller/PreviewPanelController;
    invoke-virtual {v2, v6}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonVisible(Z)V

    .line 49
    invoke-virtual {v2, v6}, Lcom/lge/camera/controller/PreviewPanelController;->enableCommand(Z)V

    .line 50
    invoke-virtual {v2, v5}, Lcom/lge/camera/controller/PreviewPanelController;->showSubButtonInit(Z)V

    .line 52
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->isAttachIntent()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 53
    invoke-virtual {v2, v5}, Lcom/lge/camera/controller/PreviewPanelController;->setSwitcherVisible(Z)V

    .line 68
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_8

    .line 69
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "key_camera_shot_mode"

    const-string v5, "shotmode_panorama"

    invoke-virtual {v3, v4, v5}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 70
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v3, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/camera/PanoramaController;->showPanoramaView()V

    .line 75
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "key_focus"

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "face_tracking"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 76
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/FocusController;->showFocus()Z

    .line 79
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v3, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 80
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v3, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v3, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 82
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v3, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getImageListRotation()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 83
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v3, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getImageListRotation()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v3, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getImageListRotation()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 89
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->keepScreenOnAwhile()V

    .line 91
    const-string v3, "CameraApp"

    const-string v4, "DisplayPreview - end"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void

    .line 55
    :cond_4
    invoke-virtual {v2, v6}, Lcom/lge/camera/controller/PreviewPanelController;->setSwitcherVisible(Z)V

    .line 56
    if-nez v1, :cond_6

    .line 57
    const-string v3, "CameraApp"

    const-string v4, "DisplayPreview thumbnail update"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "com.lge.camera.command.UpdateThumbnailButton"

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 59
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "key_camera_shot_mode"

    const-string v5, "shotmode_continuous"

    invoke-virtual {v3, v4, v5}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 60
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v3

    const-string v4, "StorageControllerLockKey"

    invoke-virtual {v3, v4}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonEnable(Ljava/lang/String;)V

    .line 62
    :cond_5
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "com.lge.camera.command.Rotate"

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 64
    :cond_6
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v3

    const-string v4, "StorageControllerLockKey"

    invoke-virtual {v3, v4}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonEnable(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 72
    :cond_7
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v3, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/camera/PanoramaController;->removePanoramaView()V

    goto/16 :goto_1

    .line 87
    :cond_8
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/FocusController;->showFocus()Z

    goto :goto_2
.end method
