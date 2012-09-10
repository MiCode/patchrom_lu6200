.class Lcom/lge/camera/PostviewActivity$19;
.super Ljava/lang/Object;
.source "PostviewActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewActivity;->gallerySlideDownAnimation(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewActivity;

.field final synthetic val$action:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewActivity;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2170
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity$19;->this$0:Lcom/lge/camera/PostviewActivity;

    iput-object p2, p0, Lcom/lge/camera/PostviewActivity$19;->val$action:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 2174
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$19;->val$action:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2175
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$19;->val$action:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2177
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 2172
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 2171
    return-void
.end method
