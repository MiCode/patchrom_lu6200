.class public Lcom/lge/camera/CameraApp;
.super Landroid/app/Activity;
.source "CameraApp.java"


# instance fields
.field private mFileUri:Landroid/net/Uri;

.field mMediator:Lcom/lge/camera/CameraMediator;

.field private mOnKeyEventListener:Lcom/lge/camera/listeners/OnKeyEventListener;

.field private mPostviewRequestDeleteDone:Z

.field private mPostviewRequestDoAttach:Z

.field private mPostviewRequestRename:Z

.field private mPostviewRequestReturn:Z

.field private mPostviewRequestSaveDone:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRename:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    .line 39
    iput-object v1, p0, Lcom/lge/camera/CameraApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 585
    iput-object v1, p0, Lcom/lge/camera/CameraApp;->mRename:Ljava/lang/String;

    .line 586
    iput-object v1, p0, Lcom/lge/camera/CameraApp;->mFileUri:Landroid/net/Uri;

    .line 587
    iput-boolean v0, p0, Lcom/lge/camera/CameraApp;->mPostviewRequestRename:Z

    .line 588
    iput-boolean v0, p0, Lcom/lge/camera/CameraApp;->mPostviewRequestSaveDone:Z

    .line 589
    iput-boolean v0, p0, Lcom/lge/camera/CameraApp;->mPostviewRequestDeleteDone:Z

    .line 590
    iput-boolean v0, p0, Lcom/lge/camera/CameraApp;->mPostviewRequestDoAttach:Z

    .line 591
    iput-boolean v0, p0, Lcom/lge/camera/CameraApp;->mPostviewRequestReturn:Z

    .line 46
    sget v0, Lcom/lge/camera/util/Common;->APP_CAMERA_INSTANCE_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lge/camera/util/Common;->APP_CAMERA_INSTANCE_COUNT:I

    .line 47
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "construct CAMERA app_instance_cnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/camera/util/Common;->APP_CAMERA_INSTANCE_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method private cameraControllerInit()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->initController()V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->initController()V

    .line 123
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->getCameraPreview()Lcom/lge/camera/components/CameraPreview;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->countDownLatch()V

    .line 127
    :cond_1
    invoke-direct {p0}, Lcom/lge/camera/CameraApp;->cameraUiControllerInit()V

    .line 128
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->setupCaptureParams()V

    .line 129
    invoke-direct {p0}, Lcom/lge/camera/CameraApp;->setPreviewControllerSetupHolder()V

    .line 130
    return-void
.end method

.method private cameraUiControllerInit()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->initController()V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getQuickFunctionController()Lcom/lge/camera/controller/camera/CameraQuickFunctionController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getQuickFunctionController()Lcom/lge/camera/controller/camera/CameraQuickFunctionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraQuickFunctionController;->initController()V

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->initController()V

    .line 157
    :cond_2
    return-void
.end method

