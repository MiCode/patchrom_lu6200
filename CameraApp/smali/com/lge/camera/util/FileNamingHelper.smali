.class public Lcom/lge/camera/util/FileNamingHelper;
.super Ljava/lang/Object;
.source "FileNamingHelper.java"


# static fields
.field public static final STATUS_NOT_READY:I = 0x0

.field public static final STATUS_READY:I = 0x1


# instance fields
.field private mCheckAVIThread:Ljava/lang/Thread;

.field private mCheckJPEGThread:Ljava/lang/Thread;

.field private mCheckThread:Ljava/lang/Thread;

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrFileName:Ljava/lang/String;

.field private mDCFFileName:Ljava/lang/String;

.field private mDCFFileStatus:I

.field private mDCFFirstNumber:I

.field private mDCFFirstNumberForTMS:I

.field private mDCFNumber:J

.field private mDCFNumberForTMS:J

.field private mDigitnum:I

.field private mDigitnumForTMS:I

.field private mFileDirectory:Ljava/lang/String;

.field private mImageFileName:Ljava/lang/String;

.field private mImageFileNumber:J

.field private mImageFileNumberForTMS:J

.field private mImageFileStatus:I

.field private mInCheckDCF:Z

.field private mInCheckImage:Z

.field private mInCheckVideo:Z

.field private mLastMode:I

.field private mMediator:Lcom/lge/camera/Mediator;

.field private mStopThread:Z

.field private mStorage:I

.field private mStorageState:I

.field private mVideoFileName:Ljava/lang/String;

.field private mVideoFileNumber:J

.field private mVideoFileStatus:I

.field private temp:J


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;Landroid/content/Context;I)V
    .locals 4
    .parameter "mediator"
    .parameter "context"
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mLastMode:I

    .line 47
    iput v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileStatus:I

    .line 48
    iput v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileStatus:I

    .line 49
    iput v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFileStatus:I

    .line 55
    iput-boolean v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mStopThread:Z

    .line 58
    iput-object v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mCheckJPEGThread:Ljava/lang/Thread;

    .line 59
    iput-object v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mCheckAVIThread:Ljava/lang/Thread;

    .line 60
    iput-object v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mCheckThread:Ljava/lang/Thread;

    .line 754
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/util/FileNamingHelper;->temp:J

    .line 63
    const-string v0, "CameraApp"

    const-string v1, "create()-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iput-object p1, p0, Lcom/lge/camera/util/FileNamingHelper;->mMediator:Lcom/lge/camera/Mediator;

    .line 66
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mContext:Ljava/lang/ref/WeakReference;

    .line 68
    invoke-virtual {p0}, Lcom/lge/camera/util/FileNamingHelper;->setStorageInit()V

    .line 69
    iget v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mStorage:I

    invoke-direct {p0, v0}, Lcom/lge/camera/util/FileNamingHelper;->initializeFileNumber(I)V

    .line 71
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetUseDCFRule()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p0, p3, v3, v2}, Lcom/lge/camera/util/FileNamingHelper;->startCheckFileName_DCF(IZZ)V

    .line 80
    :cond_0
    :goto_0
    const-string v0, "CameraApp"

    const-string v1, "create()-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void

    .line 74
    :cond_1
    invoke-virtual {p0, p3, v3, v2}, Lcom/lge/camera/util/FileNamingHelper;->startCheckFileName(IZZ)V

    .line 75
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetCarrierCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 77
    invoke-virtual {p0, v2, v3, v2}, Lcom/lge/camera/util/FileNamingHelper;->startCheckFileName(IZZ)V

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/lge/camera/util/FileNamingHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/lge/camera/util/FileNamingHelper;->mInCheckImage:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lge/camera/util/FileNamingHelper;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumber:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/lge/camera/util/FileNamingHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/lge/camera/util/FileNamingHelper;->mInCheckVideo:Z

    return p1
.end method

