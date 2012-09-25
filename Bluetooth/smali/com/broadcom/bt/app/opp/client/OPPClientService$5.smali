.class Lcom/broadcom/bt/app/opp/client/OPPClientService$5;
.super Ljava/lang/Object;
.source "OPPClientService.java"

# interfaces
.implements Lcom/broadcom/bt/app/opp/util/ISessionCloseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/opp/client/OPPClientService;->processCancelAction(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/opp/client/OPPClientService;)V
    .locals 0
    .parameter

    .prologue
    .line 487
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$5;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionClosed(I)V
    .locals 5
    .parameter "arg0"

    .prologue
    .line 502
    const/4 v1, 0x0

    .line 503
    .local v1, request:Lcom/broadcom/bt/app/opp/data/Job;
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$5;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseService;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;
    invoke-static {v2}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->access$900(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->stop()V

    .line 504
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$5;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    #calls: Lcom/broadcom/bt/app/opp/client/OPPClientService;->getCurrentRequestHandler()Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
    invoke-static {v2}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->access$1000(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/app/opp/client/BaseClientHandler;

    move-result-object v0

    .line 505
    .local v0, handler:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->getRequest()Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v1

    .line 507
    if-eqz v1, :cond_0

    .line 508
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$5;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    invoke-virtual {v2}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v1, v3, v4}, Lcom/broadcom/bt/app/opp/data/Constants;->setStatusCancelled(Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;J)V

    .line 516
    :cond_0
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$5;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    const/4 v3, 0x0

    #setter for: Lcom/broadcom/bt/app/opp/client/OPPClientService;->mCloseHandler:Lcom/broadcom/bt/app/opp/util/ISessionCloseHandler;
    invoke-static {v2, v3}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->access$1102(Lcom/broadcom/bt/app/opp/client/OPPClientService;Lcom/broadcom/bt/app/opp/util/ISessionCloseHandler;)Lcom/broadcom/bt/app/opp/util/ISessionCloseHandler;

    .line 518
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 494
    return-void
.end method

.method public onTimeout()V
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$5;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->onTimeout()V

    .line 491
    return-void
.end method
