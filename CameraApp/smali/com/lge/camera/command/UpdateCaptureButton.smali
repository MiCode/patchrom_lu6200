.class public Lcom/lge/camera/command/UpdateCaptureButton;
.super Lcom/lge/camera/command/Command;
.source "UpdateCaptureButton.java"


# instance fields
.field protected mMediator:Lcom/lge/camera/CamcorderMediator;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/Mediator;)V

    .line 13
    check-cast p1, Lcom/lge/camera/CamcorderMediator;

    .end local p1
    iput-object p1, p0, Lcom/lge/camera/command/UpdateCaptureButton;->mMediator:Lcom/lge/camera/CamcorderMediator;

    .line 14
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 18
    const-string v0, "CameraApp"

    const-string v1, "UpdateCaptureButton"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/command/UpdateCaptureButton;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/lge/camera/command/UpdateCaptureButton;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewPanelController;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lge/camera/command/UpdateCaptureButton;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getOrientationDegree()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewPanelController;->setShutterButtonImage(ZI)V

    .line 23
    return-void
.end method