.method private initOnCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, version_name:Ljava/lang/String;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bEnterSetting =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/lge/camera/properties/ProjectVariables;->bEnterSetting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isDebugNotSupported()Z

    move-result v2

    invoke-static {v2}, Lcom/lge/camera/util/CamLog;->setLogOn(Z)V

    .line 104
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

    .line 107
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/lge/camera/CameraApp;->mPowerManager:Landroid/os/PowerManager;

    .line 108
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/CameraApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 109
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 110
    const v2, 0x7f0a0032

    invoke-static {p0, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    const v3, 0x7f0a0033

    invoke-static {p0, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/camera/properties/CameraConstants;->setLcdSize(II)V

    .line 111
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->SetProjetCode()I

    .line 112
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->SetCarrierCode()I

    .line 113
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->SetShutterSound()Z

    .line 114
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->SetShutterSoundOff()Z

    .line 115
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "CameraApp"

    const-string v3, "VersionName is not found, "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private resultCodeCrop(ILandroid/content/Intent;)V
    .locals 4
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 420
    iget-object v3, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->beDirectlyGoingToCropGallery()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p1, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 425
    .local v1, intent:Landroid/content/Intent;
    if-eqz p2, :cond_2

    .line 426
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 427
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 428
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 431
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/lge/camera/CameraApp;->setResult(ILandroid/content/Intent;)V

    .line 432
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->finish()V

    .line 434
    const-string v3, "crop-temp"

    invoke-virtual {p0, v3}, Lcom/lge/camera/CameraApp;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 435
    .local v2, path:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private resultCodeHelp(Landroid/content/Intent;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 439
    const/4 v1, 0x0

    .line 440
    .local v1, strValue:Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v2, :cond_0

    .line 441
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 442
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 443
    const-string v2, "key_camera_timer"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 444
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v2, :cond_0

    .line 445
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v3, "key_camera_timer"

    invoke-virtual {v2, v3, v1}, Lcom/lge/camera/CameraMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 449
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private resultForAttach(Landroid/os/Bundle;)Z
    .locals 7
    .parameter "extras"

    .prologue
    const/4 v4, 0x1

    .line 505
    if-eqz p1, :cond_1

    .line 506
    const-string v3, "postview_mode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 507
    .local v2, postview_mode:Z
    const-string v3, "doAttach"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 508
    .local v0, doAttach:Z
    if-eqz v0, :cond_1

    .line 509
    iput-boolean v4, p0, Lcom/lge/camera/CameraApp;->mPostviewRequestDoAttach:Z

    .line 511
    if-eqz v2, :cond_0

    .line 512
    iget-object v3, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/lge/camera/CameraMediator;->setStatus(I)V

    .line 514
    :cond_0
    const/4 v0, 0x0

    .line 515
    const-string v3, "recent_uri"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/lge/camera/CameraApp;->mFileUri:Landroid/net/Uri;

    .line 516
    iget-object v3, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    iget-object v5, p0, Lcom/lge/camera/CameraApp;->mFileUri:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Lcom/lge/camera/CameraMediator;->setSavedImageUri(Landroid/net/Uri;)V

    .line 517
    const-string v3, "file_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 518
    .local v1, filename:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3, v1}, Lcom/lge/camera/CameraMediator;->setSavedFileName(Ljava/lang/String;)V

    .line 520
    const-string v3, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "REQUEST_CODE_POSTVIEW doAttach uri:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/CameraApp;->mFileUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 524
    .end local v0           #doAttach:Z
    .end local v1           #filename:Ljava/lang/String;
    .end local v2           #postview_mode:Z
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private resultForDeleteDone(Landroid/os/Bundle;)Z
    .locals 4
    .parameter "extras"

    .prologue
    const/4 v1, 0x1

    .line 493
    if-eqz p1, :cond_0

    .line 494
    const-string v2, "delete_done"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 495
    .local v0, deleteDone:Z
    if-eqz v0, :cond_0

    .line 496
    iput-boolean v1, p0, Lcom/lge/camera/CameraApp;->mPostviewRequestDeleteDone:Z

    .line 497
    const-string v2, "CameraApp"

    const-string v3, "REQUEST_CODE_POSTVIEW delete done"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .end local v0           #deleteDone:Z
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resultForPostview(Landroid/content/Intent;)Z
    .locals 2
    .parameter "data"

    .prologue
    .line 452
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v1, :cond_1

    .line 453
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 454
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 455
    invoke-direct {p0, v0}, Lcom/lge/camera/CameraApp;->resultForRename(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/lge/camera/CameraApp;->resultForSaveDone(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/lge/camera/CameraApp;->resultForDeleteDone(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/lge/camera/CameraApp;->resultForAttach(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/lge/camera/CameraApp;->resultForPostviewReturn(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 460
    :cond_0
    const/4 v1, 0x1

    .line 464
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

    .line 528
    if-eqz p1, :cond_1

    .line 529
    const-string v3, "postview_return"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 530
    .local v0, postview_return:Z
    if-eqz v0, :cond_1

    .line 531
    invoke-direct {p0, p1}, Lcom/lge/camera/CameraApp;->setZoomForManualAntiBanding(Landroid/os/Bundle;)V

    .line 533
    iput-boolean v1, p0, Lcom/lge/camera/CameraApp;->mPostviewRequestReturn:Z

    .line 534
    const-string v3, "CameraApp"

    const-string v4, "REQUEST_CODE_POSTVIEW postview_return"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-direct {p0, p1}, Lcom/lge/camera/CameraApp;->setThumbnailForPostviewReturn(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 544
    .end local v0           #postview_return:Z
    :goto_0
    return v1

    .line 539
    .restart local v0       #postview_return:Z
    :cond_0
    iput-boolean v2, p0, Lcom/lge/camera/CameraApp;->mPostviewRequestReturn:Z

    .line 540
    iget-object v3, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3, v2}, Lcom/lge/camera/CameraMediator;->enableInput(Z)V

    goto :goto_0

    .end local v0           #postview_return:Z
    :cond_1
    move v1, v2

    .line 544
    goto :goto_0
.end method

.method private resultForRename(Landroid/os/Bundle;)Z
    .locals 5
    .parameter "extras"

    .prologue
    const/4 v1, 0x1

    .line 468
    if-eqz p1, :cond_0

    .line 469
    const-string v2, "renamed_filename"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, filename:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 471
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

    .line 472
    iput-boolean v1, p0, Lcom/lge/camera/CameraApp;->mPostviewRequestRename:Z

    .line 473
    iput-object v0, p0, Lcom/lge/camera/CameraApp;->mRename:Ljava/lang/String;

    .line 477
    .end local v0           #filename:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resultForSaveDone(Landroid/os/Bundle;)Z
    .locals 4
    .parameter "extras"

    .prologue
    const/4 v1, 0x1

    .line 481
    if-eqz p1, :cond_0

    .line 482
    const-string v2, "save_done"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 483
    .local v0, saveDone:Z
    if-eqz v0, :cond_0

    .line 484
    iput-boolean v1, p0, Lcom/lge/camera/CameraApp;->mPostviewRequestSaveDone:Z

    .line 485
    const-string v2, "CameraApp"

    const-string v3, "REQUEST_CODE_POSTVIEW save done"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    .end local v0           #saveDone:Z
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setCAmodelLocalSetting()V
    .locals 4

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, simOperator:Ljava/lang/String;
    const-string v0, "0"

    .line 167
    .local v0, currentMCC:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 168
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 169
    const-string v2, "466"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getFrontPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    const-string v3, "key_camera_auto_review"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    const-string v3, "on"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getBackPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    const-string v3, "key_camera_auto_review"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    const-string v3, "on"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 179
    :cond_0
    const-string v2, "ro.build.target_region"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ESA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getBackPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    const-string v3, "key_flash"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    const-string v3, "auto"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 183
    :cond_1
    return-void
.end method

.method private setPreviewControllerSetupHolder()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 133
    iget-object v1, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/CameraPreviewController;->getCameraPreview()Lcom/lge/camera/components/CameraPreview;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getCameraId()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetFunctionFrontCameraBeautyShot()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 139
    const/4 v0, 0x1

    .line 143
    .local v0, render:Z
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->setupHolder(Z)V

    .line 145
    .end local v0           #render:Z
    :cond_0
    return-void

    .line 141
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #render:Z
    goto :goto_0
.end method

.method private setThumbnailForPostviewReturn(Landroid/os/Bundle;)Z
    .locals 5
    .parameter "extras"

    .prologue
    const/4 v3, 0x0

    .line 565
    if-eqz p1, :cond_1

    .line 567
    :try_start_0
    const-string v2, "thumb_data"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 568
    .local v0, bmp:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 569
    const-string v2, "recent_uri"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/lge/camera/CameraApp;->mFileUri:Landroid/net/Uri;

    .line 570
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mFileUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 571
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v2

    iget-object v4, p0, Lcom/lge/camera/CameraApp;->mFileUri:Landroid/net/Uri;

    invoke-virtual {v2, v0, v4}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->setThumbBitmapAndUpdate(Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    .line 575
    :goto_0
    const/4 v2, 0x1

    .line 582
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :goto_1
    return v2

    .line 573
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v2

    iget-object v4, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->setThumbBitmapAndUpdate(Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 577
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 578
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v2, "CameraApp"

    const-string v4, "NullPointerException:"

    invoke-static {v2, v4, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    .line 579
    goto :goto_1

    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_1
    move v2, v3

    .line 582
    goto :goto_1
.end method

.method private setZoomForManualAntiBanding(Landroid/os/Bundle;)V
    .locals 5
    .parameter "extras"

    .prologue
    .line 548
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportManualAntibanding()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 549
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/ZoomController;->getZoomBar()Lcom/lge/camera/components/ZoomBar;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getCameraId()I

    move-result v2

    if-nez v2, :cond_0

    .line 552
    if-eqz p1, :cond_0

    .line 553
    const-string v2, "currentZoom"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 554
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

    .line 555
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v3, "key_zoom"

    invoke-virtual {v2, v3, v0}, Lcom/lge/camera/CameraMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 556
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 557
    .local v1, value:I
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/ZoomController;->getZoomBar()Lcom/lge/camera/components/ZoomBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/camera/components/ZoomBar;->resetValue(I)V

    .line 558
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/ZoomController;->getZoomBar()Lcom/lge/camera/components/ZoomBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/camera/components/ZoomBar;->resetCursor(I)V

    .line 562
    .end local v0           #curzoom:Ljava/lang/String;
    .end local v1           #value:I
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 194
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
    .line 391
    sget v0, Lcom/lge/camera/util/Common;->APP_CAMERA_INSTANCE_COUNT:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/lge/camera/util/Common;->APP_CAMERA_INSTANCE_COUNT:I

    .line 392
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy CAMERA app_instance_cnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/camera/util/Common;->APP_CAMERA_INSTANCE_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 394
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 631
    const-string v0, "CameraApp"

    const-string v1, "pre-finish-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->hasWrongPreviewWhilePauseBug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->onPause()V

    .line 637
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 638
    const-string v0, "CameraApp"

    const-string v1, "pre-finish-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    return-void
.end method

.method public getPostviewRename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mRename:Ljava/lang/String;

    return-object v0
.end method

.method public getPostviewRequestCode()I
    .locals 1

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/lge/camera/CameraApp;->mPostviewRequestRename:Z

    if-eqz v0, :cond_0

    .line 594
    const/4 v0, 0x0

    .line 608
    :goto_0
    return v0

    .line 596
    :cond_0
    iget-boolean v0, p0, Lcom/lge/camera/CameraApp;->mPostviewRequestSaveDone:Z

    if-eqz v0, :cond_1

    .line 597
    const/4 v0, 0x4

    goto :goto_0

    .line 599
    :cond_1
    iget-boolean v0, p0, Lcom/lge/camera/CameraApp;->mPostviewRequestDeleteDone:Z

    if-eqz v0, :cond_2

    .line 600
    const/4 v0, 0x1

    goto :goto_0

    .line 602
    :cond_2
    iget-boolean v0, p0, Lcom/lge/camera/CameraApp;->mPostviewRequestDoAttach:Z

    if-eqz v0, :cond_3

    .line 603
    const/4 v0, 0x2

    goto :goto_0

    .line 605
    :cond_3
    iget-boolean v0, p0, Lcom/lge/camera/CameraApp;->mPostviewRequestReturn:Z

    if-eqz v0, :cond_4

    .line 606
    const/4 v0, 0x3

    goto :goto_0

    .line 608
    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPostviewUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mFileUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 398
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

    .line 399
    sparse-switch p1, :sswitch_data_0

    .line 416
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 417
    return-void

    .line 401
    :sswitch_0
    invoke-direct {p0, p2, p3}, Lcom/lge/camera/CameraApp;->resultCodeCrop(ILandroid/content/Intent;)V

    goto :goto_0

    .line 404
    :sswitch_1
    invoke-direct {p0, p3}, Lcom/lge/camera/CameraApp;->resultCodeHelp(Landroid/content/Intent;)V

    goto :goto_0

    .line 413
    :sswitch_2
    invoke-direct {p0, p3}, Lcom/lge/camera/CameraApp;->resultForPostview(Landroid/content/Intent;)Z

    goto :goto_0

    .line 399
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 385
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged() = newConfig.orientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 387
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-direct {p0}, Lcom/lge/camera/CameraApp;->initOnCreate()V

    .line 55
    invoke-static {p0, v6}, Lcom/lge/camera/util/Common;->checkEnterApplication(Landroid/app/Activity;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    const-string v2, "CameraApp"

    const-string v3, "CameraApp:onCreate()-end, checkEnterApplication fail."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 59
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    invoke-static {p0}, Lcom/lge/camera/util/Common;->checkCameraOut(Landroid/app/Activity;)V

    .line 91
    :goto_1
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "CameraApp"

    const-string v3, "CameraApp:onCreate() InterruptedException "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 67
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    new-instance v2, Lcom/lge/camera/CameraMediator;

    invoke-direct {v2, p0}, Lcom/lge/camera/CameraMediator;-><init>(Lcom/lge/camera/CameraApp;)V

    iput-object v2, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    .line 68
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->setKeepLastCameraMode()V

    .line 70
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->createPreviewController()V

    .line 71
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camera/CameraPreviewController;->onCreate()V

    .line 72
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->onCreate()V

    .line 74
    new-instance v1, Lcom/lge/camera/setting/PreferenceInflater;

    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lge/camera/setting/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 75
    .local v1, inflater:Lcom/lge/camera/setting/PreferenceInflater;
    iget-object v3, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetBackCameraPreferenceResource()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v3, v2}, Lcom/lge/camera/CameraMediator;->setBackPreference(Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 76
    iget-object v3, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetFrontCameraPreferenceResource()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v3, v2}, Lcom/lge/camera/CameraMediator;->setFrontPreference(Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 78
    invoke-direct {p0}, Lcom/lge/camera/CameraApp;->setCAmodelLocalSetting()V

    .line 80
    new-instance v2, Lcom/lge/camera/listeners/OnKeyEventListener;

    iget-object v3, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-direct {v2, v3}, Lcom/lge/camera/listeners/OnKeyEventListener;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v2, p0, Lcom/lge/camera/CameraApp;->mOnKeyEventListener:Lcom/lge/camera/listeners/OnKeyEventListener;

    .line 81
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->setKeepLastValue()V

    .line 82
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->setActivityLastOrientation()V

    .line 84
    const v2, 0x7f03000c

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraApp;->setContentView(I)V

    .line 86
    invoke-direct {p0}, Lcom/lge/camera/CameraApp;->cameraControllerInit()V

    .line 87
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v3, "com.lge.camera.command.StartInit"

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getInitUiDelay()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/lge/camera/CameraMediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 88
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2, v6}, Lcom/lge/camera/CameraMediator;->checkHideLoadingScreen(Z)V

    .line 90
    const-string v2, "CameraApp"

    const-string v3, "onCreate()-end "

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter "id"
    .parameter "args"

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, retVal:Landroid/app/Dialog;
    iget-object v1, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1, p1, p2}, Lcom/lge/camera/CameraMediator;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 248
    :cond_0
    return-object v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 357
    const-string v0, "CameraApp"

    const-string v1, "onDestroy()-start "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useRootWindowLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    invoke-static {}, Lcom/lge/camera/util/Common;->deleteLoadingWindow()V

    .line 361
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useTurnOffAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    invoke-static {}, Lcom/lge/camera/util/Common;->turnOnAnimation()V

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v0, :cond_2

    .line 365
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->onDestroy()V

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->setWakeLock(Landroid/os/PowerManager$WakeLock;Z)V

    .line 368
    iput-object v2, p0, Lcom/lge/camera/CameraApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 370
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 371
    iput-object v2, p0, Lcom/lge/camera/CameraApp;->mOnKeyEventListener:Lcom/lge/camera/listeners/OnKeyEventListener;

    .line 372
    iput-object v2, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    .line 373
    const-string v0, "CameraApp"

    const-string v1, "onDestroy()-end "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 207
    iget-object v1, p0, Lcom/lge/camera/CameraApp;->mOnKeyEventListener:Lcom/lge/camera/listeners/OnKeyEventListener;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/lge/camera/CameraApp;->mOnKeyEventListener:Lcom/lge/camera/listeners/OnKeyEventListener;

    invoke-virtual {v1, p1, p2}, Lcom/lge/camera/listeners/OnKeyEventListener;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 215
    :cond_0
    return v0
.end method

.method public onKeyDownSuper(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 219
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 223
    iget-object v1, p0, Lcom/lge/camera/CameraApp;->mOnKeyEventListener:Lcom/lge/camera/listeners/OnKeyEventListener;

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/lge/camera/CameraApp;->mOnKeyEventListener:Lcom/lge/camera/listeners/OnKeyEventListener;

    invoke-virtual {v1, p1, p2}, Lcom/lge/camera/listeners/OnKeyEventListener;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 231
    :cond_0
    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Lcom/lge/camera/CameraApp;->setIntent(Landroid/content/Intent;)V

    .line 264
    const-string v0, "CameraApp"

    const-string v1, "start with new intent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->setKeepLastCameraMode()V

    .line 268
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 269
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 316
    const-string v0, "CameraApp"

    const-string v1, "onPause()-start "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->deleteProgressDialog()V

    .line 320
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/lge/camera/util/Common;->galleryCacheDuringCameraApp(Landroid/content/Context;Z)V

    .line 321
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->onPause()V

    .line 325
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useRootWindowLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    invoke-static {}, Lcom/lge/camera/util/Common;->deleteLoadingWindow()V

    .line 328
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useTurnOffAnimation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    invoke-static {}, Lcom/lge/camera/util/Common;->turnOnAnimation()V

    .line 331
    :cond_2
    invoke-static {v2}, Lcom/lge/camera/util/Common;->setEnterCheckComplete(Z)V

    .line 332
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/Common;->checkAudioFocus(Landroid/content/Context;)V

    .line 333
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0, v2}, Lcom/lge/camera/util/Common;->setWakeLock(Landroid/os/PowerManager$WakeLock;Z)V

    .line 334
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 336
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/Common;->printRunningTask(Landroid/content/Context;)V

    .line 337
    const-string v0, "CameraApp"

    const-string v1, "onPause()-end "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/CameraMediator;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 239
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 240
    return-void
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 273
    const-string v5, "CameraApp"

    const-string v6, "onResume() - start"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const v5, 0x7f0a0032

    invoke-static {p0, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v5

    const v6, 0x7f0a0033

    invoke-static {p0, v6}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/lge/camera/properties/CameraConstants;->setLcdSize(II)V

    .line 278
    invoke-static {p0, v8}, Lcom/lge/camera/util/Common;->checkEnterApplication(Landroid/app/Activity;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 279
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 280
    const-string v5, "CameraApp"

    const-string v6, "onResume()-end, checkEnterApplication"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-static {p0}, Lcom/lge/camera/util/Common;->checkCameraOut(Landroid/app/Activity;)V

    .line 312
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-static {p0}, Lcom/lge/camera/util/Common;->backlightControl(Landroid/app/Activity;)V

    .line 285
    iget-object v5, p0, Lcom/lge/camera/CameraApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v5, v8}, Lcom/lge/camera/util/Common;->setWakeLock(Landroid/os/PowerManager$WakeLock;Z)V

    .line 286
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/camera/util/Common;->setFmRadioOff(Landroid/content/Context;)V

    .line 287
    invoke-static {p0}, Lcom/lge/camera/util/Common;->setQuickClipScreenCaptureLimit(Landroid/app/Activity;)V

    .line 289
    iget-object v5, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v5, :cond_2

    .line 290
    iget-object v5, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v5}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/camera/CameraPreviewController;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v4

    .line 291
    .local v4, sizeOnScreenString:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 292
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 293
    const-string v5, "CameraApp"

    const-string v6, "error! sizeOnScreenString is null"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_1
    invoke-static {v4}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v3

    .line 298
    .local v3, previewSizeOnScreen:[I
    iget-object v5, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v5}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v3, v6

    aget v7, v3, v8

    invoke-virtual {v5, v6, v7}, Lcom/lge/camera/controller/camera/CameraPreviewController;->changePreviewMode(II)V

    .line 300
    iget-object v5, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v5}, Lcom/lge/camera/CameraMediator;->onResume()V

    .line 302
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v2, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 303
    .local v2, locale:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, lancode:Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v5, v1}, Lcom/lge/camera/CameraMediator;->setLanguageType(Ljava/lang/String;)V

    .line 306
    invoke-static {}, Lcom/lge/camera/util/Common;->getCurrentDefaultFontIndex()I

    move-result v0

    .line 307
    .local v0, idxFont:I
    iget-object v5, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v5, v0}, Lcom/lge/camera/CameraMediator;->setKoreanFontIndex(I)V

    .line 309
    .end local v0           #idxFont:I
    .end local v1           #lancode:Ljava/lang/String;
    .end local v2           #locale:Ljava/util/Locale;
    .end local v3           #previewSizeOnScreen:[I
    .end local v4           #sizeOnScreenString:Ljava/lang/String;
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 310
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v8}, Lcom/lge/camera/util/Common;->galleryCacheDuringCameraApp(Landroid/content/Context;Z)V

    .line 311
    const-string v5, "CameraApp"

    const-string v6, "onResume() - end"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 253
    const-string v0, "CameraApp"

    const-string v1, "onStart()-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->onStart()V

    .line 257
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 258
    const-string v0, "CameraApp"

    const-string v1, "onStart()-end "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 342
    const-string v0, "CameraApp"

    const-string v1, "onStop()-start "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useRootWindowLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-static {}, Lcom/lge/camera/util/Common;->deleteLoadingWindow()V

    .line 346
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useTurnOffAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    invoke-static {}, Lcom/lge/camera/util/Common;->turnOnAnimation()V

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v0, :cond_2

    .line 350
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->onStop()V

    .line 352
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 353
    const-string v0, "CameraApp"

    const-string v1, "onStop()-end "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0, p1}, Lcom/lge/camera/CameraMediator;->executeTouchEvent(Landroid/view/MotionEvent;)V

    .line 201
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 378
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 379
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->onUserInteraction()V

    .line 382
    :cond_0
    return-void
.end method

.method public setPostviewRequestInitCode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 620
    iput-boolean v0, p0, Lcom/lge/camera/CameraApp;->mPostviewRequestRename:Z

    .line 621
    iput-boolean v0, p0, Lcom/lge/camera/CameraApp;->mPostviewRequestSaveDone:Z

    .line 622
    iput-boolean v0, p0, Lcom/lge/camera/CameraApp;->mPostviewRequestDeleteDone:Z

    .line 623
    iput-boolean v0, p0, Lcom/lge/camera/CameraApp;->mPostviewRequestDoAttach:Z

    .line 624
    iput-boolean v0, p0, Lcom/lge/camera/CameraApp;->mPostviewRequestReturn:Z

    .line 625
    iput-object v1, p0, Lcom/lge/camera/CameraApp;->mRename:Ljava/lang/String;

    .line 626
    iput-object v1, p0, Lcom/lge/camera/CameraApp;->mFileUri:Landroid/net/Uri;

    .line 627
    return-void
.end method
