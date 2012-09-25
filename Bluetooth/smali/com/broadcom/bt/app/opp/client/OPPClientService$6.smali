.class Lcom/broadcom/bt/app/opp/client/OPPClientService$6;
.super Ljava/lang/Object;
.source "OPPClientService.java"

# interfaces
.implements Lcom/broadcom/bt/app/opp/util/ISessionCloseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/opp/client/OPPClientService;->processRequest_NewSession_StopPrevious(Lcom/broadcom/bt/app/opp/data/OPPSession;Lcom/broadcom/bt/app/opp/data/Job;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

.field final synthetic val$request:Lcom/broadcom/bt/app/opp/data/Job;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/opp/client/OPPClientService;Lcom/broadcom/bt/app/opp/data/Job;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 753
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$6;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    iput-object p2, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$6;->val$request:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onSessionClosed(I)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 756
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$6;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$6;->val$request:Lcom/broadcom/bt/app/opp/data/Job;

    #calls: Lcom/broadcom/bt/app/opp/client/OPPClientService;->processRequest_NewSession(Lcom/broadcom/bt/app/opp/data/Job;)Z
    invoke-static {v0, v1}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->access$1600(Lcom/broadcom/bt/app/opp/client/OPPClientService;Lcom/broadcom/bt/app/opp/data/Job;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 757
    monitor-exit p0

    return-void

    .line 756
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 764
    return-void
.end method

.method public declared-synchronized onTimeout()V
    .locals 1

    .prologue
    .line 760
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$6;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->onTimeout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    monitor-exit p0

    return-void

    .line 760
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
