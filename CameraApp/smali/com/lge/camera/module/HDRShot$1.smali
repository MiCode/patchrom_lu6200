.class Lcom/lge/camera/module/HDRShot$1;
.super Ljava/lang/Object;
.source "HDRShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/module/HDRShot;->takePicture()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/module/HDRShot;


# direct methods
.method constructor <init>(Lcom/lge/camera/module/HDRShot;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lge/camera/module/HDRShot$1;->this$0:Lcom/lge/camera/module/HDRShot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/camera/module/HDRShot$1;->this$0:Lcom/lge/camera/module/HDRShot;

    iget-object v0, v0, Lcom/lge/camera/module/HDRShot;->mMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/lge/camera/module/HDRShot$1;->this$0:Lcom/lge/camera/module/HDRShot;

    iget-object v0, v0, Lcom/lge/camera/module/HDRShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/CameraMediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/lge/camera/module/HDRShot$1;->this$0:Lcom/lge/camera/module/HDRShot;

    iget-object v0, v0, Lcom/lge/camera/module/HDRShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/lge/camera/module/HDRShot$1;->this$0:Lcom/lge/camera/module/HDRShot;

    iget-object v0, v0, Lcom/lge/camera/module/HDRShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->isPreviewing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/module/HDRShot$1;->this$0:Lcom/lge/camera/module/HDRShot;

    iget-object v0, v0, Lcom/lge/camera/module/HDRShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getInCaptureProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/lge/camera/module/HDRShot$1;->this$0:Lcom/lge/camera/module/HDRShot;

    iget-object v0, v0, Lcom/lge/camera/module/HDRShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->showProgressDialog()V

    .line 49
    :cond_0
    return-void
.end method
