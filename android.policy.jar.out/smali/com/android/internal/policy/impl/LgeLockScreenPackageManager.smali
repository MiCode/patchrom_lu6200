.class public Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;
.super Ljava/lang/Object;
.source "LgeLockScreenPackageManager.java"


# static fields
.field private static final DBG:Z = true

.field private static final DEFAULT_LOCKSCREEN_PACKAGE_NAME:Ljava/lang/String; = "com.lge.lockscreen"

.field private static final LOCKSCREEN_FACTORY_CLASS_NAME:Ljava/lang/String; = "LockScreenFactory"

.field private static final MSG_PACKAGE_ADDED:I = 0x64

.field private static final MSG_PACKAGE_REMOVED:I = 0x65

.field private static final MSG_PACKAGE_REPLACED:I = 0x66

.field private static final TAG:Ljava/lang/String; = "LgeLockScreenPackageManager"

.field private static mInstance:Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLockScreenFactory:Lcom/android/internal/policy/impl/ILockScreenFactory;

.field private mPackageContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mInstance:Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v1, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mPackageName:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mPackageContext:Landroid/content/Context;

    .line 42
    iput-object v1, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mLockScreenFactory:Lcom/android/internal/policy/impl/ILockScreenFactory;

    .line 45
    new-instance v1, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager$1;-><init>(Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mHandler:Landroid/os/Handler;

    .line 78
    iput-object p1, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mContext:Landroid/content/Context;

    .line 80
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->loadLockScreenPackage(Landroid/content/Context;)Z

    .line 82
    iget-object v1, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mLockScreenFactory:Lcom/android/internal/policy/impl/ILockScreenFactory;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mLockScreenFactory:Lcom/android/internal/policy/impl/ILockScreenFactory;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/ILockScreenFactory;->onCreate()V

    .line 85
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 86
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 95
    new-instance v1, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager$2;-><init>(Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->handlePackageAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->handlePackageRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->handlePackageReplaced(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mInstance:Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;

    return-object v0
.end method

.method private handlePackageAdded(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->loadLockScreenPackage(Landroid/content/Context;)Z

    .line 158
    iget-object v0, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mLockScreenFactory:Lcom/android/internal/policy/impl/ILockScreenFactory;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mLockScreenFactory:Lcom/android/internal/policy/impl/ILockScreenFactory;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/ILockScreenFactory;->onCreate()V

    .line 160
    :cond_0
    return-void
.end method

.method private handlePackageRemoved(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-object v0, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mLockScreenFactory:Lcom/android/internal/policy/impl/ILockScreenFactory;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mLockScreenFactory:Lcom/android/internal/policy/impl/ILockScreenFactory;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/ILockScreenFactory;->onDestory()V

    .line 166
    :cond_0
    iput-object v1, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mPackageName:Ljava/lang/String;

    .line 167
    iput-object v1, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mPackageContext:Landroid/content/Context;

    .line 168
    iput-object v1, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mLockScreenFactory:Lcom/android/internal/policy/impl/ILockScreenFactory;

    .line 169
    return-void
.end method

.method private handlePackageReplaced(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mLockScreenFactory:Lcom/android/internal/policy/impl/ILockScreenFactory;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mLockScreenFactory:Lcom/android/internal/policy/impl/ILockScreenFactory;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/ILockScreenFactory;->onDestory()V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->loadLockScreenPackage(Landroid/content/Context;)Z

    .line 177
    iget-object v0, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mLockScreenFactory:Lcom/android/internal/policy/impl/ILockScreenFactory;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mLockScreenFactory:Lcom/android/internal/policy/impl/ILockScreenFactory;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/ILockScreenFactory;->onCreate()V

    .line 179
    :cond_1
    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    sget-object v0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mInstance:Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mInstance:Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;

    .line 67
    :cond_0
    return-void
.end method

.method private loadLockScreenPackage(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 126
    :try_start_0
    const-string v8, "com.lge.lockscreen"

    const/4 v11, 0x3

    invoke-virtual {p1, v8, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mPackageContext:Landroid/content/Context;

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 130
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    const-string v8, "com.lge.lockscreen"

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 131
    .local v6, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mPackageName:Ljava/lang/String;

    .line 133
    iget-object v8, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mPackageContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 134
    .local v2, classLoader:Ljava/lang/ClassLoader;
    const-string v8, "com.lge.lockscreen.LockScreenFactory"

    const/4 v11, 0x1

    invoke-static {v8, v11, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 136
    .local v5, lockScreenFactroyclass:Ljava/lang/Class;
    const/4 v8, 0x2

    new-array v0, v8, [Ljava/lang/Class;

    .line 137
    .local v0, argClasses:[Ljava/lang/Class;
    const/4 v8, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v0, v8

    .line 138
    const/4 v8, 0x1

    const-class v11, Landroid/content/Context;

    aput-object v11, v0, v8

    .line 139
    invoke-virtual {v5, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 140
    .local v4, localConstructor:Ljava/lang/reflect/Constructor;
    const/4 v8, 0x2

    new-array v1, v8, [Ljava/lang/Object;

    .line 141
    .local v1, argObjects:[Ljava/lang/Object;
    const/4 v8, 0x0

    aput-object p1, v1, v8

    .line 142
    const/4 v8, 0x1

    iget-object v11, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mPackageContext:Landroid/content/Context;

    aput-object v11, v1, v8

    .line 144
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/policy/impl/ILockScreenFactory;

    iput-object v8, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mLockScreenFactory:Lcom/android/internal/policy/impl/ILockScreenFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v9

    .line 151
    .end local v0           #argClasses:[Ljava/lang/Class;
    .end local v1           #argObjects:[Ljava/lang/Object;
    .end local v2           #classLoader:Ljava/lang/ClassLoader;
    .end local v4           #localConstructor:Ljava/lang/reflect/Constructor;
    .end local v5           #lockScreenFactroyclass:Ljava/lang/Class;
    .end local v6           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v7           #packageManager:Landroid/content/pm/PackageManager;
    :goto_0
    return v8

    .line 146
    :catch_0
    move-exception v3

    .line 147
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "LgeLockScreenPackageManager"

    const-string v9, "fail to load a lock screen package!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput-object v12, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mPackageName:Ljava/lang/String;

    .line 149
    iput-object v12, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mPackageContext:Landroid/content/Context;

    .line 150
    iput-object v12, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mLockScreenFactory:Lcom/android/internal/policy/impl/ILockScreenFactory;

    move v8, v10

    .line 151
    goto :goto_0
.end method


# virtual methods
.method public createAccountUnlockScreen(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockPatternUtils"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mLockScreenFactory:Lcom/android/internal/policy/impl/ILockScreenFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mPackageContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mLockScreenFactory:Lcom/android/internal/policy/impl/ILockScreenFactory;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mPackageContext:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/policy/impl/ILockScreenFactory;->createAccountUnlockScreen(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 314
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createLockScreen(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mLockScreenFactory:Lcom/android/internal/policy/impl/ILockScreenFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mPackageContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mLockScreenFactory:Lcom/android/internal/policy/impl/ILockScreenFactory;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mPackageContext:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/policy/impl/ILockScreenFactory;->createLockScreen(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createPasswordUnlockScreen(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mLockScreenFactory:Lcom/android/internal/policy/impl/ILockScreenFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mPackageContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mLockScreenFactory:Lcom/android/internal/policy/impl/ILockScreenFactory;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mPackageContext:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/policy/impl/ILockScreenFactory;->createPasswordUnlockScreen(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 336
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createPatternUnlockScreen(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;I)Landroid/view/View;
    .locals 8
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "totalFailedAttempts"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mLockScreenFactory:Lcom/android/internal/policy/impl/ILockScreenFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mPackageContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mLockScreenFactory:Lcom/android/internal/policy/impl/ILockScreenFactory;

    iget-object v7, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mPackageContext:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/policy/impl/ILockScreenFactory;->createPatternUnlockScreen(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;ILandroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 292
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createPouchLockScreen(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mLockScreenFactory:Lcom/android/internal/policy/impl/ILockScreenFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mPackageContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mLockScreenFactory:Lcom/android/internal/policy/impl/ILockScreenFactory;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mPackageContext:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/policy/impl/ILockScreenFactory;->createPouchLockScreen(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 267
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mLockScreenFactory:Lcom/android/internal/policy/impl/ILockScreenFactory;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mLockScreenFactory:Lcom/android/internal/policy/impl/ILockScreenFactory;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/ILockScreenFactory;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 222
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVersionNumber()I
    .locals 2

    .prologue
    .line 201
    const/4 v0, -0x1

    .line 203
    .local v0, version:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mLockScreenFactory:Lcom/android/internal/policy/impl/ILockScreenFactory;

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mLockScreenFactory:Lcom/android/internal/policy/impl/ILockScreenFactory;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/ILockScreenFactory;->getVersionNumber()I

    move-result v0

    .line 207
    :cond_0
    return v0
.end method

.method public isFeatureEnabled(Ljava/lang/String;)Z
    .locals 8
    .parameter "featureName"

    .prologue
    const/4 v4, 0x0

    .line 182
    iget-object v5, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mPackageContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 184
    const/4 v3, 0x0

    .line 185
    .local v3, ret:Z
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mPackageContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 186
    .local v2, res:Landroid/content/res/Resources;
    const-string v5, "bool"

    const-string v6, "com.lge.lockscreen"

    invoke-virtual {v2, p1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 187
    .local v1, id:I
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 194
    .end local v1           #id:I
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v3           #ret:Z
    :goto_0
    return v3

    .line 189
    .restart local v3       #ret:Z
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "LgeLockScreenPackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to get resource "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 191
    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #ret:Z
    :cond_0
    move v3, v4

    .line 194
    goto :goto_0
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mLockScreenFactory:Lcom/android/internal/policy/impl/ILockScreenFactory;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mLockScreenFactory:Lcom/android/internal/policy/impl/ILockScreenFactory;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/ILockScreenFactory;->isHardwareAccelerated()Z

    move-result v0

    .line 214
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyKeyguardDone()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mLockScreenFactory:Lcom/android/internal/policy/impl/ILockScreenFactory;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mLockScreenFactory:Lcom/android/internal/policy/impl/ILockScreenFactory;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/ILockScreenFactory;->onKeyguardDone()V

    .line 346
    :cond_0
    return-void
.end method
