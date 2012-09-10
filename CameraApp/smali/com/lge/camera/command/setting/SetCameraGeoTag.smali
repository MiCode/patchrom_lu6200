.class public Lcom/lge/camera/command/setting/SetCameraGeoTag;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetCameraGeoTag.java"


# instance fields
.field private mMediator:Lcom/lge/camera/Mediator;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/Mediator;)V

    .line 25
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mMediator:Lcom/lge/camera/Mediator;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/command/setting/SetCameraGeoTag;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method private reSetting(Z)V
    .locals 2
    .parameter "locationOn"

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraGeoTag;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getOpenLBSSetting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    if-eqz p1, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraGeoTag;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    new-instance v1, Lcom/lge/camera/command/setting/SetCameraGeoTag$3;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetCameraGeoTag$3;-><init>(Lcom/lge/camera/command/setting/SetCameraGeoTag;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 116
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraGeoTag;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->setOpenLBSSetting(Z)V

    .line 130
    :cond_0
    :goto_1
    return-void

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraGeoTag;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    new-instance v1, Lcom/lge/camera/command/setting/SetCameraGeoTag$4;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetCameraGeoTag$4;-><init>(Lcom/lge/camera/command/setting/SetCameraGeoTag;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 118
    :cond_2
    if-nez p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraGeoTag;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    const-string v1, "key_camera_tag_location"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraGeoTag;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    new-instance v1, Lcom/lge/camera/command/setting/SetCameraGeoTag$5;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetCameraGeoTag$5;-><init>(Lcom/lge/camera/command/setting/SetCameraGeoTag;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetCameraGeoTag;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 12
    .parameter "parameters"
    .parameter "arg"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 34
    iget-object v9, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v9}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "gps"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    .line 35
    .local v3, locationOnGps:Z
    iget-object v9, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v9}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "network"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    .line 37
    .local v4, locationOnNetwork:Z
    if-nez v3, :cond_0

    if-eqz v4, :cond_2

    :cond_0
    move v2, v8

    .line 38
    .local v2, locationOn:Z
    :goto_0
    iget-object v9, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v9, v2}, Lcom/lge/camera/Mediator;->setLocationOn(Z)V

    .line 40
    iget-object v9, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mMediator:Lcom/lge/camera/Mediator;

    const-string v10, "key_camera_tag_location"

    invoke-virtual {v9, v10}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 41
    .local v5, onOff:Ljava/lang/String;
    iget-object v9, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v9}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v9

    const-string v10, "key_camera_tag_location"

    invoke-virtual {v9, v10}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v1

    .line 42
    .local v1, geoTagIndex:I
    iget-object v9, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v9}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/camera/controller/SettingController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenuIndex()I

    move-result v9

    add-int/lit8 v0, v9, 0x5

    .line 44
    .local v0, currIndex:I
    iget-object v9, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v9}, Lcom/lge/camera/Mediator;->getLocationOn()Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "on"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 46
    iget-object v9, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v9}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/camera/controller/SettingController;->isNullSettingView()Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v9}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v9

    const/4 v10, 0x5

    if-eq v9, v10, :cond_1

    iget-object v9, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v9}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v9

    const/16 v10, 0x10

    if-ne v9, v10, :cond_4

    :cond_1
    if-ne v1, v0, :cond_4

    .line 49
    invoke-direct {p0, v2}, Lcom/lge/camera/command/setting/SetCameraGeoTag;->reSetting(Z)V

    .line 51
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->beSupportEulaPopup()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 52
    iget-object v8, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v8}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "EULA_POPUP"

    invoke-virtual {v8, v9, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 54
    .local v6, pref:Landroid/content/SharedPreferences;
    const-string v8, "EULA_DO_NOT_SHOW"

    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_3

    .line 55
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mMediator:Lcom/lge/camera/Mediator;

    const/16 v8, 0x17

    invoke-virtual {v7, v8}, Lcom/lge/camera/Mediator;->showDialogPopup(I)V

    .line 95
    .end local v6           #pref:Landroid/content/SharedPreferences;
    :goto_1
    return-void

    .end local v0           #currIndex:I
    .end local v1           #geoTagIndex:I
    .end local v2           #locationOn:Z
    .end local v5           #onOff:Ljava/lang/String;
    :cond_2
    move v2, v7

    .line 37
    goto :goto_0

    .line 60
    .restart local v0       #currIndex:I
    .restart local v1       #geoTagIndex:I
    .restart local v2       #locationOn:Z
    .restart local v5       #onOff:Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mMediator:Lcom/lge/camera/Mediator;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Lcom/lge/camera/Mediator;->showDialogPopup(I)V

    goto :goto_1

    .line 65
    :cond_4
    invoke-direct {p0, v2}, Lcom/lge/camera/command/setting/SetCameraGeoTag;->reSetting(Z)V

    .line 68
    iget-object v9, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mMediator:Lcom/lge/camera/Mediator;

    const-string v10, "key_camera_tag_location"

    invoke-virtual {v9, v10}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 70
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hb onOff = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v9, "off"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 73
    iget-object v8, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v8, v7}, Lcom/lge/camera/Mediator;->setRecordLocation(Z)V

    .line 78
    :goto_2
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraGeoTag;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v7

    new-instance v8, Lcom/lge/camera/command/setting/SetCameraGeoTag$1;

    invoke-direct {v8, p0}, Lcom/lge/camera/command/setting/SetCameraGeoTag$1;-><init>(Lcom/lge/camera/command/setting/SetCameraGeoTag;)V

    invoke-virtual {v7, v8}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 89
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraGeoTag;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v7

    new-instance v8, Lcom/lge/camera/command/setting/SetCameraGeoTag$2;

    invoke-direct {v8, p0}, Lcom/lge/camera/command/setting/SetCameraGeoTag$2;-><init>(Lcom/lge/camera/command/setting/SetCameraGeoTag;)V

    invoke-virtual {v7, v8}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 75
    :cond_5
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7, v8}, Lcom/lge/camera/Mediator;->setRecordLocation(Z)V

    goto :goto_2
