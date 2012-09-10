.class public Lcom/lge/camera/command/setting/SetNormalizedHDROptions;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetNormalizedHDROptions.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/Mediator;)V

    .line 22
    return-void
.end method

.method private getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "settingItem"

    .prologue
    .line 104
    const-string v2, "not found"

    .line 106
    .local v2, stringValue:Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    .line 107
    .local v1, prefGroup:Lcom/lge/camera/setting/PreferenceGroup;
    if-nez v1, :cond_0

    .line 108
    const-string v4, "CameraApp"

    const-string v5, "prefGroup null error"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 120
    .end local v2           #stringValue:Ljava/lang/String;
    .local v3, stringValue:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 111
    .end local v3           #stringValue:Ljava/lang/String;
    .restart local v2       #stringValue:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, p1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 112
    .local v0, listPref:Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_1

    .line 113
    const-string v4, "CameraApp"

    const-string v5, "listPref null error"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 114
    .end local v2           #stringValue:Ljava/lang/String;
    .restart local v3       #stringValue:Ljava/lang/String;
    goto :goto_0

    .line 117
    .end local v3           #stringValue:Ljava/lang/String;
    .restart local v2       #stringValue:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 118
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "string listPref value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 120
    .end local v2           #stringValue:Ljava/lang/String;
    .restart local v3       #stringValue:Ljava/lang/String;
    goto :goto_0
.end method

.method private scaleParameter(ILandroid/hardware/Camera$Parameters;)I
    .locals 6
    .parameter "value"
    .parameter "params"

    .prologue
    .line 138
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v4

    int-to-float v1, v4

    .line 139
    .local v1, max:F
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v4

    int-to-float v2, v4

    .line 140
    .local v2, min:F
    sub-float v4, v1, v2

    const/high16 v5, 0x4140

    div-float v0, v4, v5

    .line 141
    .local v0, compensationFactor:F
    int-to-float v4, p1

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    float-to-int v5, v2

    add-int v3, v4, v5

    .line 143
    .local v3, scaledValue:I
    return v3
.end method

.method private setBrightnessPreviousPreferenceValue(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .parameter "settingItem"
    .parameter "parameters"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetNormalizedHDROptions;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, stringValue:Ljava/lang/String;
    const-string v3, "not found"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    const-string v3, "CameraApp"

    const-string v4, "Need to check string whether it is convertable or not."

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 131
    .local v1, value:I
    invoke-direct {p0, v1, p2}, Lcom/lge/camera/command/setting/SetNormalizedHDROptions;->scaleParameter(ILandroid/hardware/Camera$Parameters;)I

    move-result v2

    .line 133
    .local v2, valueForParameter:I
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KEY_BRIGHTNESS value to parameter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2, v2}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    goto :goto_0
.end method

