.class Lcom/broadcom/bt/app/opp/OppActivity$4;
.super Ljava/lang/Object;
.source "OppActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/opp/OppActivity;->setGroupContactPushDialog()V
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
    .line 131
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/OppActivity$4;->this$0:Lcom/broadcom/bt/app/opp/OppActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 133
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    .line 134
    .local v0, d:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    .line 135
    .local v1, groupId:I
    invoke-static {v1}, Lcom/broadcom/bt/app/opp/contact/ContactGroupSelectorManager;->getGroupSelector(I)Lcom/broadcom/bt/app/opp/contact/IContactGroupSelector;

    move-result-object v2

    .line 137
    .local v2, selector:Lcom/broadcom/bt/app/opp/contact/IContactGroupSelector;
    if-nez v2, :cond_0

    .line 139
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/OppActivity$4;->this$0:Lcom/broadcom/bt/app/opp/OppActivity;

    const v4, 0x7f0500e6

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 142
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/OppActivity$4;->this$0:Lcom/broadcom/bt/app/opp/OppActivity;

    invoke-virtual {v3}, Lcom/broadcom/bt/app/opp/OppActivity;->finish()V

    .line 154
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/OppActivity$4;->this$0:Lcom/broadcom/bt/app/opp/OppActivity;

    #calls: Lcom/broadcom/bt/app/opp/OppActivity;->startGroupContactPush_WithGroupUri(Lcom/broadcom/bt/app/opp/contact/IContactGroupSelector;)V
    invoke-static {v3, v2}, Lcom/broadcom/bt/app/opp/OppActivity;->access$100(Lcom/broadcom/bt/app/opp/OppActivity;Lcom/broadcom/bt/app/opp/contact/IContactGroupSelector;)V

    goto :goto_0
.end method
