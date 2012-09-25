.class Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCalActionWrapper;
.super Ljava/lang/Object;
.source "DuplicateListActivity.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DupVCalActionWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/broadcom/bt/service/opp/VCalUtil$DupAction;",
        ">;"
    }
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mHasNext:Z

.field final synthetic this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "cursor"

    .prologue
    .line 691
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCalActionWrapper;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 692
    iput-object p2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCalActionWrapper;->mCursor:Landroid/database/Cursor;

    .line 693
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    iput-boolean v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCalActionWrapper;->mHasNext:Z

    .line 694
    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;Landroid/database/Cursor;Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 687
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCalActionWrapper;-><init>(Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCalActionWrapper;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCalActionWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 731
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCalActionWrapper;->mCursor:Landroid/database/Cursor;

    .line 732
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 697
    iget-boolean v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCalActionWrapper;->mHasNext:Z

    return v0
.end method

.method public next()Lcom/broadcom/bt/service/opp/VCalUtil$DupAction;
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 701
    iget-boolean v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCalActionWrapper;->mHasNext:Z

    if-nez v1, :cond_1

    .line 702
    const/4 v0, 0x0

    .line 721
    :cond_0
    :goto_0
    return-object v0

    .line 704
    :cond_1
    new-instance v0, Lcom/broadcom/bt/service/opp/VCalUtil$DupAction;

    invoke-direct {v0}, Lcom/broadcom/bt/service/opp/VCalUtil$DupAction;-><init>()V

    .line 705
    .local v0, action:Lcom/broadcom/bt/service/opp/VCalUtil$DupAction;
    iput v2, v0, Lcom/broadcom/bt/service/opp/VCalUtil$DupAction;->mAction:I

    .line 706
    iput v2, v0, Lcom/broadcom/bt/service/opp/VCalUtil$DupAction;->mIndex:I

    .line 707
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCalActionWrapper;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 711
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCalActionWrapper;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/broadcom/bt/service/opp/VCalUtil$DupAction;->mAction:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 715
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCalActionWrapper;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/broadcom/bt/service/opp/VCalUtil$DupAction;->mIndex:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 717
    :goto_2
    const-string v1, "OPP.DuplicateListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*******Index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/broadcom/bt/service/opp/VCalUtil$DupAction;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/broadcom/bt/service/opp/VCalUtil$DupAction;->mAction:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCalActionWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    iput-boolean v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCalActionWrapper;->mHasNext:Z

    goto :goto_0

    .line 716
    :catch_0
    move-exception v1

    goto :goto_2

    .line 712
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCalActionWrapper;->next()Lcom/broadcom/bt/service/opp/VCalUtil$DupAction;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    .prologue
    .line 725
    return-void
.end method
