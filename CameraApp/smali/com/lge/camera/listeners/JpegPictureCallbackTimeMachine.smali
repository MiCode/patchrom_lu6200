.class public Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;
.super Ljava/lang/Object;
.source "JpegPictureCallbackTimeMachine.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# static fields
.field static afterTime:J

.field static beforeTime:J


# instance fields
.field mCameraMediator:Lcom/lge/camera/CameraMediator;

.field mLocation:Landroid/location/Location;

.field private mTimeMachineCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 19
    sput-wide v0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->beforeTime:J

    .line 20
    sput-wide v0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->afterTime:J

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/CameraMediator;Landroid/location/Location;)V
    .locals 1
    .parameter "mediator"
    .parameter "loc"

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mTimeMachineCount:I

    .line 24
    iput-object p1, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    .line 25
    iput-object p2, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mLocation:Landroid/location/Location;

    .line 26
    return-void
.end method

.method private GoPreviewingAsTimeMachingError(I)V
    .locals 3
    .parameter "resource"

    .prologue
    const/4 v2, 0x0

    .line 106
    iget-object v0, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0, v2}, Lcom/lge/camera/CameraMediator;->setInCaptureProgress(Z)V

    .line 107
    iget-object v0, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0, p1}, Lcom/lge/camera/CameraMediator;->toast(I)V

    .line 108
    iput v2, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mTimeMachineCount:I

    .line 109
    iget-object v0, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getFileHelper()Lcom/lge/camera/util/FileNamingHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getFileHelper()Lcom/lge/camera/util/FileNamingHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getApplicationMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/FileNamingHelper;->setErrorFeedback(I)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->startPreview()V

    .line 114
    iget-object v0, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v1, "com.lge.camera.command.DisplayPreview"

    invoke-virtual {v0, v1}, Lcom/lge/camera/CameraMediator;->doCommandUi(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lge/camera/controller/camera/CameraStorageController;->checkStorage(Z)V

    .line 117
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 9
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 29
    const-string v3, "CameraApp"

    const-string v4, "#### TIME_CHECK JpegPictureCallbackTimeMachine()-start"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v3, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    if-nez v3, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->isPausing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 38
    iget-object v3, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v4, "key_camera_timer"

    invoke-virtual {v3, v4}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 39
    iget-object v3, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/lge/camera/util/Common;->setAudioFocus(Landroid/content/Context;Z)V

    .line 42
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3, v8}, Lcom/lge/camera/CameraMediator;->setCaptureData([B)V

    .line 43
    iget-object v3, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    iget-object v4, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getDeviceDegree()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lge/camera/CameraMediator;->setImageRotationDegree(I)V

    .line 45
    const/4 v1, 0x0

    .line 47
    .local v1, isSuccessSave:Z
    if-nez p1, :cond_3

    .line 48
    const-string v3, "CameraApp"

    const-string v4, "error!! onPictureTaken (jpegData == null)"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v1, 0x0

    .line 51
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useJpegPictureCallbackError()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 52
    iget-object v3, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    new-instance v4, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine$1;

    invoke-direct {v4, p0}, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine$1;-><init>(Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;)V

    invoke-virtual {v3, v4}, Lcom/lge/camera/CameraMediator;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 61
    :cond_3
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finalJpegData size ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    array-length v3, p1

    int-to-long v3, v3

    iget-object v5, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v5}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/camera/CameraStorageController;->getFreeSpace()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_6

    .line 64
    iget-object v3, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->waitSaveImageTreadDone()V

    .line 65
    iget v3, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mTimeMachineCount:I

    if-nez v3, :cond_4

    .line 66
    const/4 v2, 0x0

    .line 68
    .local v2, timeMachineTempFileDelete:Z
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->deleteTimeMachineImages()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 72
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timeMachineTempFileDeleted ? = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .end local v2           #timeMachineTempFileDelete:Z
    :cond_4
    :goto_1
    iget v3, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mTimeMachineCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mTimeMachineCount:I

    .line 76
    iget-object v3, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const/4 v4, 0x1

    iget v5, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mTimeMachineCount:I

    invoke-virtual {v3, p1, v8, v4, v5}, Lcom/lge/camera/CameraMediator;->savePicture([BLandroid/graphics/Bitmap;ZI)Z

    move-result v1

    .line 86
    :cond_5
    if-nez v1, :cond_7

    .line 87
    const-string v3, "CameraApp"

    const-string v4, "savePicture() fail!"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const v3, 0x7f0b0142

    invoke-direct {p0, v3}, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->GoPreviewingAsTimeMachingError(I)V

    goto/16 :goto_0

    .line 69
    .restart local v2       #timeMachineTempFileDelete:Z
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/lang/ClassCastException;
    :try_start_1
    const-string v3, "CameraApp"

    const-string v4, "ClassCastException:"

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timeMachineTempFileDeleted ? = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v0           #e:Ljava/lang/ClassCastException;
    :catchall_0
    move-exception v3

    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timeMachineTempFileDeleted ? = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 79
    .end local v2           #timeMachineTempFileDelete:Z
    :cond_6
    const-string v3, "CameraApp"

    const-string v4, "savePicture() not enough memory!"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const/4 v1, 0x0

    .line 81
    const v3, 0x7f0b005e

    invoke-direct {p0, v3}, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->GoPreviewingAsTimeMachingError(I)V

    goto/16 :goto_0

    .line 92
    :cond_7
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTimeMachineCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mTimeMachineCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget v3, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mTimeMachineCount:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_8

    .line 95
    iget-object v3, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->waitSaveImageTreadDone()V

    .line 96
    iget-object v3, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    iget-object v4, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/Common;->saveLastPicture(Lcom/lge/camera/Mediator;Landroid/net/Uri;)V

    .line 97
    iget-object v3, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v4, "com.lge.camera.command.DisplayCameraPostview"

    invoke-virtual {v3, v4}, Lcom/lge/camera/CameraMediator;->doCommandUi(Ljava/lang/String;)V

    .line 98
    iput v7, p0, Lcom/lge/camera/listeners/JpegPictureCallbackTimeMachine;->mTimeMachineCount:I

    .line 101
    :cond_8
    const-string v3, "CameraApp"

    const-string v4, "JpegPictureCallbackTimeMachine()-end"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
