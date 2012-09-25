.class Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$4;
.super Ljava/lang/Object;
.source "DuplicateListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->updateSaveProgressDialog(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;

.field final synthetic val$displayName:Ljava/lang/String;

.field final synthetic val$msgResId:I


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 557
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$4;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;

    iput p2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$4;->val$msgResId:I

    iput-object p3, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$4;->val$displayName:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 559
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$4;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;

    #getter for: Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSaveProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->access$400(Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$4;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;

    #getter for: Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSaveProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->access$400(Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$4;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;

    iget v2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$4;->val$msgResId:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$4;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;

    iget-object v5, v5, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mObjectTypeStringResource:Ljava/lang/String;

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$4;->val$displayName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 561
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$4;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;

    #getter for: Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSaveProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->access$400(Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 563
    :cond_0
    return-void
.end method
