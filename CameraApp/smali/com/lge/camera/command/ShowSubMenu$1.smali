.class Lcom/lge/camera/command/ShowSubMenu$1;
.super Ljava/lang/Object;
.source "ShowSubMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/ShowSubMenu;->showMenu(Landroid/view/animation/Animation$AnimationListener;ILandroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/ShowSubMenu;

.field final synthetic val$finalTargetView:Lcom/lge/camera/components/RotateImageButton;

.field final synthetic val$listener:Landroid/view/animation/Animation$AnimationListener;

.field final synthetic val$open:Z

.field final synthetic val$qflView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/ShowSubMenu;Landroid/view/animation/Animation$AnimationListener;Landroid/view/View;Lcom/lge/camera/components/RotateImageButton;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/lge/camera/command/ShowSubMenu$1;->this$0:Lcom/lge/camera/command/ShowSubMenu;

    iput-object p2, p0, Lcom/lge/camera/command/ShowSubMenu$1;->val$listener:Landroid/view/animation/Animation$AnimationListener;

    iput-object p3, p0, Lcom/lge/camera/command/ShowSubMenu$1;->val$qflView:Landroid/view/View;

    iput-object p4, p0, Lcom/lge/camera/command/ShowSubMenu$1;->val$finalTargetView:Lcom/lge/camera/components/RotateImageButton;

    iput-boolean p5, p0, Lcom/lge/camera/command/ShowSubMenu$1;->val$open:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lge/camera/command/ShowSubMenu$1;->this$0:Lcom/lge/camera/command/ShowSubMenu;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/lge/camera/command/ShowSubMenu$1;->this$0:Lcom/lge/camera/command/ShowSubMenu;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/lge/camera/command/ShowSubMenu$1;->this$0:Lcom/lge/camera/command/ShowSubMenu;

    iget-object v1, p0, Lcom/lge/camera/command/ShowSubMenu$1;->val$listener:Landroid/view/animation/Animation$AnimationListener;

    iget-object v2, p0, Lcom/lge/camera/command/ShowSubMenu$1;->val$qflView:Landroid/view/View;

    iget-object v3, p0, Lcom/lge/camera/command/ShowSubMenu$1;->val$finalTargetView:Lcom/lge/camera/components/RotateImageButton;

    iget-boolean v4, p0, Lcom/lge/camera/command/ShowSubMenu$1;->val$open:Z

    #calls: Lcom/lge/camera/command/ShowSubMenu;->startAnimation(Landroid/view/animation/Animation$AnimationListener;Landroid/view/View;Landroid/view/View;Z)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/lge/camera/command/ShowSubMenu;->access$000(Lcom/lge/camera/command/ShowSubMenu;Landroid/view/animation/Animation$AnimationListener;Landroid/view/View;Landroid/view/View;Z)V

    .line 107
    :cond_0
    return-void
.end method
