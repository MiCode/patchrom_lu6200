.class public Lcom/lge/camera/controller/camera/CameraPreviewPanelController;
.super Lcom/lge/camera/controller/PreviewPanelController;
.source "CameraPreviewPanelController.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PreviewPanelController;-><init>(Lcom/lge/camera/Mediator;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected getMediator()Lcom/lge/camera/CameraMediator;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    return-object v0
.end method

.method protected bridge synthetic getMediator()Lcom/lge/camera/Mediator;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v0

    return-object v0
.end method
