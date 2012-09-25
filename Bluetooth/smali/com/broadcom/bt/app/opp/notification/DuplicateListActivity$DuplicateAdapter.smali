.class Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DuplicateAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "DuplicateListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DuplicateAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "c"

    .prologue
    .line 619
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DuplicateAdapter;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;

    .line 620
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 621
    iput-object p2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DuplicateAdapter;->mContext:Landroid/content/Context;

    .line 622
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 14
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 626
    const v9, 0x7f08000e

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 627
    .local v8, tv:Landroid/widget/TextView;
    const/4 v9, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 628
    .local v7, title:Ljava/lang/String;
    if-nez v7, :cond_0

    .line 629
    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DuplicateAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0500fa

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DuplicateAdapter;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;

    iget v13, v13, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mObjectTypeId:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 631
    :cond_0
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    const v9, 0x7f08000d

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 639
    .local v6, iv:Landroid/widget/ImageView;
    const v9, 0x7f08000f

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 643
    .local v1, dupAction:Landroid/widget/TextView;
    const/16 v9, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 644
    .local v5, dupStatusStr:Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 646
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 647
    .local v4, dupStatus:I
    const/4 v9, 0x1

    if-ne v4, v9, :cond_2

    .line 648
    const v9, 0x108004e

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 649
    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DuplicateAdapter;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;

    const v10, 0x7f0500da

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DuplicateAdapter;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;

    iget-object v13, v13, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mObjectTypeCapsStringResource:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 684
    .end local v4           #dupStatus:I
    :cond_1
    :goto_0
    return-void

    .line 652
    .restart local v4       #dupStatus:I
    :cond_2
    const/4 v9, 0x4

    if-ne v4, v9, :cond_3

    .line 653
    const v9, 0x108004e

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 654
    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DuplicateAdapter;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;

    const v10, 0x7f0500db

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DuplicateAdapter;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;

    iget-object v13, v13, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mObjectTypeCapsStringResource:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/View;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 659
    .end local v4           #dupStatus:I
    :catch_0
    move-exception v9

    .line 663
    :cond_3
    const/4 v2, 0x1

    .line 664
    .local v2, dupActionId:I
    const/4 v9, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 665
    .local v3, dupActionIdStr:Ljava/lang/String;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 667
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 673
    :cond_4
    :goto_1
    const/4 v9, 0x1

    if-ne v2, v9, :cond_5

    .line 674
    const v9, 0x1080033

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 675
    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DuplicateAdapter;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;

    const v10, 0x7f0500d7

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DuplicateAdapter;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;

    iget-object v13, v13, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mObjectTypeStringResource:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 676
    :cond_5
    const/4 v9, 0x2

    if-ne v2, v9, :cond_6

    .line 677
    const v9, 0x108003e

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 678
    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DuplicateAdapter;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;

    const v10, 0x7f0500d8

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DuplicateAdapter;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;

    iget-object v13, v13, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mObjectTypeStringResource:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 679
    :cond_6
    if-nez v2, :cond_1

    .line 680
    const v9, 0x108003c

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 681
    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DuplicateAdapter;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;

    const v10, 0x7f0500d9

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DuplicateAdapter;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;

    iget-object v13, v13, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mObjectTypeStringResource:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 668
    :catch_1
    move-exception v9

    goto :goto_1
.end method
