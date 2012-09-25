.class Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$2;
.super Ljava/lang/Object;
.source "DuplicateListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$2;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$2;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;

    #getter for: Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->access$000(Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 255
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$2;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;

    const/4 v1, 0x0

    #setter for: Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->access$002(Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 256
    return-void
.end method
