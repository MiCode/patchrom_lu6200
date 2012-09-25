.class public Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "OppTransferActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/opp/notification/OppTransferActivity$BluetoothTransferContentObserver;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mIsComplete:Z

.field private mIsDupHandled:Z

.field private mIsLabelSetFileSize:Z

.field private mIsLabelSetStatus:Z

.field private mLine1View:Landroid/widget/TextView;

.field private mLine2View:Landroid/widget/TextView;

.field private mLine3View:Landroid/widget/TextView;

.field private mLine5View:Landroid/widget/TextView;

.field private mNeedToUpdateFileName:Z

.field private mObserver:Lcom/broadcom/bt/app/opp/notification/OppTransferActivity$BluetoothTransferContentObserver;

.field private mPara:Lcom/android/internal/app/AlertController$AlertParams;

.field private mPercentView:Landroid/widget/TextView;

.field private mProgressTransfer:Landroid/widget/ProgressBar;

.field private mRequest:Lcom/broadcom/bt/app/opp/data/Job;

.field private mUri:Landroid/net/Uri;

.field private mView:Landroid/view/View;

.field private mWhichDialog:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mView:Landroid/view/View;

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mNeedToUpdateFileName:Z

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;)Lcom/broadcom/bt/app/opp/data/Job;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    return-object v0
.end method

.method static synthetic access$202(Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;Lcom/broadcom/bt/app/opp/data/Job;)Lcom/broadcom/bt/app/opp/data/Job;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    return-object p1
.end method

