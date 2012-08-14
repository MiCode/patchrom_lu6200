.class Lcom/android/internal/policy/impl/LockScreen;
.super Landroid/widget/LinearLayout;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/PointTouchUnlockFrame$OnTriggerListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LockScreen$QueryHandler;,
        Lcom/android/internal/policy/impl/LockScreen$StatusMode;
    }
.end annotation


# static fields
.field private static final CALL_LOG_PROJECTION:[Ljava/lang/String; = null

.field private static final CALL_LOG_TOKEN:I = -0x1

.field private static final DBG:Z = false

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final LOCK_STATUS_ACCOUNT:I = 0x5

.field private static final LOCK_STATUS_NORMAL:I = 0x1

.field private static final ON_RESUME_PING_DELAY:I = 0x1f4

.field private static final STAY_ON_WHILE_GRABBED_TIMEOUT:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "LockScreen"

.field private static final WAIT_FOR_ANIMATION_TIMEOUT:I

.field private static mAttIcon:[I

.field private static sBroadCastReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCameraDisabled:Z

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mCreationOrientation:I

.field private mDocAtticon2:Landroid/widget/ImageView;

.field private mDocAtticon3:Landroid/widget/ImageView;

.field private mDocTouchIcon:Landroid/widget/ImageView;

.field private mEnableMenuKeyInLockScreen:Z

.field mHandlerSp:Landroid/os/Handler;

.field mHandlerTel:Landroid/os/Handler;

.field private mKeyboardHidden:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mOnResumePing:Ljava/lang/Runnable;

.field private mSilentMode:Z

.field protected mSimState:Lcom/android/internal/telephony/IccCard$State;

.field private mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mUnlockFrame:Landroid/widget/FrameLayout;

.field private mUnlockTouchPoint:Lcom/android/internal/policy/impl/PointTouchUnlockFrame;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 126
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 137
    const/16 v0, 0x65

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen;->mAttIcon:[I

    .line 264
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen;->sBroadCastReceiver:Landroid/content/BroadcastReceiver;

    return-void

    .line 137
    nop

    :array_0
    .array-data 0x4
        0x1et 0x0t 0x2t 0x2t
        0x1ft 0x0t 0x2t 0x2t
        0x20t 0x0t 0x2t 0x2t
        0x21t 0x0t 0x2t 0x2t
        0x22t 0x0t 0x2t 0x2t
        0x23t 0x0t 0x2t 0x2t
        0x24t 0x0t 0x2t 0x2t
        0x25t 0x0t 0x2t 0x2t
        0x26t 0x0t 0x2t 0x2t
        0x27t 0x0t 0x2t 0x2t
        0x28t 0x0t 0x2t 0x2t
        0x29t 0x0t 0x2t 0x2t
        0x2at 0x0t 0x2t 0x2t
        0x2bt 0x0t 0x2t 0x2t
        0x2ct 0x0t 0x2t 0x2t
        0x2dt 0x0t 0x2t 0x2t
        0x2et 0x0t 0x2t 0x2t
        0x2ft 0x0t 0x2t 0x2t
        0x30t 0x0t 0x2t 0x2t
        0x31t 0x0t 0x2t 0x2t
        0x32t 0x0t 0x2t 0x2t
        0x33t 0x0t 0x2t 0x2t
        0x34t 0x0t 0x2t 0x2t
        0x35t 0x0t 0x2t 0x2t
        0x36t 0x0t 0x2t 0x2t
        0x37t 0x0t 0x2t 0x2t
        0x38t 0x0t 0x2t 0x2t
        0x39t 0x0t 0x2t 0x2t
        0x3at 0x0t 0x2t 0x2t
        0x3bt 0x0t 0x2t 0x2t
        0x3ct 0x0t 0x2t 0x2t
        0x3dt 0x0t 0x2t 0x2t
        0x3et 0x0t 0x2t 0x2t
        0x3ft 0x0t 0x2t 0x2t
        0x40t 0x0t 0x2t 0x2t
        0x41t 0x0t 0x2t 0x2t
        0x42t 0x0t 0x2t 0x2t
        0x43t 0x0t 0x2t 0x2t
        0x44t 0x0t 0x2t 0x2t
        0x45t 0x0t 0x2t 0x2t
        0x46t 0x0t 0x2t 0x2t
        0x47t 0x0t 0x2t 0x2t
        0x48t 0x0t 0x2t 0x2t
        0x49t 0x0t 0x2t 0x2t
        0x4at 0x0t 0x2t 0x2t
        0x4bt 0x0t 0x2t 0x2t
        0x4ct 0x0t 0x2t 0x2t
        0x4dt 0x0t 0x2t 0x2t
        0x4et 0x0t 0x2t 0x2t
        0x4ft 0x0t 0x2t 0x2t
        0x50t 0x0t 0x2t 0x2t
        0x51t 0x0t 0x2t 0x2t
        0x52t 0x0t 0x2t 0x2t
        0x53t 0x0t 0x2t 0x2t
        0x54t 0x0t 0x2t 0x2t
        0x55t 0x0t 0x2t 0x2t
        0x56t 0x0t 0x2t 0x2t
        0x57t 0x0t 0x2t 0x2t
        0x58t 0x0t 0x2t 0x2t
        0x59t 0x0t 0x2t 0x2t
        0x5at 0x0t 0x2t 0x2t
        0x5bt 0x0t 0x2t 0x2t
        0x5ct 0x0t 0x2t 0x2t
        0x5dt 0x0t 0x2t 0x2t
        0x5et 0x0t 0x2t 0x2t
        0x5ft 0x0t 0x2t 0x2t
        0x60t 0x0t 0x2t 0x2t
        0x61t 0x0t 0x2t 0x2t
        0x62t 0x0t 0x2t 0x2t
        0x63t 0x0t 0x2t 0x2t
        0x64t 0x0t 0x2t 0x2t
        0x65t 0x0t 0x2t 0x2t
        0x66t 0x0t 0x2t 0x2t
        0x67t 0x0t 0x2t 0x2t
        0x68t 0x0t 0x2t 0x2t
        0x69t 0x0t 0x2t 0x2t
        0x6at 0x0t 0x2t 0x2t
        0x6bt 0x0t 0x2t 0x2t
        0x6ct 0x0t 0x2t 0x2t
        0x6dt 0x0t 0x2t 0x2t
        0x6et 0x0t 0x2t 0x2t
        0x6ft 0x0t 0x2t 0x2t
        0x70t 0x0t 0x2t 0x2t
        0x71t 0x0t 0x2t 0x2t
        0x72t 0x0t 0x2t 0x2t
        0x73t 0x0t 0x2t 0x2t
        0x74t 0x0t 0x2t 0x2t
        0x75t 0x0t 0x2t 0x2t
        0x76t 0x0t 0x2t 0x2t
        0x77t 0x0t 0x2t 0x2t
        0x78t 0x0t 0x2t 0x2t
        0x79t 0x0t 0x2t 0x2t
        0x7at 0x0t 0x2t 0x2t
        0x7bt 0x0t 0x2t 0x2t
        0x7ct 0x0t 0x2t 0x2t
        0x7dt 0x0t 0x2t 0x2t
        0x7et 0x0t 0x2t 0x2t
        0x7ft 0x0t 0x2t 0x2t
        0x80t 0x0t 0x2t 0x2t
        0x81t 0x0t 0x2t 0x2t
        0x82t 0x0t 0x2t 0x2t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 14
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 525
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 134
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHandlerTel:Landroid/os/Handler;

    .line 135
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHandlerSp:Landroid/os/Handler;

    .line 265
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mContentObserver:Landroid/database/ContentObserver;

    .line 266
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCameraDisabled:Z

    .line 999
    new-instance v1, Lcom/android/internal/policy/impl/LockScreen$6;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LockScreen$6;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mOnResumePing:Ljava/lang/Runnable;

    .line 526
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 527
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 528
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 530
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->shouldEnableMenuKey()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEnableMenuKeyInLockScreen:Z

    .line 532
    move-object/from16 v0, p2

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    .line 534
    move-object/from16 v0, p2

    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    .line 542
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 544
    .local v10, inflater:Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 546
    const v1, 0x2030008

    const/4 v2, 0x1

    invoke-virtual {v10, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 553
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 554
    new-instance v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v6, 0x0

    const/4 v7, 0x5

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;ZI)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 569
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->setFocusable(Z)V

    .line 570
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->setFocusableInTouchMode(Z)V

    .line 571
    const/high16 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->setDescendantFocusability(I)V

    .line 573
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 574
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->isSilentMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 611
    const v1, 0x209004a

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockFrame:Landroid/widget/FrameLayout;

    .line 612
    const v1, 0x2090059

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockTouchPoint:Lcom/android/internal/policy/impl/PointTouchUnlockFrame;

    .line 613
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockTouchPoint:Lcom/android/internal/policy/impl/PointTouchUnlockFrame;

    if-eqz v1, :cond_0

    .line 614
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockTouchPoint:Lcom/android/internal/policy/impl/PointTouchUnlockFrame;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->initFrame()V

    .line 615
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockTouchPoint:Lcom/android/internal/policy/impl/PointTouchUnlockFrame;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->setOnTriggerListener(Lcom/android/internal/policy/impl/PointTouchUnlockFrame$OnTriggerListener;)V

    .line 620
    :cond_0
    const v1, 0x2090046

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 621
    .local v13, linear:Landroid/view/View;
    const/16 v1, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 623
    const v1, 0x209004f

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 624
    .local v8, docImageView2:Landroid/widget/ImageView;
    const/4 v1, 0x4

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 626
    const v1, 0x2090050

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mDocAtticon2:Landroid/widget/ImageView;

    .line 627
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mDocAtticon2:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 629
    const v1, 0x2090052

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 630
    .local v9, docImageView3:Landroid/widget/ImageView;
    const/4 v1, 0x4

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 632
    const v1, 0x2090053

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mDocAtticon3:Landroid/widget/ImageView;

    .line 633
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mDocAtticon3:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 635
    const v1, 0x209004d

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mDocTouchIcon:Landroid/widget/ImageView;

    .line 637
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mDocTouchIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 638
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mDocTouchIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 640
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->unregisterReceiver()V

    .line 641
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->registerReceiver()V

    .line 646
    const-string v1, "1"

    const-string v2, "sys.boot_completed"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 648
    .local v12, isBootCompleted:Z
    if-eqz v12, :cond_1

    .line 649
    new-instance v11, Landroid/content/Intent;

    const-string v1, "com.android.internal.policy.impl.CARRIERMAIL_COUNT_UPDATE"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 651
    .local v11, intent:Landroid/content/Intent;
    invoke-virtual {p1, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 655
    .end local v11           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v1, Lcom/android/internal/policy/impl/LockScreen$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/LockScreen$2;-><init>(Lcom/android/internal/policy/impl/LockScreen;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mContentObserver:Landroid/database/ContentObserver;

    .line 684
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 686
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->getMissedCallCount()V

    .line 688
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCameraDisabled:Z

    .line 689
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCameraDisabled:Z

    if-eqz v1, :cond_2

    .line 690
    const-string v1, "LockScreen"

    const-string v2, "LockScreen.LockScreen(): Camera disabled by Device Policy"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateResources()V

    .line 694
    return-void

    .line 549
    .end local v8           #docImageView2:Landroid/widget/ImageView;
    .end local v9           #docImageView3:Landroid/widget/ImageView;
    .end local v12           #isBootCompleted:Z
    .end local v13           #linear:Landroid/view/View;
    :cond_3
    const v1, 0x2030008

    const/4 v2, 0x1

    invoke-virtual {v10, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 557
    :cond_4
    new-instance v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;ZI)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    goto/16 :goto_1
.end method

.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 4
    .parameter "callback"
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"

    .prologue
    const/4 v3, 0x1

    .line 698
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 134
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHandlerTel:Landroid/os/Handler;

    .line 135
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHandlerSp:Landroid/os/Handler;

    .line 265
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mContentObserver:Landroid/database/ContentObserver;

    .line 266
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCameraDisabled:Z

    .line 999
    new-instance v1, Lcom/android/internal/policy/impl/LockScreen$6;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LockScreen$6;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mOnResumePing:Ljava/lang/Runnable;

    .line 699
    iget v1, p3, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    .line 700
    iput-object p4, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 701
    iput-object p5, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 702
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 704
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->shouldEnableMenuKey()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEnableMenuKeyInLockScreen:Z

    .line 705
    iget v1, p3, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    .line 714
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 717
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 719
    const v1, 0x2030008

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 724
    :goto_0
    return-void

    .line 722
    :cond_0
    const v1, 0x2030007

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/LockScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockScreen;->setMissedCallCount(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/LockScreen;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mDocAtticon2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen;->mAttIcon:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/LockScreen;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mDocAtticon3:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/LockScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockScreen;->setSPModeMailUnReadCount(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/LockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->getMissedCallCount()V

    return-void
.end method

.method private getMissedCallCount()V
    .locals 10

    .prologue
    .line 764
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$QueryHandler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/LockScreen$QueryHandler;-><init>(Lcom/android/internal/policy/impl/LockScreen;Landroid/content/ContentResolver;)V

    .line 767
    .local v0, queryHandler:Lcom/android/internal/policy/impl/LockScreen$QueryHandler;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v1, "type="

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 768
    .local v9, where:Ljava/lang/StringBuilder;
    const/4 v1, 0x3

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 769
    const-string v1, " AND new=1"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    const/4 v1, -0x1

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/policy/impl/LockScreen;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "date DESC"

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/policy/impl/LockScreen$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    :goto_0
    return-void

    .line 775
    :catch_0
    move-exception v8

    .line 776
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "LockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LockScreen.getMissedCallCount(): missedcall query exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isSilentMode()Z
    .locals 2

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 838
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen;->sBroadCastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 839
    new-instance v1, Lcom/android/internal/policy/impl/LockScreen$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LockScreen$5;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    sput-object v1, Lcom/android/internal/policy/impl/LockScreen;->sBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 861
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 862
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "jp.co.nttdocomo.carriermail.APP_LINK_RECEIVED_MESSAGE_LOCAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 864
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 866
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/policy/impl/LockScreen;->sBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 868
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private requestUnlockScreen()V
    .locals 3

    .prologue
    .line 476
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockScreen$1;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 481
    return-void
.end method

.method private setMissedCallCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mHandlerTel:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/LockScreen$3;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/LockScreen$3;-><init>(Lcom/android/internal/policy/impl/LockScreen;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 809
    return-void
.end method

.method private setSPModeMailUnReadCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 817
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mHandlerSp:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/LockScreen$4;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/LockScreen$4;-><init>(Lcom/android/internal/policy/impl/LockScreen;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 833
    return-void
.end method

.method private shouldEnableMenuKey()Z
    .locals 6

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 509
    .local v3, res:Landroid/content/res/Resources;
    const/4 v0, 0x1

    .line 510
    .local v0, configDisabled:Z
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v2

    .line 511
    .local v2, isTestHarness:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 512
    .local v1, fileOverride:Z
    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private toggleRingMode()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 485
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 486
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v1, :cond_3

    .line 487
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "vibrate_in_silent"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v0, v2

    .line 491
    .local v0, vibe:Z
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 497
    .end local v0           #vibe:Z
    :goto_3
    return-void

    :cond_0
    move v1, v3

    .line 485
    goto :goto_0

    :cond_1
    move v0, v3

    .line 487
    goto :goto_1

    .restart local v0       #vibe:Z
    :cond_2
    move v2, v3

    .line 491
    goto :goto_2

    .line 495
    .end local v0           #vibe:Z
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_3
.end method

.method private unregisterReceiver()V
    .locals 4

    .prologue
    .line 874
    :try_start_0
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen;->sBroadCastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 875
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/policy/impl/LockScreen;->sBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 876
    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/policy/impl/LockScreen;->sBroadCastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    :cond_0
    :goto_0
    return-void

    .line 878
    :catch_0
    move-exception v0

    .line 879
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LockScreen.unregisterReceiver(): exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1021
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 1028
    :cond_0
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1029
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 1030
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 1031
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onCleanUp()V

    .line 1034
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_3

    .line 1035
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1036
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mContentObserver:Landroid/database/ContentObserver;

    .line 1040
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->unregisterReceiver()V

    .line 1042
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 984
    const/4 v0, 0x0

    return v0
.end method

.method protected onAnimationEnd()V
    .locals 1

    .prologue
    .line 1068
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAnimationEnd()V

    .line 1069
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->setVisibility(I)V

    .line 1070
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 1073
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 961
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 967
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateConfiguration()V

    .line 968
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 890
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mDocTouchIcon:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_0

    .line 891
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCameraDisabled:Z

    if-nez v2, :cond_1

    .line 900
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 901
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 902
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 903
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 915
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 904
    :catch_0
    move-exception v0

    .line 906
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "LockScreen"

    const-string v3, "LockScreen.onClick(): ActivityNotFoundException has occured"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 910
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->toggleRingMode()V

    .line 911
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateResources()V

    .line 912
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 973
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 979
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateConfiguration()V

    .line 980
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 935
    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEnableMenuKeyInLockScreen:Z

    if-eqz v1, :cond_0

    .line 937
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 938
    .local v0, simState:Lcom/android/internal/telephony/IccCard$State;
    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 940
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v2, :cond_0

    .line 941
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 943
    .end local v0           #simState:Lcom/android/internal/telephony/IccCard$State;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 994
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockTouchPoint:Lcom/android/internal/policy/impl/PointTouchUnlockFrame;

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockTouchPoint:Lcom/android/internal/policy/impl/PointTouchUnlockFrame;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->onPause()V

    .line 997
    :cond_0
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 1056
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 1010
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mOnResumePing:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1012
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockTouchPoint:Lcom/android/internal/policy/impl/PointTouchUnlockFrame;

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockTouchPoint:Lcom/android/internal/policy/impl/PointTouchUnlockFrame;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->onResume()V

    .line 1015
    :cond_0
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1046
    const/4 v1, 0x2

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 1047
    .local v0, silent:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eq v0, v1, :cond_0

    .line 1048
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 1053
    :cond_0
    return-void

    .line 1046
    .end local v0           #silent:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScreenTimeOutExtended()V
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 1065
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 886
    const/4 v0, 0x1

    return v0
.end method

.method public onUnlocked()V
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->fadeOutLockScreen()V

    .line 1061
    return-void
.end method

.method updateConfiguration()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 947
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 948
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    if-eq v2, v3, :cond_1

    .line 949
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 957
    :cond_0
    :goto_0
    return-void

    .line 950
    :cond_1
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    if-eq v2, v3, :cond_0

    .line 951
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    .line 952
    iget v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    if-ne v2, v0, :cond_2

    .line 953
    .local v0, isKeyboardOpen:Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 954
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 952
    .end local v0           #isKeyboardOpen:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public updateResources()V
    .locals 2

    .prologue
    .line 918
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCameraDisabled:Z

    if-eqz v1, :cond_1

    .line 920
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v1, :cond_0

    const v0, 0x20200ff

    .line 925
    .local v0, resId:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mDocTouchIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 926
    return-void

    .line 920
    .end local v0           #resId:I
    :cond_0
    const v0, 0x2020102

    goto :goto_0

    .line 923
    :cond_1
    const v0, 0x20200fc

    .restart local v0       #resId:I
    goto :goto_0
.end method
