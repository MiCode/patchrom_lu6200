.class public Lcom/lge/camera/command/StartInit;
.super Lcom/lge/camera/command/Command;
.source "StartInit.java"


# instance fields
.field private mCheckCount:I

.field private mFirstInitController:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 1
    .parameter "mediator"

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/Mediator;)V

    .line 14
    iput-boolean v0, p0, Lcom/lge/camera/command/StartInit;->mFirstInitController:Z

    .line 15
    iput v0, p0, Lcom/lge/camera/command/StartInit;->mCheckCount:I

    .line 18
    return-void
.end method

.method private doInit()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    iput v4, p0, Lcom/lge/camera/command/StartInit;->mCheckCount:I

    .line 63
    iput-boolean v4, p0, Lcom/lge/camera/command/StartInit;->mFirstInitController:Z

    .line 64
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->initControllers()V

    .line 65
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.UpdateThumbnailButton"

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 67
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetCarrierCode()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isAttachIntent()Z

    move-result v0

    if-nez v0, :cond_3

    .line 70
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, v5}, Lcom/lge/camera/Mediator;->setVideoState(I)V

    .line 71
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/lge/camera/controller/PreviewPanelController;->enableCommand(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/lge/camera/command/StartInit;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    const-string v1, "com.lge.camera.command.SelectVideoLength"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_focus"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "face_tracking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->hideFocus()Z

    .line 86
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useTurnOffAnimation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    new-instance v1, Lcom/lge/camera/command/StartInit$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/StartInit$1;-><init>(Lcom/lge/camera/command/StartInit;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/util/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    :cond_2
    return-void

    .line 74
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/lge/camera/controller/StorageController;->checkStorage(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/lge/camera/command/StartInit;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->initMenu()V

    .line 76
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/lge/camera/controller/PreviewPanelController;->enableCommand(Z)V

    goto :goto_0
.end method


# virtual methods
.method public execute()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 22
    const-string v1, "CameraApp"

    const-string v2, "initialize UI-start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-boolean v1, p0, Lcom/lge/camera/command/StartInit;->mFirstInitController:Z

    if-nez v1, :cond_0

    .line 25
    iput-boolean v3, p0, Lcom/lge/camera/command/StartInit;->mFirstInitController:Z

    .line 26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "animation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 28
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v2, "com.lge.camera.command.Rotate"

    invoke-virtual {v1, v2, v0}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1, v3}, Lcom/lge/camera/Mediator;->checkHideLoadingScreen(Z)V

    .line 32
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/PreviewController;->isPreviewing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/PreviewController;->isPreviewOnGoing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 34
    invoke-direct {p0}, Lcom/lge/camera/command/StartInit;->doInit()V

    .line 58
    :cond_1
    :goto_0
    const-string v1, "CameraApp"

    const-string v2, "initialize UI-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_1
    return-void

    .line 36
    :cond_2
    iget v1, p0, Lcom/lge/camera/command/StartInit;->mCheckCount:I

    const/16 v2, 0x32

    if-lt v1, v2, :cond_3

    .line 37
    const-string v1, "CameraApp"

    const-string v2, "Preview fail"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lcom/lge/camera/command/StartInit;->doInit()V

    goto :goto_0

    .line 48
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->isErrorOccuredAndFinish()Z

    move-result v1

    if-nez v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v2, "com.lge.camera.command.StartInit"

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/lge/camera/command/StartInit;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    const-string v2, "com.lge.camera.command.StartInit"

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 51
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize UI-restart checkCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/command/StartInit;->mCheckCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget v1, p0, Lcom/lge/camera/command/StartInit;->mCheckCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lge/camera/command/StartInit;->mCheckCount:I

    goto :goto_1
.end method
