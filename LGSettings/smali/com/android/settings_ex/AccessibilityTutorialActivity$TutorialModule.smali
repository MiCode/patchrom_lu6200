.class abstract Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;
.super Landroid/widget/FrameLayout;
.source "AccessibilityTutorialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/AccessibilityTutorialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TutorialModule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule$InstructionHandler;
    }
.end annotation


# instance fields
.field private final mBack:Landroid/widget/Button;

.field private final mController:Lcom/android/settings_ex/AccessibilityTutorialActivity;

.field private final mFinish:Landroid/widget/Button;

.field private mFlags:J

.field private mHandler:Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule$InstructionHandler;

.field private final mInstructions:Landroid/widget/TextView;

.field private mIsVisible:Z

.field private final mNext:Landroid/widget/Button;

.field private final mSkip:Landroid/widget/Button;

.field private final mTitleResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/AccessibilityTutorialActivity;II)V
    .locals 6
    .parameter "context"
    .parameter "controller"
    .parameter "layoutResId"
    .parameter "titleResId"

    .prologue
    const/4 v5, 0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule$InstructionHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule$InstructionHandler;-><init>(Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;Lcom/android/settings_ex/AccessibilityTutorialActivity$1;)V

    iput-object v3, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mHandler:Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule$InstructionHandler;

    iput-object p2, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mController:Lcom/android/settings_ex/AccessibilityTutorialActivity;

    iput p4, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mTitleResId:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040004

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 560
    .local v0, container:Landroid/view/View;
    const v3, 0x7f0b0006

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mInstructions:Landroid/widget/TextView;

    .line 561
    const v3, 0x7f0b0007

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mSkip:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mSkip:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0b0008

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mBack:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mBack:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0b0009

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mNext:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mNext:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0b000a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mFinish:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mFinish:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0b000b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 572
    .local v2, title:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 573
    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(I)V

    .line 576
    :cond_0
    const v3, 0x7f0b0005

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 577
    .local v1, contentHolder:Landroid/view/ViewGroup;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, p3, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 578
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->addInstructionSync(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private addInstructionSync(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mInstructions:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mInstructions:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mInstructions:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    return-void
.end method


# virtual methods
.method public final activate()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mIsVisible:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mFlags:J

    iget-object v0, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mInstructions:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mController:Lcom/android/settings_ex/AccessibilityTutorialActivity;

    iget v1, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mTitleResId:I

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/AccessibilityTutorialActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->onShown()V

    return-void
.end method

.method protected varargs addInstruction(I[Ljava/lang/Object;)V
    .locals 2
    .parameter "resId"
    .parameter "formatArgs"

    .prologue
    iget-boolean v1, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mIsVisible:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mHandler:Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule$InstructionHandler;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule$InstructionHandler;->addInstruction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deactivate()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mIsVisible:Z

    iget-object v0, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mController:Lcom/android/settings_ex/AccessibilityTutorialActivity;

    #calls: Lcom/android/settings_ex/AccessibilityTutorialActivity;->interrupt()V
    invoke-static {v0}, Lcom/android/settings_ex/AccessibilityTutorialActivity;->access$700(Lcom/android/settings_ex/AccessibilityTutorialActivity;)V

    return-void
.end method

.method protected hasFlag(I)Z
    .locals 4
    .parameter "flagId"

    .prologue
    iget-wide v0, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mFlags:J

    int-to-long v2, p1

    and-long/2addr v0, v2

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 636
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 650
    :goto_0
    return-void

    .line 638
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mController:Lcom/android/settings_ex/AccessibilityTutorialActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/AccessibilityTutorialActivity;->finish()V

    goto :goto_0

    .line 641
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mController:Lcom/android/settings_ex/AccessibilityTutorialActivity;

    #calls: Lcom/android/settings_ex/AccessibilityTutorialActivity;->previous()V
    invoke-static {v0}, Lcom/android/settings_ex/AccessibilityTutorialActivity;->access$800(Lcom/android/settings_ex/AccessibilityTutorialActivity;)V

    goto :goto_0

    .line 644
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mController:Lcom/android/settings_ex/AccessibilityTutorialActivity;

    #calls: Lcom/android/settings_ex/AccessibilityTutorialActivity;->next()V
    invoke-static {v0}, Lcom/android/settings_ex/AccessibilityTutorialActivity;->access$900(Lcom/android/settings_ex/AccessibilityTutorialActivity;)V

    goto :goto_0

    .line 647
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mController:Lcom/android/settings_ex/AccessibilityTutorialActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/AccessibilityTutorialActivity;->finish()V

    goto :goto_0

    .line 636
    :pswitch_data_0
    .packed-switch 0x7f0b0007
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public abstract onShown()V
.end method

.method protected setBackVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mBack:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 675
    return-void

    .line 674
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected setFinishVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mFinish:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 683
    return-void

    .line 682
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected setFlag(IZ)V
    .locals 6
    .parameter "flagId"
    .parameter "value"

    .prologue
    const-wide/16 v4, -0x1

    if-eqz p2, :cond_0

    iget-wide v0, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mFlags:J

    int-to-long v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mFlags:J

    .line 667
    :goto_0
    return-void

    .line 665
    :cond_0
    iget-wide v0, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mFlags:J

    xor-long/2addr v0, v4

    int-to-long v2, p1

    or-long/2addr v0, v2

    xor-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mFlags:J

    goto :goto_0
.end method

.method protected setNextVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mNext:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 679
    return-void

    .line 678
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected setSkipVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->mSkip:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 671
    return-void

    .line 670
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
