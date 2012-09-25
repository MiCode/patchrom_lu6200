.class public Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;
.super Ljava/lang/Object;
.source "OPPClientService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/opp/client/OPPClientService;
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

.field final synthetic this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;


# direct methods
.method protected constructor <init>(Lcom/broadcom/bt/app/opp/client/OPPClientService;)V
    .locals 1
    .parameter

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1019
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;->mSessionMap:Ljava/util/HashMap;

    return-void
.end method

.method private getSessionKey(Lcom/broadcom/bt/app/opp/data/Job;)Ljava/lang/String;
    .locals 1
    .parameter "request"

    .prologue
    .line 1038
    iget-object v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addNewSession(Lcom/broadcom/bt/app/opp/data/Job;)Lcom/broadcom/bt/app/opp/data/OPPSession;
    .locals 3
    .parameter "request"

    .prologue
    .line 1031
    new-instance v0, Lcom/broadcom/bt/app/opp/data/OPPSession;

    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;->getSessionKey(Lcom/broadcom/bt/app/opp/data/Job;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/app/opp/data/OPPSession;-><init>(Ljava/lang/String;Lcom/broadcom/bt/app/opp/data/Job;)V

    .line 1032
    .local v0, s:Lcom/broadcom/bt/app/opp/data/OPPSession;
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;->mSessionMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    iput-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;->mLatestSession:Lcom/broadcom/bt/app/opp/data/OPPSession;

    .line 1034
    return-object v0
.end method

.method public declared-synchronized closeSession(Lcom/broadcom/bt/app/opp/data/Job;Lcom/broadcom/bt/app/opp/util/ISessionCloseHandler;)Z
    .locals 4
    .parameter "request"
    .parameter "handler"

    .prologue
    .line 1095
    monitor-enter p0

    :try_start_0
    const-string v1, "OPPClientSessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "closeSession() for requestId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;->mSessionMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;->getSessionKey(Lcom/broadcom/bt/app/opp/data/Job;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/app/opp/data/OPPSession;

    .line 1099
    .local v0, s:Lcom/broadcom/bt/app/opp/data/OPPSession;
    if-nez v0, :cond_0

    .line 1100
    const-string v1, "OPPClientSessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session not found for request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1101
    const/4 v1, 0x0

    .line 1103
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {p0, v0, p2}, Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;->closeSession(Lcom/broadcom/bt/app/opp/data/OPPSession;Lcom/broadcom/bt/app/opp/util/ISessionCloseHandler;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 1095
    .end local v0           #s:Lcom/broadcom/bt/app/opp/data/OPPSession;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized closeSession(Lcom/broadcom/bt/app/opp/data/OPPSession;Lcom/broadcom/bt/app/opp/util/ISessionCloseHandler;)Z
    .locals 4
    .parameter "s"
    .parameter "handler"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1107
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1130
    :goto_0
    monitor-exit p0

    return v0

    .line 1110
    :cond_0
    :try_start_0
    iget-boolean v2, p1, Lcom/broadcom/bt/app/opp/data/OPPSession;->mCloseRequested:Z

    if-eqz v2, :cond_1

    .line 1111
    const-string v1, "OPPClientSessionManager"

    const-string v2, "Session already marked already closing"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1114
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p1, Lcom/broadcom/bt/app/opp/data/OPPSession;->mCloseRequested:Z

    .line 1117
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseService;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->access$2000(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    move-result-object v0

    const/16 v2, 0x3a98

    iget-object v3, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    iget-object v3, v3, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mClientState:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    invoke-virtual {v0, v2, p2, v3}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->startOrRestartWatchdog(ILcom/broadcom/bt/app/opp/util/IWatchdogHandler;Ljava/lang/Object;)V

    .line 1120
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    #setter for: Lcom/broadcom/bt/app/opp/client/OPPClientService;->mCloseHandler:Lcom/broadcom/bt/app/opp/util/ISessionCloseHandler;
    invoke-static {v0, p2}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->access$1102(Lcom/broadcom/bt/app/opp/client/OPPClientService;Lcom/broadcom/bt/app/opp/util/ISessionCloseHandler;)Lcom/broadcom/bt/app/opp/util/ISessionCloseHandler;

    .line 1125
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->access$2100(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/service/opp/BluetoothOPP;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1128
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->access$2200(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/service/opp/BluetoothOPP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->closeOpcSession()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    move v0, v1

    .line 1130
    goto :goto_0
.end method

.method public getLatestSession()Lcom/broadcom/bt/app/opp/data/OPPSession;
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;->mLatestSession:Lcom/broadcom/bt/app/opp/data/OPPSession;

    return-object v0
.end method

.method public declared-synchronized setLatestSessionStarted()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1079
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;->mLatestSession:Lcom/broadcom/bt/app/opp/data/OPPSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1080
    const/4 v0, 0x0

    .line 1090
    :goto_0
    monitor-exit p0

    return v0

    .line 1083
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;->mLatestSession:Lcom/broadcom/bt/app/opp/data/OPPSession;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/broadcom/bt/app/opp/data/OPPSession;->mStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1079
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
