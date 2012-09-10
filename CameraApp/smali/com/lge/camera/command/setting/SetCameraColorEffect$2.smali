.class Lcom/lge/camera/command/setting/SetCameraColorEffect$2;
.super Ljava/lang/Object;
.source "SetCameraColorEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetCameraColorEffect;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetCameraColorEffect;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetCameraColorEffect;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraColorEffect$2;->this$0:Lcom/lge/camera/command/setting/SetCameraColorEffect;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraColorEffect$2;->this$0:Lcom/lge/camera/command/setting/SetCameraColorEffect;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetCameraColorEffect;->access$100(Lcom/lge/camera/command/setting/SetCameraColorEffect;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraColorEffect$2;->this$0:Lcom/lge/camera/command/setting/SetCameraColorEffect;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetCameraColorEffect;->access$200(Lcom/lge/camera/command/setting/SetCameraColorEffect;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->showFocus()Z

    .line 82
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraColorEffect$2;->this$0:Lcom/lge/camera/command/setting/SetCameraColorEffect;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetCameraColorEffect;->access$300(Lcom/lge/camera/command/setting/SetCameraColorEffect;)Lcom/lge/camera/Mediator;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateFocusIndicator()V

    .line 83
    return-void
.end method
