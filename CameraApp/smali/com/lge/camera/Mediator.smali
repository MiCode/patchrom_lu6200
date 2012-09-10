.class public abstract Lcom/lge/camera/Mediator;
.super Ljava/lang/Object;
.source "Mediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/Mediator$ScaleListener;
    }
.end annotation


# static fields
.field public static final APP_STAT_INIT:I = 0x0

.field public static final APP_STAT_PREVIEW:I = 0x1

.field public static final APP_STAT_REVIEW:I = 0x2

.field public static countryCode:Ljava/lang/String;

.field public static mConnectedHdmi:Z

.field private static mLocationOn:Z

.field public static operatorCode:Ljava/lang/String;


# instance fields
.field private idxKoreanFont:I

.field protected imageHandler:Lcom/lge/camera/util/ImageHandler;

.field private mActionDetected:Z

.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected mApplicationMode:I

.field private mAudioRecogEngine:Lcom/lge/voiceshutter/library/AudioRecogEngine;

.field private mBackPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

.field private mBatteryLevel:I

.field protected mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

.field protected mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

.field public mBroadCastReceiverDefine:Lcom/lge/camera/receiver/BroadCastReceiverDefine;

.field private mCamcorderApplicationCameraMode:I

.field private mCameraApplicationCameraMode:I

.field private mCameraId:I

.field protected mCameraMode:I

.field private mChangingToPostview:Z

.field public mCharging:Z

.field protected mCommandManager:Lcom/lge/camera/command/CommandManager;

.field private mControllerInitialized:Z

.field public mControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/controller/Controller;",
            ">;"
        }
    .end annotation
.end field

.field protected mDialogController:Lcom/lge/camera/controller/DialogController;

.field private mDidRegister:Z

.field private mErrorOccuredAndFinish:Z

.field private mFaceBeauty:Lcom/lge/olaworks/library/FaceBeauty;

.field protected mFileHelper:Lcom/lge/camera/util/FileNamingHelper;

.field protected mFocusController:Lcom/lge/camera/controller/FocusController;

.field protected mFocusMode:I

.field private mFrontPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

.field private mHandler:Lcom/lge/camera/util/MainHandler;

.field protected mImageRotationDegree:I

.field private mInCaptureProgress:Z

.field protected mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

.field private mIsEnableInput:Z

.field private mIsSwapCameraProcessing:Z

.field private mLastOrientation:I

.field private mLastTouchedAFTime:J

.field mModule:Lcom/lge/camera/module/Module;

.field public mModuleFactory:Lcom/lge/camera/module/ModuleFactory;

.field private mNumberOfCameras:I

.field private mOpenLBSSetting:Z

.field protected mOrientation:I

.field private mOrientationChangeEnabled:Z

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mParameteredRotation:I

.field protected mPausing:Z

.field private mPostRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mPreferences:Lcom/lge/camera/setting/ComboPreferences;

.field protected mPreviewController:Lcom/lge/camera/controller/PreviewController;

.field protected mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

.field protected mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

.field protected mRecordLocation:Z

.field private mRotateBatteryIndicatorwithHint:Z

.field protected mSavedFileName:Ljava/lang/String;

.field protected mSavedImageUri:Landroid/net/Uri;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field protected mSettingController:Lcom/lge/camera/controller/SettingController;

.field protected mSoundController:Lcom/lge/camera/controller/SoundController;

.field protected mStatus:I

.field protected mStorageController:Lcom/lge/camera/controller/StorageController;

.field protected mSubMenuMode:I

.field protected mToastController:Lcom/lge/camera/controller/ToastController;

.field private mUiThread:Ljava/lang/Thread;

.field private mVideoState:I

.field protected mZoomController:Lcom/lge/camera/controller/ZoomController;

.field private strLanguage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/camera/Mediator;->mConnectedHdmi:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 204
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object v3, p0, Lcom/lge/camera/Mediator;->mModuleFactory:Lcom/lge/camera/module/ModuleFactory;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    .line 131
    iput-object v3, p0, Lcom/lge/camera/Mediator;->mModule:Lcom/lge/camera/module/Module;

    .line 143
    iput v2, p0, Lcom/lge/camera/Mediator;->mVideoState:I

    .line 148
    iput v2, p0, Lcom/lge/camera/Mediator;->mApplicationMode:I

    .line 149
    iput v2, p0, Lcom/lge/camera/Mediator;->mCameraMode:I

    .line 150
    iput v1, p0, Lcom/lge/camera/Mediator;->mOrientation:I

    .line 157
    iput v2, p0, Lcom/lge/camera/Mediator;->mStatus:I

    .line 160
    iput v1, p0, Lcom/lge/camera/Mediator;->mLastOrientation:I

    .line 162
    iput-object v3, p0, Lcom/lge/camera/Mediator;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 163
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mRotateBatteryIndicatorwithHint:Z

    .line 164
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mDidRegister:Z

    .line 170
    new-instance v0, Lcom/lge/camera/util/ImageRotationOn;

    invoke-direct {v0}, Lcom/lge/camera/util/ImageRotationOn;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/Mediator;->mIsEnableInput:Z

    .line 175
    iput-object v3, p0, Lcom/lge/camera/Mediator;->mActivity:Ljava/lang/ref/WeakReference;

    .line 176
    new-instance v0, Lcom/lge/camera/command/CommandManager;

    invoke-direct {v0, p0}, Lcom/lge/camera/command/CommandManager;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    .line 177
    new-instance v0, Lcom/lge/camera/util/MainHandler;

    invoke-direct {v0}, Lcom/lge/camera/util/MainHandler;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    .line 183
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mControllerInitialized:Z

    .line 184
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mIsSwapCameraProcessing:Z

    .line 186
    iput v2, p0, Lcom/lge/camera/Mediator;->mCameraApplicationCameraMode:I

    .line 187
    iput v2, p0, Lcom/lge/camera/Mediator;->mCamcorderApplicationCameraMode:I

    .line 189
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mErrorOccuredAndFinish:Z

    .line 190
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/Mediator;->mLastTouchedAFTime:J

    .line 191
    iput-object v3, p0, Lcom/lge/camera/Mediator;->mUiThread:Ljava/lang/Thread;

    .line 193
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mCharging:Z

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    .line 197
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mOpenLBSSetting:Z

    .line 200
    iput-object v3, p0, Lcom/lge/camera/Mediator;->mAudioRecogEngine:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    .line 806
    new-instance v0, Lcom/lge/olaworks/library/FaceBeauty;

    invoke-direct {v0}, Lcom/lge/olaworks/library/FaceBeauty;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mFaceBeauty:Lcom/lge/olaworks/library/FaceBeauty;

    .line 923
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mActionDetected:Z

    .line 1447
    iput-object v3, p0, Lcom/lge/camera/Mediator;->mFrontPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 1448
    iput-object v3, p0, Lcom/lge/camera/Mediator;->mBackPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 1596
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mOrientationChangeEnabled:Z

    .line 1988
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mChangingToPostview:Z

    .line 1996
    const-string v0, "en"

    iput-object v0, p0, Lcom/lge/camera/Mediator;->strLanguage:Ljava/lang/String;

    .line 2003
    iput v2, p0, Lcom/lge/camera/Mediator;->idxKoreanFont:I

    .line 205
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mActivity:Ljava/lang/ref/WeakReference;

    .line 206
    new-instance v0, Lcom/lge/camera/setting/ComboPreferences;

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/camera/setting/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mPreferences:Lcom/lge/camera/setting/ComboPreferences;

    .line 207
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreferences:Lcom/lge/camera/setting/ComboPreferences;

    invoke-static {v0}, Lcom/lge/camera/setting/Setting;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/Mediator;->mCameraId:I

    .line 208
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreferences:Lcom/lge/camera/setting/ComboPreferences;

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/Mediator;->mCameraId:I

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/setting/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 209
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/util/CameraHolder;->getNumberOfCameras()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/Mediator;->mNumberOfCameras:I

    .line 210
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->createFactory()V

    .line 212
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mUiThread:Ljava/lang/Thread;

    .line 213
    return-void
.end method

