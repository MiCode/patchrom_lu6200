.class Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback;
.super Ljava/lang/Object;
.source "ExchangeFolderManager.java"

# interfaces
.implements Lcom/broadcom/bt/app/opp/util/IWatchdogHandler;
.implements Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OPPProxyCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback;->this$0:Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback;-><init>(Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;)V

    return-void
.end method


# virtual methods
.method public onProxyAvailable(Ljava/lang/Object;)V
    .locals 3
    .parameter "proxy"

    .prologue
    .line 95
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback;->this$0:Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;

    #getter for: Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;
    invoke-static {v1}, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->access$100(Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;)Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback;->this$0:Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;

    #getter for: Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;
    invoke-static {v1}, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->access$100(Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;)Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->stop()V

    .line 97
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback;->this$0:Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;

    const/4 v2, 0x0

    #setter for: Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;
    invoke-static {v1, v2}, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->access$102(Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;)Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback$1;-><init>(Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 120
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 121
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public onTimeout()V
    .locals 2

    .prologue
    .line 124
    const-string v0, "ExchangeFolderManager"

    const-string v1, "FATAL: Unable to get proxy object"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback;->this$0:Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;

    const/4 v1, 0x0

    #setter for: Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mPendingInit:Z
    invoke-static {v0, v1}, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->access$402(Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;Z)Z

    .line 126
    return-void
.end method
