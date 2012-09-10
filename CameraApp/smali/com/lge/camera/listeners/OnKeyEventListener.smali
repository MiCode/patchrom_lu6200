.class public Lcom/lge/camera/listeners/OnKeyEventListener;
.super Ljava/lang/Object;
.source "OnKeyEventListener.java"


# instance fields
.field private mMediator:Lcom/lge/camera/Mediator;

.field private mOKL_EffectsRecorder:Lcom/lge/camera/EffectsRecorder;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 1
    .parameter "mediator"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mOKL_EffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    .line 30
    iput-object p1, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/listeners/OnKeyEventListener;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method


# virtual methods
.method public checkKeyOperation()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 601
    iget-object v1, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    if-nez v1, :cond_0

    .line 602
    const-string v1, "CameraApp"

    const-string v2, "checkKeyOperation : return, mediator is not initialized..."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :goto_0
    return v0

    .line 605
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 606
    const-string v1, "CameraApp"

    const-string v2, "checkKeyOperation : return, mediator is not initialized..."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 609
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 610
    const-string v1, "CameraApp"

    const-string v2, "checkKeyOperation : return, mediator is pausing..."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 613
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x5

    const/16 v3, 0x10

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 37
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_1

    move v4, v5

    .line 536
    :cond_0
    :goto_0
    :sswitch_0
    return v4

    .line 46
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 512
    sget v0, Lcom/lge/camera/properties/ProjectVariables;->KEYCODE_HOT_KEY:I

    if-ne p1, v0, :cond_2

    .line 513
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isB2Model()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 522
    const-string v0, "CameraApp"

    const-string v1, "&&KEYCODE_P2_SELF_CAMERA_KEY"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkKeyOperation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportCameraKey()Z

    move-result v0

    if-nez v0, :cond_2

    .line 528
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/listeners/OnKeyEventListener;->shutterHotKey(II)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    move v4, v5

    .line 536
    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "CameraApp"

    const-string v1, "KEYCODE_MENU"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :sswitch_2
    const-string v0, "CameraApp"

    const-string v1, "KEYCODE_BACK"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkKeyOperation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->isGalleryLaunching()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/lge/camera/controller/PreviewPanelController;->setGalleryLaunching(Z)V

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getDialogController()Lcom/lge/camera/controller/DialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->isRotateDialogVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 93
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getDialogController()Lcom/lge/camera/controller/DialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->getDialogID()I

    move-result v0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getDialogController()Lcom/lge/camera/controller/DialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->onDismissRotateDialog()V

    goto :goto_0

    .line 99
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 100
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->removeChildSettingView()V

    goto/16 :goto_0

    .line 104
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    if-eq v0, v10, :cond_6

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 106
    :cond_6
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, v5}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 107
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.RemoveSettingMenu"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    :cond_7
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    if-eqz v0, :cond_9

    .line 110
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, v5}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 111
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->clearSubMenu()V

    .line 112
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->showFocus()Z

    .line 114
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 116
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->showPanoramaView()V

    goto/16 :goto_0

    .line 118
    :cond_8
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->removePanoramaView()V

    goto/16 :goto_0

    .line 124
    :cond_9
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_e

    .line 125
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_camera_timer"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 126
    .local v8, timerSetting:Ljava/lang/String;
    const-string v0, "0"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/TimerController;->isTimerShotCountdown()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 127
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/TimerController;->stopTimerShot()Z

    .line 129
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->enableCommand(Z)V

    .line 130
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->setSwitcherVisible(Z)V

    .line 131
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getQuickFunctionController()Lcom/lge/camera/controller/camera/CameraQuickFunctionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraQuickFunctionController;->show()V

    .line 132
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->show()V

    .line 133
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->showFocus()Z

    .line 135
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isVoiceShutter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_voiceshutter"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, mVoiceShutterValue:Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v0, "on"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.SetVoiceShutterMode"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 146
    .end local v6           #mVoiceShutterValue:Ljava/lang/String;
    :cond_a
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 147
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 148
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Activity;->setResult(I)V

    .line 152
    :cond_b
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 153
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->isPanoramaStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->stopPanorama()V

    .line 155
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSoundController()Lcom/lge/camera/controller/SoundController;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/lge/camera/controller/SoundController;->playRecordingSound(Z)V

    goto/16 :goto_0

    .line 158
    :cond_c
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_continuous"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 159
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/module/Module;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/module/ContinuousShot;

    invoke-virtual {v0}, Lcom/lge/camera/module/ContinuousShot;->stopContinuousShotUserAction()V

    goto/16 :goto_0

    .line 169
    :cond_d
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 172
    .end local v8           #timerSetting:Ljava/lang/String;
    :cond_e
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 173
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 174
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iput-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mOKL_EffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    .line 176
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->isRecording()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsLiveEffectSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mOKL_EffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mOKL_EffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/lge/camera/EffectsRecorder;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 180
    :cond_f
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v7

    .line 181
    .local v7, recController:Lcom/lge/camera/controller/camcorder/RecordingController;
    invoke-virtual {v7}, Lcom/lge/camera/controller/camcorder/RecordingController;->isRecordedLengthTooShort()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 182
    const-string v0, "CameraApp"

    const-string v1, "Ignore stop recording request. It\'s too short."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    :cond_10
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.StopRecording"

    const-string v2, "backkey"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 189
    .end local v7           #recController:Lcom/lge/camera/controller/camcorder/RecordingController;
    :cond_11
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v0

    if-eqz v0, :cond_12

    .line 190
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoRecorder is not in idle state. Ignore back key."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 193
    :cond_12
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mLiveEffectInformationMessage:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mLiveEffectInformationMessage:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 195
    const-string v0, "CameraApp"

    const-string v1, "CancelBackgroundMessage"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v1, Lcom/lge/camera/listeners/OnKeyEventListener$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/listeners/OnKeyEventListener$1;-><init>(Lcom/lge/camera/listeners/OnKeyEventListener;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 202
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_live_effect"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 203
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->updateEffectSelection()Z

    goto/16 :goto_0

    .line 213
    :sswitch_3
    const-string v0, "CameraApp"

    const-string v1, "KEYCODE_FOCUS"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    :sswitch_4
    const-string v0, "CameraApp"

    const-string v1, "KEYCODE_CAMERA"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkKeyOperation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/listeners/OnKeyEventListener;->shutterHotKey(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 251
    :sswitch_5
    const-string v0, "CameraApp"

    const-string v1, "&&KEYCODE_ENTER"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkKeyOperation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/listeners/OnKeyEventListener;->shutterHotKey(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    :cond_13
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHDMI_MHL()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/Common;->isHDMIConnected(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useToggleQFL()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    if-ne v0, v10, :cond_14

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 275
    :cond_14
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->isPressedShutterButton()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_15

    .line 284
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v0

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/TimerController;->isTimerShotCountdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getContinuousShotAlived()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->isPanoramaStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 291
    :cond_15
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v0

    if-ne v0, v4, :cond_0

    goto/16 :goto_0

    .line 298
    :sswitch_6
    const-string v0, "CameraApp"

    const-string v1, "&&KEYCODE_VOLUME_DOWN"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkKeyOperation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportCameraKey()Z

    move-result v0

    if-nez v0, :cond_16

    .line 304
    if-eqz p2, :cond_16

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/listeners/OnKeyEventListener;->shutterHotKey(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    :cond_16
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-ne v0, v4, :cond_17

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    :cond_17
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportZoomOnRecord()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v0

    if-nez v0, :cond_1a

    .line 314
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    .line 315
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    if-eq v0, v10, :cond_18

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    if-eq v0, v3, :cond_18

    .line 318
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.ShowZoom"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 320
    :cond_18
    if-eqz p2, :cond_19

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 323
    :cond_19
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->getZoomBar()Lcom/lge/camera/components/ZoomBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->getZoomBar()Lcom/lge/camera/components/ZoomBar;

    move-result-object v0

    const/4 v1, 0x2

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/components/ZoomBar;->updateZoomWithTimer(ILandroid/view/View;Landroid/view/MotionEvent;ZZ)V

    goto/16 :goto_0

    .line 331
    :cond_1a
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useToggleQFL()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    if-eq v0, v10, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 341
    :cond_1b
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->isSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    :cond_1c
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->isPressedShutterButton()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_1e

    .line 355
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v0

    if-eq v0, v4, :cond_1d

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/TimerController;->isTimerShotCountdown()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getContinuousShotAlived()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->isPanoramaStarted()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 360
    :cond_1d
    const-string v1, "CameraApp"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "((CameraMediator)mMediator).getFocusController().getFocusState() ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 365
    :cond_1e
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 370
    :cond_1f
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v0

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_20

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    if-eq v0, v10, :cond_20

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    if-eq v0, v3, :cond_20

    .line 374
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.ShowZoom"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 376
    :cond_20
    if-eqz p2, :cond_21

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 379
    :cond_21
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->getZoomBar()Lcom/lge/camera/components/ZoomBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->getZoomBar()Lcom/lge/camera/components/ZoomBar;

    move-result-object v0

    const/4 v1, 0x2

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/components/ZoomBar;->updateZoomWithTimer(ILandroid/view/View;Landroid/view/MotionEvent;ZZ)V

    goto/16 :goto_0

    .line 388
    :sswitch_7
    const-string v0, "CameraApp"

    const-string v1, "&&KEYCODE_VOLUME_UP"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkKeyOperation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportCameraKey()Z

    move-result v0

    if-nez v0, :cond_22

    .line 394
    if-eqz p2, :cond_22

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/listeners/OnKeyEventListener;->shutterHotKey(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    :cond_22
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-ne v0, v4, :cond_23

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    :cond_23
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportZoomOnRecord()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v0

    if-nez v0, :cond_26

    .line 404
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    .line 405
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_24

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    if-eq v0, v10, :cond_24

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    if-eq v0, v3, :cond_24

    .line 408
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.ShowZoom"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 410
    :cond_24
    if-eqz p2, :cond_25

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 414
    :cond_25
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->getZoomBar()Lcom/lge/camera/components/ZoomBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->getZoomBar()Lcom/lge/camera/components/ZoomBar;

    move-result-object v0

    const/4 v1, -0x2

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/components/ZoomBar;->updateZoomWithTimer(ILandroid/view/View;Landroid/view/MotionEvent;ZZ)V

    goto/16 :goto_0

    .line 423
    :cond_26
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useToggleQFL()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    if-eq v0, v10, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 433
    :cond_27
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->isSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    :cond_28
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->isPressedShutterButton()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_2c

    .line 448
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v0

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/TimerController;->isTimerShotCountdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getContinuousShotAlived()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->isPanoramaStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    :cond_29
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v0

    if-nez v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2a

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    if-eq v0, v10, :cond_2a

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    if-eq v0, v3, :cond_2a

    .line 464
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.ShowZoom"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 466
    :cond_2a
    if-eqz p2, :cond_2b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 469
    :cond_2b
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->getZoomBar()Lcom/lge/camera/components/ZoomBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->getZoomBar()Lcom/lge/camera/components/ZoomBar;

    move-result-object v0

    const/4 v1, -0x2

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/components/ZoomBar;->updateZoomWithTimer(ILandroid/view/View;Landroid/view/MotionEvent;ZZ)V

    goto/16 :goto_0

    .line 455
    :cond_2c
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v0

    if-ne v0, v4, :cond_29

    goto/16 :goto_0

    .line 484
    :sswitch_8
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MEDIA_KEY or HEADSETHOOK DOWN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-ne v0, v4, :cond_2e

    .line 486
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v9

    .line 487
    .local v9, video_state:I
    const/4 v0, 0x2

    if-eq v9, v0, :cond_0

    if-eq v9, v4, :cond_0

    .end local v9           #video_state:I
    :cond_2d
    move v4, v5

    .line 503
    goto/16 :goto_0

    .line 492
    :cond_2e
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_camera_timer"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 493
    .restart local v8       #timerSetting:Ljava/lang/String;
    const-string v0, "0"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/TimerController;->isTimerShotCountdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    :cond_2f
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isVoiceShutter()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 496
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_voiceshutter"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 498
    .restart local v6       #mVoiceShutterValue:Ljava/lang/String;
    if-eqz v6, :cond_2d

    const-string v0, "on"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto/16 :goto_0

    .line 507
    .end local v6           #mVoiceShutterValue:Ljava/lang/String;
    .end local v8           #timerSetting:Ljava/lang/String;
    :sswitch_9
    const-string v0, "CameraApp"

    const-string v1, "KEYCODE_SEARCH"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 46
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x18 -> :sswitch_7
        0x19 -> :sswitch_6
        0x1b -> :sswitch_4
        0x42 -> :sswitch_5
        0x4f -> :sswitch_8
        0x50 -> :sswitch_3
        0x52 -> :sswitch_1
        0x54 -> :sswitch_9
        0x55 -> :sswitch_8
        0x56 -> :sswitch_8
        0x57 -> :sswitch_8
        0x58 -> :sswitch_8
        0x59 -> :sswitch_8
        0x5a -> :sswitch_8
        0x7e -> :sswitch_8
        0x7f -> :sswitch_8
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 541
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 542
    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_1

    move v4, v1

    .line 595
    :cond_0
    :goto_0
    return v4

    .line 547
    :cond_1
    sparse-switch p1, :sswitch_data_0

    move v4, v1

    .line 595
    goto :goto_0

    .line 549
    :sswitch_0
    const-string v0, "CameraApp"

    const-string v1, "KEYCODE_MENU"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 555
    :sswitch_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportVoluemHotKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->getZoomBar()Lcom/lge/camera/components/ZoomBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->getZoomBar()Lcom/lge/camera/components/ZoomBar;

    move-result-object v0

    const/4 v1, -0x2

    move-object v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/components/ZoomBar;->updateZoomWithTimer(ILandroid/view/View;Landroid/view/MotionEvent;ZZ)V

    .line 558
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->getZoomBar()Lcom/lge/camera/components/ZoomBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/components/ZoomBar;->stopTimerTask()V

    goto :goto_0

    .line 571
    :sswitch_2
    const-string v0, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MEDIA_KEY or HEADSETHOOK UP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 573
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v8

    .line 574
    .local v8, video_state:I
    const/4 v0, 0x2

    if-eq v8, v0, :cond_0

    if-eq v8, v4, :cond_0

    .end local v8           #video_state:I
    :cond_2
    move v4, v1

    .line 590
    goto :goto_0

    .line 579
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    const-string v2, "key_camera_timer"

    invoke-virtual {v0, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 580
    .local v7, timerSetting:Ljava/lang/String;
    const-string v0, "0"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/TimerController;->isTimerShotCountdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 582
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isVoiceShutter()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 583
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    const-string v2, "key_voiceshutter"

    invoke-virtual {v0, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 585
    .local v6, mVoiceShutterValue:Ljava/lang/String;
    if-eqz v6, :cond_2

    const-string v0, "on"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 547
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x4f -> :sswitch_2
        0x52 -> :sswitch_0
        0x55 -> :sswitch_2
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
        0x59 -> :sswitch_2
        0x5a -> :sswitch_2
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
    .end sparse-switch
.end method

.method public shutterHotKey(II)Z
    .locals 11
    .parameter "keycode"
    .parameter "repeatCount"

    .prologue
    const/16 v10, 0x16

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 618
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportVoluemHotKey()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportCameraKey()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 621
    :cond_0
    const-string v5, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "shutterHotKey : repeatCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v5

    const/4 v8, 0x5

    if-eq v5, v8, :cond_1

    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v5

    const/16 v8, 0x10

    if-ne v5, v8, :cond_4

    .line 625
    :cond_1
    if-nez p2, :cond_2

    .line 626
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5, v6}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 627
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    const-string v6, "com.lge.camera.command.RemoveSettingMenu"

    invoke-virtual {v5, v6}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 630
    :cond_2
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getDialogController()Lcom/lge/camera/controller/DialogController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/DialogController;->isRotateDialogVisible()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getDialogController()Lcom/lge/camera/controller/DialogController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/DialogController;->getDialogID()I

    move-result v5

    if-eq v5, v10, :cond_3

    .line 633
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getDialogController()Lcom/lge/camera/controller/DialogController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/DialogController;->onDismissRotateDialog()V

    :cond_3
    move v5, v7

    .line 792
    :goto_0
    return v5

    .line 637
    :cond_4
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v5

    if-eqz v5, :cond_8

    .line 638
    if-nez p2, :cond_5

    .line 639
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5, v6}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 640
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->clearSubMenu()V

    .line 641
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/FocusController;->showFocus()Z

    .line 643
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v5

    if-nez v5, :cond_5

    .line 644
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    const-string v6, "key_camera_shot_mode"

    const-string v8, "shotmode_panorama"

    invoke-virtual {v5, v6, v8}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 645
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v5, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v5}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/camera/PanoramaController;->showPanoramaView()V

    .line 652
    :cond_5
    :goto_1
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getDialogController()Lcom/lge/camera/controller/DialogController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/DialogController;->isRotateDialogVisible()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getDialogController()Lcom/lge/camera/controller/DialogController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/DialogController;->getDialogID()I

    move-result v5

    if-eq v5, v10, :cond_6

    .line 655
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getDialogController()Lcom/lge/camera/controller/DialogController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/DialogController;->onDismissRotateDialog()V

    :cond_6
    move v5, v7

    .line 657
    goto :goto_0

    .line 647
    :cond_7
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v5, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v5}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/camera/PanoramaController;->removePanoramaView()V

    goto :goto_1

    .line 660
    :cond_8
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getDialogController()Lcom/lge/camera/controller/DialogController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/DialogController;->isRotateDialogVisible()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 661
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getDialogController()Lcom/lge/camera/controller/DialogController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/DialogController;->getDialogID()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :goto_2
    :pswitch_0
    move v5, v7

    .line 678
    goto/16 :goto_0

    :pswitch_1
    move v5, v7

    .line 663
    goto/16 :goto_0

    .line 672
    :pswitch_2
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getDialogController()Lcom/lge/camera/controller/DialogController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/DialogController;->onDismissRotateDialog()V

    goto :goto_2

    .line 681
    :cond_9
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v5

    if-nez v5, :cond_13

    .line 682
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    const-string v8, "key_camera_timer"

    invoke-virtual {v5, v8}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 683
    .local v4, timerSetting:Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v5, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v5}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/camera/TimerController;->isTimerShotCountdown()Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v7

    .line 684
    goto/16 :goto_0

    .line 687
    :cond_a
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    const-string v8, "key_camera_shot_mode"

    invoke-virtual {v5, v8}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 688
    .local v3, shotmode:Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->isTimeMachineModeOn()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 689
    if-lez p2, :cond_19

    move v5, v7

    .line 690
    goto/16 :goto_0

    .line 692
    :cond_b
    const-string v5, "shotmode_panorama"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 693
    if-nez p2, :cond_d

    .line 694
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v5, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v5}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/camera/PanoramaController;->isSynthesisInProgress()Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v7

    .line 695
    goto/16 :goto_0

    .line 697
    :cond_c
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v5, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v5}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/camera/PanoramaController;->isPanoramaStarted()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 698
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v5, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v5}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/camera/PanoramaController;->stopPanorama()V

    .line 699
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getSoundController()Lcom/lge/camera/controller/SoundController;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/lge/camera/controller/SoundController;->playRecordingSound(Z)V

    move v5, v7

    .line 700
    goto/16 :goto_0

    :cond_d
    move v5, v7

    .line 703
    goto/16 :goto_0

    .line 705
    :cond_e
    const-string v5, "shotmode_continuous"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 706
    if-nez p2, :cond_f

    .line 707
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/module/Module;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 708
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v5

    check-cast v5, Lcom/lge/camera/module/ContinuousShot;

    invoke-virtual {v5}, Lcom/lge/camera/module/ContinuousShot;->stopContinuousShotUserAction()V

    move v5, v7

    .line 709
    goto/16 :goto_0

    :cond_f
    move v5, v7

    .line 712
    goto/16 :goto_0

    .line 714
    :cond_10
    const-string v5, "shotmode_hdr"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 715
    if-lez p2, :cond_19

    move v5, v7

    .line 716
    goto/16 :goto_0

    .line 718
    :cond_11
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v5

    if-eqz v5, :cond_12

    move v5, v7

    .line 719
    goto/16 :goto_0

    .line 720
    :cond_12
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetFunctionFrontCameraBeautyShot()I

    move-result v5

    if-ne v5, v7, :cond_19

    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v5

    if-ne v5, v7, :cond_19

    .line 725
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/components/OpenGLSurfaceView;->isCompleteProcessFrame()Z

    move-result v5

    if-nez v5, :cond_19

    move v5, v7

    .line 726
    goto/16 :goto_0

    .line 729
    .end local v3           #shotmode:Ljava/lang/String;
    .end local v4           #timerSetting:Ljava/lang/String;
    :cond_13
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v5

    if-ne v5, v7, :cond_19

    .line 731
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v5

    iget-object v1, v5, Lcom/lge/camera/controller/PreviewController;->mLiveEffectInformationMessage:Landroid/view/View;

    .line 733
    .local v1, effectView:Landroid/view/View;
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_17

    .line 734
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v5

    iget-object v5, v5, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iput-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mOKL_EffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    .line 735
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->isRecording()Z

    move-result v5

    if-nez v5, :cond_14

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsLiveEffectSupported()Z

    move-result v5

    if-eqz v5, :cond_19

    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mOKL_EffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-eqz v5, :cond_19

    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mOKL_EffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v5}, Lcom/lge/camera/EffectsRecorder;->getState()I

    move-result v5

    const/4 v8, 0x4

    if-ne v5, v8, :cond_19

    .line 739
    :cond_14
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v5, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v5}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v2

    .line 740
    .local v2, recController:Lcom/lge/camera/controller/camcorder/RecordingController;
    if-nez p2, :cond_15

    .line 741
    invoke-virtual {v2}, Lcom/lge/camera/controller/camcorder/RecordingController;->isRecordedLengthTooShort()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 742
    const-string v5, "CameraApp"

    const-string v8, "Ignore stop recording request. It\'s too short."

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    :goto_3
    move v5, v7

    .line 748
    goto/16 :goto_0

    .line 745
    :cond_16
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    const-string v6, "com.lge.camera.command.StopRecording"

    invoke-virtual {v5, v6}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    goto :goto_3

    .line 750
    .end local v2           #recController:Lcom/lge/camera/controller/camcorder/RecordingController;
    :cond_17
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v5

    if-eqz v5, :cond_18

    .line 751
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VideoRecorder is not in idle state. Ignore back key."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v8}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v7

    .line 752
    goto/16 :goto_0

    .line 753
    :cond_18
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsLiveEffectSupported()Z

    move-result v5

    if-eqz v5, :cond_19

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_19

    .line 756
    const-string v5, "CameraApp"

    const-string v6, "LiveEffect is adjusting a background."

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v7

    .line 757
    goto/16 :goto_0

    .line 761
    .end local v1           #effectView:Landroid/view/View;
    :cond_19
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/PreviewController;->isPreviewing()Z

    move-result v5

    if-nez v5, :cond_1a

    .line 762
    const-string v5, "CameraApp"

    const-string v6, "KeyEvent.KEYCODE_HOT_KEY return, not previewing"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v7

    .line 763
    goto/16 :goto_0

    .line 766
    :cond_1a
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    const v8, 0x7f090093

    invoke-virtual {v5, v8}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ShutterButton;

    .line 767
    .local v0, button:Lcom/lge/camera/components/ShutterButton;
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v5

    if-eqz v5, :cond_1c

    invoke-virtual {v0}, Lcom/lge/camera/components/ShutterButton;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1c

    invoke-virtual {v0}, Lcom/lge/camera/components/ShutterButton;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 768
    const-string v5, "CameraApp"

    const-string v8, "KeyEvent.KEYCODE_HOT_KEY"

    invoke-static {v5, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v5

    const/16 v8, 0x15

    if-ne v5, v8, :cond_1b

    .line 775
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isTimeMachinShotSupported()Z

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->isTimeMachineModeOn()Z

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/PreviewPanelController;->getTimeMachineComplete()Z

    move-result v5

    if-nez v5, :cond_1b

    .line 778
    const-string v5, "CameraApp"

    const-string v6, "Time Machine setting is not completed"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v7

    .line 779
    goto/16 :goto_0

    .line 783
    :cond_1b
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v5

    invoke-virtual {v5, v0, v7}, Lcom/lge/camera/controller/PreviewPanelController;->onShutterButtonFocus(Lcom/lge/camera/components/ShutterButton;Z)V

    .line 784
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/lge/camera/controller/PreviewPanelController;->onShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)V

    .line 785
    iget-object v5, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v5

    invoke-virtual {v5, v0, v6}, Lcom/lge/camera/controller/PreviewPanelController;->onShutterButtonFocus(Lcom/lge/camera/components/ShutterButton;Z)V

    :cond_1c
    move v5, v7

    .line 789
    goto/16 :goto_0

    .end local v0           #button:Lcom/lge/camera/components/ShutterButton;
    :cond_1d
    move v5, v6

    .line 792
    goto/16 :goto_0

    .line 661
    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
