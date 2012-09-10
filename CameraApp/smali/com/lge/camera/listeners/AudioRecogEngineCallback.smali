.class public Lcom/lge/camera/listeners/AudioRecogEngineCallback;
.super Ljava/lang/Object;
.source "AudioRecogEngineCallback.java"

# interfaces
.implements Lcom/lge/voiceshutter/library/AudioRecogEngine$Callback;


# instance fields
.field private mMediator:Lcom/lge/camera/Mediator;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mMediator:Lcom/lge/camera/Mediator;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/listeners/AudioRecogEngineCallback;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method


# virtual methods
.method public onAudioEngineStartCallback(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 26
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioEngineStartCallback(), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    packed-switch p1, :pswitch_data_0

    .line 33
    :pswitch_0
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onAudioEngineStopCallback(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 36
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioEngineStopCallback(), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    packed-switch p1, :pswitch_data_0

    .line 43
    :pswitch_0
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onAudioRecogErrorCallback(I)V
    .locals 3
    .parameter "error_type"

    .prologue
    .line 46
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioRecogStateCallback(), ERROR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    packed-switch p1, :pswitch_data_0

    .line 57
    :goto_0
    return-void

    .line 50
    :pswitch_0
    const-wide/16 v0, 0x19

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 51
    invoke-virtual {p0}, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->restartEngine()V

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAudioRecogResultCallback(I)V
    .locals 5
    .parameter "type"

    .prologue
    .line 74
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAudioRecogResultCallback() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    packed-switch p1, :pswitch_data_0

    .line 133
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 77
    :pswitch_1
    iget-object v1, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->isPreviewing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    const-string v1, "CameraApp"

    const-string v2, "onAudioRecogResultCallback-return : Submenu state is not off!!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->restartEngine()V

    goto :goto_0

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getDialogController()Lcom/lge/camera/controller/DialogController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/DialogController;->isRotateDialogVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    invoke-virtual {p0}, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->restartEngine()V

    goto :goto_0

    .line 94
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mMediator:Lcom/lge/camera/Mediator;

    const v2, 0x7f090093

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ShutterButton;

    .line 95
    .local v0, button:Lcom/lge/camera/components/ShutterButton;
    iget-object v1, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/lge/camera/components/ShutterButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 99
    const-string v1, "CameraApp"

    const-string v2, "sound recognize : take a picture!!!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v2, Lcom/lge/camera/listeners/AudioRecogEngineCallback$2;

    invoke-direct {v2, p0}, Lcom/lge/camera/listeners/AudioRecogEngineCallback$2;-><init>(Lcom/lge/camera/listeners/AudioRecogEngineCallback;)V

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 111
    iget-object v1, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v2, Lcom/lge/camera/listeners/AudioRecogEngineCallback$3;

    invoke-direct {v2, p0, v0}, Lcom/lge/camera/listeners/AudioRecogEngineCallback$3;-><init>(Lcom/lge/camera/listeners/AudioRecogEngineCallback;Lcom/lge/camera/components/ShutterButton;)V

    const-wide/16 v3, 0x190

    invoke-virtual {v1, v2, v3, v4}, Lcom/lge/camera/Mediator;->postOnUiThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 122
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->restartEngine()V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public restartEngine()V
    .locals 4

    .prologue
    .line 60
    const-string v0, "CameraApp"

    const-string v1, "restartEngine"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    new-instance v1, Lcom/lge/camera/listeners/AudioRecogEngineCallback$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/listeners/AudioRecogEngineCallback$1;-><init>(Lcom/lge/camera/listeners/AudioRecogEngineCallback;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/util/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71
    :cond_0
    return-void
.end method
