.class public Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;
.super Lcom/broadcom/bt/app/opp/server/PushServerHandler;
.source "VCardPushServerHandler.java"

# interfaces
.implements Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;


# instance fields
.field private VCpath:Landroid/net/Uri;

.field private mLastStoredContactUri:Landroid/net/Uri;

.field private mTmpDupValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/server/PushServerHandler;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;->VCpath:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;->processReceivedVCard(Ljava/lang/String;)V

    return-void
.end method

.method private cleanupFile()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/PushServerHandler;->mInboundFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/PushServerHandler;->mInboundFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/PushServerHandler;->mInboundFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 51
    :cond_0
    return-void
.end method

.method private processReceivedVCard(Ljava/lang/String;)V
    .locals 3
    .parameter "filePathName"

    .prologue
    .line 74
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {v1}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->createDupValuesForInsert(Lcom/broadcom/bt/app/opp/data/Job;)Landroid/content/ContentValues;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;->mTmpDupValues:Landroid/content/ContentValues;

    .line 75
    new-instance v0, Lcom/broadcom/bt/service/opp/VCardUtil;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContext:Lcom/broadcom/bt/app/opp/util/BaseService;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/opp/VCardUtil;-><init>(Landroid/content/Context;)V

    .line 76
    .local v0, util:Lcom/broadcom/bt/service/opp/VCardUtil;
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p0, v2}, Lcom/broadcom/bt/service/opp/VCardUtil;->storeVCard(Ljava/lang/String;ILcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;Landroid/os/Handler;)Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    .line 77
    return-void
.end method


# virtual methods
.method public onOpsClose()V
    .locals 2

    .prologue
    .line 70
    const-string v0, "OPP.VCardPushServerHandler"

    const-string v1, "OnOpsClose()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method public onParseComplete(Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;)V
    .locals 9
    .parameter "res"

    .prologue
    const/16 v3, 0x1e7

    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 93
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;->mTmpDupValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 94
    iput-object v8, p0, Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;->mTmpDupValues:Landroid/content/ContentValues;

    .line 96
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mSuccess:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mCount:I

    if-ge v0, v2, :cond_2

    .line 97
    :cond_0
    if-nez p1, :cond_1

    .line 98
    .local v8, err:Ljava/lang/Throwable;
    :goto_0
    const-string v0, "OPP.VCardPushServerHandler"

    const-string v1, "Unable to process received vCard"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v3, v0, v1, v8}, Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;->processError(IJLjava/lang/Throwable;)V

    .line 101
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;->cleanupFile()V

    .line 137
    .end local v8           #err:Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 97
    :cond_1
    iget-object v8, p1, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mError:Ljava/lang/Throwable;

    goto :goto_0

    .line 104
    :cond_2
    iget v0, p1, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mDuplicateCount:I

    if-gtz v0, :cond_5

    .line 105
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;->cleanupFile()V

    .line 110
    iget v0, p1, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mAddedCount:I

    iget v1, p1, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mUpdatedCount:I

    add-int v7, v0, v1

    .line 111
    .local v7, committedCount:I
    if-gtz v7, :cond_3

    .line 112
    const-string v0, "OPP.VCardPushServerHandler"

    const-string v1, "No contacts exist in received vCard file"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v3, v0, v1, v8}, Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;->processError(IJLjava/lang/Throwable;)V

    goto :goto_1

    .line 116
    :cond_3
    if-ne v7, v2, :cond_4

    .line 118
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;->mLastStoredContactUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    .line 123
    :goto_2
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {v0, v1}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->updateRequest(Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;)Z

    .line 126
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-wide v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;->setStatusSuccess(JJJ)V

    .line 129
    const-string v0, "OPP.VCardPushServerHandler"

    const-string v1, "Duplicate contacts exist and not processed. Keeping received vcf file..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 121
    :cond_4
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;->mLastStoredContactUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    goto :goto_2

    .line 134
    .end local v7           #committedCount:I
    :cond_5
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v1, v1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    invoke-static {v1}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->createDuplicateUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {v0, v1}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->updateRequest(Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;)Z

    .line 136
    const/16 v0, 0x1e6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2, v8}, Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;->processError(IJLjava/lang/Throwable;)V

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
    .line 82
    const/4 v0, 0x2

    if-ne p5, v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;->mTmpDupValues:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3, p6}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->updateDupValuesForInsert(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/ContentValues;

    .line 85
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->DUP_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;->mTmpDupValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iput-object p6, p0, Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;->mLastStoredContactUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method protected processReceivedFile()V
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lcom/broadcom/bt/app/opp/OppPreferences;->autoImportVCard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    const-string v0, "OPP.VCardPushServerHandler"

    const-string v1, "Auto import enabled...Importing vCard..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;->VCpath:Landroid/net/Uri;

    .line 57
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;->VCpath:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;->VCpath:Landroid/net/Uri;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContext:Lcom/broadcom/bt/app/opp/util/BaseService;

    new-instance v1, Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler$1;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler$1;-><init>(Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;)V

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/app/opp/util/BaseService;->postAsyncRequest(Ljava/lang/Runnable;)V

    .line 66
    :cond_1
    return-void
.end method
