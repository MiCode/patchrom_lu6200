.class Lcom/broadcom/bt/app/opp/client/OPPClientService$EnableTimeoutRetryHandler;
.super Ljava/lang/Object;
.source "OPPClientService.java"

# interfaces
.implements Lcom/broadcom/bt/app/opp/util/IWatchdogHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/opp/client/OPPClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnableTimeoutRetryHandler"
.end annotation


# instance fields
.field mRetryCount:I

.field final synthetic this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/app/opp/client/OPPClientService;)V
    .locals 0
    .parameter

    .prologue
    .line 686
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$EnableTimeoutRetryHandler;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/app/opp/client/OPPClientService;Lcom/broadcom/bt/app/opp/client/OPPClientService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 686
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/opp/client/OPPClientService$EnableTimeoutRetryHandler;-><init>(Lcom/broadcom/bt/app/opp/client/OPPClientService;)V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 0

    .prologue
    .line 709
    return-void
.end method

.method public onTimeout()V
    .locals 3

    .prologue
    .line 695
    iget v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$EnableTimeoutRetryHandler;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$EnableTimeoutRetryHandler;->mRetryCount:I

    .line 696
    iget v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$EnableTimeoutRetryHandler;->mRetryCount:I

    if-lez v0, :cond_0

    .line 697
    const-string v0, "OPPClientService"

    const-string v1, "Timeout occurred while enabling OPC, max retries reached...Attempting to continue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$EnableTimeoutRetryHandler;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    #getter for: Lcom/broadcom/bt/app/opp/client/OPPClientService;->mProcessor:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->access$1300(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->onOpcEnable()V

    .line 706
    :goto_0
    return-void

    .line 701
    :cond_0
    const-string v0, "OPPClientService"

    const-string v1, "Timeout occured while enabling OPC...Retrying enableOPCSession...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$EnableTimeoutRetryHandler;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseService;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->access$1400(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    move-result-object v0

    const/16 v1, 0x1388

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$EnableTimeoutRetryHandler;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    iget-object v2, v2, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mClientState:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    invoke-virtual {v0, v1, p0, v2}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->startOrRestartWatchdog(ILcom/broadcom/bt/app/opp/util/IWatchdogHandler;Ljava/lang/Object;)V

    .line 704
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$EnableTimeoutRetryHandler;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->access$1500(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/service/opp/BluetoothOPP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->enableOpcSession()V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 691
    const/4 v0, 0x0

    iput v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$EnableTimeoutRetryHandler;->mRetryCount:I

    .line 692
    return-void
.end method
