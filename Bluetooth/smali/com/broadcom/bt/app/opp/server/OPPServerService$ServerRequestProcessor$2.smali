.class Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor$2;
.super Ljava/lang/Object;
.source "OPPServerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->onOpsClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 682
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor$2;->this$1:Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;

    iput p2, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor$2;->val$id:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 684
    const-string v0, "ServerRequestProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Posting clear access request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor$2;->val$id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor$2;->this$1:Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;

    iget-object v0, v0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/server/OPPServerService;

    iget v1, p0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ServerRequestProcessor$2;->val$id:I

    invoke-static {v1}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->createIntent_ClearAccessRequest(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/app/opp/server/OPPServerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 686
    return-void
.end method
