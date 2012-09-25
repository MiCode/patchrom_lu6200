.class Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;
.super Ljava/lang/Object;
.source "OppNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/opp/notification/OppNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationBuffer"
.end annotation


# instance fields
.field private mRequestIndexLookup:Landroid/util/SparseIntArray;

.field private mRequestInsertIndex:I

.field private mRequests:[Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationRequest;

.field private mUpdateAllRequest:I

.field final synthetic this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/app/opp/notification/OppNotification;)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0xa

    .line 1000
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1001
    const/4 v0, -0x1

    iput v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mUpdateAllRequest:I

    .line 1003
    new-array v0, v1, [Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationRequest;

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mRequests:[Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationRequest;

    .line 1004
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mRequestIndexLookup:Landroid/util/SparseIntArray;

    .line 1005
    const/4 v0, 0x0

    iput v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mRequestInsertIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/app/opp/notification/OppNotification;Lcom/broadcom/bt/app/opp/notification/OppNotification$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1000
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;-><init>(Lcom/broadcom/bt/app/opp/notification/OppNotification;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1000
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mUpdateAllRequest:I

    return v0
.end method

.method static synthetic access$1200(Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1000
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mRequestInsertIndex:I

    return v0
.end method

.method static synthetic access$1300(Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;)[Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mRequests:[Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationRequest;

    return-object v0
.end method

.method static synthetic access$400(Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;IILcom/broadcom/bt/app/opp/data/Job;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1000
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->put(IILcom/broadcom/bt/app/opp/data/Job;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1000
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->clear()V

    return-void
.end method

.method private declared-synchronized clear()V
    .locals 1

    .prologue
    .line 1013
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mRequestInsertIndex:I

    .line 1014
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mRequestIndexLookup:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1015
    const/4 v0, -0x1

    iput v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mUpdateAllRequest:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1016
    monitor-exit p0

    return-void

    .line 1013
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized hasItems()Z
    .locals 1

    .prologue
    .line 1019
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mUpdateAllRequest:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mRequestInsertIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized put(IILcom/broadcom/bt/app/opp/data/Job;)Z
    .locals 5
    .parameter "id"
    .parameter "notificationType"
    .parameter "r"

    .prologue
    const/4 v1, 0x1

    .line 1038
    monitor-enter p0

    :try_start_0
    #calls: Lcom/broadcom/bt/app/opp/notification/OppNotification;->isRefreshAllRequestType(I)Z
    invoke-static {p2}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$2600(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1039
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->clear()V

    .line 1040
    iput p2, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mUpdateAllRequest:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1062
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 1042
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mUpdateAllRequest:I

    if-gtz v2, :cond_0

    .line 1048
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mRequestIndexLookup:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1049
    .local v0, requestIndex:I
    if-ltz v0, :cond_2

    .line 1050
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->updateExistingRequest(IIILcom/broadcom/bt/app/opp/data/Job;)Z

    move-result v1

    goto :goto_0

    .line 1054
    :cond_2
    iget v2, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mRequestInsertIndex:I

    iget-object v3, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mRequests:[Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationRequest;

    array-length v3, v3

    if-lt v2, v3, :cond_3

    .line 1055
    const/4 v1, 0x0

    goto :goto_0

    .line 1059
    :cond_3
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mRequestIndexLookup:Landroid/util/SparseIntArray;

    iget v3, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mRequestInsertIndex:I

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1060
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mRequests:[Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationRequest;

    iget v3, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mRequestInsertIndex:I

    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #calls: Lcom/broadcom/bt/app/opp/notification/OppNotification;->createNotificationRequest(ILcom/broadcom/bt/app/opp/data/Job;)Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationRequest;
    invoke-static {v4, p2, p3}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$2700(Lcom/broadcom/bt/app/opp/notification/OppNotification;ILcom/broadcom/bt/app/opp/data/Job;)Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationRequest;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1061
    iget v2, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mRequestInsertIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mRequestInsertIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1038
    .end local v0           #requestIndex:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private updateExistingRequest(IIILcom/broadcom/bt/app/opp/data/Job;)Z
    .locals 4
    .parameter "requestId"
    .parameter "requestIndex"
    .parameter "requestType"
    .parameter "request"

    .prologue
    const/4 v3, 0x1

    .line 1078
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mRequests:[Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationRequest;

    aget-object v1, v1, p2

    iget v0, v1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestType:I

    .line 1079
    .local v0, previousRequestType:I
    if-le v0, p3, :cond_0

    .line 1084
    :goto_0
    return v3

    .line 1083
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mRequests:[Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationRequest;

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #calls: Lcom/broadcom/bt/app/opp/notification/OppNotification;->createNotificationRequest(ILcom/broadcom/bt/app/opp/data/Job;)Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationRequest;
    invoke-static {v2, p3, p4}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$2700(Lcom/broadcom/bt/app/opp/notification/OppNotification;ILcom/broadcom/bt/app/opp/data/Job;)Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationRequest;

    move-result-object v2

    aput-object v2, v1, p2

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized copyAndClear(Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;)Z
    .locals 5
    .parameter "destItems"

    .prologue
    const/4 v0, 0x0

    .line 1023
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->hasItems()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 1033
    :goto_0
    monitor-exit p0

    return v0

    .line 1026
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mUpdateAllRequest:I

    iput v0, p1, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mUpdateAllRequest:I

    .line 1027
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mRequestInsertIndex:I

    iput v0, p1, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mRequestInsertIndex:I

    .line 1028
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mRequestInsertIndex:I

    if-lez v0, :cond_1

    .line 1029
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mRequests:[Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationRequest;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mRequests:[Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationRequest;

    const/4 v3, 0x0

    iget v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mRequestInsertIndex:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1032
    :cond_1
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1033
    const/4 v0, 0x1

    goto :goto_0

    .line 1023
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 1008
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->clear()V

    .line 1009
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mRequests:[Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationRequest;

    .line 1010
    return-void
.end method
