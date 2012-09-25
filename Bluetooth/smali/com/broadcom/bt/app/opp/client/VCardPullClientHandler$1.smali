.class Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler$1;
.super Ljava/lang/Object;
.source "VCardPullClientHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler;->onOpcObjectReceived(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler;

.field final synthetic val$filePathName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler$1;->this$0:Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler;

    iput-object p2, p0, Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler$1;->val$filePathName:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler$1;->this$0:Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler$1;->val$filePathName:Ljava/lang/String;

    #calls: Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler;->processReceivedVCard(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler;->access$000(Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler;Ljava/lang/String;)V

    .line 98
    return-void
.end method
