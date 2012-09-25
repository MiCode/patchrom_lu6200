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

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    iput v2, p0, Lcom/android/settings_ex/GestureHelp;->PAGE_COUNT:I

    .line 42
    iput v2, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    .line 44
    iput v1, p0, Lcom/android/settings_ex/GestureHelp;->start:F

    .line 45
    iput v1, p0, Lcom/android/settings_ex/GestureHelp;->end:F

    .line 47
    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->title:Landroid/widget/TextView;

    .line 48
    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    .line 49
    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->description:Landroid/widget/TextView;

    .line 50
    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->navigation0:Landroid/widget/ImageView;

    .line 51
    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->navigation1:Landroid/widget/ImageView;

    .line 52
    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->navigation2:Landroid/widget/ImageView;

    .line 53
    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->navigation3:Landroid/widget/ImageView;

    .line 54
    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->navigation4:Landroid/widget/ImageView;

    .line 55
    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->navigation5:Landroid/widget/ImageView;

    .line 56
    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->navigation6:Landroid/widget/ImageView;

    .line 58
    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    .line 59
    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    .line 60
    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mPrevious:Landroid/widget/Button;

    .line 61
    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mNext:Landroid/widget/Button;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mHandler:Landroid/os/Handler;

    .line 77
    new-instance v0, Lcom/android/settings_ex/GestureHelp$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/GestureHelp$1;-><init>(Lcom/android/settings_ex/GestureHelp;)V

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/GestureHelp;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/GestureHelp;)Landroid/widget/ViewFlipper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/GestureHelp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/settings_ex/GestureHelp;->PAGE_COUNT:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/GestureHelp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings_ex/GestureHelp;->next()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/GestureHelp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
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

    .line 345
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
    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    .line 113
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

    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings_ex/GestureHelp;->navigation0:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings_ex/GestureHelp;->navigation1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings_ex/GestureHelp;->navigation2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings_ex/GestureHelp;->navigation3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings_ex/GestureHelp;->navigation4:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings_ex/GestureHelp;->navigation5:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings_ex/GestureHelp;->navigation6:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-direct {p0}, Lcom/android/settings_ex/GestureHelp;->setDefaultSettings()V

    .line 135
    invoke-direct {p0}, Lcom/android/settings_ex/GestureHelp;->rearrangedViewPage()V

    .line 136
    return-void
.end method

.method private next()V
    .locals 6

    .prologue
    .line 298
    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    .line 299
    .local v1, childId:I
    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    .line 301
    .local v0, childCount:I
    iget v2, p0, Lcom/android/settings_ex/GestureHelp;->PAGE_COUNT:I

    if-eq v1, v2, :cond_0

    .line 302
    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/GestureHelp;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 303
    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    const/high16 v3, 0x7f05

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 304
    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    const v3, 0x7f050005

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 306
    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 307
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/GestureHelp;->setAnimationView(I)V

    .line 308
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
    .line 312
    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    .line 313
    .local v1, childId:I
    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    .line 315
    .local v0, childCount:I
    if-eqz v1, :cond_1

    .line 316
    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/GestureHelp;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 317
    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    const v3, 0x7f05000a

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 318
    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    const v3, 0x7f05000f

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 320
    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 321
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/GestureHelp;->setAnimationView(I)V

    .line 322
    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings_ex/GestureHelp;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 324
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 325
    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp;->mPrevious:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 327
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

    .line 140
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v6}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    .line 143
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 152
    iget v0, p0, Lcom/android/settings_ex/GestureHelp;->PAGE_COUNT:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/settings_ex/GestureHelp;->PAGE_COUNT:I

    .line 236
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v5}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v4}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    .line 157
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v6}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    .line 159
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 174
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

    .line 177
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v4}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    .line 179
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 185
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

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 192
    iget v0, p0, Lcom/android/settings_ex/GestureHelp;->PAGE_COUNT:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/GestureHelp;->PAGE_COUNT:I

    goto/16 :goto_0

    .line 194
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v5}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    .line 195
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v4}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    .line 196
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    .line 198
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 203
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 210
    iget v0, p0, Lcom/android/settings_ex/GestureHelp;->PAGE_COUNT:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/settings_ex/GestureHelp;->PAGE_COUNT:I

    goto/16 :goto_0

    .line 216
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v5}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    .line 217
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v4}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    .line 218
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    .line 220
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings_ex/GestureHelp;->NAVIGATION_PAGE_COUNT:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 228
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 230
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 232
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
    .line 350
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/GestureHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageView:Landroid/view/View;

    .line 351
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mImageView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 352
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
    .line 255
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mNext:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings_ex/GestureHelp$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/GestureHelp$2;-><init>(Lcom/android/settings_ex/GestureHelp;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
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

    .line 241
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 242
    .local v3, viewItem:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, v3, v1}, Lcom/android/settings_ex/GestureHelp;->setViewItemGroup(Ljava/util/HashMap;I)Ljava/util/HashMap;

    move-result-object v3

    .line 243
    iget-object v4, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    .end local v3           #viewItem:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const v2, 0x7f0b00b3

    .line 246
    .local v2, id:I
    const v0, 0x7f02007a

    .line 248
    .local v0, drawable:I
    iget-object v4, p0, Lcom/android/settings_ex/GestureHelp;->title:Landroid/widget/TextView;

    const v5, 0x7f080718

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 249
    iget-object v4, p0, Lcom/android/settings_ex/GestureHelp;->description:Landroid/widget/TextView;

    const v5, 0x7f080707

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 250
    iget-object v4, p0, Lcom/android/settings_ex/GestureHelp;->navigation0:Landroid/widget/ImageView;

    const v5, 0x7f020072

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 251
    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/GestureHelp;->setAnimationView(II)V

    .line 252
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v0, 0x7f040052

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureHelp;->setContentView(I)V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/GestureHelp;->animationViewArrayList:Ljava/util/ArrayList;

    .line 91
    invoke-direct {p0}, Lcom/android/settings_ex/GestureHelp;->initView()V

    .line 92
    invoke-direct {p0}, Lcom/android/settings_ex/GestureHelp;->setButtonListener()V

    .line 93
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureHelp;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 107
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 98
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

    .line 358
    invoke-direct {p0}, Lcom/android/settings_ex/GestureHelp;->clearNavigation()V

    .line 359
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

    .line 369
    .local v4, mPreviousRes:I
    iget-object v8, p0, Lcom/android/settings_ex/GestureHelp;->title:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(I)V

    .line 370
    iget-object v8, p0, Lcom/android/settings_ex/GestureHelp;->description:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    .line 371
    iget-object v8, p0, Lcom/android/settings_ex/GestureHelp;->mImageViewArray:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 372
    iget v8, p0, Lcom/android/settings_ex/GestureHelp;->PAGE_COUNT:I

    if-ne v8, p1, :cond_2

    .line 373
    iget-object v8, p0, Lcom/android/settings_ex/GestureHelp;->mNext:Landroid/widget/Button;

    const v9, 0x7f0808c7

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 377
    :cond_0
    :goto_0
    if-eq v4, v10, :cond_1

    .line 378
    iget-object v8, p0, Lcom/android/settings_ex/GestureHelp;->mPrevious:Landroid/widget/Button;

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 380
    :cond_1
    invoke-direct {p0, v2, v1}, Lcom/android/settings_ex/GestureHelp;->setAnimationView(II)V

    .line 381
    return-void

    .line 374
    :cond_2
    if-eq v3, v10, :cond_0

    .line 375
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
