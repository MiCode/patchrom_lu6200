.class Lcom/lge/camera/controller/camera/CameraStorageController$1;
.super Ljava/lang/Object;
.source "CameraStorageController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camera/CameraStorageController;->checkStorage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camera/CameraStorageController;

.field final synthetic val$showToast:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camera/CameraStorageController;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/lge/camera/controller/camera/CameraStorageController$1;->this$0:Lcom/lge/camera/controller/camera/CameraStorageController;

    iput-boolean p2, p0, Lcom/lge/camera/controller/camera/CameraStorageController$1;->val$showToast:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 104
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController$1;->this$0:Lcom/lge/camera/controller/camera/CameraStorageController;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/CameraStorageController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/CameraMediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController$1;->this$0:Lcom/lge/camera/controller/camera/CameraStorageController;

    #getter for: Lcom/lge/camera/controller/StorageController;->mStorageState:I
    invoke-static {v0}, Lcom/lge/camera/controller/camera/CameraStorageController;->access$000(Lcom/lge/camera/controller/camera/CameraStorageController;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController$1;->this$0:Lcom/lge/camera/controller/camera/CameraStorageController;

    #getter for: Lcom/lge/camera/controller/StorageController;->mStorageState:I
    invoke-static {v0}, Lcom/lge/camera/controller/camera/CameraStorageController;->access$100(Lcom/lge/camera/controller/camera/CameraStorageController;)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController$1;->this$0:Lcom/lge/camera/controller/camera/CameraStorageController;

    #calls: Lcom/lge/camera/controller/camera/CameraStorageController;->getMediator()Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/CameraStorageController;->access$200(Lcom/lge/camera/controller/camera/CameraStorageController;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonDisable()V

    .line 114
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController$1;->this$0:Lcom/lge/camera/controller/camera/CameraStorageController;

    #calls: Lcom/lge/camera/controller/camera/CameraStorageController;->getMediator()Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/CameraStorageController;->access$400(Lcom/lge/camera/controller/camera/CameraStorageController;)Lcom/lge/camera/Mediator;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateRemainIndicator()V

    .line 116
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController$1;->val$showToast:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController$1;->this$0:Lcom/lge/camera/controller/camera/CameraStorageController;

    #getter for: Lcom/lge/camera/controller/StorageController;->mStorageState:I
    invoke-static {v0}, Lcom/lge/camera/controller/camera/CameraStorageController;->access$500(Lcom/lge/camera/controller/camera/CameraStorageController;)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController$1;->this$0:Lcom/lge/camera/controller/camera/CameraStorageController;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraStorageController$1;->this$0:Lcom/lge/camera/controller/camera/CameraStorageController;

    #getter for: Lcom/lge/camera/controller/StorageController;->mStorageState:I
    invoke-static {v1}, Lcom/lge/camera/controller/camera/CameraStorageController;->access$600(Lcom/lge/camera/controller/camera/CameraStorageController;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/camera/CameraStorageController;->showStorageHint(I)V

    .line 119
    :cond_3
    return-void

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController$1;->this$0:Lcom/lge/camera/controller/camera/CameraStorageController;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/CameraStorageController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getInCaptureProgress()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController$1;->this$0:Lcom/lge/camera/controller/camera/CameraStorageController;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/CameraStorageController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/TimerController;->isTimerShotCountdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController$1;->this$0:Lcom/lge/camera/controller/camera/CameraStorageController;

    #calls: Lcom/lge/camera/controller/camera/CameraStorageController;->getMediator()Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/CameraStorageController;->access$300(Lcom/lge/camera/controller/camera/CameraStorageController;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    const-string v1, "StorageControllerLockKey"

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonEnable(Ljava/lang/String;)V

    goto :goto_0
.end method
