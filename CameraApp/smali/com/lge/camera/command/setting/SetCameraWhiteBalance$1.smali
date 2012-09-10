.class Lcom/lge/camera/command/setting/SetCameraWhiteBalance$1;
.super Ljava/lang/Object;
.source "SetCameraWhiteBalance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetCameraWhiteBalance;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetCameraWhiteBalance;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetCameraWhiteBalance;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraWhiteBalance$1;->this$0:Lcom/lge/camera/command/setting/SetCameraWhiteBalance;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraWhiteBalance$1;->this$0:Lcom/lge/camera/command/setting/SetCameraWhiteBalance;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetCameraWhiteBalance;->access$000(Lcom/lge/camera/command/setting/SetCameraWhiteBalance;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraWhiteBalance$1;->this$0:Lcom/lge/camera/command/setting/SetCameraWhiteBalance;

    invoke-virtual {v0}, Lcom/lge/camera/command/setting/SetCameraWhiteBalance;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateSceneIndicator()V

    .line 64
    return-void
.end method
