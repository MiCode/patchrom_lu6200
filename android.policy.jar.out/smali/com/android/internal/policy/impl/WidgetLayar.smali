.class public Lcom/android/internal/policy/impl/WidgetLayar;
.super Lcom/android/internal/policy/impl/LockScreen;
.source "WidgetLayar.java"


# static fields
.field private static sBroadCastReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private DBG:Z

.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field mRemoteViews:Landroid/widget/RemoteViews;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/WidgetLayar;->sBroadCastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 19
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 56
    move-object/from16 v2, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/LockScreen;-><init>(Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 42
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/WidgetLayar;->DBG:Z

    .line 43
    const-string v2, "WidgetLayar"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/WidgetLayar;->TAG:Ljava/lang/String;

    .line 46
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/WidgetLayar;->mHandler:Landroid/os/Handler;

    .line 58
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/WidgetLayar;->mContext:Landroid/content/Context;

    .line 61
    const v2, 0x2090046

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/WidgetLayar;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 62
    .local v15, linear:Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 64
    const v2, 0x1020064

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/WidgetLayar;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 65
    .local v17, time:Landroid/view/View;
    const/4 v2, 0x4

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    const v2, 0x1020063

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/WidgetLayar;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 68
    .local v10, date:Landroid/widget/TextView;
    const/4 v2, 0x4

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    const v2, 0x102029a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/WidgetLayar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 71
    .local v8, alarmStatus:Landroid/widget/TextView;
    const/4 v2, 0x4

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    const v2, 0x102029b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/WidgetLayar;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 74
    .local v16, status1:Landroid/widget/TextView;
    const/4 v2, 0x4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    const v2, 0x102029c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/WidgetLayar;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 77
    .local v9, carrier:Landroid/widget/TextView;
    const/4 v2, 0x4

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    const v2, 0x209004a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/WidgetLayar;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout;

    .line 80
    .local v14, frame:Landroid/widget/FrameLayout;
    const/4 v2, 0x4

    invoke-virtual {v14, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 82
    const v2, 0x2090050

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/WidgetLayar;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 83
    .local v11, doc2Atticon:Landroid/widget/ImageView;
    const/4 v2, 0x4

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    const v2, 0x2090053

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/WidgetLayar;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 86
    .local v12, doc3Atticon:Landroid/widget/ImageView;
    const/4 v2, 0x4

    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    const v2, 0x209004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/WidgetLayar;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 89
    .local v13, docTouchIcon:Landroid/widget/ImageView;
    const/4 v2, 0x4

    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    const v2, 0x10202a1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/WidgetLayar;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/internal/widget/TransportControlView;

    .line 93
    .local v18, transportControlView:Lcom/android/internal/widget/TransportControlView;
    const/16 v2, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/TransportControlView;->setVisibility(I)V

    .line 95
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/WidgetLayar;->unregisterReceiver()V

    .line 96
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/WidgetLayar;->registerReceiver()V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/WidgetLayar;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/policy/impl/WidgetLayar;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/WidgetLayar;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/internal/policy/impl/WidgetLayar;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/WidgetLayar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/internal/policy/impl/WidgetLayar;->updateView()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/WidgetLayar;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/policy/impl/WidgetLayar;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 118
    sget-object v1, Lcom/android/internal/policy/impl/WidgetLayar;->sBroadCastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 119
    new-instance v1, Lcom/android/internal/policy/impl/WidgetLayar$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/WidgetLayar$1;-><init>(Lcom/android/internal/policy/impl/WidgetLayar;)V

    sput-object v1, Lcom/android/internal/policy/impl/WidgetLayar;->sBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 134
    .local v0, intentfilter:Landroid/content/IntentFilter;
    const-string v1, "com.nttdocomo.android.mascot.KEYGUARD_UPDATE_LOCAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/android/internal/policy/impl/WidgetLayar;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/policy/impl/WidgetLayar;->sBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    .end local v0           #intentfilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private unregisterReceiver()V
    .locals 4

    .prologue
    .line 141
    :try_start_0
    sget-object v1, Lcom/android/internal/policy/impl/WidgetLayar;->sBroadCastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/internal/policy/impl/WidgetLayar;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/policy/impl/WidgetLayar;->sBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 143
    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/policy/impl/WidgetLayar;->sBroadCastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/internal/policy/impl/WidgetLayar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WidgetLayar.unregisterReceiver(): exception:"

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

.method private updateView()V
    .locals 4

    .prologue
    .line 99
    const v2, 0x2090049

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/WidgetLayar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 101
    .local v1, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 102
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/WidgetLayar;->mRemoteViews:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_1

    .line 106
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/WidgetLayar;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/android/internal/policy/impl/WidgetLayar;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 107
    .local v0, expanded:Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v0           #expanded:Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/WidgetLayar;->TAG:Ljava/lang/String;

    const-string v3, "set remoteviews"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_1
    return-void

    .line 113
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/WidgetLayar;->TAG:Ljava/lang/String;

    const-string v3, "remoteviews is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 108
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic cleanUp()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Lcom/android/internal/policy/impl/LockScreen;->cleanUp()V

    return-void
.end method

.method public bridge synthetic needsInput()Z
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/android/internal/policy/impl/LockScreen;->needsInput()Z

    move-result v0

    return v0
.end method

.method protected onAnimationEnd()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/WidgetLayar;->setVisibility(I)V

    .line 167
    return-void
.end method

.method public bridge synthetic onClick(Landroid/view/View;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/LockScreen;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/LockScreen;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public bridge synthetic onPhoneStateChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/LockScreen;->onPhoneStateChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public bridge synthetic onRingerModeChanged(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/LockScreen;->onRingerModeChanged(I)V

    return-void
.end method

.method public bridge synthetic onScreenTimeOutExtended()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Lcom/android/internal/policy/impl/LockScreen;->onScreenTimeOutExtended()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/LockScreen;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onUnlocked()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Lcom/android/internal/policy/impl/LockScreen;->onUnlocked()V

    return-void
.end method

.method public bridge synthetic updateResources()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateResources()V

    return-void
.end method
