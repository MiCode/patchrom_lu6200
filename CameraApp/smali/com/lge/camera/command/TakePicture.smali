.class public Lcom/lge/camera/command/TakePicture;
.super Lcom/lge/camera/command/Command;
.source "TakePicture.java"


# instance fields
.field private mIsAvableGPS:Z

.field private mMediator:Lcom/lge/camera/Mediator;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 1
    .parameter "mediator"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/Mediator;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/command/TakePicture;->mMediator:Lcom/lge/camera/Mediator;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/command/TakePicture;->mIsAvableGPS:Z

    .line 24
    iput-object p1, p0, Lcom/lge/camera/command/TakePicture;->mMediator:Lcom/lge/camera/Mediator;

    .line 25
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 27

    .prologue
    .line 32
    const-string v23, "CameraApp"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "takePicture()-start,mMediator.isPausing()["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePicture;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "] mMediator.getInCaptureProgress()["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePicture;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePicture;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v23

    if-nez v23, :cond_0

    .line 35
    const-string v23, "CameraApp"

    const-string v24, "takePicture-end return, CamDevice is null"

    invoke-static/range {v23 .. v24}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :goto_0
    return-void

    .line 41
    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/camera/command/TakePicture;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v8, Lcom/lge/camera/CameraMediator;

    .line 42
    .local v8, cameraMedaiator:Lcom/lge/camera/CameraMediator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePicture;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v23

    if-nez v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePicture;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v23

    if-nez v23, :cond_1

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/controller/camera/CameraStorageController;->getAvailablePictureCount()J

    move-result-wide v23

    const-wide/16 v25, 0x1

    cmp-long v23, v23, v25

    if-gez v23, :cond_2

    .line 45
    :cond_1
    const-string v23, "CameraApp"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "takePicture-end return "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePicture;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " / "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePicture;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_2
    const-string v23, "CameraApp"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "mMediator.getPictureRemaining()["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->getAvailablePictureCount()J

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "] "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v24, "CameraApp"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "mMediator.getFileHelper() != null["

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePicture;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/Mediator;->getFileHelper()Lcom/lge/camera/util/FileNamingHelper;

    move-result-object v23

    if-eqz v23, :cond_d

    const/16 v23, 0x1

    :goto_1
    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, "] "

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePicture;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/Mediator;->getFileHelper()Lcom/lge/camera/util/FileNamingHelper;

    move-result-object v23

    if-eqz v23, :cond_e

    .line 55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePicture;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/Mediator;->getFileHelper()Lcom/lge/camera/util/FileNamingHelper;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePicture;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/lge/camera/util/FileNamingHelper;->getFileStatus(I)Z

    move-result v23

    if-nez v23, :cond_3

    .line 56
    const-string v23, "CameraApp"

    const-string v24, "File Naming Helper status is NOT READY! so reload"

    invoke-static/range {v23 .. v24}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePicture;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/Mediator;->getFileHelper()Lcom/lge/camera/util/FileNamingHelper;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/lge/camera/util/FileNamingHelper;->reload(Z)V

    .line 64
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePicture;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/lge/camera/Mediator;->setInCaptureProgress(Z)V

    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePicture;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v23, v0

    const-string v24, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-virtual/range {v23 .. v24}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePicture;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v18

    .line 69
    .local v18, parameters:Landroid/hardware/Camera$Parameters;
    const/4 v7, 0x0

    .line 72
    .local v7, bChangeParameter:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePicture;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/Mediator;->getRecordLocation()Z

    move-result v23

    if-eqz v23, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePicture;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/Mediator;->getCurrentLocation()Landroid/location/Location;

    move-result-object v14

    .line 73
    .local v14, loc:Landroid/location/Location;
    :goto_2
    if-eqz v14, :cond_13

    .line 74
    invoke-virtual {v14}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    .line 75
    .local v11, lat:D
    invoke-virtual {v14}, Landroid/location/Location;->getLongitude()D

    move-result-wide v15

    .line 77
    .local v15, lon:D
    new-instance v13, Ljava/lang/Double;

    invoke-direct {v13, v11, v12}, Ljava/lang/Double;-><init>(D)V

    .line 78
    .local v13, lat_t:Ljava/lang/Double;
    new-instance v17, Ljava/lang/Double;

    move-object/from16 v0, v17

    move-wide v1, v15

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    .line 79
    .local v17, lon_t:Ljava/lang/Double;
    new-instance v19, Ljava/lang/Double;

    const-wide/16 v23, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v23

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    .line 80
    .local v19, pivot:Ljava/lang/Double;
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v23

    if-nez v23, :cond_4

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v23

    if-eqz v23, :cond_10

    :cond_4
    const/4 v10, 0x1

    .line 82
    .local v10, hasLatLon:Z
    :goto_3
    if-eqz v10, :cond_12

    .line 92
    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v12}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 94
    move-object/from16 v0, v18

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 95
    invoke-virtual {v14}, Landroid/location/Location;->hasAltitude()Z

    move-result v23

    if-eqz v23, :cond_11

    .line 96
    invoke-virtual {v14}, Landroid/location/Location;->getAltitude()D

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 97
    .local v3, altitude:Ljava/lang/Double;
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    const-wide v25, 0x408f400000000000L

    mul-double v23, v23, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 98
    .local v6, altitudeX1000:Ljava/lang/Double;
    invoke-virtual {v6}, Ljava/lang/Double;->longValue()J

    move-result-wide v4

    .line 99
    .local v4, altitudeDividend:J
    const-wide/16 v23, 0x0

    cmp-long v23, v4, v23

    if-gez v23, :cond_5

    .line 100
    const-wide/16 v23, -0x1

    mul-long v4, v4, v23

    .line 106
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    move-object/from16 v0, v18

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 115
    .end local v3           #altitude:Ljava/lang/Double;
    .end local v4           #altitudeDividend:J
    .end local v6           #altitudeX1000:Ljava/lang/Double;
    :goto_4
    invoke-virtual {v14}, Landroid/location/Location;->getTime()J

    move-result-wide v23

    const-wide/16 v25, 0x0

    cmp-long v23, v23, v25

    if-eqz v23, :cond_6

    .line 118
    invoke-virtual {v14}, Landroid/location/Location;->getTime()J

    move-result-wide v23

    const-wide/16 v25, 0x3e8

    div-long v21, v23, v25

    .line 119
    .local v21, utcTimeSeconds:J
    move-object/from16 v0, v18

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 122
    .end local v21           #utcTimeSeconds:J
    :cond_6
    const/4 v7, 0x1

    .line 123
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/camera/command/TakePicture;->mIsAvableGPS:Z

    .line 140
    .end local v10           #hasLatLon:Z
    .end local v11           #lat:D
    .end local v13           #lat_t:Ljava/lang/Double;
    .end local v15           #lon:D
    .end local v17           #lon_t:Ljava/lang/Double;
    .end local v19           #pivot:Ljava/lang/Double;
    :cond_7
    :goto_5
    const-string v23, "CameraApp"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "loc = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :try_start_0
    const-string v23, "exif-datetime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Lcom/lge/camera/util/Common;->getCurrentDateTime(J)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePicture;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePicture;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/lge/camera/Mediator;->getDeviceDegree()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/lge/camera/Mediator;->setParameteredRotation(I)V

    .line 151
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isDisableCheckModifyParameters()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePicture;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/Mediator;->getImageHandler()Lcom/lge/camera/util/ImageHandler;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/util/ImageHandler;->resetRotation()V

    .line 154
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePicture;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/Mediator;->getImageHandler()Lcom/lge/camera/util/ImageHandler;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePicture;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/lge/camera/Mediator;->getParameteredRotation()I

    move-result v24

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/util/ImageHandler;->setRotation(Landroid/hardware/Camera$Parameters;I)Z

    move-result v23

    or-int v7, v7, v23

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/command/TakePicture;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/command/TakePicture;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v24

    invoke-static/range {v23 .. v24}, Lcom/lge/camera/properties/ProjectVariables;->isCafSupported(II)Z

    move-result v23

    if-eqz v23, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePicture;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v23, v0

    const-string v24, "key_camera_shot_mode"

    const-string v25, "shotmode_panorama"

    invoke-virtual/range {v23 .. v25}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 158
    const-string v23, "CameraApp"

    const-string v24, "###setFocusMode-auto"

    invoke-static/range {v23 .. v24}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v23

    const/16 v24, 0x1f

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_9

    .line 160
    const-string v23, "auto"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 162
    :cond_9
    const/4 v7, 0x1

    .line 184
    :cond_a
    if-nez v7, :cond_b

    :try_start_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isDisableCheckModifyParameters()Z

    move-result v23

    if-eqz v23, :cond_c

    .line 185
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePicture;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    :cond_c
    const/16 v18, 0x0

    .line 193
    :goto_7
    const/16 v20, 0x0

    .line 196
    .local v20, progressFlag:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/TakePicture;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/Mediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/module/Module;->takePicture()Z

    move-result v20

    .line 199
    if-nez v20, :cond_14

    .line 200
    const-string v23, "CameraApp"

    const-string v24, " error!!!! takepicture fail!!!!"

    invoke-static/range {v23 .. v24}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 51
    .end local v7           #bChangeParameter:Z
    .end local v14           #loc:Landroid/location/Location;
    .end local v18           #parameters:Landroid/hardware/Camera$Parameters;
    .end local v20           #progressFlag:Z
    :cond_d
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 60
    :cond_e
    const-string v23, "CameraApp"

    const-string v24, "file naming helper is null!"

    invoke-static/range {v23 .. v24}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 72
    .restart local v7       #bChangeParameter:Z
    .restart local v18       #parameters:Landroid/hardware/Camera$Parameters;
    :cond_f
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 80
    .restart local v11       #lat:D
    .restart local v13       #lat_t:Ljava/lang/Double;
    .restart local v14       #loc:Landroid/location/Location;
    .restart local v15       #lon:D
    .restart local v17       #lon_t:Ljava/lang/Double;
    .restart local v19       #pivot:Ljava/lang/Double;
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 111
    .restart local v10       #hasLatLon:Z
    :cond_11
    const-wide/16 v23, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto/16 :goto_4

    .line 125
    :cond_12
    const/4 v14, 0x0

    .line 126
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/command/TakePicture;->mIsAvableGPS:Z

    move/from16 v23, v0

    if-eqz v23, :cond_7

    .line 127
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/camera/command/TakePicture;->mIsAvableGPS:Z

    .line 128
    const/4 v7, 0x1

    .line 129
    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    goto/16 :goto_5

    .line 133
    .end local v10           #hasLatLon:Z
    .end local v11           #lat:D
    .end local v13           #lat_t:Ljava/lang/Double;
    .end local v15           #lon:D
    .end local v17           #lon_t:Ljava/lang/Double;
    .end local v19           #pivot:Ljava/lang/Double;
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/command/TakePicture;->mIsAvableGPS:Z

    move/from16 v23, v0

    if-eqz v23, :cond_7

    .line 134
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/camera/command/TakePicture;->mIsAvableGPS:Z

    .line 135
    const/4 v7, 0x1

    .line 136
    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    goto/16 :goto_5

    .line 145
    :catch_0
    move-exception v9

    .line 146
    .local v9, e:Ljava/lang/NoSuchMethodError;
    invoke-virtual {v9}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    .line 147
    const-string v23, "CameraApp"

    const-string v24, "setExifDateTime() NOT SUPPORTED!"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 188
    .end local v9           #e:Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v9

    .line 189
    .local v9, e:Ljava/lang/RuntimeException;
    const-string v23, "CameraApp"

    const-string v24, "setParameters failed"

    invoke-static/range {v23 .. v24}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v9}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_7

    .line 203
    .end local v9           #e:Ljava/lang/RuntimeException;
    .restart local v20       #progressFlag:Z
    :cond_14
    const-string v23, "CameraApp"

    const-string v24, "takePicture-end"

    invoke-static/range {v23 .. v24}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
