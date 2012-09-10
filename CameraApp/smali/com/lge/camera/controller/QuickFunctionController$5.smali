.class Lcom/lge/camera/controller/QuickFunctionController$5;
.super Ljava/lang/Object;
.source "QuickFunctionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuEnabled(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickFunctionController;

.field final synthetic val$enabled:Z

.field final synthetic val$onlyEnableDim:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickFunctionController;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/lge/camera/controller/QuickFunctionController$5;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iput-boolean p2, p0, Lcom/lge/camera/controller/QuickFunctionController$5;->val$enabled:Z

    iput-boolean p3, p0, Lcom/lge/camera/controller/QuickFunctionController$5;->val$onlyEnableDim:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 464
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$5;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 465
    const/4 v1, 0x1

    .line 466
    .local v1, menuEnabled:Z
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$5;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    #getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lge/camera/controller/QuickFunctionController;->access$000(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, size:I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 467
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$5;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    #getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lge/camera/controller/QuickFunctionController;->access$000(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v3}, Lcom/lge/camera/components/RotateImageButton;->isEnabled()Z

    move-result v1

    .line 468
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$5;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    #getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lge/camera/controller/QuickFunctionController;->access$000(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/components/RotateImageButton;

    iget-boolean v4, p0, Lcom/lge/camera/controller/QuickFunctionController$5;->val$enabled:Z

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/RotateImageButton;->setEnabled(Z)V

    .line 469
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$5;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    #getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuEnabled:[Z
    invoke-static {v3}, Lcom/lge/camera/controller/QuickFunctionController;->access$300(Lcom/lge/camera/controller/QuickFunctionController;)[Z

    move-result-object v3

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    .line 470
    const/4 v1, 0x1

    .line 472
    :cond_0
    iget-boolean v3, p0, Lcom/lge/camera/controller/QuickFunctionController$5;->val$onlyEnableDim:Z

    if-nez v3, :cond_1

    if-nez v1, :cond_2

    .line 473
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$5;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-boolean v4, p0, Lcom/lge/camera/controller/QuickFunctionController$5;->val$enabled:Z

    invoke-virtual {v3, v0, v4}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuDim(IZ)V

    .line 466
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 475
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$5;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuDim(IZ)V

    goto :goto_1

    .line 478
    :cond_3
    return-void
.end method
