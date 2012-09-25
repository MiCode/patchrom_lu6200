.class public abstract Lcom/broadcom/bt/app/opp/server/BaseServerHandler;
.super Lcom/broadcom/bt/app/opp/util/BaseHandler;
.source "BaseServerHandler.java"


# instance fields
.field protected mAccessGranted:Z

.field private mProgressIncrement:J

.field private mProgressLimit:J

.field protected mSvc:Lcom/broadcom/bt/app/opp/server/OPPServerService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/util/BaseHandler;-><init>()V

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;->mProgressIncrement:J

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;->mProgressLimit:J

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;->mAccessGranted:Z

    return-void
.end method


# virtual methods
.method protected incrementProgress(JJ)V
    .locals 9
    .parameter "bytesTransferred"
    .parameter "totalBytes"

    .prologue
    const-wide/16 v7, 0x1

    const-wide/16 v5, 0x0

    .line 61
    iget-wide v1, p0, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;->mProgressIncrement:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 62
    const-wide/32 v1, 0x61a8000

    cmp-long v1, p3, v1

    if-lez v1, :cond_0

    :cond_0
    iput-wide v7, p0, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;->mProgressIncrement:J

    .line 66
    :cond_1
    const/4 v0, 0x0

    .line 67
    .local v0, mPercentDone:I
    cmp-long v1, p3, v5

    if-eqz v1, :cond_2

    .line 68
    const-wide/16 v1, 0x64

    mul-long/2addr v1, p1

    div-long/2addr v1, p3

    long-to-int v0, v1

    .line 72
    :cond_2
    if-nez v0, :cond_3

    .line 73
    const/4 v0, 0x1

    .line 76
    :cond_3
    iget-wide v1, p0, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;->mProgressIncrement:J

    cmp-long v1, v1, v5

    if-gtz v1, :cond_5

    .line 77
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;->updateProgress(JJ)V

    .line 82
    :cond_4
    :goto_0
    return-void

    .line 78
    :cond_5
    int-to-long v1, v0

    iget-wide v3, p0, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;->mProgressLimit:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_4

    .line 79
    iget-wide v1, p0, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;->mProgressLimit:J

    iget-wide v3, p0, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;->mProgressIncrement:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;->mProgressLimit:J

    .line 80
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;->updateProgress(JJ)V

    goto :goto_0
.end method

.method public init(Lcom/broadcom/bt/app/opp/util/BaseService;Lcom/broadcom/bt/app/opp/data/Job;)V
    .locals 0
    .parameter "svc"
    .parameter "request"

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/broadcom/bt/app/opp/util/BaseHandler;->init(Lcom/broadcom/bt/app/opp/util/BaseService;Lcom/broadcom/bt/app/opp/data/Job;)V

    .line 50
    check-cast p1, Lcom/broadcom/bt/app/opp/server/OPPServerService;

    .end local p1
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;->mSvc:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    .line 51
    return-void
.end method

.method public abstract onOpsClose()V
.end method

.method public abstract onOpsObjectReceived(ILjava/lang/String;)V
.end method

.method public abstract onOpsProgress(JJ)V
.end method

.method protected processError(IJLjava/lang/Throwable;)V
    .locals 0
    .parameter "errorCode"
    .parameter "endTime"
    .parameter "t"

    .prologue
    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Lcom/broadcom/bt/app/opp/util/BaseHandler;->processError(IJLjava/lang/Throwable;)V

    .line 115
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 100
    const-string v1, "BaseServerHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "run() called"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :try_start_0
    new-instance v1, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    invoke-direct {v1}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;-><init>()V

    iput-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    .line 105
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;->initResources()V

    .line 106
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;->processRequest()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BaseServerHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "**** Error starting Server Handler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    const/16 v1, 0x1eb

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;->processError(IJLjava/lang/Throwable;)V

    goto :goto_0
.end method
