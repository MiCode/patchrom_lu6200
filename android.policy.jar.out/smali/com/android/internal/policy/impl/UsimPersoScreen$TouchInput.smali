.class Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;
.super Ljava/lang/Object;
.source "UsimPersoScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/UsimPersoScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchInput"
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/TextView;

.field private mEight:Landroid/widget/TextView;

.field private mFive:Landroid/widget/TextView;

.field private mFour:Landroid/widget/TextView;

.field private mNine:Landroid/widget/TextView;

.field private mOne:Landroid/widget/TextView;

.field private mSeven:Landroid/widget/TextView;

.field private mSix:Landroid/widget/TextView;

.field private mThree:Landroid/widget/TextView;

.field private mTwo:Landroid/widget/TextView;

.field private mZero:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/UsimPersoScreen;)V
    .locals 2
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 516
    const v0, 0x1020332

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mZero:Landroid/widget/TextView;

    .line 517
    const v0, 0x1020329

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mOne:Landroid/widget/TextView;

    .line 518
    const v0, 0x102032a

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    .line 519
    const v0, 0x102032b

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mThree:Landroid/widget/TextView;

    .line 520
    const v0, 0x102032c

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mFour:Landroid/widget/TextView;

    .line 521
    const v0, 0x102032d

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mFive:Landroid/widget/TextView;

    .line 522
    const v0, 0x102032e

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mSix:Landroid/widget/TextView;

    .line 523
    const v0, 0x102032f

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    .line 524
    const v0, 0x1020330

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mEight:Landroid/widget/TextView;

    .line 525
    const v0, 0x1020331

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mNine:Landroid/widget/TextView;

    .line 526
    const v0, 0x1020259

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mCancelButton:Landroid/widget/TextView;

    .line 528
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mZero:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mOne:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mThree:Landroid/widget/TextView;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mFour:Landroid/widget/TextView;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mFive:Landroid/widget/TextView;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mSix:Landroid/widget/TextView;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mEight:Landroid/widget/TextView;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mNine:Landroid/widget/TextView;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 541
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 542
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 546
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 549
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/UsimPersoScreen;Lcom/android/internal/policy/impl/UsimPersoScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/UsimPersoScreen;)V

    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 571
    const/4 v0, -0x1

    .line 572
    .local v0, digit:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mZero:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 573
    const/4 v0, 0x0

    .line 593
    :cond_0
    :goto_0
    return v0

    .line 574
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mOne:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    .line 575
    const/4 v0, 0x1

    goto :goto_0

    .line 576
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    .line 577
    const/4 v0, 0x2

    goto :goto_0

    .line 578
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mThree:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    .line 579
    const/4 v0, 0x3

    goto :goto_0

    .line 580
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mFour:Landroid/widget/TextView;

    if-ne p1, v1, :cond_5

    .line 581
    const/4 v0, 0x4

    goto :goto_0

    .line 582
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mFive:Landroid/widget/TextView;

    if-ne p1, v1, :cond_6

    .line 583
    const/4 v0, 0x5

    goto :goto_0

    .line 584
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mSix:Landroid/widget/TextView;

    if-ne p1, v1, :cond_7

    .line 585
    const/4 v0, 0x6

    goto :goto_0

    .line 586
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    if-ne p1, v1, :cond_8

    .line 587
    const/4 v0, 0x7

    goto :goto_0

    .line 588
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mEight:Landroid/widget/TextView;

    if-ne p1, v1, :cond_9

    .line 589
    const/16 v0, 0x8

    goto :goto_0

    .line 590
    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mNine:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 591
    const/16 v0, 0x9

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 554
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 555
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    #getter for: Lcom/android/internal/policy/impl/UsimPersoScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$400(Lcom/android/internal/policy/impl/UsimPersoScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 560
    .local v0, digit:I
    if-ltz v0, :cond_0

    .line 561
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    #getter for: Lcom/android/internal/policy/impl/UsimPersoScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$400(Lcom/android/internal/policy/impl/UsimPersoScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    const/16 v3, 0x1b58

    invoke-interface {v1, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 562
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    #calls: Lcom/android/internal/policy/impl/UsimPersoScreen;->reportDigit(I)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$1600(Lcom/android/internal/policy/impl/UsimPersoScreen;I)V

    .line 564
    const/4 v1, 0x4

    iget-object v3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    #getter for: Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$800(Lcom/android/internal/policy/impl/UsimPersoScreen;)I

    move-result v3

    if-gt v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    #getter for: Lcom/android/internal/policy/impl/UsimPersoScreen;->mKeyboardHidden:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$1500(Lcom/android/internal/policy/impl/UsimPersoScreen;)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    if-nez v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/UsimPersoScreen;->SetEnableOKbtn(Z)V

    goto :goto_0

    .line 564
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
