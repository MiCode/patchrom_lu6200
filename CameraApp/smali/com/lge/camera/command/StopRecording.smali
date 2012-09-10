.class public Lcom/lge/camera/command/StopRecording;
.super Lcom/lge/camera/command/Command;
.source "StopRecording.java"


# instance fields
.field protected mMediator:Lcom/lge/camera/CamcorderMediator;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/Mediator;)V

    .line 15
    check-cast p1, Lcom/lge/camera/CamcorderMediator;

    .end local p1
    iput-object p1, p0, Lcom/lge/camera/command/StopRecording;->mMediator:Lcom/lge/camera/CamcorderMediator;

    .line 16
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/StopRecording;->execute(Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v2, 0x1

    .line 24
    const-string v0, "CameraApp"

    const-string v1, "StopRecording"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    if-eqz p1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/lge/camera/command/StopRecording;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0, v2}, Lcom/lge/camera/CamcorderMediator;->setBackKeyRecStop(Z)V

    .line 31
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/command/StopRecording;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0, v2}, Lcom/lge/camera/CamcorderMediator;->setVideoState(I)V

    .line 32
    invoke-virtual {p0}, Lcom/lge/camera/command/StopRecording;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 33
    iget-object v0, p0, Lcom/lge/camera/command/StopRecording;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->keepScreenOnAwhile()V

    .line 34
    iget-object v0, p0, Lcom/lge/camera/command/StopRecording;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->stopRecording()V

    .line 35
    iget-object v0, p0, Lcom/lge/camera/command/StopRecording;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewPanelController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewPanelController;->enableCommand(Z)V

    .line 39
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/StopRecording;->mMediator:Lcom/lge/camera/CamcorderMediator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/CamcorderMediator;->setBackKeyRecStop(Z)V

    goto :goto_0
.end method
