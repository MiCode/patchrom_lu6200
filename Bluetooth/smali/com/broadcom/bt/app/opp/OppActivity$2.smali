.class Lcom/broadcom/bt/app/opp/OppActivity$2;
.super Ljava/lang/Object;
.source "OppActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/opp/OppActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/opp/OppActivity;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/opp/OppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/OppActivity$2;->this$0:Lcom/broadcom/bt/app/opp/OppActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 88
    .local v0, intent:Landroid/content/Intent;
    packed-switch p2, :pswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 90
    :pswitch_0
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/OppActivity$2;->this$0:Lcom/broadcom/bt/app/opp/OppActivity;

    #calls: Lcom/broadcom/bt/app/opp/OppActivity;->setGroupContactPushDialog()V
    invoke-static {v1}, Lcom/broadcom/bt/app/opp/OppActivity;->access$000(Lcom/broadcom/bt/app/opp/OppActivity;)V

    goto :goto_0

    .line 93
    :pswitch_1
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v1, "text/x-vcard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/OppActivity$2;->this$0:Lcom/broadcom/bt/app/opp/OppActivity;

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/OppActivity$2;->this$0:Lcom/broadcom/bt/app/opp/OppActivity;

    const v3, 0x7f0500b7

    invoke-virtual {v2, v3}, Lcom/broadcom/bt/app/opp/OppActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/app/opp/OppActivity;->startActivity(Landroid/content/Intent;)V

    .line 98
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/OppActivity$2;->this$0:Lcom/broadcom/bt/app/opp/OppActivity;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/opp/OppActivity;->finish()V

    goto :goto_0

    .line 101
    :pswitch_2
    const-string v1, "com.broadcom.bt.app.opp.action.OPP_EXCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v1, "text/x-vcard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/OppActivity$2;->this$0:Lcom/broadcom/bt/app/opp/OppActivity;

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/OppActivity$2;->this$0:Lcom/broadcom/bt/app/opp/OppActivity;

    const v3, 0x7f0500b8

    invoke-virtual {v2, v3}, Lcom/broadcom/bt/app/opp/OppActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/app/opp/OppActivity;->startActivity(Landroid/content/Intent;)V

    .line 107
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/OppActivity$2;->this$0:Lcom/broadcom/bt/app/opp/OppActivity;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/opp/OppActivity;->finish()V

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
