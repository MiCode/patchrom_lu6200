.class Lcom/lge/camera/command/setting/SetCameraFocusMode$4;
.super Ljava/lang/Object;
.source "SetCameraFocusMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetCameraFocusMode;->onExecuteAlone()V
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
    .line 157
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/CameraMediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getCameraId()I

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->hideFocus()Z

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->showFocus()Z

    goto :goto_0
.end method
