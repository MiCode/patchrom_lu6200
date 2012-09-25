.class Lcom/android/settings_ex/AccessibilityTutorialActivity$1;
.super Ljava/lang/Object;
.source "AccessibilityTutorialActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/AccessibilityTutorialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/AccessibilityTutorialActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/AccessibilityTutorialActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$1;->this$0:Lcom/android/settings_ex/AccessibilityTutorialActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 81
    iget-object v2, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$1;->this$0:Lcom/android/settings_ex/AccessibilityTutorialActivity;

    #getter for: Lcom/android/settings_ex/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;
    invoke-static {v2}, Lcom/android/settings_ex/AccessibilityTutorialActivity;->access$000(Lcom/android/settings_ex/AccessibilityTutorialActivity;)Landroid/widget/ViewAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    .line 82
    .local v0, index:I
    iget-object v2, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$1;->this$0:Lcom/android/settings_ex/AccessibilityTutorialActivity;

    #getter for: Lcom/android/settings_ex/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;
    invoke-static {v2}, Lcom/android/settings_ex/AccessibilityTutorialActivity;->access$000(Lcom/android/settings_ex/AccessibilityTutorialActivity;)Landroid/widget/ViewAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;

    .line 86
    .local v1, module:Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$1;->this$0:Lcom/android/settings_ex/AccessibilityTutorialActivity;

    #calls: Lcom/android/settings_ex/AccessibilityTutorialActivity;->activateModule(Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;)V
    invoke-static {v2, v1}, Lcom/android/settings_ex/AccessibilityTutorialActivity;->access$100(Lcom/android/settings_ex/AccessibilityTutorialActivity;Lcom/android/settings_ex/AccessibilityTutorialActivity$TutorialModule;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 95
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 100
    return-void
.end method
