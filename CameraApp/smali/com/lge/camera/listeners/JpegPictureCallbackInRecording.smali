.class public Lcom/lge/camera/listeners/JpegPictureCallbackInRecording;
.super Ljava/lang/Object;
.source "JpegPictureCallbackInRecording.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# static fields
.field static afterTime:J

.field static beforeTime:J


# instance fields
.field mLocation:Landroid/location/Location;

.field mMediator:Lcom/lge/camera/CamcorderMediator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 17
    sput-wide v0, Lcom/lge/camera/listeners/JpegPictureCallbackInRecording;->beforeTime:J

    .line 18
    sput-wide v0, Lcom/lge/camera/listeners/JpegPictureCallbackInRecording;->afterTime:J

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/CamcorderMediator;Landroid/location/Location;)V
    .locals 0
    .parameter "mediator"
    .parameter "loc"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/lge/camera/listeners/JpegPictureCallbackInRecording;->mMediator:Lcom/lge/camera/CamcorderMediator;

    .line 22
    iput-object p2, p0, Lcom/lge/camera/listeners/JpegPictureCallbackInRecording;->mLocation:Landroid/location/Location;

    .line 23
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 5
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    const/4 v4, 0x0

    .line 26
    const-string v1, "CameraApp"

    const-string v2, "#### TIME_CHECK JpegPictureCallbackInRecording()-start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lcom/lge/camera/listeners/JpegPictureCallbackInRecording;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->isPausing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/listeners/JpegPictureCallbackInRecording;->mMediator:Lcom/lge/camera/CamcorderMediator;

    iget-object v2, p0, Lcom/lge/camera/listeners/JpegPictureCallbackInRecording;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getDeviceDegree()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/CamcorderMediator;->setImageRotationDegree(I)V

    .line 34
    const/4 v0, 0x0

    .line 36
    .local v0, isSuccessSave:Z
    if-nez p1, :cond_2

    .line 37
    const-string v1, "CameraApp"

    const-string v2, "error!! onPictureTaken (jpegData == null)"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    .line 49
    goto :goto_0

    .line 51
    :cond_2
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jpegData size ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/lge/camera/listeners/JpegPictureCallbackInRecording;->mMediator:Lcom/lge/camera/CamcorderMediator;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/lge/camera/CamcorderMediator;->saveLiveSnapshot([BLandroid/graphics/Bitmap;)Z

    move-result v0

    .line 55
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveLiveSnapshot Queue count is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/listeners/JpegPictureCallbackInRecording;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CamcorderMediator;->getQueueCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    if-nez v0, :cond_3

    .line 76
    const-string v1, "CameraApp"

    const-string v2, "savePicture() fail!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/lge/camera/listeners/JpegPictureCallbackInRecording;->mMediator:Lcom/lge/camera/CamcorderMediator;

    const v2, 0x7f0b0142

    invoke-virtual {v1, v2}, Lcom/lge/camera/CamcorderMediator;->toast(I)V

    .line 78
    iget-object v1, p0, Lcom/lge/camera/listeners/JpegPictureCallbackInRecording;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1, v4}, Lcom/lge/camera/CamcorderMediator;->setInCaptureProgress(Z)V

    .line 80
    iget-object v1, p0, Lcom/lge/camera/listeners/JpegPictureCallbackInRecording;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->getFileHelper()Lcom/lge/camera/util/FileNamingHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/lge/camera/listeners/JpegPictureCallbackInRecording;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->getFileHelper()Lcom/lge/camera/util/FileNamingHelper;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/lge/camera/util/FileNamingHelper;->setErrorFeedback(I)V

    goto/16 :goto_0

    .line 87
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/listeners/JpegPictureCallbackInRecording;->mMediator:Lcom/lge/camera/CamcorderMediator;

    const-string v2, "com.lge.camera.command.SnapshotEffect"

    invoke-virtual {v1, v2}, Lcom/lge/camera/CamcorderMediator;->doCommandUi(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/lge/camera/listeners/JpegPictureCallbackInRecording;->mMediator:Lcom/lge/camera/CamcorderMediator;

    iget-object v2, p0, Lcom/lge/camera/listeners/JpegPictureCallbackInRecording;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->saveLastPicture(Lcom/lge/camera/Mediator;Landroid/net/Uri;)V

    .line 89
    iget-object v1, p0, Lcom/lge/camera/listeners/JpegPictureCallbackInRecording;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1, v4}, Lcom/lge/camera/CamcorderMediator;->setInCaptureProgress(Z)V

    .line 94
    const-string v1, "CameraApp"

    const-string v2, "JpegPictureCallbackInRecording()-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
