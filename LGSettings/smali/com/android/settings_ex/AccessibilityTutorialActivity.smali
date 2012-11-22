.class public Lcom/android/settings_ex/AccessibilityTutorialActivity;
.super Landroid/app/Activity;
.source "AccessibilityTutorialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialTextView;,
        Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;,
        Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule2;,
        Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1;,
        Lcom/android/settings_ex/AccessibilityTutorialActivity$AppsAdapter;
    }
.end annotation


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mDisableOnPause:Z

.field private final mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mViewAnimator:Landroid/widget/ViewAnimator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/settings_ex/AccessibilityTutorialActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/AccessibilityTutorialActivity$1;-><init>(Lcom/android/settings_ex/AccessibilityTutorialActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/AccessibilityTutorialActivity;)Landroid/widget/ViewAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/AccessibilityTutorialActivity;Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/AccessibilityTutorialActivity;->activateModule(Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/AccessibilityTutorialActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/AccessibilityTutorialActivity;->interrupt()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings_ex/AccessibilityTutorialActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/AccessibilityTutorialActivity;->previous()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/AccessibilityTutorialActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/AccessibilityTutorialActivity;->next()V

    return-void
.end method

.method private activateModule(Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;)V
    .locals 0
    .parameter "module"

    .prologue
    invoke-virtual {p1}, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->activate()V

    return-void
.end method

.method private deactivateModule(Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;)V
    .locals 2
    .parameter "module"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    iget-object v0, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p1}, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;->deactivate()V

    return-void
.end method

.method private interrupt()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    return-void
.end method

.method private next()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/AccessibilityTutorialActivity;->show(I)V

    .line 178
    return-void
.end method

.method private previous()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/AccessibilityTutorialActivity;->show(I)V

    .line 182
    return-void
.end method

.method private show(I)V
    .locals 3
    .parameter "which"

    .prologue
    .line 185
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v2}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v2

    if-lt p1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    iget-object v2, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v2}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    .local v0, displayedIndex:I
    iget-object v2, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v2, v0}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;

    .local v1, displayedView:Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/settings_ex/AccessibilityTutorialActivity;->deactivateModule(Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/settings_ex/AccessibilityTutorialActivity;->deactivateModule(Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;)V

    iget-object v2, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v2, p1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x10a0002

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .local v0, inAnimation:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .local v1, outAnimation:Landroid/view/animation/Animation;
    new-instance v2, Landroid/widget/ViewAnimator;

    invoke-direct {v2, p0}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    iget-object v2, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v2, v0}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v2, v1}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    new-instance v3, Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1;

    invoke-direct {v3, p0, p0}, Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1;-><init>(Landroid/content/Context;Lcom/android/settings_ex/AccessibilityTutorialActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ViewAnimator;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    new-instance v3, Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule2;

    invoke-direct {v3, p0, p0}, Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule2;-><init>(Landroid/content/Context;Lcom/android/settings_ex/AccessibilityTutorialActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ViewAnimator;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/AccessibilityTutorialActivity;->setContentView(Landroid/view/View;)V

    const-string v2, "accessibility"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/AccessibilityTutorialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 124
    if-eqz p1, :cond_0

    .line 125
    const-string v2, "active_module"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/AccessibilityTutorialActivity;->show(I)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/settings_ex/AccessibilityTutorialActivity;->show(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-boolean v1, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity;->mDisableOnPause:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/AccessibilityTutorialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "touch_exploration_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 153
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings_ex/AccessibilityTutorialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "touch_exploration_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "touch_exploration_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput-boolean v3, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity;->mDisableOnPause:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity;->mDisableOnPause:Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 159
    const-string v0, "active_module"

    iget-object v1, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    return-void
.end method
