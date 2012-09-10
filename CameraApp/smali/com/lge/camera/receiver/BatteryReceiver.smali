.class public Lcom/lge/camera/receiver/BatteryReceiver;
.super Lcom/lge/camera/receiver/CameraBroadCastReceiver;
.source "BatteryReceiver.java"


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

.method private calculateBatteryLevel(I)I
    .locals 2
    .parameter "charged"

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, level:I
    if-ltz p1, :cond_0

    const/16 v1, 0x64

    if-gt p1, v1, :cond_0

    .line 106
    add-int/lit8 v1, p1, 0x2

    div-int/lit8 v0, v1, 0x5

    .line 108
    :cond_0
    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const v12, 0x7f0b0021

    const/4 v8, 0x5

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, action:Ljava/lang/String;
    iget-object v7, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->isValidState()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getIndicatorController()Lcom/lge/camera/controller/IndicatorController;

    move-result-object v7

    if-nez v7, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 32
    const-string v7, "level"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 34
    .local v2, charged:I
    const-string v7, "scale"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 37
    .local v4, levelMax:I
    if-eq v2, v9, :cond_2

    if-gt v2, v8, :cond_2

    .line 38
    iget-object v7, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v7

    if-nez v7, :cond_2

    .line 39
    iget-object v7, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v8}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/Common;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    iget-object v7, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    .line 43
    :cond_2
    if-eq v2, v9, :cond_5

    if-eq v4, v9, :cond_5

    .line 44
    const/16 v6, 0x15

    .line 45
    .local v6, tempTotalBatteryLevel:I
    invoke-direct {p0, v2}, Lcom/lge/camera/receiver/BatteryReceiver;->calculateBatteryLevel(I)I

    move-result v3

    .line 47
    .local v3, level:I
    const-string v7, "status"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 48
    .local v5, status:I
    if-ne v5, v11, :cond_3

    .line 49
    add-int/2addr v3, v6

    .line 50
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHeat_detection()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 52
    iget-object v7, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7, v10}, Lcom/lge/camera/Mediator;->setIsCharging(Z)V

    .line 56
    :cond_3
    iget-object v7, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getBatteryLevel()I

    move-result v7

    if-eq v7, v3, :cond_4

    .line 57
    iget-object v7, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7, v3}, Lcom/lge/camera/Mediator;->setBatteryLevel(I)V

    .line 58
    iget-object v7, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getIndicatorController()Lcom/lge/camera/controller/IndicatorController;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v8}, Lcom/lge/camera/Mediator;->getBatteryLevel()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/lge/camera/controller/IndicatorController;->setBatteryIndicator(I)V

    .line 75
    .end local v2           #charged:I
    .end local v3           #level:I
    .end local v4           #levelMax:I
    .end local v5           #status:I
    .end local v6           #tempTotalBatteryLevel:I
    :cond_4
    :goto_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHeat_detection()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 76
    const-string v7, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 77
    iget-object v7, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7, v10}, Lcom/lge/camera/Mediator;->setIsCharging(Z)V

    .line 78
    const-string v7, "CameraApp"

    const-string v8, "===>ACTION_POWER_CONNECTED"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v7, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v7

    if-ne v7, v10, :cond_0

    iget-object v7, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v7

    if-ne v7, v11, :cond_0

    .line 82
    iget-object v7, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/controller/PreviewController;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, RecordingSize:Ljava/lang/String;
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "===>RecordingSize_1: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {v0}, Lcom/lge/camera/util/Common;->IsHeatingVideoSize(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 85
    iget-object v7, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v7, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v7}, Lcom/lge/camera/CamcorderMediator;->StartHeatingwarning()V

    goto/16 :goto_0

    .line 61
    .end local v0           #RecordingSize:Ljava/lang/String;
    .restart local v2       #charged:I
    .restart local v4       #levelMax:I
    :cond_5
    const-string v7, "CameraApp"

    const-string v8, "Fail to receive battery level!"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 63
    .end local v2           #charged:I
    .end local v4           #levelMax:I
    :cond_6
    const-string v7, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 65
    const-string v7, "level"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 67
    .restart local v3       #level:I
    if-eq v3, v9, :cond_4

    if-gt v3, v8, :cond_4

    .line 68
    iget-object v7, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v7

    if-nez v7, :cond_4

    .line 69
    const-string v7, "CameraApp"

    const-string v8, "battery level is too low!! go to finish!"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v7, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v8}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/Common;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    iget-object v7, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 87
    .end local v3           #level:I
    :cond_7
    const-string v7, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 88
    iget-object v7, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/lge/camera/Mediator;->setIsCharging(Z)V

    .line 89
    const-string v7, "CameraApp"

    const-string v8, "===>ACTION_POWER_DISCONNECTED"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v7, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v7

    if-ne v7, v10, :cond_0

    .line 92
    iget-object v7, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/controller/PreviewController;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v0

    .line 93
    .restart local v0       #RecordingSize:Ljava/lang/String;
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "===>RecordingSize_2: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v7, "1280x720"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "1920x1088"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "1920x1080"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 95
    :cond_8
    iget-object v7, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v7, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v7}, Lcom/lge/camera/CamcorderMediator;->StopHeatingwarning()V

    goto/16 :goto_0
.end method
