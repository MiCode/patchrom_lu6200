.class Lcom/lge/camera/controller/QuickFunctionController$1;
.super Ljava/lang/Object;
.source "QuickFunctionController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/QuickFunctionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickFunctionController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickFunctionController;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkOnClick()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 207
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    :goto_0
    return v0

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/SettingController;->isNullSettingView()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/SettingController;->isSettingViewRemoving()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    const-string v1, "CameraApp"

    const-string v2, "settingview is not null && Removing!!!  ->> block menu click"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/PreviewPanelController;->isShutterButtonLongKey()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 216
    const-string v1, "CameraApp"

    const-string v2, "ShutterButton pressed.. ->> block menu click"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraMode()I

    move-result v2

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v2

    if-eq v2, v1, :cond_3

    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 223
    :cond_3
    const-string v1, "CameraApp"

    const-string v2, "Video state is recording."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 226
    goto :goto_0
.end method

.method private checkQFLitemAndClearSubMenu(Ljava/lang/String;)Z
    .locals 5
    .parameter "prefKey"

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 275
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v1, p1}, Lcom/lge/camera/controller/QuickFunctionController;->isEqualPreferenceAndSubmenu(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 276
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v1

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 279
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "com.lge.camera.command.RemoveSettingMenu"

    invoke-virtual {v1, v3}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    move v1, v2

    .line 307
    :goto_0
    return v1

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v1

    if-eqz v1, :cond_6

    .line 283
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->clearSubMenu()V

    .line 284
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_2

    .line 285
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_panorama"

    invoke-virtual {v1, v3, v4}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 286
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v1, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/PanoramaController;->showPanoramaView()V

    .line 290
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v1, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->setClearFocusAnimation()V

    .line 291
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v1, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->showFocus()Z

    :cond_2
    move v1, v2

    .line 293
    goto :goto_0

    .line 288
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v1, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/PanoramaController;->removePanoramaView()V

    goto :goto_1

    .line 296
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v1

    if-eq v1, v3, :cond_5

    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v1

    if-ne v1, v4, :cond_7

    .line 298
    :cond_5
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 299
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 300
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "showAll"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 301
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v2, "com.lge.camera.command.RemoveSettingMenu"

    invoke-virtual {v1, v2, v0}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 307
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_6
    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 303
    :cond_7
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2
.end method

.method private selectSwapCamera(ILcom/lge/camera/setting/ListPreference;)V
    .locals 5
    .parameter "index"
    .parameter "pref"

    .prologue
    const/4 v4, 0x1

    .line 230
    invoke-direct {p0, v4}, Lcom/lge/camera/controller/QuickFunctionController$1;->setCheckToggleTime(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    #getter for: Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J
    invoke-static {v0}, Lcom/lge/camera/controller/QuickFunctionController;->access$200(Lcom/lge/camera/controller/QuickFunctionController;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 231
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsLiveEffectSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    const-string v0, "CameraApp"

    const-string v1, "SwapCameraPrepared-start, liveeffect active"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/lge/camera/EffectsRecorder;->stopPreview(I)V

    .line 245
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J
    invoke-static {v0, v1, v2}, Lcom/lge/camera/controller/QuickFunctionController;->access$202(Lcom/lge/camera/controller/QuickFunctionController;J)J

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuSelected(IZ)V

    .line 248
    return-void

    .line 239
    :cond_2
    const-string v0, "CameraApp"

    const-string v1, "SwapCameraPrepared-start, go to swap"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {p2}, Lcom/lge/camera/setting/ListPreference;->getCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {p2}, Lcom/lge/camera/setting/ListPreference;->getCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private selectTimeMachineAndVoiceShutter(ILcom/lge/camera/setting/ListPreference;Ljava/lang/String;)V
    .locals 10
    .parameter "index"
    .parameter "pref"
    .parameter "prefKey"

    .prologue
    const/4 v9, 0x0

    .line 251
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->clearSubMenu()V

    .line 252
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 253
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QFL checkTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    #getter for: Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J
    invoke-static {v7}, Lcom/lge/camera/controller/QuickFunctionController;->access$200(Lcom/lge/camera/controller/QuickFunctionController;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-direct {p0, v9}, Lcom/lge/camera/controller/QuickFunctionController$1;->setCheckToggleTime(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    #getter for: Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J
    invoke-static {v3}, Lcom/lge/camera/controller/QuickFunctionController;->access$200(Lcom/lge/camera/controller/QuickFunctionController;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 256
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 257
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "subMenuClicked"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 258
    const-string v3, "key_voiceshutter"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 259
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "key_voiceshutter"

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, value:Ljava/lang/String;
    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "off"

    .line 261
    .local v1, setValue:Ljava/lang/String;
    :goto_0
    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/ListPreference;->setValue(Ljava/lang/String;)V

    .line 267
    .end local v1           #setValue:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {p2}, Lcom/lge/camera/setting/ListPreference;->getEntryCommand()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 268
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    #setter for: Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J
    invoke-static {v3, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->access$202(Lcom/lge/camera/controller/QuickFunctionController;J)J

    .line 269
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v3, p1}, Lcom/lge/camera/controller/QuickFunctionController;->startQFLAnimation(I)V

    .line 271
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v3, p1, v9}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuSelected(IZ)V

    .line 272
    return-void

    .line 260
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v2       #value:Ljava/lang/String;
    :cond_3
    const-string v1, "on"

    goto :goto_0

    .line 262
    .end local v2           #value:Ljava/lang/String;
    :cond_4
    const-string v3, "key_time_machine"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 263
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "key_time_machine"

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 264
    .restart local v2       #value:Ljava/lang/String;
    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v1, "off"

    .line 265
    .restart local v1       #setValue:Ljava/lang/String;
    :goto_2
    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 264
    .end local v1           #setValue:Ljava/lang/String;
    :cond_5
    const-string v1, "on"

    goto :goto_2
.end method

.method private setCheckToggleTime(I)Z
    .locals 5
    .parameter "usage"

    .prologue
    const/4 v0, 0x1

    .line 311
    if-nez p1, :cond_1

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    #getter for: Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J
    invoke-static {v3}, Lcom/lge/camera/controller/QuickFunctionController;->access$200(Lcom/lge/camera/controller/QuickFunctionController;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget v3, Lcom/lge/camera/properties/CameraConstants;->QFL_TOGGLE_DELAY_TMS:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 322
    :cond_0
    :goto_0
    return v0

    .line 315
    :cond_1
    if-ne p1, v0, :cond_0

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    #getter for: Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J
    invoke-static {v3}, Lcom/lge/camera/controller/QuickFunctionController;->access$200(Lcom/lge/camera/controller/QuickFunctionController;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget v3, Lcom/lge/camera/properties/CameraConstants;->QFL_TOGGLE_DELAY_SWAP:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 322
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickFunctionController$1;->checkOnClick()Z

    move-result v3

    if-nez v3, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    #getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lge/camera/controller/QuickFunctionController;->access$000(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 175
    .local v0, index:I
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 176
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    .line 177
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    #getter for: Lcom/lge/camera/controller/QuickFunctionController;->blockObject:Ljava/lang/Object;
    invoke-static {v3}, Lcom/lge/camera/controller/QuickFunctionController;->access$100(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 179
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->isAttachIntent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 180
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->setSaveSettingEnabled(Z)V

    .line 184
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v5}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuSelected(IZ)V

    .line 185
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, prefKey:Ljava/lang/String;
    const-string v3, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ===> pref.getKey(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0, v2}, Lcom/lge/camera/controller/QuickFunctionController$1;->checkQFLitemAndClearSubMenu(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 191
    monitor-exit v4

    goto :goto_0

    .line 202
    .end local v2           #prefKey:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 182
    :cond_2
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->setSaveSettingEnabled(Z)V

    goto :goto_1

    .line 194
    .restart local v2       #prefKey:Ljava/lang/String;
    :cond_3
    const-string v3, "key_voiceshutter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "key_time_machine"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 196
    :cond_4
    invoke-direct {p0, v0, v1, v2}, Lcom/lge/camera/controller/QuickFunctionController$1;->selectTimeMachineAndVoiceShutter(ILcom/lge/camera/setting/ListPreference;Ljava/lang/String;)V

    .line 202
    :goto_2
    monitor-exit v4

    goto :goto_0

    .line 197
    :cond_5
    const-string v3, "key_swap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 198
    invoke-direct {p0, v0, v1}, Lcom/lge/camera/controller/QuickFunctionController$1;->selectSwapCamera(ILcom/lge/camera/setting/ListPreference;)V

    goto :goto_2

    .line 200
    :cond_6
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getCommand()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
