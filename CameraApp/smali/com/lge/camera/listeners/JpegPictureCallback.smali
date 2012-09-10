.class public Lcom/lge/camera/listeners/JpegPictureCallback;
.super Ljava/lang/Object;
.source "JpegPictureCallback.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# static fields
.field static afterTime:J

.field static beforeTime:J


# instance fields
.field mLocation:Landroid/location/Location;

.field mMediator:Lcom/lge/camera/CameraMediator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 25
    sput-wide v0, Lcom/lge/camera/listeners/JpegPictureCallback;->beforeTime:J

    .line 26
    sput-wide v0, Lcom/lge/camera/listeners/JpegPictureCallback;->afterTime:J

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/CameraMediator;Landroid/location/Location;)V
    .locals 0
    .parameter "mediator"
    .parameter "loc"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    .line 30
    iput-object p2, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 31
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 12
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 34
    const-string v8, "CameraApp"

    const-string v9, "#### TIME_CHECK JpegPictureCallback()-start"

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    if-nez v8, :cond_0

    .line 43
    const-string v8, "CameraApp"

    const-string v9, "JpegPictureCallback()-end, null -> return"

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->isPausing()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 48
    const-string v8, "CameraApp"

    const-string v9, "JpegPictureCallback()-end, it\'s going to pausing -> return"

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_1
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v9, "key_camera_timer"

    invoke-virtual {v8, v9}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 56
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/lge/camera/util/Common;->setAudioFocus(Landroid/content/Context;Z)V

    .line 63
    :cond_2
    sget-wide v8, Lcom/lge/camera/listeners/JpegPictureCallback;->beforeTime:J

    sget-wide v10, Lcom/lge/camera/listeners/JpegPictureCallback;->afterTime:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_8

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sput-wide v8, Lcom/lge/camera/listeners/JpegPictureCallback;->beforeTime:J

    .line 72
    :goto_1
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v9, "key_camera_shot_mode"

    const-string v10, "shotmode_hdr"

    invoke-virtual {v8, v9, v10}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 73
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    new-instance v9, Lcom/lge/camera/listeners/JpegPictureCallback$1;

    invoke-direct {v9, p0}, Lcom/lge/camera/listeners/JpegPictureCallback$1;-><init>(Lcom/lge/camera/listeners/JpegPictureCallback;)V

    invoke-virtual {v8, v9}, Lcom/lge/camera/CameraMediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 85
    :cond_3
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/lge/camera/CameraMediator;->checkAutoReviewOff(Z)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 86
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/lge/camera/controller/camera/CameraPreviewController;->startPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    .local v0, bundle:Landroid/os/Bundle;
    const-string v8, "fromJpegCallback"

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v9, "com.lge.camera.command.DisplayPreview"

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v9, v0, v10, v11}, Lcom/lge/camera/CameraMediator;->doCommandDelayed(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 93
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_4
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/lge/camera/CameraMediator;->setCaptureData([B)V

    .line 95
    const/16 v3, 0x100

    .line 97
    .local v3, format:I
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    iget-object v9, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v9}, Lcom/lge/camera/CameraMediator;->getDeviceDegree()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/lge/camera/CameraMediator;->setImageRotationDegree(I)V

    .line 99
    const/4 v4, 0x0

    .line 100
    .local v4, isSuccessSave:Z
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->getParameteredRotation()I

    move-result v1

    .line 101
    .local v1, degree:I
    if-nez v1, :cond_9

    const/4 v6, 0x1

    .line 103
    .local v6, ola_Orientation:I
    :goto_2
    const/4 v2, 0x0

    .line 105
    .local v2, finalJpegData:[B
    if-eqz p1, :cond_6

    .line 106
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->getApplicationMode()I

    move-result v8

    if-nez v8, :cond_c

    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->getCameraMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    .line 107
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v9, "key_save_direction"

    invoke-virtual {v8, v9}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "off"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 108
    invoke-static {p1}, Lcom/lge/olaworks/library/EngineProcessor;->jpegFlipH([B)[B

    move-result-object v5

    .line 109
    .local v5, jpegDataFlipH:[B
    if-eqz v5, :cond_5

    .line 110
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v8

    invoke-virtual {v8, v5, v3, v6}, Lcom/lge/olaworks/library/EngineProcessor;->processCapture([BII)[B

    move-result-object v2

    .line 131
    .end local v5           #jpegDataFlipH:[B
    :cond_5
    :goto_3
    if-nez v2, :cond_6

    .line 132
    const-string v8, "CameraApp"

    const-string v9, "error!! onPictureTaken (finalJpegData == null)"

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_6
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isB2Model()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 144
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 145
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/camera/module/Module;->doAfterCapture()V

    .line 149
    :cond_7
    if-nez p1, :cond_d

    .line 150
    const-string v8, "CameraApp"

    const-string v9, "error!! onPictureTaken (jpegData == null)"

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v4, 0x0

    .line 153
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useJpegPictureCallbackError()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 154
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    new-instance v9, Lcom/lge/camera/listeners/JpegPictureCallback$2;

    invoke-direct {v9, p0}, Lcom/lge/camera/listeners/JpegPictureCallback$2;-><init>(Lcom/lge/camera/listeners/JpegPictureCallback;)V

    invoke-virtual {v8, v9}, Lcom/lge/camera/CameraMediator;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 66
    .end local v1           #degree:I
    .end local v2           #finalJpegData:[B
    .end local v3           #format:I
    .end local v4           #isSuccessSave:Z
    .end local v6           #ola_Orientation:I
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-wide v10, Lcom/lge/camera/listeners/JpegPictureCallback;->beforeTime:J

    sub-long/2addr v8, v10

    sput-wide v8, Lcom/lge/camera/listeners/JpegPictureCallback;->afterTime:J

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sput-wide v8, Lcom/lge/camera/listeners/JpegPictureCallback;->beforeTime:J

    .line 68
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ShotToShot time check : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-wide v10, Lcom/lge/camera/listeners/JpegPictureCallback;->afterTime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-wide/16 v8, 0x0

    sput-wide v8, Lcom/lge/camera/listeners/JpegPictureCallback;->afterTime:J

    goto/16 :goto_1

    .line 101
    .restart local v1       #degree:I
    .restart local v3       #format:I
    .restart local v4       #isSuccessSave:Z
    :cond_9
    const/4 v6, 0x6

    goto/16 :goto_2

    .line 113
    .restart local v2       #finalJpegData:[B
    .restart local v6       #ola_Orientation:I
    :cond_a
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetFunctionFrontCameraBeautyShot()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b

    .line 114
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v8

    invoke-virtual {v8, p1, v3, v6}, Lcom/lge/olaworks/library/EngineProcessor;->processCapture([BII)[B

    move-result-object v2

    goto :goto_3

    .line 117
    :cond_b
    move-object v2, p1

    goto/16 :goto_3

    .line 127
    :cond_c
    move-object v2, p1

    goto/16 :goto_3

    .line 162
    :cond_d
    if-nez v2, :cond_10

    .line 163
    const-string v8, "CameraApp"

    const-string v9, "error!! onPictureTaken (finalJpegData == null)"

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v4, 0x0

    .line 213
    :cond_e
    :goto_4
    if-nez v4, :cond_16

    .line 214
    const-string v8, "CameraApp"

    const-string v9, "savePicture() fail!"

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    const v9, 0x7f0b0142

    invoke-virtual {v8, v9}, Lcom/lge/camera/CameraMediator;->toast(I)V

    .line 217
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/lge/camera/CameraMediator;->setInCaptureProgress(Z)V

    .line 219
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->getFileHelper()Lcom/lge/camera/util/FileNamingHelper;

    move-result-object v8

    if-eqz v8, :cond_f

    .line 220
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->getFileHelper()Lcom/lge/camera/util/FileNamingHelper;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v9}, Lcom/lge/camera/CameraMediator;->getApplicationMode()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/lge/camera/util/FileNamingHelper;->setErrorFeedback(I)V

    .line 223
    :cond_f
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/camera/controller/camera/CameraPreviewController;->startPreview()V

    .line 224
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v9, "com.lge.camera.command.DisplayPreview"

    invoke-virtual {v8, v9}, Lcom/lge/camera/CameraMediator;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 166
    :cond_10
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "finalJpegData size ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "], jpegData size ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    array-length v8, p1

    int-to-long v8, v8

    iget-object v10, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v10}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lge/camera/controller/camera/CameraStorageController;->getFreeSpace()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_13

    .line 169
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/lge/camera/CameraMediator;->checkAutoReviewOff(Z)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 170
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/camera/controller/camera/CameraStorageController;->getAvailablePictureCount()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    cmp-long v8, v8, v10

    if-lez v8, :cond_11

    .line 171
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    const/4 v9, 0x0

    invoke-virtual {v8, v2, v9}, Lcom/lge/camera/CameraMediator;->saveImage([BLandroid/graphics/Bitmap;)Z

    move-result v4

    .line 172
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ImageSaver Queue count is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v10}, Lcom/lge/camera/CameraMediator;->getQueueCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 174
    :cond_11
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->waitSaveImageTreadDone()V

    .line 175
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v2, v9, v10, v11}, Lcom/lge/camera/CameraMediator;->savePicture([BLandroid/graphics/Bitmap;ZI)Z

    move-result v4

    .line 176
    if-eqz v4, :cond_e

    .line 177
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->getSaveURI()Landroid/net/Uri;

    move-result-object v7

    .line 178
    .local v7, tmpSaveURI:Landroid/net/Uri;
    if-eqz v7, :cond_e

    .line 179
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v2, v7, v9}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->setLastPictureThumb([BLandroid/net/Uri;Z)V

    .line 180
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;->updateThumbnailButton()V

    goto/16 :goto_4

    .line 185
    .end local v7           #tmpSaveURI:Landroid/net/Uri;
    :cond_12
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->waitSaveImageTreadDone()V

    .line 186
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v2, v9, v10, v11}, Lcom/lge/camera/CameraMediator;->savePicture([BLandroid/graphics/Bitmap;ZI)Z

    move-result v4

    goto/16 :goto_4

    .line 189
    :cond_13
    const-string v8, "CameraApp"

    const-string v9, "savePicture() not enough memory!"

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/4 v4, 0x0

    .line 192
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    const v9, 0x7f0b005e

    invoke-virtual {v8, v9}, Lcom/lge/camera/CameraMediator;->toast(I)V

    .line 194
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/lge/camera/CameraMediator;->setInCaptureProgress(Z)V

    .line 196
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->getFileHelper()Lcom/lge/camera/util/FileNamingHelper;

    move-result-object v8

    if-eqz v8, :cond_14

    .line 197
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->getFileHelper()Lcom/lge/camera/util/FileNamingHelper;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v9}, Lcom/lge/camera/CameraMediator;->getApplicationMode()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/lge/camera/util/FileNamingHelper;->setErrorFeedback(I)V

    .line 200
    :cond_14
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/lge/camera/CameraMediator;->checkAutoReviewOff(Z)Z

    move-result v8

    if-nez v8, :cond_15

    .line 201
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/camera/controller/camera/CameraPreviewController;->startPreview()V

    .line 202
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v9, "com.lge.camera.command.DisplayPreview"

    invoke-virtual {v8, v9}, Lcom/lge/camera/CameraMediator;->doCommandUi(Ljava/lang/String;)V

    .line 203
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/lge/camera/controller/camera/CameraStorageController;->checkStorage(Z)V

    goto/16 :goto_0

    .line 206
    :cond_15
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/lge/camera/controller/camera/CameraStorageController;->checkStorage(Z)V

    goto/16 :goto_0

    .line 229
    :cond_16
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mImageListUri size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v10}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/lge/camera/CameraMediator;->checkAutoReviewOff(Z)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 232
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_17

    .line 233
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v9}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 247
    :cond_17
    :goto_5
    const-string v8, "CameraApp"

    const-string v9, "JpegPictureCallback()-end"

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 236
    :cond_18
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/lge/camera/CameraMediator;->setInCaptureProgress(Z)V

    .line 238
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->waitSaveImageTreadDone()V

    .line 239
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    iget-object v9, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v9}, Lcom/lge/camera/CameraMediator;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/Common;->saveLastPicture(Lcom/lge/camera/Mediator;Landroid/net/Uri;)V

    .line 241
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->beDirectlyGoingToCropGallery()Z

    move-result v8

    if-eqz v8, :cond_19

    .line 242
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->doAttach()V

    goto :goto_5

    .line 244
    :cond_19
    iget-object v8, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v9, "com.lge.camera.command.DisplayCameraPostview"

    invoke-virtual {v8, v9}, Lcom/lge/camera/CameraMediator;->doCommandUi(Ljava/lang/String;)V

    goto :goto_5
.end method
