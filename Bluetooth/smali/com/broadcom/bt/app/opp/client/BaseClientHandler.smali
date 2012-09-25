.class public abstract Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
.super Lcom/broadcom/bt/app/opp/util/BaseHandler;
.source "BaseClientHandler.java"

# interfaces
.implements Lcom/broadcom/bt/service/opp/IOppEventHandler;


# instance fields
.field private mProgressIncrement:J

.field private mProgressLimit:J

.field protected mService:Lcom/broadcom/bt/app/opp/client/OPPClientService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/util/BaseHandler;-><init>()V

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->mProgressIncrement:J

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->mProgressLimit:J

    return-void
.end method


# virtual methods
.method protected getState()Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->mService:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    iget-object v0, v0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mClientState:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    return-object v0
.end method

.method protected incrementProgress(JJ)V
    .locals 9
    .parameter "bytesTransferred"
    .parameter "totalBytes"

    .prologue
    const-wide/16 v7, 0x1

    const-wide/16 v5, 0x0

    .line 55
    iget-wide v1, p0, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->mProgressIncrement:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 56
    const-wide/32 v1, 0x61a8000

    cmp-long v1, p3, v1

    if-lez v1, :cond_0

    :cond_0
    iput-wide v7, p0, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->mProgressIncrement:J

    .line 60
    :cond_1
    const/4 v0, 0x0

    .line 61
    .local v0, mPercentDone:I
    cmp-long v1, p3, v5

    if-lez v1, :cond_2

    .line 62
    const-wide/16 v1, 0x64

    mul-long/2addr v1, p1

    div-long/2addr v1, p3

    long-to-int v0, v1

    .line 66
    :cond_2
    if-nez v0, :cond_3

    .line 67
    const/4 v0, 0x1

    .line 70
    :cond_3
    iget-wide v1, p0, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->mProgressIncrement:J

    cmp-long v1, v1, v5

    if-gtz v1, :cond_5

    .line 71
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->updateProgress(JJ)V

    .line 76
    :cond_4
    :goto_0
    return-void

    .line 72
    :cond_5
    int-to-long v1, v0

    iget-wide v3, p0, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->mProgressLimit:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_4

    .line 73
    iget-wide v1, p0, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->mProgressLimit:J

    iget-wide v3, p0, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->mProgressIncrement:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->mProgressLimit:J

    .line 74
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->updateProgress(JJ)V

    goto :goto_0
.end method

.method public init(Lcom/broadcom/bt/app/opp/util/BaseService;Lcom/broadcom/bt/app/opp/data/Job;)V
    .locals 1
    .parameter "svc"
    .parameter "request"

    .prologue
    .line 42
    invoke-super {p0, p1, p2}, Lcom/broadcom/bt/app/opp/util/BaseHandler;->init(Lcom/broadcom/bt/app/opp/util/BaseService;Lcom/broadcom/bt/app/opp/data/Job;)V

    .line 43
    check-cast p1, Lcom/broadcom/bt/app/opp/client/OPPClientService;

    .end local p1
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->mService:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    .line 44
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mMimeType:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public onOpcAmpStateChanged(Ljava/lang/String;I)V
    .locals 0
    .parameter "peerBDAddress"
    .parameter "ampState"

    .prologue
    .line 169
    return-void
.end method

.method public onOpcClose(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 129
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->getState()Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    move-result-object v0

    sget-object v1, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_START:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->getState()Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    move-result-object v0

    sget-object v1, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_PROGRESS:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    if-ne v0, v1, :cond_1

    .line 131
    :cond_0
    sget-object v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_CLOSED:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->setState(Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;)V

    .line 132
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->stop()V

    .line 133
    const/16 v0, 0x1e0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->processError(IJLjava/lang/Throwable;)V

    .line 134
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->finish()V

    .line 136
    :cond_1
    return-void
.end method

.method public onOpcEnable()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public onOpsAccessRequest(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;J)V
    .locals 0
    .parameter "peerDeviceName"
    .parameter "peerBDAddress"
    .parameter "operation"
    .parameter "format"
    .parameter "filePathName"
    .parameter "totalBytes"

    .prologue
    .line 147
    return-void
.end method

.method public onOpsClose()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public onOpsObjectReceived(ILjava/lang/String;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 153
    return-void
.end method

.method public onOpsOpen()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public onOpsProgress(JJ)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 150
    return-void
.end method

.method protected processError(IJLjava/lang/Throwable;)V
    .locals 0
    .parameter "errorCode"
    .parameter "endTime"
    .parameter "t"

    .prologue
    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Lcom/broadcom/bt/app/opp/util/BaseHandler;->processError(IJLjava/lang/Throwable;)V

    .line 123
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 104
    :try_start_0
    const-string v1, "BaseOPPClientHandler"

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

    .line 105
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContext:Lcom/broadcom/bt/app/opp/util/BaseService;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/opp/util/BaseService;->getWatchdog()Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    .line 106
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->processRequest()V
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
    const-string v1, "BaseOPPClientHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "**** Error starting Client Handler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    const/16 v1, 0x1eb

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->processError(IJLjava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected setState(Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->mService:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    iput-object p1, v0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mClientState:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    .line 89
    return-void
.end method
