.class public Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;
.super Lcom/lge/camera/controller/PreviewController;
.source "CamcorderPreviewController.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PreviewController;-><init>(Lcom/lge/camera/Mediator;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected getMediator()Lcom/lge/camera/CamcorderMediator;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CamcorderMediator;

    return-object v0
.end method

.method protected bridge synthetic getMediator()Lcom/lge/camera/Mediator;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewSizeOnDevice()Ljava/lang/String;
    .locals 5

    .prologue
    .line 48
    const/4 v2, 0x0

    .line 49
    .local v2, previewSizeOnDevice:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CamcorderMediator;->isMMSIntent()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v3

    const-string v4, "key_preview_size_on_device"

    invoke-virtual {v3, v4}, Lcom/lge/camera/CamcorderMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, prefVideoSize:Ljava/lang/String;
    invoke-static {v1}, Lcom/lge/camera/properties/ProjectVariables;->isAvailableMmsResolution(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    move-object v2, v1

    .end local v1           #prefVideoSize:Ljava/lang/String;
    :goto_0
    move-object v3, v2

    .line 66
    :goto_1
    return-object v3

    .line 55
    .restart local v1       #prefVideoSize:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getMmsResolutions()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v2, v3, v4

    goto :goto_0

    .line 59
    .end local v1           #prefVideoSize:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v3

    const-string v4, "key_preview_size_on_device"

    invoke-virtual {v3, v4}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 60
    .local v0, pref:Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_2

    .line 61
    const-string v3, "CameraApp"

    const-string v4, " pref is null "

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const/4 v3, 0x0

    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getPreviewSizeOnScreen()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    .local v2, previewSizeOnScreen:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/CamcorderMediator;->isMMSIntent()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 27
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v4

    const-string v5, "key_preview_size_on_device"

    invoke-virtual {v4, v5}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 28
    .local v0, pref:Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_0

    .line 29
    const-string v4, "CameraApp"

    const-string v5, " pref is null "

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :goto_0
    return-object v3

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 33
    .local v1, prefVideoSizeIndex:I
    if-gez v1, :cond_1

    const/4 v1, 0x0

    .line 34
    :cond_1
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getExtraInfos()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v1           #prefVideoSizeIndex:I
    :goto_1
    move-object v3, v2

    .line 44
    goto :goto_0

    .line 37
    .end local v0           #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v4

    const-string v5, "key_preview_size_on_device"

    invoke-virtual {v4, v5}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 38
    .restart local v0       #pref:Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_3

    .line 39
    const-string v4, "CameraApp"

    const-string v5, " pref is null "

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_3
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 72
    invoke-super {p0}, Lcom/lge/camera/controller/PreviewController;->onResume()V

    .line 73
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 74
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->isMMSIntent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetCarrierCode()I

    move-result v0

    .line 76
    .local v0, mCarrierCode:I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v1, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->showRequestedSizeLimit()V

    .line 83
    .end local v0           #mCarrierCode:I
    :cond_1
    return-void
.end method
