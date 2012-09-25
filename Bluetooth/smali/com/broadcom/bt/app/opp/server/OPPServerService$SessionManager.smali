.class public Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;
.super Ljava/lang/Object;
.source "OPPServerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/opp/server/OPPServerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SessionManager"
.end annotation


# instance fields
.field public mLatestSession:Lcom/broadcom/bt/app/opp/data/OPPSession;

.field private mSessionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/broadcom/bt/app/opp/data/OPPSession;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;


# direct methods
.method protected constructor <init>(Lcom/broadcom/bt/app/opp/server/OPPServerService;)V
    .locals 1
    .parameter

    .prologue
    .line 783
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 786
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;->mSessionMap:Ljava/util/HashMap;

    return-void
.end method

.method private getSessionKey(Lcom/broadcom/bt/app/opp/data/Job;)Ljava/lang/String;
    .locals 1
    .parameter "request"

    .prologue
    .line 799
    iget-object v0, p1, Lcom/broadcom/bt/app/opp/data/Job;->mTransactionId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addNewSession(Lcom/broadcom/bt/app/opp/data/Job;)Lcom/broadcom/bt/app/opp/data/OPPSession;
    .locals 3
    .parameter "request"

    .prologue
    .line 791
    new-instance v0, Lcom/broadcom/bt/app/opp/data/OPPSession;

    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;->getSessionKey(Lcom/broadcom/bt/app/opp/data/Job;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/app/opp/data/OPPSession;-><init>(Ljava/lang/String;Lcom/broadcom/bt/app/opp/data/Job;)V

    .line 792
    .local v0, s:Lcom/broadcom/bt/app/opp/data/OPPSession;
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;->mSessionMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/broadcom/bt/app/opp/data/Job;->mTransactionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    iput-object v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;->mLatestSession:Lcom/broadcom/bt/app/opp/data/OPPSession;

    .line 794
    return-object v0
.end method

.method public closeSession(Lcom/broadcom/bt/app/opp/data/Job;)Z
    .locals 6
    .parameter "request"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 812
    const-string v3, "OPPServerSessionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "closeSession() for requestId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;->mSessionMap:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/broadcom/bt/app/opp/data/Job;->mTransactionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/app/opp/data/OPPSession;

    .line 815
    .local v0, s:Lcom/broadcom/bt/app/opp/data/OPPSession;
    if-nez v0, :cond_0

    .line 816
    const-string v2, "OPPServerSessionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session not found for request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :goto_0
    return v1

    .line 820
    :cond_0
    iget-boolean v3, v0, Lcom/broadcom/bt/app/opp/data/OPPSession;->mCloseRequested:Z

    if-eqz v3, :cond_1

    .line 821
    const-string v2, "OPPServerSessionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session already marked already closing found for request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 824
    :cond_1
    iput-boolean v2, v0, Lcom/broadcom/bt/app/opp/data/OPPSession;->mCloseRequested:Z

    .line 825
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    invoke-static {v1}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->access$1400(Lcom/broadcom/bt/app/opp/server/OPPServerService;)Lcom/broadcom/bt/service/opp/BluetoothOPP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->closeOpsSession()V

    move v1, v2

    .line 826
    goto :goto_0
.end method

.method public getLatestSession()Lcom/broadcom/bt/app/opp/data/OPPSession;
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;->mLatestSession:Lcom/broadcom/bt/app/opp/data/OPPSession;

    return-object v0
.end method

.method public getSession(Lcom/broadcom/bt/app/opp/data/Job;)Lcom/broadcom/bt/app/opp/data/OPPSession;
    .locals 2
    .parameter "request"

    .prologue
    .line 803
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;->mSessionMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;->getSessionKey(Lcom/broadcom/bt/app/opp/data/Job;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/app/opp/data/OPPSession;

    return-object v0
.end method

.method public removeSession(Ljava/lang/String;)Lcom/broadcom/bt/app/opp/data/OPPSession;
    .locals 1
    .parameter "sessionId"

    .prologue
    .line 830
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$SessionManager;->mSessionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/app/opp/data/OPPSession;

    return-object v0
.end method
