.class public Lcom/lge/camera/receiver/CamcorderMediaBroadcastReceiver;
.super Lcom/lge/camera/receiver/CameraBroadCastReceiver;
.source "CamcorderMediaBroadcastReceiver.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver;-><init>(Lcom/lge/camera/Mediator;)V

    .line 20
    return-void
.end method

.method private getMediator()Lcom/lge/camera/CamcorderMediator;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CamcorderMediator;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, action:Ljava/lang/String;
    const-string v2, "CameraApp"

    invoke-static {v2, v0}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->isValidState()Z

    move-result v2

    if-nez v2, :cond_2

    .line 32
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "mMediator is null"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_1
    :goto_0
    return-void

    .line 35
    :cond_2
    invoke-direct {p0}, Lcom/lge/camera/receiver/CamcorderMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v2

    if-nez v2, :cond_3

    .line 36
    const-string v2, "CameraApp"

    const-string v3, "storageController is null"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_3
    :try_start_0
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 42
    invoke-direct {p0}, Lcom/lge/camera/receiver/CamcorderMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lge/camera/controller/StorageController;->setMediaScanning(Z)V

    .line 43
    invoke-direct {p0}, Lcom/lge/camera/receiver/CamcorderMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/camera/controller/StorageController;->checkStorage(Z)V

    .line 44
    iget-boolean v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mFinished:Z

    if-nez v2, :cond_1

    .line 45
    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v2

    if-nez v2, :cond_4

    .line 46
    invoke-direct {p0}, Lcom/lge/camera/receiver/CamcorderMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lge/camera/controller/ToastController;->hide(Z)V

    .line 47
    invoke-direct {p0}, Lcom/lge/camera/receiver/CamcorderMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/lge/camera/receiver/CamcorderMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v3

    const v4, 0x7f0b0064

    invoke-virtual {v3, v4}, Lcom/lge/camera/CamcorderMediator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/Common;->toastLong(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "com.lge.camera.command.UpdateThumbnailButton"

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 50
    :cond_4
    invoke-direct {p0}, Lcom/lge/camera/receiver/CamcorderMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 51
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mFinished:Z

    .line 52
    const/4 v2, 0x1

    sput-boolean v2, Lcom/lge/camera/properties/CameraConstants;->MEDIA_RECEIVER_FINISHED:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v3, "CamcorderMediaBroadcastReceiver Exception : "

    invoke-static {v2, v3, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 55
    .end local v1           #e:Ljava/lang/Exception;
    :cond_5
    :try_start_1
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 56
    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v2

    if-nez v2, :cond_6

    .line 57
    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "com.lge.camera.command.UpdateThumbnailButton"

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 59
    :cond_6
    invoke-direct {p0}, Lcom/lge/camera/receiver/CamcorderMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/camera/controller/StorageController;->setMediaScanning(Z)V

    .line 60
    invoke-direct {p0}, Lcom/lge/camera/receiver/CamcorderMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/camera/controller/StorageController;->checkStorage(Z)V

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
    invoke-direct {p0}, Lcom/lge/camera/receiver/CamcorderMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lge/camera/controller/ToastController;->hide(Z)V

    .line 67
    invoke-direct {p0}, Lcom/lge/camera/receiver/CamcorderMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/lge/camera/receiver/CamcorderMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v3

    const v4, 0x7f0b0067

    invoke-virtual {v3, v4}, Lcom/lge/camera/CamcorderMediator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/Common;->toastLong(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "com.lge.camera.command.UpdateThumbnailButton"

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 70
    :cond_9
    invoke-direct {p0}, Lcom/lge/camera/receiver/CamcorderMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 71
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mFinished:Z

    .line 72
    const/4 v2, 0x1

    sput-boolean v2, Lcom/lge/camera/properties/CameraConstants;->MEDIA_RECEIVER_FINISHED:Z

    goto/16 :goto_0

    .line 75
    :cond_a
    const-string v2, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 77
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 78
    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v2

    if-nez v2, :cond_b

    .line 79
    invoke-direct {p0}, Lcom/lge/camera/receiver/CamcorderMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lge/camera/controller/ToastController;->hide(Z)V

    .line 81
    invoke-direct {p0}, Lcom/lge/camera/receiver/CamcorderMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/lge/camera/receiver/CamcorderMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v3

    const v4, 0x7f0b0063

    invoke-virtual {v3, v4}, Lcom/lge/camera/CamcorderMediator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/Common;->toastLong(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "com.lge.camera.command.UpdateThumbnailButton"

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 84
    :cond_b
    invoke-direct {p0}, Lcom/lge/camera/receiver/CamcorderMediaBroadcastReceiver;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 85
    :cond_c
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 88
    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "com.lge.camera.command.UpdateThumbnailButton"

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
