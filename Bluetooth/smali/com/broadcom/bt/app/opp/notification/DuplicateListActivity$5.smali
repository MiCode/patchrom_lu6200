.class Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$5;
.super Ljava/lang/Object;
.source "DuplicateListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->onParseComplete(Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;)V
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
    .line 736
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$5;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$5;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;

    #calls: Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->finishSave()V
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->access$300(Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;)V

    .line 739
    return-void
.end method
