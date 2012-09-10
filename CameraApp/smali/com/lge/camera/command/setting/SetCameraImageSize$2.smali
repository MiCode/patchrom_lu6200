.class Lcom/lge/camera/command/setting/SetCameraImageSize$2;
.super Ljava/lang/Object;
.source "SetCameraImageSize.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetCameraImageSize;->onExecuteAlone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetCameraImageSize;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetCameraImageSize;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraImageSize$2;->this$0:Lcom/lge/camera/command/setting/SetCameraImageSize;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraImageSize$2;->this$0:Lcom/lge/camera/command/setting/SetCameraImageSize;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetCameraImageSize;->access$200(Lcom/lge/camera/command/setting/SetCameraImageSize;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraImageSize$2;->this$0:Lcom/lge/camera/command/setting/SetCameraImageSize;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetCameraImageSize;->access$300(Lcom/lge/camera/command/setting/SetCameraImageSize;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraImageSize$2;->this$0:Lcom/lge/camera/command/setting/SetCameraImageSize;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetCameraImageSize;->access$400(Lcom/lge/camera/command/setting/SetCameraImageSize;)Lcom/lge/camera/Mediator;

    move-result-object v0

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraImageSize$2;->this$0:Lcom/lge/camera/command/setting/SetCameraImageSize;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetCameraImageSize;->access$500(Lcom/lge/camera/command/setting/SetCameraImageSize;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->hideFocus()Z

    .line 165
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraImageSize$2;->this$0:Lcom/lge/camera/command/setting/SetCameraImageSize;

    invoke-virtual {v0}, Lcom/lge/camera/command/setting/SetCameraImageSize;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/camera/CameraStorageController;->checkStorage(Z)V

    .line 166
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraImageSize$2;->this$0:Lcom/lge/camera/command/setting/SetCameraImageSize;

    invoke-virtual {v0}, Lcom/lge/camera/command/setting/SetCameraImageSize;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateSizeIndicator()V

    .line 167
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraImageSize$2;->this$0:Lcom/lge/camera/command/setting/SetCameraImageSize;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetCameraImageSize;->access$600(Lcom/lge/camera/command/setting/SetCameraImageSize;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->showFocus()Z

    goto :goto_0
.end method
