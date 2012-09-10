.class public Lcom/lge/camera/controller/PreviewPanelController;
.super Lcom/lge/camera/controller/Controller;
.source "PreviewPanelController.java"

# interfaces
.implements Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;
.implements Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/lge/camera/components/Switcher$OnSwitchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;
    }
.end annotation


# static fields
.field public static final INCLUDE_IMAGES:I = 0x1

.field public static final INCLUDE_VIDEOS:I = 0x4

.field public static final LONGTOUCH_TAKEPICTURE_TIME:I = 0x32

.field private static final MAIN_BUTTON_BOTTOM_EXTENDED:I = 0x64

.field public static final SUB_BUTTON_BOTTOM:I = 0x2

.field public static final SUB_BUTTON_MIDDLE:I = 0x1

.field public static final SUB_BUTTON_TOP:I


# instance fields
.field private checkAreaOnTouch:Z

.field private mAlpha_value:I

.field private mButtonCheckTimer:Ljava/util/Timer;

.field private mGalleryLaunching:Z

.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mInclusion:I

.field private mIsHelpActivity:Z

.field protected mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

.field protected mReleaseArea:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;",
            ">;"
        }
    .end annotation
.end field

.field private mReviewThumbnailClickListener:Landroid/view/View$OnClickListener;

.field private mSetTimeMachineComplete:Z

.field protected mShutterButton:Lcom/lge/camera/components/ShutterButton;

.field private mShutterButtonLongKey:Z

.field private mShutterButtonRunnable:Ljava/lang/Runnable;

.field private mSnapshotOnIdle:Z

.field protected mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

.field protected mSubButtonMiddle:Lcom/lge/camera/components/RotateImageButton;

.field protected mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

.field protected mSubTouchButtonBottom:Landroid/widget/ImageView;

.field protected mSubTouchButtonMiddle:Landroid/widget/ImageView;

.field protected mSubTouchButtonTop:Landroid/widget/ImageView;

.field protected mSwitcher:Lcom/lge/camera/components/Switcher;

.field private mThumbController:Lcom/lge/camera/components/ThumbnailController;

.field private mThumbImage:Landroid/graphics/Bitmap;

.field private mThumbUri:Landroid/net/Uri;

.field mThumbnailLock:Ljava/lang/Object;

.field private mainBarAlpha_value:I


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 5
    .parameter "mediator"

    .prologue
    const/16 v4, 0xff

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 130
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/Mediator;)V

    .line 75
    iput-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    .line 76
    iput-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    .line 77
    iput-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    .line 78
    iput-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonMiddle:Lcom/lge/camera/components/RotateImageButton;

    .line 79
    iput-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    .line 81
    iput-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonTop:Landroid/widget/ImageView;

    .line 82
    iput-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonMiddle:Landroid/widget/ImageView;

    .line 83
    iput-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonBottom:Landroid/widget/ImageView;

    .line 86
    iput-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSetTimeMachineComplete:Z

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mHashMap:Ljava/util/HashMap;

    .line 107
    iput-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    .line 118
    iput-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mIsHelpActivity:Z

    .line 120
    iput-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    .line 121
    iput-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    .line 122
    iput v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mInclusion:I

    .line 124
    iput-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    .line 125
    iput v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mainBarAlpha_value:I

    .line 126
    iput v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    .line 127
    iput-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnIdle:Z

    .line 925
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailLock:Ljava/lang/Object;

    .line 1435
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->checkAreaOnTouch:Z

    .line 1570
    iput-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryLaunching:Z

    .line 1579
    new-instance v0, Lcom/lge/camera/controller/PreviewPanelController$3;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewPanelController$3;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReviewThumbnailClickListener:Landroid/view/View$OnClickListener;

    .line 1844
    iput-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    .line 1846
    new-instance v0, Lcom/lge/camera/controller/PreviewPanelController$5;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewPanelController$5;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonRunnable:Ljava/lang/Runnable;

    .line 131
    invoke-direct {p0, v3}, Lcom/lge/camera/controller/PreviewPanelController;->setLockConditionForMainButton(Z)V

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/PreviewPanelController;)Lcom/lge/camera/components/ThumbnailController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/PreviewPanelController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryLaunching:Z

    return v0
.end method

