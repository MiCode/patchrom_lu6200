.class Lcom/lge/camera/controller/QuickFunctionController$7;
.super Ljava/lang/Object;
.source "QuickFunctionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/QuickFunctionController;->setMenuDim(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickFunctionController;

.field final synthetic val$enable:Z

.field final synthetic val$menuIndex:I


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickFunctionController;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Lcom/lge/camera/controller/QuickFunctionController$7;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iput-boolean p2, p0, Lcom/lge/camera/controller/QuickFunctionController$7;->val$enable:Z

    iput p3, p0, Lcom/lge/camera/controller/QuickFunctionController$7;->val$menuIndex:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$7;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 536
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionController$7;->val$enable:Z

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$7;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    #getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lge/camera/controller/QuickFunctionController;->access$000(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/lge/camera/controller/QuickFunctionController$7;->val$menuIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->clearColorFilter()V

    .line 538
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$7;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    #getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lge/camera/controller/QuickFunctionController;->access$000(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/lge/camera/controller/QuickFunctionController$7;->val$menuIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setAlpha(I)V

    .line 543
    :goto_0
    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$7;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    #getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lge/camera/controller/QuickFunctionController;->access$000(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/lge/camera/controller/QuickFunctionController$7;->val$menuIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setColorFilter(I)V

    .line 541
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$7;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    #getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lge/camera/controller/QuickFunctionController;->access$000(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/lge/camera/controller/QuickFunctionController$7;->val$menuIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$7;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    #getter for: Lcom/lge/camera/controller/QuickFunctionController;->alpha:I
    invoke-static {v1}, Lcom/lge/camera/controller/QuickFunctionController;->access$500(Lcom/lge/camera/controller/QuickFunctionController;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setAlpha(I)V

    goto :goto_0
.end method
