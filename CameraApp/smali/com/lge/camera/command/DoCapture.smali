.class public Lcom/lge/camera/command/DoCapture;
.super Lcom/lge/camera/command/Command;
.source "DoCapture.java"


# instance fields
.field protected mMediator:Lcom/lge/camera/CameraMediator;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/Mediator;)V

    .line 16
    check-cast p1, Lcom/lge/camera/CameraMediator;

    .end local p1
    iput-object p1, p0, Lcom/lge/camera/command/DoCapture;->mMediator:Lcom/lge/camera/CameraMediator;

    .line 17
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 22
    const-string v3, "CameraApp"

    const-string v4, "DoCapture-start"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v3, p0, Lcom/lge/camera/command/DoCapture;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v0

    .line 24
    .local v0, focusController:Lcom/lge/camera/controller/camera/CameraFocusController;
    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v1

    .line 26
    .local v1, focusState:I
    iget-object v3, p0, Lcom/lge/camera/command/DoCapture;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getStorageState()I

    move-result v3

    if-eqz v3, :cond_0

    .line 27
    const-string v3, "CameraApp"

    const-string v4, "doCapture return : NOT STORAGE_AVAILABLE"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v3, p0, Lcom/lge/camera/command/DoCapture;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->enableCommand(Z)V

    .line 76
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/command/DoCapture;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->enableCommand(Z)V

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/lge/camera/properties/ProjectVariables;->mCaptureStartTime:J

    .line 36
    iget-object v3, p0, Lcom/lge/camera/command/DoCapture;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v4, "key_camera_timer"

    invoke-virtual {v3, v4}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, timerSetting:Ljava/lang/String;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timerSetting ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v3, p0, Lcom/lge/camera/command/DoCapture;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getCameraId()I

    move-result v3

    if-nez v3, :cond_a

    .line 40
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DoCapture focusState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    const/4 v3, 0x7

    if-eq v1, v3, :cond_1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_4

    .line 45
    :cond_1
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/lge/camera/command/DoCapture;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/camera/TimerController;->getTimerCaptureDelay()I

    move-result v3

    if-lez v3, :cond_3

    .line 46
    iget-object v3, p0, Lcom/lge/camera/command/DoCapture;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/camera/TimerController;->startTimerShot()V

    .line 75
    :cond_2
    :goto_1
    const-string v3, "CameraApp"

    const-string v4, "DoCapture-end"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 48
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/command/DoCapture;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v4, "com.lge.camera.command.TakePicture"

    invoke-virtual {v3, v4}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;)V

    goto :goto_1

    .line 51
    :cond_4
    if-eq v1, v6, :cond_5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_6

    .line 52
    :cond_5
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusState(I)V

    goto :goto_1

    .line 54
    :cond_6
    iget-object v3, p0, Lcom/lge/camera/command/DoCapture;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->isCafSupported()Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz v1, :cond_7

    const/16 v3, 0x8

    if-eq v1, v3, :cond_7

    const/16 v3, 0x9

    if-eq v1, v3, :cond_7

    const/16 v3, 0xa

    if-ne v1, v3, :cond_9

    .line 60
    :cond_7
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/lge/camera/command/DoCapture;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/camera/TimerController;->getTimerCaptureDelay()I

    move-result v3

    if-lez v3, :cond_8

    .line 61
    iget-object v3, p0, Lcom/lge/camera/command/DoCapture;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/camera/TimerController;->startTimerShot()V

    goto :goto_1

    .line 63
    :cond_8
    iget-object v3, p0, Lcom/lge/camera/command/DoCapture;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v4, "com.lge.camera.command.TakePicture"

    invoke-virtual {v3, v4}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;)V

    goto :goto_1

    .line 65
    :cond_9
    if-nez v1, :cond_2

    .line 66
    iget-object v3, p0, Lcom/lge/camera/command/DoCapture;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->enableCommand(Z)V

    goto :goto_1

    .line 69
    :cond_a
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/lge/camera/command/DoCapture;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/camera/TimerController;->getTimerCaptureDelay()I

    move-result v3

    if-lez v3, :cond_b

    .line 70
    iget-object v3, p0, Lcom/lge/camera/command/DoCapture;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/camera/TimerController;->startTimerShot()V

    goto :goto_1

    .line 72
    :cond_b
    iget-object v3, p0, Lcom/lge/camera/command/DoCapture;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v4, "com.lge.camera.command.TakePicture"

    invoke-virtual {v3, v4}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
