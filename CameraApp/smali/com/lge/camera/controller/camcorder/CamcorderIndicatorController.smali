.class public Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;
.super Lcom/lge/camera/controller/IndicatorController;
.source "CamcorderIndicatorController.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/IndicatorController;-><init>(Lcom/lge/camera/Mediator;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected getMediator()Lcom/lge/camera/CamcorderMediator;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CamcorderMediator;

    return-object v0
.end method

.method protected bridge synthetic getMediator()Lcom/lge/camera/Mediator;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    return-object v0
.end method

.method public initController()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const v5, 0x7f09001b

    const/4 v4, 0x0

    .line 29
    const v1, 0x7f090066

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->inflateStub(I)Landroid/view/View;

    .line 31
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iput-boolean v3, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 35
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->updateSizeIndicator()V

    .line 36
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->updateAudioIndicator()V

    .line 37
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->updateGpsIndicator()V

    .line 38
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->updateFlashIndicator()V

    .line 39
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->updateStorageIndicator()V

    .line 40
    invoke-super {p0}, Lcom/lge/camera/controller/IndicatorController;->initController()V

    .line 42
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->getApplicationMode()I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 44
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v0

    .line 49
    .local v0, degree:I
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v2, 0x7f090022

    invoke-virtual {v1, v2, v0, v5, v4}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 50
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v2, 0x7f090021

    invoke-virtual {v1, v2, v0, v5, v4}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 51
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v2, 0x7f090025

    invoke-virtual {v1, v2, v0, v5, v4}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 52
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v2, 0x7f090020

    invoke-virtual {v1, v2, v0, v5, v4}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 53
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v2, 0x7f09001f

    const v3, 0x7f090026

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 54
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v2, 0x7f090023

    invoke-virtual {v1, v2, v0, v5, v4}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 55
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v2, 0x7f09001d

    invoke-virtual {v1, v2, v0, v5, v4}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 56
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v2, 0x7f09001e

    invoke-virtual {v1, v2, v0, v5, v4}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 57
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v2, 0x7f090024

    invoke-virtual {v1, v2, v0, v5, v4}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 59
    .end local v0           #degree:I
    :cond_0
    return-void
.end method

.method public updateAudioIndicator()V
    .locals 5

    .prologue
    .line 75
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAudioIndicator : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const v2, 0x7f090020

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 80
    .local v0, icon:Lcom/lge/camera/components/RotateImageView;
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/SettingController;->getSetting()Lcom/lge/camera/setting/Setting;

    move-result-object v2

    const-string v3, "key_video_audio_recording"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/Setting;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 81
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public updateFlashIndicator()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 87
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    const v2, 0x7f090021

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 92
    .local v0, icon:Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 94
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 95
    invoke-virtual {v0, v4}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    .line 100
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    const-string v3, "key_flash"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_3

    .line 101
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/SettingController;->getSetting()Lcom/lge/camera/setting/Setting;

    move-result-object v2

    const-string v3, "key_flash"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/Setting;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 102
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_3

    .line 103
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 97
    .end local v1           #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_1

    .line 107
    :cond_3
    invoke-virtual {v0, v4}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateGpsIndicator()V
    .locals 5

    .prologue
    .line 111
    iget-boolean v3, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v3, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const v3, 0x7f09001f

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 115
    .local v0, icon:Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CamcorderMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/SettingController;->getSetting()Lcom/lge/camera/setting/Setting;

    move-result-object v3

    const-string v4, "key_camera_tag_location"

    invoke-virtual {v3, v4}, Lcom/lge/camera/setting/Setting;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 117
    .local v2, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CamcorderMediator;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    .line 119
    .local v1, loc:Landroid/location/Location;
    if-nez v1, :cond_2

    .line 120
    const-string v3, "CameraApp"

    const-string v4, "Location info not available"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 123
    :cond_2
    const v3, 0x7f020066

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public updateSizeIndicator()V
    .locals 4

    .prologue
    .line 62
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    const-string v3, "key_preview_size_on_device"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 66
    const v2, 0x7f090022

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 67
    .local v0, icon:Lcom/lge/camera/components/RotateImageView;
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/SettingController;->getSetting()Lcom/lge/camera/setting/Setting;

    move-result-object v2

    const-string v3, "key_preview_size_on_device"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/Setting;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 68
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0
.end method
