.class public Lcom/lge/camera/receiver/CameraMediaBroadcastReceiver;
.super Lcom/lge/camera/receiver/CameraBroadCastReceiver;
.source "CameraMediaBroadcastReceiver.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver;-><init>(Lcom/lge/camera/Mediator;)V

    .line 19
    return-void
.end method

.method private getMediator()Lcom/lge/camera/CameraMediator;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, action:Ljava/lang/String;
    const-string v2, "CameraApp"

    invoke-static {v2, v0}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->isValidState()Z

    move-result v2

    if-nez v2, :cond_2

    .line 31
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "mMediator is null"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_1
    :goto_0
    return-void

    .line 34
    :cond_2
    invoke-direct {p0}, Lcom/lge/camera/receiver/CameraMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v2

    if-nez v2, :cond_3

    .line 35
    const-string v2, "CameraApp"

    const-string v3, "storageController is null"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_3
    :try_start_0
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 41
    invoke-direct {p0}, Lcom/lge/camera/receiver/CameraMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lge/camera/controller/camera/CameraStorageController;->setMediaScanning(Z)V

    .line 42
    invoke-direct {p0}, Lcom/lge/camera/receiver/CameraMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/camera/controller/camera/CameraStorageController;->checkStorage(Z)V

    .line 43
    iget-boolean v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mFinished:Z

    if-nez v2, :cond_1

    .line 44
    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v2

    if-nez v2, :cond_4

    .line 45
    invoke-direct {p0}, Lcom/lge/camera/receiver/CameraMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lge/camera/controller/ToastController;->hide(Z)V

    .line 46
    invoke-direct {p0}, Lcom/lge/camera/receiver/CameraMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/lge/camera/receiver/CameraMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v3

    const v4, 0x7f0b0064

    invoke-virtual {v3, v4}, Lcom/lge/camera/CameraMediator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/Common;->toastLong(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "com.lge.camera.command.UpdateThumbnailButton"

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 48
    const/4 v2, 0x1

    sput-boolean v2, Lcom/lge/camera/properties/CameraConstants;->MEDIA_RECEIVER_FINISHED:Z

    .line 50
    :cond_4
    invoke-direct {p0}, Lcom/lge/camera/receiver/CameraMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 51
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mFinished:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v3, "CameraMediaBroadcastReceiver Exception : "

    invoke-static {v2, v3, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 54
    .end local v1           #e:Ljava/lang/Exception;
    :cond_5
    :try_start_1
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 55
    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v2

    if-nez v2, :cond_6

    .line 56
    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "com.lge.camera.command.UpdateThumbnailButton"

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 58
    :cond_6
    invoke-direct {p0}, Lcom/lge/camera/receiver/CameraMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/camera/controller/camera/CameraStorageController;->setMediaScanning(Z)V

    .line 59
    invoke-direct {p0}, Lcom/lge/camera/receiver/CameraMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/camera/controller/camera/CameraStorageController;->checkStorage(Z)V

    goto/16 :goto_0

    .line 61
    :cond_7
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 64
    :cond_8
    iget-boolean v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mFinished:Z

    if-nez v2, :cond_1

    .line 65
    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v2

    if-nez v2, :cond_9

    .line 66
    invoke-direct {p0}, Lcom/lge/camera/receiver/CameraMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lge/camera/controller/ToastController;->hide(Z)V

    .line 67
    invoke-direct {p0}, Lcom/lge/camera/receiver/CameraMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/lge/camera/receiver/CameraMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v3

    const v4, 0x7f0b0067

    invoke-virtual {v3, v4}, Lcom/lge/camera/CameraMediator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/Common;->toastLong(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "com.lge.camera.command.UpdateThumbnailButton"

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 69
    const/4 v2, 0x1

    sput-boolean v2, Lcom/lge/camera/properties/CameraConstants;->MEDIA_RECEIVER_FINISHED:Z

    .line 71
    :cond_9
    invoke-direct {p0}, Lcom/lge/camera/receiver/CameraMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 72
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mFinished:Z

    goto/16 :goto_0

    .line 76
    :cond_a
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 77
    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v2

    if-nez v2, :cond_b

    .line 78
    invoke-direct {p0}, Lcom/lge/camera/receiver/CameraMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lge/camera/controller/ToastController;->hide(Z)V

    .line 80
    invoke-direct {p0}, Lcom/lge/camera/receiver/CameraMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/lge/camera/receiver/CameraMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v3

    const v4, 0x7f0b0063

    invoke-virtual {v3, v4}, Lcom/lge/camera/CameraMediator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/Common;->toastLong(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "com.lge.camera.command.UpdateThumbnailButton"

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 83
    :cond_b
    invoke-direct {p0}, Lcom/lge/camera/receiver/CameraMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 84
    :cond_c
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 86
    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "com.lge.camera.command.UpdateThumbnailButton"

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
