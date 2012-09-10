.class public Lcom/lge/camera/command/RestartPreview;
.super Lcom/lge/camera/command/Command;
.source "RestartPreview.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/Mediator;)V

    .line 10
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 14
    const-string v0, "CameraApp"

    const-string v1, "getPreviewController().restartPreview()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->restartPreview()V

    .line 16
    return-void
.end method
