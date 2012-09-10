.class public Lcom/lge/camera/command/setting/SetCameraShowCapturedImage;
.super Lcom/lge/camera/command/setting/CameraSettingCommand;
.source "SetCameraShowCapturedImage.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/CameraSettingCommand;-><init>(Lcom/lge/camera/Mediator;)V

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

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetCameraShowCapturedImage;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 2
    .parameter "parameters"
    .parameter "arg"

    .prologue
    .line 21
    const-string v0, "CameraApp"

    const-string v1, "SetCameraShowCapturedImage executed"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method protected onExecuteAlone()V
    .locals 5

    .prologue
    .line 25
    const/4 v1, 0x0

    .line 27
    .local v1, parentIndex:I
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getBackPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    const-string v3, "key_camera_auto_review"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v2, -0x5

    .line 28
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/SettingController;->getCameraMainSettingMenu()Lcom/lge/camera/setting/CameraMainSettingMenu;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShowCapturedImage;->getSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/setting/CameraSettingMenu;->getSelectedChildIndex()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/lge/camera/setting/CameraMainSettingMenu;->setSelectedChild(II)Z

    .line 30
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "key_camera_auto_review"

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, autoReviewSetting:Ljava/lang/String;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AutoReview = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getFrontPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    const-string v3, "key_camera_auto_review"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v2, -0x5

    .line 34
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/SettingController;->getCameraFrontSettingMenu()Lcom/lge/camera/setting/CameraFrontSettingMenu;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraShowCapturedImage;->getSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/setting/CameraSettingMenu;->getSelectedChildIndex()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/lge/camera/setting/CameraFrontSettingMenu;->setSelectedChild(II)Z

    .line 36
    :cond_0
    return-void
.end method
