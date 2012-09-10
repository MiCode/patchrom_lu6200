.class public Lcom/lge/camera/command/TakePictureInRecording;
.super Lcom/lge/camera/command/Command;
.source "TakePictureInRecording.java"


# instance fields
.field private mIsAvableGPS:Z

.field private mMediator:Lcom/lge/camera/Mediator;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 1
    .parameter "mediator"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/Mediator;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/command/TakePictureInRecording;->mMediator:Lcom/lge/camera/Mediator;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/command/TakePictureInRecording;->mIsAvableGPS:Z

    .line 17
    iput-object p1, p0, Lcom/lge/camera/command/TakePictureInRecording;->mMediator:Lcom/lge/camera/Mediator;

    .line 18
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 28

    .prologue
    .line 25
    const-string v21, "CameraApp"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "TakePictureInRecording-start,mMediator.isPausing()["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "] mMediator.getInCaptureProgress()["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v21

    if-nez v21, :cond_0

    .line 28
    const-string v21, "CameraApp"

    const-string v22, "TakePictureInRecording-end return, CamDevice is null"

    invoke-static/range {v21 .. v22}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :goto_0
    return-void

    .line 34
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v21

    if-nez v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 35
    :cond_1
    const-string v21, "CameraApp"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "TakePictureInRecording-end return "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " / "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_2
    const-string v22, "CameraApp"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mMediator.getFileHelper() != null["

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/camera/Mediator;->getFileHelper()Lcom/lge/camera/util/FileNamingHelper;

    move-result-object v21

    if-eqz v21, :cond_b

    const/16 v21, 0x1

    :goto_1
    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, "] "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/camera/Mediator;->getFileHelper()Lcom/lge/camera/util/FileNamingHelper;

    move-result-object v21

    if-eqz v21, :cond_c

    .line 44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/camera/Mediator;->getFileHelper()Lcom/lge/camera/util/FileNamingHelper;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/lge/camera/util/FileNamingHelper;->getFileStatus(I)Z

    move-result v21

    if-nez v21, :cond_3

    .line 45
    const-string v21, "CameraApp"

    const-string v22, "File Naming Helper status is NOT READY! so reload"

    invoke-static/range {v21 .. v22}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/camera/Mediator;->getFileHelper()Lcom/lge/camera/util/FileNamingHelper;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/lge/camera/util/FileNamingHelper;->reload(Z)V

    .line 53
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/lge/camera/Mediator;->setInCaptureProgress(Z)V

    .line 55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v17

    .line 56
    .local v17, parameters:Landroid/hardware/Camera$Parameters;
    const/4 v7, 0x0

    .line 59
    .local v7, bChangeParameter:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/camera/Mediator;->getRecordLocation()Z

    move-result v21

    if-eqz v21, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/camera/Mediator;->getCurrentLocation()Landroid/location/Location;

    move-result-object v13

    .line 60
    .local v13, loc:Landroid/location/Location;
    :goto_2
    if-eqz v13, :cond_11

    .line 61
    invoke-virtual {v13}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    .line 62
    .local v10, lat:D
    invoke-virtual {v13}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    .line 64
    .local v14, lon:D
    new-instance v12, Ljava/lang/Double;

    invoke-direct {v12, v10, v11}, Ljava/lang/Double;-><init>(D)V

    .line 65
    .local v12, lat_t:Ljava/lang/Double;
    new-instance v16, Ljava/lang/Double;

    move-object/from16 v0, v16

    invoke-direct {v0, v14, v15}, Ljava/lang/Double;-><init>(D)V

    .line 66
    .local v16, lon_t:Ljava/lang/Double;
    new-instance v18, Ljava/lang/Double;

    const-wide/16 v21, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    .line 67
    .local v18, pivot:Ljava/lang/Double;
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v21

    if-nez v21, :cond_4

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v21

    if-eqz v21, :cond_e

    :cond_4
    const/4 v9, 0x1

    .line 69
    .local v9, hasLatLon:Z
    :goto_3
    if-eqz v9, :cond_10

    .line 80
    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 82
    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 83
    invoke-virtual {v13}, Landroid/location/Location;->hasAltitude()Z

    move-result v21

    if-eqz v21, :cond_f

    .line 84
    invoke-virtual {v13}, Landroid/location/Location;->getAltitude()D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 85
    .local v3, altitude:Ljava/lang/Double;
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v21

    const-wide v23, 0x408f400000000000L

    mul-double v21, v21, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 86
    .local v6, altitudeX1000:Ljava/lang/Double;
    invoke-virtual {v6}, Ljava/lang/Double;->longValue()J

    move-result-wide v4

    .line 87
    .local v4, altitudeDividend:J
    const-wide/16 v21, 0x0

    cmp-long v21, v4, v21

    if-gez v21, :cond_5

    .line 88
    const-wide/16 v21, -0x1

    mul-long v4, v4, v21

    .line 94
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v21

    move-object/from16 v0, v17

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 103
    .end local v3           #altitude:Ljava/lang/Double;
    .end local v4           #altitudeDividend:J
    .end local v6           #altitudeX1000:Ljava/lang/Double;
    :goto_4
    invoke-virtual {v13}, Landroid/location/Location;->getTime()J

    move-result-wide v21

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-eqz v21, :cond_6

    .line 106
    invoke-virtual {v13}, Landroid/location/Location;->getTime()J

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    div-long v19, v21, v23

    .line 107
    .local v19, utcTimeSeconds:J
    move-object/from16 v0, v17

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 110
    .end local v19           #utcTimeSeconds:J
    :cond_6
    const/4 v7, 0x1

    .line 111
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/camera/command/TakePictureInRecording;->mIsAvableGPS:Z

    .line 128
    .end local v9           #hasLatLon:Z
    .end local v10           #lat:D
    .end local v12           #lat_t:Ljava/lang/Double;
    .end local v14           #lon:D
    .end local v16           #lon_t:Ljava/lang/Double;
    .end local v18           #pivot:Ljava/lang/Double;
    :cond_7
    :goto_5
    const-string v21, "CameraApp"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "loc = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :try_start_0
    const-string v21, "exif-datetime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lcom/lge/camera/util/Common;->getCurrentDateTime(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lge/camera/Mediator;->getDeviceDegree()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/lge/camera/Mediator;->setParameteredRotation(I)V

    .line 139
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isDisableCheckModifyParameters()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/camera/Mediator;->getImageHandler()Lcom/lge/camera/util/ImageHandler;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lge/camera/util/ImageHandler;->resetRotation()V

    .line 142
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/camera/Mediator;->getImageHandler()Lcom/lge/camera/util/ImageHandler;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lge/camera/Mediator;->getParameteredRotation()I

    move-result v22

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/util/ImageHandler;->setRotation(Landroid/hardware/Camera$Parameters;I)Z

    move-result v21

    or-int v7, v7, v21

    .line 146
    if-nez v7, :cond_9

    :try_start_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isDisableCheckModifyParameters()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 147
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    :cond_a
    const/16 v17, 0x0

    .line 157
    :goto_7
    const-string v21, "CameraApp"

    const-string v22, "#### getCameraDevice().takePicture()"

    invoke-static/range {v21 .. v22}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    new-instance v26, Lcom/lge/camera/listeners/JpegPictureCallbackInRecording;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v21, v0

    check-cast v21, Lcom/lge/camera/CamcorderMediator;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/lge/camera/listeners/JpegPictureCallbackInRecording;-><init>(Lcom/lge/camera/CamcorderMediator;Landroid/location/Location;)V

    invoke-virtual/range {v22 .. v26}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 165
    :goto_8
    const-string v21, "CameraApp"

    const-string v22, "TakePictureInRecording-end"

    invoke-static/range {v21 .. v22}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 40
    .end local v7           #bChangeParameter:Z
    .end local v13           #loc:Landroid/location/Location;
    .end local v17           #parameters:Landroid/hardware/Camera$Parameters;
    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 49
    :cond_c
    const-string v21, "CameraApp"

    const-string v22, "file naming helper is null!"

    invoke-static/range {v21 .. v22}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 59
    .restart local v7       #bChangeParameter:Z
    .restart local v17       #parameters:Landroid/hardware/Camera$Parameters;
    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 67
    .restart local v10       #lat:D
    .restart local v12       #lat_t:Ljava/lang/Double;
    .restart local v13       #loc:Landroid/location/Location;
    .restart local v14       #lon:D
    .restart local v16       #lon_t:Ljava/lang/Double;
    .restart local v18       #pivot:Ljava/lang/Double;
    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 99
    .restart local v9       #hasLatLon:Z
    :cond_f
    const-wide/16 v21, 0x0

    move-object/from16 v0, v17

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto/16 :goto_4

    .line 113
    :cond_10
    const/4 v13, 0x0

    .line 114
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mIsAvableGPS:Z

    move/from16 v21, v0

    if-eqz v21, :cond_7

    .line 115
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/camera/command/TakePictureInRecording;->mIsAvableGPS:Z

    .line 116
    const/4 v7, 0x1

    .line 117
    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    goto/16 :goto_5

    .line 121
    .end local v9           #hasLatLon:Z
    .end local v10           #lat:D
    .end local v12           #lat_t:Ljava/lang/Double;
    .end local v14           #lon:D
    .end local v16           #lon_t:Ljava/lang/Double;
    .end local v18           #pivot:Ljava/lang/Double;
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mIsAvableGPS:Z

    move/from16 v21, v0

    if-eqz v21, :cond_7

    .line 122
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/camera/command/TakePictureInRecording;->mIsAvableGPS:Z

    .line 123
    const/4 v7, 0x1

    .line 124
    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    goto/16 :goto_5

    .line 133
    :catch_0
    move-exception v8

    .line 134
    .local v8, e:Ljava/lang/NoSuchMethodError;
    invoke-virtual {v8}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    .line 135
    const-string v21, "CameraApp"

    const-string v22, "setExifDateTime() NOT SUPPORTED!"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 150
    .end local v8           #e:Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v8

    .line 151
    .local v8, e:Ljava/lang/RuntimeException;
    const-string v21, "CameraApp"

    const-string v22, "setParameters failed"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 160
    .end local v8           #e:Ljava/lang/RuntimeException;
    :catch_2
    move-exception v8

    .line 161
    .restart local v8       #e:Ljava/lang/RuntimeException;
    const-string v21, "CameraApp"

    const-string v22, "TakePictureInRecording failed"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8
.end method
