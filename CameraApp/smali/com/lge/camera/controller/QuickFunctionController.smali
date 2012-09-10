.class public Lcom/lge/camera/controller/QuickFunctionController;
.super Lcom/lge/camera/controller/Controller;
.source "QuickFunctionController.java"


# static fields
.field public static final USE_SWAP:I = 0x1

.field public static final USE_TMS:I


# instance fields
.field private alpha:I

.field private blockObject:Ljava/lang/Object;

.field private mAnimationViewGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckClickTime:J

.field private mDegree:I

.field private mMenu:I

.field private mMenuEnabled:[Z

.field private mMenuViewGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/components/RotateImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private mOnMenuClickListener:Landroid/view/View$OnClickListener;

.field private mQFLanimation:Landroid/view/animation/Animation;

.field protected mQflInit:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 2
    .parameter "mediator"

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/Mediator;)V

    .line 34
    iput-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuEnabled:[Z

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mQflInit:Z

    .line 39
    iput-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mQFLanimation:Landroid/view/animation/Animation;

    .line 163
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J

    .line 164
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->blockObject:Ljava/lang/Object;

    .line 167
    new-instance v0, Lcom/lge/camera/controller/QuickFunctionController$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/QuickFunctionController$1;-><init>(Lcom/lge/camera/controller/QuickFunctionController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mOnMenuClickListener:Landroid/view/View$OnClickListener;

    .line 338
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mDegree:I

    .line 524
    const/16 v0, 0xff

    iput v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->alpha:I

    .line 45
    return-void

    .line 37
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->blockObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/QuickFunctionController;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/lge/camera/controller/QuickFunctionController;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/QuickFunctionController;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuEnabled:[Z

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/QuickFunctionController;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->getMenuIconResource(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/QuickFunctionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->alpha:I

    return v0
.end method

.method private getMenuIconResource(I)I
    .locals 4
    .parameter "menuIndex"

    .prologue
    const/4 v2, 0x0

    .line 557
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 558
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-nez v1, :cond_0

    .line 566
    :goto_0
    return v2

    .line 562
    :cond_0
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 563
    .local v0, iconIndex:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 564
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getMenuIconResources()[I

    move-result-object v2

    aget v2, v2, v0

    goto :goto_0

    .line 566
    :cond_1
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getMenuIconResources()[I

    move-result-object v3

    aget v2, v3, v2

    goto :goto_0
.end method

.method private getMenuIconResource(II)I
    .locals 2
    .parameter "menuIndex"
    .parameter "iconIndex"

    .prologue
    .line 549
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 550
    .local v0, pref:Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_0

    .line 551
    const/4 v1, 0x0

    .line 553
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getMenuIconResources()[I

    move-result-object v1

    aget v1, v1, p2

    goto :goto_0
.end method

.method private initMenuViews()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 122
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    .line 124
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    const v0, 0x7f0900a0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/QuickFunctionController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/QuickFunctionController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    const v0, 0x7f0900a2

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/QuickFunctionController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    const v0, 0x7f0900a3

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/QuickFunctionController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    const v0, 0x7f0900a4

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/QuickFunctionController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method private setMenuClickListener()V
    .locals 4

    .prologue
    .line 158
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, size:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 159
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController;->mOnMenuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/RotateImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_0
    return-void
.end method


# virtual methods
.method public clearSubMenu()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 659
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_0

    .line 691
    :goto_0
    return-void

    .line 661
    :cond_0
    const v1, 0x7f0900d8

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 662
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 663
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 664
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 667
    :cond_1
    const v1, 0x7f0900d7

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 668
    if-eqz v0, :cond_2

    .line 669
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 670
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 673
    :cond_2
    const v1, 0x7f0900d9

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 674
    if-eqz v0, :cond_3

    .line 675
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 676
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 680
    :cond_3
    const v1, 0x7f090073

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 681
    if-eqz v0, :cond_4

    .line 682
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 683
    const v1, 0x7f090077

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 684
    const v1, 0x7f09007b

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 685
    const v1, 0x7f090078

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 686
    const v1, 0x7f09007c

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 689
    :cond_4
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/QuickFunctionController;->showSubMenu(Z)V

    .line 690
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuSelected(Z)V

    goto :goto_0
.end method

.method public getAnimationView(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mAnimationViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getMenu()I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenu:I

    return v0
.end method

.method public getMenuView(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getQFLAnimation()Landroid/view/animation/Animation;
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mQFLanimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mQFLanimation:Landroid/view/animation/Animation;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mQFLanimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 752
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useToggleQFL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 759
    :cond_0
    :goto_0
    return-void

    .line 756
    :cond_1
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mQflInit:Z

    if-eqz v0, :cond_0

    .line 758
    const v0, 0x7f09009f

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/QuickFunctionController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideAnimation()V
    .locals 4

    .prologue
    .line 393
    const v2, 0x7f090074

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 394
    .local v1, rl:Lcom/lge/camera/components/RotateLayout;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 395
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v2, Lcom/lge/camera/controller/QuickFunctionController$2;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/QuickFunctionController$2;-><init>(Lcom/lge/camera/controller/QuickFunctionController;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 403
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 404
    invoke-virtual {v1, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 405
    const/4 v2, -0x1

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mDegree:I

    .line 406
    return-void
.end method

.method public hideControlsByForce()V
    .locals 2

    .prologue
    .line 762
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mQflInit:Z

    if-nez v0, :cond_0

    .line 765
    :goto_0
    return-void

    .line 764
    :cond_0
    const v0, 0x7f09009f

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/QuickFunctionController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public initAnimationView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mAnimationViewGroup:Ljava/util/ArrayList;

    .line 133
    const v0, 0x7f090061

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/QuickFunctionController;->inflateStub(I)Landroid/view/View;

    .line 135
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mAnimationViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mAnimationViewGroup:Ljava/util/ArrayList;

    const v1, 0x7f0900d7

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mAnimationViewGroup:Ljava/util/ArrayList;

    const v1, 0x7f0900d8

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mAnimationViewGroup:Ljava/util/ArrayList;

    const v1, 0x7f0900d9

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mAnimationViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method public initController()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 48
    iget-boolean v5, p0, Lcom/lge/camera/controller/QuickFunctionController;->mQflInit:Z

    if-nez v5, :cond_0

    .line 50
    const v5, 0x7f090060

    :try_start_0
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/QuickFunctionController;->inflateStub(I)Landroid/view/View;

    .line 51
    const v5, 0x7f09006d

    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/QuickFunctionController;->inflateStub(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    iput-boolean v8, p0, Lcom/lge/camera/controller/QuickFunctionController;->mQflInit:Z

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickFunctionController;->initMenuViews()V

    .line 59
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->initMenu()V

    .line 61
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v0

    .line 62
    .local v0, degree:I
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v5

    if-ne v5, v8, :cond_1

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->isMMSIntent()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 64
    const/4 v3, 0x0

    .line 65
    .local v3, pref:Lcom/lge/camera/setting/ListPreference;
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, size:I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 66
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    .line 67
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "key_live_effect"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 68
    invoke-virtual {p0, v2, v7}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuDim(IZ)V

    .line 74
    .end local v2           #i:I
    .end local v3           #pref:Lcom/lge/camera/setting/ListPreference;
    .end local v4           #size:I
    :cond_1
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getCameraMode()I

    move-result v5

    if-ne v5, v8, :cond_2

    .line 75
    const/4 v3, 0x0

    .line 76
    .restart local v3       #pref:Lcom/lge/camera/setting/ListPreference;
    const/4 v2, 0x0

    .restart local v2       #i:I
    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .restart local v4       #size:I
    :goto_2
    if-ge v2, v4, :cond_2

    .line 77
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    .line 78
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "key_zoom"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 79
    invoke-virtual {p0, v2, v7}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuDim(IZ)V

    .line 85
    .end local v2           #i:I
    .end local v3           #pref:Lcom/lge/camera/setting/ListPreference;
    .end local v4           #size:I
    :cond_2
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v6, 0x7f0900d7

    invoke-virtual {v5, v6, v0, v7}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 86
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v6, 0x7f0900d8

    invoke-virtual {v5, v6, v0, v7}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 87
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v6, 0x7f0900d9

    invoke-virtual {v5, v6, v0, v7}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 89
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v6, 0x7f0900a0

    invoke-virtual {v5, v6, v0, v7}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 90
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v6, 0x7f0900a1

    invoke-virtual {v5, v6, v0, v7}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 91
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v6, 0x7f0900a2

    invoke-virtual {v5, v6, v0, v7}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 92
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v6, 0x7f0900a3

    invoke-virtual {v5, v6, v0, v7}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 93
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v6, 0x7f0900a4

    invoke-virtual {v5, v6, v0, v7}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 95
    const/16 v5, 0x1e

    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/QuickFunctionController;->setAlpha(I)V

    .line 96
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->show()V

    .line 98
    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionController;->mQFLanimation:Landroid/view/animation/Animation;

    if-nez v5, :cond_3

    .line 99
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f04000a

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/camera/controller/QuickFunctionController;->mQFLanimation:Landroid/view/animation/Animation;

    .line 101
    :cond_3
    return-void

    .line 52
    .end local v0           #degree:I
    :catch_0
    move-exception v1

    .line 53
    .local v1, e:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 54
    const v5, 0x7f0b013f

    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/QuickFunctionController;->toast(I)V

    goto/16 :goto_0

    .line 65
    .end local v1           #e:Ljava/lang/RuntimeException;
    .restart local v0       #degree:I
    .restart local v2       #i:I
    .restart local v3       #pref:Lcom/lge/camera/setting/ListPreference;
    .restart local v4       #size:I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 76
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2
.end method

.method public initMenu()V
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuClickListener()V

    .line 112
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/QuickFunctionController;->refresh(Z)V

    .line 113
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuIcons()V

    .line 114
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->show()V

    .line 115
    return-void
.end method

.method public initSubMenu()V
    .locals 2

    .prologue
    .line 327
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_0

    .line 329
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->initAnimationView()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 336
    :cond_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 332
    const v1, 0x7f0b013f

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->toast(I)V

    goto :goto_0
.end method

.method protected isEqualPreferenceAndSubmenu(Ljava/lang/String;)Z
    .locals 4
    .parameter "strPref"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 830
    if-nez p1, :cond_1

    .line 918
    :cond_0
    :goto_0
    return v0

    .line 834
    :cond_1
    const-string v2, "key_preview_size_on_device"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    move v0, v1

    .line 836
    goto :goto_0

    .line 839
    :cond_2
    const-string v2, "key_scene_mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    move v0, v1

    .line 841
    goto :goto_0

    .line 844
    :cond_3
    const-string v2, "key_focus"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    move v0, v1

    .line 846
    goto :goto_0

    .line 849
    :cond_4
    const-string v2, "key_setting"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_6

    :cond_5
    move v0, v1

    .line 852
    goto :goto_0

    .line 855
    :cond_6
    const-string v2, "key_zoom"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_7

    move v0, v1

    .line 857
    goto :goto_0

    .line 860
    :cond_7
    const-string v2, "key_brightness"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_8

    move v0, v1

    .line 862
    goto :goto_0

    .line 865
    :cond_8
    const-string v2, "key_flash"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_a

    :cond_9
    move v0, v1

    .line 868
    goto/16 :goto_0

    .line 871
    :cond_a
    const-string v2, "key_video_duration"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_b

    move v0, v1

    .line 873
    goto/16 :goto_0

    .line 876
    :cond_b
    const-string v2, "key_save_direction"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_c

    move v0, v1

    .line 878
    goto/16 :goto_0

    .line 881
    :cond_c
    const-string v2, "key_voiceshutter"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0x13

    if-ne v2, v3, :cond_d

    move v0, v1

    .line 883
    goto/16 :goto_0

    .line 886
    :cond_d
    const-string v2, "key_camera_picturesize"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_e

    move v0, v1

    .line 888
    goto/16 :goto_0

    .line 891
    :cond_e
    const-string v2, "key_video_audio_recording"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_f

    move v0, v1

    .line 893
    goto/16 :goto_0

    .line 897
    :cond_f
    const-string v2, "key_beautyshot"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_10

    move v0, v1

    .line 899
    goto/16 :goto_0

    .line 902
    :cond_10
    const-string v2, "key_live_effect"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0x12

    if-ne v2, v3, :cond_11

    move v0, v1

    .line 904
    goto/16 :goto_0

    .line 908
    :cond_11
    const-string v2, "key_camera_shot_mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 910
    goto/16 :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 768
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_0

    const v0, 0x7f09009f

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/QuickFunctionController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 769
    :cond_0
    const/4 v0, 0x0

    .line 771
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 813
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 815
    iput-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mQFLanimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 818
    iput-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mQFLanimation:Landroid/view/animation/Animation;

    .line 820
    :cond_1
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onDestroy()V

    .line 821
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 787
    const-string v0, "CameraApp"

    const-string v1, "QFL onPause"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    if-nez v0, :cond_1

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 792
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getDialogController()Lcom/lge/camera/controller/DialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->isRotateDialogVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->isHelpActivity()Z

    move-result v0

    if-nez v0, :cond_4

    .line 797
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 799
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 800
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.RemoveSettingMenu"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 803
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    if-eqz v0, :cond_4

    .line 804
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->clearSubMenu()V

    goto :goto_0

    .line 808
    :cond_4
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onPause()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 777
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mQflInit:Z

    if-eqz v0, :cond_0

    .line 778
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 779
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->refresh()V

    .line 781
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J

    .line 782
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onResume()V

    .line 783
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 655
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/QuickFunctionController;->refresh(Z)V

    .line 656
    return-void
.end method

.method public refresh(Z)V
    .locals 5
    .parameter "show"

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f09009f

    .line 632
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mQflInit:Z

    if-nez v2, :cond_1

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/QuickFunctionController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 637
    if-eqz p1, :cond_3

    .line 638
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/QuickFunctionController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 644
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->setMmsLimit()V

    .line 645
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v1, 0x5

    .local v1, size:I
    :goto_2
    if-ge v0, v1, :cond_4

    .line 646
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuEnabled:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {p0, v0, v2}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuEnabled(IZ)V

    .line 645
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 640
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_3
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/QuickFunctionController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 648
    .restart local v0       #i:I
    .restart local v1       #size:I
    :cond_4
    iget-boolean v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mQflInit:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    if-nez v2, :cond_5

    .line 649
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuSelected(Z)V

    .line 651
    :cond_5
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->show()V

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->initMenu()V

    .line 105
    return-void
.end method

.method public setAllMenuEnabled(ZZ)V
    .locals 2
    .parameter "enabled"
    .parameter "onlyEnableDim"

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mQflInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v1, Lcom/lge/camera/controller/QuickFunctionController$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/camera/controller/QuickFunctionController$5;-><init>(Lcom/lge/camera/controller/QuickFunctionController;ZZ)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 481
    :cond_0
    return-void
.end method

.method public setAllMenuIcons()V
    .locals 2

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mQflInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v1, Lcom/lge/camera/controller/QuickFunctionController$6;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/QuickFunctionController$6;-><init>(Lcom/lge/camera/controller/QuickFunctionController;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 522
    :cond_0
    return-void
.end method

.method public setAllMenuSelected(Z)V
    .locals 4
    .parameter "selected"

    .prologue
    .line 581
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 582
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, size:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 583
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 584
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v2, p1}, Lcom/lge/camera/components/RotateImageButton;->setSelected(Z)V

    .line 582
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 587
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_0
    return-void
.end method

.method public setAllMenuSelected(ZI)V
    .locals 4
    .parameter "selected"
    .parameter "exception"

    .prologue
    .line 590
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 591
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, size:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 592
    if-eq v0, p2, :cond_0

    .line 593
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 594
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v2, p1}, Lcom/lge/camera/components/RotateImageButton;->setSelected(Z)V

    .line 591
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 598
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_1
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "percent"

    .prologue
    .line 526
    mul-int/lit16 v0, p1, 0xff

    div-int/lit8 v0, v0, 0x64

    rsub-int v0, v0, 0xff

    iput v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->alpha:I

    .line 527
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuIcons()V

    .line 528
    return-void
.end method

.method public setMenu(I)V
    .locals 0
    .parameter "menuIndex"

    .prologue
    .line 436
    iput p1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenu:I

    .line 437
    return-void
.end method

.method public setMenuAlpha(I)V
    .locals 3
    .parameter "alpha"

    .prologue
    .line 624
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 625
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, size:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 626
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v2}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 625
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 629
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_0
    return-void
.end method

.method public setMenuDim(IZ)V
    .locals 2
    .parameter "menuIndex"
    .parameter "enable"

    .prologue
    .line 531
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v1, Lcom/lge/camera/controller/QuickFunctionController$7;

    invoke-direct {v1, p0, p2, p1}, Lcom/lge/camera/controller/QuickFunctionController$7;-><init>(Lcom/lge/camera/controller/QuickFunctionController;ZI)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 546
    :cond_0
    return-void
.end method

.method public setMenuEnabled(IZ)V
    .locals 2
    .parameter "menuIndex"
    .parameter "enabled"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuEnabled:[Z

    aput-boolean p2, v0, p1

    .line 446
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mQflInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v1, Lcom/lge/camera/controller/QuickFunctionController$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/camera/controller/QuickFunctionController$4;-><init>(Lcom/lge/camera/controller/QuickFunctionController;IZ)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 456
    :cond_0
    return-void
.end method

.method public setMenuIcon(II)V
    .locals 2
    .parameter "menuIndex"
    .parameter "iconIndex"

    .prologue
    .line 485
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 486
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/QuickFunctionController;->getMenuIconResource(II)I

    move-result v0

    .line 487
    .local v0, resId:I
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1, v0}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    .line 489
    .end local v0           #resId:I
    :cond_0
    return-void
.end method

.method public setMenuSelected(IZ)V
    .locals 4
    .parameter "menuIndex"
    .parameter "selected"

    .prologue
    const/4 v3, 0x0

    .line 572
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    .line 573
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMenuSelected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0, v3, p1}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuSelected(ZI)V

    .line 575
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 576
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, p2}, Lcom/lge/camera/components/RotateImageButton;->setSelected(Z)V

    .line 578
    :cond_0
    return-void
.end method

.method public setMmsLimit()V
    .locals 4

    .prologue
    .line 733
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    const-string v2, "key_preview_size_on_device"

    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v0

    .line 735
    .local v0, videoSizePrefIndex:I
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 736
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->isMMSIntent()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->setMmsLimitUiQfl(Z)V

    .line 737
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->isMMSIntent()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->setMmsLimitUiSubmenu(Z)V

    .line 742
    :goto_0
    return-void

    .line 739
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "preview size setting is not in QFL"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMmsLimit(Z)V
    .locals 0
    .parameter "mmsVideo"

    .prologue
    .line 823
    return-void
.end method

.method public setMmsLimitUiQfl(Z)V
    .locals 0
    .parameter "mmsVideo"

    .prologue
    .line 824
    return-void
.end method

.method public setMmsLimitUiSubmenu(Z)V
    .locals 0
    .parameter "mmsVideo"

    .prologue
    .line 825
    return-void
.end method

.method protected setSelected(II)V
    .locals 8
    .parameter "subMenuIndex"
    .parameter "menuIndex"

    .prologue
    .line 714
    move v3, p2

    .line 715
    .local v3, qflIndex:I
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 717
    .local v1, listPref:Lcom/lge/camera/setting/ListPreference;
    if-nez v1, :cond_1

    .line 718
    const-string v6, "CameraApp"

    const-string v7, "listPref null error"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    :cond_0
    return-void

    .line 722
    :cond_1
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getMenuViewId()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/QuickFunctionController;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 724
    .local v5, subMenuGroup:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getSubMenuCount()I

    move-result v2

    .line 725
    .local v2, menuCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 726
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getSubMenuIds()[I

    move-result-object v6

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 727
    .local v4, subMenu:Landroid/view/View;
    if-ne p1, v0, :cond_2

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v4, v6}, Landroid/view/View;->setSelected(Z)V

    .line 725
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 727
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public setSubMenuSelected(IZ)V
    .locals 7
    .parameter "menuIndex"
    .parameter "selected"

    .prologue
    .line 601
    const/4 v5, 0x5

    if-ge p1, v5, :cond_3

    .line 602
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 604
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    const/4 v2, -0x1

    .line 606
    .local v2, selectedIndex:I
    if-eqz v1, :cond_3

    .line 607
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getMenuViewId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/QuickFunctionController;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 608
    .local v4, subMenuGroup:Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getSubMenuCount()I

    move-result v3

    .local v3, size:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 609
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v0, :cond_0

    .line 610
    move v2, v0

    .line 612
    :cond_0
    if-eqz v4, :cond_1

    .line 613
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getSubMenuIds()[I

    move-result-object v5

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setSelected(Z)V

    .line 608
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 616
    :cond_2
    if-eqz v4, :cond_3

    .line 617
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getSubMenuIds()[I

    move-result-object v5

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/view/View;->setSelected(Z)V

    .line 621
    .end local v0           #i:I
    .end local v1           #pref:Lcom/lge/camera/setting/ListPreference;
    .end local v2           #selectedIndex:I
    .end local v3           #size:I
    .end local v4           #subMenuGroup:Landroid/view/ViewGroup;
    :cond_3
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 745
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mQflInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 746
    const v0, 0x7f09009f

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/QuickFunctionController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 747
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuSelected(Z)V

    .line 749
    :cond_0
    return-void
.end method

.method public showAnimation()V
    .locals 4

    .prologue
    const v3, 0x7f090074

    .line 409
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/QuickFunctionController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 425
    :goto_0
    return-void

    .line 413
    :cond_0
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/QuickFunctionController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 414
    .local v1, rl:Lcom/lge/camera/components/RotateLayout;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 415
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v2, Lcom/lge/camera/controller/QuickFunctionController$3;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/QuickFunctionController$3;-><init>(Lcom/lge/camera/controller/QuickFunctionController;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 423
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 424
    invoke-virtual {v1, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public showSubMenu(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 694
    iget v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenu:I

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/controller/QuickFunctionController;->showSubMenu(ZI)V

    .line 695
    return-void
.end method

.method public showSubMenu(ZI)V
    .locals 5
    .parameter "show"
    .parameter "index"

    .prologue
    .line 698
    const/16 v1, 0x8

    .line 699
    .local v1, visibility:I
    if-eqz p1, :cond_0

    .line 700
    const/4 v1, 0x0

    .line 702
    :cond_0
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showSubMenu index ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] show["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 705
    .local v0, listPref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getMenuViewId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 706
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getMenuViewId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 708
    :cond_1
    return-void
.end method

.method public startQFLAnimation(I)V
    .locals 2
    .parameter "menuIndex"

    .prologue
    .line 150
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mQFLanimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->getMenuView(I)Landroid/view/View;

    move-result-object v0

    .line 152
    .local v0, qfl:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 153
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mQFLanimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 155
    .end local v0           #qfl:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public startSubMenuRotation(I)V
    .locals 8
    .parameter "degree"

    .prologue
    const v7, 0x7f090074

    const/4 v6, 0x0

    const v3, 0x7f0a01e2

    const v5, 0x7f0a01e1

    const v4, 0x7f0a01e0

    .line 341
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, v7}, Lcom/lge/camera/controller/QuickFunctionController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mDegree:I

    if-eq v2, p1, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->hideAnimation()V

    .line 351
    invoke-virtual {p0, v7}, Lcom/lge/camera/controller/QuickFunctionController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 352
    .local v1, rl:Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v1, p1}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 353
    invoke-virtual {v1}, Lcom/lge/camera/components/RotateLayout;->requestLayout()V

    .line 354
    invoke-virtual {v1}, Lcom/lge/camera/components/RotateLayout;->invalidate()V

    .line 356
    invoke-virtual {v1}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 357
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    sparse-switch p1, :sswitch_data_0

    .line 384
    :goto_1
    invoke-virtual {v1, v0}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->showAnimation()V

    .line 388
    iput p1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mDegree:I

    goto :goto_0

    .line 359
    :sswitch_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 360
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a01e3

    invoke-static {v2, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 361
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 362
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 365
    :sswitch_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 366
    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 367
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 368
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 371
    :sswitch_2
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 372
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a01e3

    invoke-static {v2, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 373
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 374
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_1

    .line 377
    :sswitch_3
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 378
    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 379
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 380
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_1

    .line 357
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method
