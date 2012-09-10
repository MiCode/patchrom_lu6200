.class Lcom/lge/camera/command/setting/SetSceneMode$1;
.super Ljava/lang/Object;
.source "SetSceneMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetSceneMode;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetSceneMode;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetSceneMode;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetSceneMode$1;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSceneMode$1;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetSceneMode;->access$000(Lcom/lge/camera/command/setting/SetSceneMode;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSceneMode$1;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    invoke-virtual {v0}, Lcom/lge/camera/command/setting/SetSceneMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateSceneIndicator()V

    .line 40
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSceneMode$1;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetSceneMode;->access$100(Lcom/lge/camera/command/setting/SetSceneMode;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSceneMode$1;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetSceneMode;->access$200(Lcom/lge/camera/command/setting/SetSceneMode;)Lcom/lge/camera/Mediator;

    move-result-object v0

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSceneMode$1;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetSceneMode;->access$300(Lcom/lge/camera/command/setting/SetSceneMode;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->hideFocus()Z

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSceneMode$1;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetSceneMode;->access$400(Lcom/lge/camera/command/setting/SetSceneMode;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->showFocus()Z

    goto :goto_0
.end method