.method static synthetic access$302(Lcom/lge/camera/controller/PreviewPanelController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryLaunching:Z

    return p1
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/PreviewPanelController;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private declared-synchronized checkLockConditionForMainButton()Z
    .locals 7

    .prologue
    .line 307
    monitor-enter p0

    const/4 v2, 0x0

    .line 310
    .local v2, result:Z
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 312
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 313
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 314
    .local v1, keyItem:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 315
    const-string v3, "CameraApp"

    const-string v4, "Locked by key:%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    const/4 v2, 0x1

    .line 321
    .end local v1           #keyItem:Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return v2

    .line 307
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private checkOutRange(Landroid/view/View;IFF)Z
    .locals 5
    .parameter "v"
    .parameter "index"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x1

    .line 1410
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReleaseArea:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;

    .line 1413
    .local v0, releaseArea:Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isB2Model()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1414
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, v0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;->mTop:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p4, v2

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, v0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;->mBottom:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p4, v2

    if-lez v2, :cond_1

    .line 1432
    :cond_0
    :goto_0
    return v1

    .line 1418
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, v0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;->mLeft:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p3, v2

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, v0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;->mRight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p3, v2

    if-gtz v2, :cond_0

    .line 1432
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1423
    :cond_3
    iget v2, v0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;->mTop:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, p4, v2

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, v0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;->mBottom:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p4, v2

    if-gtz v2, :cond_0

    .line 1427
    iget v2, v0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;->mLeft:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, p3, v2

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, v0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;->mRight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p3, v2

    if-lez v2, :cond_2

    goto :goto_0
.end method

.method private doCamcorderShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)V
    .locals 10
    .parameter "button"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1320
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1323
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_2

    .line 1325
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3, v8}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 1326
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1327
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "showAll"

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1328
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "com.lge.camera.command.RemoveSettingMenu"

    invoke-virtual {v3, v4, v0}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1334
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1408
    :goto_1
    return-void

    .line 1329
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1330
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->clearSubMenu()V

    goto :goto_0

    .line 1336
    :pswitch_0
    const-string v3, "CameraApp"

    const-string v4, "VideoState = VIDEO_STATE_IDLE"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3, v9}, Lcom/lge/camera/Mediator;->setVideoState(I)V

    .line 1339
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuEnabled(ZZ)V

    .line 1340
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/QuickFunctionController;->clearSubMenu()V

    .line 1342
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->validRequestedAttachRecordingSize()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1343
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->isAttachMode()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v3, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CamcorderMediator;->getRequestedVideoSizeLimit()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    .line 1346
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "key_preview_size_on_device"

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1350
    .local v2, videoResolution:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/camera/properties/ProjectVariables;->getAttachVideoMinimumSize(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v3, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CamcorderMediator;->getRequestedVideoSizeLimit()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 1353
    const-string v4, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#########  aileen minRequireSpace : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/lge/camera/properties/ProjectVariables;->getAttachVideoMinimumSize(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "getRequestedVideoSizeLimit : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v3, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CamcorderMediator;->getRequestedVideoSizeLimit()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f0b01ee

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->toast(I)V

    .line 1357
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3, v8}, Lcom/lge/camera/Mediator;->setVideoState(I)V

    .line 1358
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/QuickFunctionController;->refresh()V

    goto/16 :goto_1

    .line 1364
    .end local v2           #videoResolution:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/lge/camera/util/TelephonyUtil;->phoneIsOffhook()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/TelephonyUtil;->phoneIsIdle(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1365
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f0b0148

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->toast(I)V

    .line 1366
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3, v8}, Lcom/lge/camera/Mediator;->setVideoState(I)V

    goto/16 :goto_1

    .line 1371
    :cond_5
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Here is shutterclick : storage is = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getStorageState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getStorageState()I

    move-result v3

    if-eqz v3, :cond_6

    .line 1374
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getStorageState()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lge/camera/controller/StorageController;->showStorageHint(I)V

    .line 1375
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3, v8}, Lcom/lge/camera/Mediator;->setVideoState(I)V

    .line 1376
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/QuickFunctionController;->refresh()V

    goto/16 :goto_1

    .line 1380
    :cond_6
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "com.lge.camera.command.StartRecording"

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 1382
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v9, v8}, Lcom/lge/camera/util/Common;->setAudioFocus(Landroid/content/Context;ZZ)V

    .line 1383
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getSoundController()Lcom/lge/camera/controller/SoundController;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/lge/camera/controller/SoundController;->playRecordingSound(Z)V

    .line 1385
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "com.lge.camera.command.StartRecording"

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getStartRecordingSoundDelay()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 1390
    :pswitch_1
    const-string v3, "CameraApp"

    const-string v4, "VIDEO_STATE_RECORDING"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v1

    .line 1392
    .local v1, recController:Lcom/lge/camera/controller/camcorder/RecordingController;
    invoke-virtual {v1}, Lcom/lge/camera/controller/camcorder/RecordingController;->isRecordedLengthTooShort()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1393
    const-string v3, "CameraApp"

    const-string v4, "Ignore stop recording request. It\'s too short."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1396
    :cond_7
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "com.lge.camera.command.StopRecording"

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1401
    .end local v1           #recController:Lcom/lge/camera/controller/camcorder/RecordingController;
    :pswitch_2
    const-string v3, "CameraApp"

    const-string v4, "VIDEO_STATE_NO_REACTION"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1334
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private doCameraShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)V
    .locals 7
    .parameter "button"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1281
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v1, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/lge/camera/controller/camera/CameraFocusController;->setShutterButtonClicked(Z)V

    .line 1282
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v1, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/CameraStorageController;->getAvailablePictureCount()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 1283
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v1, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->clearFocusState()V

    .line 1284
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/lge/camera/controller/StorageController;->checkStorage(Z)V

    .line 1286
    iget-boolean v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    if-eqz v1, :cond_0

    .line 1287
    invoke-virtual {p0, p1, v6}, Lcom/lge/camera/controller/PreviewPanelController;->onShutterButtonFocus(Lcom/lge/camera/components/ShutterButton;Z)V

    .line 1317
    :cond_0
    :goto_0
    return-void

    .line 1292
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1293
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1, v5}, Lcom/lge/camera/Mediator;->checkAutoReviewOff(Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1294
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->clearSubMenu()V

    .line 1299
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v2, "key_camera_timer"

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1300
    .local v0, timerSetting:Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v1, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/TimerController;->isTimerShotCountdown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1304
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1, v5}, Lcom/lge/camera/Mediator;->checkAutoReviewOff(Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1305
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v1

    invoke-virtual {v1, v6, v6}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuEnabled(ZZ)V

    .line 1310
    :goto_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v1

    const/16 v2, 0x15

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v2, "key_flash"

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v2, "key_flash"

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1312
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/lge/camera/controller/FocusController;->doFocus(Z)V

    .line 1313
    const-string v1, "CameraApp"

    const-string v2, "doFocus ture"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    :cond_5
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v2, "com.lge.camera.command.DoCapture"

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1296
    .end local v0           #timerSetting:Ljava/lang/String;
    :cond_6
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->clearScreen()V

    goto :goto_1

    .line 1307
    .restart local v0       #timerSetting:Ljava/lang/String;
    :cond_7
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v1

    invoke-virtual {v1, v6, v5}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuEnabled(ZZ)V

    goto :goto_2
.end method

.method private doTouchActionDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1465
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1489
    :goto_0
    :pswitch_0
    return v2

    .line 1467
    :pswitch_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->getBackgroundResource()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1473
    const-string v0, "CameraApp"

    const-string v1, "press no button"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1470
    :sswitch_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    goto :goto_0

    .line 1478
    :pswitch_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->getBackgroundResource()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1480
    :pswitch_3
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    goto :goto_0

    .line 1465
    :pswitch_data_0
    .packed-switch 0x7f090095
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1467
    :sswitch_data_0
    .sparse-switch
        0x7f020183 -> :sswitch_0
        0x7f020192 -> :sswitch_0
    .end sparse-switch

    .line 1478
    :pswitch_data_1
    .packed-switch 0x7f02018e
        :pswitch_3
    .end packed-switch
.end method

.method private doTouchActionMove(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1492
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->checkAreaOnTouch:Z

    if-nez v0, :cond_1

    .line 1525
    :cond_0
    :goto_0
    return v4

    .line 1496
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1498
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, p1, v3, v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->checkOutRange(Landroid/view/View;IFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1501
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->getBackgroundResource()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1504
    :sswitch_0
    const-string v0, "CameraApp"

    const-string v1, "hb out range!!!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 1506
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->checkAreaOnTouch:Z

    goto :goto_0

    .line 1513
    :pswitch_2
    const/4 v0, 0x2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/lge/camera/controller/PreviewPanelController;->checkOutRange(Landroid/view/View;IFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1516
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->getBackgroundResource()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1518
    :pswitch_3
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 1519
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->checkAreaOnTouch:Z

    goto :goto_0

    .line 1496
    nop

    :pswitch_data_0
    .packed-switch 0x7f090095
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1501
    :sswitch_data_0
    .sparse-switch
        0x7f020183 -> :sswitch_0
        0x7f020192 -> :sswitch_0
    .end sparse-switch

    .line 1516
    :pswitch_data_1
    .packed-switch 0x7f02018e
        :pswitch_3
    .end packed-switch
.end method

.method private doTouchActionUp(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1529
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->checkAreaOnTouch:Z

    if-nez v0, :cond_0

    .line 1530
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->checkAreaOnTouch:Z

    .line 1567
    :goto_0
    return v3

    .line 1533
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1535
    :pswitch_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->getBackgroundResource()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1542
    :sswitch_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 1543
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.TakePictureInRecording"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 1537
    :sswitch_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 1538
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageButton;->playSoundEffect(I)V

    .line 1539
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->showDialogPopup(I)V

    goto :goto_0

    .line 1550
    :pswitch_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->getBackgroundResource()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1553
    :pswitch_3
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 1554
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageButton;->playSoundEffect(I)V

    .line 1555
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->getHelpKeyword(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->gotoHelpActivity(Ljava/lang/String;)V

    .line 1556
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 1558
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, v2}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 1559
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.RemoveSettingMenu"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 1561
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->clearSubMenu()V

    goto :goto_0

    .line 1533
    nop

    :pswitch_data_0
    .packed-switch 0x7f090095
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1535
    :sswitch_data_0
    .sparse-switch
        0x7f020183 -> :sswitch_0
        0x7f020192 -> :sswitch_1
    .end sparse-switch

    .line 1550
    :pswitch_data_1
    .packed-switch 0x7f02018e
        :pswitch_3
    .end packed-switch
.end method

.method private getHelpKeyword(I)Ljava/lang/String;
    .locals 4
    .parameter "subMenuMode"

    .prologue
    const v2, 0x7f0b00ea

    const v1, 0x7f0b009b

    .line 1723
    const/4 v0, 0x0

    .line 1724
    .local v0, key:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1776
    :goto_0
    :pswitch_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Help Activity KEY ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    return-object v0

    .line 1726
    :pswitch_1
    const v1, 0x7f0b00ec

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1727
    goto :goto_0

    .line 1729
    :pswitch_2
    const v1, 0x7f0b00ed

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1730
    goto :goto_0

    .line 1732
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1733
    goto :goto_0

    .line 1735
    :pswitch_4
    const v1, 0x7f0b0074

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1736
    goto :goto_0

    .line 1738
    :pswitch_5
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/PreviewPanelController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1739
    goto :goto_0

    .line 1741
    :pswitch_6
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/PreviewPanelController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1742
    goto :goto_0

    .line 1744
    :pswitch_7
    const v1, 0x7f0b0110

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1745
    goto :goto_0

    .line 1747
    :pswitch_8
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1748
    goto :goto_0

    .line 1750
    :pswitch_9
    const v1, 0x7f0b00e5

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1751
    goto :goto_0

    .line 1753
    :pswitch_a
    const v1, 0x7f0b0102

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1754
    goto :goto_0

    .line 1756
    :pswitch_b
    const v1, 0x7f0b0112

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1757
    goto :goto_0

    .line 1759
    :pswitch_c
    const v1, 0x7f0b00c5

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1760
    goto :goto_0

    .line 1763
    :pswitch_d
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v1

    iget-object v0, v1, Lcom/lge/camera/setting/SettingMenuItem;->name:Ljava/lang/String;

    .line 1764
    goto :goto_0

    .line 1766
    :pswitch_e
    const v1, 0x7f0b00c2

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1767
    goto/16 :goto_0

    .line 1769
    :pswitch_f
    const v1, 0x7f0b0215

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1724
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_a
        :pswitch_3
        :pswitch_9
        :pswitch_d
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private getLastVideoThumbnail(Ljava/lang/String;)Landroid/net/Uri;
    .locals 12
    .parameter "bucketId"

    .prologue
    .line 850
    sget-object v6, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 852
    .local v6, baseUri:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "limit"

    const-string v11, "1"

    invoke-virtual {v0, v4, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 853
    .local v1, query:Landroid/net/Uri;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "_data"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "datetaken"

    aput-object v4, v2, v0

    .line 854
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bucket_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 855
    .local v3, selection:Ljava/lang/String;
    const-string v5, "datetaken DESC,_id DESC"

    .line 857
    .local v5, order:Ljava/lang/String;
    const/4 v7, 0x0

    .line 859
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 860
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 861
    const-string v0, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getLastVideoThumbnail: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v11, 0x1

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 863
    .local v9, id:J
    invoke-static {v6, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 868
    if-eqz v7, :cond_0

    .line 869
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 870
    const/4 v7, 0x0

    .line 873
    .end local v9           #id:J
    :cond_0
    :goto_0
    return-object v0

    .line 868
    :cond_1
    if-eqz v7, :cond_2

    .line 869
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 870
    const/4 v7, 0x0

    .line 873
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 865
    :catch_0
    move-exception v8

    .line 866
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "CameraApp"

    const-string v4, "cursor error "

    invoke-static {v0, v4, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 868
    if-eqz v7, :cond_2

    .line 869
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 870
    const/4 v7, 0x0

    goto :goto_1

    .line 868
    .end local v8           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 869
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 870
    const/4 v7, 0x0

    :cond_3
    throw v0
.end method

.method private gotoHelpActivity(Ljava/lang/String;)V
    .locals 4
    .parameter "keyString"

    .prologue
    .line 1782
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display helpContext = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1784
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lge/camera/CameraHelp;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1785
    const-string v1, "HelpIndex"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1786
    const-string v1, "CameraId"

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1787
    const-string v1, "helpMode"

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1788
    const-string v1, "key_camera_timer"

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "key_camera_timer"

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1790
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mIsHelpActivity:Z

    .line 1791
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1792
    return-void
.end method

.method private setLockConditionForMainButton(Z)V
    .locals 1
    .parameter "bSoundLock"

    .prologue
    .line 277
    const-string v0, "StorageControllerLockKey"

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->registerLockConditionForMainButton(Ljava/lang/String;)V

    .line 278
    if-eqz p1, :cond_0

    .line 279
    const-string v0, "SoundControllerLockKey"

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->registerLockConditionForMainButton(Ljava/lang/String;)V

    .line 281
    :cond_0
    return-void
.end method


# virtual methods
.method public doCameraShutterButtonFocus(Z)V
    .locals 6
    .parameter "pressed"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1129
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraStorageController;->getAvailablePictureCount()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 1130
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 1131
    if-eqz p1, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuEnabled(ZZ)V

    .line 1133
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 1134
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_flash"

    invoke-virtual {v0, v1, v4}, Lcom/lge/camera/Mediator;->setPreferenceMenuEnable(Ljava/lang/String;Z)V

    .line 1135
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_zoom"

    invoke-virtual {v0, v1, v4}, Lcom/lge/camera/Mediator;->setPreferenceMenuEnable(Ljava/lang/String;Z)V

    .line 1190
    :cond_0
    :goto_0
    return-void

    .line 1137
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_camera_shot_mode"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "shotmode_panorama"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_camera_shot_mode"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "shotmode_continuous"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isTimeMachineModeOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1140
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_flash"

    invoke-virtual {v0, v1, v4}, Lcom/lge/camera/Mediator;->setPreferenceMenuEnable(Ljava/lang/String;Z)V

    .line 1145
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportShotMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isTimeMachineModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_camera_shot_mode"

    invoke-virtual {v0, v1, v4}, Lcom/lge/camera/Mediator;->setPreferenceMenuEnable(Ljava/lang/String;Z)V

    .line 1148
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_time_machine"

    invoke-virtual {v0, v1, v4}, Lcom/lge/camera/Mediator;->setPreferenceMenuEnable(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1141
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_hdr"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1142
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_brightness"

    invoke-virtual {v0, v1, v4}, Lcom/lge/camera/Mediator;->setPreferenceMenuEnable(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1155
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0}, Lcom/lge/camera/components/ShutterButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1156
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterButtonFocus : doFocus, pressed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    if-eqz p1, :cond_9

    .line 1158
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    if-eqz v0, :cond_6

    .line 1159
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, v5}, Lcom/lge/camera/Mediator;->checkAutoReviewOff(Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1160
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->clearSubMenu()V

    .line 1177
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isCafSupported()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getCameraMode()I

    move-result v0

    if-eq v0, v5, :cond_7

    .line 1179
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/FocusController;->doFocus(Z)V

    .line 1180
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/lge/camera/controller/camera/CameraFocusController;->setShutterButtonClicked(Z)V

    .line 1183
    :cond_7
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getCameraMode()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 1184
    if-nez p1, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->refresh()V

    .line 1186
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->showOsd()V

    goto/16 :goto_0

    .line 1162
    :cond_8
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->clearScreen()V

    goto :goto_2

    .line 1166
    :cond_9
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1167
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0}, Lcom/lge/camera/components/ShutterButton;->isShutterButtonClicked()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1168
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->refresh()V

    .line 1169
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->showOsd()V

    goto :goto_2

    .line 1172
    :cond_a
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->refresh()V

    .line 1173
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->showOsd()V

    goto :goto_2
.end method

.method public enableCommand(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    const v5, 0x7f090096

    const v4, 0x7f090047

    const/4 v3, 0x1

    .line 543
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableCommand : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_3

    .line 546
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    if-nez v0, :cond_0

    .line 547
    const v0, 0x7f090098

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/Switcher;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/Switcher;->setEnabled(Z)V

    .line 554
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 555
    if-eqz p1, :cond_4

    .line 556
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonEnable()V

    .line 564
    :cond_2
    :goto_0
    const v0, 0x7f090045

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 565
    const v0, 0x7f090095

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 568
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 570
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 571
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 578
    :goto_1
    const v0, 0x7f090049

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 579
    const v0, 0x7f090097

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 582
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 583
    const v0, 0x7f09004b

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 586
    :cond_3
    return-void

    .line 559
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonDisable()V

    goto :goto_0

    .line 573
    :cond_5
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 574
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method public getLastImageThumbnail(Ljava/lang/String;)Landroid/net/Uri;
    .locals 14
    .parameter "bucketId"

    .prologue
    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 824
    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 826
    .local v6, baseUri:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "limit"

    const-string v12, "1"

    invoke-virtual {v0, v4, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 827
    .local v1, query:Landroid/net/Uri;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v13

    const/4 v0, 0x1

    const-string v4, "orientation"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "datetaken"

    aput-object v4, v2, v0

    .line 828
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mime_type=\'image/jpeg\' AND bucket_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 829
    .local v3, selection:Ljava/lang/String;
    const-string v5, "datetaken DESC,_id DESC"

    .line 831
    .local v5, order:Ljava/lang/String;
    const/4 v7, 0x0

    .line 833
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 834
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 835
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 836
    .local v9, id:J
    invoke-static {v6, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 841
    if-eqz v7, :cond_0

    .line 842
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 843
    const/4 v7, 0x0

    .line 846
    .end local v9           #id:J
    :cond_0
    :goto_0
    return-object v0

    .line 841
    :cond_1
    if-eqz v7, :cond_2

    .line 842
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 843
    const/4 v7, 0x0

    :cond_2
    :goto_1
    move-object v0, v11

    .line 846
    goto :goto_0

    .line 838
    :catch_0
    move-exception v8

    .line 839
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "CameraApp"

    const-string v4, "cursor error "

    invoke-static {v0, v4, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 841
    if-eqz v7, :cond_2

    .line 842
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 843
    const/4 v7, 0x0

    goto :goto_1

    .line 841
    .end local v8           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 842
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 843
    const/4 v7, 0x0

    :cond_3
    throw v0
.end method

.method public getMainBarAlphaValue()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mainBarAlpha_value:I

    return v0
.end method

.method public getMostRecentThumbnailUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .parameter "bucketId"

    .prologue
    .line 807
    const/4 v0, 0x0

    .line 808
    .local v0, uri:Landroid/net/Uri;
    iget v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mInclusion:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 809
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->getLastImageThumbnail(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 810
    if-eqz v0, :cond_0

    .line 811
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-static {v1, v0}, Lcom/lge/camera/util/Common;->saveLastPicture(Lcom/lge/camera/Mediator;Landroid/net/Uri;)V

    .line 819
    :cond_0
    :goto_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMostRecentThumbnailUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    return-object v0

    .line 814
    :cond_1
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->getLastVideoThumbnail(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 815
    if-eqz v0, :cond_0

    .line 816
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-static {v1, v0}, Lcom/lge/camera/util/Common;->saveLastVideo(Lcom/lge/camera/Mediator;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public getMostRecentThumbnailUri(Z)Landroid/net/Uri;
    .locals 4
    .parameter "isUseLinkedThumbnailList"

    .prologue
    .line 785
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsEMMCmemory()Z

    move-result v2

    if-nez v2, :cond_2

    .line 786
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/StorageController;->getBucketId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/PreviewPanelController;->getMostRecentThumbnailUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 803
    :cond_1
    :goto_0
    return-object v1

    .line 789
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/StorageController;->getBucketId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/PreviewPanelController;->getMostRecentThumbnailUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 791
    .local v1, integratedUri:Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 793
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/StorageController;->getBucketId()Ljava/lang/String;

    move-result-object v0

    .line 794
    .local v0, bucketId:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "key_storage"

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getEmmcName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 795
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/camera/controller/StorageController;->getBucketId(I)Ljava/lang/String;

    move-result-object v0

    .line 796
    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->getMostRecentThumbnailUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 798
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lge/camera/controller/StorageController;->getBucketId(I)Ljava/lang/String;

    move-result-object v0

    .line 799
    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->getMostRecentThumbnailUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public getThumbController()Lcom/lge/camera/components/ThumbnailController;
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    return-object v0
.end method

.method public getThumbnailAndUpdateButton()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 718
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 719
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "getThumbnailAndUpdateButton() return mThumbController:%s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    :goto_0
    return-void

    .line 723
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isAvailableLiveShot()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 725
    :cond_2
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/PreviewPanelController;->getThumbnailAndUpdateButton(I)V

    goto :goto_0

    .line 727
    :cond_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->getThumbnailAndUpdateButton(I)V

    goto :goto_0
.end method

.method public getThumbnailAndUpdateButton(I)V
    .locals 8
    .parameter "inclusion"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 732
    iput-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    .line 733
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 734
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 736
    :cond_0
    iput-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    .line 737
    iput p1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mInclusion:I

    .line 739
    const/4 v2, 0x0

    .line 740
    .local v2, strUri:Ljava/lang/String;
    const/4 v1, 0x0

    .line 741
    .local v1, savedPath:Ljava/lang/String;
    const/4 v0, 0x0

    .line 743
    .local v0, pathFromUri:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isAvailableLiveShot()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 745
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/Common;->getLastPictureUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 746
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/Common;->getLastPicturePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 752
    :goto_0
    const-string v3, "CameraApp"

    const-string v4, "Last uri:%s"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    if-eqz v2, :cond_3

    .line 755
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 756
    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 757
    :cond_2
    const-string v3, "CameraApp"

    const-string v4, "Saved uri is not valid. Find most recent uri."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const/4 v2, 0x0

    .line 762
    :cond_3
    if-nez v2, :cond_7

    .line 763
    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/PreviewPanelController;->getMostRecentThumbnailUri(Z)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    .line 764
    const-string v3, "CameraApp"

    const-string v4, "Found most recent uri:%s"

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    .line 777
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-nez v3, :cond_5

    .line 778
    const-string v3, "CameraApp"

    const-string v4, "Couldn\'t get any thumbnail. Leave it empty."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->updateThumbnailButton()V

    .line 782
    return-void

    .line 748
    :cond_6
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/Common;->getLastVideoUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 749
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/Common;->getLastVideoPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 768
    :cond_7
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    .line 769
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    .line 770
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-nez v3, :cond_4

    .line 771
    const-string v3, "CameraApp"

    const-string v4, "Couldn\'t get thumbnail from Last uri"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/PreviewPanelController;->getMostRecentThumbnailUri(Z)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    .line 773
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method public getTimeMachineComplete()Z
    .locals 1

    .prologue
    .line 1926
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSetTimeMachineComplete:Z

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 139
    const v0, 0x7f090044

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    return-void
.end method

.method public hideLiveSnapshotButton()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 698
    invoke-virtual {p0, v0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButton(II)V

    .line 699
    return-void
.end method

.method public initController()V
    .locals 7

    .prologue
    const v6, 0x7f090047

    const v5, 0x7f090045

    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    const v0, 0x7f09006b

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->inflateStub(I)Landroid/view/View;

    .line 145
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 146
    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 147
    const v0, 0x7f090049

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 149
    const v0, 0x7f090098

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/Switcher;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    .line 150
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isAttachIntent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/PreviewPanelController;->setSwitcherVisible(Z)V

    .line 160
    :cond_0
    :goto_0
    const v0, 0x7f090093

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ShutterButton;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    .line 161
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/lge/camera/components/ShutterButton;->setOnShutterButtonListener(Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;)V

    .line 162
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/lge/camera/components/ShutterButton;->setOnShutterButtonLongPressListener(Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;)V

    .line 163
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/ShutterButton;->setFocusable(Z)V

    .line 164
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonVisible(Z)V

    .line 165
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonDelegate()V

    .line 167
    const-string v0, "CameraApp"

    const-string v3, "[PreviewPanelController] initController"

    invoke-static {v0, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    .line 170
    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonMiddle:Lcom/lge/camera/components/RotateImageButton;

    .line 171
    const v0, 0x7f090049

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    .line 173
    const v0, 0x7f090095

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonTop:Landroid/widget/ImageView;

    .line 174
    const v0, 0x7f090096

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonMiddle:Landroid/widget/ImageView;

    .line 175
    const v0, 0x7f090097

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonBottom:Landroid/widget/ImageView;

    .line 177
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/PreviewPanelController;->showSubButtonInit(Z)V

    .line 179
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isAttachIntent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    if-nez v0, :cond_1

    .line 180
    const v0, 0x7f09004b

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    .line 181
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReviewThumbnailClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    new-instance v0, Lcom/lge/camera/components/ThumbnailController;

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/lge/camera/components/ThumbnailController;-><init>(Landroid/content/res/Resources;Landroid/widget/ImageView;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    .line 185
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->initReleaseArea()V

    .line 186
    iput-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 187
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/PreviewPanelController;->enableCommand(Z)V

    .line 188
    iget v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mainBarAlpha_value:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainBarAlpha(I)V

    .line 189
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/lge/camera/controller/PreviewPanelController;->startRotation(IZ)V

    .line 190
    return-void

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    if-eqz v0, :cond_0

    .line 154
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/lge/camera/components/Switcher;->setSwitch(Z)V

    .line 155
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getOrientation()I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/lge/camera/components/Switcher;->setSwitcherImage(II)V

    .line 156
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    invoke-virtual {v0, p0}, Lcom/lge/camera/components/Switcher;->setOnSwitchListener(Lcom/lge/camera/components/Switcher$OnSwitchListener;)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 154
    goto :goto_1
.end method

.method public initReleaseArea()V
    .locals 6

    .prologue
    .line 255
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReleaseArea:Ljava/util/ArrayList;

    .line 256
    new-instance v0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0060

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0a0062

    invoke-static {v1, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0a0061

    invoke-static {v1, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f0a0063

    invoke-static {v1, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;-><init>(Lcom/lge/camera/controller/PreviewPanelController;IIII)V

    .line 260
    .local v0, ra:Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReleaseArea:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 261
    new-instance v0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;

    .end local v0           #ra:Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0068

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0a006a

    invoke-static {v1, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0a0069

    invoke-static {v1, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f0a006b

    invoke-static {v1, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;-><init>(Lcom/lge/camera/controller/PreviewPanelController;IIII)V

    .line 265
    .restart local v0       #ra:Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReleaseArea:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 266
    new-instance v0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;

    .end local v0           #ra:Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0070

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0a0072

    invoke-static {v1, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0a0071

    invoke-static {v1, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f0a0073

    invoke-static {v1, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;-><init>(Lcom/lge/camera/controller/PreviewPanelController;IIII)V

    .line 270
    .restart local v0       #ra:Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReleaseArea:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 271
    return-void
.end method

.method public isGalleryLaunching()Z
    .locals 1

    .prologue
    .line 1576
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryLaunching:Z

    return v0
.end method

.method public isHelpActivity()Z
    .locals 1

    .prologue
    .line 1795
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mIsHelpActivity:Z

    return v0
.end method

.method public isPressedShutterButton()Z
    .locals 2

    .prologue
    .line 708
    const/4 v0, 0x0

    .line 710
    .local v0, result:Z
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v1}, Lcom/lge/camera/components/ShutterButton;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 711
    const/4 v0, 0x1

    .line 714
    :cond_0
    return v0
.end method

.method public isShutterButtonLongKey()Z
    .locals 1

    .prologue
    .line 1845
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1684
    const-string v0, "CameraApp"

    const-string v1, "onDestory-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    .line 1687
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1688
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1689
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    .line 1692
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    if-eqz v0, :cond_1

    .line 1693
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1695
    :cond_1
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    .line 1697
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReleaseArea:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1698
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReleaseArea:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1699
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReleaseArea:Ljava/util/ArrayList;

    .line 1702
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    if-eqz v0, :cond_3

    .line 1703
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    invoke-virtual {v0}, Lcom/lge/camera/components/ThumbnailController;->close()V

    .line 1705
    :cond_3
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    .line 1707
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1708
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    if-eqz v0, :cond_4

    .line 1709
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/ShutterButton;->setOnShutterButtonListener(Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;)V

    .line 1710
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/ShutterButton;->setOnShutterButtonLongPressListener(Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;)V

    .line 1711
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0}, Lcom/lge/camera/components/ShutterButton;->unbind()V

    .line 1712
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    .line 1714
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    if-eqz v0, :cond_5

    .line 1715
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/Switcher;->setOnSwitchListener(Lcom/lge/camera/components/Switcher$OnSwitchListener;)V

    .line 1716
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    .line 1718
    :cond_5
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onDestroy()V

    .line 1719
    const-string v0, "CameraApp"

    const-string v1, "onDestory-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1672
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v0, :cond_0

    .line 1673
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonDisable()V

    .line 1676
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->stopTimerTask()V

    .line 1678
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnIdle:Z

    .line 1679
    invoke-direct {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setLockConditionForMainButton(Z)V

    .line 1680
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1629
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryLaunching:Z

    .line 1630
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mIsHelpActivity:Z

    .line 1632
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume mInit["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_2

    .line 1634
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v1, Lcom/lge/camera/controller/PreviewPanelController$4;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/PreviewPanelController$4;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1640
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 1642
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/lge/camera/controller/PreviewPanelController;->setSwitcherVisible(Z)V

    .line 1643
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->show()V

    .line 1645
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getIndicatorController()Lcom/lge/camera/controller/IndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->show()V

    .line 1646
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/lge/camera/controller/PreviewPanelController;->enableCommand(Z)V

    .line 1648
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 1649
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_4

    .line 1650
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/CameraApp;

    invoke-virtual {v0}, Lcom/lge/camera/CameraApp;->getPostviewRequestCode()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 1651
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/CameraApp;

    invoke-virtual {v0}, Lcom/lge/camera/CameraApp;->setPostviewRequestInitCode()V

    .line 1666
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/lge/camera/controller/PreviewPanelController;->startRotation(IZ)V

    .line 1668
    :cond_2
    return-void

    .line 1653
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->updateThumbnailButtonVisibility()V

    .line 1654
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getThumbnailAndUpdateButton()V

    goto :goto_0

    .line 1657
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/Camcorder;

    invoke-virtual {v0}, Lcom/lge/camera/Camcorder;->getPostviewRequestCode()I

    move-result v0

    if-ne v0, v5, :cond_6

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isAvailableLiveShot()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1659
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/Camcorder;

    invoke-virtual {v0}, Lcom/lge/camera/Camcorder;->setPostviewRequestInitCode()V

    goto :goto_0

    .line 1661
    :cond_6
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->updateThumbnailButtonVisibility()V

    .line 1662
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getThumbnailAndUpdateButton()V

    goto :goto_0
.end method

.method public onShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)V
    .locals 8
    .parameter "button"

    .prologue
    const v7, 0x7f090094

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1193
    const-string v2, "CameraApp"

    const-string v3, "TIME_CHECK onShutterButtonClick"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1196
    const-string v2, "CameraApp"

    const-string v3, "onShutterButtonClick return, mMediator.isPausing() is true"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    :cond_0
    :goto_0
    return-void

    .line 1200
    :cond_1
    const v2, 0x7f09006e

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1201
    .local v0, initLoading:Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 1202
    const-string v2, "CameraApp"

    const-string v3, "onShutterButtonClick return: loading is visible"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1206
    :cond_2
    invoke-virtual {p1}, Lcom/lge/camera/components/ShutterButton;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1208
    :pswitch_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getEnableInput()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v2}, Lcom/lge/camera/components/ShutterButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v2}, Lcom/lge/camera/components/ShutterButton;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 1212
    :cond_3
    const-string v2, "CameraApp"

    const-string v3, "onShutterButtonClick return, mainbutton is disable or not previewing"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    iget-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    if-nez v2, :cond_0

    .line 1214
    invoke-virtual {p1, v5}, Lcom/lge/camera/components/ShutterButton;->setPressed(Z)V

    .line 1215
    invoke-virtual {p0, v7}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1216
    invoke-virtual {p0, v7}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 1222
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v2

    const/16 v3, 0x15

    if-ne v2, v3, :cond_5

    .line 1223
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isTimeMachinShotSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->isTimeMachineModeOn()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSetTimeMachineComplete:Z

    if-nez v2, :cond_5

    .line 1226
    const-string v2, "CameraApp"

    const-string v3, "Time Machine setting is not completed"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1231
    :cond_5
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetFunctionFrontCameraBeautyShot()I

    move-result v2

    if-ne v2, v6, :cond_6

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v2

    if-ne v2, v6, :cond_6

    .line 1233
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/components/OpenGLSurfaceView;->isCompleteProcessFrame()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1238
    :cond_6
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1239
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_7

    .line 1240
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_panorama"

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v2, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camera/PanoramaController;->isPanoramaStarted()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1243
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v2, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camera/PanoramaController;->stopPanorama()V

    .line 1244
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSoundController()Lcom/lge/camera/controller/SoundController;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/lge/camera/controller/SoundController;->playRecordingSound(Z)V

    goto/16 :goto_0

    .line 1248
    :cond_7
    iget-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    if-nez v2, :cond_0

    .line 1249
    invoke-virtual {p1, v5}, Lcom/lge/camera/components/ShutterButton;->setPressed(Z)V

    .line 1250
    invoke-virtual {p0, v7}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1251
    invoke-virtual {p0, v7}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setPressed(Z)V

    .line 1253
    :cond_8
    const-string v2, "CameraApp"

    const-string v3, "mSnapshotOnIdle = true"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    iput-boolean v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnIdle:Z

    goto/16 :goto_0

    .line 1259
    :cond_9
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-ne v2, v6, :cond_a

    .line 1260
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v2, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v1

    .line 1261
    .local v1, recController:Lcom/lge/camera/controller/camcorder/RecordingController;
    invoke-virtual {v1}, Lcom/lge/camera/controller/camcorder/RecordingController;->getRecordingControllerInit()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1262
    const-string v2, "CameraApp"

    const-string v3, "RecordingController not ready"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1267
    .end local v1           #recController:Lcom/lge/camera/controller/camcorder/RecordingController;
    :cond_a
    iput-boolean v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnIdle:Z

    .line 1269
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_b

    .line 1270
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->doCameraShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)V

    goto/16 :goto_0

    .line 1272
    :cond_b
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->doCamcorderShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)V

    goto/16 :goto_0

    .line 1206
    nop

    :pswitch_data_0
    .packed-switch 0x7f090093
        :pswitch_0
    .end packed-switch
.end method

.method public onShutterButtonFocus(Lcom/lge/camera/components/ShutterButton;Z)V
    .locals 7
    .parameter "button"
    .parameter "pressed"

    .prologue
    const/4 v6, 0x1

    const v5, 0x7f090094

    const/4 v4, 0x0

    .line 1042
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterButtonFocus pressed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    if-nez v1, :cond_1

    .line 1045
    const-string v1, "CameraApp"

    const-string v2, "return by mMediator == null"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    :cond_0
    :goto_0
    return-void

    .line 1049
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    const-string v2, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 1051
    if-nez p2, :cond_2

    .line 1052
    const-string v1, "CameraApp"

    const-string v2, "stopTimerTask"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->stopTimerTask()V

    .line 1054
    invoke-virtual {p1, v4}, Lcom/lge/camera/components/ShutterButton;->setPressed(Z)V

    .line 1055
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1056
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 1060
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1061
    const-string v1, "CameraApp"

    const-string v2, "return by mMediator.isPausing()"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1065
    :cond_3
    const v1, 0x7f09006e

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1066
    .local v0, initLoading:Landroid/view/View;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 1067
    const-string v1, "CameraApp"

    const-string v2, "onShutterButtonFocus return: loading is visible"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1071
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getEnableInput()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v1}, Lcom/lge/camera/components/ShutterButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getStatus()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 1074
    :cond_5
    if-eqz p2, :cond_6

    .line 1075
    const-string v1, "CameraApp"

    const-string v2, "onShutterButtonFocus: reset press"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    invoke-virtual {p1, v4}, Lcom/lge/camera/components/ShutterButton;->setPressed(Z)V

    .line 1077
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1078
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 1081
    :cond_6
    const-string v1, "CameraApp"

    const-string v2, "return by enable false"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1085
    :cond_7
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_a

    .line 1087
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_panorama"

    invoke-virtual {v1, v2, v3}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v1, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/PanoramaController;->isPanoramaStarted()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v1, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/PanoramaController;->isSynthesisInProgress()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1090
    :cond_8
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1091
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_0

    .line 1096
    :cond_9
    if-eqz p2, :cond_a

    .line 1097
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1, v6}, Lcom/lge/camera/Mediator;->checkAutoReviewOff(Z)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1098
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuEnabled(ZZ)V

    .line 1105
    :cond_a
    :goto_1
    invoke-virtual {p1}, Lcom/lge/camera/components/ShutterButton;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 1107
    :pswitch_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsEMMCmemory()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1108
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/StorageController;->isExternalStorageRemoved()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1109
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonDisable()V

    .line 1110
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v1

    invoke-virtual {v1, v6, v6}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuEnabled(ZZ)V

    .line 1114
    :cond_b
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 1115
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setPressed(Z)V

    .line 1118
    :cond_c
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 1119
    invoke-virtual {p0, p2}, Lcom/lge/camera/controller/PreviewPanelController;->doCameraShutterButtonFocus(Z)V

    goto/16 :goto_0

    .line 1100
    :cond_d
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v1

    invoke-virtual {v1, v4, v6}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuEnabled(ZZ)V

    goto :goto_1

    .line 1105
    nop

    :pswitch_data_0
    .packed-switch 0x7f090093
        :pswitch_0
    .end packed-switch
.end method

.method public onShutterButtonLongPressed(Lcom/lge/camera/components/ShutterButton;)V
    .locals 10
    .parameter "button"

    .prologue
    const-wide/16 v2, 0x32

    const v9, 0x7f090094

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 1860
    const-string v0, "CameraApp"

    const-string v4, "onShutterButtonLongPressed"

    invoke-static {v0, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    if-nez v0, :cond_1

    .line 1905
    :cond_0
    :goto_0
    return-void

    .line 1864
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-eq v0, v8, :cond_0

    .line 1867
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "key_camera_shot_mode"

    invoke-virtual {v0, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1868
    .local v6, shotMode:Ljava/lang/String;
    const-string v0, "shotmode_normal"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "not found"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isTimeMachineModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1873
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, v5}, Lcom/lge/camera/Mediator;->checkAutoReviewOff(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1876
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "key_camera_timer"

    invoke-virtual {v0, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1877
    .local v7, timerSetting:Ljava/lang/String;
    const-string v0, "0"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/TimerController;->isTimerShotCountdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1881
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mButtonCheckTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 1882
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0}, Lcom/lge/camera/components/ShutterButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1883
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, v5}, Lcom/lge/camera/components/ShutterButton;->setPressed(Z)V

    .line 1884
    invoke-virtual {p0, v9}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1885
    invoke-virtual {p0, v9}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 1890
    :cond_3
    new-instance v1, Lcom/lge/camera/controller/PreviewPanelController$6;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/PreviewPanelController$6;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    .line 1901
    .local v1, longShutter:Ljava/util/TimerTask;
    iput-boolean v8, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    .line 1902
    new-instance v0, Ljava/util/Timer;

    const-string v4, "timer_long_press_check"

    invoke-direct {v0, v4}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mButtonCheckTimer:Ljava/util/Timer;

    .line 1903
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mButtonCheckTimer:Ljava/util/Timer;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto/16 :goto_0
.end method

.method public onSwitcherClick(Lcom/lge/camera/components/Switcher;)V
    .locals 8
    .parameter "button"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1800
    const-string v2, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSwitcherClick :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, " Camera -> Camcorder"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    const v1, 0x7f09006e

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1803
    .local v0, initLoading:Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 1804
    const-string v1, "CameraApp"

    const-string v2, "onSwitcherClick return: loading is visible"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    :cond_0
    :goto_1
    return-void

    .line 1800
    .end local v0           #initLoading:Landroid/view/View;
    :cond_1
    const-string v1, " Camcorder -> Camera"

    goto :goto_0

    .line 1807
    .restart local v0       #initLoading:Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1809
    :cond_3
    const-string v1, "CameraApp"

    const-string v2, "onSwitcherClick return: is capturing.."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1812
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonDisable()V

    .line 1814
    invoke-virtual {p1}, Lcom/lge/camera/components/Switcher;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 1816
    :pswitch_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_5

    .line 1817
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuEnabled(ZZ)V

    .line 1818
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/PreviewPanelController;->enableCommand(Z)V

    .line 1819
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/lge/camera/controller/ToastController;->hide(Z)V

    .line 1820
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/PreviewController;->showCamcorderLoadingView()V

    .line 1821
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v2, "com.lge.camera.command.ChangeToCamcorder"

    invoke-virtual {v1, v2, v6, v7}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 1822
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/lge/camera/Mediator;->hideOsd(Z)V

    goto :goto_1

    .line 1825
    :cond_5
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v1

    if-nez v1, :cond_0

    .line 1827
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuEnabled(ZZ)V

    .line 1828
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/PreviewPanelController;->enableCommand(Z)V

    .line 1829
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/lge/camera/controller/ToastController;->hide(Z)V

    .line 1830
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/PreviewController;->showCameraLoadingView()V

    .line 1831
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v2, "com.lge.camera.command.ChangeToCamera"

    invoke-virtual {v1, v2, v6, v7}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 1832
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/lge/camera/Mediator;->hideOsd(Z)V

    goto/16 :goto_1

    .line 1814
    :pswitch_data_0
    .packed-switch 0x7f090098
        :pswitch_0
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1438
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    if-nez v0, :cond_0

    .line 1439
    const-string v0, "CameraApp"

    const-string v1, "PreviewPanelController : Mediator is null."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    :goto_0
    return v2

    .line 1443
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1444
    const-string v0, "CameraApp"

    const-string v1, "PreviewPanelController : Mediator is pausing."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1448
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1450
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/PreviewPanelController;->doTouchActionDown(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1454
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/PreviewPanelController;->doTouchActionMove(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1458
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/PreviewPanelController;->doTouchActionUp(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1448
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public performFocusOnShutterButton(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 704
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/ShutterButton;->performFocus(Z)V

    .line 705
    return-void
.end method

.method public declared-synchronized registerLockConditionForMainButton(Ljava/lang/String;)V
    .locals 4
    .parameter "lockKey"

    .prologue
    .line 284
    monitor-enter p0

    if-nez p1, :cond_0

    .line 285
    :try_start_0
    const-string v0, "CameraApp"

    const-string v1, "return by lockKey == null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :goto_0
    monitor-exit p0

    return-void

    .line 289
    :cond_0
    :try_start_1
    const-string v0, "CameraApp"

    const-string v1, "lock key: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mHashMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCamcorderShutterButtonImage(ZI)I
    .locals 9
    .parameter "status"
    .parameter "orientation"

    .prologue
    const v4, 0x7f090094

    const/16 v8, 0xb4

    const/4 v7, 0x1

    const v6, 0x7f090093

    const/4 v5, 0x0

    .line 443
    const v0, 0x7f020184

    .line 444
    .local v0, bgResId:I
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v2

    .line 445
    .local v2, videoState:I
    const/4 v1, 0x1

    .line 446
    .local v1, enable:Z
    if-eq p2, v7, :cond_0

    const/4 v3, 0x3

    if-ne p2, v3, :cond_4

    .line 447
    :cond_0
    const v0, 0x7f020185

    .line 448
    if-ne p2, v7, :cond_3

    .line 449
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3, v6, v5, v5}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 461
    :goto_0
    if-eqz p1, :cond_9

    .line 462
    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 463
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f020188

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 475
    :goto_1
    if-nez v1, :cond_2

    .line 476
    if-eq p2, v7, :cond_1

    const/4 v3, 0x3

    if-ne p2, v3, :cond_b

    .line 477
    :cond_1
    const v0, 0x7f020008

    .line 478
    if-ne p2, v7, :cond_a

    .line 479
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3, v6, v5, v5}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 493
    :cond_2
    :goto_2
    return v0

    .line 451
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3, v6, v8, v5}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    goto :goto_0

    .line 454
    :cond_4
    if-nez p2, :cond_5

    .line 455
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3, v6, v5, v5}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    goto :goto_0

    .line 457
    :cond_5
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3, v6, v8, v5}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    goto :goto_0

    .line 464
    :cond_6
    if-eqz v2, :cond_7

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    .line 465
    :cond_7
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f020187

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 467
    :cond_8
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f020021

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 468
    const/4 v1, 0x0

    goto :goto_1

    .line 471
    :cond_9
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f020021

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 472
    const/4 v1, 0x0

    goto :goto_1

    .line 481
    :cond_a
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3, v6, v8, v5}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    goto :goto_2

    .line 485
    :cond_b
    const v0, 0x7f020005

    .line 486
    if-nez p2, :cond_c

    .line 487
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3, v6, v5, v5}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    goto :goto_2

    .line 489
    :cond_c
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3, v6, v8, v5}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    goto :goto_2
.end method

.method public setCameraShutterButtonImage(ZI)I
    .locals 7
    .parameter "status"
    .parameter "orientation"

    .prologue
    const/16 v6, 0xb4

    const/4 v5, 0x1

    const v3, 0x7f090093

    const v4, 0x7f090094

    const/4 v2, 0x0

    .line 404
    const v0, 0x7f020184

    .line 405
    .local v0, bgResId:I
    if-eq p2, v5, :cond_0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    .line 406
    :cond_0
    const v0, 0x7f020185

    .line 407
    if-ne p2, v5, :cond_2

    .line 408
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1, v3, v2, v2}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 420
    :goto_0
    if-eqz p1, :cond_7

    .line 421
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v1, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/PanoramaController;->isPanoramaUpdatebutton()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 422
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f020188

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 439
    :cond_1
    :goto_1
    return v0

    .line 410
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1, v3, v6, v2}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    goto :goto_0

    .line 413
    :cond_3
    if-nez p2, :cond_4

    .line 414
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1, v3, v2, v2}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    goto :goto_0

    .line 416
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1, v3, v6, v2}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    goto :goto_0

    .line 423
    :cond_5
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v1, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/PanoramaController;->isSynthesisInProgress()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 424
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f02002d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 426
    :cond_6
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f020186

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 429
    :cond_7
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v1, Lcom/lge/camera/CameraMediator;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_panorama"

    invoke-virtual {v1, v2, v3}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 430
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v1, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/PanoramaController;->isPanoramaUpdatebutton()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v1, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/PanoramaController;->isSynthesisInProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 432
    :cond_8
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f02002d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 436
    :cond_9
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f020028

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public setGalleryLaunching(Z)V
    .locals 0
    .parameter "isLaunching"

    .prologue
    .line 1572
    iput-boolean p1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryLaunching:Z

    .line 1573
    return-void
.end method

.method public setLastPictureThumb([BLandroid/net/Uri;Z)V
    .locals 9
    .parameter "data"
    .parameter "uri"
    .parameter "isPicture"

    .prologue
    .line 928
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailLock:Ljava/lang/Object;

    monitor-enter v4

    .line 929
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 930
    :cond_0
    const-string v3, "CameraApp"

    const-string v5, "mThumbController:%s, isPausing():%b, uri:%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v8}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object p2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    const-string v3, "CameraApp"

    const-string v5, "setLastThumb() return"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    monitor-exit v4

    .line 961
    :goto_0
    return-void

    .line 935
    :cond_1
    iput-object p2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    .line 937
    const-string v3, "CameraApp"

    const-string v5, "Thumbnail Start"

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    if-eqz p3, :cond_3

    .line 939
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 940
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-static {v3}, Lcom/lge/camera/util/Common;->getSampleSize(Lcom/lge/camera/Mediator;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 942
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/ImageManager;->getExifOrientation(Ljava/lang/String;)I

    move-result v1

    .line 943
    .local v1, orientation:I
    const/4 v3, 0x0

    array-length v5, p1

    invoke-static {p1, v3, v5, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 944
    .local v2, thumbnail:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 945
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 946
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    .line 948
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getImageHandler()Lcom/lge/camera/util/ImageHandler;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v1, v5}, Lcom/lge/camera/util/ImageHandler;->getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    .line 950
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-static {v3, p2}, Lcom/lge/camera/util/Common;->saveLastPicture(Lcom/lge/camera/Mediator;Landroid/net/Uri;)V

    .line 959
    .end local v0           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v1           #orientation:I
    .end local v2           #thumbnail:Landroid/graphics/Bitmap;
    :goto_1
    const-string v3, "CameraApp"

    const-string v5, "Thumbnail End"

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 952
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    .line 953
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 954
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    .line 956
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Lcom/lge/camera/Mediator;->getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    .line 957
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-static {v3, p2}, Lcom/lge/camera/util/Common;->saveLastVideo(Lcom/lge/camera/Mediator;Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setLastThumb(Landroid/net/Uri;Z)V
    .locals 6
    .parameter "uri"
    .parameter "isPicture"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 877
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p1, :cond_1

    .line 878
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "mThumbController:%s, isPausing():%b, uri:%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x2

    aput-object p1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    const-string v0, "CameraApp"

    const-string v2, "setLastThumb() return"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    :goto_0
    return-void

    .line 884
    :cond_1
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    .line 885
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 886
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 887
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    .line 889
    :cond_2
    const-string v2, "CameraApp"

    const-string v3, "Thumbnail Start"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    .line 891
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thumbnail End. mThumbImage is null?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-nez v4, :cond_3

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    if-eqz p2, :cond_4

    .line 894
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-static {v0, p1}, Lcom/lge/camera/util/Common;->saveLastPicture(Lcom/lge/camera/Mediator;Landroid/net/Uri;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 891
    goto :goto_1

    .line 896
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-static {v0, p1}, Lcom/lge/camera/util/Common;->saveLastVideo(Lcom/lge/camera/Mediator;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setMainBarAlpha(I)V
    .locals 4
    .parameter "value"

    .prologue
    const/16 v1, 0xff

    .line 221
    const v2, 0x7f090044

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 222
    .local v0, mainBar:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 223
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetXGAmodel()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 224
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 228
    :cond_0
    :goto_0
    iput p1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mainBarAlpha_value:I

    .line 229
    if-ne p1, v1, :cond_7

    :goto_1
    iput v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    .line 232
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    invoke-virtual {v1}, Lcom/lge/camera/components/Switcher;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 233
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    invoke-virtual {v1}, Lcom/lge/camera/components/Switcher;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v1}, Lcom/lge/camera/components/ShutterButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 237
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v1}, Lcom/lge/camera/components/ShutterButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 238
    const v1, 0x7f090094

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 241
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 242
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 245
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonMiddle:Lcom/lge/camera/components/RotateImageButton;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonMiddle:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 246
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonMiddle:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 249
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 250
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 252
    :cond_5
    return-void

    .line 226
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_0

    .line 229
    :cond_7
    const/16 v1, 0xc9

    goto/16 :goto_1
.end method

.method public setMainButtonDelegate()V
    .locals 3

    .prologue
    .line 193
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v1

    const/16 v2, 0xe

    if-eq v1, v2, :cond_0

    .line 214
    :goto_0
    return-void

    .line 198
    :cond_0
    const v1, 0x7f090092

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 199
    .local v0, parent:Landroid/widget/RelativeLayout;
    new-instance v1, Lcom/lge/camera/controller/PreviewPanelController$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/PreviewPanelController$1;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setMainButtonDisable()V
    .locals 4

    .prologue
    const v3, 0x7f090094

    const/4 v2, 0x0

    .line 351
    const-string v0, "CameraApp"

    const-string v1, "setMainButtonDisable"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    if-eqz v0, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/lge/camera/controller/PreviewPanelController;->setShutterButtonImage(ZI)V

    .line 357
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    if-eqz v0, :cond_0

    .line 358
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/ShutterButton;->setPressed(Z)V

    .line 360
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/ShutterButton;->setEnabled(Z)V

    .line 361
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method

.method public setMainButtonEnable()V
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonEnable(Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public setMainButtonEnable(Ljava/lang/String;)V
    .locals 4
    .parameter "lockKey"

    .prologue
    const/4 v3, 0x1

    .line 329
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMainButtonEnable, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->setUnlockConditionForMainButton(Ljava/lang/String;)V

    .line 332
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->checkLockConditionForMainButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    const-string v0, "CameraApp"

    const-string v1, "return by checkLockConditionForMainButton() == true"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/ShutterButton;->setEnabled(Z)V

    .line 339
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/lge/camera/controller/PreviewPanelController;->setShutterButtonImage(ZI)V

    .line 343
    :cond_2
    const v0, 0x7f090092

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto :goto_0
.end method

.method public setMainButtonVisible(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    const v3, 0x7f090092

    .line 503
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMainbuttonVisible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 506
    const-string v0, "CameraApp"

    const-string v1, "setMainbuttonVisible : main_button_view did not inflate!!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :goto_0
    return-void

    .line 510
    :cond_0
    if-eqz p1, :cond_1

    .line 511
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 513
    :cond_1
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setShutterButtonImage(ZI)V
    .locals 6
    .parameter "status"
    .parameter "degree"

    .prologue
    const v5, 0x7f090093

    .line 369
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setShutterButtonImage : status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", degree = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_0

    .line 371
    const-string v2, "CameraApp"

    const-string v3, "return by !mInit"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :goto_0
    return-void

    .line 375
    :cond_0
    const/4 v1, 0x0

    .line 376
    .local v1, orientation:I
    sparse-switch p2, :sswitch_data_0

    .line 391
    :goto_1
    const v0, 0x7f020184

    .line 392
    .local v0, bgResId:I
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_1

    .line 393
    invoke-virtual {p0, p1, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setCameraShutterButtonImage(ZI)I

    move-result v0

    .line 398
    :goto_2
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 399
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 400
    const v2, 0x7f090094

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 378
    .end local v0           #bgResId:I
    :sswitch_0
    const/4 v1, 0x0

    .line 379
    goto :goto_1

    .line 381
    :sswitch_1
    const/4 v1, 0x1

    .line 382
    goto :goto_1

    .line 384
    :sswitch_2
    const/4 v1, 0x2

    .line 385
    goto :goto_1

    .line 387
    :sswitch_3
    const/4 v1, 0x3

    goto :goto_1

    .line 395
    .restart local v0       #bgResId:I
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setCamcorderShutterButtonImage(ZI)I

    move-result v0

    goto :goto_2

    .line 376
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public setSubButton(II)V
    .locals 6
    .parameter "loc"
    .parameter "resId"

    .prologue
    const/4 v5, 0x0

    .line 594
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSubButton "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    packed-switch p1, :pswitch_data_0

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 599
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    .line 600
    .local v0, ib:Lcom/lge/camera/components/RotateImageButton;
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonTop:Landroid/widget/ImageView;

    .line 616
    .local v1, iv:Landroid/widget/ImageView;
    :goto_1
    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {v0, p2}, Lcom/lge/camera/components/RotateImageButton;->setBackgroundResource(I)V

    .line 621
    if-nez p2, :cond_2

    .line 622
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 632
    :cond_1
    :goto_2
    invoke-virtual {v0, v5}, Lcom/lge/camera/components/RotateImageButton;->setFocusable(Z)V

    .line 633
    invoke-virtual {v0, v5}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    goto :goto_0

    .line 604
    .end local v0           #ib:Lcom/lge/camera/components/RotateImageButton;
    .end local v1           #iv:Landroid/widget/ImageView;
    :pswitch_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonMiddle:Lcom/lge/camera/components/RotateImageButton;

    .line 605
    .restart local v0       #ib:Lcom/lge/camera/components/RotateImageButton;
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonMiddle:Landroid/widget/ImageView;

    .line 607
    .restart local v1       #iv:Landroid/widget/ImageView;
    goto :goto_1

    .line 609
    .end local v0           #ib:Lcom/lge/camera/components/RotateImageButton;
    .end local v1           #iv:Landroid/widget/ImageView;
    :pswitch_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    .line 610
    .restart local v0       #ib:Lcom/lge/camera/components/RotateImageButton;
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonBottom:Landroid/widget/ImageView;

    .line 612
    .restart local v1       #iv:Landroid/widget/ImageView;
    goto :goto_1

    .line 624
    :cond_2
    invoke-virtual {v0, v5}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 625
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 626
    const v2, 0x7f020192

    if-eq v2, p2, :cond_1

    const v2, 0x7f02018e

    if-eq v2, p2, :cond_1

    .line 628
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_2

    .line 597
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setSwitcherVisible(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    const v3, 0x7f090098

    .line 518
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSwitcherVisible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    if-eqz p1, :cond_1

    .line 522
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isAttachIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    if-eqz v0, :cond_0

    .line 524
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setThumbBitmapAndUpdate(Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 5
    .parameter "bmp"
    .parameter "uri"

    .prologue
    const-wide/16 v3, 0x64

    .line 901
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setThumbBitmapAndUpdate : bmp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.UpdateThumbnailButton"

    invoke-virtual {v0, v1, v3, v4}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 924
    :goto_0
    return-void

    .line 907
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.UpdateThumbnailButton"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 908
    iput-object p2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    .line 909
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 910
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 911
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    .line 913
    :cond_2
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    .line 915
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->updateThumbnailButtonVisibility()V

    .line 917
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 918
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setEnabled(Z)V

    .line 919
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 920
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/components/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    .line 922
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.UpdateThumbnailButton"

    invoke-virtual {v0, v1, v3, v4}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public setThumbnailButtonVisibility(I)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 964
    const v0, 0x7f09004b

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 965
    return-void
.end method

.method public setTimeMachineComplete(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 1923
    iput-boolean p1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSetTimeMachineComplete:Z

    .line 1924
    return-void
.end method

.method public declared-synchronized setUnlockConditionForMainButton(Ljava/lang/String;)V
    .locals 4
    .parameter "lockKey"

    .prologue
    .line 294
    monitor-enter p0

    if-nez p1, :cond_1

    .line 295
    :try_start_0
    const-string v0, "CameraApp"

    const-string v1, "return by lockKey == null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 299
    :cond_1
    :try_start_1
    const-string v0, "CameraApp"

    const-string v1, "unlock key: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mHashMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 135
    const v0, 0x7f090044

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    return-void
.end method

.method public showCommand()V
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->setSwitcherVisible(Z)V

    .line 537
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonEnable()V

    .line 538
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->showSubButtonInit(Z)V

    .line 540
    :cond_0
    return-void
.end method

.method public showHelpSubButton(Z)V
    .locals 4
    .parameter "show"

    .prologue
    const v3, 0x7f02018e

    const/4 v2, 0x2

    .line 638
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useHelpGuidePopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    :goto_0
    return-void

    .line 642
    :cond_0
    if-eqz p1, :cond_3

    .line 643
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 644
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v0

    if-nez v0, :cond_1

    .line 645
    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButton(II)V

    .line 650
    :cond_1
    :goto_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->setThumbnailButtonVisibility(I)V

    goto :goto_0

    .line 648
    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButton(II)V

    goto :goto_1

    .line 652
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButton(II)V

    goto :goto_0
.end method

.method public showLiveSnapshotButton()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 693
    const/4 v0, 0x0

    const v1, 0x7f020183

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButton(II)V

    .line 694
    const v0, 0x7f090045

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 695
    const v0, 0x7f090095

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 696
    return-void
.end method

.method public showPanoramaStopSubButton(Z)V
    .locals 3
    .parameter "start"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 680
    invoke-virtual {p0, v1, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButton(II)V

    .line 681
    if-eqz p1, :cond_0

    .line 682
    const v0, 0x7f020194

    invoke-virtual {p0, v2, v0}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButton(II)V

    .line 686
    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButton(II)V

    .line 687
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->setThumbnailButtonVisibility(I)V

    .line 688
    return-void

    .line 684
    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButton(II)V

    goto :goto_0
.end method

.method public showResetSubButton()V
    .locals 2

    .prologue
    .line 657
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useHelpGuidePopup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 665
    const/4 v0, 0x0

    const v1, 0x7f020192

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButton(II)V

    goto :goto_0
.end method

.method public showSubButtonInit(Z)V
    .locals 2
    .parameter "updateThumb"

    .prologue
    const/4 v1, 0x0

    .line 669
    invoke-virtual {p0, v1, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButton(II)V

    .line 670
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButton(II)V

    .line 671
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButton(II)V

    .line 673
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->updateThumbnailButtonVisibility()V

    .line 674
    if-eqz p1, :cond_0

    .line 675
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->updateThumbnailButton()V

    .line 677
    :cond_0
    return-void
.end method

.method public snapshotOnIdle()Z
    .locals 1

    .prologue
    .line 1841
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnIdle:Z

    return v0
.end method

.method public startRotation(IZ)V
    .locals 3
    .parameter "degree"
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 1014
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1026
    :goto_0
    return-void

    .line 1019
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v1, 0x7f090045

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 1020
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v1, 0x7f090047

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 1021
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v1, 0x7f090049

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 1022
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v1, 0x7f09004b

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 1023
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v1, 0x7f090098

    invoke-virtual {v0, v1, p1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 1024
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v1, 0x7f090094

    invoke-virtual {v0, v1, p1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 1025
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->startShutterRotation(I)V

    goto :goto_0
.end method

.method public startShutterRotation(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0}, Lcom/lge/camera/components/ShutterButton;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->setShutterButtonImage(ZI)V

    .line 1031
    :cond_0
    return-void
.end method

.method public stopTimerTask()V
    .locals 2

    .prologue
    .line 1908
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    .line 1910
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mButtonCheckTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1911
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mButtonCheckTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1912
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mButtonCheckTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1913
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mButtonCheckTimer:Ljava/util/Timer;

    .line 1915
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v0, :cond_0

    .line 1916
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 1917
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1920
    :cond_0
    return-void
.end method

.method public updateThumbnailButton()V
    .locals 2

    .prologue
    .line 986
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    new-instance v1, Lcom/lge/camera/controller/PreviewPanelController$2;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/PreviewPanelController$2;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 1011
    return-void
.end method

.method public updateThumbnailButtonVisibility()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 968
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isAttachIntent()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isAvailableLiveShot()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v0

    if-ne v0, v3, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsLiveEffectSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_live_effect"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 979
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->setThumbnailButtonVisibility(I)V

    .line 983
    :goto_0
    return-void

    .line 981
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->setThumbnailButtonVisibility(I)V

    goto :goto_0
.end method
