.class Lcom/lge/camera/controller/camera/TimerController$3;
.super Ljava/lang/Object;
.source "TimerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camera/TimerController;->stopTimerShot()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camera/TimerController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camera/TimerController;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/lge/camera/controller/camera/TimerController$3;->this$0:Lcom/lge/camera/controller/camera/TimerController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController$3;->this$0:Lcom/lge/camera/controller/camera/TimerController;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/CameraMediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController$3;->this$0:Lcom/lge/camera/controller/camera/TimerController;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateTimerIndicator()V

    .line 177
    return-void
.end method
