.class Lcom/lge/camera/command/setting/SetCameraShotMode$3;
.super Ljava/lang/Object;
.source "SetCameraShotMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetCameraShotMode;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetCameraShotMode;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetCameraShotMode;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode$3;->this$0:Lcom/lge/camera/command/setting/SetCameraShotMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShotMode$3;->this$0:Lcom/lge/camera/command/setting/SetCameraShotMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/CameraMediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShotMode$3;->this$0:Lcom/lge/camera/command/setting/SetCameraShotMode;

    invoke-virtual {v0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShotMode$3;->this$0:Lcom/lge/camera/command/setting/SetCameraShotMode;

    invoke-virtual {v0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;

    move-result-object v0

    const-string v1, "key_camera_picturesize"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/setting/CameraSettingMenu;->setEnabled(Ljava/lang/String;Z)V

    .line 99
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "releaseEngine call in SetCameraShotMode"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShotMode$3;->this$0:Lcom/lge/camera/command/setting/SetCameraShotMode;

    invoke-virtual {v0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    const-string v1, "Panorama"

    invoke-virtual {v0, v1}, Lcom/lge/olaworks/library/EngineProcessor;->checkEngineTag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShotMode$3;->this$0:Lcom/lge/camera/command/setting/SetCameraShotMode;

    invoke-virtual {v0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v0

    const-string v1, "Panorama"

    invoke-virtual {v0, v1}, Lcom/lge/camera/CameraMediator;->releaseEngine(Ljava/lang/String;)V

    .line 103
    :cond_1
    return-void
.end method
