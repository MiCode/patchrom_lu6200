.class Lcom/lge/camera/command/setting/SetCameraFocusMode$1;
.super Ljava/lang/Object;
.source "SetCameraFocusMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetCameraFocusMode;->setFocusAuto(Landroid/hardware/Camera$Parameters;)V
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
    .line 97
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 99
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1, p0}, Lcom/lge/camera/CameraMediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 100
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getFacePreviewController()Lcom/lge/camera/controller/camera/FacePreviewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/FacePreviewController;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getFacePreviewController()Lcom/lge/camera/controller/camera/FacePreviewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/FacePreviewController;->stopFaceDetection()V

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    invoke-virtual {v1}, Lcom/lge/camera/command/setting/SetCameraFocusMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    const-string v2, "key_camera_shot_mode"

    invoke-virtual {v1, v2}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, shotMode:Ljava/lang/String;
    const-string v1, "shotmode_normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "not found"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->isTimeMachineModeOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->releaseAllEngine()V

    .line 109
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/CameraPreviewController;->removePreviewCallback()V

    .line 111
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusRectangleInitialize()V

    .line 113
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getCameraId()I

    move-result v1

    if-nez v1, :cond_3

    .line 114
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_panorama"

    invoke-virtual {v1, v2, v3}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 115
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->hideFocus()Z

    .line 120
    :cond_3
    :goto_0
    return-void

    .line 117
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->showFocus()Z

    goto :goto_0
.end method
