.class public abstract Lcom/lge/camera/controller/SettingController;
.super Lcom/lge/camera/controller/Controller;
.source "SettingController.java"


# static fields
.field private static needToChange:Z

.field private static needToChangeString:Ljava/lang/String;


# instance fields
.field protected mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

.field protected mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

.field protected mCameraFrontSetting:Lcom/lge/camera/setting/CameraSetting;

.field protected mCameraFrontSettingMenu:Lcom/lge/camera/setting/CameraFrontSettingMenu;

.field protected mCameraMainSetting:Lcom/lge/camera/setting/CameraSetting;

.field protected mCameraMainSettingMenu:Lcom/lge/camera/setting/CameraMainSettingMenu;

.field protected mSetting:Lcom/lge/camera/setting/Setting;

.field protected mSettingInit:Z

.field protected mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

.field protected mVideoFrontSettingMenu:Lcom/lge/camera/setting/VideoFrontSettingMenu;

.field protected mVideoMainSettingMenu:Lcom/lge/camera/setting/VideoMainSettingMenu;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 1
    .parameter "mediator"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/Mediator;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/SettingController;->mSettingInit:Z

    .line 41
    return-void
.end method


# virtual methods
.method public applyCameraChange()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSetting:Lcom/lge/camera/setting/CameraSetting;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    .line 70
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSettingMenu:Lcom/lge/camera/setting/CameraMainSettingMenu;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    .line 84
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSetting:Lcom/lge/camera/setting/CameraSetting;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    .line 73
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSettingMenu:Lcom/lge/camera/setting/CameraFrontSettingMenu;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    .line 78
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mVideoMainSettingMenu:Lcom/lge/camera/setting/VideoMainSettingMenu;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    goto :goto_0

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    .line 81
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mVideoFrontSettingMenu:Lcom/lge/camera/setting/VideoFrontSettingMenu;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    goto :goto_0
.end method

.method public abstract displaySettingView()V
.end method

.method public getCameraFrontSettingMenu()Lcom/lge/camera/setting/CameraFrontSettingMenu;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSettingMenu:Lcom/lge/camera/setting/CameraFrontSettingMenu;

    return-object v0
.end method

.method public getCameraMainSettingMenu()Lcom/lge/camera/setting/CameraMainSettingMenu;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSettingMenu:Lcom/lge/camera/setting/CameraMainSettingMenu;

    return-object v0
.end method

.method public getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    return-object v0
.end method

.method public getSetting(I)I
    .locals 1
    .parameter "settingIndex"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/Setting;->getSetting(I)I

    move-result v0

    return v0
.end method

