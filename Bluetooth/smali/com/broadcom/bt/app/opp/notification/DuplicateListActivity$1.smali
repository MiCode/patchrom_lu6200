.class Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$1;
.super Ljava/lang/Object;
.source "DuplicateListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 184
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$1;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$1;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->showDialog(I)V

    .line 187
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$1;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mShowInfoDialog:Z

    .line 188
    return-void
.end method
