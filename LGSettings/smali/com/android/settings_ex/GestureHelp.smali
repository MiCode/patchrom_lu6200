.class public Lcom/android/settings_ex/GestureHelp;
.super Landroid/app/Activity;
.source "GestureHelp.java"


# instance fields
.field private NAVIGATION_PAGE_COUNT:I

.field private PAGE_COUNT:I

.field private animationViewArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private description:Landroid/widget/TextView;

.field end:F

.field private mAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/view/View;

.field private mImageViewArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mNext:Landroid/widget/Button;

.field private mPrevious:Landroid/widget/Button;

.field private mRunnable:Ljava/lang/Runnable;

.field private navigation0:Landroid/widget/ImageView;

.field private navigation1:Landroid/widget/ImageView;

.field private navigation2:Landroid/widget/ImageView;

.field private navigation3:Landroid/widget/ImageView;

.field private navigation4:Landroid/widget/ImageView;

.field private navigation5:Landroid/widget/ImageView;

.field private navigation6:Landroid/widget/ImageView;

.field start:F

.field private title:Landroid/widget/TextView;

.field private vf:Landroid/widget/ViewFlipper;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v2, p0, Lcom/android/settings_ex/GestureHelp;->PAGE_COUNT:I

    iput v2, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    iput v1, p0, Lcom/android/settings_ex/GestureHelp;->start:F

    iput v1, p0, Lcom/android/settings_ex/GestureHelp;->end:F

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->title:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->description:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->navigation0:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->navigation1:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->navigation2:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->navigation3:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->navigation4:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->navigation5:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->navigation6:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mPrevious:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mNext:Landroid/widget/Button;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings_ex/GestureHelp$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/GestureHelp$1;-><init>(Lcom/android/settings_ex/GestureHelp;)V

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/GestureHelp;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/GestureHelp;)Landroid/widget/ViewFlipper;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/GestureHelp;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/settings_ex/GestureHelp;->PAGE_COUNT:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/GestureHelp;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/GestureHelp;->next()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/GestureHelp;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/GestureHelp;->previous()V

    return-void
.end method

.method private clearNavigation()V
    .locals 3

    .prologue
    .line 344
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020073

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    const v0, 0x7f0b000b

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->title:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f0b00b2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    .line 115
    const v0, 0x7f0b00ba

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->description:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f0b00c2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mPrevious:Landroid/widget/Button;

    .line 117
    const v0, 0x7f0b00c3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mNext:Landroid/widget/Button;

    .line 118
    const v0, 0x7f0b00bb

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->navigation0:Landroid/widget/ImageView;

    .line 119
    const v0, 0x7f0b00bc

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->navigation1:Landroid/widget/ImageView;

    .line 120
    const v0, 0x7f0b00bd

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->navigation2:Landroid/widget/ImageView;

    .line 121
    const v0, 0x7f0b00be

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->navigation3:Landroid/widget/ImageView;

    .line 122
    const v0, 0x7f0b00bf

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->navigation4:Landroid/widget/ImageView;

    .line 123
    const v0, 0x7f0b00c0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->navigation5:Landroid/widget/ImageView;

    .line 124
    const v0, 0x7f0b00c1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->navigation6:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings_ex/GestureHelp;->navigation0:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings_ex/GestureHelp;->navigation1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings_ex/GestureHelp;->navigation2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings_ex/GestureHelp;->navigation3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings_ex/GestureHelp;->navigation4:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings_ex/GestureHelp;->navigation5:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings_ex/GestureHelp;->navigation6:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/settings_ex/GestureHelp;->setDefaultSettings()V

    invoke-direct {p0}, Lcom/android/settings_ex/GestureHelp;->rearrangedViewPage()V

    return-void
.end method

.method private next()V
    .locals 6

    .prologue
    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    .local v1, childId:I
    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    .local v0, childCount:I
    iget v2, p0, Lcom/android/settings_ex/GestureHelp;->PAGE_COUNT:I

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/GestureHelp;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    const/high16 v3, 0x7f05

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    const v3, 0x7f050005

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/GestureHelp;->setAnimationView(I)V

    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings_ex/GestureHelp;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 310
    :cond_0
    return-void
.end method

