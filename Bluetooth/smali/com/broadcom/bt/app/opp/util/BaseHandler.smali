.class public abstract Lcom/broadcom/bt/app/opp/util/BaseHandler;
.super Ljava/lang/Object;
.source "BaseHandler.java"


# instance fields
.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mContentUri:Landroid/net/Uri;

.field protected mContext:Lcom/broadcom/bt/app/opp/util/BaseService;

.field private mErrorSet:Z

.field protected mFinishCalled:Z

.field protected mMimeType:Ljava/lang/String;

.field protected mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

.field protected mRequest:Lcom/broadcom/bt/app/opp/data/Job;

.field protected mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized finish()V
    .locals 2

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mFinishCalled:Z

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mFinishCalled:Z

    .line 129
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContext:Lcom/broadcom/bt/app/opp/util/BaseService;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/app/opp/util/BaseService;->onRequestFinished(Lcom/broadcom/bt/app/opp/data/Job;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_0
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRequest()Lcom/broadcom/bt/app/opp/data/Job;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    return-object v0
.end method

.method public init(Lcom/broadcom/bt/app/opp/util/BaseService;Lcom/broadcom/bt/app/opp/data/Job;)V
    .locals 1
    .parameter "svc"
    .parameter "request"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContext:Lcom/broadcom/bt/app/opp/util/BaseService;

    .line 71
    iput-object p2, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    .line 72
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContext:Lcom/broadcom/bt/app/opp/util/BaseService;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/util/BaseService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 73
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContext:Lcom/broadcom/bt/app/opp/util/BaseService;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/util/BaseService;->getProxy()Lcom/broadcom/bt/service/opp/BluetoothOPP;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    .line 75
    return-void
.end method

.method protected initResources()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public isErrorSet()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mErrorSet:Z

    return v0
.end method

.method protected processError(IJLjava/lang/Throwable;)V
    .locals 3
    .parameter "errorCode"
    .parameter "endTime"
    .parameter "t"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iput p1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 108
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iput-wide p2, v0, Lcom/broadcom/bt/app/opp/data/Job;->mEndTimestamp:J

    .line 110
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/opp/data/Job;->getJobUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {v0, v1, v2}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->updateRequestStatus(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/broadcom/bt/app/opp/data/Job;)I

    .line 112
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->requestEnded_Error(Lcom/broadcom/bt/app/opp/data/Job;)V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mErrorSet:Z

    .line 114
    return-void
.end method

.method protected abstract processRequest()V
.end method

.method protected setStatusSuccess(JJJ)V
    .locals 8
    .parameter "currentBytes"
    .parameter "totalBytes"
    .parameter "endTime"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-static/range {v0 .. v7}, Lcom/broadcom/bt/app/opp/data/Constants;->setStatusSuccess(Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;JJJ)V

    .line 100
    return-void
.end method

.method protected updateProgress(JJ)V
    .locals 6
    .parameter "currentBytes"
    .parameter "totalBytes"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/broadcom/bt/app/opp/data/Constants;->updateProgress(Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;JJ)V

    .line 86
    return-void
.end method
