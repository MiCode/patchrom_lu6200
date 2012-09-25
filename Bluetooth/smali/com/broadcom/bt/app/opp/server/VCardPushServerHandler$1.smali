.class Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler$1;
.super Ljava/lang/Object;
.source "VCardPushServerHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;->processReceivedFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler$1;->this$0:Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler$1;->this$0:Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler$1;->this$0:Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;

    #getter for: Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;->VCpath:Landroid/net/Uri;
    invoke-static {v1}, Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;->access$000(Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;->processReceivedVCard(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;->access$100(Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;Ljava/lang/String;)V

    .line 63
    return-void
.end method
