.class public Lcom/android/internal/policy/impl/KeyguardViewManager;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardWindowController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;,
        Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String;

.field private static final sModel:Ljava/lang/String;

.field private static final sOperator:Ljava/lang/String;


# instance fields
.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

.field private final mContext:Landroid/content/Context;

.field private mDockMode:I

.field private mIsBootCompleted:Z

.field private mIsWaitingForBootComplete:Z

.field private mKeyguardHost:Landroid/widget/FrameLayout;

.field private mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

.field private final mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

.field private mLockPackageManager:Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;

.field private mNeedsInput:Z

.field mRemoteViews:Landroid/widget/RemoteViews;

.field private mScreenOn:Z

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private final mViewManager:Landroid/view/ViewManager;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    const-string v0, "KeyguardViewManager"

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->TAG:Ljava/lang/String;

    .line 90
    const-string v0, "ro.build.target_operator"

    const-string v1, "OPEN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->sOperator:Ljava/lang/String;

    .line 91
    const-string v0, "ro.product.model"

    const-string v1, "OPEN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->sModel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardViewProperties;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 3
    .parameter "context"
    .parameter "viewManager"
    .parameter "callback"
    .parameter "keyguardViewProperties"
    .parameter "updateMonitor"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mNeedsInput:Z

    .line 78
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mScreenOn:Z

    .line 80
    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mDockMode:I

    .line 82
    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mLockPackageManager:Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;

    .line 85
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mIsWaitingForBootComplete:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mIsBootCompleted:Z

    .line 128
    new-instance v1, Lcom/android/internal/policy/impl/KeyguardViewManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/KeyguardViewManager$1;-><init>(Lcom/android/internal/policy/impl/KeyguardViewManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 182
    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 184
    new-instance v1, Lcom/android/internal/policy/impl/KeyguardViewManager$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/KeyguardViewManager$2;-><init>(Lcom/android/internal/policy/impl/KeyguardViewManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103006b

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    .line 107
    iput-object p3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    .line 108
    iput-object p4, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

    .line 110
    iput-object p5, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 112
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_LOCKSCREEN:Z

    if-eqz v1, :cond_0

    .line 113
    invoke-static {}, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->getInstance()Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mLockPackageManager:Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;

    .line 115
    :cond_0
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardViewManager;->sOperator:Ljava/lang/String;

    const-string v2, "DCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardViewManager;->sModel:Ljava/lang/String;

    const-string v2, "L-01D"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 118
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.nttdocomo.android.mascot.KEYGUARD_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string v1, "jp.co.nttdocomo.carriermail.APP_LINK_RECEIVED_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v1, "com.android.internal.policy.impl.CARRIERMAIL_COUNT_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/KeyguardViewManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mIsWaitingForBootComplete:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/KeyguardViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mIsWaitingForBootComplete:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/KeyguardViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mIsBootCompleted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/KeyguardViewManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewManager;->setKeyguardState(Ljava/lang/String;)V

    return-void
.end method

.method private setKeyguardState(Ljava/lang/String;)V
    .locals 7
    .parameter "state"

    .prologue
    .line 589
    const/4 v2, 0x0

    .line 590
    .local v2, writer:Ljava/io/FileWriter;
    const-string v1, "/sys/devices/virtual/input/lge_touch/keyguard"

    .line 594
    .local v1, path:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 596
    .end local v2           #writer:Ljava/io/FileWriter;
    .local v3, writer:Ljava/io/FileWriter;
    if-eqz v3, :cond_0

    .line 597
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, p1, v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;II)V

    .line 598
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 606
    :cond_0
    if-eqz v3, :cond_1

    .line 607
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v2, v3

    .line 611
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v2       #writer:Ljava/io/FileWriter;
    :cond_2
    :goto_0
    return-void

    .line 609
    .end local v2           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 610
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v2       #writer:Ljava/io/FileWriter;
    goto :goto_0

    .line 601
    :catch_1
    move-exception v0

    .line 602
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    sget-object v4, Lcom/android/internal/policy/impl/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setKeyguardState("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): exception occurs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 606
    if-eqz v2, :cond_2

    .line 607
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 609
    :catch_2
    move-exception v4

    goto :goto_0

    .line 605
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 606
    :goto_2
    if-eqz v2, :cond_3

    .line 607
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 609
    :cond_3
    :goto_3
    throw v4

    :catch_3
    move-exception v5

    goto :goto_3

    .line 605
    .end local v2           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v2       #writer:Ljava/io/FileWriter;
    goto :goto_2

    .line 601
    .end local v2           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v2       #writer:Ljava/io/FileWriter;
    goto :goto_1
.end method


# virtual methods
.method public clearLockPattern()V
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->clearLockPattern()V

    .line 618
    :cond_0
    return-void
.end method

.method public declared-synchronized expirePasswordReset()V
    .locals 1

    .prologue
    .line 639
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->expirePasswordReset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    :cond_0
    monitor-exit p0

    return-void

    .line 639
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hide()V
    .locals 7

    .prologue
    .line 534
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_LOCKSCREEN:Z

    if-eqz v3, :cond_0

    .line 535
    const/4 v2, 0x0

    .line 536
    .local v2, mStatusService:Lcom/android/internal/statusbar/IStatusBarService;
    const-string v3, "statusbar"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 539
    if-eqz v2, :cond_0

    .line 540
    :try_start_1
    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->disableTransparentStatusbar()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 549
    .end local v2           #mStatusService:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2

    .line 550
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 553
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v3, :cond_2

    .line 554
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    .line 557
    .local v1, lastView:Lcom/android/internal/policy/impl/KeyguardViewBase;
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mNeedsInput:Z

    if-eqz v3, :cond_1

    .line 558
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 559
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardViewBase;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 563
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    .line 564
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    new-instance v4, Lcom/android/internal/policy/impl/KeyguardViewManager$4;

    invoke-direct {v4, p0, v1}, Lcom/android/internal/policy/impl/KeyguardViewManager$4;-><init>(Lcom/android/internal/policy/impl/KeyguardViewManager;Lcom/android/internal/policy/impl/KeyguardViewBase;)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 578
    .end local v1           #lastView:Lcom/android/internal/policy/impl/KeyguardViewBase;
    :cond_2
    monitor-exit p0

    return-void

    .line 542
    .restart local v2       #mStatusService:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 534
    .end local v2           #mStatusService:Lcom/android/internal/statusbar/IStatusBarService;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized hideSKTLocked()V
    .locals 2

    .prologue
    .line 629
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v0, :cond_0

    .line 630
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "[SKT Lock&Wipe] hideSKTLocked()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->hideSKTLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    :cond_0
    monitor-exit p0

    return-void

    .line 629
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isShowing()Z
    .locals 1

    .prologue
    .line 584
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDockStateChanged(I)V
    .locals 1
    .parameter "dockMode"

    .prologue
    .line 488
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mDockMode:I

    if-eq v0, p1, :cond_0

    .line 490
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mDockMode:I

    .line 492
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setDockMode(I)V

    .line 494
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->onDockStateChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    :cond_0
    monitor-exit p0

    return-void

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 449
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mScreenOn:Z

    .line 450
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->onScreenTurnedOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    :cond_0
    monitor-exit p0

    return-void

    .line 449
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onScreenTurnedOn(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V
    .locals 2
    .parameter "showListener"

    .prologue
    .line 458
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mScreenOn:Z

    .line 459
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->onScreenTurnedOn()V

    .line 464
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/internal/policy/impl/KeyguardViewManager$3;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewManager$3;-><init>(Lcom/android/internal/policy/impl/KeyguardViewManager;Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    :goto_0
    monitor-exit p0

    return-void

    .line 477
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;->onShown(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 480
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;->onShown(Landroid/os/IBinder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 442
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    :cond_0
    monitor-exit p0

    return-void

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNeedsInput(Z)V
    .locals 4
    .parameter "needsInput"

    .prologue
    .line 406
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mNeedsInput:Z

    .line 407
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_1

    .line 408
    if-eqz p1, :cond_2

    .line 409
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x20001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 433
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    :cond_1
    return-void

    .line 412
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x2

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 427
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_LOCKSCREEN:Z

    if-eqz v1, :cond_0

    .line 428
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 429
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 430
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    goto :goto_0
.end method

.method public declared-synchronized show()V
    .locals 15

    .prologue
    const/high16 v14, 0x100

    const/16 v13, 0x1e

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 247
    monitor-enter p0

    :try_start_0
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_LOCKSCREEN:Z

    if-eqz v2, :cond_0

    .line 248
    const/4 v9, 0x0

    .line 249
    .local v9, mStatusService:Lcom/android/internal/statusbar/IStatusBarService;
    const-string v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 252
    if-eqz v9, :cond_0

    .line 254
    :try_start_1
    invoke-interface {v9}, Lcom/android/internal/statusbar/IStatusBarService;->disableTransparentStatusbar()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 264
    .end local v9           #mStatusService:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 265
    .local v10, res:Landroid/content/res/Resources;
    const-string v2, "lockscreen.rot_override"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    const v2, 0x111001c

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v6, v1

    .line 269
    .local v6, enableScreenRotation:Z
    :cond_2
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_GHOST_FINGER:Z

    if-eqz v1, :cond_3

    .line 270
    const-string v1, "1"

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/KeyguardViewManager;->setKeyguardState(Ljava/lang/String;)V

    .line 273
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-nez v1, :cond_d

    .line 276
    new-instance v1, Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardViewManager$1;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    .line 278
    const/4 v11, -0x1

    .line 279
    .local v11, stretch:I
    const v4, 0x10100900

    .line 286
    .local v4, flags:I
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_LOCKSCREEN:Z

    if-eqz v1, :cond_4

    .line 287
    const v1, 0x10100

    or-int/2addr v4, v1

    .line 291
    :cond_4
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_LOCKSCREEN:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mLockPackageManager:Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mLockPackageManager:Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->getVersionNumber()I

    move-result v1

    if-ne v1, v13, :cond_5

    .line 294
    const v1, -0x100001

    and-int/2addr v4, v1

    .line 297
    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mNeedsInput:Z

    if-nez v1, :cond_6

    .line 298
    const/high16 v1, 0x2

    or-int/2addr v4, v1

    .line 300
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 302
    or-int/2addr v4, v14

    .line 304
    :cond_7
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7d4

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 307
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 309
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_LOCKSCREEN:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mLockPackageManager:Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mLockPackageManager:Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->getVersionNumber()I

    move-result v1

    if-eq v1, v13, :cond_9

    .line 312
    :cond_8
    const v1, 0x10301da

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 315
    :cond_9
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_LOCKSCREEN:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mLockPackageManager:Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mLockPackageManager:Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->isHardwareAccelerated()Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 319
    :cond_b
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v1, v14

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 320
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 323
    :cond_c
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 324
    const-string v1, "Keyguard"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 325
    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 327
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v4           #flags:I
    .end local v11           #stretch:I
    :cond_d
    if-eqz v6, :cond_10

    .line 332
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 338
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-nez v1, :cond_f

    .line 342
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-interface {v1, v2, v3, p0}, Lcom/android/internal/policy/impl/KeyguardViewProperties;->createKeyguardView(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardWindowController;)Lcom/android/internal/policy/impl/KeyguardViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    .line 343
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    const v2, 0x1020224

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewBase;->setId(I)V

    .line 344
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewBase;->setCallback(Lcom/android/internal/policy/impl/KeyguardViewCallback;)V

    .line 346
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 350
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mScreenOn:Z

    if-eqz v1, :cond_e

    .line 353
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_LOCKSCREEN:Z

    if-eqz v1, :cond_11

    .line 356
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->onScreenTurnedOn()V

    .line 361
    :cond_e
    :goto_2
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardViewManager;->sOperator:Ljava/lang/String;

    const-string v2, "DCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardViewManager;->sModel:Ljava/lang/String;

    const-string v2, "L-01D"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 365
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mIsBootCompleted:Z

    if-eqz v1, :cond_12

    .line 366
    new-instance v7, Landroid/content/Intent;

    const-string v1, "com.nttdocomo.android.mascot.KEYGUARD_UPDATE_LOCAL"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "RemoteViews"

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 368
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 377
    .end local v7           #intent:Landroid/content/Intent;
    :goto_3
    new-instance v8, Landroid/content/Intent;

    const-class v1, Lcom/nttdocomo/android/screenlockservice/IScreenLockService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    .local v8, intent2:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v8, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 379
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v2, "KeyguardViewManager.show(): can\'t connect IScreenLockService"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v8           #intent2:Landroid/content/Intent;
    :cond_f
    const/high16 v12, 0x60

    .line 393
    .local v12, visFlags:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->updateDisplayDesktopFlag()V

    .line 395
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 397
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->requestFocus()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 403
    monitor-exit p0

    return-void

    .line 335
    .end local v12           #visFlags:I
    :cond_10
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 247
    .end local v6           #enableScreenRotation:Z
    .end local v10           #res:Landroid/content/res/Resources;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 358
    .restart local v0       #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v6       #enableScreenRotation:Z
    .restart local v10       #res:Landroid/content/res/Resources;
    :cond_11
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->show()V

    goto :goto_2

    .line 371
    :cond_12
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mIsWaitingForBootComplete:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 256
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v6           #enableScreenRotation:Z
    .end local v10           #res:Landroid/content/res/Resources;
    .restart local v9       #mStatusService:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method public declared-synchronized showSKTLocked(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "enableUserUnlock"
    .parameter "strPassword"
    .parameter "userMsg"

    .prologue
    .line 622
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v0, :cond_0

    .line 623
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SKT Lock&Wipe] showSKTLocked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/KeyguardViewBase;->showSKTLocked(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    :cond_0
    monitor-exit p0

    return-void

    .line 622
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized verifyUnlock()V
    .locals 1

    .prologue
    .line 503
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->show()V

    .line 504
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->verifyUnlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    monitor-exit p0

    return-void

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public wakeWhenReadyTq(I)Z
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->wakeWhenReadyTq(I)V

    .line 522
    const/4 v0, 0x1

    .line 525
    :goto_0
    return v0

    .line 524
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "mKeyguardView is null in wakeWhenReadyTq"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateDisplayDesktopFlag()V
    .locals 3
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->isDisplayDesktop()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewProperties;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x100001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x4000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x10

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v2, -0x40000001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0
.end method