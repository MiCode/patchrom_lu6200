.class public Lcom/lge/camera/exception/CameraErrorCallback;
.super Ljava/lang/Object;
.source "CameraErrorCallback.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# instance fields
.field private bShowCameraErrorPopup:Z

.field m_mediator:Lcom/lge/camera/Mediator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/exception/CameraErrorCallback;->bShowCameraErrorPopup:Z

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 1
    .parameter "mediator"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/exception/CameraErrorCallback;->bShowCameraErrorPopup:Z

    .line 18
    invoke-virtual {p0, p1}, Lcom/lge/camera/exception/CameraErrorCallback;->setMediator(Lcom/lge/camera/Mediator;)V

    .line 19
    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 6
    .parameter "error"
    .parameter "camera"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ErrorCallback() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sparse-switch p1, :sswitch_data_0

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 32
    :sswitch_0
    const-string v1, "CameraApp"

    const-string v2, "media server died"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/lge/camera/exception/CameraErrorCallback;->m_mediator:Lcom/lge/camera/Mediator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/exception/CameraErrorCallback;->m_mediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/exception/CameraErrorCallback;->m_mediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_2

    .line 35
    iget-object v1, p0, Lcom/lge/camera/exception/CameraErrorCallback;->m_mediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/StorageController;->checkFsWritable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    const-string v1, "CameraApp"

    const-string v2, "Try restart preview"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/lge/camera/exception/CameraErrorCallback;->m_mediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->stopPreview()V

    .line 39
    iget-object v1, p0, Lcom/lge/camera/exception/CameraErrorCallback;->m_mediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->closeCamera()V

    .line 42
    :try_start_0
    const-string v1, "CameraApp"

    const-string v2, "wait three second for restart MediaServer"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-wide/16 v1, 0xbb8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/exception/CameraErrorCallback;->m_mediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->startPreview()V

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 46
    .local v0, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 52
    .end local v0           #e1:Ljava/lang/InterruptedException;
    :cond_1
    const-string v1, "CameraApp"

    const-string v2, "Storage is not available. Or media server nerver wake up. finish app."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-boolean v1, p0, Lcom/lge/camera/exception/CameraErrorCallback;->bShowCameraErrorPopup:Z

    if-nez v1, :cond_0

    .line 54
    iput-boolean v5, p0, Lcom/lge/camera/exception/CameraErrorCallback;->bShowCameraErrorPopup:Z

    .line 55
    iget-object v1, p0, Lcom/lge/camera/exception/CameraErrorCallback;->m_mediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/PreviewController;->showCameraStoppedAndFinish()V

    goto :goto_0

    .line 59
    :cond_2
    const-string v1, "CameraApp"

    const-string v2, "mediator or Controller is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :sswitch_1
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera Driver Error, bShowCameraErrorPopup = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lge/camera/exception/CameraErrorCallback;->bShowCameraErrorPopup:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/lge/camera/exception/CameraErrorCallback;->m_mediator:Lcom/lge/camera/Mediator;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lge/camera/exception/CameraErrorCallback;->bShowCameraErrorPopup:Z

    if-nez v1, :cond_0

    .line 66
    iput-boolean v5, p0, Lcom/lge/camera/exception/CameraErrorCallback;->bShowCameraErrorPopup:Z

    .line 67
    iget-object v1, p0, Lcom/lge/camera/exception/CameraErrorCallback;->m_mediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/PreviewController;->showCameraStoppedAndFinish()V

    goto/16 :goto_0

    .line 29
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public setMediator(Lcom/lge/camera/Mediator;)V
    .locals 1
    .parameter "mediator"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/lge/camera/exception/CameraErrorCallback;->m_mediator:Lcom/lge/camera/Mediator;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/exception/CameraErrorCallback;->bShowCameraErrorPopup:Z

    .line 24
    return-void
.end method
