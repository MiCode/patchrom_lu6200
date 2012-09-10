.class Lcom/lge/camera/command/setting/SetCameraShotMode$6;
.super Ljava/lang/Object;
.source "SetCameraShotMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetCameraShotMode;->onExecuteAlone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetCameraShotMode;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetCameraShotMode;)V
    .locals 0
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode$6;->this$0:Lcom/lge/camera/command/setting/SetCameraShotMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShotMode$6;->this$0:Lcom/lge/camera/command/setting/SetCameraShotMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/CameraMediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 411
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShotMode$6;->this$0:Lcom/lge/camera/command/setting/SetCameraShotMode;

    invoke-virtual {v0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/camera/CameraStorageController;->checkStorage(Z)V

    .line 412
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShotMode$6;->this$0:Lcom/lge/camera/command/setting/SetCameraShotMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateSizeIndicator()V

    .line 413
    return-void
.end method
