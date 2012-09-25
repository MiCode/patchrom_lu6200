.class public Lcom/broadcom/bt/app/opp/data/Job;
.super Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
.source "Job.java"


# instance fields
.field public mCancelRequested:Z

.field public mEndTimestamp:J

.field public mErrorCode:Ljava/lang/String;

.field public mErrorInfo:Ljava/lang/String;

.field public mFileFormat:I

.field public mRemoteName:Ljava/lang/String;

.field public mRequestId:Ljava/lang/String;

.field public mRequestType:I

.field public mRole:I

.field public mTransactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 19

    .prologue
    .line 51
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const-wide/16 v12, -0x1

    const-wide/16 v14, -0x1

    const-wide/16 v16, -0x1

    const/16 v18, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v18}, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIJJJZ)V

    .line 54
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/app/opp/data/Job;->mRole:I

    .line 55
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/app/opp/data/Job;->mRequestType:I

    .line 56
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/app/opp/data/Job;->mFileFormat:I

    .line 57
    const-wide/16 v1, -0x1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/broadcom/bt/app/opp/data/Job;->mEndTimestamp:J

    .line 58
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/broadcom/bt/app/opp/data/Job;->mCancelRequested:Z

    .line 65
    return-void
.end method


# virtual methods
.method public getCurrentBytes(J)J
    .locals 4
    .parameter "defaultVal"

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide p1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    .end local p1
    :cond_0
    return-wide p1
.end method

.method public getJobUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getTotalBytes(J)J
    .locals 4
    .parameter "defaultVal"

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide p1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    .end local p1
    :cond_0
    return-wide p1
.end method

.method public isStatusFinished()Z
    .locals 4

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/broadcom/bt/app/opp/data/Job;->mEndTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 1
    .parameter "filePath"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    .line 69
    invoke-static {p1}, Lcom/broadcom/bt/app/opp/util/Utils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    .line 70
    return-void
.end method