.method private setColorEffectPreviousPreferenceValue(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "settingItem"
    .parameter "parameters"

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetNormalizedHDROptions;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, stringValue:Ljava/lang/String;
    const-string v1, "not found"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    const-string v1, "CameraApp"

    const-string v2, "Need to check string whether it is convertable or not."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_CAMERA_COLOREFFECT value to parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setFlashPreviousPreferenceValue(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "settingItem"
    .parameter "parameters"

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetNormalizedHDROptions;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, stringValue:Ljava/lang/String;
    const-string v1, "not found"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    const-string v1, "CameraApp"

    const-string v2, "Need to check string whether it is convertable or not."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_FLASH value to parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setISOPreviousPreferenceValue(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "settingItem"
    .parameter "parameters"

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetNormalizedHDROptions;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, stringValue:Ljava/lang/String;
    const-string v1, "not found"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    const-string v1, "CameraApp"

    const-string v2, "Need to check string whether it is convertable or not."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_ISO value to parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "iso"

    invoke-virtual {p2, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setMenuControlEnable(Ljava/lang/String;Z)V
    .locals 3
    .parameter "settingItem"
    .parameter "menuEnable"

    .prologue
    .line 95
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v0

    .line 96
    .local v0, prefGroup:Lcom/lge/camera/setting/PreferenceGroup;
    if-nez v0, :cond_0

    .line 97
    const-string v1, "CameraApp"

    const-string v2, "prefGroup null error"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1, p1, p2}, Lcom/lge/camera/Mediator;->setPreferenceMenuEnable(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private setScenePreviousPreferenceValue(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "settingItem"
    .parameter "parameters"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetNormalizedHDROptions;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, stringValue:Ljava/lang/String;
    const-string v1, "not found"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    const-string v1, "CameraApp"

    const-string v2, "Need to check string whether it is convertable or not."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_SCENE_MODE value to parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setWhiteBalancePreviousPreferenceValue(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "settingItem"
    .parameter "parameters"

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetNormalizedHDROptions;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, stringValue:Ljava/lang/String;
    const-string v1, "not found"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const-string v1, "CameraApp"

    const-string v2, "Need to check string whether it is convertable or not."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_CAMERA_WHITEBALANCE value to parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetNormalizedHDROptions;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 5
    .parameter "parameters"
    .parameter "arg"

    .prologue
    .line 30
    const/4 v2, 0x1

    .line 33
    .local v2, menuEnable:Z
    const-string v3, "hdr-mode"

    const-string v4, "0"

    invoke-virtual {p1, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v3

    const/16 v4, 0x15

    if-eq v3, v4, :cond_0

    .line 35
    const-string v3, "zsl"

    const-string v4, "on"

    invoke-virtual {p1, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    const-string v3, "key_brightness"

    invoke-direct {p0, v3, p1}, Lcom/lge/camera/command/setting/SetNormalizedHDROptions;->setBrightnessPreviousPreferenceValue(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)V

    .line 40
    const-string v3, "key_brightness"

    invoke-direct {p0, v3, v2}, Lcom/lge/camera/command/setting/SetNormalizedHDROptions;->setMenuControlEnable(Ljava/lang/String;Z)V

    .line 46
    const-string v3, "key_flash"

    invoke-virtual {p0, v3}, Lcom/lge/camera/command/setting/SetNormalizedHDROptions;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, flashMode:Ljava/lang/String;
    const-string v3, "not found"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 48
    const-string v3, "key_flash"

    invoke-direct {p0, v3, p1}, Lcom/lge/camera/command/setting/SetNormalizedHDROptions;->setFlashPreviousPreferenceValue(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)V

    .line 49
    const v3, 0x7f090021

    invoke-virtual {p0, v3}, Lcom/lge/camera/command/setting/SetNormalizedHDROptions;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageView;

    .line 50
    .local v1, icon:Lcom/lge/camera/components/RotateImageView;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    .line 51
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetNormalizedHDROptions;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateFlashIndicator()V

    .line 52
    const-string v3, "key_flash"

    invoke-direct {p0, v3, v2}, Lcom/lge/camera/command/setting/SetNormalizedHDROptions;->setMenuControlEnable(Ljava/lang/String;Z)V

    .line 58
    .end local v1           #icon:Lcom/lge/camera/components/RotateImageView;
    :cond_1
    const-string v3, "key_scene_mode"

    invoke-direct {p0, v3, p1}, Lcom/lge/camera/command/setting/SetNormalizedHDROptions;->setScenePreviousPreferenceValue(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)V

    .line 59
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetNormalizedHDROptions;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateSceneIndicator()V

    .line 60
    const-string v3, "key_scene_mode"

    invoke-direct {p0, v3, v2}, Lcom/lge/camera/command/setting/SetNormalizedHDROptions;->setMenuControlEnable(Ljava/lang/String;Z)V

    .line 65
    const-string v3, "key_iso"

    invoke-direct {p0, v3, p1}, Lcom/lge/camera/command/setting/SetNormalizedHDROptions;->setISOPreviousPreferenceValue(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)V

    .line 66
    const-string v3, "key_iso"

    invoke-direct {p0, v3, v2}, Lcom/lge/camera/command/setting/SetNormalizedHDROptions;->setMenuControlEnable(Ljava/lang/String;Z)V

    .line 71
    const-string v3, "key_camera_whitebalance"

    invoke-direct {p0, v3, p1}, Lcom/lge/camera/command/setting/SetNormalizedHDROptions;->setWhiteBalancePreviousPreferenceValue(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)V

    .line 72
    const-string v3, "key_camera_whitebalance"

    invoke-direct {p0, v3, v2}, Lcom/lge/camera/command/setting/SetNormalizedHDROptions;->setMenuControlEnable(Ljava/lang/String;Z)V

    .line 77
    const-string v3, "key_camera_coloreffect"

    invoke-direct {p0, v3, p1}, Lcom/lge/camera/command/setting/SetNormalizedHDROptions;->setColorEffectPreviousPreferenceValue(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)V

    .line 78
    const-string v3, "key_camera_coloreffect"

    invoke-direct {p0, v3, v2}, Lcom/lge/camera/command/setting/SetNormalizedHDROptions;->setMenuControlEnable(Ljava/lang/String;Z)V

    .line 83
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetNormalizedHDROptions;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateTimerIndicator()V

    .line 84
    const-string v3, "key_camera_timer"

    invoke-direct {p0, v3, v2}, Lcom/lge/camera/command/setting/SetNormalizedHDROptions;->setMenuControlEnable(Ljava/lang/String;Z)V

    .line 89
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetNormalizedHDROptions;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateFocusIndicator()V

    .line 90
    const-string v3, "key_focus"

    invoke-direct {p0, v3, v2}, Lcom/lge/camera/command/setting/SetNormalizedHDROptions;->setMenuControlEnable(Ljava/lang/String;Z)V

    .line 92
    return-void
.end method
