.class public Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;
.super Ljava/lang/Object;
.source "VCalUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/opp/VCalUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParseResult"
.end annotation


# instance fields
.field public mAddedCount:I

.field public mCantCommitCount:I

.field public mCantCommitIndexes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mCommittedIndexes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mCommittedTypes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mCommittedUris:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public mCount:I

.field public mDupDisplayNames:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mDupIndexes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mDupUris:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public mDuplicateCount:I

.field public mError:Ljava/lang/Throwable;

.field public mFilepath:Ljava/lang/String;

.field public mSuccess:Z

.field public mTmpFilepathPrefix:Ljava/lang/String;

.field public mTmpFilepathSuffix:Ljava/lang/String;

.field public mUpdatedCount:I

.field final synthetic this$0:Lcom/broadcom/bt/service/opp/VCalUtil;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/opp/VCalUtil;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->this$0:Lcom/broadcom/bt/service/opp/VCalUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mSuccess:Z

    return-void
.end method


# virtual methods
.method protected init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 102
    iput v3, p0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mCantCommitCount:I

    iput v3, p0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mDuplicateCount:I

    iput v3, p0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mAddedCount:I

    iput v3, p0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mUpdatedCount:I

    .line 103
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mDupIndexes:Ljava/util/LinkedList;

    .line 104
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mCantCommitIndexes:Ljava/util/LinkedList;

    .line 105
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mDupDisplayNames:Ljava/util/LinkedList;

    .line 106
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mDupUris:Ljava/util/LinkedList;

    .line 107
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mCommittedTypes:Ljava/util/LinkedList;

    .line 108
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mCommittedUris:Ljava/util/LinkedList;

    .line 109
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mCommittedIndexes:Ljava/util/LinkedList;

    .line 111
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mFilepath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mFilepath:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 113
    .local v0, index:I
    if-lez v0, :cond_0

    .line 114
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mFilepath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mTmpFilepathSuffix:Ljava/lang/String;

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mFilepath:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mTmpFilepathPrefix:Ljava/lang/String;

    .line 118
    .end local v0           #index:I
    :cond_0
    return-void
.end method

.method protected setError(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mError:Ljava/lang/Throwable;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mSuccess:Z

    .line 99
    return-void
.end method
