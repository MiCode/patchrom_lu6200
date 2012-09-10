.class Lcom/lge/camera/command/setting/SetCameraTimer$1;
.super Ljava/lang/Object;
.source "SetCameraTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetCameraTimer;->updateIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetCameraTimer;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetCameraTimer;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraTimer$1;->this$0:Lcom/lge/camera/command/setting/SetCameraTimer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraTimer$1;->this$0:Lcom/lge/camera/command/setting/SetCameraTimer;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraTimer;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/CameraMediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraTimer$1;->this$0:Lcom/lge/camera/command/setting/SetCameraTimer;

    invoke-virtual {v0}, Lcom/lge/camera/command/setting/SetCameraTimer;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateTimerIndicator()V

    .line 62
    return-void
.end method
