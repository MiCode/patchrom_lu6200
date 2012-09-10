.class public Lcom/lge/camera/Camcorder;
.super Landroid/app/Activity;
.source "Camcorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/Camcorder$CamcorderHandler;
    }
.end annotation


# static fields
.field private static final SHOW_MMS_TOAST_POPUP:I = 0x64


# instance fields
.field private mCamcorderHandler:Landroid/os/Handler;

.field private mFileUri:Landroid/net/Uri;

.field private mMediator:Lcom/lge/camera/CamcorderMediator;

.field private mOnKeyEventListener:Lcom/lge/camera/listeners/OnKeyEventListener;

.field private mPostviewRequestDeleteDone:Z

.field private mPostviewRequestDoAttach:Z

.field private mPostviewRequestRename:Z

.field private mPostviewRequestReturn:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRename:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    iput-object v1, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    .line 41
    iput-object v1, p0, Lcom/lge/camera/Camcorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 44
    new-instance v0, Lcom/lge/camera/Camcorder$CamcorderHandler;

    invoke-direct {v0, p0, v1}, Lcom/lge/camera/Camcorder$CamcorderHandler;-><init>(Lcom/lge/camera/Camcorder;Lcom/lge/camera/Camcorder$1;)V

    iput-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderHandler:Landroid/os/Handler;

    .line 550
    iput-object v1, p0, Lcom/lge/camera/Camcorder;->mRename:Ljava/lang/String;

    .line 551
    iput-object v1, p0, Lcom/lge/camera/Camcorder;->mFileUri:Landroid/net/Uri;

    .line 552
    iput-boolean v2, p0, Lcom/lge/camera/Camcorder;->mPostviewRequestRename:Z

    .line 553
    iput-boolean v2, p0, Lcom/lge/camera/Camcorder;->mPostviewRequestDeleteDone:Z

    .line 554
    iput-boolean v2, p0, Lcom/lge/camera/Camcorder;->mPostviewRequestDoAttach:Z

    .line 555
    iput-boolean v2, p0, Lcom/lge/camera/Camcorder;->mPostviewRequestReturn:Z

    .line 47
    sget v0, Lcom/lge/camera/util/Common;->APP_CAMCORDER_INSTANCE_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lge/camera/util/Common;->APP_CAMCORDER_INSTANCE_COUNT:I

    .line 48
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "construct VIDEO app_instance_cnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/camera/util/Common;->APP_CAMCORDER_INSTANCE_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method static synthetic access$100(Lcom/lge/camera/Camcorder;)Lcom/lge/camera/CamcorderMediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    return-object v0
.end method

.method private camcorderControllerInit()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->initController()V

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/lge/camera/Camcorder;->setVideoSizeForAttachMode()V

    .line 127
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->initController()V

    .line 129
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getCameraPreview()Lcom/lge/camera/components/CameraPreview;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->countDownLatch()V

    .line 133
    :cond_1
    invoke-direct {p0}, Lcom/lge/camera/Camcorder;->camcorderUiControllerInit()V

    .line 134
    invoke-direct {p0}, Lcom/lge/camera/Camcorder;->showMMSToastPopup()V

    .line 136
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getCameraPreview()Lcom/lge/camera/components/CameraPreview;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->setupHolder()V

    .line 140
    :cond_2
    return-void
.end method

.method private camcorderUiControllerInit()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewPanelController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewPanelController;->initController()V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getQuickFunctionController()Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getQuickFunctionController()Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;->initController()V

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getIndicatorController()Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getIndicatorController()Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->initController()V

    .line 161
    :cond_2
    return-void
.end method

