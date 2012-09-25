.class Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor$1;
.super Ljava/lang/Object;
.source "OPPServerService.java"

# interfaces
.implements Lcom/broadcom/bt/app/opp/util/IWatchdogHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->processFirstRequest(Lcom/broadcom/bt/app/opp/data/Job;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;)V
    .locals 0
    .parameter

    .prologue
    .line 480
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor$1;->this$1:Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 0

    .prologue
    .line 488
    return-void
.end method

.method public onTimeout()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor$1;->this$1:Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;

    iget-object v0, v0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    #calls: Lcom/broadcom/bt/app/opp/server/OPPServerService;->onOpsTimeout()V
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->access$100(Lcom/broadcom/bt/app/opp/server/OPPServerService;)V

    .line 484
    return-void
.end method
