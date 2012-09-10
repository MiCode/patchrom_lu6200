.class public Lcom/lge/camera/command/ShowSettingMenu;
.super Lcom/lge/camera/command/Command;
.source "ShowSettingMenu.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/Mediator;)V

    .line 15
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    const-string v1, "CameraApp"

    const-string v2, "ClickQuickFunctionButton5  !!!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/lge/camera/controller/ZoomController;->showControl(Z)V

    .line 22
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getBrightnessController()Lcom/lge/camera/controller/BrightnessController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/lge/camera/controller/BrightnessController;->showControl(Z)V

    .line 24
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 25
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v1, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camcorder/RecordingController;->hide()V

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/lge/camera/controller/QuickFunctionController;->showSubMenu(Z)V

    .line 29
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonVisible(Z)V

    .line 31
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->clearSubMenu()V

    .line 32
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v2, "com.lge.camera.command.DisplaySettingMenu"

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 34
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->hideOsd()V

    .line 36
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useToggleQFL()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    const-string v2, "key_setting"

    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v0

    .line 38
    .local v0, menuIndex:I
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuSelected(IZ)V

    .line 41
    .end local v0           #menuIndex:I
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getIndicatorController()Lcom/lge/camera/controller/IndicatorController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/IndicatorController;->show()V

    .line 42
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v2, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/lge/camera/controller/PreviewPanelController;->setSwitcherVisible(Z)V

    .line 45
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/PreviewPanelController;->showResetSubButton()V

    .line 46
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/lge/camera/controller/PreviewPanelController;->showHelpSubButton(Z)V

    .line 47
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/PreviewPanelController;->getMainBarAlphaValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/controller/PreviewPanelController;->setMainBarAlpha(I)V

    .line 51
    return-void
.end method
