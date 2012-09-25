.class Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCardActionWrapper;
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
    name = "DupVCardActionWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupAction;",
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
    .line 571
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCardActionWrapper;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 572
    iput-object p2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCardActionWrapper;->mCursor:Landroid/database/Cursor;

    .line 573
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    iput-boolean v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCardActionWrapper;->mHasNext:Z

    .line 574
    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;Landroid/database/Cursor;Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 567
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCardActionWrapper;-><init>(Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCardActionWrapper;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCardActionWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 612
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCardActionWrapper;->mCursor:Landroid/database/Cursor;

    .line 613
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 577
    iget-boolean v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCardActionWrapper;->mHasNext:Z

    return v0
.end method

.method public next()Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupAction;
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 581
    iget-boolean v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCardActionWrapper;->mHasNext:Z

    if-nez v1, :cond_1

    .line 582
    const/4 v0, 0x0

    .line 602
    :cond_0
    :goto_0
    return-object v0

    .line 584
    :cond_1
    new-instance v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupAction;

    invoke-direct {v0}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupAction;-><init>()V

    .line 585
    .local v0, action:Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupAction;
    iput v2, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupAction;->mAction:I

    .line 586
    iput v2, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupAction;->mIndex:I

    .line 587
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCardActionWrapper;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 591
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCardActionWrapper;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupAction;->mAction:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 595
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCardActionWrapper;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupAction;->mIndex:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 598
    :goto_2
    const-string v1, "OPP.DuplicateListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*******Index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupAction;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupAction;->mAction:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCardActionWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    iput-boolean v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCardActionWrapper;->mHasNext:Z

    goto :goto_0

    .line 596
    :catch_0
    move-exception v1

    goto :goto_2

    .line 592
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCardActionWrapper;->next()Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupAction;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    .prologue
    .line 606
    return-void
.end method
