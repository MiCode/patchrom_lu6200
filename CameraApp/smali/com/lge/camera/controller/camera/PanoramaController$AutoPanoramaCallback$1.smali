.class Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$1;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->onPanningSpeedWarning(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;

.field final synthetic val$warningFlag:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$1;->this$1:Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;

    iput-boolean p2, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$1;->val$warningFlag:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 386
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$1;->this$1:Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;

    iget-object v3, v3, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    iget-object v3, v3, Lcom/lge/camera/controller/camera/PanoramaController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3, p0}, Lcom/lge/camera/CameraMediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 388
    iget-boolean v3, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$1;->val$warningFlag:Z

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    .line 389
    .local v1, visible:I
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$1;->this$1:Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;

    iget-object v3, v3, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    const v4, 0x7f090084

    #calls: Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;
    invoke-static {v3, v4}, Lcom/lge/camera/controller/camera/PanoramaController;->access$1200(Lcom/lge/camera/controller/camera/PanoramaController;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateLayout;

    .line 391
    .local v2, warning:Lcom/lge/camera/components/RotateLayout;
    if-eqz v2, :cond_1

    .line 392
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$1;->this$1:Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;

    iget-object v3, v3, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    const v4, 0x7f090086

    #calls: Lcom/lge/camera/controller/camera/PanoramaController;->findViewById(I)Landroid/view/View;
    invoke-static {v3, v4}, Lcom/lge/camera/controller/camera/PanoramaController;->access$1300(Lcom/lge/camera/controller/camera/PanoramaController;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 393
    .local v0, tv:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 395
    const v3, 0x7f0b0213

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 396
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$1;->this$1:Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;

    iget-object v3, v3, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    iget v3, v3, Lcom/lge/camera/controller/camera/PanoramaController;->orientation:I

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 398
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$1;->this$1:Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;

    iget-object v3, v3, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$1;->this$1:Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;

    iget-object v4, v4, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mDirection:I
    invoke-static {v4}, Lcom/lge/camera/controller/camera/PanoramaController;->access$200(Lcom/lge/camera/controller/camera/PanoramaController;)I

    move-result v4

    iget-boolean v5, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$1;->val$warningFlag:Z

    invoke-virtual {v3, v4, v5}, Lcom/lge/camera/controller/camera/PanoramaController;->initAutoPanoramaPlayUI(IZ)V

    .line 399
    invoke-virtual {v2, v1}, Lcom/lge/camera/components/RotateLayout;->setVisibility(I)V

    .line 411
    .end local v0           #tv:Landroid/widget/TextView;
    :cond_1
    return-void

    .line 388
    .end local v1           #visible:I
    .end local v2           #warning:Lcom/lge/camera/components/RotateLayout;
    :cond_2
    const/4 v1, 0x4

    goto :goto_0
.end method
