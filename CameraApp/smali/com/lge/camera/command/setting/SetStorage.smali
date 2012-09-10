.class public Lcom/lge/camera/command/setting/SetStorage;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetStorage.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/Mediator;)V

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/command/setting/SetStorage;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method private updateIndicator()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getIndicatorController()Lcom/lge/camera/controller/IndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v1, Lcom/lge/camera/command/setting/SetStorage$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetStorage$1;-><init>(Lcom/lge/camera/command/setting/SetStorage;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 22
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetStorage;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 8
    .parameter "parameters"
    .parameter "arg"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 26
    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    .line 27
    .local v1, bundle:Landroid/os/Bundle;
    const-string v3, "allSetting"

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 29
    .local v0, allSetting:Z
    const-string v3, "CameraApp"

    const-string v4, "set storage"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    if-nez v3, :cond_1

    .line 31
    const-string v3, "CameraApp"

    const-string v4, "return : mMediator is null."

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v2

    .line 35
    .local v2, controller:Lcom/lge/camera/controller/StorageController;
    if-nez v2, :cond_2

    .line 36
    const-string v3, "CameraApp"

    const-string v4, "return : StorageController is null."

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {v2}, Lcom/lge/camera/controller/StorageController;->isExternalStorageRemoved()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 41
    invoke-virtual {v2, v7}, Lcom/lge/camera/controller/StorageController;->setCurrentStorage(I)V

    .line 42
    invoke-virtual {v2, v5}, Lcom/lge/camera/controller/StorageController;->setMenuEnable(Z)V

    .line 53
    :goto_1
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetStorage;->updateIndicator()V

    .line 55
    if-nez v0, :cond_0

    .line 56
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "com.lge.camera.command.UpdateThumbnailButton"

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 57
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetStorage;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getFileHelper()Lcom/lge/camera/util/FileNamingHelper;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetStorage;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getFileHelper()Lcom/lge/camera/util/FileNamingHelper;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/lge/camera/util/FileNamingHelper;->reload(Z)V

    goto :goto_0

    .line 44
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "key_storage"

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getEmmcName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 45
    invoke-virtual {v2, v7}, Lcom/lge/camera/controller/StorageController;->setCurrentStorage(I)V

    .line 50
    :goto_2
    invoke-virtual {v2, v7}, Lcom/lge/camera/controller/StorageController;->setMenuEnable(Z)V

    goto :goto_1

    .line 48
    :cond_4
    invoke-virtual {v2, v5}, Lcom/lge/camera/controller/StorageController;->setCurrentStorage(I)V

    goto :goto_2
.end method

.method protected onExecuteAlone()V
    .locals 4

    .prologue
    .line 76
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    if-nez v1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_2

    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, parentIndex:I
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getBackPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    const-string v2, "key_storage"

    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, -0x5

    .line 84
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/SettingController;->getCameraMainSettingMenu()Lcom/lge/camera/setting/CameraMainSettingMenu;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "key_storage"

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->getSettingIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/lge/camera/setting/CameraMainSettingMenu;->setSelectedChild(II)Z

    .line 85
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getFrontPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    const-string v2, "key_storage"

    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, -0x5

    .line 87
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/SettingController;->getCameraFrontSettingMenu()Lcom/lge/camera/setting/CameraFrontSettingMenu;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "key_storage"

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->getSettingIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/lge/camera/setting/CameraFrontSettingMenu;->setSelectedChild(II)Z

    goto :goto_0

    .line 90
    .end local v0           #parentIndex:I
    :cond_2
    const/4 v0, 0x0

    .line 92
    .restart local v0       #parentIndex:I
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getBackPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    const-string v2, "key_storage"

    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, -0x5

    .line 93
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/SettingController;->getVideoMainSettingMenu()Lcom/lge/camera/setting/VideoMainSettingMenu;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "key_storage"

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->getSettingIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/lge/camera/setting/VideoMainSettingMenu;->setSelectedChild(II)Z

    .line 95
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getFrontPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    const-string v2, "key_storage"

    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, -0x5

    .line 97
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/SettingController;->getVideoFrontSettingMenu()Lcom/lge/camera/setting/VideoFrontSettingMenu;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "key_storage"

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->getSettingIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/lge/camera/setting/VideoFrontSettingMenu;->setSelectedChild(II)Z

    goto/16 :goto_0
.end method