.method static synthetic access$102(Lcom/lge/camera/util/FileNamingHelper;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumber:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/lge/camera/util/FileNamingHelper;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileNumber:J

    return-wide v0
.end method

.method static synthetic access$1108(Lcom/lge/camera/util/FileNamingHelper;)J
    .locals 4
    .parameter "x0"

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileNumber:J

    return-wide v0
.end method

.method static synthetic access$1200(J)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-static {p0, p1}, Lcom/lge/camera/util/FileNamingHelper;->makeVideoFileName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lge/camera/util/FileNamingHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/lge/camera/util/FileNamingHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/lge/camera/util/FileNamingHelper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileStatus:I

    return p1
.end method

.method static synthetic access$1502(Lcom/lge/camera/util/FileNamingHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/lge/camera/util/FileNamingHelper;->mInCheckDCF:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/lge/camera/util/FileNamingHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumber:I

    return v0
.end method

.method static synthetic access$1700(Lcom/lge/camera/util/FileNamingHelper;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFNumber:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/lge/camera/util/FileNamingHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumberForTMS:I

    return v0
.end method

.method static synthetic access$1900(Lcom/lge/camera/util/FileNamingHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mDigitnumForTMS:I

    return v0
.end method

.method static synthetic access$200(Lcom/lge/camera/util/FileNamingHelper;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumberForTMS:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/lge/camera/util/FileNamingHelper;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFNumberForTMS:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/lge/camera/util/FileNamingHelper;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumberForTMS:J

    return-wide p1
.end method

.method static synthetic access$2100(IIJ)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 19
    invoke-static {p0, p1, p2, p3}, Lcom/lge/camera/util/FileNamingHelper;->makeFileNameByDCFRule(IIJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/lge/camera/util/FileNamingHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mDigitnum:I

    return v0
.end method

.method static synthetic access$2300(Lcom/lge/camera/util/FileNamingHelper;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/lge/camera/util/FileNamingHelper;->addDCFCount(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/lge/camera/util/FileNamingHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mCurrFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/lge/camera/util/FileNamingHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/lge/camera/util/FileNamingHelper;->mCurrFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/lge/camera/util/FileNamingHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/lge/camera/util/FileNamingHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/lge/camera/util/FileNamingHelper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFileStatus:I

    return p1
.end method

.method static synthetic access$300(J)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-static {p0, p1}, Lcom/lge/camera/util/FileNamingHelper;->makePictureFileName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/util/FileNamingHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mFileDirectory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/camera/util/FileNamingHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mStopThread:Z

    return v0
.end method

.method static synthetic access$502(Lcom/lge/camera/util/FileNamingHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/lge/camera/util/FileNamingHelper;->mStopThread:Z

    return p1
.end method

.method static synthetic access$600(Lcom/lge/camera/util/FileNamingHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/lge/camera/util/FileNamingHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/lge/camera/util/FileNamingHelper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileStatus:I

    return p1
.end method

.method static synthetic access$800(Lcom/lge/camera/util/FileNamingHelper;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mContext:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/camera/util/FileNamingHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mStorage:I

    return v0
.end method

.method private addDCFCount(Z)V
    .locals 12
    .parameter "useTimeMachine"

    .prologue
    const/16 v11, 0x5a

    const/16 v10, 0x39

    .line 853
    const/4 v3, 0x0

    .local v3, digitNum:I
    const/4 v0, 0x0

    .line 854
    .local v0, dcfFirstNumber:I
    const-wide/16 v1, 0x0

    .line 856
    .local v1, dcfNumber:J
    if-eqz p1, :cond_3

    .line 857
    iget v3, p0, Lcom/lge/camera/util/FileNamingHelper;->mDigitnumForTMS:I

    .line 858
    iget v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumberForTMS:I

    .line 859
    iget-wide v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFNumberForTMS:J

    .line 866
    :goto_0
    const-wide/16 v6, 0x1

    add-long/2addr v1, v6

    .line 867
    const-wide/high16 v6, 0x4024

    int-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 872
    .local v4, tmpNum:D
    long-to-double v6, v1

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_2

    .line 873
    const-wide/16 v1, 0x0

    .line 874
    const/16 v6, 0x2f

    if-le v0, v6, :cond_0

    if-lt v0, v10, :cond_1

    :cond_0
    const/16 v6, 0x41

    if-le v0, v6, :cond_4

    if-ge v0, v11, :cond_4

    .line 876
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 886
    :cond_2
    :goto_1
    if-eqz p1, :cond_6

    .line 887
    iput v3, p0, Lcom/lge/camera/util/FileNamingHelper;->mDigitnumForTMS:I

    .line 888
    iput v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumberForTMS:I

    .line 889
    iput-wide v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFNumberForTMS:J

    .line 897
    :goto_2
    return-void

    .line 861
    .end local v4           #tmpNum:D
    :cond_3
    iget v3, p0, Lcom/lge/camera/util/FileNamingHelper;->mDigitnum:I

    .line 862
    iget v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumber:I

    .line 863
    iget-wide v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFNumber:J

    goto :goto_0

    .line 877
    .restart local v4       #tmpNum:D
    :cond_4
    if-ne v0, v10, :cond_5

    .line 878
    const/16 v0, 0x41

    goto :goto_1

    .line 879
    :cond_5
    if-ne v0, v11, :cond_2

    .line 880
    const/16 v0, 0x30

    .line 881
    add-int/lit8 v3, v3, 0x1

    .line 883
    const-wide/16 v1, 0x1

    goto :goto_1

    .line 891
    :cond_6
    iput v3, p0, Lcom/lge/camera/util/FileNamingHelper;->mDigitnum:I

    iput v3, p0, Lcom/lge/camera/util/FileNamingHelper;->mDigitnumForTMS:I

    .line 892
    iput v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumber:I

    iput v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumberForTMS:I

    .line 893
    iput-wide v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFNumber:J

    iput-wide v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFNumberForTMS:J

    goto :goto_2
.end method

.method private initializeFileNumber(I)V
    .locals 9
    .parameter "storage"

    .prologue
    const/4 v8, -0x1

    const-wide/16 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 104
    iget-object v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 105
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 106
    const-string v1, "CameraApp"

    const-string v2, "Cannot initialize file number because context is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-static {v0, p1}, Lcom/lge/camera/util/Common;->getAccumulatedPictureCount(Landroid/content/Context;I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumber:J

    .line 112
    iget-wide v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumber:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_1

    .line 113
    iput-wide v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumber:J

    .line 114
    :cond_1
    iput v3, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileStatus:I

    .line 116
    invoke-static {v0, p1}, Lcom/lge/camera/util/Common;->getAccumulatedVideoCount(Landroid/content/Context;I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileNumber:J

    .line 118
    iget-wide v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileNumber:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_2

    .line 119
    iput-wide v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileNumber:J

    .line 120
    :cond_2
    iput v3, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileStatus:I

    .line 122
    invoke-static {v0}, Lcom/lge/camera/util/Common;->getAccumulatedDCFFirstCount(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumber:I

    .line 123
    invoke-static {v0}, Lcom/lge/camera/util/Common;->getAccumulatedDCFCount(Landroid/content/Context;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFNumber:J

    .line 124
    iget v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumber:I

    if-ne v1, v8, :cond_3

    iget-wide v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFNumber:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_3

    .line 125
    iput-wide v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFNumber:J

    .line 126
    :cond_3
    iget v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumber:I

    if-ne v1, v8, :cond_4

    .line 127
    const/16 v1, 0x30

    iput v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumber:I

    .line 129
    :cond_4
    invoke-static {v0}, Lcom/lge/camera/util/Common;->getAccumulatedDCFDigit(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mDigitnum:I

    .line 130
    iget v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mDigitnum:I

    if-nez v1, :cond_5

    .line 131
    const/4 v1, 0x4

    iput v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mDigitnum:I

    .line 132
    :cond_5
    iput v3, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFileStatus:I

    .line 134
    iget-wide v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumber:J

    iput-wide v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumberForTMS:J

    .line 135
    iget-wide v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFNumber:J

    iput-wide v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFNumberForTMS:J

    .line 136
    iget v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumber:I

    iput v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumberForTMS:I

    .line 137
    iget v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mDigitnum:I

    iput v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mDigitnumForTMS:I

    goto :goto_0
.end method

.method private makeCurrentDateToString()Ljava/lang/String;
    .locals 14

    .prologue
    const/16 v13, 0xb

    const/4 v12, 0x6

    const/4 v11, 0x4

    .line 772
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 773
    .local v6, time:Landroid/text/format/Time;
    invoke-virtual {v6}, Landroid/text/format/Time;->setToNow()V

    .line 775
    invoke-virtual {v6}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v0

    .line 776
    .local v0, CurrentTime:Ljava/lang/String;
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "YYYYMMDDTHHDDSS : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 779
    .local v4, month:Ljava/lang/String;
    const/16 v8, 0x8

    invoke-virtual {v0, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 780
    .local v5, monthDay:Ljava/lang/String;
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 781
    .local v7, year:Ljava/lang/String;
    const/16 v8, 0x9

    invoke-virtual {v0, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 782
    .local v2, hour:Ljava/lang/String;
    const/16 v8, 0xd

    invoke-virtual {v0, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 784
    .local v3, minute:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 785
    .local v1, fileName:Ljava/lang/String;
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fileName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    return-object v1
.end method

.method private static makeFileNameByDCFRule(IIJ)Ljava/lang/String;
    .locals 9
    .parameter "firstNumber"
    .parameter "digit"
    .parameter "count"

    .prologue
    .line 225
    const/4 v3, 0x0

    .line 227
    .local v3, tmpLength:I
    const-string v5, "CAM%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    int-to-char v8, p0

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, fileName:Ljava/lang/String;
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, fileNum:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 231
    sub-int v4, p1, v3

    .line 232
    .local v4, tmpNum:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 233
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    return-object v0
.end method

.method private static makePictureFileName(J)Ljava/lang/String;
    .locals 5
    .parameter "count"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 187
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetCarrierCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 188
    const-wide/32 v1, 0x1869f

    cmp-long v1, p0, v1

    if-lez v1, :cond_0

    .line 189
    const-string v1, "IMG%d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, fileName:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 191
    .end local v0           #fileName:Ljava/lang/String;
    :cond_0
    const-string v1, "IMG%05d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #fileName:Ljava/lang/String;
    goto :goto_0

    .line 193
    .end local v0           #fileName:Ljava/lang/String;
    :cond_1
    const-wide/16 v1, 0x3e7

    cmp-long v1, p0, v1

    if-lez v1, :cond_2

    .line 194
    const-string v1, "IMG%d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #fileName:Ljava/lang/String;
    goto :goto_0

    .line 196
    .end local v0           #fileName:Ljava/lang/String;
    :cond_2
    const-string v1, "IMG%03d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #fileName:Ljava/lang/String;
    goto :goto_0
.end method

.method private makePictureFileNameForCDMA(Ljava/lang/String;J)Ljava/lang/String;
    .locals 5
    .parameter "fileName"
    .parameter "AscCode"

    .prologue
    .line 758
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 759
    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 762
    :cond_0
    const-wide/16 v0, 0x7a

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 763
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/util/FileNamingHelper;->temp:J

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    long-to-int v1, p2

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 767
    :goto_0
    return-object v0

    .line 766
    :cond_1
    const-wide/16 p2, 0x7a

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    long-to-int v1, p2

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/lge/camera/util/FileNamingHelper;->temp:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/lge/camera/util/FileNamingHelper;->temp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static makeVideoFileName(J)Ljava/lang/String;
    .locals 5
    .parameter "count"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 209
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetCarrierCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 210
    const-wide/32 v1, 0x1869f

    cmp-long v1, p0, v1

    if-lez v1, :cond_0

    .line 211
    const-string v1, "MOV%d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, fileName:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 213
    .end local v0           #fileName:Ljava/lang/String;
    :cond_0
    const-string v1, "MOV%05d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #fileName:Ljava/lang/String;
    goto :goto_0

    .line 215
    .end local v0           #fileName:Ljava/lang/String;
    :cond_1
    const-wide/16 v1, 0x3e7

    cmp-long v1, p0, v1

    if-lez v1, :cond_2

    .line 216
    const-string v1, "MOV%d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #fileName:Ljava/lang/String;
    goto :goto_0

    .line 218
    .end local v0           #fileName:Ljava/lang/String;
    :cond_2
    const-string v1, "MOV%03d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #fileName:Ljava/lang/String;
    goto :goto_0
.end method

.method private subtractDCFCount()V
    .locals 10

    .prologue
    const/16 v9, 0x5a

    const-wide/16 v7, 0x1

    const/16 v6, 0x30

    .line 902
    iget-wide v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFNumber:J

    sub-long/2addr v2, v7

    iput-wide v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFNumber:J

    .line 903
    const-wide/high16 v2, 0x4024

    iget v4, p0, Lcom/lge/camera/util/FileNamingHelper;->mDigitnum:I

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 906
    .local v0, tmpNum:D
    iget v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumber:I

    if-ne v2, v6, :cond_1

    iget-wide v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFNumber:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 908
    double-to-long v2, v0

    sub-long/2addr v2, v7

    iput-wide v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFNumber:J

    .line 909
    iput v9, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumber:I

    .line 910
    iget v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mDigitnum:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mDigitnum:I

    .line 923
    :cond_0
    :goto_0
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subtractDCFCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFNumber:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/camera/util/FileNamingHelper;->mDigitnum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    return-void

    .line 911
    :cond_1
    iget-wide v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFNumber:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 912
    double-to-long v2, v0

    sub-long/2addr v2, v7

    iput-wide v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFNumber:J

    .line 913
    iget v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumber:I

    if-le v2, v6, :cond_2

    iget v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumber:I

    const/16 v3, 0x3a

    if-lt v2, v3, :cond_3

    :cond_2
    iget v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumber:I

    const/16 v3, 0x42

    if-le v2, v3, :cond_4

    iget v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumber:I

    const/16 v3, 0x5b

    if-ge v2, v3, :cond_4

    .line 915
    :cond_3
    iget v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumber:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumber:I

    goto :goto_0

    .line 916
    :cond_4
    iget v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumber:I

    const/16 v3, 0x41

    if-ne v2, v3, :cond_5

    .line 917
    const/16 v2, 0x39

    iput v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumber:I

    goto :goto_0

    .line 918
    :cond_5
    iget v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumber:I

    if-ne v2, v6, :cond_0

    .line 919
    iput v9, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumber:I

    .line 920
    iget v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mDigitnum:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mDigitnum:I

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 141
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNamingHelper close 1/4 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lge/camera/util/FileNamingHelper;->mInCheckImage:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lge/camera/util/FileNamingHelper;->mInCheckVideo:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-boolean v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mInCheckImage:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mInCheckVideo:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mInCheckDCF:Z

    if-eqz v2, :cond_1

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/util/FileNamingHelper;->stopThread()V

    .line 147
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mInCheckImage:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mInCheckVideo:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mInCheckDCF:Z

    if-eqz v2, :cond_3

    .line 149
    :cond_2
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 155
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 156
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_4

    .line 157
    iget v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mStorage:I

    iget-wide v3, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumber:J

    invoke-static {v0, v2, v3, v4}, Lcom/lge/camera/util/Common;->saveAccumulatedPictureCount(Landroid/content/Context;IJ)V

    .line 158
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNamingHelper close 2/4 mImageFileNumber:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumber:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mStorage:I

    iget-wide v3, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileNumber:J

    invoke-static {v0, v2, v3, v4}, Lcom/lge/camera/util/Common;->saveAccumulatedVideoCount(Landroid/content/Context;IJ)V

    .line 161
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNamingHelper close 3/4 mVideoFileNumber:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileNumber:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-wide v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFNumber:J

    invoke-static {v0, v2, v3}, Lcom/lge/camera/util/Common;->saveAccumulatedDCFCount(Landroid/content/Context;J)V

    .line 164
    iget v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumber:I

    invoke-static {v0, v2}, Lcom/lge/camera/util/Common;->saveAccumulatedDCFFirstCount(Landroid/content/Context;I)V

    .line 165
    iget v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mDigitnum:I

    invoke-static {v0, v2}, Lcom/lge/camera/util/Common;->saveAccumulatedDCFDigit(Landroid/content/Context;I)V

    .line 166
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNamingHelper close 4/4 mDCFNumber:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFNumber:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/camera/util/FileNamingHelper;->mDigitnum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :goto_1
    iput-object v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileName:Ljava/lang/String;

    .line 172
    iput-object v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileName:Ljava/lang/String;

    .line 173
    iput-object v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFileName:Ljava/lang/String;

    .line 174
    iput-object v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mCurrFileName:Ljava/lang/String;

    .line 175
    iput-object v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mFileDirectory:Ljava/lang/String;

    .line 176
    iput-object v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mMediator:Lcom/lge/camera/Mediator;

    .line 177
    return-void

    .line 168
    :cond_4
    const-string v2, "CameraApp"

    const-string v3, "Cannot accumulate DCF because context is null"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getFileName(IZZI)Ljava/lang/String;
    .locals 6
    .parameter "mode"
    .parameter "useThread"
    .parameter "useTimeMachine"
    .parameter "timeMachineCount"

    .prologue
    const-wide/16 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 279
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetCarrierCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 295
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetUseDCFRule()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFileStatus:I

    if-ne v1, v2, :cond_2

    .line 296
    invoke-direct {p0, p3}, Lcom/lge/camera/util/FileNamingHelper;->addDCFCount(Z)V

    .line 297
    iput v3, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFileStatus:I

    .line 298
    iget-object v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFileName:Ljava/lang/String;

    .line 299
    .local v0, ret:Ljava/lang/String;
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/camera/util/FileNamingHelper;->startCheckFileName_DCF(IZZ)V

    .line 300
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get file name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .end local v0           #ret:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 281
    :pswitch_0
    if-nez p1, :cond_0

    .line 282
    const-string v1, "CameraApp"

    const-string v2, "getFileName for CDMA"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0, p1, p3, p4}, Lcom/lge/camera/util/FileNamingHelper;->startCheckFileNameCDMA(IZI)Ljava/lang/String;

    move-result-object v0

    .line 284
    .restart local v0       #ret:Ljava/lang/String;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get file name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 286
    .end local v0           #ret:Ljava/lang/String;
    :cond_0
    if-ne p1, v2, :cond_1

    .line 287
    invoke-virtual {p0, p1, p3, p4}, Lcom/lge/camera/util/FileNamingHelper;->startCheckFileNameCDMA(IZI)Ljava/lang/String;

    move-result-object v0

    .line 288
    .restart local v0       #ret:Ljava/lang/String;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get new file name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    .end local v0           #ret:Ljava/lang/String;
    :cond_1
    const-string v1, "CameraApp"

    const-string v2, "error! get file name fail!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 302
    :cond_2
    if-nez p1, :cond_4

    iget v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileStatus:I

    if-ne v1, v2, :cond_4

    .line 303
    if-eqz p3, :cond_3

    .line 304
    iget-wide v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumberForTMS:J

    add-long/2addr v1, v4

    iput-wide v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumberForTMS:J

    .line 308
    :goto_2
    iput v3, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileStatus:I

    .line 309
    iget-object v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileName:Ljava/lang/String;

    .line 310
    .restart local v0       #ret:Ljava/lang/String;
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/camera/util/FileNamingHelper;->startCheckFileName(IZZ)V

    .line 311
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get file name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 306
    .end local v0           #ret:Ljava/lang/String;
    :cond_3
    iget-wide v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumber:J

    add-long/2addr v1, v4

    iput-wide v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumber:J

    goto :goto_2

    .line 313
    :cond_4
    if-ne p1, v2, :cond_5

    iget v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileStatus:I

    if-ne v1, v2, :cond_5

    .line 314
    iget-wide v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileNumber:J

    add-long/2addr v1, v4

    iput-wide v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileNumber:J

    .line 315
    iput v3, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileStatus:I

    .line 316
    iget-object v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileName:Ljava/lang/String;

    .line 317
    .restart local v0       #ret:Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v3}, Lcom/lge/camera/util/FileNamingHelper;->startCheckFileName(IZZ)V

    .line 318
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get new file name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 321
    .end local v0           #ret:Ljava/lang/String;
    :cond_5
    const-string v1, "CameraApp"

    const-string v2, "error! get file name fail!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public getFileStatus(I)Z
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 653
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetUseDCFRule()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 654
    iget v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFileStatus:I

    if-ne v2, v0, :cond_1

    .line 658
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 654
    goto :goto_0

    .line 655
    :cond_2
    if-nez p1, :cond_3

    .line 656
    iget v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileStatus:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 658
    :cond_3
    iget v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileStatus:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public reload(Z)V
    .locals 3
    .parameter "useThread"

    .prologue
    const/4 v2, 0x0

    .line 837
    const-string v0, "CameraApp"

    const-string v1, "&&&&&&&&&&&&& reload call"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    invoke-virtual {p0}, Lcom/lge/camera/util/FileNamingHelper;->setStorageInit()V

    .line 840
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetUseDCFRule()Z

    move-result v0

    if-nez v0, :cond_0

    .line 841
    iget v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mStorage:I

    invoke-direct {p0, v0}, Lcom/lge/camera/util/FileNamingHelper;->initializeFileNumber(I)V

    .line 842
    iget-object v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    invoke-virtual {p0, v0, p1, v2}, Lcom/lge/camera/util/FileNamingHelper;->startCheckFileName(IZZ)V

    .line 847
    :goto_0
    return-void

    .line 844
    :cond_0
    iput v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFileStatus:I

    .line 845
    iget-object v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    invoke-virtual {p0, v0, p1, v2}, Lcom/lge/camera/util/FileNamingHelper;->startCheckFileName_DCF(IZZ)V

    goto :goto_0
.end method

.method public setErrorFeedback(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const-wide/16 v2, 0x1

    .line 740
    if-nez p1, :cond_1

    .line 741
    iget-wide v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumber:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumber:J

    .line 745
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetUseDCFRule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    invoke-direct {p0}, Lcom/lge/camera/util/FileNamingHelper;->subtractDCFCount()V

    .line 747
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error feedback dcf = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFNumber:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error feedback image = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumber:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", video = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileNumber:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    return-void

    .line 743
    :cond_1
    iget-wide v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileNumber:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileNumber:J

    goto :goto_0
.end method

.method public setStorageInit()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 84
    iget-object v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->isExternalStorageRemoved()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsEMMCmemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iput v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mStorage:I

    .line 96
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v0

    iget v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mStorage:I

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/StorageController;->setCurrentStorage(I)V

    .line 98
    iget-object v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getStorageState()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mStorageState:I

    .line 99
    iget-object v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mFileDirectory:Ljava/lang/String;

    .line 101
    :cond_1
    return-void

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_storage"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getEmmcName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    iput v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mStorage:I

    goto :goto_0

    .line 93
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mStorage:I

    goto :goto_0
.end method

.method public setStorageState(II)V
    .locals 5
    .parameter "state"
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 670
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStorageState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    invoke-virtual {p0}, Lcom/lge/camera/util/FileNamingHelper;->setStorageInit()V

    .line 674
    iget v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mStorageState:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mLastMode:I

    if-eq v0, p2, :cond_4

    .line 675
    :cond_0
    iput p1, p0, Lcom/lge/camera/util/FileNamingHelper;->mStorageState:I

    .line 676
    iget v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mStorageState:I

    if-eqz v0, :cond_2

    .line 677
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storage state : NOT AVAILABLE, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mStorageState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-virtual {p0}, Lcom/lge/camera/util/FileNamingHelper;->stopThread()V

    .line 679
    iput v3, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileStatus:I

    .line 680
    iput v3, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileStatus:I

    .line 681
    iput v3, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFileStatus:I

    .line 696
    :cond_1
    :goto_0
    return-void

    .line 683
    :cond_2
    const-string v0, "CameraApp"

    const-string v1, "storage state :  AVAILABLE "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    invoke-virtual {p0, p2}, Lcom/lge/camera/util/FileNamingHelper;->getFileStatus(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 685
    const-string v0, "CameraApp"

    const-string v1, "setStorageState : startCheckFileName with thread"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetUseDCFRule()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 687
    invoke-virtual {p0, p2, v4, v3}, Lcom/lge/camera/util/FileNamingHelper;->startCheckFileName_DCF(IZZ)V

    goto :goto_0

    .line 689
    :cond_3
    invoke-virtual {p0, p2, v4, v3}, Lcom/lge/camera/util/FileNamingHelper;->startCheckFileName(IZZ)V

    goto :goto_0

    .line 694
    :cond_4
    const-string v0, "CameraApp"

    const-string v1, "setStorageState: status same"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized startCheckFileName(IZZ)V
    .locals 12
    .parameter "mode"
    .parameter "useThread"
    .parameter "useTimeMachine"

    .prologue
    const-wide/16 v10, 0x1

    const/4 v9, 0x1

    .line 335
    monitor-enter p0

    :try_start_0
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startCheckFileName (mode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", useThread : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/lge/camera/util/FileNamingHelper;->setStorageInit()V

    .line 339
    iget v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mStorageState:I

    if-eqz v6, :cond_1

    .line 340
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "storage State = NOT AVAILABLE, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lge/camera/util/FileNamingHelper;->mStorageState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 344
    :cond_1
    :try_start_1
    const-string v6, "CameraApp"

    const-string v7, "startCheckFileName stopThread."

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lcom/lge/camera/util/FileNamingHelper;->stopThread()V

    .line 346
    iput p1, p0, Lcom/lge/camera/util/FileNamingHelper;->mLastMode:I

    .line 347
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mStopThread:Z

    .line 349
    if-nez p1, :cond_9

    .line 350
    iget v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileStatus:I

    if-ne v6, v9, :cond_2

    .line 351
    const-string v6, "CameraApp"

    const-string v7, "mImageFileStatus == STATUS_READY"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 335
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 355
    :cond_2
    if-nez p2, :cond_8

    .line 356
    const/4 v6, 0x1

    :try_start_2
    iput-boolean v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mInCheckImage:Z

    .line 357
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startCheckFileName image without thread: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumber:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 359
    .local v4, startTime:J
    if-eqz p3, :cond_5

    iget-wide v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumberForTMS:J

    .line 360
    .local v2, imageFileNumber:J
    :goto_1
    invoke-static {v2, v3}, Lcom/lge/camera/util/FileNamingHelper;->makePictureFileName(J)Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, fileName:Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/lge/camera/util/FileNamingHelper;->mFileDirectory:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 362
    add-long/2addr v2, v10

    .line 363
    invoke-static {v2, v3}, Lcom/lge/camera/util/FileNamingHelper;->makePictureFileName(J)Ljava/lang/String;

    move-result-object v1

    .line 364
    iget-boolean v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mStopThread:Z

    if-eqz v6, :cond_3

    .line 369
    :cond_4
    if-eqz p3, :cond_6

    .line 370
    iput-wide v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumberForTMS:J

    .line 374
    :goto_2
    iget-boolean v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mStopThread:Z

    if-eqz v6, :cond_7

    .line 375
    const-string v6, "CameraApp"

    const-string v7, "startCheckFileName is stop in Camera!"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mInCheckImage:Z

    .line 377
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mStopThread:Z

    goto/16 :goto_0

    .line 359
    .end local v1           #fileName:Ljava/lang/String;
    .end local v2           #imageFileNumber:J
    :cond_5
    iget-wide v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumber:J

    goto :goto_1

    .line 372
    .restart local v1       #fileName:Ljava/lang/String;
    .restart local v2       #imageFileNumber:J
    :cond_6
    iput-wide v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumber:J

    iput-wide v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumberForTMS:J

    goto :goto_2

    .line 380
    :cond_7
    iput-object v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileName:Ljava/lang/String;

    .line 381
    const/4 v6, 0x1

    iput v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileStatus:I

    .line 382
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "image file is ready "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startCheckFileName is finished without thread (elapse time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mInCheckImage:Z

    .line 387
    if-nez p3, :cond_0

    .line 388
    iget-object v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 389
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 390
    iget v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mStorage:I

    iget-wide v7, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumber:J

    invoke-static {v0, v6, v7, v8}, Lcom/lge/camera/util/Common;->saveAccumulatedPictureCount(Landroid/content/Context;IJ)V

    goto/16 :goto_0

    .line 394
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #fileName:Ljava/lang/String;
    .end local v2           #imageFileNumber:J
    .end local v4           #startTime:J
    :cond_8
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/lge/camera/util/FileNamingHelper$1;

    invoke-direct {v7, p0, p3}, Lcom/lge/camera/util/FileNamingHelper$1;-><init>(Lcom/lge/camera/util/FileNamingHelper;Z)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mCheckJPEGThread:Ljava/lang/Thread;

    .line 435
    iget-object v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mCheckJPEGThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 438
    :cond_9
    iget v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileStatus:I

    if-ne v6, v9, :cond_a

    .line 439
    const-string v6, "CameraApp"

    const-string v7, "mVideoFileStatus == STATUS_READY"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 443
    :cond_a
    if-nez p2, :cond_f

    .line 444
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mInCheckVideo:Z

    .line 445
    const-string v6, "CameraApp"

    const-string v7, "startCheckFileName video without thread"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 447
    .restart local v4       #startTime:J
    iget-wide v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileNumber:J

    invoke-static {v6, v7}, Lcom/lge/camera/util/FileNamingHelper;->makeVideoFileName(J)Ljava/lang/String;

    move-result-object v1

    .line 450
    .restart local v1       #fileName:Ljava/lang/String;
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/lge/camera/util/FileNamingHelper;->mFileDirectory:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".3gp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/lge/camera/util/FileNamingHelper;->mFileDirectory:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".mp4"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 451
    :cond_c
    iget-wide v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileNumber:J

    add-long/2addr v6, v10

    iput-wide v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileNumber:J

    .line 452
    iget-wide v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileNumber:J

    invoke-static {v6, v7}, Lcom/lge/camera/util/FileNamingHelper;->makeVideoFileName(J)Ljava/lang/String;

    move-result-object v1

    .line 453
    iget-boolean v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mStopThread:Z

    if-eqz v6, :cond_b

    .line 458
    :cond_d
    iget-boolean v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mStopThread:Z

    if-eqz v6, :cond_e

    .line 459
    const-string v6, "CameraApp"

    const-string v7, "startCheckFileName is stop without thread in Video!"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mInCheckVideo:Z

    .line 461
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mStopThread:Z

    goto/16 :goto_0

    .line 464
    :cond_e
    iput-object v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileName:Ljava/lang/String;

    .line 465
    const/4 v6, 0x1

    iput v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileStatus:I

    .line 466
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "video file is ready "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startCheckFileName is finished without thread (elapse time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mInCheckVideo:Z

    .line 472
    iget-object v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 473
    .restart local v0       #context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 474
    iget v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mStorage:I

    iget-wide v7, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileNumber:J

    invoke-static {v0, v6, v7, v8}, Lcom/lge/camera/util/Common;->saveAccumulatedVideoCount(Landroid/content/Context;IJ)V

    goto/16 :goto_0

    .line 477
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #fileName:Ljava/lang/String;
    .end local v4           #startTime:J
    :cond_f
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/lge/camera/util/FileNamingHelper$2;

    invoke-direct {v7, p0}, Lcom/lge/camera/util/FileNamingHelper$2;-><init>(Lcom/lge/camera/util/FileNamingHelper;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mCheckAVIThread:Ljava/lang/Thread;

    .line 514
    iget-object v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mCheckAVIThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public startCheckFileNameCDMA(IZI)Ljava/lang/String;
    .locals 11
    .parameter "mode"
    .parameter "useTimeMachine"
    .parameter "timeMachineCount"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-wide/16 v7, 0x1

    .line 791
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startCheckFileNameCDMA mode is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and useTimeMachine is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and timeMachineCount is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    if-nez p1, :cond_2

    .line 794
    iput-boolean v10, p0, Lcom/lge/camera/util/FileNamingHelper;->mInCheckImage:Z

    .line 796
    invoke-direct {p0}, Lcom/lge/camera/util/FileNamingHelper;->makeCurrentDateToString()Ljava/lang/String;

    move-result-object v0

    .line 797
    .local v0, fileName:Ljava/lang/String;
    const-wide/16 v2, 0x60

    .line 799
    .local v2, start:J
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lge/camera/util/FileNamingHelper;->mFileDirectory:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 800
    add-long/2addr v2, v7

    .line 801
    invoke-direct {p0, v0, v2, v3}, Lcom/lge/camera/util/FileNamingHelper;->makePictureFileNameForCDMA(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 804
    :cond_0
    if-eqz p2, :cond_1

    .line 805
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    if-ge v1, p3, :cond_1

    .line 806
    add-long/2addr v2, v7

    .line 807
    invoke-direct {p0, v0, v2, v3}, Lcom/lge/camera/util/FileNamingHelper;->makePictureFileNameForCDMA(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 808
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get new file name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 812
    .end local v1           #i:I
    :cond_1
    iput-object v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileName:Ljava/lang/String;

    .line 813
    iput-boolean v9, p0, Lcom/lge/camera/util/FileNamingHelper;->mInCheckImage:Z

    .line 815
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileName:Ljava/lang/String;

    .line 832
    :goto_2
    return-object v4

    .line 817
    .end local v0           #fileName:Ljava/lang/String;
    .end local v2           #start:J
    :cond_2
    iput-boolean v10, p0, Lcom/lge/camera/util/FileNamingHelper;->mInCheckVideo:Z

    .line 820
    invoke-direct {p0}, Lcom/lge/camera/util/FileNamingHelper;->makeCurrentDateToString()Ljava/lang/String;

    move-result-object v0

    .line 821
    .restart local v0       #fileName:Ljava/lang/String;
    const-wide/16 v2, 0x60

    .line 824
    .restart local v2       #start:J
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lge/camera/util/FileNamingHelper;->mFileDirectory:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".mp4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lge/camera/util/FileNamingHelper;->mFileDirectory:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".3gp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 825
    :cond_3
    add-long/2addr v2, v7

    .line 826
    invoke-direct {p0, v0, v2, v3}, Lcom/lge/camera/util/FileNamingHelper;->makePictureFileNameForCDMA(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 829
    :cond_4
    iput-object v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileName:Ljava/lang/String;

    .line 830
    iput-boolean v9, p0, Lcom/lge/camera/util/FileNamingHelper;->mInCheckVideo:Z

    .line 832
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper;->mVideoFileName:Ljava/lang/String;

    goto :goto_2
.end method

.method public declared-synchronized startCheckFileName_DCF(IZZ)V
    .locals 8
    .parameter "mode"
    .parameter "useThread"
    .parameter "useTimeMachine"

    .prologue
    const/4 v7, 0x1

    .line 520
    monitor-enter p0

    :try_start_0
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startCheckFileName_DCF (mode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", useThread : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget v4, p0, Lcom/lge/camera/util/FileNamingHelper;->mStorageState:I

    if-eqz v4, :cond_1

    .line 523
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "storage State = NOT AVAILABLE,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mStorageState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 527
    :cond_1
    :try_start_1
    iget v4, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFileStatus:I

    if-ne v4, v7, :cond_2

    .line 528
    const-string v4, "CameraApp"

    const-string v5, "mDCFFileStatus == STATUS_READY"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 520
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 532
    :cond_2
    :try_start_2
    const-string v4, "CameraApp"

    const-string v5, "startCheckFileName stopThread."

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-virtual {p0}, Lcom/lge/camera/util/FileNamingHelper;->stopThread()V

    .line 534
    iput p1, p0, Lcom/lge/camera/util/FileNamingHelper;->mLastMode:I

    .line 535
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/lge/camera/util/FileNamingHelper;->mStopThread:Z

    .line 537
    if-nez p2, :cond_a

    .line 538
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lge/camera/util/FileNamingHelper;->mInCheckDCF:Z

    .line 539
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startCheckFileName_DCF without thread : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumber:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFNumber:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 541
    .local v2, startTime:J
    const/4 v1, 0x0

    .line 542
    .local v1, fileName:Ljava/lang/String;
    if-eqz p3, :cond_6

    .line 543
    iget v4, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumberForTMS:I

    iget v5, p0, Lcom/lge/camera/util/FileNamingHelper;->mDigitnumForTMS:I

    iget-wide v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFNumberForTMS:J

    invoke-static {v4, v5, v6, v7}, Lcom/lge/camera/util/FileNamingHelper;->makeFileNameByDCFRule(IIJ)Ljava/lang/String;

    move-result-object v1

    .line 549
    :cond_3
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lge/camera/util/FileNamingHelper;->mFileDirectory:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lge/camera/util/FileNamingHelper;->mFileDirectory:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".3gp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lge/camera/util/FileNamingHelper;->mFileDirectory:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".mp4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 550
    :cond_4
    invoke-direct {p0, p3}, Lcom/lge/camera/util/FileNamingHelper;->addDCFCount(Z)V

    .line 551
    if-eqz p3, :cond_7

    .line 552
    iget v4, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumberForTMS:I

    iget v5, p0, Lcom/lge/camera/util/FileNamingHelper;->mDigitnumForTMS:I

    iget-wide v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFNumberForTMS:J

    invoke-static {v4, v5, v6, v7}, Lcom/lge/camera/util/FileNamingHelper;->makeFileNameByDCFRule(IIJ)Ljava/lang/String;

    move-result-object v1

    .line 556
    :goto_2
    iget-boolean v4, p0, Lcom/lge/camera/util/FileNamingHelper;->mStopThread:Z

    if-eqz v4, :cond_3

    .line 561
    :cond_5
    iget-boolean v4, p0, Lcom/lge/camera/util/FileNamingHelper;->mStopThread:Z

    if-eqz v4, :cond_8

    .line 562
    const-string v4, "CameraApp"

    const-string v5, "startCheckFileName_DCF is stop without Thread by DCF rules!"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/lge/camera/util/FileNamingHelper;->mInCheckDCF:Z

    .line 564
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/lge/camera/util/FileNamingHelper;->mStopThread:Z

    goto/16 :goto_0

    .line 545
    :cond_6
    iget v4, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumber:I

    iget v5, p0, Lcom/lge/camera/util/FileNamingHelper;->mDigitnum:I

    iget-wide v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFNumber:J

    invoke-static {v4, v5, v6, v7}, Lcom/lge/camera/util/FileNamingHelper;->makeFileNameByDCFRule(IIJ)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 554
    :cond_7
    iget v4, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumber:I

    iget v5, p0, Lcom/lge/camera/util/FileNamingHelper;->mDigitnum:I

    iget-wide v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFNumber:J

    invoke-static {v4, v5, v6, v7}, Lcom/lge/camera/util/FileNamingHelper;->makeFileNameByDCFRule(IIJ)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 568
    :cond_8
    iput-object v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFileName:Ljava/lang/String;

    .line 569
    const/4 v4, 0x1

    iput v4, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFileStatus:I

    .line 570
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dcf file is ready "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startCheckFileName_DCF is finished without thread (elapse time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/lge/camera/util/FileNamingHelper;->mInCheckDCF:Z

    .line 575
    if-nez p3, :cond_0

    .line 576
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 577
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_9

    .line 578
    iget-wide v4, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFNumber:J

    invoke-static {v0, v4, v5}, Lcom/lge/camera/util/Common;->saveAccumulatedDCFCount(Landroid/content/Context;J)V

    .line 579
    iget v4, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumber:I

    invoke-static {v0, v4}, Lcom/lge/camera/util/Common;->saveAccumulatedDCFFirstCount(Landroid/content/Context;I)V

    .line 580
    iget v4, p0, Lcom/lge/camera/util/FileNamingHelper;->mDigitnum:I

    invoke-static {v0, v4}, Lcom/lge/camera/util/Common;->saveAccumulatedDCFDigit(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 582
    :cond_9
    const-string v4, "CameraApp"

    const-string v5, "Cannot accumulate DCF because context is null"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 586
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #fileName:Ljava/lang/String;
    .end local v2           #startTime:J
    :cond_a
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/lge/camera/util/FileNamingHelper$3;

    invoke-direct {v5, p0, p3}, Lcom/lge/camera/util/FileNamingHelper$3;-><init>(Lcom/lge/camera/util/FileNamingHelper;Z)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v4, p0, Lcom/lge/camera/util/FileNamingHelper;->mCheckThread:Ljava/lang/Thread;

    .line 640
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper;->mCheckThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public stopThread()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 702
    iget-object v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mCheckThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mCheckThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 703
    iget-object v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mCheckThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 705
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mCheckThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mCheckThread:Ljava/lang/Thread;

    .line 711
    iget-object v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mCheckJPEGThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mCheckJPEGThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 712
    iget-object v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mCheckJPEGThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 714
    :try_start_1
    iget-object v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mCheckJPEGThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 719
    :cond_1
    :goto_1
    iput-object v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mCheckJPEGThread:Ljava/lang/Thread;

    .line 721
    iget-object v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mCheckAVIThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mCheckAVIThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 722
    iget-object v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mCheckAVIThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 724
    :try_start_2
    iget-object v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mCheckAVIThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 729
    :cond_2
    :goto_2
    iput-object v2, p0, Lcom/lge/camera/util/FileNamingHelper;->mCheckAVIThread:Ljava/lang/Thread;

    .line 730
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/util/FileNamingHelper;->mStopThread:Z

    .line 731
    return-void

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 715
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 716
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 725
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 726
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method public updateNextFileIndex(Ljava/lang/String;)V
    .locals 7
    .parameter "fileName"

    .prologue
    const-wide/16 v5, 0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 242
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetUseDCFRule()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    iput v3, p0, Lcom/lge/camera/util/FileNamingHelper;->mDCFFileStatus:I

    .line 245
    iget-object v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_continuous"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    invoke-virtual {p0, v0, v3, v3}, Lcom/lge/camera/util/FileNamingHelper;->startCheckFileName_DCF(IZZ)V

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    invoke-virtual {p0, v0, v4, v3}, Lcom/lge/camera/util/FileNamingHelper;->startCheckFileName_DCF(IZZ)V

    goto :goto_0

    .line 252
    :cond_2
    iput v3, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileStatus:I

    .line 253
    if-eqz p1, :cond_3

    iget-wide v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumber:J

    sub-long/2addr v0, v5

    invoke-static {v0, v1}, Lcom/lge/camera/util/FileNamingHelper;->makePictureFileName(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 254
    iget-wide v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumber:J

    sub-long/2addr v0, v5

    iput-wide v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumber:J

    .line 257
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_continuous"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 258
    iget-object v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    invoke-virtual {p0, v0, v3, v3}, Lcom/lge/camera/util/FileNamingHelper;->startCheckFileName(IZZ)V

    goto :goto_0

    .line 260
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/util/FileNamingHelper;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    invoke-virtual {p0, v0, v4, v3}, Lcom/lge/camera/util/FileNamingHelper;->startCheckFileName(IZZ)V

    .line 261
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetCarrierCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 263
    invoke-virtual {p0, v3, v4, v3}, Lcom/lge/camera/util/FileNamingHelper;->startCheckFileName(IZZ)V

    goto :goto_0
.end method
