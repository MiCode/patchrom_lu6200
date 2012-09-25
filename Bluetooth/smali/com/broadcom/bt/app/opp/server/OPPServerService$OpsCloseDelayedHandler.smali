.class Lcom/broadcom/bt/app/opp/server/OPPServerService$OpsCloseDelayedHandler;
.super Ljava/lang/Object;
.source "OPPServerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/opp/server/OPPServerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpsCloseDelayedHandler"
.end annotation


# instance fields
.field private mServerHandler:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;

.field private retryCount:I

.field final synthetic this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/app/opp/server/OPPServerService;Lcom/broadcom/bt/app/opp/server/BaseServerHandler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 888
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$OpsCloseDelayedHandler;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 889
    iput-object p2, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$OpsCloseDelayedHandler;->mServerHandler:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;

    .line 890
    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/app/opp/server/OPPServerService;Lcom/broadcom/bt/app/opp/server/BaseServerHandler;Lcom/broadcom/bt/app/opp/server/OPPServerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 885
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/app/opp/server/OPPServerService$OpsCloseDelayedHandler;-><init>(Lcom/broadcom/bt/app/opp/server/OPPServerService;Lcom/broadcom/bt/app/opp/server/BaseServerHandler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 894
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$OpsCloseDelayedHandler;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    invoke-virtual {v2}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$OpsCloseDelayedHandler;->mServerHandler:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;

    invoke-virtual {v3}, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;->getRequest()Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v3

    invoke-virtual {v3}, Lcom/broadcom/bt/app/opp/data/Job;->getJobUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getRequest(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v0

    .line 895
    .local v0, request:Lcom/broadcom/bt/app/opp/data/Job;
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$OpsCloseDelayedHandler;->mServerHandler:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;

    invoke-virtual {v2}, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;->isErrorSet()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/data/Job;->isStatusFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 896
    iget v2, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$OpsCloseDelayedHandler;->retryCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$OpsCloseDelayedHandler;->retryCount:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    .line 897
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$OpsCloseDelayedHandler;->mServerHandler:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;

    const/16 v3, 0x1f2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;->processError(IJLjava/lang/Throwable;)V

    .line 905
    .end local v0           #request:Lcom/broadcom/bt/app/opp/data/Job;
    :cond_0
    :goto_0
    return-void

    .line 899
    .restart local v0       #request:Lcom/broadcom/bt/app/opp/data/Job;
    :cond_1
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$OpsCloseDelayedHandler;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    iget-object v2, v2, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mTimeoutEventHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x96

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 902
    .end local v0           #request:Lcom/broadcom/bt/app/opp/data/Job;
    :catch_0
    move-exception v1

    .line 903
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "OpsCloseDelayedHandler"

    const-string v3, "Error processing delayed OpsClose: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