.method static synthetic access$100(Lcom/lge/camera/Mediator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mOrientationChangeEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/lge/camera/Mediator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/lge/camera/Mediator;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$202(Lcom/lge/camera/Mediator;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/lge/camera/Mediator;->mLastOrientation:I

    return p1
.end method

.method static synthetic access$300(Lcom/lge/camera/Mediator;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/lge/camera/Mediator;->setOrientationListenerRotate(I)V

    return-void
.end method

.method private registerReceiver()V
    .locals 1

    .prologue
    .line 835
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mDidRegister:Z

    if-nez v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBroadCastReceiverDefine:Lcom/lge/camera/receiver/BroadCastReceiverDefine;

    invoke-virtual {v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->registerReceiver()V

    .line 837
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/Mediator;->mDidRegister:Z

    .line 839
    :cond_0
    return-void
.end method

.method private setOrientationListenerRotate(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 1707
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->setOrientation(I)V

    .line 1709
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1710
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1711
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "animation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1712
    const-string v1, "com.lge.camera.command.Rotate"

    invoke-virtual {p0, v1, v0}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1716
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 1714
    :cond_0
    const-string v1, "com.lge.camera.command.Rotate"

    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unregisterReceivers()V
    .locals 1

    .prologue
    .line 846
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mDidRegister:Z

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBroadCastReceiverDefine:Lcom/lge/camera/receiver/BroadCastReceiverDefine;

    invoke-virtual {v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->unRegisterReceiver()V

    .line 848
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/Mediator;->mDidRegister:Z

    .line 850
    :cond_0
    return-void
.end method


# virtual methods
.method public checkAutoReviewOff(Z)Z
    .locals 5
    .parameter "needToCheckMore"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1888
    const-string v3, "key_camera_auto_review"

    invoke-virtual {p0, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "off"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isAttachIntent()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1889
    if-eqz p1, :cond_0

    .line 1890
    const-string v3, "key_camera_shot_mode"

    invoke-virtual {p0, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1892
    .local v0, shotMode:Ljava/lang/String;
    const-string v3, "key_camera_timer"

    invoke-virtual {p0, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "shotmode_normal"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "shotmode_hdr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "not found"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isTimeMachineModeOn()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1905
    .end local v0           #shotMode:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .restart local v0       #shotMode:Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 1899
    goto :goto_0

    .end local v0           #shotMode:Ljava/lang/String;
    :cond_2
    move v1, v2

    .line 1905
    goto :goto_0
.end method

.method public checkHideLoadingScreen(Z)V
    .locals 1
    .parameter "skipCheckLockScreen"

    .prologue
    .line 2097
    if-nez p1, :cond_0

    invoke-static {}, Lcom/lge/camera/util/Common;->isScreenLocked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2098
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useRootWindowLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2099
    invoke-static {}, Lcom/lge/camera/util/Common;->deleteLoadingWindow()V

    .line 2101
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_2

    .line 2102
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->hideLoadingView()V

    .line 2105
    :cond_2
    return-void
.end method

.method public checkHotkeyAndsetCameraMode()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 1516
    const-string v3, "CameraApp"

    const-string v4, "checkHotkeyAndsetCameraMode()-start"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1518
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "cameraModeOfCamera"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1519
    .local v1, cameraModeOfCamera:I
    const-string v3, "cameraModeOfCamcorder"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1521
    .local v0, cameraModeOfCamcorder:I
    if-gez v1, :cond_0

    if-ltz v0, :cond_1

    .line 1522
    :cond_0
    iput v1, p0, Lcom/lge/camera/Mediator;->mCameraApplicationCameraMode:I

    .line 1523
    iput v0, p0, Lcom/lge/camera/Mediator;->mCamcorderApplicationCameraMode:I

    .line 1525
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setKeepLastValue intent get cameraModeOfCamera ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] in camera"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setKeepLastValue intent get mCamcorderApplicationCameraMode ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/Mediator;->mCamcorderApplicationCameraMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] in camcorder"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_2

    .line 1529
    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->setCameraMode(I)V

    .line 1530
    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->setCameraId(I)V

    .line 1537
    :cond_1
    :goto_0
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setKeepLastValue getCameraMode() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraMode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    const-string v3, "CameraApp"

    const-string v4, "checkHotkeyAndsetCameraMode()-end"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    return-void

    .line 1532
    :cond_2
    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->setCameraMode(I)V

    .line 1533
    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->setCameraId(I)V

    goto :goto_0
.end method

.method public checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "key"
    .parameter "shotMode"

    .prologue
    const/4 v0, 0x0

    .line 2086
    const-string v1, "key_camera_shot_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isTimeMachineModeOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2092
    :cond_0
    :goto_0
    return v0

    .line 2089
    :cond_1
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2090
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearScreen()V
    .locals 1

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->clearSubMenu()V

    .line 571
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->hide()V

    .line 572
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getIndicatorController()Lcom/lge/camera/controller/IndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->hide()V

    .line 573
    return-void
.end method

.method public clearSubMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 576
    const-string v0, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/ZoomController;->showControl(Z)V

    .line 579
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/BrightnessController;->showControl(Z)V

    .line 580
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/BeautyshotController;->showControl(Z)V

    .line 581
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->clearSubMenu()V

    .line 582
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->showHelpSubButton(Z)V

    .line 583
    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 585
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->updateThumbnailButtonVisibility()V

    .line 588
    :cond_0
    return-void
.end method

.method public closeCamera()V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->closeCamera()V

    .line 430
    :goto_0
    return-void

    .line 428
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "mPreviewController is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected configureWindow()V
    .locals 3

    .prologue
    .line 1197
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1198
    .local v0, window:Landroid/view/Window;
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1199
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 1200
    return-void
.end method

.method protected createControllers()V
    .locals 2

    .prologue
    .line 450
    new-instance v0, Lcom/lge/camera/controller/BrightnessController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/BrightnessController;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    .line 451
    new-instance v0, Lcom/lge/camera/controller/BeautyshotController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/BeautyshotController;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    .line 452
    new-instance v0, Lcom/lge/camera/controller/SettingRotatableController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SettingRotatableController;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    .line 453
    new-instance v0, Lcom/lge/camera/controller/ZoomController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ZoomController;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    .line 454
    new-instance v0, Lcom/lge/camera/controller/DialogController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/DialogController;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    .line 455
    new-instance v0, Lcom/lge/camera/controller/SoundController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SoundController;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    .line 456
    new-instance v0, Lcom/lge/camera/controller/ToastController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ToastController;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    .line 458
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    return-void
.end method

.method public createFactory()V
    .locals 2

    .prologue
    .line 402
    new-instance v0, Lcom/lge/camera/module/ModuleFactory;

    const-string v1, "com.lge.camera.module"

    invoke-direct {v0, v1, p0}, Lcom/lge/camera/module/ModuleFactory;-><init>(Ljava/lang/String;Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mModuleFactory:Lcom/lge/camera/module/ModuleFactory;

    .line 403
    return-void
.end method

.method public debugStackTrace()V
    .locals 6

    .prologue
    .line 1585
    const-string v3, "CameraApp"

    const-string v4, "Printing stack trace : "

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 1587
    .local v0, elements:[Ljava/lang/StackTraceElement;
    const/4 v1, 0x3

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 1588
    aget-object v2, v0, v1

    .line 1589
    .local v2, s:Ljava/lang/StackTraceElement;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1594
    .end local v2           #s:Ljava/lang/StackTraceElement;
    :cond_0
    return-void
.end method

.method public deleteProgressDialog()V
    .locals 2

    .prologue
    .line 2127
    const-string v0, "CameraApp"

    const-string v1, "deleteProgressDialog"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->getDialogID()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    .line 2129
    new-instance v0, Lcom/lge/camera/Mediator$4;

    invoke-direct {v0, p0}, Lcom/lge/camera/Mediator$4;-><init>(Lcom/lge/camera/Mediator;)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2138
    :cond_0
    return-void
.end method

.method public abstract doAttach()V
.end method

.method public doCommand(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    invoke-virtual {v0, p1}, Lcom/lge/camera/command/CommandManager;->doCommand(Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public doCommand(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "msg"
    .parameter "arg1"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/command/CommandManager;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    return-void
.end method

.method public doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "msg"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/command/CommandManager;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 306
    return-void
.end method

.method public doCommandDelayed(Ljava/lang/String;J)V
    .locals 6
    .parameter "msg"
    .parameter "delay"

    .prologue
    .line 337
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/Mediator;->doCommandWithFixedRate(Ljava/lang/String;JJ)V

    .line 338
    return-void
.end method

.method public doCommandDelayed(Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 7
    .parameter "msg"
    .parameter "obj"
    .parameter "delay"

    .prologue
    .line 341
    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/lge/camera/Mediator;->doCommandWithFixedRate(Ljava/lang/String;Ljava/lang/Object;JJ)V

    .line 342
    return-void
.end method

.method public doCommandUi(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    invoke-virtual {v0, p1}, Lcom/lge/camera/command/CommandManager;->doCommandUi(Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "msg"
    .parameter "arg1"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/command/CommandManager;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 310
    return-void
.end method

.method public doCommandWithFixedRate(Ljava/lang/String;JJ)V
    .locals 6
    .parameter "msg"
    .parameter "delay"
    .parameter "period"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/command/CommandManager;->doCommandWithFixedRate(Ljava/lang/String;JJ)V

    .line 346
    return-void
.end method

.method public doCommandWithFixedRate(Ljava/lang/String;Ljava/lang/Object;JJ)V
    .locals 7
    .parameter "msg"
    .parameter "obj"
    .parameter "delay"
    .parameter "period"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/lge/camera/command/CommandManager;->doCommandWithFixedRate(Ljava/lang/String;Ljava/lang/Object;JJ)V

    .line 350
    return-void
.end method

.method public doExeTouchActionMove(Landroid/view/MotionEvent;IIZ)V
    .locals 15
    .parameter "event"
    .parameter "x"
    .parameter "y"
    .parameter "bInPreviewScreen"

    .prologue
    .line 1005
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v11

    iget v11, v11, Lcom/lge/camera/controller/FocusController;->mFocusAreaWidth:I

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v12

    iget v12, v12, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftmargin:I

    add-int/2addr v11, v12

    move/from16 v0, p2

    if-gt v0, v11, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v11

    iget v11, v11, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftmargin:I

    move/from16 v0, p2

    if-ge v0, v11, :cond_1

    .line 1094
    :cond_0
    :goto_0
    return-void

    .line 1011
    :cond_1
    iget-object v11, p0, Lcom/lge/camera/Mediator;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/lge/camera/Mediator;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v11}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1016
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isFixedFocus()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1017
    iget v11, p0, Lcom/lge/camera/Mediator;->mSubMenuMode:I

    if-nez v11, :cond_0

    iget-boolean v11, p0, Lcom/lge/camera/Mediator;->mActionDetected:Z

    if-nez v11, :cond_0

    .line 1018
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v11

    if-nez v11, :cond_0

    .line 1019
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isInitialized()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1022
    const-string v11, "key_camera_timer"

    invoke-virtual {p0, v11}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1023
    .local v7, timerSetting:Ljava/lang/String;
    const-string v11, "0"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    move-object v11, p0

    check-cast v11, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v11}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lge/camera/controller/camera/TimerController;->isTimerShotCountdown()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1027
    :cond_3
    const-string v11, "key_camera_shot_mode"

    const-string v12, "shotmode_panorama"

    invoke-virtual {p0, v11, v12}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "key_focus"

    invoke-virtual {p0, v11}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "face_tracking"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isCafSupported()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1031
    :cond_4
    const-string v11, "key_camera_shot_mode"

    const-string v12, "shotmode_continuous"

    invoke-virtual {p0, v11, v12}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1032
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lge/camera/module/Module;->isRunning()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1037
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iget-wide v13, p0, Lcom/lge/camera/Mediator;->mLastTouchedAFTime:J

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x258

    cmp-long v11, v11, v13

    if-lez v11, :cond_0

    .line 1041
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 1046
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lge/camera/controller/FocusController;->getFocusState()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lge/camera/controller/FocusController;->getFocusState()I

    move-result v11

    const/4 v12, 0x5

    if-eq v11, v12, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lge/camera/controller/FocusController;->getFocusState()I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_0

    .line 1057
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lge/camera/controller/FocusController;->isFocusViewVisible()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1058
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lge/camera/controller/FocusController;->hideFocus()Z

    .line 1060
    :cond_6
    if-eqz p4, :cond_0

    .line 1061
    const v11, 0x7f090090

    invoke-virtual {p0, v11}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 1062
    .local v9, v:Landroid/widget/ImageView;
    if-eqz v9, :cond_0

    .line 1063
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1064
    const/16 v11, 0xb5

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1065
    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1066
    .local v1, ftm:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v10

    .line 1067
    .local v10, width:I
    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    .line 1071
    .local v2, height:I
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v11

    iget v6, v11, Lcom/lge/camera/controller/FocusController;->mFocusAreaWidth:I

    .line 1072
    .local v6, previewWidth:I
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v11

    iget v4, v11, Lcom/lge/camera/controller/FocusController;->mFocusAreaHeight:I

    .line 1073
    .local v4, previewHeight:I
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v11

    iget v5, v11, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftmargin:I

    .line 1075
    .local v5, previewLeftMargin:I
    add-int v11, v5, v6

    div-int/lit8 v12, v10, 0x2

    sub-int/2addr v11, v12

    move/from16 v0, p2

    if-le v0, v11, :cond_7

    .line 1076
    add-int v11, v5, v6

    div-int/lit8 v12, v10, 0x2

    sub-int p2, v11, v12

    .line 1079
    :cond_7
    div-int/lit8 v11, v2, 0x2

    sub-int v11, v4, v11

    move/from16 v0, p3

    if-le v0, v11, :cond_8

    .line 1080
    div-int/lit8 v11, v2, 0x2

    sub-int p3, v4, v11

    .line 1083
    :cond_8
    sub-int v11, p2, v5

    div-int/lit8 v12, v10, 0x2

    sub-int v3, v11, v12

    .line 1084
    .local v3, left:I
    div-int/lit8 v11, v2, 0x2

    sub-int v8, p3, v11

    .line 1086
    .local v8, top:I
    if-gez v3, :cond_9

    const/4 v3, 0x0

    .end local v3           #left:I
    :cond_9
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1087
    if-gez v8, :cond_a

    const/4 v8, 0x0

    .end local v8           #top:I
    :cond_a
    iput v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1088
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public doExeTouchActionUp(Landroid/view/MotionEvent;II)V
    .locals 9
    .parameter "event"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v8, 0x0

    .line 1098
    const v4, 0x7f090090

    invoke-virtual {p0, v4}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1099
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 1100
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1103
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1166
    :cond_1
    :goto_0
    return-void

    .line 1107
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/SettingController;->isNullSettingView()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1108
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/SettingController;->isVisible()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1111
    iput v8, p0, Lcom/lge/camera/Mediator;->mSubMenuMode:I

    .line 1112
    const-string v4, "com.lge.camera.command.RemoveSettingMenu"

    invoke-virtual {p0, v4}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 1165
    :cond_3
    :goto_1
    iput-boolean v8, p0, Lcom/lge/camera/Mediator;->mActionDetected:Z

    goto :goto_0

    .line 1114
    :cond_4
    iget v4, p0, Lcom/lge/camera/Mediator;->mSubMenuMode:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_b

    iget v4, p0, Lcom/lge/camera/Mediator;->mSubMenuMode:I

    if-eqz v4, :cond_b

    iget v4, p0, Lcom/lge/camera/Mediator;->mSubMenuMode:I

    const/16 v5, 0x10

    if-eq v4, v5, :cond_b

    .line 1116
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a01cc

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    .line 1118
    .local v3, zoom_brightness_touch_area_start_y:I
    iget v4, p0, Lcom/lge/camera/Mediator;->mSubMenuMode:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_5

    iget v4, p0, Lcom/lge/camera/Mediator;->mSubMenuMode:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_5

    iget v4, p0, Lcom/lge/camera/Mediator;->mSubMenuMode:I

    const/16 v5, 0xf

    if-ne v4, v5, :cond_6

    :cond_5
    if-ge p3, v3, :cond_a

    .line 1122
    :cond_6
    iget-boolean v4, p0, Lcom/lge/camera/Mediator;->mActionDetected:Z

    if-nez v4, :cond_3

    .line 1123
    iput v8, p0, Lcom/lge/camera/Mediator;->mSubMenuMode:I

    .line 1124
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->clearSubMenu()V

    .line 1125
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/IndicatorController;->show()V

    .line 1126
    const-string v4, "key_camera_shot_mode"

    const-string v5, "shotmode_panorama"

    invoke-virtual {p0, v4, v5}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1127
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v4

    if-nez v4, :cond_7

    move-object v4, p0

    .line 1128
    check-cast v4, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/camera/PanoramaController;->showPanoramaView()V

    .line 1140
    :cond_7
    :goto_2
    const-string v4, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    invoke-virtual {p0, v4}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    goto :goto_1

    .line 1131
    :cond_8
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1132
    const-string v4, "key_focus"

    invoke-virtual {p0, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "auto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "key_focus"

    invoke-virtual {p0, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "continuous_focus"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_9

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isFixedFocus()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1136
    :cond_9
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/FocusController;->showFocus()Z

    goto :goto_2

    .line 1143
    :cond_a
    iget v4, p0, Lcom/lge/camera/Mediator;->mSubMenuMode:I

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    .line 1147
    :sswitch_0
    const-string v4, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    invoke-virtual {p0, v4}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1153
    .end local v3           #zoom_brightness_touch_area_start_y:I
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1154
    .local v0, current_time:J
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PinchZoom : touched time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/lge/camera/Mediator;->mLastTouchedAFTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/lge/camera/Mediator;->mLastTouchedAFTime:J

    sub-long v6, v0, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    iget-boolean v4, p0, Lcom/lge/camera/Mediator;->mActionDetected:Z

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1157
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PinchZoom : scaleDetected = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/lge/camera/Mediator;->mActionDetected:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    iget-wide v4, p0, Lcom/lge/camera/Mediator;->mLastTouchedAFTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x258

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 1159
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lge/camera/Mediator;->mLastTouchedAFTime:J

    .line 1160
    invoke-virtual {p0, p2, p3}, Lcom/lge/camera/Mediator;->doTouchbyAF(II)V

    goto/16 :goto_1

    .line 1143
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method public doTouchbyAF(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1613
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v0

    if-nez v0, :cond_5

    .line 1614
    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_panorama"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 1615
    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->isPanoramaStarted()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->isSynthesisInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1639
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 1620
    .restart local p0
    :cond_1
    check-cast p0, Lcom/lge/camera/CameraMediator;

    .end local p0
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->showPanoramaView()V

    goto :goto_0

    .line 1624
    .restart local p0
    :cond_2
    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_continuous"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1625
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/module/Module;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1633
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1634
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/FocusController;->startFocusByTouchPress(II)V

    goto :goto_0

    .line 1628
    :cond_4
    const-string v0, "key_camera_timer"

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, p0

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/TimerController;->isTimerShotCountdown()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 1636
    :cond_5
    iget v0, p0, Lcom/lge/camera/Mediator;->mApplicationMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1637
    check-cast p0, Lcom/lge/camera/CamcorderMediator;

    .end local p0
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->show()V

    goto :goto_0
.end method

.method public enableInput(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 559
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableInput("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mIsEnableInput:Z

    .line 561
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isOnPreviewFrameSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/Mediator;->mIsEnableInput:Z

    .line 564
    :cond_0
    return-void
.end method

.method public enableOrientationListener(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1598
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1599
    const-string v0, "CameraApp"

    const-string v1, "Activity is finishing. so listener must be disabled"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    const/4 p1, 0x0

    .line 1603
    :cond_0
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mOrientationChangeEnabled:Z

    .line 1604
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 1605
    if-eqz p1, :cond_2

    .line 1606
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 1610
    :cond_1
    :goto_0
    return-void

    .line 1608
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0
.end method

.method public executeTouchEvent(Landroid/view/MotionEvent;)V
    .locals 14
    .parameter "event"

    .prologue
    const v13, 0x7f090090

    const/16 v12, 0x8

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 926
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 927
    .local v5, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 928
    .local v6, y:I
    const/4 v0, 0x1

    .line 929
    .local v0, bInPreviewScreen:Z
    iget-boolean v7, p0, Lcom/lge/camera/Mediator;->mPausing:Z

    if-eqz v7, :cond_1

    .line 1002
    :cond_0
    :goto_0
    return-void

    .line 932
    :cond_1
    iget-object v7, p0, Lcom/lge/camera/Mediator;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v7, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    if-le v7, v10, :cond_5

    .line 934
    const v7, 0x7f09008c

    invoke-virtual {p0, v7}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 935
    .local v2, previewLayout:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 938
    .local v3, previewParam:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/controller/PreviewController;->getPreviewMode()I

    move-result v7

    if-eq v7, v10, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetXGAmodel()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0a0045

    invoke-static {v8, v9}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v8

    sub-int/2addr v7, v8

    if-le v5, v7, :cond_3

    .line 940
    const/4 v0, 0x0

    .line 942
    :cond_3
    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-lt v5, v7, :cond_4

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v7, v8

    if-gt v5, v7, :cond_4

    iget v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    if-lt v6, v7, :cond_4

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    if-le v6, v7, :cond_6

    .line 945
    :cond_4
    const/4 v0, 0x0

    .line 965
    .end local v2           #previewLayout:Landroid/view/View;
    .end local v3           #previewParam:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 967
    :pswitch_0
    const-string v7, "CameraApp"

    const-string v8, "PinchZoom : ACTION_DOWN"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    iput-boolean v11, p0, Lcom/lge/camera/Mediator;->mActionDetected:Z

    .line 971
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isInitialized()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 975
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/controller/SettingController;->isNullSettingView()Z

    move-result v7

    if-nez v7, :cond_0

    .line 976
    iput v11, p0, Lcom/lge/camera/Mediator;->mSubMenuMode:I

    .line 977
    const-string v7, "com.lge.camera.command.RemoveSettingMenu"

    invoke-virtual {p0, v7}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 978
    iput-boolean v10, p0, Lcom/lge/camera/Mediator;->mActionDetected:Z

    goto :goto_0

    .line 947
    .restart local v2       #previewLayout:Landroid/view/View;
    .restart local v3       #previewParam:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v7

    check-cast v7, Lcom/lge/camera/controller/camera/CameraFocusController;

    invoke-virtual {v7}, Lcom/lge/camera/controller/camera/CameraFocusController;->isSnapOnFinish()Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v7

    if-ne v7, v10, :cond_5

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/controller/PreviewController;->effectsActive()Z

    move-result v7

    if-nez v7, :cond_5

    .line 950
    :cond_8
    :try_start_0
    iget-object v7, p0, Lcom/lge/camera/Mediator;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 951
    const-string v7, "CameraApp"

    const-string v8, "PinchZoom : detect success"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/lge/camera/Mediator;->mActionDetected:Z

    .line 953
    const v7, 0x7f090090

    invoke-virtual {p0, v7}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 954
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    .line 955
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 959
    .end local v4           #v:Landroid/view/View;
    :catch_0
    move-exception v1

    .line 960
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v7, "CameraApp"

    const-string v8, "mScaleDetector fail"

    invoke-static {v7, v8, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 983
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    .end local v2           #previewLayout:Landroid/view/View;
    .end local v3           #previewParam:Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_1
    const-string v7, "CameraApp"

    const-string v8, "PinchZoom : ACTION_MOVE"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    invoke-virtual {p0, p1, v5, v6, v0}, Lcom/lge/camera/Mediator;->doExeTouchActionMove(Landroid/view/MotionEvent;IIZ)V

    goto/16 :goto_0

    .line 988
    :pswitch_2
    const-string v7, "CameraApp"

    const-string v8, "PinchZoom : ACTION_UP"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    invoke-virtual {p0, p1, v5, v6}, Lcom/lge/camera/Mediator;->doExeTouchActionUp(Landroid/view/MotionEvent;II)V

    goto/16 :goto_0

    .line 994
    :pswitch_3
    const-string v7, "CameraApp"

    const-string v8, "ACTION_CANCEL"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    invoke-virtual {p0, v13}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 996
    .local v4, v:Landroid/widget/ImageView;
    if-eqz v4, :cond_0

    .line 997
    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 965
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public findScheduledCommand(Ljava/lang/String;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    invoke-virtual {v0, p1}, Lcom/lge/camera/command/CommandManager;->findScheduledCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationMode()I
    .locals 1

    .prologue
    .line 603
    iget v0, p0, Lcom/lge/camera/Mediator;->mApplicationMode:I

    return v0
.end method

.method public getApplicationModeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 610
    iget v0, p0, Lcom/lge/camera/Mediator;->mApplicationMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 611
    const-string v0, "Camcorder"

    .line 614
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Camera"

    goto :goto_0
.end method

.method public getBackPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;
    .locals 1

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBackPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    return-object v0
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 676
    iget v0, p0, Lcom/lge/camera/Mediator;->mBatteryLevel:I

    return v0
.end method

.method public getBeautyshotController()Lcom/lge/camera/controller/BeautyshotController;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    return-object v0
.end method

.method public getBrightnessController()Lcom/lge/camera/controller/BrightnessController;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    return-object v0
.end method

.method public getCameraDevice()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public getCameraId()I
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lcom/lge/camera/Mediator;->mCameraId:I

    return v0
.end method

.method public getCameraMode()I
    .locals 1

    .prologue
    .line 629
    iget v0, p0, Lcom/lge/camera/Mediator;->mCameraMode:I

    return v0
.end method

.method public getCameraModeOfCamcorder()I
    .locals 1

    .prologue
    .line 1487
    iget v0, p0, Lcom/lge/camera/Mediator;->mCamcorderApplicationCameraMode:I

    return v0
.end method

.method public getCameraModeOfCamera()I
    .locals 1

    .prologue
    .line 1484
    iget v0, p0, Lcom/lge/camera/Mediator;->mCameraApplicationCameraMode:I

    return v0
.end method

.method public abstract getCurrentLocation()Landroid/location/Location;
.end method

.method public getCurrentModule()Lcom/lge/camera/module/Module;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mModule:Lcom/lge/camera/module/Module;

    return-object v0
.end method

.method public getDeviceDegree()I
    .locals 5

    .prologue
    .line 894
    iget v1, p0, Lcom/lge/camera/Mediator;->mLastOrientation:I

    .line 896
    .local v1, orientation:I
    iget v2, p0, Lcom/lge/camera/Mediator;->mLastOrientation:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 897
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 898
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget v2, p0, Lcom/lge/camera/Mediator;->mCameraId:I

    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 900
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceDegree info.facing ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 903
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v3, p0, Lcom/lge/camera/Mediator;->mLastOrientation:I

    sub-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 907
    :goto_0
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "info.orientation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLastOrientation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/camera/Mediator;->mLastOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", orientation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    .end local v0           #info:Landroid/hardware/Camera$CameraInfo;
    :goto_1
    return v1

    .line 905
    .restart local v0       #info:Landroid/hardware/Camera$CameraInfo;
    :cond_0
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v3, p0, Lcom/lge/camera/Mediator;->mLastOrientation:I

    add-int/2addr v2, v3

    rem-int/lit16 v1, v2, 0x168

    goto :goto_0

    .line 909
    .end local v0           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getDialogController()Lcom/lge/camera/controller/DialogController;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    return-object v0
.end method

.method public getEnableInput()Z
    .locals 1

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mIsEnableInput:Z

    return v0
.end method

.method public getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    return-object v0
.end method

.method public getFaceBeauty()Lcom/lge/olaworks/library/FaceBeauty;
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFaceBeauty:Lcom/lge/olaworks/library/FaceBeauty;

    return-object v0
.end method

.method public getFileHelper()Lcom/lge/camera/util/FileNamingHelper;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFileHelper:Lcom/lge/camera/util/FileNamingHelper;

    return-object v0
.end method

.method public getFocusController()Lcom/lge/camera/controller/FocusController;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    return-object v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    const-string v1, "key_focus"

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/SettingController;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFrontPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;
    .locals 1

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFrontPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    return-object v0
.end method

.method public getHandler()Lcom/lge/camera/util/MainHandler;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    return-object v0
.end method

.method public getImageHandler()Lcom/lge/camera/util/ImageHandler;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/lge/camera/Mediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    return-object v0
.end method

.method public getImageRotationDegree()I
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Lcom/lge/camera/Mediator;->mImageRotationDegree:I

    return v0
.end method

.method public getInCaptureProgress()Z
    .locals 1

    .prologue
    .line 507
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mInCaptureProgress:Z

    return v0
.end method

.method public getIndicatorController()Lcom/lge/camera/controller/IndicatorController;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    return-object v0
.end method

.method public getIsCharging()Z
    .locals 1

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mCharging:Z

    return v0
.end method

.method public getKoreanFontIndex()I
    .locals 1

    .prologue
    .line 2005
    iget v0, p0, Lcom/lge/camera/Mediator;->idxKoreanFont:I

    return v0
.end method

.method public getLanguageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1998
    iget-object v0, p0, Lcom/lge/camera/Mediator;->strLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;
.end method

.method public getLocationOn()Z
    .locals 1

    .prologue
    .line 1945
    sget-boolean v0, Lcom/lge/camera/Mediator;->mLocationOn:Z

    return v0
.end method

.method public getNumberOfCameras()I
    .locals 1

    .prologue
    .line 555
    iget v0, p0, Lcom/lge/camera/Mediator;->mNumberOfCameras:I

    return v0
.end method

.method public getOpenLBSSetting()Z
    .locals 1

    .prologue
    .line 1938
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mOpenLBSSetting:Z

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Lcom/lge/camera/Mediator;->mOrientation:I

    return v0
.end method

.method public getOrientationDegree()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 647
    iget v1, p0, Lcom/lge/camera/Mediator;->mOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 657
    :goto_0
    :pswitch_0
    return v0

    .line 651
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 653
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 655
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 647
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getParameteredRotation()I
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Lcom/lge/camera/Mediator;->mParameteredRotation:I

    return v0
.end method

.method public getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;
    .locals 1

    .prologue
    .line 1451
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v0

    if-nez v0, :cond_0

    .line 1452
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBackPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 1455
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFrontPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    goto :goto_0
.end method

.method public getPreviewController()Lcom/lge/camera/controller/PreviewController;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    return-object v0
.end method

.method public getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    return-object v0
.end method

.method public getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    return-object v0
.end method

.method public getRecordLocation()Z
    .locals 1

    .prologue
    .line 1931
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mRecordLocation:Z

    return v0
.end method

.method public getRotateBatteryIndicatorwithHint()Z
    .locals 1

    .prologue
    .line 683
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mRotateBatteryIndicatorwithHint:Z

    return v0
.end method

.method public getSavedFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSavedFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getSavedImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSettingController()Lcom/lge/camera/controller/SettingController;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    return-object v0
.end method

.method public getSettingIndex(I)I
    .locals 1
    .parameter "settingIndex"

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/SettingController;->getSetting(I)I

    move-result v0

    return v0
.end method

.method public getSettingIndex(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/SettingController;->getSetting(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSettingMenu()Lcom/lge/camera/setting/SettingMenu;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    return-object v0
.end method

.method public getSettingValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/SettingController;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSoundController()Lcom/lge/camera/controller/SoundController;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/lge/camera/Mediator;->mStatus:I

    return v0
.end method

.method public getStorageController()Lcom/lge/camera/controller/StorageController;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    return-object v0
.end method

.method public getStorageState()I
    .locals 1

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->getStorageState()I

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "resId"

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubMenuMode()I
    .locals 1

    .prologue
    .line 672
    iget v0, p0, Lcom/lge/camera/Mediator;->mSubMenuMode:I

    return v0
.end method

.method public getToastController()Lcom/lge/camera/controller/ToastController;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    .line 702
    iget v0, p0, Lcom/lge/camera/Mediator;->mVideoState:I

    return v0
.end method

.method public getZoomController()Lcom/lge/camera/controller/ZoomController;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    return-object v0
.end method

.method public abstract hideOsd()V
.end method

.method public abstract hideOsd(Z)V
.end method

.method public hidePopupAnimation(I)V
    .locals 4
    .parameter "ViewId"

    .prologue
    .line 1984
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 1985
    .local v0, rl:Lcom/lge/camera/components/RotateLayout;
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xc8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/Mediator;->startAlphaAnimation(Landroid/view/View;III)V

    .line 1986
    return-void
.end method

.method public inflateStub(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public inflateView(I)Landroid/view/View;
    .locals 3
    .parameter "resource"

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 239
    .local v0, li:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public initAudioShutterEngine()V
    .locals 3

    .prologue
    .line 2015
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isVoiceShutter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2016
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mAudioRecogEngine:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    if-nez v0, :cond_0

    .line 2017
    new-instance v0, Lcom/lge/voiceshutter/library/AudioRecogEngine;

    new-instance v1, Lcom/lge/camera/listeners/AudioRecogEngineCallback;

    invoke-direct {v1, p0}, Lcom/lge/camera/listeners/AudioRecogEngineCallback;-><init>(Lcom/lge/camera/Mediator;)V

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->voiceShutterKind()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/lge/voiceshutter/library/AudioRecogEngine;-><init>(Lcom/lge/voiceshutter/library/AudioRecogEngine$Callback;I)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mAudioRecogEngine:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    .line 2021
    :cond_0
    return-void
.end method

.method public initControllers()V
    .locals 2

    .prologue
    .line 1179
    const-string v0, "CameraApp"

    const-string v1, "initController start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->initSubMenu()V

    .line 1181
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->initController()V

    .line 1182
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->initController()V

    .line 1183
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/BrightnessController;->initController()V

    .line 1184
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/BeautyshotController;->initController()V

    .line 1185
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->initController()V

    .line 1186
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SoundController;->initController()V

    .line 1188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/Mediator;->mControllerInitialized:Z

    .line 1189
    const-string v0, "CameraApp"

    const-string v1, "initController end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    return-void
.end method

.method public abstract isAttachIntent()Z
.end method

.method public abstract isAttachMode()Z
.end method

.method public isCafSupported()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1909
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getContinuousFocusMenu()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1910
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 1911
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/lge/camera/properties/ProjectVariables;->isCafSupported(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1926
    :cond_0
    :goto_0
    return v1

    .line 1915
    :cond_1
    const-string v3, "key_focus"

    invoke-virtual {p0, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1916
    .local v0, focusSetting:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/lge/camera/properties/ProjectVariables;->isCafSupported(II)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "continuous_focus"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .end local v0           #focusSetting:Ljava/lang/String;
    :cond_2
    move v1, v2

    .line 1921
    goto :goto_0

    .line 1923
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/lge/camera/properties/ProjectVariables;->isCafSupported(II)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 1926
    goto :goto_0
.end method

.method public isChangingToPostview()Z
    .locals 1

    .prologue
    .line 1990
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mChangingToPostview:Z

    return v0
.end method

.method public isErrorOccuredAndFinish()Z
    .locals 1

    .prologue
    .line 730
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mErrorOccuredAndFinish:Z

    return v0
.end method

.method public isFinishingActivity()Z
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1193
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mControllerInitialized:Z

    return v0
.end method

.method public abstract isMMSIntent()Z
.end method

.method public isPausing()Z
    .locals 1

    .prologue
    .line 694
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mPausing:Z

    return v0
.end method

.method public isPreviewing()Z
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->isPreviewing()Z

    move-result v0

    .line 502
    :goto_0
    return v0

    .line 501
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "mPreviewController is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwapCameraProcessing()Z
    .locals 1

    .prologue
    .line 1476
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mIsSwapCameraProcessing:Z

    return v0
.end method

.method public isTimeMachineModeOn()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2057
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isTimeMachinShotSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2058
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 2064
    :cond_0
    :goto_0
    return v1

    .line 2059
    :cond_1
    const-string v3, "key_time_machine"

    invoke-virtual {p0, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2060
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "on"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 2061
    goto :goto_0
.end method

.method public isValidState()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keepScreenOnAwhile()V
    .locals 4

    .prologue
    .line 866
    const-string v1, "CameraApp"

    const-string v2, "keepScreenOnAwhile"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mActivity:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    .line 868
    const-string v1, "CameraApp"

    const-string v2, "keepScreenOnAwhile : mActivity is null!!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    :goto_0
    return-void

    .line 872
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 873
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 874
    const-string v1, "CameraApp"

    const-string v2, "keepScreenOnAwhile : getActivity is null!!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 877
    :cond_1
    const-string v1, "com.lge.camera.command.ExitInteraction"

    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 878
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 879
    const-string v1, "com.lge.camera.command.ExitInteraction"

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {p0, v1, v2, v3}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 1214
    new-instance v0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;

    invoke-direct {v0, p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mBroadCastReceiverDefine:Lcom/lge/camera/receiver/BroadCastReceiverDefine;

    .line 1215
    invoke-direct {p0}, Lcom/lge/camera/Mediator;->registerReceiver()V

    .line 1216
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->configureWindow()V

    .line 1218
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->setOrientationListener()V

    .line 1219
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 1223
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->initAudioShutterEngine()V

    .line 1224
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "id"
    .parameter "args"

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/DialogController;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1368
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->enableOrientationListener(Z)V

    .line 1370
    invoke-direct {p0}, Lcom/lge/camera/Mediator;->unregisterReceivers()V

    .line 1371
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->removeScheduledAllCommand()V

    .line 1372
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->removePostAllRunnables()V

    .line 1375
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mBroadCastReceiverDefine:Lcom/lge/camera/receiver/BroadCastReceiverDefine;

    if-eqz v1, :cond_0

    .line 1376
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mBroadCastReceiverDefine:Lcom/lge/camera/receiver/BroadCastReceiverDefine;

    invoke-virtual {v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->unRegisterMediaReceiver()V

    .line 1379
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1380
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1381
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/controller/Controller;

    invoke-virtual {v1}, Lcom/lge/camera/controller/Controller;->onDestroy()V

    .line 1379
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1384
    :cond_2
    iput-object v2, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    .line 1385
    iput-object v2, p0, Lcom/lge/camera/Mediator;->mActivity:Ljava/lang/ref/WeakReference;

    .line 1386
    iput-object v2, p0, Lcom/lge/camera/Mediator;->mPreferences:Lcom/lge/camera/setting/ComboPreferences;

    .line 1387
    iput-object v2, p0, Lcom/lge/camera/Mediator;->mModuleFactory:Lcom/lge/camera/module/ModuleFactory;

    .line 1388
    iput-object v2, p0, Lcom/lge/camera/Mediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    .line 1389
    iput-object v2, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    .line 1390
    iput-object v2, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    .line 1391
    iput-object v2, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    .line 1392
    iput-object v2, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    .line 1393
    iput-object v2, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    .line 1394
    iput-object v2, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    .line 1395
    iput-object v2, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    .line 1396
    iput-object v2, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    .line 1397
    iput-object v2, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    .line 1398
    iput-object v2, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    .line 1399
    iput-object v2, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    .line 1400
    iput-object v2, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    .line 1401
    iput-object v2, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    .line 1402
    iput-object v2, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    .line 1403
    iput-object v2, p0, Lcom/lge/camera/Mediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    .line 1404
    iput-object v2, p0, Lcom/lge/camera/Mediator;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 1405
    iput-object v2, p0, Lcom/lge/camera/Mediator;->mUiThread:Ljava/lang/Thread;

    .line 1406
    iput-object v2, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    .line 1407
    iput-object v2, p0, Lcom/lge/camera/Mediator;->mFaceBeauty:Lcom/lge/olaworks/library/FaceBeauty;

    .line 1408
    return-void
.end method

.method public onPause()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1310
    const-string v3, "CameraApp"

    const-string v4, "onPause-start"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    iput-boolean v7, p0, Lcom/lge/camera/Mediator;->mPausing:Z

    .line 1312
    iput-object v6, p0, Lcom/lge/camera/Mediator;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 1313
    iput-boolean v5, p0, Lcom/lge/camera/Mediator;->mErrorOccuredAndFinish:Z

    .line 1315
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v3, :cond_1

    .line 1316
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v3}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1317
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v3}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/lge/camera/components/OpenGLSurfaceView;->setActivityPausing(Z)V

    .line 1319
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isChangingToPostview()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1320
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v3}, Lcom/lge/camera/controller/PreviewController;->waitStartPreviewThreadDone()V

    .line 1321
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v3}, Lcom/lge/camera/controller/PreviewController;->isPreviewing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1322
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v3}, Lcom/lge/camera/controller/PreviewController;->stopPreview()V

    .line 1326
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isVoiceShutter()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1327
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mAudioRecogEngine:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    if-eqz v3, :cond_2

    .line 1328
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mAudioRecogEngine:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    invoke-virtual {v3}, Lcom/lge/voiceshutter/library/AudioRecogEngine;->stop()V

    .line 1329
    iput-object v6, p0, Lcom/lge/camera/Mediator;->mAudioRecogEngine:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    .line 1333
    :cond_2
    invoke-virtual {p0, v5}, Lcom/lge/camera/Mediator;->enableOrientationListener(Z)V

    .line 1335
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_3

    .line 1337
    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/lge/camera/CameraMediator;

    move-object v3, v0

    iget-object v3, v3, Lcom/lge/camera/CameraMediator;->mPanoramaController:Lcom/lge/camera/controller/camera/PanoramaController;

    invoke-virtual {v3}, Lcom/lge/camera/controller/camera/PanoramaController;->stopPanorama()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1343
    :cond_3
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 1344
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1345
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/controller/Controller;

    invoke-virtual {v3}, Lcom/lge/camera/controller/Controller;->onPause()V

    .line 1343
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1338
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 1339
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "CameraApp"

    const-string v4, "ClassCastException:"

    invoke-static {v3, v4, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1349
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v2       #i:I
    :cond_5
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mFileHelper:Lcom/lge/camera/util/FileNamingHelper;

    if-eqz v3, :cond_6

    .line 1350
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mFileHelper:Lcom/lge/camera/util/FileNamingHelper;

    invoke-virtual {v3}, Lcom/lge/camera/util/FileNamingHelper;->close()V

    .line 1351
    iput-object v6, p0, Lcom/lge/camera/Mediator;->mFileHelper:Lcom/lge/camera/util/FileNamingHelper;

    .line 1353
    :cond_6
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->resetScreenTimeout()V

    .line 1354
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->removeScheduledAllCommand()V

    .line 1355
    iput-boolean v5, p0, Lcom/lge/camera/Mediator;->mInCaptureProgress:Z

    .line 1356
    const-string v3, "CameraApp"

    const-string v4, "onPause-end"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/DialogController;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 1176
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 1242
    const-string v4, "CameraApp"

    const-string v5, "onResume()-start"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    sput-boolean v6, Lcom/lge/camera/properties/CameraConstants;->MEDIA_RECEIVER_FINISHED:Z

    .line 1244
    iput-boolean v6, p0, Lcom/lge/camera/Mediator;->mPausing:Z

    .line 1246
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1247
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/lge/camera/components/OpenGLSurfaceView;->setActivityPausing(Z)V

    .line 1250
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/Mediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    invoke-virtual {v4}, Lcom/lge/camera/util/ImageHandler;->resetRotation()V

    .line 1252
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->setOrientationListener()V

    .line 1253
    invoke-virtual {p0, v8}, Lcom/lge/camera/Mediator;->enableOrientationListener(Z)V

    .line 1255
    new-instance v4, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/lge/camera/Mediator$ScaleListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/lge/camera/Mediator$ScaleListener;-><init>(Lcom/lge/camera/Mediator;Lcom/lge/camera/Mediator$1;)V

    invoke-direct {v4, v5, v6}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v4, p0, Lcom/lge/camera/Mediator;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 1256
    new-instance v4, Lcom/lge/camera/util/FileNamingHelper;

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/lge/camera/Mediator;->mApplicationMode:I

    invoke-direct {v4, p0, v5, v6}, Lcom/lge/camera/util/FileNamingHelper;-><init>(Lcom/lge/camera/Mediator;Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/lge/camera/Mediator;->mFileHelper:Lcom/lge/camera/util/FileNamingHelper;

    .line 1257
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetFunctionFrontCameraBeautyShot()I

    move-result v4

    if-ne v4, v8, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v4

    if-nez v4, :cond_2

    .line 1259
    iget v4, p0, Lcom/lge/camera/Mediator;->mCameraId:I

    if-ne v4, v8, :cond_2

    .line 1261
    :try_start_0
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v1

    .line 1262
    .local v1, gPreview:Lcom/lge/camera/components/OpenGLSurfaceView;
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreviewExtra()Landroid/view/SurfaceView;

    move-result-object v2

    .line 1264
    .local v2, gPreviewExtra:Landroid/view/SurfaceView;
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mFaceBeauty:Lcom/lge/olaworks/library/FaceBeauty;

    invoke-virtual {p0, v4}, Lcom/lge/camera/Mediator;->swapPreviewEffect(Lcom/lge/olaworks/library/BaseEngine;)V

    .line 1265
    if-eqz v1, :cond_1

    .line 1266
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/lge/camera/components/OpenGLSurfaceView;->setVisibility(I)V

    .line 1267
    :cond_1
    if-eqz v2, :cond_2

    .line 1268
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/SurfaceView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1275
    .end local v1           #gPreview:Lcom/lge/camera/components/OpenGLSurfaceView;
    .end local v2           #gPreviewExtra:Landroid/view/SurfaceView;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->initAudioShutterEngine()V

    .line 1277
    iget-boolean v4, p0, Lcom/lge/camera/Mediator;->mControllerInitialized:Z

    if-eqz v4, :cond_4

    .line 1278
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 1279
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1280
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/controller/Controller;

    invoke-virtual {v4}, Lcom/lge/camera/controller/Controller;->onResume()V

    .line 1278
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1269
    .end local v3           #i:I
    :catch_0
    move-exception v0

    .line 1270
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "CameraApp"

    const-string v5, "NullPointerException!"

    invoke-static {v4, v5, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1284
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_4
    const-string v4, "com.lge.camera.command.StartInit"

    invoke-virtual {p0, v4}, Lcom/lge/camera/Mediator;->findScheduledCommand(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1285
    const-string v4, "CameraApp"

    const-string v5, "!findScheduledCommand(Command.START_INIT)"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 1287
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/controller/Controller;

    invoke-virtual {v4}, Lcom/lge/camera/controller/Controller;->onResume()V

    .line 1286
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1289
    :cond_5
    const-string v4, "com.lge.camera.command.StartInit"

    invoke-virtual {p0, v4}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 1293
    .end local v3           #i:I
    :cond_6
    invoke-static {}, Lcom/lge/camera/util/Common;->isScreenLocked()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1294
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->keepScreenOnAwhile()V

    .line 1297
    :cond_7
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_8

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_9

    .line 1299
    :cond_8
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->hideOsd()V

    .line 1305
    :goto_3
    const-string v4, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    const-wide/16 v5, 0xbb8

    invoke-virtual {p0, v4, v5, v6}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 1306
    const-string v4, "CameraApp"

    const-string v5, "onResume()-end"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    return-void

    .line 1302
    :cond_9
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->showOsd()V

    goto :goto_3
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 1227
    const-string v2, "CameraApp"

    const-string v3, "onStart()-start"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1230
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1232
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1235
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1236
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/controller/Controller;

    invoke-virtual {v2}, Lcom/lge/camera/controller/Controller;->onStart()V

    .line 1235
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1238
    :cond_2
    const-string v2, "CameraApp"

    const-string v3, "onStart()-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 1360
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lge/camera/controller/ToastController;->hide(Z)V

    .line 1361
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1362
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/controller/Controller;

    invoke-virtual {v1}, Lcom/lge/camera/controller/Controller;->onStop()V

    .line 1361
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1364
    :cond_1
    return-void
.end method

.method public onUserInteraction()V
    .locals 3

    .prologue
    .line 1411
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1425
    :cond_0
    :goto_0
    return-void

    .line 1415
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1419
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 1420
    :cond_2
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserInteraction subMenuMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    const-string v0, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 1422
    const-string v0, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 1424
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->keepScreenOnAwhile()V

    goto :goto_0
.end method

.method public postOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/util/MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 317
    :cond_0
    return-void
.end method

.method public postOnUiThread(Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "action"
    .parameter "delay"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/util/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 324
    :cond_0
    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1
    .parameter "receiver"
    .parameter "filter"

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public releaseAllEngine()V
    .locals 2

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->isReadyEngineProcessor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    const-string v0, "CameraApp"

    const-string v1, "releaseAllEngine call..."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->releaseAllEngine()V

    .line 484
    :cond_0
    return-void
.end method

.method public releaseEngine(Ljava/lang/String;)V
    .locals 3
    .parameter "tag"

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->isReadyEngineProcessor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseEngine ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] call..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/olaworks/library/EngineProcessor;->releaseEngine(Ljava/lang/String;)V

    .line 491
    :cond_0
    return-void
.end method

.method public removePostAllRunnables()V
    .locals 4

    .prologue
    .line 374
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 375
    const-string v2, "CameraApp"

    const-string v3, "mPostRunnables is null"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 379
    .local v1, postRunnableSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 380
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    iget-object v2, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v3, v2}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 382
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public removePostRunnable(Ljava/lang/Object;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 361
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 362
    const-string v1, "CameraApp"

    const-string v2, "mPostRunnables is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 367
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 368
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeScheduledAllCommand()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    invoke-virtual {v0}, Lcom/lge/camera/command/CommandManager;->removeScheduledAllCommand()V

    .line 358
    return-void
.end method

.method public removeScheduledCommand(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    invoke-virtual {v0, p1}, Lcom/lge/camera/command/CommandManager;->removeScheduledCommand(Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public resetScreenTimeout()V
    .locals 3

    .prologue
    .line 854
    const-string v1, "CameraApp"

    const-string v2, "resetScreenTimeout"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mActivity:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    .line 863
    :goto_0
    return-void

    .line 857
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 858
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 859
    const-string v1, "CameraApp"

    const-string v2, "resetScreenTimeout : getActivity is null!!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 862
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mUiThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 328
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_1

    .line 329
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public setActivityLastOrientation()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 1570
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1571
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "orientation"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1573
    .local v1, orientation:I
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setActivityLastOrientation : orientation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    if-ne v1, v5, :cond_1

    .line 1576
    invoke-static {}, Lcom/lge/camera/util/Common;->getLoadingOrientation()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 1577
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/lge/camera/util/Common;->setLoadingOrientation(I)V

    .line 1579
    :cond_0
    invoke-static {}, Lcom/lge/camera/util/Common;->getLoadingOrientation()I

    move-result v1

    .line 1581
    :cond_1
    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->setOrientation(I)V

    .line 1582
    return-void
.end method

.method public setApplicationMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 622
    iput p1, p0, Lcom/lge/camera/Mediator;->mApplicationMode:I

    .line 623
    return-void
.end method

.method public setAudioRecogEngineStart()V
    .locals 2

    .prologue
    .line 2033
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isVoiceShutter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2034
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mAudioRecogEngine:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    if-eqz v0, :cond_0

    .line 2035
    const-string v0, "CameraApp"

    const-string v1, "setAudioRecogEngineStart"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mAudioRecogEngine:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    invoke-virtual {v0}, Lcom/lge/voiceshutter/library/AudioRecogEngine;->start()V

    .line 2039
    :cond_0
    return-void
.end method

.method public setAudioRecogEngineStop()V
    .locals 2

    .prologue
    .line 2024
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isVoiceShutter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2025
    const-string v0, "CameraApp"

    const-string v1, "setAudioRecogEngineStop"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2026
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mAudioRecogEngine:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    if-eqz v0, :cond_0

    .line 2027
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mAudioRecogEngine:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    invoke-virtual {v0}, Lcom/lge/voiceshutter/library/AudioRecogEngine;->stop()V

    .line 2030
    :cond_0
    return-void
.end method

.method public setBackPreference(Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 0
    .parameter "pref"

    .prologue
    .line 1472
    iput-object p1, p0, Lcom/lge/camera/Mediator;->mBackPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 1473
    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 679
    iput p1, p0, Lcom/lge/camera/Mediator;->mBatteryLevel:I

    .line 680
    return-void
.end method

.method public setCameraId(I)V
    .locals 0
    .parameter "cameraId"

    .prologue
    .line 548
    iput p1, p0, Lcom/lge/camera/Mediator;->mCameraId:I

    .line 549
    return-void
.end method

.method public setCameraMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 636
    iput p1, p0, Lcom/lge/camera/Mediator;->mCameraMode:I

    .line 637
    return-void
.end method

.method public abstract setCaptureData([B)V
.end method

.method public setChangingToPostview(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1993
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mChangingToPostview:Z

    .line 1994
    return-void
.end method

.method public setDegree(IIIZ)V
    .locals 3
    .parameter "resId"
    .parameter "degree"
    .parameter "parentResId"
    .parameter "animation"

    .prologue
    .line 1736
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1737
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_1

    .line 1763
    .end local v1           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 1741
    .restart local v1       #view:Landroid/view/View;
    :cond_1
    if-eqz p3, :cond_2

    .line 1742
    invoke-virtual {p0, p3}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1743
    .local v0, parentView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1748
    .end local v0           #parentView:Landroid/view/View;
    :cond_2
    instance-of v2, v1, Lcom/lge/camera/components/RotateImageButton;

    if-eqz v2, :cond_4

    .line 1749
    if-nez p3, :cond_3

    .line 1750
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v2, p2, p4}, Lcom/lge/camera/components/RotateImageButton;->setDegree(IZ)V

    goto :goto_0

    .line 1752
    :cond_3
    invoke-virtual {p0, p3}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v2, p2, p4}, Lcom/lge/camera/components/RotateImageButton;->setDegree(IZ)V

    goto :goto_0

    .line 1754
    :cond_4
    instance-of v2, v1, Lcom/lge/camera/components/RotateImageView;

    if-eqz v2, :cond_6

    .line 1755
    if-nez p3, :cond_5

    .line 1756
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v2, p2, p4}, Lcom/lge/camera/components/RotateImageView;->setDegree(IZ)V

    goto :goto_0

    .line 1758
    :cond_5
    invoke-virtual {p0, p3}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageView;

    check-cast v2, Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v2, p2, p4}, Lcom/lge/camera/components/RotateImageView;->setDegree(IZ)V

    goto :goto_0

    .line 1760
    :cond_6
    instance-of v2, v1, Lcom/lge/camera/components/Switcher;

    if-eqz v2, :cond_0

    .line 1761
    check-cast v1, Lcom/lge/camera/components/Switcher;

    .end local v1           #view:Landroid/view/View;
    invoke-virtual {v1, p2, p4}, Lcom/lge/camera/components/Switcher;->setDegree(IZ)V

    goto :goto_0
.end method

.method public setDegree(IIZ)V
    .locals 1
    .parameter "resId"
    .parameter "degree"
    .parameter "animation"

    .prologue
    .line 1732
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 1733
    return-void
.end method

.method public setEffectRecorderOrientationHint()V
    .locals 4

    .prologue
    .line 1719
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/PreviewController;->effectsActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1722
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v0

    .line 1724
    .local v0, orientationCompensation:I
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v1}, Lcom/lge/camera/EffectsRecorder;->getOrientationHint()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1725
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "orientationCompensation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v1, v0}, Lcom/lge/camera/EffectsRecorder;->setOrientationHint(I)V

    .line 1729
    .end local v0           #orientationCompensation:I
    :cond_0
    return-void
.end method

.method public setErrorOccuredAndFinish(Z)V
    .locals 0
    .parameter "error"

    .prologue
    .line 734
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mErrorOccuredAndFinish:Z

    .line 735
    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 665
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    const-string v1, "key_focus"

    invoke-virtual {v0, v1, p1}, Lcom/lge/camera/controller/SettingController;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 666
    return-void
.end method

.method public setFrontPreference(Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 0
    .parameter "pref"

    .prologue
    .line 1468
    iput-object p1, p0, Lcom/lge/camera/Mediator;->mFrontPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 1469
    return-void
.end method

.method public setImageRotationDegree(I)V
    .locals 3
    .parameter "degree"

    .prologue
    .line 529
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mImageRotationDegree ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/Mediator;->mImageRotationDegree:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iput p1, p0, Lcom/lge/camera/Mediator;->mImageRotationDegree:I

    .line 531
    return-void
.end method

.method public setInCaptureProgress(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 510
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mInCaptureProgress:Z

    .line 511
    return-void
.end method

.method public setIsCharging(Z)V
    .locals 0
    .parameter "bState"

    .prologue
    .line 437
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mCharging:Z

    .line 438
    return-void
.end method

.method public setIsSwapCameraProcessing(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1480
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mIsSwapCameraProcessing:Z

    .line 1481
    return-void
.end method

.method public setKeepLastCameraMode()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1491
    const-string v3, "CameraApp"

    const-string v4, "setKeepLastCameraMode()-start"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1493
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "cameraModeOfCamera"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1494
    .local v1, cameraModeOfCamera:I
    const-string v3, "cameraModeOfCamcorder"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1495
    .local v0, cameraModeOfCamcorder:I
    const-string v3, "cameraModeOfCamera"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1496
    const-string v3, "cameraModeOfCamcorder"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1498
    iput v1, p0, Lcom/lge/camera/Mediator;->mCameraApplicationCameraMode:I

    .line 1499
    iput v0, p0, Lcom/lge/camera/Mediator;->mCamcorderApplicationCameraMode:I

    .line 1501
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setKeepLastValue intent get cameraModeOfCamera ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] in camera"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setKeepLastValue intent get mCamcorderApplicationCameraMode ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/Mediator;->mCamcorderApplicationCameraMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] in camcorder"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_0

    .line 1505
    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->setCameraMode(I)V

    .line 1506
    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->setCameraId(I)V

    .line 1512
    :goto_0
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setKeepLastCameraMode()-end, cammode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraMode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    return-void

    .line 1508
    :cond_0
    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->setCameraMode(I)V

    .line 1509
    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->setCameraId(I)V

    goto :goto_0
.end method

.method public setKeepLastValue()V
    .locals 7

    .prologue
    .line 1544
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1545
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "keepLastValue"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1547
    .local v2, keepLastValue:Z
    const-string v5, "isFirst"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1567
    :cond_0
    return-void

    .line 1551
    :cond_1
    if-eqz v2, :cond_0

    .line 1552
    iget-object v5, p0, Lcom/lge/camera/Mediator;->mBackPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v5}, Lcom/lge/camera/setting/PreferenceGroup;->size()I

    move-result v4

    .line 1553
    .local v4, pSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_3

    .line 1554
    iget-object v5, p0, Lcom/lge/camera/Mediator;->mBackPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v5, v0}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    .line 1555
    .local v3, listPref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v3, :cond_2

    .line 1556
    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->keepLastValue()V

    .line 1553
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1559
    .end local v3           #listPref:Lcom/lge/camera/setting/ListPreference;
    :cond_3
    iget-object v5, p0, Lcom/lge/camera/Mediator;->mFrontPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v5}, Lcom/lge/camera/setting/PreferenceGroup;->size()I

    move-result v4

    .line 1560
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_0

    .line 1561
    iget-object v5, p0, Lcom/lge/camera/Mediator;->mFrontPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v5, v0}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    .line 1562
    .restart local v3       #listPref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v3, :cond_4

    .line 1563
    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->keepLastValue()V

    .line 1560
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setKeepScreenOn()V
    .locals 2

    .prologue
    .line 888
    const-string v0, "CameraApp"

    const-string v1, "setKeepScreenOn"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    const-string v0, "com.lge.camera.command.ExitInteraction"

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 890
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 891
    return-void
.end method

.method public setKoreanFontIndex(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 2008
    iput p1, p0, Lcom/lge/camera/Mediator;->idxKoreanFont:I

    .line 2009
    return-void
.end method

.method public setLanguageType(Ljava/lang/String;)V
    .locals 0
    .parameter "mlanguage"

    .prologue
    .line 2001
    iput-object p1, p0, Lcom/lge/camera/Mediator;->strLanguage:Ljava/lang/String;

    .line 2002
    return-void
.end method

.method public setLocationOn(Z)V
    .locals 0
    .parameter "setting"

    .prologue
    .line 1948
    sput-boolean p1, Lcom/lge/camera/Mediator;->mLocationOn:Z

    .line 1949
    return-void
.end method

.method public setModule(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 725
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mediator setModule : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mModuleFactory:Lcom/lge/camera/module/ModuleFactory;

    invoke-virtual {v0, p1}, Lcom/lge/camera/module/ModuleFactory;->getModule(Ljava/lang/String;)Lcom/lge/camera/module/Module;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mModule:Lcom/lge/camera/module/Module;

    .line 727
    return-void
.end method

.method public setOpenLBSSetting(Z)V
    .locals 0
    .parameter "setting"

    .prologue
    .line 1941
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mOpenLBSSetting:Z

    .line 1942
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 643
    iput p1, p0, Lcom/lge/camera/Mediator;->mOrientation:I

    .line 644
    return-void
.end method

.method public setOrientationListener()V
    .locals 3

    .prologue
    .line 1641
    const-string v0, "CameraApp"

    const-string v1, "setOrientationListener"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 1644
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 1645
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 1648
    :cond_0
    new-instance v0, Lcom/lge/camera/Mediator$2;

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/lge/camera/Mediator$2;-><init>(Lcom/lge/camera/Mediator;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 1704
    return-void
.end method

.method public setParameteredRotation(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 518
    iput p1, p0, Lcom/lge/camera/Mediator;->mParameteredRotation:I

    .line 519
    return-void
.end method

.method public setPausing(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 698
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mPausing:Z

    .line 699
    return-void
.end method

.method public setPreferenceMenuEnable(Ljava/lang/String;Z)V
    .locals 2
    .parameter "menu"
    .parameter "enable"

    .prologue
    .line 2068
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2083
    :cond_0
    :goto_0
    return-void

    .line 2074
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v0

    .line 2075
    .local v0, menuIndex:I
    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    .line 2076
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v1, v0, p2}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuEnabled(IZ)V

    .line 2082
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuIcons()V

    goto :goto_0

    .line 2078
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2079
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/lge/camera/setting/SettingMenu;->setEnabled(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public setRecordLocation(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1934
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mRecordLocation:Z

    .line 1935
    return-void
.end method

.method public setRotateBatteryIndicatorwithHint(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 686
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mRotateBatteryIndicatorwithHint:Z

    .line 687
    return-void
.end method

.method public setSavedFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 544
    iput-object p1, p0, Lcom/lge/camera/Mediator;->mSavedFileName:Ljava/lang/String;

    .line 545
    return-void
.end method

.method public setSavedImageUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 537
    iput-object p1, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    .line 538
    return-void
.end method

.method public setSetting(II)Z
    .locals 1
    .parameter "settingIndex"
    .parameter "settingValue"

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/SettingController;->setSetting(II)Z

    move-result v0

    return v0
.end method

.method public setSetting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/SettingController;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setSettingParameter(II)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 718
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/SettingController;->setSetting(II)Z

    .line 719
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 433
    iput p1, p0, Lcom/lge/camera/Mediator;->mStatus:I

    .line 434
    return-void
.end method

.method public setSubMenuMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 669
    iput p1, p0, Lcom/lge/camera/Mediator;->mSubMenuMode:I

    .line 670
    return-void
.end method

.method public setVideoState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 706
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set video state from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/Mediator;->mVideoState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    iput p1, p0, Lcom/lge/camera/Mediator;->mVideoState:I

    .line 708
    const-string v0, "com.lge.camera.command.UpdateCaptureButton"

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 709
    const-string v0, "com.lge.camera.command.UpdateRecIndicator"

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 710
    return-void
.end method

.method public setVideoStateOnly(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 713
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set video state from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/Mediator;->mVideoState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    iput p1, p0, Lcom/lge/camera/Mediator;->mVideoState:I

    .line 715
    return-void
.end method

.method public setVisible(IZ)Z
    .locals 5
    .parameter "resId"
    .parameter "visible"

    .prologue
    const/4 v1, 0x0

    .line 258
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 260
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 261
    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 266
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 261
    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    .line 263
    :cond_1
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View not found in setVisible resId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public showDialogPopup(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 1203
    move v0, p1

    .line 1205
    .local v0, dialogId:I
    new-instance v1, Lcom/lge/camera/Mediator$1;

    invoke-direct {v1, p0, v0}, Lcom/lge/camera/Mediator$1;-><init>(Lcom/lge/camera/Mediator;I)V

    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1211
    return-void
.end method

.method public showHelpGuidePopup(Ljava/lang/String;I)Z
    .locals 4
    .parameter "shotModeHelp"
    .parameter "dialogId"

    .prologue
    const/4 v1, 0x0

    .line 2045
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useHelpGuidePopup()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2052
    :cond_0
    :goto_0
    return v1

    .line 2047
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Main_CameraAppConfig"

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2048
    .local v0, pref:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2049
    invoke-virtual {p0, p2}, Lcom/lge/camera/Mediator;->showDialogPopup(I)V

    .line 2050
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public abstract showOsd()V
.end method

.method public abstract showOsd(Z)V
.end method

.method public showPopupAnimation(I)V
    .locals 4
    .parameter "ViewId"

    .prologue
    .line 1979
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 1980
    .local v0, rl:Lcom/lge/camera/components/RotateLayout;
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xc8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/Mediator;->startAlphaAnimation(Landroid/view/View;III)V

    .line 1981
    return-void
.end method

.method public showProgressDialog()V
    .locals 2

    .prologue
    .line 2108
    const-string v0, "CameraApp"

    const-string v1, "showProgressDialog"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2109
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->getCurrentDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2110
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->isRotateDialogVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->getDialogID()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    .line 2124
    :cond_0
    :goto_0
    return-void

    .line 2114
    :cond_1
    new-instance v0, Lcom/lge/camera/Mediator$3;

    invoke-direct {v0, p0}, Lcom/lge/camera/Mediator$3;-><init>(Lcom/lge/camera/Mediator;)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public startAlphaAnimation(Landroid/view/View;III)V
    .locals 3
    .parameter "v"
    .parameter "start"
    .parameter "end"
    .parameter "duration"

    .prologue
    .line 1970
    if-nez p1, :cond_0

    .line 1976
    :goto_0
    return-void

    .line 1973
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1974
    .local v0, anim:Landroid/view/animation/Animation;
    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1975
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public startPreview()V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->startPreview()V

    .line 414
    :goto_0
    return-void

    .line 412
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "mPreviewController is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract startReceivingLocationUpdates()V
.end method

.method public stopPreview()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->stopPreview()V

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "mPreviewController is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract stopReceivingLocationUpdates()V
.end method

.method public swapPreviewEffect(Lcom/lge/olaworks/library/BaseEngine;)V
    .locals 3
    .parameter "engine"

    .prologue
    .line 814
    if-eqz p1, :cond_0

    .line 815
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "swapPreviewEffect engine.needRenderMode() ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lge/olaworks/library/BaseEngine;->needRenderMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    :cond_0
    if-nez p1, :cond_2

    .line 819
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/PreviewController;->setupHolder(Z)V

    .line 829
    :cond_1
    :goto_0
    return-void

    .line 821
    :cond_2
    invoke-virtual {p1}, Lcom/lge/olaworks/library/BaseEngine;->needRenderMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 822
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {p1}, Lcom/lge/olaworks/library/BaseEngine;->needRenderMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/PreviewController;->setupHolder(Z)V

    .line 823
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/olaworks/library/EngineProcessor;->setEngine(Lcom/lge/olaworks/library/BaseEngine;)Lcom/lge/olaworks/library/BaseEngine;

    .line 824
    const-string v0, "CameraApp"

    const-string v1, "swapPreviewEffect setEngine"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 825
    :cond_3
    invoke-virtual {p1}, Lcom/lge/olaworks/library/BaseEngine;->needRenderMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 826
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {p1}, Lcom/lge/olaworks/library/BaseEngine;->needRenderMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/PreviewController;->setupHolder(Z)V

    goto :goto_0
.end method

.method public switchCameraId(I)V
    .locals 11
    .parameter "cameraId"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 749
    iget-boolean v4, p0, Lcom/lge/camera/Mediator;->mPausing:Z

    if-eqz v4, :cond_0

    .line 804
    :goto_0
    return-void

    .line 752
    :cond_0
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switchCameraId()-start, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    iput p1, p0, Lcom/lge/camera/Mediator;->mCameraId:I

    .line 755
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "Main_CameraAppConfig"

    invoke-virtual {v4, v5, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 756
    .local v2, pref:Landroid/content/SharedPreferences;
    invoke-static {v2, p1}, Lcom/lge/camera/setting/Setting;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 758
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->stopPreview()V

    .line 759
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/PreviewController;->closeCamera()V

    .line 761
    invoke-virtual {p0, v7}, Lcom/lge/camera/Mediator;->enableInput(Z)V

    .line 764
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mPreferences:Lcom/lge/camera/setting/ComboPreferences;

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget v6, p0, Lcom/lge/camera/Mediator;->mCameraId:I

    invoke-virtual {v4, v5, v6}, Lcom/lge/camera/setting/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 766
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraMode()I

    move-result v4

    if-ne v4, v8, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v4

    if-nez v4, :cond_1

    .line 767
    const-string v4, "DefaultNormalShot"

    invoke-virtual {p0, v4}, Lcom/lge/camera/Mediator;->setModule(Ljava/lang/String;)V

    .line 770
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetFunctionFrontCameraBeautyShot()I

    move-result v4

    if-ne v4, v8, :cond_4

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v4

    if-nez v4, :cond_4

    .line 773
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/PreviewController;->getCameraPreview()Lcom/lge/camera/components/CameraPreview;

    move-result-object v3

    .line 774
    .local v3, sPreview:Lcom/lge/camera/components/CameraPreview;
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/CameraPreview;->releasePreviewCallback(Landroid/hardware/Camera;)V

    .line 775
    invoke-virtual {v3, v9}, Lcom/lge/camera/components/CameraPreview;->setVisibility(I)V

    .line 777
    if-ne p1, v8, :cond_3

    .line 778
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v0

    .line 779
    .local v0, gPreview:Lcom/lge/camera/components/OpenGLSurfaceView;
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreviewExtra()Landroid/view/SurfaceView;

    move-result-object v1

    .line 780
    .local v1, gPreviewExtra:Landroid/view/SurfaceView;
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/lge/camera/components/OpenGLSurfaceView;->releasePreviewCallback(Landroid/hardware/Camera;)V

    .line 781
    invoke-virtual {v0, v9}, Lcom/lge/camera/components/OpenGLSurfaceView;->setVisibility(I)V

    .line 782
    invoke-virtual {v0, v8}, Lcom/lge/camera/components/OpenGLSurfaceView;->clearData(Z)V

    .line 783
    invoke-virtual {v0, v7}, Lcom/lge/camera/components/OpenGLSurfaceView;->setVisibility(I)V

    .line 784
    invoke-virtual {v1, v7}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 785
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/PreviewController;->isPreviewing()Z

    move-result v4

    if-nez v4, :cond_2

    .line 786
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/PreviewController;->startPreview()V

    .line 803
    .end local v0           #gPreview:Lcom/lge/camera/components/OpenGLSurfaceView;
    .end local v1           #gPreviewExtra:Landroid/view/SurfaceView;
    .end local v3           #sPreview:Lcom/lge/camera/components/CameraPreview;
    :cond_2
    :goto_1
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switchCameraId()-end, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 789
    .restart local v3       #sPreview:Lcom/lge/camera/components/CameraPreview;
    :cond_3
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreviewExtra()Landroid/view/SurfaceView;

    move-result-object v1

    .line 790
    .restart local v1       #gPreviewExtra:Landroid/view/SurfaceView;
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v0

    .line 791
    .restart local v0       #gPreview:Lcom/lge/camera/components/OpenGLSurfaceView;
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/lge/camera/components/OpenGLSurfaceView;->releasePreviewCallback(Landroid/hardware/Camera;)V

    .line 792
    invoke-virtual {v0, v10}, Lcom/lge/camera/components/OpenGLSurfaceView;->setVisibility(I)V

    .line 793
    invoke-virtual {v1, v10}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 794
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/olaworks/library/EngineProcessor;->releaseAllEngine()V

    .line 795
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/lge/camera/Mediator;->swapPreviewEffect(Lcom/lge/olaworks/library/BaseEngine;)V

    .line 796
    invoke-virtual {v3, v7}, Lcom/lge/camera/components/CameraPreview;->setVisibility(I)V

    .line 798
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/PreviewController;->startPreview()V

    goto :goto_1

    .line 801
    .end local v0           #gPreview:Lcom/lge/camera/components/OpenGLSurfaceView;
    .end local v1           #gPreviewExtra:Landroid/view/SurfaceView;
    .end local v3           #sPreview:Lcom/lge/camera/components/CameraPreview;
    :cond_4
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/PreviewController;->startPreview()V

    goto :goto_1
.end method

.method public toast(I)V
    .locals 1
    .parameter "resource"

    .prologue
    .line 270
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->toast(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .locals 1
    .parameter "strString"

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/ToastController;->showShortToast(Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .parameter "receiver"

    .prologue
    .line 286
    if-eqz p1, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 288
    const/4 p1, 0x0

    .line 290
    :cond_0
    return-void
.end method

.method public zoomInOut(IIZ)V
    .locals 5
    .parameter "cursorStep"
    .parameter "factor"
    .parameter "scaleEnd"

    .prologue
    const/4 v3, 0x1

    .line 1850
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/PreviewPanelController;->isPressedShutterButton()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1885
    :cond_0
    :goto_0
    return-void

    .line 1856
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_3

    .line 1857
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v2

    if-eq v2, v3, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/lge/camera/CameraMediator;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camera/TimerController;->isTimerShotCountdown()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/lge/camera/CameraMediator;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getContinuousShotAlived()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/lge/camera/CameraMediator;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camera/PanoramaController;->isPanoramaStarted()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1862
    :cond_2
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "((CameraMediator)mMediator).getFocusController().getFocusState() ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/FocusController;->getFocusState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1882
    :catch_0
    move-exception v1

    .line 1883
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v2, "CameraApp"

    const-string v3, "zoomInOut NullPointerException:"

    invoke-static {v2, v3, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1867
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 1871
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportZoomOnRecord()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1872
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_6

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_6

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0x10

    if-eq v2, v3, :cond_6

    .line 1875
    const-string v2, "com.lge.camera.command.ShowZoom"

    invoke-virtual {p0, v2}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 1878
    :cond_6
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/ZoomController;->getZoomBar()Lcom/lge/camera/components/ZoomBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1879
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/ZoomController;->getZoomBar()Lcom/lge/camera/components/ZoomBar;

    move-result-object v2

    mul-int v3, p2, p1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, p3}, Lcom/lge/camera/components/ZoomBar;->updateZoom(IZZ)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
