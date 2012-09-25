.class public Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler;
.super Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
.source "VCardPullClientHandler.java"

# interfaces
.implements Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler;->processReceivedVCard(Ljava/lang/String;)V

    return-void
.end method

.method private processReceivedVCard(Ljava/lang/String;)V
    .locals 3
    .parameter "filePathName"

    .prologue
    .line 122
    new-instance v0, Lcom/broadcom/bt/service/opp/VCardUtil;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContext:Lcom/broadcom/bt/app/opp/util/BaseService;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/opp/VCardUtil;-><init>(Landroid/content/Context;)V

    .line 123
    .local v0, util:Lcom/broadcom/bt/service/opp/VCardUtil;
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p0, v2}, Lcom/broadcom/bt/service/opp/VCardUtil;->storeVCard(Ljava/lang/String;ILcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;Landroid/os/Handler;)Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    .line 124
    return-void
.end method


# virtual methods
.method protected initResources()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public onOpOwnerVcardNotSet(Ljava/lang/String;)V
    .locals 0
    .parameter "filePathName"

    .prologue
    .line 168
    return-void
.end method

.method public onOpcAmpStateChanged(Ljava/lang/String;I)V
    .locals 0
    .parameter "peerBDAddress"
    .parameter "ampState"

    .prologue
    .line 78
    return-void
.end method

.method public onOpcClose(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 112
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler;->getState()Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    move-result-object v0

    sget-object v1, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_START:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    if-ne v0, v1, :cond_0

    .line 113
    sget-object v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_PUSHED:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler;->setState(Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;)V

    .line 114
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->stop()V

    .line 115
    const/16 v0, 0x1e0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler;->processError(IJLjava/lang/Throwable;)V

    .line 116
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler;->finish()V

    .line 119
    :cond_0
    return-void
.end method

.method public onOpcObjectPushed(ILjava/lang/String;)V
    .locals 0
    .parameter "status"
    .parameter "filePathName"

    .prologue
    .line 165
    return-void
.end method

.method public onOpcObjectReceived(ILjava/lang/String;)V
    .locals 4
    .parameter "status"
    .parameter "filePathName"

    .prologue
    .line 84
    const-string v0, "PullClientHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Entering onOpcObjectReceived()..FilepathName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->stop()V

    .line 87
    sget-object v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_RECEIVED:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler;->setState(Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;)V

    .line 88
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iput-object p2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {p2}, Lcom/broadcom/bt/app/opp/util/Utils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {v0, v1}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->updateRequest(Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;)Z

    .line 93
    if-nez p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-wide v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler;->updateProgress(JJ)V

    .line 95
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContext:Lcom/broadcom/bt/app/opp/util/BaseService;

    new-instance v1, Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler$1;

    invoke-direct {v1, p0, p2}, Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler$1;-><init>(Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/app/opp/util/BaseService;->postAsyncRequest(Ljava/lang/Runnable;)V

    .line 105
    :goto_0
    const-string v0, "PullClientHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Leaving onOpcObjectReceived()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler;->finish()V

    .line 109
    return-void

    .line 102
    :cond_0
    const/16 v0, 0x1e0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler;->processError(IJLjava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onOpcOpen()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public onOpcProgress(JJ)V
    .locals 3
    .parameter "bytesTransferred"
    .parameter "totalBytes"

    .prologue
    .line 69
    sget-object v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_PROGRESS:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler;->setState(Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;)V

    .line 70
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    const/16 v1, 0x3a98

    sget-object v2, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_PROGRESS:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->pet(ILjava/lang/Object;)V

    .line 71
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler;->incrementProgress(JJ)V

    .line 73
    return-void
.end method

.method public onOpsAmpStateChanged(Ljava/lang/String;I)V
    .locals 0
    .parameter "peerBDAddress"
    .parameter "ampState"

    .prologue
    .line 80
    return-void
.end method

.method public onParseComplete(Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;)V
    .locals 8
    .parameter "res"

    .prologue
    const/16 v2, 0x1e7

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 136
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mSuccess:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mCount:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mCantCommitCount:I

    if-lt v0, v1, :cond_2

    .line 137
    :cond_0
    if-nez p1, :cond_1

    .line 138
    .local v7, err:Ljava/lang/Throwable;
    :goto_0
    const-string v0, "PullClientHandler"

    const-string v1, "Unable to process vCard from EXCHANGE"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1, v7}, Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler;->processError(IJLjava/lang/Throwable;)V

    .line 159
    .end local v7           #err:Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 137
    :cond_1
    iget-object v7, p1, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mError:Ljava/lang/Throwable;

    goto :goto_0

    .line 143
    :cond_2
    iget v0, p1, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mAddedCount:I

    if-gtz v0, :cond_3

    iget v0, p1, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mUpdatedCount:I

    if-lez v0, :cond_4

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-wide v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler;->setStatusSuccess(JJJ)V

    goto :goto_1

    .line 147
    :cond_4
    iget v0, p1, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mDuplicateCount:I

    if-lez v0, :cond_5

    .line 149
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v1, v1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    invoke-static {v1}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->createDuplicateUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {v0, v1}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->updateRequest(Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;)Z

    .line 151
    const/16 v0, 0x1e6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2, v7}, Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler;->processError(IJLjava/lang/Throwable;)V

    goto :goto_1

    .line 155
    :cond_5
    const-string v0, "PullClientHandler"

    const-string v1, "Unexpected error while parsing vCard file"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1, v7}, Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler;->processError(IJLjava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onVCardProcessed(Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;ILjava/lang/String;Ljava/lang/Object;ILandroid/net/Uri;)V
    .locals 3
    .parameter "res"
    .parameter "index"
    .parameter "displayName"
    .parameter "entry"
    .parameter "status"
    .parameter "storeUri"

    .prologue
    .line 128
    const/4 v1, 0x2

    if-ne p5, v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {v1}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->createDupValuesForInsert(Lcom/broadcom/bt/app/opp/data/Job;)Landroid/content/ContentValues;

    move-result-object v0

    .line 130
    .local v0, values:Landroid/content/ContentValues;
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3, p6}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->updateDupValuesForInsert(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/ContentValues;

    .line 131
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/opp/BluetoothShare;->DUP_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 133
    .end local v0           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method protected processRequest()V
    .locals 3

    .prologue
    .line 46
    const-string v0, "PullClientHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Entering processRequest()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    const-string v1, "text/x-vcard"

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContext:Lcom/broadcom/bt/app/opp/util/BaseService;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/util/BaseService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {v0, v1}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->updateRequest(Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;)Z

    .line 51
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler;->startObjectPull()V

    .line 52
    const-string v0, "PullClientHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Leaving processRequest()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method protected startObjectPull()V
    .locals 4

    .prologue
    .line 57
    sget-object v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_START:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler;->setState(Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;)V

    .line 58
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    const/16 v1, 0x7530

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->mService:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    sget-object v3, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_START:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->startOrRestartWatchdog(ILcom/broadcom/bt/app/opp/util/IWatchdogHandler;Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->pullVcard(Ljava/lang/String;)V

    .line 64
    return-void
.end method
