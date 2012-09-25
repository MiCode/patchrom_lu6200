.class public Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;
.super Ljava/lang/Object;
.source "ExchangeFolderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$1;,
        Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback;,
        Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$ExchangeFolderObserver;
    }
.end annotation


# static fields
.field public static final mInstance:Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExchangeFoldersSet:Z

.field private mFileObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$ExchangeFolderObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mOppProxySet:Z

.field private mPendingInit:Z

.field private mProxyCallback:Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback;

.field private mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;

    invoke-direct {v0}, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;-><init>()V

    sput-object v0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mInstance:Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 141
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mFileObservers:Ljava/util/HashMap;

    .line 143
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-static {p0}, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->createExchangeFolder(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;)Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;)Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    return-object p1
.end method

.method static synthetic access$202(Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mOppProxySet:Z

    return p1
.end method

.method static synthetic access$302(Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback;)Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mProxyCallback:Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback;

    return-object p1
.end method

.method static synthetic access$402(Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mPendingInit:Z

    return p1
.end method

.method private static createExchangeFolder(Ljava/lang/String;)Z
    .locals 5
    .parameter "path"

    .prologue
    const/4 v1, 0x1

    .line 43
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    const-string v2, "ExchangeFolderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created OPP Exchange Folder "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget-object v2, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->SDCARDPATH:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    const-string v2, "ExchangeFolderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting permissions for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {p0}, Lcom/broadcom/bt/app/opp/util/Utils;->setDefaultDirPermission(Ljava/lang/String;)V

    .line 66
    :cond_0
    :goto_0
    return v1

    .line 59
    :cond_1
    const-string v1, "ExchangeFolderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating OPP Exchange Folder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v1, 0x0

    goto :goto_0

    .line 64
    :cond_2
    const-string v2, "ExchangeFolderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OPP Exchange Folder already exists : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setupExchangeFolder(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 146
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mFileObservers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-static {p1}, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->createExchangeFolder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    const-string v1, "ExchangeFolderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registering file observer for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$ExchangeFolderObserver;

    invoke-direct {v0, p0, p1}, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$ExchangeFolderObserver;-><init>(Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;Ljava/lang/String;)V

    .line 155
    .local v0, o:Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$ExchangeFolderObserver;
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mFileObservers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$ExchangeFolderObserver;->startWatching()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized finish()V
    .locals 5

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mFileObservers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 200
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$ExchangeFolderObserver;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$ExchangeFolderObserver;

    .line 203
    .local v1, o:Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$ExchangeFolderObserver;
    const-string v2, "ExchangeFolderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unregister file observer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {v1}, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$ExchangeFolderObserver;->stopWatching()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 199
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$ExchangeFolderObserver;>;"
    .end local v1           #o:Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$ExchangeFolderObserver;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 208
    .restart local v0       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$ExchangeFolderObserver;>;"
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mFileObservers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 209
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mExchangeFoldersSet:Z

    .line 210
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mOppProxySet:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->needsInitialization()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->setupExchangeFolders(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :cond_0
    monitor-exit p0

    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized needsInitialization()Z
    .locals 2

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mPendingInit:Z

    if-eqz v0, :cond_0

    .line 162
    const-string v0, "ExchangeFolderManager"

    const-string v1, "ExchangeFolderManager.init() in progress...Skipping request..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    iget-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mPendingInit:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mExchangeFoldersSet:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mOppProxySet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setupExchangeFolders(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    .line 168
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mPendingInit:Z

    .line 169
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mContext:Landroid/content/Context;

    .line 170
    iget-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mExchangeFoldersSet:Z

    if-nez v0, :cond_0

    .line 176
    const-string v0, "/data/data/com.android.bluetooth/.tmp/"

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->setupExchangeFolder(Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mExchangeFoldersSet:Z

    .line 181
    :cond_0
    iget-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mOppProxySet:Z

    if-nez v0, :cond_1

    .line 182
    new-instance v0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    invoke-direct {v0}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    .line 183
    new-instance v0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback;-><init>(Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$1;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mProxyCallback:Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback;

    .line 184
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    const/16 v1, 0x7d0

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mProxyCallback:Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->start(ILcom/broadcom/bt/app/opp/util/IWatchdogHandler;Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mProxyCallback:Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback;

    invoke-static {p1, v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :goto_0
    monitor-exit p0

    return-void

    .line 189
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mPendingInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
