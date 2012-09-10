.class Lcom/lge/camera/controller/QuickFunctionController$4;
.super Ljava/lang/Object;
.source "QuickFunctionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/QuickFunctionController;->setMenuEnabled(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickFunctionController;

.field final synthetic val$enabled:Z

.field final synthetic val$menuIndex:I


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickFunctionController;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 447
    iput-object p1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iput p2, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->val$menuIndex:I

    iput-boolean p3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->val$enabled:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 450
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 451
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    #getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lge/camera/controller/QuickFunctionController;->access$000(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->val$menuIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    iget-boolean v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->val$enabled:Z

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setEnabled(Z)V

    .line 452
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->val$menuIndex:I

    iget-boolean v2, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->val$enabled:Z

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuDim(IZ)V

    .line 453
    return-void
.end method
