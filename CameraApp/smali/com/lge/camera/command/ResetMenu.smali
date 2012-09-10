.class public Lcom/lge/camera/command/ResetMenu;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "ResetMenu.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/Mediator;)V

    .line 23
    return-void
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 10
    .parameter "parameters"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 29
    invoke-virtual {p0}, Lcom/lge/camera/command/ResetMenu;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v3

    .line 31
    .local v3, prefGroup:Lcom/lge/camera/setting/PreferenceGroup;
    if-nez v3, :cond_0

    .line 32
    const-string v5, "CameraApp"

    const-string v6, "prefGroup null error"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_0
    return-void

    .line 35
    :cond_0
    const-string v5, "CameraApp"

    const-string v6, "ResetMenu - start"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v5, "key_camera_shot_mode"

    invoke-virtual {p0, v5}, Lcom/lge/camera/command/ResetMenu;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 38
    .local v4, shotMode:Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v5

    if-nez v5, :cond_1

    .line 40
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->isTimeMachineModeOn()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 41
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v5, Lcom/lge/camera/CameraMediator;

    const-string v6, "shotmode_timemachine"

    invoke-virtual {v5, v6}, Lcom/lge/camera/CameraMediator;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 42
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v6, "DefaultNormalShot"

    invoke-virtual {v5, v6}, Lcom/lge/camera/Mediator;->setModule(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/lge/camera/command/ResetMenu;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v5

    const-string v6, "key_time_machine"

    const-string v7, "off"

    invoke-virtual {v5, v6, v7}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 44
    invoke-virtual {p0}, Lcom/lge/camera/command/ResetMenu;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v5

    const-string v6, "key_camera_shot_mode"

    const-string v7, "shotmode_normal"

    invoke-virtual {v5, v6, v7}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v0, bundle:Landroid/os/Bundle;
    const-string v5, "subMenuClicked"

    invoke-virtual {v0, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v6, "com.lge.camera.command.SetTimeMachineMode"

    invoke-virtual {v5, v6, v0}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v5, Lcom/lge/camera/CameraMediator;

    const-string v6, "shotmode_normal"

    invoke-virtual {v5, v6}, Lcom/lge/camera/CameraMediator;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 63
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-virtual {v3}, Lcom/lge/camera/setting/PreferenceGroup;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 65
    invoke-virtual {v3, v1}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 66
    .local v2, listPref:Lcom/lge/camera/setting/ListPreference;
    if-nez v2, :cond_3

    .line 67
    const-string v5, "CameraApp"

    const-string v6, "listPref null error"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    .end local v1           #i:I
    .end local v2           #listPref:Lcom/lge/camera/setting/ListPreference;
    :cond_2
    const-string v5, "shotmode_normal"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "not found"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 51
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v5, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v5, v4}, Lcom/lge/camera/CameraMediator;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 52
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v6, "DefaultNormalShot"

    invoke-virtual {v5, v6}, Lcom/lge/camera/Mediator;->setModule(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/lge/camera/command/ResetMenu;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v5

    const-string v6, "key_camera_shot_mode"

    const-string v7, "shotmode_normal"

    invoke-virtual {v5, v6, v7}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 54
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v6, "com.lge.camera.command.setting.SetCameraShotMode"

    invoke-virtual {v5, v6, p1}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v5, Lcom/lge/camera/CameraMediator;

    const-string v6, "shotmode_normal"

    invoke-virtual {v5, v6}, Lcom/lge/camera/CameraMediator;->setPreviousShotModeString(Ljava/lang/String;)V

    goto :goto_1

    .line 71
    .restart local v1       #i:I
    .restart local v2       #listPref:Lcom/lge/camera/setting/ListPreference;
    :cond_3
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getEntryCommand()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 72
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 73
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 63
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 78
    .end local v2           #listPref:Lcom/lge/camera/setting/ListPreference;
    :cond_5
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v5

    if-nez v5, :cond_6

    .line 79
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/ZoomController;->reset()V

    .line 82
    :cond_6
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getBrightnessController()Lcom/lge/camera/controller/BrightnessController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/BrightnessController;->reset()V

    .line 84
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetFunctionFrontCameraBeautyShot()I

    move-result v5

    if-ne v5, v8, :cond_7

    iget-object v5, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v5

    if-ne v5, v8, :cond_7

    .line 87
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getBeautyshotController()Lcom/lge/camera/controller/BeautyshotController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/BeautyshotController;->reset()V

    .line 90
    :cond_7
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsLiveEffectSupported()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v5

    if-ne v5, v8, :cond_8

    .line 92
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/lge/camera/controller/PreviewController;->setLimitationToLiveeffect(Z)V

    .line 95
    :cond_8
    invoke-virtual {p0}, Lcom/lge/camera/command/ResetMenu;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 96
    invoke-virtual {p0}, Lcom/lge/camera/command/ResetMenu;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v5

    const-string v6, "com.lge.camera.command.setting.ApplyAllSettings"

    invoke-virtual {v5, v6, p1}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p0}, Lcom/lge/camera/command/ResetMenu;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v5

    const-string v6, "com.lge.camera.command.RemoveSettingMenu"

    invoke-virtual {v5, v6}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/lge/camera/command/ResetMenu;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/QuickFunctionController;->reset()V

    .line 99
    invoke-virtual {p0}, Lcom/lge/camera/command/ResetMenu;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/SettingController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/lge/camera/setting/SettingMenu;->setCurrentMenu(I)Z

    .line 100
    invoke-virtual {p0}, Lcom/lge/camera/command/ResetMenu;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getIndicatorController()Lcom/lge/camera/controller/IndicatorController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/IndicatorController;->updateSizeIndicator()V

    .line 101
    invoke-virtual {p0}, Lcom/lge/camera/command/ResetMenu;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getIndicatorController()Lcom/lge/camera/controller/IndicatorController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/IndicatorController;->updateStorageIndicator()V

    .line 103
    invoke-virtual {p0}, Lcom/lge/camera/command/ResetMenu;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v5

    const v6, 0x7f0b0024

    invoke-virtual {v5, v6}, Lcom/lge/camera/Mediator;->toast(I)V

    .line 104
    const-string v5, "CameraApp"

    const-string v6, "ResetMenu - end"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onExecuteAlone()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 109
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsLiveEffectSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isDownProfilesInFrontSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->restartPreview()V

    .line 115
    :cond_0
    return-void
.end method
