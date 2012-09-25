.class public Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;
.super Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
.source "VCardExchangeClientHandler.java"

# interfaces
.implements Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mReceivedVCardFilepath:Ljava/lang/String;

.field mVCardFile:Ljava/io/File;

.field private mVCardReceivedFinished:Z

.field private mVCardSendFinished:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->mReceivedVCardFilepath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->processReceivedVCard(Ljava/lang/String;)V

    return-void
.end method

.method private finalizeExchange()Z
    .locals 3

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, isFinished:Z
    iget-boolean v1, p0, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->mVCardSendFinished:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->mVCardReceivedFinished:Z

    if-eqz v1, :cond_1

    .line 250
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->stop()V

    .line 251
    const/4 v0, 0x1

    .line 253
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->mVCardFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->mVCardFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 256
    :cond_0
    sget-object v1, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_RECEIVED:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->setState(Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;)V

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->mReceivedVCardFilepath:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 261
    invoke-static {}, Lcom/broadcom/bt/app/opp/OppPreferences;->autoImportVCard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContext:Lcom/broadcom/bt/app/opp/util/BaseService;

    new-instance v2, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler$1;

    invoke-direct {v2, p0}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler$1;-><init>(Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;)V

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/app/opp/util/BaseService;->postAsyncRequest(Ljava/lang/Runnable;)V

    .line 268
    :cond_2
    return v0
.end method

.method private processReceivedVCard(Ljava/lang/String;)V
    .locals 3
    .parameter "filePathName"

    .prologue
    .line 272
    new-instance v0, Lcom/broadcom/bt/service/opp/VCardUtil;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContext:Lcom/broadcom/bt/app/opp/util/BaseService;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/opp/VCardUtil;-><init>(Landroid/content/Context;)V

    .line 273
    .local v0, util:Lcom/broadcom/bt/service/opp/VCardUtil;
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p0, v2}, Lcom/broadcom/bt/service/opp/VCardUtil;->storeVCard(Ljava/lang/String;ILcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;Landroid/os/Handler;)Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    .line 275
    return-void
.end method

.method private resetRequestForExchange()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 186
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iput v6, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    .line 187
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iput-wide v4, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    .line 188
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iput-wide v4, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    .line 189
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/broadcom/bt/app/opp/data/Job;->mEndTimestamp:J

    .line 190
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iput-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iput-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    .line 193
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v2, v2, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    const/16 v1, 0xc0

    iput v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 195
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iput-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContext:Lcom/broadcom/bt/app/opp/util/BaseService;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContext:Lcom/broadcom/bt/app/opp/util/BaseService;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/opp/util/BaseService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v6}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->addRequest(Lcom/broadcom/bt/app/opp/util/BaseService;Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;ZZ)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0, v4, v5, v4, v5}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->updateProgress(JJ)V

    .line 200
    :cond_0
    return-void
.end method


# virtual methods
.method protected onContentSetup()V
    .locals 2

    .prologue
    .line 91
    const-string v0, "VCardExchangeClientHandler"

    const-string v1, "onContentSetup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->startObjectExchange()V

    .line 94
    return-void
.end method

