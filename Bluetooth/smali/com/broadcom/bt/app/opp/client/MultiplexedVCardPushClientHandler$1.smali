.class Lcom/broadcom/bt/app/opp/client/MultiplexedVCardPushClientHandler$1;
.super Ljava/lang/Object;
.source "MultiplexedVCardPushClientHandler.java"

# interfaces
.implements Lcom/broadcom/bt/app/opp/util/IWatchdogHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/opp/client/MultiplexedVCardPushClientHandler;->setupContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/opp/client/MultiplexedVCardPushClientHandler;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/opp/client/MultiplexedVCardPushClientHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/client/MultiplexedVCardPushClientHandler$1;->this$0:Lcom/broadcom/bt/app/opp/client/MultiplexedVCardPushClientHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public onTimeout()V
    .locals 2

    .prologue
    .line 74
    const-string v0, "MultiplexedVCardPushClientHandler"

    const-string v1, "Timeout creating VCard"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/MultiplexedVCardPushClientHandler$1;->this$0:Lcom/broadcom/bt/app/opp/client/MultiplexedVCardPushClientHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/app/opp/client/MultiplexedVCardPushClientHandler;->onContentSetupError(Ljava/lang/Throwable;)V

    .line 76
    return-void
.end method