.method public getSetting(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSetting()Lcom/lge/camera/setting/Setting;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    return-object v0
.end method

.method public getSettingValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/Setting;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoFrontSettingMenu()Lcom/lge/camera/setting/VideoFrontSettingMenu;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mVideoFrontSettingMenu:Lcom/lge/camera/setting/VideoFrontSettingMenu;

    return-object v0
.end method

.method public getVideoMainSettingMenu()Lcom/lge/camera/setting/VideoMainSettingMenu;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mVideoMainSettingMenu:Lcom/lge/camera/setting/VideoMainSettingMenu;

    return-object v0
.end method

.method public initController()V
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/lge/camera/setting/CameraSetting;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Main_CameraAppConfig"

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/camera/setting/CameraSetting;-><init>(Lcom/lge/camera/Mediator;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSetting:Lcom/lge/camera/setting/CameraSetting;

    .line 47
    new-instance v0, Lcom/lge/camera/setting/CameraSetting;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Secondary_CameraAppConfig"

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/camera/setting/CameraSetting;-><init>(Lcom/lge/camera/Mediator;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSetting:Lcom/lge/camera/setting/CameraSetting;

    .line 48
    new-instance v0, Lcom/lge/camera/setting/CameraMainSettingMenu;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/camera/setting/CameraMainSettingMenu;-><init>(Lcom/lge/camera/Mediator;Landroid/content/Context;Lcom/lge/camera/setting/CameraSetting;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSettingMenu:Lcom/lge/camera/setting/CameraMainSettingMenu;

    .line 49
    new-instance v0, Lcom/lge/camera/setting/CameraFrontSettingMenu;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/camera/setting/CameraFrontSettingMenu;-><init>(Lcom/lge/camera/Mediator;Landroid/content/Context;Lcom/lge/camera/setting/CameraSetting;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSettingMenu:Lcom/lge/camera/setting/CameraFrontSettingMenu;

    .line 57
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->applyCameraChange()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/SettingController;->mSettingInit:Z

    .line 60
    return-void

    .line 51
    :cond_0
    new-instance v0, Lcom/lge/camera/setting/VideoSetting;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Main_CameraAppConfig"

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/camera/setting/VideoSetting;-><init>(Lcom/lge/camera/Mediator;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

    .line 52
    new-instance v0, Lcom/lge/camera/setting/VideoSetting;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Secondary_CameraAppConfig"

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/camera/setting/VideoSetting;-><init>(Lcom/lge/camera/Mediator;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

    .line 53
    new-instance v0, Lcom/lge/camera/setting/VideoMainSettingMenu;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/camera/setting/VideoMainSettingMenu;-><init>(Lcom/lge/camera/Mediator;Landroid/content/Context;Lcom/lge/camera/setting/VideoSetting;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mVideoMainSettingMenu:Lcom/lge/camera/setting/VideoMainSettingMenu;

    .line 54
    new-instance v0, Lcom/lge/camera/setting/VideoFrontSettingMenu;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/camera/setting/VideoFrontSettingMenu;-><init>(Lcom/lge/camera/Mediator;Landroid/content/Context;Lcom/lge/camera/setting/VideoSetting;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mVideoFrontSettingMenu:Lcom/lge/camera/setting/VideoFrontSettingMenu;

    goto :goto_0
.end method

.method public abstract isNullSettingView()Z
.end method

.method public abstract isSettingViewRemoving()Z
.end method

.method public abstract isVisible()Z
.end method

.method public abstract removeChildSettingView()V
.end method

.method public abstract removeSettingView()V
.end method

.method public abstract removeSettingViewAll()V
.end method

.method public setLiveeffectLimit()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x1

    .line 246
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v8}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/camera/controller/PreviewController;->effectsActive()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 247
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v8}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v8

    const-string v9, "key_preview_size_on_device"

    invoke-virtual {v8, v9}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v5

    .line 248
    .local v5, videoSizePref:Lcom/lge/camera/setting/ListPreference;
    if-nez v5, :cond_1

    .line 249
    const-string v8, "CameraApp"

    const-string v9, "videoSizePref is null"

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .end local v5           #videoSizePref:Lcom/lge/camera/setting/ListPreference;
    :cond_0
    :goto_0
    return-object v7

    .line 252
    .restart local v5       #videoSizePref:Lcom/lge/camera/setting/ListPreference;
    :cond_1
    const-string v7, "CameraApp"

    const-string v8, "setLiveeffectLimit"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 255
    .local v4, values:[Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v7

    const-string v8, "key_preview_size_on_device"

    invoke-virtual {v7, v8}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v6

    .line 256
    .local v6, videoSizePrefIndex:I
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    .line 258
    const/4 v7, 0x5

    if-lt v6, v7, :cond_4

    .line 259
    const/4 v3, 0x0

    .line 260
    .local v3, size:Ljava/lang/String;
    sput-boolean v10, Lcom/lge/camera/controller/SettingController;->needToChange:Z

    .line 261
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v4

    .local v2, len:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 262
    aget-object v7, v4, v1

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 263
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getCameraMode()I

    move-result v7

    invoke-static {v3, v7}, Lcom/lge/camera/properties/ProjectVariables;->isAvailableLiveeffectResolution(Ljava/lang/String;I)Z

    move-result v0

    .line 264
    .local v0, available:Z
    if-eqz v0, :cond_2

    sget-object v7, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 265
    const/4 v7, 0x0

    sput-boolean v7, Lcom/lge/camera/controller/SettingController;->needToChange:Z

    .line 267
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v7

    const-string v8, "key_preview_size_on_device"

    invoke-virtual {v7, v8, v3, v0}, Lcom/lge/camera/setting/SettingMenu;->setEnabled(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 270
    .end local v0           #available:Z
    :cond_3
    sget-boolean v7, Lcom/lge/camera/controller/SettingController;->needToChange:Z

    if-eqz v7, :cond_4

    .line 271
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getCameraMode()I

    move-result v7

    invoke-static {v7}, Lcom/lge/camera/properties/ProjectVariables;->getLiveeffectResolutions(I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    .line 274
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #size:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v7

    const-string v8, "key_preview_size_on_device"

    sget-object v9, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v10}, Lcom/lge/camera/setting/SettingMenu;->setSelectedChild(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 276
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v7

    new-instance v8, Lcom/lge/camera/controller/SettingController$2;

    invoke-direct {v8, p0}, Lcom/lge/camera/controller/SettingController$2;-><init>(Lcom/lge/camera/controller/SettingController;)V

    invoke-virtual {v7, v8}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 294
    sget-object v7, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public setMmsLimit(Z)V
    .locals 14
    .parameter "mmsVideo"

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 189
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v9}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v9

    const-string v10, "key_preview_size_on_device"

    invoke-virtual {v9, v10}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v7

    .line 190
    .local v7, videoSizePref:Lcom/lge/camera/setting/ListPreference;
    if-nez v7, :cond_0

    .line 191
    const-string v9, "CameraApp"

    const-string v10, "videoSizePref is null"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-virtual {v7}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 196
    .local v6, values:[Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v9}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v9

    const-string v10, "key_preview_size_on_device"

    invoke-virtual {v9, v10}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v8

    .line 197
    .local v8, videoSizePrefIndex:I
    invoke-virtual {v7}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, selectedResolution:Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 200
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/camera/Mediator;->isMMSIntent()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 201
    if-lt v8, v13, :cond_3

    .line 203
    const/4 v5, 0x0

    .line 204
    .local v5, size:Ljava/lang/String;
    const/4 v3, 0x1

    .line 205
    .local v3, needChange:Z
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v6

    .local v2, len:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 206
    aget-object v9, v6, v1

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 207
    invoke-static {v5}, Lcom/lge/camera/properties/ProjectVariables;->isAvailableMmsResolution(Ljava/lang/String;)Z

    move-result v0

    .line 208
    .local v0, available:Z
    if-eqz v0, :cond_1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 209
    const/4 v3, 0x0

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v9

    const-string v10, "key_preview_size_on_device"

    invoke-virtual {v9, v10, v5, v0}, Lcom/lge/camera/setting/SettingMenu;->setEnabled(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 213
    .end local v0           #available:Z
    :cond_2
    if-eqz v3, :cond_3

    .line 214
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getMmsResolutions()[Ljava/lang/String;

    move-result-object v9

    aget-object v4, v9, v12

    .line 229
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #needChange:Z
    .end local v5           #size:Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/camera/Mediator;->isAttachIntent()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 230
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v9

    const-string v10, "key_video_auto_review"

    invoke-virtual {v9, v10, v12}, Lcom/lge/camera/setting/SettingMenu;->setEnabled(Ljava/lang/String;Z)V

    .line 234
    :goto_3
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v9

    const-string v10, "key_preview_size_on_device"

    invoke-virtual {v9, v10, v4, v11}, Lcom/lge/camera/setting/SettingMenu;->setSelectedChild(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 236
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v9

    new-instance v10, Lcom/lge/camera/controller/SettingController$1;

    invoke-direct {v10, p0}, Lcom/lge/camera/controller/SettingController$1;-><init>(Lcom/lge/camera/controller/SettingController;)V

    invoke-virtual {v9, v10}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 220
    :cond_4
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v9}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/camera/controller/PreviewController;->effectsActive()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 221
    const-string v9, "CameraApp"

    const-string v10, "skip! resolution is already setted by effectActive "

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 225
    :cond_5
    if-lt v8, v13, :cond_3

    .line 226
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v9

    const-string v10, "key_preview_size_on_device"

    invoke-virtual {v9, v10, v11}, Lcom/lge/camera/setting/SettingMenu;->setAllChidMenuEnabled(Ljava/lang/String;Z)V

    goto :goto_2

    .line 232
    :cond_6
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v9

    const-string v10, "key_video_auto_review"

    invoke-virtual {v9, v10, v11}, Lcom/lge/camera/setting/SettingMenu;->setEnabled(Ljava/lang/String;Z)V

    goto :goto_3
.end method

.method public setSetting(II)Z
    .locals 2
    .parameter "settingIndex"
    .parameter "settingValue"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_camera_auto_review"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_camera_tag_location"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_video_audio_recording"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_video_auto_review"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_storage"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_camera_shutter_sound"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_voiceshutter"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 110
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/controller/SettingController;->setSettingAllPreferences(II)Z

    move-result v0

    .line 124
    :goto_0
    return v0

    .line 113
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportManualAntibanding()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_camera_anti_banding"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/controller/SettingController;->setSettingAllPreferences(II)Z

    move-result v0

    goto :goto_0

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_restore"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_help_guide"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 121
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 124
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/setting/Setting;->setSetting(II)Z

    move-result v0

    goto :goto_0
.end method

.method public setSetting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 128
    const-string v0, "key_camera_auto_review"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_camera_tag_location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_video_audio_recording"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_video_auto_review"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_storage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_camera_shutter_sound"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_voiceshutter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/controller/SettingController;->setSettingAllPreferences(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 149
    :goto_0
    return v0

    .line 138
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportManualAntibanding()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    const-string v0, "key_camera_anti_banding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/controller/SettingController;->setSettingAllPreferences(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 144
    :cond_2
    const-string v0, "key_restore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "key_help_guide"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 149
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/setting/Setting;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected setSettingAllPreferences(II)Z
    .locals 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 171
    const/4 v1, 0x1

    .line 172
    .local v1, mainSetting:Z
    const/4 v0, 0x1

    .line 174
    .local v0, frontSetting:Z
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_1

    .line 175
    iget-object v2, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-virtual {v2, p1, p2}, Lcom/lge/camera/setting/CameraSetting;->setSetting(II)Z

    move-result v1

    .line 176
    iget-object v2, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-virtual {v2, p1, p2}, Lcom/lge/camera/setting/CameraSetting;->setSetting(II)Z

    move-result v0

    .line 182
    :goto_0
    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    .line 183
    :cond_0
    const/4 v2, 0x0

    .line 185
    :goto_1
    return v2

    .line 178
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-virtual {v2, p1, p2}, Lcom/lge/camera/setting/VideoSetting;->setSetting(II)Z

    move-result v1

    .line 179
    iget-object v2, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-virtual {v2, p1, p2}, Lcom/lge/camera/setting/VideoSetting;->setSetting(II)Z

    move-result v0

    goto :goto_0

    .line 185
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method protected setSettingAllPreferences(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 153
    const/4 v1, 0x1

    .line 154
    .local v1, mainSetting:Z
    const/4 v0, 0x1

    .line 156
    .local v0, frontSetting:Z
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_1

    .line 157
    iget-object v2, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-virtual {v2, p1, p2}, Lcom/lge/camera/setting/CameraSetting;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 158
    iget-object v2, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-virtual {v2, p1, p2}, Lcom/lge/camera/setting/CameraSetting;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 164
    :goto_0
    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    .line 165
    :cond_0
    const/4 v2, 0x0

    .line 167
    :goto_1
    return v2

    .line 160
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-virtual {v2, p1, p2}, Lcom/lge/camera/setting/VideoSetting;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 161
    iget-object v2, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-virtual {v2, p1, p2}, Lcom/lge/camera/setting/VideoSetting;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 167
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public setTimeMachineLimit(Z)V
    .locals 13
    .parameter "set"

    .prologue
    .line 300
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isTimeMachineShotSizeLimit()Z

    move-result v10

    if-nez v10, :cond_0

    .line 354
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v10}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v10

    const-string v11, "key_camera_picturesize"

    invoke-virtual {v10, v11}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v5

    .line 304
    .local v5, pictureSizePref:Lcom/lge/camera/setting/ListPreference;
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v10}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v10

    const-string v11, "key_camera_picturesize"

    invoke-virtual {v10, v11}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v7

    .line 306
    .local v7, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v5, :cond_1

    if-nez v7, :cond_2

    .line 307
    :cond_1
    const-string v10, "CameraApp"

    const-string v11, "pictureSizePref or pref is null"

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :cond_2
    const-string v10, "CameraApp"

    const-string v11, "setTimeMachineLimit"

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v9

    .line 313
    .local v9, values:[Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v10}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v10

    const-string v11, "key_camera_picturesize"

    invoke-virtual {v10, v11}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v6

    .line 314
    .local v6, pictureSizePrefIndex:I
    const/4 v3, 0x0

    .line 315
    .local v3, limitSize:Z
    invoke-virtual {v7}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 317
    .local v4, mSelectedSize:Ljava/lang/String;
    const/4 v10, 0x5

    if-lt v6, v10, :cond_4

    .line 318
    const/4 v8, 0x0

    .line 322
    .local v8, size:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v9

    .local v2, len:I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 323
    aget-object v10, v9, v1

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 325
    const/4 v0, 0x1

    .line 327
    .local v0, available:Z
    invoke-static {v8}, Lcom/lge/camera/properties/ProjectVariables;->isTimeMachineShotSizeAvailable(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    if-eqz p1, :cond_3

    .line 328
    const/4 v3, 0x1

    .line 329
    const/4 v0, 0x0

    .line 332
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v10

    const-string v11, "key_camera_picturesize"

    invoke-virtual {v10, v11, v8, v0}, Lcom/lge/camera/setting/SettingMenu;->setEnabled(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 334
    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    .line 335
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v10

    const-string v11, "key_camera_picturesize"

    invoke-virtual {v10, v11, v8, v0}, Lcom/lge/camera/setting/SettingMenu;->setSelectedChild(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 341
    .end local v0           #available:Z
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v8           #size:Ljava/lang/String;
    :cond_4
    invoke-static {v4}, Lcom/lge/camera/properties/ProjectVariables;->isTimeMachineShotSizeAvailable(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 342
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v10

    const-string v11, "key_camera_picturesize"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v4, v12}, Lcom/lge/camera/setting/SettingMenu;->setSelectedChild(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 346
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v10

    new-instance v11, Lcom/lge/camera/controller/SettingController$3;

    invoke-direct {v11, p0}, Lcom/lge/camera/controller/SettingController$3;-><init>(Lcom/lge/camera/controller/SettingController;)V

    invoke-virtual {v10, v11}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 322
    .restart local v0       #available:Z
    .restart local v1       #i:I
    .restart local v2       #len:I
    .restart local v8       #size:Ljava/lang/String;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public startRotation(I)V
    .locals 0
    .parameter "degree"

    .prologue
    .line 378
    return-void
.end method
