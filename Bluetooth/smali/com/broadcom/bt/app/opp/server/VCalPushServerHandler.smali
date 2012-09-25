.class public Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler;
.super Lcom/broadcom/bt/app/opp/server/PushServerHandler;
.source "VCalPushServerHandler.java"

# interfaces
.implements Lcom/broadcom/bt/service/opp/VCalUtil$ProgressHandler;


# instance fields
.field private mLastStoredVCalUri:Landroid/net/Uri;

.field private mTmpDupValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/server/PushServerHandler;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler;)Lcom/broadcom/bt/app/opp/data/Job;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    return-object v0
.end method

.method static synthetic access$100(Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler;->processReceivedVCal(Ljava/lang/String;)V

    return-void
.end method

.method private cleanupFile()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/PushServerHandler;->mInboundFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/PushServerHandler;->mInboundFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/PushServerHandler;->mInboundFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 50
    :cond_0
    return-void
.end method

.method private processReceivedVCal(Ljava/lang/String;)V
    .locals 3
    .parameter "filePathName"

    .prologue
    .line 74
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {v1}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->createDupValuesForInsert(Lcom/broadcom/bt/app/opp/data/Job;)Landroid/content/ContentValues;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler;->mTmpDupValues:Landroid/content/ContentValues;

    .line 75
    new-instance v0, Lcom/broadcom/bt/service/opp/VCalUtil;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContext:Lcom/broadcom/bt/app/opp/util/BaseService;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/opp/VCalUtil;-><init>(Landroid/content/Context;)V

    .line 76
    .local v0, util:Lcom/broadcom/bt/service/opp/VCalUtil;
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p0, v2}, Lcom/broadcom/bt/service/opp/VCalUtil;->storeVCal(Ljava/lang/String;ILcom/broadcom/bt/service/opp/VCalUtil$ProgressHandler;Landroid/os/Handler;)Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    .line 77
    return-void
.end method


# virtual methods
.method public onOpsClose()V
    .locals 2

    .prologue
    .line 70
    const-string v0, "OPP.VCalPushServerHandler"

    const-string v1, "OnOpsClose()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method public onParseComplete(Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;)V
    .locals 9
    .parameter "res"

    .prologue
    const/16 v3, 0x1f3

    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 93
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler;->mTmpDupValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 94
    iput-object v8, p0, Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler;->mTmpDupValues:Landroid/content/ContentValues;

    .line 96
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mSuccess:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mCount:I

    if-ge v0, v2, :cond_3

    .line 97
    :cond_0
    if-nez p1, :cond_1

    .line 98
    .local v8, err:Ljava/lang/Throwable;
    :goto_0
    const-string v0, "OPP.VCalPushServerHandler"

    const-string v1, "Unable to process received vCal"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    if-nez p1, :cond_2

    .line 100
    const-string v0, "OPP.VCalPushServerHandler"

    const-string v1, "res = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v3, v0, v1, v8}, Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler;->processError(IJLjava/lang/Throwable;)V

    .line 105
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler;->cleanupFile()V

    .line 140
    .end local v8           #err:Ljava/lang/Throwable;
    :goto_2
    return-void

    .line 97
    :cond_1
    iget-object v8, p1, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mError:Ljava/lang/Throwable;

    goto :goto_0

    .line 102
    .restart local v8       #err:Ljava/lang/Throwable;
    :cond_2
    const-string v0, "OPP.VCalPushServerHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSuccess/mCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 108
    .end local v8           #err:Ljava/lang/Throwable;
    :cond_3
    iget v0, p1, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mDuplicateCount:I

    if-gtz v0, :cond_6

    .line 109
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler;->cleanupFile()V

    .line 114
    iget v0, p1, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mAddedCount:I

    iget v1, p1, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mUpdatedCount:I

    add-int v7, v0, v1

    .line 115
    .local v7, committedCount:I
    if-gtz v7, :cond_4

    .line 116
    const-string v0, "OPP.VCalPushServerHandler"

    const-string v1, "No vCalendar events exist in received file"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v3, v0, v1, v8}, Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler;->processError(IJLjava/lang/Throwable;)V

    goto :goto_2

    .line 119
    :cond_4
    if-ne v7, v2, :cond_5

    .line 121
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler;->mLastStoredVCalUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    .line 127
    :goto_3
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {v0, v1}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->updateRequest(Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;)Z

    .line 130
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-wide v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler;->setStatusSuccess(JJJ)V

    goto :goto_2

    .line 125
    :cond_5
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler;->mLastStoredVCalUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    goto :goto_3

    .line 135
    .end local v7           #committedCount:I
    :cond_6
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v1, v1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    invoke-static {v1}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->createDuplicateUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {v0, v1}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->updateRequest(Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;)Z

    .line 137
    const/16 v0, 0x1e6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2, v8}, Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler;->processError(IJLjava/lang/Throwable;)V

    .line 139
    const-string v0, "OPP.VCalPushServerHandler"

    const-string v1, "Duplicate calendar events exist and not processed. Keeping received vcs file..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public onVCalProcessed(Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;ILjava/lang/String;Ljava/lang/Object;ILandroid/net/Uri;)V
    .locals 3
    .parameter "res"
    .parameter "index"
    .parameter "displayName"
    .parameter "entry"
    .parameter "status"
    .parameter "storeUri"

    .prologue
    .line 82
    const/4 v0, 0x2

    if-ne p5, v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler;->mTmpDupValues:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3, p6}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->updateDupValuesForInsert(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/ContentValues;

    .line 84
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->DUP_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler;->mTmpDupValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iput-object p6, p0, Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler;->mLastStoredVCalUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method protected processReceivedFile()V
    .locals 3

    .prologue
    .line 54
    invoke-static {}, Lcom/broadcom/bt/app/opp/OppPreferences;->autoImportVCalendar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "OPP.VCalPushServerHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "######## this is a vcal store in calendar db #### format and mRequest.mFilePath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget v2, v2, Lcom/broadcom/bt/app/opp/data/Job;->mFileFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContext:Lcom/broadcom/bt/app/opp/util/BaseService;

    new-instance v1, Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler$1;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler$1;-><init>(Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler;)V

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/app/opp/util/BaseService;->postAsyncRequest(Ljava/lang/Runnable;)V

    .line 66
    :cond_0
    return-void
.end method
