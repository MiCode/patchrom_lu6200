.class public Lcom/lge/camera/command/setting/SetCameraShutterSound;
.super Lcom/lge/camera/command/setting/CameraSettingCommand;
.source "SetCameraShutterSound.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/CameraSettingCommand;-><init>(Lcom/lge/camera/Mediator;)V

    .line 12
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/command/setting/SetCameraShutterSound;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/command/setting/SetCameraShutterSound;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetCameraShutterSound;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 3
    .parameter "parameters"
    .parameter "arg"

    .prologue
    .line 20
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportShutterSoundOff()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v2, "key_camera_shutter_sound"

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    :goto_0
    return-void

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v2, "key_camera_shutter_sound"

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 25
    .local v0, index:I
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getSoundController()Lcom/lge/camera/controller/SoundController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/camera/controller/SoundController;->changeShutterSound(I)V

    goto :goto_0
.end method

.method protected onExecuteAlone()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 32
    .local v0, parentIndex:I
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getBackPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    const-string v2, "key_camera_shutter_sound"

    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, -0x5

    .line 33
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/SettingController;->getCameraMainSettingMenu()Lcom/lge/camera/setting/CameraMainSettingMenu;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShutterSound;->getSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/setting/CameraSettingMenu;->getSelectedChildIndex()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/lge/camera/setting/CameraMainSettingMenu;->setSelectedChild(II)Z

    .line 35
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getFrontPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    const-string v2, "key_camera_shutter_sound"

    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, -0x5

    .line 37
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/SettingController;->getCameraFrontSettingMenu()Lcom/lge/camera/setting/CameraFrontSettingMenu;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShutterSound;->getSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/setting/CameraSettingMenu;->getSelectedChildIndex()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/lge/camera/setting/CameraFrontSettingMenu;->setSelectedChild(II)Z

    .line 40
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportShutterSoundOff()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v2, "key_camera_shutter_sound"

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v2, Lcom/lge/camera/command/setting/SetCameraShutterSound$1;

    invoke-direct {v2, p0}, Lcom/lge/camera/command/setting/SetCameraShutterSound$1;-><init>(Lcom/lge/camera/command/setting/SetCameraShutterSound;)V

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
