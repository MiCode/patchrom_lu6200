.class public Lcom/lge/camera/command/setting/SetVideoShowRecordedVideo;
.super Lcom/lge/camera/command/setting/CamcorderSettingCommand;
.source "SetVideoShowRecordedVideo.java"


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


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetVideoShowRecordedVideo;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 4
    .parameter "parameters"
    .parameter "arg"

    .prologue
    .line 21
    const-string v1, "key_video_auto_review"

    invoke-virtual {p0, v1}, Lcom/lge/camera/command/setting/SetVideoShowRecordedVideo;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, value:Ljava/lang/String;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetVideoShowRecordedVideo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method protected onExecuteAlone()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 28
    .local v0, parentIndex:I
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getBackPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    const-string v2, "key_video_auto_review"

    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, -0x5

    .line 29
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/SettingController;->getVideoMainSettingMenu()Lcom/lge/camera/setting/VideoMainSettingMenu;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetVideoShowRecordedVideo;->getSettingMenu()Lcom/lge/camera/setting/VideoSettingMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/setting/VideoSettingMenu;->getSelectedChildIndex()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/lge/camera/setting/VideoMainSettingMenu;->setSelectedChild(II)Z

    .line 31
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getFrontPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    const-string v2, "key_video_auto_review"

    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, -0x5

    .line 33
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/SettingController;->getVideoFrontSettingMenu()Lcom/lge/camera/setting/VideoFrontSettingMenu;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetVideoShowRecordedVideo;->getSettingMenu()Lcom/lge/camera/setting/VideoSettingMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/setting/VideoSettingMenu;->getSelectedChildIndex()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/lge/camera/setting/VideoFrontSettingMenu;->setSelectedChild(II)Z

    .line 35
    :cond_0
    return-void
.end method