.method protected onContentSetupError(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 81
    const-string v0, "VCardExchangeClientHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "**** Error setting up content "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for OPP Exchange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    const/16 v0, 0x1e1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->processError(IJLjava/lang/Throwable;)V

    .line 86
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->finish()V

    .line 87
    return-void
.end method

.method public onOpOwnerVcardNotSet(Ljava/lang/String;)V
    .locals 4
    .parameter "filePathName"

    .prologue
    .line 122
    const-string v0, "VCardExchangeClientHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "**** Error setting up content. Owner vcard file not found:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/16 v0, 0x1e1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->processError(IJLjava/lang/Throwable;)V

    .line 128
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->finish()V

    .line 129
    return-void
.end method

.method public onOpcAmpStateChanged(Ljava/lang/String;I)V
    .locals 0
    .parameter "peerBDAddress"
    .parameter "ampState"

    .prologue
    .line 205
    return-void
.end method

.method public onOpcEnable()V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method public onOpcObjectPushed(ILjava/lang/String;)V
    .locals 8
    .parameter "status"
    .parameter "filePathName"

    .prologue
    .line 149
    const-string v0, "VCardExchangeClientHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Entering onOpcObjectPushed()..FilepathName = "

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

    .line 152
    const/4 v7, 0x0

    .line 153
    .local v7, finished:Z
    sget-object v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_PUSHED:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->setState(Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;)V

    .line 155
    monitor-enter p0

    .line 156
    if-nez p1, :cond_0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-wide v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->setStatusSuccess(JJJ)V

    .line 165
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->mVCardSendFinished:Z

    .line 167
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->finalizeExchange()Z

    move-result v7

    .line 168
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    const-string v0, "VCardExchangeClientHandler"

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

    const-string v2, "Leaving onOpcObjectPushed()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    if-eqz v7, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->finish()V

    .line 183
    :goto_1
    return-void

    .line 161
    :cond_0
    const/16 v0, 0x1e0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->processError(IJLjava/lang/Throwable;)V

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 180
    :cond_1
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->resetRequestForExchange()V

    .line 181
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    const/16 v1, 0xbb8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->pet(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onOpcObjectReceived(ILjava/lang/String;)V
    .locals 8
    .parameter "status"
    .parameter "filePathName"

    .prologue
    .line 213
    const-string v0, "VCardExchangeClientHandler"

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

    .line 216
    const/4 v7, 0x0

    .line 217
    .local v7, finished:Z
    sget-object v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_RECEIVED:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->setState(Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;)V

    .line 218
    monitor-enter p0

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iput-object p2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->mFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/broadcom/bt/app/opp/util/Utils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    .line 221
    iput-object p2, p0, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->mReceivedVCardFilepath:Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {v0, v1}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->updateRequest(Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;)Z

    .line 223
    if-nez p1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-wide v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->setStatusSuccess(JJJ)V

    .line 230
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->mVCardReceivedFinished:Z

    .line 231
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->finalizeExchange()Z

    move-result v7

    .line 232
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    const-string v0, "VCardExchangeClientHandler"

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

    .line 240
    if-eqz v7, :cond_1

    .line 241
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->finish()V

    .line 245
    :goto_1
    return-void

    .line 227
    :cond_0
    const/16 v0, 0x1e0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->processError(IJLjava/lang/Throwable;)V

    goto :goto_0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    const/16 v1, 0xbb8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->pet(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onOpcOpen()V
    .locals 0

    .prologue
    .line 326
    return-void
.end method

.method public onOpcProgress(JJ)V
    .locals 3
    .parameter "bytesTransferred"
    .parameter "totalBytes"

    .prologue
    .line 136
    sget-object v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_PROGRESS:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->setState(Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;)V

    .line 137
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    const/16 v1, 0x3a98

    sget-object v2, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_PROGRESS:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->pet(ILjava/lang/Object;)V

    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->incrementProgress(JJ)V

    .line 141
    monitor-exit p0

    .line 145
    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onOpsAmpStateChanged(Ljava/lang/String;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 207
    return-void
.end method

.method public onParseComplete(Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;)V
    .locals 8
    .parameter "res"

    .prologue
    const/16 v2, 0x1e7

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 289
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mSuccess:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mCount:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mCantCommitCount:I

    if-lt v0, v1, :cond_2

    .line 291
    :cond_0
    if-nez p1, :cond_1

    .line 292
    .local v7, err:Ljava/lang/Throwable;
    :goto_0
    const-string v0, "VCardExchangeClientHandler"

    const-string v1, "Unable to process vCard from EXCHANGE"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1, v7}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->processError(IJLjava/lang/Throwable;)V

    .line 320
    .end local v7           #err:Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 291
    :cond_1
    iget-object v7, p1, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mError:Ljava/lang/Throwable;

    goto :goto_0

    .line 298
    :cond_2
    iget v0, p1, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mAddedCount:I

    if-gtz v0, :cond_3

    iget v0, p1, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mUpdatedCount:I

    if-lez v0, :cond_4

    .line 301
    :cond_3
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v0, p1, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mCommittedUris:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    .line 302
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {v0, v1}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->updateRequest(Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;)Z

    .line 303
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-wide v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->setStatusSuccess(JJJ)V

    goto :goto_1

    .line 305
    :cond_4
    iget v0, p1, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mDuplicateCount:I

    if-lez v0, :cond_5

    .line 307
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v1, v1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    invoke-static {v1}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->createDuplicateUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    .line 309
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {v0, v1}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->updateRequest(Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;)Z

    .line 310
    const/16 v0, 0x1e6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2, v7}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->processError(IJLjava/lang/Throwable;)V

    goto :goto_1

    .line 315
    :cond_5
    const-string v0, "VCardExchangeClientHandler"

    const-string v1, "Unexpected error while parsing vCard file"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1, v7}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->processError(IJLjava/lang/Throwable;)V

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
    .line 279
    const/4 v1, 0x2

    if-ne p5, v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {v1}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->createDupValuesForInsert(Lcom/broadcom/bt/app/opp/data/Job;)Landroid/content/ContentValues;

    move-result-object v0

    .line 282
    .local v0, values:Landroid/content/ContentValues;
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3, p6}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->updateDupValuesForInsert(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/ContentValues;

    .line 284
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/opp/BluetoothShare;->DUP_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 286
    .end local v0           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method protected processRequest()V
    .locals 3

    .prologue
    .line 52
    const-string v0, "VCardExchangeClientHandler"

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

    .line 55
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->setupContent()V

    .line 57
    const-string v0, "VCardExchangeClientHandler"

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

    .line 60
    return-void
.end method

.method public setupContent()V
    .locals 2

    .prologue
    .line 63
    sget-object v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_CONTENT_SETUP:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->setState(Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;)V

    .line 64
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    const-string v1, "text/x-vcard"

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    .line 65
    const-string v0, "/data/data/com.android.bluetooth/.tmp/op_default.vcf"

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->mFilePath:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->mFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/broadcom/bt/app/opp/util/Utils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->mFilePath:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {v0, v1}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->updateRequest(Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;)Z

    .line 70
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->mVCardFile:Ljava/io/File;

    .line 71
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->mVCardFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 72
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->mVCardFile:Ljava/io/File;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContext:Lcom/broadcom/bt/app/opp/util/BaseService;

    invoke-static {v0, v1}, Lcom/broadcom/bt/app/utils/ProfileUtils;->createProfileVCardFile(Ljava/io/File;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/broadcom/bt/app/opp/util/Utils;->setDefaultFilePermission(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->onContentSetup()V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->onContentSetupError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected startObjectExchange()V
    .locals 4

    .prologue
    .line 98
    const-string v0, "VCardExchangeClientHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Entering startObjectExchange(): Thread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_START:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->setState(Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;)V

    .line 105
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    const/16 v1, 0x7530

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->mService:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    sget-object v3, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_START:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->startOrRestartWatchdog(ILcom/broadcom/bt/app/opp/util/IWatchdogHandler;Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->exchangeVcard(Ljava/lang/String;)V

    .line 112
    const-string v0, "VCardExchangeClientHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Leaving startObjectExchange()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method
