.class Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler$1;
.super Ljava/lang/Object;
.source "VCardExchangeClientHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->finalizeExchange()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler$1;->this$0:Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler$1;->this$0:Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler$1;->this$0:Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;

    #getter for: Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->mReceivedVCardFilepath:Ljava/lang/String;
    invoke-static {v1}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->access$000(Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->processReceivedVCard(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;->access$100(Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;Ljava/lang/String;)V

    .line 265
    return-void
.end method
