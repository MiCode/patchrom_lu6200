.class Lcom/lge/camera/command/setting/SetCameraFocusMode$2;
.super Ljava/lang/Object;
.source "SetCameraFocusMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetCameraFocusMode;->setFocusFaceTracking(Landroid/hardware/Camera$Parameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetCameraFocusMode;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$2;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$2;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/CameraMediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$2;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getFacePreviewController()Lcom/lge/camera/controller/camera/FacePreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/FacePreviewController;->initController()V

    .line 132
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$2;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getFacePreviewController()Lcom/lge/camera/controller/camera/FacePreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/FacePreviewController;->startFaceDetection()V

    .line 133
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$2;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusRectangleInitialize()V

    .line 134
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$2;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->hideFocus()Z

    .line 136
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$2;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    invoke-virtual {v0}, Lcom/lge/camera/command/setting/SetCameraFocusMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->isReadyEngineProcessor()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$2;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    invoke-virtual {v0}, Lcom/lge/camera/command/setting/SetCameraFocusMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->isPreviewOnGoing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$2;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    invoke-virtual {v0}, Lcom/lge/camera/command/setting/SetCameraFocusMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->setEngineProcessor()V

    .line 140
    :cond_0
    return-void
.end method
