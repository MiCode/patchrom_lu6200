.class public Lcom/broadcom/bt/app/opp/data/OPPSession;
.super Ljava/lang/Object;
.source "OPPSession.java"


# instance fields
.field public mCloseRequested:Z

.field public mClosed:Z

.field public mLatestRequest:Lcom/broadcom/bt/app/opp/data/Job;

.field public mRequestCount:I

.field public mRequestTypesAllowed:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mSessionId:Ljava/lang/String;

.field public mStarted:Z

.field public mTimeoutOccurred:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/broadcom/bt/app/opp/data/Job;)V
    .locals 1
    .parameter "sessionId"
    .parameter "request"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v0, p0, Lcom/broadcom/bt/app/opp/data/OPPSession;->mRequestCount:I

    .line 29
    iput-boolean v0, p0, Lcom/broadcom/bt/app/opp/data/OPPSession;->mTimeoutOccurred:Z

    .line 30
    iput-boolean v0, p0, Lcom/broadcom/bt/app/opp/data/OPPSession;->mCloseRequested:Z

    .line 31
    iput-boolean v0, p0, Lcom/broadcom/bt/app/opp/data/OPPSession;->mClosed:Z

    .line 32
    iput-boolean v0, p0, Lcom/broadcom/bt/app/opp/data/OPPSession;->mStarted:Z

    .line 41
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/data/OPPSession;->mSessionId:Ljava/lang/String;

    .line 42
    invoke-virtual {p0, p2}, Lcom/broadcom/bt/app/opp/data/OPPSession;->setLatestRequest(Lcom/broadcom/bt/app/opp/data/Job;)V

    .line 43
    return-void
.end method


# virtual methods
.method public setLatestRequest(Lcom/broadcom/bt/app/opp/data/Job;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/data/OPPSession;->mLatestRequest:Lcom/broadcom/bt/app/opp/data/Job;

    .line 47
    iget v0, p0, Lcom/broadcom/bt/app/opp/data/OPPSession;->mRequestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/broadcom/bt/app/opp/data/OPPSession;->mRequestCount:I

    .line 48
    return-void
.end method

.method public setRequestTypeAllowed(Lcom/broadcom/bt/app/opp/data/Job;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 50
    iget v0, p1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/broadcom/bt/app/opp/data/OPPSession;->mRequestTypesAllowed:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/app/opp/data/OPPSession;->mRequestTypesAllowed:Ljava/util/HashSet;

    iget v1, p1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/data/OPPSession;->mRequestTypesAllowed:Ljava/util/HashSet;

    if-nez v0, :cond_1

    .line 53
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/data/OPPSession;->mRequestTypesAllowed:Ljava/util/HashSet;

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/data/OPPSession;->mRequestTypesAllowed:Ljava/util/HashSet;

    iget v1, p1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_2
    return-void
.end method