.method private previous()V
    .locals 6

    .prologue
    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    .local v1, childId:I
    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    .local v0, childCount:I
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/GestureHelp;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    const v3, 0x7f05000a

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    const v3, 0x7f05000f

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/GestureHelp;->setAnimationView(I)V

    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings_ex/GestureHelp;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp;->mPrevious:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp;->mNext:Landroid/widget/Button;

    const v3, 0x7f080414

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 329
    :cond_1
    return-void
.end method

.method private rearrangedViewPage()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x4

    const/16 v2, 0x8

    .line 138
    const-string v0, "DCM"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "i_dcm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v6}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v0, p0, Lcom/android/settings_ex/GestureHelp;->PAGE_COUNT:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/settings_ex/GestureHelp;->PAGE_COUNT:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v5}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v4}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v6}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v0, p0, Lcom/android/settings_ex/GestureHelp;->PAGE_COUNT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/settings_ex/GestureHelp;->PAGE_COUNT:I

    goto/16 :goto_0

    .line 176
    :cond_1
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "lgp930"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v4}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v0, p0, Lcom/android/settings_ex/GestureHelp;->PAGE_COUNT:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/GestureHelp;->PAGE_COUNT:I

    goto/16 :goto_0

    .line 186
    :cond_2
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 187
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "i_vzw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "cayman"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v0, p0, Lcom/android/settings_ex/GestureHelp;->PAGE_COUNT:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/GestureHelp;->PAGE_COUNT:I

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v5}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v4}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v0, p0, Lcom/android/settings_ex/GestureHelp;->PAGE_COUNT:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/settings_ex/GestureHelp;->PAGE_COUNT:I

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v5}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v4}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v0, p0, Lcom/android/settings_ex/GestureHelp;->PAGE_COUNT:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/settings_ex/GestureHelp;->PAGE_COUNT:I

    goto/16 :goto_0
.end method

.method private setAnimationView(II)V
    .locals 1
    .parameter "id"
    .parameter "drawable"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/GestureHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 353
    return-void
.end method