.end method

.method protected onExecuteAlone()V
    .locals 3

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 136
    .local v0, parentIndex:I
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getBackPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    const-string v2, "key_camera_tag_location"

    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, -0x5

    .line 138
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/SettingController;->getCameraMainSettingMenu()Lcom/lge/camera/setting/CameraMainSettingMenu;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraGeoTag;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/setting/SettingMenu;->getSelectedChildIndex()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/lge/camera/setting/CameraMainSettingMenu;->setSelectedChild(II)Z

    .line 141
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getFrontPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    const-string v2, "key_camera_tag_location"

    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, -0x5

    .line 143
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/SettingController;->getCameraFrontSettingMenu()Lcom/lge/camera/setting/CameraFrontSettingMenu;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraGeoTag;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/setting/SettingMenu;->getSelectedChildIndex()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/lge/camera/setting/CameraFrontSettingMenu;->setSelectedChild(II)Z

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/SettingController;->getVideoMainSettingMenu()Lcom/lge/camera/setting/VideoMainSettingMenu;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraGeoTag;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/setting/SettingMenu;->getSelectedChildIndex()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/lge/camera/setting/VideoMainSettingMenu;->setSelectedChild(II)Z

    .line 148
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getFrontPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    const-string v2, "key_camera_tag_location"

    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, -0x5

    .line 150
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/SettingController;->getVideoFrontSettingMenu()Lcom/lge/camera/setting/VideoFrontSettingMenu;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetCameraGeoTag;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/setting/SettingMenu;->getSelectedChildIndex()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/lge/camera/setting/VideoFrontSettingMenu;->setSelectedChild(II)Z

    goto :goto_0
.end method
