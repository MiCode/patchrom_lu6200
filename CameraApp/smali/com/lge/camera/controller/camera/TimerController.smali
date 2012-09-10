.class public Lcom/lge/camera/controller/camera/TimerController;
.super Lcom/lge/camera/controller/camera/CameraController;
.source "TimerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/controller/camera/TimerController$TimerShotHandler;
    }
.end annotation


# instance fields
.field private final MSG_INIT_COUNTER:I

.field private final MSG_START_COUNTER:I

.field private final MSG_STOP_COUNTER:I

.field mCameraMediator:Lcom/lge/camera/CameraMediator;

.field private mCounterView:Landroid/view/View;

.field private final mHandler:Lcom/lge/camera/controller/camera/TimerController$TimerShotHandler;

.field private mInTimerShotCountdown:Z

.field private mTimerBGRotation:Landroid/view/animation/Animation;

.field private mTimerCaptureDelay:I

.field private mTimerCaptureMode:I

.field private mTimerCountDown:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 4
    .parameter "mediator"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/CameraController;-><init>(Lcom/lge/camera/Mediator;)V

    .line 26
    iput v2, p0, Lcom/lge/camera/controller/camera/TimerController;->MSG_INIT_COUNTER:I

    .line 27
    iput v3, p0, Lcom/lge/camera/controller/camera/TimerController;->MSG_START_COUNTER:I

    .line 28
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/controller/camera/TimerController;->MSG_STOP_COUNTER:I

    .line 30
    new-instance v0, Lcom/lge/camera/controller/camera/TimerController$TimerShotHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/camera/controller/camera/TimerController$TimerShotHandler;-><init>(Lcom/lge/camera/controller/camera/TimerController;Lcom/lge/camera/controller/camera/TimerController$1;)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mHandler:Lcom/lge/camera/controller/camera/TimerController$TimerShotHandler;

    .line 32
    iput-boolean v2, p0, Lcom/lge/camera/controller/camera/TimerController;->mInTimerShotCountdown:Z

    .line 43
    check-cast p1, Lcom/lge/camera/CameraMediator;

    .end local p1
    iput-object p1, p0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    .line 44
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f04

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerBGRotation:Landroid/view/animation/Animation;

    .line 47
    :cond_0
    iput-boolean v3, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 48
    return-void
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/camera/TimerController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    return v0
.end method