.method private initOnCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 98
    const/4 v1, 0x0

    .line 100
    .local v1, version_name:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isDebugNotSupported()Z

    move-result v2

    invoke-static {v2}, Lcom/lge/camera/util/CamLog;->setLogOn(Z)V

    .line 106
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TIME_CHECK onCreate()-start,Model:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",Version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".2012/05/13-09:00AM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/lge/camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/lge/camera/Camcorder;->mPowerManager:Landroid/os/PowerManager;

    .line 110
    iget-object v2, p0, Lcom/lge/camera/Camcorder;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/Camcorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 111
    iget-object v2, p0, Lcom/lge/camera/Camcorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 113
    const v2, 0x7f0a0032

    invoke-static {p0, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    const v3, 0x7f0a0033

    invoke-static {p0, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/camera/properties/CameraConstants;->setLcdSize(II)V

    .line 114
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->SetProjetCode()I

    .line 115
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->SetCarrierCode()I

    .line 116
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->SetShutterSound()Z

    .line 117
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->SetShutterSoundOff()Z

    .line 118
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "CameraApp"

    const-string v3, "VersionName is not found, "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private resultForDeleteDone(Landroid/os/Bundle;)Z
    .locals 4
    .parameter "extras"

    .prologue
    const/4 v1, 0x1

    .line 467
    if-eqz p1, :cond_0

    .line 468
    const-string v2, "delete_done"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 469
    .local v0, deleteDone:Z
    if-eqz v0, :cond_0

    .line 470
    iput-boolean v1, p0, Lcom/lge/camera/Camcorder;->mPostviewRequestDeleteDone:Z

    .line 471
    const-string v2, "CameraApp"

    const-string v3, "REQUEST_CODE_POSTVIEW delete done"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    .end local v0           #deleteDone:Z
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resultForDoAttach(Landroid/os/Bundle;)Z
    .locals 7
    .parameter "extras"

    .prologue
    const/4 v4, 0x1

    .line 443
    if-eqz p1, :cond_1

    .line 444
    const-string v3, "doAttach"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 445
    .local v0, doAttach:Z
    const-string v3, "postview_mode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 446
    .local v2, postview_mode:Z
    const-string v1, ""

    .line 447
    .local v1, filename:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 448
    iput-boolean v4, p0, Lcom/lge/camera/Camcorder;->mPostviewRequestDoAttach:Z

    .line 450
    if-nez v2, :cond_0

    .line 451
    iget-object v3, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/lge/camera/CamcorderMediator;->setVideoState(I)V

    .line 453
    :cond_0
    const/4 v0, 0x0

    .line 455
    const-string v3, "recent_uri"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/lge/camera/Camcorder;->mFileUri:Landroid/net/Uri;

    .line 456
    iget-object v3, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    iget-object v5, p0, Lcom/lge/camera/Camcorder;->mFileUri:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Lcom/lge/camera/CamcorderMediator;->setSavedImageUri(Landroid/net/Uri;)V

    .line 457
    const-string v3, "file_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 458
    iget-object v3, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v3, v1}, Lcom/lge/camera/CamcorderMediator;->setSavedFileName(Ljava/lang/String;)V

    .line 459
    const-string v3, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "REQUEST_CODE_POSTVIEW doAttach uri:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/Camcorder;->mFileUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 463
    .end local v0           #doAttach:Z
    .end local v1           #filename:Ljava/lang/String;
    .end local v2           #postview_mode:Z
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private resultForLiveEffect(ILandroid/content/Intent;)V
    .locals 3
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    if-eqz v0, :cond_0

    .line 415
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/camera/controller/PreviewController;->mEffectUriFromGallery:Ljava/lang/String;

    .line 419
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received URI from gallery: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v2

    iget-object v2, v2, Lcom/lge/camera/controller/PreviewController;->mEffectUriFromGallery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lge/camera/controller/PreviewController;->mResetEffect:Z

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/lge/camera/controller/PreviewController;->mEffectUriFromGallery:Ljava/lang/String;

    .line 423
    const-string v0, "CameraApp"

    const-string v1, "No URI from gallery"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lge/camera/controller/PreviewController;->mResetEffect:Z

    goto :goto_0
.end method

.method private resultForPostview(Landroid/content/Intent;)Z
    .locals 2
    .parameter "data"

    .prologue
    .line 430
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    if-eqz v1, :cond_1

    .line 431
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 432
    .local v0, extras:Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/lge/camera/Camcorder;->resultForRename(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/lge/camera/Camcorder;->resultForDeleteDone(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/lge/camera/Camcorder;->resultForDoAttach(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/lge/camera/Camcorder;->resultForPostviewReturn(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    :cond_0
    const/4 v1, 0x1

    .line 439
    .end local v0           #extras:Landroid/os/Bundle;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resultForPostviewReturn(Landroid/os/Bundle;)Z
    .locals 5
    .parameter "extras"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 492
    if-eqz p1, :cond_1

    .line 493
    const-string v3, "postview_return"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 494
    .local v0, postview_return:Z
    if-eqz v0, :cond_1

    .line 495
    invoke-direct {p0, p1}, Lcom/lge/camera/Camcorder;->setZoomForManualAntiBanding(Landroid/os/Bundle;)V

    .line 496
    iput-boolean v1, p0, Lcom/lge/camera/Camcorder;->mPostviewRequestReturn:Z

    .line 497
    const-string v3, "CameraApp"

    const-string v4, "REQUEST_CODE_POSTVIEW postview_return"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-direct {p0, p1}, Lcom/lge/camera/Camcorder;->setThumbnailForPostviewReturn(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 506
    .end local v0           #postview_return:Z
    :goto_0
    return v1

    .line 502
    .restart local v0       #postview_return:Z
    :cond_0
    iput-boolean v2, p0, Lcom/lge/camera/Camcorder;->mPostviewRequestReturn:Z

    .line 503
    iget-object v1, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1, v2}, Lcom/lge/camera/CamcorderMediator;->enableInput(Z)V

    .end local v0           #postview_return:Z
    :cond_1
    move v1, v2

    .line 506
    goto :goto_0
.end method

.method private resultForRename(Landroid/os/Bundle;)Z
    .locals 5
    .parameter "extras"

    .prologue
    const/4 v1, 0x1

    .line 479
    if-eqz p1, :cond_0

    .line 480
    const-string v2, "renamed_filename"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, filename:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 482
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REQUEST_CODE_POSTVIEW filename = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iput-boolean v1, p0, Lcom/lge/camera/Camcorder;->mPostviewRequestRename:Z

    .line 484
    iput-object v0, p0, Lcom/lge/camera/Camcorder;->mRename:Ljava/lang/String;

    .line 488
    .end local v0           #filename:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setThumbnailForPostviewReturn(Landroid/os/Bundle;)Z
    .locals 10
    .parameter "extras"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 525
    if-eqz p1, :cond_2

    .line 527
    :try_start_0
    iget-object v7, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v7}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/controller/camcorder/RecordingController;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/VideoFile;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 528
    .local v4, videoUri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 531
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/camera/util/Common;->getLastVideoPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 532
    .local v3, savedPath:Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 533
    .local v2, pathFromUri:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 534
    :cond_0
    const-string v7, "CameraApp"

    const-string v8, "Saved uri is not valid. Find most recent uri."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v7, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v7}, Lcom/lge/camera/CamcorderMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewPanelController;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewPanelController;->getMostRecentThumbnailUri(Z)Landroid/net/Uri;

    move-result-object v4

    .line 536
    iget-object v7, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v7, v4}, Lcom/lge/camera/CamcorderMediator;->getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 540
    :goto_0
    iget-object v7, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v7}, Lcom/lge/camera/CamcorderMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewPanelController;

    move-result-object v7

    invoke-virtual {v7, v0, v4}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewPanelController;->setThumbBitmapAndUpdate(Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    .line 547
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v2           #pathFromUri:Ljava/lang/String;
    .end local v3           #savedPath:Ljava/lang/String;
    .end local v4           #videoUri:Landroid/net/Uri;
    :goto_1
    return v5

    .line 538
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v2       #pathFromUri:Ljava/lang/String;
    .restart local v3       #savedPath:Ljava/lang/String;
    .restart local v4       #videoUri:Landroid/net/Uri;
    :cond_1
    const-string v7, "thumb_data"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0           #bmp:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 542
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v2           #pathFromUri:Ljava/lang/String;
    .end local v3           #savedPath:Ljava/lang/String;
    .end local v4           #videoUri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 543
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v5, "CameraApp"

    const-string v7, "NullPointerException:"

    invoke-static {v5, v7, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v5, v6

    .line 544
    goto :goto_1

    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_2
    move v5, v6

    .line 547
    goto :goto_1
.end method

.method private setVideoSizeForAttachMode()V
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->isAttachIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->readVideoIntentExtras()V

    .line 146
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getRequestedVideoSizeLimit()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v0

    const-string v1, "key_preview_size_on_device"

    const-string v2, "320x240"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/controller/SettingController;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 149
    :cond_0
    return-void
.end method

.method private setZoomForManualAntiBanding(Landroid/os/Bundle;)V
    .locals 5
    .parameter "extras"

    .prologue
    .line 510
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportManualAntibanding()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 511
    iget-object v2, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getCameraId()I

    move-result v2

    if-nez v2, :cond_0

    .line 512
    if-eqz p1, :cond_0

    .line 513
    const-string v2, "currentZoom"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, curzoom:Ljava/lang/String;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "===> Return zoom: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v2, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    const-string v3, "key_zoom"

    invoke-virtual {v2, v3, v0}, Lcom/lge/camera/CamcorderMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 516
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 517
    .local v1, value:I
    iget-object v2, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/ZoomController;->getZoomBar()Lcom/lge/camera/components/ZoomBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/camera/components/ZoomBar;->resetValue(I)V

    .line 518
    iget-object v2, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/ZoomController;->getZoomBar()Lcom/lge/camera/components/ZoomBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/camera/components/ZoomBar;->resetCursor(I)V

    .line 522
    .end local v0           #curzoom:Ljava/lang/String;
    .end local v1           #value:I
    :cond_0
    return-void
.end method

.method private showMMSToastPopup()V
    .locals 4

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->isMMSIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetCarrierCode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetCarrierCode()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 173
    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 375
    sget v0, Lcom/lge/camera/util/Common;->APP_CAMCORDER_INSTANCE_COUNT:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/lge/camera/util/Common;->APP_CAMCORDER_INSTANCE_COUNT:I

    .line 376
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy VIDEO app_instance_cnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/camera/util/Common;->APP_CAMCORDER_INSTANCE_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 378
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 364
    const-string v0, "CameraApp"

    const-string v1, "pre-finish"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->hasWrongPreviewWhilePauseBug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->onPause()V

    .line 370
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 371
    return-void
.end method

.method public getPostviewRename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mRename:Ljava/lang/String;

    return-object v0
.end method

.method public getPostviewRequestCode()I
    .locals 1

    .prologue
    .line 558
    iget-boolean v0, p0, Lcom/lge/camera/Camcorder;->mPostviewRequestRename:Z

    if-eqz v0, :cond_0

    .line 559
    const/4 v0, 0x0

    .line 570
    :goto_0
    return v0

    .line 561
    :cond_0
    iget-boolean v0, p0, Lcom/lge/camera/Camcorder;->mPostviewRequestDeleteDone:Z

    if-eqz v0, :cond_1

    .line 562
    const/4 v0, 0x1

    goto :goto_0

    .line 564
    :cond_1
    iget-boolean v0, p0, Lcom/lge/camera/Camcorder;->mPostviewRequestDoAttach:Z

    if-eqz v0, :cond_2

    .line 565
    const/4 v0, 0x2

    goto :goto_0

    .line 567
    :cond_2
    iget-boolean v0, p0, Lcom/lge/camera/Camcorder;->mPostviewRequestReturn:Z

    if-eqz v0, :cond_3

    .line 568
    const/4 v0, 0x3

    goto :goto_0

    .line 570
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPostviewUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mFileUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 399
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    sparse-switch p1, :sswitch_data_0

    .line 410
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 411
    return-void

    .line 402
    :sswitch_0
    invoke-direct {p0, p2, p3}, Lcom/lge/camera/Camcorder;->resultForLiveEffect(ILandroid/content/Intent;)V

    goto :goto_0

    .line 405
    :sswitch_1
    invoke-direct {p0, p3}, Lcom/lge/camera/Camcorder;->resultForPostview(Landroid/content/Intent;)Z

    goto :goto_0

    .line 400
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCancelBackgroundMessage(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 591
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    if-nez v0, :cond_1

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    const-string v0, "CameraApp"

    const-string v1, "onCancelBackgroundMessage"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    new-instance v1, Lcom/lge/camera/Camcorder$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/Camcorder$1;-><init>(Lcom/lge/camera/Camcorder;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/CamcorderMediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 605
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    const-string v1, "key_live_effect"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/CamcorderMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 606
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->updateEffectSelection()Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-direct {p0}, Lcom/lge/camera/Camcorder;->initOnCreate()V

    .line 58
    invoke-static {p0, v6}, Lcom/lge/camera/util/Common;->checkEnterApplication(Landroid/app/Activity;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    const-string v2, "CameraApp"

    const-string v3, "onCreate()-end, checkEnterApplication"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 62
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    invoke-static {p0}, Lcom/lge/camera/util/Common;->checkCameraOut(Landroid/app/Activity;)V

    .line 95
    :goto_1
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "CameraApp"

    const-string v3, "onCreate() InterruptedException "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 74
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    new-instance v2, Lcom/lge/camera/CamcorderMediator;

    invoke-direct {v2, p0}, Lcom/lge/camera/CamcorderMediator;-><init>(Lcom/lge/camera/Camcorder;)V

    iput-object v2, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    .line 75
    iget-object v2, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->setKeepLastCameraMode()V

    .line 77
    iget-object v2, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->createPreviewController()V

    .line 78
    iget-object v2, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->onCreate()V

    .line 79
    iget-object v2, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->onCreate()V

    .line 81
    new-instance v1, Lcom/lge/camera/setting/PreferenceInflater;

    iget-object v2, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lge/camera/setting/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 82
    .local v1, inflater:Lcom/lge/camera/setting/PreferenceInflater;
    iget-object v3, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetBackCamcorderPreferenceResource()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v3, v2}, Lcom/lge/camera/CamcorderMediator;->setBackPreference(Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 83
    iget-object v3, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetFrontCamcorderPreferenceResource()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v3, v2}, Lcom/lge/camera/CamcorderMediator;->setFrontPreference(Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 84
    new-instance v2, Lcom/lge/camera/listeners/OnKeyEventListener;

    iget-object v3, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-direct {v2, v3}, Lcom/lge/camera/listeners/OnKeyEventListener;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v2, p0, Lcom/lge/camera/Camcorder;->mOnKeyEventListener:Lcom/lge/camera/listeners/OnKeyEventListener;

    .line 85
    iget-object v2, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->setKeepLastValue()V

    .line 86
    iget-object v2, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->setActivityLastOrientation()V

    .line 88
    const v2, 0x7f03000c

    invoke-virtual {p0, v2}, Lcom/lge/camera/Camcorder;->setContentView(I)V

    .line 90
    invoke-direct {p0}, Lcom/lge/camera/Camcorder;->camcorderControllerInit()V

    .line 91
    iget-object v2, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    const-string v3, "com.lge.camera.command.StartInit"

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getInitUiDelay()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/lge/camera/CamcorderMediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 92
    iget-object v2, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v2, v6}, Lcom/lge/camera/CamcorderMediator;->checkHideLoadingScreen(Z)V

    .line 94
    const-string v2, "CameraApp"

    const-string v3, "onCreate()-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter "id"
    .parameter "args"

    .prologue
    .line 390
    const/4 v0, 0x0

    .line 391
    .local v0, retVal:Landroid/app/Dialog;
    iget-object v1, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    if-eqz v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1, p1, p2}, Lcom/lge/camera/CamcorderMediator;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 394
    :cond_0
    return-object v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 221
    const-string v0, "CameraApp"

    const-string v1, "onDestroy()-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useRootWindowLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-static {}, Lcom/lge/camera/util/Common;->deleteLoadingWindow()V

    .line 225
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useTurnOffAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    invoke-static {}, Lcom/lge/camera/util/Common;->turnOnAnimation()V

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->onDestroy()V

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->setWakeLock(Landroid/os/PowerManager$WakeLock;Z)V

    .line 233
    iput-object v2, p0, Lcom/lge/camera/Camcorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 241
    iput-object v2, p0, Lcom/lge/camera/Camcorder;->mOnKeyEventListener:Lcom/lge/camera/listeners/OnKeyEventListener;

    .line 242
    iput-object v2, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    .line 244
    const-string v0, "CameraApp"

    const-string v1, "onDestroy()-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 191
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/lge/camera/Camcorder;->mOnKeyEventListener:Lcom/lge/camera/listeners/OnKeyEventListener;

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/lge/camera/Camcorder;->mOnKeyEventListener:Lcom/lge/camera/listeners/OnKeyEventListener;

    invoke-virtual {v1, p1, p2}, Lcom/lge/camera/listeners/OnKeyEventListener;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 201
    :cond_0
    return v0
.end method

.method public onKeyDownSuper(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 205
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mOnKeyEventListener:Lcom/lge/camera/listeners/OnKeyEventListener;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mOnKeyEventListener:Lcom/lge/camera/listeners/OnKeyEventListener;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/listeners/OnKeyEventListener;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 217
    :goto_0
    return v0

    .line 214
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 217
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lcom/lge/camera/Camcorder;->setIntent(Landroid/content/Intent;)V

    .line 250
    const-string v0, "CameraApp"

    const-string v1, "start with new intent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->setKeepLastCameraMode()V

    .line 254
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 255
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 298
    const-string v0, "CameraApp"

    const-string v1, "onPause()-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useRootWindowLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    invoke-static {}, Lcom/lge/camera/util/Common;->deleteLoadingWindow()V

    .line 302
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useTurnOffAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    invoke-static {}, Lcom/lge/camera/util/Common;->turnOnAnimation()V

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    if-eqz v0, :cond_2

    .line 306
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/lge/camera/util/Common;->galleryCacheDuringCameraApp(Landroid/content/Context;Z)V

    .line 307
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->isPausing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->onPause()V

    .line 312
    :cond_2
    invoke-static {v2}, Lcom/lge/camera/util/Common;->setEnterCheckComplete(Z)V

    .line 313
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/Common;->checkAudioFocus(Landroid/content/Context;)V

    .line 314
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-static {v0}, Lcom/lge/camera/util/Common;->UnblockAlarmInRecording(Lcom/lge/camera/Mediator;)V

    .line 315
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/lge/camera/util/Common;->setMuteNotificationStream(Landroid/content/Context;Z)V

    .line 316
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/lge/camera/util/Common;->setMuteSystemStream(Landroid/content/Context;Z)V

    .line 317
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0, v2}, Lcom/lge/camera/util/Common;->setWakeLock(Landroid/os/PowerManager$WakeLock;Z)V

    .line 319
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 320
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 322
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 324
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/Common;->printRunningTask(Landroid/content/Context;)V

    .line 325
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/lge/camera/util/Common;->reduceBrightnessMode(Landroid/content/Context;Z)V

    .line 326
    const-string v0, "CameraApp"

    const-string v1, "onPause()-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getDialogController()Lcom/lge/camera/controller/DialogController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/DialogController;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 385
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 386
    return-void
.end method

.method public onProtectiveCurtainClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 611
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 259
    const-string v3, "CameraApp"

    const-string v4, "onResume() - start"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const v3, 0x7f0a0032

    invoke-static {p0, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    const v4, 0x7f0a0033

    invoke-static {p0, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/lge/camera/properties/CameraConstants;->setLcdSize(II)V

    .line 267
    invoke-static {p0, v6}, Lcom/lge/camera/util/Common;->checkEnterApplication(Landroid/app/Activity;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 268
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 269
    const-string v3, "CameraApp"

    const-string v4, "onResume()-end, checkEnterApplication"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-static {p0}, Lcom/lge/camera/util/Common;->checkCameraOut(Landroid/app/Activity;)V

    .line 294
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-static {p0}, Lcom/lge/camera/util/Common;->backlightControl(Landroid/app/Activity;)V

    .line 274
    iget-object v3, p0, Lcom/lge/camera/Camcorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v3, v6}, Lcom/lge/camera/util/Common;->setWakeLock(Landroid/os/PowerManager$WakeLock;Z)V

    .line 275
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/Common;->setFmRadioOff(Landroid/content/Context;)V

    .line 276
    invoke-static {p0}, Lcom/lge/camera/util/Common;->setQuickClipScreenCaptureLimit(Landroid/app/Activity;)V

    .line 278
    iget-object v3, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    if-eqz v3, :cond_2

    .line 279
    iget-object v3, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, sizeOnScreenString:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 281
    invoke-static {v2}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v1

    .line 282
    .local v1, previewSizeOnScreen:[I
    iget-object v3, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v1, v4

    aget v5, v1, v6

    invoke-virtual {v3, v4, v5}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->changePreviewMode(II)V

    .line 283
    iget-object v3, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CamcorderMediator;->onResume()V

    .line 285
    .end local v1           #previewSizeOnScreen:[I
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v0, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 286
    .local v0, locale:Ljava/util/Locale;
    iget-object v3, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/camera/CamcorderMediator;->setLanguageType(Ljava/lang/String;)V

    .line 287
    iget-object v3, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-static {}, Lcom/lge/camera/util/Common;->getCurrentDefaultFontIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lge/camera/CamcorderMediator;->setKoreanFontIndex(I)V

    .line 289
    .end local v0           #locale:Ljava/util/Locale;
    .end local v2           #sizeOnScreenString:Ljava/lang/String;
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 291
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/lge/camera/util/Common;->galleryCacheDuringCameraApp(Landroid/content/Context;Z)V

    .line 292
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/lge/camera/util/Common;->reduceBrightnessMode(Landroid/content/Context;Z)V

    .line 293
    const-string v3, "CameraApp"

    const-string v4, "onResume() - end"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 331
    const-string v0, "CameraApp"

    const-string v1, "onStart()-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->onStart()V

    .line 335
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 336
    const-string v0, "CameraApp"

    const-string v1, "onStart()-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 341
    const-string v0, "CameraApp"

    const-string v1, "onStop()-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useRootWindowLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    invoke-static {}, Lcom/lge/camera/util/Common;->deleteLoadingWindow()V

    .line 345
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useTurnOffAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    invoke-static {}, Lcom/lge/camera/util/Common;->turnOnAnimation()V

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    if-eqz v0, :cond_2

    .line 349
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->onStop()V

    .line 351
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 352
    const-string v0, "CameraApp"

    const-string v1, "onStop()-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0, p1}, Lcom/lge/camera/CamcorderMediator;->executeTouchEvent(Landroid/view/MotionEvent;)V

    .line 187
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->onUserInteraction()V

    .line 360
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 361
    return-void
.end method

.method public setPostviewRequestInitCode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 582
    iput-object v1, p0, Lcom/lge/camera/Camcorder;->mRename:Ljava/lang/String;

    .line 583
    iput-object v1, p0, Lcom/lge/camera/Camcorder;->mFileUri:Landroid/net/Uri;

    .line 584
    iput-boolean v0, p0, Lcom/lge/camera/Camcorder;->mPostviewRequestRename:Z

    .line 585
    iput-boolean v0, p0, Lcom/lge/camera/Camcorder;->mPostviewRequestDeleteDone:Z

    .line 586
    iput-boolean v0, p0, Lcom/lge/camera/Camcorder;->mPostviewRequestDoAttach:Z

    .line 587
    iput-boolean v0, p0, Lcom/lge/camera/Camcorder;->mPostviewRequestReturn:Z

    .line 588
    return-void
.end method