.method static synthetic access$300(Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mIsDupHandled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mIsDupHandled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->updateProgressbar()V

    return-void
.end method

.method static synthetic access$500(Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->updateTransferLabels()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 3

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mView:Landroid/view/View;

    .line 405
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mView:Landroid/view/View;

    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    .line 406
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mView:Landroid/view/View;

    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mPercentView:Landroid/widget/TextView;

    .line 408
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->customizeViewContent()V

    .line 410
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->updateProgressbar()V

    .line 412
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method private customizeViewContent()V
    .locals 14

    .prologue
    const v13, 0x7f080018

    const v8, 0x7f080017

    const v12, 0x7f0500b2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 422
    const-string v5, ""

    .line 423
    .local v5, tmp:Ljava/lang/String;
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {p0, v6}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->getObjectType(Landroid/content/Context;Lcom/broadcom/bt/app/opp/data/Job;)I

    move-result v2

    .line 424
    .local v2, objectType:I
    invoke-static {v2}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeResourceId_Cap(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 425
    .local v4, objectTypeDisplayNameCaps:Ljava/lang/String;
    invoke-static {v2}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeResourceId(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 432
    .local v3, objectTypeDisplayName:Ljava/lang/String;
    iget v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    if-eq v6, v10, :cond_0

    iget v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_6

    .line 436
    :cond_0
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine1View:Landroid/widget/TextView;

    .line 442
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine1View:Landroid/widget/TextView;

    const v7, 0x7f05001e

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v9, v9, Lcom/broadcom/bt/app/opp/data/Job;->mRemoteName:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-virtual {p0, v7, v8}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine2View:Landroid/widget/TextView;

    .line 451
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine2View:Landroid/widget/TextView;

    const v7, 0x7f05001f

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {p0, v9, v12}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->getDisplayedFilename(Landroid/content/Context;Lcom/broadcom/bt/app/opp/data/Job;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {p0, v7, v8}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mView:Landroid/view/View;

    const v7, 0x7f080019

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine3View:Landroid/widget/TextView;

    .line 463
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine3View:Landroid/widget/TextView;

    const v7, 0x7f050020

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {p0, v9}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->getFormattedFileSize(Landroid/content/Context;Lcom/broadcom/bt/app/opp/data/Job;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {p0, v7, v8}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mView:Landroid/view/View;

    const v7, 0x7f08001b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine5View:Landroid/widget/TextView;

    .line 476
    iget v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    if-nez v6, :cond_4

    .line 479
    const v6, 0x7f050092

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v3, v7, v11

    invoke-virtual {p0, v6, v7}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 493
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine5View:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget v6, v6, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v6}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 710
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 711
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mPercentView:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 715
    :cond_3
    return-void

    .line 487
    :cond_4
    iget v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    if-eq v6, v10, :cond_5

    iget v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_1

    .line 489
    :cond_5
    const v6, 0x7f050093

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v4, v7, v11

    invoke-virtual {p0, v6, v7}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 499
    :cond_6
    iget v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_7

    iget v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_7

    iget v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_d

    .line 503
    :cond_7
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine1View:Landroid/widget/TextView;

    .line 508
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine1View:Landroid/widget/TextView;

    const v7, 0x7f05002b

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v9, v9, Lcom/broadcom/bt/app/opp/data/Job;->mRemoteName:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-virtual {p0, v7, v8}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine2View:Landroid/widget/TextView;

    .line 516
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {p0, v6, v12}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->getDisplayedFilename(Landroid/content/Context;Lcom/broadcom/bt/app/opp/data/Job;I)Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, displayedFileName:Ljava/lang/String;
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    if-eqz v6, :cond_9

    iget v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_9

    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/broadcom/bt/app/opp/data/Job;->getCurrentBytes(J)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_9

    .line 521
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    const v7, 0x7f0500b3

    invoke-static {p0, v6, v7}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->getDisplayedFilename(Landroid/content/Context;Lcom/broadcom/bt/app/opp/data/Job;I)Ljava/lang/String;

    move-result-object v0

    .line 522
    iput-boolean v10, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mNeedToUpdateFileName:Z

    .line 523
    const-string v6, "OppTransferActivity"

    const-string v7, "NAME UPDATE CASE - Set plz wait #01"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :goto_2
    const-string v6, "OppTransferActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWhichDialog = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine2View:Landroid/widget/TextView;

    const v7, 0x7f05001f

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v0, v8, v11

    invoke-virtual {p0, v7, v8}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mView:Landroid/view/View;

    const v7, 0x7f080019

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine3View:Landroid/widget/TextView;

    .line 540
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-wide v6, v6, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_a

    .line 541
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine3View:Landroid/widget/TextView;

    const v7, 0x7f05008d

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v9, v9, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    invoke-static {p0, v0, v9}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->getDisplayedFileType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {p0, v7, v8}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    :goto_3
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mView:Landroid/view/View;

    const v7, 0x7f08001b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine5View:Landroid/widget/TextView;

    .line 552
    iget v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_c

    .line 558
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget v6, v6, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    const/16 v7, 0xbe

    if-ne v6, v7, :cond_b

    .line 559
    const v6, 0x7f05008f

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v3, v7, v11

    invoke-virtual {p0, v6, v7}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 580
    :cond_8
    :goto_4
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine5View:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 525
    :cond_9
    iput-boolean v11, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mNeedToUpdateFileName:Z

    goto/16 :goto_2

    .line 544
    :cond_a
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine3View:Landroid/widget/TextView;

    const v7, 0x7f05002c

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v9, v9, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    invoke-static {p0, v0, v9}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->getDisplayedFileType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {p0, v9}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->getFormattedFileSize(Landroid/content/Context;Lcom/broadcom/bt/app/opp/data/Job;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 564
    :cond_b
    const v6, 0x7f05008e

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v3, v7, v11

    invoke-virtual {p0, v6, v7}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 574
    :cond_c
    iget v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_8

    .line 577
    const v6, 0x7f050090

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v4, v7, v11

    invoke-virtual {p0, v6, v7}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 581
    .end local v0           #displayedFileName:Ljava/lang/String;
    :cond_d
    iget v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_10

    .line 611
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget v6, v6, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    const/16 v7, 0x1ea

    if-ne v6, v7, :cond_e

    .line 613
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine1View:Landroid/widget/TextView;

    .line 614
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine1View:Landroid/widget/TextView;

    const v7, 0x7f050094

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v4, v8, v11

    invoke-virtual {p0, v7, v8}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine2View:Landroid/widget/TextView;

    .line 616
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine2View:Landroid/widget/TextView;

    const v7, 0x7f050026

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {p0, v9, v12}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->getDisplayedFilename(Landroid/content/Context;Lcom/broadcom/bt/app/opp/data/Job;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {p0, v7, v8}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mView:Landroid/view/View;

    const v7, 0x7f080019

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine3View:Landroid/widget/TextView;

    .line 619
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine3View:Landroid/widget/TextView;

    const v7, 0x7f050027

    new-array v8, v10, [Ljava/lang/Object;

    const v9, 0x7f0500fb

    invoke-virtual {p0, v9}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {p0, v7, v8}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    :goto_5
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mView:Landroid/view/View;

    const v7, 0x7f08001b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine5View:Landroid/widget/TextView;

    .line 656
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine5View:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 632
    :cond_e
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget v1, v6, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 633
    .local v1, err:I
    const/16 v6, 0x1ee

    if-ne v1, v6, :cond_f

    .line 634
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine1View:Landroid/widget/TextView;

    .line 635
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine1View:Landroid/widget/TextView;

    const v7, 0x7f050041

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v9, v9, Lcom/broadcom/bt/app/opp/data/Job;->mRemoteName:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-virtual {p0, v7, v8}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine2View:Landroid/widget/TextView;

    .line 637
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine2View:Landroid/widget/TextView;

    const v7, 0x7f050026

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {p0, v9, v12}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->getDisplayedFilename(Landroid/content/Context;Lcom/broadcom/bt/app/opp/data/Job;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {p0, v7, v8}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 639
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mView:Landroid/view/View;

    const v7, 0x7f080019

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine3View:Landroid/widget/TextView;

    .line 640
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine3View:Landroid/widget/TextView;

    const v7, 0x7f050042

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {p0, v9}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->getFormattedFileSize(Landroid/content/Context;Lcom/broadcom/bt/app/opp/data/Job;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {p0, v7, v8}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 643
    :cond_f
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine1View:Landroid/widget/TextView;

    .line 644
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine1View:Landroid/widget/TextView;

    const v7, 0x7f050094

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v4, v8, v11

    invoke-virtual {p0, v7, v8}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine2View:Landroid/widget/TextView;

    .line 646
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine2View:Landroid/widget/TextView;

    const v7, 0x7f050026

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {p0, v9, v12}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->getDisplayedFilename(Landroid/content/Context;Lcom/broadcom/bt/app/opp/data/Job;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {p0, v7, v8}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 648
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mView:Landroid/view/View;

    const v7, 0x7f080019

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine3View:Landroid/widget/TextView;

    .line 649
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine3View:Landroid/widget/TextView;

    const v7, 0x7f050027

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getErrorStatusResourceId(I)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {p0, v7, v8}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 657
    .end local v1           #err:I
    :cond_10
    iget v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_2

    .line 674
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget v6, v6, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    const/16 v7, 0x1ea

    if-ne v6, v7, :cond_11

    .line 676
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine1View:Landroid/widget/TextView;

    .line 677
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine1View:Landroid/widget/TextView;

    const v7, 0x7f050091

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v11

    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v9, v9, Lcom/broadcom/bt/app/opp/data/Job;->mRemoteName:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine2View:Landroid/widget/TextView;

    .line 680
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine2View:Landroid/widget/TextView;

    const v7, 0x7f050026

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {p0, v9, v12}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->getDisplayedFilename(Landroid/content/Context;Lcom/broadcom/bt/app/opp/data/Job;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {p0, v7, v8}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mView:Landroid/view/View;

    const v7, 0x7f080019

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine3View:Landroid/widget/TextView;

    .line 683
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine3View:Landroid/widget/TextView;

    const v7, 0x7f050027

    new-array v8, v10, [Ljava/lang/Object;

    const v9, 0x7f0500fb

    invoke-virtual {p0, v9}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {p0, v7, v8}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 698
    :goto_6
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mView:Landroid/view/View;

    const v7, 0x7f08001b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine5View:Landroid/widget/TextView;

    .line 699
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine5View:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 685
    :cond_11
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget v1, v6, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 686
    .restart local v1       #err:I
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine1View:Landroid/widget/TextView;

    .line 687
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine1View:Landroid/widget/TextView;

    const v7, 0x7f050091

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v11

    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v9, v9, Lcom/broadcom/bt/app/opp/data/Job;->mRemoteName:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine2View:Landroid/widget/TextView;

    .line 690
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine2View:Landroid/widget/TextView;

    const v7, 0x7f050031

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {p0, v9, v12}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->getDisplayedFilename(Landroid/content/Context;Lcom/broadcom/bt/app/opp/data/Job;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {p0, v7, v8}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mView:Landroid/view/View;

    const v7, 0x7f080019

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine3View:Landroid/widget/TextView;

    .line 693
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine3View:Landroid/widget/TextView;

    const v7, 0x7f050027

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getErrorStatusResourceId(I)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getErrorStatusResourceId(I)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6
.end method

.method private displayWhichDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 295
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget v0, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    .line 296
    .local v0, direction:I
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v1

    .line 297
    .local v1, isComplete:Z
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusSuccess(I)Z

    move-result v2

    .line 300
    .local v2, isSuccess:Z
    if-ne v0, v5, :cond_6

    .line 301
    if-ne v1, v5, :cond_5

    .line 302
    if-ne v2, v5, :cond_4

    .line 308
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 309
    iput v5, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    const-string v4, "text/x-vcard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    const-string v4, "text/x-vcalendar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 315
    :cond_2
    const/4 v3, 0x6

    iput v3, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    goto :goto_0

    .line 317
    :cond_3
    iput v5, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    goto :goto_0

    .line 321
    :cond_4
    if-nez v2, :cond_0

    .line 322
    const/4 v3, 0x2

    iput v3, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    goto :goto_0

    .line 324
    :cond_5
    if-nez v1, :cond_0

    .line 325
    const/4 v3, 0x0

    iput v3, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    goto :goto_0

    .line 327
    :cond_6
    if-nez v0, :cond_0

    .line 328
    if-ne v1, v5, :cond_8

    .line 329
    if-ne v2, v5, :cond_7

    .line 330
    const/4 v3, 0x4

    iput v3, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    goto :goto_0

    .line 332
    :cond_7
    if-nez v2, :cond_0

    .line 333
    const/4 v3, 0x5

    iput v3, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    goto :goto_0

    .line 335
    :cond_8
    if-nez v1, :cond_0

    .line 336
    const/4 v3, 0x3

    iput v3, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    goto :goto_0
.end method

.method private setUpDialog()V
    .locals 5

    .prologue
    const v4, 0x7f05002f

    const v3, 0x20202b9

    const/4 v2, 0x3

    .line 346
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    .line 349
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x2020239

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 351
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f05001d

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 353
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    if-ne v0, v2, :cond_2

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f050024

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 355
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 356
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f050023

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 357
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 358
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    if-ne v0, v2, :cond_1

    .line 361
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f0500c1

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 362
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 397
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 398
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->setupAlert()V

    .line 399
    return-void

    .line 364
    :cond_2
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 365
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f05002a

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 366
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 367
    :cond_3
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 370
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 372
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f050028

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 373
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 374
    :cond_4
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 375
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v4}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 376
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 377
    :cond_5
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 380
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 382
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f050032

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 383
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 384
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f050033

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 385
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 387
    :cond_6
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    .line 388
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f0500c2

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 389
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 390
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f050097

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 391
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto/16 :goto_0

    .line 392
    :cond_7
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 393
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v4}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 394
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto/16 :goto_0
.end method

.method private updateButton()V
    .locals 7

    .prologue
    const/4 v6, -0x3

    const v5, 0x7f05002f

    const/16 v4, 0x8

    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 1111
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1112
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1113
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f05002a

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1161
    :cond_0
    :goto_0
    return-void

    .line 1114
    :cond_1
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1117
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const v1, 0x20202b9

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 1119
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1120
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f050028

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1121
    :cond_2
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 1122
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1123
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v6}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1124
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1125
    :cond_3
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 1128
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const v1, 0x20202b9

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 1130
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v6}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1131
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f050032

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1132
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f050033

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1134
    :cond_4
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    .line 1135
    invoke-static {}, Lcom/broadcom/bt/app/opp/OppPreferences;->autoImportVCard()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1137
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1138
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1153
    :cond_5
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f05002a

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1154
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f050097

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1156
    :cond_6
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1158
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private updateProgressbar()V
    .locals 11

    .prologue
    const/16 v10, 0x64

    const/4 v9, 0x1

    const-wide/16 v7, 0x0

    .line 1064
    const-string v4, "OppTransferActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "updateProgressbar()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-virtual {v4, v7, v8}, Lcom/broadcom/bt/app/opp/data/Job;->getTotalBytes(J)J

    move-result-wide v2

    .line 1068
    .local v2, totalBytes:J
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-virtual {v4, v7, v8}, Lcom/broadcom/bt/app/opp/data/Job;->getCurrentBytes(J)J

    move-result-wide v0

    .line 1069
    .local v0, currentBytes:J
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v10}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1073
    iget v4, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    if-eq v4, v9, :cond_0

    iget v4, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_3

    .line 1078
    :cond_0
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v10}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1079
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mPercentView:Landroid/widget/TextView;

    const-string v5, "100%"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1088
    :goto_0
    iget-boolean v4, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mIsComplete:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1089
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->displayWhichDialog()V

    .line 1090
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->updateButton()V

    .line 1091
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->customizeViewContent()V

    .line 1097
    :cond_1
    iget-boolean v4, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mNeedToUpdateFileName:Z

    if-ne v4, v9, :cond_2

    cmp-long v4, v0, v7

    if-eqz v4, :cond_2

    .line 1098
    const-string v4, "OppTransferActivity"

    const-string v5, "NAME UPDATE CASE - Set org name"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mNeedToUpdateFileName:Z

    .line 1100
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->customizeViewContent()V

    .line 1105
    :cond_2
    return-void

    .line 1081
    :cond_3
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    invoke-static {v2, v3, v0, v1}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->getTransferPercent(JJ)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1082
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mPercentView:Landroid/widget/TextView;

    invoke-static {v2, v3, v0, v1}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->formatProgressText(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateTransferLabels()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1003
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-nez v4, :cond_1

    .line 1004
    iget-boolean v4, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mIsLabelSetStatus:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    const/16 v5, 0xc0

    if-ne v4, v5, :cond_0

    .line 1005
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {p0, v4}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->getObjectType(Landroid/content/Context;Lcom/broadcom/bt/app/opp/data/Job;)I

    move-result v2

    .line 1006
    .local v2, objectType:I
    invoke-static {v2}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeResourceId(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1007
    .local v3, objectTypeDisplayName:Ljava/lang/String;
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine5View:Landroid/widget/TextView;

    const v5, 0x7f05008e

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1008
    iput-boolean v8, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mIsLabelSetStatus:Z

    .line 1010
    .end local v2           #objectType:I
    .end local v3           #objectTypeDisplayName:Ljava/lang/String;
    :cond_0
    iget-boolean v4, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mIsLabelSetFileSize:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-wide v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 1011
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    const v5, 0x7f0500b2

    invoke-static {p0, v4, v5}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->getDisplayedFilename(Landroid/content/Context;Lcom/broadcom/bt/app/opp/data/Job;I)Ljava/lang/String;

    move-result-object v0

    .line 1013
    .local v0, displayedFileName:Ljava/lang/String;
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {p0, v4}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->getFormattedFileSize(Landroid/content/Context;Lcom/broadcom/bt/app/opp/data/Job;)Ljava/lang/String;

    move-result-object v1

    .line 1014
    .local v1, formattedFileSize:Ljava/lang/String;
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mLine3View:Landroid/widget/TextView;

    const v5, 0x7f05002c

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v7, v7, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    invoke-static {p0, v0, v7}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->getDisplayedFileType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    aput-object v1, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1016
    iput-boolean v8, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mIsLabelSetFileSize:Z

    .line 1020
    .end local v0           #displayedFileName:Ljava/lang/String;
    .end local v1           #formattedFileSize:Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x5

    const-wide/16 v6, -0x1

    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 718
    packed-switch p2, :pswitch_data_0

    .line 947
    :cond_0
    :goto_0
    invoke-static {}, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->refreshCompletedNotifications()V

    .line 948
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->finish()V

    .line 949
    :cond_1
    return-void

    .line 720
    :pswitch_0
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    if-ne v0, v3, :cond_2

    .line 738
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {p0, v0}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->openReceivedFile(Landroid/content/Context;Lcom/broadcom/bt/app/opp/data/Job;)V

    .line 742
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v0, v8, v8, v10}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->deleteRequestOrHide(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 746
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 750
    :cond_2
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    if-ne v0, v4, :cond_3

    .line 776
    const/16 v0, 0xc

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 781
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    invoke-static {v0}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeFromMimeType(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v1, v1, Lcom/broadcom/bt/app/opp/data/Job;->mRemoteName:Ljava/lang/String;

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    invoke-static {p0, v3, v0, v1, v2}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->showToast_Sending(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->createAction_ClientRetryRequest(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 784
    const-class v1, Lcom/broadcom/bt/app/opp/client/OPPClientService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 785
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 788
    :cond_3
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 797
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v0, v8, v8, v3}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->deleteRequestOrHide(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 799
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 803
    :cond_4
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 806
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v0, v8, v8, v3}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->deleteRequestOrHide(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 811
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 813
    :cond_5
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_b

    .line 814
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    invoke-static {v0}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeFromMimeType(Ljava/lang/String;)I

    move-result v0

    .line 815
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 816
    if-ne v3, v0, :cond_7

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppPreferences;->autoImportVCard()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 818
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 819
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 820
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 821
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-wide v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v1, v0, v2, v8}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->openReceivedUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/content/Intent;)V

    .line 857
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v0, v8, v8, v10}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->deleteRequestOrHide(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 859
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 823
    :cond_7
    if-ne v4, v0, :cond_a

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppPreferences;->autoImportVCalendar()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 824
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 829
    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "dtstart"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "dtend"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 833
    if-eqz v4, :cond_f

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 834
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    .line 835
    const/4 v0, 0x1

    :try_start_2
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v0

    .line 840
    :goto_2
    if-eqz v4, :cond_8

    .line 841
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 844
    :cond_8
    cmp-long v4, v2, v6

    if-nez v4, :cond_9

    cmp-long v4, v0, v6

    if-eqz v4, :cond_6

    .line 845
    :cond_9
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 846
    const-string v5, "beginTime"

    invoke-virtual {v4, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 847
    const-string v2, "endTime"

    invoke-virtual {v4, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 848
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-wide v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v9, v1, v4}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->openReceivedUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/content/Intent;)V

    goto :goto_1

    .line 837
    :catch_0
    move-exception v0

    move-wide v2, v6

    move-object v1, v8

    .line 838
    :goto_3
    const-string v4, "OppTransferActivity"

    const-string v5, "Unable to query for event calendar"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v1

    move-wide v0, v6

    goto :goto_2

    .line 852
    :cond_a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 853
    const-string v1, "android.btopp.intent.action.OPEN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 854
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 860
    :cond_b
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 864
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v0, v8, v8, v10}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->deleteRequestOrHide(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 867
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 890
    :pswitch_1
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    if-nez v0, :cond_c

    .line 893
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v0, v0, Lcom/broadcom/bt/app/opp/data/Job;->mRemoteName:Ljava/lang/String;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->showToast_StopReceiving(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->createAction_ClientCancelRequest(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 895
    const-class v1, Lcom/broadcom/bt/app/opp/server/OPPServerService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 896
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 897
    :cond_c
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    .line 900
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    invoke-static {v0}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeFromMimeType(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v1, v1, Lcom/broadcom/bt/app/opp/data/Job;->mRemoteName:Ljava/lang/String;

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    invoke-static {p0, v3, v0, v1, v2}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->showToast_StopSending(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    .line 904
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->createAction_ClientCancelRequest(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 905
    const-class v1, Lcom/broadcom/bt/app/opp/client/OPPClientService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 906
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 908
    :cond_d
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    if-ne v0, v4, :cond_e

    .line 912
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v0, v8, v8, v3}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->deleteRequestOrHide(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 916
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 918
    :cond_e
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 922
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v0, v8, v8, v10}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->deleteRequestOrHide(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 926
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 933
    :pswitch_2
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 936
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    invoke-static {v0}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeFromMimeType(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v1, v1, Lcom/broadcom/bt/app/opp/data/Job;->mRemoteName:Ljava/lang/String;

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    invoke-static {p0, v3, v0, v1, v2}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->showToast_StopSending(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    .line 940
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->createAction_ClientCancelAllRequest(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 941
    const-class v1, Lcom/broadcom/bt/app/opp/client/OPPClientService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 942
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 837
    :catch_1
    move-exception v0

    move-wide v2, v6

    move-object v1, v4

    goto/16 :goto_3

    :catch_2
    move-exception v0

    move-object v1, v4

    goto/16 :goto_3

    :cond_f
    move-wide v0, v6

    move-wide v2, v6

    goto/16 :goto_2

    .line 718
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 219
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 220
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 221
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mUri:Landroid/net/Uri;

    .line 234
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getRequest(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v2

    iput-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    .line 235
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    if-nez v2, :cond_0

    .line 240
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 241
    .local v1, requestId:I
    invoke-static {v1}, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->remove(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v1           #requestId:I
    :goto_0
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->finish()V

    .line 274
    :goto_1
    return-void

    .line 249
    :cond_0
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mIsComplete:Z

    .line 252
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->displayWhichDialog()V

    .line 255
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 258
    iget-boolean v2, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mIsComplete:Z

    if-nez v2, :cond_1

    .line 259
    new-instance v2, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity$BluetoothTransferContentObserver;

    invoke-direct {v2, p0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity$BluetoothTransferContentObserver;-><init>(Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;)V

    iput-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mObserver:Lcom/broadcom/bt/app/opp/notification/OppTransferActivity$BluetoothTransferContentObserver;

    .line 260
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mObserver:Lcom/broadcom/bt/app/opp/notification/OppTransferActivity$BluetoothTransferContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 273
    :cond_1
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->setUpDialog()V

    goto :goto_1

    .line 242
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 279
    const-string v0, "OppTransferActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mObserver:Lcom/broadcom/bt/app/opp/notification/OppTransferActivity$BluetoothTransferContentObserver;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mObserver:Lcom/broadcom/bt/app/opp/notification/OppTransferActivity$BluetoothTransferContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 284
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 285
    return-void
.end method
