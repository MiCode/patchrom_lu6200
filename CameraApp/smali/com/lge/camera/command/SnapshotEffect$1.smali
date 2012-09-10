.class Lcom/lge/camera/command/SnapshotEffect$1;
.super Ljava/lang/Object;
.source "SnapshotEffect.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/command/SnapshotEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/SnapshotEffect;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/SnapshotEffect;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/lge/camera/command/SnapshotEffect$1;->this$0:Lcom/lge/camera/command/SnapshotEffect;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 31
    iget-object v1, p0, Lcom/lge/camera/command/SnapshotEffect$1;->this$0:Lcom/lge/camera/command/SnapshotEffect;

    const v2, 0x7f090091

    invoke-virtual {v1, v2}, Lcom/lge/camera/command/SnapshotEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 32
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 34
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 29
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 28
    return-void
.end method
