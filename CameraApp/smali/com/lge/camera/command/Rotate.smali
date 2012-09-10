.class public Lcom/lge/camera/command/Rotate;
.super Lcom/lge/camera/command/Command;
.source "Rotate.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/Mediator;)V

    .line 17
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/Rotate;->execute(Ljava/lang/Object;)V

    .line 22
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 12
    .parameter "arg"

    .prologue
    const v11, 0x7f0900cd

    const v10, 0x7f0900cc

    const v9, 0x7f0900d4

    const v8, 0x7f09001b

    const v7, 0x7f090026

    .line 25
    move-object v1, p1

    check-cast v1, Landroid/os/Bundle;

    .line 26
    .local v1, bundle:Landroid/os/Bundle;
    const-string v3, "animation"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 27
    .local v0, animation:Z
    const-string v3, "degrees"

    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 29
    .local v2, degree:I
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 30
    const-string v3, "animation"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 31
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const-string v4, "com.lge.camera.command.Rotate"

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v1, v5, v6}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 33
    :cond_0
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rotate to degree: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/camera/PanoramaController;->isPanoramaStarted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/lge/camera/controller/PreviewPanelController;->startRotation(IZ)V

    .line 45
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lge/camera/controller/SettingController;->startRotation(I)V

    .line 46
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lge/camera/controller/QuickFunctionController;->startSubMenuRotation(I)V

    .line 48
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/PreviewController;->beRendered()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 49
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lge/camera/components/OpenGLSurfaceView;->setOrientation(I)V

    .line 54
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/ToastController;->rotate()V

    .line 55
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getDialogController()Lcom/lge/camera/controller/DialogController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lge/camera/controller/DialogController;->startRotation(I)V

    .line 57
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3, v10, v2, v9, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 58
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3, v11, v2, v9, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 59
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f0900cf

    invoke-virtual {v3, v4, v2, v9, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 60
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f0900d1

    invoke-virtual {v3, v4, v2, v9, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 61
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f0900d3

    invoke-virtual {v3, v4, v2, v9, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 62
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f0900d5

    invoke-virtual {v3, v4, v2, v9, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 64
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f0900d2

    invoke-virtual {v3, v10, v2, v4, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 65
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f0900d2

    invoke-virtual {v3, v11, v2, v4, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 66
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f0900cf

    const v5, 0x7f0900d2

    invoke-virtual {v3, v4, v2, v5, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 67
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f0900d1

    const v5, 0x7f0900d2

    invoke-virtual {v3, v4, v2, v5, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 68
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f0900d3

    const v5, 0x7f0900d2

    invoke-virtual {v3, v4, v2, v5, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 70
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f0900d0

    invoke-virtual {v3, v10, v2, v4, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 71
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f0900d0

    invoke-virtual {v3, v11, v2, v4, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 72
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f0900cf

    const v5, 0x7f0900d0

    invoke-virtual {v3, v4, v2, v5, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 73
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f0900d1

    const v5, 0x7f0900d0

    invoke-virtual {v3, v4, v2, v5, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 75
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f0900ce

    invoke-virtual {v3, v10, v2, v4, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 76
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f0900ce

    invoke-virtual {v3, v11, v2, v4, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 77
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f0900cf

    const v5, 0x7f0900ce

    invoke-virtual {v3, v4, v2, v5, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 79
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f0900cb

    invoke-virtual {v3, v10, v2, v4, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 80
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f0900cb

    invoke-virtual {v3, v11, v2, v4, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 82
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f0900d7

    invoke-virtual {v3, v4, v2, v0}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 83
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f0900d8

    invoke-virtual {v3, v4, v2, v0}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 84
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f0900d9

    invoke-virtual {v3, v4, v2, v0}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 86
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f0900a0

    invoke-virtual {v3, v4, v2, v0}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 87
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f0900a1

    invoke-virtual {v3, v4, v2, v0}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 88
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f0900a2

    invoke-virtual {v3, v4, v2, v0}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 89
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f0900a3

    invoke-virtual {v3, v4, v2, v0}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 90
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f0900a4

    invoke-virtual {v3, v4, v2, v0}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 92
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f09002a

    invoke-virtual {v3, v4, v2, v7, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 93
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f09002b

    invoke-virtual {v3, v4, v2, v7, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 94
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f090025

    invoke-virtual {v3, v4, v2, v7, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 95
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f090029

    invoke-virtual {v3, v4, v2, v7, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 96
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f09001f

    invoke-virtual {v3, v4, v2, v7, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 97
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f090023

    invoke-virtual {v3, v4, v2, v7, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 98
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f09002d

    invoke-virtual {v3, v4, v2, v7, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 99
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f09001e

    invoke-virtual {v3, v4, v2, v7, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 100
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f090024

    invoke-virtual {v3, v4, v2, v7, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 101
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f090021

    invoke-virtual {v3, v4, v2, v7, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 102
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f090028

    invoke-virtual {v3, v4, v2, v7, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 104
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 106
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f090022

    invoke-virtual {v3, v4, v2, v8, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 107
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f090025

    invoke-virtual {v3, v4, v2, v8, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 108
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f090020

    invoke-virtual {v3, v4, v2, v8, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 109
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f090023

    invoke-virtual {v3, v4, v2, v8, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 110
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f09001d

    invoke-virtual {v3, v4, v2, v8, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 111
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f09001e

    invoke-virtual {v3, v4, v2, v8, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 112
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f090024

    invoke-virtual {v3, v4, v2, v8, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 113
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f090021

    invoke-virtual {v3, v4, v2, v8, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 114
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f09001f

    invoke-virtual {v3, v4, v2, v8, v0}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 117
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportZoomOnRecord()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 126
    :goto_2
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getBrightnessController()Lcom/lge/camera/controller/BrightnessController;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/lge/camera/controller/BrightnessController;->startRotation(IZ)V

    .line 127
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getBeautyshotController()Lcom/lge/camera/controller/BeautyshotController;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/lge/camera/controller/BeautyshotController;->startRotation(IZ)V

    .line 129
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_5

    .line 130
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lge/camera/controller/camera/CameraFocusController;->startRotation(I)V

    .line 131
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->startRotation(IZ)V

    .line 137
    :goto_3
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f0900dc

    invoke-virtual {v3, v4, v2, v0}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 138
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f0900db

    invoke-virtual {v3, v4, v2, v0}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    goto/16 :goto_0

    .line 51
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/PreviewController;->getCameraPreview()Lcom/lge/camera/components/CameraPreview;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lge/camera/components/CameraPreview;->setOrientation(I)V

    goto/16 :goto_1

    .line 123
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/lge/camera/controller/ZoomController;->startRotation(IZ)V

    goto :goto_2

    .line 133
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lge/camera/controller/camcorder/RecordingController;->startRotation(I)V

    .line 134
    invoke-virtual {p0}, Lcom/lge/camera/command/Rotate;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lge/camera/controller/PreviewController;->startLiveEffectMessageRotation(I)V

    goto :goto_3
.end method
