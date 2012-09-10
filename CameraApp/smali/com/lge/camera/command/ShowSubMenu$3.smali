.class Lcom/lge/camera/command/ShowSubMenu$3;
.super Ljava/lang/Object;
.source "ShowSubMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/command/ShowSubMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/ShowSubMenu;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/ShowSubMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/lge/camera/command/ShowSubMenu$3;->this$0:Lcom/lge/camera/command/ShowSubMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 259
    iget-object v1, p0, Lcom/lge/camera/command/ShowSubMenu$3;->this$0:Lcom/lge/camera/command/ShowSubMenu;

    iget-object v1, v1, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/command/ShowSubMenu$3;->this$0:Lcom/lge/camera/command/ShowSubMenu;

    iget v2, v2, Lcom/lge/camera/command/ShowSubMenu;->mIndex:I

    invoke-virtual {v1, v2}, Lcom/lge/camera/controller/QuickFunctionController;->getAnimationView(I)Landroid/view/View;

    move-result-object v0

    .line 260
    .local v0, animationView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 261
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/ShowSubMenu$3;->this$0:Lcom/lge/camera/command/ShowSubMenu;

    const/4 v2, 0x1

    #calls: Lcom/lge/camera/command/ShowSubMenu;->show(Z)V
    invoke-static {v1, v2}, Lcom/lge/camera/command/ShowSubMenu;->access$100(Lcom/lge/camera/command/ShowSubMenu;Z)V

    .line 264
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 256
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 255
    return-void
.end method
