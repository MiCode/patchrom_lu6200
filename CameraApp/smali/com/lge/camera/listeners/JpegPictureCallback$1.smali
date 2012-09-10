.class Lcom/lge/camera/listeners/JpegPictureCallback$1;
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
    .line 73
    iput-object p1, p0, Lcom/lge/camera/listeners/JpegPictureCallback$1;->this$0:Lcom/lge/camera/listeners/JpegPictureCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lge/camera/listeners/JpegPictureCallback$1;->this$0:Lcom/lge/camera/listeners/JpegPictureCallback;

    iget-object v0, v0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/lge/camera/listeners/JpegPictureCallback$1;->this$0:Lcom/lge/camera/listeners/JpegPictureCallback;

    iget-object v0, v0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/CameraMediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/lge/camera/listeners/JpegPictureCallback$1;->this$0:Lcom/lge/camera/listeners/JpegPictureCallback;

    iget-object v0, v0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->isValidState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/lge/camera/listeners/JpegPictureCallback$1;->this$0:Lcom/lge/camera/listeners/JpegPictureCallback;

    iget-object v0, v0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->deleteProgressDialog()V

    .line 81
    :cond_0
    return-void
.end method
