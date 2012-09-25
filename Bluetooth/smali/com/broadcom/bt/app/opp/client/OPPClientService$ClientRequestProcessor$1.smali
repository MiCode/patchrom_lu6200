.class Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor$1;
.super Ljava/lang/Object;
.source "OPPClientService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->onOpcEnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;)V
    .locals 0
    .parameter

    .prologue
    .line 838
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor$1;->this$1:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 840
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor$1;->this$1:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor$1;->this$1:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;

    iget-object v1, v1, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->mClientHandler:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->getRequest()Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->processFirstRequest(Lcom/broadcom/bt/app/opp/data/Job;)Z

    .line 841
    return-void
.end method
