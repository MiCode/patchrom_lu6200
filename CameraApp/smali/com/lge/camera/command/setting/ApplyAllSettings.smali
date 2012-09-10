.class public Lcom/lge/camera/command/setting/ApplyAllSettings;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "ApplyAllSettings.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/Mediator;)V

    .line 21
    return-void
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 10
    .parameter "parameters"

    .prologue
    .line 25
    const-string v7, "CameraApp"

    const-string v8, "ApplyAllSettings-start"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/ApplyAllSettings;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v5

    .line 31
    .local v5, prefGroup:Lcom/lge/camera/setting/PreferenceGroup;
    if-nez v5, :cond_0

    .line 32
    const-string v7, "CameraApp"

    const-string v8, "prefGroup null error"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v7

    if-nez v7, :cond_1

    .line 37
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v8, "key_camera_shot_mode"

    const-string v9, "shotmode_hdr"

    invoke-virtual {v7, v8, v9}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 38
    const-string v7, "CameraApp"

    const-string v8, "Set CAMERA_IMAGE_SIZE and SET_PREDEFINED_HDR_OPTIONS again when apply all settings."

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/ApplyAllSettings;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v7

    const-string v8, "HDRShot"

    invoke-virtual {v7, v8}, Lcom/lge/camera/Mediator;->setModule(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/ApplyAllSettings;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v7

    const-string v8, "com.lge.camera.command.setting.SetCameraImageSize"

    invoke-virtual {v7, v8, p1}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/ApplyAllSettings;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v7

    const-string v8, "com.lge.camera.command.setting.SetZoom"

    invoke-virtual {v7, v8, p1}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v8, "com.lge.camera.command.setting.SetPredefinedHDROptions"

    invoke-virtual {v7, v8, p1}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v0, bundle:Landroid/os/Bundle;
    const-string v7, "allSetting"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    invoke-virtual {v5}, Lcom/lge/camera/setting/PreferenceGroup;->size()I

    move-result v6

    .line 59
    .local v6, prefSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v6, :cond_5

    .line 60
    invoke-virtual {v5, v2}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v4

    .line 61
    .local v4, listPref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v4, :cond_2

    .line 62
    invoke-virtual {v4}, Lcom/lge/camera/setting/ListPreference;->getEntryCommand()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, command:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, listKey:Ljava/lang/String;
    const-string v7, "key_restore"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "key_help_guide"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 59
    .end local v1           #command:Ljava/lang/String;
    .end local v3           #listKey:Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 68
    .restart local v1       #command:Ljava/lang/String;
    .restart local v3       #listKey:Ljava/lang/String;
    :cond_3
    const-string v7, "key_camera_anti_banding"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetCarrierCode()I

    move-result v7

    const/4 v8, 0x4

    if-eq v7, v8, :cond_4

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetCarrierCode()I

    move-result v7

    const/4 v8, 0x7

    if-eq v7, v8, :cond_4

    .line 71
    const-string v7, "CameraApp"

    const-string v8, "kddi ApplyAllSettings"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 74
    :cond_4
    if-eqz v1, :cond_2

    .line 76
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/ApplyAllSettings;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v7

    invoke-virtual {v7, v1, p1, v0}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 80
    .end local v1           #command:Ljava/lang/String;
    .end local v3           #listKey:Ljava/lang/String;
    .end local v4           #listPref:Lcom/lge/camera/setting/ListPreference;
    :cond_5
    const-string v7, "CameraApp"

    const-string v8, "ApplyAllSettings-end"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
