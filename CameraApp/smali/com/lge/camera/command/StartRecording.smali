.class public Lcom/lge/camera/command/StartRecording;
.super Lcom/lge/camera/command/Command;
.source "StartRecording.java"


# instance fields
.field protected mMediator:Lcom/lge/camera/CamcorderMediator;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/Mediator;)V

    .line 14
    check-cast p1, Lcom/lge/camera/CamcorderMediator;

    .end local p1
    iput-object p1, p0, Lcom/lge/camera/command/StartRecording;->mMediator:Lcom/lge/camera/CamcorderMediator;

    .line 15
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    const-string v0, "CameraApp"

    const-string v1, "StartRecording"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useToggleQFL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/lge/camera/command/StartRecording;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->hideOsdByForce()V

    .line 26
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/command/StartRecording;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->setKeepScreenOn()V

    .line 28
    iget-object v0, p0, Lcom/lge/camera/command/StartRecording;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewPanelController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewPanelController;->setSwitcherVisible(Z)V

    .line 29
    iget-object v0, p0, Lcom/lge/camera/command/StartRecording;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->clearSubMenu()V

    .line 30
    iget-object v0, p0, Lcom/lge/camera/command/StartRecording;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewPanelController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewPanelController;->enableCommand(Z)V

    .line 31
    iget-object v0, p0, Lcom/lge/camera/command/StartRecording;->mMediator:Lcom/lge/camera/CamcorderMediator;

    const-string v1, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    invoke-virtual {v0, v1}, Lcom/lge/camera/CamcorderMediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/lge/camera/command/StartRecording;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->startRecording()V

    .line 33
    iget-object v0, p0, Lcom/lge/camera/command/StartRecording;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewPanelController;->updateThumbnailButtonVisibility()V

    .line 37
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/StartRecording;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0, v2}, Lcom/lge/camera/CamcorderMediator;->hideOsd(Z)V

    goto :goto_0
.end method