.method static synthetic access$102(Lcom/lge/camera/controller/camera/TimerController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    return p1
.end method

.method static synthetic access$110(Lcom/lge/camera/controller/camera/TimerController;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    return v0
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/camera/TimerController;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCountDown:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lge/camera/controller/camera/TimerController;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCountDown:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/camera/TimerController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureMode:I

    return v0
.end method


# virtual methods
.method public addMsgArg(II)V
    .locals 2
    .parameter "what"
    .parameter "arg"

    .prologue
    .line 334
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 335
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 336
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 337
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mHandler:Lcom/lge/camera/controller/camera/TimerController$TimerShotHandler;

    invoke-virtual {v1, v0}, Lcom/lge/camera/controller/camera/TimerController$TimerShotHandler;->sendMessage(Landroid/os/Message;)Z

    .line 338
    return-void
.end method

.method public displayInitCounter()V
    .locals 5

    .prologue
    .line 186
    const/4 v2, 0x0

    .line 188
    .local v2, resId:I
    const-string v3, "CameraApp"

    const-string v4, "init counter"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mCounterView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 191
    const v3, 0x7f09006a

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/camera/TimerController;->inflateStub(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mCounterView:Landroid/view/View;

    .line 192
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mCounterView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 193
    const-string v3, "CameraApp"

    const-string v4, " mCounterView is null."

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v4, "com.lge.camera.command.Rotate"

    invoke-virtual {v3, v4}, Lcom/lge/camera/CameraMediator;->doCommandUi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mCounterView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 203
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mCounterView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 206
    :cond_2
    const/4 v2, 0x0

    .line 207
    iget v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5

    .line 208
    const v2, 0x7f0201bb

    .line 215
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const v4, 0x7f0900db

    invoke-virtual {v3, v4}, Lcom/lge/camera/CameraMediator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageView;

    .line 216
    .local v1, iv_timer_num:Lcom/lge/camera/components/RotateImageView;
    if-eqz v2, :cond_4

    .line 217
    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 220
    :cond_4
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/camera/TimerController;->timerAnimation(Z)V

    goto :goto_0

    .line 197
    .end local v1           #iv_timer_num:Lcom/lge/camera/components/RotateImageView;
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 209
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    iget v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    .line 210
    const v2, 0x7f0201b9

    goto :goto_2

    .line 211
    :cond_6
    iget v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureMode:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    .line 212
    const v2, 0x7f0201b7

    goto :goto_2
.end method

.method public displayStartCounter(I)V
    .locals 6
    .parameter "timerCapturedDelay"

    .prologue
    const/4 v5, 0x0

    .line 225
    const/4 v1, 0x0

    .line 226
    .local v1, resId:I
    const-string v2, "CameraApp"

    const-string v3, "start counter"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v2, p0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/TimerController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    const-string v3, "key_focus"

    invoke-virtual {v2, v3}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "face_tracking"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 229
    iget-object v2, p0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camera/CameraFocusController;->clearFocusState()V

    .line 232
    :cond_0
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/camera/TimerController;->timerAnimation(Z)V

    .line 234
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timer task (count down) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    packed-switch p1, :pswitch_data_0

    .line 273
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const v3, 0x7f0900db

    invoke-virtual {v2, v3}, Lcom/lge/camera/CameraMediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 274
    .local v0, iv_timer_num:Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 277
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/TimerController;->timerAnimation(Z)V

    .line 279
    .end local v0           #iv_timer_num:Lcom/lge/camera/components/RotateImageView;
    :cond_1
    :goto_1
    return-void

    .line 237
    :pswitch_0
    const v1, 0x7f0201b7

    .line 238
    goto :goto_0

    .line 240
    :pswitch_1
    const v1, 0x7f0201bf

    .line 241
    goto :goto_0

    .line 243
    :pswitch_2
    const v1, 0x7f0201be

    .line 244
    goto :goto_0

    .line 246
    :pswitch_3
    const v1, 0x7f0201bd

    .line 247
    goto :goto_0

    .line 249
    :pswitch_4
    const v1, 0x7f0201bc

    .line 250
    goto :goto_0

    .line 252
    :pswitch_5
    const v1, 0x7f0201bb

    .line 253
    goto :goto_0

    .line 255
    :pswitch_6
    const v1, 0x7f0201ba

    .line 256
    goto :goto_0

    .line 258
    :pswitch_7
    const v1, 0x7f0201b9

    .line 259
    goto :goto_0

    .line 261
    :pswitch_8
    const v1, 0x7f0201b8

    .line 262
    goto :goto_0

    .line 264
    :pswitch_9
    const v1, 0x7f0201b6

    .line 265
    goto :goto_0

    .line 268
    :pswitch_a
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v5}, Lcom/lge/camera/controller/camera/TimerController;->addMsgArg(II)V

    goto :goto_1

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public displayStopCounter()V
    .locals 4

    .prologue
    .line 282
    const-string v1, "CameraApp"

    const-string v2, "stop counter"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mCounterView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mCounterView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 288
    :cond_0
    iget-boolean v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mInTimerShotCountdown:Z

    if-eqz v1, :cond_3

    .line 289
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v2, "com.lge.camera.command.setting.SetCameraTimer"

    invoke-virtual {v1, v2}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v0

    .line 292
    .local v0, focusState:I
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "go take a picture:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 294
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->cancelAutoFocus()V

    .line 297
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v2, "com.lge.camera.command.TakePicture"

    invoke-virtual {v1, v2}, Lcom/lge/camera/CameraMediator;->doCommandUi(Ljava/lang/String;)V

    .line 298
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mInTimerShotCountdown:Z

    .line 300
    .end local v0           #focusState:I
    :cond_3
    return-void
.end method

.method public getTimerCaptureDelay()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    return v0
.end method

.method public isTimerShotCountdown()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mInTimerShotCountdown:Z

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/TimerController;->stopTimerShot()Z

    .line 306
    :cond_0
    invoke-super {p0}, Lcom/lge/camera/controller/camera/CameraController;->onPause()V

    .line 307
    return-void
.end method

.method public setTimerSetting(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 53
    iput p1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureMode:I

    iput p1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    .line 58
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    new-instance v1, Lcom/lge/camera/controller/camera/TimerController$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/camera/TimerController$1;-><init>(Lcom/lge/camera/controller/camera/TimerController;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/CameraMediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method

.method public startTimerShot()V
    .locals 9

    .prologue
    const-wide/16 v2, 0x3e8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 71
    const-string v0, "CameraApp"

    const-string v4, "startTimerShot()"

    invoke-static {v0, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/TimerController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v0

    const-string v4, "com.lge.camera.command.DoCapture"

    invoke-virtual {v0, v4}, Lcom/lge/camera/CameraMediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->hideFocus()Z

    .line 77
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/lge/camera/util/Common;->setAudioFocus(Landroid/content/Context;Z)V

    .line 79
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isB2Model()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-wide/16 v4, 0x32

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    :goto_0
    iget v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureMode:I

    iput v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    .line 88
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getSoundController()Lcom/lge/camera/controller/SoundController;

    move-result-object v0

    iget v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    invoke-virtual {v0, v4}, Lcom/lge/camera/controller/SoundController;->playTimerSound(I)V

    .line 90
    iput-boolean v8, p0, Lcom/lge/camera/controller/camera/TimerController;->mInTimerShotCountdown:Z

    .line 91
    new-instance v0, Ljava/util/Timer;

    const-string v4, "timer_countdown"

    invoke-direct {v0, v4}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCountDown:Ljava/util/Timer;

    .line 92
    new-instance v1, Lcom/lge/camera/controller/camera/TimerController$2;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/camera/TimerController$2;-><init>(Lcom/lge/camera/controller/camera/TimerController;)V

    .line 116
    .local v1, taskCountDown:Ljava/util/TimerTask;
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->setMainButtonDisable()V

    .line 117
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->setSwitcherVisible(Z)V

    .line 118
    iget v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    invoke-virtual {p0, v7, v0}, Lcom/lge/camera/controller/camera/TimerController;->addMsgArg(II)V

    .line 119
    iget v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    .line 120
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/lge/camera/controller/PreviewPanelController;->showHelpSubButton(Z)V

    .line 121
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->setThumbnailButtonVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCountDown:Ljava/util/Timer;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 123
    return-void

    .line 82
    .end local v1           #taskCountDown:Ljava/util/TimerTask;
    :catch_0
    move-exception v6

    .line 83
    .local v6, e:Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopTimerShot()Z
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 127
    const-string v1, "CameraApp"

    const-string v2, "stopTimerShot()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x0

    .line 131
    .local v0, result:Z
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/camera/TimerController;->timerAnimation(Z)V

    .line 133
    iget-boolean v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mInTimerShotCountdown:Z

    if-eqz v1, :cond_4

    .line 135
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mCounterView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mCounterView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/lge/camera/util/Common;->setAudioFocus(Landroid/content/Context;Z)V

    .line 140
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCountDown:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCountDown:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 142
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCountDown:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 143
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCountDown:Ljava/util/Timer;

    .line 145
    :cond_1
    iget v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureMode:I

    iput v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    .line 147
    iput-boolean v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mInTimerShotCountdown:Z

    .line 148
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "face_tracking"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 149
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusState(I)V

    .line 154
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/TimerController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->isPausing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 155
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->cancelAutoFocus()V

    .line 158
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->clearFocusState()V

    .line 159
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v3}, Lcom/lge/camera/controller/camera/TimerController;->addMsgArg(II)V

    .line 160
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mHandler:Lcom/lge/camera/controller/camera/TimerController$TimerShotHandler;

    invoke-virtual {v1, v4}, Lcom/lge/camera/controller/camera/TimerController$TimerShotHandler;->removeMessages(I)V

    .line 162
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->setMainButtonEnable()V

    .line 163
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->enableCommand(Z)V

    .line 165
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/TimerController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->isPausing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 166
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v2, "com.lge.camera.command.DisplayPreview"

    invoke-virtual {v1, v2}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;)V

    .line 168
    :cond_3
    const/4 v0, 0x1

    .line 171
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->isHelpActivity()Z

    move-result v1

    if-nez v1, :cond_5

    .line 173
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    new-instance v2, Lcom/lge/camera/controller/camera/TimerController$3;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/camera/TimerController$3;-><init>(Lcom/lge/camera/controller/camera/TimerController;)V

    invoke-virtual {v1, v2}, Lcom/lge/camera/CameraMediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 181
    :cond_5
    return v0

    .line 151
    :cond_6
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusState(I)V

    goto :goto_0
.end method

.method public timerAnimation(Z)V
    .locals 3
    .parameter "start"

    .prologue
    .line 314
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    if-nez v1, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const v2, 0x7f0900dc

    invoke-virtual {v1, v2}, Lcom/lge/camera/CameraMediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 318
    .local v0, iv:Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 319
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerBGRotation:Landroid/view/animation/Animation;

    if-nez v1, :cond_2

    .line 320
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f04

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerBGRotation:Landroid/view/animation/Animation;

    .line 322
    :cond_2
    if-eqz p1, :cond_3

    .line 323
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageView;->clearAnimation()V

    .line 324
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerBGRotation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerBGRotation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 328
    :cond_3
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageView;->clearAnimation()V

    goto :goto_0
.end method
