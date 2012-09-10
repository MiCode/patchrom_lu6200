.class public Lcom/lge/camera/command/setting/SetVideoVoice;
.super Lcom/lge/camera/command/setting/CamcorderSettingCommand;
.source "SetVideoVoice.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/CamcorderSettingCommand;-><init>(Lcom/lge/camera/Mediator;)V

    .line 13
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/command/setting/SetVideoVoice;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetVideoVoice;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 4
    .parameter "parameters"
    .parameter "arg"

    .prologue
    .line 21
    const-string v1, "key_video_audio_recording"

    invoke-virtual {p0, v1}, Lcom/lge/camera/command/setting/SetVideoVoice;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, value:Ljava/lang/String;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetVideoVoice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetVideoVoice;->updateIndicator()V

    .line 24
    return-void
.end method

.method protected onExecuteAlone()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 39
    .local v0, parentIndex:I
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    const-string v2, "key_video_audio_recording"

    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getBackPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    const-string v2, "key_video_audio_recording"

    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, -0x5

    .line 43
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/SettingController;->getVideoMainSettingMenu()Lcom/lge/camera/setting/VideoMainSettingMenu;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetVideoVoice;->getSettingMenu()Lcom/lge/camera/setting/VideoSettingMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/setting/VideoSettingMenu;->getSelectedChildIndex()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/lge/camera/setting/VideoMainSettingMenu;->setSelectedChild(II)Z

    .line 45
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getFrontPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    const-string v2, "key_video_audio_recording"

    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, -0x5

    .line 47
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/SettingController;->getVideoFrontSettingMenu()Lcom/lge/camera/setting/VideoFrontSettingMenu;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetVideoVoice;->getSettingMenu()Lcom/lge/camera/setting/VideoSettingMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/setting/VideoSettingMenu;->getSelectedChildIndex()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/lge/camera/setting/VideoFrontSettingMenu;->setSelectedChild(II)Z

    goto :goto_0
.end method

.method public updateIndicator()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v1, Lcom/lge/camera/command/setting/SetVideoVoice$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetVideoVoice$1;-><init>(Lcom/lge/camera/command/setting/SetVideoVoice;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 33
    return-void
.end method
