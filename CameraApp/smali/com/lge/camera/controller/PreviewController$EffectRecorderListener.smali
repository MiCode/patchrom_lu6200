.class final Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;
.super Ljava/lang/Object;
.source "PreviewController.java"

# interfaces
.implements Lcom/lge/camera/EffectsRecorder$EffectsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/PreviewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EffectRecorderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewController;


# direct methods
.method private constructor <init>(Lcom/lge/camera/controller/PreviewController;)V
    .locals 0
    .parameter

    .prologue
    .line 1711
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/camera/controller/PreviewController;Lcom/lge/camera/controller/PreviewController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1711
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onEffectsError(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2
    .parameter "exception"
    .parameter "fileName"

    .prologue
    .line 1811
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    if-nez v0, :cond_0

    .line 1812
    const-string v0, "CameraApp"

    const-string v1, "mMediator is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1830
    :goto_0
    monitor-exit p0

    return-void

    .line 1815
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isValidState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1817
    :cond_1
    const-string v0, "CameraApp"

    const-string v1, "ongoing finish"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1811
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1821
    :cond_2
    :try_start_2
    instance-of v0, p1, Landroid/filterpacks/videosink/MediaRecorderStopException;

    if-eqz v0, :cond_3

    .line 1822
    const-string v0, "CameraApp"

    const-string v1, "Problem recoding video file. Removing incomplete file."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1826
    :cond_3
    const-string v0, "CameraApp"

    const-string v1, "Error during recording!"

    invoke-static {v0, v1, p1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1827
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->closeCamera()V

    .line 1828
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->showCameraStoppedAndFinish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onEffectsUpdate(II)V
    .locals 6
    .parameter "effectId"
    .parameter "effectMsg"

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1714
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    if-nez v0, :cond_1

    .line 1715
    const-string v0, "CameraApp"

    const-string v1, "mMediator is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    :cond_0
    :goto_0
    return-void

    .line 1718
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-nez v0, :cond_2

    .line 1719
    const-string v0, "CameraApp"

    const-string v1, "mEffectsRecorder is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1722
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isValidState()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1724
    :cond_3
    const-string v0, "CameraApp"

    const-string v1, "ongoing finish"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1727
    :cond_4
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEffectsUpdate: id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    const/4 v0, 0x3

    if-ne p2, v0, :cond_5

    .line 1730
    const-string v0, "CameraApp"

    const-string v1, "-------EFFECT_MSG_EFFECTS_STOPPED"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v1, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener$1;-><init>(Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1740
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget v0, v0, Lcom/lge/camera/EffectsRecorder;->mCalledFrom:I

    if-ne v0, v5, :cond_0

    .line 1741
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    #calls: Lcom/lge/camera/controller/PreviewController;->checkQualityAndStartPreview()V
    invoke-static {v0}, Lcom/lge/camera/controller/PreviewController;->access$400(Lcom/lge/camera/controller/PreviewController;)V

    goto :goto_0

    .line 1744
    :cond_5
    const/4 v0, 0x7

    if-ne p2, v0, :cond_8

    .line 1745
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------EFFECT_MSG_SURFACE_TEARDOWN :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v2, v2, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget v2, v2, Lcom/lge/camera/EffectsRecorder;->mCalledFrom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget v0, v0, Lcom/lge/camera/EffectsRecorder;->mCalledFrom:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_7

    .line 1747
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.ResetMenu"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 1751
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iput v5, v0, Lcom/lge/camera/EffectsRecorder;->mCalledFrom:I

    goto/16 :goto_0

    .line 1748
    :cond_7
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget v0, v0, Lcom/lge/camera/EffectsRecorder;->mCalledFrom:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_6

    .line 1749
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.SwapCamera"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    goto :goto_1

    .line 1753
    :cond_8
    const/4 v0, 0x5

    if-ne p2, v0, :cond_b

    .line 1754
    const-string v0, "CameraApp"

    const-string v1, "-------EFFECT_MSG_PREVIEW_DONE"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v0

    if-ne v0, v4, :cond_9

    .line 1756
    const-string v0, "CameraApp"

    const-string v1, "return nPreview Done in Recording state"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1759
    :cond_9
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    const/4 v1, 0x0

    #setter for: Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z
    invoke-static {v0, v1}, Lcom/lge/camera/controller/PreviewController;->access$502(Lcom/lge/camera/controller/PreviewController;Z)Z

    .line 1760
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getEnableInput()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1761
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, v3}, Lcom/lge/camera/Mediator;->enableInput(Z)V

    .line 1763
    :cond_a
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lge/camera/controller/QuickFunctionController;->refresh(Z)V

    goto/16 :goto_0

    .line 1764
    :cond_b
    if-ne p1, v4, :cond_c

    .line 1765
    const-string v0, "CameraApp"

    const-string v1, "-------EFFECT_BACKDROPPER"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 1768
    :pswitch_0
    const-string v0, "CameraApp"

    const-string v1, "doOnResume mLiveEffectInformationMessage-visible "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v1, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener$2;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener$2;-><init>(Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1781
    :pswitch_1
    const-string v0, "CameraApp"

    const-string v1, "doOnResume mLiveEffectInformationMessage-gone "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v1, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener$3;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener$3;-><init>(Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1793
    :cond_c
    const/4 v0, 0x4

    if-ne p2, v0, :cond_d

    .line 1794
    const-string v0, "CameraApp"

    const-string v1, "-------EFFECT_MSG_RECORDING_DONE"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    #setter for: Lcom/lge/camera/controller/PreviewController;->mLiveEffectStopRecordingDone:Z
    invoke-static {v0, v3}, Lcom/lge/camera/controller/PreviewController;->access$602(Lcom/lge/camera/controller/PreviewController;Z)Z

    goto/16 :goto_0

    .line 1796
    :cond_d
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 1797
    const-string v0, "CameraApp"

    const-string v1, "-------EFFECT_MSG_ERROR"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->closeCamera()V

    .line 1799
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->showCameraErrorAndFinish()V

    goto/16 :goto_0

    .line 1766
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
