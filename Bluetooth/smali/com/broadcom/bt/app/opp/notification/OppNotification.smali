.class public Lcom/broadcom/bt/app/opp/notification/OppNotification;
.super Ljava/lang/Object;
.source "OppNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/opp/notification/OppNotification$1;,
        Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;,
        Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationRequest;,
        Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;
    }
.end annotation


# instance fields
.field private final C_LOCK:Ljava/lang/Object;

.field private final P_LOCK:Ljava/lang/Object;

.field private mClientActiveNot:Landroid/app/Notification;

.field private mClientActiveNotificationId:I

.field private mContext:Landroid/content/Context;

.field private mIsClientInPendingDisplayed:Z

.field private mIsClientOutPendingDisplayed:Z

.field private mLastCancelledRequests:Landroid/util/SparseIntArray;

.field private mNotificationBuffer:Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;

.field private mNotificationMgr:Landroid/app/NotificationManager;

.field private mNotificationUpdateThread:Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;

.field private mResolver:Landroid/content/ContentResolver;

.field private mServerActiveNot:Landroid/app/Notification;

.field private mServerActiveNotificationId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 144
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;-><init>(Lcom/broadcom/bt/app/opp/notification/OppNotification;Lcom/broadcom/bt/app/opp/notification/OppNotification$1;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationBuffer:Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->P_LOCK:Ljava/lang/Object;

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->C_LOCK:Ljava/lang/Object;

    .line 117
    iput-boolean v3, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mIsClientOutPendingDisplayed:Z

    .line 118
    iput-boolean v3, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mIsClientInPendingDisplayed:Z

    .line 121
    iput v2, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mClientActiveNotificationId:I

    .line 122
    iput v2, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mServerActiveNotificationId:I

    .line 145
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;

    .line 146
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mResolver:Landroid/content/ContentResolver;

    .line 149
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 150
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mLastCancelledRequests:Landroid/util/SparseIntArray;

    .line 151
    return-void
.end method

.method static synthetic access$1100(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/util/SparseIntArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mLastCancelledRequests:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/broadcom/bt/app/opp/notification/OppNotification;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mClientActiveNotificationId:I

    return v0
.end method

.method static synthetic access$1502(Lcom/broadcom/bt/app/opp/notification/OppNotification;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mClientActiveNotificationId:I

    return p1
.end method

.method static synthetic access$1600(Lcom/broadcom/bt/app/opp/notification/OppNotification;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mServerActiveNotificationId:I

    return v0
.end method

.method static synthetic access$1602(Lcom/broadcom/bt/app/opp/notification/OppNotification;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mServerActiveNotificationId:I

    return p1
.end method

.method static synthetic access$1700(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/Notification;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mServerActiveNot:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/broadcom/bt/app/opp/notification/OppNotification;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mServerActiveNot:Landroid/app/Notification;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/Notification;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mClientActiveNot:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/broadcom/bt/app/opp/notification/OppNotification;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mClientActiveNot:Landroid/app/Notification;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mIsClientInPendingDisplayed:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/broadcom/bt/app/opp/notification/OppNotification;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mIsClientInPendingDisplayed:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mIsClientOutPendingDisplayed:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/broadcom/bt/app/opp/notification/OppNotification;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mIsClientOutPendingDisplayed:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/broadcom/bt/app/opp/notification/OppNotification;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->updateOutboundNotification(J)V

    return-void
.end method

.method static synthetic access$2400(Lcom/broadcom/bt/app/opp/notification/OppNotification;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->updateInboundNotification(J)V

    return-void
.end method

.method static synthetic access$2500(Lcom/broadcom/bt/app/opp/notification/OppNotification;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->removeFromCache(I)V

    return-void
.end method

.method static synthetic access$2600(I)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-static {p0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->isRefreshAllRequestType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/broadcom/bt/app/opp/notification/OppNotification;ILcom/broadcom/bt/app/opp/data/Job;)Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationRequest;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->createNotificationRequest(ILcom/broadcom/bt/app/opp/data/Job;)Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->C_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationBuffer:Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->P_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationUpdateThread:Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;

    return-object v0
.end method

.method static synthetic access$902(Lcom/broadcom/bt/app/opp/notification/OppNotification;Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;)Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationUpdateThread:Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;

    return-object p1
.end method

.method private createNotificationRequest(ILcom/broadcom/bt/app/opp/data/Job;)Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationRequest;
    .locals 2
    .parameter "requestType"
    .parameter "request"

    .prologue
    .line 105
    new-instance v0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationRequest;-><init>(Lcom/broadcom/bt/app/opp/notification/OppNotification;ILcom/broadcom/bt/app/opp/data/Job;Lcom/broadcom/bt/app/opp/notification/OppNotification$1;)V

    return-object v0
.end method

.method private static isRefreshAllRequestType(I)Z
    .locals 2
    .parameter "requestType"

    .prologue
    const/4 v0, 0x1

    .line 91
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized removeFromCache(I)V
    .locals 1
    .parameter "requestId"

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mServerActiveNotificationId:I

    if-ne v0, p1, :cond_1

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mServerActiveNot:Landroid/app/Notification;

    .line 200
    const/4 v0, -0x1

    iput v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mServerActiveNotificationId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 201
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mClientActiveNotificationId:I

    if-ne v0, p1, :cond_0

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mClientActiveNot:Landroid/app/Notification;

    .line 203
    const/4 v0, -0x1

    iput v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mClientActiveNotificationId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startNotificationThreadIfNeeded()V
    .locals 2

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationUpdateThread:Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;

    if-nez v0, :cond_1

    .line 155
    new-instance v0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;-><init>(Lcom/broadcom/bt/app/opp/notification/OppNotification;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationUpdateThread:Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;

    .line 156
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationUpdateThread:Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 165
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationUpdateThread:Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;

    const/4 v1, 0x1

    #setter for: Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->mPendingUpdate:Z
    invoke-static {v0, v1}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->access$202(Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;Z)Z

    .line 168
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationUpdateThread:Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->mFinished:Z
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->access$300(Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;-><init>(Lcom/broadcom/bt/app/opp/notification/OppNotification;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationUpdateThread:Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;

    .line 170
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationUpdateThread:Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateInboundNotification(J)V
    .locals 9
    .parameter

    .prologue
    const/4 v3, 0x0

    const v8, -0xf4246

    const/4 v7, 0x0

    .line 914
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "status = 200 AND (visibility IS NULL OR visibility == \'0\')  AND direction = 1"

    invoke-static {v0, v1, v3}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getCount(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 920
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "status >= 400 AND status < 600  AND (visibility IS NULL OR visibility == \'0\')  AND direction = 1"

    invoke-static {v1, v2, v3}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getCount(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 929
    add-int v2, v0, v1

    .line 931
    if-lez v2, :cond_1

    .line 932
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 933
    const v3, 0x1080082

    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 934
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;

    const v4, 0x7f050057

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 935
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;

    const v5, 0x7f050058

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 937
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.btopp.intent.action.OPEN_INBOUND"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 938
    const-string v4, "com.android.bluetooth"

    const-class v5, Lcom/broadcom/bt/app/opp/OppReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 939
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v4, v3, v0, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 941
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.HIDE_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 942
    const-string v1, "com.android.bluetooth"

    const-class v3, Lcom/broadcom/bt/app/opp/OppReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 943
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;

    invoke-static {v1, v7, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 944
    iput-wide p1, v2, Landroid/app/Notification;->when:J

    .line 945
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v0, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 953
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v0, v8}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private updateOutboundNotification(J)V
    .locals 9
    .parameter

    .prologue
    const/4 v3, 0x0

    const v8, -0xf4245

    const/4 v7, 0x0

    .line 870
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "status = 200 AND (visibility IS NULL OR visibility == \'0\')  AND direction = 0"

    invoke-static {v0, v1, v3}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getCount(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 875
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "status >= 400 AND status < 600  AND (visibility IS NULL OR visibility == \'0\')  AND direction = 0"

    invoke-static {v1, v2, v3}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getCount(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 884
    add-int v2, v0, v1

    .line 886
    if-lez v2, :cond_1

    .line 887
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 889
    const v3, 0x7f020018

    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 892
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;

    const v4, 0x7f050056

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 893
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;

    const v5, 0x7f050058

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 895
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.btopp.intent.action.OPEN_OUTBOUND"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 896
    const-string v4, "com.android.bluetooth"

    const-class v5, Lcom/broadcom/bt/app/opp/OppReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 897
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v4, v3, v0, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 899
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.HIDE_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 900
    const-string v1, "com.android.bluetooth"

    const-class v3, Lcom/broadcom/bt/app/opp/OppReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 901
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;

    invoke-static {v1, v7, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 902
    iput-wide p1, v2, Landroid/app/Notification;->when:J

    .line 903
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v0, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 910
    :cond_0
    :goto_0
    return-void

    .line 905
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v0, v8}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method


# virtual methods
.method addRequest(IILcom/broadcom/bt/app/opp/data/Job;)V
    .locals 4
    .parameter "id"
    .parameter "requestType"
    .parameter "r"

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->startNotificationThreadIfNeeded()V

    .line 211
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->P_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 212
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationBuffer:Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;

    #calls: Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->put(IILcom/broadcom/bt/app/opp/data/Job;)Z
    invoke-static {v1, p1, p2, p3}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->access$400(Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;IILcom/broadcom/bt/app/opp/data/Job;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 220
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->P_LOCK:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "OppNotification"

    const-string v3, "putRequest(): Unable to acquire wait lock"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 225
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 228
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->C_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 229
    :try_start_4
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->C_LOCK:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 230
    monitor-exit v2

    .line 231
    return-void

    .line 230
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public cancelImmediately(Ljava/lang/String;I)V
    .locals 1
    .parameter "tag"
    .parameter "id"

    .prologue
    .line 861
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 862
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 127
    iput-boolean v1, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mIsClientOutPendingDisplayed:Z

    .line 128
    iput-boolean v1, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mIsClientInPendingDisplayed:Z

    .line 129
    iput-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mServerActiveNot:Landroid/app/Notification;

    .line 130
    iput-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mClientActiveNot:Landroid/app/Notification;

    .line 131
    iput v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mClientActiveNotificationId:I

    .line 132
    iput v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mServerActiveNotificationId:I

    .line 133
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mLastCancelledRequests:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 134
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 135
    return-void
.end method

.method public finalize()V
    .locals 0

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->finishNotificationThread()V

    .line 187
    return-void
.end method

.method public declared-synchronized finishNotificationThread()V
    .locals 1

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationUpdateThread:Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationUpdateThread:Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->finish()V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationUpdateThread:Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationBuffer:Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit p0

    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
