.class Lcom/lge/camera/module/PanoramaShot$1;
.super Ljava/lang/Object;
.source "PanoramaShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/module/PanoramaShot;->takePicture()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/module/PanoramaShot;


# direct methods
.method constructor <init>(Lcom/lge/camera/module/PanoramaShot;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/lge/camera/module/PanoramaShot$1;->this$0:Lcom/lge/camera/module/PanoramaShot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/camera/module/PanoramaShot$1;->this$0:Lcom/lge/camera/module/PanoramaShot;

    iget-object v0, v0, Lcom/lge/camera/module/PanoramaShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/CameraMediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/lge/camera/module/PanoramaShot$1;->this$0:Lcom/lge/camera/module/PanoramaShot;

    iget-object v0, v0, Lcom/lge/camera/module/PanoramaShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->isPanoramaUIShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/lge/camera/module/PanoramaShot$1;->this$0:Lcom/lge/camera/module/PanoramaShot;

    iget-object v0, v0, Lcom/lge/camera/module/PanoramaShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->showPanoramaView()V

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/module/PanoramaShot$1;->this$0:Lcom/lge/camera/module/PanoramaShot;

    iget-object v0, v0, Lcom/lge/camera/module/PanoramaShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->startPanorama()V

    .line 37
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 40
    :cond_1
    const-string v0, "CameraApp"

    const-string v1, "#####  TIME_CHECK call getCameraDevice().cancelAutoFocus()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/lge/camera/module/PanoramaShot$1;->this$0:Lcom/lge/camera/module/PanoramaShot;

    iget-object v0, v0, Lcom/lge/camera/module/PanoramaShot;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 43
    :cond_2
    return-void
.end method
