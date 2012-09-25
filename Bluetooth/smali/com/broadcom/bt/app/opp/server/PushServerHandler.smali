.class public Lcom/broadcom/bt/app/opp/server/PushServerHandler;
.super Lcom/broadcom/bt/app/opp/server/BaseServerHandler;
.source "PushServerHandler.java"

# interfaces
.implements Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;


# instance fields
.field protected mInboundFile:Ljava/io/File;

.field private mNeedToAskForDupHandling:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/app/opp/server/PushServerHandler;)Lcom/broadcom/bt/app/opp/data/Job;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    return-object v0
.end method

.method static synthetic access$100(Lcom/broadcom/bt/app/opp/server/PushServerHandler;)Lcom/broadcom/bt/app/opp/util/BaseService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContext:Lcom/broadcom/bt/app/opp/util/BaseService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/broadcom/bt/app/opp/server/PushServerHandler;)Lcom/broadcom/bt/app/opp/data/Job;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    return-object v0
.end method

.method static synthetic access$300(Lcom/broadcom/bt/app/opp/server/PushServerHandler;)Lcom/broadcom/bt/app/opp/data/Job;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    return-object v0
.end method

.method static synthetic access$400(Lcom/broadcom/bt/app/opp/server/PushServerHandler;JJJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 41
    invoke-virtual/range {p0 .. p6}, Lcom/broadcom/bt/app/opp/server/PushServerHandler;->setStatusSuccess(JJJ)V

    return-void
.end method

.method protected static checkCanReceiveFile(Ljava/lang/String;IJ)I
    .locals 8
    .parameter "fileName"
    .parameter "fileFormat"
    .parameter "totalBytes"

    .prologue
    const/16 v4, 0x1e3

    .line 68
    const-string v5, "PushServerHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BTUI] checkCanReceiveFile() : fileName("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") fileFormat("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {p0}, Lcom/broadcom/bt/app/opp/util/Utils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "unsupport."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x2

    if-le p1, v5, :cond_1

    const/16 v5, 0xff

    if-ge p1, v5, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v4

    .line 78
    :cond_1
    invoke-static {p0}, Lcom/broadcom/bt/app/opp/util/Utils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, fileExt:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 82
    const-string v5, "PushServerHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File Ext = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v5, "vcs"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "vnt"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "vmg"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 91
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 92
    const/16 v4, 0x1ed

    goto :goto_0

    .line 96
    :cond_3
    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, stfs:Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-long v4, v4

    cmp-long v4, v4, p2

    if-gez v4, :cond_4

    .line 105
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    div-long v4, p2, v4

    const-wide/16 v6, 0x1

    add-long v2, v4, v6

    .line 107
    .local v2, usableBlocks:J
    const-string v4, "PushServerHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "usableBlocks: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_4

    .line 111
    const-string v4, "PushServerHandler"

    const-string v5, "STATUS_ERROR_SDCARD_FULL"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/16 v4, 0x1ee

    goto/16 :goto_0

    .line 117
    .end local v2           #usableBlocks:J
    :cond_4
    const/4 v4, -0x1

    goto/16 :goto_0
.end method

.method public static getDirPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filePathName"

    .prologue
    .line 481
    if-nez p0, :cond_1

    .line 482
    const/4 p0, 0x0

    .line 487
    .end local p0
    .local v0, index:I
    :cond_0
    :goto_0
    return-object p0

    .line 483
    .end local v0           #index:I
    .restart local p0
    :cond_1
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 484
    .restart local v0       #index:I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 485
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public checkforError()Z
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method public getUriForFilename(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "fileName"

    .prologue
    .line 462
    const/4 v0, 0x0

    return-object v0
.end method

.method protected needsToAskUserForDupProcessing()Z
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/broadcom/bt/app/opp/server/PushServerHandler;->mNeedToAskForDupHandling:Z

    return v0
.end method

.method public onOpsClose()V
    .locals 0

    .prologue
    .line 390
    return-void
.end method

.method public onOpsObjectReceived(ILjava/lang/String;)V
    .locals 7
    .parameter "format"
    .parameter "filePathName"

    .prologue
    .line 345
    const-string v0, "PushServerHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onOpsObjectReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-wide v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    iput-wide v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    .line 354
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/server/PushServerHandler;->needsToAskUserForDupProcessing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {v0, v1}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->updateRequest(Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;)Z

    .line 356
    const/16 v0, 0x1e6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/broadcom/bt/app/opp/server/PushServerHandler;->processError(IJLjava/lang/Throwable;)V

    .line 363
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-wide v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/app/opp/server/PushServerHandler;->setStatusSuccess(JJJ)V

    .line 361
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/server/PushServerHandler;->processReceivedFile()V

    goto :goto_0
.end method

.method public onOpsProgress(JJ)V
    .locals 3
    .parameter "bytesTransferred"
    .parameter "totalBytes"

    .prologue
    .line 334
    const-string v0, "PushServerHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onOpsProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/broadcom/bt/app/opp/server/PushServerHandler;->incrementProgress(JJ)V

    .line 338
    return-void
.end method

.method public onResultsAvailable(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 446
    .local p1, fileNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 447
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 448
    .local v0, contentUri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 449
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    .line 450
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {v1, v2}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->updateRequest(Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;)Z

    .line 453
    .end local v0           #contentUri:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method protected processReceivedFile()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContext:Lcom/broadcom/bt/app/opp/util/BaseService;

    new-instance v1, Lcom/broadcom/bt/app/opp/server/PushServerHandler$1;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/app/opp/server/PushServerHandler$1;-><init>(Lcom/broadcom/bt/app/opp/server/PushServerHandler;)V

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/app/opp/util/BaseService;->postAsyncRequest(Ljava/lang/Runnable;)V

    .line 385
    return-void
.end method

.method public processRequest()V
    .locals 15

    .prologue
    .line 127
    const-string v12, "PushServerHandler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "processRequest"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v12, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-wide v10, v12, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    .line 130
    .local v10, totalBytes:J
    iget-object v12, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget v12, v12, Lcom/broadcom/bt/app/opp/data/Job;->mRequestType:I

    invoke-static {v12}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->toReceivedOp(I)I

    move-result v7

    .line 131
    .local v7, operation:I
    iget-object v12, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v5, v12, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    .line 137
    .local v5, filePathName:Ljava/lang/String;
    iget-object v12, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget v3, v12, Lcom/broadcom/bt/app/opp/data/Job;->mFileFormat:I

    .line 139
    .local v3, fileFormat:I
    const-string v12, "PushServerHandler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "processRequest() File: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {v5, v3, v10, v11}, Lcom/broadcom/bt/app/opp/server/PushServerHandler;->checkCanReceiveFile(Ljava/lang/String;IJ)I

    move-result v0

    .line 147
    .local v0, err:I
    if-ltz v0, :cond_0

    .line 148
    const-string v12, "PushServerHandler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to process received file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v14, v14, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ". Error = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v14, 0x0

    invoke-virtual {p0, v0, v12, v13, v14}, Lcom/broadcom/bt/app/opp/server/PushServerHandler;->processError(IJLjava/lang/Throwable;)V

    .line 151
    iget-object v12, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    const/4 v13, 0x1

    invoke-virtual {v12, v7, v13, v5}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->grantAccess(IILjava/lang/String;)V

    .line 280
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-static {v5}, Lcom/broadcom/bt/app/opp/util/Utils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, fileExt:Ljava/lang/String;
    invoke-static {v2}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeFromFileExt(Ljava/lang/String;)I

    move-result v6

    .line 161
    .local v6, fileType:I
    const/4 v12, 0x1

    if-ne v6, v12, :cond_1

    .line 162
    invoke-static {v5}, Lcom/broadcom/bt/app/opp/server/PushServerHandler;->getDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 163
    .local v8, tDirname:Ljava/lang/String;
    invoke-static {v5}, Lcom/broadcom/bt/app/opp/util/Utils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 165
    .local v9, tFilename:Ljava/lang/String;
    const-string v12, ".vcf"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 166
    const-string v9, "noname.vcf"

    .line 167
    iget-object v12, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iput-object v9, v12, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    .line 168
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 175
    .end local v8           #tDirname:Ljava/lang/String;
    .end local v9           #tFilename:Ljava/lang/String;
    :cond_1
    invoke-static {v6}, Lcom/broadcom/bt/app/opp/util/Utils;->checkDestinationDir(I)Z

    .line 178
    const/4 v4, 0x0

    .line 181
    .local v4, filePathChanged:Z
    const-string v12, "ro.build.target_country"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "JP"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 182
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    .local v1, f:Ljava/io/File;
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 198
    invoke-static {v1}, Lcom/broadcom/bt/app/opp/util/Utils;->getNewFileName(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 199
    if-nez v1, :cond_4

    .line 200
    const-string v12, "PushServerHandler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[BTUI] ERROR: unable to create a new file name for duplicate file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v14, 0x0

    invoke-virtual {p0, v0, v12, v13, v14}, Lcom/broadcom/bt/app/opp/server/PushServerHandler;->processError(IJLjava/lang/Throwable;)V

    .line 203
    iget-object v12, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    const/4 v13, 0x1

    invoke-virtual {v12, v7, v13, v5}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->grantAccess(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 185
    .end local v1           #f:Ljava/io/File;
    :cond_2
    invoke-static {v6}, Lcom/broadcom/bt/app/opp/util/Utils;->needToMoveFile(I)Z

    move-result v12

    if-nez v12, :cond_3

    .line 186
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v1       #f:Ljava/io/File;
    goto :goto_1

    .line 188
    .end local v1           #f:Ljava/io/File;
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-static {v6}, Lcom/broadcom/bt/app/opp/util/Utils;->getDestinationDir(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v5}, Lcom/broadcom/bt/app/opp/util/Utils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .restart local v1       #f:Ljava/io/File;
    const/4 v4, 0x1

    goto :goto_1

    .line 206
    :cond_4
    iget-object v12, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/broadcom/bt/app/opp/util/Utils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    .line 207
    const/4 v4, 0x1

    .line 208
    const-string v12, "PushServerHandler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[BTUI] [OPP] ### Duplicate : newFilePath("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") Hint("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v14, v14, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_5
    if-eqz v4, :cond_6

    .line 263
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 264
    iget-object v12, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iput-object v5, v12, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    .line 265
    iget-object v12, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v13, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {v12, v13}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->updateRequest(Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;)Z

    .line 268
    :cond_6
    iput-object v1, p0, Lcom/broadcom/bt/app/opp/server/PushServerHandler;->mInboundFile:Ljava/io/File;

    .line 274
    iget-object v12, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    if-eqz v12, :cond_7

    .line 275
    const-string v12, "PushServerHandler"

    const-string v13, "[BTUI] ### check : Always Allow ###"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v12, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    const/4 v13, 0x0

    invoke-virtual {v12, v7, v13, v5}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->grantAccess(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 278
    :cond_7
    const-string v12, "PushServerHandler"

    const-string v13, "[BTUI] ### check : mOppProxy is null ###"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
