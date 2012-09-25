.class Lcom/broadcom/bt/app/opp/util/BaseService$2;
.super Landroid/os/Handler;
.source "BaseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/opp/util/BaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/opp/util/BaseService;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/opp/util/BaseService;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/util/BaseService$2;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 115
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService$2;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    #calls: Lcom/broadcom/bt/app/opp/util/BaseService;->startShutdown()V
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/util/BaseService;->access$000(Lcom/broadcom/bt/app/opp/util/BaseService;)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService$2;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseService;->mShutdownScheduled:Z
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/util/BaseService;->access$100(Lcom/broadcom/bt/app/opp/util/BaseService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    const-string v0, "OPPBaseService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Shutdown did not complete....Forcing shutdown with stopSelf()..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService$2;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/util/BaseService;->stopSelf()V

    goto :goto_0

    .line 127
    :cond_2
    const-string v0, "OPPBaseService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Shutdown not scheduled or no longer scheduled. Will not force shutdown..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
