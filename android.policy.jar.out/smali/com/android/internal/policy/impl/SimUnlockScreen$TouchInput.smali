.class public Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;
.super Ljava/lang/Object;
.source "SimUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TouchInput"
.end annotation


# instance fields
.field protected mCancelButton:Landroid/widget/TextView;

.field protected mEight:Landroid/widget/TextView;

.field protected mFive:Landroid/widget/TextView;

.field protected mFour:Landroid/widget/TextView;

.field protected mNine:Landroid/widget/TextView;

.field protected mOne:Landroid/widget/TextView;

.field protected mSeven:Landroid/widget/TextView;

.field protected mSix:Landroid/widget/TextView;

.field protected mThree:Landroid/widget/TextView;

.field protected mTwo:Landroid/widget/TextView;

.field protected mZero:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen;)V
    .locals 2
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 595
    const v0, 0x1020332

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    .line 596
    const v0, 0x1020329

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    .line 597
    const v0, 0x102032a

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    .line 598
    const v0, 0x102032b

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    .line 599
    const v0, 0x102032c

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    .line 600
    const v0, 0x102032d

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    .line 601
    const v0, 0x102032e

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    .line 602
    const v0, 0x102032f

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    .line 603
    const v0, 0x1020330

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    .line 604
    const v0, 0x1020331

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    .line 606
    const v0, 0x1020259

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/TextView;

    .line 609
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 621
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 622
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 625
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 626
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 629
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 631
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 633
    return-void
.end method


# virtual methods
.method protected checkDigit(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 669
    const/4 v0, -0x1

    .line 670
    .local v0, digit:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 671
    const/4 v0, 0x0

    .line 691
    :cond_0
    :goto_0
    return v0

    .line 672
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    .line 673
    const/4 v0, 0x1

    goto :goto_0

    .line 674
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    .line 675
    const/4 v0, 0x2

    goto :goto_0

    .line 676
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    .line 677
    const/4 v0, 0x3

    goto :goto_0

    .line 678
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    if-ne p1, v1, :cond_5

    .line 679
    const/4 v0, 0x4

    goto :goto_0

    .line 680
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    if-ne p1, v1, :cond_6

    .line 681
    const/4 v0, 0x5

    goto :goto_0

    .line 682
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    if-ne p1, v1, :cond_7

    .line 683
    const/4 v0, 0x6

    goto :goto_0

    .line 684
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    if-ne p1, v1, :cond_8

    .line 685
    const/4 v0, 0x7

    goto :goto_0

    .line 686
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    if-ne p1, v1, :cond_9

    .line 687
    const/16 v0, 0x8

    goto :goto_0

    .line 688
    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 689
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 636
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    .line 638
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v1, v1, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 639
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iput v3, v1, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 642
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 643
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v1, v1, Lcom/android/internal/policy/impl/SimUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 645
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v1, v1, Lcom/android/internal/policy/impl/SimUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 648
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v1, v1, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    goto :goto_0

    .line 656
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 657
    .local v0, digit:I
    if-ltz v0, :cond_0

    .line 658
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v1, v1, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v2, 0x1388

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 659
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->reportDigit(I)V

    .line 661
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget v2, v2, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget v1, v1, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 663
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v1, v1, Lcom/android/internal/policy/impl/SimUnlockScreen;->mOkButton:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