.method private setButtonListener()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mNext:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings_ex/GestureHelp$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/GestureHelp$2;-><init>(Lcom/android/settings_ex/GestureHelp;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mPrevious:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings_ex/GestureHelp$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/GestureHelp$3;-><init>(Lcom/android/settings_ex/GestureHelp;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    return-void
.end method

.method private setDefaultSettings()V
    .locals 6

    .prologue
    .line 240
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/android/settings_ex/GestureHelp;->PAGE_COUNT:I

    add-int/lit8 v4, v4, 0x1

    if-ge v1, v4, :cond_0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .local v3, viewItem:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, v3, v1}, Lcom/android/settings_ex/GestureHelp;->setViewItemGroup(Ljava/util/HashMap;I)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #viewItem:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const v2, 0x7f0b00b3

    .local v2, id:I
    const v0, 0x7f02007a

    .local v0, drawable:I
    iget-object v4, p0, Lcom/android/settings_ex/GestureHelp;->title:Landroid/widget/TextView;

    const v5, 0x7f080718

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/settings_ex/GestureHelp;->description:Landroid/widget/TextView;

    const v5, 0x7f080707

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/settings_ex/GestureHelp;->navigation0:Landroid/widget/ImageView;

    const v5, 0x7f020072

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/GestureHelp;->setAnimationView(II)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040052

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureHelp;->setContentView(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/settings_ex/GestureHelp;->initView()V

    invoke-direct {p0}, Lcom/android/settings_ex/GestureHelp;->setButtonListener()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureHelp;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/GestureHelp;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    return-void
.end method

.method setAnimationView(I)V
    .locals 11
    .parameter "viewId"

    .prologue
    const/16 v10, 0x457

    invoke-direct {p0}, Lcom/android/settings_ex/GestureHelp;->clearNavigation()V

    iget-object v8, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 361
    .local v7, viewItem:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "id"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 362
    .local v2, id:I
    const-string v8, "drawable"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 363
    .local v1, drawable:I
    const-string v8, "title"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 364
    .local v6, titleRes:I
    const-string v8, "description"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 365
    .local v0, descriptionRes:I
    const-string v8, "navigation"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 366
    .local v5, navigationRes:I
    const-string v8, "mNext"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 367
    .local v3, mNextRes:I
    const-string v8, "mPrevious"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .local v4, mPreviousRes:I
    iget-object v8, p0, Lcom/android/settings_ex/GestureHelp;->title:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v8, p0, Lcom/android/settings_ex/GestureHelp;->description:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v8, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v8, p0, Lcom/android/settings_ex/GestureHelp;->PAGE_COUNT:I

    if-ne v8, p1, :cond_2

    iget-object v8, p0, Lcom/android/settings_ex/GestureHelp;->mNext:Landroid/widget/Button;

    const v9, 0x7f0808c7

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    :cond_0
    :goto_0
    if-eq v4, v10, :cond_1

    iget-object v8, p0, Lcom/android/settings_ex/GestureHelp;->mPrevious:Landroid/widget/Button;

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    invoke-direct {p0, v2, v1}, Lcom/android/settings_ex/GestureHelp;->setAnimationView(II)V

    return-void

    :cond_2
    if-eq v3, v10, :cond_0

    iget-object v8, p0, Lcom/android/settings_ex/GestureHelp;->mNext:Landroid/widget/Button;

    invoke-virtual {v8, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method setViewItemGroup(Ljava/util/HashMap;I)Ljava/util/HashMap;
    .locals 7
    .parameter
    .parameter "viewId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, viewItem:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const v6, 0x7f080707

    const v5, 0x7f080414

    const v4, 0x7f02007a

    const v3, 0x7f020072

    const/16 v2, 0x457

    .line 385
    packed-switch p2, :pswitch_data_0

    .line 450
    const-string v0, "id"

    const v1, 0x7f0b00b3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    const-string v0, "drawable"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const-string v0, "title"

    const v1, 0x7f080718

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v0, "description"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    const-string v0, "navigation"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    const-string v0, "mNext"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    const-string v0, "mPrevious"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    :goto_0
    return-object p1

    .line 387
    :pswitch_0
    const-string v0, "id"

    const v1, 0x7f0b00b3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    const-string v0, "drawable"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const-string v0, "title"

    const v1, 0x7f080718

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string v0, "description"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string v0, "navigation"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string v0, "mNext"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    const-string v0, "mPrevious"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 396
    :pswitch_1
    const-string v0, "id"

    const v1, 0x7f0b00b4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string v0, "drawable"

    const v1, 0x7f020076

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string v0, "title"

    const v1, 0x7f08071a

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    const-string v0, "description"

    const v1, 0x7f08071c

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const-string v0, "navigation"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-string v0, "mNext"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-string v0, "mPrevious"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 405
    :pswitch_2
    const-string v0, "id"

    const v1, 0x7f0b00b5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const-string v0, "drawable"

    const v1, 0x7f020075

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const-string v0, "title"

    const v1, 0x7f080719

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const-string v0, "description"

    const v1, 0x7f08071d

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string v0, "navigation"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string v0, "mNext"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    const-string v0, "mPrevious"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 414
    :pswitch_3
    const-string v0, "id"

    const v1, 0x7f0b00b6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const-string v0, "drawable"

    const v1, 0x7f020077

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    const-string v0, "title"

    const v1, 0x7f08071b

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const-string v0, "description"

    const v1, 0x7f08071e

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const-string v0, "navigation"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string v0, "mNext"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const-string v0, "mPrevious"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 423
    :pswitch_4
    const-string v0, "id"

    const v1, 0x7f0b00b7

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string v0, "drawable"

    const v1, 0x7f02007b

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string v0, "title"

    const v1, 0x7f080720

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const-string v0, "description"

    const v1, 0x7f08070b

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    const-string v0, "navigation"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    const-string v0, "mNext"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    const-string v0, "mPrevious"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 432
    :pswitch_5
    const-string v0, "id"

    const v1, 0x7f0b00b8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const-string v0, "drawable"

    const v1, 0x7f020078

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    const-string v0, "title"

    const v1, 0x7f080705

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const-string v0, "description"

    const v1, 0x7f08070a

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const-string v0, "navigation"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const-string v0, "mNext"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string v0, "mPrevious"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 441
    :pswitch_6
    const-string v0, "id"

    const v1, 0x7f0b00b9

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string v0, "drawable"

    const v1, 0x7f020079

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const-string v0, "title"

    const v1, 0x7f080706

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    const-string v0, "description"

    const v1, 0x7f080709

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const-string v0, "navigation"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const-string v0, "mNext"

    const v1, 0x7f0808c7

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string v0, "mPrevious"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 385
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected startAnimation(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 332
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->run()V

    .line 335
    :cond_0
    return-void
.end method

.method protected stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 338
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 341
    :cond_0
    return-void
.end method
