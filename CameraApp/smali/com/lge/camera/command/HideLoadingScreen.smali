.class public Lcom/lge/camera/command/HideLoadingScreen;
.super Lcom/lge/camera/command/Command;
.source "HideLoadingScreen.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/Mediator;)V

    .line 11
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 15
    const-string v0, "CameraApp"

    const-string v1, "HideLoadingScreen"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/lge/camera/command/HideLoadingScreen;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->hideLoadingView()V

    .line 17
    return-void
.end method
