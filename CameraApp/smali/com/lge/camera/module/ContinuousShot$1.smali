.class Lcom/lge/camera/module/ContinuousShot$1;
.super Ljava/util/TimerTask;
.source "ContinuousShot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/module/ContinuousShot;->takePicture()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/module/ContinuousShot;


# direct methods
.method constructor <init>(Lcom/lge/camera/module/ContinuousShot;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 118
    const-string v2, "CameraApp"

    const-string v3, "taskContinuous run()-start"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mContiShotErrorOccur:Z
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$000(Lcom/lge/camera/module/ContinuousShot;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    const-string v2, "CameraApp"

    const-string v3, "continuous shot thread return: error flag"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    invoke-virtual {v2}, Lcom/lge/camera/module/ContinuousShot;->stopContinuousShotUserAction()V

    .line 273
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCount:I
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$100(Lcom/lge/camera/module/ContinuousShot;)I

    move-result v2

    if-ge v2, v8, :cond_3

    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotStopUserAction:Z
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$200(Lcom/lge/camera/module/ContinuousShot;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 128
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 130
    :try_start_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useContinuousSound()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 131
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mSound_isPlayed:Z
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$400(Lcom/lge/camera/module/ContinuousShot;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 132
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getSoundController()Lcom/lge/camera/controller/SoundController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/SoundController;->playContinuousShutterSound()V

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    const/4 v3, 0x1

    #setter for: Lcom/lge/camera/module/ContinuousShot;->mSound_isPlayed:Z
    invoke-static {v2, v3}, Lcom/lge/camera/module/ContinuousShot;->access$402(Lcom/lge/camera/module/ContinuousShot;Z)Z

    .line 139
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCount:I
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$100(Lcom/lge/camera/module/ContinuousShot;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mContinueShotCount:I
    invoke-static {v3}, Lcom/lge/camera/module/ContinuousShot;->access$500(Lcom/lge/camera/module/ContinuousShot;)I

    move-result v3

    if-eq v2, v3, :cond_8

    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, waitcnt:I
    :goto_2
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCount:I
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$100(Lcom/lge/camera/module/ContinuousShot;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mContinueShotCount:I
    invoke-static {v3}, Lcom/lge/camera/module/ContinuousShot;->access$500(Lcom/lge/camera/module/ContinuousShot;)I

    move-result v3

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotStopUserAction:Z
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$200(Lcom/lge/camera/module/ContinuousShot;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_8

    .line 143
    const-wide/16 v2, 0xa

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 144
    add-int/lit8 v1, v1, 0x1

    .line 145
    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    .line 146
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    const/4 v3, 0x1

    #setter for: Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotStopUserAction:Z
    invoke-static {v2, v3}, Lcom/lge/camera/module/ContinuousShot;->access$202(Lcom/lge/camera/module/ContinuousShot;Z)Z

    .line 148
    :cond_2
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "continuous waitcnt = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 159
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #waitcnt:I
    :catch_1
    move-exception v0

    .line 160
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v3, "Camera Device is null..."

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camera/CameraStorageController;->getAvailablePictureCount()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-gez v2, :cond_a

    .line 169
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getSoundController()Lcom/lge/camera/controller/SoundController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/SoundController;->StopSoundContinuous()V

    .line 170
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    invoke-virtual {v2}, Lcom/lge/camera/module/ContinuousShot;->stopContinuousShot()V

    .line 172
    const-string v2, "CameraApp"

    const-string v3, "Available picture count:%d"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v5}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/camera/CameraStorageController;->getAvailablePictureCount()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getFileHelper()Lcom/lge/camera/util/FileNamingHelper;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 174
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getFileHelper()Lcom/lge/camera/util/FileNamingHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v3}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getApplicationMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/util/FileNamingHelper;->setErrorFeedback(I)V

    .line 176
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 177
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 179
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/lge/camera/CameraMediator;->setInCaptureProgress(Z)V

    .line 180
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->isPausing()Z

    move-result v2

    if-nez v2, :cond_6

    .line 181
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camera/CameraPreviewController;->restartPreview()V

    .line 183
    :cond_6
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #setter for: Lcom/lge/camera/module/ContinuousShot;->mContiShotErrorOccur:Z
    invoke-static {v2, v7}, Lcom/lge/camera/module/ContinuousShot;->access$002(Lcom/lge/camera/module/ContinuousShot;Z)Z

    goto/16 :goto_0

    .line 136
    :cond_7
    :try_start_3
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getSoundController()Lcom/lge/camera/controller/SoundController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/SoundController;->playContinuousShutterSound()V

    goto/16 :goto_1

    .line 155
    :cond_8
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    new-instance v3, Lcom/lge/camera/module/ContinuousShot$OneShotPreviewCallback;

    iget-object v4, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/lge/camera/module/ContinuousShot$OneShotPreviewCallback;-><init>(Lcom/lge/camera/module/ContinuousShot;Lcom/lge/camera/module/ContinuousShot$1;)V

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 156
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$108(Lcom/lge/camera/module/ContinuousShot;)I

    .line 157
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOneShotPreviewCallback : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCount:I
    invoke-static {v4}, Lcom/lge/camera/module/ContinuousShot;->access$100(Lcom/lge/camera/module/ContinuousShot;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    #setter for: Lcom/lge/camera/module/ContinuousShot;->mCheckOneShotCallbackTime:J
    invoke-static {v2, v3, v4}, Lcom/lge/camera/module/ContinuousShot;->access$702(Lcom/lge/camera/module/ContinuousShot;J)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 164
    :cond_9
    const-string v2, "CameraApp"

    const-string v3, "Camera device is null. One shot callback is not set."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 187
    :cond_a
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mContinueShotCount:I
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$500(Lcom/lge/camera/module/ContinuousShot;)I

    move-result v2

    if-lt v2, v8, :cond_b

    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCount:I
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$100(Lcom/lge/camera/module/ContinuousShot;)I

    move-result v2

    if-ge v2, v8, :cond_c

    :cond_b
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotStopUserAction:Z
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$200(Lcom/lge/camera/module/ContinuousShot;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 189
    :cond_c
    const-string v2, "CameraApp"

    const-string v3, "Save cont. shot pictures."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    invoke-virtual {v2}, Lcom/lge/camera/module/ContinuousShot;->stopContinuousShot()V

    .line 192
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v2

    new-instance v3, Lcom/lge/camera/module/ContinuousShot$1$1;

    invoke-direct {v3, p0}, Lcom/lge/camera/module/ContinuousShot$1$1;-><init>(Lcom/lge/camera/module/ContinuousShot$1;)V

    invoke-virtual {v2, v3}, Lcom/lge/camera/CameraMediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 201
    :try_start_4
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;

    iget-object v5, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;-><init>(Lcom/lge/camera/module/ContinuousShot;Lcom/lge/camera/module/ContinuousShot$1;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #setter for: Lcom/lge/camera/module/ContinuousShot;->mContinuousShotSaveImageThread:Ljava/lang/Thread;
    invoke-static {v2, v3}, Lcom/lge/camera/module/ContinuousShot;->access$802(Lcom/lge/camera/module/ContinuousShot;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 202
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mContinuousShotSaveImageThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$800(Lcom/lge/camera/module/ContinuousShot;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 208
    :goto_4
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mContiShotErrorOccur:Z
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$000(Lcom/lge/camera/module/ContinuousShot;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 209
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mContinuousShotSaveImageThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$800(Lcom/lge/camera/module/ContinuousShot;)Ljava/lang/Thread;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mContinuousShotSaveImageThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$800(Lcom/lge/camera/module/ContinuousShot;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 211
    :goto_5
    :try_start_5
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$1100(Lcom/lge/camera/module/ContinuousShot;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 212
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotSaveImageThreadRunning:Z
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$1200(Lcom/lge/camera/module/ContinuousShot;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 213
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ContinuousShot Running :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotSaveImageThreadRunning:Z
    invoke-static {v4}, Lcom/lge/camera/module/ContinuousShot;->access$1200(Lcom/lge/camera/module/ContinuousShot;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    .line 219
    :catch_2
    move-exception v0

    .line 220
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 223
    .end local v0           #e:Ljava/lang/Exception;
    :cond_d
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #calls: Lcom/lge/camera/module/ContinuousShot;->stopSaveImageThread()V
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$1000(Lcom/lge/camera/module/ContinuousShot;)V

    .line 226
    :cond_e
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v2

    new-instance v3, Lcom/lge/camera/module/ContinuousShot$1$2;

    invoke-direct {v3, p0}, Lcom/lge/camera/module/ContinuousShot$1$2;-><init>(Lcom/lge/camera/module/ContinuousShot$1;)V

    invoke-virtual {v2, v3}, Lcom/lge/camera/CameraMediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 236
    :try_start_6
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsEMMCmemory()Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camera/CameraStorageController;->isExternalStorageRemoved()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 237
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 238
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getImageListRotation()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 241
    :cond_f
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_12

    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->isPausing()Z

    move-result v2

    if-nez v2, :cond_12

    .line 243
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    invoke-virtual {v2}, Lcom/lge/camera/module/ContinuousShot;->stopContinuousShotThread()V

    .line 245
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v2

    const-string v3, "key_camera_auto_review"

    invoke-virtual {v2, v3}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 246
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v3}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->setLastThumb(Landroid/net/Uri;Z)V

    .line 247
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v2

    const-string v3, "com.lge.camera.command.OnDelayOff"

    invoke-virtual {v2, v3}, Lcom/lge/camera/CameraMediator;->doCommandUi(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_4

    .line 272
    :cond_10
    :goto_6
    const-string v2, "CameraApp"

    const-string v3, "taskContinuous run()-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    :catch_3
    move-exception v0

    .line 204
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #calls: Lcom/lge/camera/module/ContinuousShot;->stopSaveImageThread()V
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$1000(Lcom/lge/camera/module/ContinuousShot;)V

    .line 205
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 249
    .end local v0           #e:Ljava/lang/Exception;
    :cond_11
    :try_start_7
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v2

    const-string v3, "com.lge.camera.command.DisplayCameraPostview"

    invoke-virtual {v2, v3}, Lcom/lge/camera/CameraMediator;->doCommandUi(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_6

    .line 268
    :catch_4
    move-exception v0

    .line 269
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "taskContinuous run() - failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 252
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_12
    :try_start_8
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    invoke-virtual {v2}, Lcom/lge/camera/module/ContinuousShot;->stopContinuousShotThread()V

    .line 253
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mContinueShotCount:I
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$500(Lcom/lge/camera/module/ContinuousShot;)I

    move-result v2

    if-lez v2, :cond_13

    .line 254
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v2

    new-instance v3, Lcom/lge/camera/module/ContinuousShot$1$3;

    invoke-direct {v3, p0}, Lcom/lge/camera/module/ContinuousShot$1$3;-><init>(Lcom/lge/camera/module/ContinuousShot$1;)V

    invoke-virtual {v2, v3}, Lcom/lge/camera/CameraMediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 266
    :goto_7
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v2

    const-string v3, "com.lge.camera.command.DisplayPreview"

    invoke-virtual {v2, v3}, Lcom/lge/camera/CameraMediator;->doCommandUi(Ljava/lang/String;)V

    goto :goto_6

    .line 263
    :cond_13
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/camera/CameraMediator;->setInCaptureProgress(Z)V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_7
.end method
