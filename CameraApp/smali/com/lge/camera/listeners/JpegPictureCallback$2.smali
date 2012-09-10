.class Lcom/lge/camera/listeners/JpegPictureCallback$2;
.super Ljava/lang/Object;
.source "JpegPictureCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/listeners/JpegPictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/listeners/JpegPictureCallback;


# direct methods
.method constructor <init>(Lcom/lge/camera/listeners/JpegPictureCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/lge/camera/listeners/JpegPictureCallback$2;->this$0:Lcom/lge/camera/listeners/JpegPictureCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/lge/camera/listeners/JpegPictureCallback$2;->this$0:Lcom/lge/camera/listeners/JpegPictureCallback;

    iget-object v0, v0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/CameraMediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/lge/camera/listeners/JpegPictureCallback$2;->this$0:Lcom/lge/camera/listeners/JpegPictureCallback;

    iget-object v0, v0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->showCameraStoppedAndFinish()V

    .line 158
    return-void
.end method
