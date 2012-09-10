.class Lcom/lge/camera/PostviewActivity$38;
.super Ljava/lang/Object;
.source "PostviewActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/PostviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewActivity;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 4106
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity$38;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 4110
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$38;->this$0:Lcom/lge/camera/PostviewActivity;

    const v2, 0x7f090030

    invoke-virtual {v1, v2}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4111
    .local v0, imageView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 4112
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4114
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$38;->this$0:Lcom/lge/camera/PostviewActivity;

    iget-object v2, p0, Lcom/lge/camera/PostviewActivity$38;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v2}, Lcom/lge/camera/PostviewActivity;->getSelectedIndex()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/lge/camera/PostviewActivity;->refreshContinuousGallery(IZ)V

    .line 4115
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$38;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v1}, Lcom/lge/camera/PostviewActivity;->refreshLoadCapturedImages()Z

    .line 4116
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 4108
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 4107
    return-void
.end method
