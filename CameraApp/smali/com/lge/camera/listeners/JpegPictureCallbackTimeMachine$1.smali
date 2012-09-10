.class Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine$1;
.super Ljava/lang/Object;
.source "JpegPictureCallbackTimeMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->onPictureTaken([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;


# direct methods
.method constructor <init>(Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine$1;->this$0:Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine$1;->this$0:Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;

    iget-object v0, v0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/CameraMediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine$1;->this$0:Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;

    iget-object v0, v0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->showCameraStoppedAndFinish()V

    .line 56
    return-void
.end method
