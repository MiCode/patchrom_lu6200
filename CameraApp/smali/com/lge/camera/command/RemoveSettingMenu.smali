.class public Lcom/lge/camera/command/RemoveSettingMenu;
.super Lcom/lge/camera/command/Command;
.source "RemoveSettingMenu.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/Mediator;)V

    .line 15
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/RemoveSettingMenu;->execute(Ljava/lang/Object;)V

    .line 20
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 7
    .parameter "arg"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 23
    const-string v2, "CameraApp"

    const-string v3, "RemoveSettingMenu"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    .line 25
    check-cast v0, Landroid/os/Bundle;

    .line 26
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "showAll"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 28
    .local v1, showAll:Z
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonVisible(Z)V

    .line 30
    if-eqz v1, :cond_2

    .line 31
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/QuickFunctionController;->show()V

    .line 32
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/SettingController;->removeSettingView()V

    .line 36
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getIndicatorController()Lcom/lge/camera/controller/IndicatorController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/IndicatorController;->show()V

    .line 37
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/lge/camera/controller/PreviewPanelController;->showSubButtonInit(Z)V

    .line 39
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->isAttachIntent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 40
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/lge/camera/controller/PreviewPanelController;->setSwitcherVisible(Z)V

    .line 45
    :goto_1
    if-eqz v1, :cond_0

    .line 46
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_5

    .line 47
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_panorama"

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 48
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v2, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camera/PanoramaController;->showPanoramaView()V

    .line 52
    :goto_2
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v2, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camera/CameraFocusController;->showFocus()Z

    .line 58
    :cond_0
    :goto_3
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v2, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camcorder/RecordingController;->needProgressBar()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v2, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camcorder/RecordingController;->show()V

    .line 63
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/lge/camera/controller/StorageController;->checkStorage(Z)V

    .line 64
    return-void

    .line 34
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/SettingController;->removeSettingViewAll()V

    goto/16 :goto_0

    .line 42
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/lge/camera/controller/PreviewPanelController;->setSwitcherVisible(Z)V

    goto :goto_1

    .line 50
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v2, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camera/PanoramaController;->removePanoramaView()V

    goto :goto_2

    .line 54
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v2, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camcorder/RecordingController;->show()V

    .line 55
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v2, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getFocusController()Lcom/lge/camera/controller/camcorder/CamcorderFocusController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->showFocus()Z

    goto :goto_3
.end method
