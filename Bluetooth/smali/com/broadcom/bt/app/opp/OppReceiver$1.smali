.class Lcom/broadcom/bt/app/opp/OppReceiver$1;
.super Ljava/lang/Object;
.source "OppReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/opp/OppReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/opp/OppReceiver;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/opp/OppReceiver;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/OppReceiver$1;->this$0:Lcom/broadcom/bt/app/opp/OppReceiver;

    iput-object p2, p0, Lcom/broadcom/bt/app/opp/OppReceiver$1;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/broadcom/bt/app/opp/OppReceiver$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/broadcom/bt/app/opp/OppReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/OppReceiver$1;->this$0:Lcom/broadcom/bt/app/opp/OppReceiver;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/OppReceiver$1;->val$action:Ljava/lang/String;

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/OppReceiver$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/broadcom/bt/app/opp/OppReceiver$1;->val$intent:Landroid/content/Intent;

    #calls: Lcom/broadcom/bt/app/opp/OppReceiver;->processServiceStateChange(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, v1, v2, v3}, Lcom/broadcom/bt/app/opp/OppReceiver;->access$000(Lcom/broadcom/bt/app/opp/OppReceiver;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    .line 87
    return-void
.end method
