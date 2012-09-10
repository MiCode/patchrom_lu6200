.class public Lcom/lge/camera/controller/camera/CameraPreviewController;
.super Lcom/lge/camera/controller/PreviewController;
.source "CameraPreviewController.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/CameraMediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PreviewController;-><init>(Lcom/lge/camera/Mediator;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected getMediator()Lcom/lge/camera/CameraMediator;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    return-object v0
.end method

.method protected bridge synthetic getMediator()Lcom/lge/camera/Mediator;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewSizeOnDevice()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 56
    const/4 v2, 0x0

    .line 57
    .local v2, previewSizeOnDevice:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v5

    const-string v6, "key_camera_shot_mode"

    invoke-virtual {v5, v6}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, shotMode:Ljava/lang/String;
    const-string v5, "shotmode_normal"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "not found"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "shotmode_hdr"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->isTimeMachineModeOn()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 62
    :cond_0
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v5

    const-string v6, "key_camera_picturesize"

    invoke-virtual {v5, v6}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 63
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-nez v1, :cond_1

    .line 64
    const-string v5, "CameraApp"

    const-string v6, " pref is null "

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .end local v1           #pref:Lcom/lge/camera/setting/ListPreference;
    :goto_0
    return-object v4

    .line 67
    .restart local v1       #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_1
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo2()Ljava/lang/String;

    move-result-object v2

    .end local v1           #pref:Lcom/lge/camera/setting/ListPreference;
    :goto_1
    move-object v4, v2

    .line 77
    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/CameraMediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v5

    const-string v6, "key_camera_shot_mode"

    invoke-virtual {v5, v6}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 71
    .local v0, listPref:Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_3

    .line 72
    const-string v5, "CameraApp"

    const-string v6, " pref is null "

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_3
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public getPreviewSizeOnScreen()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 31
    const/4 v2, 0x0

    .line 32
    .local v2, previewSizeOnScreen:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v5

    const-string v6, "key_camera_shot_mode"

    invoke-virtual {v5, v6}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 33
    .local v3, shotMode:Ljava/lang/String;
    const-string v5, "shotmode_normal"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "not found"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "shotmode_hdr"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->isTimeMachineModeOn()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 37
    :cond_0
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v5

    const-string v6, "key_camera_picturesize"

    invoke-virtual {v5, v6}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 38
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-nez v1, :cond_1

    .line 39
    const-string v5, "CameraApp"

    const-string v6, " pref is null "

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .end local v1           #pref:Lcom/lge/camera/setting/ListPreference;
    :goto_0
    return-object v4

    .line 42
    .restart local v1       #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_1
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo3()Ljava/lang/String;

    move-result-object v2

    .end local v1           #pref:Lcom/lge/camera/setting/ListPreference;
    :goto_1
    move-object v4, v2

    .line 52
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/CameraMediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v5

    const-string v6, "key_camera_shot_mode"

    invoke-virtual {v5, v6}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 46
    .local v0, listPref:Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_3

    .line 47
    const-string v5, "CameraApp"

    const-string v6, " pref is null "

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_3
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo2()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/lge/olaworks/library/EngineProcessor;

    invoke-direct {v0}, Lcom/lge/olaworks/library/EngineProcessor;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 27
    :cond_0
    invoke-super {p0}, Lcom/lge/camera/controller/PreviewController;->onResume()V

    .line 28
    return-void
.end method
