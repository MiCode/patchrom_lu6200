.class public Lcom/lge/camera/command/setting/SetPredefinedHDROptions;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetPredefinedHDROptions.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/Mediator;)V

    .line 20
    return-void
.end method

.method private resetBrightnessToDefault(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .parameter "parameters"

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetPredefinedHDROptions;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v3

    const-string v4, "key_brightness"

    invoke-virtual {v3, v4}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 185
    .local v0, preference:Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 187
    .local v1, value:I
    invoke-direct {p0, v1, p1}, Lcom/lge/camera/command/setting/SetPredefinedHDROptions;->scaleParameter(ILandroid/hardware/Camera$Parameters;)I

    move-result v2

    .line 189
    .local v2, valueForParameter:I
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "brightness value to parameter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 192
    .end local v1           #value:I
    .end local v2           #valueForParameter:I
    :cond_0
    return-void
.end method

.method private scaleParameter(ILandroid/hardware/Camera$Parameters;)I
    .locals 6
    .parameter "value"
    .parameter "params"

    .prologue
    .line 195
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v4

    int-to-float v1, v4

    .line 196
    .local v1, max:F
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v4

    int-to-float v2, v4

    .line 197
    .local v2, min:F
    sub-float v4, v1, v2

    const/high16 v5, 0x4140

    div-float v0, v4, v5

    .line 198
    .local v0, compensationFactor:F
    int-to-float v4, p1

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    float-to-int v5, v2

    add-int v3, v4, v5

    .line 200
    .local v3, scaledValue:I
    return v3
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetPredefinedHDROptions;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 9
    .parameter "parameters"
    .parameter "arg"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 28
    const-string v4, "CameraApp"

    const-string v5, "SetPredefinedHDROptions - start"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v3, ""

    .line 31
    .local v3, settingValue:Ljava/lang/String;
    const/4 v2, 0x0

    .line 34
    .local v2, menuEnable:Z
    const-string v4, "hdr-mode"

    const-string v5, "1"

    invoke-virtual {p1, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v4

    const/16 v5, 0x15

    if-eq v4, v5, :cond_0

    .line 36
    const-string v4, "zsl"

    const-string v5, "off"

    invoke-virtual {p1, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_0
    const-string v4, "key_brightness"

    invoke-virtual {p0, v4}, Lcom/lge/camera/command/setting/SetPredefinedHDROptions;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "6"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 42
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetPredefinedHDROptions;->resetBrightnessToDefault(Landroid/hardware/Camera$Parameters;)V

    .line 46
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v5, "key_brightness"

    invoke-virtual {v4, v5, v2}, Lcom/lge/camera/Mediator;->setPreferenceMenuEnable(Ljava/lang/String;Z)V

    .line 51
    const-string v4, "key_flash"

    invoke-virtual {p0, v4}, Lcom/lge/camera/command/setting/SetPredefinedHDROptions;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "off"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 52
    const-string v3, "off"

    .line 53
    const-string v4, "CameraApp"

    const-string v5, "Set flash mode to [%s]"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v3, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 63
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v5, "key_flash"

    invoke-virtual {v4, v5, v2}, Lcom/lge/camera/Mediator;->setPreferenceMenuEnable(Ljava/lang/String;Z)V

    .line 68
    const-string v4, "key_scene_mode"

    invoke-virtual {p0, v4}, Lcom/lge/camera/command/setting/SetPredefinedHDROptions;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "auto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 69
    const-string v3, "auto"

    .line 70
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KEY_SCENE_MODE ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1, v3}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 80
    :cond_3
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v5, "key_scene_mode"

    invoke-virtual {v4, v5, v2}, Lcom/lge/camera/Mediator;->setPreferenceMenuEnable(Ljava/lang/String;Z)V

    .line 85
    const-string v4, "key_iso"

    invoke-virtual {p0, v4}, Lcom/lge/camera/command/setting/SetPredefinedHDROptions;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "auto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 86
    const-string v3, "auto"

    .line 87
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configValue ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v4, "iso"

    invoke-virtual {p1, v4, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_4
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v5, "key_iso"

    invoke-virtual {v4, v5, v2}, Lcom/lge/camera/Mediator;->setPreferenceMenuEnable(Ljava/lang/String;Z)V

    .line 97
    const-string v4, "key_camera_whitebalance"

    invoke-virtual {p0, v4}, Lcom/lge/camera/command/setting/SetPredefinedHDROptions;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "auto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 98
    const-string v3, "auto"

    .line 99
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KEY_CAMERA_WHITEBALANCE ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1, v3}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 104
    :cond_5
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v5, "key_camera_whitebalance"

    invoke-virtual {v4, v5, v2}, Lcom/lge/camera/Mediator;->setPreferenceMenuEnable(Ljava/lang/String;Z)V

    .line 109
    const-string v4, "key_camera_coloreffect"

    invoke-virtual {p0, v4}, Lcom/lge/camera/command/setting/SetPredefinedHDROptions;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 110
    const-string v3, "none"

    .line 111
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KEY_CAMERA_COLOREFFECT ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1, v3}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 116
    :cond_6
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v5, "key_camera_coloreffect"

    invoke-virtual {v4, v5, v2}, Lcom/lge/camera/Mediator;->setPreferenceMenuEnable(Ljava/lang/String;Z)V

    .line 121
    const-string v4, "key_camera_timer"

    invoke-virtual {p0, v4}, Lcom/lge/camera/command/setting/SetPredefinedHDROptions;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 122
    const-string v3, "0"

    .line 123
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetPredefinedHDROptions;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v4

    const-string v5, "key_camera_timer"

    invoke-virtual {v4, v5, v3}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 124
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KEY_CAMERA_TIMER ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_7
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetPredefinedHDROptions;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateTimerIndicator()V

    .line 134
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v5, "key_camera_timer"

    invoke-virtual {v4, v5, v2}, Lcom/lge/camera/Mediator;->setPreferenceMenuEnable(Ljava/lang/String;Z)V

    .line 139
    const-string v4, "key_focus"

    invoke-virtual {p0, v4}, Lcom/lge/camera/command/setting/SetPredefinedHDROptions;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "auto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 140
    const-string v3, "auto"

    .line 141
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetPredefinedHDROptions;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v4

    const-string v5, "key_focus"

    invoke-virtual {v4, v5, v3}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 142
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KEY_FOCUS ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_8
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v5, "key_focus"

    invoke-virtual {v4, v5, v2}, Lcom/lge/camera/Mediator;->setPreferenceMenuEnable(Ljava/lang/String;Z)V

    .line 156
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isVoiceShutter()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 157
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v5, "key_voiceshutter"

    invoke-virtual {v4, v5}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, mVoiceShutterValue:Ljava/lang/String;
    if-eqz v1, :cond_9

    const-string v4, "on"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 160
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v5, "com.lge.camera.command.SetVoiceShutterMode"

    invoke-virtual {v4, v5}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 166
    .end local v1           #mVoiceShutterValue:Ljava/lang/String;
    :cond_9
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v0

    .line 167
    .local v0, controller:Lcom/lge/camera/controller/StorageController;
    if-eqz v0, :cond_a

    .line 168
    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->isExternalStorageRemoved()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 169
    invoke-virtual {v0, v7}, Lcom/lge/camera/controller/StorageController;->setCurrentStorage(I)V

    .line 170
    invoke-virtual {v0, v8}, Lcom/lge/camera/controller/StorageController;->setMenuEnable(Z)V

    .line 181
    :cond_a
    :goto_0
    return-void

    .line 172
    :cond_b
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v5, "key_storage"

    invoke-virtual {v4, v5}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getEmmcName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 173
    invoke-virtual {v0, v7}, Lcom/lge/camera/controller/StorageController;->setCurrentStorage(I)V

    .line 177
    :goto_1
    invoke-virtual {v0, v7}, Lcom/lge/camera/controller/StorageController;->setMenuEnable(Z)V

    goto :goto_0

    .line 175
    :cond_c
    invoke-virtual {v0, v8}, Lcom/lge/camera/controller/StorageController;->setCurrentStorage(I)V

    goto :goto_1
.end method
